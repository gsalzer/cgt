Processing contract: /home/jiaming/mavs_srcs/contract@0xba0a97d47a545c75aba170619bf83da7925325e7.sol:GTH_YunAnMY
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xba0a97d47a545c75aba170619bf83da7925325e7.sol:IERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xba0a97d47a545c75aba170619bf83da7925325e7.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'GTH_YunAnMY':
    |}
    |
  > |contract GTH_YunAnMY is IERC20 {
    |  using SafeMath for uint256;
    |  address private deployer;
  at /home/jiaming/mavs_srcs/contract@0xba0a97d47a545c75aba170619bf83da7925325e7.sol(40)

[33mWarning[0m for UnrestrictedWrite in contract 'GTH_YunAnMY':
    |    require(block.timestamp >= 1545102693);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xba0a97d47a545c75aba170619bf83da7925325e7.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'GTH_YunAnMY':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xba0a97d47a545c75aba170619bf83da7925325e7.sol(87)

[33mWarning[0m for UnrestrictedWrite in contract 'GTH_YunAnMY':
    |
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xba0a97d47a545c75aba170619bf83da7925325e7.sol(93)

[33mWarning[0m for UnrestrictedWrite in contract 'GTH_YunAnMY':
    |
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xba0a97d47a545c75aba170619bf83da7925325e7.sol(99)

[33mWarning[0m for UnrestrictedWrite in contract 'GTH_YunAnMY':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xba0a97d47a545c75aba170619bf83da7925325e7.sol(107)

[33mWarning[0m for UnrestrictedWrite in contract 'GTH_YunAnMY':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xba0a97d47a545c75aba170619bf83da7925325e7.sol(109)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |}
    |
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0xba0a97d47a545c75aba170619bf83da7925325e7.sol(13)


