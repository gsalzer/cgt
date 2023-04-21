Processing contract: /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol:CappedCompositeCrowdsale
Processing contract: /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol:CompositeCrowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol:EthicHubPresale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol:EthicHubTokenDistributionStrategy
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol:EthixToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol:FinalizableCompositeCrowdsale
Processing contract: /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol:FixedPoolWithBonusTokenDistributionStrategy
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol:PausableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol:RefundVault
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol:RefundableCompositeCrowdsale
Processing contract: /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol:TokenDistributionStrategy
Processing contract: /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol:VestedTokenDistributionStrategy
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol:WhitelistedDistributionStrategy
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    | * @dev Basic version of StandardToken, with no allowances.
    | */
  > |contract BasicToken is ERC20Basic {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(125)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(140)

[33mWarning[0m for DAOConstantGas in contract 'CompositeCrowdsale':
    |  // override to create custom fund forwarding mechanisms
    |  function forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(786)

[33mWarning[0m for LockedEther in contract 'CompositeCrowdsale':
    | *
    | */
  > |contract CompositeCrowdsale is Ownable {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(718)

[33mWarning[0m for UnhandledException in contract 'CompositeCrowdsale':
    |
    |    // calculate token amount to be created
  > |    uint256 tokens = tokenDistribution.calculateTokenAmount(weiAmount, beneficiary);
    |    // update state
    |    weiRaised = weiRaised.add(weiAmount);
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(773)

[33mWarning[0m for UnhandledException in contract 'CompositeCrowdsale':
    |    weiRaised = weiRaised.add(weiAmount);
    |
  > |    tokenDistribution.distributeTokens(beneficiary, tokens);
    |    TokenPurchase(msg.sender, beneficiary, weiAmount, tokens);
    |
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(777)

[33mWarning[0m for UnhandledException in contract 'CompositeCrowdsale':
    |  // override to create custom fund forwarding mechanisms
    |  function forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(786)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CompositeCrowdsale':
    |
    |    // calculate token amount to be created
  > |    uint256 tokens = tokenDistribution.calculateTokenAmount(weiAmount, beneficiary);
    |    // update state
    |    weiRaised = weiRaised.add(weiAmount);
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(773)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CompositeCrowdsale':
    |    weiRaised = weiRaised.add(weiAmount);
    |
  > |    tokenDistribution.distributeTokens(beneficiary, tokens);
    |    TokenPurchase(msg.sender, beneficiary, weiAmount, tokens);
    |
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(777)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CompositeCrowdsale':
    |  // override to create custom fund forwarding mechanisms
    |  function forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(786)

[33mWarning[0m for UnrestrictedWrite in contract 'CompositeCrowdsale':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'CompositeCrowdsale':
    |    uint256 tokens = tokenDistribution.calculateTokenAmount(weiAmount, beneficiary);
    |    // update state
  > |    weiRaised = weiRaised.add(weiAmount);
    |
    |    tokenDistribution.distributeTokens(beneficiary, tokens);
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(775)

[33mWarning[0m for DAO in contract 'EthicHubPresale':
    |  // the RefundVault deposit function
    |  function forwardFunds() internal {
  > |    vault.deposit.value(msg.value)(msg.sender);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(951)

[33mWarning[0m for LockedEther in contract 'EthicHubPresale':
    |}
    |
  > |contract EthicHubPresale is Ownable, Pausable, CappedCompositeCrowdsale, RefundableCompositeCrowdsale {
    |
    |  uint256 public constant minimumBidAllowed = 0.1 ether;
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(979)

[33mWarning[0m for UnhandledException in contract 'EthicHubPresale':
    |
    |    // calculate token amount to be created
  > |    uint256 tokens = tokenDistribution.calculateTokenAmount(weiAmount, beneficiary);
    |    // update state
    |    weiRaised = weiRaised.add(weiAmount);
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(773)

[33mWarning[0m for UnhandledException in contract 'EthicHubPresale':
    |    weiRaised = weiRaised.add(weiAmount);
    |
  > |    tokenDistribution.distributeTokens(beneficiary, tokens);
    |    TokenPurchase(msg.sender, beneficiary, weiAmount, tokens);
    |
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(777)

[33mWarning[0m for UnhandledException in contract 'EthicHubPresale':
    |  // the RefundVault deposit function
    |  function forwardFunds() internal {
  > |    vault.deposit.value(msg.value)(msg.sender);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(951)

[33mWarning[0m for UnhandledException in contract 'EthicHubPresale':
    |    require(!goalReached());
    |
  > |    vault.refund(msg.sender);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(959)

[33mWarning[0m for UnhandledException in contract 'EthicHubPresale':
    |  function finalization() internal {
    |    if (goalReached()) {
  > |      vault.close();
    |    } else {
    |      vault.enableRefunds();
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(965)

[33mWarning[0m for UnhandledException in contract 'EthicHubPresale':
    |      vault.close();
    |    } else {
  > |      vault.enableRefunds();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(967)

[33mWarning[0m for UnhandledException in contract 'EthicHubPresale':
    |    // whitelist exclusive purchasing time
    |    if ((now >= startTime.sub(WHITELISTED_PREMIUM_TIME)) && (now <= startTime)){
  > |        uint256 registeredAmount = tokenDistribution.whitelistRegisteredAmount(msg.sender);
    |        bool isWhitelisted = registeredAmount > 0;
    |        bool withinCap = weiRaised.add(msg.value) <= cap;
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(1040)

[33mWarning[0m for UnhandledException in contract 'EthicHubPresale':
    |  function finalization() internal {
    |    super.finalization();
  > |    tokenDistribution.returnUnsoldTokens(wallet);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(1055)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthicHubPresale':
    |
    |    // calculate token amount to be created
  > |    uint256 tokens = tokenDistribution.calculateTokenAmount(weiAmount, beneficiary);
    |    // update state
    |    weiRaised = weiRaised.add(weiAmount);
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(773)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthicHubPresale':
    |    weiRaised = weiRaised.add(weiAmount);
    |
  > |    tokenDistribution.distributeTokens(beneficiary, tokens);
    |    TokenPurchase(msg.sender, beneficiary, weiAmount, tokens);
    |
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(777)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthicHubPresale':
    |  // the RefundVault deposit function
    |  function forwardFunds() internal {
  > |    vault.deposit.value(msg.value)(msg.sender);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(951)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthicHubPresale':
    |    require(!goalReached());
    |
  > |    vault.refund(msg.sender);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(959)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthicHubPresale':
    |  function finalization() internal {
    |    if (goalReached()) {
  > |      vault.close();
    |    } else {
    |      vault.enableRefunds();
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(965)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthicHubPresale':
    |      vault.close();
    |    } else {
  > |      vault.enableRefunds();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(967)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthicHubPresale':
    |    // whitelist exclusive purchasing time
    |    if ((now >= startTime.sub(WHITELISTED_PREMIUM_TIME)) && (now <= startTime)){
  > |        uint256 registeredAmount = tokenDistribution.whitelistRegisteredAmount(msg.sender);
    |        bool isWhitelisted = registeredAmount > 0;
    |        bool withinCap = weiRaised.add(msg.value) <= cap;
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(1040)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthicHubPresale':
    |  function finalization() internal {
    |    super.finalization();
  > |    tokenDistribution.returnUnsoldTokens(wallet);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(1055)

[33mWarning[0m for UnrestrictedWrite in contract 'EthicHubPresale':
    |    uint256 tokens = tokenDistribution.calculateTokenAmount(weiAmount, beneficiary);
    |    // update state
  > |    weiRaised = weiRaised.add(weiAmount);
    |
    |    tokenDistribution.distributeTokens(beneficiary, tokens);
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(775)

[33mWarning[0m for UnrestrictedWrite in contract 'EthicHubPresale':
    |    require(msg.value >= minimumBidAllowed);
    |    require(participated[msg.sender].add(msg.value) <= maximumBidAllowed);
  > |    participated[msg.sender] = participated[msg.sender].add(msg.value);
    |
    |    super.buyTokens(beneficiary);
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(1021)

[33mWarning[0m for UnrestrictedWrite in contract 'EthicHubPresale':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'EthicHubPresale':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'EthicHubPresale':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'EthicHubPresale':
    |    Finalized();
    |
  > |    isFinalized = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(859)

[31mViolation[0m for LockedEther in contract 'EthicHubTokenDistributionStrategy':
    | * Contributors registered to the whitelist will have better rates
    | */
  > |contract EthicHubTokenDistributionStrategy is Ownable, WhitelistedDistributionStrategy {
    |  
    |  event UnsoldTokensReturned(address indexed destination, uint256 amount);
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(625)

[33mWarning[0m for UnhandledException in contract 'EthicHubTokenDistributionStrategy':
    |      require(bonusIntervals[i].bonus <= MAX_DISCOUNT);
    |      require(bonusIntervals[i].bonus >= 0);
  > |      require(crowdsale.startTime() < bonusIntervals[i].endPeriod);
    |      require(bonusIntervals[i].endPeriod <= crowdsale.endTime());
    |      if (i != 0) {
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(382)

[33mWarning[0m for UnhandledException in contract 'EthicHubTokenDistributionStrategy':
    |      require(bonusIntervals[i].bonus >= 0);
    |      require(crowdsale.startTime() < bonusIntervals[i].endPeriod);
  > |      require(bonusIntervals[i].endPeriod <= crowdsale.endTime());
    |      if (i != 0) {
    |        require(bonusIntervals[i-1].endPeriod < bonusIntervals[i].endPeriod);
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(383)

[33mWarning[0m for UnhandledException in contract 'EthicHubTokenDistributionStrategy':
    |    contributions[_beneficiary] = contributions[_beneficiary].add(_tokenAmount);
    |    totalContributed = totalContributed.add(_tokenAmount);
  > |    require(totalContributed <= token.balanceOf(this));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(411)

[33mWarning[0m for UnhandledException in contract 'EthicHubTokenDistributionStrategy':
    |
    |  modifier vestingPeriodStarted {
  > |    require(crowdsale.hasEnded());
    |    require(vestingConfigured == true);
    |    require(now > vestingStart);
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(461)

[33mWarning[0m for UnhandledException in contract 'EthicHubTokenDistributionStrategy':
    |  function configureVesting(uint256 _vestingStart, uint256 _vestingDuration) onlyOwner {
    |    require(vestingConfigured == false);
  > |    require(_vestingStart > crowdsale.endTime());
    |    require(_vestingDuration > 0);
    |    vestingStart = _vestingStart;
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(481)

[33mWarning[0m for UnhandledException in contract 'EthicHubTokenDistributionStrategy':
    |     released[_beneficiary] = released[_beneficiary].add(unreleased);
    |
  > |     require(token.transfer(_beneficiary, unreleased));
    |     Released(_beneficiary,unreleased);
    |
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(500)

[33mWarning[0m for UnhandledException in contract 'EthicHubTokenDistributionStrategy':
    |
    |    //For extra security, we check the owner of the crowdsale is the same of the owner of the distribution
  > |    require(owner == crowdsale.owner());
    |
    |    bonusIntervals.push(BonusInterval(crowdsale.startTime() + 1 days,10));
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(642)

[33mWarning[0m for UnhandledException in contract 'EthicHubTokenDistributionStrategy':
    |    require(owner == crowdsale.owner());
    |
  > |    bonusIntervals.push(BonusInterval(crowdsale.startTime() + 1 days,10));
    |    bonusIntervals.push(BonusInterval(crowdsale.startTime() + 2 days,10));
    |    bonusIntervals.push(BonusInterval(crowdsale.startTime() + 3 days,8));
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(644)

[33mWarning[0m for UnhandledException in contract 'EthicHubTokenDistributionStrategy':
    |
    |    bonusIntervals.push(BonusInterval(crowdsale.startTime() + 1 days,10));
  > |    bonusIntervals.push(BonusInterval(crowdsale.startTime() + 2 days,10));
    |    bonusIntervals.push(BonusInterval(crowdsale.startTime() + 3 days,8));
    |    bonusIntervals.push(BonusInterval(crowdsale.startTime() + 4 days,6));
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(645)

[33mWarning[0m for UnhandledException in contract 'EthicHubTokenDistributionStrategy':
    |    bonusIntervals.push(BonusInterval(crowdsale.startTime() + 1 days,10));
    |    bonusIntervals.push(BonusInterval(crowdsale.startTime() + 2 days,10));
  > |    bonusIntervals.push(BonusInterval(crowdsale.startTime() + 3 days,8));
    |    bonusIntervals.push(BonusInterval(crowdsale.startTime() + 4 days,6));
    |    bonusIntervals.push(BonusInterval(crowdsale.startTime() + 5 days,4));
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(646)

[33mWarning[0m for UnhandledException in contract 'EthicHubTokenDistributionStrategy':
    |    bonusIntervals.push(BonusInterval(crowdsale.startTime() + 2 days,10));
    |    bonusIntervals.push(BonusInterval(crowdsale.startTime() + 3 days,8));
  > |    bonusIntervals.push(BonusInterval(crowdsale.startTime() + 4 days,6));
    |    bonusIntervals.push(BonusInterval(crowdsale.startTime() + 5 days,4));
    |    bonusIntervals.push(BonusInterval(crowdsale.startTime() + 6 days,2));
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(647)

[33mWarning[0m for UnhandledException in contract 'EthicHubTokenDistributionStrategy':
    |    bonusIntervals.push(BonusInterval(crowdsale.startTime() + 3 days,8));
    |    bonusIntervals.push(BonusInterval(crowdsale.startTime() + 4 days,6));
  > |    bonusIntervals.push(BonusInterval(crowdsale.startTime() + 5 days,4));
    |    bonusIntervals.push(BonusInterval(crowdsale.startTime() + 6 days,2));
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(648)

[33mWarning[0m for UnhandledException in contract 'EthicHubTokenDistributionStrategy':
    |    bonusIntervals.push(BonusInterval(crowdsale.startTime() + 4 days,6));
    |    bonusIntervals.push(BonusInterval(crowdsale.startTime() + 5 days,4));
  > |    bonusIntervals.push(BonusInterval(crowdsale.startTime() + 6 days,2));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(649)

[33mWarning[0m for UnhandledException in contract 'EthicHubTokenDistributionStrategy':
    |  function returnUnsoldTokens(address _wallet) onlyCrowdsale {
    |    //require(crowdsale.endTime() <= now); //this made no sense
  > |    if (token.balanceOf(this) == 0) {
    |      UnsoldTokensReturned(_wallet,0);
    |      return;
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(654)

[33mWarning[0m for UnhandledException in contract 'EthicHubTokenDistributionStrategy':
    |    }
    |    
  > |    uint256 balance = token.balanceOf(this).sub(totalContributed);
    |    require(balance > 0);
    |
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(659)

[33mWarning[0m for UnhandledException in contract 'EthicHubTokenDistributionStrategy':
    |    require(balance > 0);
    |
  > |    if(token.transfer(_wallet, balance)) {
    |      UnsoldTokensReturned(_wallet, balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(662)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthicHubTokenDistributionStrategy':
    |      require(bonusIntervals[i].bonus <= MAX_DISCOUNT);
    |      require(bonusIntervals[i].bonus >= 0);
  > |      require(crowdsale.startTime() < bonusIntervals[i].endPeriod);
    |      require(bonusIntervals[i].endPeriod <= crowdsale.endTime());
    |      if (i != 0) {
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(382)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthicHubTokenDistributionStrategy':
    |      require(bonusIntervals[i].bonus >= 0);
    |      require(crowdsale.startTime() < bonusIntervals[i].endPeriod);
  > |      require(bonusIntervals[i].endPeriod <= crowdsale.endTime());
    |      if (i != 0) {
    |        require(bonusIntervals[i-1].endPeriod < bonusIntervals[i].endPeriod);
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(383)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthicHubTokenDistributionStrategy':
    |    contributions[_beneficiary] = contributions[_beneficiary].add(_tokenAmount);
    |    totalContributed = totalContributed.add(_tokenAmount);
  > |    require(totalContributed <= token.balanceOf(this));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(411)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthicHubTokenDistributionStrategy':
    |
    |  modifier vestingPeriodStarted {
  > |    require(crowdsale.hasEnded());
    |    require(vestingConfigured == true);
    |    require(now > vestingStart);
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(461)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthicHubTokenDistributionStrategy':
    |  function configureVesting(uint256 _vestingStart, uint256 _vestingDuration) onlyOwner {
    |    require(vestingConfigured == false);
  > |    require(_vestingStart > crowdsale.endTime());
    |    require(_vestingDuration > 0);
    |    vestingStart = _vestingStart;
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(481)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthicHubTokenDistributionStrategy':
    |     released[_beneficiary] = released[_beneficiary].add(unreleased);
    |
  > |     require(token.transfer(_beneficiary, unreleased));
    |     Released(_beneficiary,unreleased);
    |
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(500)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthicHubTokenDistributionStrategy':
    |
    |    //For extra security, we check the owner of the crowdsale is the same of the owner of the distribution
  > |    require(owner == crowdsale.owner());
    |
    |    bonusIntervals.push(BonusInterval(crowdsale.startTime() + 1 days,10));
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(642)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthicHubTokenDistributionStrategy':
    |    require(owner == crowdsale.owner());
    |
  > |    bonusIntervals.push(BonusInterval(crowdsale.startTime() + 1 days,10));
    |    bonusIntervals.push(BonusInterval(crowdsale.startTime() + 2 days,10));
    |    bonusIntervals.push(BonusInterval(crowdsale.startTime() + 3 days,8));
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(644)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthicHubTokenDistributionStrategy':
    |
    |    bonusIntervals.push(BonusInterval(crowdsale.startTime() + 1 days,10));
  > |    bonusIntervals.push(BonusInterval(crowdsale.startTime() + 2 days,10));
    |    bonusIntervals.push(BonusInterval(crowdsale.startTime() + 3 days,8));
    |    bonusIntervals.push(BonusInterval(crowdsale.startTime() + 4 days,6));
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(645)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthicHubTokenDistributionStrategy':
    |    bonusIntervals.push(BonusInterval(crowdsale.startTime() + 1 days,10));
    |    bonusIntervals.push(BonusInterval(crowdsale.startTime() + 2 days,10));
  > |    bonusIntervals.push(BonusInterval(crowdsale.startTime() + 3 days,8));
    |    bonusIntervals.push(BonusInterval(crowdsale.startTime() + 4 days,6));
    |    bonusIntervals.push(BonusInterval(crowdsale.startTime() + 5 days,4));
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(646)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthicHubTokenDistributionStrategy':
    |    bonusIntervals.push(BonusInterval(crowdsale.startTime() + 2 days,10));
    |    bonusIntervals.push(BonusInterval(crowdsale.startTime() + 3 days,8));
  > |    bonusIntervals.push(BonusInterval(crowdsale.startTime() + 4 days,6));
    |    bonusIntervals.push(BonusInterval(crowdsale.startTime() + 5 days,4));
    |    bonusIntervals.push(BonusInterval(crowdsale.startTime() + 6 days,2));
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(647)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthicHubTokenDistributionStrategy':
    |    bonusIntervals.push(BonusInterval(crowdsale.startTime() + 3 days,8));
    |    bonusIntervals.push(BonusInterval(crowdsale.startTime() + 4 days,6));
  > |    bonusIntervals.push(BonusInterval(crowdsale.startTime() + 5 days,4));
    |    bonusIntervals.push(BonusInterval(crowdsale.startTime() + 6 days,2));
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(648)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthicHubTokenDistributionStrategy':
    |    bonusIntervals.push(BonusInterval(crowdsale.startTime() + 4 days,6));
    |    bonusIntervals.push(BonusInterval(crowdsale.startTime() + 5 days,4));
  > |    bonusIntervals.push(BonusInterval(crowdsale.startTime() + 6 days,2));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(649)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthicHubTokenDistributionStrategy':
    |  function returnUnsoldTokens(address _wallet) onlyCrowdsale {
    |    //require(crowdsale.endTime() <= now); //this made no sense
  > |    if (token.balanceOf(this) == 0) {
    |      UnsoldTokensReturned(_wallet,0);
    |      return;
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(654)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthicHubTokenDistributionStrategy':
    |    }
    |    
  > |    uint256 balance = token.balanceOf(this).sub(totalContributed);
    |    require(balance > 0);
    |
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(659)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthicHubTokenDistributionStrategy':
    |    require(balance > 0);
    |
  > |    if(token.transfer(_wallet, balance)) {
    |      UnsoldTokensReturned(_wallet, balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(662)

[31mViolation[0m for UnrestrictedWrite in contract 'EthicHubTokenDistributionStrategy':
    |    require(crowdsale == address(0));
    |    require(_crowdsale != address(0));
  > |    crowdsale = _crowdsale;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(314)

[33mWarning[0m for UnrestrictedWrite in contract 'EthicHubTokenDistributionStrategy':
    |
    |/**
  > | * @title Ownable
    | * @dev The Ownable contract has an owner address, and provides basic authorization control
    | * functions, this simplifies the implementation of "user permissions".
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(6)

[33mWarning[0m for UnrestrictedWrite in contract 'EthicHubTokenDistributionStrategy':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'EthicHubTokenDistributionStrategy':
    |    _;
    |    require(intervalsConfigured == false);
  > |    intervalsConfigured = true;
    |    require(bonusIntervals.length > 0);
    |    for(uint i = 0; i < bonusIntervals.length; ++i) {
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(377)

[33mWarning[0m for UnrestrictedWrite in contract 'EthicHubTokenDistributionStrategy':
    |
    |  function distributeTokens(address _beneficiary, uint256 _tokenAmount) onlyCrowdsale {
  > |    contributions[_beneficiary] = contributions[_beneficiary].add(_tokenAmount);
    |    totalContributed = totalContributed.add(_tokenAmount);
    |    require(totalContributed <= token.balanceOf(this));
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(409)

[33mWarning[0m for UnrestrictedWrite in contract 'EthicHubTokenDistributionStrategy':
    |  function distributeTokens(address _beneficiary, uint256 _tokenAmount) onlyCrowdsale {
    |    contributions[_beneficiary] = contributions[_beneficiary].add(_tokenAmount);
  > |    totalContributed = totalContributed.add(_tokenAmount);
    |    require(totalContributed <= token.balanceOf(this));
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(410)

[33mWarning[0m for UnrestrictedWrite in contract 'EthicHubTokenDistributionStrategy':
    |    require(_vestingStart > crowdsale.endTime());
    |    require(_vestingDuration > 0);
  > |    vestingStart = _vestingStart;
    |    vestingDuration = _vestingDuration;
    |    vestingConfigured = true;
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(483)

[33mWarning[0m for UnrestrictedWrite in contract 'EthicHubTokenDistributionStrategy':
    |    require(_vestingDuration > 0);
    |    vestingStart = _vestingStart;
  > |    vestingDuration = _vestingDuration;
    |    vestingConfigured = true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(484)

[33mWarning[0m for UnrestrictedWrite in contract 'EthicHubTokenDistributionStrategy':
    |    vestingStart = _vestingStart;
    |    vestingDuration = _vestingDuration;
  > |    vestingConfigured = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(485)

[33mWarning[0m for UnrestrictedWrite in contract 'EthicHubTokenDistributionStrategy':
    |     require(unreleased > 0);
    |
  > |     released[_beneficiary] = released[_beneficiary].add(unreleased);
    |
    |     require(token.transfer(_beneficiary, unreleased));
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(498)

[33mWarning[0m for UnrestrictedWrite in contract 'EthicHubTokenDistributionStrategy':
    |    {
    |        require(amount <= maximumBidAllowed);
  > |        registeredAmount[target] = amount;
    |        if (amount > 0){
    |            RegistrationStatusChanged(target, true);
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(568)

[33mWarning[0m for UnrestrictedWrite in contract 'EthicHubTokenDistributionStrategy':
    |    require(owner == crowdsale.owner());
    |
  > |    bonusIntervals.push(BonusInterval(crowdsale.startTime() + 1 days,10));
    |    bonusIntervals.push(BonusInterval(crowdsale.startTime() + 2 days,10));
    |    bonusIntervals.push(BonusInterval(crowdsale.startTime() + 3 days,8));
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(644)

[33mWarning[0m for UnrestrictedWrite in contract 'EthicHubTokenDistributionStrategy':
    |
    |    bonusIntervals.push(BonusInterval(crowdsale.startTime() + 1 days,10));
  > |    bonusIntervals.push(BonusInterval(crowdsale.startTime() + 2 days,10));
    |    bonusIntervals.push(BonusInterval(crowdsale.startTime() + 3 days,8));
    |    bonusIntervals.push(BonusInterval(crowdsale.startTime() + 4 days,6));
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(645)

[33mWarning[0m for UnrestrictedWrite in contract 'EthicHubTokenDistributionStrategy':
    |    bonusIntervals.push(BonusInterval(crowdsale.startTime() + 1 days,10));
    |    bonusIntervals.push(BonusInterval(crowdsale.startTime() + 2 days,10));
  > |    bonusIntervals.push(BonusInterval(crowdsale.startTime() + 3 days,8));
    |    bonusIntervals.push(BonusInterval(crowdsale.startTime() + 4 days,6));
    |    bonusIntervals.push(BonusInterval(crowdsale.startTime() + 5 days,4));
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(646)

[33mWarning[0m for UnrestrictedWrite in contract 'EthicHubTokenDistributionStrategy':
    |    bonusIntervals.push(BonusInterval(crowdsale.startTime() + 2 days,10));
    |    bonusIntervals.push(BonusInterval(crowdsale.startTime() + 3 days,8));
  > |    bonusIntervals.push(BonusInterval(crowdsale.startTime() + 4 days,6));
    |    bonusIntervals.push(BonusInterval(crowdsale.startTime() + 5 days,4));
    |    bonusIntervals.push(BonusInterval(crowdsale.startTime() + 6 days,2));
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(647)

[33mWarning[0m for UnrestrictedWrite in contract 'EthicHubTokenDistributionStrategy':
    |    bonusIntervals.push(BonusInterval(crowdsale.startTime() + 3 days,8));
    |    bonusIntervals.push(BonusInterval(crowdsale.startTime() + 4 days,6));
  > |    bonusIntervals.push(BonusInterval(crowdsale.startTime() + 5 days,4));
    |    bonusIntervals.push(BonusInterval(crowdsale.startTime() + 6 days,2));
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(648)

[33mWarning[0m for UnrestrictedWrite in contract 'EthicHubTokenDistributionStrategy':
    |    bonusIntervals.push(BonusInterval(crowdsale.startTime() + 4 days,6));
    |    bonusIntervals.push(BonusInterval(crowdsale.startTime() + 5 days,4));
  > |    bonusIntervals.push(BonusInterval(crowdsale.startTime() + 6 days,2));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(649)

[33mWarning[0m for LockedEther in contract 'EthixToken':
    |}
    |
  > |contract EthixToken is PausableToken {
    |  string public constant name = "EthixToken";
    |  string public constant symbol = "ETHIX";
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(271)

[33mWarning[0m for UnrestrictedWrite in contract 'EthixToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(140)

[33mWarning[0m for UnrestrictedWrite in contract 'EthixToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(185)

[33mWarning[0m for UnrestrictedWrite in contract 'EthixToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(201)

[33mWarning[0m for UnrestrictedWrite in contract 'EthixToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(223)

[33mWarning[0m for UnrestrictedWrite in contract 'EthixToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(231)

[33mWarning[0m for UnrestrictedWrite in contract 'EthixToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(233)

[33mWarning[0m for UnrestrictedWrite in contract 'EthixToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'EthixToken':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'EthixToken':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(90)

[31mViolation[0m for LockedEther in contract 'FixedPoolWithBonusTokenDistributionStrategy':
    | * This class is abstract, the intervals have to be defined by subclassing
    | */
  > |contract FixedPoolWithBonusTokenDistributionStrategy is TokenDistributionStrategy {
    |  using SafeMath for uint256;
    |  uint256 constant MAX_DISCOUNT = 100;
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(343)

[33mWarning[0m for UnhandledException in contract 'FixedPoolWithBonusTokenDistributionStrategy':
    |      require(bonusIntervals[i].bonus <= MAX_DISCOUNT);
    |      require(bonusIntervals[i].bonus >= 0);
  > |      require(crowdsale.startTime() < bonusIntervals[i].endPeriod);
    |      require(bonusIntervals[i].endPeriod <= crowdsale.endTime());
    |      if (i != 0) {
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(382)

[33mWarning[0m for UnhandledException in contract 'FixedPoolWithBonusTokenDistributionStrategy':
    |      require(bonusIntervals[i].bonus >= 0);
    |      require(crowdsale.startTime() < bonusIntervals[i].endPeriod);
  > |      require(bonusIntervals[i].endPeriod <= crowdsale.endTime());
    |      if (i != 0) {
    |        require(bonusIntervals[i-1].endPeriod < bonusIntervals[i].endPeriod);
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(383)

[33mWarning[0m for UnhandledException in contract 'FixedPoolWithBonusTokenDistributionStrategy':
    |    contributions[_beneficiary] = contributions[_beneficiary].add(_tokenAmount);
    |    totalContributed = totalContributed.add(_tokenAmount);
  > |    require(totalContributed <= token.balanceOf(this));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(411)

[33mWarning[0m for UnhandledException in contract 'FixedPoolWithBonusTokenDistributionStrategy':
    |
    |  function compensate(address _beneficiary) {
  > |    require(crowdsale.hasEnded());
    |    if (token.transfer(_beneficiary, contributions[_beneficiary])) {
    |      contributions[_beneficiary] = 0;
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(415)

[33mWarning[0m for UnhandledException in contract 'FixedPoolWithBonusTokenDistributionStrategy':
    |  function compensate(address _beneficiary) {
    |    require(crowdsale.hasEnded());
  > |    if (token.transfer(_beneficiary, contributions[_beneficiary])) {
    |      contributions[_beneficiary] = 0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(416)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FixedPoolWithBonusTokenDistributionStrategy':
    |      require(bonusIntervals[i].bonus <= MAX_DISCOUNT);
    |      require(bonusIntervals[i].bonus >= 0);
  > |      require(crowdsale.startTime() < bonusIntervals[i].endPeriod);
    |      require(bonusIntervals[i].endPeriod <= crowdsale.endTime());
    |      if (i != 0) {
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(382)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FixedPoolWithBonusTokenDistributionStrategy':
    |      require(bonusIntervals[i].bonus >= 0);
    |      require(crowdsale.startTime() < bonusIntervals[i].endPeriod);
  > |      require(bonusIntervals[i].endPeriod <= crowdsale.endTime());
    |      if (i != 0) {
    |        require(bonusIntervals[i-1].endPeriod < bonusIntervals[i].endPeriod);
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(383)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FixedPoolWithBonusTokenDistributionStrategy':
    |    contributions[_beneficiary] = contributions[_beneficiary].add(_tokenAmount);
    |    totalContributed = totalContributed.add(_tokenAmount);
  > |    require(totalContributed <= token.balanceOf(this));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(411)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FixedPoolWithBonusTokenDistributionStrategy':
    |
    |  function compensate(address _beneficiary) {
  > |    require(crowdsale.hasEnded());
    |    if (token.transfer(_beneficiary, contributions[_beneficiary])) {
    |      contributions[_beneficiary] = 0;
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(415)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FixedPoolWithBonusTokenDistributionStrategy':
    |  function compensate(address _beneficiary) {
    |    require(crowdsale.hasEnded());
  > |    if (token.transfer(_beneficiary, contributions[_beneficiary])) {
    |      contributions[_beneficiary] = 0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(416)

[31mViolation[0m for UnrestrictedWrite in contract 'FixedPoolWithBonusTokenDistributionStrategy':
    |    require(crowdsale == address(0));
    |    require(_crowdsale != address(0));
  > |    crowdsale = _crowdsale;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(314)

[31mViolation[0m for UnrestrictedWrite in contract 'FixedPoolWithBonusTokenDistributionStrategy':
    |    _;
    |    require(intervalsConfigured == false);
  > |    intervalsConfigured = true;
    |    require(bonusIntervals.length > 0);
    |    for(uint i = 0; i < bonusIntervals.length; ++i) {
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(377)

[31mViolation[0m for UnrestrictedWrite in contract 'FixedPoolWithBonusTokenDistributionStrategy':
    |    require(crowdsale.hasEnded());
    |    if (token.transfer(_beneficiary, contributions[_beneficiary])) {
  > |      contributions[_beneficiary] = 0;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(417)

[33mWarning[0m for UnrestrictedWrite in contract 'FixedPoolWithBonusTokenDistributionStrategy':
    |
    |  function distributeTokens(address _beneficiary, uint256 _tokenAmount) onlyCrowdsale {
  > |    contributions[_beneficiary] = contributions[_beneficiary].add(_tokenAmount);
    |    totalContributed = totalContributed.add(_tokenAmount);
    |    require(totalContributed <= token.balanceOf(this));
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(409)

[33mWarning[0m for UnrestrictedWrite in contract 'FixedPoolWithBonusTokenDistributionStrategy':
    |  function distributeTokens(address _beneficiary, uint256 _tokenAmount) onlyCrowdsale {
    |    contributions[_beneficiary] = contributions[_beneficiary].add(_tokenAmount);
  > |    totalContributed = totalContributed.add(_tokenAmount);
    |    require(totalContributed <= token.balanceOf(this));
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(410)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(39)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(42)

[33mWarning[0m for LockedEther in contract 'Pausable':
    | * @dev Base contract which allows children to implement an emergency stop mechanism.
    | */
  > |contract Pausable is Ownable {
    |  event Pause();
    |  event Unpause();
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(55)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(39)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  event Unpause();
    |
  > |  bool public paused = false;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(59)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to pause, triggers stopped state
    |   */
  > |  function pause() onlyOwner whenNotPaused public {
    |    paused = true;
    |    Pause();
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(81)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to unpause, returns to normal state
    |   */
  > |  function unpause() onlyOwner whenPaused public {
    |    paused = false;
    |    Unpause();
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(90)

[33mWarning[0m for LockedEther in contract 'PausableToken':
    | **/
    |
  > |contract PausableToken is StandardToken, Pausable {
    |
    |  function transfer(address _to, uint256 _value) public whenNotPaused returns (bool) {
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(248)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(140)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(185)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(201)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(223)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(231)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(233)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(90)

[33mWarning[0m for DAOConstantGas in contract 'RefundVault':
    |    state = State.Closed;
    |    Closed();
  > |    wallet.transfer(this.balance);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(906)

[33mWarning[0m for DAOConstantGas in contract 'RefundVault':
    |    uint256 depositedValue = deposited[investor];
    |    deposited[investor] = 0;
  > |    investor.transfer(depositedValue);
    |    Refunded(investor, depositedValue);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(919)

[33mWarning[0m for LockedEther in contract 'RefundVault':
    | * and forwarding it if crowdsale is successful.
    | */
  > |contract RefundVault is Ownable {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(878)

[31mViolation[0m for TODAmount in contract 'RefundVault':
    |    state = State.Closed;
    |    Closed();
  > |    wallet.transfer(this.balance);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(906)

[31mViolation[0m for TODReceiver in contract 'RefundVault':
    |    state = State.Closed;
    |    Closed();
  > |    wallet.transfer(this.balance);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(906)

[33mWarning[0m for TODReceiver in contract 'RefundVault':
    |    uint256 depositedValue = deposited[investor];
    |    deposited[investor] = 0;
  > |    investor.transfer(depositedValue);
    |    Refunded(investor, depositedValue);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(919)

[33mWarning[0m for UnhandledException in contract 'RefundVault':
    |    state = State.Closed;
    |    Closed();
  > |    wallet.transfer(this.balance);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(906)

[33mWarning[0m for UnhandledException in contract 'RefundVault':
    |    uint256 depositedValue = deposited[investor];
    |    deposited[investor] = 0;
  > |    investor.transfer(depositedValue);
    |    Refunded(investor, depositedValue);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(919)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RefundVault':
    |    state = State.Closed;
    |    Closed();
  > |    wallet.transfer(this.balance);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(906)

[31mViolation[0m for UnrestrictedWrite in contract 'RefundVault':
    |    require(state == State.Refunding);
    |    uint256 depositedValue = deposited[investor];
  > |    deposited[investor] = 0;
    |    investor.transfer(depositedValue);
    |    Refunded(investor, depositedValue);
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(918)

[33mWarning[0m for UnrestrictedWrite in contract 'RefundVault':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'RefundVault':
    |  function deposit(address investor) onlyOwner public payable {
    |    require(state == State.Active);
  > |    deposited[investor] = deposited[investor].add(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(899)

[33mWarning[0m for UnrestrictedWrite in contract 'RefundVault':
    |  function close() onlyOwner public {
    |    require(state == State.Active);
  > |    state = State.Closed;
    |    Closed();
    |    wallet.transfer(this.balance);
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(904)

[33mWarning[0m for UnrestrictedWrite in contract 'RefundVault':
    |  function enableRefunds() onlyOwner public {
    |    require(state == State.Active);
  > |    state = State.Refunding;
    |    RefundsEnabled();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(911)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(675)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(167)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(140)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(185)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(201)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(223)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(231)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(233)

[31mViolation[0m for LockedEther in contract 'VestedTokenDistributionStrategy':
    | * After the crowdsale has ended the contract compensate buyers proportionally to their contributions.
    | */
  > |contract VestedTokenDistributionStrategy is Ownable, FixedPoolWithBonusTokenDistributionStrategy {
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(448)

[33mWarning[0m for UnhandledException in contract 'VestedTokenDistributionStrategy':
    |      require(bonusIntervals[i].bonus <= MAX_DISCOUNT);
    |      require(bonusIntervals[i].bonus >= 0);
  > |      require(crowdsale.startTime() < bonusIntervals[i].endPeriod);
    |      require(bonusIntervals[i].endPeriod <= crowdsale.endTime());
    |      if (i != 0) {
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(382)

[33mWarning[0m for UnhandledException in contract 'VestedTokenDistributionStrategy':
    |      require(bonusIntervals[i].bonus >= 0);
    |      require(crowdsale.startTime() < bonusIntervals[i].endPeriod);
  > |      require(bonusIntervals[i].endPeriod <= crowdsale.endTime());
    |      if (i != 0) {
    |        require(bonusIntervals[i-1].endPeriod < bonusIntervals[i].endPeriod);
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(383)

[33mWarning[0m for UnhandledException in contract 'VestedTokenDistributionStrategy':
    |    contributions[_beneficiary] = contributions[_beneficiary].add(_tokenAmount);
    |    totalContributed = totalContributed.add(_tokenAmount);
  > |    require(totalContributed <= token.balanceOf(this));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(411)

[33mWarning[0m for UnhandledException in contract 'VestedTokenDistributionStrategy':
    |
    |  modifier vestingPeriodStarted {
  > |    require(crowdsale.hasEnded());
    |    require(vestingConfigured == true);
    |    require(now > vestingStart);
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(461)

[33mWarning[0m for UnhandledException in contract 'VestedTokenDistributionStrategy':
    |  function configureVesting(uint256 _vestingStart, uint256 _vestingDuration) onlyOwner {
    |    require(vestingConfigured == false);
  > |    require(_vestingStart > crowdsale.endTime());
    |    require(_vestingDuration > 0);
    |    vestingStart = _vestingStart;
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(481)

[33mWarning[0m for UnhandledException in contract 'VestedTokenDistributionStrategy':
    |     released[_beneficiary] = released[_beneficiary].add(unreleased);
    |
  > |     require(token.transfer(_beneficiary, unreleased));
    |     Released(_beneficiary,unreleased);
    |
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(500)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'VestedTokenDistributionStrategy':
    |      require(bonusIntervals[i].bonus <= MAX_DISCOUNT);
    |      require(bonusIntervals[i].bonus >= 0);
  > |      require(crowdsale.startTime() < bonusIntervals[i].endPeriod);
    |      require(bonusIntervals[i].endPeriod <= crowdsale.endTime());
    |      if (i != 0) {
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(382)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'VestedTokenDistributionStrategy':
    |      require(bonusIntervals[i].bonus >= 0);
    |      require(crowdsale.startTime() < bonusIntervals[i].endPeriod);
  > |      require(bonusIntervals[i].endPeriod <= crowdsale.endTime());
    |      if (i != 0) {
    |        require(bonusIntervals[i-1].endPeriod < bonusIntervals[i].endPeriod);
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(383)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'VestedTokenDistributionStrategy':
    |    contributions[_beneficiary] = contributions[_beneficiary].add(_tokenAmount);
    |    totalContributed = totalContributed.add(_tokenAmount);
  > |    require(totalContributed <= token.balanceOf(this));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(411)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'VestedTokenDistributionStrategy':
    |
    |  modifier vestingPeriodStarted {
  > |    require(crowdsale.hasEnded());
    |    require(vestingConfigured == true);
    |    require(now > vestingStart);
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(461)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'VestedTokenDistributionStrategy':
    |  function configureVesting(uint256 _vestingStart, uint256 _vestingDuration) onlyOwner {
    |    require(vestingConfigured == false);
  > |    require(_vestingStart > crowdsale.endTime());
    |    require(_vestingDuration > 0);
    |    vestingStart = _vestingStart;
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(481)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'VestedTokenDistributionStrategy':
    |     released[_beneficiary] = released[_beneficiary].add(unreleased);
    |
  > |     require(token.transfer(_beneficiary, unreleased));
    |     Released(_beneficiary,unreleased);
    |
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(500)

[31mViolation[0m for UnrestrictedWrite in contract 'VestedTokenDistributionStrategy':
    |    require(crowdsale == address(0));
    |    require(_crowdsale != address(0));
  > |    crowdsale = _crowdsale;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(314)

[31mViolation[0m for UnrestrictedWrite in contract 'VestedTokenDistributionStrategy':
    |    _;
    |    require(intervalsConfigured == false);
  > |    intervalsConfigured = true;
    |    require(bonusIntervals.length > 0);
    |    for(uint i = 0; i < bonusIntervals.length; ++i) {
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(377)

[33mWarning[0m for UnrestrictedWrite in contract 'VestedTokenDistributionStrategy':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'VestedTokenDistributionStrategy':
    |
    |  function distributeTokens(address _beneficiary, uint256 _tokenAmount) onlyCrowdsale {
  > |    contributions[_beneficiary] = contributions[_beneficiary].add(_tokenAmount);
    |    totalContributed = totalContributed.add(_tokenAmount);
    |    require(totalContributed <= token.balanceOf(this));
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(409)

[33mWarning[0m for UnrestrictedWrite in contract 'VestedTokenDistributionStrategy':
    |  function distributeTokens(address _beneficiary, uint256 _tokenAmount) onlyCrowdsale {
    |    contributions[_beneficiary] = contributions[_beneficiary].add(_tokenAmount);
  > |    totalContributed = totalContributed.add(_tokenAmount);
    |    require(totalContributed <= token.balanceOf(this));
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(410)

[33mWarning[0m for UnrestrictedWrite in contract 'VestedTokenDistributionStrategy':
    |    require(_vestingStart > crowdsale.endTime());
    |    require(_vestingDuration > 0);
  > |    vestingStart = _vestingStart;
    |    vestingDuration = _vestingDuration;
    |    vestingConfigured = true;
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(483)

[33mWarning[0m for UnrestrictedWrite in contract 'VestedTokenDistributionStrategy':
    |    require(_vestingDuration > 0);
    |    vestingStart = _vestingStart;
  > |    vestingDuration = _vestingDuration;
    |    vestingConfigured = true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(484)

[33mWarning[0m for UnrestrictedWrite in contract 'VestedTokenDistributionStrategy':
    |    vestingStart = _vestingStart;
    |    vestingDuration = _vestingDuration;
  > |    vestingConfigured = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(485)

[33mWarning[0m for UnrestrictedWrite in contract 'VestedTokenDistributionStrategy':
    |     require(unreleased > 0);
    |
  > |     released[_beneficiary] = released[_beneficiary].add(unreleased);
    |
    |     require(token.transfer(_beneficiary, unreleased));
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(498)

[31mViolation[0m for LockedEther in contract 'WhitelistedDistributionStrategy':
    | *
    | */
  > |contract WhitelistedDistributionStrategy is Ownable, VestedTokenDistributionStrategy {
    |    uint256 public constant maximumBidAllowed = 500 ether;
    |
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(545)

[33mWarning[0m for UnhandledException in contract 'WhitelistedDistributionStrategy':
    |      require(bonusIntervals[i].bonus <= MAX_DISCOUNT);
    |      require(bonusIntervals[i].bonus >= 0);
  > |      require(crowdsale.startTime() < bonusIntervals[i].endPeriod);
    |      require(bonusIntervals[i].endPeriod <= crowdsale.endTime());
    |      if (i != 0) {
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(382)

[33mWarning[0m for UnhandledException in contract 'WhitelistedDistributionStrategy':
    |      require(bonusIntervals[i].bonus >= 0);
    |      require(crowdsale.startTime() < bonusIntervals[i].endPeriod);
  > |      require(bonusIntervals[i].endPeriod <= crowdsale.endTime());
    |      if (i != 0) {
    |        require(bonusIntervals[i-1].endPeriod < bonusIntervals[i].endPeriod);
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(383)

[33mWarning[0m for UnhandledException in contract 'WhitelistedDistributionStrategy':
    |    contributions[_beneficiary] = contributions[_beneficiary].add(_tokenAmount);
    |    totalContributed = totalContributed.add(_tokenAmount);
  > |    require(totalContributed <= token.balanceOf(this));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(411)

[33mWarning[0m for UnhandledException in contract 'WhitelistedDistributionStrategy':
    |
    |  modifier vestingPeriodStarted {
  > |    require(crowdsale.hasEnded());
    |    require(vestingConfigured == true);
    |    require(now > vestingStart);
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(461)

[33mWarning[0m for UnhandledException in contract 'WhitelistedDistributionStrategy':
    |  function configureVesting(uint256 _vestingStart, uint256 _vestingDuration) onlyOwner {
    |    require(vestingConfigured == false);
  > |    require(_vestingStart > crowdsale.endTime());
    |    require(_vestingDuration > 0);
    |    vestingStart = _vestingStart;
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(481)

[33mWarning[0m for UnhandledException in contract 'WhitelistedDistributionStrategy':
    |     released[_beneficiary] = released[_beneficiary].add(unreleased);
    |
  > |     require(token.transfer(_beneficiary, unreleased));
    |     Released(_beneficiary,unreleased);
    |
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(500)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'WhitelistedDistributionStrategy':
    |      require(bonusIntervals[i].bonus <= MAX_DISCOUNT);
    |      require(bonusIntervals[i].bonus >= 0);
  > |      require(crowdsale.startTime() < bonusIntervals[i].endPeriod);
    |      require(bonusIntervals[i].endPeriod <= crowdsale.endTime());
    |      if (i != 0) {
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(382)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'WhitelistedDistributionStrategy':
    |      require(bonusIntervals[i].bonus >= 0);
    |      require(crowdsale.startTime() < bonusIntervals[i].endPeriod);
  > |      require(bonusIntervals[i].endPeriod <= crowdsale.endTime());
    |      if (i != 0) {
    |        require(bonusIntervals[i-1].endPeriod < bonusIntervals[i].endPeriod);
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(383)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'WhitelistedDistributionStrategy':
    |    contributions[_beneficiary] = contributions[_beneficiary].add(_tokenAmount);
    |    totalContributed = totalContributed.add(_tokenAmount);
  > |    require(totalContributed <= token.balanceOf(this));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(411)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'WhitelistedDistributionStrategy':
    |
    |  modifier vestingPeriodStarted {
  > |    require(crowdsale.hasEnded());
    |    require(vestingConfigured == true);
    |    require(now > vestingStart);
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(461)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'WhitelistedDistributionStrategy':
    |  function configureVesting(uint256 _vestingStart, uint256 _vestingDuration) onlyOwner {
    |    require(vestingConfigured == false);
  > |    require(_vestingStart > crowdsale.endTime());
    |    require(_vestingDuration > 0);
    |    vestingStart = _vestingStart;
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(481)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'WhitelistedDistributionStrategy':
    |     released[_beneficiary] = released[_beneficiary].add(unreleased);
    |
  > |     require(token.transfer(_beneficiary, unreleased));
    |     Released(_beneficiary,unreleased);
    |
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(500)

[31mViolation[0m for UnrestrictedWrite in contract 'WhitelistedDistributionStrategy':
    |    require(crowdsale == address(0));
    |    require(_crowdsale != address(0));
  > |    crowdsale = _crowdsale;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(314)

[31mViolation[0m for UnrestrictedWrite in contract 'WhitelistedDistributionStrategy':
    |    _;
    |    require(intervalsConfigured == false);
  > |    intervalsConfigured = true;
    |    require(bonusIntervals.length > 0);
    |    for(uint i = 0; i < bonusIntervals.length; ++i) {
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(377)

[33mWarning[0m for UnrestrictedWrite in contract 'WhitelistedDistributionStrategy':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'WhitelistedDistributionStrategy':
    |
    |  function distributeTokens(address _beneficiary, uint256 _tokenAmount) onlyCrowdsale {
  > |    contributions[_beneficiary] = contributions[_beneficiary].add(_tokenAmount);
    |    totalContributed = totalContributed.add(_tokenAmount);
    |    require(totalContributed <= token.balanceOf(this));
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(409)

[33mWarning[0m for UnrestrictedWrite in contract 'WhitelistedDistributionStrategy':
    |  function distributeTokens(address _beneficiary, uint256 _tokenAmount) onlyCrowdsale {
    |    contributions[_beneficiary] = contributions[_beneficiary].add(_tokenAmount);
  > |    totalContributed = totalContributed.add(_tokenAmount);
    |    require(totalContributed <= token.balanceOf(this));
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(410)

[33mWarning[0m for UnrestrictedWrite in contract 'WhitelistedDistributionStrategy':
    |    require(_vestingStart > crowdsale.endTime());
    |    require(_vestingDuration > 0);
  > |    vestingStart = _vestingStart;
    |    vestingDuration = _vestingDuration;
    |    vestingConfigured = true;
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(483)

[33mWarning[0m for UnrestrictedWrite in contract 'WhitelistedDistributionStrategy':
    |    require(_vestingDuration > 0);
    |    vestingStart = _vestingStart;
  > |    vestingDuration = _vestingDuration;
    |    vestingConfigured = true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(484)

[33mWarning[0m for UnrestrictedWrite in contract 'WhitelistedDistributionStrategy':
    |    vestingStart = _vestingStart;
    |    vestingDuration = _vestingDuration;
  > |    vestingConfigured = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(485)

[33mWarning[0m for UnrestrictedWrite in contract 'WhitelistedDistributionStrategy':
    |     require(unreleased > 0);
    |
  > |     released[_beneficiary] = released[_beneficiary].add(unreleased);
    |
    |     require(token.transfer(_beneficiary, unreleased));
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(498)

[33mWarning[0m for UnrestrictedWrite in contract 'WhitelistedDistributionStrategy':
    |    {
    |        require(amount <= maximumBidAllowed);
  > |        registeredAmount[target] = amount;
    |        if (amount > 0){
    |            RegistrationStatusChanged(target, true);
  at /home/jiaming/mavs_srcs/contract@0x4c7f666ca30fe548fbdc08b0308927327f08336d.sol(568)


