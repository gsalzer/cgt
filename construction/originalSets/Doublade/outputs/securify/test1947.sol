Processing contract: /home/jiaming/mavs_srcs/contract@0x7d97dd891966d32caba7dbefd2e1595df8d89724.sol:CCCRCoin
Processing contract: /home/jiaming/mavs_srcs/contract@0x7d97dd891966d32caba7dbefd2e1595df8d89724.sol:CCCRSale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7d97dd891966d32caba7dbefd2e1595df8d89724.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7d97dd891966d32caba7dbefd2e1595df8d89724.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7d97dd891966d32caba7dbefd2e1595df8d89724.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for DAOConstantGas in contract 'CCCRSale':
    |      
    |      tokenReward.transfer(msg.sender, tokens);
  > |      investWallet.transfer(this.balance);
    |      totalRaised = totalRaised.add(tokens);
    |
  at /home/jiaming/mavs_srcs/contract@0x7d97dd891966d32caba7dbefd2e1595df8d89724.sol(176)

[33mWarning[0m for DAOConstantGas in contract 'CCCRSale':
    |    function getWei(uint256 _etherAmount) external onlyManager {
    |        uint256 etherAmount = _etherAmount.mul(etherOne);
  > |        investWallet.transfer(etherAmount); 
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x7d97dd891966d32caba7dbefd2e1595df8d89724.sol(206)

[33mWarning[0m for LockedEther in contract 'CCCRSale':
    |}
    |
  > |contract CCCRSale is Pausable {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x7d97dd891966d32caba7dbefd2e1595df8d89724.sol(134)

[31mViolation[0m for TODAmount in contract 'CCCRSale':
    |      
    |      tokenReward.transfer(msg.sender, tokens);
  > |      investWallet.transfer(this.balance);
    |      totalRaised = totalRaised.add(tokens);
    |
  at /home/jiaming/mavs_srcs/contract@0x7d97dd891966d32caba7dbefd2e1595df8d89724.sol(176)

[33mWarning[0m for TODReceiver in contract 'CCCRSale':
    |          address referer = bytesToAddress(bytes(msg.data));
    |          require(referer != msg.sender);
  > |          referer.transfer(amountWei.div(100).mul(20));
    |      }
    |      
  at /home/jiaming/mavs_srcs/contract@0x7d97dd891966d32caba7dbefd2e1595df8d89724.sol(172)

[33mWarning[0m for UnhandledException in contract 'CCCRSale':
    |          address referer = bytesToAddress(bytes(msg.data));
    |          require(referer != msg.sender);
  > |          referer.transfer(amountWei.div(100).mul(20));
    |      }
    |      
  at /home/jiaming/mavs_srcs/contract@0x7d97dd891966d32caba7dbefd2e1595df8d89724.sol(172)

[33mWarning[0m for UnhandledException in contract 'CCCRSale':
    |      }
    |      
  > |      tokenReward.transfer(msg.sender, tokens);
    |      investWallet.transfer(this.balance);
    |      totalRaised = totalRaised.add(tokens);
  at /home/jiaming/mavs_srcs/contract@0x7d97dd891966d32caba7dbefd2e1595df8d89724.sol(175)

[33mWarning[0m for UnhandledException in contract 'CCCRSale':
    |      
    |      tokenReward.transfer(msg.sender, tokens);
  > |      investWallet.transfer(this.balance);
    |      totalRaised = totalRaised.add(tokens);
    |
  at /home/jiaming/mavs_srcs/contract@0x7d97dd891966d32caba7dbefd2e1595df8d89724.sol(176)

[33mWarning[0m for UnhandledException in contract 'CCCRSale':
    |
    |    function transferTokens(uint256 _tokens) external onlyManager {
  > |        tokenReward.transfer(msg.sender, _tokens); 
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x7d97dd891966d32caba7dbefd2e1595df8d89724.sol(197)

[33mWarning[0m for UnhandledException in contract 'CCCRSale':
    |    function getWei(uint256 _etherAmount) external onlyManager {
    |        uint256 etherAmount = _etherAmount.mul(etherOne);
  > |        investWallet.transfer(etherAmount); 
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x7d97dd891966d32caba7dbefd2e1595df8d89724.sol(206)

[33mWarning[0m for UnhandledException in contract 'CCCRSale':
    |       
    |      while (i <= arrayLength) {
  > |           tokenReward.transfer(arrayAddress[i], arrayAmount[i]);
    |           i = i.add(1);
    |      }  
  at /home/jiaming/mavs_srcs/contract@0x7d97dd891966d32caba7dbefd2e1595df8d89724.sol(216)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CCCRSale':
    |          address referer = bytesToAddress(bytes(msg.data));
    |          require(referer != msg.sender);
  > |          referer.transfer(amountWei.div(100).mul(20));
    |      }
    |      
  at /home/jiaming/mavs_srcs/contract@0x7d97dd891966d32caba7dbefd2e1595df8d89724.sol(172)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CCCRSale':
    |      }
    |      
  > |      tokenReward.transfer(msg.sender, tokens);
    |      investWallet.transfer(this.balance);
    |      totalRaised = totalRaised.add(tokens);
  at /home/jiaming/mavs_srcs/contract@0x7d97dd891966d32caba7dbefd2e1595df8d89724.sol(175)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CCCRSale':
    |      
    |      tokenReward.transfer(msg.sender, tokens);
  > |      investWallet.transfer(this.balance);
    |      totalRaised = totalRaised.add(tokens);
    |
  at /home/jiaming/mavs_srcs/contract@0x7d97dd891966d32caba7dbefd2e1595df8d89724.sol(176)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CCCRSale':
    |
    |    function transferTokens(uint256 _tokens) external onlyManager {
  > |        tokenReward.transfer(msg.sender, _tokens); 
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x7d97dd891966d32caba7dbefd2e1595df8d89724.sol(197)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CCCRSale':
    |    function getWei(uint256 _etherAmount) external onlyManager {
    |        uint256 etherAmount = _etherAmount.mul(etherOne);
  > |        investWallet.transfer(etherAmount); 
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x7d97dd891966d32caba7dbefd2e1595df8d89724.sol(206)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CCCRSale':
    |       
    |      while (i <= arrayLength) {
  > |           tokenReward.transfer(arrayAddress[i], arrayAmount[i]);
    |           i = i.add(1);
    |      }  
  at /home/jiaming/mavs_srcs/contract@0x7d97dd891966d32caba7dbefd2e1595df8d89724.sol(216)

[33mWarning[0m for UnrestrictedWrite in contract 'CCCRSale':
    |      tokenReward.transfer(msg.sender, tokens);
    |      investWallet.transfer(this.balance);
  > |      totalRaised = totalRaised.add(tokens);
    |
    |      if (totalRaised >= minCap) {
  at /home/jiaming/mavs_srcs/contract@0x7d97dd891966d32caba7dbefd2e1595df8d89724.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'CCCRSale':
    |
    |      if (totalRaised >= minCap) {
  > |          finished = true;
    |      }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7d97dd891966d32caba7dbefd2e1595df8d89724.sol(180)

[33mWarning[0m for UnrestrictedWrite in contract 'CCCRSale':
    |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
  > |    owner = newOwner;
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0x7d97dd891966d32caba7dbefd2e1595df8d89724.sol(81)

[33mWarning[0m for UnrestrictedWrite in contract 'CCCRSale':
    |  function transferManagment(address newManager) public onlyOwner {
    |    require(newManager != address(0));
  > |    manager = newManager;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x7d97dd891966d32caba7dbefd2e1595df8d89724.sol(91)

[33mWarning[0m for UnrestrictedWrite in contract 'CCCRSale':
    |
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x7d97dd891966d32caba7dbefd2e1595df8d89724.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'CCCRSale':
    |
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x7d97dd891966d32caba7dbefd2e1595df8d89724.sol(130)

[33mWarning[0m for UnrestrictedWrite in contract 'CCCRSale':
    |
    |    function updatePrice(uint256 _tokenPrice) external onlyManager {
  > |        tokenPrice = _tokenPrice;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x7d97dd891966d32caba7dbefd2e1595df8d89724.sol(193)

[33mWarning[0m for UnrestrictedWrite in contract 'CCCRSale':
    |
    |    function newMinimumTokens(uint256 _minimumTokens) external onlyManager {
  > |        minimumTokens = _minimumTokens; 
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x7d97dd891966d32caba7dbefd2e1595df8d89724.sol(201)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |  address public manager;
  at /home/jiaming/mavs_srcs/contract@0x7d97dd891966d32caba7dbefd2e1595df8d89724.sol(58)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |  address public manager;
    |
  at /home/jiaming/mavs_srcs/contract@0x7d97dd891966d32caba7dbefd2e1595df8d89724.sol(59)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |contract Ownable {
    |  address public owner;
  > |  address public manager;
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x7d97dd891966d32caba7dbefd2e1595df8d89724.sol(60)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |  }
    |
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x7d97dd891966d32caba7dbefd2e1595df8d89724.sol(79)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |  }
    |
  > |  function transferManagment(address newManager) public onlyOwner {
    |    require(newManager != address(0));
    |    manager = newManager;
  at /home/jiaming/mavs_srcs/contract@0x7d97dd891966d32caba7dbefd2e1595df8d89724.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
  > |    owner = newOwner;
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0x7d97dd891966d32caba7dbefd2e1595df8d89724.sol(81)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function transferManagment(address newManager) public onlyOwner {
    |    require(newManager != address(0));
  > |    manager = newManager;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x7d97dd891966d32caba7dbefd2e1595df8d89724.sol(91)

[33mWarning[0m for LockedEther in contract 'Pausable':
    | * @dev Base contract which allows children to implement an emergency stop mechanism.
    | */
  > |contract Pausable is Ownable {
    |
    |  bool public paused = false;
  at /home/jiaming/mavs_srcs/contract@0x7d97dd891966d32caba7dbefd2e1595df8d89724.sol(100)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    | */
    |contract Ownable {
  > |  address public owner;
    |  address public manager;
    |
  at /home/jiaming/mavs_srcs/contract@0x7d97dd891966d32caba7dbefd2e1595df8d89724.sol(59)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |contract Ownable {
    |  address public owner;
  > |  address public manager;
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x7d97dd891966d32caba7dbefd2e1595df8d89724.sol(60)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  }
    |
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x7d97dd891966d32caba7dbefd2e1595df8d89724.sol(79)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  }
    |
  > |  function transferManagment(address newManager) public onlyOwner {
    |    require(newManager != address(0));
    |    manager = newManager;
  at /home/jiaming/mavs_srcs/contract@0x7d97dd891966d32caba7dbefd2e1595df8d89724.sol(89)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |contract Pausable is Ownable {
    |
  > |  bool public paused = false;
    |  bool public finished = false;
    |  
  at /home/jiaming/mavs_srcs/contract@0x7d97dd891966d32caba7dbefd2e1595df8d89724.sol(102)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |
    |  bool public paused = false;
  > |  bool public finished = false;
    |  
    |  modifier whenSaleNotFinish() {
  at /home/jiaming/mavs_srcs/contract@0x7d97dd891966d32caba7dbefd2e1595df8d89724.sol(103)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  }
    |
  > |  function pause() onlyOwner whenNotPaused public {
    |    paused = true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x7d97dd891966d32caba7dbefd2e1595df8d89724.sol(125)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  }
    |
  > |  function unpause() onlyOwner whenPaused public {
    |    paused = false;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x7d97dd891966d32caba7dbefd2e1595df8d89724.sol(129)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
  > |    owner = newOwner;
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0x7d97dd891966d32caba7dbefd2e1595df8d89724.sol(81)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |  function transferManagment(address newManager) public onlyOwner {
    |    require(newManager != address(0));
  > |    manager = newManager;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x7d97dd891966d32caba7dbefd2e1595df8d89724.sol(91)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x7d97dd891966d32caba7dbefd2e1595df8d89724.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x7d97dd891966d32caba7dbefd2e1595df8d89724.sol(130)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x7d97dd891966d32caba7dbefd2e1595df8d89724.sol(11)


