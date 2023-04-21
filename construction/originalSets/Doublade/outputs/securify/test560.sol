Processing contract: /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol:BurnableToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol:ContractReceiver
Processing contract: /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol:TRMToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol:UpgradeAgent
Processing contract: /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol:UpgradeableToken
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
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(201)

[31mViolation[0m for MissingInputValidation in contract 'BurnableToken':
    |  }
    |
  > |  function transfer(address _to, uint _value) onlyPayloadSize(2 * 32) returns (bool success) {
    |    balances[msg.sender] = safeSub(balances[msg.sender], _value);
    |    balances[_to] = safeAdd(balances[_to], _value);
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(107)

[31mViolation[0m for MissingInputValidation in contract 'BurnableToken':
    |  }
    |
  > |  function transferFrom(address _from, address _to, uint _value) returns (bool success) {
    |    uint _allowance = allowed[_from][msg.sender];
    |
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(128)

[31mViolation[0m for MissingInputValidation in contract 'BurnableToken':
    |  }
    |
  > |  function balanceOf(address _owner) constant returns (uint balance) {
    |    return balances[_owner];
    |  }
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(141)

[31mViolation[0m for MissingInputValidation in contract 'BurnableToken':
    |  }
    |
  > |  function allowance(address _owner, address _spender) constant returns (uint remaining) {
    |    return allowed[_owner][_spender];
    |  }
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(158)

[31mViolation[0m for MissingInputValidation in contract 'BurnableToken':
    |   *
    |   */
  > |  function addApproval(address _spender, uint _addedValue)
    |  onlyPayloadSize(2 * 32)
    |  returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(168)

[31mViolation[0m for MissingInputValidation in contract 'BurnableToken':
    |   * Works around https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
    |   */
  > |  function subApproval(address _spender, uint _subtractedValue)
    |  onlyPayloadSize(2 * 32)
    |  returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(182)

[33mWarning[0m for MissingInputValidation in contract 'BurnableToken':
    | */
    |contract ERC20 {
  > |  uint public totalSupply;
    |  function balanceOf(address who) constant returns (uint);
    |  function allowance(address owner, address spender) constant returns (uint);
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'BurnableToken':
    |  }
    |
  > |  function safeSub(uint a, uint b) internal returns (uint) {
    |    assert(b <= a);
    |    return a - b;
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(41)

[33mWarning[0m for MissingInputValidation in contract 'BurnableToken':
    |  }
    |
  > |  function safeAdd(uint a, uint b) internal returns (uint) {
    |    uint c = a + b;
    |    assert(c>=a && c>=b);
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(46)

[33mWarning[0m for MissingInputValidation in contract 'BurnableToken':
    |  }
    |
  > |  function assert(bool assertion) internal {
    |    if (!assertion) {
    |      revert();
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(68)

[33mWarning[0m for MissingInputValidation in contract 'BurnableToken':
    |
    |  // ERC223 fetch contract size (must be nonzero to be a contract)
  > |  function isContract( address _addr ) private returns (bool) {
    |    uint length;
    |    _addr = _addr;
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(121)

[33mWarning[0m for MissingInputValidation in contract 'BurnableToken':
    |contract BurnableToken is StandardToken {
    |
  > |  address public constant BURN_ADDRESS = 0;
    |
    |  /** How many tokens we burned */
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(203)

[33mWarning[0m for UnhandledException in contract 'BurnableToken':
    |    if (isContract(_to)) {
    |      ContractReceiver rx = ContractReceiver(_to);
  > |      rx.tokenFallback(msg.sender, _value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(114)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BurnableToken':
    |    if (isContract(_to)) {
    |      ContractReceiver rx = ContractReceiver(_to);
  > |      rx.tokenFallback(msg.sender, _value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(114)

[31mViolation[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    // if (_value > _allowance) revert();
    |
  > |    balances[_to] = safeAdd(balances[_to], _value);
    |    balances[_from] = safeSub(balances[_from], _value);
    |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(134)

[31mViolation[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |    balances[_to] = safeAdd(balances[_to], _value);
  > |    balances[_from] = safeSub(balances[_from], _value);
    |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(135)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |  function transfer(address _to, uint _value) onlyPayloadSize(2 * 32) returns (bool success) {
  > |    balances[msg.sender] = safeSub(balances[msg.sender], _value);
    |    balances[_to] = safeAdd(balances[_to], _value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(108)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    balances[_to] = safeAdd(balances[_to], _value);
    |    balances[_from] = safeSub(balances[_from], _value);
  > |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    if ((_value != 0) && (allowed[msg.sender][_spender] != 0)) revert();
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(153)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |  returns (bool success) {
    |      uint oldValue = allowed[msg.sender][_spender];
  > |      allowed[msg.sender][_spender] = safeAdd(oldValue, _addedValue);
    |      Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |      return true;
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(172)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |      if (_subtractedValue > oldVal) {
  > |          allowed[msg.sender][_spender] = 0;
    |      } else {
    |          allowed[msg.sender][_spender] = safeSub(oldVal, _subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(189)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |          allowed[msg.sender][_spender] = 0;
    |      } else {
  > |          allowed[msg.sender][_spender] = safeSub(oldVal, _subtractedValue);
    |      }
    |      Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(191)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |  function burn(uint burnAmount) {
    |    address burner = msg.sender;
  > |    balances[burner] = safeSub(balances[burner], burnAmount);
    |    totalSupply = safeSub(totalSupply, burnAmount);
    |    Burned(burner, burnAmount);
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(214)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * Math operations with safety checks
    | */
  > |contract SafeMath {
    |  function safeMul(uint a, uint b) internal returns (uint) {
    |    uint c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(27)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, SafeMath {
    |
    |  /* Token supply got increased and a new owner received these tokens */
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(83)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |  }
    |
  > |  function transfer(address _to, uint _value) onlyPayloadSize(2 * 32) returns (bool success) {
    |    balances[msg.sender] = safeSub(balances[msg.sender], _value);
    |    balances[_to] = safeAdd(balances[_to], _value);
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(107)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |  }
    |
  > |  function transferFrom(address _from, address _to, uint _value) returns (bool success) {
    |    uint _allowance = allowed[_from][msg.sender];
    |
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(128)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |  }
    |
  > |  function balanceOf(address _owner) constant returns (uint balance) {
    |    return balances[_owner];
    |  }
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(141)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |  }
    |
  > |  function allowance(address _owner, address _spender) constant returns (uint remaining) {
    |    return allowed[_owner][_spender];
    |  }
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(158)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |   *
    |   */
  > |  function addApproval(address _spender, uint _addedValue)
    |  onlyPayloadSize(2 * 32)
    |  returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(168)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |   * Works around https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
    |   */
  > |  function subApproval(address _spender, uint _subtractedValue)
    |  onlyPayloadSize(2 * 32)
    |  returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(182)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    | */
    |contract ERC20 {
  > |  uint public totalSupply;
    |  function balanceOf(address who) constant returns (uint);
    |  function allowance(address owner, address spender) constant returns (uint);
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |  }
    |
  > |  function safeSub(uint a, uint b) internal returns (uint) {
    |    assert(b <= a);
    |    return a - b;
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(41)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |  }
    |
  > |  function safeAdd(uint a, uint b) internal returns (uint) {
    |    uint c = a + b;
    |    assert(c>=a && c>=b);
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(46)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |  }
    |
  > |  function assert(bool assertion) internal {
    |    if (!assertion) {
    |      revert();
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(68)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |
    |  // ERC223 fetch contract size (must be nonzero to be a contract)
  > |  function isContract( address _addr ) private returns (bool) {
    |    uint length;
    |    _addr = _addr;
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(121)

[33mWarning[0m for UnhandledException in contract 'StandardToken':
    |    if (isContract(_to)) {
    |      ContractReceiver rx = ContractReceiver(_to);
  > |      rx.tokenFallback(msg.sender, _value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(114)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StandardToken':
    |    if (isContract(_to)) {
    |      ContractReceiver rx = ContractReceiver(_to);
  > |      rx.tokenFallback(msg.sender, _value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(114)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |    // if (_value > _allowance) revert();
    |
  > |    balances[_to] = safeAdd(balances[_to], _value);
    |    balances[_from] = safeSub(balances[_from], _value);
    |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(134)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    balances[_to] = safeAdd(balances[_to], _value);
  > |    balances[_from] = safeSub(balances[_from], _value);
    |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(135)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |  function transfer(address _to, uint _value) onlyPayloadSize(2 * 32) returns (bool success) {
  > |    balances[msg.sender] = safeSub(balances[msg.sender], _value);
    |    balances[_to] = safeAdd(balances[_to], _value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(108)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_to] = safeAdd(balances[_to], _value);
    |    balances[_from] = safeSub(balances[_from], _value);
  > |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    if ((_value != 0) && (allowed[msg.sender][_spender] != 0)) revert();
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(153)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  returns (bool success) {
    |      uint oldValue = allowed[msg.sender][_spender];
  > |      allowed[msg.sender][_spender] = safeAdd(oldValue, _addedValue);
    |      Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |      return true;
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(172)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |      if (_subtractedValue > oldVal) {
  > |          allowed[msg.sender][_spender] = 0;
    |      } else {
    |          allowed[msg.sender][_spender] = safeSub(oldVal, _subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(189)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |          allowed[msg.sender][_spender] = 0;
    |      } else {
  > |          allowed[msg.sender][_spender] = safeSub(oldVal, _subtractedValue);
    |      }
    |      Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(191)

[33mWarning[0m for DAO in contract 'TRMToken':
    |
    |      // Upgrade agent reissues the tokens
  > |      upgradeAgent.upgradeFrom(msg.sender, value);
    |      Upgrade(msg.sender, upgradeAgent, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(309)

[33mWarning[0m for DAO in contract 'TRMToken':
    |
    |      // Bad interface
  > |      if(!upgradeAgent.isUpgradeAgent()) revert();
    |      // Make sure that token supplies match in source and target
    |      if (upgradeAgent.originalSupply() != totalSupply) revert();
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(332)

[33mWarning[0m for DAO in contract 'TRMToken':
    |      if(!upgradeAgent.isUpgradeAgent()) revert();
    |      // Make sure that token supplies match in source and target
  > |      if (upgradeAgent.originalSupply() != totalSupply) revert();
    |
    |      UpgradeAgentSet(upgradeAgent);
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(334)

[33mWarning[0m for LockedEther in contract 'TRMToken':
    |
    |
  > |contract TRMToken is BurnableToken, UpgradeableToken {
    |
    |  string public name;
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(370)

[31mViolation[0m for MissingInputValidation in contract 'TRMToken':
    |  }
    |
  > |  function transfer(address _to, uint _value) onlyPayloadSize(2 * 32) returns (bool success) {
    |    balances[msg.sender] = safeSub(balances[msg.sender], _value);
    |    balances[_to] = safeAdd(balances[_to], _value);
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(107)

[31mViolation[0m for MissingInputValidation in contract 'TRMToken':
    |  }
    |
  > |  function transferFrom(address _from, address _to, uint _value) returns (bool success) {
    |    uint _allowance = allowed[_from][msg.sender];
    |
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(128)

[31mViolation[0m for MissingInputValidation in contract 'TRMToken':
    |  }
    |
  > |  function balanceOf(address _owner) constant returns (uint balance) {
    |    return balances[_owner];
    |  }
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(141)

[31mViolation[0m for MissingInputValidation in contract 'TRMToken':
    |  }
    |
  > |  function allowance(address _owner, address _spender) constant returns (uint remaining) {
    |    return allowed[_owner][_spender];
    |  }
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(158)

[31mViolation[0m for MissingInputValidation in contract 'TRMToken':
    |   *
    |   */
  > |  function addApproval(address _spender, uint _addedValue)
    |  onlyPayloadSize(2 * 32)
    |  returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(168)

[31mViolation[0m for MissingInputValidation in contract 'TRMToken':
    |   * Works around https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
    |   */
  > |  function subApproval(address _spender, uint _subtractedValue)
    |  onlyPayloadSize(2 * 32)
    |  returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(182)

[31mViolation[0m for MissingInputValidation in contract 'TRMToken':
    |  bool public mintingFinished = false;
    |
  > |  mapping(address => uint) public previligedBalances;
    |
    |  /** List of agents that are allowed to create new tokens */
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(379)

[31mViolation[0m for MissingInputValidation in contract 'TRMToken':
    |
    |  /** List of agents that are allowed to create new tokens */
  > |  mapping(address => bool) public mintAgents;
    |  event MintingAgentChanged(address addr, bool state);
    |
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(382)

[31mViolation[0m for MissingInputValidation in contract 'TRMToken':
    |
    |  // privileged transfer
  > |  function transferPrivileged(address _to, uint _value) onlyOwner returns (bool success) {
    |    balances[msg.sender] = safeSub(balances[msg.sender], _value);
    |    balances[_to] = safeAdd(balances[_to], _value);
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(422)

[31mViolation[0m for MissingInputValidation in contract 'TRMToken':
    |
    |  // get priveleged balance
  > |  function getPrivilegedBalance(address _owner) constant returns (uint balance) {
    |    return previligedBalances[_owner];
    |  }
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(431)

[31mViolation[0m for MissingInputValidation in contract 'TRMToken':
    |
    |  // admin only can transfer from the privileged accounts
  > |  function transferFromPrivileged(address _from, address _to, uint _value) onlyOwner returns (bool success) {
    |    uint availablePrevilegedBalance = previligedBalances[_from];
    |
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(436)

[31mViolation[0m for MissingInputValidation in contract 'TRMToken':
    |   * Only callably by a crowdsale contract (mint agent).
    |   */
  > |  function mint(address receiver, uint amount) onlyMintAgent canMint public {
    |    totalSupply = safeAdd(totalSupply, amount);
    |    balances[receiver] = safeAdd(balances[receiver], amount);
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(451)

[31mViolation[0m for MissingInputValidation in contract 'TRMToken':
    |   * Owner can allow a crowdsale contract to mint new tokens.
    |   */
  > |  function setMintAgent(address addr, bool state) onlyOwner canMint public {
    |    mintAgents[addr] = state;
    |    MintingAgentChanged(addr, state);
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(463)

[33mWarning[0m for MissingInputValidation in contract 'TRMToken':
    | */
    |contract ERC20 {
  > |  uint public totalSupply;
    |  function balanceOf(address who) constant returns (uint);
    |  function allowance(address owner, address spender) constant returns (uint);
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'TRMToken':
    |  }
    |
  > |  function safeSub(uint a, uint b) internal returns (uint) {
    |    assert(b <= a);
    |    return a - b;
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(41)

[33mWarning[0m for MissingInputValidation in contract 'TRMToken':
    |  }
    |
  > |  function safeAdd(uint a, uint b) internal returns (uint) {
    |    uint c = a + b;
    |    assert(c>=a && c>=b);
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(46)

[33mWarning[0m for MissingInputValidation in contract 'TRMToken':
    |  }
    |
  > |  function assert(bool assertion) internal {
    |    if (!assertion) {
    |      revert();
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(68)

[33mWarning[0m for MissingInputValidation in contract 'TRMToken':
    |
    |  // ERC223 fetch contract size (must be nonzero to be a contract)
  > |  function isContract( address _addr ) private returns (bool) {
    |    uint length;
    |    _addr = _addr;
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(121)

[33mWarning[0m for MissingInputValidation in contract 'TRMToken':
    |contract BurnableToken is StandardToken {
    |
  > |  address public constant BURN_ADDRESS = 0;
    |
    |  /** How many tokens we burned */
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(203)

[33mWarning[0m for MissingInputValidation in contract 'TRMToken':
    |
    |  /** Contract / person who can set the upgrade path. This can be the same as team multisig wallet, as what it is with its default value. */
  > |  address public upgradeMaster;
    |
    |  /** The next contract where the tokens will be migrated. */
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(252)

[33mWarning[0m for MissingInputValidation in contract 'TRMToken':
    |
    |  /** The next contract where the tokens will be migrated. */
  > |  UpgradeAgent public upgradeAgent;
    |
    |  /** How many tokens we have upgraded by now. */
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(255)

[33mWarning[0m for MissingInputValidation in contract 'TRMToken':
    |
    |  /** How many tokens we have upgraded by now. */
  > |  uint256 public totalUpgraded;
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(258)

[33mWarning[0m for MissingInputValidation in contract 'TRMToken':
    |   * Get the state of the token upgrade.
    |   */
  > |  function getUpgradeState() public constant returns(UpgradeState) {
    |    if(!canUpgrade()) return UpgradeState.NotAllowed;
    |    else if(address(upgradeAgent) == 0x00) return UpgradeState.WaitingForAgent;
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(342)

[33mWarning[0m for MissingInputValidation in contract 'TRMToken':
    |   * This allows us to set a new owner for the upgrade mechanism.
    |   */
  > |  function setUpgradeMaster(address master) public {
    |      if (master == 0x0) revert();
    |      if (msg.sender != upgradeMaster) revert();
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(354)

[33mWarning[0m for MissingInputValidation in contract 'TRMToken':
    |   * Child contract can enable to provide the condition when the upgrade can begun.
    |   */
  > |  function canUpgrade() public constant returns(bool) {
    |     return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(363)

[33mWarning[0m for MissingInputValidation in contract 'TRMToken':
    |contract TRMToken is BurnableToken, UpgradeableToken {
    |
  > |  string public name;
    |  string public symbol;
    |  uint public decimals;
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(372)

[33mWarning[0m for MissingInputValidation in contract 'TRMToken':
    |
    |  string public name;
  > |  string public symbol;
    |  uint public decimals;
    |  address public owner;
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(373)

[33mWarning[0m for MissingInputValidation in contract 'TRMToken':
    |  string public name;
    |  string public symbol;
  > |  uint public decimals;
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(374)

[33mWarning[0m for MissingInputValidation in contract 'TRMToken':
    |  string public symbol;
    |  uint public decimals;
  > |  address public owner;
    |
    |  bool public mintingFinished = false;
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(375)

[33mWarning[0m for MissingInputValidation in contract 'TRMToken':
    |  address public owner;
    |
  > |  bool public mintingFinished = false;
    |
    |  mapping(address => uint) public previligedBalances;
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(377)

[33mWarning[0m for MissingInputValidation in contract 'TRMToken':
    |  }
    |
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
    |      owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(402)

[33mWarning[0m for UnhandledException in contract 'TRMToken':
    |    if (isContract(_to)) {
    |      ContractReceiver rx = ContractReceiver(_to);
  > |      rx.tokenFallback(msg.sender, _value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(114)

[33mWarning[0m for UnhandledException in contract 'TRMToken':
    |
    |      // Upgrade agent reissues the tokens
  > |      upgradeAgent.upgradeFrom(msg.sender, value);
    |      Upgrade(msg.sender, upgradeAgent, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(309)

[33mWarning[0m for UnhandledException in contract 'TRMToken':
    |
    |      // Bad interface
  > |      if(!upgradeAgent.isUpgradeAgent()) revert();
    |      // Make sure that token supplies match in source and target
    |      if (upgradeAgent.originalSupply() != totalSupply) revert();
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(332)

[33mWarning[0m for UnhandledException in contract 'TRMToken':
    |      if(!upgradeAgent.isUpgradeAgent()) revert();
    |      // Make sure that token supplies match in source and target
  > |      if (upgradeAgent.originalSupply() != totalSupply) revert();
    |
    |      UpgradeAgentSet(upgradeAgent);
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(334)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TRMToken':
    |    if (isContract(_to)) {
    |      ContractReceiver rx = ContractReceiver(_to);
  > |      rx.tokenFallback(msg.sender, _value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(114)

[31mViolation[0m for UnrestrictedWrite in contract 'TRMToken':
    |    // if (_value > _allowance) revert();
    |
  > |    balances[_to] = safeAdd(balances[_to], _value);
    |    balances[_from] = safeSub(balances[_from], _value);
    |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(134)

[31mViolation[0m for UnrestrictedWrite in contract 'TRMToken':
    |
    |    balances[_to] = safeAdd(balances[_to], _value);
  > |    balances[_from] = safeSub(balances[_from], _value);
    |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(135)

[31mViolation[0m for UnrestrictedWrite in contract 'TRMToken':
    |      if (value == 0) revert();
    |
  > |      balances[msg.sender] = safeSub(balances[msg.sender], value);
    |
    |      // Take tokens out from circulation
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(302)

[31mViolation[0m for UnrestrictedWrite in contract 'TRMToken':
    |
    |      // Take tokens out from circulation
  > |      totalSupply = safeSub(totalSupply, value);
    |      totalUpgraded = safeAdd(totalUpgraded, value);
    |
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(305)

[31mViolation[0m for UnrestrictedWrite in contract 'TRMToken':
    |      // Take tokens out from circulation
    |      totalSupply = safeSub(totalSupply, value);
  > |      totalUpgraded = safeAdd(totalUpgraded, value);
    |
    |      // Upgrade agent reissues the tokens
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(306)

[31mViolation[0m for UnrestrictedWrite in contract 'TRMToken':
    |      if (getUpgradeState() == UpgradeState.Upgrading) revert();
    |
  > |      upgradeAgent = UpgradeAgent(agent);
    |
    |      // Bad interface
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(329)

[31mViolation[0m for UnrestrictedWrite in contract 'TRMToken':
    |    uint availablePrevilegedBalance = previligedBalances[_from];
    |
  > |    balances[_from] = safeSub(balances[_from], _value);
    |    balances[_to] = safeAdd(balances[_to], _value);
    |    previligedBalances[_from] = safeSub(availablePrevilegedBalance, _value);
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(439)

[31mViolation[0m for UnrestrictedWrite in contract 'TRMToken':
    |
    |    balances[_from] = safeSub(balances[_from], _value);
  > |    balances[_to] = safeAdd(balances[_to], _value);
    |    previligedBalances[_from] = safeSub(availablePrevilegedBalance, _value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(440)

[31mViolation[0m for UnrestrictedWrite in contract 'TRMToken':
    |    balances[_from] = safeSub(balances[_from], _value);
    |    balances[_to] = safeAdd(balances[_to], _value);
  > |    previligedBalances[_from] = safeSub(availablePrevilegedBalance, _value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(441)

[31mViolation[0m for UnrestrictedWrite in contract 'TRMToken':
    |   */
    |  function mint(address receiver, uint amount) onlyMintAgent canMint public {
  > |    totalSupply = safeAdd(totalSupply, amount);
    |    balances[receiver] = safeAdd(balances[receiver], amount);
    |
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(452)

[31mViolation[0m for UnrestrictedWrite in contract 'TRMToken':
    |  function mint(address receiver, uint amount) onlyMintAgent canMint public {
    |    totalSupply = safeAdd(totalSupply, amount);
  > |    balances[receiver] = safeAdd(balances[receiver], amount);
    |
    |    // This will make the mint transaction apper in EtherScan.io
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(453)

[33mWarning[0m for UnrestrictedWrite in contract 'TRMToken':
    |
    |  function transfer(address _to, uint _value) onlyPayloadSize(2 * 32) returns (bool success) {
  > |    balances[msg.sender] = safeSub(balances[msg.sender], _value);
    |    balances[_to] = safeAdd(balances[_to], _value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(108)

[33mWarning[0m for UnrestrictedWrite in contract 'TRMToken':
    |    balances[_to] = safeAdd(balances[_to], _value);
    |    balances[_from] = safeSub(balances[_from], _value);
  > |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'TRMToken':
    |    if ((_value != 0) && (allowed[msg.sender][_spender] != 0)) revert();
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(153)

[33mWarning[0m for UnrestrictedWrite in contract 'TRMToken':
    |  returns (bool success) {
    |      uint oldValue = allowed[msg.sender][_spender];
  > |      allowed[msg.sender][_spender] = safeAdd(oldValue, _addedValue);
    |      Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |      return true;
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(172)

[33mWarning[0m for UnrestrictedWrite in contract 'TRMToken':
    |
    |      if (_subtractedValue > oldVal) {
  > |          allowed[msg.sender][_spender] = 0;
    |      } else {
    |          allowed[msg.sender][_spender] = safeSub(oldVal, _subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(189)

[33mWarning[0m for UnrestrictedWrite in contract 'TRMToken':
    |          allowed[msg.sender][_spender] = 0;
    |      } else {
  > |          allowed[msg.sender][_spender] = safeSub(oldVal, _subtractedValue);
    |      }
    |      Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(191)

[33mWarning[0m for UnrestrictedWrite in contract 'TRMToken':
    |  function burn(uint burnAmount) {
    |    address burner = msg.sender;
  > |    balances[burner] = safeSub(balances[burner], burnAmount);
    |    totalSupply = safeSub(totalSupply, burnAmount);
    |    Burned(burner, burnAmount);
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(214)

[33mWarning[0m for UnrestrictedWrite in contract 'TRMToken':
    |  // privileged transfer
    |  function transferPrivileged(address _to, uint _value) onlyOwner returns (bool success) {
  > |    balances[msg.sender] = safeSub(balances[msg.sender], _value);
    |    balances[_to] = safeAdd(balances[_to], _value);
    |    previligedBalances[_to] = safeAdd(previligedBalances[_to], _value);
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(423)

[33mWarning[0m for UnrestrictedWrite in contract 'TRMToken':
    |      if (master == 0x0) revert();
    |      if (msg.sender != upgradeMaster) revert();
  > |      upgradeMaster = master;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(357)

[33mWarning[0m for UnrestrictedWrite in contract 'TRMToken':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(404)

[33mWarning[0m for UnrestrictedWrite in contract 'TRMToken':
    |   */
    |  function setMintAgent(address addr, bool state) onlyOwner canMint public {
  > |    mintAgents[addr] = state;
    |    MintingAgentChanged(addr, state);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(464)

[33mWarning[0m for DAO in contract 'UpgradeableToken':
    |
    |      // Upgrade agent reissues the tokens
  > |      upgradeAgent.upgradeFrom(msg.sender, value);
    |      Upgrade(msg.sender, upgradeAgent, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(309)

[33mWarning[0m for DAO in contract 'UpgradeableToken':
    |
    |      // Bad interface
  > |      if(!upgradeAgent.isUpgradeAgent()) revert();
    |      // Make sure that token supplies match in source and target
    |      if (upgradeAgent.originalSupply() != totalSupply) revert();
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(332)

[33mWarning[0m for DAO in contract 'UpgradeableToken':
    |      if(!upgradeAgent.isUpgradeAgent()) revert();
    |      // Make sure that token supplies match in source and target
  > |      if (upgradeAgent.originalSupply() != totalSupply) revert();
    |
    |      UpgradeAgentSet(upgradeAgent);
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(334)

[33mWarning[0m for LockedEther in contract 'UpgradeableToken':
    | * First envisioned by Golem and Lunyr projects.
    | */
  > |contract UpgradeableToken is StandardToken {
    |
    |  /** Contract / person who can set the upgrade path. This can be the same as team multisig wallet, as what it is with its default value. */
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(249)

[31mViolation[0m for MissingInputValidation in contract 'UpgradeableToken':
    |  }
    |
  > |  function transfer(address _to, uint _value) onlyPayloadSize(2 * 32) returns (bool success) {
    |    balances[msg.sender] = safeSub(balances[msg.sender], _value);
    |    balances[_to] = safeAdd(balances[_to], _value);
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(107)

[31mViolation[0m for MissingInputValidation in contract 'UpgradeableToken':
    |  }
    |
  > |  function transferFrom(address _from, address _to, uint _value) returns (bool success) {
    |    uint _allowance = allowed[_from][msg.sender];
    |
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(128)

[31mViolation[0m for MissingInputValidation in contract 'UpgradeableToken':
    |  }
    |
  > |  function balanceOf(address _owner) constant returns (uint balance) {
    |    return balances[_owner];
    |  }
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(141)

[31mViolation[0m for MissingInputValidation in contract 'UpgradeableToken':
    |  }
    |
  > |  function allowance(address _owner, address _spender) constant returns (uint remaining) {
    |    return allowed[_owner][_spender];
    |  }
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(158)

[31mViolation[0m for MissingInputValidation in contract 'UpgradeableToken':
    |   *
    |   */
  > |  function addApproval(address _spender, uint _addedValue)
    |  onlyPayloadSize(2 * 32)
    |  returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(168)

[31mViolation[0m for MissingInputValidation in contract 'UpgradeableToken':
    |   * Works around https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
    |   */
  > |  function subApproval(address _spender, uint _subtractedValue)
    |  onlyPayloadSize(2 * 32)
    |  returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(182)

[33mWarning[0m for MissingInputValidation in contract 'UpgradeableToken':
    | */
    |contract ERC20 {
  > |  uint public totalSupply;
    |  function balanceOf(address who) constant returns (uint);
    |  function allowance(address owner, address spender) constant returns (uint);
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'UpgradeableToken':
    |  }
    |
  > |  function safeSub(uint a, uint b) internal returns (uint) {
    |    assert(b <= a);
    |    return a - b;
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(41)

[33mWarning[0m for MissingInputValidation in contract 'UpgradeableToken':
    |  }
    |
  > |  function safeAdd(uint a, uint b) internal returns (uint) {
    |    uint c = a + b;
    |    assert(c>=a && c>=b);
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(46)

[33mWarning[0m for MissingInputValidation in contract 'UpgradeableToken':
    |  }
    |
  > |  function assert(bool assertion) internal {
    |    if (!assertion) {
    |      revert();
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(68)

[33mWarning[0m for MissingInputValidation in contract 'UpgradeableToken':
    |
    |  // ERC223 fetch contract size (must be nonzero to be a contract)
  > |  function isContract( address _addr ) private returns (bool) {
    |    uint length;
    |    _addr = _addr;
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(121)

[33mWarning[0m for MissingInputValidation in contract 'UpgradeableToken':
    |
    |  /** Contract / person who can set the upgrade path. This can be the same as team multisig wallet, as what it is with its default value. */
  > |  address public upgradeMaster;
    |
    |  /** The next contract where the tokens will be migrated. */
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(252)

[33mWarning[0m for MissingInputValidation in contract 'UpgradeableToken':
    |
    |  /** The next contract where the tokens will be migrated. */
  > |  UpgradeAgent public upgradeAgent;
    |
    |  /** How many tokens we have upgraded by now. */
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(255)

[33mWarning[0m for MissingInputValidation in contract 'UpgradeableToken':
    |
    |  /** How many tokens we have upgraded by now. */
  > |  uint256 public totalUpgraded;
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(258)

[33mWarning[0m for MissingInputValidation in contract 'UpgradeableToken':
    |   * Get the state of the token upgrade.
    |   */
  > |  function getUpgradeState() public constant returns(UpgradeState) {
    |    if(!canUpgrade()) return UpgradeState.NotAllowed;
    |    else if(address(upgradeAgent) == 0x00) return UpgradeState.WaitingForAgent;
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(342)

[33mWarning[0m for MissingInputValidation in contract 'UpgradeableToken':
    |   * This allows us to set a new owner for the upgrade mechanism.
    |   */
  > |  function setUpgradeMaster(address master) public {
    |      if (master == 0x0) revert();
    |      if (msg.sender != upgradeMaster) revert();
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(354)

[33mWarning[0m for MissingInputValidation in contract 'UpgradeableToken':
    |   * Child contract can enable to provide the condition when the upgrade can begun.
    |   */
  > |  function canUpgrade() public constant returns(bool) {
    |     return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(363)

[33mWarning[0m for UnhandledException in contract 'UpgradeableToken':
    |    if (isContract(_to)) {
    |      ContractReceiver rx = ContractReceiver(_to);
  > |      rx.tokenFallback(msg.sender, _value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(114)

[33mWarning[0m for UnhandledException in contract 'UpgradeableToken':
    |
    |      // Upgrade agent reissues the tokens
  > |      upgradeAgent.upgradeFrom(msg.sender, value);
    |      Upgrade(msg.sender, upgradeAgent, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(309)

[33mWarning[0m for UnhandledException in contract 'UpgradeableToken':
    |
    |      // Bad interface
  > |      if(!upgradeAgent.isUpgradeAgent()) revert();
    |      // Make sure that token supplies match in source and target
    |      if (upgradeAgent.originalSupply() != totalSupply) revert();
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(332)

[33mWarning[0m for UnhandledException in contract 'UpgradeableToken':
    |      if(!upgradeAgent.isUpgradeAgent()) revert();
    |      // Make sure that token supplies match in source and target
  > |      if (upgradeAgent.originalSupply() != totalSupply) revert();
    |
    |      UpgradeAgentSet(upgradeAgent);
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(334)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UpgradeableToken':
    |    if (isContract(_to)) {
    |      ContractReceiver rx = ContractReceiver(_to);
  > |      rx.tokenFallback(msg.sender, _value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(114)

[31mViolation[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |    // if (_value > _allowance) revert();
    |
  > |    balances[_to] = safeAdd(balances[_to], _value);
    |    balances[_from] = safeSub(balances[_from], _value);
    |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(134)

[31mViolation[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |
    |    balances[_to] = safeAdd(balances[_to], _value);
  > |    balances[_from] = safeSub(balances[_from], _value);
    |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(135)

[31mViolation[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |      if (value == 0) revert();
    |
  > |      balances[msg.sender] = safeSub(balances[msg.sender], value);
    |
    |      // Take tokens out from circulation
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(302)

[31mViolation[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |
    |      // Take tokens out from circulation
  > |      totalSupply = safeSub(totalSupply, value);
    |      totalUpgraded = safeAdd(totalUpgraded, value);
    |
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(305)

[31mViolation[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |      // Take tokens out from circulation
    |      totalSupply = safeSub(totalSupply, value);
  > |      totalUpgraded = safeAdd(totalUpgraded, value);
    |
    |      // Upgrade agent reissues the tokens
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(306)

[31mViolation[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |      if (getUpgradeState() == UpgradeState.Upgrading) revert();
    |
  > |      upgradeAgent = UpgradeAgent(agent);
    |
    |      // Bad interface
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(329)

[33mWarning[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |
    |  function transfer(address _to, uint _value) onlyPayloadSize(2 * 32) returns (bool success) {
  > |    balances[msg.sender] = safeSub(balances[msg.sender], _value);
    |    balances[_to] = safeAdd(balances[_to], _value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(108)

[33mWarning[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |    balances[_to] = safeAdd(balances[_to], _value);
    |    balances[_from] = safeSub(balances[_from], _value);
  > |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |    if ((_value != 0) && (allowed[msg.sender][_spender] != 0)) revert();
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(153)

[33mWarning[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |  returns (bool success) {
    |      uint oldValue = allowed[msg.sender][_spender];
  > |      allowed[msg.sender][_spender] = safeAdd(oldValue, _addedValue);
    |      Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |      return true;
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(172)

[33mWarning[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |
    |      if (_subtractedValue > oldVal) {
  > |          allowed[msg.sender][_spender] = 0;
    |      } else {
    |          allowed[msg.sender][_spender] = safeSub(oldVal, _subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(189)

[33mWarning[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |          allowed[msg.sender][_spender] = 0;
    |      } else {
  > |          allowed[msg.sender][_spender] = safeSub(oldVal, _subtractedValue);
    |      }
    |      Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(191)

[33mWarning[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |      if (master == 0x0) revert();
    |      if (msg.sender != upgradeMaster) revert();
  > |      upgradeMaster = master;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x241684ef15683ca57c42d8f4bb0e87d3427ddf1c.sol(357)


