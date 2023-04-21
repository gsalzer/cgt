reorder_contracts_2_3/test1185.sol
jar:file:/usr/local/lib/node_modules/@smartdec/smartcheck/jdeploy-bundle/smartcheck-2.0-jar-with-dependencies.jar!/solidity-rules.xmlruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 93
column: 4
content: functionbalanceOf(address_owner)publicconstantreturns(uint256balance){returnbalanceOf[_owner];}

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 98
column: 4
content: functionallowanceOf(address_address)publicconstantreturns(uint256_allowance){returnallowance[_address][msg.sender];}

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 102
column: 4
content: functiontotalSupply()publicconstantreturns(uint256theTotalSupply){returntotalSupply;}

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 106
column: 4
content: functioncirculatingSupply()publicconstantreturns(uint256){returnsub(totalSupply,balanceOf[owner]);}

ruleId: SOLIDITY_DIV_MUL
patternId: 09hhh1
severity: 2
line: 273
column: 32
content: mul(balanceOf[this],div(_newMarketCap*decimalsFactor,marketCap))

ruleId: SOLIDITY_PRAGMAS_VERSION
patternId: 23fc32
severity: 1
line: 1
column: 16
content: ^

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 3
column: 99
content: bytes_extraData

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 177
column: 62
content: bytes_extraData

ruleId: SOLIDITY_VISIBILITY
patternId: 23rt6g
severity: 1
line: 3
column: 117
content: public

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 85
column: 4
content: functionCryptoMarketShortCoin(uint256initialMarketCap){totalSupply=100000000000000000000000000;marketCap=initialMarketCap;balanceOf[msg.sender]=20000000000000000000000000;balanceOf[this]=80000000000000000000000000;allowance[this][owner]=totalSupply;}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 231
column: 4
content: functionbuy()payablereturns(uintamount){require(buyAllowed);if(promotionsUsed<50&&msg.value>=100000000000000000){amount=mul(msg.value,buyFactorPromotion);}else{amount=mul(msg.value,buyFactor);}require(balanceOf[this]>=amount);if(promotionsUsed<50&&msg.value>=100000000000000000){promotionsUsed+=1;}balanceOf[msg.sender]+=amount;balanceOf[this]-=amount;Transfer(this,msg.sender,amount);returnamount;}

SOLIDITY_VISIBILITY :3
SOLIDITY_DEPRECATED_CONSTRUCTIONS :4
SOLIDITY_PRAGMAS_VERSION :1
SOLIDITY_UPGRADE_TO_050 :2
SOLIDITY_DIV_MUL :1

