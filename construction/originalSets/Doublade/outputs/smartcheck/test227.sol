reorder_contracts_2_3/test227.sol
jar:file:/usr/local/lib/node_modules/@smartdec/smartcheck/jdeploy-bundle/smartcheck-2.0-jar-with-dependencies.jar!/solidity-rules.xmlruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: c67a09
severity: 1
line: 151
column: 38
content: 0x0

ruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: c67a09
severity: 1
line: 151
column: 61
content: 0x0

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: k4o1l4
severity: 1
line: 144
column: 8
content: while(i<_toList.length){erc20.transfer(_toList[i],_values[i]);i+=1;}

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: k4o1l4
severity: 1
line: 168
column: 8
content: while(i<_toList.length){_toList[i].transfer(_values[i]);i+=1;}

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: k4o1l4
severity: 1
line: 177
column: 8
content: while(i<_toList.length){_toList[i].transfer(_value);i+=1;}

ruleId: SOLIDITY_GAS_LIMIT_IN_LOOPS
patternId: 17f23a
severity: 1
line: 144
column: 15
content: i<_toList.length

ruleId: SOLIDITY_GAS_LIMIT_IN_LOOPS
patternId: 17f23a
severity: 1
line: 168
column: 15
content: i<_toList.length

ruleId: SOLIDITY_GAS_LIMIT_IN_LOOPS
patternId: 17f23a
severity: 1
line: 177
column: 15
content: i<_toList.length

ruleId: SOLIDITY_PRAGMAS_VERSION
patternId: 23fc32
severity: 1
line: 1
column: 16
content: ^

ruleId: SOLIDITY_SAFEMATH
patternId: 837cac
severity: 1
line: 130
column: 4
content: usingSafeMathforuint256;

ruleId: SOLIDITY_TRANSFER_IN_LOOP
patternId: 8jdj43
severity: 2
line: 168
column: 8
content: while(i<_toList.length){_toList[i].transfer(_values[i]);i+=1;}

ruleId: SOLIDITY_TRANSFER_IN_LOOP
patternId: 8jdj43
severity: 2
line: 177
column: 8
content: while(i<_toList.length){_toList[i].transfer(_value);i+=1;}

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 91h3sa
severity: 1
line: 136
column: 15
content: public

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 140
column: 52
content: address[]_toList

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 140
column: 71
content: uint256[]_values

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 165
column: 30
content: address[]_toList

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 165
column: 49
content: uint256[]_values

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 174
column: 26
content: address[]_toList

SOLIDITY_SAFEMATH :1
SOLIDITY_PRAGMAS_VERSION :1
SOLIDITY_EXTRA_GAS_IN_LOOPS :3
SOLIDITY_ADDRESS_HARDCODED :2
SOLIDITY_UPGRADE_TO_050 :6
SOLIDITY_GAS_LIMIT_IN_LOOPS :3
SOLIDITY_TRANSFER_IN_LOOP :2

