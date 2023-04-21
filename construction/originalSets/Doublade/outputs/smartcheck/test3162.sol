reorder_contracts_2_3/test3162.sol
jar:file:/usr/local/lib/node_modules/@smartdec/smartcheck/jdeploy-bundle/smartcheck-2.0-jar-with-dependencies.jar!/solidity-rules.xmlruleId: SOLIDITY_PRAGMAS_VERSION
patternId: 23fc32
severity: 1
line: 1
column: 16
content: ^

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 8
column: 1
content: functionsettrue(uint8x,addressa){something[x][a]=true;}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 11
column: 1
content: functionsetfalse(uint8x,addressa){something[x][a]=false;}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 30
column: 1
content: functiontest(uint8x,addressa){if(original.something(uint8(x),a))something[x][a]=1;elsesomething[x][a]=2;}

SOLIDITY_VISIBILITY :3
SOLIDITY_PRAGMAS_VERSION :1

