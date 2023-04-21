Processing contract: /home/jiaming/mavs_srcs/contract@0x6d96e02859ad15727da401f0cb7b6a6e44702409.sol:FeedCrowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6d96e02859ad15727da401f0cb7b6a6e44702409.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6d96e02859ad15727da401f0cb7b6a6e44702409.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6d96e02859ad15727da401f0cb7b6a6e44702409.sol:TokenInterface
[33mWarning[0m for DAOConstantGas in contract 'FeedCrowdsale':
    |  // send ether to the fund collection wallet
    |  function forwardFunds() internal {
  > |    owner.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x6d96e02859ad15727da401f0cb7b6a6e44702409.sol(240)

[33mWarning[0m for LockedEther in contract 'FeedCrowdsale':
    |}
    |
  > | contract FeedCrowdsale is Ownable{
    |  using SafeMath for uint256;
    | 
  at /home/jiaming/mavs_srcs/contract@0x6d96e02859ad15727da401f0cb7b6a6e44702409.sol(89)

[31mViolation[0m for TODReceiver in contract 'FeedCrowdsale':
    |  // send ether to the fund collection wallet
    |  function forwardFunds() internal {
  > |    owner.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x6d96e02859ad15727da401f0cb7b6a6e44702409.sol(240)

[33mWarning[0m for UnhandledException in contract 'FeedCrowdsale':
    |    // update state
    |    weiRaised = weiRaised.add(weiAmount);
  > |    token.transfer(beneficiary,tokens);
    |    
    |    emit TokenPurchase(owner, beneficiary, weiAmount, tokens);
  at /home/jiaming/mavs_srcs/contract@0x6d96e02859ad15727da401f0cb7b6a6e44702409.sol(231)

[33mWarning[0m for UnhandledException in contract 'FeedCrowdsale':
    |  // send ether to the fund collection wallet
    |  function forwardFunds() internal {
  > |    owner.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x6d96e02859ad15727da401f0cb7b6a6e44702409.sol(240)

[33mWarning[0m for UnhandledException in contract 'FeedCrowdsale':
    |     function getUnsoldTokensBack() public onlyOwner
    |     {
  > |        uint contractTokenBalance = token.balanceOf(address(this));
    |        require(contractTokenBalance>0);
    |        token.transfer(owner,contractTokenBalance);
  at /home/jiaming/mavs_srcs/contract@0x6d96e02859ad15727da401f0cb7b6a6e44702409.sol(276)

[33mWarning[0m for UnhandledException in contract 'FeedCrowdsale':
    |        uint contractTokenBalance = token.balanceOf(address(this));
    |        require(contractTokenBalance>0);
  > |        token.transfer(owner,contractTokenBalance);
    |     }
    |}
  at /home/jiaming/mavs_srcs/contract@0x6d96e02859ad15727da401f0cb7b6a6e44702409.sol(278)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FeedCrowdsale':
    |    // update state
    |    weiRaised = weiRaised.add(weiAmount);
  > |    token.transfer(beneficiary,tokens);
    |    
    |    emit TokenPurchase(owner, beneficiary, weiAmount, tokens);
  at /home/jiaming/mavs_srcs/contract@0x6d96e02859ad15727da401f0cb7b6a6e44702409.sol(231)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FeedCrowdsale':
    |  // send ether to the fund collection wallet
    |  function forwardFunds() internal {
  > |    owner.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x6d96e02859ad15727da401f0cb7b6a6e44702409.sol(240)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FeedCrowdsale':
    |     function getUnsoldTokensBack() public onlyOwner
    |     {
  > |        uint contractTokenBalance = token.balanceOf(address(this));
    |        require(contractTokenBalance>0);
    |        token.transfer(owner,contractTokenBalance);
  at /home/jiaming/mavs_srcs/contract@0x6d96e02859ad15727da401f0cb7b6a6e44702409.sol(276)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FeedCrowdsale':
    |        uint contractTokenBalance = token.balanceOf(address(this));
    |        require(contractTokenBalance>0);
  > |        token.transfer(owner,contractTokenBalance);
    |     }
    |}
  at /home/jiaming/mavs_srcs/contract@0x6d96e02859ad15727da401f0cb7b6a6e44702409.sol(278)

[33mWarning[0m for UnrestrictedWrite in contract 'FeedCrowdsale':
    |            require(step1Contributions<1000);
    |            tokenAmount = uint(1000).mul(uint(10)** decimals);
  > |            step1Contributions = step1Contributions.add(1);
    |        }
    |        else if (etherAmount>=0.09 ether && etherAmount < 0.24 ether )
  at /home/jiaming/mavs_srcs/contract@0x6d96e02859ad15727da401f0cb7b6a6e44702409.sol(154)

[33mWarning[0m for UnrestrictedWrite in contract 'FeedCrowdsale':
    |            require(step2Contributions<1000);
    |            tokenAmount = uint(2000).mul(uint(10)** decimals);
  > |            step2Contributions = step2Contributions.add(1);
    |            
    |        }
  at /home/jiaming/mavs_srcs/contract@0x6d96e02859ad15727da401f0cb7b6a6e44702409.sol(161)

[33mWarning[0m for UnrestrictedWrite in contract 'FeedCrowdsale':
    |            require(step3Contributions<1000);
    |            tokenAmount = uint(6000).mul(uint(10)** decimals);
  > |            step3Contributions = step3Contributions.add(1);
    |        
    |        }
  at /home/jiaming/mavs_srcs/contract@0x6d96e02859ad15727da401f0cb7b6a6e44702409.sol(169)

[33mWarning[0m for UnrestrictedWrite in contract 'FeedCrowdsale':
    |            require(step4Contributions<1000);
    |            tokenAmount = uint(13000).mul(uint(10)** decimals);
  > |            step4Contributions = step4Contributions.add(1);
    |        
    |        }
  at /home/jiaming/mavs_srcs/contract@0x6d96e02859ad15727da401f0cb7b6a6e44702409.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'FeedCrowdsale':
    |            require(step5Contributions<1000);
    |            tokenAmount = uint(25000).mul(uint(10)** decimals);
  > |            step5Contributions = step5Contributions.add(1);
    |        
    |        }
  at /home/jiaming/mavs_srcs/contract@0x6d96e02859ad15727da401f0cb7b6a6e44702409.sol(185)

[33mWarning[0m for UnrestrictedWrite in contract 'FeedCrowdsale':
    |            require(step6Contributions<1000);
    |            tokenAmount = uint(60000).mul(uint(10)** decimals);
  > |            step6Contributions = step6Contributions.add(1);
    |        
    |        }
  at /home/jiaming/mavs_srcs/contract@0x6d96e02859ad15727da401f0cb7b6a6e44702409.sol(193)

[33mWarning[0m for UnrestrictedWrite in contract 'FeedCrowdsale':
    |            require(step7Contributions<1000);
    |            tokenAmount = uint(130000).mul(uint(10)** decimals);
  > |            step7Contributions = step7Contributions.add(1);
    |        
    |        }
  at /home/jiaming/mavs_srcs/contract@0x6d96e02859ad15727da401f0cb7b6a6e44702409.sol(201)

[33mWarning[0m for UnrestrictedWrite in contract 'FeedCrowdsale':
    |            require(step8Contributions<1000);
    |            tokenAmount = uint(200000).mul(uint(10)** decimals);
  > |            step8Contributions = step8Contributions.add(1);
    |        
    |        }
  at /home/jiaming/mavs_srcs/contract@0x6d96e02859ad15727da401f0cb7b6a6e44702409.sol(209)

[33mWarning[0m for UnrestrictedWrite in contract 'FeedCrowdsale':
    |    
    |    // update state
  > |    weiRaised = weiRaised.add(weiAmount);
    |    token.transfer(beneficiary,tokens);
    |    
  at /home/jiaming/mavs_srcs/contract@0x6d96e02859ad15727da401f0cb7b6a6e44702409.sol(230)

[33mWarning[0m for UnrestrictedWrite in contract 'FeedCrowdsale':
    |    
    |    emit TokenPurchase(owner, beneficiary, weiAmount, tokens);
  > |    TOKENS_SOLD = TOKENS_SOLD.add(tokens);
    |    forwardFunds();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x6d96e02859ad15727da401f0cb7b6a6e44702409.sol(234)

[33mWarning[0m for UnrestrictedWrite in contract 'FeedCrowdsale':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x6d96e02859ad15727da401f0cb7b6a6e44702409.sol(71)

[33mWarning[0m for UnrestrictedWrite in contract 'FeedCrowdsale':
    |    **/
    |    function setPriceRate(uint256 newPrice) public onlyOwner {
  > |        ratePerWei = newPrice;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x6d96e02859ad15727da401f0cb7b6a6e44702409.sol(254)

[33mWarning[0m for UnrestrictedWrite in contract 'FeedCrowdsale':
    |     
    |    function pauseCrowdsale() public onlyOwner {
  > |        isCrowdsalePaused = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6d96e02859ad15727da401f0cb7b6a6e44702409.sol(263)

[33mWarning[0m for UnrestrictedWrite in contract 'FeedCrowdsale':
    |     **/ 
    |    function resumeCrowdsale() public onlyOwner {
  > |        isCrowdsalePaused = false;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x6d96e02859ad15727da401f0cb7b6a6e44702409.sol(271)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x6d96e02859ad15727da401f0cb7b6a6e44702409.sol(41)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x6d96e02859ad15727da401f0cb7b6a6e44702409.sol(42)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x6d96e02859ad15727da401f0cb7b6a6e44702409.sol(68)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x6d96e02859ad15727da401f0cb7b6a6e44702409.sol(71)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0x6d96e02859ad15727da401f0cb7b6a6e44702409.sol(8)


