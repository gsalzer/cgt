Processing contract: /home/jiaming/mavs_srcs/contract@0xc03a4b3984005384889ec38a0b8ff70ebf4bbd8f.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc03a4b3984005384889ec38a0b8ff70ebf4bbd8f.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xc03a4b3984005384889ec38a0b8ff70ebf4bbd8f.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xc03a4b3984005384889ec38a0b8ff70ebf4bbd8f.sol:PgbToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc03a4b3984005384889ec38a0b8ff70ebf4bbd8f.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc03a4b3984005384889ec38a0b8ff70ebf4bbd8f.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    | * @dev Basic version of StandardToken, with no allowances.
    | */
  > |contract BasicToken is ERC20Basic {
    |  using SafeMath for uint256;
    |  mapping(address => uint256) balances;
  at /home/jiaming/mavs_srcs/contract@0xc03a4b3984005384889ec38a0b8ff70ebf4bbd8f.sol(58)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |    require(_value <= balances[msg.sender]);
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc03a4b3984005384889ec38a0b8ff70ebf4bbd8f.sol(77)

[33mWarning[0m for LockedEther in contract 'PgbToken':
    |  }
    |}
  > |contract PgbToken is StandardToken {
    |    string  public name = "PgbToken";
    |    string  public symbol = "PGB";
  at /home/jiaming/mavs_srcs/contract@0xc03a4b3984005384889ec38a0b8ff70ebf4bbd8f.sol(186)

[33mWarning[0m for UnrestrictedWrite in contract 'PgbToken':
    |    require(_value <= balances[msg.sender]);
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc03a4b3984005384889ec38a0b8ff70ebf4bbd8f.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'PgbToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc03a4b3984005384889ec38a0b8ff70ebf4bbd8f.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'PgbToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc03a4b3984005384889ec38a0b8ff70ebf4bbd8f.sol(137)

[33mWarning[0m for UnrestrictedWrite in contract 'PgbToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc03a4b3984005384889ec38a0b8ff70ebf4bbd8f.sol(161)

[33mWarning[0m for UnrestrictedWrite in contract 'PgbToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xc03a4b3984005384889ec38a0b8ff70ebf4bbd8f.sol(178)

[33mWarning[0m for UnrestrictedWrite in contract 'PgbToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xc03a4b3984005384889ec38a0b8ff70ebf4bbd8f.sol(180)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  /**
    |  * @dev Multiplies two numbers, throws on overflow.
  at /home/jiaming/mavs_srcs/contract@0xc03a4b3984005384889ec38a0b8ff70ebf4bbd8f.sol(17)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |  mapping (address => mapping (address => uint256)) internal allowed;
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xc03a4b3984005384889ec38a0b8ff70ebf4bbd8f.sol(108)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require(_value <= balances[msg.sender]);
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc03a4b3984005384889ec38a0b8ff70ebf4bbd8f.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc03a4b3984005384889ec38a0b8ff70ebf4bbd8f.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc03a4b3984005384889ec38a0b8ff70ebf4bbd8f.sol(137)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc03a4b3984005384889ec38a0b8ff70ebf4bbd8f.sol(161)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xc03a4b3984005384889ec38a0b8ff70ebf4bbd8f.sol(178)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xc03a4b3984005384889ec38a0b8ff70ebf4bbd8f.sol(180)


