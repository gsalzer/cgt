Processing contract: /home/jiaming/mavs_srcs/contract@0xa98c0e2c01eff351ec67e2fda240340f63fff228.sol:Kurecoin
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for LockedEther in contract 'Kurecoin':
    | 
    |
  > |contract Kurecoin  {
    |
    | 
  at /home/jiaming/mavs_srcs/contract@0xa98c0e2c01eff351ec67e2fda240340f63fff228.sol(5)

[31mViolation[0m for UnrestrictedWrite in contract 'Kurecoin':
    |        balanceOf[msg.sender] -= _value;
    |
  > |        balanceOf[_to] += _value;
    |
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xa98c0e2c01eff351ec67e2fda240340f63fff228.sol(55)

[31mViolation[0m for UnrestrictedWrite in contract 'Kurecoin':
    |        require(allowance[_from][msg.sender] >= _value);
    |
  > |        balanceOf[_to] += _value;
    |
    |        balanceOf[_from] -= _value;
  at /home/jiaming/mavs_srcs/contract@0xa98c0e2c01eff351ec67e2fda240340f63fff228.sol(73)

[31mViolation[0m for UnrestrictedWrite in contract 'Kurecoin':
    |        balanceOf[_to] += _value;
    |
  > |        balanceOf[_from] -= _value;
    |
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0xa98c0e2c01eff351ec67e2fda240340f63fff228.sol(75)

[33mWarning[0m for UnrestrictedWrite in contract 'Kurecoin':
    | 
    |
  > |contract Kurecoin  {
    |
    | 
  at /home/jiaming/mavs_srcs/contract@0xa98c0e2c01eff351ec67e2fda240340f63fff228.sol(5)

[33mWarning[0m for UnrestrictedWrite in contract 'Kurecoin':
    |        require(balanceOf[_to] + _value >= balanceOf[_to]);
    |
  > |        balanceOf[msg.sender] -= _value;
    |
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0xa98c0e2c01eff351ec67e2fda240340f63fff228.sol(53)

[33mWarning[0m for UnrestrictedWrite in contract 'Kurecoin':
    |        balanceOf[_from] -= _value;
    |
  > |        allowance[_from][msg.sender] -= _value;
    |
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xa98c0e2c01eff351ec67e2fda240340f63fff228.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'Kurecoin':
    |        require(_value == 0 || allowance[msg.sender][_spender] == 0);
    |
  > |        allowance[msg.sender][_spender] = _value;
    |
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xa98c0e2c01eff351ec67e2fda240340f63fff228.sol(93)


