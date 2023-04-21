reorder_contracts_2_3/test1937.sol
jar:file:/usr/local/lib/node_modules/@smartdec/smartcheck/jdeploy-bundle/smartcheck-2.0-jar-with-dependencies.jar!/solidity-rules.xmlruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: a91b18
severity: 1
line: 592
column: 8
content: _newHouseAddress=address(0)

ruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: c67a09
severity: 1
line: 70
column: 36
content: 0x0

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: d3j11j
severity: 1
line: 245
column: 8
content: for(uinti=0;i<ownerAddress.length;i++){owners.push(ownerAddress[i]);ownerPerc[ownerAddress[i]]=ownerPercentage[i];ownersTotal+=ownerPercentage[i];}

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: d3j11j
severity: 1
line: 527
column: 16
content: for(uinti=0;i<owners.length;i++){balance[owners[i]]+=mulByFraction(houseEdgeAmountForBet[betId],ownerPerc[owners[i]],1000);}

ruleId: SOLIDITY_GAS_LIMIT_IN_LOOPS
patternId: f6f853
severity: 2
line: 245
column: 8
content: for(uinti=0;i<ownerAddress.length;i++){owners.push(ownerAddress[i]);ownerPerc[ownerAddress[i]]=ownerPercentage[i];ownersTotal+=ownerPercentage[i];}

ruleId: SOLIDITY_GAS_LIMIT_IN_LOOPS
patternId: f6f853
severity: 2
line: 527
column: 16
content: for(uinti=0;i<owners.length;i++){balance[owners[i]]+=mulByFraction(houseEdgeAmountForBet[betId],ownerPerc[owners[i]],1000);}

ruleId: SOLIDITY_PRAGMAS_VERSION
patternId: 23fc32
severity: 1
line: 20
column: 16
content: ^

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 107
column: 9
content: private

ruleId: SOLIDITY_SHOULD_RETURN_STRUCT
patternId: 83hf3l
severity: 1
line: 80
column: 69
content: (uintcloseDateTime,uintfreezeDateTime,boolisCancelled)

ruleId: SOLIDITY_SHOULD_RETURN_STRUCT
patternId: 83hf3l
severity: 1
line: 83
column: 86
content: (uint256outcome1,uint256outcome2,uint256outcome3,uint256outcome4,uint256outcome5,uint256outcome6)

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 613
column: 4
content: functionwithdrawToAddress(addresspayable

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 613
column: 47
content: destinationAddress,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 613
column: 66
content: uint256amount)public{

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 614
column: 8
content: require

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 614
column: 15
content: (address<missing ';'>

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 614
column: 23
content: (this).balance>=

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 614
column: 39
content: amount);

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 615
column: 8
content: require(balance[

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 615
column: 24
content: msg.sender]>=

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 615
column: 37
content: amount,"Insufficient balance");

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 616
column: 8
content: balance[msg.sender]=sub

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 616
column: 33
content: (balance[msg.sender],amount);

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 617
column: 8
content: destinationAddress.transfer(amount);

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 618
column: 8
content: emittransfer

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 618
column: 21
content: (msg.sender,amount,false);

SOLIDITY_VISIBILITY :15
SOLIDITY_PRAGMAS_VERSION :1
SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA :1
SOLIDITY_EXTRA_GAS_IN_LOOPS :2
SOLIDITY_ADDRESS_HARDCODED :2
SOLIDITY_GAS_LIMIT_IN_LOOPS :2
SOLIDITY_SHOULD_RETURN_STRUCT :2

