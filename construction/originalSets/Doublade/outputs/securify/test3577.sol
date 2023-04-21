Processing contract: /home/jiaming/mavs_srcs/contract@0xea56d013541ca1932e3b9b1fe8908e8f029eed65.sol:MOBILINK
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xea56d013541ca1932e3b9b1fe8908e8f029eed65.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xea56d013541ca1932e3b9b1fe8908e8f029eed65.sol:Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'MOBILINK':
    |
    |
  > |contract MOBILINK is StandardToken {
    |
    |    function () {
  at /home/jiaming/mavs_srcs/contract@0xea56d013541ca1932e3b9b1fe8908e8f029eed65.sol(90)

[31mViolation[0m for MissingInputValidation in contract 'MOBILINK':
    |contract StandardToken is Token {
    |
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        //Default assumes totalSupply can't be over max (2^256 - 1).
    |        //If your token leaves out totalSupply and can issue more tokens as time goes on, you need to check if it doesn't wrap.
  at /home/jiaming/mavs_srcs/contract@0xea56d013541ca1932e3b9b1fe8908e8f029eed65.sol(45)

[31mViolation[0m for MissingInputValidation in contract 'MOBILINK':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        //same as above. Replace this line with the following if you want to protect against wrapping uints.
    |        //if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
  at /home/jiaming/mavs_srcs/contract@0xea56d013541ca1932e3b9b1fe8908e8f029eed65.sol(58)

[31mViolation[0m for MissingInputValidation in contract 'MOBILINK':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xea56d013541ca1932e3b9b1fe8908e8f029eed65.sol(70)

[31mViolation[0m for MissingInputValidation in contract 'MOBILINK':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xea56d013541ca1932e3b9b1fe8908e8f029eed65.sol(74)

[31mViolation[0m for MissingInputValidation in contract 'MOBILINK':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xea56d013541ca1932e3b9b1fe8908e8f029eed65.sol(80)

[31mViolation[0m for MissingInputValidation in contract 'MOBILINK':
    |
    |    /* Approves and then calls the receiving contract */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xea56d013541ca1932e3b9b1fe8908e8f029eed65.sol(114)

[33mWarning[0m for MissingInputValidation in contract 'MOBILINK':
    |    mapping (address => uint256) balances;
    |    mapping (address => mapping (address => uint256)) allowed;
  > |    uint256 public totalSupply;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0xea56d013541ca1932e3b9b1fe8908e8f029eed65.sol(86)

[33mWarning[0m for MissingInputValidation in contract 'MOBILINK':
    |    /* Public variables of the token */
    |
  > |    string public name;                   
    |    uint8 public decimals;                
    |    string public symbol;                 
  at /home/jiaming/mavs_srcs/contract@0xea56d013541ca1932e3b9b1fe8908e8f029eed65.sol(98)

[33mWarning[0m for MissingInputValidation in contract 'MOBILINK':
    |
    |    string public name;                   
  > |    uint8 public decimals;                
    |    string public symbol;                 
    |    string public version = 'H1.0';    
  at /home/jiaming/mavs_srcs/contract@0xea56d013541ca1932e3b9b1fe8908e8f029eed65.sol(99)

[33mWarning[0m for MissingInputValidation in contract 'MOBILINK':
    |    string public name;                   
    |    uint8 public decimals;                
  > |    string public symbol;                 
    |    string public version = 'H1.0';    
    |
  at /home/jiaming/mavs_srcs/contract@0xea56d013541ca1932e3b9b1fe8908e8f029eed65.sol(100)

[33mWarning[0m for MissingInputValidation in contract 'MOBILINK':
    |    uint8 public decimals;                
    |    string public symbol;                 
  > |    string public version = 'H1.0';    
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xea56d013541ca1932e3b9b1fe8908e8f029eed65.sol(101)

[33mWarning[0m for UnhandledException in contract 'MOBILINK':
    |        //receiveApproval(address _from, uint256 _value, address _tokenContract, bytes _extraData)
    |        //it is assumed that when does this that the call *should* succeed, otherwise one would use vanilla approve instead.
  > |        if(!_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) { throw; }
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xea56d013541ca1932e3b9b1fe8908e8f029eed65.sol(121)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MOBILINK':
    |        //receiveApproval(address _from, uint256 _value, address _tokenContract, bytes _extraData)
    |        //it is assumed that when does this that the call *should* succeed, otherwise one would use vanilla approve instead.
  > |        if(!_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) { throw; }
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xea56d013541ca1932e3b9b1fe8908e8f029eed65.sol(121)

[33mWarning[0m for UnrestrictedWrite in contract 'MOBILINK':
    |        //if (balances[msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xea56d013541ca1932e3b9b1fe8908e8f029eed65.sol(51)

[33mWarning[0m for UnrestrictedWrite in contract 'MOBILINK':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xea56d013541ca1932e3b9b1fe8908e8f029eed65.sol(64)

[33mWarning[0m for UnrestrictedWrite in contract 'MOBILINK':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xea56d013541ca1932e3b9b1fe8908e8f029eed65.sol(75)

[33mWarning[0m for UnrestrictedWrite in contract 'MOBILINK':
    |    /* Approves and then calls the receiving contract */
    |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |
  at /home/jiaming/mavs_srcs/contract@0xea56d013541ca1932e3b9b1fe8908e8f029eed65.sol(115)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |
    |
  > |contract StandardToken is Token {
    |
    |    function transfer(address _to, uint256 _value) returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0xea56d013541ca1932e3b9b1fe8908e8f029eed65.sol(43)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |contract StandardToken is Token {
    |
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        //Default assumes totalSupply can't be over max (2^256 - 1).
    |        //If your token leaves out totalSupply and can issue more tokens as time goes on, you need to check if it doesn't wrap.
  at /home/jiaming/mavs_srcs/contract@0xea56d013541ca1932e3b9b1fe8908e8f029eed65.sol(45)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        //same as above. Replace this line with the following if you want to protect against wrapping uints.
    |        //if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
  at /home/jiaming/mavs_srcs/contract@0xea56d013541ca1932e3b9b1fe8908e8f029eed65.sol(58)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xea56d013541ca1932e3b9b1fe8908e8f029eed65.sol(70)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xea56d013541ca1932e3b9b1fe8908e8f029eed65.sol(74)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xea56d013541ca1932e3b9b1fe8908e8f029eed65.sol(80)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |    mapping (address => uint256) balances;
    |    mapping (address => mapping (address => uint256)) allowed;
  > |    uint256 public totalSupply;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0xea56d013541ca1932e3b9b1fe8908e8f029eed65.sol(86)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        //if (balances[msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xea56d013541ca1932e3b9b1fe8908e8f029eed65.sol(51)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xea56d013541ca1932e3b9b1fe8908e8f029eed65.sol(64)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xea56d013541ca1932e3b9b1fe8908e8f029eed65.sol(75)

[33mWarning[0m for LockedEther in contract 'Token':
    |pragma solidity ^0.4.16;
    |
  > |contract Token {
    |
    |    /// @return total amount of tokens
  at /home/jiaming/mavs_srcs/contract@0xea56d013541ca1932e3b9b1fe8908e8f029eed65.sol(3)


