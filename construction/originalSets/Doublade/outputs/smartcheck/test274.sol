reorder_contracts_2_3/test274.sol
jar:file:/usr/local/lib/node_modules/@smartdec/smartcheck/jdeploy-bundle/smartcheck-2.0-jar-with-dependencies.jar!/solidity-rules.xmlruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 187b5a
severity: 1
line: 53
column: 28
content: sha3

ruleId: SOLIDITY_OVERPOWERED_ROLE
patternId: j83hf7
severity: 2
line: 44
column: 2
content: functionsetProxy(address_proxy)onlyOwner{proxy=_proxy;}

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 2
column: 7
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 6
column: 31
content: private

ruleId: SOLIDITY_UNCHECKED_CALL
patternId: f39eed
severity: 3
line: 53
column: 16
content: call(bytes4(sha3("generateTokens(address,uint256)")),_client,value)

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 83k1no
severity: 1
line: 53
column: 16
content: call(bytes4(sha3("generateTokens(address,uint256)")),_client,value)

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 24
column: 2
content: functionCoinContract(){owner=msg.sender;enableContract();}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 34
column: 2
content: functionenableContract()onlyOwner{workingState=true;ContractEnabled();}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 39
column: 2
content: functiondisableContract()onlyOwner{workingState=false;ContractDisabled();}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 44
column: 2
content: functionsetProxy(address_proxy)onlyOwner{proxy=_proxy;}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 48
column: 2
content: functionpay(address_client,uint256_amount)workingFlagreturns(boolret){require(x>0);etherClients[_client]+=_amount;uint256value=x*_amount;FundsGot(_client,etherClients[_client]);ret=proxy.call(bytes4(sha3("generateTokens(address,uint256)")),_client,value);}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 56
column: 2
content: functiongetSenderFunds(address_sender)workingFlagreturns(uint256amount){returnetherClients[_sender];}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 60
column: 2
content: functionuniversalCall(stringdata)proxyAndOwnerworkingFlagreturns(boolresult){data;boolret=false;returnret;}

SOLIDITY_VISIBILITY :7
SOLIDITY_OVERPOWERED_ROLE :1
SOLIDITY_DEPRECATED_CONSTRUCTIONS :1
SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA :2
SOLIDITY_UPGRADE_TO_050 :1
SOLIDITY_UNCHECKED_CALL :1

