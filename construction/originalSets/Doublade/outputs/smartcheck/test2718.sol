reorder_contracts_2_3/test2718.sol
jar:file:/usr/local/lib/node_modules/@smartdec/smartcheck/jdeploy-bundle/smartcheck-2.0-jar-with-dependencies.jar!/solidity-rules.xmlruleId: SOLIDITY_PRAGMAS_VERSION
patternId: 23fc32
severity: 1
line: 1
column: 16
content: ^

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 11
column: 0
content: functionMyToken(){balanceOf[msg.sender]=21000000;name="VKB";symbol="VKB";decimals=8;}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 19
column: 4
content: functiontransfer(address_to,uint256_value){require(balanceOf[msg.sender]>=_value);require(balanceOf[_to]+_value>=balanceOf[_to]);balanceOf[msg.sender]-=_value;balanceOf[_to]+=_value;}

SOLIDITY_VISIBILITY :2
SOLIDITY_PRAGMAS_VERSION :1

