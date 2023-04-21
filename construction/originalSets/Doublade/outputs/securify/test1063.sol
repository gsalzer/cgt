Processing contract: /home/jiaming/mavs_srcs/contract@0x43567eb78638a55bbe51e9f9fb5b2d7ad1f125aa.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x43567eb78638a55bbe51e9f9fb5b2d7ad1f125aa.sol:HacToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x43567eb78638a55bbe51e9f9fb5b2d7ad1f125aa.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x43567eb78638a55bbe51e9f9fb5b2d7ad1f125aa.sol:owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x43567eb78638a55bbe51e9f9fb5b2d7ad1f125aa.sol:tokenRecipient
[33mWarning[0m for LockedEther in contract 'HacToken':
    |contract tokenRecipient { function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData); }
    |
  > |contract HacToken is ERC20Interface, owned{
    |	string public standard = 'Token 0.1';
    |	string public name;
  at /home/jiaming/mavs_srcs/contract@0x43567eb78638a55bbe51e9f9fb5b2d7ad1f125aa.sol(66)

[31mViolation[0m for MissingInputValidation in contract 'HacToken':
    |		return total = totalSupply;
    |	}
  > |	function balanceOf(address _owner) constant returns (uint256 balance) {
    |		return balanceOf[_owner];
    |	}
  at /home/jiaming/mavs_srcs/contract@0x43567eb78638a55bbe51e9f9fb5b2d7ad1f125aa.sol(88)

[31mViolation[0m for MissingInputValidation in contract 'HacToken':
    |	}
    |
  > |	function setTokens(address target, uint256 amount) onlyOwner {
    |		if(freeTokens < amount) revert();
    |
  at /home/jiaming/mavs_srcs/contract@0x43567eb78638a55bbe51e9f9fb5b2d7ad1f125aa.sol(101)

[31mViolation[0m for MissingInputValidation in contract 'HacToken':
    |	}
    |
  > |	function transferFrom(address _from, address _to, uint256 _value) onlyOwner returns (bool success) {
    |		balanceOf[_from] = SafeMath.sub(balanceOf[_from], _value);
    |		balanceOf[_to] = SafeMath.add(balanceOf[_to], _value);
  at /home/jiaming/mavs_srcs/contract@0x43567eb78638a55bbe51e9f9fb5b2d7ad1f125aa.sol(117)

[33mWarning[0m for MissingInputValidation in contract 'HacToken':
    |	}
    |
  > |	function sub(uint256 a, uint256 b) internal constant returns (uint256) {
    |		assert(b <= a);
    |		return a - b;
  at /home/jiaming/mavs_srcs/contract@0x43567eb78638a55bbe51e9f9fb5b2d7ad1f125aa.sol(35)

[33mWarning[0m for MissingInputValidation in contract 'HacToken':
    |	}
    |
  > |	function add(uint256 a, uint256 b) internal constant returns (uint256) {
    |		uint256 c = a + b;
    |		assert(c >= a);
  at /home/jiaming/mavs_srcs/contract@0x43567eb78638a55bbe51e9f9fb5b2d7ad1f125aa.sol(40)

[33mWarning[0m for MissingInputValidation in contract 'HacToken':
    |
    |contract owned {
  > |	address public owner;
    |
    |	function owned() {
  at /home/jiaming/mavs_srcs/contract@0x43567eb78638a55bbe51e9f9fb5b2d7ad1f125aa.sol(48)

[33mWarning[0m for MissingInputValidation in contract 'HacToken':
    |
    |contract HacToken is ERC20Interface, owned{
  > |	string public standard = 'Token 0.1';
    |	string public name;
    |	string public symbol;
  at /home/jiaming/mavs_srcs/contract@0x43567eb78638a55bbe51e9f9fb5b2d7ad1f125aa.sol(67)

[33mWarning[0m for MissingInputValidation in contract 'HacToken':
    |contract HacToken is ERC20Interface, owned{
    |	string public standard = 'Token 0.1';
  > |	string public name;
    |	string public symbol;
    |	uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0x43567eb78638a55bbe51e9f9fb5b2d7ad1f125aa.sol(68)

[33mWarning[0m for MissingInputValidation in contract 'HacToken':
    |	string public standard = 'Token 0.1';
    |	string public name;
  > |	string public symbol;
    |	uint8 public decimals;
    |	uint256 public freeTokens;
  at /home/jiaming/mavs_srcs/contract@0x43567eb78638a55bbe51e9f9fb5b2d7ad1f125aa.sol(69)

[33mWarning[0m for MissingInputValidation in contract 'HacToken':
    |	string public name;
    |	string public symbol;
  > |	uint8 public decimals;
    |	uint256 public freeTokens;
    |	uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x43567eb78638a55bbe51e9f9fb5b2d7ad1f125aa.sol(70)

[33mWarning[0m for MissingInputValidation in contract 'HacToken':
    |	string public symbol;
    |	uint8 public decimals;
  > |	uint256 public freeTokens;
    |	uint256 public totalSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0x43567eb78638a55bbe51e9f9fb5b2d7ad1f125aa.sol(71)

[33mWarning[0m for MissingInputValidation in contract 'HacToken':
    |	}
    |
  > |	function totalSupply() constant returns (uint256 total) {
    |		return total = totalSupply;
    |	}
  at /home/jiaming/mavs_srcs/contract@0x43567eb78638a55bbe51e9f9fb5b2d7ad1f125aa.sol(85)

[31mViolation[0m for UnrestrictedWrite in contract 'HacToken':
    |		if(freeTokens < amount) revert();
    |
  > |		balanceOf[target] = SafeMath.add(balanceOf[target], amount);
    |		freeTokens = SafeMath.sub(freeTokens, amount);
    |		Transfer(this, target, amount);
  at /home/jiaming/mavs_srcs/contract@0x43567eb78638a55bbe51e9f9fb5b2d7ad1f125aa.sol(104)

[31mViolation[0m for UnrestrictedWrite in contract 'HacToken':
    |
    |		balanceOf[target] = SafeMath.add(balanceOf[target], amount);
  > |		freeTokens = SafeMath.sub(freeTokens, amount);
    |		Transfer(this, target, amount);
    |	}
  at /home/jiaming/mavs_srcs/contract@0x43567eb78638a55bbe51e9f9fb5b2d7ad1f125aa.sol(105)

[31mViolation[0m for UnrestrictedWrite in contract 'HacToken':
    |
    |	function transfer(address _to, uint256 _value) returns (bool success){
  > |		balanceOf[msg.sender] = SafeMath.sub(balanceOf[msg.sender], _value);
    |		balanceOf[_to] = SafeMath.add(balanceOf[_to], _value);
    |
  at /home/jiaming/mavs_srcs/contract@0x43567eb78638a55bbe51e9f9fb5b2d7ad1f125aa.sol(110)

[31mViolation[0m for UnrestrictedWrite in contract 'HacToken':
    |	function transfer(address _to, uint256 _value) returns (bool success){
    |		balanceOf[msg.sender] = SafeMath.sub(balanceOf[msg.sender], _value);
  > |		balanceOf[_to] = SafeMath.add(balanceOf[_to], _value);
    |
    |		Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x43567eb78638a55bbe51e9f9fb5b2d7ad1f125aa.sol(111)

[31mViolation[0m for UnrestrictedWrite in contract 'HacToken':
    |
    |	function transferFrom(address _from, address _to, uint256 _value) onlyOwner returns (bool success) {
  > |		balanceOf[_from] = SafeMath.sub(balanceOf[_from], _value);
    |		balanceOf[_to] = SafeMath.add(balanceOf[_to], _value);
    |
  at /home/jiaming/mavs_srcs/contract@0x43567eb78638a55bbe51e9f9fb5b2d7ad1f125aa.sol(118)

[31mViolation[0m for UnrestrictedWrite in contract 'HacToken':
    |	function transferFrom(address _from, address _to, uint256 _value) onlyOwner returns (bool success) {
    |		balanceOf[_from] = SafeMath.sub(balanceOf[_from], _value);
  > |		balanceOf[_to] = SafeMath.add(balanceOf[_to], _value);
    |
    |		TransferFrom(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x43567eb78638a55bbe51e9f9fb5b2d7ad1f125aa.sol(119)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |	function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    |		uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x43567eb78638a55bbe51e9f9fb5b2d7ad1f125aa.sol(21)

[33mWarning[0m for LockedEther in contract 'owned':
    |}
    |
  > |contract owned {
    |	address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x43567eb78638a55bbe51e9f9fb5b2d7ad1f125aa.sol(47)

[33mWarning[0m for MissingInputValidation in contract 'owned':
    |
    |contract owned {
  > |	address public owner;
    |
    |	function owned() {
  at /home/jiaming/mavs_srcs/contract@0x43567eb78638a55bbe51e9f9fb5b2d7ad1f125aa.sol(48)


