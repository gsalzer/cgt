Processing contract: /home/jiaming/mavs_srcs/contract@0xd3f5056d9a112ca81b0e6f9f47f3285aa44c6aaa.sol:ERC20Moviecredits
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd3f5056d9a112ca81b0e6f9f47f3285aa44c6aaa.sol:MOVIECREDITS
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd3f5056d9a112ca81b0e6f9f47f3285aa44c6aaa.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'ERC20Moviecredits':
    |       
    |
  > |contract ERC20Moviecredits{
    |
    | 	function totalSupply() constant returns (uint256 totalSupply) {}
  at /home/jiaming/mavs_srcs/contract@0xd3f5056d9a112ca81b0e6f9f47f3285aa44c6aaa.sol(44)

[33mWarning[0m for DAOConstantGas in contract 'MOVIECREDITS':
    |		balances[recipient] = safeAdd(balances[recipient], tokens);
    |
  > |		if (!owner.send(msg.value)) {
    |		return;
    |		}
  at /home/jiaming/mavs_srcs/contract@0xd3f5056d9a112ca81b0e6f9f47f3285aa44c6aaa.sol(131)

[31mViolation[0m for MissingInputValidation in contract 'MOVIECREDITS':
    |
    |
  > |	function balanceOf(address _owner) constant returns (uint256 balance) {
    |	    return balances[_owner];
    |	}
  at /home/jiaming/mavs_srcs/contract@0xd3f5056d9a112ca81b0e6f9f47f3285aa44c6aaa.sol(67)

[31mViolation[0m for MissingInputValidation in contract 'MOVIECREDITS':
    |	mapping (address => mapping (address => uint256)) allowed;
    |
  > |	function transferFrom(address _from, address _to, uint256 _value) returns (bool success){
    |	    var _allowance = allowed[_from][msg.sender];
    |	    
  at /home/jiaming/mavs_srcs/contract@0xd3f5056d9a112ca81b0e6f9f47f3285aa44c6aaa.sol(82)

[31mViolation[0m for MissingInputValidation in contract 'MOVIECREDITS':
    |	}
    |
  > |	function approve(address _spender, uint256 _value) returns (bool success) {
    |	    allowed[msg.sender][_spender] = _value;
    |	    Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xd3f5056d9a112ca81b0e6f9f47f3285aa44c6aaa.sol(92)

[31mViolation[0m for MissingInputValidation in contract 'MOVIECREDITS':
    |	}
    |
  > |	function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |	    return allowed[_owner][_spender];
    |	}
  at /home/jiaming/mavs_srcs/contract@0xd3f5056d9a112ca81b0e6f9f47f3285aa44c6aaa.sol(98)

[33mWarning[0m for MissingInputValidation in contract 'MOVIECREDITS':
    |pragma solidity ^0.4.8;
    |contract SafeMath{
  > |  function safeMul(uint a, uint b) internal returns (uint) {
    |    uint c = a * b;
    |    assert(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0xd3f5056d9a112ca81b0e6f9f47f3285aa44c6aaa.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'MOVIECREDITS':
    |  }
    |
  > |  function safeDiv(uint a, uint b) internal returns (uint) {
    |    assert(b > 0);
    |    uint c = a / b;
  at /home/jiaming/mavs_srcs/contract@0xd3f5056d9a112ca81b0e6f9f47f3285aa44c6aaa.sol(17)

[33mWarning[0m for MissingInputValidation in contract 'MOVIECREDITS':
    |  }
    |	
  > |	function safeSub(uint a, uint b) internal returns (uint) {
    |    	assert(b <= a);
    |    	return a - b;
  at /home/jiaming/mavs_srcs/contract@0xd3f5056d9a112ca81b0e6f9f47f3285aa44c6aaa.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'MOVIECREDITS':
    |  }
    |
  > |	function safeAdd(uint a, uint b) internal returns (uint) {
    |    	uint c = a + b;
    |    	assert(c >= a);
  at /home/jiaming/mavs_srcs/contract@0xd3f5056d9a112ca81b0e6f9f47f3285aa44c6aaa.sol(29)

[33mWarning[0m for MissingInputValidation in contract 'MOVIECREDITS':
    |    	return c;
    |  }
  > |	function assert(bool assertion) internal {
    |	    if (!assertion) {
    |	      return;
  at /home/jiaming/mavs_srcs/contract@0xd3f5056d9a112ca81b0e6f9f47f3285aa44c6aaa.sol(34)

[33mWarning[0m for MissingInputValidation in contract 'MOVIECREDITS':
    |	mapping(address => uint256) balances;
    |
  > |	uint256 public totalSupply;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xd3f5056d9a112ca81b0e6f9f47f3285aa44c6aaa.sol(64)

[33mWarning[0m for MissingInputValidation in contract 'MOVIECREDITS':
    |
    |
  > |	uint256 public endTime;
    |
    |	modifier during_offering_time(){
  at /home/jiaming/mavs_srcs/contract@0xd3f5056d9a112ca81b0e6f9f47f3285aa44c6aaa.sol(105)

[33mWarning[0m for MissingInputValidation in contract 'MOVIECREDITS':
    |		}
    |	}
  > |	string 	public name = "MOVIECREDITS (EMVC)";
    |	string 	public symbol = "EMVC";
    |	uint 	public decimals = 2;
  at /home/jiaming/mavs_srcs/contract@0xd3f5056d9a112ca81b0e6f9f47f3285aa44c6aaa.sol(135)

[33mWarning[0m for MissingInputValidation in contract 'MOVIECREDITS':
    |	}
    |	string 	public name = "MOVIECREDITS (EMVC)";
  > |	string 	public symbol = "EMVC";
    |	uint 	public decimals = 2;
    |	uint256 public INITIAL_SUPPLY = 6000000000;
  at /home/jiaming/mavs_srcs/contract@0xd3f5056d9a112ca81b0e6f9f47f3285aa44c6aaa.sol(136)

[33mWarning[0m for MissingInputValidation in contract 'MOVIECREDITS':
    |	string 	public name = "MOVIECREDITS (EMVC)";
    |	string 	public symbol = "EMVC";
  > |	uint 	public decimals = 2;
    |	uint256 public INITIAL_SUPPLY = 6000000000;
    |    
  at /home/jiaming/mavs_srcs/contract@0xd3f5056d9a112ca81b0e6f9f47f3285aa44c6aaa.sol(137)

[33mWarning[0m for MissingInputValidation in contract 'MOVIECREDITS':
    |	string 	public symbol = "EMVC";
    |	uint 	public decimals = 2;
  > |	uint256 public INITIAL_SUPPLY = 6000000000;
    |    
    |	uint256 public price;
  at /home/jiaming/mavs_srcs/contract@0xd3f5056d9a112ca81b0e6f9f47f3285aa44c6aaa.sol(138)

[33mWarning[0m for MissingInputValidation in contract 'MOVIECREDITS':
    |	uint256 public INITIAL_SUPPLY = 6000000000;
    |    
  > |	uint256 public price;
    |	address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xd3f5056d9a112ca81b0e6f9f47f3285aa44c6aaa.sol(140)

[33mWarning[0m for MissingInputValidation in contract 'MOVIECREDITS':
    |    
    |	uint256 public price;
  > |	address public owner;
    |
    |	function MOVIECREDITS() {
  at /home/jiaming/mavs_srcs/contract@0xd3f5056d9a112ca81b0e6f9f47f3285aa44c6aaa.sol(141)

[33mWarning[0m for UnhandledException in contract 'MOVIECREDITS':
    |		balances[recipient] = safeAdd(balances[recipient], tokens);
    |
  > |		if (!owner.send(msg.value)) {
    |		return;
    |		}
  at /home/jiaming/mavs_srcs/contract@0xd3f5056d9a112ca81b0e6f9f47f3285aa44c6aaa.sol(131)

[31mViolation[0m for UnrestrictedWrite in contract 'MOVIECREDITS':
    |
    | function transfer(address _to, uint _value) onlyPayloadSize(2 * 32) { 
  > | balances[msg.sender] = safeSub(balances[msg.sender], _value);
    |	    balances[_to] = safeAdd(balances[_to], _value);
    |	    Transfer(msg.sender,_to,_value); }
  at /home/jiaming/mavs_srcs/contract@0xd3f5056d9a112ca81b0e6f9f47f3285aa44c6aaa.sol(75)

[31mViolation[0m for UnrestrictedWrite in contract 'MOVIECREDITS':
    | function transfer(address _to, uint _value) onlyPayloadSize(2 * 32) { 
    | balances[msg.sender] = safeSub(balances[msg.sender], _value);
  > |	    balances[_to] = safeAdd(balances[_to], _value);
    |	    Transfer(msg.sender,_to,_value); }
    |
  at /home/jiaming/mavs_srcs/contract@0xd3f5056d9a112ca81b0e6f9f47f3285aa44c6aaa.sol(76)

[31mViolation[0m for UnrestrictedWrite in contract 'MOVIECREDITS':
    |	    var _allowance = allowed[_from][msg.sender];
    |	    
  > |	    balances[_to] = safeAdd(balances[_to], _value);
    |	    balances[_from] = safeSub(balances[_from], _value);
    |	    allowed[_from][msg.sender] = safeSub(_allowance, _value);
  at /home/jiaming/mavs_srcs/contract@0xd3f5056d9a112ca81b0e6f9f47f3285aa44c6aaa.sol(85)

[31mViolation[0m for UnrestrictedWrite in contract 'MOVIECREDITS':
    |	    
    |	    balances[_to] = safeAdd(balances[_to], _value);
  > |	    balances[_from] = safeSub(balances[_from], _value);
    |	    allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |	    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd3f5056d9a112ca81b0e6f9f47f3285aa44c6aaa.sol(86)

[31mViolation[0m for UnrestrictedWrite in contract 'MOVIECREDITS':
    |	    balances[_to] = safeAdd(balances[_to], _value);
    |	    balances[_from] = safeSub(balances[_from], _value);
  > |	    allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |	    Transfer(_from, _to, _value);
    |	    return true;
  at /home/jiaming/mavs_srcs/contract@0xd3f5056d9a112ca81b0e6f9f47f3285aa44c6aaa.sol(87)

[31mViolation[0m for UnrestrictedWrite in contract 'MOVIECREDITS':
    |
    |		uint tokens = safeDiv(safeMul(msg.value, price), 1 ether);
  > |		totalSupply = safeSub(totalSupply, tokens);
    |
    |		balances[recipient] = safeAdd(balances[recipient], tokens);
  at /home/jiaming/mavs_srcs/contract@0xd3f5056d9a112ca81b0e6f9f47f3285aa44c6aaa.sol(127)

[31mViolation[0m for UnrestrictedWrite in contract 'MOVIECREDITS':
    |		totalSupply = safeSub(totalSupply, tokens);
    |
  > |		balances[recipient] = safeAdd(balances[recipient], tokens);
    |
    |		if (!owner.send(msg.value)) {
  at /home/jiaming/mavs_srcs/contract@0xd3f5056d9a112ca81b0e6f9f47f3285aa44c6aaa.sol(129)

[33mWarning[0m for UnrestrictedWrite in contract 'MOVIECREDITS':
    |
    |	function approve(address _spender, uint256 _value) returns (bool success) {
  > |	    allowed[msg.sender][_spender] = _value;
    |	    Approval(msg.sender, _spender, _value);
    |	    return true;
  at /home/jiaming/mavs_srcs/contract@0xd3f5056d9a112ca81b0e6f9f47f3285aa44c6aaa.sol(93)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * */
    |pragma solidity ^0.4.8;
  > |contract SafeMath{
    |  function safeMul(uint a, uint b) internal returns (uint) {
    |    uint c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xd3f5056d9a112ca81b0e6f9f47f3285aa44c6aaa.sol(10)


