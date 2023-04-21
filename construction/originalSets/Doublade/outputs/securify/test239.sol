Processing contract: /home/jiaming/mavs_srcs/contract@0x10b0882603c24af9f1c07cde9f5a06b1300a8c00.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x10b0882603c24af9f1c07cde9f5a06b1300a8c00.sol:Bitconnect
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x10b0882603c24af9f1c07cde9f5a06b1300a8c00.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x10b0882603c24af9f1c07cde9f5a06b1300a8c00.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x10b0882603c24af9f1c07cde9f5a06b1300a8c00.sol:SafeMath
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
  at /home/jiaming/mavs_srcs/contract@0x10b0882603c24af9f1c07cde9f5a06b1300a8c00.sol(52)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x10b0882603c24af9f1c07cde9f5a06b1300a8c00.sol(76)

[33mWarning[0m for LockedEther in contract 'Bitconnect':
    |}
    |
  > |contract Bitconnect is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0x10b0882603c24af9f1c07cde9f5a06b1300a8c00.sol(100)

[33mWarning[0m for UnrestrictedWrite in contract 'Bitconnect':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x10b0882603c24af9f1c07cde9f5a06b1300a8c00.sol(76)

[33mWarning[0m for UnrestrictedWrite in contract 'Bitconnect':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x10b0882603c24af9f1c07cde9f5a06b1300a8c00.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'Bitconnect':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x10b0882603c24af9f1c07cde9f5a06b1300a8c00.sol(142)

[33mWarning[0m for UnrestrictedWrite in contract 'Bitconnect':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x10b0882603c24af9f1c07cde9f5a06b1300a8c00.sol(168)

[33mWarning[0m for UnrestrictedWrite in contract 'Bitconnect':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x10b0882603c24af9f1c07cde9f5a06b1300a8c00.sol(186)

[33mWarning[0m for UnrestrictedWrite in contract 'Bitconnect':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x10b0882603c24af9f1c07cde9f5a06b1300a8c00.sol(188)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |}
    |
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x10b0882603c24af9f1c07cde9f5a06b1300a8c00.sol(10)


