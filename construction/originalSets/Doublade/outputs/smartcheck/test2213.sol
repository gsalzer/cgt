reorder_contracts_2_3/test2213.sol
jar:file:/usr/local/lib/node_modules/@smartdec/smartcheck/jdeploy-bundle/smartcheck-2.0-jar-with-dependencies.jar!/solidity-rules.xmlruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: adc165
severity: 1
line: 17
column: 18
content: 0x8c070C3c66F62E34bAe561951450f15f3256f67c

ruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: adc165
severity: 1
line: 18
column: 18
content: 0x7ac74Fcc1a71b106F12c55ee8F802C9F672Ce40C

ruleId: SOLIDITY_LOCKED_MONEY
patternId: 30281d
severity: 3
line: 3
column: 0
content: contractSimpleMultiSigWallet{structProposal{uint256amount;addresspayableto;uint8votes;bytesdata;mapping(address=>bool)voted;}mapping(bytes32=>Proposal)internalproposals;mapping(address=>uint8)publicvoteCount;uint8constantpublicmaximumVotes=2;constructor()public{voteCount[0x8c070C3c66F62E34bAe561951450f15f3256f67c]=1;voteCount[0x7ac74Fcc1a71b106F12c55ee8F802C9F672Ce40C]=1;}functionproposeTransaction(addresspayableto,uint256amount,bytesmemorydata)public{require(voteCount[msg.sender]!=0,"You cannot vote");bytes32hash=keccak256(abi.encodePacked(to,amount,data));require(!proposals[hash].voted[msg.sender],"Already voted");if(proposals[hash].votes==0){proposals[hash].amount=amount;proposals[hash].to=to;proposals[hash].data=data;proposals[hash].votes=voteCount[msg.sender];proposals[hash].voted[msg.sender]=true;}

ruleId: SOLIDITY_PRAGMAS_VERSION
patternId: 23fc32
severity: 1
line: 1
column: 16
content: ^

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 21
column: 4
content: functionproposeTransaction(addresspayable

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 21
column: 48
content: to,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 21
column: 52
content: uint256amount,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 21
column: 68
content: bytesmemorydata)public{

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 22
column: 8
content: require(voteCount[

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 22
column: 26
content: msg.sender]!=0,"You cannot vote");

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 23
column: 8
content: bytes32hash=keccak256(abi.encodePacked(to,amount,data));

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 24
column: 8
content: require

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 24
column: 15
content: (!proposals[hash].voted[

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 24
column: 39
content: msg.sender],"Already voted");if

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 25
column: 11
content: (proposals[hash].votes==0){

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 26
column: 12
content: proposals[hash].amount=amount;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 27
column: 12
content: proposals[hash].to=to;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 28
column: 12
content: proposals[hash].data=data;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 29
column: 12
content: proposals[hash].votes=voteCount[msg.sender];

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 30
column: 12
content: proposals[hash].voted[

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 30
column: 34
content: msg.sender]=true;

SOLIDITY_VISIBILITY :17
SOLIDITY_PRAGMAS_VERSION :1
SOLIDITY_LOCKED_MONEY :1
SOLIDITY_ADDRESS_HARDCODED :2

