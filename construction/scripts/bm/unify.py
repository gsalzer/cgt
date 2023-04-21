import os
import bm.gimli, bm.io, bm.utils, bm.solidity, bm.bytecode, bm.log, bm.cfg
from typing import Callable, Any



benchmarks = {}

def save(
    destination:       str,
    dataset:           str,
    bid:               str,
    classifications:   list[tuple[str,str]],
    chain:             str|None = None,
    chain_is_orig:        bool|None = None,
    addr:              str|None = None,
    addr_is_orig:         bool|None = None,
    contractname:      str|None = None,
    contractname_is_orig: bool|None = None,
    compiler:          str|None = None,
    compiler_is_orig:     bool|None = None,
    sol:               str|None = None,
    sol_is_orig:          bool|None = None,
    bytecode:          str|None = None,
    bytecode_is_orig:     bool|None = None,
    runtime:           str|None = None,
    runtime_is_orig:      bool|None = None,
    info:              list[str]|str|None = None,
    etc:               dict|None = None):

    #print(f"{dataset}/{bid}: {classifications} "
    #    f"{chain} {addr} {sol} {contractname} "
    #    f"{bytecode} {runtime} {compiler} {etc} {info}")

    # Double check: bid is unique within dataset
    if dataset not in benchmarks:
        benchmarks[dataset] = set()
    assert bid not in benchmarks[dataset]
    benchmarks[dataset].add(bid)

    addr     = bm.utils.norm_address(addr)
    sol      = norm_objects(sol, is_sol=True)
    bytecode = norm_objects(bytecode, is_code=True)
    runtime  = norm_objects(runtime, is_code=True)
    info     = norm_objects(info)
    etc = etc or {}

    if chain and chain_is_orig is None: chain_is_orig = True
    if addr and addr_is_orig is None: addr_is_orig = True
    if contractname and contractname_is_orig is None : contractname_is_orig = True
    if compiler and compiler_is_orig is None: compiler_is_orig = True
    if sol and sol_is_orig is None: sol_is_orig = True
    if bytecode and bytecode_is_orig is None: bytecode_is_orig = True
    if runtime and runtime_is_orig is None: runtime_is_orig = True
    chain_orig, addr_orig, contractname_orig, compiler_orig = chain, addr, contractname, compiler
    fp_sol_orig = bm.solidity.fingerprint(sol[0][1]) if sol else None
    fp_bytecode_orig = bm.bytecode.fingerprint(bytecode[0][1]) if bytecode else None
    fp_runtime_orig = bm.bytecode.fingerprint(runtime[0][1]) if runtime else None

    # 1. Repair address and add chain by searching among verified contracts
    #    Disambiguate chain by comparing the source code
    #    As a last resort, search the address among the contracts on main chain
    addr, chain = norm_address(addr, chain, sol[0][1] if sol else None, contractname, etc)

    # 2. If address or chain is missing, try to get it via the code.
    if not addr or not chain:
        addr, chain = code2address(addr, chain,
            sol[0][1] if sol else None,
            bytecode[0][1] if bytecode else None,
            runtime[0][1] if runtime else None,
            etc)

    # 2. From a given bytecode, compute the runtime code
    bytecode2runtime(bytecode, runtime)

    # 3. From an address, obtain the verified source code and the contractname
    addr, chain, contractname, compiler = address2source(addr, chain, contractname, compiler, sol, etc)

    # 4. From the source, get the contractname
    contractname = source2contractname(sol, contractname, etc)
    
    # 5. From an address, query the database for bytecode and runtime code
    address2codes(addr, chain, bytecode, runtime, etc)
    #print(f"6: {bytecode=} {runtime=}")

    #if not sol and not addr:
    #    bm.log.warn(f"{dataset}/{bid}: neither address nor Solidity code provided.")

    destination = os.path.join(destination, bid)
    os.makedirs(destination)

    fp_sol,fp_sol2 = None,None
    for _,prg in sol:
        fp_prg, fp_prg2 = bm.solidity.fingerprint(prg),bm.solidity.fingerprint2(prg)
        if not fp_sol:
            fp_sol,fp_sol2 = fp_prg,fp_prg2
        elif fp_sol != fp_prg:
            if fp_sol2 == fp_prg2:
                bm.log.warn("Re source mismatch below: only pragmas differ!")
    sol, fp_sol = save_data(sol, destination, bm.cfg.SOURCE, "sol", bm.solidity.fingerprint)

    bytecode, fp_bytecode = save_data(bytecode, destination, bm.cfg.BYTECODE, "hex", bm.bytecode.fingerprint)

    runtime, fp_runtime = save_data(runtime, destination, bm.cfg.RUNTIME, "rt.hex", bm.bytecode.fingerprint)

    info, _ = save_data(info, destination, bm.cfg.INFO, "txt", lambda _: None, force_extension=False)
            
    if chain != chain_orig: chain_is_orig = False
    if addr != addr_orig: addr_is_orig = False
    if contractname != contractname_orig: contractname_is_orig = False
    if compiler != compiler_orig: compiler_is_orig = False
    if fp_sol != fp_sol_orig: sol_is_orig = False
    if fp_bytecode != fp_bytecode_orig: bytecode_is_orig = False
    if fp_runtime != fp_runtime_orig: runtime_is_orig = False

    metadata = {
        "dataset": dataset,
        "id": bid,
        "classifications": classifications,
        "chain": chain,
        "chain_orig": chain_is_orig,
        "addr": bm.utils.norm_address(addr),
        "addr_orig": addr_is_orig,
        "sol": sol,
        "sol_orig": sol_is_orig,
        "contractname": contractname,
        "contractname_orig": contractname_is_orig,
        "bytecode": bytecode,
        "bytecode_orig": bytecode_is_orig,
        "runtime": runtime,
        "runtime_orig": runtime_is_orig,
        "compiler": compiler,
        "compiler_orig": compiler_is_orig,
        "etc": etc,
        "info": info,
        "fp_sol": fp_sol,
        "fp_sol2": fp_sol2,
        "fp_bytecode": fp_bytecode,
        "fp_runtime": fp_runtime
    }

    bm.io.write_json(metadata,
        os.path.join(destination,bm.cfg.METADATA),
        sort_keys=True, indent=4)



