Processing contract: /home/jiaming/mavs_srcs/contract@0x66df48ba23c5e6cd5deb75f91bcc99030e2bf115.sol:DukaatToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x66df48ba23c5e6cd5deb75f91bcc99030e2bf115.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x66df48ba23c5e6cd5deb75f91bcc99030e2bf115.sol:Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'DukaatToken':
    |
    |
  > |contract DukaatToken is StandardToken {
    |
    |    function () {
  at /home/jiaming/mavs_srcs/contract@0x66df48ba23c5e6cd5deb75f91bcc99030e2bf115.sol(68)

[31mViolation[0m for MissingInputValidation in contract 'DukaatToken':
    |contract StandardToken is Token {
    |
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |
    |        if (balances[msg.sender] >= _value && _value > 0) {
  at /home/jiaming/mavs_srcs/contract@0x66df48ba23c5e6cd5deb75f91bcc99030e2bf115.sol(26)

[31mViolation[0m for MissingInputValidation in contract 'DukaatToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |
    |        if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0) {
  at /home/jiaming/mavs_srcs/contract@0x66df48ba23c5e6cd5deb75f91bcc99030e2bf115.sol(36)

[31mViolation[0m for MissingInputValidation in contract 'DukaatToken':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x66df48ba23c5e6cd5deb75f91bcc99030e2bf115.sol(47)

[31mViolation[0m for MissingInputValidation in contract 'DukaatToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x66df48ba23c5e6cd5deb75f91bcc99030e2bf115.sol(51)

[31mViolation[0m for MissingInputValidation in contract 'DukaatToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x66df48ba23c5e6cd5deb75f91bcc99030e2bf115.sol(57)

[31mViolation[0m for MissingInputValidation in contract 'DukaatToken':
    |    }
    |
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x66df48ba23c5e6cd5deb75f91bcc99030e2bf115.sol(90)

[33mWarning[0m for MissingInputValidation in contract 'DukaatToken':
    |    mapping (address => uint256) balances;
    |    mapping (address => mapping (address => uint256)) allowed;
  > |    uint256 public totalSupply;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x66df48ba23c5e6cd5deb75f91bcc99030e2bf115.sol(63)

[33mWarning[0m for MissingInputValidation in contract 'DukaatToken':
    |
    |
  > |    string public name;
    |    uint8 public decimals;
    |    string public symbol;
  at /home/jiaming/mavs_srcs/contract@0x66df48ba23c5e6cd5deb75f91bcc99030e2bf115.sol(75)

[33mWarning[0m for MissingInputValidation in contract 'DukaatToken':
    |
    |    string public name;
  > |    uint8 public decimals;
    |    string public symbol;
    |    string public version = 'H1.0';
  at /home/jiaming/mavs_srcs/contract@0x66df48ba23c5e6cd5deb75f91bcc99030e2bf115.sol(76)

[33mWarning[0m for MissingInputValidation in contract 'DukaatToken':
    |    string public name;
    |    uint8 public decimals;
  > |    string public symbol;
    |    string public version = 'H1.0';
    |
  at /home/jiaming/mavs_srcs/contract@0x66df48ba23c5e6cd5deb75f91bcc99030e2bf115.sol(77)

[33mWarning[0m for MissingInputValidation in contract 'DukaatToken':
    |    uint8 public decimals;
    |    string public symbol;
  > |    string public version = 'H1.0';
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x66df48ba23c5e6cd5deb75f91bcc99030e2bf115.sol(78)

[33mWarning[0m for UnhandledException in contract 'DukaatToken':
    |
    |  
  > |        if(!_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) { throw; }
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x66df48ba23c5e6cd5deb75f91bcc99030e2bf115.sol(95)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DukaatToken':
    |
    |  
  > |        if(!_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) { throw; }
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x66df48ba23c5e6cd5deb75f91bcc99030e2bf115.sol(95)

[33mWarning[0m for UnrestrictedWrite in contract 'DukaatToken':
    |
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x66df48ba23c5e6cd5deb75f91bcc99030e2bf115.sol(29)

[33mWarning[0m for UnrestrictedWrite in contract 'DukaatToken':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x66df48ba23c5e6cd5deb75f91bcc99030e2bf115.sol(41)

[33mWarning[0m for UnrestrictedWrite in contract 'DukaatToken':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x66df48ba23c5e6cd5deb75f91bcc99030e2bf115.sol(52)

[33mWarning[0m for UnrestrictedWrite in contract 'DukaatToken':
    |
    |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |
  at /home/jiaming/mavs_srcs/contract@0x66df48ba23c5e6cd5deb75f91bcc99030e2bf115.sol(91)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |
    |
  > |contract StandardToken is Token {
    |
    |    function transfer(address _to, uint256 _value) returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x66df48ba23c5e6cd5deb75f91bcc99030e2bf115.sol(24)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |contract StandardToken is Token {
    |
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |
    |        if (balances[msg.sender] >= _value && _value > 0) {
  at /home/jiaming/mavs_srcs/contract@0x66df48ba23c5e6cd5deb75f91bcc99030e2bf115.sol(26)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |
    |        if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0) {
  at /home/jiaming/mavs_srcs/contract@0x66df48ba23c5e6cd5deb75f91bcc99030e2bf115.sol(36)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x66df48ba23c5e6cd5deb75f91bcc99030e2bf115.sol(47)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x66df48ba23c5e6cd5deb75f91bcc99030e2bf115.sol(51)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x66df48ba23c5e6cd5deb75f91bcc99030e2bf115.sol(57)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |    mapping (address => uint256) balances;
    |    mapping (address => mapping (address => uint256)) allowed;
  > |    uint256 public totalSupply;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x66df48ba23c5e6cd5deb75f91bcc99030e2bf115.sol(63)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x66df48ba23c5e6cd5deb75f91bcc99030e2bf115.sol(29)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x66df48ba23c5e6cd5deb75f91bcc99030e2bf115.sol(41)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x66df48ba23c5e6cd5deb75f91bcc99030e2bf115.sol(52)

[33mWarning[0m for LockedEther in contract 'Token':
    |pragma solidity ^0.4.4;
    |
  > |contract Token {
    |
    |    function totalSupply() constant returns (uint256 supply) {}
  at /home/jiaming/mavs_srcs/contract@0x66df48ba23c5e6cd5deb75f91bcc99030e2bf115.sol(3)


