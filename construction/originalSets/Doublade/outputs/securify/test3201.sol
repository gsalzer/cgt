Processing contract: /home/jiaming/mavs_srcs/contract@0xd18e454d844eb0009d32e07a0cde89e18d64cfb4.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd18e454d844eb0009d32e07a0cde89e18d64cfb4.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xd18e454d844eb0009d32e07a0cde89e18d64cfb4.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xd18e454d844eb0009d32e07a0cde89e18d64cfb4.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd18e454d844eb0009d32e07a0cde89e18d64cfb4.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd18e454d844eb0009d32e07a0cde89e18d64cfb4.sol:WorkToken
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
  at /home/jiaming/mavs_srcs/contract@0xd18e454d844eb0009d32e07a0cde89e18d64cfb4.sol(38)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd18e454d844eb0009d32e07a0cde89e18d64cfb4.sol(53)

[33mWarning[0m for LockedEther in contract 'SafeMath':
  > |library SafeMath {
    |
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256 c) {
  at /home/jiaming/mavs_srcs/contract@0xd18e454d844eb0009d32e07a0cde89e18d64cfb4.sol(1)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0xd18e454d844eb0009d32e07a0cde89e18d64cfb4.sol(72)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd18e454d844eb0009d32e07a0cde89e18d64cfb4.sol(53)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd18e454d844eb0009d32e07a0cde89e18d64cfb4.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd18e454d844eb0009d32e07a0cde89e18d64cfb4.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd18e454d844eb0009d32e07a0cde89e18d64cfb4.sol(99)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xd18e454d844eb0009d32e07a0cde89e18d64cfb4.sol(107)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xd18e454d844eb0009d32e07a0cde89e18d64cfb4.sol(109)

[33mWarning[0m for LockedEther in contract 'WorkToken':
    |}
    |
  > |contract WorkToken is StandardToken {
    |
    |    string public constant name = "WorkToken";
  at /home/jiaming/mavs_srcs/contract@0xd18e454d844eb0009d32e07a0cde89e18d64cfb4.sol(116)

[33mWarning[0m for UnrestrictedWrite in contract 'WorkToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd18e454d844eb0009d32e07a0cde89e18d64cfb4.sol(53)

[33mWarning[0m for UnrestrictedWrite in contract 'WorkToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd18e454d844eb0009d32e07a0cde89e18d64cfb4.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'WorkToken':
    |
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd18e454d844eb0009d32e07a0cde89e18d64cfb4.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'WorkToken':
    |
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd18e454d844eb0009d32e07a0cde89e18d64cfb4.sol(99)

[33mWarning[0m for UnrestrictedWrite in contract 'WorkToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xd18e454d844eb0009d32e07a0cde89e18d64cfb4.sol(107)

[33mWarning[0m for UnrestrictedWrite in contract 'WorkToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xd18e454d844eb0009d32e07a0cde89e18d64cfb4.sol(109)


