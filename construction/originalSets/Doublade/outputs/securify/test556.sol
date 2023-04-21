Processing contract: /home/jiaming/mavs_srcs/contract@0x23d79b8bf1b34865ebd9ea3c558724ad430599da.sol:Humanity
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for LockedEther in contract 'Humanity':
    |pragma solidity ^0.4.11;
    |
  > |contract Humanity {
    |
    |    string public name = "Humanity Token";
  at /home/jiaming/mavs_srcs/contract@0x23d79b8bf1b34865ebd9ea3c558724ad430599da.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'Humanity':
    |pragma solidity ^0.4.11;
    |
  > |contract Humanity {
    |
    |    string public name = "Humanity Token";
  at /home/jiaming/mavs_srcs/contract@0x23d79b8bf1b34865ebd9ea3c558724ad430599da.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'Humanity':
    |        require(balanceOf[msg.sender] >= _value);
    |        require(balanceOf[_to] + _value >= balanceOf[_to]);
  > |        balanceOf[msg.sender] -= _value;
    |        balanceOf[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x23d79b8bf1b34865ebd9ea3c558724ad430599da.sol(45)

[33mWarning[0m for UnrestrictedWrite in contract 'Humanity':
    |        require(balanceOf[_to] + _value >= balanceOf[_to]);
    |        balanceOf[msg.sender] -= _value;
  > |        balanceOf[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x23d79b8bf1b34865ebd9ea3c558724ad430599da.sol(46)

[33mWarning[0m for UnrestrictedWrite in contract 'Humanity':
    |        require(balanceOf[_to] + _value >= balanceOf[_to]);
    |        require(allowance[_from][msg.sender] >= _value);
  > |        balanceOf[_to] += _value;
    |        balanceOf[_from] -= _value;
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x23d79b8bf1b34865ebd9ea3c558724ad430599da.sol(55)

[33mWarning[0m for UnrestrictedWrite in contract 'Humanity':
    |        require(allowance[_from][msg.sender] >= _value);
    |        balanceOf[_to] += _value;
  > |        balanceOf[_from] -= _value;
    |        allowance[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x23d79b8bf1b34865ebd9ea3c558724ad430599da.sol(56)

[33mWarning[0m for UnrestrictedWrite in contract 'Humanity':
    |        balanceOf[_to] += _value;
    |        balanceOf[_from] -= _value;
  > |        allowance[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x23d79b8bf1b34865ebd9ea3c558724ad430599da.sol(57)

[33mWarning[0m for UnrestrictedWrite in contract 'Humanity':
    |    function approve(address _spender, uint256 _value) isRunning validAddress returns (bool success) {
    |        require(_value == 0 || allowance[msg.sender][_spender] == 0);
  > |        allowance[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x23d79b8bf1b34865ebd9ea3c558724ad430599da.sol(64)

[33mWarning[0m for UnrestrictedWrite in contract 'Humanity':
    |
    |    function stop() isOwner {
  > |        stopped = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x23d79b8bf1b34865ebd9ea3c558724ad430599da.sol(70)

[33mWarning[0m for UnrestrictedWrite in contract 'Humanity':
    |
    |    function start() isOwner {
  > |        stopped = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x23d79b8bf1b34865ebd9ea3c558724ad430599da.sol(74)

[33mWarning[0m for UnrestrictedWrite in contract 'Humanity':
    |    function burn(uint256 _value) {
    |        require(balanceOf[msg.sender] >= _value);
  > |        balanceOf[msg.sender] -= _value;
    |        balanceOf[0x0] += _value;
    |        Transfer(msg.sender, 0x0, _value);
  at /home/jiaming/mavs_srcs/contract@0x23d79b8bf1b34865ebd9ea3c558724ad430599da.sol(83)


