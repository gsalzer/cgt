Processing contract: /home/jiaming/mavs_srcs/contract@0x397bec1e3b62ab43df697cec7d8b780ef7edb17e.sol:AIflow
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for LockedEther in contract 'AIflow':
    |pragma solidity ^0.4.11;
    |
  > |contract  AIflow {
    |
    |    string public name = "AI data free to flow";      //  the AI flow token name
  at /home/jiaming/mavs_srcs/contract@0x397bec1e3b62ab43df697cec7d8b780ef7edb17e.sol(3)

[31mViolation[0m for UnrestrictedWrite in contract 'AIflow':
    |        require(balanceOf[msg.sender] >= _value);
    |        balanceOf[msg.sender] -= _value;
  > |        balanceOf[0x0] += _value;
    |        Transfer(msg.sender, 0x0, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x397bec1e3b62ab43df697cec7d8b780ef7edb17e.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'AIflow':
    |pragma solidity ^0.4.11;
    |
  > |contract  AIflow {
    |
    |    string public name = "AI data free to flow";      //  the AI flow token name
  at /home/jiaming/mavs_srcs/contract@0x397bec1e3b62ab43df697cec7d8b780ef7edb17e.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'AIflow':
    |        require(balanceOf[msg.sender] >= _value);
    |        require(balanceOf[_to] + _value >= balanceOf[_to]);
  > |        balanceOf[msg.sender] -= _value;
    |        balanceOf[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x397bec1e3b62ab43df697cec7d8b780ef7edb17e.sol(43)

[33mWarning[0m for UnrestrictedWrite in contract 'AIflow':
    |        require(balanceOf[_to] + _value >= balanceOf[_to]);
    |        balanceOf[msg.sender] -= _value;
  > |        balanceOf[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x397bec1e3b62ab43df697cec7d8b780ef7edb17e.sol(44)

[33mWarning[0m for UnrestrictedWrite in contract 'AIflow':
    |        require(balanceOf[_to] + _value >= balanceOf[_to]);
    |        require(allowance[_from][msg.sender] >= _value);
  > |        balanceOf[_to] += _value;
    |        balanceOf[_from] -= _value;
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x397bec1e3b62ab43df697cec7d8b780ef7edb17e.sol(53)

[33mWarning[0m for UnrestrictedWrite in contract 'AIflow':
    |        require(allowance[_from][msg.sender] >= _value);
    |        balanceOf[_to] += _value;
  > |        balanceOf[_from] -= _value;
    |        allowance[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x397bec1e3b62ab43df697cec7d8b780ef7edb17e.sol(54)

[33mWarning[0m for UnrestrictedWrite in contract 'AIflow':
    |        balanceOf[_to] += _value;
    |        balanceOf[_from] -= _value;
  > |        allowance[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x397bec1e3b62ab43df697cec7d8b780ef7edb17e.sol(55)

[33mWarning[0m for UnrestrictedWrite in contract 'AIflow':
    |    function approve(address _spender, uint256 _value) isRunning validAddress returns (bool success) {
    |        require(_value == 0 || allowance[msg.sender][_spender] == 0);
  > |        allowance[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x397bec1e3b62ab43df697cec7d8b780ef7edb17e.sol(62)

[33mWarning[0m for UnrestrictedWrite in contract 'AIflow':
    |
    |    function stop() isOwner {
  > |        stopped = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x397bec1e3b62ab43df697cec7d8b780ef7edb17e.sol(68)

[33mWarning[0m for UnrestrictedWrite in contract 'AIflow':
    |
    |    function start() isOwner {
  > |        stopped = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x397bec1e3b62ab43df697cec7d8b780ef7edb17e.sol(72)

[33mWarning[0m for UnrestrictedWrite in contract 'AIflow':
    |    function burn(uint256 _value) {
    |        require(balanceOf[msg.sender] >= _value);
  > |        balanceOf[msg.sender] -= _value;
    |        balanceOf[0x0] += _value;
    |        Transfer(msg.sender, 0x0, _value);
  at /home/jiaming/mavs_srcs/contract@0x397bec1e3b62ab43df697cec7d8b780ef7edb17e.sol(81)


