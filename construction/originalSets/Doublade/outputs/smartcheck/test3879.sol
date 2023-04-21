reorder_contracts_2_3/test3879.sol
jar:file:/usr/local/lib/node_modules/@smartdec/smartcheck/jdeploy-bundle/smartcheck-2.0-jar-with-dependencies.jar!/solidity-rules.xmlruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: a91b18
severity: 1
line: 564
column: 8
content: chkLockerList[num]=address(0)

ruleId: SOLIDITY_ERC20_APPROVE
patternId: af782c
severity: 2
line: 193
column: 4
content: functionapprove(address_spender,uint256_value)publicreturns(bool){allowed[msg.sender][_spender]=_value;emitApproval(msg.sender,_spender,_value);returntrue;}

ruleId: SOLIDITY_LOCKED_MONEY
patternId: 30281d
severity: 3
line: 281
column: 0
content: contractMultiOwnable{uint8constantMAX_BURN=3;uint8constantMAX_OWNER=15;addresspayablepublichiddenOwner;addresspayablepublicsuperOwner;addresspayablepublicreclaimer;address[MAX_BURN]publicchkBurnerList;address[MAX_OWNER]publicchkOwnerList;mapping(address=>bool)publicburners;mapping(address=>bool)publicowners;eventAddedBurner(addressindexednewBurner);eventAddedOwner(addressindexednewOwner);eventDeletedOwner(addressindexedtoDeleteOwner);eventDeletedBurner(addressindexedtoDeleteBurner);eventChangedReclaimer(addressindexednewReclaimer);eventChangedSuperOwner(addressindexednewSuperOwner);eventChangedHiddenOwner(addressindexednewHiddenOwner);constructor()public{hiddenOwner=msg.sender;superOwner=msg.sender;reclaimer=msg.sender;owners[msg.sender]=true;chkOwnerList[0]=msg.sender;}modifieronlySuperOwner(){require(superOwner==msg.sender);_;}modifieronlyReclaimer(){require(reclaimer==msg.sender);_;}modifieronlyHiddenOwner(){require(hiddenOwner==msg.sender);_;}modifieronlyOwner(){require(owners[msg.sender]);_;}modifieronlyBurner(){require(burners[msg.sender]);_;}functionchangeSuperOwnership(addresspayablenewSuperOwner)publiconlyHiddenOwnerreturns(bool){require(newSuperOwner!=<missing ';'>address(0));superOwner=newSuperOwner;emitChangedSuperOwner(superOwner);returntrue;}

ruleId: SOLIDITY_LOCKED_MONEY
patternId: 30281d
severity: 3
line: 414
column: 0
content: contractHasNoEtherisMultiOwnable{usingSafeERC20forERC20Basic;eventReclaimToken(address_token);constructor()publicpayable{require(msg.value==0);}function()external{}functionreclaimToken(ERC20Basic_token)externalonlyReclaimerreturns(bool){uint256balance=_token.balanceOf(address(this));_token.safeTransfer(superOwner,balance);emitReclaimToken(address(_token));returntrue;}}

ruleId: SOLIDITY_OVERPOWERED_ROLE
patternId: j83hf7
severity: 2
line: 725
column: 4
content: functionsetLockValue(addressto,uint256value)publiconlyOwnerreturns(bool){lockValues[to]=value;emitSetLockValues(to,value);returntrue;}

ruleId: SOLIDITY_PRAGMAS_VERSION
patternId: 23fc32
severity: 1
line: 1
column: 16
content: >

ruleId: SOLIDITY_PRAGMAS_VERSION
patternId: 23fc32
severity: 1
line: 1
column: 24
content: <

ruleId: SOLIDITY_SAFEMATH
patternId: 837cac
severity: 1
line: 109
column: 4
content: usingSafeMathforuint256;

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 331
column: 4
content: functionchangeSuperOwnership(addresspayable

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 111
column: 4
content: mapping(address=>uint256)balances;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 113
column: 4
content: uint256totalSupply_;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 282
column: 4
content: uint8constantMAX_BURN=3;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 283
column: 4
content: uint8constantMAX_OWNER=15;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 331
column: 95
content: (bool){require

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 332
column: 15
content: (newSuperOwner!=<missing ';'>

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 332
column: 33
content: address

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 332
column: 40
content: (0));

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 333
column: 8
content: superOwner=newSuperOwner;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 335
column: 8
content: emitChangedSuperOwner

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 335
column: 30
content: (superOwner);returntrue;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 452
column: 4
content: mapping(address=>bool)blacklisted;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 517
column: 4
content: uint8constantMAX_LOCKER=10;

SOLIDITY_VISIBILITY :14
SOLIDITY_SAFEMATH :1
SOLIDITY_OVERPOWERED_ROLE :1
SOLIDITY_PRAGMAS_VERSION :2
SOLIDITY_LOCKED_MONEY :2
SOLIDITY_ADDRESS_HARDCODED :1
SOLIDITY_ERC20_APPROVE :1

