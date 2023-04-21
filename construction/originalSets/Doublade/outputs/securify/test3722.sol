Processing contract: /home/jiaming/mavs_srcs/contract@0xf3db9a281ef5273741388cf0ca164d39e18433dd.sol:IToken
Processing contract: /home/jiaming/mavs_srcs/contract@0xf3db9a281ef5273741388cf0ca164d39e18433dd.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf3db9a281ef5273741388cf0ca164d39e18433dd.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf3db9a281ef5273741388cf0ca164d39e18433dd.sol:Token
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Owned':
    |pragma solidity ^0.4.18;
    |
  > |contract Owned {
    |	address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xf3db9a281ef5273741388cf0ca164d39e18433dd.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |	}
    |
  > |	function setOwner(address _owner) onlyOwner public {
    |		owner = _owner;
    |	}
  at /home/jiaming/mavs_srcs/contract@0xf3db9a281ef5273741388cf0ca164d39e18433dd.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |
    |contract Owned {
  > |	address public owner;
    |
    |	function Owned() public {
  at /home/jiaming/mavs_srcs/contract@0xf3db9a281ef5273741388cf0ca164d39e18433dd.sol(4)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |	function setOwner(address _owner) onlyOwner public {
  > |		owner = _owner;
    |	}
    |}
  at /home/jiaming/mavs_srcs/contract@0xf3db9a281ef5273741388cf0ca164d39e18433dd.sol(16)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |}
    |
  > |contract SafeMath {
    |	function add(uint256 _a, uint256 _b) internal pure returns (uint256) {
    |		uint256 c = _a + _b;
  at /home/jiaming/mavs_srcs/contract@0xf3db9a281ef5273741388cf0ca164d39e18433dd.sol(20)

[33mWarning[0m for LockedEther in contract 'Token':
    |}
    |
  > |contract Token is IToken, SafeMath, Owned {
    |	string public constant standard = '0.1';
    |	string public name = '';
  at /home/jiaming/mavs_srcs/contract@0xf3db9a281ef5273741388cf0ca164d39e18433dd.sol(54)

[31mViolation[0m for MissingInputValidation in contract 'Token':
    |	}
    |
  > |	function setOwner(address _owner) onlyOwner public {
    |		owner = _owner;
    |	}
  at /home/jiaming/mavs_srcs/contract@0xf3db9a281ef5273741388cf0ca164d39e18433dd.sol(15)

[31mViolation[0m for MissingInputValidation in contract 'Token':
    |	uint8 public decimals = 0;
    |	uint256 public totalSupply = 0;
  > |	mapping (address => uint256) public balanceOf;
    |	mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0xf3db9a281ef5273741388cf0ca164d39e18433dd.sol(60)

[31mViolation[0m for MissingInputValidation in contract 'Token':
    |	uint256 public totalSupply = 0;
    |	mapping (address => uint256) public balanceOf;
  > |	mapping (address => mapping (address => uint256)) public allowance;
    |
    |	event Transfer(address indexed _from, address indexed _to, uint256 _value);
  at /home/jiaming/mavs_srcs/contract@0xf3db9a281ef5273741388cf0ca164d39e18433dd.sol(61)

[33mWarning[0m for MissingInputValidation in contract 'Token':
    |
    |contract Owned {
  > |	address public owner;
    |
    |	function Owned() public {
  at /home/jiaming/mavs_srcs/contract@0xf3db9a281ef5273741388cf0ca164d39e18433dd.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'Token':
    |
    |contract SafeMath {
  > |	function add(uint256 _a, uint256 _b) internal pure returns (uint256) {
    |		uint256 c = _a + _b;
    |		assert(c >= _a);
  at /home/jiaming/mavs_srcs/contract@0xf3db9a281ef5273741388cf0ca164d39e18433dd.sol(21)

[33mWarning[0m for MissingInputValidation in contract 'Token':
    |	}
    |
  > |	function sub(uint256 _a, uint256 _b) internal pure returns (uint256) {
    |		assert(_a >= _b);
    |		return _a - _b;
  at /home/jiaming/mavs_srcs/contract@0xf3db9a281ef5273741388cf0ca164d39e18433dd.sol(27)

[33mWarning[0m for MissingInputValidation in contract 'Token':
    |
    |contract Token is IToken, SafeMath, Owned {
  > |	string public constant standard = '0.1';
    |	string public name = '';
    |	string public symbol = '';
  at /home/jiaming/mavs_srcs/contract@0xf3db9a281ef5273741388cf0ca164d39e18433dd.sol(55)

[33mWarning[0m for MissingInputValidation in contract 'Token':
    |contract Token is IToken, SafeMath, Owned {
    |	string public constant standard = '0.1';
  > |	string public name = '';
    |	string public symbol = '';
    |	uint8 public decimals = 0;
  at /home/jiaming/mavs_srcs/contract@0xf3db9a281ef5273741388cf0ca164d39e18433dd.sol(56)

[33mWarning[0m for MissingInputValidation in contract 'Token':
    |	string public constant standard = '0.1';
    |	string public name = '';
  > |	string public symbol = '';
    |	uint8 public decimals = 0;
    |	uint256 public totalSupply = 0;
  at /home/jiaming/mavs_srcs/contract@0xf3db9a281ef5273741388cf0ca164d39e18433dd.sol(57)

[33mWarning[0m for MissingInputValidation in contract 'Token':
    |	string public name = '';
    |	string public symbol = '';
  > |	uint8 public decimals = 0;
    |	uint256 public totalSupply = 0;
    |	mapping (address => uint256) public balanceOf;
  at /home/jiaming/mavs_srcs/contract@0xf3db9a281ef5273741388cf0ca164d39e18433dd.sol(58)

[33mWarning[0m for MissingInputValidation in contract 'Token':
    |	string public symbol = '';
    |	uint8 public decimals = 0;
  > |	uint256 public totalSupply = 0;
    |	mapping (address => uint256) public balanceOf;
    |	mapping (address => mapping (address => uint256)) public allowance;
  at /home/jiaming/mavs_srcs/contract@0xf3db9a281ef5273741388cf0ca164d39e18433dd.sol(59)

[33mWarning[0m for MissingInputValidation in contract 'Token':
    |	}
    |
  > |	function approve(address _spender, uint256 _value) public validAddress(_spender) returns (bool success) {
    |		require(_value == 0 || allowance[msg.sender][_spender] == 0);
    |
  at /home/jiaming/mavs_srcs/contract@0xf3db9a281ef5273741388cf0ca164d39e18433dd.sol(107)

[31mViolation[0m for UnrestrictedWrite in contract 'Token':
    |	function transfer(address _to, uint256 _value) public validAddress(_to) returns (bool success) {
    |		if (balanceOf[msg.sender] >= _value && _value > 0) {
  > |			balanceOf[msg.sender] = sub(balanceOf[msg.sender], _value);
    |			balanceOf[_to] = add(balanceOf[_to], _value);
    |			Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xf3db9a281ef5273741388cf0ca164d39e18433dd.sol(84)

[31mViolation[0m for UnrestrictedWrite in contract 'Token':
    |		if (balanceOf[msg.sender] >= _value && _value > 0) {
    |			balanceOf[msg.sender] = sub(balanceOf[msg.sender], _value);
  > |			balanceOf[_to] = add(balanceOf[_to], _value);
    |			Transfer(msg.sender, _to, _value);
    |			return true;
  at /home/jiaming/mavs_srcs/contract@0xf3db9a281ef5273741388cf0ca164d39e18433dd.sol(85)

[31mViolation[0m for UnrestrictedWrite in contract 'Token':
    |	function transferFrom(address _from, address _to, uint256 _value) public validAddress(_from) validAddress(_to) returns (bool success) {
    |		if (balanceOf[_from] >= _value && _value > 0) {
  > |			allowance[_from][msg.sender] = sub(allowance[_from][msg.sender], _value);
    |			balanceOf[_from] = sub(balanceOf[_from], _value);
    |			balanceOf[_to] = add(balanceOf[_to], _value);
  at /home/jiaming/mavs_srcs/contract@0xf3db9a281ef5273741388cf0ca164d39e18433dd.sol(96)

[31mViolation[0m for UnrestrictedWrite in contract 'Token':
    |		if (balanceOf[_from] >= _value && _value > 0) {
    |			allowance[_from][msg.sender] = sub(allowance[_from][msg.sender], _value);
  > |			balanceOf[_from] = sub(balanceOf[_from], _value);
    |			balanceOf[_to] = add(balanceOf[_to], _value);
    |			Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xf3db9a281ef5273741388cf0ca164d39e18433dd.sol(97)

[31mViolation[0m for UnrestrictedWrite in contract 'Token':
    |			allowance[_from][msg.sender] = sub(allowance[_from][msg.sender], _value);
    |			balanceOf[_from] = sub(balanceOf[_from], _value);
  > |			balanceOf[_to] = add(balanceOf[_to], _value);
    |			Transfer(_from, _to, _value);
    |			return true;
  at /home/jiaming/mavs_srcs/contract@0xf3db9a281ef5273741388cf0ca164d39e18433dd.sol(98)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |		require(_value == 0 || allowance[msg.sender][_spender] == 0);
    |
  > |		allowance[msg.sender][_spender] = _value;
    |		Approval(msg.sender, _spender, _value);
    |		return true;
  at /home/jiaming/mavs_srcs/contract@0xf3db9a281ef5273741388cf0ca164d39e18433dd.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |
    |	function setOwner(address _owner) onlyOwner public {
  > |		owner = _owner;
    |	}
    |}
  at /home/jiaming/mavs_srcs/contract@0xf3db9a281ef5273741388cf0ca164d39e18433dd.sol(16)


