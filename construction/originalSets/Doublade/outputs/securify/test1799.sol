Processing contract: /home/jiaming/mavs_srcs/contract@0x732acb28ee1a9b47d544ed662b018219b309cf27.sol:MegaBet
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x732acb28ee1a9b47d544ed662b018219b309cf27.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x732acb28ee1a9b47d544ed662b018219b309cf27.sol:Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'MegaBet':
    |
    |
  > |contract MegaBet is StandardToken {
    |
    |    function () {
  at /home/jiaming/mavs_srcs/contract@0x732acb28ee1a9b47d544ed662b018219b309cf27.sol(46)

[31mViolation[0m for MissingInputValidation in contract 'MegaBet':
    |contract StandardToken is Token {
    |
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
    |            balances[msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x732acb28ee1a9b47d544ed662b018219b309cf27.sol(16)

[31mViolation[0m for MissingInputValidation in contract 'MegaBet':
    |        } else { return false; } }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0) {
    |            balances[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x732acb28ee1a9b47d544ed662b018219b309cf27.sol(24)

[31mViolation[0m for MissingInputValidation in contract 'MegaBet':
    |            return true;
    |        } else { return false; } }
  > | function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner]; }
    | function approve(address _spender, uint256 _value) returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x732acb28ee1a9b47d544ed662b018219b309cf27.sol(32)

[31mViolation[0m for MissingInputValidation in contract 'MegaBet':
    | function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner]; }
  > | function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x732acb28ee1a9b47d544ed662b018219b309cf27.sol(34)

[31mViolation[0m for MissingInputValidation in contract 'MegaBet':
    |        Approval(msg.sender, _spender, _value);
    |        return true; }
  > | function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender]; }
    |    mapping (address => uint256) balances;
  at /home/jiaming/mavs_srcs/contract@0x732acb28ee1a9b47d544ed662b018219b309cf27.sol(38)

[31mViolation[0m for MissingInputValidation in contract 'MegaBet':
    |    }
    |
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x732acb28ee1a9b47d544ed662b018219b309cf27.sol(67)

[33mWarning[0m for MissingInputValidation in contract 'MegaBet':
    |    mapping (address => uint256) balances;
    |    mapping (address => mapping (address => uint256)) allowed;
  > |    uint256 public totalSupply;}
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x732acb28ee1a9b47d544ed662b018219b309cf27.sol(42)

[33mWarning[0m for MissingInputValidation in contract 'MegaBet':
    |    }
    |
  > |    string public name;                   
    |    uint8 public decimals;                
    |    string public symbol;                
  at /home/jiaming/mavs_srcs/contract@0x732acb28ee1a9b47d544ed662b018219b309cf27.sol(52)

[33mWarning[0m for MissingInputValidation in contract 'MegaBet':
    |
    |    string public name;                   
  > |    uint8 public decimals;                
    |    string public symbol;                
    |    string public version = 'H1.0';     
  at /home/jiaming/mavs_srcs/contract@0x732acb28ee1a9b47d544ed662b018219b309cf27.sol(53)

[33mWarning[0m for MissingInputValidation in contract 'MegaBet':
    |    string public name;                   
    |    uint8 public decimals;                
  > |    string public symbol;                
    |    string public version = 'H1.0';     
    |
  at /home/jiaming/mavs_srcs/contract@0x732acb28ee1a9b47d544ed662b018219b309cf27.sol(54)

[33mWarning[0m for MissingInputValidation in contract 'MegaBet':
    |    uint8 public decimals;                
    |    string public symbol;                
  > |    string public version = 'H1.0';     
    |
    |//
  at /home/jiaming/mavs_srcs/contract@0x732acb28ee1a9b47d544ed662b018219b309cf27.sol(55)

[33mWarning[0m for UnhandledException in contract 'MegaBet':
    |
    |      
  > |        if(!_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) { throw; }
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x732acb28ee1a9b47d544ed662b018219b309cf27.sol(72)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MegaBet':
    |
    |      
  > |        if(!_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) { throw; }
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x732acb28ee1a9b47d544ed662b018219b309cf27.sol(72)

[33mWarning[0m for UnrestrictedWrite in contract 'MegaBet':
    |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x732acb28ee1a9b47d544ed662b018219b309cf27.sol(18)

[33mWarning[0m for UnrestrictedWrite in contract 'MegaBet':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x732acb28ee1a9b47d544ed662b018219b309cf27.sol(28)

[33mWarning[0m for UnrestrictedWrite in contract 'MegaBet':
    |        return balances[_owner]; }
    | function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true; }
  at /home/jiaming/mavs_srcs/contract@0x732acb28ee1a9b47d544ed662b018219b309cf27.sol(35)

[33mWarning[0m for UnrestrictedWrite in contract 'MegaBet':
    |
    |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |
  at /home/jiaming/mavs_srcs/contract@0x732acb28ee1a9b47d544ed662b018219b309cf27.sol(68)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |    event Approval(address indexed _owner, address indexed _spender, uint256 _value);}
    |
  > |contract StandardToken is Token {
    |
    |    function transfer(address _to, uint256 _value) returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x732acb28ee1a9b47d544ed662b018219b309cf27.sol(14)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |contract StandardToken is Token {
    |
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
    |            balances[msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x732acb28ee1a9b47d544ed662b018219b309cf27.sol(16)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |        } else { return false; } }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0) {
    |            balances[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x732acb28ee1a9b47d544ed662b018219b309cf27.sol(24)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |            return true;
    |        } else { return false; } }
  > | function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner]; }
    | function approve(address _spender, uint256 _value) returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x732acb28ee1a9b47d544ed662b018219b309cf27.sol(32)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    | function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner]; }
  > | function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x732acb28ee1a9b47d544ed662b018219b309cf27.sol(34)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |        Approval(msg.sender, _spender, _value);
    |        return true; }
  > | function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender]; }
    |    mapping (address => uint256) balances;
  at /home/jiaming/mavs_srcs/contract@0x732acb28ee1a9b47d544ed662b018219b309cf27.sol(38)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |    mapping (address => uint256) balances;
    |    mapping (address => mapping (address => uint256)) allowed;
  > |    uint256 public totalSupply;}
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x732acb28ee1a9b47d544ed662b018219b309cf27.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x732acb28ee1a9b47d544ed662b018219b309cf27.sol(18)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x732acb28ee1a9b47d544ed662b018219b309cf27.sol(28)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        return balances[_owner]; }
    | function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true; }
  at /home/jiaming/mavs_srcs/contract@0x732acb28ee1a9b47d544ed662b018219b309cf27.sol(35)

[33mWarning[0m for LockedEther in contract 'Token':
    |pragma solidity ^0.4.4;
    |
  > |contract Token {
    |    function totalSupply() constant returns (uint256 supply) {}
    |    function balanceOf(address _owner) constant returns (uint256 balance) {}
  at /home/jiaming/mavs_srcs/contract@0x732acb28ee1a9b47d544ed662b018219b309cf27.sol(3)


