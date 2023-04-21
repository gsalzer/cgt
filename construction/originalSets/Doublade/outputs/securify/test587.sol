Processing contract: /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol:BancorChanger
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol:IBancorFormula
Processing contract: /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol:IERC20Token
Processing contract: /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol:IEtherToken
Processing contract: /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol:IOwned
Processing contract: /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol:ISmartToken
Processing contract: /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol:ITokenChanger
Processing contract: /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol:ITokenHolder
Processing contract: /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol:Managed
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol:SmartTokenController
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol:TokenHolder
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol:Utils
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAO in contract 'BancorChanger':
    |        IEtherToken etherToken = getQuickBuyEtherToken();
    |        // deposit ETH in the ether token
  > |        etherToken.deposit.value(msg.value)();
    |        // execute the change
    |        uint256 returnAmount = this.quickChange(quickBuyPath, msg.value, _minReturn);
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(921)

[33mWarning[0m for UnhandledException in contract 'BancorChanger':
    |        notThis(_to)
    |    {
  > |        assert(_token.transfer(_to, _amount));
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(212)

[33mWarning[0m for UnhandledException in contract 'BancorChanger':
    |    // ensures that the controller is the token's owner
    |    modifier active() {
  > |        assert(token.owner() == address(this));
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(246)

[33mWarning[0m for UnhandledException in contract 'BancorChanger':
    |    // ensures that the controller is not the token's owner
    |    modifier inactive() {
  > |        assert(token.owner() != address(this));
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(252)

[33mWarning[0m for UnhandledException in contract 'BancorChanger':
    |    */
    |    function transferTokenOwnership(address _newOwner) public ownerOnly {
  > |        token.transferOwnership(_newOwner);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(264)

[33mWarning[0m for UnhandledException in contract 'BancorChanger':
    |    */
    |    function acceptTokenOwnership() public ownerOnly {
  > |        token.acceptOwnership();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(272)

[33mWarning[0m for UnhandledException in contract 'BancorChanger':
    |    */
    |    function disableTokenTransfers(bool _disable) public ownerOnly {
  > |        token.disableTransfers(_disable);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(282)

[33mWarning[0m for UnhandledException in contract 'BancorChanger':
    |    */
    |    function withdrawFromToken(IERC20Token _token, address _to, uint256 _amount) public ownerOnly {
  > |        token.withdrawTokens(_token, _to, _amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(294)

[33mWarning[0m for UnhandledException in contract 'BancorChanger':
    |    {
    |        Reserve storage reserve = reserves[_reserveToken];
  > |        return reserve.isVirtualBalanceEnabled ? reserve.virtualBalance : _reserveToken.balanceOf(this);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(686)

[33mWarning[0m for UnhandledException in contract 'BancorChanger':
    |        // change between 2 reserves
    |        uint256 purchaseReturnAmount = getPurchaseReturn(_fromToken, _amount);
  > |        return getSaleReturn(_toToken, purchaseReturnAmount, safeAdd(token.totalSupply(), purchaseReturnAmount));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(709)

[33mWarning[0m for UnhandledException in contract 'BancorChanger':
    |        require(reserve.isPurchaseEnabled); // validate input
    |
  > |        uint256 tokenSupply = token.totalSupply();
    |        uint256 reserveBalance = getReserveBalance(_reserveToken);
    |        amount = formula.calculatePurchaseReturn(tokenSupply, reserveBalance, reserve.ratio, _depositAmount);
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(730)

[33mWarning[0m for UnhandledException in contract 'BancorChanger':
    |        uint256 tokenSupply = token.totalSupply();
    |        uint256 reserveBalance = getReserveBalance(_reserveToken);
  > |        amount = formula.calculatePurchaseReturn(tokenSupply, reserveBalance, reserve.ratio, _depositAmount);
    |
    |        // deduct the fee from the return amount
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(732)

[33mWarning[0m for UnhandledException in contract 'BancorChanger':
    |    */
    |    function getSaleReturn(IERC20Token _reserveToken, uint256 _sellAmount) public constant returns (uint256 amount) {
  > |        return getSaleReturn(_reserveToken, _sellAmount, token.totalSupply());
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(748)

[33mWarning[0m for UnhandledException in contract 'BancorChanger':
    |            reserve.virtualBalance = safeAdd(reserve.virtualBalance, _depositAmount);
    |
  > |        assert(_reserveToken.transferFrom(msg.sender, this, _depositAmount)); // transfer _depositAmount funds from the caller in the reserve token
    |        token.issue(msg.sender, amount); // issue new funds to the caller in the smart token
    |
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(798)

[33mWarning[0m for UnhandledException in contract 'BancorChanger':
    |
    |        assert(_reserveToken.transferFrom(msg.sender, this, _depositAmount)); // transfer _depositAmount funds from the caller in the reserve token
  > |        token.issue(msg.sender, amount); // issue new funds to the caller in the smart token
    |
    |        // calculate the new price using the simple price formula
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(799)

[33mWarning[0m for UnhandledException in contract 'BancorChanger':
    |        // CRR is represented in ppm, so multiplying by 1000000
    |        uint256 reserveAmount = safeMul(getReserveBalance(_reserveToken), MAX_CRR);
  > |        uint256 tokenAmount = safeMul(token.totalSupply(), reserve.ratio);
    |        Change(_reserveToken, token, msg.sender, _depositAmount, amount, reserveAmount, tokenAmount);
    |        return amount;
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(805)

[33mWarning[0m for UnhandledException in contract 'BancorChanger':
    |        returns (uint256 amount)
    |    {
  > |        require(_sellAmount <= token.balanceOf(msg.sender)); // validate input
    |
    |        amount = getSaleReturn(_reserveToken, _sellAmount);
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(825)

[33mWarning[0m for UnhandledException in contract 'BancorChanger':
    |            smartToken = ISmartToken(_path[i]);
    |            toToken = _path[i + 1];
  > |            changer = BancorChanger(smartToken.owner());
    |
    |            // if the smart token isn't the source (from token), the changer doesn't have control over it and thus we need to approve the request
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(881)

[33mWarning[0m for UnhandledException in contract 'BancorChanger':
    |
    |            // make the change - if it's the last one, also provide the minimum return value
  > |            _amount = changer.change(fromToken, toToken, _amount, i == pathLength - 2 ? _minReturn : 1);
    |            fromToken = toToken;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(888)

[33mWarning[0m for UnhandledException in contract 'BancorChanger':
    |        // finished the change, transfer the funds back to the caller
    |        // if the last change resulted in ether tokens, withdraw them and send them as ETH to the caller
  > |        if (changer.hasQuickBuyEtherToken() && changer.getQuickBuyEtherToken() == toToken) {
    |            IEtherToken etherToken = IEtherToken(toToken);
    |            etherToken.withdrawTo(msg.sender, _amount);
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(894)

[33mWarning[0m for UnhandledException in contract 'BancorChanger':
    |        if (changer.hasQuickBuyEtherToken() && changer.getQuickBuyEtherToken() == toToken) {
    |            IEtherToken etherToken = IEtherToken(toToken);
  > |            etherToken.withdrawTo(msg.sender, _amount);
    |        }
    |        // no need to transfer the tokens if the sender is the local contract
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(896)

[33mWarning[0m for UnhandledException in contract 'BancorChanger':
    |        else if (msg.sender != address(this)) {
    |            // not ETH, transfer the tokens to the caller
  > |            assert(toToken.transfer(msg.sender, _amount));
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(901)

[33mWarning[0m for UnhandledException in contract 'BancorChanger':
    |        IEtherToken etherToken = getQuickBuyEtherToken();
    |        // deposit ETH in the ether token
  > |        etherToken.deposit.value(msg.value)();
    |        // execute the change
    |        uint256 returnAmount = this.quickChange(quickBuyPath, msg.value, _minReturn);
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(921)

[33mWarning[0m for UnhandledException in contract 'BancorChanger':
    |        etherToken.deposit.value(msg.value)();
    |        // execute the change
  > |        uint256 returnAmount = this.quickChange(quickBuyPath, msg.value, _minReturn);
    |        // get the target token
    |        IERC20Token toToken = quickBuyPath[quickBuyPath.length - 1];
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(923)

[33mWarning[0m for UnhandledException in contract 'BancorChanger':
    |        IERC20Token toToken = quickBuyPath[quickBuyPath.length - 1];
    |        // transfer the tokens to the caller
  > |        assert(toToken.transfer(msg.sender, returnAmount));
    |        return returnAmount;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(927)

[33mWarning[0m for UnhandledException in contract 'BancorChanger':
    |        Reserve storage reserve = reserves[_reserveToken];
    |        uint256 reserveBalance = getReserveBalance(_reserveToken);
  > |        amount = formula.calculateSaleReturn(_totalSupply, reserveBalance, reserve.ratio, _sellAmount);
    |
    |        // deduct the fee from the return amount
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(950)

[33mWarning[0m for UnhandledException in contract 'BancorChanger':
    |    function ensureAllowance(IERC20Token _token, address _spender, uint256 _value) private {
    |        // check if allowance for the given amount already exists
  > |        if (_token.allowance(this, _spender) >= _value)
    |            return;
    |
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(966)

[33mWarning[0m for UnhandledException in contract 'BancorChanger':
    |
    |        // if the allowance is nonzero, must reset it to 0 first
  > |        if (_token.allowance(this, _spender) != 0)
    |            assert(_token.approve(_spender, 0));
    |
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(970)

[33mWarning[0m for UnhandledException in contract 'BancorChanger':
    |        // if the allowance is nonzero, must reset it to 0 first
    |        if (_token.allowance(this, _spender) != 0)
  > |            assert(_token.approve(_spender, 0));
    |
    |        // approve the new allowance
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(971)

[33mWarning[0m for UnhandledException in contract 'BancorChanger':
    |
    |        // approve the new allowance
  > |        assert(_token.approve(_spender, _value));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(974)

[33mWarning[0m for UnhandledException in contract 'BancorChanger':
    |        // if the token is the smart token, no allowance is required - destroy the tokens from the caller and issue them to the local contract
    |        if (_token == token) {
  > |            token.destroy(_from, _amount); // destroy _amount tokens from the caller's balance in the smart token
    |            token.issue(this, _amount); // issue _amount new tokens to the local contract
    |            return;
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(991)

[33mWarning[0m for UnhandledException in contract 'BancorChanger':
    |        if (_token == token) {
    |            token.destroy(_from, _amount); // destroy _amount tokens from the caller's balance in the smart token
  > |            token.issue(this, _amount); // issue _amount new tokens to the local contract
    |            return;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(992)

[33mWarning[0m for UnhandledException in contract 'BancorChanger':
    |
    |        // otherwise, we assume we already have allowance
  > |        assert(_token.transferFrom(_from, this, _amount));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(997)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorChanger':
    |        notThis(_to)
    |    {
  > |        assert(_token.transfer(_to, _amount));
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(212)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorChanger':
    |    // ensures that the controller is the token's owner
    |    modifier active() {
  > |        assert(token.owner() == address(this));
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(246)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorChanger':
    |    // ensures that the controller is not the token's owner
    |    modifier inactive() {
  > |        assert(token.owner() != address(this));
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(252)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorChanger':
    |    */
    |    function transferTokenOwnership(address _newOwner) public ownerOnly {
  > |        token.transferOwnership(_newOwner);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(264)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorChanger':
    |    */
    |    function acceptTokenOwnership() public ownerOnly {
  > |        token.acceptOwnership();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(272)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorChanger':
    |    */
    |    function disableTokenTransfers(bool _disable) public ownerOnly {
  > |        token.disableTransfers(_disable);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(282)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorChanger':
    |    */
    |    function withdrawFromToken(IERC20Token _token, address _to, uint256 _amount) public ownerOnly {
  > |        token.withdrawTokens(_token, _to, _amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(294)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorChanger':
    |    {
    |        Reserve storage reserve = reserves[_reserveToken];
  > |        return reserve.isVirtualBalanceEnabled ? reserve.virtualBalance : _reserveToken.balanceOf(this);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(686)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorChanger':
    |        // change between 2 reserves
    |        uint256 purchaseReturnAmount = getPurchaseReturn(_fromToken, _amount);
  > |        return getSaleReturn(_toToken, purchaseReturnAmount, safeAdd(token.totalSupply(), purchaseReturnAmount));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(709)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorChanger':
    |        require(reserve.isPurchaseEnabled); // validate input
    |
  > |        uint256 tokenSupply = token.totalSupply();
    |        uint256 reserveBalance = getReserveBalance(_reserveToken);
    |        amount = formula.calculatePurchaseReturn(tokenSupply, reserveBalance, reserve.ratio, _depositAmount);
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(730)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorChanger':
    |        uint256 tokenSupply = token.totalSupply();
    |        uint256 reserveBalance = getReserveBalance(_reserveToken);
  > |        amount = formula.calculatePurchaseReturn(tokenSupply, reserveBalance, reserve.ratio, _depositAmount);
    |
    |        // deduct the fee from the return amount
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(732)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorChanger':
    |    */
    |    function getSaleReturn(IERC20Token _reserveToken, uint256 _sellAmount) public constant returns (uint256 amount) {
  > |        return getSaleReturn(_reserveToken, _sellAmount, token.totalSupply());
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(748)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorChanger':
    |            reserve.virtualBalance = safeAdd(reserve.virtualBalance, _depositAmount);
    |
  > |        assert(_reserveToken.transferFrom(msg.sender, this, _depositAmount)); // transfer _depositAmount funds from the caller in the reserve token
    |        token.issue(msg.sender, amount); // issue new funds to the caller in the smart token
    |
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(798)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorChanger':
    |
    |        assert(_reserveToken.transferFrom(msg.sender, this, _depositAmount)); // transfer _depositAmount funds from the caller in the reserve token
  > |        token.issue(msg.sender, amount); // issue new funds to the caller in the smart token
    |
    |        // calculate the new price using the simple price formula
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(799)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorChanger':
    |        // CRR is represented in ppm, so multiplying by 1000000
    |        uint256 reserveAmount = safeMul(getReserveBalance(_reserveToken), MAX_CRR);
  > |        uint256 tokenAmount = safeMul(token.totalSupply(), reserve.ratio);
    |        Change(_reserveToken, token, msg.sender, _depositAmount, amount, reserveAmount, tokenAmount);
    |        return amount;
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(805)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorChanger':
    |        returns (uint256 amount)
    |    {
  > |        require(_sellAmount <= token.balanceOf(msg.sender)); // validate input
    |
    |        amount = getSaleReturn(_reserveToken, _sellAmount);
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(825)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorChanger':
    |            smartToken = ISmartToken(_path[i]);
    |            toToken = _path[i + 1];
  > |            changer = BancorChanger(smartToken.owner());
    |
    |            // if the smart token isn't the source (from token), the changer doesn't have control over it and thus we need to approve the request
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(881)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorChanger':
    |
    |            // make the change - if it's the last one, also provide the minimum return value
  > |            _amount = changer.change(fromToken, toToken, _amount, i == pathLength - 2 ? _minReturn : 1);
    |            fromToken = toToken;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(888)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorChanger':
    |        // finished the change, transfer the funds back to the caller
    |        // if the last change resulted in ether tokens, withdraw them and send them as ETH to the caller
  > |        if (changer.hasQuickBuyEtherToken() && changer.getQuickBuyEtherToken() == toToken) {
    |            IEtherToken etherToken = IEtherToken(toToken);
    |            etherToken.withdrawTo(msg.sender, _amount);
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(894)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorChanger':
    |        if (changer.hasQuickBuyEtherToken() && changer.getQuickBuyEtherToken() == toToken) {
    |            IEtherToken etherToken = IEtherToken(toToken);
  > |            etherToken.withdrawTo(msg.sender, _amount);
    |        }
    |        // no need to transfer the tokens if the sender is the local contract
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(896)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorChanger':
    |        else if (msg.sender != address(this)) {
    |            // not ETH, transfer the tokens to the caller
  > |            assert(toToken.transfer(msg.sender, _amount));
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(901)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorChanger':
    |        etherToken.deposit.value(msg.value)();
    |        // execute the change
  > |        uint256 returnAmount = this.quickChange(quickBuyPath, msg.value, _minReturn);
    |        // get the target token
    |        IERC20Token toToken = quickBuyPath[quickBuyPath.length - 1];
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(923)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorChanger':
    |        IERC20Token toToken = quickBuyPath[quickBuyPath.length - 1];
    |        // transfer the tokens to the caller
  > |        assert(toToken.transfer(msg.sender, returnAmount));
    |        return returnAmount;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(927)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorChanger':
    |        Reserve storage reserve = reserves[_reserveToken];
    |        uint256 reserveBalance = getReserveBalance(_reserveToken);
  > |        amount = formula.calculateSaleReturn(_totalSupply, reserveBalance, reserve.ratio, _sellAmount);
    |
    |        // deduct the fee from the return amount
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(950)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorChanger':
    |    function ensureAllowance(IERC20Token _token, address _spender, uint256 _value) private {
    |        // check if allowance for the given amount already exists
  > |        if (_token.allowance(this, _spender) >= _value)
    |            return;
    |
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(966)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorChanger':
    |
    |        // if the allowance is nonzero, must reset it to 0 first
  > |        if (_token.allowance(this, _spender) != 0)
    |            assert(_token.approve(_spender, 0));
    |
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(970)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorChanger':
    |        // if the allowance is nonzero, must reset it to 0 first
    |        if (_token.allowance(this, _spender) != 0)
  > |            assert(_token.approve(_spender, 0));
    |
    |        // approve the new allowance
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(971)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorChanger':
    |
    |        // approve the new allowance
  > |        assert(_token.approve(_spender, _value));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(974)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorChanger':
    |        // if the token is the smart token, no allowance is required - destroy the tokens from the caller and issue them to the local contract
    |        if (_token == token) {
  > |            token.destroy(_from, _amount); // destroy _amount tokens from the caller's balance in the smart token
    |            token.issue(this, _amount); // issue _amount new tokens to the local contract
    |            return;
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(991)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorChanger':
    |        if (_token == token) {
    |            token.destroy(_from, _amount); // destroy _amount tokens from the caller's balance in the smart token
  > |            token.issue(this, _amount); // issue _amount new tokens to the local contract
    |            return;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(992)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorChanger':
    |
    |        // otherwise, we assume we already have allowance
  > |        assert(_token.transferFrom(_from, this, _amount));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(997)

[31mViolation[0m for UnrestrictedWrite in contract 'BancorChanger':
    |        Reserve storage reserve = reserves[_reserveToken];
    |        if (reserve.isVirtualBalanceEnabled)
  > |            reserve.virtualBalance = safeAdd(reserve.virtualBalance, _depositAmount);
    |
    |        assert(_reserveToken.transferFrom(msg.sender, this, _depositAmount)); // transfer _depositAmount funds from the caller in the reserve token
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(796)

[33mWarning[0m for UnrestrictedWrite in contract 'BancorChanger':
    |
    |/*
  > |    Utilities & Common Modifiers
    |*/
    |contract Utils {
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(4)

[33mWarning[0m for UnrestrictedWrite in contract 'BancorChanger':
    |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'BancorChanger':
    |    function transferManagement(address _newManager) public managerOnly {
    |        require(_newManager != manager);
  > |        newManager = _newManager;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(162)

[33mWarning[0m for UnrestrictedWrite in contract 'BancorChanger':
    |             or with very small numbers because of precision loss
    |*/
  > |contract BancorChanger is ITokenChanger, SmartTokenController, Managed {
    |    uint32 private constant MAX_CRR = 1000000;
    |    uint32 private constant MAX_CHANGE_FEE = 1000000;
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(384)

[33mWarning[0m for UnrestrictedWrite in contract 'BancorChanger':
    |        notThis(_formula)
    |    {
  > |        formula = _formula;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(518)

[33mWarning[0m for UnrestrictedWrite in contract 'BancorChanger':
    |    */
    |    function disableChanging(bool _disable) public managerOnly {
  > |        changingEnabled = !_disable;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(579)

[33mWarning[0m for UnrestrictedWrite in contract 'BancorChanger':
    |        validChangeFee(_changeFee)
    |    {
  > |        changeFee = _changeFee;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(593)

[33mWarning[0m for UnrestrictedWrite in contract 'BancorChanger':
    |        require(_token != token && !reserves[_token].isSet && totalReserveRatio + _ratio <= MAX_CRR); // validate input
    |
  > |        reserves[_token].virtualBalance = 0;
    |        reserves[_token].ratio = _ratio;
    |        reserves[_token].isVirtualBalanceEnabled = _enableVirtualBalance;
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(623)

[33mWarning[0m for UnrestrictedWrite in contract 'BancorChanger':
    |
    |        reserves[_token].virtualBalance = 0;
  > |        reserves[_token].ratio = _ratio;
    |        reserves[_token].isVirtualBalanceEnabled = _enableVirtualBalance;
    |        reserves[_token].isPurchaseEnabled = true;
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(624)

[33mWarning[0m for UnrestrictedWrite in contract 'BancorChanger':
    |        reserves[_token].virtualBalance = 0;
    |        reserves[_token].ratio = _ratio;
  > |        reserves[_token].isVirtualBalanceEnabled = _enableVirtualBalance;
    |        reserves[_token].isPurchaseEnabled = true;
    |        reserves[_token].isSet = true;
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(625)

[33mWarning[0m for UnrestrictedWrite in contract 'BancorChanger':
    |        reserves[_token].ratio = _ratio;
    |        reserves[_token].isVirtualBalanceEnabled = _enableVirtualBalance;
  > |        reserves[_token].isPurchaseEnabled = true;
    |        reserves[_token].isSet = true;
    |        reserveTokens.push(_token);
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(626)

[33mWarning[0m for UnrestrictedWrite in contract 'BancorChanger':
    |        reserves[_token].isVirtualBalanceEnabled = _enableVirtualBalance;
    |        reserves[_token].isPurchaseEnabled = true;
  > |        reserves[_token].isSet = true;
    |        reserveTokens.push(_token);
    |        totalReserveRatio += _ratio;
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(627)

[33mWarning[0m for UnrestrictedWrite in contract 'BancorChanger':
    |        reserves[_token].isPurchaseEnabled = true;
    |        reserves[_token].isSet = true;
  > |        reserveTokens.push(_token);
    |        totalReserveRatio += _ratio;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(628)

[33mWarning[0m for UnrestrictedWrite in contract 'BancorChanger':
    |        reserves[_token].isSet = true;
    |        reserveTokens.push(_token);
  > |        totalReserveRatio += _ratio;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(629)

[33mWarning[0m for UnrestrictedWrite in contract 'BancorChanger':
    |        require(totalReserveRatio - reserve.ratio + _ratio <= MAX_CRR); // validate input
    |
  > |        totalReserveRatio = totalReserveRatio - reserve.ratio + _ratio;
    |        reserve.ratio = _ratio;
    |        reserve.isVirtualBalanceEnabled = _enableVirtualBalance;
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(650)

[33mWarning[0m for UnrestrictedWrite in contract 'BancorChanger':
    |
    |        totalReserveRatio = totalReserveRatio - reserve.ratio + _ratio;
  > |        reserve.ratio = _ratio;
    |        reserve.isVirtualBalanceEnabled = _enableVirtualBalance;
    |        reserve.virtualBalance = _virtualBalance;
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(651)

[33mWarning[0m for UnrestrictedWrite in contract 'BancorChanger':
    |        totalReserveRatio = totalReserveRatio - reserve.ratio + _ratio;
    |        reserve.ratio = _ratio;
  > |        reserve.isVirtualBalanceEnabled = _enableVirtualBalance;
    |        reserve.virtualBalance = _virtualBalance;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(652)

[33mWarning[0m for UnrestrictedWrite in contract 'BancorChanger':
    |        reserve.ratio = _ratio;
    |        reserve.isVirtualBalanceEnabled = _enableVirtualBalance;
  > |        reserve.virtualBalance = _virtualBalance;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(653)

[33mWarning[0m for UnrestrictedWrite in contract 'BancorChanger':
    |        validReserve(_reserveToken)
    |    {
  > |        reserves[_reserveToken].isPurchaseEnabled = !_disable;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(669)

[33mWarning[0m for UnrestrictedWrite in contract 'BancorChanger':
    |        require(msg.sender == newOwner);
    |        OwnerUpdate(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = 0x0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'BancorChanger':
    |        OwnerUpdate(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = 0x0;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(127)

[33mWarning[0m for UnrestrictedWrite in contract 'BancorChanger':
    |        require(msg.sender == newManager);
    |        ManagerUpdate(manager, newManager);
  > |        manager = newManager;
    |        newManager = 0x0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(171)

[33mWarning[0m for UnrestrictedWrite in contract 'BancorChanger':
    |        ManagerUpdate(manager, newManager);
    |        manager = newManager;
  > |        newManager = 0x0;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(172)

[33mWarning[0m for LockedEther in contract 'Managed':
    |    Provides support and utilities for contract management
    |*/
  > |contract Managed {
    |    address public manager;
    |    address public newManager;
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(134)

[33mWarning[0m for MissingInputValidation in contract 'Managed':
    |*/
    |contract Managed {
  > |    address public manager;
    |    address public newManager;
    |
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(135)

[33mWarning[0m for MissingInputValidation in contract 'Managed':
    |contract Managed {
    |    address public manager;
  > |    address public newManager;
    |
    |    event ManagerUpdate(address _prevManager, address _newManager);
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(136)

[33mWarning[0m for MissingInputValidation in contract 'Managed':
    |        @param _newManager    new contract manager
    |    */
  > |    function transferManagement(address _newManager) public managerOnly {
    |        require(_newManager != manager);
    |        newManager = _newManager;
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(160)

[33mWarning[0m for MissingInputValidation in contract 'Managed':
    |        @dev used by a new manager to accept a management transfer
    |    */
  > |    function acceptManagement() public {
    |        require(msg.sender == newManager);
    |        ManagerUpdate(manager, newManager);
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(168)

[33mWarning[0m for UnrestrictedWrite in contract 'Managed':
    |    function transferManagement(address _newManager) public managerOnly {
    |        require(_newManager != manager);
  > |        newManager = _newManager;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(162)

[33mWarning[0m for UnrestrictedWrite in contract 'Managed':
    |        require(msg.sender == newManager);
    |        ManagerUpdate(manager, newManager);
  > |        manager = newManager;
    |        newManager = 0x0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(171)

[33mWarning[0m for UnrestrictedWrite in contract 'Managed':
    |        ManagerUpdate(manager, newManager);
    |        manager = newManager;
  > |        newManager = 0x0;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(172)

[33mWarning[0m for LockedEther in contract 'Owned':
    |    Provides support and utilities for contract ownership
    |*/
  > |contract Owned is IOwned {
    |    address public owner;
    |    address public newOwner;
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(89)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |*/
    |contract Owned is IOwned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(90)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned is IOwned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnerUpdate(address _prevOwner, address _newOwner);
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(91)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |        @param _newOwner    new contract owner
    |    */
  > |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
    |        newOwner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(115)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |        @dev used by a new owner to accept an ownership transfer
    |    */
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnerUpdate(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(123)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(msg.sender == newOwner);
    |        OwnerUpdate(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = 0x0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        OwnerUpdate(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = 0x0;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(127)

[33mWarning[0m for LockedEther in contract 'SmartTokenController':
    |    Doing that will also remove the owner's ability to upgrade the controller.
    |*/
  > |contract SmartTokenController is TokenHolder {
    |    ISmartToken public token;   // smart token
    |
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(232)

[31mViolation[0m for MissingInputValidation in contract 'SmartTokenController':
    |        @param _amount  amount to withdraw
    |    */
  > |    function withdrawTokens(IERC20Token _token, address _to, uint256 _amount)
    |        public
    |        ownerOnly
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(205)

[31mViolation[0m for MissingInputValidation in contract 'SmartTokenController':
    |        @param _newOwner    new token owner
    |    */
  > |    function transferTokenOwnership(address _newOwner) public ownerOnly {
    |        token.transferOwnership(_newOwner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(263)

[31mViolation[0m for MissingInputValidation in contract 'SmartTokenController':
    |        @param _disable    true to disable transfers, false to enable them
    |    */
  > |    function disableTokenTransfers(bool _disable) public ownerOnly {
    |        token.disableTransfers(_disable);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(281)

[31mViolation[0m for MissingInputValidation in contract 'SmartTokenController':
    |        @param _amount  amount to withdraw
    |    */
  > |    function withdrawFromToken(IERC20Token _token, address _to, uint256 _amount) public ownerOnly {
    |        token.withdrawTokens(_token, _to, _amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(293)

[33mWarning[0m for MissingInputValidation in contract 'SmartTokenController':
    |*/
    |contract Owned is IOwned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(90)

[33mWarning[0m for MissingInputValidation in contract 'SmartTokenController':
    |contract Owned is IOwned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnerUpdate(address _prevOwner, address _newOwner);
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(91)

[33mWarning[0m for MissingInputValidation in contract 'SmartTokenController':
    |        @param _newOwner    new contract owner
    |    */
  > |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
    |        newOwner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(115)

[33mWarning[0m for MissingInputValidation in contract 'SmartTokenController':
    |        @dev used by a new owner to accept an ownership transfer
    |    */
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnerUpdate(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(123)

[33mWarning[0m for MissingInputValidation in contract 'SmartTokenController':
    |*/
    |contract SmartTokenController is TokenHolder {
  > |    ISmartToken public token;   // smart token
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(233)

[33mWarning[0m for MissingInputValidation in contract 'SmartTokenController':
    |        can only be called by the contract owner
    |    */
  > |    function acceptTokenOwnership() public ownerOnly {
    |        token.acceptOwnership();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(271)

[33mWarning[0m for UnhandledException in contract 'SmartTokenController':
    |        notThis(_to)
    |    {
  > |        assert(_token.transfer(_to, _amount));
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(212)

[33mWarning[0m for UnhandledException in contract 'SmartTokenController':
    |    */
    |    function transferTokenOwnership(address _newOwner) public ownerOnly {
  > |        token.transferOwnership(_newOwner);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(264)

[33mWarning[0m for UnhandledException in contract 'SmartTokenController':
    |    */
    |    function acceptTokenOwnership() public ownerOnly {
  > |        token.acceptOwnership();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(272)

[33mWarning[0m for UnhandledException in contract 'SmartTokenController':
    |    */
    |    function disableTokenTransfers(bool _disable) public ownerOnly {
  > |        token.disableTransfers(_disable);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(282)

[33mWarning[0m for UnhandledException in contract 'SmartTokenController':
    |    */
    |    function withdrawFromToken(IERC20Token _token, address _to, uint256 _amount) public ownerOnly {
  > |        token.withdrawTokens(_token, _to, _amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(294)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SmartTokenController':
    |        notThis(_to)
    |    {
  > |        assert(_token.transfer(_to, _amount));
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(212)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SmartTokenController':
    |    */
    |    function transferTokenOwnership(address _newOwner) public ownerOnly {
  > |        token.transferOwnership(_newOwner);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(264)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SmartTokenController':
    |    */
    |    function acceptTokenOwnership() public ownerOnly {
  > |        token.acceptOwnership();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(272)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SmartTokenController':
    |    */
    |    function disableTokenTransfers(bool _disable) public ownerOnly {
  > |        token.disableTransfers(_disable);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(282)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SmartTokenController':
    |    */
    |    function withdrawFromToken(IERC20Token _token, address _to, uint256 _amount) public ownerOnly {
  > |        token.withdrawTokens(_token, _to, _amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(294)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartTokenController':
    |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartTokenController':
    |        require(msg.sender == newOwner);
    |        OwnerUpdate(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = 0x0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartTokenController':
    |        OwnerUpdate(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = 0x0;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(127)

[33mWarning[0m for LockedEther in contract 'TokenHolder':
    |    the owner to send tokens that were sent to the contract by mistake back to their sender.
    |*/
  > |contract TokenHolder is ITokenHolder, Owned, Utils {
    |    /**
    |        @dev constructor
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(190)

[31mViolation[0m for MissingInputValidation in contract 'TokenHolder':
    |        @param _amount  amount to withdraw
    |    */
  > |    function withdrawTokens(IERC20Token _token, address _to, uint256 _amount)
    |        public
    |        ownerOnly
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(205)

[33mWarning[0m for MissingInputValidation in contract 'TokenHolder':
    |*/
    |contract Owned is IOwned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(90)

[33mWarning[0m for MissingInputValidation in contract 'TokenHolder':
    |contract Owned is IOwned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnerUpdate(address _prevOwner, address _newOwner);
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(91)

[33mWarning[0m for MissingInputValidation in contract 'TokenHolder':
    |        @param _newOwner    new contract owner
    |    */
  > |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
    |        newOwner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(115)

[33mWarning[0m for MissingInputValidation in contract 'TokenHolder':
    |        @dev used by a new owner to accept an ownership transfer
    |    */
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnerUpdate(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(123)

[33mWarning[0m for UnhandledException in contract 'TokenHolder':
    |        notThis(_to)
    |    {
  > |        assert(_token.transfer(_to, _amount));
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(212)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenHolder':
    |        notThis(_to)
    |    {
  > |        assert(_token.transfer(_to, _amount));
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(212)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenHolder':
    |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenHolder':
    |        require(msg.sender == newOwner);
    |        OwnerUpdate(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = 0x0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenHolder':
    |        OwnerUpdate(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = 0x0;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(127)

[33mWarning[0m for LockedEther in contract 'Utils':
    |    Utilities & Common Modifiers
    |*/
  > |contract Utils {
    |    /**
    |        constructor
  at /home/jiaming/mavs_srcs/contract@0x259b0e2e5101fb5dedf3928d4d6ccee05ab77a2b.sol(6)


