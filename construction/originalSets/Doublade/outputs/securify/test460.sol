Processing contract: /home/jiaming/mavs_srcs/contract@0x1da37688d03be7e7bf6f917211877dffef5d97dc.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1da37688d03be7e7bf6f917211877dffef5d97dc.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x1da37688d03be7e7bf6f917211877dffef5d97dc.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x1da37688d03be7e7bf6f917211877dffef5d97dc.sol:FancyToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1da37688d03be7e7bf6f917211877dffef5d97dc.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1da37688d03be7e7bf6f917211877dffef5d97dc.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    |}
    |
  > |contract BasicToken is ERC20Basic {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x1da37688d03be7e7bf6f917211877dffef5d97dc.sol(58)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x1da37688d03be7e7bf6f917211877dffef5d97dc.sol(73)

[33mWarning[0m for LockedEther in contract 'FancyToken':
    |}
    |
  > |contract FancyToken is StandardToken {
    |
    |  string public constant name = "Fancy Token";
  at /home/jiaming/mavs_srcs/contract@0x1da37688d03be7e7bf6f917211877dffef5d97dc.sol(142)

[33mWarning[0m for UnrestrictedWrite in contract 'FancyToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x1da37688d03be7e7bf6f917211877dffef5d97dc.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'FancyToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x1da37688d03be7e7bf6f917211877dffef5d97dc.sol(108)

[33mWarning[0m for UnrestrictedWrite in contract 'FancyToken':
    |  function approve(address _spender, uint256 _value) public returns (bool) {
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x1da37688d03be7e7bf6f917211877dffef5d97dc.sol(125)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.25;
    |
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x1da37688d03be7e7bf6f917211877dffef5d97dc.sol(3)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0x1da37688d03be7e7bf6f917211877dffef5d97dc.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x1da37688d03be7e7bf6f917211877dffef5d97dc.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x1da37688d03be7e7bf6f917211877dffef5d97dc.sol(108)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  function approve(address _spender, uint256 _value) public returns (bool) {
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x1da37688d03be7e7bf6f917211877dffef5d97dc.sol(125)


