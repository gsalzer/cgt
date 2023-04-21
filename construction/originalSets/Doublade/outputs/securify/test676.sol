Processing contract: /home/jiaming/mavs_srcs/contract@0x2b32900dffc57ce40739198fb7f84cf7621c9416.sol:DACToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2b32900dffc57ce40739198fb7f84cf7621c9416.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2b32900dffc57ce40739198fb7f84cf7621c9416.sol:Token
[33mWarning[0m for LockedEther in contract 'DACToken':
    |}
    |
  > |contract DACToken is StandardToken { 
    |
    |    string public name;                   
  at /home/jiaming/mavs_srcs/contract@0x2b32900dffc57ce40739198fb7f84cf7621c9416.sol(62)

[31mViolation[0m for MissingInputValidation in contract 'DACToken':
    |
    |contract StandardToken is Token {
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        require(balances[msg.sender] >= _value);
    |        balances[msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x2b32900dffc57ce40739198fb7f84cf7621c9416.sol(24)

[31mViolation[0m for MissingInputValidation in contract 'DACToken':
    |
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns 
    |    (bool success) {
    |        require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value);
  at /home/jiaming/mavs_srcs/contract@0x2b32900dffc57ce40739198fb7f84cf7621c9416.sol(33)

[31mViolation[0m for MissingInputValidation in contract 'DACToken':
    |        return true;
    |    }
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2b32900dffc57ce40739198fb7f84cf7621c9416.sol(42)

[31mViolation[0m for MissingInputValidation in contract 'DACToken':
    |
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success)   
    |    {
    |        allowed[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0x2b32900dffc57ce40739198fb7f84cf7621c9416.sol(47)

[31mViolation[0m for MissingInputValidation in contract 'DACToken':
    |
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |        return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2b32900dffc57ce40739198fb7f84cf7621c9416.sol(55)

[31mViolation[0m for MissingInputValidation in contract 'DACToken':
    |
    |   
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x2b32900dffc57ce40739198fb7f84cf7621c9416.sol(78)

[33mWarning[0m for MissingInputValidation in contract 'DACToken':
    |pragma solidity ^0.4.8;
    |contract Token{
  > |    uint256 public totalSupply;
    |
    |    function balanceOf(address _owner) constant returns (uint256 balance);
  at /home/jiaming/mavs_srcs/contract@0x2b32900dffc57ce40739198fb7f84cf7621c9416.sol(3)

[33mWarning[0m for MissingInputValidation in contract 'DACToken':
    |contract DACToken is StandardToken { 
    |
  > |    string public name;                   
    |    uint8 public decimals;               
    |    string public symbol; 
  at /home/jiaming/mavs_srcs/contract@0x2b32900dffc57ce40739198fb7f84cf7621c9416.sol(64)

[33mWarning[0m for MissingInputValidation in contract 'DACToken':
    |
    |    string public name;                   
  > |    uint8 public decimals;               
    |    string public symbol; 
    |    string public version = 'DAC1.0'; 
  at /home/jiaming/mavs_srcs/contract@0x2b32900dffc57ce40739198fb7f84cf7621c9416.sol(65)

[33mWarning[0m for MissingInputValidation in contract 'DACToken':
    |    string public name;                   
    |    uint8 public decimals;               
  > |    string public symbol; 
    |    string public version = 'DAC1.0'; 
    |
  at /home/jiaming/mavs_srcs/contract@0x2b32900dffc57ce40739198fb7f84cf7621c9416.sol(66)

[33mWarning[0m for MissingInputValidation in contract 'DACToken':
    |    uint8 public decimals;               
    |    string public symbol; 
  > |    string public version = 'DAC1.0'; 
    |
    |    function DACToken(uint256 _initialAmount, string _tokenName, uint8 _decimalUnits, string _tokenSymbol) {
  at /home/jiaming/mavs_srcs/contract@0x2b32900dffc57ce40739198fb7f84cf7621c9416.sol(67)

[33mWarning[0m for UnhandledException in contract 'DACToken':
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  > |        require(_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData));
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2b32900dffc57ce40739198fb7f84cf7621c9416.sol(81)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DACToken':
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  > |        require(_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData));
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2b32900dffc57ce40739198fb7f84cf7621c9416.sol(81)

[31mViolation[0m for UnrestrictedWrite in contract 'DACToken':
    |        require(balances[msg.sender] >= _value);
    |        balances[msg.sender] -= _value;
  > |        balances[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x2b32900dffc57ce40739198fb7f84cf7621c9416.sol(27)

[31mViolation[0m for UnrestrictedWrite in contract 'DACToken':
    |    (bool success) {
    |        require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value);
  > |        balances[_to] += _value;
    |        balances[_from] -= _value; 
    |        allowed[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x2b32900dffc57ce40739198fb7f84cf7621c9416.sol(36)

[31mViolation[0m for UnrestrictedWrite in contract 'DACToken':
    |        require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value);
    |        balances[_to] += _value;
  > |        balances[_from] -= _value; 
    |        allowed[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x2b32900dffc57ce40739198fb7f84cf7621c9416.sol(37)

[33mWarning[0m for UnrestrictedWrite in contract 'DACToken':
    |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        require(balances[msg.sender] >= _value);
  > |        balances[msg.sender] -= _value;
    |        balances[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x2b32900dffc57ce40739198fb7f84cf7621c9416.sol(26)

[33mWarning[0m for UnrestrictedWrite in contract 'DACToken':
    |        balances[_to] += _value;
    |        balances[_from] -= _value; 
  > |        allowed[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x2b32900dffc57ce40739198fb7f84cf7621c9416.sol(38)

[33mWarning[0m for UnrestrictedWrite in contract 'DACToken':
    |    function approve(address _spender, uint256 _value) returns (bool success)   
    |    {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x2b32900dffc57ce40739198fb7f84cf7621c9416.sol(49)

[33mWarning[0m for UnrestrictedWrite in contract 'DACToken':
    |   
    |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        require(_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData));
  at /home/jiaming/mavs_srcs/contract@0x2b32900dffc57ce40739198fb7f84cf7621c9416.sol(79)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is Token {
    |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        require(balances[msg.sender] >= _value);
  at /home/jiaming/mavs_srcs/contract@0x2b32900dffc57ce40739198fb7f84cf7621c9416.sol(23)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |
    |contract StandardToken is Token {
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        require(balances[msg.sender] >= _value);
    |        balances[msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x2b32900dffc57ce40739198fb7f84cf7621c9416.sol(24)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns 
    |    (bool success) {
    |        require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value);
  at /home/jiaming/mavs_srcs/contract@0x2b32900dffc57ce40739198fb7f84cf7621c9416.sol(33)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |        return true;
    |    }
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2b32900dffc57ce40739198fb7f84cf7621c9416.sol(42)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success)   
    |    {
    |        allowed[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0x2b32900dffc57ce40739198fb7f84cf7621c9416.sol(47)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |        return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2b32900dffc57ce40739198fb7f84cf7621c9416.sol(55)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |pragma solidity ^0.4.8;
    |contract Token{
  > |    uint256 public totalSupply;
    |
    |    function balanceOf(address _owner) constant returns (uint256 balance);
  at /home/jiaming/mavs_srcs/contract@0x2b32900dffc57ce40739198fb7f84cf7621c9416.sol(3)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |        require(balances[msg.sender] >= _value);
    |        balances[msg.sender] -= _value;
  > |        balances[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x2b32900dffc57ce40739198fb7f84cf7621c9416.sol(27)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |    (bool success) {
    |        require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value);
  > |        balances[_to] += _value;
    |        balances[_from] -= _value; 
    |        allowed[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x2b32900dffc57ce40739198fb7f84cf7621c9416.sol(36)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |        require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value);
    |        balances[_to] += _value;
  > |        balances[_from] -= _value; 
    |        allowed[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x2b32900dffc57ce40739198fb7f84cf7621c9416.sol(37)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        require(balances[msg.sender] >= _value);
  > |        balances[msg.sender] -= _value;
    |        balances[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x2b32900dffc57ce40739198fb7f84cf7621c9416.sol(26)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        balances[_to] += _value;
    |        balances[_from] -= _value; 
  > |        allowed[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x2b32900dffc57ce40739198fb7f84cf7621c9416.sol(38)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    function approve(address _spender, uint256 _value) returns (bool success)   
    |    {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x2b32900dffc57ce40739198fb7f84cf7621c9416.sol(49)


