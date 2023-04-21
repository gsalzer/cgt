Processing contract: /home/jiaming/mavs_srcs/contract@0xe70e308e8809e1d1b359f975d36a69173e0670ba.sol:FMCCoin
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe70e308e8809e1d1b359f975d36a69173e0670ba.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe70e308e8809e1d1b359f975d36a69173e0670ba.sol:Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'FMCCoin':
    |
    |
  > |contract FMCCoin is StandardToken {
    |
    |    function () {
  at /home/jiaming/mavs_srcs/contract@0xe70e308e8809e1d1b359f975d36a69173e0670ba.sol(83)

[31mViolation[0m for MissingInputValidation in contract 'FMCCoin':
    |contract StandardToken is Token {
    |
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
    |            balances[msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0xe70e308e8809e1d1b359f975d36a69173e0670ba.sol(44)

[31mViolation[0m for MissingInputValidation in contract 'FMCCoin':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0) {
    |            balances[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0xe70e308e8809e1d1b359f975d36a69173e0670ba.sol(53)

[31mViolation[0m for MissingInputValidation in contract 'FMCCoin':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe70e308e8809e1d1b359f975d36a69173e0670ba.sol(63)

[31mViolation[0m for MissingInputValidation in contract 'FMCCoin':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xe70e308e8809e1d1b359f975d36a69173e0670ba.sol(67)

[31mViolation[0m for MissingInputValidation in contract 'FMCCoin':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe70e308e8809e1d1b359f975d36a69173e0670ba.sol(73)

[31mViolation[0m for MissingInputValidation in contract 'FMCCoin':
    |
    |    /* Approves and then calls the receiving contract */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xe70e308e8809e1d1b359f975d36a69173e0670ba.sol(108)

[33mWarning[0m for MissingInputValidation in contract 'FMCCoin':
    |    mapping (address => uint256) balances;
    |    mapping (address => mapping (address => uint256)) allowed;
  > |    uint256 public totalSupply;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0xe70e308e8809e1d1b359f975d36a69173e0670ba.sol(79)

[33mWarning[0m for MissingInputValidation in contract 'FMCCoin':
    |    /* Public variables of the token */
    |    
  > |    string public name;                   
    |    uint8 public decimals;                
    |    string public symbol;                 
  at /home/jiaming/mavs_srcs/contract@0xe70e308e8809e1d1b359f975d36a69173e0670ba.sol(92)

[33mWarning[0m for MissingInputValidation in contract 'FMCCoin':
    |    
    |    string public name;                   
  > |    uint8 public decimals;                
    |    string public symbol;                 
    |    string public version = 'H1.0';  
  at /home/jiaming/mavs_srcs/contract@0xe70e308e8809e1d1b359f975d36a69173e0670ba.sol(93)

[33mWarning[0m for MissingInputValidation in contract 'FMCCoin':
    |    string public name;                   
    |    uint8 public decimals;                
  > |    string public symbol;                 
    |    string public version = 'H1.0';  
    |
  at /home/jiaming/mavs_srcs/contract@0xe70e308e8809e1d1b359f975d36a69173e0670ba.sol(94)

[33mWarning[0m for MissingInputValidation in contract 'FMCCoin':
    |    uint8 public decimals;                
    |    string public symbol;                 
  > |    string public version = 'H1.0';  
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xe70e308e8809e1d1b359f975d36a69173e0670ba.sol(95)

[33mWarning[0m for UnhandledException in contract 'FMCCoin':
    |        Approval(msg.sender, _spender, _value);
    |
  > |        if(!_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) { throw; }
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe70e308e8809e1d1b359f975d36a69173e0670ba.sol(112)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FMCCoin':
    |        Approval(msg.sender, _spender, _value);
    |
  > |        if(!_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) { throw; }
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe70e308e8809e1d1b359f975d36a69173e0670ba.sol(112)

[33mWarning[0m for UnrestrictedWrite in contract 'FMCCoin':
    |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe70e308e8809e1d1b359f975d36a69173e0670ba.sol(46)

[33mWarning[0m for UnrestrictedWrite in contract 'FMCCoin':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xe70e308e8809e1d1b359f975d36a69173e0670ba.sol(57)

[33mWarning[0m for UnrestrictedWrite in contract 'FMCCoin':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe70e308e8809e1d1b359f975d36a69173e0670ba.sol(68)

[33mWarning[0m for UnrestrictedWrite in contract 'FMCCoin':
    |    /* Approves and then calls the receiving contract */
    |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |
  at /home/jiaming/mavs_srcs/contract@0xe70e308e8809e1d1b359f975d36a69173e0670ba.sol(109)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |
    |
  > |contract StandardToken is Token {
    |
    |    function transfer(address _to, uint256 _value) returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0xe70e308e8809e1d1b359f975d36a69173e0670ba.sol(42)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |contract StandardToken is Token {
    |
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
    |            balances[msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0xe70e308e8809e1d1b359f975d36a69173e0670ba.sol(44)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0) {
    |            balances[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0xe70e308e8809e1d1b359f975d36a69173e0670ba.sol(53)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe70e308e8809e1d1b359f975d36a69173e0670ba.sol(63)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xe70e308e8809e1d1b359f975d36a69173e0670ba.sol(67)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe70e308e8809e1d1b359f975d36a69173e0670ba.sol(73)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |    mapping (address => uint256) balances;
    |    mapping (address => mapping (address => uint256)) allowed;
  > |    uint256 public totalSupply;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0xe70e308e8809e1d1b359f975d36a69173e0670ba.sol(79)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe70e308e8809e1d1b359f975d36a69173e0670ba.sol(46)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xe70e308e8809e1d1b359f975d36a69173e0670ba.sol(57)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe70e308e8809e1d1b359f975d36a69173e0670ba.sol(68)

[33mWarning[0m for LockedEther in contract 'Token':
    |pragma solidity ^0.4.16;
    |
  > |contract Token {
    |
    |    /// @return total amount of tokens
  at /home/jiaming/mavs_srcs/contract@0xe70e308e8809e1d1b359f975d36a69173e0670ba.sol(3)


