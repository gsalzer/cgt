Processing contract: /home/jiaming/mavs_srcs/contract@0x3a19ea60702057ed5f73fb7d1ae35e7b60de6c7f.sol:Crowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3a19ea60702057ed5f73fb7d1ae35e7b60de6c7f.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3a19ea60702057ed5f73fb7d1ae35e7b60de6c7f.sol:Token
[31mViolation[0m for DAOConstantGas in contract 'Crowdsale':
    |  // override to create custom fund forwarding mechanisms
    |  function forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0x3a19ea60702057ed5f73fb7d1ae35e7b60de6c7f.sol(203)

[33mWarning[0m for LockedEther in contract 'Crowdsale':
    | 
    | 
  > |contract Crowdsale {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x3a19ea60702057ed5f73fb7d1ae35e7b60de6c7f.sol(76)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |
    |    // Check balance of contract
  > |    token.transfer(beneficiary, tokens);
    |    TokenPurchase(msg.sender, beneficiary, weiAmount, tokens);
    |    
  at /home/jiaming/mavs_srcs/contract@0x3a19ea60702057ed5f73fb7d1ae35e7b60de6c7f.sol(168)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |  // override to create custom fund forwarding mechanisms
    |  function forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0x3a19ea60702057ed5f73fb7d1ae35e7b60de6c7f.sol(203)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |  
    |  function tokensAvailable() public onlyOwner constant returns (uint256) {
  > |    return token.balanceOf(this);
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0x3a19ea60702057ed5f73fb7d1ae35e7b60de6c7f.sol(215)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |    uint256 balance = tokensAvailable();
    |    if(balance > 0) {
  > |    token.transfer(owner, balance);
    |    }
    |    selfdestruct(owner);
  at /home/jiaming/mavs_srcs/contract@0x3a19ea60702057ed5f73fb7d1ae35e7b60de6c7f.sol(230)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |
    |    // Check balance of contract
  > |    token.transfer(beneficiary, tokens);
    |    TokenPurchase(msg.sender, beneficiary, weiAmount, tokens);
    |    
  at /home/jiaming/mavs_srcs/contract@0x3a19ea60702057ed5f73fb7d1ae35e7b60de6c7f.sol(168)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |  // override to create custom fund forwarding mechanisms
    |  function forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0x3a19ea60702057ed5f73fb7d1ae35e7b60de6c7f.sol(203)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |  
    |  function tokensAvailable() public onlyOwner constant returns (uint256) {
  > |    return token.balanceOf(this);
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0x3a19ea60702057ed5f73fb7d1ae35e7b60de6c7f.sol(215)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |    uint256 balance = tokensAvailable();
    |    if(balance > 0) {
  > |    token.transfer(owner, balance);
    |    }
    |    selfdestruct(owner);
  at /home/jiaming/mavs_srcs/contract@0x3a19ea60702057ed5f73fb7d1ae35e7b60de6c7f.sol(230)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |
    |    // update state
  > |    weiRaised = weiRaised.add(weiAmount);
    |    tierTotal = tierTotal.add(weiAmount);
    |
  at /home/jiaming/mavs_srcs/contract@0x3a19ea60702057ed5f73fb7d1ae35e7b60de6c7f.sol(164)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |    // update state
    |    weiRaised = weiRaised.add(weiAmount);
  > |    tierTotal = tierTotal.add(weiAmount);
    |
    |    // Check balance of contract
  at /home/jiaming/mavs_srcs/contract@0x3a19ea60702057ed5f73fb7d1ae35e7b60de6c7f.sol(165)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |    uint256 tierWeiLimit  = tierEthLimit.mul(1 ether);
    |    if(tierAmount >= tierWeiLimit) {
  > |        tierNum = tierNum.add(1); //increment tier number
    |        rate = fundingRate[tierNum]; // set new rate in wei
    |        tierTotal = 0; //reset to 0 wei
  at /home/jiaming/mavs_srcs/contract@0x3a19ea60702057ed5f73fb7d1ae35e7b60de6c7f.sol(190)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |    if(tierAmount >= tierWeiLimit) {
    |        tierNum = tierNum.add(1); //increment tier number
  > |        rate = fundingRate[tierNum]; // set new rate in wei
    |        tierTotal = 0; //reset to 0 wei
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3a19ea60702057ed5f73fb7d1ae35e7b60de6c7f.sol(191)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |        tierNum = tierNum.add(1); //increment tier number
    |        rate = fundingRate[tierNum]; // set new rate in wei
  > |        tierTotal = 0; //reset to 0 wei
    |    }
    | }
  at /home/jiaming/mavs_srcs/contract@0x3a19ea60702057ed5f73fb7d1ae35e7b60de6c7f.sol(192)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x3a19ea60702057ed5f73fb7d1ae35e7b60de6c7f.sol(21)


