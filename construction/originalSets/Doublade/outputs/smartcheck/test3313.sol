reorder_contracts_2_3/test3313.sol
jar:file:/usr/local/lib/node_modules/@smartdec/smartcheck/jdeploy-bundle/smartcheck-2.0-jar-with-dependencies.jar!/solidity-rules.xmlruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: a91b18
severity: 1
line: 107
column: 8
content: insideCallSender=address(0)

ruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: a91b18
severity: 1
line: 128
column: 8
content: insideCallSender=address(0)

ruleId: SOLIDITY_ARRAY_LENGTH_MANIPULATION
patternId: 872bdd
severity: 1
line: 181
column: 4
content: allOperations.length--

ruleId: SOLIDITY_ARRAY_LENGTH_MANIPULATION
patternId: 872bdd
severity: 1
line: 224
column: 4
content: allOperations.length=0

ruleId: SOLIDITY_ERC20_APPROVE
patternId: af782c
severity: 2
line: 345
column: 2
content: functionapprove(addressspender,uint256value)publicreturns(bool){allowed[msg.sender][spender]=value;emitApproval(msg.sender,spender,value);returntrue;}

ruleId: SOLIDITY_ERC20_APPROVE
patternId: af782c
severity: 2
line: 464
column: 2
content: functionapprove(addressspender,uint256value)publicwhenNotPausedwhenNotFrozenreturns(bool){returnsuper.approve(spender,value);}

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: d3j11j
severity: 1
line: 212
column: 4
content: for(uintj=0;j<owners.length;j++){deleteownersIndices[owners[j]];}

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: d3j11j
severity: 1
line: 215
column: 4
content: for(uinti=0;i<newOwners.length;i++){require(newOwners[i]!=address(0));require(ownersIndices[newOwners[i]]==0);ownersIndices[newOwners[i]]=i+1;}

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: d3j11j
severity: 1
line: 242
column: 4
content: for(uint256i=0;i<_beneficiary.length;i++){Blacklist.add(_list,_beneficiary[i]);}

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: d3j11j
severity: 1
line: 249
column: 4
content: for(uint256i=0;i<_beneficiary.length;i++){Blacklist.remove(_list,_beneficiary[i]);}

ruleId: SOLIDITY_GAS_LIMIT_IN_LOOPS
patternId: f6f853
severity: 2
line: 212
column: 4
content: for(uintj=0;j<owners.length;j++){deleteownersIndices[owners[j]];}

ruleId: SOLIDITY_GAS_LIMIT_IN_LOOPS
patternId: f6f853
severity: 2
line: 215
column: 4
content: for(uinti=0;i<newOwners.length;i++){require(newOwners[i]!=address(0));require(ownersIndices[newOwners[i]]==0);ownersIndices[newOwners[i]]=i+1;}

ruleId: SOLIDITY_GAS_LIMIT_IN_LOOPS
patternId: f6f853
severity: 2
line: 242
column: 4
content: for(uint256i=0;i<_beneficiary.length;i++){Blacklist.add(_list,_beneficiary[i]);}

ruleId: SOLIDITY_GAS_LIMIT_IN_LOOPS
patternId: f6f853
severity: 2
line: 249
column: 4
content: for(uint256i=0;i<_beneficiary.length;i++){Blacklist.remove(_list,_beneficiary[i]);}

ruleId: SOLIDITY_LOCKED_MONEY
patternId: 30281d
severity: 3
line: 391
column: 0
content: contractMultiSignatureVaultisMultiownable{boollockState;function()externalpayable{}constructor(address[]memory_owners)publicMultiownable(_owners){lockState=false;}functiontransferTo(addresspayableto,uint256amount)externalonlyOwners{require(!lockState);lockState=true;to.transfer(amount);lockState=false;}

ruleId: SOLIDITY_PRAGMAS_VERSION
patternId: 23fc32
severity: 1
line: 1
column: 16
content: ^

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 233
column: 17
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 417
column: 9
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 418
column: 9
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 419
column: 8
content: private

ruleId: SOLIDITY_SAFEMATH
patternId: 837cac
severity: 1
line: 306
column: 2
content: usingSafeMathforuint256;

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 400
column: 2
content: functiontransferTo(addresspayable

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 308
column: 2
content: mapping(address=>uint256)balances;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 336
column: 2
content: mapping(address=>mapping(address=>uint256))allowed;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 393
column: 2
content: boollockState;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 400
column: 38
content: to,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 400
column: 42
content: uint256amount)external

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 400
column: 67
content: onlyOwners{require

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 401
column: 11
content: (!lockState);lockState=true;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 403
column: 4
content: to.transfer(amount);

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 404
column: 4
content: lockState=false;

SOLIDITY_VISIBILITY :10
SOLIDITY_SAFEMATH :1
SOLIDITY_PRAGMAS_VERSION :1
SOLIDITY_ARRAY_LENGTH_MANIPULATION :2
SOLIDITY_LOCKED_MONEY :1
SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA :4
SOLIDITY_EXTRA_GAS_IN_LOOPS :4
SOLIDITY_ADDRESS_HARDCODED :2
SOLIDITY_GAS_LIMIT_IN_LOOPS :4
SOLIDITY_ERC20_APPROVE :2

