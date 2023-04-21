import os, glob
import bm.unify, bm.io

def status(s):
    s = s.strip()
    return (True if s == "unsafe" else
            False if s == "safe" else
            None)# otherwise

def process(dataset, source, destination):
    contracts = {}
    for jfn in sorted(glob.glob(os.path.join(source,"contract*","*.json"))):
        addr = os.path.basename(jfn)[:-5].lower()
        jdata = bm.io.read_json(jfn)
        entry = contracts.get(addr, {})
        assert "address" not in jdata or addr == jdata["address"].lower()
        for k,v in jdata.items():
            if k == "balance" and isinstance(v,str):
                v = int(v)
            assert k not in entry or v == entry[k]
            entry[k] = v
        contracts[addr] = entry

    results = bm.io.read_csv(os.path.join(source, "results.csv"), delimiter=";")
    benchmarks = set()
    for r in results:
        bid = r["contract-id"].lower()
        assert bid not in benchmarks
        benchmarks.add(bid)
        assert bid in contracts
        contract = contracts[bid]
        assert bid == contract["address"].lower()
        bm.unify.save(destination, dataset, bid,
            [("reentrancy", status(r["ground-truth"]))],
            addr=bid,
            contractname=contract.get("ContractName"),
            sol=contract.get("SourceCode"),
            runtime=contract.get("bytecode"),
            compiler=contract.get("CompilerVersion"))
