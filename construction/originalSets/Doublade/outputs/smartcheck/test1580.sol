reorder_contracts_2_3/test1580.sol
jar:file:/usr/local/lib/node_modules/@smartdec/smartcheck/jdeploy-bundle/smartcheck-2.0-jar-with-dependencies.jar!/solidity-rules.xmlruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: adc165
severity: 1
line: 12
column: 26
content: 0x41FE3738B503cBaFD01C1Fd8DD66b7fE6Ec11b01

ruleId: SOLIDITY_LOCKED_MONEY
patternId: 30281d
severity: 3
line: 3
column: 0
content: contractHundredPercentDivs{addresspubliccontractOwner;constructor()public{contractOwner=msg.sender;}functionisMoron(address_candidate)publicpurereturns(bool){return(_candidate==0x41FE3738B503cBaFD01C1Fd8DD66b7fE6Ec11b01);}function()publicpayable{if(!isMoron(msg.sender)){msg.sender.transfer(msg.value);}else{contractOwner.transfer(msg.value);}}}

ruleId: SOLIDITY_PRAGMAS_VERSION
patternId: 23fc32
severity: 1
line: 1
column: 16
content: ^

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 91h3sa
severity: 1
line: 15
column: 14
content: public

SOLIDITY_PRAGMAS_VERSION :1
SOLIDITY_LOCKED_MONEY :1
SOLIDITY_ADDRESS_HARDCODED :1
SOLIDITY_UPGRADE_TO_050 :1

