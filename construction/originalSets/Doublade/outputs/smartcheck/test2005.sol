reorder_contracts_2_3/test2005.sol
jar:file:/usr/local/lib/node_modules/@smartdec/smartcheck/jdeploy-bundle/smartcheck-2.0-jar-with-dependencies.jar!/solidity-rules.xmlruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: adc165
severity: 1
line: 10
column: 33
content: 0x74323bf7C3AEB5Ab293C78A37a9323C0CbE7aDD9

ruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: adc165
severity: 1
line: 44
column: 37
content: 0x629c09f80348350216f45934ed9713ed969ce570

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 60
column: 4
content: functiondiv(uint256a,uint256b)internalconstantreturns(uint256){uint256c=a/b;returnc;}

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 66
column: 1
content: functionmul(uint256a,uint256b)internalconstantreturns(uint256){if(a==0){return0;}uint256c=a*b;assert(c/a==b);returnc;}

ruleId: SOLIDITY_PRAGMAS_VERSION
patternId: 23fc32
severity: 1
line: 1
column: 16
content: ^

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 9
column: 9
content: private

ruleId: SOLIDITY_REVERT_REQUIRE
patternId: c56b12
severity: 1
line: 145
column: 8
content: if(msg.value>=vminEtherPerPurchase&&msg.value<=vmaxEtherPerPurchase){balanceOf[msg.sender]+=amount;FundTransfer(msg.sender,amount,true);tokenReward.transfer(msg.sender,tokentosend);amountRaised+=amount;sentToken+=tokentosend;}else{revert();}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 4
column: 4
content: functiontransfer(addressreceiver,uintamount);

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 58
column: 4
content: functionMiCarsICO(){}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 109
column: 4
content: function()payable{require(crowdsaleClosed==false);if(price_rate_changed==false){if(now<=deadlinePreIcoOne){price=0.000359801*1ether;}elseif(now>deadlinePreIcoOne&&now<=deadlinePreIcoTwo){price=0.000415207*1ether;}elseif(now>deadlinePreIcoTwo&&now<=deadline){price=0.000505615*1ether;}else{price=0.000505615*1ether;}}elseif(price_rate_changed==true){price=updatedPrice*1ether;}else{price=0.000505615*1ether;}uintamount=msg.value;uintcalculedamount=mul(amount,decimals);uinttokentosend=div(calculedamount,price);if(msg.value>=vminEtherPerPurchase&&msg.value<=vmaxEtherPerPurchase){balanceOf[msg.sender]+=amount;FundTransfer(msg.sender,amount,true);tokenReward.transfer(msg.sender,tokentosend);amountRaised+=amount;sentToken+=tokentosend;}else{revert();}}

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 47
column: 4
content: boolcrowdsaleClosed=false;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 48
column: 4
content: boolprice_rate_changed=false;

SOLIDITY_VISIBILITY :5
SOLIDITY_DEPRECATED_CONSTRUCTIONS :2
SOLIDITY_PRAGMAS_VERSION :1
SOLIDITY_REVERT_REQUIRE :1
SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA :1
SOLIDITY_ADDRESS_HARDCODED :2

