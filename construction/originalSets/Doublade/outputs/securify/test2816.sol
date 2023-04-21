Processing contract: /home/jiaming/mavs_srcs/contract@0xb8ca408aff631b65021850cd7ebf8eac7f3c0312.sol:AraToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb8ca408aff631b65021850cd7ebf8eac7f3c0312.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xb8ca408aff631b65021850cd7ebf8eac7f3c0312.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb8ca408aff631b65021850cd7ebf8eac7f3c0312.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'AraToken':
    |// File: contracts/ignored_contracts/AraToken.sol
    |
  > |contract AraToken is StandardToken {
    |
    |  // metadata
  at /home/jiaming/mavs_srcs/contract@0xb8ca408aff631b65021850cd7ebf8eac7f3c0312.sol(304)

[31mViolation[0m for UnrestrictedWrite in contract 'AraToken':
    |  function init(bytes _data) public {
    |    require(!initialized, 'Ara Token has already been initialized.');
  > |    initialized = true;
    |    
    |    uint256 btsptr;
  at /home/jiaming/mavs_srcs/contract@0xb8ca408aff631b65021850cd7ebf8eac7f3c0312.sol(321)

[33mWarning[0m for UnrestrictedWrite in contract 'AraToken':
    |    require(_to != address(0));
    |
  > |    balances_[msg.sender] = balances_[msg.sender].sub(_value);
    |    balances_[_to] = balances_[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xb8ca408aff631b65021850cd7ebf8eac7f3c0312.sol(161)

[33mWarning[0m for UnrestrictedWrite in contract 'AraToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed_[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xb8ca408aff631b65021850cd7ebf8eac7f3c0312.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'AraToken':
    |    balances_[_from] = balances_[_from].sub(_value);
    |    balances_[_to] = balances_[_to].add(_value);
  > |    allowed_[_from][msg.sender] = allowed_[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xb8ca408aff631b65021850cd7ebf8eac7f3c0312.sol(202)

[33mWarning[0m for UnrestrictedWrite in contract 'AraToken':
    |    returns (bool)
    |  {
  > |    allowed_[msg.sender][_spender] = (
    |      allowed_[msg.sender][_spender].add(_addedValue));
    |    emit Approval(msg.sender, _spender, allowed_[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xb8ca408aff631b65021850cd7ebf8eac7f3c0312.sol(223)

[33mWarning[0m for UnrestrictedWrite in contract 'AraToken':
    |    uint256 oldValue = allowed_[msg.sender][_spender];
    |    if (_subtractedValue >= oldValue) {
  > |      allowed_[msg.sender][_spender] = 0;
    |    } else {
    |      allowed_[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xb8ca408aff631b65021850cd7ebf8eac7f3c0312.sol(247)

[33mWarning[0m for UnrestrictedWrite in contract 'AraToken':
    |      allowed_[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed_[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed_[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xb8ca408aff631b65021850cd7ebf8eac7f3c0312.sol(249)

[33mWarning[0m for UnrestrictedWrite in contract 'AraToken':
    |    require(_value <= balanceOf(msg.sender));
    |
  > |    deposits_[msg.sender] = deposits_[msg.sender].add(_value);
    |    emit Deposit(msg.sender, _value, deposits_[msg.sender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xb8ca408aff631b65021850cd7ebf8eac7f3c0312.sol(343)

[33mWarning[0m for UnrestrictedWrite in contract 'AraToken':
    |    require(_value <= deposits_[msg.sender]);
    |
  > |    deposits_[msg.sender] = deposits_[msg.sender].sub(_value);
    |    emit Withdraw(msg.sender, _value, deposits_[msg.sender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xb8ca408aff631b65021850cd7ebf8eac7f3c0312.sol(351)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xb8ca408aff631b65021850cd7ebf8eac7f3c0312.sol(48)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20 {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xb8ca408aff631b65021850cd7ebf8eac7f3c0312.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require(_to != address(0));
    |
  > |    balances_[msg.sender] = balances_[msg.sender].sub(_value);
    |    balances_[_to] = balances_[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xb8ca408aff631b65021850cd7ebf8eac7f3c0312.sol(161)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed_[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xb8ca408aff631b65021850cd7ebf8eac7f3c0312.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances_[_from] = balances_[_from].sub(_value);
    |    balances_[_to] = balances_[_to].add(_value);
  > |    allowed_[_from][msg.sender] = allowed_[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xb8ca408aff631b65021850cd7ebf8eac7f3c0312.sol(202)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    returns (bool)
    |  {
  > |    allowed_[msg.sender][_spender] = (
    |      allowed_[msg.sender][_spender].add(_addedValue));
    |    emit Approval(msg.sender, _spender, allowed_[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xb8ca408aff631b65021850cd7ebf8eac7f3c0312.sol(223)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint256 oldValue = allowed_[msg.sender][_spender];
    |    if (_subtractedValue >= oldValue) {
  > |      allowed_[msg.sender][_spender] = 0;
    |    } else {
    |      allowed_[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xb8ca408aff631b65021850cd7ebf8eac7f3c0312.sol(247)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed_[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed_[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed_[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xb8ca408aff631b65021850cd7ebf8eac7f3c0312.sol(249)


