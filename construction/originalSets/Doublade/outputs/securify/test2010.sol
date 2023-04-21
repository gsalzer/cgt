Processing contract: /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol:Converter
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol:ExchangeAdapterBase
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol:ExchangeProviderInterface
Processing contract: /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol:Manageable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol:OlympusLabsCore
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol:OlympusStorage
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol:OlympusStorageExtendedInterface
Processing contract: /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol:OlympusStorageInterface
Processing contract: /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol:PermissionProviderInterface
Processing contract: /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol:PriceProviderInterface
Processing contract: /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol:Provider
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol:RBAC
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol:Roles
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol:StorageTypeDefinitions
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol:StrategyProviderInterface
Processing contract: /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol:TypeDefinitions
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol:Utils
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol:WhitelistProviderInterface
[33mWarning[0m for LockedEther in contract 'Converter':
    |// File: contracts/libs/Converter.sol
    |
  > |library Converter {
    |    function stringToBytes32(string memory source) internal pure returns (bytes32 result) {
    |        assembly {
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(391)

[33mWarning[0m for LockedEther in contract 'ExchangeAdapterBase':
    |// File: contracts/exchange/ExchangeAdapterBase.sol
    |
  > |contract ExchangeAdapterBase {
    |
    |    address internal adapterManager;
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(339)

[33mWarning[0m for LockedEther in contract 'Manageable':
    |// File: contracts/libs/Manageable.sol
    |
  > |contract Manageable {
    |    event ProviderUpdated (uint8 name, address hash);
    |
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(47)

[31mViolation[0m for MissingInputValidation in contract 'Manageable':
    |
    |    // This is used to hold the addresses of the providers
  > |    mapping (uint8 => address) public subContracts;
    |    modifier onlyOwner() {
    |        // Make sure that this function can't be used without being overridden
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(51)

[31mViolation[0m for MissingInputValidation in contract 'Manageable':
    |    }
    |
  > |    function setProvider(uint8 _id, address _providerAddress) public onlyOwner returns (bool success) {
    |        require(_providerAddress != address(0));
    |        subContracts[_id] = _providerAddress;
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(58)

[31mViolation[0m for UnrestrictedWrite in contract 'Manageable':
    |    function setProvider(uint8 _id, address _providerAddress) public onlyOwner returns (bool success) {
    |        require(_providerAddress != address(0));
  > |        subContracts[_id] = _providerAddress;
    |        emit ProviderUpdated(_id, _providerAddress);
    |
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(60)

[33mWarning[0m for DAO in contract 'OlympusLabsCore':
    |
    |        emit LogNumber(amounts[2]);
  > |        require((exchangeProvider.endPlaceOrder.value(amounts[2])(indexOrderId)));
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(1093)

[33mWarning[0m for DAOConstantGas in contract 'OlympusLabsCore':
    |    {
    |        require(receiveAddress != 0x0);
  > |        receiveAddress.transfer(this.balance);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(1233)

[33mWarning[0m for LockedEther in contract 'OlympusLabsCore':
    |// File: contracts/OlympusLabsCore.sol
    |
  > |contract OlympusLabsCore is Manageable {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(883)

[31mViolation[0m for TODAmount in contract 'OlympusLabsCore':
    |    {
    |        require(receiveAddress != 0x0);
  > |        receiveAddress.transfer(this.balance);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(1233)

[31mViolation[0m for TODReceiver in contract 'OlympusLabsCore':
    |
    |        emit LogNumber(amounts[2]);
  > |        require((exchangeProvider.endPlaceOrder.value(amounts[2])(indexOrderId)));
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(1093)

[33mWarning[0m for UnhandledException in contract 'OlympusLabsCore':
    |
    |    modifier onlyOwner() {
  > |        require(permissionProvider.has(msg.sender, permissionProvider.ROLE_CORE_OWNER()));
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(915)

[33mWarning[0m for UnhandledException in contract 'OlympusLabsCore':
    |
    |    modifier onlyAllowed(){
  > |        require(address(whitelistProvider) == 0x0 || whitelistProvider.isAllowed(msg.sender));
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(920)

[33mWarning[0m for UnhandledException in contract 'OlympusLabsCore':
    |    function getStrategyCount() public view returns (uint length)
    |    {
  > |        return strategyProvider.getStrategyCount();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(936)

[33mWarning[0m for UnhandledException in contract 'OlympusLabsCore':
    |    {
    |        bytes32 _exchangeName;
  > |        uint tokenLength = strategyProvider.getStrategyTokenCount(strategyId);
    |        tokens = new address[](tokenLength);
    |        weights = new uint[](tokenLength);
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(950)

[33mWarning[0m for UnhandledException in contract 'OlympusLabsCore':
    |        weights = new uint[](tokenLength);
    |
  > |        (,name,description,category,,,followers,amount,_exchangeName) = strategyProvider.getStrategy(strategyId);
    |        (,,,,tokens,weights,,,) = strategyProvider.getStrategy(strategyId);
    |        exchangeName = Converter.bytes32ToString(_exchangeName);
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(954)

[33mWarning[0m for UnhandledException in contract 'OlympusLabsCore':
    |
    |        (,name,description,category,,,followers,amount,_exchangeName) = strategyProvider.getStrategy(strategyId);
  > |        (,,,,tokens,weights,,,) = strategyProvider.getStrategy(strategyId);
    |        exchangeName = Converter.bytes32ToString(_exchangeName);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(955)

[33mWarning[0m for UnhandledException in contract 'OlympusLabsCore':
    |        )
    |    {
  > |        uint tokenLength = strategyProvider.getStrategyTokenCount(strategyId);
    |        require(index < tokenLength);
    |
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(964)

[33mWarning[0m for UnhandledException in contract 'OlympusLabsCore':
    |        require(index < tokenLength);
    |
  > |        (token, weight) = strategyProvider.getStrategyTokenByIndex(strategyId, index);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(967)

[33mWarning[0m for UnhandledException in contract 'OlympusLabsCore':
    |    function getPrice(address tokenAddress, uint srcQty) public view returns (uint price){
    |        require(tokenAddress != address(0));
  > |        (, price) = priceProvider.getRates(tokenAddress, srcQty);
    |        return price;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(973)

[33mWarning[0m for UnhandledException in contract 'OlympusLabsCore':
    |        uint totalLength;
    |
  > |        uint tokenLength = strategyProvider.getStrategyTokenCount(strategyId);
    |        require(tokenIndex <= totalLength);
    |        address[] memory tokens;
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(980)

[33mWarning[0m for UnhandledException in contract 'OlympusLabsCore':
    |        address[] memory tokens;
    |        uint[] memory weights;
  > |        (,,,,tokens,weights,,,) = strategyProvider.getStrategy(strategyId);
    |
    |        //Default get the price for one Ether
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(984)

[33mWarning[0m for UnhandledException in contract 'OlympusLabsCore':
    |            require(msg.value <= maximumInWei);
    |        }
  > |        uint tokenLength = strategyProvider.getStrategyTokenCount(strategyId);
    |        // can't buy an index without tokens.
    |        require(tokenLength > 0);
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(1025)

[33mWarning[0m for UnhandledException in contract 'OlympusLabsCore':
    |        bytes32 exchangeId;
    |
  > |        (,,,,tokens,weights,,,exchangeId) = strategyProvider.getStrategy(strategyId);
    |
    |        uint[3] memory amounts;
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(1032)

[33mWarning[0m for UnhandledException in contract 'OlympusLabsCore':
    |
    |        // create order.
  > |        indexOrderId = olympusStorage.addOrderBasicFields(
    |          strategyId,
    |          msg.sender,
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(1040)

[33mWarning[0m for UnhandledException in contract 'OlympusLabsCore':
    |
    |
  > |        require(exchangeProvider.startPlaceOrder(indexOrderId, depositAddress));
    |
    |        for (uint i = 0; i < tokenLength; i ++ ) {
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(1057)

[33mWarning[0m for UnhandledException in contract 'OlympusLabsCore':
    |            }
    |            // token has to be supported by exchange provider.
  > |            if(!exchangeProvider.checkTokenSupported(ERC20(tokens[i]))){
    |                emit Log("Exchange provider doesn't support");
    |                revert();
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(1066)

[33mWarning[0m for UnhandledException in contract 'OlympusLabsCore':
    |
    |            // check if price provider supports it.
  > |            if(!priceProvider.checkTokenSupported(tokens[i])){
    |                emit Log("Price provider doesn't support");
    |                revert();
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(1072)

[33mWarning[0m for UnhandledException in contract 'OlympusLabsCore':
    |            emit LogNumber(subOrderTemp[0][i]);
    |            emit LogNumber(subOrderTemp[1][i]);
  > |            require(exchangeProvider.addPlaceOrderItem(indexOrderId, ERC20(tokens[i]), subOrderTemp[0][i], subOrderTemp[1][i]));
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(1083)

[33mWarning[0m for UnhandledException in contract 'OlympusLabsCore':
    |        }
    |
  > |        olympusStorage.addTokenDetails(
    |            indexOrderId,
    |            tokens, weights, subOrderTemp[0], subOrderTemp[1]
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(1086)

[33mWarning[0m for UnhandledException in contract 'OlympusLabsCore':
    |
    |        emit LogNumber(amounts[2]);
  > |        require((exchangeProvider.endPlaceOrder.value(amounts[2])(indexOrderId)));
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(1093)

[33mWarning[0m for UnhandledException in contract 'OlympusLabsCore':
    |
    |
  > |        strategyProvider.updateFollower(strategyId, true);
    |
    |        strategyProvider.incrementStatistics(strategyId, msg.value);
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(1096)

[33mWarning[0m for UnhandledException in contract 'OlympusLabsCore':
    |        strategyProvider.updateFollower(strategyId, true);
    |
  > |        strategyProvider.incrementStatistics(strategyId, msg.value);
    |
    |        return indexOrderId;
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(1098)

[33mWarning[0m for UnhandledException in contract 'OlympusLabsCore':
    |
    |    function resetOrderIdTo(uint _start) external onlyOwner returns (uint) {
  > |        return olympusStorage.resetOrderIdTo(_start);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(1108)

[33mWarning[0m for UnhandledException in contract 'OlympusLabsCore':
    |
    |
  > |        (orderPartial[0], buyer[0], status[0], orderPartial[1]) = olympusStorage.getIndexOrder1(_orderId);
    |        (orderPartial[2], orderPartial[3], orderPartial[4], exchangeId[0]) = olympusStorage.getIndexOrder2(_orderId);
    |        address[] memory tokens = new address[](orderPartial[4]);
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(1126)

[33mWarning[0m for UnhandledException in contract 'OlympusLabsCore':
    |
    |        (orderPartial[0], buyer[0], status[0], orderPartial[1]) = olympusStorage.getIndexOrder1(_orderId);
  > |        (orderPartial[2], orderPartial[3], orderPartial[4], exchangeId[0]) = olympusStorage.getIndexOrder2(_orderId);
    |        address[] memory tokens = new address[](orderPartial[4]);
    |
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(1127)

[33mWarning[0m for UnhandledException in contract 'OlympusLabsCore':
    |
    |        for(uint i = 0; i < orderPartial[4]; i++){
  > |            tokens[i] = olympusStorage.getIndexToken(_orderId, i);
    |        }
    |        return (
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(1131)

[33mWarning[0m for UnhandledException in contract 'OlympusLabsCore':
    |        uint completedTokenAmount;
    |        uint tokenIndex;
  > |        (completedTokenAmount, tokenIndex) = olympusStorage.getOrderTokenCompletedAmount(_orderId,_tokenAddress);
    |
    |        ExchangeAdapterBase.OrderStatus status;
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(1148)

[33mWarning[0m for UnhandledException in contract 'OlympusLabsCore':
    |            status = ExchangeAdapterBase.OrderStatus.Completed;
    |        }
  > |        olympusStorage.updateIndexOrderToken(_orderId, tokenIndex, _totalTokenAmount, _actualPrice, _completedQuantity, status);
    |
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(1159)

[33mWarning[0m for UnhandledException in contract 'OlympusLabsCore':
    |        returns (bool success)
    |    {
  > |        olympusStorage.updateOrderStatus(_orderId, _status);
    |
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(1168)

[33mWarning[0m for UnhandledException in contract 'OlympusLabsCore':
    |        external view returns (ExchangeAdapterBase.OrderStatus)
    |    {
  > |        return exchangeProvider.getSubOrderStatus(_orderId, ERC20(_tokenAddress));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(1176)

[33mWarning[0m for UnhandledException in contract 'OlympusLabsCore':
    |            // Transfer MOT
    |            uint MOTPrice;
  > |            uint allowance = MOT.allowance(sender,address(this));
    |            (MOTPrice,) = priceProvider.getRates(address(MOT), feeValueInETH);
    |            uint amount = (feeValueInETH * MOTPrice) / 10**18;
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(1212)

[33mWarning[0m for UnhandledException in contract 'OlympusLabsCore':
    |            uint MOTPrice;
    |            uint allowance = MOT.allowance(sender,address(this));
  > |            (MOTPrice,) = priceProvider.getRates(address(MOT), feeValueInETH);
    |            uint amount = (feeValueInETH * MOTPrice) / 10**18;
    |            require(allowance >= amount);
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(1213)

[33mWarning[0m for UnhandledException in contract 'OlympusLabsCore':
    |            uint amount = (feeValueInETH * MOTPrice) / 10**18;
    |            require(allowance >= amount);
  > |            require(MOT.transferFrom(sender,address(this),amount));
    |            return totalValue; // Use all sent ETH to buy, because fee is paid in MOT
    |        } else { // We use ETH as fee, so deduct that from the amount of ETH sent
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(1216)

[33mWarning[0m for UnhandledException in contract 'OlympusLabsCore':
    |    function withdrawERC20(address receiveAddress,address _tokenAddress) public onlyOwner returns(bool success)
    |    {
  > |        uint _balance = ERC20(_tokenAddress).balanceOf(address(this));
    |        require(_tokenAddress != 0x0 && receiveAddress != 0x0 && _balance != 0);
    |        require(ERC20(_tokenAddress).transfer(receiveAddress,_balance));
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(1225)

[33mWarning[0m for UnhandledException in contract 'OlympusLabsCore':
    |        uint _balance = ERC20(_tokenAddress).balanceOf(address(this));
    |        require(_tokenAddress != 0x0 && receiveAddress != 0x0 && _balance != 0);
  > |        require(ERC20(_tokenAddress).transfer(receiveAddress,_balance));
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(1227)

[33mWarning[0m for UnhandledException in contract 'OlympusLabsCore':
    |    {
    |        require(receiveAddress != 0x0);
  > |        receiveAddress.transfer(this.balance);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(1233)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'OlympusLabsCore':
    |
    |    modifier onlyOwner() {
  > |        require(permissionProvider.has(msg.sender, permissionProvider.ROLE_CORE_OWNER()));
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(915)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'OlympusLabsCore':
    |
    |    modifier onlyAllowed(){
  > |        require(address(whitelistProvider) == 0x0 || whitelistProvider.isAllowed(msg.sender));
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(920)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'OlympusLabsCore':
    |    function getStrategyCount() public view returns (uint length)
    |    {
  > |        return strategyProvider.getStrategyCount();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(936)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'OlympusLabsCore':
    |    {
    |        bytes32 _exchangeName;
  > |        uint tokenLength = strategyProvider.getStrategyTokenCount(strategyId);
    |        tokens = new address[](tokenLength);
    |        weights = new uint[](tokenLength);
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(950)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'OlympusLabsCore':
    |        weights = new uint[](tokenLength);
    |
  > |        (,name,description,category,,,followers,amount,_exchangeName) = strategyProvider.getStrategy(strategyId);
    |        (,,,,tokens,weights,,,) = strategyProvider.getStrategy(strategyId);
    |        exchangeName = Converter.bytes32ToString(_exchangeName);
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(954)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'OlympusLabsCore':
    |
    |        (,name,description,category,,,followers,amount,_exchangeName) = strategyProvider.getStrategy(strategyId);
  > |        (,,,,tokens,weights,,,) = strategyProvider.getStrategy(strategyId);
    |        exchangeName = Converter.bytes32ToString(_exchangeName);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(955)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'OlympusLabsCore':
    |        )
    |    {
  > |        uint tokenLength = strategyProvider.getStrategyTokenCount(strategyId);
    |        require(index < tokenLength);
    |
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(964)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'OlympusLabsCore':
    |        require(index < tokenLength);
    |
  > |        (token, weight) = strategyProvider.getStrategyTokenByIndex(strategyId, index);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(967)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'OlympusLabsCore':
    |    function getPrice(address tokenAddress, uint srcQty) public view returns (uint price){
    |        require(tokenAddress != address(0));
  > |        (, price) = priceProvider.getRates(tokenAddress, srcQty);
    |        return price;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(973)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'OlympusLabsCore':
    |        uint totalLength;
    |
  > |        uint tokenLength = strategyProvider.getStrategyTokenCount(strategyId);
    |        require(tokenIndex <= totalLength);
    |        address[] memory tokens;
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(980)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'OlympusLabsCore':
    |        address[] memory tokens;
    |        uint[] memory weights;
  > |        (,,,,tokens,weights,,,) = strategyProvider.getStrategy(strategyId);
    |
    |        //Default get the price for one Ether
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(984)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'OlympusLabsCore':
    |            require(msg.value <= maximumInWei);
    |        }
  > |        uint tokenLength = strategyProvider.getStrategyTokenCount(strategyId);
    |        // can't buy an index without tokens.
    |        require(tokenLength > 0);
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(1025)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'OlympusLabsCore':
    |        bytes32 exchangeId;
    |
  > |        (,,,,tokens,weights,,,exchangeId) = strategyProvider.getStrategy(strategyId);
    |
    |        uint[3] memory amounts;
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(1032)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'OlympusLabsCore':
    |
    |        // create order.
  > |        indexOrderId = olympusStorage.addOrderBasicFields(
    |          strategyId,
    |          msg.sender,
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(1040)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'OlympusLabsCore':
    |
    |
  > |        require(exchangeProvider.startPlaceOrder(indexOrderId, depositAddress));
    |
    |        for (uint i = 0; i < tokenLength; i ++ ) {
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(1057)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'OlympusLabsCore':
    |            }
    |            // token has to be supported by exchange provider.
  > |            if(!exchangeProvider.checkTokenSupported(ERC20(tokens[i]))){
    |                emit Log("Exchange provider doesn't support");
    |                revert();
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(1066)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'OlympusLabsCore':
    |
    |            // check if price provider supports it.
  > |            if(!priceProvider.checkTokenSupported(tokens[i])){
    |                emit Log("Price provider doesn't support");
    |                revert();
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(1072)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'OlympusLabsCore':
    |            emit LogNumber(subOrderTemp[0][i]);
    |            emit LogNumber(subOrderTemp[1][i]);
  > |            require(exchangeProvider.addPlaceOrderItem(indexOrderId, ERC20(tokens[i]), subOrderTemp[0][i], subOrderTemp[1][i]));
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(1083)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'OlympusLabsCore':
    |        }
    |
  > |        olympusStorage.addTokenDetails(
    |            indexOrderId,
    |            tokens, weights, subOrderTemp[0], subOrderTemp[1]
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(1086)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'OlympusLabsCore':
    |
    |
  > |        strategyProvider.updateFollower(strategyId, true);
    |
    |        strategyProvider.incrementStatistics(strategyId, msg.value);
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(1096)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'OlympusLabsCore':
    |        strategyProvider.updateFollower(strategyId, true);
    |
  > |        strategyProvider.incrementStatistics(strategyId, msg.value);
    |
    |        return indexOrderId;
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(1098)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'OlympusLabsCore':
    |
    |    function resetOrderIdTo(uint _start) external onlyOwner returns (uint) {
  > |        return olympusStorage.resetOrderIdTo(_start);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(1108)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'OlympusLabsCore':
    |
    |
  > |        (orderPartial[0], buyer[0], status[0], orderPartial[1]) = olympusStorage.getIndexOrder1(_orderId);
    |        (orderPartial[2], orderPartial[3], orderPartial[4], exchangeId[0]) = olympusStorage.getIndexOrder2(_orderId);
    |        address[] memory tokens = new address[](orderPartial[4]);
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(1126)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'OlympusLabsCore':
    |
    |        (orderPartial[0], buyer[0], status[0], orderPartial[1]) = olympusStorage.getIndexOrder1(_orderId);
  > |        (orderPartial[2], orderPartial[3], orderPartial[4], exchangeId[0]) = olympusStorage.getIndexOrder2(_orderId);
    |        address[] memory tokens = new address[](orderPartial[4]);
    |
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(1127)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'OlympusLabsCore':
    |
    |        for(uint i = 0; i < orderPartial[4]; i++){
  > |            tokens[i] = olympusStorage.getIndexToken(_orderId, i);
    |        }
    |        return (
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(1131)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'OlympusLabsCore':
    |        uint completedTokenAmount;
    |        uint tokenIndex;
  > |        (completedTokenAmount, tokenIndex) = olympusStorage.getOrderTokenCompletedAmount(_orderId,_tokenAddress);
    |
    |        ExchangeAdapterBase.OrderStatus status;
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(1148)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'OlympusLabsCore':
    |            status = ExchangeAdapterBase.OrderStatus.Completed;
    |        }
  > |        olympusStorage.updateIndexOrderToken(_orderId, tokenIndex, _totalTokenAmount, _actualPrice, _completedQuantity, status);
    |
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(1159)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'OlympusLabsCore':
    |        returns (bool success)
    |    {
  > |        olympusStorage.updateOrderStatus(_orderId, _status);
    |
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(1168)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'OlympusLabsCore':
    |        external view returns (ExchangeAdapterBase.OrderStatus)
    |    {
  > |        return exchangeProvider.getSubOrderStatus(_orderId, ERC20(_tokenAddress));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(1176)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'OlympusLabsCore':
    |            // Transfer MOT
    |            uint MOTPrice;
  > |            uint allowance = MOT.allowance(sender,address(this));
    |            (MOTPrice,) = priceProvider.getRates(address(MOT), feeValueInETH);
    |            uint amount = (feeValueInETH * MOTPrice) / 10**18;
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(1212)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'OlympusLabsCore':
    |            uint MOTPrice;
    |            uint allowance = MOT.allowance(sender,address(this));
  > |            (MOTPrice,) = priceProvider.getRates(address(MOT), feeValueInETH);
    |            uint amount = (feeValueInETH * MOTPrice) / 10**18;
    |            require(allowance >= amount);
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(1213)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'OlympusLabsCore':
    |            uint amount = (feeValueInETH * MOTPrice) / 10**18;
    |            require(allowance >= amount);
  > |            require(MOT.transferFrom(sender,address(this),amount));
    |            return totalValue; // Use all sent ETH to buy, because fee is paid in MOT
    |        } else { // We use ETH as fee, so deduct that from the amount of ETH sent
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(1216)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'OlympusLabsCore':
    |    function withdrawERC20(address receiveAddress,address _tokenAddress) public onlyOwner returns(bool success)
    |    {
  > |        uint _balance = ERC20(_tokenAddress).balanceOf(address(this));
    |        require(_tokenAddress != 0x0 && receiveAddress != 0x0 && _balance != 0);
    |        require(ERC20(_tokenAddress).transfer(receiveAddress,_balance));
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(1225)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'OlympusLabsCore':
    |        uint _balance = ERC20(_tokenAddress).balanceOf(address(this));
    |        require(_tokenAddress != 0x0 && receiveAddress != 0x0 && _balance != 0);
  > |        require(ERC20(_tokenAddress).transfer(receiveAddress,_balance));
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(1227)

[31mViolation[0m for UnrestrictedWrite in contract 'OlympusLabsCore':
    |    function setProvider(uint8 _id, address _providerAddress) public onlyOwner returns (bool success) {
    |        require(_providerAddress != address(0));
  > |        subContracts[_id] = _providerAddress;
    |        emit ProviderUpdated(_id, _providerAddress);
    |
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(60)

[31mViolation[0m for UnrestrictedWrite in contract 'OlympusLabsCore':
    |        if(_type == TypeDefinitions.ProviderType.Strategy) {
    |            emit Log("StrategyProvider");
  > |            strategyProvider = StrategyProviderInterface(_providerAddress);
    |        } else if(_type == TypeDefinitions.ProviderType.Exchange) {
    |            emit Log("ExchangeProvider");
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(997)

[31mViolation[0m for UnrestrictedWrite in contract 'OlympusLabsCore':
    |        } else if(_type == TypeDefinitions.ProviderType.Exchange) {
    |            emit Log("ExchangeProvider");
  > |            exchangeProvider = ExchangeProviderInterface(_providerAddress);
    |        } else if(_type == TypeDefinitions.ProviderType.Price) {
    |            emit Log("PriceProvider");
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(1000)

[31mViolation[0m for UnrestrictedWrite in contract 'OlympusLabsCore':
    |        } else if(_type == TypeDefinitions.ProviderType.Price) {
    |            emit Log("PriceProvider");
  > |            priceProvider = PriceProviderInterface(_providerAddress);
    |        } else if(_type == TypeDefinitions.ProviderType.Storage) {
    |            emit Log("StorageProvider");
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(1003)

[31mViolation[0m for UnrestrictedWrite in contract 'OlympusLabsCore':
    |        } else if(_type == TypeDefinitions.ProviderType.Storage) {
    |            emit Log("StorageProvider");
  > |            olympusStorage = OlympusStorageInterface(_providerAddress);
    |        } else if(_type == TypeDefinitions.ProviderType.Whitelist) {
    |            emit Log("WhitelistProvider");
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(1006)

[31mViolation[0m for UnrestrictedWrite in contract 'OlympusLabsCore':
    |        } else if(_type == TypeDefinitions.ProviderType.Whitelist) {
    |            emit Log("WhitelistProvider");
  > |            whitelistProvider = WhitelistProviderInterface(_providerAddress);
    |        } else {
    |            emit Log("Unknown provider type supplied.");
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(1009)

[31mViolation[0m for UnrestrictedWrite in contract 'OlympusLabsCore':
    |    function adjustFee(uint _newFeePercentage) public onlyOwner returns (bool success) {
    |        require(_newFeePercentage < DENOMINATOR);
  > |        feePercentage = _newFeePercentage;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(1181)

[31mViolation[0m for UnrestrictedWrite in contract 'OlympusLabsCore':
    |    function adjustMOTFeeDiscount(uint _newDiscountPercentage) public onlyOwner returns(bool success) {
    |        require(_newDiscountPercentage <= 100);
  > |        MOTDiscount = _newDiscountPercentage;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(1187)

[31mViolation[0m for UnrestrictedWrite in contract 'OlympusLabsCore':
    |        require(_minInWei > 0);
    |        require(_maxInWei > _minInWei);
  > |        minimumInWei = _minInWei;
    |        maximumInWei = _maxInWei;
    |
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(1194)

[31mViolation[0m for UnrestrictedWrite in contract 'OlympusLabsCore':
    |        require(_maxInWei > _minInWei);
    |        minimumInWei = _minInWei;
  > |        maximumInWei = _maxInWei;
    |
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(1195)

[31mViolation[0m for LockedEther in contract 'OlympusStorage':
    |// File: contracts/storage/OlympusStorage.sol
    |
  > |contract OlympusStorage is Manageable, OlympusStorageInterface {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(601)

[33mWarning[0m for UnhandledException in contract 'OlympusStorage':
    |
    |    modifier onlyOwner() {
  > |        require(permissionProvider.has(msg.sender, permissionProvider.ROLE_STORAGE_OWNER()));
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(631)

[33mWarning[0m for UnhandledException in contract 'OlympusStorage':
    |    }
    |    modifier onlyCore() {
  > |        require(permissionProvider.has(msg.sender, permissionProvider.ROLE_CORE()));
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(635)

[33mWarning[0m for UnhandledException in contract 'OlympusStorage':
    |        bytes32 value
    |    ) external onlyCore returns (bool success){
  > |        return olympusStorageExtended.setCustomExtraData(dataKind,_orderId,key,value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(768)

[33mWarning[0m for UnhandledException in contract 'OlympusStorage':
    |        bytes32 key
    |    ) external view returns (bytes32 result){
  > |        return olympusStorageExtended.getCustomExtraData(dataKind,_orderId,key);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(775)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'OlympusStorage':
    |
    |    modifier onlyOwner() {
  > |        require(permissionProvider.has(msg.sender, permissionProvider.ROLE_STORAGE_OWNER()));
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(631)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'OlympusStorage':
    |    }
    |    modifier onlyCore() {
  > |        require(permissionProvider.has(msg.sender, permissionProvider.ROLE_CORE()));
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(635)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'OlympusStorage':
    |        bytes32 value
    |    ) external onlyCore returns (bool success){
  > |        return olympusStorageExtended.setCustomExtraData(dataKind,_orderId,key,value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(768)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'OlympusStorage':
    |        bytes32 key
    |    ) external view returns (bytes32 result){
  > |        return olympusStorageExtended.getCustomExtraData(dataKind,_orderId,key);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(775)

[31mViolation[0m for UnrestrictedWrite in contract 'OlympusStorage':
    |pragma solidity ^0.4.23;
    |
  > |// File: contracts/libs/ERC20.sol
    |
    |interface ERC20 {
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(3)

[31mViolation[0m for UnrestrictedWrite in contract 'OlympusStorage':
    |    function setProvider(uint8 _id, address _providerAddress) public onlyOwner returns (bool success) {
    |        require(_providerAddress != address(0));
  > |        subContracts[_id] = _providerAddress;
    |        emit ProviderUpdated(_id, _providerAddress);
    |
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(60)

[31mViolation[0m for UnrestrictedWrite in contract 'OlympusStorage':
    |// File: contracts/storage/OlympusStorage.sol
    |
  > |contract OlympusStorage is Manageable, OlympusStorageInterface {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(601)

[31mViolation[0m for UnrestrictedWrite in contract 'OlympusStorage':
    |            orders[indexOrderId].completedTokenAmounts.push(0);
    |
  > |            orderTokenAmounts[indexOrderId][tokens[i]] = weights[i];
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(661)

[31mViolation[0m for UnrestrictedWrite in contract 'OlympusStorage':
    |        });
    |
  > |        orders[indexOrderId] = order;
    |        return indexOrderId;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(692)

[31mViolation[0m for UnrestrictedWrite in contract 'OlympusStorage':
    |        ExchangeAdapterBase.OrderStatus _status) external onlyCore {
    |
  > |        orders[_orderId].totalTokenAmounts[_tokenIndex] = _totalTokenAmount;
    |        orders[_orderId].dealtPrices[_tokenIndex] = _actualPrice;
    |        orders[_orderId].completedTokenAmounts[_tokenIndex] = _completedQuantity;
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(757)

[31mViolation[0m for UnrestrictedWrite in contract 'OlympusStorage':
    |
    |        orders[_orderId].totalTokenAmounts[_tokenIndex] = _totalTokenAmount;
  > |        orders[_orderId].dealtPrices[_tokenIndex] = _actualPrice;
    |        orders[_orderId].completedTokenAmounts[_tokenIndex] = _completedQuantity;
    |        orders[_orderId].subStatuses[_tokenIndex] = _status;
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(758)

[31mViolation[0m for UnrestrictedWrite in contract 'OlympusStorage':
    |        orders[_orderId].totalTokenAmounts[_tokenIndex] = _totalTokenAmount;
    |        orders[_orderId].dealtPrices[_tokenIndex] = _actualPrice;
  > |        orders[_orderId].completedTokenAmounts[_tokenIndex] = _completedQuantity;
    |        orders[_orderId].subStatuses[_tokenIndex] = _status;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(759)

[31mViolation[0m for UnrestrictedWrite in contract 'OlympusStorage':
    |        orders[_orderId].dealtPrices[_tokenIndex] = _actualPrice;
    |        orders[_orderId].completedTokenAmounts[_tokenIndex] = _completedQuantity;
  > |        orders[_orderId].subStatuses[_tokenIndex] = _status;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(760)

[31mViolation[0m for UnrestrictedWrite in contract 'OlympusStorage':
    |        external onlyCore returns (bool success){
    |
  > |        orders[_orderId].status = _status;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(781)

[31mViolation[0m for UnrestrictedWrite in contract 'OlympusStorage':
    |
    |    function getOrderId() private returns (uint) {
  > |        return orderId++;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(786)

[31mViolation[0m for UnrestrictedWrite in contract 'OlympusStorage':
    |
    |    function resetOrderIdTo(uint _start) external onlyOwner returns (uint) {
  > |        orderId = _start;
    |        return orderId;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(790)

[31mViolation[0m for UnrestrictedWrite in contract 'OlympusStorage':
    |        if(_type == TypeDefinitions.ProviderType.ExtendedStorage) {
    |            emit Log("ExtendedStorage");
  > |            olympusStorageExtended = OlympusStorageExtendedInterface(_providerAddress);
    |        } else {
    |            emit Log("Unknown provider type supplied.");
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(800)

[33mWarning[0m for LockedEther in contract 'Provider':
    |}
    |
  > |contract Provider is Manageable {
    |    string public name;
    |    TypeDefinitions.ProviderType public providerType;
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(93)

[31mViolation[0m for MissingInputValidation in contract 'Provider':
    |
    |    // This is used to hold the addresses of the providers
  > |    mapping (uint8 => address) public subContracts;
    |    modifier onlyOwner() {
    |        // Make sure that this function can't be used without being overridden
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(51)

[31mViolation[0m for MissingInputValidation in contract 'Provider':
    |    }
    |
  > |    function setProvider(uint8 _id, address _providerAddress) public onlyOwner returns (bool success) {
    |        require(_providerAddress != address(0));
    |        subContracts[_id] = _providerAddress;
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(58)

[33mWarning[0m for MissingInputValidation in contract 'Provider':
    |
    |contract Provider is Manageable {
  > |    string public name;
    |    TypeDefinitions.ProviderType public providerType;
    |    string public description;
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(94)

[33mWarning[0m for MissingInputValidation in contract 'Provider':
    |contract Provider is Manageable {
    |    string public name;
  > |    TypeDefinitions.ProviderType public providerType;
    |    string public description;
    |    mapping(string => bool) internal properties;
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(95)

[33mWarning[0m for MissingInputValidation in contract 'Provider':
    |    string public name;
    |    TypeDefinitions.ProviderType public providerType;
  > |    string public description;
    |    mapping(string => bool) internal properties;
    |    TypeDefinitions.ProviderStatistic public statistics;
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(96)

[33mWarning[0m for MissingInputValidation in contract 'Provider':
    |    string public description;
    |    mapping(string => bool) internal properties;
  > |    TypeDefinitions.ProviderStatistic public statistics;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(98)

[31mViolation[0m for UnrestrictedWrite in contract 'Provider':
    |    function setProvider(uint8 _id, address _providerAddress) public onlyOwner returns (bool success) {
    |        require(_providerAddress != address(0));
  > |        subContracts[_id] = _providerAddress;
    |        emit ProviderUpdated(_id, _providerAddress);
    |
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(60)

[31mViolation[0m for LockedEther in contract 'RBAC':
    | *  to avoid typos.
    | */
  > |contract RBAC {
    |  using Roles for Roles.Role;
    |
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(169)

[31mViolation[0m for UnrestrictedWrite in contract 'RBAC':
    |    internal
    |  {
  > |    role.bearer[addr] = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(120)

[31mViolation[0m for UnrestrictedWrite in contract 'RBAC':
    |    internal
    |  {
  > |    role.bearer[addr] = false;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(129)

[33mWarning[0m for LockedEther in contract 'Roles':
    | *      See RBAC.sol for example usage.
    | */
  > |library Roles {
    |  struct Role {
    |    mapping (address => bool) bearer;
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(109)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(423)

[33mWarning[0m for LockedEther in contract 'StorageTypeDefinitions':
    |// File: contracts/storage/StorageDefinitions.sol
    |
  > |library StorageTypeDefinitions {
    |    enum OrderStatus {
    |        New,
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(525)

[33mWarning[0m for LockedEther in contract 'TypeDefinitions':
    |// File: contracts/libs/Provider.sol
    |
  > |library TypeDefinitions {
    |
    |    enum ProviderType {
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(69)

[33mWarning[0m for LockedEther in contract 'Utils':
    |// File: contracts/libs/utils.sol
    |
  > |library Utils {
    |
    |    uint  constant PRECISION = (10**18);
  at /home/jiaming/mavs_srcs/contract@0x82c19d554169909539ac8502d99709abc6f0dce7.sol(19)


