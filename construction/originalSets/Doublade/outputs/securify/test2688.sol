Processing contract: /home/jiaming/mavs_srcs/contract@0xaf99eb86ab6ff615848e4f35dd089deeab4156a1.sol:Solar
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xaf99eb86ab6ff615848e4f35dd089deeab4156a1.sol:SolarToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xaf99eb86ab6ff615848e4f35dd089deeab4156a1.sol:Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Solar':
    |}
    |
  > |contract Solar is SolarToken {
    |
    |    function () {
  at /home/jiaming/mavs_srcs/contract@0xaf99eb86ab6ff615848e4f35dd089deeab4156a1.sol(58)

[31mViolation[0m for MissingInputValidation in contract 'Solar':
    |contract SolarToken is Token {
    |
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
    |            balances[msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0xaf99eb86ab6ff615848e4f35dd089deeab4156a1.sol(20)

[31mViolation[0m for MissingInputValidation in contract 'Solar':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0) {
    |            balances[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0xaf99eb86ab6ff615848e4f35dd089deeab4156a1.sol(29)

[31mViolation[0m for MissingInputValidation in contract 'Solar':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xaf99eb86ab6ff615848e4f35dd089deeab4156a1.sol(39)

[31mViolation[0m for MissingInputValidation in contract 'Solar':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xaf99eb86ab6ff615848e4f35dd089deeab4156a1.sol(43)

[31mViolation[0m for MissingInputValidation in contract 'Solar':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xaf99eb86ab6ff615848e4f35dd089deeab4156a1.sol(49)

[31mViolation[0m for MissingInputValidation in contract 'Solar':
    |    }
    |
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xaf99eb86ab6ff615848e4f35dd089deeab4156a1.sol(79)

[33mWarning[0m for MissingInputValidation in contract 'Solar':
    |    mapping (address => uint256) balances;
    |    mapping (address => mapping (address => uint256)) allowed;
  > |    uint256 public totalSupply;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0xaf99eb86ab6ff615848e4f35dd089deeab4156a1.sol(55)

[33mWarning[0m for MissingInputValidation in contract 'Solar':
    |    }
    |
  > |    string public name;                   
    |    uint8 public decimals;               
    |    string public symbol;               
  at /home/jiaming/mavs_srcs/contract@0xaf99eb86ab6ff615848e4f35dd089deeab4156a1.sol(64)

[33mWarning[0m for MissingInputValidation in contract 'Solar':
    |
    |    string public name;                   
  > |    uint8 public decimals;               
    |    string public symbol;               
    |    string public version = 'H1.0';       
  at /home/jiaming/mavs_srcs/contract@0xaf99eb86ab6ff615848e4f35dd089deeab4156a1.sol(65)

[33mWarning[0m for MissingInputValidation in contract 'Solar':
    |    string public name;                   
    |    uint8 public decimals;               
  > |    string public symbol;               
    |    string public version = 'H1.0';       
    |
  at /home/jiaming/mavs_srcs/contract@0xaf99eb86ab6ff615848e4f35dd089deeab4156a1.sol(66)

[33mWarning[0m for MissingInputValidation in contract 'Solar':
    |    uint8 public decimals;               
    |    string public symbol;               
  > |    string public version = 'H1.0';       
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xaf99eb86ab6ff615848e4f35dd089deeab4156a1.sol(67)

[33mWarning[0m for UnhandledException in contract 'Solar':
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  > |        if(!_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) { throw; }
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xaf99eb86ab6ff615848e4f35dd089deeab4156a1.sol(82)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Solar':
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  > |        if(!_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) { throw; }
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xaf99eb86ab6ff615848e4f35dd089deeab4156a1.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'Solar':
    |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xaf99eb86ab6ff615848e4f35dd089deeab4156a1.sol(22)

[33mWarning[0m for UnrestrictedWrite in contract 'Solar':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xaf99eb86ab6ff615848e4f35dd089deeab4156a1.sol(33)

[33mWarning[0m for UnrestrictedWrite in contract 'Solar':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xaf99eb86ab6ff615848e4f35dd089deeab4156a1.sol(44)

[33mWarning[0m for UnrestrictedWrite in contract 'Solar':
    |
    |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        if(!_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) { throw; }
  at /home/jiaming/mavs_srcs/contract@0xaf99eb86ab6ff615848e4f35dd089deeab4156a1.sol(80)

[33mWarning[0m for LockedEther in contract 'SolarToken':
    |
    |
  > |contract SolarToken is Token {
    |
    |    function transfer(address _to, uint256 _value) returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0xaf99eb86ab6ff615848e4f35dd089deeab4156a1.sol(18)

[31mViolation[0m for MissingInputValidation in contract 'SolarToken':
    |contract SolarToken is Token {
    |
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
    |            balances[msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0xaf99eb86ab6ff615848e4f35dd089deeab4156a1.sol(20)

[31mViolation[0m for MissingInputValidation in contract 'SolarToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0) {
    |            balances[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0xaf99eb86ab6ff615848e4f35dd089deeab4156a1.sol(29)

[31mViolation[0m for MissingInputValidation in contract 'SolarToken':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xaf99eb86ab6ff615848e4f35dd089deeab4156a1.sol(39)

[31mViolation[0m for MissingInputValidation in contract 'SolarToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xaf99eb86ab6ff615848e4f35dd089deeab4156a1.sol(43)

[31mViolation[0m for MissingInputValidation in contract 'SolarToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xaf99eb86ab6ff615848e4f35dd089deeab4156a1.sol(49)

[33mWarning[0m for MissingInputValidation in contract 'SolarToken':
    |    mapping (address => uint256) balances;
    |    mapping (address => mapping (address => uint256)) allowed;
  > |    uint256 public totalSupply;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0xaf99eb86ab6ff615848e4f35dd089deeab4156a1.sol(55)

[33mWarning[0m for UnrestrictedWrite in contract 'SolarToken':
    |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xaf99eb86ab6ff615848e4f35dd089deeab4156a1.sol(22)

[33mWarning[0m for UnrestrictedWrite in contract 'SolarToken':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xaf99eb86ab6ff615848e4f35dd089deeab4156a1.sol(33)

[33mWarning[0m for UnrestrictedWrite in contract 'SolarToken':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xaf99eb86ab6ff615848e4f35dd089deeab4156a1.sol(44)

[33mWarning[0m for LockedEther in contract 'Token':
    |pragma solidity ^0.4.4;
    |
  > |contract Token {
    |
    |    function totalSupply() constant returns (uint256 supply) {}
  at /home/jiaming/mavs_srcs/contract@0xaf99eb86ab6ff615848e4f35dd089deeab4156a1.sol(3)


