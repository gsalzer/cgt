reorder_contracts_2_3/test1895.sol
jar:file:/usr/local/lib/node_modules/@smartdec/smartcheck/jdeploy-bundle/smartcheck-2.0-jar-with-dependencies.jar!/solidity-rules.xmlruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: adc165
severity: 1
line: 170
column: 23
content: 0x82070415FEe803f94Ce5617Be1878503e58F0a6a

ruleId: SOLIDITY_LOCKED_MONEY
patternId: 30281d
severity: 3
line: 75
column: 0
content: contractOwnable{addressinternal_owner;eventOwnershipTransferred(addressindexedpreviousOwner,addressindexednewOwner);constructor()internal{_owner=msg.sender;emitOwnershipTransferred(address(0),_owner);}functionowner()publicviewreturns(address){return_owner;}modifieronlyOwner(){require(msg.sender==_owner);_;}functiontransferOwnership(addressnewOwner)externalonlyOwner{require(newOwner!=address(0));_owner=newOwner;emitOwnershipTransferred(_owner,newOwner);}functionwithdrawEther(addresspayableto,uint256amount)externalonlyOwner{require(to!=<missing ';'>address(0));uint256balance=address(this).balance;require(balance>=amount);to.transfer(amount);}

ruleId: SOLIDITY_PRAGMAS_VERSION
patternId: 23fc32
severity: 1
line: 1
column: 16
content: ^

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 146
column: 12
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 147
column: 12
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 148
column: 12
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 150
column: 16
content: private

ruleId: SOLIDITY_SAFEMATH
patternId: 837cac
severity: 1
line: 142
column: 4
content: usingSafeMathforuint256;

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 117
column: 4
content: functionwithdrawEther(addresspayable

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 117
column: 43
content: to,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 117
column: 47
content: uint256amount)external

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 117
column: 72
content: onlyOwner{require

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 118
column: 15
content: (to!=<missing ';'>

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 118
column: 22
content: address

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 118
column: 29
content: (0));

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 120
column: 8
content: uint256balance=address(this).balance;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 122
column: 8
content: require(balance>=

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 122
column: 27
content: amount);

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 123
column: 8
content: to.transfer(amount);

SOLIDITY_VISIBILITY :11
SOLIDITY_SAFEMATH :1
SOLIDITY_PRAGMAS_VERSION :1
SOLIDITY_LOCKED_MONEY :1
SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA :4
SOLIDITY_ADDRESS_HARDCODED :1

