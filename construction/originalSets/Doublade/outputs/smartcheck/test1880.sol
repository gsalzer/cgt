reorder_contracts_2_3/test1880.sol
jar:file:/usr/local/lib/node_modules/@smartdec/smartcheck/jdeploy-bundle/smartcheck-2.0-jar-with-dependencies.jar!/solidity-rules.xmlruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 49bd2a
severity: 1
line: 52
column: 33
content: throw

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 49bd2a
severity: 1
line: 97
column: 17
content: throw

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 49bd2a
severity: 1
line: 101
column: 19
content: throw

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 49bd2a
severity: 1
line: 134
column: 8
content: throw

ruleId: SOLIDITY_FUNCTIONS_RETURNS_TYPE_AND_NO_RETURN
patternId: 47acc2
severity: 1
line: 124
column: 4
content: functioncreateSale(address_asset,uint256_price)returns(address){addressc=newTokenSale(_asset,_price);TokenSale(c).transferOwnership(msg.sender);uint256index=tokenSalesAll.push(c)-1;tokenSalesByOwner[msg.sender].push(index);tokenSalesByAsset[msg.sender].push(index);TokenSaleCreation(index,c);}

ruleId: SOLIDITY_REVERT_REQUIRE
patternId: c56b12
severity: 1
line: 52
column: 8
content: if(msg.sender!=owner)throw;

ruleId: SOLIDITY_REVERT_REQUIRE
patternId: c56b12
severity: 1
line: 97
column: 2
content: if(order==0)throw;

ruleId: SOLIDITY_REVERT_REQUIRE
patternId: c56b12
severity: 1
line: 101
column: 2
content: if(balance==0)throw;

ruleId: SOLIDITY_UNCHECKED_CALL
patternId: f39eed
severity: 3
line: 90
column: 16
content: send(_value)

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 40
column: 4
content: functiontransfer(address_to,uint256_value);

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 41
column: 4
content: functionbalanceOf(address)returns(uint256);

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 47
column: 4
content: functionowned(){owner=msg.sender;}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 56
column: 4
content: functiontransferOwnership(addressnewOwner)onlyOwner{owner=newOwner;}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 66
column: 1
content: functionTokenSale(address_asset,uint256_price){asset=_asset;price=_price;}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 75
column: 1
content: functiontransfer_token(address_token,address_to,uint256_value)onlyOwner(){Token(_token).transfer(_to,_value);}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 81
column: 1
content: functiontransfer_asset(address_to,uint256_value)onlyOwner(){Token(asset).transfer(_to,_value);}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 87
column: 1
content: functiontransfer_eth(address_to,uint256_value)onlyOwner(){_to.send(_value);}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 93
column: 4
content: function(){uintorder=msg.value/price;if(order==0)throw;uint256balance=Token(asset).balanceOf(address(this));if(balance==0)throw;if(order>balance){order=balance;uint256change=msg.value-order*price;msg.sender.send(change);}Token(asset).transfer(msg.sender,order);}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 124
column: 4
content: functioncreateSale(address_asset,uint256_price)returns(address){addressc=newTokenSale(_asset,_price);TokenSale(c).transferOwnership(msg.sender);uint256index=tokenSalesAll.push(c)-1;tokenSalesByOwner[msg.sender].push(index);tokenSalesByAsset[msg.sender].push(index);TokenSaleCreation(index,c);}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 133
column: 4
content: function(){throw;}

SOLIDITY_VISIBILITY :11
SOLIDITY_DEPRECATED_CONSTRUCTIONS :4
SOLIDITY_REVERT_REQUIRE :3
SOLIDITY_FUNCTIONS_RETURNS_TYPE_AND_NO_RETURN :1
SOLIDITY_UNCHECKED_CALL :1

