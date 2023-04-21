Processing contract: /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol:BancorConverter
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol:ContractIds
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol:FeatureIds
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol:IBancorConverter
Processing contract: /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol:IBancorFormula
Processing contract: /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol:IBancorNetwork
Processing contract: /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol:IContractFeatures
Processing contract: /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol:IContractRegistry
Processing contract: /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol:IERC20Token
Processing contract: /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol:IOwned
Processing contract: /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol:ISmartToken
Processing contract: /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol:ITokenHolder
Processing contract: /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol:IWhitelist
Processing contract: /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol:Managed
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol:SmartTokenController
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol:TokenHolder
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol:Utils
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAO in contract 'BancorConverter':
    |
    |        // execute the conversion and pass on the ETH with the call
  > |        return bancorNetwork.convertForPrioritized2.value(msg.value)(_path, _amount, _minReturn, msg.sender, _block, _v, _r, _s);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(1096)

[33mWarning[0m for UnhandledException in contract 'BancorConverter':
    |        notThis(_to)
    |    {
  > |        assert(_token.transfer(_to, _amount));
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(349)

[33mWarning[0m for UnhandledException in contract 'BancorConverter':
    |    // ensures that the controller is the token's owner
    |    modifier active() {
  > |        assert(token.owner() == address(this));
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(384)

[33mWarning[0m for UnhandledException in contract 'BancorConverter':
    |    // ensures that the controller is not the token's owner
    |    modifier inactive() {
  > |        assert(token.owner() != address(this));
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(390)

[33mWarning[0m for UnhandledException in contract 'BancorConverter':
    |    */
    |    function transferTokenOwnership(address _newOwner) public ownerOnly {
  > |        token.transferOwnership(_newOwner);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(402)

[33mWarning[0m for UnhandledException in contract 'BancorConverter':
    |    */
    |    function acceptTokenOwnership() public ownerOnly {
  > |        token.acceptOwnership();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(410)

[33mWarning[0m for UnhandledException in contract 'BancorConverter':
    |    */
    |    function disableTokenTransfers(bool _disable) public ownerOnly {
  > |        token.disableTransfers(_disable);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(420)

[33mWarning[0m for UnhandledException in contract 'BancorConverter':
    |        ownerOnly
    |    {
  > |        ITokenHolder(token).withdrawTokens(_token, _to, _amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(439)

[33mWarning[0m for UnhandledException in contract 'BancorConverter':
    |    // allows execution by the BancorNetwork contract only
    |    modifier bancorNetworkOnly {
  > |        IBancorNetwork bancorNetwork = IBancorNetwork(registry.getAddress(ContractIds.BANCOR_NETWORK));
    |        require(msg.sender == address(bancorNetwork));
    |        _;
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(588)

[33mWarning[0m for UnhandledException in contract 'BancorConverter':
    |    {
    |        Connector storage connector = connectors[_connectorToken];
  > |        return connector.isVirtualBalanceEnabled ? connector.virtualBalance : _connectorToken.balanceOf(this);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(779)

[33mWarning[0m for UnhandledException in contract 'BancorConverter':
    |        require(connector.isPurchaseEnabled); // validate input
    |
  > |        uint256 tokenSupply = token.totalSupply();
    |        uint256 connectorBalance = getConnectorBalance(_connectorToken);
    |        IBancorFormula formula = IBancorFormula(registry.getAddress(ContractIds.BANCOR_FORMULA));
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(822)

[33mWarning[0m for UnhandledException in contract 'BancorConverter':
    |        uint256 tokenSupply = token.totalSupply();
    |        uint256 connectorBalance = getConnectorBalance(_connectorToken);
  > |        IBancorFormula formula = IBancorFormula(registry.getAddress(ContractIds.BANCOR_FORMULA));
    |        uint256 amount = formula.calculatePurchaseReturn(tokenSupply, connectorBalance, connector.weight, _depositAmount);
    |
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(824)

[33mWarning[0m for UnhandledException in contract 'BancorConverter':
    |        uint256 connectorBalance = getConnectorBalance(_connectorToken);
    |        IBancorFormula formula = IBancorFormula(registry.getAddress(ContractIds.BANCOR_FORMULA));
  > |        uint256 amount = formula.calculatePurchaseReturn(tokenSupply, connectorBalance, connector.weight, _depositAmount);
    |
    |        // return the amount minus the conversion fee
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(825)

[33mWarning[0m for UnhandledException in contract 'BancorConverter':
    |    {
    |        Connector storage connector = connectors[_connectorToken];
  > |        uint256 tokenSupply = token.totalSupply();
    |        uint256 connectorBalance = getConnectorBalance(_connectorToken);
    |        IBancorFormula formula = IBancorFormula(registry.getAddress(ContractIds.BANCOR_FORMULA));
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(847)

[33mWarning[0m for UnhandledException in contract 'BancorConverter':
    |        uint256 tokenSupply = token.totalSupply();
    |        uint256 connectorBalance = getConnectorBalance(_connectorToken);
  > |        IBancorFormula formula = IBancorFormula(registry.getAddress(ContractIds.BANCOR_FORMULA));
    |        uint256 amount = formula.calculateSaleReturn(tokenSupply, connectorBalance, connector.weight, _sellAmount);
    |
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(849)

[33mWarning[0m for UnhandledException in contract 'BancorConverter':
    |        uint256 connectorBalance = getConnectorBalance(_connectorToken);
    |        IBancorFormula formula = IBancorFormula(registry.getAddress(ContractIds.BANCOR_FORMULA));
  > |        uint256 amount = formula.calculateSaleReturn(tokenSupply, connectorBalance, connector.weight, _sellAmount);
    |
    |        // return the amount minus the conversion fee
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(850)

[33mWarning[0m for UnhandledException in contract 'BancorConverter':
    |        uint256 toConnectorBalance = getConnectorBalance(_toConnectorToken);
    |
  > |        IBancorFormula formula = IBancorFormula(registry.getAddress(ContractIds.BANCOR_FORMULA));
    |        uint256 amount = formula.calculateCrossConnectorReturn(fromConnectorBalance, fromConnector.weight, toConnectorBalance, toConnector.weight, _sellAmount);
    |
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(880)

[33mWarning[0m for UnhandledException in contract 'BancorConverter':
    |
    |        IBancorFormula formula = IBancorFormula(registry.getAddress(ContractIds.BANCOR_FORMULA));
  > |        uint256 amount = formula.calculateCrossConnectorReturn(fromConnectorBalance, fromConnector.weight, toConnectorBalance, toConnector.weight, _sellAmount);
    |
    |        // return the amount minus the conversion fee
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(881)

[33mWarning[0m for UnhandledException in contract 'BancorConverter':
    |    */
    |    function sell(IERC20Token _connectorToken, uint256 _sellAmount, uint256 _minReturn) internal returns (uint256) {
  > |        require(_sellAmount <= token.balanceOf(msg.sender)); // validate input
    |
    |        uint256 amount = getSaleReturn(_connectorToken, _sellAmount);
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(1007)

[33mWarning[0m for UnhandledException in contract 'BancorConverter':
    |    {
    |        IERC20Token fromToken = _path[0];
  > |        IBancorNetwork bancorNetwork = IBancorNetwork(registry.getAddress(ContractIds.BANCOR_NETWORK));
    |
    |        // we need to transfer the source tokens from the caller to the BancorNetwork contract,
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(1078)

[33mWarning[0m for UnhandledException in contract 'BancorConverter':
    |            // from the caller and issue them to the BancorNetwork contract
    |            if (fromToken == token) {
  > |                token.destroy(msg.sender, _amount); // destroy _amount tokens from the caller's balance in the smart token
    |                token.issue(bancorNetwork, _amount); // issue _amount new tokens to the BancorNetwork contract
    |            } else {
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(1087)

[33mWarning[0m for UnhandledException in contract 'BancorConverter':
    |            if (fromToken == token) {
    |                token.destroy(msg.sender, _amount); // destroy _amount tokens from the caller's balance in the smart token
  > |                token.issue(bancorNetwork, _amount); // issue _amount new tokens to the BancorNetwork contract
    |            } else {
    |                // otherwise, we assume we already have allowance, transfer the tokens directly to the BancorNetwork contract
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(1088)

[33mWarning[0m for UnhandledException in contract 'BancorConverter':
    |            } else {
    |                // otherwise, we assume we already have allowance, transfer the tokens directly to the BancorNetwork contract
  > |                assert(fromToken.transferFrom(msg.sender, bancorNetwork, _amount));
    |            }
    |        }
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(1091)

[33mWarning[0m for UnhandledException in contract 'BancorConverter':
    |
    |        // execute the conversion and pass on the ETH with the call
  > |        return bancorNetwork.convertForPrioritized2.value(msg.value)(_path, _amount, _minReturn, msg.sender, _block, _v, _r, _s);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(1096)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorConverter':
    |        notThis(_to)
    |    {
  > |        assert(_token.transfer(_to, _amount));
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(349)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorConverter':
    |    // ensures that the controller is the token's owner
    |    modifier active() {
  > |        assert(token.owner() == address(this));
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(384)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorConverter':
    |    // ensures that the controller is not the token's owner
    |    modifier inactive() {
  > |        assert(token.owner() != address(this));
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(390)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorConverter':
    |    */
    |    function transferTokenOwnership(address _newOwner) public ownerOnly {
  > |        token.transferOwnership(_newOwner);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(402)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorConverter':
    |    */
    |    function acceptTokenOwnership() public ownerOnly {
  > |        token.acceptOwnership();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(410)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorConverter':
    |    */
    |    function disableTokenTransfers(bool _disable) public ownerOnly {
  > |        token.disableTransfers(_disable);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(420)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorConverter':
    |        ownerOnly
    |    {
  > |        ITokenHolder(token).withdrawTokens(_token, _to, _amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(439)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorConverter':
    |    // allows execution by the BancorNetwork contract only
    |    modifier bancorNetworkOnly {
  > |        IBancorNetwork bancorNetwork = IBancorNetwork(registry.getAddress(ContractIds.BANCOR_NETWORK));
    |        require(msg.sender == address(bancorNetwork));
    |        _;
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(588)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorConverter':
    |    {
    |        Connector storage connector = connectors[_connectorToken];
  > |        return connector.isVirtualBalanceEnabled ? connector.virtualBalance : _connectorToken.balanceOf(this);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(779)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorConverter':
    |        require(connector.isPurchaseEnabled); // validate input
    |
  > |        uint256 tokenSupply = token.totalSupply();
    |        uint256 connectorBalance = getConnectorBalance(_connectorToken);
    |        IBancorFormula formula = IBancorFormula(registry.getAddress(ContractIds.BANCOR_FORMULA));
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(822)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorConverter':
    |        uint256 tokenSupply = token.totalSupply();
    |        uint256 connectorBalance = getConnectorBalance(_connectorToken);
  > |        IBancorFormula formula = IBancorFormula(registry.getAddress(ContractIds.BANCOR_FORMULA));
    |        uint256 amount = formula.calculatePurchaseReturn(tokenSupply, connectorBalance, connector.weight, _depositAmount);
    |
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(824)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorConverter':
    |        uint256 connectorBalance = getConnectorBalance(_connectorToken);
    |        IBancorFormula formula = IBancorFormula(registry.getAddress(ContractIds.BANCOR_FORMULA));
  > |        uint256 amount = formula.calculatePurchaseReturn(tokenSupply, connectorBalance, connector.weight, _depositAmount);
    |
    |        // return the amount minus the conversion fee
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(825)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorConverter':
    |    {
    |        Connector storage connector = connectors[_connectorToken];
  > |        uint256 tokenSupply = token.totalSupply();
    |        uint256 connectorBalance = getConnectorBalance(_connectorToken);
    |        IBancorFormula formula = IBancorFormula(registry.getAddress(ContractIds.BANCOR_FORMULA));
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(847)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorConverter':
    |        uint256 tokenSupply = token.totalSupply();
    |        uint256 connectorBalance = getConnectorBalance(_connectorToken);
  > |        IBancorFormula formula = IBancorFormula(registry.getAddress(ContractIds.BANCOR_FORMULA));
    |        uint256 amount = formula.calculateSaleReturn(tokenSupply, connectorBalance, connector.weight, _sellAmount);
    |
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(849)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorConverter':
    |        uint256 connectorBalance = getConnectorBalance(_connectorToken);
    |        IBancorFormula formula = IBancorFormula(registry.getAddress(ContractIds.BANCOR_FORMULA));
  > |        uint256 amount = formula.calculateSaleReturn(tokenSupply, connectorBalance, connector.weight, _sellAmount);
    |
    |        // return the amount minus the conversion fee
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(850)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorConverter':
    |        uint256 toConnectorBalance = getConnectorBalance(_toConnectorToken);
    |
  > |        IBancorFormula formula = IBancorFormula(registry.getAddress(ContractIds.BANCOR_FORMULA));
    |        uint256 amount = formula.calculateCrossConnectorReturn(fromConnectorBalance, fromConnector.weight, toConnectorBalance, toConnector.weight, _sellAmount);
    |
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(880)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorConverter':
    |
    |        IBancorFormula formula = IBancorFormula(registry.getAddress(ContractIds.BANCOR_FORMULA));
  > |        uint256 amount = formula.calculateCrossConnectorReturn(fromConnectorBalance, fromConnector.weight, toConnectorBalance, toConnector.weight, _sellAmount);
    |
    |        // return the amount minus the conversion fee
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(881)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorConverter':
    |    */
    |    function sell(IERC20Token _connectorToken, uint256 _sellAmount, uint256 _minReturn) internal returns (uint256) {
  > |        require(_sellAmount <= token.balanceOf(msg.sender)); // validate input
    |
    |        uint256 amount = getSaleReturn(_connectorToken, _sellAmount);
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(1007)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorConverter':
    |    {
    |        IERC20Token fromToken = _path[0];
  > |        IBancorNetwork bancorNetwork = IBancorNetwork(registry.getAddress(ContractIds.BANCOR_NETWORK));
    |
    |        // we need to transfer the source tokens from the caller to the BancorNetwork contract,
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(1078)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorConverter':
    |            // from the caller and issue them to the BancorNetwork contract
    |            if (fromToken == token) {
  > |                token.destroy(msg.sender, _amount); // destroy _amount tokens from the caller's balance in the smart token
    |                token.issue(bancorNetwork, _amount); // issue _amount new tokens to the BancorNetwork contract
    |            } else {
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(1087)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorConverter':
    |            if (fromToken == token) {
    |                token.destroy(msg.sender, _amount); // destroy _amount tokens from the caller's balance in the smart token
  > |                token.issue(bancorNetwork, _amount); // issue _amount new tokens to the BancorNetwork contract
    |            } else {
    |                // otherwise, we assume we already have allowance, transfer the tokens directly to the BancorNetwork contract
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(1088)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorConverter':
    |            } else {
    |                // otherwise, we assume we already have allowance, transfer the tokens directly to the BancorNetwork contract
  > |                assert(fromToken.transferFrom(msg.sender, bancorNetwork, _amount));
    |            }
    |        }
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(1091)

[31mViolation[0m for UnrestrictedWrite in contract 'BancorConverter':
    |    - Possibly add getters for the connector fields so that the client won't need to rely on the order in the struct
    |*/
  > |contract BancorConverter is IBancorConverter, SmartTokenController, Managed, ContractIds, FeatureIds {
    |    uint32 private constant MAX_WEIGHT = 1000000;
    |    uint64 private constant MAX_CONVERSION_FEE = 1000000;
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(464)

[33mWarning[0m for UnrestrictedWrite in contract 'BancorConverter':
    |
    |/*
  > |    Owned contract interface
    |*/
    |contract IOwned {
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(4)

[33mWarning[0m for UnrestrictedWrite in contract 'BancorConverter':
    |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(223)

[33mWarning[0m for UnrestrictedWrite in contract 'BancorConverter':
    |    - Possibly add getters for the connector fields so that the client won't need to rely on the order in the struct
    |*/
  > |contract BancorConverter is IBancorConverter, SmartTokenController, Managed, ContractIds, FeatureIds {
    |    uint32 private constant MAX_WEIGHT = 1000000;
    |    uint64 private constant MAX_CONVERSION_FEE = 1000000;
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(464)

[33mWarning[0m for UnrestrictedWrite in contract 'BancorConverter':
    |        notThis(_registry)
    |    {
  > |        registry = _registry;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(613)

[33mWarning[0m for UnrestrictedWrite in contract 'BancorConverter':
    |        notThis(_whitelist)
    |    {
  > |        conversionWhitelist = _whitelist;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(628)

[33mWarning[0m for UnrestrictedWrite in contract 'BancorConverter':
    |        require(_token != token && !connectors[_token].isSet && totalConnectorWeight + _weight <= MAX_WEIGHT); // validate input
    |
  > |        connectors[_token].virtualBalance = 0;
    |        connectors[_token].weight = _weight;
    |        connectors[_token].isVirtualBalanceEnabled = _enableVirtualBalance;
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(716)

[33mWarning[0m for UnrestrictedWrite in contract 'BancorConverter':
    |
    |        connectors[_token].virtualBalance = 0;
  > |        connectors[_token].weight = _weight;
    |        connectors[_token].isVirtualBalanceEnabled = _enableVirtualBalance;
    |        connectors[_token].isPurchaseEnabled = true;
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(717)

[33mWarning[0m for UnrestrictedWrite in contract 'BancorConverter':
    |        connectors[_token].virtualBalance = 0;
    |        connectors[_token].weight = _weight;
  > |        connectors[_token].isVirtualBalanceEnabled = _enableVirtualBalance;
    |        connectors[_token].isPurchaseEnabled = true;
    |        connectors[_token].isSet = true;
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(718)

[33mWarning[0m for UnrestrictedWrite in contract 'BancorConverter':
    |        connectors[_token].weight = _weight;
    |        connectors[_token].isVirtualBalanceEnabled = _enableVirtualBalance;
  > |        connectors[_token].isPurchaseEnabled = true;
    |        connectors[_token].isSet = true;
    |        connectorTokens.push(_token);
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(719)

[33mWarning[0m for UnrestrictedWrite in contract 'BancorConverter':
    |        connectors[_token].isVirtualBalanceEnabled = _enableVirtualBalance;
    |        connectors[_token].isPurchaseEnabled = true;
  > |        connectors[_token].isSet = true;
    |        connectorTokens.push(_token);
    |        totalConnectorWeight += _weight;
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(720)

[33mWarning[0m for UnrestrictedWrite in contract 'BancorConverter':
    |        connectors[_token].isPurchaseEnabled = true;
    |        connectors[_token].isSet = true;
  > |        connectorTokens.push(_token);
    |        totalConnectorWeight += _weight;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(721)

[33mWarning[0m for UnrestrictedWrite in contract 'BancorConverter':
    |        connectors[_token].isSet = true;
    |        connectorTokens.push(_token);
  > |        totalConnectorWeight += _weight;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(722)

[33mWarning[0m for UnrestrictedWrite in contract 'BancorConverter':
    |        require(totalConnectorWeight - connector.weight + _weight <= MAX_WEIGHT); // validate input
    |
  > |        totalConnectorWeight = totalConnectorWeight - connector.weight + _weight;
    |        connector.weight = _weight;
    |        connector.isVirtualBalanceEnabled = _enableVirtualBalance;
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(743)

[33mWarning[0m for UnrestrictedWrite in contract 'BancorConverter':
    |
    |        totalConnectorWeight = totalConnectorWeight - connector.weight + _weight;
  > |        connector.weight = _weight;
    |        connector.isVirtualBalanceEnabled = _enableVirtualBalance;
    |        connector.virtualBalance = _virtualBalance;
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(744)

[33mWarning[0m for UnrestrictedWrite in contract 'BancorConverter':
    |        totalConnectorWeight = totalConnectorWeight - connector.weight + _weight;
    |        connector.weight = _weight;
  > |        connector.isVirtualBalanceEnabled = _enableVirtualBalance;
    |        connector.virtualBalance = _virtualBalance;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(745)

[33mWarning[0m for UnrestrictedWrite in contract 'BancorConverter':
    |        connector.weight = _weight;
    |        connector.isVirtualBalanceEnabled = _enableVirtualBalance;
  > |        connector.virtualBalance = _virtualBalance;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(746)

[33mWarning[0m for UnrestrictedWrite in contract 'BancorConverter':
    |        validConnector(_connectorToken)
    |    {
  > |        connectors[_connectorToken].isPurchaseEnabled = !_disable;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(762)

[33mWarning[0m for UnrestrictedWrite in contract 'BancorConverter':
    |        require(msg.sender == newOwner);
    |        emit OwnerUpdate(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(232)

[33mWarning[0m for UnrestrictedWrite in contract 'BancorConverter':
    |        emit OwnerUpdate(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(233)

[33mWarning[0m for UnrestrictedWrite in contract 'BancorConverter':
    |    function transferManagement(address _newManager) public ownerOrManagerOnly {
    |        require(_newManager != manager);
  > |        newManager = _newManager;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(275)

[33mWarning[0m for UnrestrictedWrite in contract 'BancorConverter':
    |        require(msg.sender == newManager);
    |        emit ManagerUpdate(manager, newManager);
  > |        manager = newManager;
    |        newManager = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(284)

[33mWarning[0m for UnrestrictedWrite in contract 'BancorConverter':
    |        emit ManagerUpdate(manager, newManager);
    |        manager = newManager;
  > |        newManager = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(285)

[33mWarning[0m for UnrestrictedWrite in contract 'BancorConverter':
    |    */
    |    function disableConversions(bool _disable) public ownerOrManagerOnly {
  > |        conversionsEnabled = !_disable;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(668)

[33mWarning[0m for UnrestrictedWrite in contract 'BancorConverter':
    |    {
    |        emit ConversionFeeUpdate(conversionFee, _conversionFee);
  > |        conversionFee = _conversionFee;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(683)

[33mWarning[0m for LockedEther in contract 'ContractIds':
    |    Can be used in conjunction with the contract registry to get contract addresses
    |*/
  > |contract ContractIds {
    |    // generic
    |    bytes32 public constant CONTRACT_FEATURES = "ContractFeatures";
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(294)

[33mWarning[0m for MissingInputValidation in contract 'ContractIds':
    |contract ContractIds {
    |    // generic
  > |    bytes32 public constant CONTRACT_FEATURES = "ContractFeatures";
    |
    |    // bancor logic
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(296)

[33mWarning[0m for MissingInputValidation in contract 'ContractIds':
    |
    |    // bancor logic
  > |    bytes32 public constant BANCOR_NETWORK = "BancorNetwork";
    |    bytes32 public constant BANCOR_FORMULA = "BancorFormula";
    |    bytes32 public constant BANCOR_GAS_PRICE_LIMIT = "BancorGasPriceLimit";
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(299)

[33mWarning[0m for MissingInputValidation in contract 'ContractIds':
    |    // bancor logic
    |    bytes32 public constant BANCOR_NETWORK = "BancorNetwork";
  > |    bytes32 public constant BANCOR_FORMULA = "BancorFormula";
    |    bytes32 public constant BANCOR_GAS_PRICE_LIMIT = "BancorGasPriceLimit";
    |
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(300)

[33mWarning[0m for MissingInputValidation in contract 'ContractIds':
    |    bytes32 public constant BANCOR_NETWORK = "BancorNetwork";
    |    bytes32 public constant BANCOR_FORMULA = "BancorFormula";
  > |    bytes32 public constant BANCOR_GAS_PRICE_LIMIT = "BancorGasPriceLimit";
    |
    |    bytes32 public constant BANCOR_CONVERTER_FACTORY = "BancorConverterFactory";
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(301)

[33mWarning[0m for MissingInputValidation in contract 'ContractIds':
    |    bytes32 public constant BANCOR_GAS_PRICE_LIMIT = "BancorGasPriceLimit";
    |
  > |    bytes32 public constant BANCOR_CONVERTER_FACTORY = "BancorConverterFactory";
    |    bytes32 public constant BANCOR_CONVERTER_UPGRADER = "BancorConverterUpgrader";
    |
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(303)

[33mWarning[0m for MissingInputValidation in contract 'ContractIds':
    |
    |    bytes32 public constant BANCOR_CONVERTER_FACTORY = "BancorConverterFactory";
  > |    bytes32 public constant BANCOR_CONVERTER_UPGRADER = "BancorConverterUpgrader";
    |
    |    // tokens
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(304)

[33mWarning[0m for MissingInputValidation in contract 'ContractIds':
    |
    |    // tokens
  > |    bytes32 public constant BNT_TOKEN = "BNTToken";
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(307)

[33mWarning[0m for LockedEther in contract 'FeatureIds':
    |    Can be used to query the ContractFeatures contract to check whether a certain feature is supported by a contract
    |*/
  > |contract FeatureIds {
    |    // converter features
    |    uint256 public constant CONVERTER_CONVERSION_WHITELIST = 1 << 0;
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(315)

[33mWarning[0m for MissingInputValidation in contract 'FeatureIds':
    |contract FeatureIds {
    |    // converter features
  > |    uint256 public constant CONVERTER_CONVERSION_WHITELIST = 1 << 0;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(317)

[33mWarning[0m for LockedEther in contract 'Managed':
    |    Note that a managed contract must also have an owner
    |*/
  > |contract Managed is Owned {
    |    address public manager;
    |    address public newManager;
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(241)

[33mWarning[0m for MissingInputValidation in contract 'Managed':
    |*/
    |contract Owned is IOwned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(196)

[33mWarning[0m for MissingInputValidation in contract 'Managed':
    |contract Owned is IOwned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnerUpdate(address indexed _prevOwner, address indexed _newOwner);
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(197)

[33mWarning[0m for MissingInputValidation in contract 'Managed':
    |        @param _newOwner    new contract owner
    |    */
  > |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
    |        newOwner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(221)

[33mWarning[0m for MissingInputValidation in contract 'Managed':
    |        @dev used by a new owner to accept an ownership transfer
    |    */
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        emit OwnerUpdate(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(229)

[33mWarning[0m for MissingInputValidation in contract 'Managed':
    |*/
    |contract Managed is Owned {
  > |    address public manager;
    |    address public newManager;
    |
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(242)

[33mWarning[0m for MissingInputValidation in contract 'Managed':
    |contract Managed is Owned {
    |    address public manager;
  > |    address public newManager;
    |
    |    event ManagerUpdate(address indexed _prevManager, address indexed _newManager);
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(243)

[33mWarning[0m for MissingInputValidation in contract 'Managed':
    |        @param _newManager    new contract manager
    |    */
  > |    function transferManagement(address _newManager) public ownerOrManagerOnly {
    |        require(_newManager != manager);
    |        newManager = _newManager;
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(273)

[33mWarning[0m for MissingInputValidation in contract 'Managed':
    |        @dev used by a new manager to accept a management transfer
    |    */
  > |    function acceptManagement() public {
    |        require(msg.sender == newManager);
    |        emit ManagerUpdate(manager, newManager);
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(281)

[33mWarning[0m for UnrestrictedWrite in contract 'Managed':
    |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(223)

[33mWarning[0m for UnrestrictedWrite in contract 'Managed':
    |        require(msg.sender == newOwner);
    |        emit OwnerUpdate(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(232)

[33mWarning[0m for UnrestrictedWrite in contract 'Managed':
    |        emit OwnerUpdate(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(233)

[33mWarning[0m for UnrestrictedWrite in contract 'Managed':
    |    function transferManagement(address _newManager) public ownerOrManagerOnly {
    |        require(_newManager != manager);
  > |        newManager = _newManager;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(275)

[33mWarning[0m for UnrestrictedWrite in contract 'Managed':
    |        require(msg.sender == newManager);
    |        emit ManagerUpdate(manager, newManager);
  > |        manager = newManager;
    |        newManager = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(284)

[33mWarning[0m for UnrestrictedWrite in contract 'Managed':
    |        emit ManagerUpdate(manager, newManager);
    |        manager = newManager;
  > |        newManager = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(285)

[33mWarning[0m for LockedEther in contract 'Owned':
    |    Provides support and utilities for contract ownership
    |*/
  > |contract Owned is IOwned {
    |    address public owner;
    |    address public newOwner;
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(195)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |*/
    |contract Owned is IOwned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(196)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned is IOwned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnerUpdate(address indexed _prevOwner, address indexed _newOwner);
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(197)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |        @param _newOwner    new contract owner
    |    */
  > |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
    |        newOwner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(221)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |        @dev used by a new owner to accept an ownership transfer
    |    */
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        emit OwnerUpdate(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(229)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(223)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(msg.sender == newOwner);
    |        emit OwnerUpdate(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(232)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        emit OwnerUpdate(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(233)

[33mWarning[0m for LockedEther in contract 'SmartTokenController':
    |    Doing that will also remove the owner's ability to upgrade the controller.
    |*/
  > |contract SmartTokenController is TokenHolder {
    |    ISmartToken public token;   // smart token
    |
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(369)

[31mViolation[0m for MissingInputValidation in contract 'SmartTokenController':
    |        @param _amount  amount to withdraw
    |    */
  > |    function withdrawTokens(IERC20Token _token, address _to, uint256 _amount)
    |        public
    |        ownerOnly
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(342)

[31mViolation[0m for MissingInputValidation in contract 'SmartTokenController':
    |        @param _newOwner    new token owner
    |    */
  > |    function transferTokenOwnership(address _newOwner) public ownerOnly {
    |        token.transferOwnership(_newOwner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(401)

[31mViolation[0m for MissingInputValidation in contract 'SmartTokenController':
    |        @param _disable    true to disable transfers, false to enable them
    |    */
  > |    function disableTokenTransfers(bool _disable) public ownerOnly {
    |        token.disableTransfers(_disable);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(419)

[31mViolation[0m for MissingInputValidation in contract 'SmartTokenController':
    |        @param _amount  amount to withdraw
    |    */
  > |    function withdrawFromToken(
    |        IERC20Token _token, 
    |        address _to, 
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(431)

[33mWarning[0m for MissingInputValidation in contract 'SmartTokenController':
    |*/
    |contract Owned is IOwned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(196)

[33mWarning[0m for MissingInputValidation in contract 'SmartTokenController':
    |contract Owned is IOwned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnerUpdate(address indexed _prevOwner, address indexed _newOwner);
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(197)

[33mWarning[0m for MissingInputValidation in contract 'SmartTokenController':
    |        @param _newOwner    new contract owner
    |    */
  > |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
    |        newOwner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(221)

[33mWarning[0m for MissingInputValidation in contract 'SmartTokenController':
    |        @dev used by a new owner to accept an ownership transfer
    |    */
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        emit OwnerUpdate(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(229)

[33mWarning[0m for MissingInputValidation in contract 'SmartTokenController':
    |*/
    |contract SmartTokenController is TokenHolder {
  > |    ISmartToken public token;   // smart token
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(370)

[33mWarning[0m for MissingInputValidation in contract 'SmartTokenController':
    |        can only be called by the contract owner
    |    */
  > |    function acceptTokenOwnership() public ownerOnly {
    |        token.acceptOwnership();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(409)

[33mWarning[0m for UnhandledException in contract 'SmartTokenController':
    |        notThis(_to)
    |    {
  > |        assert(_token.transfer(_to, _amount));
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(349)

[33mWarning[0m for UnhandledException in contract 'SmartTokenController':
    |    */
    |    function transferTokenOwnership(address _newOwner) public ownerOnly {
  > |        token.transferOwnership(_newOwner);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(402)

[33mWarning[0m for UnhandledException in contract 'SmartTokenController':
    |    */
    |    function acceptTokenOwnership() public ownerOnly {
  > |        token.acceptOwnership();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(410)

[33mWarning[0m for UnhandledException in contract 'SmartTokenController':
    |    */
    |    function disableTokenTransfers(bool _disable) public ownerOnly {
  > |        token.disableTransfers(_disable);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(420)

[33mWarning[0m for UnhandledException in contract 'SmartTokenController':
    |        ownerOnly
    |    {
  > |        ITokenHolder(token).withdrawTokens(_token, _to, _amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(439)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SmartTokenController':
    |        notThis(_to)
    |    {
  > |        assert(_token.transfer(_to, _amount));
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(349)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SmartTokenController':
    |    */
    |    function transferTokenOwnership(address _newOwner) public ownerOnly {
  > |        token.transferOwnership(_newOwner);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(402)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SmartTokenController':
    |    */
    |    function acceptTokenOwnership() public ownerOnly {
  > |        token.acceptOwnership();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(410)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SmartTokenController':
    |    */
    |    function disableTokenTransfers(bool _disable) public ownerOnly {
  > |        token.disableTransfers(_disable);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(420)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SmartTokenController':
    |        ownerOnly
    |    {
  > |        ITokenHolder(token).withdrawTokens(_token, _to, _amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(439)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartTokenController':
    |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(223)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartTokenController':
    |        require(msg.sender == newOwner);
    |        emit OwnerUpdate(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(232)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartTokenController':
    |        emit OwnerUpdate(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(233)

[33mWarning[0m for LockedEther in contract 'TokenHolder':
    |    the owner to send tokens that were sent to the contract by mistake back to their sender.
    |*/
  > |contract TokenHolder is ITokenHolder, Owned, Utils {
    |    /**
    |        @dev constructor
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(327)

[31mViolation[0m for MissingInputValidation in contract 'TokenHolder':
    |        @param _amount  amount to withdraw
    |    */
  > |    function withdrawTokens(IERC20Token _token, address _to, uint256 _amount)
    |        public
    |        ownerOnly
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(342)

[33mWarning[0m for MissingInputValidation in contract 'TokenHolder':
    |*/
    |contract Owned is IOwned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(196)

[33mWarning[0m for MissingInputValidation in contract 'TokenHolder':
    |contract Owned is IOwned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnerUpdate(address indexed _prevOwner, address indexed _newOwner);
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(197)

[33mWarning[0m for MissingInputValidation in contract 'TokenHolder':
    |        @param _newOwner    new contract owner
    |    */
  > |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
    |        newOwner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(221)

[33mWarning[0m for MissingInputValidation in contract 'TokenHolder':
    |        @dev used by a new owner to accept an ownership transfer
    |    */
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        emit OwnerUpdate(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(229)

[33mWarning[0m for UnhandledException in contract 'TokenHolder':
    |        notThis(_to)
    |    {
  > |        assert(_token.transfer(_to, _amount));
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(349)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenHolder':
    |        notThis(_to)
    |    {
  > |        assert(_token.transfer(_to, _amount));
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(349)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenHolder':
    |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(223)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenHolder':
    |        require(msg.sender == newOwner);
    |        emit OwnerUpdate(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(232)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenHolder':
    |        emit OwnerUpdate(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(233)

[33mWarning[0m for LockedEther in contract 'Utils':
    |    Utilities & Common Modifiers
    |*/
  > |contract Utils {
    |    /**
    |        constructor
  at /home/jiaming/mavs_srcs/contract@0x3839416bd0095d97be9b354cbfb0f6807d4d609e.sol(123)


