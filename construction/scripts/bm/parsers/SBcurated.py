import os
import bm.unify, bm.io, bm.solidity

def status(s):
    return (True if s is not None else
            None)# otherwise

FIXES_WEAKNESS = {
    ("access_control","arbitrary_location_write_simple"): ["access_control-124"],
    ("access_control","FibonacciBalance"): ["access_control-112"],
    ("access_control","incorrect_constructor_name1"): ["access_control-118"],
    ("access_control","incorrect_constructor_name2"): ["access_control-118"],
    ("access_control","incorrect_constructor_name3"): ["access_control-118"],
    ("access_control","mapping_write"): ["access_control-124"],
    ("access_control","multiowned_vulnerable"): ["access_control-105"],
    ("access_control","mycontract"): ["access_control-115"],
    ("access_control","parity_wallet_bug_1"): ["access_control-106","access_control-124"],
    ("access_control","parity_wallet_bug_2"): ["access_control-106","access_control-124"],
    ("access_control","phishable"): ["access_control-115"],
    ("access_control","proxy"): ["access_control-112"],
    ("access_control","rubixi"): ["access_control-105"],
    ("access_control","simple_suicide"): ["access_control-106"],
    ("access_control","unprotected0"): ["access_control-124"],
    ("access_control","wallet_02_refund_nosub"): ["access_control-105"],
    ("access_control","wallet_03_wrong_constructor"): ["access_control-105"],
    ("access_control","wallet_04_confused_sign"): ["access_control-105"],
    ("denial_of_service","auction"): ["denial_of_service-113"],
    ("denial_of_service","dos_address"): ["denial_of_service-128"],
    ("denial_of_service","dos_number"): ["denial_of_service-128"],
    ("denial_of_service","dos_simple"): ["denial_of_service-128"],
    ("denial_of_service","list_dos"): ["denial_of_service-128"],
    ("denial_of_service","send_loop"): ["denial_of_service-113"],
    ("other","crypto_roulette"): ["other-109"],
    ("other","name_registrar"): ["other-109"],
    ("other","open_address_lottery"): ["other-109"],
}

def fixed_weakness(weakness, bid):
    return FIXES_WEAKNESS.get((weakness,bid), [weakness])

# Some files contain more than one contract or library, such that
# the heuristics later on cannot automatically determine the contract
# name. However, the name is implicitly given by the line number of
# the vulnerability. Since we do not want to parse the files to associate
# the line numbers with contract names, we supply the missing information
# manually.
ORACLE = {
    "BECToken": "PausableToken",
    "ERC20": "ERC20",
    "FibonacciBalance": "FibonacciBalance",
    "blackjack": "BlackJack",
    "governmental_survey": "Governmental",
    "modifier_reentrancy": "ModifierEntrancy",
    "multiowned_vulnerable": "TestContract",
    "parity_wallet_bug_2": "WalletLibrary"
}

def process(dataset, source, destination):
    benchmarks = {}
    vulnerabilities = bm.io.read_json(os.path.join(source, "vulnerabilities.json"))
    for contract in vulnerabilities:
        bid = contract["name"][:-4]
        addr = bid if bid.startswith("0x") else None
        if bid in benchmarks:
            # One contract occurs twice, is counted twice
            benchmarks[bid] += 1
            bid = f"{bid}-{benchmarks[bid]}"
        else:
            benchmarks[bid] = 1
        sol = os.path.join(source,os.path.join(*contract["path"].split('/')))
        etc = { "origin": contract["source"] }
        classification = set()
        for vul in contract["vulnerabilities"]:
            for fixed_vul in fixed_weakness(vul["category"], bid):
                classification.add((fixed_vul,status(vul["lines"])))

        bm.unify.save(destination, dataset, bid,
            sorted(classification),
            addr = addr, sol = sol, etc = etc,
            contractname = ORACLE.get(bid),
            contractname_is_orig = False if bid in ORACLE else None)

