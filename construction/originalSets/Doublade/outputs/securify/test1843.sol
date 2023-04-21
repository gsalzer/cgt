Processing contract: /home/jiaming/mavs_srcs/contract@0x76246e564258c2d6ce32f1895183cb0f2f513976.sol:BittleCoin
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x76246e564258c2d6ce32f1895183cb0f2f513976.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x76246e564258c2d6ce32f1895183cb0f2f513976.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x76246e564258c2d6ce32f1895183cb0f2f513976.sol:Token
[33mWarning[0m for LockedEther in contract 'BittleCoin':
    | * `StandardToken` functions.
    | */
  > |contract BittleCoin is StandardToken {
    |
    |  string public name = "Bittle Coin";
  at /home/jiaming/mavs_srcs/contract@0x76246e564258c2d6ce32f1895183cb0f2f513976.sol(102)

[33mWarning[0m for UnrestrictedWrite in contract 'BittleCoin':
    |    {
    |        if (balances[msg.sender] >= _value && _value > 0 && balances[_to] + _value > balances[_to]) {
  > |            balances[msg.sender] = safeSubtract(balances[msg.sender], _value);
    |            balances[_to] = safeAdd(balances[_to], _value);
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x76246e564258c2d6ce32f1895183cb0f2f513976.sol(52)

[33mWarning[0m for UnrestrictedWrite in contract 'BittleCoin':
    |            balances[_to] = safeAdd(balances[_to], _value);
    |            balances[_from] = safeSubtract(balances[_from], _value);
  > |            allowed[_from][msg.sender] = safeSubtract(allowed[_from][msg.sender], _value);
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x76246e564258c2d6ce32f1895183cb0f2f513976.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'BittleCoin':
    |    returns (bool success)
    |    {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x76246e564258c2d6ce32f1895183cb0f2f513976.sol(83)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity >=0.4.18;
    |
  > |contract SafeMath {
    |
    |    function safeAdd(uint256 x, uint256 y) internal returns(uint256) {
  at /home/jiaming/mavs_srcs/contract@0x76246e564258c2d6ce32f1895183cb0f2f513976.sol(3)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |
    |/*  ERC 20 token */
  > |contract StandardToken is Token, SafeMath {
    |
    |    mapping (address => uint256) balances;
  at /home/jiaming/mavs_srcs/contract@0x76246e564258c2d6ce32f1895183cb0f2f513976.sol(38)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    {
    |        if (balances[msg.sender] >= _value && _value > 0 && balances[_to] + _value > balances[_to]) {
  > |            balances[msg.sender] = safeSubtract(balances[msg.sender], _value);
    |            balances[_to] = safeAdd(balances[_to], _value);
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x76246e564258c2d6ce32f1895183cb0f2f513976.sol(52)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |            balances[_to] = safeAdd(balances[_to], _value);
    |            balances[_from] = safeSubtract(balances[_from], _value);
  > |            allowed[_from][msg.sender] = safeSubtract(allowed[_from][msg.sender], _value);
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x76246e564258c2d6ce32f1895183cb0f2f513976.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    returns (bool success)
    |    {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x76246e564258c2d6ce32f1895183cb0f2f513976.sol(83)


