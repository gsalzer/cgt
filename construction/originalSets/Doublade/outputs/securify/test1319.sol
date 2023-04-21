Processing contract: /home/jiaming/mavs_srcs/contract@0x52b45f66ef0cf236b6741d1edbeec3e7dbdcd240.sol:HyperloopX
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for LockedEther in contract 'HyperloopX':
    |pragma solidity ^0.4.11;
    |
  > |contract HyperloopX {
    |
    |    string public name = "HyperloopX";      //  token name
  at /home/jiaming/mavs_srcs/contract@0x52b45f66ef0cf236b6741d1edbeec3e7dbdcd240.sol(3)

[31mViolation[0m for UnrestrictedWrite in contract 'HyperloopX':
    |        require(balanceOf[_to] + _value >= balanceOf[_to]);
    |        balanceOf[msg.sender] -= _value;
  > |        balanceOf[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x52b45f66ef0cf236b6741d1edbeec3e7dbdcd240.sol(28)

[31mViolation[0m for UnrestrictedWrite in contract 'HyperloopX':
    |        require(balanceOf[_to] + _value >= balanceOf[_to]);
    |        require(allowance[_from][msg.sender] >= _value);
  > |        balanceOf[_to] += _value;
    |        balanceOf[_from] -= _value;
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x52b45f66ef0cf236b6741d1edbeec3e7dbdcd240.sol(37)

[31mViolation[0m for UnrestrictedWrite in contract 'HyperloopX':
    |        require(allowance[_from][msg.sender] >= _value);
    |        balanceOf[_to] += _value;
  > |        balanceOf[_from] -= _value;
    |        allowance[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x52b45f66ef0cf236b6741d1edbeec3e7dbdcd240.sol(38)

[33mWarning[0m for UnrestrictedWrite in contract 'HyperloopX':
    |pragma solidity ^0.4.11;
    |
  > |contract HyperloopX {
    |
    |    string public name = "HyperloopX";      //  token name
  at /home/jiaming/mavs_srcs/contract@0x52b45f66ef0cf236b6741d1edbeec3e7dbdcd240.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'HyperloopX':
    |        require(balanceOf[msg.sender] >= _value);
    |        require(balanceOf[_to] + _value >= balanceOf[_to]);
  > |        balanceOf[msg.sender] -= _value;
    |        balanceOf[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x52b45f66ef0cf236b6741d1edbeec3e7dbdcd240.sol(27)

[33mWarning[0m for UnrestrictedWrite in contract 'HyperloopX':
    |        balanceOf[_to] += _value;
    |        balanceOf[_from] -= _value;
  > |        allowance[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x52b45f66ef0cf236b6741d1edbeec3e7dbdcd240.sol(39)

[33mWarning[0m for UnrestrictedWrite in contract 'HyperloopX':
    |    {
    |        require(_value == 0 || allowance[msg.sender][_spender] == 0);
  > |        allowance[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x52b45f66ef0cf236b6741d1edbeec3e7dbdcd240.sol(47)


