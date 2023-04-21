import re, os
import bm.io, bm.unify

ONCHAIN = re.compile("([^ ]+?) .*(0x[0-9a-fA-F]*)")
OFFCHAIN = re.compile("(0x[0-9a-fA-F]*)")

def status(s):
    s = s.strip()
    return (True if s=="TP" else
            False if s.startswith("FP") else
            None)# otherwise

def process(dataset, source, destination):
    benchmarks = {}
    onchain = bm.io.read_lines(os.path.join(source,"manual_onchain_src.txt"))
    for line in onchain:
        if not (m := ONCHAIN.match(line)):
            continue
        s = status(m[1])
        a = m[2].lower()
        if len(a) == 43 and a[-1] == "c":
            a = a[:42]
            addr_is_orig = False
        else:
            addr_is_orig = True
        assert len(a)==42
        if a in benchmarks:
            # There are a few duplicate entries, counted separately
            benchmarks[a] += 1
            bid = f"{a}-{benchmarks[a]}"
        else:
            benchmarks[a] = 1
            bid = a
        bm.unify.save(destination, dataset, bid,
            [("EO onchain",s)],
            addr = a,
            addr_is_orig = addr_is_orig)

    offchain = bm.io.read_lines(os.path.join(source,"manual_offchain_src.txt"))
    del s
    for line in offchain:
        if len(line) >= 2 and line[:2] in ("TP", "FP"):
            s = status(line[:2])
            continue
        if not (m := OFFCHAIN.match(line)):
            continue
        a = m[1].lower()
        bid = a
        assert len(a)==42 and bid not in benchmarks
        benchmarks[a] = 1
        bm.unify.save(destination, dataset, bid,
            [("EO offchain",s)],
            addr=a)
