reorder_contracts_2_3/test2974.sol
jar:file:/usr/local/lib/node_modules/@smartdec/smartcheck/jdeploy-bundle/smartcheck-2.0-jar-with-dependencies.jar!/solidity-rules.xmlruleId: SOLIDITY_PRAGMAS_VERSION
patternId: 23fc32
severity: 1
line: 1
column: 16
content: ^

ruleId: SOLIDITY_SHOULD_NOT_BE_VIEW
patternId: 189abf
severity: 1
line: 15
column: 2
content: functionisContract(addressaddr)internalviewreturns(bool){uint256size;assembly{size:=extcodesize(addr)}returnsize>0;}

SOLIDITY_PRAGMAS_VERSION :1
SOLIDITY_SHOULD_NOT_BE_VIEW :1

