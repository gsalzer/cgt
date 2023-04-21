Processing contract: /home/jiaming/mavs_srcs/contract@0xb1f8ed18e93f8b321c7814209155f8637096a868.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb1f8ed18e93f8b321c7814209155f8637096a868.sol:CISBN
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb1f8ed18e93f8b321c7814209155f8637096a868.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xb1f8ed18e93f8b321c7814209155f8637096a868.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xb1f8ed18e93f8b321c7814209155f8637096a868.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb1f8ed18e93f8b321c7814209155f8637096a868.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    |
    |
  > |contract BasicToken is ERC20Basic {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xb1f8ed18e93f8b321c7814209155f8637096a868.sol(54)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xb1f8ed18e93f8b321c7814209155f8637096a868.sol(68)

[33mWarning[0m for LockedEther in contract 'CISBN':
    |
    |
  > |contract CISBN is StandardToken {
    |
    |  string public constant name = "ISB";
  at /home/jiaming/mavs_srcs/contract@0xb1f8ed18e93f8b321c7814209155f8637096a868.sol(167)

[33mWarning[0m for UnrestrictedWrite in contract 'CISBN':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xb1f8ed18e93f8b321c7814209155f8637096a868.sol(68)

[33mWarning[0m for UnrestrictedWrite in contract 'CISBN':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xb1f8ed18e93f8b321c7814209155f8637096a868.sol(106)

[33mWarning[0m for UnrestrictedWrite in contract 'CISBN':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xb1f8ed18e93f8b321c7814209155f8637096a868.sol(124)

[33mWarning[0m for UnrestrictedWrite in contract 'CISBN':
    |  function increaseApproval (address _spender, uint _addedValue) 
    |    returns (bool success) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xb1f8ed18e93f8b321c7814209155f8637096a868.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'CISBN':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xb1f8ed18e93f8b321c7814209155f8637096a868.sol(156)

[33mWarning[0m for UnrestrictedWrite in contract 'CISBN':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xb1f8ed18e93f8b321c7814209155f8637096a868.sol(158)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * website www.cryptoisbn.com   initiative of CryptoISBN TEAM cryptoisbn
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xb1f8ed18e93f8b321c7814209155f8637096a868.sol(10)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) allowed;
  at /home/jiaming/mavs_srcs/contract@0xb1f8ed18e93f8b321c7814209155f8637096a868.sol(85)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xb1f8ed18e93f8b321c7814209155f8637096a868.sol(68)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xb1f8ed18e93f8b321c7814209155f8637096a868.sol(106)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xb1f8ed18e93f8b321c7814209155f8637096a868.sol(124)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  function increaseApproval (address _spender, uint _addedValue) 
    |    returns (bool success) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xb1f8ed18e93f8b321c7814209155f8637096a868.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xb1f8ed18e93f8b321c7814209155f8637096a868.sol(156)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xb1f8ed18e93f8b321c7814209155f8637096a868.sol(158)


