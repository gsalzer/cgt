Processing contract: /home/jiaming/mavs_srcs/contract@0x4eaf0a28ba6f524518df13a75ac276683efb7d3b.sol:HumanErrorToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for LockedEther in contract 'HumanErrorToken':
    |pragma solidity ^0.4.11;
    |
  > |contract HumanErrorToken {
    |
    |    string public name = "Digital Dao";
  at /home/jiaming/mavs_srcs/contract@0x4eaf0a28ba6f524518df13a75ac276683efb7d3b.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'HumanErrorToken':
    |pragma solidity ^0.4.11;
    |
  > |contract HumanErrorToken {
    |
    |    string public name = "Digital Dao";
  at /home/jiaming/mavs_srcs/contract@0x4eaf0a28ba6f524518df13a75ac276683efb7d3b.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'HumanErrorToken':
    |        require(balanceOf[msg.sender] >= _value);
    |        require(balanceOf[_to] + _value >= balanceOf[_to]);
  > |        balanceOf[msg.sender] -= _value;
    |        balanceOf[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x4eaf0a28ba6f524518df13a75ac276683efb7d3b.sol(45)

[33mWarning[0m for UnrestrictedWrite in contract 'HumanErrorToken':
    |        require(balanceOf[_to] + _value >= balanceOf[_to]);
    |        balanceOf[msg.sender] -= _value;
  > |        balanceOf[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x4eaf0a28ba6f524518df13a75ac276683efb7d3b.sol(46)

[33mWarning[0m for UnrestrictedWrite in contract 'HumanErrorToken':
    |        require(balanceOf[_to] + _value >= balanceOf[_to]);
    |        require(allowance[_from][msg.sender] >= _value);
  > |        balanceOf[_to] += _value;
    |        balanceOf[_from] -= _value;
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x4eaf0a28ba6f524518df13a75ac276683efb7d3b.sol(55)

[33mWarning[0m for UnrestrictedWrite in contract 'HumanErrorToken':
    |        require(allowance[_from][msg.sender] >= _value);
    |        balanceOf[_to] += _value;
  > |        balanceOf[_from] -= _value;
    |        allowance[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x4eaf0a28ba6f524518df13a75ac276683efb7d3b.sol(56)

[33mWarning[0m for UnrestrictedWrite in contract 'HumanErrorToken':
    |        balanceOf[_to] += _value;
    |        balanceOf[_from] -= _value;
  > |        allowance[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x4eaf0a28ba6f524518df13a75ac276683efb7d3b.sol(57)

[33mWarning[0m for UnrestrictedWrite in contract 'HumanErrorToken':
    |    function approve(address _spender, uint256 _value) isRunning validAddress returns (bool success) {
    |        require(_value == 0 || allowance[msg.sender][_spender] == 0);
  > |        allowance[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x4eaf0a28ba6f524518df13a75ac276683efb7d3b.sol(64)

[33mWarning[0m for UnrestrictedWrite in contract 'HumanErrorToken':
    |
    |    function stop() isOwner {
  > |        stopped = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4eaf0a28ba6f524518df13a75ac276683efb7d3b.sol(70)

[33mWarning[0m for UnrestrictedWrite in contract 'HumanErrorToken':
    |
    |    function start() isOwner {
  > |        stopped = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4eaf0a28ba6f524518df13a75ac276683efb7d3b.sol(74)

[33mWarning[0m for UnrestrictedWrite in contract 'HumanErrorToken':
    |    function burn(uint256 _value) {
    |        require(balanceOf[msg.sender] >= _value);
  > |        balanceOf[msg.sender] -= _value;
    |        balanceOf[0x0] += _value;
    |        Transfer(msg.sender, 0x0, _value);
  at /home/jiaming/mavs_srcs/contract@0x4eaf0a28ba6f524518df13a75ac276683efb7d3b.sol(83)


