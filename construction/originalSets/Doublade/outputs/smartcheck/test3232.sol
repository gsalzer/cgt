reorder_contracts_2_3/test3232.sol
jar:file:/usr/local/lib/node_modules/@smartdec/smartcheck/jdeploy-bundle/smartcheck-2.0-jar-with-dependencies.jar!/solidity-rules.xmlruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 216
column: 2
content: functionname()constantpublicreturns(string){if(updateAvailable!=0)return"BURSA DEX (deactivated)";return"BURSA DEX";}

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 220
column: 2
content: functionbalanceOf(addressuser)constantpublicreturns(uint256balance){returnfunds[user];}

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 224
column: 2
content: functionbalanceApprovedForToken(addresstoken,addressuser)constantpublicreturns(uint256amount){if(token==0||token==address(this))returnfunds[user];amount=Bursa(token).balanceOf(user);uint256allowance=Bursa(token).allowance(user,address(this));if(amount>allowance)amount=allowance;returnamount;}

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 234
column: 2
content: functionfindBestAsk(addresstoken,uint256min_trade_amount)publicconstantreturns(uint256ask_order,uint256volume,uint256price){price=(uint256)(-1);uint256i=1;while(willsellUser[token][i]!=0){if(willsellPrice[token][i]<price&&willsellAmount[token][i]!=0){volume=willsellVolume(token,i);if(volume>=min_trade_amount&&volume>=1e15*1e18/(willsellPrice[token][i]+1)){price=willsellPrice[token][i];ask_order=i;}}++i;}if(ask_order==0)return(0,0,0);return;}

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 251
column: 2
content: functionfindBestBid(addresstoken,uint256min_trade_amount)publicconstantreturns(uint256bid_order,uint256volume,uint256price){uint256i=1;while(willbuyUser[token][i]!=0){if(willbuyPrice[token][i]>price&&willbuyAmount[token][i]!=0){volume=willbuyVolume(token,i);if(volume>=min_trade_amount&&volume>=1e15*1e18/(willbuyPrice[token][i]+1)){price=willbuyPrice[token][i];bid_order=i;}}++i;}if(bid_order==0)return(0,0,0);return;}

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 268
column: 2
content: functionwillbuyFindSpot(addresstoken)publicconstantreturns(uint256bid_order_spot){Bursa(token).symbol();uint256i=1;while(willbuyAmount[token][i]>=1e15*1e18/(willbuyPrice[token][i]+1)&&funds[willbuyUser[token][i]]!=0)++i;returni;}

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 276
column: 2
content: functionwillsellFindSpot(addresstoken)publicconstantreturns(uint256ask_order_spot){Bursa(token).symbol();uint256i=1;while(willsellAmount[token][i]>=1e15*1e18/(willsellPrice[token][i]+1)){uint256balanceSeller=Bursa(token).balanceOf(willsellUser[token][i]);if(balanceSeller==0)returni;uint256allowanceSeller=Bursa(token).allowance(willsellUser[token][i],address(this));if(allowanceSeller==0)returni;++i;}returni;}

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 294
column: 2
content: functionwillbuyInfo(addresstoken,uint256bid_order)publicconstantreturns(addressuser,uint256price,uint256amount){user=willbuyUser[token][bid_order];price=willbuyPrice[token][bid_order];amount=willbuyAmount[token][bid_order];uint256pay=price*amount/1e18;if(pay>funds[user]){pay=funds[user];amount=pay*1e18/price;}return;}

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 306
column: 2
content: functionwillbuyVolume(addresstoken,uint256bid_order)privateconstantreturns(uint256){uint256amount=willbuyAmount[token][bid_order];addressuser=willbuyUser[token][bid_order];if(amount==0||funds[user]==0)return0;uint256price=willbuyPrice[token][bid_order];uint256pay=price*amount/1e18;if(pay>funds[user]){pay=funds[user];amount=pay*1e18/price;}returnamount;}

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 320
column: 2
content: functionwillsellInfo(addresstoken,uint256ask_order)publicconstantreturns(addressuser,uint256price,uint256amount){user=willsellUser[token][ask_order];price=willsellPrice[token][ask_order];amount=willsellAmount[token][ask_order];uint256balanceSeller=Bursa(token).balanceOf(user);uint256allowanceSeller=Bursa(token).allowance(user,address(this));if(balanceSeller>allowanceSeller)balanceSeller=allowanceSeller;if(amount>balanceSeller)amount=balanceSeller;return;}

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 331
column: 2
content: functionwillsellVolume(addresstoken,uint256ask_order)privateconstantreturns(uint256){uint256amount=willsellAmount[token][ask_order];if(amount==0)return0;addressuser=willsellUser[token][ask_order];uint256balanceSeller=Bursa(token).balanceOf(user);if(balanceSeller==0)return0;uint256allowanceSeller=Bursa(token).allowance(user,address(this));if(allowanceSeller==0)return0;if(balanceSeller>allowanceSeller)balanceSeller=allowanceSeller;if(amount>balanceSeller)amount=balanceSeller;returnamount;}

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 349
column: 2
content: functionsymbol()constantpublicreturns(string){if(updateAvailable!=0)return"exBURSA";return"BURSA";}

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 353
column: 2
content: functiondecimals()constantpublicreturns(uint256){return18;}

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 356
column: 2
content: functiontotalSupply()constantpublicreturns(uint256supply){returnthis.balance;}

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 381
column: 2
content: functionallowance(address_owner,address_spender)constantpublicreturns(uint256remaining){if(_spender==address(this))returnbalanceOf(_owner);returnapproved[_owner][_spender];}

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: k4o1l4
severity: 1
line: 179
column: 4
content: while(willbuyAmount[token][bid_order_spot]!=0&&funds[willbuyUser[token][bid_order_spot]]!=0)++bid_order_spot;

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: k4o1l4
severity: 1
line: 194
column: 4
content: while(willsellAmount[token][ask_order_spot]!=0){addressuser=willsellUser[token][ask_order_spot];uint256balanceSeller=Bursa(token).balanceOf(user);if(balanceSeller==0)break;uint256allowanceSeller=Bursa(token).allowance(user,address(this));if(allowanceSeller==0)break;++ask_order_spot;}

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: k4o1l4
severity: 1
line: 238
column: 4
content: while(willsellUser[token][i]!=0){if(willsellPrice[token][i]<price&&willsellAmount[token][i]!=0){volume=willsellVolume(token,i);if(volume>=min_trade_amount&&volume>=1e15*1e18/(willsellPrice[token][i]+1)){price=willsellPrice[token][i];ask_order=i;}}++i;}

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: k4o1l4
severity: 1
line: 254
column: 4
content: while(willbuyUser[token][i]!=0){if(willbuyPrice[token][i]>price&&willbuyAmount[token][i]!=0){volume=willbuyVolume(token,i);if(volume>=min_trade_amount&&volume>=1e15*1e18/(willbuyPrice[token][i]+1)){price=willbuyPrice[token][i];bid_order=i;}}++i;}

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: k4o1l4
severity: 1
line: 273
column: 4
content: while(willbuyAmount[token][i]>=1e15*1e18/(willbuyPrice[token][i]+1)&&funds[willbuyUser[token][i]]!=0)++i;

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: k4o1l4
severity: 1
line: 281
column: 4
content: while(willsellAmount[token][i]>=1e15*1e18/(willsellPrice[token][i]+1)){uint256balanceSeller=Bursa(token).balanceOf(willsellUser[token][i]);if(balanceSeller==0)returni;uint256allowanceSeller=Bursa(token).allowance(willsellUser[token][i],address(this));if(allowanceSeller==0)returni;++i;}

