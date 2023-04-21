import os, glob
import bm.unify, bm.io, bm.log, bm.solidity

def process(dataset, source, destination):
    benchmarks = set()
    for fn_bin in sorted(glob.glob(os.path.join(source,"examples","*","verified_contract_bins","*"))):
        fn_list = fn_bin.split(os.sep)
        name,ext = os.path.splitext(fn_list[-1])
        vuln = fn_list[-3]

        bid = f"{name}-{vuln}"
        assert bid not in benchmarks
        benchmarks.add(bid)

        assert ext in (".bin",".bin-runtime")
        bytecode,runtime = (fn_bin,None) if ext == ".bin" else (None,fn_bin)

        sol,etc = None,None
        for sol_base in (name,f"{name}.sol"):
            fn_sol = os.path.join(source,"examples",vuln,"verified_contract_sols",sol_base)
            if not os.path.isfile(fn_sol):
                continue
            src = bm.io.read_string(fn_sol)
            if bm.solidity.is_broken(src):
                bm.log.warn(f"{fn_sol}: Broken Solidity file")
                # Some source files are broken (are just "None" or miss line breaks)
                etc = { "broken source": os.path.join("examples",vuln,"verified_contract_sols",os.path.basename(fn_sol)) }
                continue
            assert not sol
            sol = fn_sol

        bm.unify.save(destination, dataset, bid, [(vuln,True)],
            sol = sol,
            bytecode = bytecode,
            runtime = runtime,
            etc = etc)
