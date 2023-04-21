reorder_contracts_2_3/test3665.sol
jar:file:/usr/local/lib/node_modules/@smartdec/smartcheck/jdeploy-bundle/smartcheck-2.0-jar-with-dependencies.jar!/solidity-rules.xmlruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: adc165
severity: 1
line: 11
column: 27
content: 0x46706C5e5B7dF0Afd54a7248F1E5788275B7FaC6

ruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: adc165
severity: 1
line: 14
column: 26
content: 0xA0b86991c6218b36c1d19D4a2e9Eb0cE3606eB48

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: d3j11j
severity: 1
line: 30
column: 8
content: for(uinti=0;i<_recipients.length;i++){bytes32channelHash=keccak256(abi.encodePacked(_channelId,_recipients[i]));<missing ';'>addresspayable<missing ';'>currentRecipient=address(uint160(_recipients[i]));if(!airdrops[channelHash]){airdrops[channelHash]=true;rewardBalanceOf[currentRecipient]+=tokenAmount;totalRewardBalance+=tokenAmount;tokenReward.transfer(currentRecipient,tokenAmount);currentRecipient.transfer(weiAmount);}}

ruleId: SOLIDITY_GAS_LIMIT_IN_LOOPS
patternId: f6f853
severity: 2
line: 30
column: 8
content: for(uinti=0;i<_recipients.length;i++){bytes32channelHash=keccak256(abi.encodePacked(_channelId,_recipients[i]));<missing ';'>addresspayable<missing ';'>currentRecipient=address(uint160(_recipients[i]));if(!airdrops[channelHash]){airdrops[channelHash]=true;rewardBalanceOf[currentRecipient]+=tokenAmount;totalRewardBalance+=tokenAmount;tokenReward.transfer(currentRecipient,tokenAmount);currentRecipient.transfer(weiAmount);}}

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

ruleId: SOLIDITY_TRANSFER_IN_LOOP
patternId: 8jdj43
severity: 2
line: 30
column: 8
content: for(uinti=0;i<_recipients.length;i++){bytes32channelHash=keccak256(abi.encodePacked(_channelId,_recipients[i]));<missing ';'>addresspayable<missing ';'>currentRecipient=address(uint160(_recipients[i]));if(!airdrops[channelHash]){airdrops[channelHash]=true;rewardBalanceOf[currentRecipient]+=tokenAmount;totalRewardBalance+=tokenAmount;tokenReward.transfer(currentRecipient,tokenAmount);currentRecipient.transfer(weiAmount);}}

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 11
column: 4
content: addresstokenAddress=0x46706C5e5B7dF0Afd54a7248F1E5788275B7FaC6;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 14
column: 4
content: addressusdcAddress=0xA0b86991c6218b36c1d19D4a2e9Eb0cE3606eB48;

SOLIDITY_VISIBILITY :2
SOLIDITY_PRAGMAS_VERSION :2
SOLIDITY_EXTRA_GAS_IN_LOOPS :1
SOLIDITY_ADDRESS_HARDCODED :2
SOLIDITY_GAS_LIMIT_IN_LOOPS :1
SOLIDITY_TRANSFER_IN_LOOP :1

