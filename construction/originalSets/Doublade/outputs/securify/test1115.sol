Processing contract: /home/jiaming/mavs_srcs/contract@0x4651a734b1decaf3544c350dfbd7619c15f7d703.sol:CyberCoin
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4651a734b1decaf3544c350dfbd7619c15f7d703.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4651a734b1decaf3544c350dfbd7619c15f7d703.sol:Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'CyberCoin':
    |    uint256 public totalSupply;
    |}
  > |contract CyberCoin is StandardToken {
    |
    |    function () {
  at /home/jiaming/mavs_srcs/contract@0x4651a734b1decaf3544c350dfbd7619c15f7d703.sol(53)

[31mViolation[0m for MissingInputValidation in contract 'CyberCoin':
    |contract StandardToken is Token {
    |
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
    |            balances[msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x4651a734b1decaf3544c350dfbd7619c15f7d703.sol(16)

[31mViolation[0m for MissingInputValidation in contract 'CyberCoin':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0) {
    |            balances[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x4651a734b1decaf3544c350dfbd7619c15f7d703.sol(25)

[31mViolation[0m for MissingInputValidation in contract 'CyberCoin':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4651a734b1decaf3544c350dfbd7619c15f7d703.sol(35)

[31mViolation[0m for MissingInputValidation in contract 'CyberCoin':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x4651a734b1decaf3544c350dfbd7619c15f7d703.sol(39)

[31mViolation[0m for MissingInputValidation in contract 'CyberCoin':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4651a734b1decaf3544c350dfbd7619c15f7d703.sol(45)

[31mViolation[0m for MissingInputValidation in contract 'CyberCoin':
    |        symbol = "CCN";
    |    }
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x4651a734b1decaf3544c350dfbd7619c15f7d703.sol(71)

[33mWarning[0m for MissingInputValidation in contract 'CyberCoin':
    |    mapping (address => uint256) balances;
    |    mapping (address => mapping (address => uint256)) allowed;
  > |    uint256 public totalSupply;
    |}
    |contract CyberCoin is StandardToken {
  at /home/jiaming/mavs_srcs/contract@0x4651a734b1decaf3544c350dfbd7619c15f7d703.sol(51)

[33mWarning[0m for MissingInputValidation in contract 'CyberCoin':
    |        throw;
    |    }
  > |    string public name; 
    |    uint8 public decimals;
    |    string public symbol;   
  at /home/jiaming/mavs_srcs/contract@0x4651a734b1decaf3544c350dfbd7619c15f7d703.sol(58)

[33mWarning[0m for MissingInputValidation in contract 'CyberCoin':
    |    }
    |    string public name; 
  > |    uint8 public decimals;
    |    string public symbol;   
    |    string public version = 'H1.0'; 
  at /home/jiaming/mavs_srcs/contract@0x4651a734b1decaf3544c350dfbd7619c15f7d703.sol(59)

[33mWarning[0m for MissingInputValidation in contract 'CyberCoin':
    |    string public name; 
    |    uint8 public decimals;
  > |    string public symbol;   
    |    string public version = 'H1.0'; 
    |
  at /home/jiaming/mavs_srcs/contract@0x4651a734b1decaf3544c350dfbd7619c15f7d703.sol(60)

[33mWarning[0m for MissingInputValidation in contract 'CyberCoin':
    |    uint8 public decimals;
    |    string public symbol;   
  > |    string public version = 'H1.0'; 
    |
    |    function CyberCoin(
  at /home/jiaming/mavs_srcs/contract@0x4651a734b1decaf3544c350dfbd7619c15f7d703.sol(61)

[33mWarning[0m for UnhandledException in contract 'CyberCoin':
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  > |        if(!_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) { throw; }
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4651a734b1decaf3544c350dfbd7619c15f7d703.sol(74)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CyberCoin':
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  > |        if(!_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) { throw; }
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4651a734b1decaf3544c350dfbd7619c15f7d703.sol(74)

[33mWarning[0m for UnrestrictedWrite in contract 'CyberCoin':
    |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x4651a734b1decaf3544c350dfbd7619c15f7d703.sol(18)

[33mWarning[0m for UnrestrictedWrite in contract 'CyberCoin':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x4651a734b1decaf3544c350dfbd7619c15f7d703.sol(29)

[33mWarning[0m for UnrestrictedWrite in contract 'CyberCoin':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x4651a734b1decaf3544c350dfbd7619c15f7d703.sol(40)

[33mWarning[0m for UnrestrictedWrite in contract 'CyberCoin':
    |    }
    |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        if(!_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) { throw; }
  at /home/jiaming/mavs_srcs/contract@0x4651a734b1decaf3544c350dfbd7619c15f7d703.sol(72)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |    
    |}
  > |contract StandardToken is Token {
    |
    |    function transfer(address _to, uint256 _value) returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x4651a734b1decaf3544c350dfbd7619c15f7d703.sol(14)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |contract StandardToken is Token {
    |
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
    |            balances[msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x4651a734b1decaf3544c350dfbd7619c15f7d703.sol(16)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0) {
    |            balances[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x4651a734b1decaf3544c350dfbd7619c15f7d703.sol(25)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4651a734b1decaf3544c350dfbd7619c15f7d703.sol(35)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x4651a734b1decaf3544c350dfbd7619c15f7d703.sol(39)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4651a734b1decaf3544c350dfbd7619c15f7d703.sol(45)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |    mapping (address => uint256) balances;
    |    mapping (address => mapping (address => uint256)) allowed;
  > |    uint256 public totalSupply;
    |}
    |contract CyberCoin is StandardToken {
  at /home/jiaming/mavs_srcs/contract@0x4651a734b1decaf3544c350dfbd7619c15f7d703.sol(51)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x4651a734b1decaf3544c350dfbd7619c15f7d703.sol(18)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x4651a734b1decaf3544c350dfbd7619c15f7d703.sol(29)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x4651a734b1decaf3544c350dfbd7619c15f7d703.sol(40)

[33mWarning[0m for LockedEther in contract 'Token':
    |pragma solidity ^0.4.4;
  > |contract Token {
    |
    |    function totalSupply() constant returns (uint256 supply) {}
  at /home/jiaming/mavs_srcs/contract@0x4651a734b1decaf3544c350dfbd7619c15f7d703.sol(2)