ruleId: SOLIDITY_GAS_LIMIT_IN_LOOPS
patternId: 17f23a
severity: 1
line: 179
column: 11
content: willbuyAmount[token][bid_order_spot]!=0&&funds[willbuyUser[token][bid_order_spot]]!=0

ruleId: SOLIDITY_GAS_LIMIT_IN_LOOPS
patternId: 17f23a
severity: 1
line: 273
column: 11
content: willbuyAmount[token][i]>=1e15*1e18/(willbuyPrice[token][i]+1)&&funds[willbuyUser[token][i]]!=0

ruleId: SOLIDITY_GAS_LIMIT_IN_LOOPS
patternId: 17f23a
severity: 1
line: 281
column: 11
content: willsellAmount[token][i]>=1e15*1e18/(willsellPrice[token][i]+1)

ruleId: SOLIDITY_PRAGMAS_VERSION
patternId: 23fc32
severity: 1
line: 22
column: 16
content: ^

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 25
column: 10
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 26
column: 10
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 28
column: 52
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 29
column: 52
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 30
column: 52
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 31
column: 52
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 32
column: 52
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 33
column: 52
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 387
column: 52
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 388
column: 31
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 389
column: 28
content: private

ruleId: SOLIDITY_REVERT_REQUIRE
patternId: c56b12
severity: 1
line: 42
column: 4
content: if(updateAvailable!=0)revert();

ruleId: SOLIDITY_REVERT_REQUIRE
patternId: c56b12
severity: 1
line: 46
column: 4
content: if(updateAvailable!=0)revert();

ruleId: SOLIDITY_REVERT_REQUIRE
patternId: c56b12
severity: 1
line: 54
column: 4
content: if((willsellPrice[token][ask_order]>max_price_each&&max_price_each!=0)||amount==0||token==0||token==address(this)||ask_order==0||funds[msg.sender]<=1e15)revert();

ruleId: SOLIDITY_REVERT_REQUIRE
patternId: c56b12
severity: 1
line: 116
column: 4
content: if(willbuyPrice[token][bid_order]<min_price_each||amount==0||token==0||token==address(this)||bid_order==0)revert();

ruleId: SOLIDITY_REVERT_REQUIRE
patternId: c56b12
severity: 1
line: 172
column: 4
content: if(updateAvailable!=0||amount==0||token==0||token==address(this)||price_each==0||bid_order_spot==0)revert();

ruleId: SOLIDITY_REVERT_REQUIRE
patternId: c56b12
severity: 1
line: 187
column: 4
content: if(updateAvailable!=0||amount==0||token==0||token==address(this)||price_each==0||ask_order_spot==0)revert();

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 91h3sa
severity: 1
line: 41
column: 13
content: public

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 216
column: 43
content: string

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 349
column: 45
content: string

SOLIDITY_DEPRECATED_CONSTRUCTIONS :15
SOLIDITY_PRAGMAS_VERSION :1
SOLIDITY_REVERT_REQUIRE :6
SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA :11
SOLIDITY_EXTRA_GAS_IN_LOOPS :6
SOLIDITY_UPGRADE_TO_050 :3
SOLIDITY_GAS_LIMIT_IN_LOOPS :3

