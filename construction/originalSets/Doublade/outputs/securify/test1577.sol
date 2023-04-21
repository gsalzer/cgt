Processing contract: /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol:Crowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol:FutouristCrowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol:IERC20Token
Processing contract: /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol:IToken
Processing contract: /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol:ReentrnacyHandlingContract
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for DAOConstantGas in contract 'Crowdsale':
    |  function refundTransaction(bool _stateChanged) internal{
    |    if (_stateChanged){
  > |      msg.sender.transfer(msg.value);
    |    }else{
    |      revert();
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(206)

[31mViolation[0m for DAOConstantGas in contract 'Crowdsale':
    |    require(pendingEthWithdrawal > 0);
    |
  > |    multisigAddress.transfer(pendingEthWithdrawal);
    |    pendingEthWithdrawal = 0;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(312)

[33mWarning[0m for DAOConstantGas in contract 'Crowdsale':
    |    uint ethContributed = contributorList[msg.sender].contributionAmount; // Get contributors contribution
    |    hasClaimedEthWhenFail[msg.sender] = true;                             // Set that he has claimed
  > |    if (!msg.sender.send(ethContributed)){                                // Refund eth
    |      ErrorSendingETH(msg.sender, ethContributed);                        // If there is an issue raise event for manual recovery
    |    }
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(326)

[33mWarning[0m for DAOConstantGas in contract 'Crowdsale':
    |    require(block.timestamp > crowdsaleEndedTime);                 // Check if crowdsale is over
    |    require(contributorIndexes[nextContributorToClaim] == 0x0);  // Check if all the users were refunded
  > |    multisigAddress.transfer(this.balance);                      // Withdraw to multisig
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(359)

[33mWarning[0m for LockedEther in contract 'Crowdsale':
    |
    |
  > |contract Crowdsale is ReentrnacyHandlingContract, Owned{
    |
    |  struct ContributorData{
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(79)

[31mViolation[0m for TODAmount in contract 'Crowdsale':
    |    require(pendingEthWithdrawal > 0);
    |
  > |    multisigAddress.transfer(pendingEthWithdrawal);
    |    pendingEthWithdrawal = 0;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(312)

[31mViolation[0m for TODAmount in contract 'Crowdsale':
    |    require(block.timestamp > crowdsaleEndedTime);                 // Check if crowdsale is over
    |    require(contributorIndexes[nextContributorToClaim] == 0x0);  // Check if all the users were refunded
  > |    multisigAddress.transfer(this.balance);                      // Withdraw to multisig
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(359)

[31mViolation[0m for TODReceiver in contract 'Crowdsale':
    |    require(pendingEthWithdrawal > 0);
    |
  > |    multisigAddress.transfer(pendingEthWithdrawal);
    |    pendingEthWithdrawal = 0;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(312)

[31mViolation[0m for TODReceiver in contract 'Crowdsale':
    |    require(block.timestamp > crowdsaleEndedTime);                 // Check if crowdsale is over
    |    require(contributorIndexes[nextContributorToClaim] == 0x0);  // Check if all the users were refunded
  > |    multisigAddress.transfer(this.balance);                      // Withdraw to multisig
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(359)

[33mWarning[0m for TODReceiver in contract 'Crowdsale':
    |  function refundTransaction(bool _stateChanged) internal{
    |    if (_stateChanged){
  > |      msg.sender.transfer(msg.value);
    |    }else{
    |      revert();
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(206)

[33mWarning[0m for TODReceiver in contract 'Crowdsale':
    |      contributorList[_contributor].tokensIssued += tokenAmount;                  // log token issuance
    |    }
  > |    if (returnAmount != 0) _contributor.transfer(returnAmount);                 // Return overflow of ether
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(261)

[33mWarning[0m for TODReceiver in contract 'Crowdsale':
    |    uint ethContributed = contributorList[msg.sender].contributionAmount; // Get contributors contribution
    |    hasClaimedEthWhenFail[msg.sender] = true;                             // Set that he has claimed
  > |    if (!msg.sender.send(ethContributed)){                                // Refund eth
    |      ErrorSendingETH(msg.sender, ethContributed);                        // If there is an issue raise event for manual recovery
    |    }
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(326)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |  function refundTransaction(bool _stateChanged) internal{
    |    if (_stateChanged){
  > |      msg.sender.transfer(msg.value);
    |    }else{
    |      revert();
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(206)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |    uint tokenAmount = contributionAmount * ethToTokenConversion;               // Calculate how much tokens must contributor get
    |    if (tokenAmount > 0){
  > |      token.mintTokens(_contributor, tokenAmount);                                // Issue new tokens
    |      contributorList[_contributor].tokensIssued += tokenAmount;                  // log token issuance
    |    }
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(258)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |      contributorList[_contributor].tokensIssued += tokenAmount;                  // log token issuance
    |    }
  > |    if (returnAmount != 0) _contributor.transfer(returnAmount);                 // Return overflow of ether
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(261)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |  //
    |  function salvageTokensFromContract(address _tokenAddress, address _to, uint _amount) public onlyOwner{
  > |    IERC20Token(_tokenAddress).transfer(_to, _amount);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(287)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |    require(pendingEthWithdrawal > 0);
    |
  > |    multisigAddress.transfer(pendingEthWithdrawal);
    |    pendingEthWithdrawal = 0;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(312)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |    uint ethContributed = contributorList[msg.sender].contributionAmount; // Get contributors contribution
    |    hasClaimedEthWhenFail[msg.sender] = true;                             // Set that he has claimed
  > |    if (!msg.sender.send(ethContributed)){                                // Refund eth
    |      ErrorSendingETH(msg.sender, ethContributed);                        // If there is an issue raise event for manual recovery
    |    }
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(326)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |        contribution = contributorList[currentParticipantAddress].contributionAmount; // Get contribution of participant
    |        hasClaimedEthWhenFail[currentParticipantAddress] = true;                      // Set that he has claimed
  > |        if (!currentParticipantAddress.send(contribution)){                           // Refund eth
    |          ErrorSendingETH(currentParticipantAddress, contribution);                   // If there is an issue raise event for manual recovery
    |        }
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(344)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |    require(block.timestamp > crowdsaleEndedTime);                 // Check if crowdsale is over
    |    require(contributorIndexes[nextContributorToClaim] == 0x0);  // Check if all the users were refunded
  > |    multisigAddress.transfer(this.balance);                      // Withdraw to multisig
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(359)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |    require(!ownerHasClaimedTokens);                              // Check if owner has already claimed tokens
    |
  > |    uint devReward = maxTokenSupply - token.totalSupply();
    |    if (!presaleBonusTokensClaimed) devReward -= presaleBonusTokens; // If presaleBonusToken has been claimed its ok if not set aside presaleBonusTokens
    |    token.mintTokens(_to, devReward);                             // Issue Teams tokens
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(383)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |    uint devReward = maxTokenSupply - token.totalSupply();
    |    if (!presaleBonusTokensClaimed) devReward -= presaleBonusTokens; // If presaleBonusToken has been claimed its ok if not set aside presaleBonusTokens
  > |    token.mintTokens(_to, devReward);                             // Issue Teams tokens
    |    ownerHasClaimedTokens = true;                                 // Block further mints from this method
    |  }
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(385)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |    require(!presaleBonusTokensClaimed);                // Check if tokens were already claimed
    |
  > |    token.mintTokens(presaleBonusAddressColdStorage, presaleBonusTokens);             // Issue presale  tokens
    |    presaleBonusTokensClaimed = true;                   // Block further mints from this method
    |  }
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(397)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |    uint tokenAmount = contributionAmount * ethToTokenConversion;               // Calculate how much tokens must contributor get
    |    if (tokenAmount > 0){
  > |      token.mintTokens(_contributor, tokenAmount);                                // Issue new tokens
    |      contributorList[_contributor].tokensIssued += tokenAmount;                  // log token issuance
    |    }
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(258)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |  //
    |  function salvageTokensFromContract(address _tokenAddress, address _to, uint _amount) public onlyOwner{
  > |    IERC20Token(_tokenAddress).transfer(_to, _amount);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(287)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |    require(pendingEthWithdrawal > 0);
    |
  > |    multisigAddress.transfer(pendingEthWithdrawal);
    |    pendingEthWithdrawal = 0;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(312)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |    require(block.timestamp > crowdsaleEndedTime);                 // Check if crowdsale is over
    |    require(contributorIndexes[nextContributorToClaim] == 0x0);  // Check if all the users were refunded
  > |    multisigAddress.transfer(this.balance);                      // Withdraw to multisig
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(359)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |    require(!ownerHasClaimedTokens);                              // Check if owner has already claimed tokens
    |
  > |    uint devReward = maxTokenSupply - token.totalSupply();
    |    if (!presaleBonusTokensClaimed) devReward -= presaleBonusTokens; // If presaleBonusToken has been claimed its ok if not set aside presaleBonusTokens
    |    token.mintTokens(_to, devReward);                             // Issue Teams tokens
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(383)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |    uint devReward = maxTokenSupply - token.totalSupply();
    |    if (!presaleBonusTokensClaimed) devReward -= presaleBonusTokens; // If presaleBonusToken has been claimed its ok if not set aside presaleBonusTokens
  > |    token.mintTokens(_to, devReward);                             // Issue Teams tokens
    |    ownerHasClaimedTokens = true;                                 // Block further mints from this method
    |  }
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(385)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |    require(!presaleBonusTokensClaimed);                // Check if tokens were already claimed
    |
  > |    token.mintTokens(presaleBonusAddressColdStorage, presaleBonusTokens);             // Issue presale  tokens
    |    presaleBonusTokensClaimed = true;                   // Block further mints from this method
    |  }
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(397)

[31mViolation[0m for UnrestrictedWrite in contract 'Crowdsale':
    |    modifier noReentrancy() {
    |        require(!locked);
  > |        locked = true;
    |        _;
    |        locked = false;
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(27)

[31mViolation[0m for UnrestrictedWrite in contract 'Crowdsale':
    |  function checkCrowdsaleState() internal returns (bool){
    |    if (ethRaised == maxCap && crowdsaleState != state.crowdsaleEnded){                         // Check if max cap is reached
  > |      crowdsaleState = state.crowdsaleEnded;
    |      MaxCapReached(block.timestamp);                                                              // Close the crowdsale
    |      CrowdsaleEnded(block.timestamp);                                                             // Raise event
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(167)

[31mViolation[0m for UnrestrictedWrite in contract 'Crowdsale':
    |    if (block.timestamp > presaleStartTime && block.timestamp <= presaleUnlimitedStartTime){  // Check if we are in presale phase
    |      if (crowdsaleState != state.priorityPass){                                          // Check if state needs to be changed
  > |        crowdsaleState = state.priorityPass;                                              // Set new state
    |        PresaleStarted(block.timestamp);                                                     // Raise event
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(175)

[31mViolation[0m for UnrestrictedWrite in contract 'Crowdsale':
    |    }else if(block.timestamp > presaleUnlimitedStartTime && block.timestamp <= crowdsaleStartTime){ // Check if we are in presale unlimited phase
    |      if (crowdsaleState != state.openedPriorityPass){                                          // Check if state needs to be changed
  > |        crowdsaleState = state.openedPriorityPass;                                              // Set new state
    |        PresaleUnlimitedStarted(block.timestamp);                                                  // Raise event
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(181)

[31mViolation[0m for UnrestrictedWrite in contract 'Crowdsale':
    |    }else if(block.timestamp > crowdsaleStartTime && block.timestamp <= crowdsaleEndedTime){        // Check if we are in crowdsale state
    |      if (crowdsaleState != state.crowdsale){                                                   // Check if state needs to be changed
  > |        crowdsaleState = state.crowdsale;                                                       // Set new state
    |        CrowdsaleStarted(block.timestamp);                                                         // Raise event
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(187)

[31mViolation[0m for UnrestrictedWrite in contract 'Crowdsale':
    |    }else{
    |      if (crowdsaleState != state.crowdsaleEnded && block.timestamp > crowdsaleEndedTime){        // Check if crowdsale is over
  > |        crowdsaleState = state.crowdsaleEnded;                                                  // Set new state
    |        CrowdsaleEnded(block.timestamp);                                                           // Raise event
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(193)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |    function transferOwnership(address _newOwner) public onlyOwner {
    |        require(_newOwner != owner);
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(48)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |
    |    if (contributorList[_contributor].isActive == false){                       // Check if contributor has already contributed
  > |      contributorList[_contributor].isActive = true;                            // Set his activity to true
    |      contributorList[_contributor].contributionAmount = contributionAmount;    // Set his contribution
    |      contributorIndexes[nextContributorIndex] = _contributor;                  // Set contributors index
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(244)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |    if (contributorList[_contributor].isActive == false){                       // Check if contributor has already contributed
    |      contributorList[_contributor].isActive = true;                            // Set his activity to true
  > |      contributorList[_contributor].contributionAmount = contributionAmount;    // Set his contribution
    |      contributorIndexes[nextContributorIndex] = _contributor;                  // Set contributors index
    |      nextContributorIndex++;
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(245)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |    }
    |    else{
  > |      contributorList[_contributor].contributionAmount += contributionAmount;   // Add contribution amount to existing contributor
    |    }
    |    ethRaised += contributionAmount;                                            // Add to eth raised
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(250)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |    if (tokenAmount > 0){
    |      token.mintTokens(_contributor, tokenAmount);                                // Issue new tokens
  > |      contributorList[_contributor].tokensIssued += tokenAmount;                  // log token issuance
    |    }
    |    if (returnAmount != 0) _contributor.transfer(returnAmount);                 // Return overflow of ether
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(259)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |    require(ethRaised >= minCap);
    |
  > |    pendingEthWithdrawal = this.balance;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(298)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |
    |    uint ethContributed = contributorList[msg.sender].contributionAmount; // Get contributors contribution
  > |    hasClaimedEthWhenFail[msg.sender] = true;                             // Set that he has claimed
    |    if (!msg.sender.send(ethContributed)){                                // Refund eth
    |      ErrorSendingETH(msg.sender, ethContributed);                        // If there is an issue raise event for manual recovery
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(325)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |  //
    |  function setMultisigAddress(address _newAddress) public onlyOwner{
  > |    multisigAddress = _newAddress;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(366)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |  //
    |  function setToken(address _newAddress) public onlyOwner{
  > |    token = IToken(_newAddress);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(373)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |    if (!presaleBonusTokensClaimed) devReward -= presaleBonusTokens; // If presaleBonusToken has been claimed its ok if not set aside presaleBonusTokens
    |    token.mintTokens(_to, devReward);                             // Issue Teams tokens
  > |    ownerHasClaimedTokens = true;                                 // Block further mints from this method
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(386)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |        require(msg.sender == newOwner);
    |        OwnerUpdate(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = 0x0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(54)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |        OwnerUpdate(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = 0x0;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(55)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |
    |    multisigAddress.transfer(pendingEthWithdrawal);
  > |    pendingEthWithdrawal = 0;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(313)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |
    |    token.mintTokens(presaleBonusAddressColdStorage, presaleBonusTokens);             // Issue presale  tokens
  > |    presaleBonusTokensClaimed = true;                   // Block further mints from this method
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(398)

[31mViolation[0m for DAOConstantGas in contract 'FutouristCrowdsale':
    |  function refundTransaction(bool _stateChanged) internal{
    |    if (_stateChanged){
  > |      msg.sender.transfer(msg.value);
    |    }else{
    |      revert();
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(206)

[31mViolation[0m for DAOConstantGas in contract 'FutouristCrowdsale':
    |    require(pendingEthWithdrawal > 0);
    |
  > |    multisigAddress.transfer(pendingEthWithdrawal);
    |    pendingEthWithdrawal = 0;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(312)

[33mWarning[0m for DAOConstantGas in contract 'FutouristCrowdsale':
    |    uint ethContributed = contributorList[msg.sender].contributionAmount; // Get contributors contribution
    |    hasClaimedEthWhenFail[msg.sender] = true;                             // Set that he has claimed
  > |    if (!msg.sender.send(ethContributed)){                                // Refund eth
    |      ErrorSendingETH(msg.sender, ethContributed);                        // If there is an issue raise event for manual recovery
    |    }
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(326)

[33mWarning[0m for DAOConstantGas in contract 'FutouristCrowdsale':
    |    require(block.timestamp > crowdsaleEndedTime);                 // Check if crowdsale is over
    |    require(contributorIndexes[nextContributorToClaim] == 0x0);  // Check if all the users were refunded
  > |    multisigAddress.transfer(this.balance);                      // Withdraw to multisig
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(359)

[33mWarning[0m for LockedEther in contract 'FutouristCrowdsale':
    |
    |
  > |contract FutouristCrowdsale is Crowdsale {
    |  function FutouristCrowdsale() public {
    |    /* ADAPT */
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(408)

[31mViolation[0m for TODAmount in contract 'FutouristCrowdsale':
    |    require(pendingEthWithdrawal > 0);
    |
  > |    multisigAddress.transfer(pendingEthWithdrawal);
    |    pendingEthWithdrawal = 0;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(312)

[31mViolation[0m for TODAmount in contract 'FutouristCrowdsale':
    |    require(block.timestamp > crowdsaleEndedTime);                 // Check if crowdsale is over
    |    require(contributorIndexes[nextContributorToClaim] == 0x0);  // Check if all the users were refunded
  > |    multisigAddress.transfer(this.balance);                      // Withdraw to multisig
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(359)

[31mViolation[0m for TODReceiver in contract 'FutouristCrowdsale':
    |    require(pendingEthWithdrawal > 0);
    |
  > |    multisigAddress.transfer(pendingEthWithdrawal);
    |    pendingEthWithdrawal = 0;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(312)

[31mViolation[0m for TODReceiver in contract 'FutouristCrowdsale':
    |    require(block.timestamp > crowdsaleEndedTime);                 // Check if crowdsale is over
    |    require(contributorIndexes[nextContributorToClaim] == 0x0);  // Check if all the users were refunded
  > |    multisigAddress.transfer(this.balance);                      // Withdraw to multisig
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(359)

[33mWarning[0m for TODReceiver in contract 'FutouristCrowdsale':
    |  function refundTransaction(bool _stateChanged) internal{
    |    if (_stateChanged){
  > |      msg.sender.transfer(msg.value);
    |    }else{
    |      revert();
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(206)

[33mWarning[0m for TODReceiver in contract 'FutouristCrowdsale':
    |      contributorList[_contributor].tokensIssued += tokenAmount;                  // log token issuance
    |    }
  > |    if (returnAmount != 0) _contributor.transfer(returnAmount);                 // Return overflow of ether
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(261)

[33mWarning[0m for TODReceiver in contract 'FutouristCrowdsale':
    |    uint ethContributed = contributorList[msg.sender].contributionAmount; // Get contributors contribution
    |    hasClaimedEthWhenFail[msg.sender] = true;                             // Set that he has claimed
  > |    if (!msg.sender.send(ethContributed)){                                // Refund eth
    |      ErrorSendingETH(msg.sender, ethContributed);                        // If there is an issue raise event for manual recovery
    |    }
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(326)

[33mWarning[0m for UnhandledException in contract 'FutouristCrowdsale':
    |  function refundTransaction(bool _stateChanged) internal{
    |    if (_stateChanged){
  > |      msg.sender.transfer(msg.value);
    |    }else{
    |      revert();
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(206)

[33mWarning[0m for UnhandledException in contract 'FutouristCrowdsale':
    |    uint tokenAmount = contributionAmount * ethToTokenConversion;               // Calculate how much tokens must contributor get
    |    if (tokenAmount > 0){
  > |      token.mintTokens(_contributor, tokenAmount);                                // Issue new tokens
    |      contributorList[_contributor].tokensIssued += tokenAmount;                  // log token issuance
    |    }
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(258)

[33mWarning[0m for UnhandledException in contract 'FutouristCrowdsale':
    |      contributorList[_contributor].tokensIssued += tokenAmount;                  // log token issuance
    |    }
  > |    if (returnAmount != 0) _contributor.transfer(returnAmount);                 // Return overflow of ether
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(261)

[33mWarning[0m for UnhandledException in contract 'FutouristCrowdsale':
    |  //
    |  function salvageTokensFromContract(address _tokenAddress, address _to, uint _amount) public onlyOwner{
  > |    IERC20Token(_tokenAddress).transfer(_to, _amount);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(287)

[33mWarning[0m for UnhandledException in contract 'FutouristCrowdsale':
    |    require(pendingEthWithdrawal > 0);
    |
  > |    multisigAddress.transfer(pendingEthWithdrawal);
    |    pendingEthWithdrawal = 0;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(312)

[33mWarning[0m for UnhandledException in contract 'FutouristCrowdsale':
    |    uint ethContributed = contributorList[msg.sender].contributionAmount; // Get contributors contribution
    |    hasClaimedEthWhenFail[msg.sender] = true;                             // Set that he has claimed
  > |    if (!msg.sender.send(ethContributed)){                                // Refund eth
    |      ErrorSendingETH(msg.sender, ethContributed);                        // If there is an issue raise event for manual recovery
    |    }
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(326)

[33mWarning[0m for UnhandledException in contract 'FutouristCrowdsale':
    |        contribution = contributorList[currentParticipantAddress].contributionAmount; // Get contribution of participant
    |        hasClaimedEthWhenFail[currentParticipantAddress] = true;                      // Set that he has claimed
  > |        if (!currentParticipantAddress.send(contribution)){                           // Refund eth
    |          ErrorSendingETH(currentParticipantAddress, contribution);                   // If there is an issue raise event for manual recovery
    |        }
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(344)

[33mWarning[0m for UnhandledException in contract 'FutouristCrowdsale':
    |    require(block.timestamp > crowdsaleEndedTime);                 // Check if crowdsale is over
    |    require(contributorIndexes[nextContributorToClaim] == 0x0);  // Check if all the users were refunded
  > |    multisigAddress.transfer(this.balance);                      // Withdraw to multisig
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(359)

[33mWarning[0m for UnhandledException in contract 'FutouristCrowdsale':
    |    require(!ownerHasClaimedTokens);                              // Check if owner has already claimed tokens
    |
  > |    uint devReward = maxTokenSupply - token.totalSupply();
    |    if (!presaleBonusTokensClaimed) devReward -= presaleBonusTokens; // If presaleBonusToken has been claimed its ok if not set aside presaleBonusTokens
    |    token.mintTokens(_to, devReward);                             // Issue Teams tokens
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(383)

[33mWarning[0m for UnhandledException in contract 'FutouristCrowdsale':
    |    uint devReward = maxTokenSupply - token.totalSupply();
    |    if (!presaleBonusTokensClaimed) devReward -= presaleBonusTokens; // If presaleBonusToken has been claimed its ok if not set aside presaleBonusTokens
  > |    token.mintTokens(_to, devReward);                             // Issue Teams tokens
    |    ownerHasClaimedTokens = true;                                 // Block further mints from this method
    |  }
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(385)

[33mWarning[0m for UnhandledException in contract 'FutouristCrowdsale':
    |    require(!presaleBonusTokensClaimed);                // Check if tokens were already claimed
    |
  > |    token.mintTokens(presaleBonusAddressColdStorage, presaleBonusTokens);             // Issue presale  tokens
    |    presaleBonusTokensClaimed = true;                   // Block further mints from this method
    |  }
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(397)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FutouristCrowdsale':
    |    uint tokenAmount = contributionAmount * ethToTokenConversion;               // Calculate how much tokens must contributor get
    |    if (tokenAmount > 0){
  > |      token.mintTokens(_contributor, tokenAmount);                                // Issue new tokens
    |      contributorList[_contributor].tokensIssued += tokenAmount;                  // log token issuance
    |    }
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(258)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FutouristCrowdsale':
    |  //
    |  function salvageTokensFromContract(address _tokenAddress, address _to, uint _amount) public onlyOwner{
  > |    IERC20Token(_tokenAddress).transfer(_to, _amount);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(287)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FutouristCrowdsale':
    |    require(pendingEthWithdrawal > 0);
    |
  > |    multisigAddress.transfer(pendingEthWithdrawal);
    |    pendingEthWithdrawal = 0;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(312)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FutouristCrowdsale':
    |    require(block.timestamp > crowdsaleEndedTime);                 // Check if crowdsale is over
    |    require(contributorIndexes[nextContributorToClaim] == 0x0);  // Check if all the users were refunded
  > |    multisigAddress.transfer(this.balance);                      // Withdraw to multisig
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(359)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FutouristCrowdsale':
    |    require(!ownerHasClaimedTokens);                              // Check if owner has already claimed tokens
    |
  > |    uint devReward = maxTokenSupply - token.totalSupply();
    |    if (!presaleBonusTokensClaimed) devReward -= presaleBonusTokens; // If presaleBonusToken has been claimed its ok if not set aside presaleBonusTokens
    |    token.mintTokens(_to, devReward);                             // Issue Teams tokens
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(383)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FutouristCrowdsale':
    |    uint devReward = maxTokenSupply - token.totalSupply();
    |    if (!presaleBonusTokensClaimed) devReward -= presaleBonusTokens; // If presaleBonusToken has been claimed its ok if not set aside presaleBonusTokens
  > |    token.mintTokens(_to, devReward);                             // Issue Teams tokens
    |    ownerHasClaimedTokens = true;                                 // Block further mints from this method
    |  }
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(385)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FutouristCrowdsale':
    |    require(!presaleBonusTokensClaimed);                // Check if tokens were already claimed
    |
  > |    token.mintTokens(presaleBonusAddressColdStorage, presaleBonusTokens);             // Issue presale  tokens
    |    presaleBonusTokensClaimed = true;                   // Block further mints from this method
    |  }
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(397)

[31mViolation[0m for UnrestrictedWrite in contract 'FutouristCrowdsale':
    |    modifier noReentrancy() {
    |        require(!locked);
  > |        locked = true;
    |        _;
    |        locked = false;
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(27)

[31mViolation[0m for UnrestrictedWrite in contract 'FutouristCrowdsale':
    |  function checkCrowdsaleState() internal returns (bool){
    |    if (ethRaised == maxCap && crowdsaleState != state.crowdsaleEnded){                         // Check if max cap is reached
  > |      crowdsaleState = state.crowdsaleEnded;
    |      MaxCapReached(block.timestamp);                                                              // Close the crowdsale
    |      CrowdsaleEnded(block.timestamp);                                                             // Raise event
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(167)

[31mViolation[0m for UnrestrictedWrite in contract 'FutouristCrowdsale':
    |    if (block.timestamp > presaleStartTime && block.timestamp <= presaleUnlimitedStartTime){  // Check if we are in presale phase
    |      if (crowdsaleState != state.priorityPass){                                          // Check if state needs to be changed
  > |        crowdsaleState = state.priorityPass;                                              // Set new state
    |        PresaleStarted(block.timestamp);                                                     // Raise event
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(175)

[31mViolation[0m for UnrestrictedWrite in contract 'FutouristCrowdsale':
    |    }else if(block.timestamp > presaleUnlimitedStartTime && block.timestamp <= crowdsaleStartTime){ // Check if we are in presale unlimited phase
    |      if (crowdsaleState != state.openedPriorityPass){                                          // Check if state needs to be changed
  > |        crowdsaleState = state.openedPriorityPass;                                              // Set new state
    |        PresaleUnlimitedStarted(block.timestamp);                                                  // Raise event
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(181)

[31mViolation[0m for UnrestrictedWrite in contract 'FutouristCrowdsale':
    |    }else if(block.timestamp > crowdsaleStartTime && block.timestamp <= crowdsaleEndedTime){        // Check if we are in crowdsale state
    |      if (crowdsaleState != state.crowdsale){                                                   // Check if state needs to be changed
  > |        crowdsaleState = state.crowdsale;                                                       // Set new state
    |        CrowdsaleStarted(block.timestamp);                                                         // Raise event
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(187)

[31mViolation[0m for UnrestrictedWrite in contract 'FutouristCrowdsale':
    |    }else{
    |      if (crowdsaleState != state.crowdsaleEnded && block.timestamp > crowdsaleEndedTime){        // Check if crowdsale is over
  > |        crowdsaleState = state.crowdsaleEnded;                                                  // Set new state
    |        CrowdsaleEnded(block.timestamp);                                                           // Raise event
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(193)

[33mWarning[0m for UnrestrictedWrite in contract 'FutouristCrowdsale':
    |    function transferOwnership(address _newOwner) public onlyOwner {
    |        require(_newOwner != owner);
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(48)

[33mWarning[0m for UnrestrictedWrite in contract 'FutouristCrowdsale':
    |
    |    if (contributorList[_contributor].isActive == false){                       // Check if contributor has already contributed
  > |      contributorList[_contributor].isActive = true;                            // Set his activity to true
    |      contributorList[_contributor].contributionAmount = contributionAmount;    // Set his contribution
    |      contributorIndexes[nextContributorIndex] = _contributor;                  // Set contributors index
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(244)

[33mWarning[0m for UnrestrictedWrite in contract 'FutouristCrowdsale':
    |    if (contributorList[_contributor].isActive == false){                       // Check if contributor has already contributed
    |      contributorList[_contributor].isActive = true;                            // Set his activity to true
  > |      contributorList[_contributor].contributionAmount = contributionAmount;    // Set his contribution
    |      contributorIndexes[nextContributorIndex] = _contributor;                  // Set contributors index
    |      nextContributorIndex++;
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(245)

[33mWarning[0m for UnrestrictedWrite in contract 'FutouristCrowdsale':
    |    }
    |    else{
  > |      contributorList[_contributor].contributionAmount += contributionAmount;   // Add contribution amount to existing contributor
    |    }
    |    ethRaised += contributionAmount;                                            // Add to eth raised
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(250)

[33mWarning[0m for UnrestrictedWrite in contract 'FutouristCrowdsale':
    |    if (tokenAmount > 0){
    |      token.mintTokens(_contributor, tokenAmount);                                // Issue new tokens
  > |      contributorList[_contributor].tokensIssued += tokenAmount;                  // log token issuance
    |    }
    |    if (returnAmount != 0) _contributor.transfer(returnAmount);                 // Return overflow of ether
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(259)

[33mWarning[0m for UnrestrictedWrite in contract 'FutouristCrowdsale':
    |    require(ethRaised >= minCap);
    |
  > |    pendingEthWithdrawal = this.balance;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(298)

[33mWarning[0m for UnrestrictedWrite in contract 'FutouristCrowdsale':
    |
    |    uint ethContributed = contributorList[msg.sender].contributionAmount; // Get contributors contribution
  > |    hasClaimedEthWhenFail[msg.sender] = true;                             // Set that he has claimed
    |    if (!msg.sender.send(ethContributed)){                                // Refund eth
    |      ErrorSendingETH(msg.sender, ethContributed);                        // If there is an issue raise event for manual recovery
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(325)

[33mWarning[0m for UnrestrictedWrite in contract 'FutouristCrowdsale':
    |  //
    |  function setMultisigAddress(address _newAddress) public onlyOwner{
  > |    multisigAddress = _newAddress;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(366)

[33mWarning[0m for UnrestrictedWrite in contract 'FutouristCrowdsale':
    |  //
    |  function setToken(address _newAddress) public onlyOwner{
  > |    token = IToken(_newAddress);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(373)

[33mWarning[0m for UnrestrictedWrite in contract 'FutouristCrowdsale':
    |    if (!presaleBonusTokensClaimed) devReward -= presaleBonusTokens; // If presaleBonusToken has been claimed its ok if not set aside presaleBonusTokens
    |    token.mintTokens(_to, devReward);                             // Issue Teams tokens
  > |    ownerHasClaimedTokens = true;                                 // Block further mints from this method
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(386)

[33mWarning[0m for UnrestrictedWrite in contract 'FutouristCrowdsale':
    |        require(msg.sender == newOwner);
    |        OwnerUpdate(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = 0x0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(54)

[33mWarning[0m for UnrestrictedWrite in contract 'FutouristCrowdsale':
    |        OwnerUpdate(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = 0x0;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(55)

[33mWarning[0m for UnrestrictedWrite in contract 'FutouristCrowdsale':
    |
    |    multisigAddress.transfer(pendingEthWithdrawal);
  > |    pendingEthWithdrawal = 0;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(313)

[33mWarning[0m for UnrestrictedWrite in contract 'FutouristCrowdsale':
    |
    |    token.mintTokens(presaleBonusAddressColdStorage, presaleBonusTokens);             // Issue presale  tokens
  > |    presaleBonusTokensClaimed = true;                   // Block further mints from this method
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(398)

[33mWarning[0m for LockedEther in contract 'Owned':
    |}
    |
  > |contract Owned {
    |    address public owner;
    |    address public newOwner;
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(33)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(34)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    function Owned() public{
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(35)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        require(_newOwner != owner);
    |        newOwner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(46)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnerUpdate(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(51)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |    function transferOwnership(address _newOwner) public onlyOwner {
    |        require(_newOwner != owner);
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(48)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(msg.sender == newOwner);
    |        OwnerUpdate(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = 0x0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(54)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        OwnerUpdate(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = 0x0;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(55)

[33mWarning[0m for LockedEther in contract 'ReentrnacyHandlingContract':
    |pragma solidity ^0.4.13;
    |
  > |contract ReentrnacyHandlingContract{
    |
    |    bool locked;
  at /home/jiaming/mavs_srcs/contract@0x642ce99aad0ccc6fed7930117b217a18ce4b4229.sol(21)


