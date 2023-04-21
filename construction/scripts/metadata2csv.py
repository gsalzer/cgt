#!/usr/bin/env python3

import sys,os,csv,argparse,glob
import bm.io

FIELDS = (
    "dataset", "id", "id_a", "id_as", "id_asb", "id_asbr", "id_as2", "id_asb2", "id_asbr2",
    "chain", "chain_orig", "addr", "addr_orig", "contractname", "contractname_orig",
    "compiler", "compiler_orig", "fp_sol", "fp_sol2", "sol_orig", "fp_bytecode", "bytecode_orig",
    "fp_runtime", "runtime_orig", "sol", "bytecode", "runtime", "property", "property_holds" )



def main():
    argparser = argparse.ArgumentParser(prog="python3 metadata2csv.py", description="""
        Write key information from metadata.json files to stdout, in csv format.
        """)
    argparser.add_argument("-v", "--verbose", action='store_true', help="show progress")
    argparser.add_argument("--unified",
        metavar="DIR",
        type = str,
        default = "unified",
        help="folder with the unified data (default: 'unified')")
    args = argparser.parse_args()

    unified = sorted(glob.glob("**/metadata.json", root_dir=args.unified, recursive=True))
    metadatas = []
    for md in unified:
        fn = os.path.join(args.unified, md)
        if args.verbose:
            print(fn, file=sys.stderr)
        metadatas.append(bm.io.read_json(fn))

    cluster_metadata(metadatas, "id_a",
        lambda m1,m2: same_address(m1,m2))
    cluster_metadata(metadatas, "id_as",
        lambda m1,m2: (same_address(m1,m2) or same_source(m1,m2)))
    cluster_metadata(metadatas, "id_as2",
        lambda m1,m2: (same_address(m1,m2) or same_source_wo_pragma(m1,m2)))
    cluster_metadata(metadatas, "id_asb",
        lambda m1,m2: (same_address(m1,m2) or same_source(m1,m2) or same_bytecode(m1,m2)))
    cluster_metadata(metadatas, "id_asb2",
        lambda m1,m2: (same_address(m1,m2) or same_source_wo_pragma(m1,m2) or same_bytecode(m1,m2)))
    cluster_metadata(metadatas, "id_asbr",
        lambda m1,m2: (same_address(m1,m2) or same_source(m1,m2) or same_bytecode(m1,m2) or same_runtime(m1,m2)))
    cluster_metadata(metadatas, "id_asbr2",
        lambda m1,m2: (same_address(m1,m2) or same_source_wo_pragma(m1,m2) or same_bytecode(m1,m2) or same_runtime(m1,m2)))

    class excel_semicolon(csv.excel):
        delimiter = ';'
    csv_out = csv.writer(sys.stdout, dialect=excel_semicolon)
    csv_out.writerow(FIELDS)
    for metadata in metadatas:
        metadata2csv(metadata, csv_out)


def same_address(md1, md2):
    return (md1["chain"] and md1["chain"]==md2["chain"] and
            md1["addr"] and md1["addr"]==md2["addr"])

def same_source(md1, md2):
    return (md1["fp_sol"] and md1["fp_sol"]==md2["fp_sol"] and
            md1["contractname"] and md1["contractname"]==md2["contractname"])

def same_source_wo_pragma(md1, md2):
    return (md1["fp_sol2"] and md1["fp_sol2"]==md2["fp_sol2"] and
            md1["contractname"] and md1["contractname"]==md2["contractname"])

def same_bytecode(md1, md2):
    return md1["fp_bytecode"] and md1["fp_bytecode"]==md2["fp_bytecode"]

def same_runtime(md1, md2):
    return md1["fp_runtime"] and md1["fp_runtime"]==md2["fp_runtime"]
        
def cluster_metadata(metadatas, label, equivalent):
    nxt,eqs = 1, {}
    for md1 in metadatas:
        ns = []
        for n,md2s in eqs.items():
            for md2 in md2s:
                if equivalent(md1,md2):
                    ns.append(n)
                    break
        eqs[nxt] = [md1]
        ns.append(nxt)
        nxt += 1
        ns.sort()
        n = ns[0]
        for i in ns[1:]:
            eqs[n].extend(eqs[i])
            del eqs[i]
    for n,mds in eqs.items():
        for md in mds:
            md[label] = n
        


def metadata2csv(metadata, csv_out):
    row = []
    for f in FIELDS:
        if f in ("property", "property_holds"):
            continue
        v = metadata.get(f)
        if f in ('sol', 'bytecode', 'runtime'):
            if v:
                assert 1 <= len(v) <= 2
                assert (len(v) == 1
                    or v[1].endswith("etherscan.sol")
                    or v[1].endswith(f"{metadata['chain']}.hex")
                    or v[1].endswith(f"{metadata['chain']}.rt.hex"))
                v = v[-1]
            else:
                v = None
        row.append(v if v is not None else "")
    for prop,holds in metadata.get("classifications",[]):
        csv_out.writerow(row + [prop,holds])

if __name__ == '__main__':
    sys.exit(main())
