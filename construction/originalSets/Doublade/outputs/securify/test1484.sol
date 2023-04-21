Processing contract: /home/jiaming/mavs_srcs/contract@0x5e900fa9fe49120c091e571a09c79fd17f630524.sol:POMATOKEN
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5e900fa9fe49120c091e571a09c79fd17f630524.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5e900fa9fe49120c091e571a09c79fd17f630524.sol:Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'POMATOKEN':
    |
    |
  > |contract POMATOKEN is StandardToken {
    |
    |    function () {
  at /home/jiaming/mavs_srcs/contract@0x5e900fa9fe49120c091e571a09c79fd17f630524.sol(87)

[31mViolation[0m for MissingInputValidation in contract 'POMATOKEN':
    |contract StandardToken is Token {
    |
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        
    |        if (balances[msg.sender] >= _value && _value > 0) {
  at /home/jiaming/mavs_srcs/contract@0x5e900fa9fe49120c091e571a09c79fd17f630524.sol(45)

[31mViolation[0m for MissingInputValidation in contract 'POMATOKEN':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        
    |        if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0) {
  at /home/jiaming/mavs_srcs/contract@0x5e900fa9fe49120c091e571a09c79fd17f630524.sol(55)

[31mViolation[0m for MissingInputValidation in contract 'POMATOKEN':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5e900fa9fe49120c091e571a09c79fd17f630524.sol(66)

[31mViolation[0m for MissingInputValidation in contract 'POMATOKEN':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x5e900fa9fe49120c091e571a09c79fd17f630524.sol(70)

[31mViolation[0m for MissingInputValidation in contract 'POMATOKEN':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5e900fa9fe49120c091e571a09c79fd17f630524.sol(76)

[31mViolation[0m for MissingInputValidation in contract 'POMATOKEN':
    |
    |    /* Approves and then calls the receiving contract */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x5e900fa9fe49120c091e571a09c79fd17f630524.sol(122)

[33mWarning[0m for MissingInputValidation in contract 'POMATOKEN':
    |    mapping (address => uint256) balances;
    |    mapping (address => mapping (address => uint256)) allowed;
  > |    uint256 public totalSupply;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x5e900fa9fe49120c091e571a09c79fd17f630524.sol(82)

[33mWarning[0m for MissingInputValidation in contract 'POMATOKEN':
    |    Some wallets/interfaces might not even bother to look at this information.
    |    */
  > |    string public name = "POMA Tokens";                   
    |    uint8 public decimals;                
    |    string public symbol = "POMA";                 
  at /home/jiaming/mavs_srcs/contract@0x5e900fa9fe49120c091e571a09c79fd17f630524.sol(102)

[33mWarning[0m for MissingInputValidation in contract 'POMATOKEN':
    |    */
    |    string public name = "POMA Tokens";                   
  > |    uint8 public decimals;                
    |    string public symbol = "POMA";                 
    |    string public version = 'H1.0';       
  at /home/jiaming/mavs_srcs/contract@0x5e900fa9fe49120c091e571a09c79fd17f630524.sol(103)

[33mWarning[0m for MissingInputValidation in contract 'POMATOKEN':
    |    string public name = "POMA Tokens";                   
    |    uint8 public decimals;                
  > |    string public symbol = "POMA";                 
    |    string public version = 'H1.0';       
    |
  at /home/jiaming/mavs_srcs/contract@0x5e900fa9fe49120c091e571a09c79fd17f630524.sol(104)

[33mWarning[0m for MissingInputValidation in contract 'POMATOKEN':
    |    uint8 public decimals;                
    |    string public symbol = "POMA";                 
  > |    string public version = 'H1.0';       
    |
    |//
  at /home/jiaming/mavs_srcs/contract@0x5e900fa9fe49120c091e571a09c79fd17f630524.sol(105)

[33mWarning[0m for UnhandledException in contract 'POMATOKEN':
    |        //receiveApproval(address _from, uint256 _value, address _tokenContract, bytes _extraData)
    |        //it is assumed that when does this that the call *should* succeed, otherwise one would use vanilla approve instead.
  > |        if(!_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) { throw; }
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5e900fa9fe49120c091e571a09c79fd17f630524.sol(129)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'POMATOKEN':
    |        //receiveApproval(address _from, uint256 _value, address _tokenContract, bytes _extraData)
    |        //it is assumed that when does this that the call *should* succeed, otherwise one would use vanilla approve instead.
  > |        if(!_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) { throw; }
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5e900fa9fe49120c091e571a09c79fd17f630524.sol(129)

[33mWarning[0m for UnrestrictedWrite in contract 'POMATOKEN':
    |        
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x5e900fa9fe49120c091e571a09c79fd17f630524.sol(48)

[33mWarning[0m for UnrestrictedWrite in contract 'POMATOKEN':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x5e900fa9fe49120c091e571a09c79fd17f630524.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'POMATOKEN':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x5e900fa9fe49120c091e571a09c79fd17f630524.sol(71)

[33mWarning[0m for UnrestrictedWrite in contract 'POMATOKEN':
    |    /* Approves and then calls the receiving contract */
    |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |
  at /home/jiaming/mavs_srcs/contract@0x5e900fa9fe49120c091e571a09c79fd17f630524.sol(123)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |
    |
  > |contract StandardToken is Token {
    |
    |    function transfer(address _to, uint256 _value) returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x5e900fa9fe49120c091e571a09c79fd17f630524.sol(43)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |contract StandardToken is Token {
    |
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        
    |        if (balances[msg.sender] >= _value && _value > 0) {
  at /home/jiaming/mavs_srcs/contract@0x5e900fa9fe49120c091e571a09c79fd17f630524.sol(45)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        
    |        if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0) {
  at /home/jiaming/mavs_srcs/contract@0x5e900fa9fe49120c091e571a09c79fd17f630524.sol(55)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5e900fa9fe49120c091e571a09c79fd17f630524.sol(66)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x5e900fa9fe49120c091e571a09c79fd17f630524.sol(70)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5e900fa9fe49120c091e571a09c79fd17f630524.sol(76)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |    mapping (address => uint256) balances;
    |    mapping (address => mapping (address => uint256)) allowed;
  > |    uint256 public totalSupply;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x5e900fa9fe49120c091e571a09c79fd17f630524.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x5e900fa9fe49120c091e571a09c79fd17f630524.sol(48)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x5e900fa9fe49120c091e571a09c79fd17f630524.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x5e900fa9fe49120c091e571a09c79fd17f630524.sol(71)

[33mWarning[0m for LockedEther in contract 'Token':
    |pragma solidity ^0.4.4;
    |
  > |contract Token {
    |
    |    /// @return total amount of tokens
  at /home/jiaming/mavs_srcs/contract@0x5e900fa9fe49120c091e571a09c79fd17f630524.sol(3)


