Processing contract: /home/jiaming/mavs_srcs/contract@0xc6a72d9afbb47e628575d2296119a6e7d8a5af1c.sol:Bcigar
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc6a72d9afbb47e628575d2296119a6e7d8a5af1c.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc6a72d9afbb47e628575d2296119a6e7d8a5af1c.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc6a72d9afbb47e628575d2296119a6e7d8a5af1c.sol:Token
[33mWarning[0m for LockedEther in contract 'Bcigar':
    | * `StandardToken` functions.
    | */
  > |contract   Bcigar is StandardToken {
    |
    |  string public name = "Bcigar";
  at /home/jiaming/mavs_srcs/contract@0xc6a72d9afbb47e628575d2296119a6e7d8a5af1c.sol(102)

[31mViolation[0m for UnrestrictedWrite in contract 'Bcigar':
    |   */
    |  function Bcigarcoin() {
  > |    totalSupply = INITIAL_SUPPLY;
    |    balances[msg.sender] = INITIAL_SUPPLY;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc6a72d9afbb47e628575d2296119a6e7d8a5af1c.sol(113)

[33mWarning[0m for UnrestrictedWrite in contract 'Bcigar':
    |    {
    |        if (balances[msg.sender] >= _value && _value > 0 && balances[_to] + _value > balances[_to]) {
  > |            balances[msg.sender] = safeSubtract(balances[msg.sender], _value);
    |            balances[_to] = safeAdd(balances[_to], _value);
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc6a72d9afbb47e628575d2296119a6e7d8a5af1c.sol(52)

[33mWarning[0m for UnrestrictedWrite in contract 'Bcigar':
    |            balances[_to] = safeAdd(balances[_to], _value);
    |            balances[_from] = safeSubtract(balances[_from], _value);
  > |            allowed[_from][msg.sender] = safeSubtract(allowed[_from][msg.sender], _value);
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xc6a72d9afbb47e628575d2296119a6e7d8a5af1c.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'Bcigar':
    |    returns (bool success)
    |    {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xc6a72d9afbb47e628575d2296119a6e7d8a5af1c.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'Bcigar':
    |  function Bcigarcoin() {
    |    totalSupply = INITIAL_SUPPLY;
  > |    balances[msg.sender] = INITIAL_SUPPLY;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc6a72d9afbb47e628575d2296119a6e7d8a5af1c.sol(114)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity >=0.4.19;
    |
  > |contract SafeMath {
    |
    |    function safeAdd(uint256 x, uint256 y) internal returns(uint256) {
  at /home/jiaming/mavs_srcs/contract@0xc6a72d9afbb47e628575d2296119a6e7d8a5af1c.sol(3)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |
    |/*  ERC 20 token */
  > |contract StandardToken is Token, SafeMath {
    |
    |    mapping (address => uint256) balances;
  at /home/jiaming/mavs_srcs/contract@0xc6a72d9afbb47e628575d2296119a6e7d8a5af1c.sol(38)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    {
    |        if (balances[msg.sender] >= _value && _value > 0 && balances[_to] + _value > balances[_to]) {
  > |            balances[msg.sender] = safeSubtract(balances[msg.sender], _value);
    |            balances[_to] = safeAdd(balances[_to], _value);
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc6a72d9afbb47e628575d2296119a6e7d8a5af1c.sol(52)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |            balances[_to] = safeAdd(balances[_to], _value);
    |            balances[_from] = safeSubtract(balances[_from], _value);
  > |            allowed[_from][msg.sender] = safeSubtract(allowed[_from][msg.sender], _value);
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xc6a72d9afbb47e628575d2296119a6e7d8a5af1c.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    returns (bool success)
    |    {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xc6a72d9afbb47e628575d2296119a6e7d8a5af1c.sol(83)


