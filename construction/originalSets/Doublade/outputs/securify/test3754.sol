Processing contract: /home/jiaming/mavs_srcs/contract@0xf68bc704f47c5bc4f5c82497db7eb5a20f5292f8.sol:BaseToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf68bc704f47c5bc4f5c82497db7eb5a20f5292f8.sol:CustomToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BaseToken':
    |pragma solidity ^0.4.19;
    |
  > |contract BaseToken {
    |    string public name;
    |    string public symbol;
  at /home/jiaming/mavs_srcs/contract@0xf68bc704f47c5bc4f5c82497db7eb5a20f5292f8.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'BaseToken':
    |    uint256 public totalSupply;
    |
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0xf68bc704f47c5bc4f5c82497db7eb5a20f5292f8.sol(9)

[31mViolation[0m for MissingInputValidation in contract 'BaseToken':
    |
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    event Transfer(address indexed from, address indexed to, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0xf68bc704f47c5bc4f5c82497db7eb5a20f5292f8.sol(10)

[31mViolation[0m for MissingInputValidation in contract 'BaseToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0xf68bc704f47c5bc4f5c82497db7eb5a20f5292f8.sol(31)

[31mViolation[0m for MissingInputValidation in contract 'BaseToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) public returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xf68bc704f47c5bc4f5c82497db7eb5a20f5292f8.sol(38)

[33mWarning[0m for MissingInputValidation in contract 'BaseToken':
    |
    |contract BaseToken {
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0xf68bc704f47c5bc4f5c82497db7eb5a20f5292f8.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'BaseToken':
    |contract BaseToken {
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals;
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0xf68bc704f47c5bc4f5c82497db7eb5a20f5292f8.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'BaseToken':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals;
    |    uint256 public totalSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0xf68bc704f47c5bc4f5c82497db7eb5a20f5292f8.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'BaseToken':
    |    string public symbol;
    |    uint8 public decimals;
  > |    uint256 public totalSupply;
    |
    |    mapping (address => uint256) public balanceOf;
  at /home/jiaming/mavs_srcs/contract@0xf68bc704f47c5bc4f5c82497db7eb5a20f5292f8.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'BaseToken':
    |    event Approval(address indexed owner, address indexed spender, uint256 value);
    |
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        require(_to != 0x0);
    |        require(balanceOf[_from] >= _value);
  at /home/jiaming/mavs_srcs/contract@0xf68bc704f47c5bc4f5c82497db7eb5a20f5292f8.sol(15)

[31mViolation[0m for UnrestrictedWrite in contract 'BaseToken':
    |        require(balanceOf[_to] + _value > balanceOf[_to]);
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
  > |        balanceOf[_from] -= _value;
    |        balanceOf[_to] += _value;
    |        assert(balanceOf[_from] + balanceOf[_to] == previousBalances);
  at /home/jiaming/mavs_srcs/contract@0xf68bc704f47c5bc4f5c82497db7eb5a20f5292f8.sol(20)

[31mViolation[0m for UnrestrictedWrite in contract 'BaseToken':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        balanceOf[_from] -= _value;
  > |        balanceOf[_to] += _value;
    |        assert(balanceOf[_from] + balanceOf[_to] == previousBalances);
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xf68bc704f47c5bc4f5c82497db7eb5a20f5292f8.sol(21)

[33mWarning[0m for UnrestrictedWrite in contract 'BaseToken':
    |        require(balanceOf[_to] + _value > balanceOf[_to]);
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
  > |        balanceOf[_from] -= _value;
    |        balanceOf[_to] += _value;
    |        assert(balanceOf[_from] + balanceOf[_to] == previousBalances);
  at /home/jiaming/mavs_srcs/contract@0xf68bc704f47c5bc4f5c82497db7eb5a20f5292f8.sol(20)

[33mWarning[0m for UnrestrictedWrite in contract 'BaseToken':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xf68bc704f47c5bc4f5c82497db7eb5a20f5292f8.sol(33)

[33mWarning[0m for UnrestrictedWrite in contract 'BaseToken':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xf68bc704f47c5bc4f5c82497db7eb5a20f5292f8.sol(39)

[33mWarning[0m for LockedEther in contract 'CustomToken':
    |}
    |
  > |contract CustomToken is BaseToken {
    |    function CustomToken() public {
    |        totalSupply = 84000000000000000000000000;
  at /home/jiaming/mavs_srcs/contract@0xf68bc704f47c5bc4f5c82497db7eb5a20f5292f8.sol(45)

[31mViolation[0m for MissingInputValidation in contract 'CustomToken':
    |    uint256 public totalSupply;
    |
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0xf68bc704f47c5bc4f5c82497db7eb5a20f5292f8.sol(9)

[31mViolation[0m for MissingInputValidation in contract 'CustomToken':
    |
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    event Transfer(address indexed from, address indexed to, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0xf68bc704f47c5bc4f5c82497db7eb5a20f5292f8.sol(10)

[31mViolation[0m for MissingInputValidation in contract 'CustomToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0xf68bc704f47c5bc4f5c82497db7eb5a20f5292f8.sol(31)

[31mViolation[0m for MissingInputValidation in contract 'CustomToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) public returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xf68bc704f47c5bc4f5c82497db7eb5a20f5292f8.sol(38)

[33mWarning[0m for MissingInputValidation in contract 'CustomToken':
    |
    |contract BaseToken {
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0xf68bc704f47c5bc4f5c82497db7eb5a20f5292f8.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'CustomToken':
    |contract BaseToken {
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals;
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0xf68bc704f47c5bc4f5c82497db7eb5a20f5292f8.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'CustomToken':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals;
    |    uint256 public totalSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0xf68bc704f47c5bc4f5c82497db7eb5a20f5292f8.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'CustomToken':
    |    string public symbol;
    |    uint8 public decimals;
  > |    uint256 public totalSupply;
    |
    |    mapping (address => uint256) public balanceOf;
  at /home/jiaming/mavs_srcs/contract@0xf68bc704f47c5bc4f5c82497db7eb5a20f5292f8.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'CustomToken':
    |    event Approval(address indexed owner, address indexed spender, uint256 value);
    |
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        require(_to != 0x0);
    |        require(balanceOf[_from] >= _value);
  at /home/jiaming/mavs_srcs/contract@0xf68bc704f47c5bc4f5c82497db7eb5a20f5292f8.sol(15)

[31mViolation[0m for UnrestrictedWrite in contract 'CustomToken':
    |        require(balanceOf[_to] + _value > balanceOf[_to]);
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
  > |        balanceOf[_from] -= _value;
    |        balanceOf[_to] += _value;
    |        assert(balanceOf[_from] + balanceOf[_to] == previousBalances);
  at /home/jiaming/mavs_srcs/contract@0xf68bc704f47c5bc4f5c82497db7eb5a20f5292f8.sol(20)

[31mViolation[0m for UnrestrictedWrite in contract 'CustomToken':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        balanceOf[_from] -= _value;
  > |        balanceOf[_to] += _value;
    |        assert(balanceOf[_from] + balanceOf[_to] == previousBalances);
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xf68bc704f47c5bc4f5c82497db7eb5a20f5292f8.sol(21)

[33mWarning[0m for UnrestrictedWrite in contract 'CustomToken':
    |        require(balanceOf[_to] + _value > balanceOf[_to]);
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
  > |        balanceOf[_from] -= _value;
    |        balanceOf[_to] += _value;
    |        assert(balanceOf[_from] + balanceOf[_to] == previousBalances);
  at /home/jiaming/mavs_srcs/contract@0xf68bc704f47c5bc4f5c82497db7eb5a20f5292f8.sol(20)

[33mWarning[0m for UnrestrictedWrite in contract 'CustomToken':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xf68bc704f47c5bc4f5c82497db7eb5a20f5292f8.sol(33)

[33mWarning[0m for UnrestrictedWrite in contract 'CustomToken':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xf68bc704f47c5bc4f5c82497db7eb5a20f5292f8.sol(39)