def norm_objects(objects, is_code=False, is_sol=False):
    if not objects:
        objects = []
    elif not isinstance(objects, list):
        objects = [objects]
    result =  []
    for o in objects:
        fn = None
        if os.path.exists(o):
            fn = os.path.basename(o)
            o = bm.io.read_string(o)
        if is_code:
            o = bm.utils.norm_hex(o)
        if is_sol and bm.solidity.is_broken(o):
            bm.log.warn(f"{fn}: broken Solidity file\n{o}")
        result.append( (fn,o) )
    return result



def norm_address(addr, chain, sol, contractname, etc):
    if not addr:
        return addr, chain

    addr = bm.utils.norm_address(addr)
    acfns = bm.gimli.verified_address(addr) # acfn = address,chain,fingerprint/hash,name
    # sort chains according to preference/likelihood
    acnfs_dict = { acfn[1]: acfn for acfn in acfns }
    acfns = []
    for c in (chain if chain else "main", "main", "ropsten", "rinkeby", "kovan"):
        if c in acnfs_dict:
            acfns.append(acnfs_dict.pop(c))
    # we drop the rest, as goerli and sepolia came only later
    #acnfs.extend(acnfs_dict.values())

    if sol:
        # prefer addresses with same source code and contractname
        fp_sol = bm.solidity.fingerprint(sol)
        different_src = [ (a,c) for a,c,f,n in acfns
            if f != fp_sol or (contractname and contractname != n) ]
        acs = [ (a,c) for a,c,f,n in acfns
            if f == fp_sol or not contractname or contractname == n ]
        if different_src:
            etc["same address, different source"] = different_src
    else:
        acs = [ (a,c) for a,c,_,_ in acfns ]

    preferred_chain = chain if chain else "main"
    different_chain = [ ac for ac in acs if ac[1] != preferred_chain ]
    acs = [ ac for ac in acs if ac[1] == preferred_chain ]
    if different_chain:
        if acs:
            etc["same address, different chain"] = different_chain
        else:
            # we drop preference
            if chain:
                etc["original chain"] = chain
            acs = different_chain

    if not acs and (not chain or chain=="main"):
        # check the contract addresses on the main chain
        acs = bm.gimli.main_address(addr) # ac = address,chain (with chain=="main")

    if acs:
        addr,chain = acs[0]
        if len(acs) > 1:
            etc["alternative addresses"] = acs[1:]

    return addr, chain



def code2address(addr, chain, sol, bytecode, runtime, etc):
    for code, kind, c2a in (
        (sol, "source", bm.gimli.verified_sol2address),
        (bytecode, "bytecode", bm.gimli.verified_bytecode2address),
        (runtime, "runtime", bm.gimli.verified_runtime2address),
        (bytecode, "bytecode", bm.gimli.bytecode2address),
        (runtime, "runtime", bm.gimli.runtime2address)):
        if not code:
            continue
        diff, main, ropsten, other = [], [], [], []
        for ac in c2a(code):
            if (addr and ac[0] != addr) or (chain and ac[1] != chain):
                diff.append(ac)
            elif ac[1] == "main":
                main.append(ac)
            elif ac[1] == "ropsten":
                ropsten.append(ac)
            else:
                other.append(ac)
        if diff:
            etc[f"same {kind}, but other address or chain"] = diff
        for acs in (main,ropsten,other):
            if acs:
                return acs[0]
    return addr,chain
            


