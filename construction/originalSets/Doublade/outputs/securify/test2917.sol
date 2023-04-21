Processing contract: /home/jiaming/mavs_srcs/contract@0xbffdc8e3a6406ab259f855be7de09ebef86697e9.sol:Base
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbffdc8e3a6406ab259f855be7de09ebef86697e9.sol:UHC
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Base':
    |pragma solidity ^0.4.23;
    |
  > |contract Base{
    |    string public name;
    |    string public symbol;
  at /home/jiaming/mavs_srcs/contract@0xbffdc8e3a6406ab259f855be7de09ebef86697e9.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'Base':
    |    uint256 public foundingTime;
    |
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0xbffdc8e3a6406ab259f855be7de09ebef86697e9.sol(12)

[31mViolation[0m for MissingInputValidation in contract 'Base':
    |
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    event Transfer(address indexed _from, address indexed _to, uint256 _value);
  at /home/jiaming/mavs_srcs/contract@0xbffdc8e3a6406ab259f855be7de09ebef86697e9.sol(13)

[31mViolation[0m for MissingInputValidation in contract 'Base':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0xbffdc8e3a6406ab259f855be7de09ebef86697e9.sol(34)

[31mViolation[0m for MissingInputValidation in contract 'Base':
    |    } 
    |
  > |    function approve(address _spender, uint256 _value) public returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xbffdc8e3a6406ab259f855be7de09ebef86697e9.sol(41)

[33mWarning[0m for MissingInputValidation in contract 'Base':
    |
    |contract Base{
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0xbffdc8e3a6406ab259f855be7de09ebef86697e9.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'Base':
    |contract Base{
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals = 18;
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0xbffdc8e3a6406ab259f855be7de09ebef86697e9.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'Base':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals = 18;
    |    uint256 public totalSupply;
    |    uint256 public tokenUnit = 10 ** uint(decimals);
  at /home/jiaming/mavs_srcs/contract@0xbffdc8e3a6406ab259f855be7de09ebef86697e9.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'Base':
    |    string public symbol;
    |    uint8 public decimals = 18;
  > |    uint256 public totalSupply;
    |    uint256 public tokenUnit = 10 ** uint(decimals);
    |    uint256 public kUnit = 1000 * tokenUnit;
  at /home/jiaming/mavs_srcs/contract@0xbffdc8e3a6406ab259f855be7de09ebef86697e9.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'Base':
    |    uint8 public decimals = 18;
    |    uint256 public totalSupply;
  > |    uint256 public tokenUnit = 10 ** uint(decimals);
    |    uint256 public kUnit = 1000 * tokenUnit;
    |    uint256 public foundingTime;
  at /home/jiaming/mavs_srcs/contract@0xbffdc8e3a6406ab259f855be7de09ebef86697e9.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'Base':
    |    uint256 public totalSupply;
    |    uint256 public tokenUnit = 10 ** uint(decimals);
  > |    uint256 public kUnit = 1000 * tokenUnit;
    |    uint256 public foundingTime;
    |
  at /home/jiaming/mavs_srcs/contract@0xbffdc8e3a6406ab259f855be7de09ebef86697e9.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'Base':
    |    uint256 public tokenUnit = 10 ** uint(decimals);
    |    uint256 public kUnit = 1000 * tokenUnit;
  > |    uint256 public foundingTime;
    |
    |    mapping (address => uint256) public balanceOf;
  at /home/jiaming/mavs_srcs/contract@0xbffdc8e3a6406ab259f855be7de09ebef86697e9.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'Base':
    |    }
    |
  > |    function _transfer(address _from, address _to, uint256 _value) internal {
    |        require(_to != 0x0);
    |        require(balanceOf[_from] >= _value);
  at /home/jiaming/mavs_srcs/contract@0xbffdc8e3a6406ab259f855be7de09ebef86697e9.sol(21)

[31mViolation[0m for UnrestrictedWrite in contract 'Base':
    |        require(balanceOf[_from] >= _value);
    |        require(balanceOf[_to] + _value > balanceOf[_to]);
  > |        balanceOf[_from] -= _value;
    |        balanceOf[_to] += _value;
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xbffdc8e3a6406ab259f855be7de09ebef86697e9.sol(25)

[31mViolation[0m for UnrestrictedWrite in contract 'Base':
    |        require(balanceOf[_to] + _value > balanceOf[_to]);
    |        balanceOf[_from] -= _value;
  > |        balanceOf[_to] += _value;
    |        emit Transfer(_from, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbffdc8e3a6406ab259f855be7de09ebef86697e9.sol(26)

[33mWarning[0m for UnrestrictedWrite in contract 'Base':
    |        require(balanceOf[_from] >= _value);
    |        require(balanceOf[_to] + _value > balanceOf[_to]);
  > |        balanceOf[_from] -= _value;
    |        balanceOf[_to] += _value;
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xbffdc8e3a6406ab259f855be7de09ebef86697e9.sol(25)

[33mWarning[0m for UnrestrictedWrite in contract 'Base':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xbffdc8e3a6406ab259f855be7de09ebef86697e9.sol(36)

[33mWarning[0m for UnrestrictedWrite in contract 'Base':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbffdc8e3a6406ab259f855be7de09ebef86697e9.sol(42)

[33mWarning[0m for LockedEther in contract 'UHC':
    |}
    |
  > |contract UHC is Base {
    |    uint256 public release = 20000000 * kUnit;
    |    constructor() public {
  at /home/jiaming/mavs_srcs/contract@0xbffdc8e3a6406ab259f855be7de09ebef86697e9.sol(47)

[31mViolation[0m for MissingInputValidation in contract 'UHC':
    |    uint256 public foundingTime;
    |
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0xbffdc8e3a6406ab259f855be7de09ebef86697e9.sol(12)

[31mViolation[0m for MissingInputValidation in contract 'UHC':
    |
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    event Transfer(address indexed _from, address indexed _to, uint256 _value);
  at /home/jiaming/mavs_srcs/contract@0xbffdc8e3a6406ab259f855be7de09ebef86697e9.sol(13)

[31mViolation[0m for MissingInputValidation in contract 'UHC':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0xbffdc8e3a6406ab259f855be7de09ebef86697e9.sol(34)

[31mViolation[0m for MissingInputValidation in contract 'UHC':
    |    } 
    |
  > |    function approve(address _spender, uint256 _value) public returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xbffdc8e3a6406ab259f855be7de09ebef86697e9.sol(41)

[33mWarning[0m for MissingInputValidation in contract 'UHC':
    |
    |contract Base{
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0xbffdc8e3a6406ab259f855be7de09ebef86697e9.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'UHC':
    |contract Base{
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals = 18;
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0xbffdc8e3a6406ab259f855be7de09ebef86697e9.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'UHC':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals = 18;
    |    uint256 public totalSupply;
    |    uint256 public tokenUnit = 10 ** uint(decimals);
  at /home/jiaming/mavs_srcs/contract@0xbffdc8e3a6406ab259f855be7de09ebef86697e9.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'UHC':
    |    string public symbol;
    |    uint8 public decimals = 18;
  > |    uint256 public totalSupply;
    |    uint256 public tokenUnit = 10 ** uint(decimals);
    |    uint256 public kUnit = 1000 * tokenUnit;
  at /home/jiaming/mavs_srcs/contract@0xbffdc8e3a6406ab259f855be7de09ebef86697e9.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'UHC':
    |    uint8 public decimals = 18;
    |    uint256 public totalSupply;
  > |    uint256 public tokenUnit = 10 ** uint(decimals);
    |    uint256 public kUnit = 1000 * tokenUnit;
    |    uint256 public foundingTime;
  at /home/jiaming/mavs_srcs/contract@0xbffdc8e3a6406ab259f855be7de09ebef86697e9.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'UHC':
    |    uint256 public totalSupply;
    |    uint256 public tokenUnit = 10 ** uint(decimals);
  > |    uint256 public kUnit = 1000 * tokenUnit;
    |    uint256 public foundingTime;
    |
  at /home/jiaming/mavs_srcs/contract@0xbffdc8e3a6406ab259f855be7de09ebef86697e9.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'UHC':
    |    uint256 public tokenUnit = 10 ** uint(decimals);
    |    uint256 public kUnit = 1000 * tokenUnit;
  > |    uint256 public foundingTime;
    |
    |    mapping (address => uint256) public balanceOf;
  at /home/jiaming/mavs_srcs/contract@0xbffdc8e3a6406ab259f855be7de09ebef86697e9.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'UHC':
    |    }
    |
  > |    function _transfer(address _from, address _to, uint256 _value) internal {
    |        require(_to != 0x0);
    |        require(balanceOf[_from] >= _value);
  at /home/jiaming/mavs_srcs/contract@0xbffdc8e3a6406ab259f855be7de09ebef86697e9.sol(21)

[33mWarning[0m for MissingInputValidation in contract 'UHC':
    |
    |contract UHC is Base {
  > |    uint256 public release = 20000000 * kUnit;
    |    constructor() public {
    |        totalSupply = release;
  at /home/jiaming/mavs_srcs/contract@0xbffdc8e3a6406ab259f855be7de09ebef86697e9.sol(48)

[31mViolation[0m for UnrestrictedWrite in contract 'UHC':
    |        require(balanceOf[_from] >= _value);
    |        require(balanceOf[_to] + _value > balanceOf[_to]);
  > |        balanceOf[_from] -= _value;
    |        balanceOf[_to] += _value;
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xbffdc8e3a6406ab259f855be7de09ebef86697e9.sol(25)

[31mViolation[0m for UnrestrictedWrite in contract 'UHC':
    |        require(balanceOf[_to] + _value > balanceOf[_to]);
    |        balanceOf[_from] -= _value;
  > |        balanceOf[_to] += _value;
    |        emit Transfer(_from, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbffdc8e3a6406ab259f855be7de09ebef86697e9.sol(26)

[33mWarning[0m for UnrestrictedWrite in contract 'UHC':
    |        require(balanceOf[_from] >= _value);
    |        require(balanceOf[_to] + _value > balanceOf[_to]);
  > |        balanceOf[_from] -= _value;
    |        balanceOf[_to] += _value;
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xbffdc8e3a6406ab259f855be7de09ebef86697e9.sol(25)

[33mWarning[0m for UnrestrictedWrite in contract 'UHC':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xbffdc8e3a6406ab259f855be7de09ebef86697e9.sol(36)

[33mWarning[0m for UnrestrictedWrite in contract 'UHC':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbffdc8e3a6406ab259f855be7de09ebef86697e9.sol(42)


