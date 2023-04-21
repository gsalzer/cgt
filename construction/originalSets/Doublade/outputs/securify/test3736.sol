Processing contract: /home/jiaming/mavs_srcs/contract@0xf532e78a0e4bc3a34dcaac053eb230b56fcd51eb.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf532e78a0e4bc3a34dcaac053eb230b56fcd51eb.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xf532e78a0e4bc3a34dcaac053eb230b56fcd51eb.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xf532e78a0e4bc3a34dcaac053eb230b56fcd51eb.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf532e78a0e4bc3a34dcaac053eb230b56fcd51eb.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf532e78a0e4bc3a34dcaac053eb230b56fcd51eb.sol:TradeToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    |}
    |
  > |contract BasicToken is ERC20Basic {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xf532e78a0e4bc3a34dcaac053eb230b56fcd51eb.sol(10)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xf532e78a0e4bc3a34dcaac053eb230b56fcd51eb.sol(33)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |}
    |
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xf532e78a0e4bc3a34dcaac053eb230b56fcd51eb.sol(57)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0xf532e78a0e4bc3a34dcaac053eb230b56fcd51eb.sol(99)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xf532e78a0e4bc3a34dcaac053eb230b56fcd51eb.sol(33)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xf532e78a0e4bc3a34dcaac053eb230b56fcd51eb.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xf532e78a0e4bc3a34dcaac053eb230b56fcd51eb.sol(133)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xf532e78a0e4bc3a34dcaac053eb230b56fcd51eb.sol(159)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xf532e78a0e4bc3a34dcaac053eb230b56fcd51eb.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xf532e78a0e4bc3a34dcaac053eb230b56fcd51eb.sol(179)

[33mWarning[0m for LockedEther in contract 'TradeToken':
    |}
    |
  > |contract TradeToken is StandardToken {
    |
    |  string public constant name = "TradeToken"; // solium-disable-line uppercase
  at /home/jiaming/mavs_srcs/contract@0xf532e78a0e4bc3a34dcaac053eb230b56fcd51eb.sol(187)

[33mWarning[0m for UnrestrictedWrite in contract 'TradeToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xf532e78a0e4bc3a34dcaac053eb230b56fcd51eb.sol(33)

[33mWarning[0m for UnrestrictedWrite in contract 'TradeToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xf532e78a0e4bc3a34dcaac053eb230b56fcd51eb.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'TradeToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xf532e78a0e4bc3a34dcaac053eb230b56fcd51eb.sol(133)

[33mWarning[0m for UnrestrictedWrite in contract 'TradeToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xf532e78a0e4bc3a34dcaac053eb230b56fcd51eb.sol(159)

[33mWarning[0m for UnrestrictedWrite in contract 'TradeToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xf532e78a0e4bc3a34dcaac053eb230b56fcd51eb.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'TradeToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xf532e78a0e4bc3a34dcaac053eb230b56fcd51eb.sol(179)


