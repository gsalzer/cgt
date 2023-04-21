Processing contract: /home/jiaming/mavs_srcs/contract@0x3d1fbe2ece2b9d90185f14792201bf1d3277a3c1.sol:AllocatedCrowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3d1fbe2ece2b9d90185f14792201bf1d3277a3c1.sol:Crowdsale
Processing contract: /home/jiaming/mavs_srcs/contract@0x3d1fbe2ece2b9d90185f14792201bf1d3277a3c1.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x3d1fbe2ece2b9d90185f14792201bf1d3277a3c1.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x3d1fbe2ece2b9d90185f14792201bf1d3277a3c1.sol:FinalizeAgent
Processing contract: /home/jiaming/mavs_srcs/contract@0x3d1fbe2ece2b9d90185f14792201bf1d3277a3c1.sol:FractionalERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x3d1fbe2ece2b9d90185f14792201bf1d3277a3c1.sol:Haltable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3d1fbe2ece2b9d90185f14792201bf1d3277a3c1.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3d1fbe2ece2b9d90185f14792201bf1d3277a3c1.sol:PricingStrategy
Processing contract: /home/jiaming/mavs_srcs/contract@0x3d1fbe2ece2b9d90185f14792201bf1d3277a3c1.sol:SafeMathLib
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'AllocatedCrowdsale':
    |
    |    // Pocket the money
  > |    if(!multisigWallet.send(weiAmount)) throw;
    |
    |    // Tell us invest was success
  at /home/jiaming/mavs_srcs/contract@0x3d1fbe2ece2b9d90185f14792201bf1d3277a3c1.sol(482)

