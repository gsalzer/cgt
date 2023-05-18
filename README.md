# Consolidated Ground Truth (CGT) for Weaknesses of Ethereum Smart Contracts 

This repository contains a unified and consolidated ground truth that
we constructed from previously published benchmark sets that were
manually classified by the respective authors. We completed the data,
eliminated inconsistencies and duplicates, and checked discrepancies
between the datasets. The ground truth consists of a collection of
contracts (in general given by chain address, source code, bytecode,
and runtime code) with a manually verified result whether the contract
exemplifies a specific weakness.

See also our accompanying paper [Consolidation of Ground Truth Sets
for Weakness Detection in Smart Contracts](https://arxiv.org/pdf/2304.11624).

## Responsible disclosure
This repo contains a copy of weakness collections published at the indicated locations well before the end of 2022. We don't expect any of these to contain vulnarabilities that can (still) be exploited. However, if you find anything worth reporting, please do so asap. 

**Further readings:**

- [https://www.hackerone.com/disclosure-guidelines](https://www.hackerone.com/disclosure-guidelines/)
- [https://dl.acm.org/doi/pdf/10.1145/3372115](https://dl.acm.org/doi/pdf/10.1145/3372115/)
- [https://www.lawfareblog.com/rethinking-responsible-disclosure-cryptocurrency-security](https://www.lawfareblog.com/rethinking-responsible-disclosure-cryptocurrency-security/)

## Datasets integrated in CGT

| |
| --- |
| [CodeSmells](https://github.com/Jiachi-Chen/TSE-ContractDefects) |
| [ContractFuzzer](https://github.com/gongbell/ContractFuzzer/tree/master/examples) |
| [Doublade](https://drive.google.com/file/d/1k0Edw2r1Z59WBc8SFbeh85hJMydGNPGz/view) |
| [eThor](https://secpriv.wien/ethor/) |
| [EthRacer](https://drive.google.com/file/d/1190VXwu502M-vgT8yyuFp0lFUVlxnMhO/view?usp=sharing) |
| [Ever Evolving Game](https://drive.google.com/open?id=1xLssDxYWyKFCwS5HUrQaSex0uwJRSvDi) |
| [JiuZhou](https://github.com/xf97/JiuZhou) |
| [Not So Smart Contracts](https://github.com/crytic/not-so-smart-contracts/) |
| [NPChecker](https://www.dropbox.com/sh/90tm5drmeep9bqy/AAB0jKxkIevNct2eIvsYb7Oqa?dl=0) |
| [SmartBugs curated](https://github.com/smartbugs/smartbugs-curated) |
| [SolidiFI](https://github.com/DependableSystemsLab/SolidiFI-benchmark) |
| [SWC registry](https://swcregistry.io) |
| [Zeus](https://goo.gl/kFNHy3) |

## The consolidated data

The result of our efforts is the file `consolidated.csv`, with the artefacts collected in the folders `source`, `bytecode`, and `runtime`. For details of its construction, see the README and the scripts in the folder `construction`.

The file `consolidated.csv` contains one line per consolidated assessment, with the values separated by semicolons.
Each line consists of the following fields. The fields `dataset`, `id`, `property`, and `property_holds` are never empty, while the other fields may be.

- `dataset`: string identifying the dataset
- `id`: string identifying an entry uniquely within a dataset
- `property`: string specifying the property assessed. It is unique within a dataset, but different datasets may use `property` for diverging properties.
- `property_holds`: Boolean (`t`, `f`) indicating whether the property `dataset.property` holds for the entry `dataset.id`.
- `chain`: string identifying the chain that `addr` refers to.
- `addr` [hex string starting with `0x`]: address on `chain` where the assessed contract has been deployed.
- `contractname`: string identifying the contract in the source that has been assessed. 
- `fp_sol` [hex string without `0x`]: hash computed from the source code, after removing white space and comments. For the actual source code, see  `source/<fp_sol>.sol`. Note that this source code may differ from the code in the original dataset regarding white space or comments, or if the original source was broken or missing.
- `fp_sol2` [hex string without `0x`]: hash computed from the source code, after removing white space, comments, and `pragma solidity` statements. Useful to identify sources identical up to compiler versions.
- `fp_bytecode` [hex string without `0x`]: hash computed from the deployment code (contract creation code), after replacing metadata sections (inserted by the Solidity compiler) by zeros. For the actual bytecode, see `bytecode/<fp_bytecode>.hex`. Note that this code may differ from the code in the original dataset regarding the metadata, or if the original bytecode was broken or missing.
- `fp_runtime` [hex string without `0x`]:  hash computed from the code deployed on the chain, after replacing metadata sections (inserted by the Solidity compiler) by zeros. For the actual runtime code, see `runtime/<fp_runtime>.rt.hex`. Note that this code may differ from the code in the original dataset regarding the metadata, or if the original bytecode was broken or missing.
- `swc` [integer 100-136, 995-999]: category of the [SWC classification](https://swcregistry.io/) corresponding to `dataset.property`. See `construction/sql/02_mapping.csv` for the complete mapping.
- `dasp` [integer 1-9]: category of the [DASP10 classification](https://dasp.co/) corresponding to `dataset.property`. See `construction/sql/02_mapping.csv` for the complete mapping.

## License

The folder `construction/originalSets` contains copies of publicly available datasets (see `construction/README.md` for links to the sources).
The data therein retains the licenses of the original datasets.

The folders `source`, `construction/scripts/cache`, and `construction/unified` contain smart contracts in the form of Solidity code that to a large extent have been obtained either directly or indirectly (via the original sets) from [etherscan.io](etherscan.io).
They retain the license specified there.

The bytecode in the folders `bytecode`, `source`, `construction/scripts/cache`, and `construction/unified` has mostly been obtained from a public blockchain, or has been generated by the Solidity compiler.
No idea whether any license applies; none is imposed by this repository.

For the Python and SQL code, the [MIT License](LICENSE.txt) applies.
