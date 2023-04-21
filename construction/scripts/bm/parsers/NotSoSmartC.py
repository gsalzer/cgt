import os
import bm.io, bm.unify


def status(s):
    return (True if s == "True" else
            False if s == "False" else
            None)


def process(dataset, source, destination):
    bids = set()
    path,base = os.path.split(__file__)
    base = os.path.splitext(base)[0]
    local = os.path.join(path, base)
    fn_csv = os.path.join(local,f"{base}.csv")
    for row in bm.io.read_csv(fn_csv, delimiter=";"):
        bid = os.path.splitext(row["filename"])[0]
        assert bid not in bids
        bids.add(bid)

        src = []
        for s in row["source"].split(","):
            src.extend(bm.io.read_lines(os.path.join(source,*s.split("/"))))
            
        sol = []
        for se in row["lines"].split(","):
            s,e = se.split(":")
            lines = (
                src[int(s):int(e)] if s and e else
                src[int(s):] if s else
                src[:int(e)] if e else
                src)
            sol.extend(lines)
        sol_is_orig = len(src) == len(sol)
        fn_sol = os.path.join(local,row["filename"])
        bm.io.write_lines(sol,fn_sol)

        classification = []
        for c in row["classification"].split(","):
            p,s = c.split(":")
            classification.append( (p,status(s)) )

        info = [ os.path.join(source, *row["info"].split("/")) ]
        if row["exploit"]:
            info.append(os.path.join(source, *row["exploit"].split("/")))

        bm.unify.save(destination, dataset, bid,
            classification,
            sol = fn_sol,
            sol_is_orig = sol_is_orig,
            contractname = row["contract"],
            info = info)

        os.remove(fn_sol)

