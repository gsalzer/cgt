Processing contract: /home/jiaming/mavs_srcs/contract@0x2f35e63c3f3868d17aa8611615b383f2364b95e8.sol:CE7
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2f35e63c3f3868d17aa8611615b383f2364b95e8.sol:MigrationAgent
Processing contract: /home/jiaming/mavs_srcs/contract@0x2f35e63c3f3868d17aa8611615b383f2364b95e8.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2f35e63c3f3868d17aa8611615b383f2364b95e8.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2f35e63c3f3868d17aa8611615b383f2364b95e8.sol:ReentrancyGuard
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2f35e63c3f3868d17aa8611615b383f2364b95e8.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'CE7':
    |}
    |
  > |contract CE7 is Pausable, ReentrancyGuard {
    |
    |  using SafeMath for *;
  at /home/jiaming/mavs_srcs/contract@0x2f35e63c3f3868d17aa8611615b383f2364b95e8.sol(151)

[33mWarning[0m for UnhandledException in contract 'CE7':
    |    require(_value > 0);
    |    require(_value <= balances[msg.sender]);
  > |    require(agent.isMigrationAgent());
    |
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x2f35e63c3f3868d17aa8611615b383f2364b95e8.sol(288)

[33mWarning[0m for UnhandledException in contract 'CE7':
    |    totalMigrated = totalMigrated.add(_value);
    |    
  > |    if (!agent.migrateFrom(msg.sender, _value)) {
    |      revert();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2f35e63c3f3868d17aa8611615b383f2364b95e8.sol(294)

[33mWarning[0m for UnhandledException in contract 'CE7':
    |    require(_agent != 0x00);
    |    agent = MigrationAgent(_agent);
  > |    if (!agent.isMigrationAgent()) {
    |      revert();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2f35e63c3f3868d17aa8611615b383f2364b95e8.sol(308)

[33mWarning[0m for UnhandledException in contract 'CE7':
    |    }
    |    
  > |    if (agent.originalSupply() != supply) {
    |      revert();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2f35e63c3f3868d17aa8611615b383f2364b95e8.sol(312)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CE7':
    |    require(_value > 0);
    |    require(_value <= balances[msg.sender]);
  > |    require(agent.isMigrationAgent());
    |
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x2f35e63c3f3868d17aa8611615b383f2364b95e8.sol(288)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CE7':
    |    totalMigrated = totalMigrated.add(_value);
    |    
  > |    if (!agent.migrateFrom(msg.sender, _value)) {
    |      revert();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2f35e63c3f3868d17aa8611615b383f2364b95e8.sol(294)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CE7':
    |    require(_agent != 0x00);
    |    agent = MigrationAgent(_agent);
  > |    if (!agent.isMigrationAgent()) {
    |      revert();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2f35e63c3f3868d17aa8611615b383f2364b95e8.sol(308)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CE7':
    |    }
    |    
  > |    if (agent.originalSupply() != supply) {
    |      revert();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2f35e63c3f3868d17aa8611615b383f2364b95e8.sol(312)

[31mViolation[0m for UnrestrictedWrite in contract 'CE7':
    |  modifier nonReentrant() {
    |    require(!rentrancy_lock);
  > |    rentrancy_lock = true;
    |    _;
    |    rentrancy_lock = false;
  at /home/jiaming/mavs_srcs/contract@0x2f35e63c3f3868d17aa8611615b383f2364b95e8.sol(144)

[33mWarning[0m for UnrestrictedWrite in contract 'CE7':
    |  function transfer(address _to, uint256 _value) external whenNotPaused onlyPayloadSize(2 * 32) returns (bool) {
    |    require(_to != address(0));
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x2f35e63c3f3868d17aa8611615b383f2364b95e8.sol(182)

[33mWarning[0m for UnrestrictedWrite in contract 'CE7':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2f35e63c3f3868d17aa8611615b383f2364b95e8.sol(210)

[33mWarning[0m for UnrestrictedWrite in contract 'CE7':
    |   */
    |  function approve(address _spender, uint256 _value) external whenNotPaused returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2f35e63c3f3868d17aa8611615b383f2364b95e8.sol(226)

[33mWarning[0m for UnrestrictedWrite in contract 'CE7':
    |   */
    |  function increaseApproval (address _spender, uint _addedValue) external whenNotPaused returns (bool success) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2f35e63c3f3868d17aa8611615b383f2364b95e8.sol(248)

[33mWarning[0m for UnrestrictedWrite in contract 'CE7':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x2f35e63c3f3868d17aa8611615b383f2364b95e8.sol(256)

[33mWarning[0m for UnrestrictedWrite in contract 'CE7':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x2f35e63c3f3868d17aa8611615b383f2364b95e8.sol(258)

[33mWarning[0m for UnrestrictedWrite in contract 'CE7':
    |    require(agent.isMigrationAgent());
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    supply = supply.sub(_value);
    |    totalMigrated = totalMigrated.add(_value);
  at /home/jiaming/mavs_srcs/contract@0x2f35e63c3f3868d17aa8611615b383f2364b95e8.sol(290)

[33mWarning[0m for UnrestrictedWrite in contract 'CE7':
    |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));      
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2f35e63c3f3868d17aa8611615b383f2364b95e8.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'CE7':
    |   */
    |  function tweakState() external onlyOwner {
  > |    paused = !paused;
    |    Pause(paused);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x2f35e63c3f3868d17aa8611615b383f2364b95e8.sol(121)

[33mWarning[0m for UnrestrictedWrite in contract 'CE7':
    |  function setMigrationAgent(address _agent) external isUpgrading onlyOwner {
    |    require(_agent != 0x00);
  > |    agent = MigrationAgent(_agent);
    |    if (!agent.isMigrationAgent()) {
    |      revert();
  at /home/jiaming/mavs_srcs/contract@0x2f35e63c3f3868d17aa8611615b383f2364b95e8.sol(307)

[33mWarning[0m for UnrestrictedWrite in contract 'CE7':
    |   */
    |  function tweakUpgrading() external onlyOwner {
  > |      upgrading = !upgrading;
    |      Upgrading(upgrading);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x2f35e63c3f3868d17aa8611615b383f2364b95e8.sol(322)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x2f35e63c3f3868d17aa8611615b383f2364b95e8.sol(56)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x2f35e63c3f3868d17aa8611615b383f2364b95e8.sol(57)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));      
    |    owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x2f35e63c3f3868d17aa8611615b383f2364b95e8.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));      
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2f35e63c3f3868d17aa8611615b383f2364b95e8.sol(84)

[33mWarning[0m for LockedEther in contract 'Pausable':
    |}
    |
  > |contract Pausable is Ownable {
    |  
    |  event Pause(bool indexed state);
  at /home/jiaming/mavs_srcs/contract@0x2f35e63c3f3868d17aa8611615b383f2364b95e8.sol(89)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x2f35e63c3f3868d17aa8611615b383f2364b95e8.sol(57)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));      
    |    owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x2f35e63c3f3868d17aa8611615b383f2364b95e8.sol(82)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev return the current state of contract
    |   */
  > |  function Paused() external constant returns(bool){ return paused; }
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x2f35e63c3f3868d17aa8611615b383f2364b95e8.sol(114)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * on first call and returns to normal state on second call
    |   */
  > |  function tweakState() external onlyOwner {
    |    paused = !paused;
    |    Pause(paused);
  at /home/jiaming/mavs_srcs/contract@0x2f35e63c3f3868d17aa8611615b383f2364b95e8.sol(120)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));      
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2f35e63c3f3868d17aa8611615b383f2364b95e8.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function tweakState() external onlyOwner {
  > |    paused = !paused;
    |    Pause(paused);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x2f35e63c3f3868d17aa8611615b383f2364b95e8.sol(121)

[33mWarning[0m for LockedEther in contract 'ReentrancyGuard':
    |}
    |
  > |contract ReentrancyGuard {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x2f35e63c3f3868d17aa8611615b383f2364b95e8.sol(127)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.18;
    |
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) pure internal returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x2f35e63c3f3868d17aa8611615b383f2364b95e8.sol(10)


