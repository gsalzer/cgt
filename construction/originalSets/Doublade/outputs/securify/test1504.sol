Processing contract: /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol:Crowdsale
Processing contract: /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol:FinalizeAgent
Processing contract: /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol:FractionalERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol:GetCrowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol:GetWhitelist
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol:Haltable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol:MintableToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol:MintedTokenCappedCrowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol:PricingStrategy
Processing contract: /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol:SafeMathLib
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'GetCrowdsale':
    |    assignTokens(receiver, tokenAmount);
    |    // Pocket the money
  > |    if(!multisigWallet.send(weiAmount)) throw;
    |    // Tell us invest was success
    |    Invested(receiver, weiAmount, tokenAmount, customerId);
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(379)

[33mWarning[0m for DAOConstantGas in contract 'GetCrowdsale':
    |    weiRefunded = weiRefunded.plus(weiValue);
    |    Refund(msg.sender, weiValue);
  > |    if (!msg.sender.send(weiValue)) throw;
    |  }
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(576)

[33mWarning[0m for LockedEther in contract 'GetCrowdsale':
    |    }
    |}
  > |contract GetCrowdsale is MintedTokenCappedCrowdsale {
    |    uint public lockTime;
    |    FinalizeAgent presaleFinalizeAgent;
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(924)

[33mWarning[0m for TODAmount in contract 'GetCrowdsale':
    |    assignTokens(receiver, tokenAmount);
    |    // Pocket the money
  > |    if(!multisigWallet.send(weiAmount)) throw;
    |    // Tell us invest was success
    |    Invested(receiver, weiAmount, tokenAmount, customerId);
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(379)

[31mViolation[0m for TODReceiver in contract 'GetCrowdsale':
    |    assignTokens(receiver, tokenAmount);
    |    // Pocket the money
  > |    if(!multisigWallet.send(weiAmount)) throw;
    |    // Tell us invest was success
    |    Invested(receiver, weiAmount, tokenAmount, customerId);
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(379)

[33mWarning[0m for TODReceiver in contract 'GetCrowdsale':
    |    weiRefunded = weiRefunded.plus(weiValue);
    |    Refund(msg.sender, weiValue);
  > |    if (!msg.sender.send(weiValue)) throw;
    |  }
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(576)

[33mWarning[0m for UnhandledException in contract 'GetCrowdsale':
    |    uint weiAmount = msg.value;
    |    // Account presale sales separately, so that they do not count against pricing tranches
  > |    uint tokenAmount = pricingStrategy.calculatePrice(weiAmount, weiRaised - presaleWeiRaised, tokensSold, msg.sender, token.decimals());
    |    if(tokenAmount == 0) {
    |      // Dust transaction
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(355)

[33mWarning[0m for UnhandledException in contract 'GetCrowdsale':
    |    weiRaised = weiRaised.plus(weiAmount);
    |    tokensSold = tokensSold.plus(tokenAmount);
  > |    if(pricingStrategy.isPresalePurchase(receiver)) {
    |        presaleWeiRaised = presaleWeiRaised.plus(weiAmount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(370)

[33mWarning[0m for UnhandledException in contract 'GetCrowdsale':
    |    assignTokens(receiver, tokenAmount);
    |    // Pocket the money
  > |    if(!multisigWallet.send(weiAmount)) throw;
    |    // Tell us invest was success
    |    Invested(receiver, weiAmount, tokenAmount, customerId);
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(379)

[33mWarning[0m for UnhandledException in contract 'GetCrowdsale':
    |   */
    |  function investWithSignedAddress(address addr, uint128 customerId, uint8 v, bytes32 r, bytes32 s) public payable {
  > |     bytes32 hash = sha256(addr);
    |     if (ecrecover(hash, v, r, s) != signerAddress) throw;
    |     if(customerId == 0) throw;  // UUIDv4 sanity check
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(413)

[33mWarning[0m for UnhandledException in contract 'GetCrowdsale':
    |  function investWithSignedAddress(address addr, uint128 customerId, uint8 v, bytes32 r, bytes32 s) public payable {
    |     bytes32 hash = sha256(addr);
  > |     if (ecrecover(hash, v, r, s) != signerAddress) throw;
    |     if(customerId == 0) throw;  // UUIDv4 sanity check
    |     investInternal(addr, customerId);
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(414)

[33mWarning[0m for UnhandledException in contract 'GetCrowdsale':
    |    // Finalizing is optional. We only call it if we are given a finalizing agent.
    |    if(address(finalizeAgent) != 0) {
  > |      finalizeAgent.finalizeCrowdsale();
    |    }
    |    finalized = true;
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(468)

[33mWarning[0m for UnhandledException in contract 'GetCrowdsale':
    |    finalizeAgent = addr;
    |    // Don't allow setting bad agent
  > |    if(!finalizeAgent.isFinalizeAgent()) {
    |      throw;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(480)

[33mWarning[0m for UnhandledException in contract 'GetCrowdsale':
    |    pricingStrategy = _pricingStrategy;
    |    // Don't allow setting bad agent
  > |    if(!pricingStrategy.isPricingStrategy()) {
    |      throw;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(537)

[33mWarning[0m for UnhandledException in contract 'GetCrowdsale':
    |    weiRefunded = weiRefunded.plus(weiValue);
    |    Refund(msg.sender, weiValue);
  > |    if (!msg.sender.send(weiValue)) throw;
    |  }
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(576)

[33mWarning[0m for UnhandledException in contract 'GetCrowdsale':
    |   */
    |  function isFinalizerSane() public constant returns (bool sane) {
  > |    return finalizeAgent.isSane();
    |  }
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(588)

[33mWarning[0m for UnhandledException in contract 'GetCrowdsale':
    |   */
    |  function isPricingSane() public constant returns (bool sane) {
  > |    return pricingStrategy.isSane(address(this));
    |  }
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(594)

[33mWarning[0m for UnhandledException in contract 'GetCrowdsale':
    |    if(finalized) return State.Finalized;
    |    else if (address(finalizeAgent) == 0) return State.Preparing;
  > |    else if (!finalizeAgent.isSane()) return State.Preparing;
    |    else if (!pricingStrategy.isSane(address(this))) return State.Preparing;
    |    else if (block.timestamp < startsAt) return State.PreFunding;
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(604)

[33mWarning[0m for UnhandledException in contract 'GetCrowdsale':
    |    else if (address(finalizeAgent) == 0) return State.Preparing;
    |    else if (!finalizeAgent.isSane()) return State.Preparing;
  > |    else if (!pricingStrategy.isSane(address(this))) return State.Preparing;
    |    else if (block.timestamp < startsAt) return State.PreFunding;
    |    else if (block.timestamp <= endsAt && !isCrowdsaleFull()) return State.Funding;
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(605)

[33mWarning[0m for UnhandledException in contract 'GetCrowdsale':
    |    // overriden because presaleWeiRaised was not altered and would mess with the TranchePricing
    |    function preallocate(address receiver, uint fullTokens, uint weiPrice) public onlyOwner {
  > |        uint tokenAmount = fullTokens * 10**token.decimals();
    |        uint weiAmount = weiPrice * fullTokens; // This can be also 0, we give out tokens for free
    |        weiRaised = weiRaised.plus(weiAmount);
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(950)

[33mWarning[0m for UnhandledException in contract 'GetCrowdsale':
    |    function assignTokens(address receiver, uint tokenAmount) private {
    |        MintableToken mintableToken = MintableToken(token);
  > |        mintableToken.mint(receiver, tokenAmount);
    |    }
    |    function finalize() public inState(State.Success) onlyOwner stopInEmergency {
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(968)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GetCrowdsale':
    |    uint weiAmount = msg.value;
    |    // Account presale sales separately, so that they do not count against pricing tranches
  > |    uint tokenAmount = pricingStrategy.calculatePrice(weiAmount, weiRaised - presaleWeiRaised, tokensSold, msg.sender, token.decimals());
    |    if(tokenAmount == 0) {
    |      // Dust transaction
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(355)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GetCrowdsale':
    |    weiRaised = weiRaised.plus(weiAmount);
    |    tokensSold = tokensSold.plus(tokenAmount);
  > |    if(pricingStrategy.isPresalePurchase(receiver)) {
    |        presaleWeiRaised = presaleWeiRaised.plus(weiAmount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(370)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GetCrowdsale':
    |    assignTokens(receiver, tokenAmount);
    |    // Pocket the money
  > |    if(!multisigWallet.send(weiAmount)) throw;
    |    // Tell us invest was success
    |    Invested(receiver, weiAmount, tokenAmount, customerId);
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(379)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GetCrowdsale':
    |   */
    |  function investWithSignedAddress(address addr, uint128 customerId, uint8 v, bytes32 r, bytes32 s) public payable {
  > |     bytes32 hash = sha256(addr);
    |     if (ecrecover(hash, v, r, s) != signerAddress) throw;
    |     if(customerId == 0) throw;  // UUIDv4 sanity check
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(413)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GetCrowdsale':
    |  function investWithSignedAddress(address addr, uint128 customerId, uint8 v, bytes32 r, bytes32 s) public payable {
    |     bytes32 hash = sha256(addr);
  > |     if (ecrecover(hash, v, r, s) != signerAddress) throw;
    |     if(customerId == 0) throw;  // UUIDv4 sanity check
    |     investInternal(addr, customerId);
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(414)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GetCrowdsale':
    |    // Finalizing is optional. We only call it if we are given a finalizing agent.
    |    if(address(finalizeAgent) != 0) {
  > |      finalizeAgent.finalizeCrowdsale();
    |    }
    |    finalized = true;
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(468)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GetCrowdsale':
    |    finalizeAgent = addr;
    |    // Don't allow setting bad agent
  > |    if(!finalizeAgent.isFinalizeAgent()) {
    |      throw;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(480)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GetCrowdsale':
    |    pricingStrategy = _pricingStrategy;
    |    // Don't allow setting bad agent
  > |    if(!pricingStrategy.isPricingStrategy()) {
    |      throw;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(537)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GetCrowdsale':
    |    weiRefunded = weiRefunded.plus(weiValue);
    |    Refund(msg.sender, weiValue);
  > |    if (!msg.sender.send(weiValue)) throw;
    |  }
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(576)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GetCrowdsale':
    |   */
    |  function isFinalizerSane() public constant returns (bool sane) {
  > |    return finalizeAgent.isSane();
    |  }
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(588)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GetCrowdsale':
    |   */
    |  function isPricingSane() public constant returns (bool sane) {
  > |    return pricingStrategy.isSane(address(this));
    |  }
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(594)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GetCrowdsale':
    |    if(finalized) return State.Finalized;
    |    else if (address(finalizeAgent) == 0) return State.Preparing;
  > |    else if (!finalizeAgent.isSane()) return State.Preparing;
    |    else if (!pricingStrategy.isSane(address(this))) return State.Preparing;
    |    else if (block.timestamp < startsAt) return State.PreFunding;
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(604)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GetCrowdsale':
    |    else if (address(finalizeAgent) == 0) return State.Preparing;
    |    else if (!finalizeAgent.isSane()) return State.Preparing;
  > |    else if (!pricingStrategy.isSane(address(this))) return State.Preparing;
    |    else if (block.timestamp < startsAt) return State.PreFunding;
    |    else if (block.timestamp <= endsAt && !isCrowdsaleFull()) return State.Funding;
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(605)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GetCrowdsale':
    |    // overriden because presaleWeiRaised was not altered and would mess with the TranchePricing
    |    function preallocate(address receiver, uint fullTokens, uint weiPrice) public onlyOwner {
  > |        uint tokenAmount = fullTokens * 10**token.decimals();
    |        uint weiAmount = weiPrice * fullTokens; // This can be also 0, we give out tokens for free
    |        weiRaised = weiRaised.plus(weiAmount);
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(950)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GetCrowdsale':
    |    function assignTokens(address receiver, uint tokenAmount) private {
    |        MintableToken mintableToken = MintableToken(token);
  > |        mintableToken.mint(receiver, tokenAmount);
    |    }
    |    function finalize() public inState(State.Success) onlyOwner stopInEmergency {
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(968)

[33mWarning[0m for UnrestrictedWrite in contract 'GetCrowdsale':
    |    if(investedAmountOf[receiver] == 0) {
    |       // A new investor
  > |       investorCount++;
    |    }
    |    // Update investor
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(362)

[33mWarning[0m for UnrestrictedWrite in contract 'GetCrowdsale':
    |    }
    |    // Update investor
  > |    investedAmountOf[receiver] = investedAmountOf[receiver].plus(weiAmount);
    |    tokenAmountOf[receiver] = tokenAmountOf[receiver].plus(tokenAmount);
    |    // Update totals
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(365)

[33mWarning[0m for UnrestrictedWrite in contract 'GetCrowdsale':
    |    // Update investor
    |    investedAmountOf[receiver] = investedAmountOf[receiver].plus(weiAmount);
  > |    tokenAmountOf[receiver] = tokenAmountOf[receiver].plus(tokenAmount);
    |    // Update totals
    |    weiRaised = weiRaised.plus(weiAmount);
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(366)

[33mWarning[0m for UnrestrictedWrite in contract 'GetCrowdsale':
    |    tokenAmountOf[receiver] = tokenAmountOf[receiver].plus(tokenAmount);
    |    // Update totals
  > |    weiRaised = weiRaised.plus(weiAmount);
    |    tokensSold = tokensSold.plus(tokenAmount);
    |    if(pricingStrategy.isPresalePurchase(receiver)) {
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(368)

[33mWarning[0m for UnrestrictedWrite in contract 'GetCrowdsale':
    |    // Update totals
    |    weiRaised = weiRaised.plus(weiAmount);
  > |    tokensSold = tokensSold.plus(tokenAmount);
    |    if(pricingStrategy.isPresalePurchase(receiver)) {
    |        presaleWeiRaised = presaleWeiRaised.plus(weiAmount);
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(369)

[33mWarning[0m for UnrestrictedWrite in contract 'GetCrowdsale':
    |    tokensSold = tokensSold.plus(tokenAmount);
    |    if(pricingStrategy.isPresalePurchase(receiver)) {
  > |        presaleWeiRaised = presaleWeiRaised.plus(weiAmount);
    |    }
    |    // Check that we did not bust the cap
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(371)

[33mWarning[0m for UnrestrictedWrite in contract 'GetCrowdsale':
    |      finalizeAgent.finalizeCrowdsale();
    |    }
  > |    finalized = true;
    |  }
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(470)

[33mWarning[0m for UnrestrictedWrite in contract 'GetCrowdsale':
    |  function loadRefund() public payable inState(State.Failure) {
    |    if(msg.value == 0) throw;
  > |    loadedRefund = loadedRefund.plus(msg.value);
    |  }
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(562)

[33mWarning[0m for UnrestrictedWrite in contract 'GetCrowdsale':
    |    uint256 weiValue = investedAmountOf[msg.sender];
    |    if (weiValue == 0) throw;
  > |    investedAmountOf[msg.sender] = 0;
    |    weiRefunded = weiRefunded.plus(weiValue);
    |    Refund(msg.sender, weiValue);
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(573)

[33mWarning[0m for UnrestrictedWrite in contract 'GetCrowdsale':
    |    if (weiValue == 0) throw;
    |    investedAmountOf[msg.sender] = 0;
  > |    weiRefunded = weiRefunded.plus(weiValue);
    |    Refund(msg.sender, weiValue);
    |    if (!msg.sender.send(weiValue)) throw;
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(574)

[33mWarning[0m for UnrestrictedWrite in contract 'GetCrowdsale':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'GetCrowdsale':
    |  // called by the owner on emergency, triggers stopped state
    |  function halt() external onlyOwner {
  > |    halted = true;
    |  }
    |  // called by the owner on end of emergency, returns to normal state
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(134)

[33mWarning[0m for UnrestrictedWrite in contract 'GetCrowdsale':
    |  // called by the owner on end of emergency, returns to normal state
    |  function unhalt() external onlyOwner onlyInEmergency {
  > |    halted = false;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(138)

[33mWarning[0m for UnrestrictedWrite in contract 'GetCrowdsale':
    |   */
    |  function setFinalizeAgent(FinalizeAgent addr) onlyOwner {
  > |    finalizeAgent = addr;
    |    // Don't allow setting bad agent
    |    if(!finalizeAgent.isFinalizeAgent()) {
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(478)

[33mWarning[0m for UnrestrictedWrite in contract 'GetCrowdsale':
    |   */
    |  function setRequireCustomerId(bool value) onlyOwner {
  > |    requireCustomerId = value;
    |    InvestmentPolicyChanged(requireCustomerId, requiredSignedAddress, signerAddress);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(489)

[33mWarning[0m for UnrestrictedWrite in contract 'GetCrowdsale':
    |   */
    |  function setRequireSignedAddress(bool value, address _signerAddress) onlyOwner {
  > |    requiredSignedAddress = value;
    |    signerAddress = _signerAddress;
    |    InvestmentPolicyChanged(requireCustomerId, requiredSignedAddress, signerAddress);
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(499)

[33mWarning[0m for UnrestrictedWrite in contract 'GetCrowdsale':
    |  function setRequireSignedAddress(bool value, address _signerAddress) onlyOwner {
    |    requiredSignedAddress = value;
  > |    signerAddress = _signerAddress;
    |    InvestmentPolicyChanged(requireCustomerId, requiredSignedAddress, signerAddress);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(500)

[33mWarning[0m for UnrestrictedWrite in contract 'GetCrowdsale':
    |      throw; // Don't change past
    |    }
  > |    endsAt = time;
    |    EndsAtChanged(endsAt);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(526)

[33mWarning[0m for UnrestrictedWrite in contract 'GetCrowdsale':
    |   */
    |  function setPricingStrategy(PricingStrategy _pricingStrategy) onlyOwner {
  > |    pricingStrategy = _pricingStrategy;
    |    // Don't allow setting bad agent
    |    if(!pricingStrategy.isPricingStrategy()) {
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(535)

[33mWarning[0m for UnrestrictedWrite in contract 'GetCrowdsale':
    |      throw;
    |    }
  > |    multisigWallet = addr;
    |  }
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(553)

[33mWarning[0m for UnrestrictedWrite in contract 'GetCrowdsale':
    |  /** This is for manual testing of multisig wallet interaction */
    |  function setOwnerTestValue(uint val) onlyOwner {
  > |    ownerTestValue = val;
    |  }
    |  /** Interface marker. */
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(614)

[33mWarning[0m for UnrestrictedWrite in contract 'GetCrowdsale':
    |    function logPresaleResults(uint tokenAmount, uint weiAmount) returns (bool) {
    |        require(msg.sender == address(presaleFinalizeAgent));
  > |        weiRaised = weiRaised.plus(weiAmount);
    |        tokensSold = tokensSold.plus(tokenAmount);
    |        presaleWeiRaised = presaleWeiRaised.plus(weiAmount);
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(942)

[33mWarning[0m for UnrestrictedWrite in contract 'GetCrowdsale':
    |        require(msg.sender == address(presaleFinalizeAgent));
    |        weiRaised = weiRaised.plus(weiAmount);
  > |        tokensSold = tokensSold.plus(tokenAmount);
    |        presaleWeiRaised = presaleWeiRaised.plus(weiAmount);
    |        PresaleUpdated(weiAmount, tokenAmount);
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(943)

[33mWarning[0m for UnrestrictedWrite in contract 'GetCrowdsale':
    |        weiRaised = weiRaised.plus(weiAmount);
    |        tokensSold = tokensSold.plus(tokenAmount);
  > |        presaleWeiRaised = presaleWeiRaised.plus(weiAmount);
    |        PresaleUpdated(weiAmount, tokenAmount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(944)

[33mWarning[0m for UnrestrictedWrite in contract 'GetCrowdsale':
    |        uint tokenAmount = fullTokens * 10**token.decimals();
    |        uint weiAmount = weiPrice * fullTokens; // This can be also 0, we give out tokens for free
  > |        weiRaised = weiRaised.plus(weiAmount);
    |        tokensSold = tokensSold.plus(tokenAmount);
    |        presaleWeiRaised = presaleWeiRaised.plus(weiAmount);
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(952)

[33mWarning[0m for UnrestrictedWrite in contract 'GetCrowdsale':
    |        uint weiAmount = weiPrice * fullTokens; // This can be also 0, we give out tokens for free
    |        weiRaised = weiRaised.plus(weiAmount);
  > |        tokensSold = tokensSold.plus(tokenAmount);
    |        presaleWeiRaised = presaleWeiRaised.plus(weiAmount);
    |        investedAmountOf[receiver] = investedAmountOf[receiver].plus(weiAmount);
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(953)

[33mWarning[0m for UnrestrictedWrite in contract 'GetCrowdsale':
    |        weiRaised = weiRaised.plus(weiAmount);
    |        tokensSold = tokensSold.plus(tokenAmount);
  > |        presaleWeiRaised = presaleWeiRaised.plus(weiAmount);
    |        investedAmountOf[receiver] = investedAmountOf[receiver].plus(weiAmount);
    |        tokenAmountOf[receiver] = tokenAmountOf[receiver].plus(tokenAmount);
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(954)

[33mWarning[0m for UnrestrictedWrite in contract 'GetCrowdsale':
    |        tokensSold = tokensSold.plus(tokenAmount);
    |        presaleWeiRaised = presaleWeiRaised.plus(weiAmount);
  > |        investedAmountOf[receiver] = investedAmountOf[receiver].plus(weiAmount);
    |        tokenAmountOf[receiver] = tokenAmountOf[receiver].plus(tokenAmount);
    |        assignTokens(receiver, tokenAmount);
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(955)

[33mWarning[0m for UnrestrictedWrite in contract 'GetCrowdsale':
    |        presaleWeiRaised = presaleWeiRaised.plus(weiAmount);
    |        investedAmountOf[receiver] = investedAmountOf[receiver].plus(weiAmount);
  > |        tokenAmountOf[receiver] = tokenAmountOf[receiver].plus(tokenAmount);
    |        assignTokens(receiver, tokenAmount);
    |        // Tell us invest was success
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(956)

[33mWarning[0m for LockedEther in contract 'GetWhitelist':
    |  }
    |}
  > |contract GetWhitelist is Ownable {
    |    using SafeMathLib for uint;
    |    event NewEntry(address whitelisted);
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(816)

[31mViolation[0m for MissingInputValidation in contract 'GetWhitelist':
    |        bool isWhitelisted;
    |    }
  > |    mapping (address => bool) public whitelisters;
    |    
    |    mapping (address => WhitelistInfo) public entries;
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(830)

[31mViolation[0m for MissingInputValidation in contract 'GetWhitelist':
    |    mapping (address => bool) public whitelisters;
    |    
  > |    mapping (address => WhitelistInfo) public entries;
    |    uint presaleCap;
    |    uint tier1Cap;
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(832)

[31mViolation[0m for MissingInputValidation in contract 'GetWhitelist':
    |        NewBatch();
    |    }
  > |    function accept(address _address, bool _isEarly) onlyWhitelister {
    |        require(!entries[_address].isWhitelisted);
    |        uint _presaleCap;
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(872)

[31mViolation[0m for MissingInputValidation in contract 'GetWhitelist':
    |        NewEntry(_address);
    |    }
  > |    function subtractAmount(address _address, uint _tier, uint _amount) onlyWhitelister {
    |        require(_amount > 0);
    |        require(entries[_address].isWhitelisted);
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(883)

[31mViolation[0m for MissingInputValidation in contract 'GetWhitelist':
    |        revert();
    |    }
  > |    function setWhitelister(address _whitelister, bool _isWhitelister) onlyOwner {
    |        whitelisters[_whitelister] = _isWhitelister;
    |        WhitelisterChange(_whitelister, _isWhitelister);
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(909)

[31mViolation[0m for MissingInputValidation in contract 'GetWhitelist':
    |        WhitelisterChange(_whitelister, _isWhitelister);
    |    }
  > |    function setCaps(uint _presaleCap, uint _tier1Cap, uint _tier2Cap, uint _tier3Cap, uint _tier4Cap) onlyOwner {
    |        presaleCap = _presaleCap;
    |        tier1Cap = _tier1Cap;
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(913)

[33mWarning[0m for MissingInputValidation in contract 'GetWhitelist':
    | */
    |contract Ownable {
  > |  address public owner;
    |  /**
    |   * @dev The Ownable constructor sets the original `owner` of the contract to the sender
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(69)

[33mWarning[0m for MissingInputValidation in contract 'GetWhitelist':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
    |      owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(88)

[33mWarning[0m for MissingInputValidation in contract 'GetWhitelist':
    |        tier4Cap = _tier4Cap;
    |    }
  > |    function isGetWhiteList() constant returns (bool) {
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(849)

[31mViolation[0m for UnrestrictedWrite in contract 'GetWhitelist':
    |            _presaleCap = 0;
    |        }
  > |        entries[_address] = WhitelistInfo(_presaleCap, tier1Cap, tier2Cap, tier3Cap, tier4Cap, true);
    |        NewEntry(_address);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(880)

[31mViolation[0m for UnrestrictedWrite in contract 'GetWhitelist':
    |        require(entries[_address].isWhitelisted);
    |        if (_tier == 0) {
  > |            entries[_address].presaleAmount = entries[_address].presaleAmount.minus(_amount);
    |            EdittedEntry(_address, 0);
    |            return;
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(887)

[31mViolation[0m for UnrestrictedWrite in contract 'GetWhitelist':
    |            return;
    |        }else if (_tier == 1) {
  > |            entries[_address].tier1Amount = entries[_address].tier1Amount.minus(_amount);
    |            EdittedEntry(_address, 1);
    |            return;
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(891)

[31mViolation[0m for UnrestrictedWrite in contract 'GetWhitelist':
    |            return;
    |        }else if (_tier == 2) {
  > |            entries[_address].tier2Amount = entries[_address].tier2Amount.minus(_amount);
    |            EdittedEntry(_address, 2);
    |            return;
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(895)

[31mViolation[0m for UnrestrictedWrite in contract 'GetWhitelist':
    |            return;
    |        }else if (_tier == 3) {
  > |            entries[_address].tier3Amount = entries[_address].tier3Amount.minus(_amount);
    |            EdittedEntry(_address, 3);
    |            return;
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(899)

[31mViolation[0m for UnrestrictedWrite in contract 'GetWhitelist':
    |            return;
    |        }else if (_tier == 4) {
  > |            entries[_address].tier4Amount = entries[_address].tier4Amount.minus(_amount);
    |            EdittedEntry(_address, 4);
    |            return;
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(903)

[33mWarning[0m for UnrestrictedWrite in contract 'GetWhitelist':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'GetWhitelist':
    |    }
    |    function setWhitelister(address _whitelister, bool _isWhitelister) onlyOwner {
  > |        whitelisters[_whitelister] = _isWhitelister;
    |        WhitelisterChange(_whitelister, _isWhitelister);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(910)

[33mWarning[0m for UnrestrictedWrite in contract 'GetWhitelist':
    |    }
    |    function setCaps(uint _presaleCap, uint _tier1Cap, uint _tier2Cap, uint _tier3Cap, uint _tier4Cap) onlyOwner {
  > |        presaleCap = _presaleCap;
    |        tier1Cap = _tier1Cap;
    |        tier2Cap = _tier2Cap;
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(914)

[33mWarning[0m for UnrestrictedWrite in contract 'GetWhitelist':
    |    function setCaps(uint _presaleCap, uint _tier1Cap, uint _tier2Cap, uint _tier3Cap, uint _tier4Cap) onlyOwner {
    |        presaleCap = _presaleCap;
  > |        tier1Cap = _tier1Cap;
    |        tier2Cap = _tier2Cap;
    |        tier3Cap = _tier3Cap;
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(915)

[33mWarning[0m for UnrestrictedWrite in contract 'GetWhitelist':
    |        presaleCap = _presaleCap;
    |        tier1Cap = _tier1Cap;
  > |        tier2Cap = _tier2Cap;
    |        tier3Cap = _tier3Cap;
    |        tier4Cap = _tier4Cap;
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(916)

[33mWarning[0m for UnrestrictedWrite in contract 'GetWhitelist':
    |        tier1Cap = _tier1Cap;
    |        tier2Cap = _tier2Cap;
  > |        tier3Cap = _tier3Cap;
    |        tier4Cap = _tier4Cap;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(917)

[33mWarning[0m for UnrestrictedWrite in contract 'GetWhitelist':
    |        tier2Cap = _tier2Cap;
    |        tier3Cap = _tier3Cap;
  > |        tier4Cap = _tier4Cap;
    |    }
    |    function() payable {
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(918)

[33mWarning[0m for LockedEther in contract 'Haltable':
    | * Originally envisioned in FirstBlood ICO contract.
    | */
  > |contract Haltable is Ownable {
    |  bool public halted;
    |  modifier stopInEmergency {
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(118)

[33mWarning[0m for MissingInputValidation in contract 'Haltable':
    | */
    |contract Ownable {
  > |  address public owner;
    |  /**
    |   * @dev The Ownable constructor sets the original `owner` of the contract to the sender
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(69)

[33mWarning[0m for MissingInputValidation in contract 'Haltable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
    |      owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(88)

[33mWarning[0m for MissingInputValidation in contract 'Haltable':
    | */
    |contract Haltable is Ownable {
  > |  bool public halted;
    |  modifier stopInEmergency {
    |    if (halted) throw;
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(119)

[33mWarning[0m for MissingInputValidation in contract 'Haltable':
    |  }
    |  // called by the owner on emergency, triggers stopped state
  > |  function halt() external onlyOwner {
    |    halted = true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(133)

[33mWarning[0m for MissingInputValidation in contract 'Haltable':
    |  }
    |  // called by the owner on end of emergency, returns to normal state
  > |  function unhalt() external onlyOwner onlyInEmergency {
    |    halted = false;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(137)

[33mWarning[0m for UnrestrictedWrite in contract 'Haltable':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'Haltable':
    |  // called by the owner on emergency, triggers stopped state
    |  function halt() external onlyOwner {
  > |    halted = true;
    |  }
    |  // called by the owner on end of emergency, returns to normal state
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(134)

[33mWarning[0m for UnrestrictedWrite in contract 'Haltable':
    |  // called by the owner on end of emergency, returns to normal state
    |  function unhalt() external onlyOwner onlyInEmergency {
  > |    halted = false;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(138)

[33mWarning[0m for LockedEther in contract 'MintableToken':
    | *
    | */
  > |contract MintableToken is StandardToken, Ownable {
    |  using SafeMathLib for uint;
    |  bool public mintingFinished = false;
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(778)

[31mViolation[0m for MissingInputValidation in contract 'MintableToken':
    |    return true;
    |  }
  > |  function transferFrom(address _from, address _to, uint _value) returns (bool success) {
    |    uint _allowance = allowed[_from][msg.sender];
    |    balances[_to] = safeAdd(balances[_to], _value);
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(715)

[31mViolation[0m for MissingInputValidation in contract 'MintableToken':
    |    return true;
    |  }
  > |  function balanceOf(address _owner) constant returns (uint balance) {
    |    return balances[_owner];
    |  }
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(723)

[31mViolation[0m for MissingInputValidation in contract 'MintableToken':
    |    return true;
    |  }
  > |  function allowance(address _owner, address _spender) constant returns (uint remaining) {
    |    return allowed[_owner][_spender];
    |  }
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(736)

[31mViolation[0m for MissingInputValidation in contract 'MintableToken':
    |  bool public mintingFinished = false;
    |  /** List of agents that are allowed to create new tokens */
  > |  mapping (address => bool) public mintAgents;
    |  event MintingAgentChanged(address addr, bool state  );
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(782)

[31mViolation[0m for MissingInputValidation in contract 'MintableToken':
    |   * Only callably by a crowdsale contract (mint agent).
    |   */
  > |  function mint(address receiver, uint amount) onlyMintAgent canMint public {
    |    totalSupply = totalSupply.plus(amount);
    |    balances[receiver] = balances[receiver].plus(amount);
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(789)

[31mViolation[0m for MissingInputValidation in contract 'MintableToken':
    |   * Owner can allow a crowdsale contract to mint new tokens.
    |   */
  > |  function setMintAgent(address addr, bool state) onlyOwner canMint public {
    |    mintAgents[addr] = state;
    |    MintingAgentChanged(addr, state);
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(799)

[33mWarning[0m for MissingInputValidation in contract 'MintableToken':
    |    return c;
    |  }
  > |  function safeSub(uint a, uint b) internal returns (uint) {
    |    assert(b <= a);
    |    return a - b;
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'MintableToken':
    |    return a - b;
    |  }
  > |  function safeAdd(uint a, uint b) internal returns (uint) {
    |    uint c = a + b;
    |    assert(c>=a && c>=b);
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(19)

[33mWarning[0m for MissingInputValidation in contract 'MintableToken':
    | */
    |contract ERC20Basic {
  > |  uint256 public totalSupply;
    |  function balanceOf(address who) constant returns (uint256);
    |  function transfer(address to, uint256 value) returns (bool);
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(43)

[33mWarning[0m for MissingInputValidation in contract 'MintableToken':
    | */
    |contract Ownable {
  > |  address public owner;
    |  /**
    |   * @dev The Ownable constructor sets the original `owner` of the contract to the sender
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(69)

[33mWarning[0m for MissingInputValidation in contract 'MintableToken':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
    |      owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(88)

[33mWarning[0m for MissingInputValidation in contract 'MintableToken':
    |  mapping (address => mapping (address => uint)) allowed;
    |  /* Interface declaration */
  > |  function isToken() public constant returns (bool weAre) {
    |    return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(706)

[33mWarning[0m for MissingInputValidation in contract 'MintableToken':
    |contract MintableToken is StandardToken, Ownable {
    |  using SafeMathLib for uint;
  > |  bool public mintingFinished = false;
    |  /** List of agents that are allowed to create new tokens */
    |  mapping (address => bool) public mintAgents;
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(780)

[31mViolation[0m for UnrestrictedWrite in contract 'MintableToken':
    |  }
    |  function transfer(address _to, uint _value) returns (bool success) {
  > |    balances[msg.sender] = safeSub(balances[msg.sender], _value);
    |    balances[_to] = safeAdd(balances[_to], _value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(710)

[31mViolation[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function transfer(address _to, uint _value) returns (bool success) {
    |    balances[msg.sender] = safeSub(balances[msg.sender], _value);
  > |    balances[_to] = safeAdd(balances[_to], _value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(711)

[31mViolation[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function transferFrom(address _from, address _to, uint _value) returns (bool success) {
    |    uint _allowance = allowed[_from][msg.sender];
  > |    balances[_to] = safeAdd(balances[_to], _value);
    |    balances[_from] = safeSub(balances[_from], _value);
    |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(717)

[31mViolation[0m for UnrestrictedWrite in contract 'MintableToken':
    |    uint _allowance = allowed[_from][msg.sender];
    |    balances[_to] = safeAdd(balances[_to], _value);
  > |    balances[_from] = safeSub(balances[_from], _value);
    |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(718)

[31mViolation[0m for UnrestrictedWrite in contract 'MintableToken':
    |    balances[_to] = safeAdd(balances[_to], _value);
    |    balances[_from] = safeSub(balances[_from], _value);
  > |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(719)

[31mViolation[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function mint(address receiver, uint amount) onlyMintAgent canMint public {
  > |    totalSupply = totalSupply.plus(amount);
    |    balances[receiver] = balances[receiver].plus(amount);
    |    // This will make the mint transaction apper in EtherScan.io
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(790)

[31mViolation[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function mint(address receiver, uint amount) onlyMintAgent canMint public {
    |    totalSupply = totalSupply.plus(amount);
  > |    balances[receiver] = balances[receiver].plus(amount);
    |    // This will make the mint transaction apper in EtherScan.io
    |    // We can remove this after there is a standardized minting event
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(791)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    //  https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
    |    if ((_value != 0) && (allowed[msg.sender][_spender] != 0)) throw;
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(732)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function setMintAgent(address addr, bool state) onlyOwner canMint public {
  > |    mintAgents[addr] = state;
    |    MintingAgentChanged(addr, state);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(800)

[33mWarning[0m for DAOConstantGas in contract 'MintedTokenCappedCrowdsale':
    |    assignTokens(receiver, tokenAmount);
    |    // Pocket the money
  > |    if(!multisigWallet.send(weiAmount)) throw;
    |    // Tell us invest was success
    |    Invested(receiver, weiAmount, tokenAmount, customerId);
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(379)

[33mWarning[0m for DAOConstantGas in contract 'MintedTokenCappedCrowdsale':
    |    weiRefunded = weiRefunded.plus(weiValue);
    |    Refund(msg.sender, weiValue);
  > |    if (!msg.sender.send(weiValue)) throw;
    |  }
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(576)

[33mWarning[0m for LockedEther in contract 'MintedTokenCappedCrowdsale':
    | *
    | */
  > |contract MintedTokenCappedCrowdsale is Crowdsale {
    |  /* Maximum amount of tokens this crowdsale can sell. */
    |  uint public maximumSellableTokens;
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(663)

[33mWarning[0m for TODAmount in contract 'MintedTokenCappedCrowdsale':
    |    assignTokens(receiver, tokenAmount);
    |    // Pocket the money
  > |    if(!multisigWallet.send(weiAmount)) throw;
    |    // Tell us invest was success
    |    Invested(receiver, weiAmount, tokenAmount, customerId);
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(379)

[31mViolation[0m for TODReceiver in contract 'MintedTokenCappedCrowdsale':
    |    assignTokens(receiver, tokenAmount);
    |    // Pocket the money
  > |    if(!multisigWallet.send(weiAmount)) throw;
    |    // Tell us invest was success
    |    Invested(receiver, weiAmount, tokenAmount, customerId);
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(379)

[33mWarning[0m for TODReceiver in contract 'MintedTokenCappedCrowdsale':
    |    weiRefunded = weiRefunded.plus(weiValue);
    |    Refund(msg.sender, weiValue);
  > |    if (!msg.sender.send(weiValue)) throw;
    |  }
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(576)

[33mWarning[0m for UnhandledException in contract 'MintedTokenCappedCrowdsale':
    |    uint weiAmount = msg.value;
    |    // Account presale sales separately, so that they do not count against pricing tranches
  > |    uint tokenAmount = pricingStrategy.calculatePrice(weiAmount, weiRaised - presaleWeiRaised, tokensSold, msg.sender, token.decimals());
    |    if(tokenAmount == 0) {
    |      // Dust transaction
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(355)

[33mWarning[0m for UnhandledException in contract 'MintedTokenCappedCrowdsale':
    |    weiRaised = weiRaised.plus(weiAmount);
    |    tokensSold = tokensSold.plus(tokenAmount);
  > |    if(pricingStrategy.isPresalePurchase(receiver)) {
    |        presaleWeiRaised = presaleWeiRaised.plus(weiAmount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(370)

[33mWarning[0m for UnhandledException in contract 'MintedTokenCappedCrowdsale':
    |    assignTokens(receiver, tokenAmount);
    |    // Pocket the money
  > |    if(!multisigWallet.send(weiAmount)) throw;
    |    // Tell us invest was success
    |    Invested(receiver, weiAmount, tokenAmount, customerId);
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(379)

[33mWarning[0m for UnhandledException in contract 'MintedTokenCappedCrowdsale':
    |   */
    |  function preallocate(address receiver, uint fullTokens, uint weiPrice) public onlyOwner {
  > |    uint tokenAmount = fullTokens * 10**token.decimals();
    |    uint weiAmount = weiPrice * fullTokens; // This can be also 0, we give out tokens for free
    |    weiRaised = weiRaised.plus(weiAmount);
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(399)

[33mWarning[0m for UnhandledException in contract 'MintedTokenCappedCrowdsale':
    |   */
    |  function investWithSignedAddress(address addr, uint128 customerId, uint8 v, bytes32 r, bytes32 s) public payable {
  > |     bytes32 hash = sha256(addr);
    |     if (ecrecover(hash, v, r, s) != signerAddress) throw;
    |     if(customerId == 0) throw;  // UUIDv4 sanity check
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(413)

[33mWarning[0m for UnhandledException in contract 'MintedTokenCappedCrowdsale':
    |  function investWithSignedAddress(address addr, uint128 customerId, uint8 v, bytes32 r, bytes32 s) public payable {
    |     bytes32 hash = sha256(addr);
  > |     if (ecrecover(hash, v, r, s) != signerAddress) throw;
    |     if(customerId == 0) throw;  // UUIDv4 sanity check
    |     investInternal(addr, customerId);
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(414)

[33mWarning[0m for UnhandledException in contract 'MintedTokenCappedCrowdsale':
    |    // Finalizing is optional. We only call it if we are given a finalizing agent.
    |    if(address(finalizeAgent) != 0) {
  > |      finalizeAgent.finalizeCrowdsale();
    |    }
    |    finalized = true;
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(468)

[33mWarning[0m for UnhandledException in contract 'MintedTokenCappedCrowdsale':
    |    finalizeAgent = addr;
    |    // Don't allow setting bad agent
  > |    if(!finalizeAgent.isFinalizeAgent()) {
    |      throw;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(480)

[33mWarning[0m for UnhandledException in contract 'MintedTokenCappedCrowdsale':
    |    pricingStrategy = _pricingStrategy;
    |    // Don't allow setting bad agent
  > |    if(!pricingStrategy.isPricingStrategy()) {
    |      throw;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(537)

[33mWarning[0m for UnhandledException in contract 'MintedTokenCappedCrowdsale':
    |    weiRefunded = weiRefunded.plus(weiValue);
    |    Refund(msg.sender, weiValue);
  > |    if (!msg.sender.send(weiValue)) throw;
    |  }
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(576)

[33mWarning[0m for UnhandledException in contract 'MintedTokenCappedCrowdsale':
    |   */
    |  function isFinalizerSane() public constant returns (bool sane) {
  > |    return finalizeAgent.isSane();
    |  }
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(588)

[33mWarning[0m for UnhandledException in contract 'MintedTokenCappedCrowdsale':
    |   */
    |  function isPricingSane() public constant returns (bool sane) {
  > |    return pricingStrategy.isSane(address(this));
    |  }
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(594)

[33mWarning[0m for UnhandledException in contract 'MintedTokenCappedCrowdsale':
    |    if(finalized) return State.Finalized;
    |    else if (address(finalizeAgent) == 0) return State.Preparing;
  > |    else if (!finalizeAgent.isSane()) return State.Preparing;
    |    else if (!pricingStrategy.isSane(address(this))) return State.Preparing;
    |    else if (block.timestamp < startsAt) return State.PreFunding;
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(604)

[33mWarning[0m for UnhandledException in contract 'MintedTokenCappedCrowdsale':
    |    else if (address(finalizeAgent) == 0) return State.Preparing;
    |    else if (!finalizeAgent.isSane()) return State.Preparing;
  > |    else if (!pricingStrategy.isSane(address(this))) return State.Preparing;
    |    else if (block.timestamp < startsAt) return State.PreFunding;
    |    else if (block.timestamp <= endsAt && !isCrowdsaleFull()) return State.Funding;
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(605)

[33mWarning[0m for UnhandledException in contract 'MintedTokenCappedCrowdsale':
    |  function assignTokens(address receiver, uint tokenAmount) private {
    |    MintableToken mintableToken = MintableToken(token);
  > |    mintableToken.mint(receiver, tokenAmount);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(683)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MintedTokenCappedCrowdsale':
    |    uint weiAmount = msg.value;
    |    // Account presale sales separately, so that they do not count against pricing tranches
  > |    uint tokenAmount = pricingStrategy.calculatePrice(weiAmount, weiRaised - presaleWeiRaised, tokensSold, msg.sender, token.decimals());
    |    if(tokenAmount == 0) {
    |      // Dust transaction
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(355)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MintedTokenCappedCrowdsale':
    |    weiRaised = weiRaised.plus(weiAmount);
    |    tokensSold = tokensSold.plus(tokenAmount);
  > |    if(pricingStrategy.isPresalePurchase(receiver)) {
    |        presaleWeiRaised = presaleWeiRaised.plus(weiAmount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(370)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MintedTokenCappedCrowdsale':
    |    assignTokens(receiver, tokenAmount);
    |    // Pocket the money
  > |    if(!multisigWallet.send(weiAmount)) throw;
    |    // Tell us invest was success
    |    Invested(receiver, weiAmount, tokenAmount, customerId);
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(379)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MintedTokenCappedCrowdsale':
    |   */
    |  function preallocate(address receiver, uint fullTokens, uint weiPrice) public onlyOwner {
  > |    uint tokenAmount = fullTokens * 10**token.decimals();
    |    uint weiAmount = weiPrice * fullTokens; // This can be also 0, we give out tokens for free
    |    weiRaised = weiRaised.plus(weiAmount);
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(399)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MintedTokenCappedCrowdsale':
    |   */
    |  function investWithSignedAddress(address addr, uint128 customerId, uint8 v, bytes32 r, bytes32 s) public payable {
  > |     bytes32 hash = sha256(addr);
    |     if (ecrecover(hash, v, r, s) != signerAddress) throw;
    |     if(customerId == 0) throw;  // UUIDv4 sanity check
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(413)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MintedTokenCappedCrowdsale':
    |  function investWithSignedAddress(address addr, uint128 customerId, uint8 v, bytes32 r, bytes32 s) public payable {
    |     bytes32 hash = sha256(addr);
  > |     if (ecrecover(hash, v, r, s) != signerAddress) throw;
    |     if(customerId == 0) throw;  // UUIDv4 sanity check
    |     investInternal(addr, customerId);
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(414)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MintedTokenCappedCrowdsale':
    |    // Finalizing is optional. We only call it if we are given a finalizing agent.
    |    if(address(finalizeAgent) != 0) {
  > |      finalizeAgent.finalizeCrowdsale();
    |    }
    |    finalized = true;
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(468)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MintedTokenCappedCrowdsale':
    |    finalizeAgent = addr;
    |    // Don't allow setting bad agent
  > |    if(!finalizeAgent.isFinalizeAgent()) {
    |      throw;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(480)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MintedTokenCappedCrowdsale':
    |    pricingStrategy = _pricingStrategy;
    |    // Don't allow setting bad agent
  > |    if(!pricingStrategy.isPricingStrategy()) {
    |      throw;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(537)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MintedTokenCappedCrowdsale':
    |   */
    |  function isFinalizerSane() public constant returns (bool sane) {
  > |    return finalizeAgent.isSane();
    |  }
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(588)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MintedTokenCappedCrowdsale':
    |   */
    |  function isPricingSane() public constant returns (bool sane) {
  > |    return pricingStrategy.isSane(address(this));
    |  }
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(594)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MintedTokenCappedCrowdsale':
    |    if(finalized) return State.Finalized;
    |    else if (address(finalizeAgent) == 0) return State.Preparing;
  > |    else if (!finalizeAgent.isSane()) return State.Preparing;
    |    else if (!pricingStrategy.isSane(address(this))) return State.Preparing;
    |    else if (block.timestamp < startsAt) return State.PreFunding;
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(604)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MintedTokenCappedCrowdsale':
    |    else if (address(finalizeAgent) == 0) return State.Preparing;
    |    else if (!finalizeAgent.isSane()) return State.Preparing;
  > |    else if (!pricingStrategy.isSane(address(this))) return State.Preparing;
    |    else if (block.timestamp < startsAt) return State.PreFunding;
    |    else if (block.timestamp <= endsAt && !isCrowdsaleFull()) return State.Funding;
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(605)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MintedTokenCappedCrowdsale':
    |  function assignTokens(address receiver, uint tokenAmount) private {
    |    MintableToken mintableToken = MintableToken(token);
  > |    mintableToken.mint(receiver, tokenAmount);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(683)

[33mWarning[0m for UnrestrictedWrite in contract 'MintedTokenCappedCrowdsale':
    |    }
    |    // Update investor
  > |    investedAmountOf[receiver] = investedAmountOf[receiver].plus(weiAmount);
    |    tokenAmountOf[receiver] = tokenAmountOf[receiver].plus(tokenAmount);
    |    // Update totals
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(365)

[33mWarning[0m for UnrestrictedWrite in contract 'MintedTokenCappedCrowdsale':
    |    // Update investor
    |    investedAmountOf[receiver] = investedAmountOf[receiver].plus(weiAmount);
  > |    tokenAmountOf[receiver] = tokenAmountOf[receiver].plus(tokenAmount);
    |    // Update totals
    |    weiRaised = weiRaised.plus(weiAmount);
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(366)

[33mWarning[0m for UnrestrictedWrite in contract 'MintedTokenCappedCrowdsale':
    |      finalizeAgent.finalizeCrowdsale();
    |    }
  > |    finalized = true;
    |  }
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(470)

[33mWarning[0m for UnrestrictedWrite in contract 'MintedTokenCappedCrowdsale':
    |    uint256 weiValue = investedAmountOf[msg.sender];
    |    if (weiValue == 0) throw;
  > |    investedAmountOf[msg.sender] = 0;
    |    weiRefunded = weiRefunded.plus(weiValue);
    |    Refund(msg.sender, weiValue);
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(573)

[33mWarning[0m for UnrestrictedWrite in contract 'MintedTokenCappedCrowdsale':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'MintedTokenCappedCrowdsale':
    |  // called by the owner on emergency, triggers stopped state
    |  function halt() external onlyOwner {
  > |    halted = true;
    |  }
    |  // called by the owner on end of emergency, returns to normal state
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(134)

[33mWarning[0m for UnrestrictedWrite in contract 'MintedTokenCappedCrowdsale':
    |  // called by the owner on end of emergency, returns to normal state
    |  function unhalt() external onlyOwner onlyInEmergency {
  > |    halted = false;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(138)

[33mWarning[0m for UnrestrictedWrite in contract 'MintedTokenCappedCrowdsale':
    |    uint tokenAmount = fullTokens * 10**token.decimals();
    |    uint weiAmount = weiPrice * fullTokens; // This can be also 0, we give out tokens for free
  > |    weiRaised = weiRaised.plus(weiAmount);
    |    tokensSold = tokensSold.plus(tokenAmount);
    |    investedAmountOf[receiver] = investedAmountOf[receiver].plus(weiAmount);
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(401)

[33mWarning[0m for UnrestrictedWrite in contract 'MintedTokenCappedCrowdsale':
    |    uint weiAmount = weiPrice * fullTokens; // This can be also 0, we give out tokens for free
    |    weiRaised = weiRaised.plus(weiAmount);
  > |    tokensSold = tokensSold.plus(tokenAmount);
    |    investedAmountOf[receiver] = investedAmountOf[receiver].plus(weiAmount);
    |    tokenAmountOf[receiver] = tokenAmountOf[receiver].plus(tokenAmount);
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(402)

[33mWarning[0m for UnrestrictedWrite in contract 'MintedTokenCappedCrowdsale':
    |    weiRaised = weiRaised.plus(weiAmount);
    |    tokensSold = tokensSold.plus(tokenAmount);
  > |    investedAmountOf[receiver] = investedAmountOf[receiver].plus(weiAmount);
    |    tokenAmountOf[receiver] = tokenAmountOf[receiver].plus(tokenAmount);
    |    assignTokens(receiver, tokenAmount);
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(403)

[33mWarning[0m for UnrestrictedWrite in contract 'MintedTokenCappedCrowdsale':
    |    tokensSold = tokensSold.plus(tokenAmount);
    |    investedAmountOf[receiver] = investedAmountOf[receiver].plus(weiAmount);
  > |    tokenAmountOf[receiver] = tokenAmountOf[receiver].plus(tokenAmount);
    |    assignTokens(receiver, tokenAmount);
    |    // Tell us invest was success
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(404)

[33mWarning[0m for UnrestrictedWrite in contract 'MintedTokenCappedCrowdsale':
    |   */
    |  function setFinalizeAgent(FinalizeAgent addr) onlyOwner {
  > |    finalizeAgent = addr;
    |    // Don't allow setting bad agent
    |    if(!finalizeAgent.isFinalizeAgent()) {
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(478)

[33mWarning[0m for UnrestrictedWrite in contract 'MintedTokenCappedCrowdsale':
    |   */
    |  function setRequireCustomerId(bool value) onlyOwner {
  > |    requireCustomerId = value;
    |    InvestmentPolicyChanged(requireCustomerId, requiredSignedAddress, signerAddress);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(489)

[33mWarning[0m for UnrestrictedWrite in contract 'MintedTokenCappedCrowdsale':
    |   */
    |  function setRequireSignedAddress(bool value, address _signerAddress) onlyOwner {
  > |    requiredSignedAddress = value;
    |    signerAddress = _signerAddress;
    |    InvestmentPolicyChanged(requireCustomerId, requiredSignedAddress, signerAddress);
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(499)

[33mWarning[0m for UnrestrictedWrite in contract 'MintedTokenCappedCrowdsale':
    |  function setRequireSignedAddress(bool value, address _signerAddress) onlyOwner {
    |    requiredSignedAddress = value;
  > |    signerAddress = _signerAddress;
    |    InvestmentPolicyChanged(requireCustomerId, requiredSignedAddress, signerAddress);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(500)

[33mWarning[0m for UnrestrictedWrite in contract 'MintedTokenCappedCrowdsale':
    |   */
    |  function setEarlyParicipantWhitelist(address addr, bool status) onlyOwner {
  > |    earlyParticipantWhitelist[addr] = status;
    |    Whitelisted(addr, status);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(509)

[33mWarning[0m for UnrestrictedWrite in contract 'MintedTokenCappedCrowdsale':
    |      throw; // Don't change past
    |    }
  > |    endsAt = time;
    |    EndsAtChanged(endsAt);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(526)

[33mWarning[0m for UnrestrictedWrite in contract 'MintedTokenCappedCrowdsale':
    |   */
    |  function setPricingStrategy(PricingStrategy _pricingStrategy) onlyOwner {
  > |    pricingStrategy = _pricingStrategy;
    |    // Don't allow setting bad agent
    |    if(!pricingStrategy.isPricingStrategy()) {
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(535)

[33mWarning[0m for UnrestrictedWrite in contract 'MintedTokenCappedCrowdsale':
    |      throw;
    |    }
  > |    multisigWallet = addr;
    |  }
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(553)

[33mWarning[0m for UnrestrictedWrite in contract 'MintedTokenCappedCrowdsale':
    |  /** This is for manual testing of multisig wallet interaction */
    |  function setOwnerTestValue(uint val) onlyOwner {
  > |    ownerTestValue = val;
    |  }
    |  /** Interface marker. */
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(614)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(68)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |  /**
    |   * @dev The Ownable constructor sets the original `owner` of the contract to the sender
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(69)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
    |      owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(88)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(90)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.11;
    |
  > |contract SafeMath {
    |  function safeMul(uint a, uint b) internal returns (uint) {
    |    uint c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(3)

[33mWarning[0m for LockedEther in contract 'SafeMathLib':
    | *
    | */
  > |library SafeMathLib {
    |  function times(uint a, uint b) returns (uint) {
    |    uint c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(755)

[33mWarning[0m for MissingInputValidation in contract 'SafeMathLib':
    | */
    |library SafeMathLib {
  > |  function times(uint a, uint b) returns (uint) {
    |    uint c = a * b;
    |    assert(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(756)

[33mWarning[0m for MissingInputValidation in contract 'SafeMathLib':
    |    return c;
    |  }
  > |  function minus(uint a, uint b) returns (uint) {
    |    assert(b <= a);
    |    return a - b;
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(761)

[33mWarning[0m for MissingInputValidation in contract 'SafeMathLib':
    |    return a - b;
    |  }
  > |  function plus(uint a, uint b) returns (uint) {
    |    uint c = a + b;
    |    assert(c>=a);
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(765)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, SafeMath {
    |  /* Token supply got increased and a new owner received these tokens */
    |  event Minted(address receiver, uint amount);
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(698)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    return true;
    |  }
  > |  function transferFrom(address _from, address _to, uint _value) returns (bool success) {
    |    uint _allowance = allowed[_from][msg.sender];
    |    balances[_to] = safeAdd(balances[_to], _value);
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(715)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    return true;
    |  }
  > |  function balanceOf(address _owner) constant returns (uint balance) {
    |    return balances[_owner];
    |  }
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(723)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    return true;
    |  }
  > |  function allowance(address _owner, address _spender) constant returns (uint remaining) {
    |    return allowed[_owner][_spender];
    |  }
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(736)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |    return c;
    |  }
  > |  function safeSub(uint a, uint b) internal returns (uint) {
    |    assert(b <= a);
    |    return a - b;
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |    return a - b;
    |  }
  > |  function safeAdd(uint a, uint b) internal returns (uint) {
    |    uint c = a + b;
    |    assert(c>=a && c>=b);
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(19)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    | */
    |contract ERC20Basic {
  > |  uint256 public totalSupply;
    |  function balanceOf(address who) constant returns (uint256);
    |  function transfer(address to, uint256 value) returns (bool);
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(43)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |  mapping (address => mapping (address => uint)) allowed;
    |  /* Interface declaration */
  > |  function isToken() public constant returns (bool weAre) {
    |    return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(706)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |  }
    |  function transfer(address _to, uint _value) returns (bool success) {
  > |    balances[msg.sender] = safeSub(balances[msg.sender], _value);
    |    balances[_to] = safeAdd(balances[_to], _value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(710)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |  function transfer(address _to, uint _value) returns (bool success) {
    |    balances[msg.sender] = safeSub(balances[msg.sender], _value);
  > |    balances[_to] = safeAdd(balances[_to], _value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(711)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |  function transferFrom(address _from, address _to, uint _value) returns (bool success) {
    |    uint _allowance = allowed[_from][msg.sender];
  > |    balances[_to] = safeAdd(balances[_to], _value);
    |    balances[_from] = safeSub(balances[_from], _value);
    |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(717)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint _allowance = allowed[_from][msg.sender];
    |    balances[_to] = safeAdd(balances[_to], _value);
  > |    balances[_from] = safeSub(balances[_from], _value);
    |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(718)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_to] = safeAdd(balances[_to], _value);
    |    balances[_from] = safeSub(balances[_from], _value);
  > |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(719)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    //  https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
    |    if ((_value != 0) && (allowed[msg.sender][_spender] != 0)) throw;
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x5fe3342c5be7bece5318977c76ef7382323917b7.sol(732)


