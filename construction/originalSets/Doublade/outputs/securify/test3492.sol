Processing contract: /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol:BancorChanger
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol:BancorLender
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol:IBancorFormula
Processing contract: /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol:IERC20Token
Processing contract: /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol:IEtherToken
Processing contract: /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol:IOwned
Processing contract: /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol:ISmartToken
Processing contract: /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol:ITokenChanger
Processing contract: /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol:ITokenHolder
Processing contract: /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol:Managed
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol:SmartTokenController
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol:TokenHolder
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol:Utils
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAO in contract 'BancorChanger':
    |        IEtherToken etherToken = IEtherToken(quickBuyPath[0]);
    |        // deposit ETH in the ether token
  > |        etherToken.deposit.value(msg.value)();
    |        // get the initial changer in the path
    |        ISmartToken smartToken = ISmartToken(quickBuyPath[1]);
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(920)

[33mWarning[0m for UnhandledException in contract 'BancorChanger':
    |        notThis(_to)
    |    {
  > |        assert(_token.transfer(_to, _amount));
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(212)

[33mWarning[0m for UnhandledException in contract 'BancorChanger':
    |    // ensures that the controller is the token's owner
    |    modifier active() {
  > |        assert(token.owner() == address(this));
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(246)

[33mWarning[0m for UnhandledException in contract 'BancorChanger':
    |    // ensures that the controller is not the token's owner
    |    modifier inactive() {
  > |        assert(token.owner() != address(this));
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(252)

[33mWarning[0m for UnhandledException in contract 'BancorChanger':
    |    */
    |    function transferTokenOwnership(address _newOwner) public ownerOnly {
  > |        token.transferOwnership(_newOwner);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(264)

[33mWarning[0m for UnhandledException in contract 'BancorChanger':
    |    */
    |    function acceptTokenOwnership() public ownerOnly {
  > |        token.acceptOwnership();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(272)

[33mWarning[0m for UnhandledException in contract 'BancorChanger':
    |    */
    |    function disableTokenTransfers(bool _disable) public ownerOnly {
  > |        token.disableTransfers(_disable);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(282)

[33mWarning[0m for UnhandledException in contract 'BancorChanger':
    |    */
    |    function withdrawFromToken(IERC20Token _token, address _to, uint256 _amount) public ownerOnly {
  > |        token.withdrawTokens(_token, _to, _amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(294)

[33mWarning[0m for UnhandledException in contract 'BancorChanger':
    |    {
    |        Reserve storage reserve = reserves[_reserveToken];
  > |        return reserve.isVirtualBalanceEnabled ? reserve.virtualBalance : _reserveToken.balanceOf(this);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(686)

[33mWarning[0m for UnhandledException in contract 'BancorChanger':
    |        // change between 2 reserves
    |        uint256 purchaseReturnAmount = getPurchaseReturn(_fromToken, _amount);
  > |        return getSaleReturn(_toToken, purchaseReturnAmount, safeAdd(token.totalSupply(), purchaseReturnAmount));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(709)

[33mWarning[0m for UnhandledException in contract 'BancorChanger':
    |        require(reserve.isPurchaseEnabled); // validate input
    |
  > |        uint256 tokenSupply = token.totalSupply();
    |        uint256 reserveBalance = getReserveBalance(_reserveToken);
    |        amount = formula.calculatePurchaseReturn(tokenSupply, reserveBalance, reserve.ratio, _depositAmount);
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(730)

[33mWarning[0m for UnhandledException in contract 'BancorChanger':
    |        uint256 tokenSupply = token.totalSupply();
    |        uint256 reserveBalance = getReserveBalance(_reserveToken);
  > |        amount = formula.calculatePurchaseReturn(tokenSupply, reserveBalance, reserve.ratio, _depositAmount);
    |
    |        // deduct the fee from the return amount
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(732)

[33mWarning[0m for UnhandledException in contract 'BancorChanger':
    |    */
    |    function getSaleReturn(IERC20Token _reserveToken, uint256 _sellAmount) public constant returns (uint256 amount) {
  > |        return getSaleReturn(_reserveToken, _sellAmount, token.totalSupply());
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(748)

[33mWarning[0m for UnhandledException in contract 'BancorChanger':
    |            reserve.virtualBalance = safeAdd(reserve.virtualBalance, _depositAmount);
    |
  > |        assert(_reserveToken.transferFrom(msg.sender, this, _depositAmount)); // transfer _depositAmount funds from the caller in the reserve token
    |        token.issue(msg.sender, amount); // issue new funds to the caller in the smart token
    |
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(798)

[33mWarning[0m for UnhandledException in contract 'BancorChanger':
    |
    |        assert(_reserveToken.transferFrom(msg.sender, this, _depositAmount)); // transfer _depositAmount funds from the caller in the reserve token
  > |        token.issue(msg.sender, amount); // issue new funds to the caller in the smart token
    |
    |        // calculate the new price using the simple price formula
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(799)

[33mWarning[0m for UnhandledException in contract 'BancorChanger':
    |        // CRR is represented in ppm, so multiplying by 1000000
    |        uint256 reserveAmount = safeMul(getReserveBalance(_reserveToken), MAX_CRR);
  > |        uint256 tokenAmount = safeMul(token.totalSupply(), reserve.ratio);
    |        Change(_reserveToken, token, msg.sender, _depositAmount, amount, reserveAmount, tokenAmount);
    |        return amount;
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(805)

[33mWarning[0m for UnhandledException in contract 'BancorChanger':
    |        returns (uint256 amount)
    |    {
  > |        require(_sellAmount <= token.balanceOf(msg.sender)); // validate input
    |
    |        amount = getSaleReturn(_reserveToken, _sellAmount);
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(825)

[33mWarning[0m for UnhandledException in contract 'BancorChanger':
    |            smartToken = ISmartToken(_path[i]);
    |            toToken = _path[i + 1];
  > |            changer = BancorChanger(smartToken.owner());
    |
    |            // if the smart token isn't the source (from token), the changer doesn't have control over it and thus we need to approve the request
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(881)

[33mWarning[0m for UnhandledException in contract 'BancorChanger':
    |
    |            // make the change - if it's the last one, also provide the minimum return value
  > |            _amount = changer.change(fromToken, toToken, _amount, i == pathLength - 2 ? _minReturn : 1);
    |            fromToken = toToken;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(888)

[33mWarning[0m for UnhandledException in contract 'BancorChanger':
    |        // finished the change, transfer the funds back to the caller
    |        // if the last change resulted in ether tokens, withdraw them and send them as ETH to the caller
  > |        if (changer.hasQuickBuyEtherToken() && changer.getQuickBuyEtherToken() == toToken) {
    |            IEtherToken etherToken = IEtherToken(toToken);
    |            etherToken.withdrawTo(msg.sender, _amount);
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(894)

[33mWarning[0m for UnhandledException in contract 'BancorChanger':
    |        if (changer.hasQuickBuyEtherToken() && changer.getQuickBuyEtherToken() == toToken) {
    |            IEtherToken etherToken = IEtherToken(toToken);
  > |            etherToken.withdrawTo(msg.sender, _amount);
    |        }
    |        else {
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(896)

[33mWarning[0m for UnhandledException in contract 'BancorChanger':
    |        else {
    |            // not ETH, transfer the tokens to the caller
  > |            assert(toToken.transfer(msg.sender, _amount));
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(900)

[33mWarning[0m for UnhandledException in contract 'BancorChanger':
    |        IEtherToken etherToken = IEtherToken(quickBuyPath[0]);
    |        // deposit ETH in the ether token
  > |        etherToken.deposit.value(msg.value)();
    |        // get the initial changer in the path
    |        ISmartToken smartToken = ISmartToken(quickBuyPath[1]);
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(920)

[33mWarning[0m for UnhandledException in contract 'BancorChanger':
    |        // get the initial changer in the path
    |        ISmartToken smartToken = ISmartToken(quickBuyPath[1]);
  > |        BancorChanger changer = BancorChanger(smartToken.owner());
    |        // approve allowance for the changer in the ether token
    |        ensureAllowance(etherToken, changer, msg.value);
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(923)

[33mWarning[0m for UnhandledException in contract 'BancorChanger':
    |        ensureAllowance(etherToken, changer, msg.value);
    |        // execute the change
  > |        uint256 returnAmount = changer.quickChange(quickBuyPath, msg.value, _minReturn);
    |        // transfer the tokens to the caller
    |        assert(token.transfer(msg.sender, returnAmount));
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(927)

[33mWarning[0m for UnhandledException in contract 'BancorChanger':
    |        uint256 returnAmount = changer.quickChange(quickBuyPath, msg.value, _minReturn);
    |        // transfer the tokens to the caller
  > |        assert(token.transfer(msg.sender, returnAmount));
    |        return returnAmount;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(929)

[33mWarning[0m for UnhandledException in contract 'BancorChanger':
    |        Reserve storage reserve = reserves[_reserveToken];
    |        uint256 reserveBalance = getReserveBalance(_reserveToken);
  > |        amount = formula.calculateSaleReturn(_totalSupply, reserveBalance, reserve.ratio, _sellAmount);
    |
    |        // deduct the fee from the return amount
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(952)

[33mWarning[0m for UnhandledException in contract 'BancorChanger':
    |    function ensureAllowance(IERC20Token _token, address _spender, uint256 _value) private {
    |        // check if allowance for the given amount already exists
  > |        if (_token.allowance(this, _spender) >= _value)
    |            return;
    |
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(968)

[33mWarning[0m for UnhandledException in contract 'BancorChanger':
    |
    |        // if the allowance is nonzero, must reset it to 0 first
  > |        if (_token.allowance(this, _spender) != 0)
    |            assert(_token.approve(_spender, 0));
    |
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(972)

[33mWarning[0m for UnhandledException in contract 'BancorChanger':
    |        // if the allowance is nonzero, must reset it to 0 first
    |        if (_token.allowance(this, _spender) != 0)
  > |            assert(_token.approve(_spender, 0));
    |
    |        // approve the new allowance
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(973)

[33mWarning[0m for UnhandledException in contract 'BancorChanger':
    |
    |        // approve the new allowance
  > |        assert(_token.approve(_spender, _value));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(976)

[33mWarning[0m for UnhandledException in contract 'BancorChanger':
    |        // if the token is the smart token, no allowance is required - destroy the tokens from the caller and issue them to the local contract
    |        if (_token == token) {
  > |            token.destroy(_from, _amount); // destroy _amount tokens from the caller's balance in the smart token
    |            token.issue(this, _amount); // issue _amount new tokens to the local contract
    |            return;
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(989)

[33mWarning[0m for UnhandledException in contract 'BancorChanger':
    |        if (_token == token) {
    |            token.destroy(_from, _amount); // destroy _amount tokens from the caller's balance in the smart token
  > |            token.issue(this, _amount); // issue _amount new tokens to the local contract
    |            return;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(990)

[33mWarning[0m for UnhandledException in contract 'BancorChanger':
    |
    |        // otherwise, we assume we already have allowance
  > |        assert(_token.transferFrom(_from, this, _amount));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(995)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorChanger':
    |        notThis(_to)
    |    {
  > |        assert(_token.transfer(_to, _amount));
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(212)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorChanger':
    |    // ensures that the controller is the token's owner
    |    modifier active() {
  > |        assert(token.owner() == address(this));
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(246)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorChanger':
    |    // ensures that the controller is not the token's owner
    |    modifier inactive() {
  > |        assert(token.owner() != address(this));
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(252)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorChanger':
    |    */
    |    function transferTokenOwnership(address _newOwner) public ownerOnly {
  > |        token.transferOwnership(_newOwner);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(264)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorChanger':
    |    */
    |    function acceptTokenOwnership() public ownerOnly {
  > |        token.acceptOwnership();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(272)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorChanger':
    |    */
    |    function disableTokenTransfers(bool _disable) public ownerOnly {
  > |        token.disableTransfers(_disable);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(282)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorChanger':
    |    */
    |    function withdrawFromToken(IERC20Token _token, address _to, uint256 _amount) public ownerOnly {
  > |        token.withdrawTokens(_token, _to, _amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(294)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorChanger':
    |    {
    |        Reserve storage reserve = reserves[_reserveToken];
  > |        return reserve.isVirtualBalanceEnabled ? reserve.virtualBalance : _reserveToken.balanceOf(this);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(686)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorChanger':
    |        // change between 2 reserves
    |        uint256 purchaseReturnAmount = getPurchaseReturn(_fromToken, _amount);
  > |        return getSaleReturn(_toToken, purchaseReturnAmount, safeAdd(token.totalSupply(), purchaseReturnAmount));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(709)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorChanger':
    |        require(reserve.isPurchaseEnabled); // validate input
    |
  > |        uint256 tokenSupply = token.totalSupply();
    |        uint256 reserveBalance = getReserveBalance(_reserveToken);
    |        amount = formula.calculatePurchaseReturn(tokenSupply, reserveBalance, reserve.ratio, _depositAmount);
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(730)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorChanger':
    |        uint256 tokenSupply = token.totalSupply();
    |        uint256 reserveBalance = getReserveBalance(_reserveToken);
  > |        amount = formula.calculatePurchaseReturn(tokenSupply, reserveBalance, reserve.ratio, _depositAmount);
    |
    |        // deduct the fee from the return amount
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(732)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorChanger':
    |    */
    |    function getSaleReturn(IERC20Token _reserveToken, uint256 _sellAmount) public constant returns (uint256 amount) {
  > |        return getSaleReturn(_reserveToken, _sellAmount, token.totalSupply());
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(748)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorChanger':
    |            reserve.virtualBalance = safeAdd(reserve.virtualBalance, _depositAmount);
    |
  > |        assert(_reserveToken.transferFrom(msg.sender, this, _depositAmount)); // transfer _depositAmount funds from the caller in the reserve token
    |        token.issue(msg.sender, amount); // issue new funds to the caller in the smart token
    |
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(798)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorChanger':
    |
    |        assert(_reserveToken.transferFrom(msg.sender, this, _depositAmount)); // transfer _depositAmount funds from the caller in the reserve token
  > |        token.issue(msg.sender, amount); // issue new funds to the caller in the smart token
    |
    |        // calculate the new price using the simple price formula
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(799)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorChanger':
    |        // CRR is represented in ppm, so multiplying by 1000000
    |        uint256 reserveAmount = safeMul(getReserveBalance(_reserveToken), MAX_CRR);
  > |        uint256 tokenAmount = safeMul(token.totalSupply(), reserve.ratio);
    |        Change(_reserveToken, token, msg.sender, _depositAmount, amount, reserveAmount, tokenAmount);
    |        return amount;
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(805)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorChanger':
    |        returns (uint256 amount)
    |    {
  > |        require(_sellAmount <= token.balanceOf(msg.sender)); // validate input
    |
    |        amount = getSaleReturn(_reserveToken, _sellAmount);
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(825)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorChanger':
    |            smartToken = ISmartToken(_path[i]);
    |            toToken = _path[i + 1];
  > |            changer = BancorChanger(smartToken.owner());
    |
    |            // if the smart token isn't the source (from token), the changer doesn't have control over it and thus we need to approve the request
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(881)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorChanger':
    |
    |            // make the change - if it's the last one, also provide the minimum return value
  > |            _amount = changer.change(fromToken, toToken, _amount, i == pathLength - 2 ? _minReturn : 1);
    |            fromToken = toToken;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(888)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorChanger':
    |        // finished the change, transfer the funds back to the caller
    |        // if the last change resulted in ether tokens, withdraw them and send them as ETH to the caller
  > |        if (changer.hasQuickBuyEtherToken() && changer.getQuickBuyEtherToken() == toToken) {
    |            IEtherToken etherToken = IEtherToken(toToken);
    |            etherToken.withdrawTo(msg.sender, _amount);
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(894)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorChanger':
    |        if (changer.hasQuickBuyEtherToken() && changer.getQuickBuyEtherToken() == toToken) {
    |            IEtherToken etherToken = IEtherToken(toToken);
  > |            etherToken.withdrawTo(msg.sender, _amount);
    |        }
    |        else {
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(896)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorChanger':
    |        else {
    |            // not ETH, transfer the tokens to the caller
  > |            assert(toToken.transfer(msg.sender, _amount));
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(900)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorChanger':
    |        // get the initial changer in the path
    |        ISmartToken smartToken = ISmartToken(quickBuyPath[1]);
  > |        BancorChanger changer = BancorChanger(smartToken.owner());
    |        // approve allowance for the changer in the ether token
    |        ensureAllowance(etherToken, changer, msg.value);
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(923)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorChanger':
    |        ensureAllowance(etherToken, changer, msg.value);
    |        // execute the change
  > |        uint256 returnAmount = changer.quickChange(quickBuyPath, msg.value, _minReturn);
    |        // transfer the tokens to the caller
    |        assert(token.transfer(msg.sender, returnAmount));
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(927)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorChanger':
    |        uint256 returnAmount = changer.quickChange(quickBuyPath, msg.value, _minReturn);
    |        // transfer the tokens to the caller
  > |        assert(token.transfer(msg.sender, returnAmount));
    |        return returnAmount;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(929)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorChanger':
    |        Reserve storage reserve = reserves[_reserveToken];
    |        uint256 reserveBalance = getReserveBalance(_reserveToken);
  > |        amount = formula.calculateSaleReturn(_totalSupply, reserveBalance, reserve.ratio, _sellAmount);
    |
    |        // deduct the fee from the return amount
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(952)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorChanger':
    |    function ensureAllowance(IERC20Token _token, address _spender, uint256 _value) private {
    |        // check if allowance for the given amount already exists
  > |        if (_token.allowance(this, _spender) >= _value)
    |            return;
    |
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(968)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorChanger':
    |
    |        // if the allowance is nonzero, must reset it to 0 first
  > |        if (_token.allowance(this, _spender) != 0)
    |            assert(_token.approve(_spender, 0));
    |
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(972)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorChanger':
    |        // if the allowance is nonzero, must reset it to 0 first
    |        if (_token.allowance(this, _spender) != 0)
  > |            assert(_token.approve(_spender, 0));
    |
    |        // approve the new allowance
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(973)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorChanger':
    |
    |        // approve the new allowance
  > |        assert(_token.approve(_spender, _value));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(976)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorChanger':
    |        // if the token is the smart token, no allowance is required - destroy the tokens from the caller and issue them to the local contract
    |        if (_token == token) {
  > |            token.destroy(_from, _amount); // destroy _amount tokens from the caller's balance in the smart token
    |            token.issue(this, _amount); // issue _amount new tokens to the local contract
    |            return;
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(989)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorChanger':
    |        if (_token == token) {
    |            token.destroy(_from, _amount); // destroy _amount tokens from the caller's balance in the smart token
  > |            token.issue(this, _amount); // issue _amount new tokens to the local contract
    |            return;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(990)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorChanger':
    |
    |        // otherwise, we assume we already have allowance
  > |        assert(_token.transferFrom(_from, this, _amount));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(995)

[31mViolation[0m for UnrestrictedWrite in contract 'BancorChanger':
    |        Reserve storage reserve = reserves[_reserveToken];
    |        if (reserve.isVirtualBalanceEnabled)
  > |            reserve.virtualBalance = safeAdd(reserve.virtualBalance, _depositAmount);
    |
    |        assert(_reserveToken.transferFrom(msg.sender, this, _depositAmount)); // transfer _depositAmount funds from the caller in the reserve token
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(796)

[33mWarning[0m for UnrestrictedWrite in contract 'BancorChanger':
    |
    |/*
  > |    Utilities & Common Modifiers
    |*/
    |contract Utils {
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(4)

[33mWarning[0m for UnrestrictedWrite in contract 'BancorChanger':
    |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'BancorChanger':
    |    function transferManagement(address _newManager) public managerOnly {
    |        require(_newManager != manager);
  > |        newManager = _newManager;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(162)

[33mWarning[0m for UnrestrictedWrite in contract 'BancorChanger':
    |             or with very small numbers because of precision loss
    |*/
  > |contract BancorChanger is ITokenChanger, SmartTokenController, Managed {
    |    uint32 private constant MAX_CRR = 1000000;
    |    uint32 private constant MAX_CHANGE_FEE = 1000000;
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(384)

[33mWarning[0m for UnrestrictedWrite in contract 'BancorChanger':
    |        notThis(_formula)
    |    {
  > |        formula = _formula;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(518)

[33mWarning[0m for UnrestrictedWrite in contract 'BancorChanger':
    |    */
    |    function disableChanging(bool _disable) public managerOnly {
  > |        changingEnabled = !_disable;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(579)

[33mWarning[0m for UnrestrictedWrite in contract 'BancorChanger':
    |        validChangeFee(_changeFee)
    |    {
  > |        changeFee = _changeFee;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(593)

[33mWarning[0m for UnrestrictedWrite in contract 'BancorChanger':
    |        require(_token != token && !reserves[_token].isSet && totalReserveRatio + _ratio <= MAX_CRR); // validate input
    |
  > |        reserves[_token].virtualBalance = 0;
    |        reserves[_token].ratio = _ratio;
    |        reserves[_token].isVirtualBalanceEnabled = _enableVirtualBalance;
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(623)

[33mWarning[0m for UnrestrictedWrite in contract 'BancorChanger':
    |
    |        reserves[_token].virtualBalance = 0;
  > |        reserves[_token].ratio = _ratio;
    |        reserves[_token].isVirtualBalanceEnabled = _enableVirtualBalance;
    |        reserves[_token].isPurchaseEnabled = true;
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(624)

[33mWarning[0m for UnrestrictedWrite in contract 'BancorChanger':
    |        reserves[_token].virtualBalance = 0;
    |        reserves[_token].ratio = _ratio;
  > |        reserves[_token].isVirtualBalanceEnabled = _enableVirtualBalance;
    |        reserves[_token].isPurchaseEnabled = true;
    |        reserves[_token].isSet = true;
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(625)

[33mWarning[0m for UnrestrictedWrite in contract 'BancorChanger':
    |        reserves[_token].ratio = _ratio;
    |        reserves[_token].isVirtualBalanceEnabled = _enableVirtualBalance;
  > |        reserves[_token].isPurchaseEnabled = true;
    |        reserves[_token].isSet = true;
    |        reserveTokens.push(_token);
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(626)

[33mWarning[0m for UnrestrictedWrite in contract 'BancorChanger':
    |        reserves[_token].isVirtualBalanceEnabled = _enableVirtualBalance;
    |        reserves[_token].isPurchaseEnabled = true;
  > |        reserves[_token].isSet = true;
    |        reserveTokens.push(_token);
    |        totalReserveRatio += _ratio;
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(627)

[33mWarning[0m for UnrestrictedWrite in contract 'BancorChanger':
    |        reserves[_token].isPurchaseEnabled = true;
    |        reserves[_token].isSet = true;
  > |        reserveTokens.push(_token);
    |        totalReserveRatio += _ratio;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(628)

[33mWarning[0m for UnrestrictedWrite in contract 'BancorChanger':
    |        reserves[_token].isSet = true;
    |        reserveTokens.push(_token);
  > |        totalReserveRatio += _ratio;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(629)

[33mWarning[0m for UnrestrictedWrite in contract 'BancorChanger':
    |        require(totalReserveRatio - reserve.ratio + _ratio <= MAX_CRR); // validate input
    |
  > |        totalReserveRatio = totalReserveRatio - reserve.ratio + _ratio;
    |        reserve.ratio = _ratio;
    |        reserve.isVirtualBalanceEnabled = _enableVirtualBalance;
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(650)

[33mWarning[0m for UnrestrictedWrite in contract 'BancorChanger':
    |
    |        totalReserveRatio = totalReserveRatio - reserve.ratio + _ratio;
  > |        reserve.ratio = _ratio;
    |        reserve.isVirtualBalanceEnabled = _enableVirtualBalance;
    |        reserve.virtualBalance = _virtualBalance;
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(651)

[33mWarning[0m for UnrestrictedWrite in contract 'BancorChanger':
    |        totalReserveRatio = totalReserveRatio - reserve.ratio + _ratio;
    |        reserve.ratio = _ratio;
  > |        reserve.isVirtualBalanceEnabled = _enableVirtualBalance;
    |        reserve.virtualBalance = _virtualBalance;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(652)

[33mWarning[0m for UnrestrictedWrite in contract 'BancorChanger':
    |        reserve.ratio = _ratio;
    |        reserve.isVirtualBalanceEnabled = _enableVirtualBalance;
  > |        reserve.virtualBalance = _virtualBalance;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(653)

[33mWarning[0m for UnrestrictedWrite in contract 'BancorChanger':
    |        validReserve(_reserveToken)
    |    {
  > |        reserves[_reserveToken].isPurchaseEnabled = !_disable;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(669)

[33mWarning[0m for UnrestrictedWrite in contract 'BancorChanger':
    |        require(msg.sender == newOwner);
    |        OwnerUpdate(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = 0x0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'BancorChanger':
    |        OwnerUpdate(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = 0x0;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(127)

[33mWarning[0m for UnrestrictedWrite in contract 'BancorChanger':
    |        require(msg.sender == newManager);
    |        ManagerUpdate(manager, newManager);
  > |        manager = newManager;
    |        newManager = 0x0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(171)

[33mWarning[0m for UnrestrictedWrite in contract 'BancorChanger':
    |        ManagerUpdate(manager, newManager);
    |        manager = newManager;
  > |        newManager = 0x0;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(172)

[31mViolation[0m for DAO in contract 'BancorLender':
    |        tokenAmount, collateralAmount, agreements[_index].collateralRatio));
    |    // Sell the tokens and add that balance to the collateral.
  > |    uint256 saleAmount = bancorChanger.sell(etherToken, tokenAmount, 1);
    |    assert(saleAmount + msg.value == collateralAmount);
    |    etherToken.withdraw(saleAmount);
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(1069)

[31mViolation[0m for DAO in contract 'BancorLender':
    |    uint256 saleAmount = bancorChanger.sell(etherToken, tokenAmount, 1);
    |    assert(saleAmount + msg.value == collateralAmount);
  > |    etherToken.withdraw(saleAmount);
    |    agreements[_index].borrower = msg.sender;
    |    agreements[_index].collateralAmount = collateralAmount;
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(1071)

[31mViolation[0m for DAO in contract 'BancorLender':
    |    if (canMarginCall || now > agreements[_index].expiration) {
    |      uint256 tokenRecoveredAmount =
  > |          bancorChanger.quickBuy.value(collateralAmount)(1);
    |      if (tokenRecoveredAmount >= tokenAmount) {
    |        // Good: the debt is returned in full.
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(1103)

[31mViolation[0m for DAO in contract 'BancorLender':
    |        // Should be the majority of cases since we provide a safety margin
    |        // and the BNT price is continuous.
  > |        assert(bancorToken.transfer(agreements[_index].lender, tokenAmount));
    |        uint256 remainingCollateral = bancorChanger.sell(
    |            etherToken, tokenRecoveredAmount - tokenAmount, 1);
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(1108)

[31mViolation[0m for DAO in contract 'BancorLender':
    |        // and the BNT price is continuous.
    |        assert(bancorToken.transfer(agreements[_index].lender, tokenAmount));
  > |        uint256 remainingCollateral = bancorChanger.sell(
    |            etherToken, tokenRecoveredAmount - tokenAmount, 1);
    |        etherToken.withdrawTo(agreements[_index].borrower, remainingCollateral);
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(1109)

[31mViolation[0m for DAO in contract 'BancorLender':
    |        uint256 remainingCollateral = bancorChanger.sell(
    |            etherToken, tokenRecoveredAmount - tokenAmount, 1);
  > |        etherToken.withdrawTo(agreements[_index].borrower, remainingCollateral);
    |      } else {
    |        // Bad: part of the debt is not returned.
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(1111)

[31mViolation[0m for MissingInputValidation in contract 'BancorLender':
    |  BorrowAgreement[] public agreements;
    |
  > |  function isCollateralWithinMargin(
    |      uint256 tokenAmount, uint256 collateralAmount,
    |      uint32 collateralRatio) public constant
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(1039)

[31mViolation[0m for MissingInputValidation in contract 'BancorLender':
    |  }
    |
  > |  function offerPosition(
    |      uint256 _token_amount, uint32 _collataral_ratio,
    |      uint _expiration) public {
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(1049)

[33mWarning[0m for MissingInputValidation in contract 'BancorLender':
    |  }
    |
  > |  IERC20Token constant public bancorToken =
    |      IERC20Token(0x1F573D6Fb3F13d689FF844B4cE37794d79a7FF1C);
    |  BancorChanger constant public bancorChanger =
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(1031)

[33mWarning[0m for MissingInputValidation in contract 'BancorLender':
    |  IERC20Token constant public bancorToken =
    |      IERC20Token(0x1F573D6Fb3F13d689FF844B4cE37794d79a7FF1C);
  > |  BancorChanger constant public bancorChanger =
    |      BancorChanger(0xb626A5FacC4de1c813F5293Ec3bE31979f1D1c78);
    |  IEtherToken etherToken = bancorChanger.getQuickBuyEtherToken();
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(1033)

[33mWarning[0m for MissingInputValidation in contract 'BancorLender':
    |  IEtherToken etherToken = bancorChanger.getQuickBuyEtherToken();
    |
  > |  BorrowAgreement[] public agreements;
    |
    |  function isCollateralWithinMargin(
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(1037)

[33mWarning[0m for MissingInputValidation in contract 'BancorLender':
    |  }
    |
  > |  function addCollateral(uint _index) public payable {
    |    // Check that the offer is valid.
    |    assert(agreements[_index].tokenAmount > 0);
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(1076)

[33mWarning[0m for UnhandledException in contract 'BancorLender':
    |  returns(bool) {
    |    uint256 collateralInTokens =
  > |        bancorChanger.getPurchaseReturn(etherToken, collateralAmount);
    |    uint256 minCollateral = tokenAmount * (100 + collateralRatio) / 100;
    |    return (collateralInTokens > minCollateral);
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(1044)

[33mWarning[0m for UnhandledException in contract 'BancorLender':
    |      uint256 _token_amount, uint32 _collataral_ratio,
    |      uint _expiration) public {
  > |    assert(bancorToken.transferFrom(msg.sender, this, _token_amount));
    |    agreements.push(BorrowAgreement(
    |        msg.sender, 0, _token_amount, 0, _collataral_ratio, _expiration));
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(1052)

[33mWarning[0m for UnhandledException in contract 'BancorLender':
    |    uint256 tokenAmount = agreements[_index].tokenAmount;
    |    uint256 collateralAmount =
  > |        bancorChanger.getSaleReturn(etherToken, tokenAmount) + msg.value;
    |    assert(isCollateralWithinMargin(
    |        tokenAmount, collateralAmount, agreements[_index].collateralRatio));
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(1065)

[33mWarning[0m for UnhandledException in contract 'BancorLender':
    |        tokenAmount, collateralAmount, agreements[_index].collateralRatio));
    |    // Sell the tokens and add that balance to the collateral.
  > |    uint256 saleAmount = bancorChanger.sell(etherToken, tokenAmount, 1);
    |    assert(saleAmount + msg.value == collateralAmount);
    |    etherToken.withdraw(saleAmount);
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(1069)

[33mWarning[0m for UnhandledException in contract 'BancorLender':
    |    uint256 saleAmount = bancorChanger.sell(etherToken, tokenAmount, 1);
    |    assert(saleAmount + msg.value == collateralAmount);
  > |    etherToken.withdraw(saleAmount);
    |    agreements[_index].borrower = msg.sender;
    |    agreements[_index].collateralAmount = collateralAmount;
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(1071)

[33mWarning[0m for UnhandledException in contract 'BancorLender':
    |    if (agreements[_index].borrower == 0) {
    |      assert(msg.sender == agreements[_index].lender);
  > |      bancorToken.transfer(agreements[_index].lender, tokenAmount);
    |      agreements[_index].tokenAmount = 0;
    |      return;
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(1092)

[33mWarning[0m for UnhandledException in contract 'BancorLender':
    |    if (canMarginCall || now > agreements[_index].expiration) {
    |      uint256 tokenRecoveredAmount =
  > |          bancorChanger.quickBuy.value(collateralAmount)(1);
    |      if (tokenRecoveredAmount >= tokenAmount) {
    |        // Good: the debt is returned in full.
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(1103)

[33mWarning[0m for UnhandledException in contract 'BancorLender':
    |        // Should be the majority of cases since we provide a safety margin
    |        // and the BNT price is continuous.
  > |        assert(bancorToken.transfer(agreements[_index].lender, tokenAmount));
    |        uint256 remainingCollateral = bancorChanger.sell(
    |            etherToken, tokenRecoveredAmount - tokenAmount, 1);
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(1108)

[33mWarning[0m for UnhandledException in contract 'BancorLender':
    |        // and the BNT price is continuous.
    |        assert(bancorToken.transfer(agreements[_index].lender, tokenAmount));
  > |        uint256 remainingCollateral = bancorChanger.sell(
    |            etherToken, tokenRecoveredAmount - tokenAmount, 1);
    |        etherToken.withdrawTo(agreements[_index].borrower, remainingCollateral);
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(1109)

[33mWarning[0m for UnhandledException in contract 'BancorLender':
    |        uint256 remainingCollateral = bancorChanger.sell(
    |            etherToken, tokenRecoveredAmount - tokenAmount, 1);
  > |        etherToken.withdrawTo(agreements[_index].borrower, remainingCollateral);
    |      } else {
    |        // Bad: part of the debt is not returned.
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(1111)

[33mWarning[0m for UnhandledException in contract 'BancorLender':
    |      } else {
    |        // Bad: part of the debt is not returned.
  > |        assert(bancorToken.transfer(
    |            agreements[_index].lender, tokenRecoveredAmount));
    |      }
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(1114)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorLender':
    |  returns(bool) {
    |    uint256 collateralInTokens =
  > |        bancorChanger.getPurchaseReturn(etherToken, collateralAmount);
    |    uint256 minCollateral = tokenAmount * (100 + collateralRatio) / 100;
    |    return (collateralInTokens > minCollateral);
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(1044)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorLender':
    |      uint256 _token_amount, uint32 _collataral_ratio,
    |      uint _expiration) public {
  > |    assert(bancorToken.transferFrom(msg.sender, this, _token_amount));
    |    agreements.push(BorrowAgreement(
    |        msg.sender, 0, _token_amount, 0, _collataral_ratio, _expiration));
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(1052)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorLender':
    |    uint256 tokenAmount = agreements[_index].tokenAmount;
    |    uint256 collateralAmount =
  > |        bancorChanger.getSaleReturn(etherToken, tokenAmount) + msg.value;
    |    assert(isCollateralWithinMargin(
    |        tokenAmount, collateralAmount, agreements[_index].collateralRatio));
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(1065)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorLender':
    |    if (agreements[_index].borrower == 0) {
    |      assert(msg.sender == agreements[_index].lender);
  > |      bancorToken.transfer(agreements[_index].lender, tokenAmount);
    |      agreements[_index].tokenAmount = 0;
    |      return;
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(1092)

[31mViolation[0m for UnrestrictedWrite in contract 'BancorLender':
    |
    |/*
  > |    Utilities & Common Modifiers
    |*/
    |contract Utils {
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(4)

[31mViolation[0m for UnrestrictedWrite in contract 'BancorLender':
    |      uint _expiration) public {
    |    assert(bancorToken.transferFrom(msg.sender, this, _token_amount));
  > |    agreements.push(BorrowAgreement(
    |        msg.sender, 0, _token_amount, 0, _collataral_ratio, _expiration));
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(1053)

[31mViolation[0m for UnrestrictedWrite in contract 'BancorLender':
    |    assert(saleAmount + msg.value == collateralAmount);
    |    etherToken.withdraw(saleAmount);
  > |    agreements[_index].borrower = msg.sender;
    |    agreements[_index].collateralAmount = collateralAmount;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(1072)

[31mViolation[0m for UnrestrictedWrite in contract 'BancorLender':
    |            agreements[_index].lender, tokenRecoveredAmount));
    |      }
  > |      agreements[_index].tokenAmount = 0;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(1117)

[33mWarning[0m for UnrestrictedWrite in contract 'BancorLender':
    |    // can add collateral to their position.
    |    assert(msg.sender == agreements[_index].borrower);
  > |    agreements[_index].collateralAmount += msg.value;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(1082)

[33mWarning[0m for UnrestrictedWrite in contract 'BancorLender':
    |      assert(msg.sender == agreements[_index].lender);
    |      bancorToken.transfer(agreements[_index].lender, tokenAmount);
  > |      agreements[_index].tokenAmount = 0;
    |      return;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(1093)

[33mWarning[0m for LockedEther in contract 'Managed':
    |    Provides support and utilities for contract management
    |*/
  > |contract Managed {
    |    address public manager;
    |    address public newManager;
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(134)

[33mWarning[0m for MissingInputValidation in contract 'Managed':
    |*/
    |contract Managed {
  > |    address public manager;
    |    address public newManager;
    |
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(135)

[33mWarning[0m for MissingInputValidation in contract 'Managed':
    |contract Managed {
    |    address public manager;
  > |    address public newManager;
    |
    |    event ManagerUpdate(address _prevManager, address _newManager);
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(136)

[33mWarning[0m for MissingInputValidation in contract 'Managed':
    |        @param _newManager    new contract manager
    |    */
  > |    function transferManagement(address _newManager) public managerOnly {
    |        require(_newManager != manager);
    |        newManager = _newManager;
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(160)

[33mWarning[0m for MissingInputValidation in contract 'Managed':
    |        @dev used by a new manager to accept a management transfer
    |    */
  > |    function acceptManagement() public {
    |        require(msg.sender == newManager);
    |        ManagerUpdate(manager, newManager);
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(168)

[33mWarning[0m for UnrestrictedWrite in contract 'Managed':
    |    function transferManagement(address _newManager) public managerOnly {
    |        require(_newManager != manager);
  > |        newManager = _newManager;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(162)

[33mWarning[0m for UnrestrictedWrite in contract 'Managed':
    |        require(msg.sender == newManager);
    |        ManagerUpdate(manager, newManager);
  > |        manager = newManager;
    |        newManager = 0x0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(171)

[33mWarning[0m for UnrestrictedWrite in contract 'Managed':
    |        ManagerUpdate(manager, newManager);
    |        manager = newManager;
  > |        newManager = 0x0;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(172)

[33mWarning[0m for LockedEther in contract 'Owned':
    |    Provides support and utilities for contract ownership
    |*/
  > |contract Owned is IOwned {
    |    address public owner;
    |    address public newOwner;
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(89)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |*/
    |contract Owned is IOwned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(90)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned is IOwned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnerUpdate(address _prevOwner, address _newOwner);
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(91)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |        @param _newOwner    new contract owner
    |    */
  > |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
    |        newOwner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(115)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |        @dev used by a new owner to accept an ownership transfer
    |    */
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnerUpdate(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(123)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(msg.sender == newOwner);
    |        OwnerUpdate(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = 0x0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        OwnerUpdate(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = 0x0;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(127)

[33mWarning[0m for LockedEther in contract 'SmartTokenController':
    |    Doing that will also remove the owner's ability to upgrade the controller.
    |*/
  > |contract SmartTokenController is TokenHolder {
    |    ISmartToken public token;   // smart token
    |
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(232)

[31mViolation[0m for MissingInputValidation in contract 'SmartTokenController':
    |        @param _amount  amount to withdraw
    |    */
  > |    function withdrawTokens(IERC20Token _token, address _to, uint256 _amount)
    |        public
    |        ownerOnly
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(205)

[31mViolation[0m for MissingInputValidation in contract 'SmartTokenController':
    |        @param _newOwner    new token owner
    |    */
  > |    function transferTokenOwnership(address _newOwner) public ownerOnly {
    |        token.transferOwnership(_newOwner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(263)

[31mViolation[0m for MissingInputValidation in contract 'SmartTokenController':
    |        @param _disable    true to disable transfers, false to enable them
    |    */
  > |    function disableTokenTransfers(bool _disable) public ownerOnly {
    |        token.disableTransfers(_disable);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(281)

[31mViolation[0m for MissingInputValidation in contract 'SmartTokenController':
    |        @param _amount  amount to withdraw
    |    */
  > |    function withdrawFromToken(IERC20Token _token, address _to, uint256 _amount) public ownerOnly {
    |        token.withdrawTokens(_token, _to, _amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(293)

[33mWarning[0m for MissingInputValidation in contract 'SmartTokenController':
    |*/
    |contract Owned is IOwned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(90)

[33mWarning[0m for MissingInputValidation in contract 'SmartTokenController':
    |contract Owned is IOwned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnerUpdate(address _prevOwner, address _newOwner);
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(91)

[33mWarning[0m for MissingInputValidation in contract 'SmartTokenController':
    |        @param _newOwner    new contract owner
    |    */
  > |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
    |        newOwner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(115)

[33mWarning[0m for MissingInputValidation in contract 'SmartTokenController':
    |        @dev used by a new owner to accept an ownership transfer
    |    */
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnerUpdate(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(123)

[33mWarning[0m for MissingInputValidation in contract 'SmartTokenController':
    |*/
    |contract SmartTokenController is TokenHolder {
  > |    ISmartToken public token;   // smart token
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(233)

[33mWarning[0m for MissingInputValidation in contract 'SmartTokenController':
    |        can only be called by the contract owner
    |    */
  > |    function acceptTokenOwnership() public ownerOnly {
    |        token.acceptOwnership();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(271)

[33mWarning[0m for UnhandledException in contract 'SmartTokenController':
    |        notThis(_to)
    |    {
  > |        assert(_token.transfer(_to, _amount));
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(212)

[33mWarning[0m for UnhandledException in contract 'SmartTokenController':
    |    */
    |    function transferTokenOwnership(address _newOwner) public ownerOnly {
  > |        token.transferOwnership(_newOwner);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(264)

[33mWarning[0m for UnhandledException in contract 'SmartTokenController':
    |    */
    |    function acceptTokenOwnership() public ownerOnly {
  > |        token.acceptOwnership();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(272)

[33mWarning[0m for UnhandledException in contract 'SmartTokenController':
    |    */
    |    function disableTokenTransfers(bool _disable) public ownerOnly {
  > |        token.disableTransfers(_disable);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(282)

[33mWarning[0m for UnhandledException in contract 'SmartTokenController':
    |    */
    |    function withdrawFromToken(IERC20Token _token, address _to, uint256 _amount) public ownerOnly {
  > |        token.withdrawTokens(_token, _to, _amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(294)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SmartTokenController':
    |        notThis(_to)
    |    {
  > |        assert(_token.transfer(_to, _amount));
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(212)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SmartTokenController':
    |    */
    |    function transferTokenOwnership(address _newOwner) public ownerOnly {
  > |        token.transferOwnership(_newOwner);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(264)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SmartTokenController':
    |    */
    |    function acceptTokenOwnership() public ownerOnly {
  > |        token.acceptOwnership();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(272)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SmartTokenController':
    |    */
    |    function disableTokenTransfers(bool _disable) public ownerOnly {
  > |        token.disableTransfers(_disable);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(282)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SmartTokenController':
    |    */
    |    function withdrawFromToken(IERC20Token _token, address _to, uint256 _amount) public ownerOnly {
  > |        token.withdrawTokens(_token, _to, _amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(294)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartTokenController':
    |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartTokenController':
    |        require(msg.sender == newOwner);
    |        OwnerUpdate(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = 0x0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartTokenController':
    |        OwnerUpdate(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = 0x0;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(127)

[33mWarning[0m for LockedEther in contract 'TokenHolder':
    |    the owner to send tokens that were sent to the contract by mistake back to their sender.
    |*/
  > |contract TokenHolder is ITokenHolder, Owned, Utils {
    |    /**
    |        @dev constructor
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(190)

[31mViolation[0m for MissingInputValidation in contract 'TokenHolder':
    |        @param _amount  amount to withdraw
    |    */
  > |    function withdrawTokens(IERC20Token _token, address _to, uint256 _amount)
    |        public
    |        ownerOnly
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(205)

[33mWarning[0m for MissingInputValidation in contract 'TokenHolder':
    |*/
    |contract Owned is IOwned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(90)

[33mWarning[0m for MissingInputValidation in contract 'TokenHolder':
    |contract Owned is IOwned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnerUpdate(address _prevOwner, address _newOwner);
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(91)

[33mWarning[0m for MissingInputValidation in contract 'TokenHolder':
    |        @param _newOwner    new contract owner
    |    */
  > |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
    |        newOwner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(115)

[33mWarning[0m for MissingInputValidation in contract 'TokenHolder':
    |        @dev used by a new owner to accept an ownership transfer
    |    */
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnerUpdate(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(123)

[33mWarning[0m for UnhandledException in contract 'TokenHolder':
    |        notThis(_to)
    |    {
  > |        assert(_token.transfer(_to, _amount));
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(212)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenHolder':
    |        notThis(_to)
    |    {
  > |        assert(_token.transfer(_to, _amount));
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(212)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenHolder':
    |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenHolder':
    |        require(msg.sender == newOwner);
    |        OwnerUpdate(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = 0x0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenHolder':
    |        OwnerUpdate(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = 0x0;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(127)

[33mWarning[0m for LockedEther in contract 'Utils':
    |    Utilities & Common Modifiers
    |*/
  > |contract Utils {
    |    /**
    |        constructor
  at /home/jiaming/mavs_srcs/contract@0xe4e821c1aef1d3305ade82835853d87d2705a992.sol(6)


