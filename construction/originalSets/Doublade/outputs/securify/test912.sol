Processing contract: /home/jiaming/mavs_srcs/contract@0x3a38d28013888b41b1172f84136aef522d08a99b.sol:ERC20Token
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3a38d28013888b41b1172f84136aef522d08a99b.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3a38d28013888b41b1172f84136aef522d08a99b.sol:Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'ERC20Token':
    |
    |
  > |contract ERC20Token is StandardToken {
    |    function () {
    |        throw;
  at /home/jiaming/mavs_srcs/contract@0x3a38d28013888b41b1172f84136aef522d08a99b.sol(54)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Token':
    |
    |contract StandardToken is Token {
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
    |            balances[msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x3a38d28013888b41b1172f84136aef522d08a99b.sol(15)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Token':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0) {
    |            balances[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x3a38d28013888b41b1172f84136aef522d08a99b.sol(24)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Token':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3a38d28013888b41b1172f84136aef522d08a99b.sol(34)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Token':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x3a38d28013888b41b1172f84136aef522d08a99b.sol(38)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Token':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3a38d28013888b41b1172f84136aef522d08a99b.sol(44)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Token':
    |    }
    |
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x3a38d28013888b41b1172f84136aef522d08a99b.sol(73)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Token':
    |    mapping (address => uint256) balances;
    |    mapping (address => mapping (address => uint256)) allowed;
  > |    uint256 public totalSupply;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x3a38d28013888b41b1172f84136aef522d08a99b.sol(50)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Token':
    |    }
    |
  > |    string public name;                  
    |    uint8 public decimals;             
    |    string public symbol;                
  at /home/jiaming/mavs_srcs/contract@0x3a38d28013888b41b1172f84136aef522d08a99b.sol(59)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Token':
    |
    |    string public name;                  
  > |    uint8 public decimals;             
    |    string public symbol;                
    |    string public version = 'H1.0'; 
  at /home/jiaming/mavs_srcs/contract@0x3a38d28013888b41b1172f84136aef522d08a99b.sol(60)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Token':
    |    string public name;                  
    |    uint8 public decimals;             
  > |    string public symbol;                
    |    string public version = 'H1.0'; 
    |    
  at /home/jiaming/mavs_srcs/contract@0x3a38d28013888b41b1172f84136aef522d08a99b.sol(61)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Token':
    |    uint8 public decimals;             
    |    string public symbol;                
  > |    string public version = 'H1.0'; 
    |    
    |    function ERC20Token(
  at /home/jiaming/mavs_srcs/contract@0x3a38d28013888b41b1172f84136aef522d08a99b.sol(62)

[33mWarning[0m for UnhandledException in contract 'ERC20Token':
    |        Approval(msg.sender, _spender, _value);
    |
  > |        if(!_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) { throw; }
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3a38d28013888b41b1172f84136aef522d08a99b.sol(77)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Token':
    |        Approval(msg.sender, _spender, _value);
    |
  > |        if(!_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) { throw; }
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3a38d28013888b41b1172f84136aef522d08a99b.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x3a38d28013888b41b1172f84136aef522d08a99b.sol(17)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x3a38d28013888b41b1172f84136aef522d08a99b.sol(28)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x3a38d28013888b41b1172f84136aef522d08a99b.sol(39)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |
    |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |
  at /home/jiaming/mavs_srcs/contract@0x3a38d28013888b41b1172f84136aef522d08a99b.sol(74)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is Token {
    |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
  at /home/jiaming/mavs_srcs/contract@0x3a38d28013888b41b1172f84136aef522d08a99b.sol(14)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |
    |contract StandardToken is Token {
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
    |            balances[msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x3a38d28013888b41b1172f84136aef522d08a99b.sol(15)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0) {
    |            balances[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x3a38d28013888b41b1172f84136aef522d08a99b.sol(24)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3a38d28013888b41b1172f84136aef522d08a99b.sol(34)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x3a38d28013888b41b1172f84136aef522d08a99b.sol(38)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3a38d28013888b41b1172f84136aef522d08a99b.sol(44)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |    mapping (address => uint256) balances;
    |    mapping (address => mapping (address => uint256)) allowed;
  > |    uint256 public totalSupply;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x3a38d28013888b41b1172f84136aef522d08a99b.sol(50)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x3a38d28013888b41b1172f84136aef522d08a99b.sol(17)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x3a38d28013888b41b1172f84136aef522d08a99b.sol(28)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x3a38d28013888b41b1172f84136aef522d08a99b.sol(39)

[33mWarning[0m for LockedEther in contract 'Token':
    |pragma solidity ^0.4.4;
    |
  > |contract Token {
    |    function totalSupply() constant returns (uint256 supply) {}
    |    function balanceOf(address _owner) constant returns (uint256 balance) {}
  at /home/jiaming/mavs_srcs/contract@0x3a38d28013888b41b1172f84136aef522d08a99b.sol(3)


