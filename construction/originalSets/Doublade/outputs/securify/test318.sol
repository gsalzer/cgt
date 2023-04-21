Processing contract: /home/jiaming/mavs_srcs/contract@0x153080e9a12f7ccd304dcc94e1f98b3a6844ba6c.sol:CompoundReader
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x153080e9a12f7ccd304dcc94e1f98b3a6844ba6c.sol:EIP20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x153080e9a12f7ccd304dcc94e1f98b3a6844ba6c.sol:MoneyMarketInterface
[33mWarning[0m for LockedEther in contract 'CompoundReader':
    |    event Approval(address indexed _owner, address indexed _spender, uint256 _value);
    |}
  > |contract CompoundReader {
    |
    |    function getPrices() public view returns (uint[] memory) {
  at /home/jiaming/mavs_srcs/contract@0x153080e9a12f7ccd304dcc94e1f98b3a6844ba6c.sol(60)

[33mWarning[0m for UnhandledException in contract 'CompoundReader':
    |        MoneyMarketInterface moneyMarket = MoneyMarketInterface(0x3fda67f7583380e67ef93072294a7fac882fd7e7);
    |        uint[] storage tokenPrices;
  > |        for (uint i=0; i < moneyMarket.getCollateralMarketsLength(); i++) {
    |            tokenPrices.push(moneyMarket.assetPrices(moneyMarket.collateralMarkets(i)));
    |        }
  at /home/jiaming/mavs_srcs/contract@0x153080e9a12f7ccd304dcc94e1f98b3a6844ba6c.sol(65)

[33mWarning[0m for UnhandledException in contract 'CompoundReader':
    |        uint[] storage tokenPrices;
    |        for (uint i=0; i < moneyMarket.getCollateralMarketsLength(); i++) {
  > |            tokenPrices.push(moneyMarket.assetPrices(moneyMarket.collateralMarkets(i)));
    |        }
    |        return tokenPrices;
  at /home/jiaming/mavs_srcs/contract@0x153080e9a12f7ccd304dcc94e1f98b3a6844ba6c.sol(66)

[33mWarning[0m for UnhandledException in contract 'CompoundReader':
    |        MoneyMarketInterface moneyMarket = MoneyMarketInterface(0x3fda67f7583380e67ef93072294a7fac882fd7e7);
    |        uint256[] storage tokenHolding;
  > |        for (uint i=0; i < moneyMarket.getCollateralMarketsLength(); i++) {
    |            tokenHolding.push(EIP20Interface(moneyMarket.collateralMarkets(i)).balanceOf(account));
    |        }
  at /home/jiaming/mavs_srcs/contract@0x153080e9a12f7ccd304dcc94e1f98b3a6844ba6c.sol(74)

[33mWarning[0m for UnhandledException in contract 'CompoundReader':
    |        uint256[] storage tokenHolding;
    |        for (uint i=0; i < moneyMarket.getCollateralMarketsLength(); i++) {
  > |            tokenHolding.push(EIP20Interface(moneyMarket.collateralMarkets(i)).balanceOf(account));
    |        }
    |        return tokenHolding;
  at /home/jiaming/mavs_srcs/contract@0x153080e9a12f7ccd304dcc94e1f98b3a6844ba6c.sol(75)

[33mWarning[0m for UnhandledException in contract 'CompoundReader':
    |        uint[] storage supplyBalances;
    |        uint[] storage borrowBalances;
  > |        for (uint i=0; i<moneyMarket.getCollateralMarketsLength(); i++) {
    |            supplyBalances.push(moneyMarket.getSupplyBalance(account, moneyMarket.collateralMarkets(i)));
    |            borrowBalances.push(moneyMarket.getBorrowBalance(account, moneyMarket.collateralMarkets(i)));
  at /home/jiaming/mavs_srcs/contract@0x153080e9a12f7ccd304dcc94e1f98b3a6844ba6c.sol(84)

[33mWarning[0m for UnhandledException in contract 'CompoundReader':
    |        uint[] storage borrowBalances;
    |        for (uint i=0; i<moneyMarket.getCollateralMarketsLength(); i++) {
  > |            supplyBalances.push(moneyMarket.getSupplyBalance(account, moneyMarket.collateralMarkets(i)));
    |            borrowBalances.push(moneyMarket.getBorrowBalance(account, moneyMarket.collateralMarkets(i)));
    |        }
  at /home/jiaming/mavs_srcs/contract@0x153080e9a12f7ccd304dcc94e1f98b3a6844ba6c.sol(85)

[33mWarning[0m for UnhandledException in contract 'CompoundReader':
    |        for (uint i=0; i<moneyMarket.getCollateralMarketsLength(); i++) {
    |            supplyBalances.push(moneyMarket.getSupplyBalance(account, moneyMarket.collateralMarkets(i)));
  > |            borrowBalances.push(moneyMarket.getBorrowBalance(account, moneyMarket.collateralMarkets(i)));
    |        }
    |        uint sumSupplyValues;
  at /home/jiaming/mavs_srcs/contract@0x153080e9a12f7ccd304dcc94e1f98b3a6844ba6c.sol(86)

[33mWarning[0m for UnhandledException in contract 'CompoundReader':
    |        uint sumSupplyValues;
    |        uint sumBorrowValues;
  > |        (, sumSupplyValues, sumBorrowValues) = moneyMarket.calculateAccountValues(account);
    |
    |        return (supplyBalances, borrowBalances, sumSupplyValues, sumBorrowValues);
  at /home/jiaming/mavs_srcs/contract@0x153080e9a12f7ccd304dcc94e1f98b3a6844ba6c.sol(90)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CompoundReader':
    |        MoneyMarketInterface moneyMarket = MoneyMarketInterface(0x3fda67f7583380e67ef93072294a7fac882fd7e7);
    |        uint[] storage tokenPrices;
  > |        for (uint i=0; i < moneyMarket.getCollateralMarketsLength(); i++) {
    |            tokenPrices.push(moneyMarket.assetPrices(moneyMarket.collateralMarkets(i)));
    |        }
  at /home/jiaming/mavs_srcs/contract@0x153080e9a12f7ccd304dcc94e1f98b3a6844ba6c.sol(65)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CompoundReader':
    |        uint[] storage tokenPrices;
    |        for (uint i=0; i < moneyMarket.getCollateralMarketsLength(); i++) {
  > |            tokenPrices.push(moneyMarket.assetPrices(moneyMarket.collateralMarkets(i)));
    |        }
    |        return tokenPrices;
  at /home/jiaming/mavs_srcs/contract@0x153080e9a12f7ccd304dcc94e1f98b3a6844ba6c.sol(66)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CompoundReader':
    |        MoneyMarketInterface moneyMarket = MoneyMarketInterface(0x3fda67f7583380e67ef93072294a7fac882fd7e7);
    |        uint256[] storage tokenHolding;
  > |        for (uint i=0; i < moneyMarket.getCollateralMarketsLength(); i++) {
    |            tokenHolding.push(EIP20Interface(moneyMarket.collateralMarkets(i)).balanceOf(account));
    |        }
  at /home/jiaming/mavs_srcs/contract@0x153080e9a12f7ccd304dcc94e1f98b3a6844ba6c.sol(74)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CompoundReader':
    |        uint256[] storage tokenHolding;
    |        for (uint i=0; i < moneyMarket.getCollateralMarketsLength(); i++) {
  > |            tokenHolding.push(EIP20Interface(moneyMarket.collateralMarkets(i)).balanceOf(account));
    |        }
    |        return tokenHolding;
  at /home/jiaming/mavs_srcs/contract@0x153080e9a12f7ccd304dcc94e1f98b3a6844ba6c.sol(75)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CompoundReader':
    |        uint[] storage supplyBalances;
    |        uint[] storage borrowBalances;
  > |        for (uint i=0; i<moneyMarket.getCollateralMarketsLength(); i++) {
    |            supplyBalances.push(moneyMarket.getSupplyBalance(account, moneyMarket.collateralMarkets(i)));
    |            borrowBalances.push(moneyMarket.getBorrowBalance(account, moneyMarket.collateralMarkets(i)));
  at /home/jiaming/mavs_srcs/contract@0x153080e9a12f7ccd304dcc94e1f98b3a6844ba6c.sol(84)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CompoundReader':
    |        uint[] storage borrowBalances;
    |        for (uint i=0; i<moneyMarket.getCollateralMarketsLength(); i++) {
  > |            supplyBalances.push(moneyMarket.getSupplyBalance(account, moneyMarket.collateralMarkets(i)));
    |            borrowBalances.push(moneyMarket.getBorrowBalance(account, moneyMarket.collateralMarkets(i)));
    |        }
  at /home/jiaming/mavs_srcs/contract@0x153080e9a12f7ccd304dcc94e1f98b3a6844ba6c.sol(85)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CompoundReader':
    |        for (uint i=0; i<moneyMarket.getCollateralMarketsLength(); i++) {
    |            supplyBalances.push(moneyMarket.getSupplyBalance(account, moneyMarket.collateralMarkets(i)));
  > |            borrowBalances.push(moneyMarket.getBorrowBalance(account, moneyMarket.collateralMarkets(i)));
    |        }
    |        uint sumSupplyValues;
  at /home/jiaming/mavs_srcs/contract@0x153080e9a12f7ccd304dcc94e1f98b3a6844ba6c.sol(86)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CompoundReader':
    |        uint sumSupplyValues;
    |        uint sumBorrowValues;
  > |        (, sumSupplyValues, sumBorrowValues) = moneyMarket.calculateAccountValues(account);
    |
    |        return (supplyBalances, borrowBalances, sumSupplyValues, sumBorrowValues);
  at /home/jiaming/mavs_srcs/contract@0x153080e9a12f7ccd304dcc94e1f98b3a6844ba6c.sol(90)

[31mViolation[0m for UnrestrictedWrite in contract 'CompoundReader':
    |contract MoneyMarketInterface {
  > |    function supply(address asset, uint amount) public returns (uint);
    |    function repayBorrow(address asset, uint amount) public returns (uint);
    |    function borrow(address asset, uint amount) public returns (uint);
  at /home/jiaming/mavs_srcs/contract@0x153080e9a12f7ccd304dcc94e1f98b3a6844ba6c.sol(2)

[31mViolation[0m for UnrestrictedWrite in contract 'CompoundReader':
    |        uint[] storage tokenPrices;
    |        for (uint i=0; i < moneyMarket.getCollateralMarketsLength(); i++) {
  > |            tokenPrices.push(moneyMarket.assetPrices(moneyMarket.collateralMarkets(i)));
    |        }
    |        return tokenPrices;
  at /home/jiaming/mavs_srcs/contract@0x153080e9a12f7ccd304dcc94e1f98b3a6844ba6c.sol(66)

[31mViolation[0m for UnrestrictedWrite in contract 'CompoundReader':
    |        uint256[] storage tokenHolding;
    |        for (uint i=0; i < moneyMarket.getCollateralMarketsLength(); i++) {
  > |            tokenHolding.push(EIP20Interface(moneyMarket.collateralMarkets(i)).balanceOf(account));
    |        }
    |        return tokenHolding;
  at /home/jiaming/mavs_srcs/contract@0x153080e9a12f7ccd304dcc94e1f98b3a6844ba6c.sol(75)

[31mViolation[0m for UnrestrictedWrite in contract 'CompoundReader':
    |        uint[] storage borrowBalances;
    |        for (uint i=0; i<moneyMarket.getCollateralMarketsLength(); i++) {
  > |            supplyBalances.push(moneyMarket.getSupplyBalance(account, moneyMarket.collateralMarkets(i)));
    |            borrowBalances.push(moneyMarket.getBorrowBalance(account, moneyMarket.collateralMarkets(i)));
    |        }
  at /home/jiaming/mavs_srcs/contract@0x153080e9a12f7ccd304dcc94e1f98b3a6844ba6c.sol(85)

[31mViolation[0m for UnrestrictedWrite in contract 'CompoundReader':
    |        for (uint i=0; i<moneyMarket.getCollateralMarketsLength(); i++) {
    |            supplyBalances.push(moneyMarket.getSupplyBalance(account, moneyMarket.collateralMarkets(i)));
  > |            borrowBalances.push(moneyMarket.getBorrowBalance(account, moneyMarket.collateralMarkets(i)));
    |        }
    |        uint sumSupplyValues;
  at /home/jiaming/mavs_srcs/contract@0x153080e9a12f7ccd304dcc94e1f98b3a6844ba6c.sol(86)