def bytecode2runtime(code, runtime):
    if code:
        b = bm.utils.hex2bytes(code[0][1])
        deployed = bm.utils.bytes2hex(bm.bytecode.deploy(b))
        if runtime:
            assert deployed == runtime[0][1]
        else:
            runtime.append( ("computed.rt.hex",deployed) )



def address2source(addr, chain, contractname, compiler, sol, etc):
    if addr and chain:
        vs = bm.gimli.verified_source(addr, chain)
        if vs:
            if compiler:
                if compiler != vs["compilerVersion"]:
                    bm.log.warn(f"{chain}/{addr}: {compiler} vs. {vs['compilerVersion']}")
            else:
                compiler = vs["compilerVersion"]

            contractnames = bm.solidity.contractnames(vs["sources"])
            if contractname:
                assert contractname in contractnames
                if contractname != vs["contractName"]:
                    #bm.log.warn(f"{chain}/{addr}: {contractname} vs. {vs['contractName']}")
                    etc["verified source"] = (addr, chain, vs["contractName"])
                    addr,chain = None,None
            else:
                contractname = vs["contractName"]

            src = list(vs["sources"].values())
            if len(src) > 1:
                bm.log.warn(f"Don't know how to handle more than one verified source file")
                etc["verified sources"] = vs["sources"]
            else:
                prg = src[0]
                if bm.solidity.is_broken(prg):
                    bm.log.warn(f"{chain}/{addr}: broken verified source")
                sol.append(("etherscan.sol", prg))

    return addr, chain, contractname, compiler



def source2contractname(sol, contractname, etc):
    if sol and not bm.solidity.is_broken(sol[0][1]):
        contractnames = bm.solidity.contractnames(sol[0][1])
        if contractname:
            assert contractname in contractnames
        elif len(contractnames) == 1:
    	    contractname = contractnames[0]
        else:
            etc["contract names"] = contractnames
    return contractname



def address2codes(addr, chain, bytecode, runtime, etc):
    if chain == "main":
        codes = bm.gimli.address2codes(addr)
        if len(codes) == 1:
            bc,rt = codes[0]
            bc = bm.utils.norm_hex(bc)
            if not bytecode or bc != bm.utils.norm_hex(bytecode[0][1]):
                if bytecode:
                    bm.log.warn(f"{chain}/{addr}: multiple bytecodes")
                bytecode.append((f"{chain}.hex",bc))
            rt = bm.utils.norm_hex(rt)
            if not runtime or rt != bm.utils.norm_hex(runtime[0][1]):
                if runtime:
                    bm.log.warn(f"{chain}/{addr}: multiple runtime codes")
                runtime.append((f"{chain}.rt.hex",rt))
        else:
            etc["code on main"] = codes



def save_data(artefacts, destination, filetype, extension, fingerprint, force_extension=True):
    '''Copy artefacts to files, checking that their fingerprints are identical

    Parameters
    ----------
    artefacts: list[str]
        list of filenames and literals
    destination: str
        destination directory
    filetype: str
        name of subdir and default filename
    extension: str
        default extension
    fingerprint: Callable[[str],Any]
        function computing a fingerprint from a string

    Returns
    -------
    list[str]
        local filenames of artefacts
    str|None
        (shared) fingerprint (sg.!) of the artefacts
    '''

    if not artefacts:
        return artefacts, None

    os.makedirs(os.path.join(destination,filetype))
    localfns, fp = [], None
    for i,artefact in enumerate(artefacts,start=1):
        localfn, data = artefact
        if not localfn:
            localfn = f"{filetype}.{extension}"
        if len(artefacts) > 1:
            localfn = f"{i}_{localfn}"
        if force_extension and not localfn.endswith(extension):
            localfn = f"{os.path.splitext(localfn)[0]}.{extension}"
        localfn = os.path.join(filetype,localfn)
        bm.io.write_string(data,os.path.join(destination,localfn))
        localfns.append(localfn)
        fp_data = fingerprint(data)
        # Keep last fingerprint, from verified data
        if fp and fp_data != fp:
            bm.log.warn(f"MISMATCH OF FINGERPRINT: {destination} {filetype}")
        fp = fp_data
        # Keep first fingerprint, from original data
        #if not fp:
        #    fp = fp_data
        #elif fp_data != fp:
        #    bm.log.warn(f"MISMATCH OF FINGERPRINT: {destination} {filetype}")
    return localfns, fp



