Processing contract: /home/jiaming/mavs_srcs/contract@0xe29b9ef8a3723e402e028346a25312d000b2a95d.sol:Dox
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe29b9ef8a3723e402e028346a25312d000b2a95d.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Dox':
    |}
    |
  > |contract Dox {
    |    using SafeMath for uint;
    |
  at /home/jiaming/mavs_srcs/contract@0xe29b9ef8a3723e402e028346a25312d000b2a95d.sol(30)

[33mWarning[0m for UnrestrictedWrite in contract 'Dox':
    |
    |    function transfer(address _to, uint _value) public returns (bool success) {
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe29b9ef8a3723e402e028346a25312d000b2a95d.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'Dox':
    |    {
    |        balances[_from] = balances[_from].sub(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe29b9ef8a3723e402e028346a25312d000b2a95d.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'Dox':
    |        returns (bool success)
    |    {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe29b9ef8a3723e402e028346a25312d000b2a95d.sol(94)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.21;
    |
  > |library SafeMath {
    |
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
  at /home/jiaming/mavs_srcs/contract@0xe29b9ef8a3723e402e028346a25312d000b2a95d.sol(3)