[33mWarning[0m for DAOConstantGas in contract 'AllocatedCrowdsale':
    |    weiRefunded = weiRefunded.plus(weiValue);
    |    Refund(msg.sender, weiValue);
  > |    if (!msg.sender.send(weiValue)) throw;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x3d1fbe2ece2b9d90185f14792201bf1d3277a3c1.sol(711)

[33mWarning[0m for LockedEther in contract 'AllocatedCrowdsale':
    | *
    | */
  > |contract AllocatedCrowdsale is Crowdsale {
    |
    |  /* The party who holds the full token pool and has approve()'ed tokens for this crowdsale */
  at /home/jiaming/mavs_srcs/contract@0x3d1fbe2ece2b9d90185f14792201bf1d3277a3c1.sol(815)

[33mWarning[0m for TODAmount in contract 'AllocatedCrowdsale':
    |
    |    // Pocket the money
  > |    if(!multisigWallet.send(weiAmount)) throw;
    |
    |    // Tell us invest was success
  at /home/jiaming/mavs_srcs/contract@0x3d1fbe2ece2b9d90185f14792201bf1d3277a3c1.sol(482)

[31mViolation[0m for TODReceiver in contract 'AllocatedCrowdsale':
    |
    |    // Pocket the money
  > |    if(!multisigWallet.send(weiAmount)) throw;
    |
    |    // Tell us invest was success
  at /home/jiaming/mavs_srcs/contract@0x3d1fbe2ece2b9d90185f14792201bf1d3277a3c1.sol(482)

[33mWarning[0m for TODReceiver in contract 'AllocatedCrowdsale':
    |    weiRefunded = weiRefunded.plus(weiValue);
    |    Refund(msg.sender, weiValue);
  > |    if (!msg.sender.send(weiValue)) throw;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x3d1fbe2ece2b9d90185f14792201bf1d3277a3c1.sol(711)

[33mWarning[0m for UnhandledException in contract 'AllocatedCrowdsale':
    |
    |    // Account presale sales separately, so that they do not count against pricing tranches
  > |    uint tokenAmount = pricingStrategy.calculatePrice(weiAmount, weiRaised - presaleWeiRaised, tokensSold, msg.sender, token.decimals());
    |
    |    if(tokenAmount == 0) {
  at /home/jiaming/mavs_srcs/contract@0x3d1fbe2ece2b9d90185f14792201bf1d3277a3c1.sol(450)

[33mWarning[0m for UnhandledException in contract 'AllocatedCrowdsale':
    |    tokensSold = tokensSold.plus(tokenAmount);
    |
  > |    if(pricingStrategy.isPresalePurchase(receiver)) {
    |        presaleWeiRaised = presaleWeiRaised.plus(weiAmount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3d1fbe2ece2b9d90185f14792201bf1d3277a3c1.sol(470)

[33mWarning[0m for UnhandledException in contract 'AllocatedCrowdsale':
    |
    |    // Pocket the money
  > |    if(!multisigWallet.send(weiAmount)) throw;
    |
    |    // Tell us invest was success
  at /home/jiaming/mavs_srcs/contract@0x3d1fbe2ece2b9d90185f14792201bf1d3277a3c1.sol(482)

[33mWarning[0m for UnhandledException in contract 'AllocatedCrowdsale':
    |  function preallocate(address receiver, uint fullTokens, uint weiPrice) public onlyOwner {
    |
  > |    uint tokenAmount = fullTokens * 10**token.decimals();
    |    uint weiAmount = weiPrice * fullTokens; // This can be also 0, we give out tokens for free
    |
  at /home/jiaming/mavs_srcs/contract@0x3d1fbe2ece2b9d90185f14792201bf1d3277a3c1.sol(505)

[33mWarning[0m for UnhandledException in contract 'AllocatedCrowdsale':
    |   */
    |  function investWithSignedAddress(address addr, uint128 customerId, uint8 v, bytes32 r, bytes32 s) public payable {
  > |     bytes32 hash = sha256(addr);
    |     if (ecrecover(hash, v, r, s) != signerAddress) throw;
    |     if(customerId == 0) throw;  // UUIDv4 sanity check
  at /home/jiaming/mavs_srcs/contract@0x3d1fbe2ece2b9d90185f14792201bf1d3277a3c1.sol(524)

[33mWarning[0m for UnhandledException in contract 'AllocatedCrowdsale':
    |  function investWithSignedAddress(address addr, uint128 customerId, uint8 v, bytes32 r, bytes32 s) public payable {
    |     bytes32 hash = sha256(addr);
  > |     if (ecrecover(hash, v, r, s) != signerAddress) throw;
    |     if(customerId == 0) throw;  // UUIDv4 sanity check
    |     investInternal(addr, customerId);
  at /home/jiaming/mavs_srcs/contract@0x3d1fbe2ece2b9d90185f14792201bf1d3277a3c1.sol(525)

[33mWarning[0m for UnhandledException in contract 'AllocatedCrowdsale':
    |    // Finalizing is optional. We only call it if we are given a finalizing agent.
    |    if(address(finalizeAgent) != 0) {
  > |      finalizeAgent.finalizeCrowdsale();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x3d1fbe2ece2b9d90185f14792201bf1d3277a3c1.sol(587)

[33mWarning[0m for UnhandledException in contract 'AllocatedCrowdsale':
    |
    |    // Don't allow setting bad agent
  > |    if(!finalizeAgent.isFinalizeAgent()) {
    |      throw;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3d1fbe2ece2b9d90185f14792201bf1d3277a3c1.sol(602)

[33mWarning[0m for UnhandledException in contract 'AllocatedCrowdsale':
    |
    |    // Don't allow setting bad agent
  > |    if(!pricingStrategy.isPricingStrategy()) {
    |      throw;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3d1fbe2ece2b9d90185f14792201bf1d3277a3c1.sol(667)

[33mWarning[0m for UnhandledException in contract 'AllocatedCrowdsale':
    |    weiRefunded = weiRefunded.plus(weiValue);
    |    Refund(msg.sender, weiValue);
  > |    if (!msg.sender.send(weiValue)) throw;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x3d1fbe2ece2b9d90185f14792201bf1d3277a3c1.sol(711)

[33mWarning[0m for UnhandledException in contract 'AllocatedCrowdsale':
    |   */
    |  function isFinalizerSane() public constant returns (bool sane) {
  > |    return finalizeAgent.isSane();
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x3d1fbe2ece2b9d90185f14792201bf1d3277a3c1.sol(725)

[33mWarning[0m for UnhandledException in contract 'AllocatedCrowdsale':
    |   */
    |  function isPricingSane() public constant returns (bool sane) {
  > |    return pricingStrategy.isSane(address(this));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x3d1fbe2ece2b9d90185f14792201bf1d3277a3c1.sol(732)

[33mWarning[0m for UnhandledException in contract 'AllocatedCrowdsale':
    |    if(finalized) return State.Finalized;
    |    else if (address(finalizeAgent) == 0) return State.Preparing;
  > |    else if (!finalizeAgent.isSane()) return State.Preparing;
    |    else if (!pricingStrategy.isSane(address(this))) return State.Preparing;
    |    else if (block.timestamp < startsAt) return State.PreFunding;
  at /home/jiaming/mavs_srcs/contract@0x3d1fbe2ece2b9d90185f14792201bf1d3277a3c1.sol(743)

[33mWarning[0m for UnhandledException in contract 'AllocatedCrowdsale':
    |    else if (address(finalizeAgent) == 0) return State.Preparing;
    |    else if (!finalizeAgent.isSane()) return State.Preparing;
  > |    else if (!pricingStrategy.isSane(address(this))) return State.Preparing;
    |    else if (block.timestamp < startsAt) return State.PreFunding;
    |    else if (block.timestamp <= endsAt && !isCrowdsaleFull()) return State.Funding;
  at /home/jiaming/mavs_srcs/contract@0x3d1fbe2ece2b9d90185f14792201bf1d3277a3c1.sol(744)

[33mWarning[0m for UnhandledException in contract 'AllocatedCrowdsale':
    |   */
    |  function getTokensLeft() public constant returns (uint) {
  > |    return token.allowance(owner, this);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x3d1fbe2ece2b9d90185f14792201bf1d3277a3c1.sol(846)

[33mWarning[0m for UnhandledException in contract 'AllocatedCrowdsale':
    |   */
    |  function assignTokens(address receiver, uint tokenAmount) private {
  > |    if(!token.transferFrom(beneficiary, receiver, tokenAmount)) throw;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x3d1fbe2ece2b9d90185f14792201bf1d3277a3c1.sol(855)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AllocatedCrowdsale':
    |
    |    // Account presale sales separately, so that they do not count against pricing tranches
  > |    uint tokenAmount = pricingStrategy.calculatePrice(weiAmount, weiRaised - presaleWeiRaised, tokensSold, msg.sender, token.decimals());
    |
    |    if(tokenAmount == 0) {
  at /home/jiaming/mavs_srcs/contract@0x3d1fbe2ece2b9d90185f14792201bf1d3277a3c1.sol(450)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AllocatedCrowdsale':
    |    tokensSold = tokensSold.plus(tokenAmount);
    |
  > |    if(pricingStrategy.isPresalePurchase(receiver)) {
    |        presaleWeiRaised = presaleWeiRaised.plus(weiAmount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3d1fbe2ece2b9d90185f14792201bf1d3277a3c1.sol(470)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AllocatedCrowdsale':
    |
    |    // Pocket the money
  > |    if(!multisigWallet.send(weiAmount)) throw;
    |
    |    // Tell us invest was success
  at /home/jiaming/mavs_srcs/contract@0x3d1fbe2ece2b9d90185f14792201bf1d3277a3c1.sol(482)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AllocatedCrowdsale':
    |  function preallocate(address receiver, uint fullTokens, uint weiPrice) public onlyOwner {
    |
  > |    uint tokenAmount = fullTokens * 10**token.decimals();
    |    uint weiAmount = weiPrice * fullTokens; // This can be also 0, we give out tokens for free
    |
  at /home/jiaming/mavs_srcs/contract@0x3d1fbe2ece2b9d90185f14792201bf1d3277a3c1.sol(505)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AllocatedCrowdsale':
    |   */
    |  function investWithSignedAddress(address addr, uint128 customerId, uint8 v, bytes32 r, bytes32 s) public payable {
  > |     bytes32 hash = sha256(addr);
    |     if (ecrecover(hash, v, r, s) != signerAddress) throw;
    |     if(customerId == 0) throw;  // UUIDv4 sanity check
  at /home/jiaming/mavs_srcs/contract@0x3d1fbe2ece2b9d90185f14792201bf1d3277a3c1.sol(524)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AllocatedCrowdsale':
    |  function investWithSignedAddress(address addr, uint128 customerId, uint8 v, bytes32 r, bytes32 s) public payable {
    |     bytes32 hash = sha256(addr);
  > |     if (ecrecover(hash, v, r, s) != signerAddress) throw;
    |     if(customerId == 0) throw;  // UUIDv4 sanity check
    |     investInternal(addr, customerId);
  at /home/jiaming/mavs_srcs/contract@0x3d1fbe2ece2b9d90185f14792201bf1d3277a3c1.sol(525)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AllocatedCrowdsale':
    |    // Finalizing is optional. We only call it if we are given a finalizing agent.
    |    if(address(finalizeAgent) != 0) {
  > |      finalizeAgent.finalizeCrowdsale();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x3d1fbe2ece2b9d90185f14792201bf1d3277a3c1.sol(587)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AllocatedCrowdsale':
    |
    |    // Don't allow setting bad agent
  > |    if(!finalizeAgent.isFinalizeAgent()) {
    |      throw;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3d1fbe2ece2b9d90185f14792201bf1d3277a3c1.sol(602)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AllocatedCrowdsale':
    |
    |    // Don't allow setting bad agent
  > |    if(!pricingStrategy.isPricingStrategy()) {
    |      throw;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3d1fbe2ece2b9d90185f14792201bf1d3277a3c1.sol(667)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AllocatedCrowdsale':
    |   */
    |  function isFinalizerSane() public constant returns (bool sane) {
  > |    return finalizeAgent.isSane();
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x3d1fbe2ece2b9d90185f14792201bf1d3277a3c1.sol(725)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AllocatedCrowdsale':
    |   */
    |  function isPricingSane() public constant returns (bool sane) {
  > |    return pricingStrategy.isSane(address(this));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x3d1fbe2ece2b9d90185f14792201bf1d3277a3c1.sol(732)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AllocatedCrowdsale':
    |    if(finalized) return State.Finalized;
    |    else if (address(finalizeAgent) == 0) return State.Preparing;
  > |    else if (!finalizeAgent.isSane()) return State.Preparing;
    |    else if (!pricingStrategy.isSane(address(this))) return State.Preparing;
    |    else if (block.timestamp < startsAt) return State.PreFunding;
  at /home/jiaming/mavs_srcs/contract@0x3d1fbe2ece2b9d90185f14792201bf1d3277a3c1.sol(743)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AllocatedCrowdsale':
    |    else if (address(finalizeAgent) == 0) return State.Preparing;
    |    else if (!finalizeAgent.isSane()) return State.Preparing;
  > |    else if (!pricingStrategy.isSane(address(this))) return State.Preparing;
    |    else if (block.timestamp < startsAt) return State.PreFunding;
    |    else if (block.timestamp <= endsAt && !isCrowdsaleFull()) return State.Funding;
  at /home/jiaming/mavs_srcs/contract@0x3d1fbe2ece2b9d90185f14792201bf1d3277a3c1.sol(744)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AllocatedCrowdsale':
    |   */
    |  function getTokensLeft() public constant returns (uint) {
  > |    return token.allowance(owner, this);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x3d1fbe2ece2b9d90185f14792201bf1d3277a3c1.sol(846)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AllocatedCrowdsale':
    |   */
    |  function assignTokens(address receiver, uint tokenAmount) private {
  > |    if(!token.transferFrom(beneficiary, receiver, tokenAmount)) throw;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x3d1fbe2ece2b9d90185f14792201bf1d3277a3c1.sol(855)

[33mWarning[0m for UnrestrictedWrite in contract 'AllocatedCrowdsale':
    |
    |    // Update investor
  > |    investedAmountOf[receiver] = investedAmountOf[receiver].plus(weiAmount);
    |    tokenAmountOf[receiver] = tokenAmountOf[receiver].plus(tokenAmount);
    |
  at /home/jiaming/mavs_srcs/contract@0x3d1fbe2ece2b9d90185f14792201bf1d3277a3c1.sol(463)

[33mWarning[0m for UnrestrictedWrite in contract 'AllocatedCrowdsale':
    |    // Update investor
    |    investedAmountOf[receiver] = investedAmountOf[receiver].plus(weiAmount);
  > |    tokenAmountOf[receiver] = tokenAmountOf[receiver].plus(tokenAmount);
    |
    |    // Update totals
  at /home/jiaming/mavs_srcs/contract@0x3d1fbe2ece2b9d90185f14792201bf1d3277a3c1.sol(464)

[33mWarning[0m for UnrestrictedWrite in contract 'AllocatedCrowdsale':
    |    }
    |
  > |    finalized = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x3d1fbe2ece2b9d90185f14792201bf1d3277a3c1.sol(590)

[33mWarning[0m for UnrestrictedWrite in contract 'AllocatedCrowdsale':
    |    uint256 weiValue = investedAmountOf[msg.sender];
    |    if (weiValue == 0) throw;
  > |    investedAmountOf[msg.sender] = 0;
    |    weiRefunded = weiRefunded.plus(weiValue);
    |    Refund(msg.sender, weiValue);
  at /home/jiaming/mavs_srcs/contract@0x3d1fbe2ece2b9d90185f14792201bf1d3277a3c1.sol(708)

[33mWarning[0m for UnrestrictedWrite in contract 'AllocatedCrowdsale':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));      
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x3d1fbe2ece2b9d90185f14792201bf1d3277a3c1.sol(95)

[33mWarning[0m for UnrestrictedWrite in contract 'AllocatedCrowdsale':
    |  // called by the owner on emergency, triggers stopped state
    |  function halt() external onlyOwner {
  > |    halted = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x3d1fbe2ece2b9d90185f14792201bf1d3277a3c1.sol(130)

[33mWarning[0m for UnrestrictedWrite in contract 'AllocatedCrowdsale':
    |  // called by the owner on end of emergency, returns to normal state
    |  function unhalt() external onlyOwner onlyInEmergency {
  > |    halted = false;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x3d1fbe2ece2b9d90185f14792201bf1d3277a3c1.sol(135)

[33mWarning[0m for UnrestrictedWrite in contract 'AllocatedCrowdsale':
    |    uint weiAmount = weiPrice * fullTokens; // This can be also 0, we give out tokens for free
    |
  > |    weiRaised = weiRaised.plus(weiAmount);
    |    tokensSold = tokensSold.plus(tokenAmount);
    |
  at /home/jiaming/mavs_srcs/contract@0x3d1fbe2ece2b9d90185f14792201bf1d3277a3c1.sol(508)

[33mWarning[0m for UnrestrictedWrite in contract 'AllocatedCrowdsale':
    |
    |    weiRaised = weiRaised.plus(weiAmount);
  > |    tokensSold = tokensSold.plus(tokenAmount);
    |
    |    investedAmountOf[receiver] = investedAmountOf[receiver].plus(weiAmount);
  at /home/jiaming/mavs_srcs/contract@0x3d1fbe2ece2b9d90185f14792201bf1d3277a3c1.sol(509)

[33mWarning[0m for UnrestrictedWrite in contract 'AllocatedCrowdsale':
    |    tokensSold = tokensSold.plus(tokenAmount);
    |
  > |    investedAmountOf[receiver] = investedAmountOf[receiver].plus(weiAmount);
    |    tokenAmountOf[receiver] = tokenAmountOf[receiver].plus(tokenAmount);
    |
  at /home/jiaming/mavs_srcs/contract@0x3d1fbe2ece2b9d90185f14792201bf1d3277a3c1.sol(511)

[33mWarning[0m for UnrestrictedWrite in contract 'AllocatedCrowdsale':
    |
    |    investedAmountOf[receiver] = investedAmountOf[receiver].plus(weiAmount);
  > |    tokenAmountOf[receiver] = tokenAmountOf[receiver].plus(tokenAmount);
    |
    |    assignTokens(receiver, tokenAmount);
  at /home/jiaming/mavs_srcs/contract@0x3d1fbe2ece2b9d90185f14792201bf1d3277a3c1.sol(512)

[33mWarning[0m for UnrestrictedWrite in contract 'AllocatedCrowdsale':
    |   */
    |  function setFinalizeAgent(FinalizeAgent addr) onlyOwner {
  > |    finalizeAgent = addr;
    |
    |    // Don't allow setting bad agent
  at /home/jiaming/mavs_srcs/contract@0x3d1fbe2ece2b9d90185f14792201bf1d3277a3c1.sol(599)

[33mWarning[0m for UnrestrictedWrite in contract 'AllocatedCrowdsale':
    |   */
    |  function setRequireCustomerId(bool value) onlyOwner {
  > |    requireCustomerId = value;
    |    InvestmentPolicyChanged(requireCustomerId, requiredSignedAddress, signerAddress);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x3d1fbe2ece2b9d90185f14792201bf1d3277a3c1.sol(612)

[33mWarning[0m for UnrestrictedWrite in contract 'AllocatedCrowdsale':
    |   */
    |  function setRequireSignedAddress(bool value, address _signerAddress) onlyOwner {
  > |    requiredSignedAddress = value;
    |    signerAddress = _signerAddress;
    |    InvestmentPolicyChanged(requireCustomerId, requiredSignedAddress, signerAddress);
  at /home/jiaming/mavs_srcs/contract@0x3d1fbe2ece2b9d90185f14792201bf1d3277a3c1.sol(623)

[33mWarning[0m for UnrestrictedWrite in contract 'AllocatedCrowdsale':
    |  function setRequireSignedAddress(bool value, address _signerAddress) onlyOwner {
    |    requiredSignedAddress = value;
  > |    signerAddress = _signerAddress;
    |    InvestmentPolicyChanged(requireCustomerId, requiredSignedAddress, signerAddress);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x3d1fbe2ece2b9d90185f14792201bf1d3277a3c1.sol(624)

[33mWarning[0m for UnrestrictedWrite in contract 'AllocatedCrowdsale':
    |   */
    |  function setEarlyParicipantWhitelist(address addr, bool status) onlyOwner {
  > |    earlyParticipantWhitelist[addr] = status;
    |    Whitelisted(addr, status);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x3d1fbe2ece2b9d90185f14792201bf1d3277a3c1.sol(634)

[33mWarning[0m for UnrestrictedWrite in contract 'AllocatedCrowdsale':
    |    }
    |
  > |    endsAt = time;
    |    EndsAtChanged(endsAt);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x3d1fbe2ece2b9d90185f14792201bf1d3277a3c1.sol(654)

[33mWarning[0m for UnrestrictedWrite in contract 'AllocatedCrowdsale':
    |   */
    |  function setPricingStrategy(PricingStrategy _pricingStrategy) onlyOwner {
  > |    pricingStrategy = _pricingStrategy;
    |
    |    // Don't allow setting bad agent
  at /home/jiaming/mavs_srcs/contract@0x3d1fbe2ece2b9d90185f14792201bf1d3277a3c1.sol(664)

[33mWarning[0m for UnrestrictedWrite in contract 'AllocatedCrowdsale':
    |    }
    |
  > |    multisigWallet = addr;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x3d1fbe2ece2b9d90185f14792201bf1d3277a3c1.sol(686)

[33mWarning[0m for UnrestrictedWrite in contract 'AllocatedCrowdsale':
    |  /** This is for manual testing of multisig wallet interaction */
    |  function setOwnerTestValue(uint val) onlyOwner {
  > |    ownerTestValue = val;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x3d1fbe2ece2b9d90185f14792201bf1d3277a3c1.sol(754)

[33mWarning[0m for LockedEther in contract 'Haltable':
    | * Originally envisioned in FirstBlood ICO contract.
    | */
  > |contract Haltable is Ownable {
    |  bool public halted;
    |
  at /home/jiaming/mavs_srcs/contract@0x3d1fbe2ece2b9d90185f14792201bf1d3277a3c1.sol(110)

[33mWarning[0m for MissingInputValidation in contract 'Haltable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x3d1fbe2ece2b9d90185f14792201bf1d3277a3c1.sol(68)

[33mWarning[0m for MissingInputValidation in contract 'Haltable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));      
    |    owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x3d1fbe2ece2b9d90185f14792201bf1d3277a3c1.sol(93)

[33mWarning[0m for MissingInputValidation in contract 'Haltable':
    | */
    |contract Haltable is Ownable {
  > |  bool public halted;
    |
    |  modifier stopInEmergency {
  at /home/jiaming/mavs_srcs/contract@0x3d1fbe2ece2b9d90185f14792201bf1d3277a3c1.sol(111)

[33mWarning[0m for MissingInputValidation in contract 'Haltable':
    |
    |  // called by the owner on emergency, triggers stopped state
  > |  function halt() external onlyOwner {
    |    halted = true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x3d1fbe2ece2b9d90185f14792201bf1d3277a3c1.sol(129)

[33mWarning[0m for MissingInputValidation in contract 'Haltable':
    |
    |  // called by the owner on end of emergency, returns to normal state
  > |  function unhalt() external onlyOwner onlyInEmergency {
    |    halted = false;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x3d1fbe2ece2b9d90185f14792201bf1d3277a3c1.sol(134)

[33mWarning[0m for UnrestrictedWrite in contract 'Haltable':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));      
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x3d1fbe2ece2b9d90185f14792201bf1d3277a3c1.sol(95)

[33mWarning[0m for UnrestrictedWrite in contract 'Haltable':
    |  // called by the owner on emergency, triggers stopped state
    |  function halt() external onlyOwner {
  > |    halted = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x3d1fbe2ece2b9d90185f14792201bf1d3277a3c1.sol(130)

[33mWarning[0m for UnrestrictedWrite in contract 'Haltable':
    |  // called by the owner on end of emergency, returns to normal state
    |  function unhalt() external onlyOwner onlyInEmergency {
  > |    halted = false;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x3d1fbe2ece2b9d90185f14792201bf1d3277a3c1.sol(135)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x3d1fbe2ece2b9d90185f14792201bf1d3277a3c1.sol(67)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x3d1fbe2ece2b9d90185f14792201bf1d3277a3c1.sol(68)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));      
    |    owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x3d1fbe2ece2b9d90185f14792201bf1d3277a3c1.sol(93)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));      
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x3d1fbe2ece2b9d90185f14792201bf1d3277a3c1.sol(95)

[33mWarning[0m for LockedEther in contract 'SafeMathLib':
    | *
    | */
  > |library SafeMathLib {
    |
    |  function times(uint a, uint b) returns (uint) {
  at /home/jiaming/mavs_srcs/contract@0x3d1fbe2ece2b9d90185f14792201bf1d3277a3c1.sol(32)

[33mWarning[0m for MissingInputValidation in contract 'SafeMathLib':
    |library SafeMathLib {
    |
  > |  function times(uint a, uint b) returns (uint) {
    |    uint c = a * b;
    |    assert(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0x3d1fbe2ece2b9d90185f14792201bf1d3277a3c1.sol(34)

[33mWarning[0m for MissingInputValidation in contract 'SafeMathLib':
    |  }
    |
  > |  function minus(uint a, uint b) returns (uint) {
    |    assert(b <= a);
    |    return a - b;
  at /home/jiaming/mavs_srcs/contract@0x3d1fbe2ece2b9d90185f14792201bf1d3277a3c1.sol(40)

[33mWarning[0m for MissingInputValidation in contract 'SafeMathLib':
    |  }
    |
  > |  function plus(uint a, uint b) returns (uint) {
    |    uint c = a + b;
    |    assert(c>=a);
  at /home/jiaming/mavs_srcs/contract@0x3d1fbe2ece2b9d90185f14792201bf1d3277a3c1.sol(45)


