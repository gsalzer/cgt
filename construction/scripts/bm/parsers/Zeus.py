import os, glob, re
import bm.io, bm.unify

ADDRESS = re.compile("[0-9a-fA-F]{20,}")

def process(dataset, source, destination):
    benchmarks = {}
    for fn in sorted(glob.glob(os.path.join(source,"Zeus*.csv"))):
        if fn.endswith("Zeus_Oyente.csv"):
            continue
        fn_list = fn.split(os.sep)
        vulnerability = fn_list[-1][5:-4]
        for i,line in enumerate(bm.io.read_lines(fn),start=1):
            cols = [ c.strip() for c in line.split(";") ]
            bid = f"{i:04d}_{cols[0]}"
            if cols[2] == "Correct":
                status = (True if cols[1] == "Unsafe" else
                          False if cols[1] == "Safe" else
                          None)
            elif cols[2] == "Incorrect":
                status = (False if cols[1] == "Unsafe" else
                          True if cols[1] == "Safe" else
                          None)
            elif cols[2] == "":
                continue
            else:
                raise ValueError(f"{bid}: {cols[2]}???")
            if bid not in benchmarks:
                benchmarks[bid] = set()
            benchmarks[bid].add((vulnerability,status))
    for bid,result in benchmarks.items():
        if m:= ADDRESS.search(bid):
            bm.unify.save(destination, dataset, bid,
                sorted(result),
                addr=m[0],
                addr_is_orig=False)
        else:
            bm.unify.save(destination, dataset, bid,
                sorted(result))
