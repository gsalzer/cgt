Processing contract: /home/jiaming/mavs_srcs/contract@0xd6d8339599fd70c219d7444b6fdf02b203458194.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd6d8339599fd70c219d7444b6fdf02b203458194.sol:TenCashStandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd6d8339599fd70c219d7444b6fdf02b203458194.sol:Token
[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is Token {
    |    function transfer(address _to, uint256 _value) returns (bool success) {
    |       
  at /home/jiaming/mavs_srcs/contract@0xd6d8339599fd70c219d7444b6fdf02b203458194.sol(31)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |
    |contract StandardToken is Token {
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |       
    |        require(balances[msg.sender] >= _value);
  at /home/jiaming/mavs_srcs/contract@0xd6d8339599fd70c219d7444b6fdf02b203458194.sol(32)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns 
    |    (bool success) {
    |        
  at /home/jiaming/mavs_srcs/contract@0xd6d8339599fd70c219d7444b6fdf02b203458194.sol(42)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |        return true;
    |    }
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd6d8339599fd70c219d7444b6fdf02b203458194.sol(52)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success)   
    |    {
    |        allowed[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0xd6d8339599fd70c219d7444b6fdf02b203458194.sol(57)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |        return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd6d8339599fd70c219d7444b6fdf02b203458194.sol(65)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |contract Token{
    |    
  > |    uint256 public totalSupply;
    |
    |    
  at /home/jiaming/mavs_srcs/contract@0xd6d8339599fd70c219d7444b6fdf02b203458194.sol(4)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |        require(balances[msg.sender] >= _value);
    |        balances[msg.sender] -= _value;
  > |        balances[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xd6d8339599fd70c219d7444b6fdf02b203458194.sol(36)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |        
    |        require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value);
  > |        balances[_to] += _value;
    |        balances[_from] -= _value; 
    |        allowed[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0xd6d8339599fd70c219d7444b6fdf02b203458194.sol(46)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |        require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value);
    |        balances[_to] += _value;
  > |        balances[_from] -= _value; 
    |        allowed[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd6d8339599fd70c219d7444b6fdf02b203458194.sol(47)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |       
    |        require(balances[msg.sender] >= _value);
  > |        balances[msg.sender] -= _value;
    |        balances[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd6d8339599fd70c219d7444b6fdf02b203458194.sol(35)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        balances[_to] += _value;
    |        balances[_from] -= _value; 
  > |        allowed[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xd6d8339599fd70c219d7444b6fdf02b203458194.sol(48)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    function approve(address _spender, uint256 _value) returns (bool success)   
    |    {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xd6d8339599fd70c219d7444b6fdf02b203458194.sol(59)

[33mWarning[0m for LockedEther in contract 'TenCashStandardToken':
    |}
    |
  > |contract TenCashStandardToken is StandardToken { 
    |
    |    
  at /home/jiaming/mavs_srcs/contract@0xd6d8339599fd70c219d7444b6fdf02b203458194.sol(72)

[31mViolation[0m for MissingInputValidation in contract 'TenCashStandardToken':
    |
    |contract StandardToken is Token {
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |       
    |        require(balances[msg.sender] >= _value);
  at /home/jiaming/mavs_srcs/contract@0xd6d8339599fd70c219d7444b6fdf02b203458194.sol(32)

[31mViolation[0m for MissingInputValidation in contract 'TenCashStandardToken':
    |
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns 
    |    (bool success) {
    |        
  at /home/jiaming/mavs_srcs/contract@0xd6d8339599fd70c219d7444b6fdf02b203458194.sol(42)

[31mViolation[0m for MissingInputValidation in contract 'TenCashStandardToken':
    |        return true;
    |    }
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd6d8339599fd70c219d7444b6fdf02b203458194.sol(52)

[31mViolation[0m for MissingInputValidation in contract 'TenCashStandardToken':
    |
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success)   
    |    {
    |        allowed[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0xd6d8339599fd70c219d7444b6fdf02b203458194.sol(57)

[31mViolation[0m for MissingInputValidation in contract 'TenCashStandardToken':
    |
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |        return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd6d8339599fd70c219d7444b6fdf02b203458194.sol(65)

[31mViolation[0m for MissingInputValidation in contract 'TenCashStandardToken':
    |    
    |    
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xd6d8339599fd70c219d7444b6fdf02b203458194.sol(90)

[33mWarning[0m for MissingInputValidation in contract 'TenCashStandardToken':
    |contract Token{
    |    
  > |    uint256 public totalSupply;
    |
    |    
  at /home/jiaming/mavs_srcs/contract@0xd6d8339599fd70c219d7444b6fdf02b203458194.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'TenCashStandardToken':
    |
    |    
  > |    string public name;                   
    |    uint8 public decimals;               
    |    string public symbol;               
  at /home/jiaming/mavs_srcs/contract@0xd6d8339599fd70c219d7444b6fdf02b203458194.sol(75)

[33mWarning[0m for MissingInputValidation in contract 'TenCashStandardToken':
    |    
    |    string public name;                   
  > |    uint8 public decimals;               
    |    string public symbol;               
    |    string public version = '1.0';
  at /home/jiaming/mavs_srcs/contract@0xd6d8339599fd70c219d7444b6fdf02b203458194.sol(76)

[33mWarning[0m for MissingInputValidation in contract 'TenCashStandardToken':
    |    string public name;                   
    |    uint8 public decimals;               
  > |    string public symbol;               
    |    string public version = '1.0';
    |
  at /home/jiaming/mavs_srcs/contract@0xd6d8339599fd70c219d7444b6fdf02b203458194.sol(77)

[33mWarning[0m for MissingInputValidation in contract 'TenCashStandardToken':
    |    uint8 public decimals;               
    |    string public symbol;               
  > |    string public version = '1.0';
    |
    |    function TenCashStandardToken(uint256 _initialAmount, string _tokenName, uint8 _decimalUnits, string _tokenSymbol) {
  at /home/jiaming/mavs_srcs/contract@0xd6d8339599fd70c219d7444b6fdf02b203458194.sol(78)

[33mWarning[0m for UnhandledException in contract 'TenCashStandardToken':
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  > |        require(_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData));
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd6d8339599fd70c219d7444b6fdf02b203458194.sol(93)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TenCashStandardToken':
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  > |        require(_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData));
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd6d8339599fd70c219d7444b6fdf02b203458194.sol(93)

[31mViolation[0m for UnrestrictedWrite in contract 'TenCashStandardToken':
    |        require(balances[msg.sender] >= _value);
    |        balances[msg.sender] -= _value;
  > |        balances[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xd6d8339599fd70c219d7444b6fdf02b203458194.sol(36)

[31mViolation[0m for UnrestrictedWrite in contract 'TenCashStandardToken':
    |        
    |        require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value);
  > |        balances[_to] += _value;
    |        balances[_from] -= _value; 
    |        allowed[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0xd6d8339599fd70c219d7444b6fdf02b203458194.sol(46)

[31mViolation[0m for UnrestrictedWrite in contract 'TenCashStandardToken':
    |        require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value);
    |        balances[_to] += _value;
  > |        balances[_from] -= _value; 
    |        allowed[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd6d8339599fd70c219d7444b6fdf02b203458194.sol(47)

[33mWarning[0m for UnrestrictedWrite in contract 'TenCashStandardToken':
    |       
    |        require(balances[msg.sender] >= _value);
  > |        balances[msg.sender] -= _value;
    |        balances[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd6d8339599fd70c219d7444b6fdf02b203458194.sol(35)

[33mWarning[0m for UnrestrictedWrite in contract 'TenCashStandardToken':
    |        balances[_to] += _value;
    |        balances[_from] -= _value; 
  > |        allowed[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xd6d8339599fd70c219d7444b6fdf02b203458194.sol(48)

[33mWarning[0m for UnrestrictedWrite in contract 'TenCashStandardToken':
    |    function approve(address _spender, uint256 _value) returns (bool success)   
    |    {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xd6d8339599fd70c219d7444b6fdf02b203458194.sol(59)

[33mWarning[0m for UnrestrictedWrite in contract 'TenCashStandardToken':
    |    
    |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        require(_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData));
  at /home/jiaming/mavs_srcs/contract@0xd6d8339599fd70c219d7444b6fdf02b203458194.sol(91)


