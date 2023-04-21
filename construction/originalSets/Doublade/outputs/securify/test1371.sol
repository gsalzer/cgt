Processing contract: /home/jiaming/mavs_srcs/contract@0x572e6f318056ba0c5d47a422653113843d250691.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x572e6f318056ba0c5d47a422653113843d250691.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x572e6f318056ba0c5d47a422653113843d250691.sol:XNTToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x572e6f318056ba0c5d47a422653113843d250691.sol(7)

[33mWarning[0m for LockedEther in contract 'XNTToken':
    |
    |
  > |contract XNTToken is ERC20 {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x572e6f318056ba0c5d47a422653113843d250691.sol(45)

[33mWarning[0m for UnrestrictedWrite in contract 'XNTToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x572e6f318056ba0c5d47a422653113843d250691.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'XNTToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x572e6f318056ba0c5d47a422653113843d250691.sol(105)

[33mWarning[0m for UnrestrictedWrite in contract 'XNTToken':
    |    require(_value != 0 || allowed[msg.sender][_spender] == 0);
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x572e6f318056ba0c5d47a422653113843d250691.sol(123)

[33mWarning[0m for UnrestrictedWrite in contract 'XNTToken':
    |   */
    |  function increaseApproval (address _spender, uint _addedValue) public returns (bool success) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x572e6f318056ba0c5d47a422653113843d250691.sol(145)

[33mWarning[0m for UnrestrictedWrite in contract 'XNTToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x572e6f318056ba0c5d47a422653113843d250691.sol(153)

[33mWarning[0m for UnrestrictedWrite in contract 'XNTToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x572e6f318056ba0c5d47a422653113843d250691.sol(155)


