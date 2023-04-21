Processing contract: /home/jiaming/mavs_srcs/contract@0x26dd9ad2293b267bfb063b8d5447a04f6d0e88fc.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x26dd9ad2293b267bfb063b8d5447a04f6d0e88fc.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x26dd9ad2293b267bfb063b8d5447a04f6d0e88fc.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x26dd9ad2293b267bfb063b8d5447a04f6d0e88fc.sol:MagicRewardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x26dd9ad2293b267bfb063b8d5447a04f6d0e88fc.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x26dd9ad2293b267bfb063b8d5447a04f6d0e88fc.sol:StandardToken
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
  at /home/jiaming/mavs_srcs/contract@0x26dd9ad2293b267bfb063b8d5447a04f6d0e88fc.sol(55)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |    require(_to != address(0));
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x26dd9ad2293b267bfb063b8d5447a04f6d0e88fc.sol(70)

[33mWarning[0m for LockedEther in contract 'MagicRewardToken':
    |}
    |
  > |contract MagicRewardToken is StandardToken {
    |    string public constant name = "Magic Reward Token";
    |    string public constant symbol = "MRT";
  at /home/jiaming/mavs_srcs/contract@0x26dd9ad2293b267bfb063b8d5447a04f6d0e88fc.sol(154)

[33mWarning[0m for UnrestrictedWrite in contract 'MagicRewardToken':
    |    require(_to != address(0));
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x26dd9ad2293b267bfb063b8d5447a04f6d0e88fc.sol(70)

[33mWarning[0m for UnrestrictedWrite in contract 'MagicRewardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x26dd9ad2293b267bfb063b8d5447a04f6d0e88fc.sol(100)

[33mWarning[0m for UnrestrictedWrite in contract 'MagicRewardToken':
    |
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x26dd9ad2293b267bfb063b8d5447a04f6d0e88fc.sol(106)

[33mWarning[0m for UnrestrictedWrite in contract 'MagicRewardToken':
    |    returns (bool)
    |  {
  > |    allowed[msg.sender][_spender] = (
    |      allowed[msg.sender][_spender].add(_addedValue));
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x26dd9ad2293b267bfb063b8d5447a04f6d0e88fc.sol(129)

[33mWarning[0m for UnrestrictedWrite in contract 'MagicRewardToken':
    |    uint256 oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue >= oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x26dd9ad2293b267bfb063b8d5447a04f6d0e88fc.sol(144)

[33mWarning[0m for UnrestrictedWrite in contract 'MagicRewardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x26dd9ad2293b267bfb063b8d5447a04f6d0e88fc.sol(146)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |
    |// Safe Math library
  > |library SafeMath {
    |
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256 c) {
  at /home/jiaming/mavs_srcs/contract@0x26dd9ad2293b267bfb063b8d5447a04f6d0e88fc.sol(4)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0x26dd9ad2293b267bfb063b8d5447a04f6d0e88fc.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require(_to != address(0));
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x26dd9ad2293b267bfb063b8d5447a04f6d0e88fc.sol(70)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x26dd9ad2293b267bfb063b8d5447a04f6d0e88fc.sol(100)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x26dd9ad2293b267bfb063b8d5447a04f6d0e88fc.sol(106)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    returns (bool)
    |  {
  > |    allowed[msg.sender][_spender] = (
    |      allowed[msg.sender][_spender].add(_addedValue));
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x26dd9ad2293b267bfb063b8d5447a04f6d0e88fc.sol(129)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint256 oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue >= oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x26dd9ad2293b267bfb063b8d5447a04f6d0e88fc.sol(144)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x26dd9ad2293b267bfb063b8d5447a04f6d0e88fc.sol(146)


