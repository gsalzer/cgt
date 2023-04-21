import os, glob, yaml
import bm.bytecode, bm.io, bm.unify

STATUS = {
    "bug contract": True,
    "bug contracts": True,
    "bug contracat": True,
    "contract with bug": True,
    "misleading contract": False,
    "misleading contracts": False,
    "contract without the bug": False,
    "contract without the bugs": False,
}

FIXES_BENCHMARK_ID = {
    "fixedWrongOpe": "NoWrongOpe",
    "ContractA_NoFalseOrder":  "NoFalseOrder",
    "ContractA_": "FalseOrder",
    "replatAttack1": "replayAttack1",
    "replatAttack2": "replayAttack2",
    "Singel_NoHashCollision": "Single_NoHashCollision",
    "SingelNoHashCollision": "Single_NoHashCollision"
}

def fixed_benchmark_id(name):
    return FIXES_BENCHMARK_ID.get(name,name)

FIXES_YAML = (
    ("BugLineNumber:-", "BugLineNumber: "),
    ("longer \ntype", "longer type"),
    ("loss of \naccuracy", "loss of accuracy"),
    ("BugResaon:", "BugReason:"),
    ("integers \nthat", "integers that"),
    ("{Cite from", '"{Cite from'),
    ("replay previously signed messages.", 'replay previously signed messages."')
)

def fixed_yaml(txt):
    for s,t in FIXES_YAML:
        txt = txt.replace(s,t)
    return txt

FIXES_WEAKNESS = {
    ("Results of contract execution affected by miners", "DangerousRandomNumbers"): "Randomness affected by miners",
    ("Results of contract execution affected by miners", "gray_controlledByMiners"): "Randomness affected by miners",
    ("Results of contract execution affected by miners", "gray_timeDependence"): "Time affected by miners",
    ("Results of contract execution affected by miners", "timeDependence"): "Time affected by miners",
    ("Results of contract execution affected by miners", "timeDependence1"): "Time affected by miners",
    ("Improper use of require, assert, and revert", "AssertError"): "Improper use of assert",
    ("Improper use of require, assert, and revert", "BarRequireError"): "Improper use of require",
    ("Improper use of require, assert, and revert", "NoAssertError"): "Improper use of assert",
    ("Improper use of require, assert, and revert", "NoRequireError"): "Improper use of require",
    ("Improper use of require, assert, and revert", "NoRevertError"): "Improper use of revert",
    ("Improper use of require, assert, and revert", "RevertError"): "Improper use of revert",
}

def fixed_weakness(weakness, bid):
    return FIXES_WEAKNESS.get((weakness,bid), weakness)

BYTECODE_IRRELEVANT = { "NoFalseOrder", "FalseOrder" }

def code(bid, fn):
    bytecode = bm.io.read_json(fn)["object"]
    runtime_bin = bm.bytecode.deploy(bytes.fromhex(bytecode))
    if bm.bytecode.is_library(runtime_bin):
        # Error: bytecode is the code of a library, not of the contract
        oracle = os.path.splitext(__file__)[0]
        bytecode = bm.io.read_string(os.path.join(oracle,f"{bid}.hex"))
        bytecode_is_orig = False
    else:
        bytecode_is_orig = True
    return bytecode, bytecode_is_orig


def process(dataset, source, destination):
    benchmarks = set()
    for sfn in sorted(glob.glob("**/*.sol", root_dir=source, recursive=True)):
        solpath = os.path.join(source,sfn)
        assert os.path.isfile(solpath)
        sfn_split = sfn.split(os.sep)
        path,contract=os.path.split(sfn)
        bid = fixed_benchmark_id(sfn_split[-1][:-4]) # bid = name of sol-file without extension
        assert bid not in benchmarks
        benchmarks.add(bid)
        status = STATUS[sfn_split[-2]] # status = dir containing sol-file, morphed
        weakness = fixed_weakness(sfn_split[2],bid) # weakness = dir on third level of hierarchy

        abspath = os.path.join(source,path)
        bytecode,bytecode_is_orig,etc = None,None,{}
        for fn in sorted(os.listdir(abspath)):
            absfn = os.path.join(abspath, fn)
            if fn.endswith("ByteCode.txt") and fixed_benchmark_id(fn[:-12]) == bid:
                bytecode,bytecode_is_orig = code(bid, absfn)
            elif fn.endswith("_Info.yml") and fixed_benchmark_id(fn[:-9]) == bid:
                etc = yaml.safe_load(fixed_yaml(bm.io.read_string(absfn)))
                if isinstance(etc["BugLineNumber"], int):
                    etc["BugLineNumber"] = [etc["BugLineNumber"]]
                elif isinstance(etc["BugLineNumber"], dict):
                    etc["BugLineNumber"] = sorted(etc["BugLineNumber"].keys())
        if bid in BYTECODE_IRRELEVANT:
            etc["note"] = "Bytecode irrelevant for weakness"
        
        parent = os.path.dirname(abspath)
        info = []
        for fn in sorted(os.listdir(parent)):
            if fn.endswith(".md") or fn.endswith(".json"):
                info.append(os.path.join(parent,fn))

        assert dataset and bid and weakness and solpath and bytecode

        bm.unify.save(destination, dataset, bid,
            [(weakness,status)],
            sol = solpath,
            bytecode = bytecode,
            bytecode_is_orig = bytecode_is_orig,
            etc = etc,
            info = info
        )
