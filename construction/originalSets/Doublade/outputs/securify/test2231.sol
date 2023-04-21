Processing contract: /home/jiaming/mavs_srcs/contract@0x90e4f25391b3c125fb38c02cf87e10791926bf30.sol:CrowdsaleToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x90e4f25391b3c125fb38c02cf87e10791926bf30.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x90e4f25391b3c125fb38c02cf87e10791926bf30.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x90e4f25391b3c125fb38c02cf87e10791926bf30.sol:ReleasableToken
Processing contract: /home/jiaming/mavs_srcs/contract@0x90e4f25391b3c125fb38c02cf87e10791926bf30.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x90e4f25391b3c125fb38c02cf87e10791926bf30.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x90e4f25391b3c125fb38c02cf87e10791926bf30.sol:UpgradeAgent
Processing contract: /home/jiaming/mavs_srcs/contract@0x90e4f25391b3c125fb38c02cf87e10791926bf30.sol:UpgradeableToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for LockedEther in contract 'CrowdsaleToken':
    | *
    | */
  > |contract CrowdsaleToken is ReleasableToken, UpgradeableToken {
    |
    |  /** Name and symbol were updated. */
  at /home/jiaming/mavs_srcs/contract@0x90e4f25391b3c125fb38c02cf87e10791926bf30.sol(424)

[33mWarning[0m for UnhandledException in contract 'CrowdsaleToken':
    |
    |      // Upgrade agent reissues the tokens
  > |      upgradeAgent.upgradeFrom(msg.sender, value);
    |      Upgrade(msg.sender, upgradeAgent, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x90e4f25391b3c125fb38c02cf87e10791926bf30.sol(235)

[33mWarning[0m for UnhandledException in contract 'CrowdsaleToken':
    |
    |      // Bad interface
  > |      if(!upgradeAgent.isUpgradeAgent()) throw;
    |      // Make sure that token supplies match in source and target
    |      if (upgradeAgent.originalSupply() != totalSupply) throw;
  at /home/jiaming/mavs_srcs/contract@0x90e4f25391b3c125fb38c02cf87e10791926bf30.sol(258)

[33mWarning[0m for UnhandledException in contract 'CrowdsaleToken':
    |      if(!upgradeAgent.isUpgradeAgent()) throw;
    |      // Make sure that token supplies match in source and target
  > |      if (upgradeAgent.originalSupply() != totalSupply) throw;
    |
    |      UpgradeAgentSet(upgradeAgent);
  at /home/jiaming/mavs_srcs/contract@0x90e4f25391b3c125fb38c02cf87e10791926bf30.sol(260)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CrowdsaleToken':
    |
    |      // Upgrade agent reissues the tokens
  > |      upgradeAgent.upgradeFrom(msg.sender, value);
    |      Upgrade(msg.sender, upgradeAgent, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x90e4f25391b3c125fb38c02cf87e10791926bf30.sol(235)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CrowdsaleToken':
    |
    |      // Bad interface
  > |      if(!upgradeAgent.isUpgradeAgent()) throw;
    |      // Make sure that token supplies match in source and target
    |      if (upgradeAgent.originalSupply() != totalSupply) throw;
  at /home/jiaming/mavs_srcs/contract@0x90e4f25391b3c125fb38c02cf87e10791926bf30.sol(258)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CrowdsaleToken':
    |      if(!upgradeAgent.isUpgradeAgent()) throw;
    |      // Make sure that token supplies match in source and target
  > |      if (upgradeAgent.originalSupply() != totalSupply) throw;
    |
    |      UpgradeAgentSet(upgradeAgent);
  at /home/jiaming/mavs_srcs/contract@0x90e4f25391b3c125fb38c02cf87e10791926bf30.sol(260)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |
    |  function transfer(address _to, uint _value) onlyPayloadSize(2 * 32) returns (bool success) {
  > |    balances[msg.sender] = safeSub(balances[msg.sender], _value);
    |    balances[_to] = safeAdd(balances[_to], _value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x90e4f25391b3c125fb38c02cf87e10791926bf30.sol(107)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |  function transfer(address _to, uint _value) onlyPayloadSize(2 * 32) returns (bool success) {
    |    balances[msg.sender] = safeSub(balances[msg.sender], _value);
  > |    balances[_to] = safeAdd(balances[_to], _value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x90e4f25391b3c125fb38c02cf87e10791926bf30.sol(108)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |    uint _allowance = allowed[_from][msg.sender];
    |
  > |    balances[_to] = safeAdd(balances[_to], _value);
    |    balances[_from] = safeSub(balances[_from], _value);
    |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
  at /home/jiaming/mavs_srcs/contract@0x90e4f25391b3c125fb38c02cf87e10791926bf30.sol(116)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |
    |    balances[_to] = safeAdd(balances[_to], _value);
  > |    balances[_from] = safeSub(balances[_from], _value);
    |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x90e4f25391b3c125fb38c02cf87e10791926bf30.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |    balances[_to] = safeAdd(balances[_to], _value);
    |    balances[_from] = safeSub(balances[_from], _value);
  > |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x90e4f25391b3c125fb38c02cf87e10791926bf30.sol(118)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |    if ((_value != 0) && (allowed[msg.sender][_spender] != 0)) throw;
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x90e4f25391b3c125fb38c02cf87e10791926bf30.sol(135)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |      if (value == 0) throw;
    |
  > |      balances[msg.sender] = safeSub(balances[msg.sender], value);
    |
    |      // Take tokens out from circulation
  at /home/jiaming/mavs_srcs/contract@0x90e4f25391b3c125fb38c02cf87e10791926bf30.sol(228)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |
    |      // Take tokens out from circulation
  > |      totalSupply = safeSub(totalSupply, value);
    |      totalUpgraded = safeAdd(totalUpgraded, value);
    |
  at /home/jiaming/mavs_srcs/contract@0x90e4f25391b3c125fb38c02cf87e10791926bf30.sol(231)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |      // Take tokens out from circulation
    |      totalSupply = safeSub(totalSupply, value);
  > |      totalUpgraded = safeAdd(totalUpgraded, value);
    |
    |      // Upgrade agent reissues the tokens
  at /home/jiaming/mavs_srcs/contract@0x90e4f25391b3c125fb38c02cf87e10791926bf30.sol(232)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |      if (getUpgradeState() == UpgradeState.Upgrading) throw;
    |
  > |      upgradeAgent = UpgradeAgent(agent);
    |
    |      // Bad interface
  at /home/jiaming/mavs_srcs/contract@0x90e4f25391b3c125fb38c02cf87e10791926bf30.sol(255)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |      if (master == 0x0) throw;
    |      if (msg.sender != upgradeMaster) throw;
  > |      upgradeMaster = master;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x90e4f25391b3c125fb38c02cf87e10791926bf30.sol(283)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x90e4f25391b3c125fb38c02cf87e10791926bf30.sol(320)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |
    |    // We don't do interface check here as we might want to a normal wallet address to act as a release agent
  > |    releaseAgent = addr;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x90e4f25391b3c125fb38c02cf87e10791926bf30.sol(366)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |   */
    |  function setTransferAgent(address addr, bool state) onlyOwner inReleaseState(false) public {
  > |    transferAgents[addr] = state;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x90e4f25391b3c125fb38c02cf87e10791926bf30.sol(373)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |   */
    |  function releaseTokenTransfer() public onlyReleaseAgent {
  > |    released = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x90e4f25391b3c125fb38c02cf87e10791926bf30.sol(382)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    | *
    | */
  > |contract CrowdsaleToken is ReleasableToken, UpgradeableToken {
    |
    |  /** Name and symbol were updated. */
  at /home/jiaming/mavs_srcs/contract@0x90e4f25391b3c125fb38c02cf87e10791926bf30.sol(424)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * Provides onlyOwner modifier, which prevents function from running if it is called by anyone other than the owner.
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x90e4f25391b3c125fb38c02cf87e10791926bf30.sol(304)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |  function Ownable() {
  at /home/jiaming/mavs_srcs/contract@0x90e4f25391b3c125fb38c02cf87e10791926bf30.sol(305)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |  }
    |
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
    |      owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x90e4f25391b3c125fb38c02cf87e10791926bf30.sol(318)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x90e4f25391b3c125fb38c02cf87e10791926bf30.sol(320)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * Math operations with safety checks
    | */
  > |contract SafeMath {
    |  function safeMul(uint a, uint b) internal returns (uint) {
    |    uint c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x90e4f25391b3c125fb38c02cf87e10791926bf30.sol(24)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, SafeMath {
    |
    |  /* Actual balances of token holders */
  at /home/jiaming/mavs_srcs/contract@0x90e4f25391b3c125fb38c02cf87e10791926bf30.sol(80)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |  }
    |
  > |  function transfer(address _to, uint _value) onlyPayloadSize(2 * 32) returns (bool success) {
    |    balances[msg.sender] = safeSub(balances[msg.sender], _value);
    |    balances[_to] = safeAdd(balances[_to], _value);
  at /home/jiaming/mavs_srcs/contract@0x90e4f25391b3c125fb38c02cf87e10791926bf30.sol(106)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |  }
    |
  > |  function transferFrom(address _from, address _to, uint _value) returns (bool success) {
    |    uint _allowance = allowed[_from][msg.sender];
    |
  at /home/jiaming/mavs_srcs/contract@0x90e4f25391b3c125fb38c02cf87e10791926bf30.sol(113)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |  }
    |
  > |  function balanceOf(address _owner) constant returns (uint balance) {
    |    return balances[_owner];
    |  }
  at /home/jiaming/mavs_srcs/contract@0x90e4f25391b3c125fb38c02cf87e10791926bf30.sol(123)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |  }
    |
  > |  function allowance(address _owner, address _spender) constant returns (uint remaining) {
    |    return allowed[_owner][_spender];
    |  }
  at /home/jiaming/mavs_srcs/contract@0x90e4f25391b3c125fb38c02cf87e10791926bf30.sol(140)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    | */
    |contract ERC20 {
  > |  uint public totalSupply;
    |  function balanceOf(address who) constant returns (uint);
    |  function allowance(address owner, address spender) constant returns (uint);
  at /home/jiaming/mavs_srcs/contract@0x90e4f25391b3c125fb38c02cf87e10791926bf30.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |  }
    |
  > |  function safeSub(uint a, uint b) internal returns (uint) {
    |    assert(b <= a);
    |    return a - b;
  at /home/jiaming/mavs_srcs/contract@0x90e4f25391b3c125fb38c02cf87e10791926bf30.sol(38)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |  }
    |
  > |  function safeAdd(uint a, uint b) internal returns (uint) {
    |    uint c = a + b;
    |    assert(c>=a && c>=b);
  at /home/jiaming/mavs_srcs/contract@0x90e4f25391b3c125fb38c02cf87e10791926bf30.sol(43)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |  }
    |
  > |  function assert(bool assertion) internal {
    |    if (!assertion) {
    |      throw;
  at /home/jiaming/mavs_srcs/contract@0x90e4f25391b3c125fb38c02cf87e10791926bf30.sol(65)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |
    |  /* Interface declaration */
  > |  function isToken() public constant returns (bool weAre) {
    |    return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x90e4f25391b3c125fb38c02cf87e10791926bf30.sol(89)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint _allowance = allowed[_from][msg.sender];
    |
  > |    balances[_to] = safeAdd(balances[_to], _value);
    |    balances[_from] = safeSub(balances[_from], _value);
    |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
  at /home/jiaming/mavs_srcs/contract@0x90e4f25391b3c125fb38c02cf87e10791926bf30.sol(116)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    balances[_to] = safeAdd(balances[_to], _value);
  > |    balances[_from] = safeSub(balances[_from], _value);
    |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x90e4f25391b3c125fb38c02cf87e10791926bf30.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |  function transfer(address _to, uint _value) onlyPayloadSize(2 * 32) returns (bool success) {
  > |    balances[msg.sender] = safeSub(balances[msg.sender], _value);
    |    balances[_to] = safeAdd(balances[_to], _value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x90e4f25391b3c125fb38c02cf87e10791926bf30.sol(107)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_to] = safeAdd(balances[_to], _value);
    |    balances[_from] = safeSub(balances[_from], _value);
  > |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x90e4f25391b3c125fb38c02cf87e10791926bf30.sol(118)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    if ((_value != 0) && (allowed[msg.sender][_spender] != 0)) throw;
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x90e4f25391b3c125fb38c02cf87e10791926bf30.sol(135)

[33mWarning[0m for DAO in contract 'UpgradeableToken':
    |
    |      // Upgrade agent reissues the tokens
  > |      upgradeAgent.upgradeFrom(msg.sender, value);
    |      Upgrade(msg.sender, upgradeAgent, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x90e4f25391b3c125fb38c02cf87e10791926bf30.sol(235)

[33mWarning[0m for DAO in contract 'UpgradeableToken':
    |
    |      // Bad interface
  > |      if(!upgradeAgent.isUpgradeAgent()) throw;
    |      // Make sure that token supplies match in source and target
    |      if (upgradeAgent.originalSupply() != totalSupply) throw;
  at /home/jiaming/mavs_srcs/contract@0x90e4f25391b3c125fb38c02cf87e10791926bf30.sol(258)

[33mWarning[0m for DAO in contract 'UpgradeableToken':
    |      if(!upgradeAgent.isUpgradeAgent()) throw;
    |      // Make sure that token supplies match in source and target
  > |      if (upgradeAgent.originalSupply() != totalSupply) throw;
    |
    |      UpgradeAgentSet(upgradeAgent);
  at /home/jiaming/mavs_srcs/contract@0x90e4f25391b3c125fb38c02cf87e10791926bf30.sol(260)

[33mWarning[0m for LockedEther in contract 'UpgradeableToken':
    | * First envisioned by Golem and Lunyr projects.
    | */
  > |contract UpgradeableToken is StandardToken {
    |
    |  /** Contract / person who can set the upgrade path. This can be the same as team multisig wallet, as what it is with its default value. */
  at /home/jiaming/mavs_srcs/contract@0x90e4f25391b3c125fb38c02cf87e10791926bf30.sol(175)

[31mViolation[0m for MissingInputValidation in contract 'UpgradeableToken':
    |  }
    |
  > |  function transfer(address _to, uint _value) onlyPayloadSize(2 * 32) returns (bool success) {
    |    balances[msg.sender] = safeSub(balances[msg.sender], _value);
    |    balances[_to] = safeAdd(balances[_to], _value);
  at /home/jiaming/mavs_srcs/contract@0x90e4f25391b3c125fb38c02cf87e10791926bf30.sol(106)

[31mViolation[0m for MissingInputValidation in contract 'UpgradeableToken':
    |  }
    |
  > |  function transferFrom(address _from, address _to, uint _value) returns (bool success) {
    |    uint _allowance = allowed[_from][msg.sender];
    |
  at /home/jiaming/mavs_srcs/contract@0x90e4f25391b3c125fb38c02cf87e10791926bf30.sol(113)

[31mViolation[0m for MissingInputValidation in contract 'UpgradeableToken':
    |  }
    |
  > |  function balanceOf(address _owner) constant returns (uint balance) {
    |    return balances[_owner];
    |  }
  at /home/jiaming/mavs_srcs/contract@0x90e4f25391b3c125fb38c02cf87e10791926bf30.sol(123)

[31mViolation[0m for MissingInputValidation in contract 'UpgradeableToken':
    |  }
    |
  > |  function allowance(address _owner, address _spender) constant returns (uint remaining) {
    |    return allowed[_owner][_spender];
    |  }
  at /home/jiaming/mavs_srcs/contract@0x90e4f25391b3c125fb38c02cf87e10791926bf30.sol(140)

[33mWarning[0m for MissingInputValidation in contract 'UpgradeableToken':
    | */
    |contract ERC20 {
  > |  uint public totalSupply;
    |  function balanceOf(address who) constant returns (uint);
    |  function allowance(address owner, address spender) constant returns (uint);
  at /home/jiaming/mavs_srcs/contract@0x90e4f25391b3c125fb38c02cf87e10791926bf30.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'UpgradeableToken':
    |  }
    |
  > |  function safeSub(uint a, uint b) internal returns (uint) {
    |    assert(b <= a);
    |    return a - b;
  at /home/jiaming/mavs_srcs/contract@0x90e4f25391b3c125fb38c02cf87e10791926bf30.sol(38)

[33mWarning[0m for MissingInputValidation in contract 'UpgradeableToken':
    |  }
    |
  > |  function safeAdd(uint a, uint b) internal returns (uint) {
    |    uint c = a + b;
    |    assert(c>=a && c>=b);
  at /home/jiaming/mavs_srcs/contract@0x90e4f25391b3c125fb38c02cf87e10791926bf30.sol(43)

[33mWarning[0m for MissingInputValidation in contract 'UpgradeableToken':
    |  }
    |
  > |  function assert(bool assertion) internal {
    |    if (!assertion) {
    |      throw;
  at /home/jiaming/mavs_srcs/contract@0x90e4f25391b3c125fb38c02cf87e10791926bf30.sol(65)

[33mWarning[0m for MissingInputValidation in contract 'UpgradeableToken':
    |
    |  /* Interface declaration */
  > |  function isToken() public constant returns (bool weAre) {
    |    return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x90e4f25391b3c125fb38c02cf87e10791926bf30.sol(89)

[33mWarning[0m for MissingInputValidation in contract 'UpgradeableToken':
    |
    |  /** Contract / person who can set the upgrade path. This can be the same as team multisig wallet, as what it is with its default value. */
  > |  address public upgradeMaster;
    |
    |  /** The next contract where the tokens will be migrated. */
  at /home/jiaming/mavs_srcs/contract@0x90e4f25391b3c125fb38c02cf87e10791926bf30.sol(178)

[33mWarning[0m for MissingInputValidation in contract 'UpgradeableToken':
    |
    |  /** The next contract where the tokens will be migrated. */
  > |  UpgradeAgent public upgradeAgent;
    |
    |  /** How many tokens we have upgraded by now. */
  at /home/jiaming/mavs_srcs/contract@0x90e4f25391b3c125fb38c02cf87e10791926bf30.sol(181)

[33mWarning[0m for MissingInputValidation in contract 'UpgradeableToken':
    |
    |  /** How many tokens we have upgraded by now. */
  > |  uint256 public totalUpgraded;
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x90e4f25391b3c125fb38c02cf87e10791926bf30.sol(184)

[33mWarning[0m for MissingInputValidation in contract 'UpgradeableToken':
    |   * Get the state of the token upgrade.
    |   */
  > |  function getUpgradeState() public constant returns(UpgradeState) {
    |    if(!canUpgrade()) return UpgradeState.NotAllowed;
    |    else if(address(upgradeAgent) == 0x00) return UpgradeState.WaitingForAgent;
  at /home/jiaming/mavs_srcs/contract@0x90e4f25391b3c125fb38c02cf87e10791926bf30.sol(268)

[33mWarning[0m for MissingInputValidation in contract 'UpgradeableToken':
    |   * This allows us to set a new owner for the upgrade mechanism.
    |   */
  > |  function setUpgradeMaster(address master) public {
    |      if (master == 0x0) throw;
    |      if (msg.sender != upgradeMaster) throw;
  at /home/jiaming/mavs_srcs/contract@0x90e4f25391b3c125fb38c02cf87e10791926bf30.sol(280)

[33mWarning[0m for MissingInputValidation in contract 'UpgradeableToken':
    |   * Child contract can enable to provide the condition when the upgrade can begun.
    |   */
  > |  function canUpgrade() public constant returns(bool) {
    |     return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x90e4f25391b3c125fb38c02cf87e10791926bf30.sol(289)

[33mWarning[0m for UnhandledException in contract 'UpgradeableToken':
    |
    |      // Upgrade agent reissues the tokens
  > |      upgradeAgent.upgradeFrom(msg.sender, value);
    |      Upgrade(msg.sender, upgradeAgent, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x90e4f25391b3c125fb38c02cf87e10791926bf30.sol(235)

[33mWarning[0m for UnhandledException in contract 'UpgradeableToken':
    |
    |      // Bad interface
  > |      if(!upgradeAgent.isUpgradeAgent()) throw;
    |      // Make sure that token supplies match in source and target
    |      if (upgradeAgent.originalSupply() != totalSupply) throw;
  at /home/jiaming/mavs_srcs/contract@0x90e4f25391b3c125fb38c02cf87e10791926bf30.sol(258)

[33mWarning[0m for UnhandledException in contract 'UpgradeableToken':
    |      if(!upgradeAgent.isUpgradeAgent()) throw;
    |      // Make sure that token supplies match in source and target
  > |      if (upgradeAgent.originalSupply() != totalSupply) throw;
    |
    |      UpgradeAgentSet(upgradeAgent);
  at /home/jiaming/mavs_srcs/contract@0x90e4f25391b3c125fb38c02cf87e10791926bf30.sol(260)

[31mViolation[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |    uint _allowance = allowed[_from][msg.sender];
    |
  > |    balances[_to] = safeAdd(balances[_to], _value);
    |    balances[_from] = safeSub(balances[_from], _value);
    |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
  at /home/jiaming/mavs_srcs/contract@0x90e4f25391b3c125fb38c02cf87e10791926bf30.sol(116)

[31mViolation[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |
    |    balances[_to] = safeAdd(balances[_to], _value);
  > |    balances[_from] = safeSub(balances[_from], _value);
    |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x90e4f25391b3c125fb38c02cf87e10791926bf30.sol(117)

[31mViolation[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |      if (value == 0) throw;
    |
  > |      balances[msg.sender] = safeSub(balances[msg.sender], value);
    |
    |      // Take tokens out from circulation
  at /home/jiaming/mavs_srcs/contract@0x90e4f25391b3c125fb38c02cf87e10791926bf30.sol(228)

[31mViolation[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |
    |      // Take tokens out from circulation
  > |      totalSupply = safeSub(totalSupply, value);
    |      totalUpgraded = safeAdd(totalUpgraded, value);
    |
  at /home/jiaming/mavs_srcs/contract@0x90e4f25391b3c125fb38c02cf87e10791926bf30.sol(231)

[31mViolation[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |      // Take tokens out from circulation
    |      totalSupply = safeSub(totalSupply, value);
  > |      totalUpgraded = safeAdd(totalUpgraded, value);
    |
    |      // Upgrade agent reissues the tokens
  at /home/jiaming/mavs_srcs/contract@0x90e4f25391b3c125fb38c02cf87e10791926bf30.sol(232)

[31mViolation[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |      if (getUpgradeState() == UpgradeState.Upgrading) throw;
    |
  > |      upgradeAgent = UpgradeAgent(agent);
    |
    |      // Bad interface
  at /home/jiaming/mavs_srcs/contract@0x90e4f25391b3c125fb38c02cf87e10791926bf30.sol(255)

[33mWarning[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |
    |  function transfer(address _to, uint _value) onlyPayloadSize(2 * 32) returns (bool success) {
  > |    balances[msg.sender] = safeSub(balances[msg.sender], _value);
    |    balances[_to] = safeAdd(balances[_to], _value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x90e4f25391b3c125fb38c02cf87e10791926bf30.sol(107)

[33mWarning[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |    balances[_to] = safeAdd(balances[_to], _value);
    |    balances[_from] = safeSub(balances[_from], _value);
  > |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x90e4f25391b3c125fb38c02cf87e10791926bf30.sol(118)

[33mWarning[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |    if ((_value != 0) && (allowed[msg.sender][_spender] != 0)) throw;
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x90e4f25391b3c125fb38c02cf87e10791926bf30.sol(135)

[33mWarning[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |      if (master == 0x0) throw;
    |      if (msg.sender != upgradeMaster) throw;
  > |      upgradeMaster = master;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x90e4f25391b3c125fb38c02cf87e10791926bf30.sol(283)


