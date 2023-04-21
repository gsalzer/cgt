import os, glob
import bm.unify, bm.io

def process(dataset, source, destination):
    benchmarks = set()
    for mdfn in glob.glob("**/metadata.json", root_dir=source, recursive=True):
        md = bm.io.read_json(os.path.join(source,mdfn))

        weakness,status,bid,_ = mdfn.split(os.sep)
        assert status in ("true","false")
        assert bid not in benchmarks
        benchmarks.add(bid)

        path = os.path.join(source,weakness,status,bid)
        bytecode = os.path.join(path, md["bytecode"])
        assert os.path.isfile(bytecode)
        runtime = os.path.join(path, md["runtime"])
        assert os.path.isfile(runtime)
        src = os.path.join(path, md["source"])
        assert os.path.isfile(src)
        info = [ os.path.join(path,i) for i in md["info"] ]
        assert all(os.path.isfile(i) for i in info)
        status = True if status=="true" else False

        bm.unify.save(destination, dataset, bid,
            [(weakness,status)],
            chain = md["chain"],
            addr = md["address"],
            contractname = md["contractname"],
            compiler = md["compiler"],
            sol = src,
            bytecode = bytecode,
            runtime = runtime,
            info = info,
            etc = { "language": md["language"] }
        )
