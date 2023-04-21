import os, glob
import bm.log, bm.io, bm.utils, bm.unify

# In some cases, the data (yaml, json) does not allow us to identify the
# runtime bytecode that contains the weakness. The result of the manual
# analysis is added as an 'oracle'. In a few cases, we weren't able to
# identify the bytecode uniquely (commented out).

ORACLE = {
    #"requirement_simple_fixed": "requirement_simple_fixed.sol:Bar",# multi-contract issue
    "multiowned_not_vulnerable": "multiowned_not_vulnerable.sol:TestContract",
    #"relayer_fixed": "relayer_fixed.sol:Relayer",# multi-contract issue
    "access_control_fixed_2": "access_control_fixed_2.sol:AccessControl",
    "access_control_fixed_1": "access_control_fixed_1.sol:AccessControl",
    "TokenSale_fixed": "TokenSale_fixed.sol:Presale",
    "unused_state_variables": "unused_state_variables.sol:DerivedA",
    "unused_state_variables_fixed": "unused_state_variables_fixed.sol:DerivedA",
    #"requirement_simple": "requirement_simple.sol:Bar",# multi-contract issue
    "modifier_reentrancy_fixed": "modifier_reentrancy_fixed.sol:ModifierEntrancy",
    "WalletLibrary": "WalletLibrary.sol:WalletLibrary",
    "Lockdrop": "Lockdrop.sol:Lockdrop",
    "MDTCrowdsale": "MDTCrowdsale.sol:MDTCrowdsale",
    #"relayer": "relayer.sol:Relayer",# multi-contract issue
    "TokenSale": "TokenSale.sol:Presale",
    "modifier_reentrancy": "modifier_reentrancy.sol:ModifierEntrancy",
    "typo_safe_math": "typo_safe_math.sol:TypoSafeMath",
    "ERC20": "ERC20.sol:ERC20",
}

def verify_yaml(ydata):
    # { 'description': str,
    #   'issues': [
    #      {'id': 'SWC-nnn',
    #        'count': int,
    #        'locations': [
    #           { 'bytecode_offsets': {
    #                '0x...': [ int, ... ],
    #                ...
    #             },
    #             'line_numbers': {
    #                'mycontract.sol': [int, ...],
    #                ...
    #             }
    #           }, ...
    #        ]
    #      }, ...
    #   ]
    # }
    assert list(ydata.keys()) == ['description', 'issues']
    assert type(ydata['description']) == str
    assert type(ydata['issues']) == list
    for issue in ydata['issues']:
        assert type(issue) is dict
        assert list(issue.keys()) == ['id','count','locations']
        assert type(issue['id']) == str
        assert type(issue['count']) == int and issue['count'] >= 0
        assert type(issue['locations']) == list
        assert issue['count'] == len(issue['locations'])
        for loc in issue['locations']:
            assert type(loc) == dict
            assert list(loc.keys()) == ['bytecode_offsets','line_numbers']
            for k,v in loc.items():
                assert type(k) is str
                assert type(v) is dict
                for vk, vv in v.items():
                    assert type(vk) is str
                    assert type(vv) is list and all(type(vvi) is int and vvi >= 0 for vvi in vv)


def verify_json(jdata):
    # structure of json file
    # { 'contracts': {
    #      'mycontract.sol:Token': {
    #         'bin': hex without 0x,
    #         'bin-runtime': hex without 0x,
    #         'srcmap': str,
    #         'srcmap-runtime': str
    #      },
    #      ...
    #   },
    #   'sourceList': [ 'mycontract.sol', 'ECSDA.sol', ... ],
    #   'sources': {
    #       'mycontract.sol': AST of mycontract.sol,
    #       'ECSDA.sol': AST if ECSDA.sol,
    #       ...
    #   },
    #   'version': str
    # }
    assert list(jdata.keys()) == ['contracts', 'sourceList', 'sources', 'version']
    assert type(jdata['contracts']) is dict
    for k,v in jdata['contracts'].items():
        assert type(k) is str and ":" in k
        assert list(v.keys()) == ['bin', 'bin-runtime', 'srcmap', 'srcmap-runtime']
        assert all(type(vv) is str for vv in v.values())
    assert type(jdata['sourceList']) is list and all(type(v) is str for v in jdata['sourceList'])
    assert jdata['sourceList'] == list(jdata['sources'].keys())
    assert type(jdata['version']) is str


