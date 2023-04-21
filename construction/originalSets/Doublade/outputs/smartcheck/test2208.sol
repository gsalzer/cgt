reorder_contracts_2_3/test2208.sol
jar:file:/usr/local/lib/node_modules/@smartdec/smartcheck/jdeploy-bundle/smartcheck-2.0-jar-with-dependencies.jar!/solidity-rules.xmlruleId: SOLIDITY_ERC20_APPROVE
patternId: af782c
severity: 2
line: 335
column: 4
content: functionapprove(address_spender,uint256_value)publicisUsableonlyActive(msg.sender)onlyActive(_spender)returns(bool){require(0<_value,"StandardToken.approve: Zero value");allowed[msg.sender][_spender]=_value;emitApproval(msg.sender,_spender,_value);returntrue;}

ruleId: SOLIDITY_LOCKED_MONEY
patternId: 30281d
severity: 3
line: 108
column: 0
content: contractOwnership{addresspayablepublicowner;addresspayablepublicpendingOwner;eventOwnershipTransferred(addressindexedfrom,addressindexedto);constructor()public{owner=msg.sender;}modifieronlyOwner{require(msg.sender==owner,"Ownership: Access denied");_;}functiontransferOwnership(addresspayable_pendingOwner)publiconlyOwner{pendingOwner=_pendingOwner;}

ruleId: SOLIDITY_PRAGMAS_VERSION
patternId: 23fc32
severity: 1
line: 1
column: 16
content: >=

ruleId: SOLIDITY_PRAGMAS_VERSION
patternId: 23fc32
severity: 1
line: 1
column: 24
content: <

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 124
column: 4
content: functiontransferOwnership(addresspayable

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 127
column: 8
content: pendingOwner=_pendingOwner;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 242
column: 4
content: mapping(address=>uint256)balances;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 422
column: 4
content: bytes32constantFREEZE_CODE_DEFAULT=0x0000000000000000000000000000000000000000000000000000000000000000;

SOLIDITY_VISIBILITY :4
SOLIDITY_PRAGMAS_VERSION :2
SOLIDITY_LOCKED_MONEY :1
SOLIDITY_ERC20_APPROVE :1

