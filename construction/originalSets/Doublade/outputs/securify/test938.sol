Processing contract: /home/jiaming/mavs_srcs/contract@0x3b72ed6425607e51be842d428b87226cb0a45bd3.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3b72ed6425607e51be842d428b87226cb0a45bd3.sol:PreSale
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x3b72ed6425607e51be842d428b87226cb0a45bd3.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x3b72ed6425607e51be842d428b87226cb0a45bd3.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x3b72ed6425607e51be842d428b87226cb0a45bd3.sol(36)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x3b72ed6425607e51be842d428b87226cb0a45bd3.sol(39)

[33mWarning[0m for DAOConstantGas in contract 'PreSale':
    |
    |    function withdrawal() onlyOwner public {
  > |        owner.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x3b72ed6425607e51be842d428b87226cb0a45bd3.sol(103)

[33mWarning[0m for LockedEther in contract 'PreSale':
    |}
    |
  > |contract PreSale is Ownable {
    |    uint256 constant public INCREASE_RATE = 350000000000000;
    |    uint256 constant public START_TIME = 1514228838;
  at /home/jiaming/mavs_srcs/contract@0x3b72ed6425607e51be842d428b87226cb0a45bd3.sol(44)

[31mViolation[0m for MissingInputValidation in contract 'PreSale':
    |
    |    uint256 public landsSold;
  > |    mapping (address => uint32) public lands;
    |
    |    bool private paused = false; 
  at /home/jiaming/mavs_srcs/contract@0x3b72ed6425607e51be842d428b87226cb0a45bd3.sol(50)

[31mViolation[0m for MissingInputValidation in contract 'PreSale':
    |    }
    |    
  > |    function redeemLand(address targetUser) public onlyOwner returns(uint256) {
    |        require(paused == false);
    |        require(lands[targetUser] > 0);
  at /home/jiaming/mavs_srcs/contract@0x3b72ed6425607e51be842d428b87226cb0a45bd3.sol(83)

[33mWarning[0m for MissingInputValidation in contract 'PreSale':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x3b72ed6425607e51be842d428b87226cb0a45bd3.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'PreSale':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x3b72ed6425607e51be842d428b87226cb0a45bd3.sol(36)

[33mWarning[0m for MissingInputValidation in contract 'PreSale':
    |
    |contract PreSale is Ownable {
  > |    uint256 constant public INCREASE_RATE = 350000000000000;
    |    uint256 constant public START_TIME = 1514228838;
    |    uint256 constant public END_TIME =   1524251238;
  at /home/jiaming/mavs_srcs/contract@0x3b72ed6425607e51be842d428b87226cb0a45bd3.sol(45)

[33mWarning[0m for MissingInputValidation in contract 'PreSale':
    |contract PreSale is Ownable {
    |    uint256 constant public INCREASE_RATE = 350000000000000;
  > |    uint256 constant public START_TIME = 1514228838;
    |    uint256 constant public END_TIME =   1524251238;
    |
  at /home/jiaming/mavs_srcs/contract@0x3b72ed6425607e51be842d428b87226cb0a45bd3.sol(46)

[33mWarning[0m for MissingInputValidation in contract 'PreSale':
    |    uint256 constant public INCREASE_RATE = 350000000000000;
    |    uint256 constant public START_TIME = 1514228838;
  > |    uint256 constant public END_TIME =   1524251238;
    |
    |    uint256 public landsSold;
  at /home/jiaming/mavs_srcs/contract@0x3b72ed6425607e51be842d428b87226cb0a45bd3.sol(47)

[33mWarning[0m for MissingInputValidation in contract 'PreSale':
    |    uint256 constant public END_TIME =   1524251238;
    |
  > |    uint256 public landsSold;
    |    mapping (address => uint32) public lands;
    |
  at /home/jiaming/mavs_srcs/contract@0x3b72ed6425607e51be842d428b87226cb0a45bd3.sol(49)

[33mWarning[0m for MissingInputValidation in contract 'PreSale':
    |    event landsRedeemed(address indexed sender, uint256 lands);
    |
  > |    function bulkPurchageLand() payable public {
    |        require(now > START_TIME);
    |        require(now < END_TIME);
  at /home/jiaming/mavs_srcs/contract@0x3b72ed6425607e51be842d428b87226cb0a45bd3.sol(61)

[33mWarning[0m for MissingInputValidation in contract 'PreSale':
    |    }
    |    
  > |    function purchaseLand() payable public {
    |        require(now > START_TIME);
    |        require(now < END_TIME);
  at /home/jiaming/mavs_srcs/contract@0x3b72ed6425607e51be842d428b87226cb0a45bd3.sol(71)

[33mWarning[0m for MissingInputValidation in contract 'PreSale':
    |    }
    |
  > |    function landPriceCurrent() view public returns(uint256) {
    |        return (landsSold + 1) * INCREASE_RATE;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3b72ed6425607e51be842d428b87226cb0a45bd3.sol(94)

[33mWarning[0m for MissingInputValidation in contract 'PreSale':
    |    }
    |     
  > |    function landPricePrevious() view public returns(uint256) {
    |        return (landsSold) * INCREASE_RATE;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3b72ed6425607e51be842d428b87226cb0a45bd3.sol(98)

[33mWarning[0m for MissingInputValidation in contract 'PreSale':
    |    }
    |
  > |    function withdrawal() onlyOwner public {
    |        owner.transfer(this.balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3b72ed6425607e51be842d428b87226cb0a45bd3.sol(102)

[33mWarning[0m for MissingInputValidation in contract 'PreSale':
    |    }
    |
  > |    function pause() onlyOwner public {
    |        paused = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3b72ed6425607e51be842d428b87226cb0a45bd3.sol(106)

[33mWarning[0m for MissingInputValidation in contract 'PreSale':
    |    }
    |    
  > |    function resume() onlyOwner public {
    |        paused = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3b72ed6425607e51be842d428b87226cb0a45bd3.sol(110)

[33mWarning[0m for MissingInputValidation in contract 'PreSale':
    |    }
    |
  > |    function isPaused () onlyOwner public view returns(bool) {
    |        return paused;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3b72ed6425607e51be842d428b87226cb0a45bd3.sol(114)

[31mViolation[0m for TODAmount in contract 'PreSale':
    |
    |    function withdrawal() onlyOwner public {
  > |        owner.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x3b72ed6425607e51be842d428b87226cb0a45bd3.sol(103)

[31mViolation[0m for TODReceiver in contract 'PreSale':
    |
    |    function withdrawal() onlyOwner public {
  > |        owner.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x3b72ed6425607e51be842d428b87226cb0a45bd3.sol(103)

[33mWarning[0m for UnhandledException in contract 'PreSale':
    |
    |    function withdrawal() onlyOwner public {
  > |        owner.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x3b72ed6425607e51be842d428b87226cb0a45bd3.sol(103)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PreSale':
    |
    |    function withdrawal() onlyOwner public {
  > |        owner.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x3b72ed6425607e51be842d428b87226cb0a45bd3.sol(103)

[31mViolation[0m for UnrestrictedWrite in contract 'PreSale':
    |        require(msg.value >= (landPriceCurrent() * 5 + INCREASE_RATE * 10));
    |        lands[msg.sender] = lands[msg.sender] + 5;
  > |        landsSold = landsSold + 5;
    |        landsPurchased(msg.sender, msg.value, 5);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3b72ed6425607e51be842d428b87226cb0a45bd3.sol(67)

[31mViolation[0m for UnrestrictedWrite in contract 'PreSale':
    |
    |        lands[msg.sender] = lands[msg.sender] + 1;
  > |        landsSold = landsSold + 1;
    |        
    |        landsPurchased(msg.sender, msg.value, 1);
  at /home/jiaming/mavs_srcs/contract@0x3b72ed6425607e51be842d428b87226cb0a45bd3.sol(78)

[33mWarning[0m for UnrestrictedWrite in contract 'PreSale':
    |        require(paused == false);
    |        require(msg.value >= (landPriceCurrent() * 5 + INCREASE_RATE * 10));
  > |        lands[msg.sender] = lands[msg.sender] + 5;
    |        landsSold = landsSold + 5;
    |        landsPurchased(msg.sender, msg.value, 5);
  at /home/jiaming/mavs_srcs/contract@0x3b72ed6425607e51be842d428b87226cb0a45bd3.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'PreSale':
    |        require(msg.value >= landPriceCurrent());
    |
  > |        lands[msg.sender] = lands[msg.sender] + 1;
    |        landsSold = landsSold + 1;
    |        
  at /home/jiaming/mavs_srcs/contract@0x3b72ed6425607e51be842d428b87226cb0a45bd3.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'PreSale':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x3b72ed6425607e51be842d428b87226cb0a45bd3.sol(39)

[33mWarning[0m for UnrestrictedWrite in contract 'PreSale':
    |
    |        uint256 userlands = lands[targetUser];
  > |        lands[targetUser] = 0;
    |        return userlands;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3b72ed6425607e51be842d428b87226cb0a45bd3.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'PreSale':
    |
    |    function pause() onlyOwner public {
  > |        paused = true;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x3b72ed6425607e51be842d428b87226cb0a45bd3.sol(107)

[33mWarning[0m for UnrestrictedWrite in contract 'PreSale':
    |    
    |    function resume() onlyOwner public {
  > |        paused = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x3b72ed6425607e51be842d428b87226cb0a45bd3.sol(111)


