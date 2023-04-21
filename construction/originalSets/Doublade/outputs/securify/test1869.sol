Processing contract: /home/jiaming/mavs_srcs/contract@0x77b2d3681c8c715e7def3ac47e35b00b73de4272.sol:BurnableTokenInterface
Processing contract: /home/jiaming/mavs_srcs/contract@0x77b2d3681c8c715e7def3ac47e35b00b73de4272.sol:CappedCrowdsale
Processing contract: /home/jiaming/mavs_srcs/contract@0x77b2d3681c8c715e7def3ac47e35b00b73de4272.sol:Crowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x77b2d3681c8c715e7def3ac47e35b00b73de4272.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x77b2d3681c8c715e7def3ac47e35b00b73de4272.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x77b2d3681c8c715e7def3ac47e35b00b73de4272.sol:FinalizableCrowdsale
Processing contract: /home/jiaming/mavs_srcs/contract@0x77b2d3681c8c715e7def3ac47e35b00b73de4272.sol:GrapevineCrowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x77b2d3681c8c715e7def3ac47e35b00b73de4272.sol:GrapevineWhitelistInterface
Processing contract: /home/jiaming/mavs_srcs/contract@0x77b2d3681c8c715e7def3ac47e35b00b73de4272.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x77b2d3681c8c715e7def3ac47e35b00b73de4272.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x77b2d3681c8c715e7def3ac47e35b00b73de4272.sol:PostDeliveryCrowdsale
Processing contract: /home/jiaming/mavs_srcs/contract@0x77b2d3681c8c715e7def3ac47e35b00b73de4272.sol:RefundVault
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x77b2d3681c8c715e7def3ac47e35b00b73de4272.sol:RefundableCrowdsale
Processing contract: /home/jiaming/mavs_srcs/contract@0x77b2d3681c8c715e7def3ac47e35b00b73de4272.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x77b2d3681c8c715e7def3ac47e35b00b73de4272.sol:TimedCrowdsale
Processing contract: /home/jiaming/mavs_srcs/contract@0x77b2d3681c8c715e7def3ac47e35b00b73de4272.sol:TokenTimelockControllerInterface
[33mWarning[0m for DAOConstantGas in contract 'Crowdsale':
    |   */
    |  function _forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x77b2d3681c8c715e7def3ac47e35b00b73de4272.sol(353)

[33mWarning[0m for LockedEther in contract 'Crowdsale':
    | * behavior.
    | */
  > |contract Crowdsale {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x77b2d3681c8c715e7def3ac47e35b00b73de4272.sol(176)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |    internal
    |  {
  > |    token.transfer(_beneficiary, _tokenAmount);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x77b2d3681c8c715e7def3ac47e35b00b73de4272.sol(307)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |   */
    |  function _forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x77b2d3681c8c715e7def3ac47e35b00b73de4272.sol(353)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |    internal
    |  {
  > |    token.transfer(_beneficiary, _tokenAmount);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x77b2d3681c8c715e7def3ac47e35b00b73de4272.sol(307)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |   */
    |  function _forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x77b2d3681c8c715e7def3ac47e35b00b73de4272.sol(353)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |
    |    // update state
  > |    weiRaised = weiRaised.add(weiAmount);
    |
    |    _processPurchase(_beneficiary, tokens);
  at /home/jiaming/mavs_srcs/contract@0x77b2d3681c8c715e7def3ac47e35b00b73de4272.sol(247)

[33mWarning[0m for DAO in contract 'GrapevineCrowdsale':
    |   */
    |  function _forwardFunds() internal {
  > |    vault.deposit.value(msg.value)(msg.sender);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x77b2d3681c8c715e7def3ac47e35b00b73de4272.sol(680)

[33mWarning[0m for LockedEther in contract 'GrapevineCrowdsale':
    | * @dev Grapevine Crowdsale
    | **/
  > |contract GrapevineCrowdsale is CappedCrowdsale, TimedCrowdsale, Pausable, RefundableCrowdsale, PostDeliveryCrowdsale {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x77b2d3681c8c715e7def3ac47e35b00b73de4272.sol(783)

[33mWarning[0m for UnhandledException in contract 'GrapevineCrowdsale':
    |    internal
    |  {
  > |    token.transfer(_beneficiary, _tokenAmount);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x77b2d3681c8c715e7def3ac47e35b00b73de4272.sol(307)

[33mWarning[0m for UnhandledException in contract 'GrapevineCrowdsale':
    |    require(!goalReached());
    |
  > |    vault.refund(msg.sender);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x77b2d3681c8c715e7def3ac47e35b00b73de4272.sol(652)

[33mWarning[0m for UnhandledException in contract 'GrapevineCrowdsale':
    |  function finalization() internal {
    |    if (goalReached()) {
  > |      vault.close();
    |    } else {
    |      vault.enableRefunds();
  at /home/jiaming/mavs_srcs/contract@0x77b2d3681c8c715e7def3ac47e35b00b73de4272.sol(668)

[33mWarning[0m for UnhandledException in contract 'GrapevineCrowdsale':
    |      vault.close();
    |    } else {
  > |      vault.enableRefunds();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x77b2d3681c8c715e7def3ac47e35b00b73de4272.sol(670)

[33mWarning[0m for UnhandledException in contract 'GrapevineCrowdsale':
    |   */
    |  function _forwardFunds() internal {
  > |    vault.deposit.value(msg.value)(msg.sender);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x77b2d3681c8c715e7def3ac47e35b00b73de4272.sol(680)

[33mWarning[0m for UnhandledException in contract 'GrapevineCrowdsale':
    |  function buyTokens(address _beneficiary, bytes _whitelistSign) public payable {
    |    // since the earlyInvestors are by definition autorised, we check first the earlyInvestors.
  > |    if (!earlyInvestors.handleOffchainWhitelisted(_beneficiary, _whitelistSign)) {
    |      authorisedInvestors.handleOffchainWhitelisted(_beneficiary, _whitelistSign);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x77b2d3681c8c715e7def3ac47e35b00b73de4272.sol(836)

[33mWarning[0m for UnhandledException in contract 'GrapevineCrowdsale':
    |    // since the earlyInvestors are by definition autorised, we check first the earlyInvestors.
    |    if (!earlyInvestors.handleOffchainWhitelisted(_beneficiary, _whitelistSign)) {
  > |      authorisedInvestors.handleOffchainWhitelisted(_beneficiary, _whitelistSign);
    |    }
    |    super.buyTokens(_beneficiary);
  at /home/jiaming/mavs_srcs/contract@0x77b2d3681c8c715e7def3ac47e35b00b73de4272.sol(837)

[33mWarning[0m for UnhandledException in contract 'GrapevineCrowdsale':
    |    if (_bonusTokens > 0) {
    |      bonuses[msg.sender] = 0;
  > |      require(token.approve(address(timelockController), _bonusTokens));
    |      require(
    |        timelockController.createInvestorTokenTimeLock(
  at /home/jiaming/mavs_srcs/contract@0x77b2d3681c8c715e7def3ac47e35b00b73de4272.sol(853)

[33mWarning[0m for UnhandledException in contract 'GrapevineCrowdsale':
    |      require(token.approve(address(timelockController), _bonusTokens));
    |      require(
  > |        timelockController.createInvestorTokenTimeLock(
    |          msg.sender,
    |          _bonusTokens,
  at /home/jiaming/mavs_srcs/contract@0x77b2d3681c8c715e7def3ac47e35b00b73de4272.sol(855)

[33mWarning[0m for UnhandledException in contract 'GrapevineCrowdsale':
    |      uint256 _bonusTokens = _tokenAmount.mul(_bonus).div(100);
    |      // make sure the crowdsale contract has enough tokens to transfer the purchased tokens and to create the timelock bonus.
  > |      uint256 _currentBalance = token.balanceOf(this);
    |      require(_currentBalance >= _totalTokens.add(_bonusTokens));
    |      bonuses[_beneficiary] = bonuses[_beneficiary].add(_bonusTokens);
  at /home/jiaming/mavs_srcs/contract@0x77b2d3681c8c715e7def3ac47e35b00b73de4272.sol(878)

[33mWarning[0m for UnhandledException in contract 'GrapevineCrowdsale':
    |   */
    |  function _preValidatePurchase(address _beneficiary, uint256 _weiAmount) internal whenNotPaused {
  > |    require(authorisedInvestors.whitelist(_beneficiary) || earlyInvestors.whitelist(_beneficiary));
    |    super._preValidatePurchase(_beneficiary, _weiAmount);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x77b2d3681c8c715e7def3ac47e35b00b73de4272.sol(894)

[33mWarning[0m for UnhandledException in contract 'GrapevineCrowdsale':
    |    
    |    // at this level the amount was added to weiRaised
  > |    if ( (weiRaised.sub(_value) < goal) && earlyInvestors.whitelist(_beneficiary) ) {
    |      _bonus = 30;
    |    } else {
  at /home/jiaming/mavs_srcs/contract@0x77b2d3681c8c715e7def3ac47e35b00b73de4272.sol(915)

[33mWarning[0m for UnhandledException in contract 'GrapevineCrowdsale':
    |      // activate the controller to enable the investors and team members 
    |      // to claim their tokens when the time comes.
  > |      timelockController.activate();
    |
    |      // calculate the quantity of tokens to be burnt. The bonuses are already transfered to the Controller.
  at /home/jiaming/mavs_srcs/contract@0x77b2d3681c8c715e7def3ac47e35b00b73de4272.sol(941)

[33mWarning[0m for UnhandledException in contract 'GrapevineCrowdsale':
    |
    |      // calculate the quantity of tokens to be burnt. The bonuses are already transfered to the Controller.
  > |      uint256 balance = token.balanceOf(this);
    |      uint256 remainingTokens = balance.sub(tokensToBeDelivered);
    |      if (remainingTokens>0) {
  at /home/jiaming/mavs_srcs/contract@0x77b2d3681c8c715e7def3ac47e35b00b73de4272.sol(944)

[33mWarning[0m for UnhandledException in contract 'GrapevineCrowdsale':
    |      uint256 remainingTokens = balance.sub(tokensToBeDelivered);
    |      if (remainingTokens>0) {
  > |        BurnableTokenInterface(address(token)).burn(remainingTokens);
    |      }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x77b2d3681c8c715e7def3ac47e35b00b73de4272.sol(947)

[33mWarning[0m for UnhandledException in contract 'GrapevineCrowdsale':
    |      }
    |    }
  > |    Ownable(address(token)).transferOwnership(owner);
    |    super.finalization();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x77b2d3681c8c715e7def3ac47e35b00b73de4272.sol(950)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GrapevineCrowdsale':
    |    internal
    |  {
  > |    token.transfer(_beneficiary, _tokenAmount);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x77b2d3681c8c715e7def3ac47e35b00b73de4272.sol(307)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GrapevineCrowdsale':
    |    require(!goalReached());
    |
  > |    vault.refund(msg.sender);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x77b2d3681c8c715e7def3ac47e35b00b73de4272.sol(652)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GrapevineCrowdsale':
    |  function finalization() internal {
    |    if (goalReached()) {
  > |      vault.close();
    |    } else {
    |      vault.enableRefunds();
  at /home/jiaming/mavs_srcs/contract@0x77b2d3681c8c715e7def3ac47e35b00b73de4272.sol(668)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GrapevineCrowdsale':
    |      vault.close();
    |    } else {
  > |      vault.enableRefunds();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x77b2d3681c8c715e7def3ac47e35b00b73de4272.sol(670)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GrapevineCrowdsale':
    |   */
    |  function _forwardFunds() internal {
  > |    vault.deposit.value(msg.value)(msg.sender);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x77b2d3681c8c715e7def3ac47e35b00b73de4272.sol(680)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GrapevineCrowdsale':
    |  function buyTokens(address _beneficiary, bytes _whitelistSign) public payable {
    |    // since the earlyInvestors are by definition autorised, we check first the earlyInvestors.
  > |    if (!earlyInvestors.handleOffchainWhitelisted(_beneficiary, _whitelistSign)) {
    |      authorisedInvestors.handleOffchainWhitelisted(_beneficiary, _whitelistSign);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x77b2d3681c8c715e7def3ac47e35b00b73de4272.sol(836)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GrapevineCrowdsale':
    |    // since the earlyInvestors are by definition autorised, we check first the earlyInvestors.
    |    if (!earlyInvestors.handleOffchainWhitelisted(_beneficiary, _whitelistSign)) {
  > |      authorisedInvestors.handleOffchainWhitelisted(_beneficiary, _whitelistSign);
    |    }
    |    super.buyTokens(_beneficiary);
  at /home/jiaming/mavs_srcs/contract@0x77b2d3681c8c715e7def3ac47e35b00b73de4272.sol(837)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GrapevineCrowdsale':
    |    if (_bonusTokens > 0) {
    |      bonuses[msg.sender] = 0;
  > |      require(token.approve(address(timelockController), _bonusTokens));
    |      require(
    |        timelockController.createInvestorTokenTimeLock(
  at /home/jiaming/mavs_srcs/contract@0x77b2d3681c8c715e7def3ac47e35b00b73de4272.sol(853)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GrapevineCrowdsale':
    |      require(token.approve(address(timelockController), _bonusTokens));
    |      require(
  > |        timelockController.createInvestorTokenTimeLock(
    |          msg.sender,
    |          _bonusTokens,
  at /home/jiaming/mavs_srcs/contract@0x77b2d3681c8c715e7def3ac47e35b00b73de4272.sol(855)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GrapevineCrowdsale':
    |      uint256 _bonusTokens = _tokenAmount.mul(_bonus).div(100);
    |      // make sure the crowdsale contract has enough tokens to transfer the purchased tokens and to create the timelock bonus.
  > |      uint256 _currentBalance = token.balanceOf(this);
    |      require(_currentBalance >= _totalTokens.add(_bonusTokens));
    |      bonuses[_beneficiary] = bonuses[_beneficiary].add(_bonusTokens);
  at /home/jiaming/mavs_srcs/contract@0x77b2d3681c8c715e7def3ac47e35b00b73de4272.sol(878)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GrapevineCrowdsale':
    |   */
    |  function _preValidatePurchase(address _beneficiary, uint256 _weiAmount) internal whenNotPaused {
  > |    require(authorisedInvestors.whitelist(_beneficiary) || earlyInvestors.whitelist(_beneficiary));
    |    super._preValidatePurchase(_beneficiary, _weiAmount);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x77b2d3681c8c715e7def3ac47e35b00b73de4272.sol(894)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GrapevineCrowdsale':
    |    
    |    // at this level the amount was added to weiRaised
  > |    if ( (weiRaised.sub(_value) < goal) && earlyInvestors.whitelist(_beneficiary) ) {
    |      _bonus = 30;
    |    } else {
  at /home/jiaming/mavs_srcs/contract@0x77b2d3681c8c715e7def3ac47e35b00b73de4272.sol(915)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GrapevineCrowdsale':
    |      // activate the controller to enable the investors and team members 
    |      // to claim their tokens when the time comes.
  > |      timelockController.activate();
    |
    |      // calculate the quantity of tokens to be burnt. The bonuses are already transfered to the Controller.
  at /home/jiaming/mavs_srcs/contract@0x77b2d3681c8c715e7def3ac47e35b00b73de4272.sol(941)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GrapevineCrowdsale':
    |
    |      // calculate the quantity of tokens to be burnt. The bonuses are already transfered to the Controller.
  > |      uint256 balance = token.balanceOf(this);
    |      uint256 remainingTokens = balance.sub(tokensToBeDelivered);
    |      if (remainingTokens>0) {
  at /home/jiaming/mavs_srcs/contract@0x77b2d3681c8c715e7def3ac47e35b00b73de4272.sol(944)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GrapevineCrowdsale':
    |      uint256 remainingTokens = balance.sub(tokensToBeDelivered);
    |      if (remainingTokens>0) {
  > |        BurnableTokenInterface(address(token)).burn(remainingTokens);
    |      }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x77b2d3681c8c715e7def3ac47e35b00b73de4272.sol(947)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GrapevineCrowdsale':
    |      }
    |    }
  > |    Ownable(address(token)).transferOwnership(owner);
    |    super.finalization();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x77b2d3681c8c715e7def3ac47e35b00b73de4272.sol(950)

[33mWarning[0m for UnrestrictedWrite in contract 'GrapevineCrowdsale':
    |
    |    // update state
  > |    weiRaised = weiRaised.add(weiAmount);
    |
    |    _processPurchase(_beneficiary, tokens);
  at /home/jiaming/mavs_srcs/contract@0x77b2d3681c8c715e7def3ac47e35b00b73de4272.sol(247)

[33mWarning[0m for UnrestrictedWrite in contract 'GrapevineCrowdsale':
    |    uint256 amount = balances[msg.sender];
    |    require(amount > 0);
  > |    balances[msg.sender] = 0;
    |    _deliverTokens(msg.sender, amount);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x77b2d3681c8c715e7def3ac47e35b00b73de4272.sol(436)

[33mWarning[0m for UnrestrictedWrite in contract 'GrapevineCrowdsale':
    |    internal
    |  {
  > |    balances[_beneficiary] = balances[_beneficiary].add(_tokenAmount);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x77b2d3681c8c715e7def3ac47e35b00b73de4272.sol(451)

[33mWarning[0m for UnrestrictedWrite in contract 'GrapevineCrowdsale':
    |    emit Finalized();
    |
  > |    isFinalized = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x77b2d3681c8c715e7def3ac47e35b00b73de4272.sol(542)

[33mWarning[0m for UnrestrictedWrite in contract 'GrapevineCrowdsale':
    |    uint256 _bonusTokens = bonuses[msg.sender];
    |    if (_bonusTokens > 0) {
  > |      bonuses[msg.sender] = 0;
    |      require(token.approve(address(timelockController), _bonusTokens));
    |      require(
  at /home/jiaming/mavs_srcs/contract@0x77b2d3681c8c715e7def3ac47e35b00b73de4272.sol(852)

[33mWarning[0m for UnrestrictedWrite in contract 'GrapevineCrowdsale':
    |      uint256 _currentBalance = token.balanceOf(this);
    |      require(_currentBalance >= _totalTokens.add(_bonusTokens));
  > |      bonuses[_beneficiary] = bonuses[_beneficiary].add(_bonusTokens);
    |      _totalTokens = _totalTokens.add(_bonusTokens);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x77b2d3681c8c715e7def3ac47e35b00b73de4272.sol(880)

[33mWarning[0m for UnrestrictedWrite in contract 'GrapevineCrowdsale':
    |      _totalTokens = _totalTokens.add(_bonusTokens);
    |    }
  > |    tokensToBeDelivered = tokensToBeDelivered.add(_totalTokens);
    |    super._processPurchase(_beneficiary, _tokenAmount);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x77b2d3681c8c715e7def3ac47e35b00b73de4272.sol(883)

[33mWarning[0m for UnrestrictedWrite in contract 'GrapevineCrowdsale':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x77b2d3681c8c715e7def3ac47e35b00b73de4272.sol(495)

[33mWarning[0m for UnrestrictedWrite in contract 'GrapevineCrowdsale':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x77b2d3681c8c715e7def3ac47e35b00b73de4272.sol(513)

[33mWarning[0m for UnrestrictedWrite in contract 'GrapevineCrowdsale':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x77b2d3681c8c715e7def3ac47e35b00b73de4272.sol(763)

[33mWarning[0m for UnrestrictedWrite in contract 'GrapevineCrowdsale':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x77b2d3681c8c715e7def3ac47e35b00b73de4272.sol(771)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x77b2d3681c8c715e7def3ac47e35b00b73de4272.sol(463)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x77b2d3681c8c715e7def3ac47e35b00b73de4272.sol(464)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @dev Allows the current owner to relinquish control of the contract.
    |   */
  > |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
    |    owner = address(0);
  at /home/jiaming/mavs_srcs/contract@0x77b2d3681c8c715e7def3ac47e35b00b73de4272.sol(493)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address _newOwner) public onlyOwner {
    |    _transferOwnership(_newOwner);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x77b2d3681c8c715e7def3ac47e35b00b73de4272.sol(502)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function _transferOwnership(address _newOwner) internal {
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  at /home/jiaming/mavs_srcs/contract@0x77b2d3681c8c715e7def3ac47e35b00b73de4272.sol(510)

[31mViolation[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x77b2d3681c8c715e7def3ac47e35b00b73de4272.sol(513)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x77b2d3681c8c715e7def3ac47e35b00b73de4272.sol(495)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x77b2d3681c8c715e7def3ac47e35b00b73de4272.sol(513)

[33mWarning[0m for LockedEther in contract 'Pausable':
    | * @dev Base contract which allows children to implement an emergency stop mechanism.
    | */
  > |contract Pausable is Ownable {
    |  event Pause();
    |  event Unpause();
  at /home/jiaming/mavs_srcs/contract@0x77b2d3681c8c715e7def3ac47e35b00b73de4272.sol(736)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x77b2d3681c8c715e7def3ac47e35b00b73de4272.sol(464)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev Allows the current owner to relinquish control of the contract.
    |   */
  > |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
    |    owner = address(0);
  at /home/jiaming/mavs_srcs/contract@0x77b2d3681c8c715e7def3ac47e35b00b73de4272.sol(493)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address _newOwner) public onlyOwner {
    |    _transferOwnership(_newOwner);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x77b2d3681c8c715e7def3ac47e35b00b73de4272.sol(502)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function _transferOwnership(address _newOwner) internal {
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  at /home/jiaming/mavs_srcs/contract@0x77b2d3681c8c715e7def3ac47e35b00b73de4272.sol(510)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  event Unpause();
    |
  > |  bool public paused = false;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x77b2d3681c8c715e7def3ac47e35b00b73de4272.sol(740)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to pause, triggers stopped state
    |   */
  > |  function pause() onlyOwner whenNotPaused public {
    |    paused = true;
    |    emit Pause();
  at /home/jiaming/mavs_srcs/contract@0x77b2d3681c8c715e7def3ac47e35b00b73de4272.sol(762)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to unpause, returns to normal state
    |   */
  > |  function unpause() onlyOwner whenPaused public {
    |    paused = false;
    |    emit Unpause();
  at /home/jiaming/mavs_srcs/contract@0x77b2d3681c8c715e7def3ac47e35b00b73de4272.sol(770)

[31mViolation[0m for UnrestrictedWrite in contract 'Pausable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x77b2d3681c8c715e7def3ac47e35b00b73de4272.sol(513)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x77b2d3681c8c715e7def3ac47e35b00b73de4272.sol(495)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x77b2d3681c8c715e7def3ac47e35b00b73de4272.sol(513)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x77b2d3681c8c715e7def3ac47e35b00b73de4272.sol(763)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x77b2d3681c8c715e7def3ac47e35b00b73de4272.sol(771)

[33mWarning[0m for DAOConstantGas in contract 'RefundVault':
    |    state = State.Closed;
    |    emit Closed();
  > |    wallet.transfer(address(this).balance);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x77b2d3681c8c715e7def3ac47e35b00b73de4272.sol(597)

[33mWarning[0m for DAOConstantGas in contract 'RefundVault':
    |    uint256 depositedValue = deposited[investor];
    |    deposited[investor] = 0;
  > |    investor.transfer(depositedValue);
    |    emit Refunded(investor, depositedValue);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x77b2d3681c8c715e7def3ac47e35b00b73de4272.sol(613)

[33mWarning[0m for LockedEther in contract 'RefundVault':
    | * and forwarding it if crowdsale is successful.
    | */
  > |contract RefundVault is Ownable {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x77b2d3681c8c715e7def3ac47e35b00b73de4272.sol(563)

[31mViolation[0m for TODAmount in contract 'RefundVault':
    |    state = State.Closed;
    |    emit Closed();
  > |    wallet.transfer(address(this).balance);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x77b2d3681c8c715e7def3ac47e35b00b73de4272.sol(597)

[31mViolation[0m for TODReceiver in contract 'RefundVault':
    |    state = State.Closed;
    |    emit Closed();
  > |    wallet.transfer(address(this).balance);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x77b2d3681c8c715e7def3ac47e35b00b73de4272.sol(597)

[33mWarning[0m for TODReceiver in contract 'RefundVault':
    |    uint256 depositedValue = deposited[investor];
    |    deposited[investor] = 0;
  > |    investor.transfer(depositedValue);
    |    emit Refunded(investor, depositedValue);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x77b2d3681c8c715e7def3ac47e35b00b73de4272.sol(613)

[33mWarning[0m for UnhandledException in contract 'RefundVault':
    |    state = State.Closed;
    |    emit Closed();
  > |    wallet.transfer(address(this).balance);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x77b2d3681c8c715e7def3ac47e35b00b73de4272.sol(597)

[33mWarning[0m for UnhandledException in contract 'RefundVault':
    |    uint256 depositedValue = deposited[investor];
    |    deposited[investor] = 0;
  > |    investor.transfer(depositedValue);
    |    emit Refunded(investor, depositedValue);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x77b2d3681c8c715e7def3ac47e35b00b73de4272.sol(613)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RefundVault':
    |    state = State.Closed;
    |    emit Closed();
  > |    wallet.transfer(address(this).balance);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x77b2d3681c8c715e7def3ac47e35b00b73de4272.sol(597)

[31mViolation[0m for UnrestrictedWrite in contract 'RefundVault':
    |    require(state == State.Refunding);
    |    uint256 depositedValue = deposited[investor];
  > |    deposited[investor] = 0;
    |    investor.transfer(depositedValue);
    |    emit Refunded(investor, depositedValue);
  at /home/jiaming/mavs_srcs/contract@0x77b2d3681c8c715e7def3ac47e35b00b73de4272.sol(612)

[33mWarning[0m for UnrestrictedWrite in contract 'RefundVault':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x77b2d3681c8c715e7def3ac47e35b00b73de4272.sol(495)

[33mWarning[0m for UnrestrictedWrite in contract 'RefundVault':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x77b2d3681c8c715e7def3ac47e35b00b73de4272.sol(513)

[33mWarning[0m for UnrestrictedWrite in contract 'RefundVault':
    |  function deposit(address investor) onlyOwner public payable {
    |    require(state == State.Active);
  > |    deposited[investor] = deposited[investor].add(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x77b2d3681c8c715e7def3ac47e35b00b73de4272.sol(590)

[33mWarning[0m for UnrestrictedWrite in contract 'RefundVault':
    |  function close() onlyOwner public {
    |    require(state == State.Active);
  > |    state = State.Closed;
    |    emit Closed();
    |    wallet.transfer(address(this).balance);
  at /home/jiaming/mavs_srcs/contract@0x77b2d3681c8c715e7def3ac47e35b00b73de4272.sol(595)

[33mWarning[0m for UnrestrictedWrite in contract 'RefundVault':
    |  function enableRefunds() onlyOwner public {
    |    require(state == State.Active);
  > |    state = State.Refunding;
    |    emit RefundsEnabled();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x77b2d3681c8c715e7def3ac47e35b00b73de4272.sol(602)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x77b2d3681c8c715e7def3ac47e35b00b73de4272.sol(81)


