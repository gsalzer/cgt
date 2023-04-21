Processing contract: /home/jiaming/mavs_srcs/contract@0x19ed522b05e626c79e231b94a37010274e5ac151.sol:HBI
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x19ed522b05e626c79e231b94a37010274e5ac151.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'HBI':
    |}
    |
  > |contract HBI {
    |    
    |    using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0x19ed522b05e626c79e231b94a37010274e5ac151.sol(33)

[33mWarning[0m for UnrestrictedWrite in contract 'HBI':
    |        require(_to != 0x0);
    |        require(balanceOf[_from] >= _value);
  > |        balanceOf[_from] = balanceOf[_from].sub(_value);
    |        balanceOf[_to] = balanceOf[_to].add(_value);
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x19ed522b05e626c79e231b94a37010274e5ac151.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'HBI':
    |        require(balanceOf[_from] >= _value);
    |        balanceOf[_from] = balanceOf[_from].sub(_value);
  > |        balanceOf[_to] = balanceOf[_to].add(_value);
    |        emit Transfer(_from, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x19ed522b05e626c79e231b94a37010274e5ac151.sol(74)

[33mWarning[0m for UnrestrictedWrite in contract 'HBI':
    |    function transferFrom(address _from, address _to, uint256 _value) validAddress public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);
  > |        allowance[_from][msg.sender] = allowance[_from][msg.sender].sub(_value);
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x19ed522b05e626c79e231b94a37010274e5ac151.sol(85)

[33mWarning[0m for UnrestrictedWrite in contract 'HBI':
    |    function approve(address _spender, uint256 _value) validAddress public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);
  > |        allowance[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x19ed522b05e626c79e231b94a37010274e5ac151.sol(92)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |
    |
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0x19ed522b05e626c79e231b94a37010274e5ac151.sol(4)


