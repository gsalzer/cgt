Processing contract: /home/jiaming/mavs_srcs/contract@0x02725836ebf3ecdb1cdf1c7b02fcbbfaa2736af8.sol:BitAirToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x02725836ebf3ecdb1cdf1c7b02fcbbfaa2736af8.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x02725836ebf3ecdb1cdf1c7b02fcbbfaa2736af8.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x02725836ebf3ecdb1cdf1c7b02fcbbfaa2736af8.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x02725836ebf3ecdb1cdf1c7b02fcbbfaa2736af8.sol:UpgradeAgent
Processing contract: /home/jiaming/mavs_srcs/contract@0x02725836ebf3ecdb1cdf1c7b02fcbbfaa2736af8.sol:UpgradeableToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for LockedEther in contract 'BitAirToken':
    | *
    | */
  > |contract BitAirToken is UpgradeableToken {
    |
    |  string public name;
  at /home/jiaming/mavs_srcs/contract@0x02725836ebf3ecdb1cdf1c7b02fcbbfaa2736af8.sol(308)

[33mWarning[0m for UnhandledException in contract 'BitAirToken':
    |
    |      // Upgrade agent reissues the tokens
  > |      upgradeAgent.upgradeFrom(msg.sender, value);
    |      Upgrade(msg.sender, upgradeAgent, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x02725836ebf3ecdb1cdf1c7b02fcbbfaa2736af8.sol(236)

[33mWarning[0m for UnhandledException in contract 'BitAirToken':
    |
    |      // Bad interface
  > |      if(!upgradeAgent.isUpgradeAgent()) throw;
    |      // Make sure that token supplies match in source and target
    |      if (upgradeAgent.originalSupply() != totalSupply) throw;
  at /home/jiaming/mavs_srcs/contract@0x02725836ebf3ecdb1cdf1c7b02fcbbfaa2736af8.sol(259)

[33mWarning[0m for UnhandledException in contract 'BitAirToken':
    |      if(!upgradeAgent.isUpgradeAgent()) throw;
    |      // Make sure that token supplies match in source and target
  > |      if (upgradeAgent.originalSupply() != totalSupply) throw;
    |
    |      UpgradeAgentSet(upgradeAgent);
  at /home/jiaming/mavs_srcs/contract@0x02725836ebf3ecdb1cdf1c7b02fcbbfaa2736af8.sol(261)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitAirToken':
    |
    |      // Upgrade agent reissues the tokens
  > |      upgradeAgent.upgradeFrom(msg.sender, value);
    |      Upgrade(msg.sender, upgradeAgent, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x02725836ebf3ecdb1cdf1c7b02fcbbfaa2736af8.sol(236)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitAirToken':
    |
    |      // Bad interface
  > |      if(!upgradeAgent.isUpgradeAgent()) throw;
    |      // Make sure that token supplies match in source and target
    |      if (upgradeAgent.originalSupply() != totalSupply) throw;
  at /home/jiaming/mavs_srcs/contract@0x02725836ebf3ecdb1cdf1c7b02fcbbfaa2736af8.sol(259)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitAirToken':
    |      if(!upgradeAgent.isUpgradeAgent()) throw;
    |      // Make sure that token supplies match in source and target
  > |      if (upgradeAgent.originalSupply() != totalSupply) throw;
    |
    |      UpgradeAgentSet(upgradeAgent);
  at /home/jiaming/mavs_srcs/contract@0x02725836ebf3ecdb1cdf1c7b02fcbbfaa2736af8.sol(261)

[33mWarning[0m for UnrestrictedWrite in contract 'BitAirToken':
    |
    |  function transfer(address _to, uint _value) returns (bool success) {
  > |    balances[msg.sender] = safeSub(balances[msg.sender], _value);
    |    balances[_to] = safeAdd(balances[_to], _value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x02725836ebf3ecdb1cdf1c7b02fcbbfaa2736af8.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'BitAirToken':
    |  function transfer(address _to, uint _value) returns (bool success) {
    |    balances[msg.sender] = safeSub(balances[msg.sender], _value);
  > |    balances[_to] = safeAdd(balances[_to], _value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x02725836ebf3ecdb1cdf1c7b02fcbbfaa2736af8.sol(91)

[33mWarning[0m for UnrestrictedWrite in contract 'BitAirToken':
    |    uint _allowance = allowed[_from][msg.sender];
    |
  > |    balances[_to] = safeAdd(balances[_to], _value);
    |    balances[_from] = safeSub(balances[_from], _value);
    |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
  at /home/jiaming/mavs_srcs/contract@0x02725836ebf3ecdb1cdf1c7b02fcbbfaa2736af8.sol(99)

[33mWarning[0m for UnrestrictedWrite in contract 'BitAirToken':
    |
    |    balances[_to] = safeAdd(balances[_to], _value);
  > |    balances[_from] = safeSub(balances[_from], _value);
    |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x02725836ebf3ecdb1cdf1c7b02fcbbfaa2736af8.sol(100)

[33mWarning[0m for UnrestrictedWrite in contract 'BitAirToken':
    |    balances[_to] = safeAdd(balances[_to], _value);
    |    balances[_from] = safeSub(balances[_from], _value);
  > |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x02725836ebf3ecdb1cdf1c7b02fcbbfaa2736af8.sol(101)

[33mWarning[0m for UnrestrictedWrite in contract 'BitAirToken':
    |    if ((_value != 0) && (allowed[msg.sender][_spender] != 0)) throw;
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x02725836ebf3ecdb1cdf1c7b02fcbbfaa2736af8.sol(118)

[33mWarning[0m for UnrestrictedWrite in contract 'BitAirToken':
    |      if (value == 0) throw;
    |
  > |      balances[msg.sender] = safeSub(balances[msg.sender], value);
    |
    |      // Take tokens out from circulation
  at /home/jiaming/mavs_srcs/contract@0x02725836ebf3ecdb1cdf1c7b02fcbbfaa2736af8.sol(229)

[33mWarning[0m for UnrestrictedWrite in contract 'BitAirToken':
    |
    |      // Take tokens out from circulation
  > |      totalSupply = safeSub(totalSupply, value);
    |      totalUpgraded = safeAdd(totalUpgraded, value);
    |
  at /home/jiaming/mavs_srcs/contract@0x02725836ebf3ecdb1cdf1c7b02fcbbfaa2736af8.sol(232)

[33mWarning[0m for UnrestrictedWrite in contract 'BitAirToken':
    |      // Take tokens out from circulation
    |      totalSupply = safeSub(totalSupply, value);
  > |      totalUpgraded = safeAdd(totalUpgraded, value);
    |
    |      // Upgrade agent reissues the tokens
  at /home/jiaming/mavs_srcs/contract@0x02725836ebf3ecdb1cdf1c7b02fcbbfaa2736af8.sol(233)

[33mWarning[0m for UnrestrictedWrite in contract 'BitAirToken':
    |      if (getUpgradeState() == UpgradeState.Upgrading) throw;
    |
  > |      upgradeAgent = UpgradeAgent(agent);
    |
    |      // Bad interface
  at /home/jiaming/mavs_srcs/contract@0x02725836ebf3ecdb1cdf1c7b02fcbbfaa2736af8.sol(256)

[33mWarning[0m for UnrestrictedWrite in contract 'BitAirToken':
    |      if (master == 0x0) throw;
    |      if (msg.sender != upgradeMaster) throw;
  > |      upgradeMaster = master;
    |      NewUpgradeMaster(upgradeMaster);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x02725836ebf3ecdb1cdf1c7b02fcbbfaa2736af8.sol(284)

[33mWarning[0m for UnrestrictedWrite in contract 'BitAirToken':
    | *
    | */
  > |contract BitAirToken is UpgradeableToken {
    |
    |  string public name;
  at /home/jiaming/mavs_srcs/contract@0x02725836ebf3ecdb1cdf1c7b02fcbbfaa2736af8.sol(308)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * Math operations with safety checks
    | */
  > |contract SafeMath {
    |  function safeMul(uint a, uint b) internal returns (uint) {
    |    uint c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x02725836ebf3ecdb1cdf1c7b02fcbbfaa2736af8.sol(20)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, SafeMath {
    |
    |  /* Actual balances of token holders */
  at /home/jiaming/mavs_srcs/contract@0x02725836ebf3ecdb1cdf1c7b02fcbbfaa2736af8.sol(76)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |  }
    |
  > |  function transfer(address _to, uint _value) returns (bool success) {
    |    balances[msg.sender] = safeSub(balances[msg.sender], _value);
    |    balances[_to] = safeAdd(balances[_to], _value);
  at /home/jiaming/mavs_srcs/contract@0x02725836ebf3ecdb1cdf1c7b02fcbbfaa2736af8.sol(89)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |  }
    |
  > |  function transferFrom(address _from, address _to, uint _value) returns (bool success) {
    |    uint _allowance = allowed[_from][msg.sender];
    |
  at /home/jiaming/mavs_srcs/contract@0x02725836ebf3ecdb1cdf1c7b02fcbbfaa2736af8.sol(96)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |  }
    |
  > |  function balanceOf(address _owner) constant returns (uint balance) {
    |    return balances[_owner];
    |  }
  at /home/jiaming/mavs_srcs/contract@0x02725836ebf3ecdb1cdf1c7b02fcbbfaa2736af8.sol(106)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |  }
    |
  > |  function allowance(address _owner, address _spender) constant returns (uint remaining) {
    |    return allowed[_owner][_spender];
    |  }
  at /home/jiaming/mavs_srcs/contract@0x02725836ebf3ecdb1cdf1c7b02fcbbfaa2736af8.sol(123)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    | */
    |contract ERC20 {
  > |  uint public totalSupply;
    |  function balanceOf(address who) constant returns (uint);
    |  function allowance(address owner, address spender) constant returns (uint);
  at /home/jiaming/mavs_srcs/contract@0x02725836ebf3ecdb1cdf1c7b02fcbbfaa2736af8.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |  }
    |
  > |  function safeSub(uint a, uint b) internal returns (uint) {
    |    assert(b <= a);
    |    return a - b;
  at /home/jiaming/mavs_srcs/contract@0x02725836ebf3ecdb1cdf1c7b02fcbbfaa2736af8.sol(34)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |  }
    |
  > |  function safeAdd(uint a, uint b) internal returns (uint) {
    |    uint c = a + b;
    |    assert(c>=a && c>=b);
  at /home/jiaming/mavs_srcs/contract@0x02725836ebf3ecdb1cdf1c7b02fcbbfaa2736af8.sol(39)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |  }
    |
  > |  function assert(bool assertion) internal {
    |    if (!assertion) {
    |      throw;
  at /home/jiaming/mavs_srcs/contract@0x02725836ebf3ecdb1cdf1c7b02fcbbfaa2736af8.sol(61)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |
    |  /* Interface declaration */
  > |  function isToken() public constant returns (bool weAre) {
    |    return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x02725836ebf3ecdb1cdf1c7b02fcbbfaa2736af8.sol(85)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint _allowance = allowed[_from][msg.sender];
    |
  > |    balances[_to] = safeAdd(balances[_to], _value);
    |    balances[_from] = safeSub(balances[_from], _value);
    |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
  at /home/jiaming/mavs_srcs/contract@0x02725836ebf3ecdb1cdf1c7b02fcbbfaa2736af8.sol(99)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    balances[_to] = safeAdd(balances[_to], _value);
  > |    balances[_from] = safeSub(balances[_from], _value);
    |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x02725836ebf3ecdb1cdf1c7b02fcbbfaa2736af8.sol(100)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |  function transfer(address _to, uint _value) returns (bool success) {
  > |    balances[msg.sender] = safeSub(balances[msg.sender], _value);
    |    balances[_to] = safeAdd(balances[_to], _value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x02725836ebf3ecdb1cdf1c7b02fcbbfaa2736af8.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_to] = safeAdd(balances[_to], _value);
    |    balances[_from] = safeSub(balances[_from], _value);
  > |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x02725836ebf3ecdb1cdf1c7b02fcbbfaa2736af8.sol(101)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    if ((_value != 0) && (allowed[msg.sender][_spender] != 0)) throw;
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x02725836ebf3ecdb1cdf1c7b02fcbbfaa2736af8.sol(118)

[33mWarning[0m for DAO in contract 'UpgradeableToken':
    |
    |      // Upgrade agent reissues the tokens
  > |      upgradeAgent.upgradeFrom(msg.sender, value);
    |      Upgrade(msg.sender, upgradeAgent, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x02725836ebf3ecdb1cdf1c7b02fcbbfaa2736af8.sol(236)

[33mWarning[0m for DAO in contract 'UpgradeableToken':
    |
    |      // Bad interface
  > |      if(!upgradeAgent.isUpgradeAgent()) throw;
    |      // Make sure that token supplies match in source and target
    |      if (upgradeAgent.originalSupply() != totalSupply) throw;
  at /home/jiaming/mavs_srcs/contract@0x02725836ebf3ecdb1cdf1c7b02fcbbfaa2736af8.sol(259)

[33mWarning[0m for DAO in contract 'UpgradeableToken':
    |      if(!upgradeAgent.isUpgradeAgent()) throw;
    |      // Make sure that token supplies match in source and target
  > |      if (upgradeAgent.originalSupply() != totalSupply) throw;
    |
    |      UpgradeAgentSet(upgradeAgent);
  at /home/jiaming/mavs_srcs/contract@0x02725836ebf3ecdb1cdf1c7b02fcbbfaa2736af8.sol(261)

[33mWarning[0m for LockedEther in contract 'UpgradeableToken':
    | * First envisioned by Golem and Lunyr projects.
    | */
  > |contract UpgradeableToken is StandardToken {
    |
    |  /** Contract / person who can set the upgrade path. This can be the same as team multisig wallet, as what it is with its default value. */
  at /home/jiaming/mavs_srcs/contract@0x02725836ebf3ecdb1cdf1c7b02fcbbfaa2736af8.sol(170)

[31mViolation[0m for MissingInputValidation in contract 'UpgradeableToken':
    |  }
    |
  > |  function transfer(address _to, uint _value) returns (bool success) {
    |    balances[msg.sender] = safeSub(balances[msg.sender], _value);
    |    balances[_to] = safeAdd(balances[_to], _value);
  at /home/jiaming/mavs_srcs/contract@0x02725836ebf3ecdb1cdf1c7b02fcbbfaa2736af8.sol(89)

[31mViolation[0m for MissingInputValidation in contract 'UpgradeableToken':
    |  }
    |
  > |  function transferFrom(address _from, address _to, uint _value) returns (bool success) {
    |    uint _allowance = allowed[_from][msg.sender];
    |
  at /home/jiaming/mavs_srcs/contract@0x02725836ebf3ecdb1cdf1c7b02fcbbfaa2736af8.sol(96)

[31mViolation[0m for MissingInputValidation in contract 'UpgradeableToken':
    |  }
    |
  > |  function balanceOf(address _owner) constant returns (uint balance) {
    |    return balances[_owner];
    |  }
  at /home/jiaming/mavs_srcs/contract@0x02725836ebf3ecdb1cdf1c7b02fcbbfaa2736af8.sol(106)

[31mViolation[0m for MissingInputValidation in contract 'UpgradeableToken':
    |  }
    |
  > |  function allowance(address _owner, address _spender) constant returns (uint remaining) {
    |    return allowed[_owner][_spender];
    |  }
  at /home/jiaming/mavs_srcs/contract@0x02725836ebf3ecdb1cdf1c7b02fcbbfaa2736af8.sol(123)

[33mWarning[0m for MissingInputValidation in contract 'UpgradeableToken':
    | */
    |contract ERC20 {
  > |  uint public totalSupply;
    |  function balanceOf(address who) constant returns (uint);
    |  function allowance(address owner, address spender) constant returns (uint);
  at /home/jiaming/mavs_srcs/contract@0x02725836ebf3ecdb1cdf1c7b02fcbbfaa2736af8.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'UpgradeableToken':
    |  }
    |
  > |  function safeSub(uint a, uint b) internal returns (uint) {
    |    assert(b <= a);
    |    return a - b;
  at /home/jiaming/mavs_srcs/contract@0x02725836ebf3ecdb1cdf1c7b02fcbbfaa2736af8.sol(34)

[33mWarning[0m for MissingInputValidation in contract 'UpgradeableToken':
    |  }
    |
  > |  function safeAdd(uint a, uint b) internal returns (uint) {
    |    uint c = a + b;
    |    assert(c>=a && c>=b);
  at /home/jiaming/mavs_srcs/contract@0x02725836ebf3ecdb1cdf1c7b02fcbbfaa2736af8.sol(39)

[33mWarning[0m for MissingInputValidation in contract 'UpgradeableToken':
    |  }
    |
  > |  function assert(bool assertion) internal {
    |    if (!assertion) {
    |      throw;
  at /home/jiaming/mavs_srcs/contract@0x02725836ebf3ecdb1cdf1c7b02fcbbfaa2736af8.sol(61)

[33mWarning[0m for MissingInputValidation in contract 'UpgradeableToken':
    |
    |  /* Interface declaration */
  > |  function isToken() public constant returns (bool weAre) {
    |    return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x02725836ebf3ecdb1cdf1c7b02fcbbfaa2736af8.sol(85)

[33mWarning[0m for MissingInputValidation in contract 'UpgradeableToken':
    |
    |  /** Contract / person who can set the upgrade path. This can be the same as team multisig wallet, as what it is with its default value. */
  > |  address public upgradeMaster;
    |
    |  /** The next contract where the tokens will be migrated. */
  at /home/jiaming/mavs_srcs/contract@0x02725836ebf3ecdb1cdf1c7b02fcbbfaa2736af8.sol(173)

[33mWarning[0m for MissingInputValidation in contract 'UpgradeableToken':
    |
    |  /** The next contract where the tokens will be migrated. */
  > |  UpgradeAgent public upgradeAgent;
    |
    |  /** How many tokens we have upgraded by now. */
  at /home/jiaming/mavs_srcs/contract@0x02725836ebf3ecdb1cdf1c7b02fcbbfaa2736af8.sol(176)

[33mWarning[0m for MissingInputValidation in contract 'UpgradeableToken':
    |
    |  /** How many tokens we have upgraded by now. */
  > |  uint256 public totalUpgraded;
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x02725836ebf3ecdb1cdf1c7b02fcbbfaa2736af8.sol(179)

[33mWarning[0m for MissingInputValidation in contract 'UpgradeableToken':
    |   * Get the state of the token upgrade.
    |   */
  > |  function getUpgradeState() public constant returns(UpgradeState) {
    |    if(!canUpgrade()) return UpgradeState.NotAllowed;
    |    else if(address(upgradeAgent) == 0x00) return UpgradeState.WaitingForAgent;
  at /home/jiaming/mavs_srcs/contract@0x02725836ebf3ecdb1cdf1c7b02fcbbfaa2736af8.sol(269)

[33mWarning[0m for MissingInputValidation in contract 'UpgradeableToken':
    |   * This allows us to set a new owner for the upgrade mechanism.
    |   */
  > |  function setUpgradeMaster(address master) public {
    |      if (master == 0x0) throw;
    |      if (msg.sender != upgradeMaster) throw;
  at /home/jiaming/mavs_srcs/contract@0x02725836ebf3ecdb1cdf1c7b02fcbbfaa2736af8.sol(281)

[33mWarning[0m for MissingInputValidation in contract 'UpgradeableToken':
    |   * Child contract can enable to provide the condition when the upgrade can begun.
    |   */
  > |  function canUpgrade() public constant returns(bool) {
    |     return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x02725836ebf3ecdb1cdf1c7b02fcbbfaa2736af8.sol(291)

[33mWarning[0m for UnhandledException in contract 'UpgradeableToken':
    |
    |      // Upgrade agent reissues the tokens
  > |      upgradeAgent.upgradeFrom(msg.sender, value);
    |      Upgrade(msg.sender, upgradeAgent, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x02725836ebf3ecdb1cdf1c7b02fcbbfaa2736af8.sol(236)

[33mWarning[0m for UnhandledException in contract 'UpgradeableToken':
    |
    |      // Bad interface
  > |      if(!upgradeAgent.isUpgradeAgent()) throw;
    |      // Make sure that token supplies match in source and target
    |      if (upgradeAgent.originalSupply() != totalSupply) throw;
  at /home/jiaming/mavs_srcs/contract@0x02725836ebf3ecdb1cdf1c7b02fcbbfaa2736af8.sol(259)

[33mWarning[0m for UnhandledException in contract 'UpgradeableToken':
    |      if(!upgradeAgent.isUpgradeAgent()) throw;
    |      // Make sure that token supplies match in source and target
  > |      if (upgradeAgent.originalSupply() != totalSupply) throw;
    |
    |      UpgradeAgentSet(upgradeAgent);
  at /home/jiaming/mavs_srcs/contract@0x02725836ebf3ecdb1cdf1c7b02fcbbfaa2736af8.sol(261)

[31mViolation[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |    uint _allowance = allowed[_from][msg.sender];
    |
  > |    balances[_to] = safeAdd(balances[_to], _value);
    |    balances[_from] = safeSub(balances[_from], _value);
    |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
  at /home/jiaming/mavs_srcs/contract@0x02725836ebf3ecdb1cdf1c7b02fcbbfaa2736af8.sol(99)

[31mViolation[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |
    |    balances[_to] = safeAdd(balances[_to], _value);
  > |    balances[_from] = safeSub(balances[_from], _value);
    |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x02725836ebf3ecdb1cdf1c7b02fcbbfaa2736af8.sol(100)

[31mViolation[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |      if (value == 0) throw;
    |
  > |      balances[msg.sender] = safeSub(balances[msg.sender], value);
    |
    |      // Take tokens out from circulation
  at /home/jiaming/mavs_srcs/contract@0x02725836ebf3ecdb1cdf1c7b02fcbbfaa2736af8.sol(229)

[31mViolation[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |
    |      // Take tokens out from circulation
  > |      totalSupply = safeSub(totalSupply, value);
    |      totalUpgraded = safeAdd(totalUpgraded, value);
    |
  at /home/jiaming/mavs_srcs/contract@0x02725836ebf3ecdb1cdf1c7b02fcbbfaa2736af8.sol(232)

[31mViolation[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |      // Take tokens out from circulation
    |      totalSupply = safeSub(totalSupply, value);
  > |      totalUpgraded = safeAdd(totalUpgraded, value);
    |
    |      // Upgrade agent reissues the tokens
  at /home/jiaming/mavs_srcs/contract@0x02725836ebf3ecdb1cdf1c7b02fcbbfaa2736af8.sol(233)

[31mViolation[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |      if (getUpgradeState() == UpgradeState.Upgrading) throw;
    |
  > |      upgradeAgent = UpgradeAgent(agent);
    |
    |      // Bad interface
  at /home/jiaming/mavs_srcs/contract@0x02725836ebf3ecdb1cdf1c7b02fcbbfaa2736af8.sol(256)

[33mWarning[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |
    |  function transfer(address _to, uint _value) returns (bool success) {
  > |    balances[msg.sender] = safeSub(balances[msg.sender], _value);
    |    balances[_to] = safeAdd(balances[_to], _value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x02725836ebf3ecdb1cdf1c7b02fcbbfaa2736af8.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |    balances[_to] = safeAdd(balances[_to], _value);
    |    balances[_from] = safeSub(balances[_from], _value);
  > |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x02725836ebf3ecdb1cdf1c7b02fcbbfaa2736af8.sol(101)

[33mWarning[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |    if ((_value != 0) && (allowed[msg.sender][_spender] != 0)) throw;
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x02725836ebf3ecdb1cdf1c7b02fcbbfaa2736af8.sol(118)

[33mWarning[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |      if (master == 0x0) throw;
    |      if (msg.sender != upgradeMaster) throw;
  > |      upgradeMaster = master;
    |      NewUpgradeMaster(upgradeMaster);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x02725836ebf3ecdb1cdf1c7b02fcbbfaa2736af8.sol(284)


