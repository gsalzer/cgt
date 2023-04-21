Processing contract: /home/jiaming/mavs_srcs/contract@0x14fb4c93fe461ec3f9f22b61ab7030f258867969.sol:Amorcoin
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x14fb4c93fe461ec3f9f22b61ab7030f258867969.sol:ERC20Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x14fb4c93fe461ec3f9f22b61ab7030f258867969.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Amorcoin':
    |
    |
  > |contract Amorcoin is StandardToken {
    |
    |    string public name; 
  at /home/jiaming/mavs_srcs/contract@0x14fb4c93fe461ec3f9f22b61ab7030f258867969.sol(63)

[31mViolation[0m for MissingInputValidation in contract 'Amorcoin':
    |    }
    |    
  > |    function getToken(uint256 _value) returns (bool success){
    |        uint newTokens = _value;
    |        balances[msg.sender] = balances[msg.sender] + newTokens;
  at /home/jiaming/mavs_srcs/contract@0x14fb4c93fe461ec3f9f22b61ab7030f258867969.sol(28)

[31mViolation[0m for MissingInputValidation in contract 'Amorcoin':
    |    }
    |    
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
    |            balances[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x14fb4c93fe461ec3f9f22b61ab7030f258867969.sol(33)

[31mViolation[0m for MissingInputValidation in contract 'Amorcoin':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x14fb4c93fe461ec3f9f22b61ab7030f258867969.sol(43)

[31mViolation[0m for MissingInputValidation in contract 'Amorcoin':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x14fb4c93fe461ec3f9f22b61ab7030f258867969.sol(47)

[31mViolation[0m for MissingInputValidation in contract 'Amorcoin':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x14fb4c93fe461ec3f9f22b61ab7030f258867969.sol(53)

[31mViolation[0m for MissingInputValidation in contract 'Amorcoin':
    |    }
    |    
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x14fb4c93fe461ec3f9f22b61ab7030f258867969.sol(80)

[33mWarning[0m for MissingInputValidation in contract 'Amorcoin':
    |    mapping (address => uint256) balances;
    |    mapping (address => mapping (address => uint256)) allowed;
  > |    uint256 public totalSupply;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x14fb4c93fe461ec3f9f22b61ab7030f258867969.sol(59)

[33mWarning[0m for MissingInputValidation in contract 'Amorcoin':
    |contract Amorcoin is StandardToken {
    |
  > |    string public name; 
    |    uint8 public decimals;               
    |    string public symbol;   
  at /home/jiaming/mavs_srcs/contract@0x14fb4c93fe461ec3f9f22b61ab7030f258867969.sol(65)

[33mWarning[0m for MissingInputValidation in contract 'Amorcoin':
    |
    |    string public name; 
  > |    uint8 public decimals;               
    |    string public symbol;   
    |    string public version = 'V1.0';   
  at /home/jiaming/mavs_srcs/contract@0x14fb4c93fe461ec3f9f22b61ab7030f258867969.sol(66)

[33mWarning[0m for MissingInputValidation in contract 'Amorcoin':
    |    string public name; 
    |    uint8 public decimals;               
  > |    string public symbol;   
    |    string public version = 'V1.0';   
    |    address owner;
  at /home/jiaming/mavs_srcs/contract@0x14fb4c93fe461ec3f9f22b61ab7030f258867969.sol(67)

[33mWarning[0m for MissingInputValidation in contract 'Amorcoin':
    |    uint8 public decimals;               
    |    string public symbol;   
  > |    string public version = 'V1.0';   
    |    address owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x14fb4c93fe461ec3f9f22b61ab7030f258867969.sol(68)

[33mWarning[0m for UnhandledException in contract 'Amorcoin':
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  > |        if(!_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) { throw; }
    |        return true;
    |    }   
  at /home/jiaming/mavs_srcs/contract@0x14fb4c93fe461ec3f9f22b61ab7030f258867969.sol(83)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Amorcoin':
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  > |        if(!_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) { throw; }
    |        return true;
    |    }   
  at /home/jiaming/mavs_srcs/contract@0x14fb4c93fe461ec3f9f22b61ab7030f258867969.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'Amorcoin':
    |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        if (balances[msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x14fb4c93fe461ec3f9f22b61ab7030f258867969.sol(21)

[33mWarning[0m for UnrestrictedWrite in contract 'Amorcoin':
    |    function getToken(uint256 _value) returns (bool success){
    |        uint newTokens = _value;
  > |        balances[msg.sender] = balances[msg.sender] + newTokens;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x14fb4c93fe461ec3f9f22b61ab7030f258867969.sol(30)

[33mWarning[0m for UnrestrictedWrite in contract 'Amorcoin':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x14fb4c93fe461ec3f9f22b61ab7030f258867969.sol(37)

[33mWarning[0m for UnrestrictedWrite in contract 'Amorcoin':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x14fb4c93fe461ec3f9f22b61ab7030f258867969.sol(48)

[33mWarning[0m for UnrestrictedWrite in contract 'Amorcoin':
    |    
    |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        if(!_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) { throw; }
  at /home/jiaming/mavs_srcs/contract@0x14fb4c93fe461ec3f9f22b61ab7030f258867969.sol(81)

[33mWarning[0m for LockedEther in contract 'ERC20Token':
    |pragma solidity ^0.4.4;
    |
  > |contract ERC20Token {
    |    function totalSupply() constant returns (uint256 supply) {}
    |	function balanceOf(address _owner) constant returns (uint256 balance) {}
  at /home/jiaming/mavs_srcs/contract@0x14fb4c93fe461ec3f9f22b61ab7030f258867969.sol(3)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |
    |
  > |contract StandardToken is ERC20Token {
    |
    |    function transfer(address _to, uint256 _value) returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x14fb4c93fe461ec3f9f22b61ab7030f258867969.sol(17)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |    
  > |    function getToken(uint256 _value) returns (bool success){
    |        uint newTokens = _value;
    |        balances[msg.sender] = balances[msg.sender] + newTokens;
  at /home/jiaming/mavs_srcs/contract@0x14fb4c93fe461ec3f9f22b61ab7030f258867969.sol(28)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |    
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
    |            balances[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x14fb4c93fe461ec3f9f22b61ab7030f258867969.sol(33)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x14fb4c93fe461ec3f9f22b61ab7030f258867969.sol(43)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x14fb4c93fe461ec3f9f22b61ab7030f258867969.sol(47)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x14fb4c93fe461ec3f9f22b61ab7030f258867969.sol(53)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |    mapping (address => uint256) balances;
    |    mapping (address => mapping (address => uint256)) allowed;
  > |    uint256 public totalSupply;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x14fb4c93fe461ec3f9f22b61ab7030f258867969.sol(59)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        if (balances[msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x14fb4c93fe461ec3f9f22b61ab7030f258867969.sol(21)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    function getToken(uint256 _value) returns (bool success){
    |        uint newTokens = _value;
  > |        balances[msg.sender] = balances[msg.sender] + newTokens;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x14fb4c93fe461ec3f9f22b61ab7030f258867969.sol(30)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x14fb4c93fe461ec3f9f22b61ab7030f258867969.sol(37)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x14fb4c93fe461ec3f9f22b61ab7030f258867969.sol(48)


