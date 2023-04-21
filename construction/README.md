# Constructing the Unified and Consolidated Ground Truth Sets

The folder `originalSets` contains a collection of benchmark sets of smart contracts with manually labeled properties (mostly weaknesses) in various (irregular) data formats.

We provide scripts to unify/normalize and then consolidate these datasets.

## Installation

* Python 3.10 or above required.

* Make sure that Postgres is installed and running, and that you have access to a local database.

* Install the dependencies of the Python scripts in a virtual environment.
  ```bash
  cd scripts
  ./setup-venv.sh
  cd ..
  ```

  Alternatively, use `requirements.txt`:
  ```bash
  cd scripts
  python3 -m venv venv
  source venv/bin/activate # activate virtual environment
  pip install -r requirements-3.10.txt # or ...-3.11.txt
  cd ..
  ```

## Unification and consolidation

### Generate the file `unified.csv` and the folder `unified`

```bash
cd scripts
source venv/bin/activate # activate virtual environment
rm -rf ../unified ../unified.csv
./unify.py --datasets ../originalSets --unified ../unified
./metadata2csv.py --unified ../unified > ../unified.csv
cd ..
```

### Generate the file `consolidated.csv` and the folders `source`, `bytecode`, and `runtime`

* Run the sql scripts in folder `sql` to obtain `consolidated.csv`:
  ```bash
  cd sql
  for sql in 0*.sql 10*.sql; do
      psql -f $sql
  done
  cd ..
  ```

* Collect the artefacts for the consolidated data in the folders `source`, `bytecode`, and `runtime`.
  ```bash
  cd scripts
  ./artefacts.py --unified ../unified --consolidated ../consolidated.csv --source ../source --bytecode ../bytecode --runtime ../runtime
  cd ..

* [Optional] Replace the old consolidated data by the new one.
  ```bash
  rm -rf ../consolidated.csv ../source ../bytecode ../runtime
  mv consolidated.csv source bytecode runtime ..
  ```

* [Optional] To see some statistics, run the script `11_analysis.sql`.
  Its output is cached in `11_analysis.txt`.
  ```bash
  cd sql
  psql -f 11_analysis.sql > 11_analysis.txt
  cd ..
  ```

* [Optional] After modifying the `originalSets` or any of the scripts, a manual check of the discrepancies is required.
    - Generate the folder `unified` and the file `unified.csv` as described above.

    - Run the first seven sql scripts only. This will generate the file `07_disagreement_overview.csv`.
      ```bash
      cd sql
      for sql in 0{1,2,3,4,5,6,7}*.sql; do
          psql -f $sql
      done
      ```

    - If `07_disagreement_overview.csv` has changed (check e.g. with
      `git diff 07_disagreement_overview.csv`), open it with a
      suitable editor (like LibreOffice calc), analyse the
      discrepancies, and mark erroneous assessments. See
      `07_disagreement_overview.ods` for our analysis of the current
      discrepancies. Then extract the errors into a file
      `08_disagreement_errors.csv`. We used
      `08_disagreement_errors.ods` as an intermediate step.

    - Run the remaining three sql scripts.
      ```bash
      for sql in {08,09,10}*.sql; do
          psql -f $sql
      done
      cd ..
      ```

## The unified data

The script `unify.py` (see above) generates a folder `unified` that is structured as follows.

```
DATASET1/
    ID1/
        metadata.json
	source/
	bytecode/
	runtime/
	info/
    ID2/
    ...
DATASET2/
...
```

All entries of a DATASET are identified by a unique ID.
The sub-folders `source`, `bytecode` and `runtime` contain the source code, bytecode (contract creation code) and the runtime code (deployed code) underlying the assessments of the entry.
Optionally, the sub-folder `info` contains supplementary information provided by the dataset.

The file `metadata.json` contains the following fields.

- `addr` [string]: hex address of the contract if deployed on the main or a test chain
- `addr_orig` [boolean]: true if `addr` was supplied by the dataset, false if reconstructed
- `bytecode` [list of strings]: filenames of the bytecodes in the `bytecode` sub-folder
- `bytecode_orig` [boolean]: true if the bytecode used for `fp_bytecode` (see below) was supplied by the dataset, false if reconstructed
- `chain` [string]: chain to which `addr` refers to
- `chain_orig` [boolean]: true if `chain` was supplied by the dataset, false if reconstructed
- `classifications` [list of pairs (string,boolean)]: assessments provided by the dataset. Each assessment is a pair consisting of a string identifying the property and a boolean specifying whether the property was found to hold.
- `compiler` [string]: version of the compiler used to obtain the bytecode from the source code
- `compiler_orig` [boolean]: true if `compiler` was supplied by the dataset, false if reconstructed
- `contractname` [string]: name of contract in the Solidity source
- `contractname_orig` [boolean]: true if `contractname` was supplied by the dataset, false if reconstructed
- `dataset` [string]: name of the dataset contributing this entry
- `etc` [dict]: any noteworthy information not fitting the other fields
- `fp_bytecode` [string]: hex fingerprint identifying the bytecode. Computed by replacing all Solidity metadata sections in the bytecode by zeros, and then taking the md5 hash.
- `fp_runtime` [string]: hex fingerprint identifying the runtime code. Computed by replacing all Solidity metadata sections in the runtime code by zeros, and then taking the md5 hash.
- `fp_sol` [string]: hex fingerprint identifying the source code. Computed by removing comments and white space and then taking the md5 hash.
- `fp_sol2` [string]: another hex fingerprint identifying the source code. Computed by removing comments, white space and `pragma solidity` statements, and then taking the md5 hash.
- `id`: identifier of the entry, unique within the dataset
- `info` [list of strings]: filenames of the supplementary information in the `info` sub-folder
- `runtime` [list of strings]: filenames of the runtime codes in the `runtime` sub-folder
- `runtime_orig` [boolean]: true if the runtime code used for `fp_runtime` (see above) was supplied by the dataset, false if reconstructed
- `sol` [list of strings]: filenames of the source codes in the `source` sub-folder
- `sol_orig` [boolean]: true if the source code used for `fp_sol` and `fp_sol2` (see above) was supplied by the dataset, false if reconstructed

## The consolidated data

See the `README` in the parent folder.