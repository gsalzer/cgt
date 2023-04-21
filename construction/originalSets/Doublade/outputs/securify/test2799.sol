Processing contract: /home/jiaming/mavs_srcs/contract@0xb80e3d8b046eb76649cdfaa503baaa4a9167383f.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb80e3d8b046eb76649cdfaa503baaa4a9167383f.sol:Token
Processing contract: /home/jiaming/mavs_srcs/contract@0xb80e3d8b046eb76649cdfaa503baaa4a9167383f.sol:TourCashStandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is Token {
    |    function transfer(address _to, uint256 _value) returns (bool success) {
    |       
  at /home/jiaming/mavs_srcs/contract@0xb80e3d8b046eb76649cdfaa503baaa4a9167383f.sol(31)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |
    |contract StandardToken is Token {
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |       
    |        require(balances[msg.sender] >= _value);
  at /home/jiaming/mavs_srcs/contract@0xb80e3d8b046eb76649cdfaa503baaa4a9167383f.sol(32)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns 
    |    (bool success) {
    |        
  at /home/jiaming/mavs_srcs/contract@0xb80e3d8b046eb76649cdfaa503baaa4a9167383f.sol(42)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |        return true;
    |    }
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb80e3d8b046eb76649cdfaa503baaa4a9167383f.sol(52)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success)   
    |    {
    |        allowed[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0xb80e3d8b046eb76649cdfaa503baaa4a9167383f.sol(57)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |        return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb80e3d8b046eb76649cdfaa503baaa4a9167383f.sol(65)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |contract Token{
    |    
  > |    uint256 public totalSupply;
    |
    |    
  at /home/jiaming/mavs_srcs/contract@0xb80e3d8b046eb76649cdfaa503baaa4a9167383f.sol(4)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |        require(balances[msg.sender] >= _value);
    |        balances[msg.sender] -= _value;
  > |        balances[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xb80e3d8b046eb76649cdfaa503baaa4a9167383f.sol(36)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |        
    |        require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value);
  > |        balances[_to] += _value;
    |        balances[_from] -= _value; 
    |        allowed[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0xb80e3d8b046eb76649cdfaa503baaa4a9167383f.sol(46)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |        require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value);
    |        balances[_to] += _value;
  > |        balances[_from] -= _value; 
    |        allowed[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xb80e3d8b046eb76649cdfaa503baaa4a9167383f.sol(47)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |       
    |        require(balances[msg.sender] >= _value);
  > |        balances[msg.sender] -= _value;
    |        balances[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xb80e3d8b046eb76649cdfaa503baaa4a9167383f.sol(35)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        balances[_to] += _value;
    |        balances[_from] -= _value; 
  > |        allowed[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xb80e3d8b046eb76649cdfaa503baaa4a9167383f.sol(48)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    function approve(address _spender, uint256 _value) returns (bool success)   
    |    {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xb80e3d8b046eb76649cdfaa503baaa4a9167383f.sol(59)

[33mWarning[0m for LockedEther in contract 'TourCashStandardToken':
    |}
    |
  > |contract TourCashStandardToken is StandardToken { 
    |
    |    
  at /home/jiaming/mavs_srcs/contract@0xb80e3d8b046eb76649cdfaa503baaa4a9167383f.sol(72)

[31mViolation[0m for MissingInputValidation in contract 'TourCashStandardToken':
    |
    |contract StandardToken is Token {
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |       
    |        require(balances[msg.sender] >= _value);
  at /home/jiaming/mavs_srcs/contract@0xb80e3d8b046eb76649cdfaa503baaa4a9167383f.sol(32)

[31mViolation[0m for MissingInputValidation in contract 'TourCashStandardToken':
    |
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns 
    |    (bool success) {
    |        
  at /home/jiaming/mavs_srcs/contract@0xb80e3d8b046eb76649cdfaa503baaa4a9167383f.sol(42)

[31mViolation[0m for MissingInputValidation in contract 'TourCashStandardToken':
    |        return true;
    |    }
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb80e3d8b046eb76649cdfaa503baaa4a9167383f.sol(52)

[31mViolation[0m for MissingInputValidation in contract 'TourCashStandardToken':
    |
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success)   
    |    {
    |        allowed[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0xb80e3d8b046eb76649cdfaa503baaa4a9167383f.sol(57)

[31mViolation[0m for MissingInputValidation in contract 'TourCashStandardToken':
    |
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |        return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb80e3d8b046eb76649cdfaa503baaa4a9167383f.sol(65)

[31mViolation[0m for MissingInputValidation in contract 'TourCashStandardToken':
    |    
    |    
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xb80e3d8b046eb76649cdfaa503baaa4a9167383f.sol(90)

[33mWarning[0m for MissingInputValidation in contract 'TourCashStandardToken':
    |contract Token{
    |    
  > |    uint256 public totalSupply;
    |
    |    
  at /home/jiaming/mavs_srcs/contract@0xb80e3d8b046eb76649cdfaa503baaa4a9167383f.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'TourCashStandardToken':
    |
    |    
  > |    string public name;                   
    |    uint8 public decimals;               
    |    string public symbol;               
  at /home/jiaming/mavs_srcs/contract@0xb80e3d8b046eb76649cdfaa503baaa4a9167383f.sol(75)

[33mWarning[0m for MissingInputValidation in contract 'TourCashStandardToken':
    |    
    |    string public name;                   
  > |    uint8 public decimals;               
    |    string public symbol;               
    |    string public version = '1.0';
  at /home/jiaming/mavs_srcs/contract@0xb80e3d8b046eb76649cdfaa503baaa4a9167383f.sol(76)

[33mWarning[0m for MissingInputValidation in contract 'TourCashStandardToken':
    |    string public name;                   
    |    uint8 public decimals;               
  > |    string public symbol;               
    |    string public version = '1.0';
    |
  at /home/jiaming/mavs_srcs/contract@0xb80e3d8b046eb76649cdfaa503baaa4a9167383f.sol(77)

[33mWarning[0m for MissingInputValidation in contract 'TourCashStandardToken':
    |    uint8 public decimals;               
    |    string public symbol;               
  > |    string public version = '1.0';
    |
    |    function TourCashStandardToken(uint256 _initialAmount, string _tokenName, uint8 _decimalUnits, string _tokenSymbol) {
  at /home/jiaming/mavs_srcs/contract@0xb80e3d8b046eb76649cdfaa503baaa4a9167383f.sol(78)

[33mWarning[0m for UnhandledException in contract 'TourCashStandardToken':
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  > |        require(_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData));
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb80e3d8b046eb76649cdfaa503baaa4a9167383f.sol(93)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TourCashStandardToken':
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  > |        require(_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData));
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb80e3d8b046eb76649cdfaa503baaa4a9167383f.sol(93)

[31mViolation[0m for UnrestrictedWrite in contract 'TourCashStandardToken':
    |        require(balances[msg.sender] >= _value);
    |        balances[msg.sender] -= _value;
  > |        balances[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xb80e3d8b046eb76649cdfaa503baaa4a9167383f.sol(36)

[31mViolation[0m for UnrestrictedWrite in contract 'TourCashStandardToken':
    |        
    |        require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value);
  > |        balances[_to] += _value;
    |        balances[_from] -= _value; 
    |        allowed[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0xb80e3d8b046eb76649cdfaa503baaa4a9167383f.sol(46)

[31mViolation[0m for UnrestrictedWrite in contract 'TourCashStandardToken':
    |        require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value);
    |        balances[_to] += _value;
  > |        balances[_from] -= _value; 
    |        allowed[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xb80e3d8b046eb76649cdfaa503baaa4a9167383f.sol(47)

[33mWarning[0m for UnrestrictedWrite in contract 'TourCashStandardToken':
    |       
    |        require(balances[msg.sender] >= _value);
  > |        balances[msg.sender] -= _value;
    |        balances[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xb80e3d8b046eb76649cdfaa503baaa4a9167383f.sol(35)

[33mWarning[0m for UnrestrictedWrite in contract 'TourCashStandardToken':
    |        balances[_to] += _value;
    |        balances[_from] -= _value; 
  > |        allowed[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xb80e3d8b046eb76649cdfaa503baaa4a9167383f.sol(48)

[33mWarning[0m for UnrestrictedWrite in contract 'TourCashStandardToken':
    |    function approve(address _spender, uint256 _value) returns (bool success)   
    |    {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xb80e3d8b046eb76649cdfaa503baaa4a9167383f.sol(59)

[33mWarning[0m for UnrestrictedWrite in contract 'TourCashStandardToken':
    |    
    |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        require(_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData));
  at /home/jiaming/mavs_srcs/contract@0xb80e3d8b046eb76649cdfaa503baaa4a9167383f.sol(91)


