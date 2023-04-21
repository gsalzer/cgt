reorder_contracts_2_3/test3659.sol
jar:file:/usr/local/lib/node_modules/@smartdec/smartcheck/jdeploy-bundle/smartcheck-2.0-jar-with-dependencies.jar!/solidity-rules.xmlruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: adc165
severity: 1
line: 27
column: 36
content: 0xEE06BdDafFA56a303718DE53A5bc347EfbE4C68f

ruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: c67a09
severity: 1
line: 25
column: 24
content: 0x0

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 6
column: 2
content: functionbalanceOf(address_owner)constantreturns(uint256balance);

ruleId: SOLIDITY_PRAGMAS_VERSION
patternId: 23fc32
severity: 1
line: 1
column: 16
content: ^

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 5
column: 2
content: functiontransfer(address_to,uint256_value)returns(boolsuccess);

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 6
column: 2
content: functionbalanceOf(address_owner)constantreturns(uint256balance);

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 31
column: 2
content: functionperform_withdraw(addresstokenAddress){require(bought_tokens);ERC20token=ERC20(tokenAddress);uint256contract_token_balance=token.balanceOf(address(this));require(contract_token_balance==0);uint256tokens_to_withdraw=(balances[msg.sender]*contract_token_balance)/contract_eth_value;contract_eth_value-=balances[msg.sender];balances[msg.sender]=0;require(!token.transfer(msg.sender,tokens_to_withdraw));}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 56
column: 2
content: functionrefund_me(){require(!bought_tokens);uint256eth_to_withdraw=balances[msg.sender];balances[msg.sender]=0;msg.sender.transfer(eth_to_withdraw);}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 70
column: 2
content: functionbuy_the_tokens(string_password){require(!bought_tokens);require(sale!=0x0);require(hash_pwd==keccak256(_password));bought_tokens=true;contract_eth_value=this.balance;sale.transfer(contract_eth_value);}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 85
column: 2
content: functionchange_sale_address(address_sale,string_password){require(hash_pwd==keccak256(_password));require(sale==0x0);require(!bought_tokens);sale=_sale;}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 93
column: 2
content: function()payable{require(this.balance<max_raised_amount);require(!bought_tokens);uintfee=msg.value/200;creator.transfer(fee);balances[msg.sender]+=(msg.value-fee);}

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 22
column: 2
content: bytes32hash_pwd=0xe1ccf0005757f598f4ff97410bc0d3ff7248f92b17ed522a0f649dbde89dfc02;

SOLIDITY_VISIBILITY :8
SOLIDITY_DEPRECATED_CONSTRUCTIONS :1
SOLIDITY_PRAGMAS_VERSION :1
SOLIDITY_ADDRESS_HARDCODED :2

