reorder_contracts_2_3/test3760.sol
jar:file:/usr/local/lib/node_modules/@smartdec/smartcheck/jdeploy-bundle/smartcheck-2.0-jar-with-dependencies.jar!/solidity-rules.xmlruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: adc165
severity: 1
line: 10
column: 20
content: 0x1862154CEEF9c349d7b6D4040F2DB9b4864135b6

ruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: adc165
severity: 1
line: 21
column: 28
content: 0x4Ad02bF71d9Fcf86BD155fB1d7Bf891E0CD9b31D

ruleId: SOLIDITY_LOCKED_MONEY
patternId: 30281d
severity: 3
line: 7
column: 0
content: contractC5PMCrowdsale{TokenpublictokenReward;addressowner=0x1862154CEEF9c349d7b6D4040F2DB9b4864135b6;uintprice=10**10;uint256publicstartDate;uint256publicendDate;eventFundTransfer(addressbacker,uintamount,boolisContribution);functionC5PMCrowdsale()public{startDate=1517439600;endDate=1522620000;tokenReward=Token(0x4Ad02bF71d9Fcf86BD155fB1d7Bf891E0CD9b31D);}function()payablepublic{require(msg.value>0);require(now>startDate);require(now<endDate);uintamount=msg.value/price;tokenReward.transfer(msg.sender,amount);FundTransfer(msg.sender,amount,true);owner.transfer(msg.value);}}

ruleId: SOLIDITY_PRAGMAS_VERSION
patternId: 23fc32
severity: 1
line: 1
column: 16
content: ^

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 91h3sa
severity: 1
line: 24
column: 24
content: public

ruleId: SOLIDITY_VISIBILITY
patternId: 23rt6g
severity: 1
line: 4
column: 53
content: public

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 10
column: 4
content: addressowner=0x1862154CEEF9c349d7b6D4040F2DB9b4864135b6;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 11
column: 4
content: uintprice=10**10;

SOLIDITY_VISIBILITY :3
SOLIDITY_PRAGMAS_VERSION :1
SOLIDITY_LOCKED_MONEY :1
SOLIDITY_ADDRESS_HARDCODED :2
SOLIDITY_UPGRADE_TO_050 :1

