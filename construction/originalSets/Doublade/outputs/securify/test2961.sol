Processing contract: /home/jiaming/mavs_srcs/contract@0xc2b8b1aa1249d9dfa74d519030e72e4883340543.sol:RESPECT
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc2b8b1aa1249d9dfa74d519030e72e4883340543.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc2b8b1aa1249d9dfa74d519030e72e4883340543.sol:Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'RESPECT':
    |
    |
  > |contract RESPECT is StandardToken {
    |
    |    function() {
  at /home/jiaming/mavs_srcs/contract@0xc2b8b1aa1249d9dfa74d519030e72e4883340543.sol(84)

[31mViolation[0m for MissingInputValidation in contract 'RESPECT':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
    |            //        if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0) {
  at /home/jiaming/mavs_srcs/contract@0xc2b8b1aa1249d9dfa74d519030e72e4883340543.sol(53)

[31mViolation[0m for MissingInputValidation in contract 'RESPECT':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc2b8b1aa1249d9dfa74d519030e72e4883340543.sol(64)

[31mViolation[0m for MissingInputValidation in contract 'RESPECT':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xc2b8b1aa1249d9dfa74d519030e72e4883340543.sol(68)

[31mViolation[0m for MissingInputValidation in contract 'RESPECT':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |        return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc2b8b1aa1249d9dfa74d519030e72e4883340543.sol(74)

[31mViolation[0m for MissingInputValidation in contract 'RESPECT':
    |
    |    /* Approves and then calls the receiving contract */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xc2b8b1aa1249d9dfa74d519030e72e4883340543.sol(107)

[33mWarning[0m for MissingInputValidation in contract 'RESPECT':
    |    mapping(address => uint256) balances;
    |    mapping(address => mapping(address => uint256)) allowed;
  > |    uint256 public totalSupply;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0xc2b8b1aa1249d9dfa74d519030e72e4883340543.sol(80)

[33mWarning[0m for MissingInputValidation in contract 'RESPECT':
    |    /* Public variables of the token */
    |
  > |    string public name;
    |    uint8 public decimals;
    |    string public symbol;
  at /home/jiaming/mavs_srcs/contract@0xc2b8b1aa1249d9dfa74d519030e72e4883340543.sol(93)

[33mWarning[0m for MissingInputValidation in contract 'RESPECT':
    |
    |    string public name;
  > |    uint8 public decimals;
    |    string public symbol;
    |    string public version = '2.0.0.RELEASE';
  at /home/jiaming/mavs_srcs/contract@0xc2b8b1aa1249d9dfa74d519030e72e4883340543.sol(94)

[33mWarning[0m for MissingInputValidation in contract 'RESPECT':
    |    string public name;
    |    uint8 public decimals;
  > |    string public symbol;
    |    string public version = '2.0.0.RELEASE';
    |
  at /home/jiaming/mavs_srcs/contract@0xc2b8b1aa1249d9dfa74d519030e72e4883340543.sol(95)

[33mWarning[0m for MissingInputValidation in contract 'RESPECT':
    |    uint8 public decimals;
    |    string public symbol;
  > |    string public version = '2.0.0.RELEASE';
    |
    |    function RESPECT() {
  at /home/jiaming/mavs_srcs/contract@0xc2b8b1aa1249d9dfa74d519030e72e4883340543.sol(96)

[33mWarning[0m for UnhandledException in contract 'RESPECT':
    |        //receiveApproval(address _from, uint256 _value, address _tokenContract, bytes _extraData)
    |        //it is assumed that when does this that the call *should* succeed, otherwise one would use vanilla approve instead.
  > |        if (!_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) {throw;}
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc2b8b1aa1249d9dfa74d519030e72e4883340543.sol(114)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RESPECT':
    |        //receiveApproval(address _from, uint256 _value, address _tokenContract, bytes _extraData)
    |        //it is assumed that when does this that the call *should* succeed, otherwise one would use vanilla approve instead.
  > |        if (!_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) {throw;}
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc2b8b1aa1249d9dfa74d519030e72e4883340543.sol(114)

[33mWarning[0m for UnrestrictedWrite in contract 'RESPECT':
    |        if (balances[msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
    |            //        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc2b8b1aa1249d9dfa74d519030e72e4883340543.sol(46)

[33mWarning[0m for UnrestrictedWrite in contract 'RESPECT':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xc2b8b1aa1249d9dfa74d519030e72e4883340543.sol(58)

[33mWarning[0m for UnrestrictedWrite in contract 'RESPECT':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xc2b8b1aa1249d9dfa74d519030e72e4883340543.sol(69)

[33mWarning[0m for UnrestrictedWrite in contract 'RESPECT':
    |    /* Approves and then calls the receiving contract */
    |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |
  at /home/jiaming/mavs_srcs/contract@0xc2b8b1aa1249d9dfa74d519030e72e4883340543.sol(108)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is Token {
    |
    |    function transfer(address _to, uint256 _value) returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0xc2b8b1aa1249d9dfa74d519030e72e4883340543.sol(41)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
    |            //        if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0) {
  at /home/jiaming/mavs_srcs/contract@0xc2b8b1aa1249d9dfa74d519030e72e4883340543.sol(53)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc2b8b1aa1249d9dfa74d519030e72e4883340543.sol(64)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xc2b8b1aa1249d9dfa74d519030e72e4883340543.sol(68)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |        return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc2b8b1aa1249d9dfa74d519030e72e4883340543.sol(74)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |    mapping(address => uint256) balances;
    |    mapping(address => mapping(address => uint256)) allowed;
  > |    uint256 public totalSupply;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0xc2b8b1aa1249d9dfa74d519030e72e4883340543.sol(80)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        if (balances[msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
    |            //        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc2b8b1aa1249d9dfa74d519030e72e4883340543.sol(46)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xc2b8b1aa1249d9dfa74d519030e72e4883340543.sol(58)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xc2b8b1aa1249d9dfa74d519030e72e4883340543.sol(69)

[33mWarning[0m for LockedEther in contract 'Token':
    |pragma solidity ^0.4.19;
    |
  > |contract Token {
    |
    |    /// @return total amount of tokens
  at /home/jiaming/mavs_srcs/contract@0xc2b8b1aa1249d9dfa74d519030e72e4883340543.sol(3)


