Processing contract: /home/jiaming/mavs_srcs/contract@0xae73b38d1c9a8b274127ec30160a4927c4d71824.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xae73b38d1c9a8b274127ec30160a4927c4d71824.sol:BurnableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xae73b38d1c9a8b274127ec30160a4927c4d71824.sol:CentrallyIssuedToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xae73b38d1c9a8b274127ec30160a4927c4d71824.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xae73b38d1c9a8b274127ec30160a4927c4d71824.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xae73b38d1c9a8b274127ec30160a4927c4d71824.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xae73b38d1c9a8b274127ec30160a4927c4d71824.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xae73b38d1c9a8b274127ec30160a4927c4d71824.sol:StandardTokenExt
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xae73b38d1c9a8b274127ec30160a4927c4d71824.sol:UpgradeAgent
Processing contract: /home/jiaming/mavs_srcs/contract@0xae73b38d1c9a8b274127ec30160a4927c4d71824.sol:UpgradeableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    | * @dev Basic version of StandardToken, with no allowances. 
    | */
  > |contract BasicToken is ERC20Basic {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xae73b38d1c9a8b274127ec30160a4927c4d71824.sol(71)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |  */
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xae73b38d1c9a8b274127ec30160a4927c4d71824.sol(82)

[33mWarning[0m for LockedEther in contract 'BurnableToken':
    |
    |
  > |contract BurnableToken is StandardTokenExt {
    |
    |  // @notice An address for the transfer event where the burned tokens are transferred in a faux Transfer event
  at /home/jiaming/mavs_srcs/contract@0xae73b38d1c9a8b274127ec30160a4927c4d71824.sol(195)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |  */
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xae73b38d1c9a8b274127ec30160a4927c4d71824.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |  function transfer(address _to, uint256 _value) returns (bool) {
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xae73b38d1c9a8b274127ec30160a4927c4d71824.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    // require (_value <= _allowance);
    |
  > |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xae73b38d1c9a8b274127ec30160a4927c4d71824.sol(141)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |    balances[_to] = balances[_to].add(_value);
  > |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xae73b38d1c9a8b274127ec30160a4927c4d71824.sol(142)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xae73b38d1c9a8b274127ec30160a4927c4d71824.sol(143)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xae73b38d1c9a8b274127ec30160a4927c4d71824.sol(161)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |  function burn(uint burnAmount) {
    |    address burner = msg.sender;
  > |    balances[burner] = balances[burner].sub(burnAmount);
    |    totalSupply = totalSupply.sub(burnAmount);
    |    Burned(burner, burnAmount);
  at /home/jiaming/mavs_srcs/contract@0xae73b38d1c9a8b274127ec30160a4927c4d71824.sol(209)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    address burner = msg.sender;
    |    balances[burner] = balances[burner].sub(burnAmount);
  > |    totalSupply = totalSupply.sub(burnAmount);
    |    Burned(burner, burnAmount);
    |
  at /home/jiaming/mavs_srcs/contract@0xae73b38d1c9a8b274127ec30160a4927c4d71824.sol(210)

[31mViolation[0m for LockedEther in contract 'CentrallyIssuedToken':
    | *
    | */
  > |contract CentrallyIssuedToken is BurnableToken, UpgradeableToken {
    |
    |  // Token meta information
  at /home/jiaming/mavs_srcs/contract@0xae73b38d1c9a8b274127ec30160a4927c4d71824.sol(393)

[33mWarning[0m for UnhandledException in contract 'CentrallyIssuedToken':
    |
    |      // Upgrade agent reissues the tokens
  > |      upgradeAgent.upgradeFrom(msg.sender, value);
    |      Upgrade(msg.sender, upgradeAgent, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xae73b38d1c9a8b274127ec30160a4927c4d71824.sol(321)

[33mWarning[0m for UnhandledException in contract 'CentrallyIssuedToken':
    |
    |      // Bad interface
  > |      if(!upgradeAgent.isUpgradeAgent()) throw;
    |      // Make sure that token supplies match in source and target
    |      if (upgradeAgent.originalSupply() != totalSupply) throw;
  at /home/jiaming/mavs_srcs/contract@0xae73b38d1c9a8b274127ec30160a4927c4d71824.sol(344)

[33mWarning[0m for UnhandledException in contract 'CentrallyIssuedToken':
    |      if(!upgradeAgent.isUpgradeAgent()) throw;
    |      // Make sure that token supplies match in source and target
  > |      if (upgradeAgent.originalSupply() != totalSupply) throw;
    |
    |      UpgradeAgentSet(upgradeAgent);
  at /home/jiaming/mavs_srcs/contract@0xae73b38d1c9a8b274127ec30160a4927c4d71824.sol(346)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CentrallyIssuedToken':
    |
    |      // Upgrade agent reissues the tokens
  > |      upgradeAgent.upgradeFrom(msg.sender, value);
    |      Upgrade(msg.sender, upgradeAgent, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xae73b38d1c9a8b274127ec30160a4927c4d71824.sol(321)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CentrallyIssuedToken':
    |
    |      // Bad interface
  > |      if(!upgradeAgent.isUpgradeAgent()) throw;
    |      // Make sure that token supplies match in source and target
    |      if (upgradeAgent.originalSupply() != totalSupply) throw;
  at /home/jiaming/mavs_srcs/contract@0xae73b38d1c9a8b274127ec30160a4927c4d71824.sol(344)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CentrallyIssuedToken':
    |      if(!upgradeAgent.isUpgradeAgent()) throw;
    |      // Make sure that token supplies match in source and target
  > |      if (upgradeAgent.originalSupply() != totalSupply) throw;
    |
    |      UpgradeAgentSet(upgradeAgent);
  at /home/jiaming/mavs_srcs/contract@0xae73b38d1c9a8b274127ec30160a4927c4d71824.sol(346)

[31mViolation[0m for UnrestrictedWrite in contract 'CentrallyIssuedToken':
    | *
    | */
  > |contract CentrallyIssuedToken is BurnableToken, UpgradeableToken {
    |
    |  // Token meta information
  at /home/jiaming/mavs_srcs/contract@0xae73b38d1c9a8b274127ec30160a4927c4d71824.sol(393)

[33mWarning[0m for UnrestrictedWrite in contract 'CentrallyIssuedToken':
    |  */
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xae73b38d1c9a8b274127ec30160a4927c4d71824.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'CentrallyIssuedToken':
    |  function transfer(address _to, uint256 _value) returns (bool) {
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xae73b38d1c9a8b274127ec30160a4927c4d71824.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'CentrallyIssuedToken':
    |    // require (_value <= _allowance);
    |
  > |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xae73b38d1c9a8b274127ec30160a4927c4d71824.sol(141)

[33mWarning[0m for UnrestrictedWrite in contract 'CentrallyIssuedToken':
    |
    |    balances[_to] = balances[_to].add(_value);
  > |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xae73b38d1c9a8b274127ec30160a4927c4d71824.sol(142)

[33mWarning[0m for UnrestrictedWrite in contract 'CentrallyIssuedToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xae73b38d1c9a8b274127ec30160a4927c4d71824.sol(143)

[33mWarning[0m for UnrestrictedWrite in contract 'CentrallyIssuedToken':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xae73b38d1c9a8b274127ec30160a4927c4d71824.sol(161)

[33mWarning[0m for UnrestrictedWrite in contract 'CentrallyIssuedToken':
    |  function burn(uint burnAmount) {
    |    address burner = msg.sender;
  > |    balances[burner] = balances[burner].sub(burnAmount);
    |    totalSupply = totalSupply.sub(burnAmount);
    |    Burned(burner, burnAmount);
  at /home/jiaming/mavs_srcs/contract@0xae73b38d1c9a8b274127ec30160a4927c4d71824.sol(209)

[33mWarning[0m for UnrestrictedWrite in contract 'CentrallyIssuedToken':
    |    address burner = msg.sender;
    |    balances[burner] = balances[burner].sub(burnAmount);
  > |    totalSupply = totalSupply.sub(burnAmount);
    |    Burned(burner, burnAmount);
    |
  at /home/jiaming/mavs_srcs/contract@0xae73b38d1c9a8b274127ec30160a4927c4d71824.sol(210)

[33mWarning[0m for UnrestrictedWrite in contract 'CentrallyIssuedToken':
    |      if (value == 0) throw;
    |
  > |      balances[msg.sender] = balances[msg.sender].sub(value);
    |
    |      // Take tokens out from circulation
  at /home/jiaming/mavs_srcs/contract@0xae73b38d1c9a8b274127ec30160a4927c4d71824.sol(314)

[33mWarning[0m for UnrestrictedWrite in contract 'CentrallyIssuedToken':
    |
    |      // Take tokens out from circulation
  > |      totalSupply = totalSupply.sub(value);
    |      totalUpgraded = totalUpgraded.add(value);
    |
  at /home/jiaming/mavs_srcs/contract@0xae73b38d1c9a8b274127ec30160a4927c4d71824.sol(317)

[33mWarning[0m for UnrestrictedWrite in contract 'CentrallyIssuedToken':
    |      // Take tokens out from circulation
    |      totalSupply = totalSupply.sub(value);
  > |      totalUpgraded = totalUpgraded.add(value);
    |
    |      // Upgrade agent reissues the tokens
  at /home/jiaming/mavs_srcs/contract@0xae73b38d1c9a8b274127ec30160a4927c4d71824.sol(318)

[33mWarning[0m for UnrestrictedWrite in contract 'CentrallyIssuedToken':
    |      if (getUpgradeState() == UpgradeState.Upgrading) throw;
    |
  > |      upgradeAgent = UpgradeAgent(agent);
    |
    |      // Bad interface
  at /home/jiaming/mavs_srcs/contract@0xae73b38d1c9a8b274127ec30160a4927c4d71824.sol(341)

[33mWarning[0m for UnrestrictedWrite in contract 'CentrallyIssuedToken':
    |      if (master == 0x0) throw;
    |      if (msg.sender != upgradeMaster) throw;
  > |      upgradeMaster = master;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xae73b38d1c9a8b274127ec30160a4927c4d71824.sol(369)

[33mWarning[0m for UnrestrictedWrite in contract 'CentrallyIssuedToken':
    | *
    | */
  > |contract CentrallyIssuedToken is BurnableToken, UpgradeableToken {
    |
    |  // Token meta information
  at /home/jiaming/mavs_srcs/contract@0xae73b38d1c9a8b274127ec30160a4927c4d71824.sol(393)

[33mWarning[0m for UnrestrictedWrite in contract 'CentrallyIssuedToken':
    |    }
    |
  > |    released = true;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xae73b38d1c9a8b274127ec30160a4927c4d71824.sol(466)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xae73b38d1c9a8b274127ec30160a4927c4d71824.sol(39)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) allowed;
  at /home/jiaming/mavs_srcs/contract@0xae73b38d1c9a8b274127ec30160a4927c4d71824.sol(124)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  */
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xae73b38d1c9a8b274127ec30160a4927c4d71824.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xae73b38d1c9a8b274127ec30160a4927c4d71824.sol(143)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xae73b38d1c9a8b274127ec30160a4927c4d71824.sol(161)

[33mWarning[0m for LockedEther in contract 'StandardTokenExt':
    | *
    | */
  > |contract StandardTokenExt is StandardToken {
    |
    |  /* Interface declaration */
  at /home/jiaming/mavs_srcs/contract@0xae73b38d1c9a8b274127ec30160a4927c4d71824.sol(186)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardTokenExt':
    |  */
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xae73b38d1c9a8b274127ec30160a4927c4d71824.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardTokenExt':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xae73b38d1c9a8b274127ec30160a4927c4d71824.sol(143)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardTokenExt':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xae73b38d1c9a8b274127ec30160a4927c4d71824.sol(161)

[33mWarning[0m for LockedEther in contract 'UpgradeableToken':
    | * First envisioned by Golem and Lunyr projects.
    | */
  > |contract UpgradeableToken is StandardTokenExt {
    |
    |  /** Contract / person who can set the upgrade path. This can be the same as team multisig wallet, as what it is with its default value. */
  at /home/jiaming/mavs_srcs/contract@0xae73b38d1c9a8b274127ec30160a4927c4d71824.sol(261)

[33mWarning[0m for UnhandledException in contract 'UpgradeableToken':
    |
    |      // Upgrade agent reissues the tokens
  > |      upgradeAgent.upgradeFrom(msg.sender, value);
    |      Upgrade(msg.sender, upgradeAgent, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xae73b38d1c9a8b274127ec30160a4927c4d71824.sol(321)

[33mWarning[0m for UnhandledException in contract 'UpgradeableToken':
    |
    |      // Bad interface
  > |      if(!upgradeAgent.isUpgradeAgent()) throw;
    |      // Make sure that token supplies match in source and target
    |      if (upgradeAgent.originalSupply() != totalSupply) throw;
  at /home/jiaming/mavs_srcs/contract@0xae73b38d1c9a8b274127ec30160a4927c4d71824.sol(344)

[33mWarning[0m for UnhandledException in contract 'UpgradeableToken':
    |      if(!upgradeAgent.isUpgradeAgent()) throw;
    |      // Make sure that token supplies match in source and target
  > |      if (upgradeAgent.originalSupply() != totalSupply) throw;
    |
    |      UpgradeAgentSet(upgradeAgent);
  at /home/jiaming/mavs_srcs/contract@0xae73b38d1c9a8b274127ec30160a4927c4d71824.sol(346)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UpgradeableToken':
    |
    |      // Upgrade agent reissues the tokens
  > |      upgradeAgent.upgradeFrom(msg.sender, value);
    |      Upgrade(msg.sender, upgradeAgent, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xae73b38d1c9a8b274127ec30160a4927c4d71824.sol(321)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UpgradeableToken':
    |
    |      // Bad interface
  > |      if(!upgradeAgent.isUpgradeAgent()) throw;
    |      // Make sure that token supplies match in source and target
    |      if (upgradeAgent.originalSupply() != totalSupply) throw;
  at /home/jiaming/mavs_srcs/contract@0xae73b38d1c9a8b274127ec30160a4927c4d71824.sol(344)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UpgradeableToken':
    |      if(!upgradeAgent.isUpgradeAgent()) throw;
    |      // Make sure that token supplies match in source and target
  > |      if (upgradeAgent.originalSupply() != totalSupply) throw;
    |
    |      UpgradeAgentSet(upgradeAgent);
  at /home/jiaming/mavs_srcs/contract@0xae73b38d1c9a8b274127ec30160a4927c4d71824.sol(346)

[33mWarning[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |  */
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xae73b38d1c9a8b274127ec30160a4927c4d71824.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |  function transfer(address _to, uint256 _value) returns (bool) {
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xae73b38d1c9a8b274127ec30160a4927c4d71824.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |    // require (_value <= _allowance);
    |
  > |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xae73b38d1c9a8b274127ec30160a4927c4d71824.sol(141)

[33mWarning[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |
    |    balances[_to] = balances[_to].add(_value);
  > |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xae73b38d1c9a8b274127ec30160a4927c4d71824.sol(142)

[33mWarning[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xae73b38d1c9a8b274127ec30160a4927c4d71824.sol(143)

[33mWarning[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xae73b38d1c9a8b274127ec30160a4927c4d71824.sol(161)

[33mWarning[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |      if (value == 0) throw;
    |
  > |      balances[msg.sender] = balances[msg.sender].sub(value);
    |
    |      // Take tokens out from circulation
  at /home/jiaming/mavs_srcs/contract@0xae73b38d1c9a8b274127ec30160a4927c4d71824.sol(314)

[33mWarning[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |
    |      // Take tokens out from circulation
  > |      totalSupply = totalSupply.sub(value);
    |      totalUpgraded = totalUpgraded.add(value);
    |
  at /home/jiaming/mavs_srcs/contract@0xae73b38d1c9a8b274127ec30160a4927c4d71824.sol(317)

[33mWarning[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |      // Take tokens out from circulation
    |      totalSupply = totalSupply.sub(value);
  > |      totalUpgraded = totalUpgraded.add(value);
    |
    |      // Upgrade agent reissues the tokens
  at /home/jiaming/mavs_srcs/contract@0xae73b38d1c9a8b274127ec30160a4927c4d71824.sol(318)

[33mWarning[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |      if (getUpgradeState() == UpgradeState.Upgrading) throw;
    |
  > |      upgradeAgent = UpgradeAgent(agent);
    |
    |      // Bad interface
  at /home/jiaming/mavs_srcs/contract@0xae73b38d1c9a8b274127ec30160a4927c4d71824.sol(341)

[33mWarning[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |      if (master == 0x0) throw;
    |      if (msg.sender != upgradeMaster) throw;
  > |      upgradeMaster = master;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xae73b38d1c9a8b274127ec30160a4927c4d71824.sol(369)


