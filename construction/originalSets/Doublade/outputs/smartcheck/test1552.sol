reorder_contracts_2_3/test1552.sol
jar:file:/usr/local/lib/node_modules/@smartdec/smartcheck/jdeploy-bundle/smartcheck-2.0-jar-with-dependencies.jar!/solidity-rules.xmlruleId: SOLIDITY_LOCKED_MONEY
patternId: 30281d
severity: 3
line: 55
column: 0
content: contractOwned{addresspayablepublicowner;constructor()public{owner=msg.sender;}modifieronlyOwner{require(msg.sender==owner);_;}functiontransferOwnership(addresspayablenewOwner)onlyOwnerpublic{require(newOwner!=address(0x0));owner=newOwner;}

ruleId: SOLIDITY_PRAGMAS_VERSION
patternId: 23fc32
severity: 1
line: 19
column: 16
content: ^

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 68
column: 4
content: functiontransferOwnership(addresspayable

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 68
column: 47
content: newOwner)onlyOwnerpublic{

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 69
column: 8
content: require(newOwner!=

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 69
column: 28
content: address

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 69
column: 35
content: (0x0));

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 70
column: 8
content: owner=newOwner;

SOLIDITY_VISIBILITY :6
SOLIDITY_PRAGMAS_VERSION :1
SOLIDITY_LOCKED_MONEY :1

