Processing contract: /home/jiaming/mavs_srcs/contract@0x959b5a586825e3a303ec89c8cbea3cede18e9131.sol:BurnableToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x959b5a586825e3a303ec89c8cbea3cede18e9131.sol:DOCK
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x959b5a586825e3a303ec89c8cbea3cede18e9131.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x959b5a586825e3a303ec89c8cbea3cede18e9131.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x959b5a586825e3a303ec89c8cbea3cede18e9131.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x959b5a586825e3a303ec89c8cbea3cede18e9131.sol:ReleasableToken
Processing contract: /home/jiaming/mavs_srcs/contract@0x959b5a586825e3a303ec89c8cbea3cede18e9131.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x959b5a586825e3a303ec89c8cbea3cede18e9131.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BurnableToken':
    |
    |
  > |contract BurnableToken is StandardToken {
    |
    |  address public constant BURN_ADDRESS = 0;
  at /home/jiaming/mavs_srcs/contract@0x959b5a586825e3a303ec89c8cbea3cede18e9131.sol(137)

[31mViolation[0m for MissingInputValidation in contract 'BurnableToken':
    |  }
    |
  > |  function transferFrom(address _from, address _to, uint _value) returns (bool success) {
    |    uint _allowance = allowed[_from][msg.sender];
    |
  at /home/jiaming/mavs_srcs/contract@0x959b5a586825e3a303ec89c8cbea3cede18e9131.sol(104)

[31mViolation[0m for MissingInputValidation in contract 'BurnableToken':
    |  }
    |
  > |  function balanceOf(address _owner) constant returns (uint balance) {
    |    return balances[_owner];
    |  }
  at /home/jiaming/mavs_srcs/contract@0x959b5a586825e3a303ec89c8cbea3cede18e9131.sol(114)

[31mViolation[0m for MissingInputValidation in contract 'BurnableToken':
    |  }
    |
  > |  function allowance(address _owner, address _spender) constant returns (uint remaining) {
    |    return allowed[_owner][_spender];
    |  }
  at /home/jiaming/mavs_srcs/contract@0x959b5a586825e3a303ec89c8cbea3cede18e9131.sol(131)

[33mWarning[0m for MissingInputValidation in contract 'BurnableToken':
    |  }
    |
  > |  function safeSub(uint a, uint b) internal returns (uint) {
    |    assert(b <= a);
    |    return a - b;
  at /home/jiaming/mavs_srcs/contract@0x959b5a586825e3a303ec89c8cbea3cede18e9131.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'BurnableToken':
    |  }
    |
  > |  function safeAdd(uint a, uint b) internal returns (uint) {
    |    uint c = a + b;
    |    assert(c>=a && c>=b);
  at /home/jiaming/mavs_srcs/contract@0x959b5a586825e3a303ec89c8cbea3cede18e9131.sol(30)

[33mWarning[0m for MissingInputValidation in contract 'BurnableToken':
    | */
    |contract ERC20Basic {
  > |  uint256 public totalSupply;
    |  function balanceOf(address who) constant returns (uint256);
    |  function transfer(address to, uint256 value) returns (bool);
  at /home/jiaming/mavs_srcs/contract@0x959b5a586825e3a303ec89c8cbea3cede18e9131.sol(60)

[33mWarning[0m for MissingInputValidation in contract 'BurnableToken':
    |
    |  /* Interface declaration */
  > |  function isToken() public constant returns (bool weAre) {
    |    return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x959b5a586825e3a303ec89c8cbea3cede18e9131.sol(93)

[33mWarning[0m for MissingInputValidation in contract 'BurnableToken':
    |contract BurnableToken is StandardToken {
    |
  > |  address public constant BURN_ADDRESS = 0;
    |
    |  /** How many tokens we burned */
  at /home/jiaming/mavs_srcs/contract@0x959b5a586825e3a303ec89c8cbea3cede18e9131.sol(139)

[31mViolation[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |  function transfer(address _to, uint _value) returns (bool success) {
  > |    balances[msg.sender] = safeSub(balances[msg.sender], _value);
    |    balances[_to] = safeAdd(balances[_to], _value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x959b5a586825e3a303ec89c8cbea3cede18e9131.sol(98)

[31mViolation[0m for UnrestrictedWrite in contract 'BurnableToken':
    |  function transfer(address _to, uint _value) returns (bool success) {
    |    balances[msg.sender] = safeSub(balances[msg.sender], _value);
  > |    balances[_to] = safeAdd(balances[_to], _value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x959b5a586825e3a303ec89c8cbea3cede18e9131.sol(99)

[31mViolation[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    uint _allowance = allowed[_from][msg.sender];
    |
  > |    balances[_to] = safeAdd(balances[_to], _value);
    |    balances[_from] = safeSub(balances[_from], _value);
    |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
  at /home/jiaming/mavs_srcs/contract@0x959b5a586825e3a303ec89c8cbea3cede18e9131.sol(107)

[31mViolation[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |    balances[_to] = safeAdd(balances[_to], _value);
  > |    balances[_from] = safeSub(balances[_from], _value);
    |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x959b5a586825e3a303ec89c8cbea3cede18e9131.sol(108)

[31mViolation[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    balances[_to] = safeAdd(balances[_to], _value);
    |    balances[_from] = safeSub(balances[_from], _value);
  > |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x959b5a586825e3a303ec89c8cbea3cede18e9131.sol(109)

[31mViolation[0m for UnrestrictedWrite in contract 'BurnableToken':
    |  function burn(uint burnAmount) {
    |    address burner = msg.sender;
  > |    balances[burner] = safeSub(balances[burner], burnAmount);
    |    totalSupply = safeSub(totalSupply, burnAmount);
    |    Burned(burner, burnAmount);
  at /home/jiaming/mavs_srcs/contract@0x959b5a586825e3a303ec89c8cbea3cede18e9131.sol(150)

[31mViolation[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    address burner = msg.sender;
    |    balances[burner] = safeSub(balances[burner], burnAmount);
  > |    totalSupply = safeSub(totalSupply, burnAmount);
    |    Burned(burner, burnAmount);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x959b5a586825e3a303ec89c8cbea3cede18e9131.sol(151)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x959b5a586825e3a303ec89c8cbea3cede18e9131.sol(126)

[31mViolation[0m for LockedEther in contract 'DOCK':
    | *
    | */
  > |contract DOCK is ReleasableToken, BurnableToken {
    |
    |  /** Name and symbol were updated. */
  at /home/jiaming/mavs_srcs/contract@0x959b5a586825e3a303ec89c8cbea3cede18e9131.sol(273)

[31mViolation[0m for UnrestrictedWrite in contract 'DOCK':
    | *
    | */
  > |contract DOCK is ReleasableToken, BurnableToken {
    |
    |  /** Name and symbol were updated. */
  at /home/jiaming/mavs_srcs/contract@0x959b5a586825e3a303ec89c8cbea3cede18e9131.sol(273)

[33mWarning[0m for UnrestrictedWrite in contract 'DOCK':
    |
    |  function transfer(address _to, uint _value) returns (bool success) {
  > |    balances[msg.sender] = safeSub(balances[msg.sender], _value);
    |    balances[_to] = safeAdd(balances[_to], _value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x959b5a586825e3a303ec89c8cbea3cede18e9131.sol(98)

[33mWarning[0m for UnrestrictedWrite in contract 'DOCK':
    |  function transfer(address _to, uint _value) returns (bool success) {
    |    balances[msg.sender] = safeSub(balances[msg.sender], _value);
  > |    balances[_to] = safeAdd(balances[_to], _value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x959b5a586825e3a303ec89c8cbea3cede18e9131.sol(99)

[33mWarning[0m for UnrestrictedWrite in contract 'DOCK':
    |    uint _allowance = allowed[_from][msg.sender];
    |
  > |    balances[_to] = safeAdd(balances[_to], _value);
    |    balances[_from] = safeSub(balances[_from], _value);
    |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
  at /home/jiaming/mavs_srcs/contract@0x959b5a586825e3a303ec89c8cbea3cede18e9131.sol(107)

[33mWarning[0m for UnrestrictedWrite in contract 'DOCK':
    |
    |    balances[_to] = safeAdd(balances[_to], _value);
  > |    balances[_from] = safeSub(balances[_from], _value);
    |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x959b5a586825e3a303ec89c8cbea3cede18e9131.sol(108)

[33mWarning[0m for UnrestrictedWrite in contract 'DOCK':
    |    balances[_to] = safeAdd(balances[_to], _value);
    |    balances[_from] = safeSub(balances[_from], _value);
  > |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x959b5a586825e3a303ec89c8cbea3cede18e9131.sol(109)

[33mWarning[0m for UnrestrictedWrite in contract 'DOCK':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x959b5a586825e3a303ec89c8cbea3cede18e9131.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'DOCK':
    |  function burn(uint burnAmount) {
    |    address burner = msg.sender;
  > |    balances[burner] = safeSub(balances[burner], burnAmount);
    |    totalSupply = safeSub(totalSupply, burnAmount);
    |    Burned(burner, burnAmount);
  at /home/jiaming/mavs_srcs/contract@0x959b5a586825e3a303ec89c8cbea3cede18e9131.sol(150)

[33mWarning[0m for UnrestrictedWrite in contract 'DOCK':
    |    address burner = msg.sender;
    |    balances[burner] = safeSub(balances[burner], burnAmount);
  > |    totalSupply = safeSub(totalSupply, burnAmount);
    |    Burned(burner, burnAmount);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x959b5a586825e3a303ec89c8cbea3cede18e9131.sol(151)

[33mWarning[0m for UnrestrictedWrite in contract 'DOCK':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));      
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x959b5a586825e3a303ec89c8cbea3cede18e9131.sol(187)

[33mWarning[0m for UnrestrictedWrite in contract 'DOCK':
    |
    |    // We don't do interface check here as we might want to a normal wallet address to act as a release agent
  > |    releaseAgent = addr;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x959b5a586825e3a303ec89c8cbea3cede18e9131.sol(223)

[33mWarning[0m for UnrestrictedWrite in contract 'DOCK':
    |   */
    |  function setTransferAgent(address addr, bool state) onlyOwner inReleaseState(false) public {
  > |    transferAgents[addr] = state;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x959b5a586825e3a303ec89c8cbea3cede18e9131.sol(230)

[33mWarning[0m for UnrestrictedWrite in contract 'DOCK':
    |   */
    |  function releaseTokenTransfer() public onlyReleaseAgent {
  > |    released = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x959b5a586825e3a303ec89c8cbea3cede18e9131.sol(239)

[33mWarning[0m for UnrestrictedWrite in contract 'DOCK':
    | *
    | */
  > |contract DOCK is ReleasableToken, BurnableToken {
    |
    |  /** Name and symbol were updated. */
  at /home/jiaming/mavs_srcs/contract@0x959b5a586825e3a303ec89c8cbea3cede18e9131.sol(273)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x959b5a586825e3a303ec89c8cbea3cede18e9131.sol(162)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x959b5a586825e3a303ec89c8cbea3cede18e9131.sol(163)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));      
    |    owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x959b5a586825e3a303ec89c8cbea3cede18e9131.sol(185)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));      
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x959b5a586825e3a303ec89c8cbea3cede18e9131.sol(187)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |
    | 
  > |contract SafeMath {
    |  function safeMul(uint a, uint b) internal returns (uint) {
    |    uint c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x959b5a586825e3a303ec89c8cbea3cede18e9131.sol(11)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * Standard ERC20 token with Short Hand Attack and approve() race condition mitigation.
    | */
  > |contract StandardToken is ERC20, SafeMath {
    |
    |  /* Token supply got increased and a new owner received these tokens */
  at /home/jiaming/mavs_srcs/contract@0x959b5a586825e3a303ec89c8cbea3cede18e9131.sol(81)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |  }
    |
  > |  function transferFrom(address _from, address _to, uint _value) returns (bool success) {
    |    uint _allowance = allowed[_from][msg.sender];
    |
  at /home/jiaming/mavs_srcs/contract@0x959b5a586825e3a303ec89c8cbea3cede18e9131.sol(104)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |  }
    |
  > |  function balanceOf(address _owner) constant returns (uint balance) {
    |    return balances[_owner];
    |  }
  at /home/jiaming/mavs_srcs/contract@0x959b5a586825e3a303ec89c8cbea3cede18e9131.sol(114)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |  }
    |
  > |  function allowance(address _owner, address _spender) constant returns (uint remaining) {
    |    return allowed[_owner][_spender];
    |  }
  at /home/jiaming/mavs_srcs/contract@0x959b5a586825e3a303ec89c8cbea3cede18e9131.sol(131)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |  }
    |
  > |  function safeSub(uint a, uint b) internal returns (uint) {
    |    assert(b <= a);
    |    return a - b;
  at /home/jiaming/mavs_srcs/contract@0x959b5a586825e3a303ec89c8cbea3cede18e9131.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |  }
    |
  > |  function safeAdd(uint a, uint b) internal returns (uint) {
    |    uint c = a + b;
    |    assert(c>=a && c>=b);
  at /home/jiaming/mavs_srcs/contract@0x959b5a586825e3a303ec89c8cbea3cede18e9131.sol(30)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    | */
    |contract ERC20Basic {
  > |  uint256 public totalSupply;
    |  function balanceOf(address who) constant returns (uint256);
    |  function transfer(address to, uint256 value) returns (bool);
  at /home/jiaming/mavs_srcs/contract@0x959b5a586825e3a303ec89c8cbea3cede18e9131.sol(60)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |
    |  /* Interface declaration */
  > |  function isToken() public constant returns (bool weAre) {
    |    return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x959b5a586825e3a303ec89c8cbea3cede18e9131.sol(93)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |  function transfer(address _to, uint _value) returns (bool success) {
  > |    balances[msg.sender] = safeSub(balances[msg.sender], _value);
    |    balances[_to] = safeAdd(balances[_to], _value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x959b5a586825e3a303ec89c8cbea3cede18e9131.sol(98)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |  function transfer(address _to, uint _value) returns (bool success) {
    |    balances[msg.sender] = safeSub(balances[msg.sender], _value);
  > |    balances[_to] = safeAdd(balances[_to], _value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x959b5a586825e3a303ec89c8cbea3cede18e9131.sol(99)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint _allowance = allowed[_from][msg.sender];
    |
  > |    balances[_to] = safeAdd(balances[_to], _value);
    |    balances[_from] = safeSub(balances[_from], _value);
    |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
  at /home/jiaming/mavs_srcs/contract@0x959b5a586825e3a303ec89c8cbea3cede18e9131.sol(107)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    balances[_to] = safeAdd(balances[_to], _value);
  > |    balances[_from] = safeSub(balances[_from], _value);
    |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x959b5a586825e3a303ec89c8cbea3cede18e9131.sol(108)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_to] = safeAdd(balances[_to], _value);
    |    balances[_from] = safeSub(balances[_from], _value);
  > |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x959b5a586825e3a303ec89c8cbea3cede18e9131.sol(109)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x959b5a586825e3a303ec89c8cbea3cede18e9131.sol(126)