def do_negative(id, contracts):
    if not contracts:
        raise bm.log.BenchmarkError(f"No contract found to flag as a negative example")
    elif len(contracts) == 1:
        return contracts[0]
    else:
        contract = ORACLE.get(id)
        if contract:
            return contract
        else:
            raise bm.log.BenchmarkError(f"Which one of {', '.join(contracts)} is a negative example?")


def do_positive(id, locations, contracts, hash2contract):
    flagged = set()    
    for loc in locations:
        hashes = loc['bytecode_offsets'].keys()
        sources = loc['line_numbers'].keys()
        if hashes:
            flagged.update([hash2contract[h] for h in hashes])
        elif sources:
            for s in sources:
                cs = [ c for c in contracts if c.startswith(f"{s}:") ]
                if not cs:
                    raise bm.log.BenchmarkError(f"No contract found for Solidity source {s}")
                else:
                    flagged.update(cs)
        else:
            raise bm.log.BenchmarkError("No contract found to flag as a positive example")
    if not flagged:
        raise bm.log.BenchmarkError("No contract found to flag as a positive example")
    elif len(flagged) == 1:
        for contract in flagged:
            return contract
    else:
        contract = ORACLE.get(id)
        if contract:
            return contract
        else:
            raise bm.log.BenchmarkError(f"Which one of {', '.join(contracts)} is a positive example?")


def do_classifications(destination, dataset, bid, jdata, ydata, solpath):
    hash2contract = {}
    contracts = []
    for k,v in jdata['contracts'].items():
        for b in (v['bin'], v['bin-runtime']):
            hash2contract[f"0x{bm.utils.keccak(b)}"] = k
        if v['bin']:
            contracts.append(k)

    flagged = set()
    for issue in ydata['issues']:
        vulnerability = issue['id']
        if (locations := issue['locations']):
            status = True
            contract = do_positive(bid, locations, contracts, hash2contract)
        else:
            status = False
            contract = do_negative(bid, contracts)
        flagged.add(contract)

    if not flagged:
        raise bm.log.BenchmarkError("Benchmark does not flag any contract")
    if len(flagged) > 1:
        raise bm.log.BenchmarkError("Don't know how to handle more than one flagged contract per benchmark")

    for contract in flagged:
        cdeployment = jdata['contracts'][contract]['bin']
        cdeployed = jdata['contracts'][contract]['bin-runtime']
        bm.unify.save(destination, dataset, bid,
            [(vulnerability,status)],
            sol=solpath,
            contractname=contract.split(":")[1],
            bytecode=cdeployment,
            runtime=cdeployed,
            compiler=jdata["version"],
        )


def process(dataset, source, destination):
    benchmarks = set()    
    for sfn in sorted(glob.glob("**/*.sol", root_dir=source, recursive=True)):
        asfn = os.path.join(source,sfn)
        ayfn = asfn.replace(".sol",".yaml")
        ajfn = asfn.replace(".sol",".json")
        path,bid = os.path.split(sfn)
        bid = bid[:-4]

        if not os.path.exists(ayfn) and not os.path.exists(ajfn):
            # not the main Solidity file
            continue

        assert bid not in benchmarks
        benchmarks.add(bid)

        ydata = bm.io.read_yaml(ayfn, "utf-8")
        verify_yaml(ydata)

        jdata = bm.io.read_json(ajfn, "utf-8")
        verify_json(jdata)

        try:
            do_classifications(destination, dataset, bid, jdata, ydata, asfn)
        except Exception as e:
            bm.log.warn(f"{dataset}: error processing {bid}\n{e}")

