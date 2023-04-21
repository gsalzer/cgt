Processing contract: /home/jiaming/mavs_srcs/contract@0x7abf8a69cba9dbf808b5984624eb55a528ea44f2.sol:ERC20
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7abf8a69cba9dbf808b5984624eb55a528ea44f2.sol:Petro
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7abf8a69cba9dbf808b5984624eb55a528ea44f2.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'ERC20':
    |
    |
  > |contract ERC20{
    |
    | 	function totalSupply() constant returns (uint256 totalSupply) {}
  at /home/jiaming/mavs_srcs/contract@0x7abf8a69cba9dbf808b5984624eb55a528ea44f2.sol(33)

[33mWarning[0m for DAOConstantGas in contract 'Petro':
    |		balances[recipient] = safeAdd(balances[recipient], tokens);
    |
  > |		if (!owner.send(msg.value)) {
    |		  assert;
    |		}
  at /home/jiaming/mavs_srcs/contract@0x7abf8a69cba9dbf808b5984624eb55a528ea44f2.sol(103)

[33mWarning[0m for LockedEther in contract 'Petro':
    |}
    |
  > |contract Petro is ERC20, SafeMath{
    |	
    |	mapping(address => uint256) balances;
  at /home/jiaming/mavs_srcs/contract@0x7abf8a69cba9dbf808b5984624eb55a528ea44f2.sol(48)

[31mViolation[0m for UnhandledException in contract 'Petro':
    |		balances[recipient] = safeAdd(balances[recipient], tokens);
    |
  > |		if (!owner.send(msg.value)) {
    |		  assert;
    |		}
  at /home/jiaming/mavs_srcs/contract@0x7abf8a69cba9dbf808b5984624eb55a528ea44f2.sol(103)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Petro':
    |		balances[recipient] = safeAdd(balances[recipient], tokens);
    |
  > |		if (!owner.send(msg.value)) {
    |		  assert;
    |		}
  at /home/jiaming/mavs_srcs/contract@0x7abf8a69cba9dbf808b5984624eb55a528ea44f2.sol(103)

[33mWarning[0m for UnrestrictedWrite in contract 'Petro':
    |
    |	function transfer(address _to, uint256 _value) public returns (bool success){
  > |	    balances[msg.sender] = safeSub(balances[msg.sender], _value);
    |	    balances[_to] = safeAdd(balances[_to], _value);
    |	    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x7abf8a69cba9dbf808b5984624eb55a528ea44f2.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'Petro':
    |	function transfer(address _to, uint256 _value) public returns (bool success){
    |	    balances[msg.sender] = safeSub(balances[msg.sender], _value);
  > |	    balances[_to] = safeAdd(balances[_to], _value);
    |	    Transfer(msg.sender, _to, _value);
    |	    return true;
  at /home/jiaming/mavs_srcs/contract@0x7abf8a69cba9dbf808b5984624eb55a528ea44f2.sol(61)

[33mWarning[0m for UnrestrictedWrite in contract 'Petro':
    |	    var _allowance = allowed[_from][msg.sender];
    |	    
  > |	    balances[_to] = safeAdd(balances[_to], _value);
    |	    balances[_from] = safeSub(balances[_from], _value);
    |	    allowed[_from][msg.sender] = safeSub(_allowance, _value);
  at /home/jiaming/mavs_srcs/contract@0x7abf8a69cba9dbf808b5984624eb55a528ea44f2.sol(71)

[33mWarning[0m for UnrestrictedWrite in contract 'Petro':
    |	    
    |	    balances[_to] = safeAdd(balances[_to], _value);
  > |	    balances[_from] = safeSub(balances[_from], _value);
    |	    allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |	    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x7abf8a69cba9dbf808b5984624eb55a528ea44f2.sol(72)

[33mWarning[0m for UnrestrictedWrite in contract 'Petro':
    |	    balances[_to] = safeAdd(balances[_to], _value);
    |	    balances[_from] = safeSub(balances[_from], _value);
  > |	    allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |	    Transfer(_from, _to, _value);
    |	    return true;
  at /home/jiaming/mavs_srcs/contract@0x7abf8a69cba9dbf808b5984624eb55a528ea44f2.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'Petro':
    |
    |	function approve(address _spender, uint256 _value) public returns (bool success) {
  > |	    allowed[msg.sender][_spender] = _value;
    |	    Approval(msg.sender, _spender, _value);
    |	    return true;
  at /home/jiaming/mavs_srcs/contract@0x7abf8a69cba9dbf808b5984624eb55a528ea44f2.sol(79)

[33mWarning[0m for UnrestrictedWrite in contract 'Petro':
    |
    |		uint tokens = safeDiv(safeMul(msg.value, price), 1 ether);
  > |		totalSupply = safeAdd(totalSupply, tokens);
    |
    |		balances[recipient] = safeAdd(balances[recipient], tokens);
  at /home/jiaming/mavs_srcs/contract@0x7abf8a69cba9dbf808b5984624eb55a528ea44f2.sol(99)

[33mWarning[0m for UnrestrictedWrite in contract 'Petro':
    |		totalSupply = safeAdd(totalSupply, tokens);
    |
  > |		balances[recipient] = safeAdd(balances[recipient], tokens);
    |
    |		if (!owner.send(msg.value)) {
  at /home/jiaming/mavs_srcs/contract@0x7abf8a69cba9dbf808b5984624eb55a528ea44f2.sol(101)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.19;
    | 
  > |contract SafeMath{
    |  function safeMul(uint a, uint b) internal returns (uint) {
    |    uint c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x7abf8a69cba9dbf808b5984624eb55a528ea44f2.sol(3)


