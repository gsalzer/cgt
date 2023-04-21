Processing contract: /home/jiaming/mavs_srcs/contract@0xb9cdd0a80c3f9cb6ae8930ba0f15c8dc2ef5c103.sol:CompoundReader
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb9cdd0a80c3f9cb6ae8930ba0f15c8dc2ef5c103.sol:EIP20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0xb9cdd0a80c3f9cb6ae8930ba0f15c8dc2ef5c103.sol:MoneyMarketInterface
[33mWarning[0m for LockedEther in contract 'CompoundReader':
    |    event Approval(address indexed _owner, address indexed _spender, uint256 _value);
    |}
  > |contract CompoundReader {
    |
    |    uint[] supplyBalances;
  at /home/jiaming/mavs_srcs/contract@0xb9cdd0a80c3f9cb6ae8930ba0f15c8dc2ef5c103.sol(60)

[33mWarning[0m for UnhandledException in contract 'CompoundReader':
    |
    |    function getPrices() public view returns (uint[] memory) {
  > |        for (uint i=0; i < moneyMarket.getCollateralMarketsLength(); i++) {
    |            tokenPrices.push(moneyMarket.assetPrices(moneyMarket.collateralMarkets(i)));
    |        }
  at /home/jiaming/mavs_srcs/contract@0xb9cdd0a80c3f9cb6ae8930ba0f15c8dc2ef5c103.sol(69)

[33mWarning[0m for UnhandledException in contract 'CompoundReader':
    |    function getPrices() public view returns (uint[] memory) {
    |        for (uint i=0; i < moneyMarket.getCollateralMarketsLength(); i++) {
  > |            tokenPrices.push(moneyMarket.assetPrices(moneyMarket.collateralMarkets(i)));
    |        }
    |        return tokenPrices;
  at /home/jiaming/mavs_srcs/contract@0xb9cdd0a80c3f9cb6ae8930ba0f15c8dc2ef5c103.sol(70)

[33mWarning[0m for UnhandledException in contract 'CompoundReader':
    |
    |    function getTokenHolding(address account) public view returns (uint256[] memory) {
  > |        for (uint i=0; i < moneyMarket.getCollateralMarketsLength(); i++) {
    |            tokenHolding.push(EIP20Interface(moneyMarket.collateralMarkets(i)).balanceOf(account));
    |        }
  at /home/jiaming/mavs_srcs/contract@0xb9cdd0a80c3f9cb6ae8930ba0f15c8dc2ef5c103.sol(76)

[33mWarning[0m for UnhandledException in contract 'CompoundReader':
    |    function getTokenHolding(address account) public view returns (uint256[] memory) {
    |        for (uint i=0; i < moneyMarket.getCollateralMarketsLength(); i++) {
  > |            tokenHolding.push(EIP20Interface(moneyMarket.collateralMarkets(i)).balanceOf(account));
    |        }
    |        return tokenHolding;
  at /home/jiaming/mavs_srcs/contract@0xb9cdd0a80c3f9cb6ae8930ba0f15c8dc2ef5c103.sol(77)

[33mWarning[0m for UnhandledException in contract 'CompoundReader':
    |
    |    function getBalances(address account) public view returns (uint[] memory, uint[] memory, uint, uint) {
  > |        for (uint i=0; i<moneyMarket.getCollateralMarketsLength(); i++) {
    |            supplyBalances.push(moneyMarket.getSupplyBalance(account, moneyMarket.collateralMarkets(i)));
    |            borrowBalances.push(moneyMarket.getBorrowBalance(account, moneyMarket.collateralMarkets(i)));
  at /home/jiaming/mavs_srcs/contract@0xb9cdd0a80c3f9cb6ae8930ba0f15c8dc2ef5c103.sol(83)

[33mWarning[0m for UnhandledException in contract 'CompoundReader':
    |    function getBalances(address account) public view returns (uint[] memory, uint[] memory, uint, uint) {
    |        for (uint i=0; i<moneyMarket.getCollateralMarketsLength(); i++) {
  > |            supplyBalances.push(moneyMarket.getSupplyBalance(account, moneyMarket.collateralMarkets(i)));
    |            borrowBalances.push(moneyMarket.getBorrowBalance(account, moneyMarket.collateralMarkets(i)));
    |        }
  at /home/jiaming/mavs_srcs/contract@0xb9cdd0a80c3f9cb6ae8930ba0f15c8dc2ef5c103.sol(84)

[33mWarning[0m for UnhandledException in contract 'CompoundReader':
    |        for (uint i=0; i<moneyMarket.getCollateralMarketsLength(); i++) {
    |            supplyBalances.push(moneyMarket.getSupplyBalance(account, moneyMarket.collateralMarkets(i)));
  > |            borrowBalances.push(moneyMarket.getBorrowBalance(account, moneyMarket.collateralMarkets(i)));
    |        }
    |        uint sumSupplyValues;
  at /home/jiaming/mavs_srcs/contract@0xb9cdd0a80c3f9cb6ae8930ba0f15c8dc2ef5c103.sol(85)

[33mWarning[0m for UnhandledException in contract 'CompoundReader':
    |        uint sumSupplyValues;
    |        uint sumBorrowValues;
  > |        (, sumSupplyValues, sumBorrowValues) = moneyMarket.calculateAccountValues(account);
    |
    |        return (supplyBalances, borrowBalances, sumSupplyValues, sumBorrowValues);
  at /home/jiaming/mavs_srcs/contract@0xb9cdd0a80c3f9cb6ae8930ba0f15c8dc2ef5c103.sol(89)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CompoundReader':
    |
    |    function getPrices() public view returns (uint[] memory) {
  > |        for (uint i=0; i < moneyMarket.getCollateralMarketsLength(); i++) {
    |            tokenPrices.push(moneyMarket.assetPrices(moneyMarket.collateralMarkets(i)));
    |        }
  at /home/jiaming/mavs_srcs/contract@0xb9cdd0a80c3f9cb6ae8930ba0f15c8dc2ef5c103.sol(69)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CompoundReader':
    |    function getPrices() public view returns (uint[] memory) {
    |        for (uint i=0; i < moneyMarket.getCollateralMarketsLength(); i++) {
  > |            tokenPrices.push(moneyMarket.assetPrices(moneyMarket.collateralMarkets(i)));
    |        }
    |        return tokenPrices;
  at /home/jiaming/mavs_srcs/contract@0xb9cdd0a80c3f9cb6ae8930ba0f15c8dc2ef5c103.sol(70)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CompoundReader':
    |
    |    function getTokenHolding(address account) public view returns (uint256[] memory) {
  > |        for (uint i=0; i < moneyMarket.getCollateralMarketsLength(); i++) {
    |            tokenHolding.push(EIP20Interface(moneyMarket.collateralMarkets(i)).balanceOf(account));
    |        }
  at /home/jiaming/mavs_srcs/contract@0xb9cdd0a80c3f9cb6ae8930ba0f15c8dc2ef5c103.sol(76)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CompoundReader':
    |    function getTokenHolding(address account) public view returns (uint256[] memory) {
    |        for (uint i=0; i < moneyMarket.getCollateralMarketsLength(); i++) {
  > |            tokenHolding.push(EIP20Interface(moneyMarket.collateralMarkets(i)).balanceOf(account));
    |        }
    |        return tokenHolding;
  at /home/jiaming/mavs_srcs/contract@0xb9cdd0a80c3f9cb6ae8930ba0f15c8dc2ef5c103.sol(77)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CompoundReader':
    |
    |    function getBalances(address account) public view returns (uint[] memory, uint[] memory, uint, uint) {
  > |        for (uint i=0; i<moneyMarket.getCollateralMarketsLength(); i++) {
    |            supplyBalances.push(moneyMarket.getSupplyBalance(account, moneyMarket.collateralMarkets(i)));
    |            borrowBalances.push(moneyMarket.getBorrowBalance(account, moneyMarket.collateralMarkets(i)));
  at /home/jiaming/mavs_srcs/contract@0xb9cdd0a80c3f9cb6ae8930ba0f15c8dc2ef5c103.sol(83)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CompoundReader':
    |    function getBalances(address account) public view returns (uint[] memory, uint[] memory, uint, uint) {
    |        for (uint i=0; i<moneyMarket.getCollateralMarketsLength(); i++) {
  > |            supplyBalances.push(moneyMarket.getSupplyBalance(account, moneyMarket.collateralMarkets(i)));
    |            borrowBalances.push(moneyMarket.getBorrowBalance(account, moneyMarket.collateralMarkets(i)));
    |        }
  at /home/jiaming/mavs_srcs/contract@0xb9cdd0a80c3f9cb6ae8930ba0f15c8dc2ef5c103.sol(84)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CompoundReader':
    |        for (uint i=0; i<moneyMarket.getCollateralMarketsLength(); i++) {
    |            supplyBalances.push(moneyMarket.getSupplyBalance(account, moneyMarket.collateralMarkets(i)));
  > |            borrowBalances.push(moneyMarket.getBorrowBalance(account, moneyMarket.collateralMarkets(i)));
    |        }
    |        uint sumSupplyValues;
  at /home/jiaming/mavs_srcs/contract@0xb9cdd0a80c3f9cb6ae8930ba0f15c8dc2ef5c103.sol(85)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CompoundReader':
    |        uint sumSupplyValues;
    |        uint sumBorrowValues;
  > |        (, sumSupplyValues, sumBorrowValues) = moneyMarket.calculateAccountValues(account);
    |
    |        return (supplyBalances, borrowBalances, sumSupplyValues, sumBorrowValues);
  at /home/jiaming/mavs_srcs/contract@0xb9cdd0a80c3f9cb6ae8930ba0f15c8dc2ef5c103.sol(89)

[31mViolation[0m for UnrestrictedWrite in contract 'CompoundReader':
    |contract MoneyMarketInterface {
  > |    function supply(address asset, uint amount) public returns (uint);
    |    function repayBorrow(address asset, uint amount) public returns (uint);
    |    function borrow(address asset, uint amount) public returns (uint);
  at /home/jiaming/mavs_srcs/contract@0xb9cdd0a80c3f9cb6ae8930ba0f15c8dc2ef5c103.sol(2)

[31mViolation[0m for UnrestrictedWrite in contract 'CompoundReader':
    |    function getPrices() public view returns (uint[] memory) {
    |        for (uint i=0; i < moneyMarket.getCollateralMarketsLength(); i++) {
  > |            tokenPrices.push(moneyMarket.assetPrices(moneyMarket.collateralMarkets(i)));
    |        }
    |        return tokenPrices;
  at /home/jiaming/mavs_srcs/contract@0xb9cdd0a80c3f9cb6ae8930ba0f15c8dc2ef5c103.sol(70)

[31mViolation[0m for UnrestrictedWrite in contract 'CompoundReader':
    |    function getTokenHolding(address account) public view returns (uint256[] memory) {
    |        for (uint i=0; i < moneyMarket.getCollateralMarketsLength(); i++) {
  > |            tokenHolding.push(EIP20Interface(moneyMarket.collateralMarkets(i)).balanceOf(account));
    |        }
    |        return tokenHolding;
  at /home/jiaming/mavs_srcs/contract@0xb9cdd0a80c3f9cb6ae8930ba0f15c8dc2ef5c103.sol(77)

[31mViolation[0m for UnrestrictedWrite in contract 'CompoundReader':
    |    function getBalances(address account) public view returns (uint[] memory, uint[] memory, uint, uint) {
    |        for (uint i=0; i<moneyMarket.getCollateralMarketsLength(); i++) {
  > |            supplyBalances.push(moneyMarket.getSupplyBalance(account, moneyMarket.collateralMarkets(i)));
    |            borrowBalances.push(moneyMarket.getBorrowBalance(account, moneyMarket.collateralMarkets(i)));
    |        }
  at /home/jiaming/mavs_srcs/contract@0xb9cdd0a80c3f9cb6ae8930ba0f15c8dc2ef5c103.sol(84)

[31mViolation[0m for UnrestrictedWrite in contract 'CompoundReader':
    |        for (uint i=0; i<moneyMarket.getCollateralMarketsLength(); i++) {
    |            supplyBalances.push(moneyMarket.getSupplyBalance(account, moneyMarket.collateralMarkets(i)));
  > |            borrowBalances.push(moneyMarket.getBorrowBalance(account, moneyMarket.collateralMarkets(i)));
    |        }
    |        uint sumSupplyValues;
  at /home/jiaming/mavs_srcs/contract@0xb9cdd0a80c3f9cb6ae8930ba0f15c8dc2ef5c103.sol(85)


