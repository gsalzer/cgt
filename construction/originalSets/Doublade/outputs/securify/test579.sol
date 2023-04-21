Processing contract: /home/jiaming/mavs_srcs/contract@0x253399d76dcc415df5444ca334ebf39c948dce19.sol:BITTLE
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x253399d76dcc415df5444ca334ebf39c948dce19.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BITTLE':
    |    }
    |}
  > |contract BITTLE {
    |    using SafeMath
    |    for uint256;
  at /home/jiaming/mavs_srcs/contract@0x253399d76dcc415df5444ca334ebf39c948dce19.sol(25)

[33mWarning[0m for UnrestrictedWrite in contract 'BITTLE':
    |
    |    function transfer(address _to, uint256 _value) returns(bool) {
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x253399d76dcc415df5444ca334ebf39c948dce19.sol(54)

[33mWarning[0m for UnrestrictedWrite in contract 'BITTLE':
    |        balances[_to] = balances[_to].add(_value);
    |        balances[_from] = balances[_from].sub(_value);
  > |        allowed[_from][msg.sender] = _allowance.sub(_value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x253399d76dcc415df5444ca334ebf39c948dce19.sol(64)

[33mWarning[0m for UnrestrictedWrite in contract 'BITTLE':
    |    function approve(address _spender, uint256 _value) returns(bool) {
    |        require((_value == 0) || (allowed[msg.sender][_spender] == 0));
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x253399d76dcc415df5444ca334ebf39c948dce19.sol(71)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^ 0.4 .18;
  > |library SafeMath {
    |    function mul(uint256 a, uint256 b) internal constant returns(uint256) {
    |        uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x253399d76dcc415df5444ca334ebf39c948dce19.sol(2)


