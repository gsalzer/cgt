reorder_contracts_2_3/test639.sol
jar:file:/usr/local/lib/node_modules/@smartdec/smartcheck/jdeploy-bundle/smartcheck-2.0-jar-with-dependencies.jar!/solidity-rules.xmlruleId: SOLIDITY_LOCKED_MONEY
patternId: 30281d
severity: 3
line: 9
column: 0
content: contractOpportunity{function()externalpayable{msg.sender.send(address(this).balance-msg.value);}}

ruleId: SOLIDITY_PRAGMAS_VERSION
patternId: 23fc32
severity: 1
line: 7
column: 16
content: ^

ruleId: SOLIDITY_UNCHECKED_CALL
patternId: f39eed
severity: 3
line: 12
column: 19
content: send(address(this).balance-msg.value)

SOLIDITY_PRAGMAS_VERSION :1
SOLIDITY_LOCKED_MONEY :1
SOLIDITY_UNCHECKED_CALL :1

