Processing contract: /home/jiaming/mavs_srcs/contract@0x819f9df405abdadc3ff2e6f9531d87a8c1a5df55.sol:HumanStandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x819f9df405abdadc3ff2e6f9531d87a8c1a5df55.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x819f9df405abdadc3ff2e6f9531d87a8c1a5df55.sol:Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'HumanStandardToken':
    |}
    |
  > |contract HumanStandardToken is StandardToken {
    |    function () { 
    |        throw;
  at /home/jiaming/mavs_srcs/contract@0x819f9df405abdadc3ff2e6f9531d87a8c1a5df55.sol(57)

[31mViolation[0m for MissingInputValidation in contract 'HumanStandardToken':
    |
    |contract StandardToken is Token {
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
    |            balances[msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x819f9df405abdadc3ff2e6f9531d87a8c1a5df55.sol(15)

[31mViolation[0m for MissingInputValidation in contract 'HumanStandardToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0) {
    |            balances[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x819f9df405abdadc3ff2e6f9531d87a8c1a5df55.sol(26)

[31mViolation[0m for MissingInputValidation in contract 'HumanStandardToken':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x819f9df405abdadc3ff2e6f9531d87a8c1a5df55.sol(38)

[31mViolation[0m for MissingInputValidation in contract 'HumanStandardToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x819f9df405abdadc3ff2e6f9531d87a8c1a5df55.sol(42)

[31mViolation[0m for MissingInputValidation in contract 'HumanStandardToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |        return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x819f9df405abdadc3ff2e6f9531d87a8c1a5df55.sol(48)

[31mViolation[0m for MissingInputValidation in contract 'HumanStandardToken':
    |    }
    |
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x819f9df405abdadc3ff2e6f9531d87a8c1a5df55.sol(79)

[33mWarning[0m for MissingInputValidation in contract 'HumanStandardToken':
    |    mapping (address => uint256) balances;
    |    mapping (address => mapping (address => uint256)) allowed;
  > |    uint256 public totalSupply;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x819f9df405abdadc3ff2e6f9531d87a8c1a5df55.sol(54)

[33mWarning[0m for MissingInputValidation in contract 'HumanStandardToken':
    |    }
    |
  > |    uint8 public decimals;
    |    string public name;
    |    string public symbol;
  at /home/jiaming/mavs_srcs/contract@0x819f9df405abdadc3ff2e6f9531d87a8c1a5df55.sol(62)

[33mWarning[0m for MissingInputValidation in contract 'HumanStandardToken':
    |
    |    uint8 public decimals;
  > |    string public name;
    |    string public symbol;
    |
  at /home/jiaming/mavs_srcs/contract@0x819f9df405abdadc3ff2e6f9531d87a8c1a5df55.sol(63)

[33mWarning[0m for MissingInputValidation in contract 'HumanStandardToken':
    |    uint8 public decimals;
    |    string public name;
  > |    string public symbol;
    |
    |    function HumanStandardToken(
  at /home/jiaming/mavs_srcs/contract@0x819f9df405abdadc3ff2e6f9531d87a8c1a5df55.sol(64)

[33mWarning[0m for UnhandledException in contract 'HumanStandardToken':
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  > |        if(!_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) {
    |            throw;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x819f9df405abdadc3ff2e6f9531d87a8c1a5df55.sol(82)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HumanStandardToken':
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  > |        if(!_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) {
    |            throw;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x819f9df405abdadc3ff2e6f9531d87a8c1a5df55.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'HumanStandardToken':
    |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x819f9df405abdadc3ff2e6f9531d87a8c1a5df55.sol(17)

[33mWarning[0m for UnrestrictedWrite in contract 'HumanStandardToken':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x819f9df405abdadc3ff2e6f9531d87a8c1a5df55.sol(30)

[33mWarning[0m for UnrestrictedWrite in contract 'HumanStandardToken':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x819f9df405abdadc3ff2e6f9531d87a8c1a5df55.sol(43)

[33mWarning[0m for UnrestrictedWrite in contract 'HumanStandardToken':
    |
    |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        if(!_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) {
  at /home/jiaming/mavs_srcs/contract@0x819f9df405abdadc3ff2e6f9531d87a8c1a5df55.sol(80)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is Token {
    |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
  at /home/jiaming/mavs_srcs/contract@0x819f9df405abdadc3ff2e6f9531d87a8c1a5df55.sol(14)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |
    |contract StandardToken is Token {
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
    |            balances[msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x819f9df405abdadc3ff2e6f9531d87a8c1a5df55.sol(15)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0) {
    |            balances[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x819f9df405abdadc3ff2e6f9531d87a8c1a5df55.sol(26)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x819f9df405abdadc3ff2e6f9531d87a8c1a5df55.sol(38)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x819f9df405abdadc3ff2e6f9531d87a8c1a5df55.sol(42)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |        return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x819f9df405abdadc3ff2e6f9531d87a8c1a5df55.sol(48)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |    mapping (address => uint256) balances;
    |    mapping (address => mapping (address => uint256)) allowed;
  > |    uint256 public totalSupply;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x819f9df405abdadc3ff2e6f9531d87a8c1a5df55.sol(54)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x819f9df405abdadc3ff2e6f9531d87a8c1a5df55.sol(17)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x819f9df405abdadc3ff2e6f9531d87a8c1a5df55.sol(30)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x819f9df405abdadc3ff2e6f9531d87a8c1a5df55.sol(43)

[33mWarning[0m for LockedEther in contract 'Token':
    |pragma solidity ^0.4.0;
    |
  > |contract Token {
    |    function totalSupply() constant returns (uint256 supply) {}
    |    function balanceOf(address _owner) constant returns (uint256 balance) {}
  at /home/jiaming/mavs_srcs/contract@0x819f9df405abdadc3ff2e6f9531d87a8c1a5df55.sol(3)


