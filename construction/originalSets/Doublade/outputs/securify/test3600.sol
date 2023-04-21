Processing contract: /home/jiaming/mavs_srcs/contract@0xec3193af31550191439b15197440bec768767cf4.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xec3193af31550191439b15197440bec768767cf4.sol:Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xec3193af31550191439b15197440bec768767cf4.sol:VENCERO
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'StandardToken':
    |    event Approval(address indexed _owner, address indexed _spender, uint256 _value);}
    |
  > |contract StandardToken is Token {
    |
    |    function transfer(address _to, uint256 _value) returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0xec3193af31550191439b15197440bec768767cf4.sol(14)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |contract StandardToken is Token {
    |
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
    |            balances[msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0xec3193af31550191439b15197440bec768767cf4.sol(16)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |        } else { return false; } }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0) {
    |            balances[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0xec3193af31550191439b15197440bec768767cf4.sol(24)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |            return true;
    |        } else { return false; } }
  > | function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner]; }
    | function approve(address _spender, uint256 _value) returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0xec3193af31550191439b15197440bec768767cf4.sol(32)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    | function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner]; }
  > | function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xec3193af31550191439b15197440bec768767cf4.sol(34)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |        Approval(msg.sender, _spender, _value);
    |        return true; }
  > | function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender]; }
    |    mapping (address => uint256) balances;
  at /home/jiaming/mavs_srcs/contract@0xec3193af31550191439b15197440bec768767cf4.sol(38)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |    mapping (address => uint256) balances;
    |    mapping (address => mapping (address => uint256)) allowed;
  > |    uint256 public totalSupply;}
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xec3193af31550191439b15197440bec768767cf4.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xec3193af31550191439b15197440bec768767cf4.sol(18)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xec3193af31550191439b15197440bec768767cf4.sol(28)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        return balances[_owner]; }
    | function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true; }
  at /home/jiaming/mavs_srcs/contract@0xec3193af31550191439b15197440bec768767cf4.sol(35)

[33mWarning[0m for LockedEther in contract 'Token':
    |pragma solidity ^0.4.4;
    |
  > |contract Token {
    |    function totalSupply() constant returns (uint256 supply) {}
    |    function balanceOf(address _owner) constant returns (uint256 balance) {}
  at /home/jiaming/mavs_srcs/contract@0xec3193af31550191439b15197440bec768767cf4.sol(3)

[33mWarning[0m for LockedEther in contract 'VENCERO':
    |
    |
  > |contract VENCERO is StandardToken {
    |
    |    function () {
  at /home/jiaming/mavs_srcs/contract@0xec3193af31550191439b15197440bec768767cf4.sol(46)

[31mViolation[0m for MissingInputValidation in contract 'VENCERO':
    |contract StandardToken is Token {
    |
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
    |            balances[msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0xec3193af31550191439b15197440bec768767cf4.sol(16)

[31mViolation[0m for MissingInputValidation in contract 'VENCERO':
    |        } else { return false; } }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0) {
    |            balances[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0xec3193af31550191439b15197440bec768767cf4.sol(24)

[31mViolation[0m for MissingInputValidation in contract 'VENCERO':
    |            return true;
    |        } else { return false; } }
  > | function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner]; }
    | function approve(address _spender, uint256 _value) returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0xec3193af31550191439b15197440bec768767cf4.sol(32)

[31mViolation[0m for MissingInputValidation in contract 'VENCERO':
    | function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner]; }
  > | function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xec3193af31550191439b15197440bec768767cf4.sol(34)

[31mViolation[0m for MissingInputValidation in contract 'VENCERO':
    |        Approval(msg.sender, _spender, _value);
    |        return true; }
  > | function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender]; }
    |    mapping (address => uint256) balances;
  at /home/jiaming/mavs_srcs/contract@0xec3193af31550191439b15197440bec768767cf4.sol(38)

[31mViolation[0m for MissingInputValidation in contract 'VENCERO':
    |    }
    |
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xec3193af31550191439b15197440bec768767cf4.sol(67)

[33mWarning[0m for MissingInputValidation in contract 'VENCERO':
    |    mapping (address => uint256) balances;
    |    mapping (address => mapping (address => uint256)) allowed;
  > |    uint256 public totalSupply;}
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xec3193af31550191439b15197440bec768767cf4.sol(42)

[33mWarning[0m for MissingInputValidation in contract 'VENCERO':
    |    }
    |
  > |    string public name;                   
    |    uint8 public decimals;                
    |    string public symbol;                
  at /home/jiaming/mavs_srcs/contract@0xec3193af31550191439b15197440bec768767cf4.sol(52)

[33mWarning[0m for MissingInputValidation in contract 'VENCERO':
    |
    |    string public name;                   
  > |    uint8 public decimals;                
    |    string public symbol;                
    |    string public version = 'H1.0';     
  at /home/jiaming/mavs_srcs/contract@0xec3193af31550191439b15197440bec768767cf4.sol(53)

[33mWarning[0m for MissingInputValidation in contract 'VENCERO':
    |    string public name;                   
    |    uint8 public decimals;                
  > |    string public symbol;                
    |    string public version = 'H1.0';     
    |
  at /home/jiaming/mavs_srcs/contract@0xec3193af31550191439b15197440bec768767cf4.sol(54)

[33mWarning[0m for MissingInputValidation in contract 'VENCERO':
    |    uint8 public decimals;                
    |    string public symbol;                
  > |    string public version = 'H1.0';     
    |
    |//
  at /home/jiaming/mavs_srcs/contract@0xec3193af31550191439b15197440bec768767cf4.sol(55)

[33mWarning[0m for UnhandledException in contract 'VENCERO':
    |
    |      
  > |        if(!_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) { throw; }
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xec3193af31550191439b15197440bec768767cf4.sol(72)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'VENCERO':
    |
    |      
  > |        if(!_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) { throw; }
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xec3193af31550191439b15197440bec768767cf4.sol(72)

[33mWarning[0m for UnrestrictedWrite in contract 'VENCERO':
    |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xec3193af31550191439b15197440bec768767cf4.sol(18)

[33mWarning[0m for UnrestrictedWrite in contract 'VENCERO':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xec3193af31550191439b15197440bec768767cf4.sol(28)

[33mWarning[0m for UnrestrictedWrite in contract 'VENCERO':
    |        return balances[_owner]; }
    | function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true; }
  at /home/jiaming/mavs_srcs/contract@0xec3193af31550191439b15197440bec768767cf4.sol(35)

[33mWarning[0m for UnrestrictedWrite in contract 'VENCERO':
    |
    |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |
  at /home/jiaming/mavs_srcs/contract@0xec3193af31550191439b15197440bec768767cf4.sol(68)


