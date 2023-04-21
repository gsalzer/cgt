import os
import bm.unify, bm.io

def status(s):
    s = s.strip()
    return  (True if str(s) == "1" else
             False if str(s) == "0" else
             None)# otherwise

def process(dataset, source, destination):
    rows = []
    for line in bm.io.read_lines(os.path.join(source, "codesmells.csv")):
        rows.append(line.split(","))
    weakness = {i: rows[i][22][3:].strip() for i in range(1, 21)}
    benchmarks = set()
    for row in rows:
        address = row[0]
        if address == "sum":
            # skip last line
            break
        bid = address.lower()
        assert len(bid)==42 and bid not in benchmarks
        benchmarks.add(bid)
        classifications = [(weakness[j], status(row[j])) for j in range(1, 21)]
        bm.unify.save(destination, dataset, bid,
            classifications,
            addr=bid,
            chain="main")
