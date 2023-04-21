Processing contract: /home/jiaming/mavs_srcs/contract@0xbf3558318944306e5ab0b265ae808936a10f7568.sol:Intercoin
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbf3558318944306e5ab0b265ae808936a10f7568.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Intercoin':
    |}
    |
  > |contract Intercoin {
    |  using SafeMath for uint256;
    |  string public constant name = "Intercoin";
  at /home/jiaming/mavs_srcs/contract@0xbf3558318944306e5ab0b265ae808936a10f7568.sol(30)

[33mWarning[0m for UnrestrictedWrite in contract 'Intercoin':
    |    require(_to != address(0));
    |    require(_value <= balances[msg.sender]);
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xbf3558318944306e5ab0b265ae808936a10f7568.sol(51)

[33mWarning[0m for UnrestrictedWrite in contract 'Intercoin':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xbf3558318944306e5ab0b265ae808936a10f7568.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'Intercoin':
    |
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xbf3558318944306e5ab0b265ae808936a10f7568.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'Intercoin':
    |
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xbf3558318944306e5ab0b265ae808936a10f7568.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'Intercoin':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xbf3558318944306e5ab0b265ae808936a10f7568.sol(91)

[33mWarning[0m for UnrestrictedWrite in contract 'Intercoin':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xbf3558318944306e5ab0b265ae808936a10f7568.sol(93)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.18;
    |
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0xbf3558318944306e5ab0b265ae808936a10f7568.sol(3)


