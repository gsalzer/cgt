import pandas, os
import bm.unify

def status(s):
    s = s.strip()
    return (True if s == "unsafe" else
            False if s == "safe" else
            None)# otherwise

def process(dataset, source, destination):
    df = pandas.read_excel(os.path.join(source, "manual_check.xlsx"))
    benchmarks = set()
    for i, addr in enumerate(df.iloc[:, 0]):
        bid = addr.lower()
        assert bid not in benchmarks
        benchmarks.add(bid)
        classification = []
        bad_call = df.iloc[i, 1].split("/")
        classification.append(("Failed Call", bad_call[0]))
        classification.append(("Unchecked Call", bad_call[1]))
        classification.append(("System Property Dependence", df.iloc[i, 2]))
        classification.append(("Reentrancy", df.iloc[i, 3]))
        classification.append(("TOD", df.iloc[i, 4]))
        note = df.iloc[i, 9]

        bm.unify.save(destination, dataset, bid,
            [ (k,status(v)) for k,v in classification ],
            addr = addr,
            etc = { "note": note } )
