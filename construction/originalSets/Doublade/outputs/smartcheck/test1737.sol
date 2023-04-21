reorder_contracts_2_3/test1737.sol
jar:file:/usr/local/lib/node_modules/@smartdec/smartcheck/jdeploy-bundle/smartcheck-2.0-jar-with-dependencies.jar!/solidity-rules.xmlruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: adc165
severity: 1
line: 68
column: 27
content: 0xBcd4012cECBbFc7a73EC4a14EBb39406D361a0f5

ruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: a91b18
severity: 1
line: 54
column: 8
content: newOwner=address(0)

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 6
column: 4
content: functiontotalSupply()externalconstantreturns(uint);

ruleId: SOLIDITY_LOCKED_MONEY
patternId: 30281d
severity: 3
line: 58
column: 0
content: contractCrowdsaleisOwned,SafeMath{addresspublicescrowAddress;uintpublictotalEthInWei;uintamountPerEther=750;uintminAmount=1e16;DreamTokentoken;functionCrowdsale()public{escrowAddress=owner;token=DreamToken(0xBcd4012cECBbFc7a73EC4a14EBb39406D361a0f5);}functionsetEscrowAddress(addressnewAddress)publiconlyOwnerreturns(boolsuccess){escrowAddress=newAddress;returntrue;}functionsetAmountPerEther(uintnewAmount)publiconlyOwnerreturns(boolsuccess){amountPerEther=newAmount;returntrue;}function()externalpayable{require(msg.value>=minAmount);totalEthInWei=totalEthInWei+msg.value;if(owner!=msg.sender){uintamount=safeDiv(msg.value,1e10);amount=safeMul(amount,amountPerEther);token.transferFrom(owner,msg.sender,amount);escrowAddress.transfer(msg.value);}}}

ruleId: SOLIDITY_OVERPOWERED_ROLE
patternId: j83hf7
severity: 2
line: 71
column: 4
content: functionsetEscrowAddress(addressnewAddress)publiconlyOwnerreturns(boolsuccess){escrowAddress=newAddress;returntrue;}

ruleId: SOLIDITY_OVERPOWERED_ROLE
patternId: j83hf7
severity: 2
line: 78
column: 4
content: functionsetAmountPerEther(uintnewAmount)publiconlyOwnerreturns(boolsuccess){amountPerEther=newAmount;returntrue;}

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 62
column: 4
content: uintamountPerEther=750;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 63
column: 4
content: uintminAmount=1e16;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 64
column: 4
content: DreamTokentoken;

SOLIDITY_VISIBILITY :3
SOLIDITY_OVERPOWERED_ROLE :2
SOLIDITY_DEPRECATED_CONSTRUCTIONS :1
SOLIDITY_LOCKED_MONEY :1
SOLIDITY_ADDRESS_HARDCODED :2

