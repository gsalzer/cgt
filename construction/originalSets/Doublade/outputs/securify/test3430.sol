Processing contract: /home/jiaming/mavs_srcs/contract@0xe0f2b452761482da7862356366373817770bb58c.sol:AITToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for LockedEther in contract 'AITToken':
    |pragma solidity ^0.4.11;
    |
  > |contract AITToken {
    |
    |    string public name = "AIT";
  at /home/jiaming/mavs_srcs/contract@0xe0f2b452761482da7862356366373817770bb58c.sol(3)

[31mViolation[0m for UnrestrictedWrite in contract 'AITToken':
    |        require(balanceOf[msg.sender] >= _value);
    |        balanceOf[msg.sender] -= _value;
  > |        balanceOf[0x0] += _value;
    |        emit Transfer(msg.sender, 0x0, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe0f2b452761482da7862356366373817770bb58c.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'AITToken':
    |pragma solidity ^0.4.11;
    |
  > |contract AITToken {
    |
    |    string public name = "AIT";
  at /home/jiaming/mavs_srcs/contract@0xe0f2b452761482da7862356366373817770bb58c.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'AITToken':
    |        require(balanceOf[msg.sender] >= _value);
    |        require(balanceOf[_to] + _value >= balanceOf[_to]);
  > |        balanceOf[msg.sender] -= _value;
    |        balanceOf[_to] += _value;
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe0f2b452761482da7862356366373817770bb58c.sol(47)

[33mWarning[0m for UnrestrictedWrite in contract 'AITToken':
    |        require(balanceOf[_to] + _value >= balanceOf[_to]);
    |        balanceOf[msg.sender] -= _value;
  > |        balanceOf[_to] += _value;
    |        emit Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe0f2b452761482da7862356366373817770bb58c.sol(48)

[33mWarning[0m for UnrestrictedWrite in contract 'AITToken':
    |        require(balanceOf[_to] + _value >= balanceOf[_to]);
    |        require(allowance[_from][msg.sender] >= _value);
  > |        balanceOf[_to] += _value;
    |        balanceOf[_from] -= _value;
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0xe0f2b452761482da7862356366373817770bb58c.sol(57)

[33mWarning[0m for UnrestrictedWrite in contract 'AITToken':
    |        require(allowance[_from][msg.sender] >= _value);
    |        balanceOf[_to] += _value;
  > |        balanceOf[_from] -= _value;
    |        allowance[_from][msg.sender] -= _value;
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe0f2b452761482da7862356366373817770bb58c.sol(58)

[33mWarning[0m for UnrestrictedWrite in contract 'AITToken':
    |        balanceOf[_to] += _value;
    |        balanceOf[_from] -= _value;
  > |        allowance[_from][msg.sender] -= _value;
    |        emit Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe0f2b452761482da7862356366373817770bb58c.sol(59)

[33mWarning[0m for UnrestrictedWrite in contract 'AITToken':
    |    function approve(address _spender, uint256 _value) public isRunning validAddress returns (bool success) {
    |        require(_value == 0 || allowance[msg.sender][_spender] == 0);
  > |        allowance[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe0f2b452761482da7862356366373817770bb58c.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'AITToken':
    |
    |    function stop() public isOwner {
  > |        stopped = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe0f2b452761482da7862356366373817770bb58c.sol(72)

[33mWarning[0m for UnrestrictedWrite in contract 'AITToken':
    |
    |    function start() public isOwner {
  > |        stopped = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe0f2b452761482da7862356366373817770bb58c.sol(76)

[33mWarning[0m for UnrestrictedWrite in contract 'AITToken':
    |    function burn(uint256 _value) public {
    |        require(balanceOf[msg.sender] >= _value);
  > |        balanceOf[msg.sender] -= _value;
    |        balanceOf[0x0] += _value;
    |        emit Transfer(msg.sender, 0x0, _value);
  at /home/jiaming/mavs_srcs/contract@0xe0f2b452761482da7862356366373817770bb58c.sol(89)


