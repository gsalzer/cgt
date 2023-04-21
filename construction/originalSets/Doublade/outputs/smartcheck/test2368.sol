reorder_contracts_2_3/test2368.sol
jar:file:/usr/local/lib/node_modules/@smartdec/smartcheck/jdeploy-bundle/smartcheck-2.0-jar-with-dependencies.jar!/solidity-rules.xmlruleId: SOLIDITY_ERC20_APPROVE
patternId: af782c
severity: 2
line: 135
column: 2
content: functionapprove(address_spender,uint256_value)publicreturns(bool){allowed[msg.sender][_spender]=_value;Approval(msg.sender,_spender,_value);returntrue;}

ruleId: SOLIDITY_LOCKED_MONEY
patternId: 30281d
severity: 3
line: 418
column: 0
content: contractICOisCappedCrowdsale,Ownable{uint256publicminAmount=1ether/10;functionICO(uint256_startTime,uint256_endTime,uint256_rate,uint256_cap,address_wallet)publicCappedCrowdsale(_cap)Crowdsale(_startTime,_endTime,_rate,_wallet){token.mint(this,50000000000000000000000000);}functioncreateTokenContract()internalreturns(MintableToken){returnnewRDT();}functionvalidPurchase()internalviewreturns(bool){booloverMinAmount=msg.value>=minAmount;returnsuper.validPurchase()&&overMinAmount;}functionallowTransfer(address_spender)publiconlyOwnerreturns(bool){token.approve(_spender,50000000000000000000000000);returntrue;}functionbuyTokens(addressbeneficiary)publicpayable{require(beneficiary!=address(0));require(validPurchase());uint256weiAmount=msg.value;weiRaised=weiRaised.add(weiAmount);forwardFunds();}}

ruleId: SOLIDITY_PRAGMAS_VERSION
patternId: 23fc32
severity: 1
line: 1
column: 16
content: ^

ruleId: SOLIDITY_SAFEMATH
patternId: 837cac
severity: 1
line: 53
column: 2
content: usingSafeMathforuint256;

ruleId: SOLIDITY_SAFEMATH
patternId: 837cac
severity: 1
line: 271
column: 2
content: usingSafeMathforuint256;

ruleId: SOLIDITY_SAFEMATH
patternId: 837cac
severity: 1
line: 374
column: 2
content: usingSafeMathforuint256;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 55
column: 2
content: mapping(address=>uint256)balances;

SOLIDITY_VISIBILITY :1
SOLIDITY_SAFEMATH :3
SOLIDITY_PRAGMAS_VERSION :1
SOLIDITY_LOCKED_MONEY :1
SOLIDITY_ERC20_APPROVE :1

