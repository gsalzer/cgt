Processing contract: /home/jiaming/mavs_srcs/contract@0x8c28350a9449397f6ccbc61dd724601193a5dea0.sol:MGTToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for LockedEther in contract 'MGTToken':
    |pragma solidity ^0.4.11;
    |
  > |contract MGTToken {
    |
    |    string public name = "MGT";
  at /home/jiaming/mavs_srcs/contract@0x8c28350a9449397f6ccbc61dd724601193a5dea0.sol(3)

[31mViolation[0m for UnrestrictedWrite in contract 'MGTToken':
    |        require(balanceOf[msg.sender] >= _value);
    |        balanceOf[msg.sender] -= _value;
  > |        balanceOf[0x0] += _value;
    |        emit Transfer(msg.sender, 0x0, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8c28350a9449397f6ccbc61dd724601193a5dea0.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'MGTToken':
    |pragma solidity ^0.4.11;
    |
  > |contract MGTToken {
    |
    |    string public name = "MGT";
  at /home/jiaming/mavs_srcs/contract@0x8c28350a9449397f6ccbc61dd724601193a5dea0.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'MGTToken':
    |        require(balanceOf[msg.sender] >= _value);
    |        require(balanceOf[_to] + _value >= balanceOf[_to]);
  > |        balanceOf[msg.sender] -= _value;
    |        balanceOf[_to] += _value;
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x8c28350a9449397f6ccbc61dd724601193a5dea0.sol(47)

[33mWarning[0m for UnrestrictedWrite in contract 'MGTToken':
    |        require(balanceOf[_to] + _value >= balanceOf[_to]);
    |        balanceOf[msg.sender] -= _value;
  > |        balanceOf[_to] += _value;
    |        emit Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8c28350a9449397f6ccbc61dd724601193a5dea0.sol(48)

[33mWarning[0m for UnrestrictedWrite in contract 'MGTToken':
    |        require(balanceOf[_to] + _value >= balanceOf[_to]);
    |        require(allowance[_from][msg.sender] >= _value);
  > |        balanceOf[_to] += _value;
    |        balanceOf[_from] -= _value;
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x8c28350a9449397f6ccbc61dd724601193a5dea0.sol(57)

[33mWarning[0m for UnrestrictedWrite in contract 'MGTToken':
    |        require(allowance[_from][msg.sender] >= _value);
    |        balanceOf[_to] += _value;
  > |        balanceOf[_from] -= _value;
    |        allowance[_from][msg.sender] -= _value;
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x8c28350a9449397f6ccbc61dd724601193a5dea0.sol(58)

[33mWarning[0m for UnrestrictedWrite in contract 'MGTToken':
    |        balanceOf[_to] += _value;
    |        balanceOf[_from] -= _value;
  > |        allowance[_from][msg.sender] -= _value;
    |        emit Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8c28350a9449397f6ccbc61dd724601193a5dea0.sol(59)

[33mWarning[0m for UnrestrictedWrite in contract 'MGTToken':
    |    function approve(address _spender, uint256 _value) public isRunning validAddress returns (bool success) {
    |        require(_value == 0 || allowance[msg.sender][_spender] == 0);
  > |        allowance[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8c28350a9449397f6ccbc61dd724601193a5dea0.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'MGTToken':
    |
    |    function stop() public isOwner {
  > |        stopped = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8c28350a9449397f6ccbc61dd724601193a5dea0.sol(72)

[33mWarning[0m for UnrestrictedWrite in contract 'MGTToken':
    |
    |    function start() public isOwner {
  > |        stopped = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8c28350a9449397f6ccbc61dd724601193a5dea0.sol(76)

[33mWarning[0m for UnrestrictedWrite in contract 'MGTToken':
    |    function burn(uint256 _value) public {
    |        require(balanceOf[msg.sender] >= _value);
  > |        balanceOf[msg.sender] -= _value;
    |        balanceOf[0x0] += _value;
    |        emit Transfer(msg.sender, 0x0, _value);
  at /home/jiaming/mavs_srcs/contract@0x8c28350a9449397f6ccbc61dd724601193a5dea0.sol(89)


