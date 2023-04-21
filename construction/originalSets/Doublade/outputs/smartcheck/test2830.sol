reorder_contracts_2_3/test2830.sol
jar:file:/usr/local/lib/node_modules/@smartdec/smartcheck/jdeploy-bundle/smartcheck-2.0-jar-with-dependencies.jar!/solidity-rules.xmlruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: adc165
severity: 1
line: 66
column: 60
content: 0x3fda67f7583380e67ef93072294a7fac882fd7e7

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: d3j11j
severity: 1
line: 69
column: 8
content: for(uinti=0;i<moneyMarket.getCollateralMarketsLength();i++){tokenPrices.push(moneyMarket.assetPrices(moneyMarket.collateralMarkets(i)));}

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: d3j11j
severity: 1
line: 76
column: 8
content: for(uinti=0;i<moneyMarket.getCollateralMarketsLength();i++){tokenHolding.push(EIP20Interface(moneyMarket.collateralMarkets(i)).balanceOf(account));}

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: d3j11j
severity: 1
line: 83
column: 8
content: for(uinti=0;i<moneyMarket.getCollateralMarketsLength();i++){supplyBalances.push(moneyMarket.getSupplyBalance(account,moneyMarket.collateralMarkets(i)));borrowBalances.push(moneyMarket.getBorrowBalance(account,moneyMarket.collateralMarkets(i)));}

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 62
column: 4
content: uint[]supplyBalances;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 63
column: 4
content: uint[]borrowBalances;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 64
column: 4
content: uint256[]tokenHolding;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 65
column: 4
content: uint[]tokenPrices;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 66
column: 4
content: MoneyMarketInterfacemoneyMarket=MoneyMarketInterface(0x3fda67f7583380e67ef93072294a7fac882fd7e7);

SOLIDITY_VISIBILITY :5
SOLIDITY_EXTRA_GAS_IN_LOOPS :3
SOLIDITY_ADDRESS_HARDCODED :1

