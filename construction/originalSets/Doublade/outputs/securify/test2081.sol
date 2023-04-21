Processing contract: /home/jiaming/mavs_srcs/contract@0x87e9367af6dd5356eaee2cbdaed6bf9838801251.sol:IndoJek
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x87e9367af6dd5356eaee2cbdaed6bf9838801251.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x87e9367af6dd5356eaee2cbdaed6bf9838801251.sol:Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'IndoJek':
    |}
    |
  > |contract IndoJek is StandardToken {
    | string public name; 
    | uint8 public decimals; 
  at /home/jiaming/mavs_srcs/contract@0x87e9367af6dd5356eaee2cbdaed6bf9838801251.sol(53)

[31mViolation[0m for MissingInputValidation in contract 'IndoJek':
    |}
    |contract StandardToken is Token {
  > | function transfer(address _to, uint256 _value) returns (bool success) {
    | if (balances[msg.sender] >= _value && _value > 0) {
    | balances[msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x87e9367af6dd5356eaee2cbdaed6bf9838801251.sol(15)

[31mViolation[0m for MissingInputValidation in contract 'IndoJek':
    | }
    |
  > |function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    | if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0) {
    | balances[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x87e9367af6dd5356eaee2cbdaed6bf9838801251.sol(24)

[31mViolation[0m for MissingInputValidation in contract 'IndoJek':
    | }
    |
  > |function balanceOf(address _owner) constant returns (uint256 balance) {
    | return balances[_owner];
    | }
  at /home/jiaming/mavs_srcs/contract@0x87e9367af6dd5356eaee2cbdaed6bf9838801251.sol(34)

[31mViolation[0m for MissingInputValidation in contract 'IndoJek':
    | }
    |
  > |function approve(address _spender, uint256 _value) returns (bool success) {
    | allowed[msg.sender][_spender] = _value;
    | Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x87e9367af6dd5356eaee2cbdaed6bf9838801251.sol(38)

[31mViolation[0m for MissingInputValidation in contract 'IndoJek':
    | }
    |
  > |function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    | return allowed[_owner][_spender];
    | }
  at /home/jiaming/mavs_srcs/contract@0x87e9367af6dd5356eaee2cbdaed6bf9838801251.sol(44)

[31mViolation[0m for MissingInputValidation in contract 'IndoJek':
    | fundsWallet.transfer(msg.value); 
    | }
  > | function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
    | allowed[msg.sender][_spender] = _value;
    | Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x87e9367af6dd5356eaee2cbdaed6bf9838801251.sol(79)

[33mWarning[0m for MissingInputValidation in contract 'IndoJek':
    |mapping (address => uint256) balances;
    | mapping (address => mapping (address => uint256)) allowed;
  > | uint256 public totalSupply;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x87e9367af6dd5356eaee2cbdaed6bf9838801251.sol(50)

[33mWarning[0m for MissingInputValidation in contract 'IndoJek':
    |
    |contract IndoJek is StandardToken {
  > | string public name; 
    | uint8 public decimals; 
    | string public symbol;
  at /home/jiaming/mavs_srcs/contract@0x87e9367af6dd5356eaee2cbdaed6bf9838801251.sol(54)

[33mWarning[0m for MissingInputValidation in contract 'IndoJek':
    |contract IndoJek is StandardToken {
    | string public name; 
  > | uint8 public decimals; 
    | string public symbol;
    | string public version = 'H1.0'; 
  at /home/jiaming/mavs_srcs/contract@0x87e9367af6dd5356eaee2cbdaed6bf9838801251.sol(55)

[33mWarning[0m for MissingInputValidation in contract 'IndoJek':
    | string public name; 
    | uint8 public decimals; 
  > | string public symbol;
    | string public version = 'H1.0'; 
    | uint256 public unitsOneEthCanBuy;
  at /home/jiaming/mavs_srcs/contract@0x87e9367af6dd5356eaee2cbdaed6bf9838801251.sol(56)

[33mWarning[0m for MissingInputValidation in contract 'IndoJek':
    | uint8 public decimals; 
    | string public symbol;
  > | string public version = 'H1.0'; 
    | uint256 public unitsOneEthCanBuy;
    | uint256 public totalEthInWei;
  at /home/jiaming/mavs_srcs/contract@0x87e9367af6dd5356eaee2cbdaed6bf9838801251.sol(57)

[33mWarning[0m for MissingInputValidation in contract 'IndoJek':
    | string public symbol;
    | string public version = 'H1.0'; 
  > | uint256 public unitsOneEthCanBuy;
    | uint256 public totalEthInWei;
    | address public fundsWallet; 
  at /home/jiaming/mavs_srcs/contract@0x87e9367af6dd5356eaee2cbdaed6bf9838801251.sol(58)

[33mWarning[0m for MissingInputValidation in contract 'IndoJek':
    | string public version = 'H1.0'; 
    | uint256 public unitsOneEthCanBuy;
  > | uint256 public totalEthInWei;
    | address public fundsWallet; 
    | function IndoJek() {
  at /home/jiaming/mavs_srcs/contract@0x87e9367af6dd5356eaee2cbdaed6bf9838801251.sol(59)

[33mWarning[0m for MissingInputValidation in contract 'IndoJek':
    | uint256 public unitsOneEthCanBuy;
    | uint256 public totalEthInWei;
  > | address public fundsWallet; 
    | function IndoJek() {
    | balances[msg.sender] = 8000000000000000000000000000000;
  at /home/jiaming/mavs_srcs/contract@0x87e9367af6dd5356eaee2cbdaed6bf9838801251.sol(60)

[33mWarning[0m for UnhandledException in contract 'IndoJek':
    | allowed[msg.sender][_spender] = _value;
    | Approval(msg.sender, _spender, _value);
  > | if(!_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) { throw; }
    | return true;
    | }
  at /home/jiaming/mavs_srcs/contract@0x87e9367af6dd5356eaee2cbdaed6bf9838801251.sol(82)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'IndoJek':
    | allowed[msg.sender][_spender] = _value;
    | Approval(msg.sender, _spender, _value);
  > | if(!_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) { throw; }
    | return true;
    | }
  at /home/jiaming/mavs_srcs/contract@0x87e9367af6dd5356eaee2cbdaed6bf9838801251.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'IndoJek':
    | function transfer(address _to, uint256 _value) returns (bool success) {
    | if (balances[msg.sender] >= _value && _value > 0) {
  > | balances[msg.sender] -= _value;
    | balances[_to] += _value;
    | Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x87e9367af6dd5356eaee2cbdaed6bf9838801251.sol(17)

[33mWarning[0m for UnrestrictedWrite in contract 'IndoJek':
    | balances[_to] += _value;
    | balances[_from] -= _value;
  > | allowed[_from][msg.sender] -= _value;
    | Transfer(_from, _to, _value);
    | return true;
  at /home/jiaming/mavs_srcs/contract@0x87e9367af6dd5356eaee2cbdaed6bf9838801251.sol(28)

[33mWarning[0m for UnrestrictedWrite in contract 'IndoJek':
    |
    |function approve(address _spender, uint256 _value) returns (bool success) {
  > | allowed[msg.sender][_spender] = _value;
    | Approval(msg.sender, _spender, _value);
    | return true;
  at /home/jiaming/mavs_srcs/contract@0x87e9367af6dd5356eaee2cbdaed6bf9838801251.sol(39)

[33mWarning[0m for UnrestrictedWrite in contract 'IndoJek':
    | }
    | function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
  > | allowed[msg.sender][_spender] = _value;
    | Approval(msg.sender, _spender, _value);
    | if(!_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) { throw; }
  at /home/jiaming/mavs_srcs/contract@0x87e9367af6dd5356eaee2cbdaed6bf9838801251.sol(80)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |
    |}
  > |contract StandardToken is Token {
    | function transfer(address _to, uint256 _value) returns (bool success) {
    | if (balances[msg.sender] >= _value && _value > 0) {
  at /home/jiaming/mavs_srcs/contract@0x87e9367af6dd5356eaee2cbdaed6bf9838801251.sol(14)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |}
    |contract StandardToken is Token {
  > | function transfer(address _to, uint256 _value) returns (bool success) {
    | if (balances[msg.sender] >= _value && _value > 0) {
    | balances[msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x87e9367af6dd5356eaee2cbdaed6bf9838801251.sol(15)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    | }
    |
  > |function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    | if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0) {
    | balances[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x87e9367af6dd5356eaee2cbdaed6bf9838801251.sol(24)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    | }
    |
  > |function balanceOf(address _owner) constant returns (uint256 balance) {
    | return balances[_owner];
    | }
  at /home/jiaming/mavs_srcs/contract@0x87e9367af6dd5356eaee2cbdaed6bf9838801251.sol(34)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    | }
    |
  > |function approve(address _spender, uint256 _value) returns (bool success) {
    | allowed[msg.sender][_spender] = _value;
    | Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x87e9367af6dd5356eaee2cbdaed6bf9838801251.sol(38)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    | }
    |
  > |function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    | return allowed[_owner][_spender];
    | }
  at /home/jiaming/mavs_srcs/contract@0x87e9367af6dd5356eaee2cbdaed6bf9838801251.sol(44)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |mapping (address => uint256) balances;
    | mapping (address => mapping (address => uint256)) allowed;
  > | uint256 public totalSupply;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x87e9367af6dd5356eaee2cbdaed6bf9838801251.sol(50)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    | function transfer(address _to, uint256 _value) returns (bool success) {
    | if (balances[msg.sender] >= _value && _value > 0) {
  > | balances[msg.sender] -= _value;
    | balances[_to] += _value;
    | Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x87e9367af6dd5356eaee2cbdaed6bf9838801251.sol(17)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    | balances[_to] += _value;
    | balances[_from] -= _value;
  > | allowed[_from][msg.sender] -= _value;
    | Transfer(_from, _to, _value);
    | return true;
  at /home/jiaming/mavs_srcs/contract@0x87e9367af6dd5356eaee2cbdaed6bf9838801251.sol(28)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |function approve(address _spender, uint256 _value) returns (bool success) {
  > | allowed[msg.sender][_spender] = _value;
    | Approval(msg.sender, _spender, _value);
    | return true;
  at /home/jiaming/mavs_srcs/contract@0x87e9367af6dd5356eaee2cbdaed6bf9838801251.sol(39)

[33mWarning[0m for LockedEther in contract 'Token':
    |pragma solidity ^0.4.4;
  > |contract Token {
    | function totalSupply() constant returns (uint256 supply) {}
    | function balanceOf(address _owner) constant returns (uint256 balance) {}
  at /home/jiaming/mavs_srcs/contract@0x87e9367af6dd5356eaee2cbdaed6bf9838801251.sol(2)


