Processing contract: /home/jiaming/mavs_srcs/contract@0x4222d7492205044351238c6c4a5b97514e65db7f.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4222d7492205044351238c6c4a5b97514e65db7f.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4222d7492205044351238c6c4a5b97514e65db7f.sol:TKDBToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.24;
    |
  > |library SafeMath {
    |    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |        if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0x4222d7492205044351238c6c4a5b97514e65db7f.sol(3)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x4222d7492205044351238c6c4a5b97514e65db7f.sol(32)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |        // SafeMath.sub will throw if there is not enough balance.
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x4222d7492205044351238c6c4a5b97514e65db7f.sol(52)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        emit Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x4222d7492205044351238c6c4a5b97514e65db7f.sol(69)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x4222d7492205044351238c6c4a5b97514e65db7f.sol(75)

[33mWarning[0m for LockedEther in contract 'TKDBToken':
    |
    |
  > |contract TKDBToken is StandardToken {
    |    string public name    = "TokenDouble";
    |    string public symbol  = "TKDB";
  at /home/jiaming/mavs_srcs/contract@0x4222d7492205044351238c6c4a5b97514e65db7f.sol(86)

[33mWarning[0m for UnrestrictedWrite in contract 'TKDBToken':
    |
    |        // SafeMath.sub will throw if there is not enough balance.
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x4222d7492205044351238c6c4a5b97514e65db7f.sol(52)

[33mWarning[0m for UnrestrictedWrite in contract 'TKDBToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        emit Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x4222d7492205044351238c6c4a5b97514e65db7f.sol(69)

[33mWarning[0m for UnrestrictedWrite in contract 'TKDBToken':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x4222d7492205044351238c6c4a5b97514e65db7f.sol(75)


