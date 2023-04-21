reorder_contracts_2_3/test1364.sol
jar:file:/usr/local/lib/node_modules/@smartdec/smartcheck/jdeploy-bundle/smartcheck-2.0-jar-with-dependencies.jar!/solidity-rules.xmlruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: adc165
severity: 1
line: 41
column: 33
content: 0x0000000000000000000000000000000000000000

ruleId: SOLIDITY_FUNCTIONS_RETURNS_TYPE_AND_NO_RETURN
patternId: 47acc2
severity: 1
line: 73
column: 1
content: functionremovePixelsFromMarket(bytes32pxHash)publicreturns(bool){require(pixelsOnSale[pxHash].blockOwner==msg.sender);pixelsOnSale[pxHash].isValue=false;}

ruleId: SOLIDITY_PRAGMAS_VERSION
patternId: 23fc32
severity: 1
line: 1
column: 16
content: ^

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 6
column: 9
content: private

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 901eae
severity: 1
line: 36
column: 19
content: keccak256(tX,tY,bX,bY)

SOLIDITY_PRAGMAS_VERSION :1
SOLIDITY_FUNCTIONS_RETURNS_TYPE_AND_NO_RETURN :1
SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA :1
SOLIDITY_ADDRESS_HARDCODED :1
SOLIDITY_UPGRADE_TO_050 :1

