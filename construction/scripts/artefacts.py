#!/usr/bin/env python3

import sys,os,csv,argparse,shutil
import bm.solidity, bm.bytecode, bm.io

class excel_semicolon(csv.excel):
    delimiter = ';'

def do_artefacts(consolidated, unified, destination, key_fp, subdir, fingerprint, extension):
    artefacts = {}
    os.makedirs(destination)
    with open(consolidated, newline='') as f:
        for row in csv.DictReader(f, dialect=excel_semicolon):
            entry = os.path.join(row["dataset"], row["id"])
            fp = row[key_fp]
            if not fp:
                continue
            if fp not in artefacts:
                artefacts[fp] = []
            artefacts[fp].append(entry)
    for fp, entries in artefacts.items():
        etherscan = []
        other = []
        for entry in entries:
            p = os.path.join(unified, entry, subdir)
            for fn in os.listdir(p):
                pfn = os.path.join(p, fn)
                assert os.path.isfile(pfn)
                if fingerprint(bm.io.read_string(pfn)) != fp:
                    continue
                if "etherscan" in fn:
                    etherscan.append(pfn)
                else:
                    other.append(pfn)
        pfn = etherscan[0] if etherscan else other[0] if other else None
        if not pfn:
            print(f"No match for {fp} among {entries}")
        shutil.copy(pfn, os.path.join(destination,f"{fp}.{extension}"))

def main():
    argparser = argparse.ArgumentParser(prog="python3 artefacts.py", description="""
        Collect the Solidity sources, bytecodes, and runtime codes for the consolidated dataset.
        """)
    argparser.add_argument("--source",
        metavar = "DIR",
        type = str,
        default = "source",
        help="directory for the source files (default: 'source')")
    argparser.add_argument("--bytecode",
        metavar = "DIR",
        type = str,
        default = "bytecode",
        help="directory for the deployment bytecodes (default: 'bytecode')")
    argparser.add_argument("--runtime",
        metavar = "DIR",
        type = str,
        default = "runtime",
        help="directory for the runtime codes (default: 'runtime')")
    argparser.add_argument("--unified",
        metavar = "DIR",
        type = str,
        default = "unified",
        help="directory with the unified data (default: 'unified')")
    argparser.add_argument("--consolidated",
        metavar = "FILE",
        type = str,
        default = "consolidated.csv",
        help="csv file with the consolidated assessments (default: 'consolidated.csv')")
    args = argparser.parse_args()

    for d in (args.source, args.bytecode, args.runtime):
        if os.path.exists(d):
            bm.log.notify(f"Path {d} already exists, aborting.")
            return 1
        
    do_artefacts(args.consolidated, args.unified, args.source,
        "fp_sol",      "source",   bm.solidity.fingerprint, "sol")
    do_artefacts(args.consolidated, args.unified, args.bytecode,
	"fp_bytecode", "bytecode", bm.bytecode.fingerprint, "hex")
    do_artefacts(args.consolidated, args.unified, args.runtime,
        "fp_runtime",  "runtime",  bm.bytecode.fingerprint, "rt.hex")

if __name__ == '__main__':
    sys.exit(main())
