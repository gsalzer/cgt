#!/usr/bin/env python3

import os, importlib, sys, argparse, glob
import bm.gimli, bm.log

def main():
    argparser = argparse.ArgumentParser(prog="python3 unify.py", description="""
        Transform the datasets to a unified format and add missing data.
        """)
    argparser.add_argument("--unified",
        metavar = "DIR",
        type = str,
        default = "unified",
        help="directory for the unified data (default: 'unified')")
    argparser.add_argument("--datasets",
        metavar = "DIR",
        type = str,
        default = "datasets",
        help="directory with the original datasets (default: 'datasets')")
    argparser.add_argument("dataset",
        metavar = "DATASET",
        type = str,
        nargs = "*",
        help="name of a specific dataset to process; process all if none given")
    args = argparser.parse_args()

    if not os.path.isdir(args.datasets):
        bm.log.notify(f"Directory {args.datasets} does not exist.")
        return 1

    if args.dataset:
        datasets = set(args.dataset)
    else:
        datasets = glob.glob("*", root_dir=args.datasets)
    datasets = sorted(datasets)
    bm.gimli.open()
    for dataset in datasets:
        source = os.path.join(args.datasets, dataset)
        if not os.path.isdir(source):
            continue

        destination = os.path.join(args.unified, dataset)
        if os.path.exists(destination):
            bm.log.notify(f"Path {destination} already exists, skipping dataset {dataset}.")
            continue

        try:
            module = importlib.import_module(f"bm.parsers.{dataset}")
        except ModuleNotFoundError as e:
            if dataset in str(e):
                continue
            else:
                raise

        bm.log.notify(f"Processing {dataset}")
        module.process(dataset, source, destination)
    bm.gimli.close()



if __name__ == "__main__":
    sys.exit(main())
