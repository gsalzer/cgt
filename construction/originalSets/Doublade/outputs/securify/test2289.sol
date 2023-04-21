Processing contract: /home/jiaming/mavs_srcs/contract@0x9562e6c10183bde09f129cadd129eb56e2bbca46.sol:BaseToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9562e6c10183bde09f129cadd129eb56e2bbca46.sol:BurnToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9562e6c10183bde09f129cadd129eb56e2bbca46.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BaseToken':
    |pragma solidity ^0.4.25;
    |
  > |contract BaseToken {
    |    string public name;
    |    string public symbol;
  at /home/jiaming/mavs_srcs/contract@0x9562e6c10183bde09f129cadd129eb56e2bbca46.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'BaseToken':
    |    uint256 public totalSupply;
    |
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0x9562e6c10183bde09f129cadd129eb56e2bbca46.sol(9)

[31mViolation[0m for MissingInputValidation in contract 'BaseToken':
    |
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    event Transfer(address indexed from, address indexed to, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0x9562e6c10183bde09f129cadd129eb56e2bbca46.sol(10)

[31mViolation[0m for MissingInputValidation in contract 'BaseToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x9562e6c10183bde09f129cadd129eb56e2bbca46.sol(30)

[31mViolation[0m for MissingInputValidation in contract 'BaseToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) public returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x9562e6c10183bde09f129cadd129eb56e2bbca46.sol(37)

[33mWarning[0m for MissingInputValidation in contract 'BaseToken':
    |
    |contract BaseToken {
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0x9562e6c10183bde09f129cadd129eb56e2bbca46.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'BaseToken':
    |contract BaseToken {
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals;
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x9562e6c10183bde09f129cadd129eb56e2bbca46.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'BaseToken':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals;
    |    uint256 public totalSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0x9562e6c10183bde09f129cadd129eb56e2bbca46.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'BaseToken':
    |    string public symbol;
    |    uint8 public decimals;
  > |    uint256 public totalSupply;
    |
    |    mapping (address => uint256) public balanceOf;
  at /home/jiaming/mavs_srcs/contract@0x9562e6c10183bde09f129cadd129eb56e2bbca46.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'BaseToken':
    |    event Approval(address indexed owner, address indexed spender, uint256 value);
    |
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        require(_to != address(0));
    |        require(balanceOf[_from] >= _value);
  at /home/jiaming/mavs_srcs/contract@0x9562e6c10183bde09f129cadd129eb56e2bbca46.sol(15)

[31mViolation[0m for UnrestrictedWrite in contract 'BaseToken':
    |        require(balanceOf[_to] + _value > balanceOf[_to]);
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
  > |        balanceOf[_from] -= _value;
    |        balanceOf[_to] += _value;
    |        assert(balanceOf[_from] + balanceOf[_to] == previousBalances);
  at /home/jiaming/mavs_srcs/contract@0x9562e6c10183bde09f129cadd129eb56e2bbca46.sol(20)

[31mViolation[0m for UnrestrictedWrite in contract 'BaseToken':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        balanceOf[_from] -= _value;
  > |        balanceOf[_to] += _value;
    |        assert(balanceOf[_from] + balanceOf[_to] == previousBalances);
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x9562e6c10183bde09f129cadd129eb56e2bbca46.sol(21)

[33mWarning[0m for UnrestrictedWrite in contract 'BaseToken':
    |        require(balanceOf[_to] + _value > balanceOf[_to]);
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
  > |        balanceOf[_from] -= _value;
    |        balanceOf[_to] += _value;
    |        assert(balanceOf[_from] + balanceOf[_to] == previousBalances);
  at /home/jiaming/mavs_srcs/contract@0x9562e6c10183bde09f129cadd129eb56e2bbca46.sol(20)

[33mWarning[0m for UnrestrictedWrite in contract 'BaseToken':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x9562e6c10183bde09f129cadd129eb56e2bbca46.sol(32)

[33mWarning[0m for UnrestrictedWrite in contract 'BaseToken':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x9562e6c10183bde09f129cadd129eb56e2bbca46.sol(38)

[33mWarning[0m for LockedEther in contract 'BurnToken':
    |}
    |//可销毁
  > |contract BurnToken is BaseToken {
    |    event Burn(address indexed from, uint256 value);
    |
  at /home/jiaming/mavs_srcs/contract@0x9562e6c10183bde09f129cadd129eb56e2bbca46.sol(44)

[31mViolation[0m for MissingInputValidation in contract 'BurnToken':
    |    uint256 public totalSupply;
    |
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0x9562e6c10183bde09f129cadd129eb56e2bbca46.sol(9)

[31mViolation[0m for MissingInputValidation in contract 'BurnToken':
    |
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    event Transfer(address indexed from, address indexed to, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0x9562e6c10183bde09f129cadd129eb56e2bbca46.sol(10)

[31mViolation[0m for MissingInputValidation in contract 'BurnToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x9562e6c10183bde09f129cadd129eb56e2bbca46.sol(30)

[31mViolation[0m for MissingInputValidation in contract 'BurnToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) public returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x9562e6c10183bde09f129cadd129eb56e2bbca46.sol(37)

[31mViolation[0m for MissingInputValidation in contract 'BurnToken':
    |    }
    |
  > |    function burnFrom(address _from, uint256 _value) public returns (bool success) {
    |        require(balanceOf[_from] >= _value);
    |        require(_value <= allowance[_from][msg.sender]);
  at /home/jiaming/mavs_srcs/contract@0x9562e6c10183bde09f129cadd129eb56e2bbca46.sol(55)

[33mWarning[0m for MissingInputValidation in contract 'BurnToken':
    |
    |contract BaseToken {
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0x9562e6c10183bde09f129cadd129eb56e2bbca46.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'BurnToken':
    |contract BaseToken {
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals;
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x9562e6c10183bde09f129cadd129eb56e2bbca46.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'BurnToken':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals;
    |    uint256 public totalSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0x9562e6c10183bde09f129cadd129eb56e2bbca46.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'BurnToken':
    |    string public symbol;
    |    uint8 public decimals;
  > |    uint256 public totalSupply;
    |
    |    mapping (address => uint256) public balanceOf;
  at /home/jiaming/mavs_srcs/contract@0x9562e6c10183bde09f129cadd129eb56e2bbca46.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'BurnToken':
    |    event Approval(address indexed owner, address indexed spender, uint256 value);
    |
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        require(_to != address(0));
    |        require(balanceOf[_from] >= _value);
  at /home/jiaming/mavs_srcs/contract@0x9562e6c10183bde09f129cadd129eb56e2bbca46.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'BurnToken':
    |    event Burn(address indexed from, uint256 value);
    |
  > |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);
    |        balanceOf[msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x9562e6c10183bde09f129cadd129eb56e2bbca46.sol(47)

[31mViolation[0m for UnrestrictedWrite in contract 'BurnToken':
    |        require(balanceOf[_to] + _value > balanceOf[_to]);
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
  > |        balanceOf[_from] -= _value;
    |        balanceOf[_to] += _value;
    |        assert(balanceOf[_from] + balanceOf[_to] == previousBalances);
  at /home/jiaming/mavs_srcs/contract@0x9562e6c10183bde09f129cadd129eb56e2bbca46.sol(20)

[31mViolation[0m for UnrestrictedWrite in contract 'BurnToken':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        balanceOf[_from] -= _value;
  > |        balanceOf[_to] += _value;
    |        assert(balanceOf[_from] + balanceOf[_to] == previousBalances);
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x9562e6c10183bde09f129cadd129eb56e2bbca46.sol(21)

[31mViolation[0m for UnrestrictedWrite in contract 'BurnToken':
    |        require(balanceOf[msg.sender] >= _value);
    |        balanceOf[msg.sender] -= _value;
  > |        totalSupply -= _value;
    |        emit Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x9562e6c10183bde09f129cadd129eb56e2bbca46.sol(50)

[31mViolation[0m for UnrestrictedWrite in contract 'BurnToken':
    |        require(balanceOf[_from] >= _value);
    |        require(_value <= allowance[_from][msg.sender]);
  > |        balanceOf[_from] -= _value;
    |        allowance[_from][msg.sender] -= _value;
    |        totalSupply -= _value;
  at /home/jiaming/mavs_srcs/contract@0x9562e6c10183bde09f129cadd129eb56e2bbca46.sol(58)

[31mViolation[0m for UnrestrictedWrite in contract 'BurnToken':
    |        balanceOf[_from] -= _value;
    |        allowance[_from][msg.sender] -= _value;
  > |        totalSupply -= _value;
    |        emit Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x9562e6c10183bde09f129cadd129eb56e2bbca46.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnToken':
    |        require(balanceOf[_to] + _value > balanceOf[_to]);
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
  > |        balanceOf[_from] -= _value;
    |        balanceOf[_to] += _value;
    |        assert(balanceOf[_from] + balanceOf[_to] == previousBalances);
  at /home/jiaming/mavs_srcs/contract@0x9562e6c10183bde09f129cadd129eb56e2bbca46.sol(20)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnToken':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x9562e6c10183bde09f129cadd129eb56e2bbca46.sol(32)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnToken':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x9562e6c10183bde09f129cadd129eb56e2bbca46.sol(38)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnToken':
    |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);
  > |        balanceOf[msg.sender] -= _value;
    |        totalSupply -= _value;
    |        emit Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x9562e6c10183bde09f129cadd129eb56e2bbca46.sol(49)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnToken':
    |        require(_value <= allowance[_from][msg.sender]);
    |        balanceOf[_from] -= _value;
  > |        allowance[_from][msg.sender] -= _value;
    |        totalSupply -= _value;
    |        emit Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0x9562e6c10183bde09f129cadd129eb56e2bbca46.sol(59)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |    }
    |}
  > |contract StandardToken is BaseToken {
    |    constructor(
    |        uint256 _initialAmount,
  at /home/jiaming/mavs_srcs/contract@0x9562e6c10183bde09f129cadd129eb56e2bbca46.sol(65)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    uint256 public totalSupply;
    |
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0x9562e6c10183bde09f129cadd129eb56e2bbca46.sol(9)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    event Transfer(address indexed from, address indexed to, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0x9562e6c10183bde09f129cadd129eb56e2bbca46.sol(10)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x9562e6c10183bde09f129cadd129eb56e2bbca46.sol(30)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) public returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x9562e6c10183bde09f129cadd129eb56e2bbca46.sol(37)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |
    |contract BaseToken {
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0x9562e6c10183bde09f129cadd129eb56e2bbca46.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |contract BaseToken {
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals;
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x9562e6c10183bde09f129cadd129eb56e2bbca46.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals;
    |    uint256 public totalSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0x9562e6c10183bde09f129cadd129eb56e2bbca46.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |    string public symbol;
    |    uint8 public decimals;
  > |    uint256 public totalSupply;
    |
    |    mapping (address => uint256) public balanceOf;
  at /home/jiaming/mavs_srcs/contract@0x9562e6c10183bde09f129cadd129eb56e2bbca46.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |    event Approval(address indexed owner, address indexed spender, uint256 value);
    |
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        require(_to != address(0));
    |        require(balanceOf[_from] >= _value);
  at /home/jiaming/mavs_srcs/contract@0x9562e6c10183bde09f129cadd129eb56e2bbca46.sol(15)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |        require(balanceOf[_to] + _value > balanceOf[_to]);
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
  > |        balanceOf[_from] -= _value;
    |        balanceOf[_to] += _value;
    |        assert(balanceOf[_from] + balanceOf[_to] == previousBalances);
  at /home/jiaming/mavs_srcs/contract@0x9562e6c10183bde09f129cadd129eb56e2bbca46.sol(20)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        balanceOf[_from] -= _value;
  > |        balanceOf[_to] += _value;
    |        assert(balanceOf[_from] + balanceOf[_to] == previousBalances);
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x9562e6c10183bde09f129cadd129eb56e2bbca46.sol(21)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        require(balanceOf[_to] + _value > balanceOf[_to]);
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
  > |        balanceOf[_from] -= _value;
    |        balanceOf[_to] += _value;
    |        assert(balanceOf[_from] + balanceOf[_to] == previousBalances);
  at /home/jiaming/mavs_srcs/contract@0x9562e6c10183bde09f129cadd129eb56e2bbca46.sol(20)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x9562e6c10183bde09f129cadd129eb56e2bbca46.sol(32)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x9562e6c10183bde09f129cadd129eb56e2bbca46.sol(38)


