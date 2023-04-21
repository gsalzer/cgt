Processing contract: /home/jiaming/mavs_srcs/contract@0x29aa20fb9b23421e310bdb8a7cfb81d7fbb4a1b3.sol:BitcoineumInterface
Processing contract: /home/jiaming/mavs_srcs/contract@0x29aa20fb9b23421e310bdb8a7cfb81d7fbb4a1b3.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x29aa20fb9b23421e310bdb8a7cfb81d7fbb4a1b3.sol:ReentrancyGuard
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x29aa20fb9b23421e310bdb8a7cfb81d7fbb4a1b3.sol:SharkPool
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
  at /home/jiaming/mavs_srcs/contract@0x29aa20fb9b23421e310bdb8a7cfb81d7fbb4a1b3.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x29aa20fb9b23421e310bdb8a7cfb81d7fbb4a1b3.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
    |      owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x29aa20fb9b23421e310bdb8a7cfb81d7fbb4a1b3.sol(34)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x29aa20fb9b23421e310bdb8a7cfb81d7fbb4a1b3.sol(36)

[33mWarning[0m for LockedEther in contract 'ReentrancyGuard':
    | * mark it `external`.
    | */
  > |contract ReentrancyGuard {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x29aa20fb9b23421e310bdb8a7cfb81d7fbb4a1b3.sol(49)

[31mViolation[0m for DAO in contract 'SharkPool':
    |        // Now we have a total contribution amount
    |        attempts[_blockNum] = total_attempt;
  > |        base_contract.mine.value(total_attempt)();
    |        mined_blocks = mined_blocks + 1;
    |     }
  at /home/jiaming/mavs_srcs/contract@0x29aa20fb9b23421e310bdb8a7cfb81d7fbb4a1b3.sol(295)

[33mWarning[0m for LockedEther in contract 'SharkPool':
    |// http://www.bitcoineum.com/
    |
  > |contract SharkPool is Ownable, ReentrancyGuard {
    |
    |    string constant public pool_name = "SharkPool 100";
  at /home/jiaming/mavs_srcs/contract@0x29aa20fb9b23421e310bdb8a7cfb81d7fbb4a1b3.sol(90)

[31mViolation[0m for MissingInputValidation in contract 'SharkPool':
    |    }
    |
  > |    mapping (address => user) public users;
    |    mapping (uint256 => uint256) public attempts;
    |    mapping(address => uint256) balances;
  at /home/jiaming/mavs_srcs/contract@0x29aa20fb9b23421e310bdb8a7cfb81d7fbb4a1b3.sol(120)

[31mViolation[0m for MissingInputValidation in contract 'SharkPool':
    |
    |    mapping (address => user) public users;
  > |    mapping (uint256 => uint256) public attempts;
    |    mapping(address => uint256) balances;
    |    uint8[] slots;
  at /home/jiaming/mavs_srcs/contract@0x29aa20fb9b23421e310bdb8a7cfb81d7fbb4a1b3.sol(121)

[31mViolation[0m for MissingInputValidation in contract 'SharkPool':
    |    address[256] public active_users; // Should equal max_users
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |      return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x29aa20fb9b23421e310bdb8a7cfb81d7fbb4a1b3.sol(126)

[31mViolation[0m for MissingInputValidation in contract 'SharkPool':
    |
    |
  > |    function find_contribution(address _who) constant external returns (uint256, uint256, uint256, uint256, uint256) {
    |      if (users[_who].start_block > 0) {
    |         user memory u = users[_who];
  at /home/jiaming/mavs_srcs/contract@0x29aa20fb9b23421e310bdb8a7cfb81d7fbb4a1b3.sol(137)

[31mViolation[0m for MissingInputValidation in contract 'SharkPool':
    |   }
    |
  > |   function claim(uint256 _blockNumber, address forCreditTo)
    |                  nonReentrant
    |                  external returns (bool) {
  at /home/jiaming/mavs_srcs/contract@0x29aa20fb9b23421e310bdb8a7cfb81d7fbb4a1b3.sol(300)

[31mViolation[0m for MissingInputValidation in contract 'SharkPool':
    |     }
    |
  > |   function checkMiningAttempt(uint256 _blockNum, address _sender) constant public returns (bool) {
    |      return base_contract.checkMiningAttempt(_blockNum, _sender);
    |   }
  at /home/jiaming/mavs_srcs/contract@0x29aa20fb9b23421e310bdb8a7cfb81d7fbb4a1b3.sol(337)

[31mViolation[0m for MissingInputValidation in contract 'SharkPool':
    |   }
    |   
  > |   function checkWinning(uint256 _blockNum) constant public returns (bool) {
    |     return base_contract.checkWinning(_blockNum);
    |   }
  at /home/jiaming/mavs_srcs/contract@0x29aa20fb9b23421e310bdb8a7cfb81d7fbb4a1b3.sol(341)

[33mWarning[0m for MissingInputValidation in contract 'SharkPool':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x29aa20fb9b23421e310bdb8a7cfb81d7fbb4a1b3.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'SharkPool':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
    |      owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x29aa20fb9b23421e310bdb8a7cfb81d7fbb4a1b3.sol(34)

[33mWarning[0m for MissingInputValidation in contract 'SharkPool':
    |// http://www.bitcoineum.com/
    |
  > |contract SharkPool is Ownable, ReentrancyGuard {
    |
    |    string constant public pool_name = "SharkPool 100";
  at /home/jiaming/mavs_srcs/contract@0x29aa20fb9b23421e310bdb8a7cfb81d7fbb4a1b3.sol(90)

[33mWarning[0m for MissingInputValidation in contract 'SharkPool':
    |contract SharkPool is Ownable, ReentrancyGuard {
    |
  > |    string constant public pool_name = "SharkPool 100";
    |
    |    // Percentage of BTE pool takes for operations
  at /home/jiaming/mavs_srcs/contract@0x29aa20fb9b23421e310bdb8a7cfb81d7fbb4a1b3.sol(92)

[33mWarning[0m for MissingInputValidation in contract 'SharkPool':
    |
    |    // Percentage of BTE pool takes for operations
  > |    uint256 public pool_percentage = 0;
    |
    |    // Limiting users because of gas limits
  at /home/jiaming/mavs_srcs/contract@0x29aa20fb9b23421e310bdb8a7cfb81d7fbb4a1b3.sol(95)

[33mWarning[0m for MissingInputValidation in contract 'SharkPool':
    |    // Limiting users because of gas limits
    |    // I would not increase this value it could make the pool unstable
  > |    uint256 constant public max_users = 100;
    |
    |    // Track total users to switch to degraded case when contract is full
  at /home/jiaming/mavs_srcs/contract@0x29aa20fb9b23421e310bdb8a7cfb81d7fbb4a1b3.sol(99)

[33mWarning[0m for MissingInputValidation in contract 'SharkPool':
    |
    |    // Track total users to switch to degraded case when contract is full
  > |    uint256 public total_users = 0;
    |
    |    uint256 public constant divisible_units = 10000000;
  at /home/jiaming/mavs_srcs/contract@0x29aa20fb9b23421e310bdb8a7cfb81d7fbb4a1b3.sol(102)

[33mWarning[0m for MissingInputValidation in contract 'SharkPool':
    |    uint256 public total_users = 0;
    |
  > |    uint256 public constant divisible_units = 10000000;
    |
    |    // How long will a payment event mine blocks for you
  at /home/jiaming/mavs_srcs/contract@0x29aa20fb9b23421e310bdb8a7cfb81d7fbb4a1b3.sol(104)

[33mWarning[0m for MissingInputValidation in contract 'SharkPool':
    |
    |    // How long will a payment event mine blocks for you
  > |    uint256 public contract_period = 100;
    |    uint256 public mined_blocks = 1;
    |    uint256 public claimed_blocks = 1;
  at /home/jiaming/mavs_srcs/contract@0x29aa20fb9b23421e310bdb8a7cfb81d7fbb4a1b3.sol(107)

[33mWarning[0m for MissingInputValidation in contract 'SharkPool':
    |    // How long will a payment event mine blocks for you
    |    uint256 public contract_period = 100;
  > |    uint256 public mined_blocks = 1;
    |    uint256 public claimed_blocks = 1;
    |    uint256 public blockCreationRate = 0;
  at /home/jiaming/mavs_srcs/contract@0x29aa20fb9b23421e310bdb8a7cfb81d7fbb4a1b3.sol(108)

[33mWarning[0m for MissingInputValidation in contract 'SharkPool':
    |    uint256 public contract_period = 100;
    |    uint256 public mined_blocks = 1;
  > |    uint256 public claimed_blocks = 1;
    |    uint256 public blockCreationRate = 0;
    |
  at /home/jiaming/mavs_srcs/contract@0x29aa20fb9b23421e310bdb8a7cfb81d7fbb4a1b3.sol(109)

[33mWarning[0m for MissingInputValidation in contract 'SharkPool':
    |    uint256 public mined_blocks = 1;
    |    uint256 public claimed_blocks = 1;
  > |    uint256 public blockCreationRate = 0;
    |
    |    BitcoineumInterface base_contract;
  at /home/jiaming/mavs_srcs/contract@0x29aa20fb9b23421e310bdb8a7cfb81d7fbb4a1b3.sol(110)

[33mWarning[0m for MissingInputValidation in contract 'SharkPool':
    |    mapping(address => uint256) balances;
    |    uint8[] slots;
  > |    address[256] public active_users; // Should equal max_users
    |
    |    function balanceOf(address _owner) constant returns (uint256 balance) {
  at /home/jiaming/mavs_srcs/contract@0x29aa20fb9b23421e310bdb8a7cfb81d7fbb4a1b3.sol(124)

[33mWarning[0m for MissingInputValidation in contract 'SharkPool':
    |    }
    |
  > |    function set_pool_percentage(uint8 _percentage) external nonReentrant onlyOwner {
    |       // Just in case owner is compromised
    |       require(_percentage < 6);
  at /home/jiaming/mavs_srcs/contract@0x29aa20fb9b23421e310bdb8a7cfb81d7fbb4a1b3.sol(130)

[33mWarning[0m for MissingInputValidation in contract 'SharkPool':
    |    }
    |
  > |    function allocate_slot(address _who) internal {
    |       if(total_users < max_users) { 
    |            // Just push into active_users
  at /home/jiaming/mavs_srcs/contract@0x29aa20fb9b23421e310bdb8a7cfb81d7fbb4a1b3.sol(154)

[33mWarning[0m for MissingInputValidation in contract 'SharkPool':
    |    }
    |
  > |     function external_to_internal_block_number(uint256 _externalBlockNum) public constant returns (uint256) {
    |        // blockCreationRate is > 0
    |        return _externalBlockNum / blockCreationRate;
  at /home/jiaming/mavs_srcs/contract@0x29aa20fb9b23421e310bdb8a7cfb81d7fbb4a1b3.sol(172)

[33mWarning[0m for MissingInputValidation in contract 'SharkPool':
    |     }
    |
  > |     function available_slots() public constant returns (uint256) {
    |        if (total_users < max_users) {
    |            return max_users - total_users;
  at /home/jiaming/mavs_srcs/contract@0x29aa20fb9b23421e310bdb8a7cfb81d7fbb4a1b3.sol(177)

[33mWarning[0m for MissingInputValidation in contract 'SharkPool':
    |   );
    |
  > |    function get_bitcoineum_contract_address() public constant returns (address) {
    |       return 0x73dD069c299A5d691E9836243BcaeC9c8C1D8734; // Production
    |    
  at /home/jiaming/mavs_srcs/contract@0x29aa20fb9b23421e310bdb8a7cfb81d7fbb4a1b3.sol(189)

[33mWarning[0m for MissingInputValidation in contract 'SharkPool':
    |    // and balance transfer proportional bte
    |    // balance should be 0 aftwards in a perfect world
  > |    function distribute_reward(uint256 _totalAttempt, uint256 _balance) internal {
    |      uint256 remaining_balance = _balance;
    |      for (uint8 i = 0; i < total_users; i++) {
  at /home/jiaming/mavs_srcs/contract@0x29aa20fb9b23421e310bdb8a7cfb81d7fbb4a1b3.sol(198)

[33mWarning[0m for MissingInputValidation in contract 'SharkPool':
    |    }
    |
  > |    function current_external_block() public constant returns (uint256) {
    |        return block.number;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x29aa20fb9b23421e310bdb8a7cfb81d7fbb4a1b3.sol(220)

[33mWarning[0m for MissingInputValidation in contract 'SharkPool':
    |
    |
  > |    function calculate_minimum_contribution() public constant returns (uint256)  {
    |       return base_contract.currentDifficultyWei() / 10000000 * contract_period;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x29aa20fb9b23421e310bdb8a7cfb81d7fbb4a1b3.sol(225)

[33mWarning[0m for MissingInputValidation in contract 'SharkPool':
    |    
    |    // Proxy mining to token
  > |   function mine() external nonReentrant
    |   {
    |     // Did someone already try to mine this block?
  at /home/jiaming/mavs_srcs/contract@0x29aa20fb9b23421e310bdb8a7cfb81d7fbb4a1b3.sol(261)

[33mWarning[0m for MissingInputValidation in contract 'SharkPool':
    |                  }
    |
  > |   function do_redemption() internal {
    |     uint256 balance = balances[msg.sender];
    |     if (balance > 0) {
  at /home/jiaming/mavs_srcs/contract@0x29aa20fb9b23421e310bdb8a7cfb81d7fbb4a1b3.sol(319)

[33mWarning[0m for MissingInputValidation in contract 'SharkPool':
    |   }
    |
  > |   function redeem() external nonReentrant
    |     {
    |        do_redemption();
  at /home/jiaming/mavs_srcs/contract@0x29aa20fb9b23421e310bdb8a7cfb81d7fbb4a1b3.sol(332)

[33mWarning[0m for UnhandledException in contract 'SharkPool':
    |
    |    function calculate_minimum_contribution() public constant returns (uint256)  {
  > |       return base_contract.currentDifficultyWei() / 10000000 * contract_period;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x29aa20fb9b23421e310bdb8a7cfb81d7fbb4a1b3.sol(226)

[33mWarning[0m for UnhandledException in contract 'SharkPool':
    |     // Did someone already try to mine this block?
    |     uint256 _blockNum = external_to_internal_block_number(current_external_block());
  > |     require(!base_contract.checkMiningAttempt(_blockNum, this));
    |
    |     // Alright nobody mined lets iterate over our active_users
  at /home/jiaming/mavs_srcs/contract@0x29aa20fb9b23421e310bdb8a7cfb81d7fbb4a1b3.sol(265)

[33mWarning[0m for UnhandledException in contract 'SharkPool':
    |        // Now we have a total contribution amount
    |        attempts[_blockNum] = total_attempt;
  > |        base_contract.mine.value(total_attempt)();
    |        mined_blocks = mined_blocks + 1;
    |     }
  at /home/jiaming/mavs_srcs/contract@0x29aa20fb9b23421e310bdb8a7cfb81d7fbb4a1b3.sol(295)

[33mWarning[0m for UnhandledException in contract 'SharkPool':
    |                  
    |                  // Did we win the block in question
  > |                  require(base_contract.checkWinning(_blockNumber));
    |
    |                  uint256 initial_balance = base_contract.balanceOf(this);
  at /home/jiaming/mavs_srcs/contract@0x29aa20fb9b23421e310bdb8a7cfb81d7fbb4a1b3.sol(305)

[33mWarning[0m for UnhandledException in contract 'SharkPool':
    |                  require(base_contract.checkWinning(_blockNumber));
    |
  > |                  uint256 initial_balance = base_contract.balanceOf(this);
    |
    |                  // We won let's get our reward
  at /home/jiaming/mavs_srcs/contract@0x29aa20fb9b23421e310bdb8a7cfb81d7fbb4a1b3.sol(307)

[33mWarning[0m for UnhandledException in contract 'SharkPool':
    |
    |                  // We won let's get our reward
  > |                  base_contract.claim(_blockNumber, this);
    |
    |                  uint256 balance = base_contract.balanceOf(this);
  at /home/jiaming/mavs_srcs/contract@0x29aa20fb9b23421e310bdb8a7cfb81d7fbb4a1b3.sol(310)

[33mWarning[0m for UnhandledException in contract 'SharkPool':
    |                  base_contract.claim(_blockNumber, this);
    |
  > |                  uint256 balance = base_contract.balanceOf(this);
    |                  uint256 total_attempt = attempts[_blockNumber];
    |
  at /home/jiaming/mavs_srcs/contract@0x29aa20fb9b23421e310bdb8a7cfb81d7fbb4a1b3.sol(312)

[33mWarning[0m for UnhandledException in contract 'SharkPool':
    |        uint256 remainder = balance - owner_cut;
    |        if (owner_cut > 0) {
  > |            base_contract.transfer(owner, owner_cut);
    |        }
    |        base_contract.transfer(msg.sender, remainder);
  at /home/jiaming/mavs_srcs/contract@0x29aa20fb9b23421e310bdb8a7cfb81d7fbb4a1b3.sol(325)

[33mWarning[0m for UnhandledException in contract 'SharkPool':
    |            base_contract.transfer(owner, owner_cut);
    |        }
  > |        base_contract.transfer(msg.sender, remainder);
    |        balances[msg.sender] = 0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x29aa20fb9b23421e310bdb8a7cfb81d7fbb4a1b3.sol(327)

[33mWarning[0m for UnhandledException in contract 'SharkPool':
    |
    |   function checkMiningAttempt(uint256 _blockNum, address _sender) constant public returns (bool) {
  > |      return base_contract.checkMiningAttempt(_blockNum, _sender);
    |   }
    |   
  at /home/jiaming/mavs_srcs/contract@0x29aa20fb9b23421e310bdb8a7cfb81d7fbb4a1b3.sol(338)

[33mWarning[0m for UnhandledException in contract 'SharkPool':
    |   
    |   function checkWinning(uint256 _blockNum) constant public returns (bool) {
  > |     return base_contract.checkWinning(_blockNum);
    |   }
    |
  at /home/jiaming/mavs_srcs/contract@0x29aa20fb9b23421e310bdb8a7cfb81d7fbb4a1b3.sol(342)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SharkPool':
    |
    |    function calculate_minimum_contribution() public constant returns (uint256)  {
  > |       return base_contract.currentDifficultyWei() / 10000000 * contract_period;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x29aa20fb9b23421e310bdb8a7cfb81d7fbb4a1b3.sol(226)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SharkPool':
    |     // Did someone already try to mine this block?
    |     uint256 _blockNum = external_to_internal_block_number(current_external_block());
  > |     require(!base_contract.checkMiningAttempt(_blockNum, this));
    |
    |     // Alright nobody mined lets iterate over our active_users
  at /home/jiaming/mavs_srcs/contract@0x29aa20fb9b23421e310bdb8a7cfb81d7fbb4a1b3.sol(265)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SharkPool':
    |                  
    |                  // Did we win the block in question
  > |                  require(base_contract.checkWinning(_blockNumber));
    |
    |                  uint256 initial_balance = base_contract.balanceOf(this);
  at /home/jiaming/mavs_srcs/contract@0x29aa20fb9b23421e310bdb8a7cfb81d7fbb4a1b3.sol(305)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SharkPool':
    |                  require(base_contract.checkWinning(_blockNumber));
    |
  > |                  uint256 initial_balance = base_contract.balanceOf(this);
    |
    |                  // We won let's get our reward
  at /home/jiaming/mavs_srcs/contract@0x29aa20fb9b23421e310bdb8a7cfb81d7fbb4a1b3.sol(307)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SharkPool':
    |
    |                  // We won let's get our reward
  > |                  base_contract.claim(_blockNumber, this);
    |
    |                  uint256 balance = base_contract.balanceOf(this);
  at /home/jiaming/mavs_srcs/contract@0x29aa20fb9b23421e310bdb8a7cfb81d7fbb4a1b3.sol(310)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SharkPool':
    |                  base_contract.claim(_blockNumber, this);
    |
  > |                  uint256 balance = base_contract.balanceOf(this);
    |                  uint256 total_attempt = attempts[_blockNumber];
    |
  at /home/jiaming/mavs_srcs/contract@0x29aa20fb9b23421e310bdb8a7cfb81d7fbb4a1b3.sol(312)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SharkPool':
    |        uint256 remainder = balance - owner_cut;
    |        if (owner_cut > 0) {
  > |            base_contract.transfer(owner, owner_cut);
    |        }
    |        base_contract.transfer(msg.sender, remainder);
  at /home/jiaming/mavs_srcs/contract@0x29aa20fb9b23421e310bdb8a7cfb81d7fbb4a1b3.sol(325)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SharkPool':
    |            base_contract.transfer(owner, owner_cut);
    |        }
  > |        base_contract.transfer(msg.sender, remainder);
    |        balances[msg.sender] = 0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x29aa20fb9b23421e310bdb8a7cfb81d7fbb4a1b3.sol(327)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SharkPool':
    |
    |   function checkMiningAttempt(uint256 _blockNum, address _sender) constant public returns (bool) {
  > |      return base_contract.checkMiningAttempt(_blockNum, _sender);
    |   }
    |   
  at /home/jiaming/mavs_srcs/contract@0x29aa20fb9b23421e310bdb8a7cfb81d7fbb4a1b3.sol(338)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SharkPool':
    |   
    |   function checkWinning(uint256 _blockNum) constant public returns (bool) {
  > |     return base_contract.checkWinning(_blockNum);
    |   }
    |
  at /home/jiaming/mavs_srcs/contract@0x29aa20fb9b23421e310bdb8a7cfb81d7fbb4a1b3.sol(342)

[31mViolation[0m for UnrestrictedWrite in contract 'SharkPool':
    |
    |/**
  > | * @title Ownable
    | * @dev The Ownable contract has an owner address, and provides basic authorization control
    | * functions, this simplifies the implementation of "user permissions".
  at /home/jiaming/mavs_srcs/contract@0x29aa20fb9b23421e310bdb8a7cfb81d7fbb4a1b3.sol(4)

[31mViolation[0m for UnrestrictedWrite in contract 'SharkPool':
    |  modifier nonReentrant() {
    |    require(!rentrancy_lock);
  > |    rentrancy_lock = true;
    |    _;
    |    rentrancy_lock = false;
  at /home/jiaming/mavs_srcs/contract@0x29aa20fb9b23421e310bdb8a7cfb81d7fbb4a1b3.sol(66)

[31mViolation[0m for UnrestrictedWrite in contract 'SharkPool':
    |    rentrancy_lock = true;
    |    _;
  > |    rentrancy_lock = false;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x29aa20fb9b23421e310bdb8a7cfb81d7fbb4a1b3.sol(68)

[31mViolation[0m for UnrestrictedWrite in contract 'SharkPool':
    |       if(total_users < max_users) { 
    |            // Just push into active_users
  > |            active_users[total_users] = _who;
    |            total_users += 1;
    |          } else {
  at /home/jiaming/mavs_srcs/contract@0x29aa20fb9b23421e310bdb8a7cfb81d7fbb4a1b3.sol(157)

[31mViolation[0m for UnrestrictedWrite in contract 'SharkPool':
    |            // Just push into active_users
    |            active_users[total_users] = _who;
  > |            total_users += 1;
    |          } else {
    |            // The maximum users have been reached, can we allocate a free space?
  at /home/jiaming/mavs_srcs/contract@0x29aa20fb9b23421e310bdb8a7cfb81d7fbb4a1b3.sol(158)

[31mViolation[0m for UnrestrictedWrite in contract 'SharkPool':
    |            } else {
    |               uint8 location = slots[slots.length-1];
  > |               active_users[location] = _who;
    |               delete slots[slots.length-1];
    |            }
  at /home/jiaming/mavs_srcs/contract@0x29aa20fb9b23421e310bdb8a7cfb81d7fbb4a1b3.sol(166)

[31mViolation[0m for UnrestrictedWrite in contract 'SharkPool':
    |               uint8 location = slots[slots.length-1];
    |               active_users[location] = _who;
  > |               delete slots[slots.length-1];
    |            }
    |          }
  at /home/jiaming/mavs_srcs/contract@0x29aa20fb9b23421e310bdb8a7cfb81d7fbb4a1b3.sol(167)

[31mViolation[0m for UnrestrictedWrite in contract 'SharkPool':
    |                 payout = remaining_balance;
    |              }
  > |              balances[user_address] = balances[user_address] + payout;
    |              remaining_balance = remaining_balance - payout;
    |          }
  at /home/jiaming/mavs_srcs/contract@0x29aa20fb9b23421e310bdb8a7cfb81d7fbb4a1b3.sol(209)

[31mViolation[0m for UnrestrictedWrite in contract 'SharkPool':
    |                // but we limit to 20 to prevent gas issues on slot insert
    |                if (total_ejected < 10) {
  > |                    delete active_users[i];
    |                    slots.push(i);
    |                    delete users[active_users[i]];
  at /home/jiaming/mavs_srcs/contract@0x29aa20fb9b23421e310bdb8a7cfb81d7fbb4a1b3.sol(281)

[31mViolation[0m for UnrestrictedWrite in contract 'SharkPool':
    |                if (total_ejected < 10) {
    |                    delete active_users[i];
  > |                    slots.push(i);
    |                    delete users[active_users[i]];
    |                    total_ejected = total_ejected + 1;
  at /home/jiaming/mavs_srcs/contract@0x29aa20fb9b23421e310bdb8a7cfb81d7fbb4a1b3.sol(282)

[31mViolation[0m for UnrestrictedWrite in contract 'SharkPool':
    |                    delete active_users[i];
    |                    slots.push(i);
  > |                    delete users[active_users[i]];
    |                    total_ejected = total_ejected + 1;
    |                }
  at /home/jiaming/mavs_srcs/contract@0x29aa20fb9b23421e310bdb8a7cfb81d7fbb4a1b3.sol(283)

[31mViolation[0m for UnrestrictedWrite in contract 'SharkPool':
    |     if (total_attempt > 0) {
    |        // Now we have a total contribution amount
  > |        attempts[_blockNum] = total_attempt;
    |        base_contract.mine.value(total_attempt)();
    |        mined_blocks = mined_blocks + 1;
  at /home/jiaming/mavs_srcs/contract@0x29aa20fb9b23421e310bdb8a7cfb81d7fbb4a1b3.sol(294)

[31mViolation[0m for UnrestrictedWrite in contract 'SharkPool':
    |        attempts[_blockNum] = total_attempt;
    |        base_contract.mine.value(total_attempt)();
  > |        mined_blocks = mined_blocks + 1;
    |     }
    |   }
  at /home/jiaming/mavs_srcs/contract@0x29aa20fb9b23421e310bdb8a7cfb81d7fbb4a1b3.sol(296)

[31mViolation[0m for UnrestrictedWrite in contract 'SharkPool':
    |
    |                  distribute_reward(total_attempt, balance - initial_balance);
  > |                  claimed_blocks = claimed_blocks + 1;
    |                  }
    |
  at /home/jiaming/mavs_srcs/contract@0x29aa20fb9b23421e310bdb8a7cfb81d7fbb4a1b3.sol(316)

[33mWarning[0m for UnrestrictedWrite in contract 'SharkPool':
    |        }
    |        base_contract.transfer(msg.sender, remainder);
  > |        balances[msg.sender] = 0;
    |    }
    |   }
  at /home/jiaming/mavs_srcs/contract@0x29aa20fb9b23421e310bdb8a7cfb81d7fbb4a1b3.sol(328)

[33mWarning[0m for UnrestrictedWrite in contract 'SharkPool':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x29aa20fb9b23421e310bdb8a7cfb81d7fbb4a1b3.sol(36)

[33mWarning[0m for UnrestrictedWrite in contract 'SharkPool':
    |    rentrancy_lock = true;
    |    _;
  > |    rentrancy_lock = false;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x29aa20fb9b23421e310bdb8a7cfb81d7fbb4a1b3.sol(68)

[33mWarning[0m for UnrestrictedWrite in contract 'SharkPool':
    |       // Just in case owner is compromised
    |       require(_percentage < 6);
  > |       pool_percentage = _percentage;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x29aa20fb9b23421e310bdb8a7cfb81d7fbb4a1b3.sol(133)


