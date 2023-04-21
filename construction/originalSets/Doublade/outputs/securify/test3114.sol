Processing contract: /home/jiaming/mavs_srcs/contract@0xcc3da65cd7c963c913e5086e6413757f8cb60d96.sol:HumanStandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xcc3da65cd7c963c913e5086e6413757f8cb60d96.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xcc3da65cd7c963c913e5086e6413757f8cb60d96.sol:Token
[33mWarning[0m for LockedEther in contract 'HumanStandardToken':
    |}
    |
  > |contract HumanStandardToken is StandardToken { 
    |
    |    string public name;             
  at /home/jiaming/mavs_srcs/contract@0xcc3da65cd7c963c913e5086e6413757f8cb60d96.sol(66)

[31mViolation[0m for MissingInputValidation in contract 'HumanStandardToken':
    |
    |contract StandardToken is Token {
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    | 
    |        require(balances[msg.sender] >= _value);
  at /home/jiaming/mavs_srcs/contract@0xcc3da65cd7c963c913e5086e6413757f8cb60d96.sol(26)

[31mViolation[0m for MissingInputValidation in contract 'HumanStandardToken':
    |
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns 
    |    (bool success) {
    |
  at /home/jiaming/mavs_srcs/contract@0xcc3da65cd7c963c913e5086e6413757f8cb60d96.sol(36)

[31mViolation[0m for MissingInputValidation in contract 'HumanStandardToken':
    |        return true;
    |    }
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xcc3da65cd7c963c913e5086e6413757f8cb60d96.sol(46)

[31mViolation[0m for MissingInputValidation in contract 'HumanStandardToken':
    |
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success)   
    |    {
    |        allowed[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0xcc3da65cd7c963c913e5086e6413757f8cb60d96.sol(51)

[31mViolation[0m for MissingInputValidation in contract 'HumanStandardToken':
    |
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |        return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xcc3da65cd7c963c913e5086e6413757f8cb60d96.sol(59)

[31mViolation[0m for MissingInputValidation in contract 'HumanStandardToken':
    |
    |    
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xcc3da65cd7c963c913e5086e6413757f8cb60d96.sol(82)

[33mWarning[0m for MissingInputValidation in contract 'HumanStandardToken':
    |contract Token{
    |    
  > |    uint256 public totalSupply;
    |
    |    function balanceOf(address _owner) constant returns (uint256 balance);
  at /home/jiaming/mavs_srcs/contract@0xcc3da65cd7c963c913e5086e6413757f8cb60d96.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'HumanStandardToken':
    |contract HumanStandardToken is StandardToken { 
    |
  > |    string public name;             
    |    uint8 public decimals;              
    |    string public symbol;         
  at /home/jiaming/mavs_srcs/contract@0xcc3da65cd7c963c913e5086e6413757f8cb60d96.sol(68)

[33mWarning[0m for MissingInputValidation in contract 'HumanStandardToken':
    |
    |    string public name;             
  > |    uint8 public decimals;              
    |    string public symbol;         
    |    string public version = 'H0.1'; 
  at /home/jiaming/mavs_srcs/contract@0xcc3da65cd7c963c913e5086e6413757f8cb60d96.sol(69)

[33mWarning[0m for MissingInputValidation in contract 'HumanStandardToken':
    |    string public name;             
    |    uint8 public decimals;              
  > |    string public symbol;         
    |    string public version = 'H0.1'; 
    |
  at /home/jiaming/mavs_srcs/contract@0xcc3da65cd7c963c913e5086e6413757f8cb60d96.sol(70)

[33mWarning[0m for MissingInputValidation in contract 'HumanStandardToken':
    |    uint8 public decimals;              
    |    string public symbol;         
  > |    string public version = 'H0.1'; 
    |
    |    function HumanStandardToken(uint256 _initialAmount, string _tokenName, uint8 _decimalUnits, string _tokenSymbol) {
  at /home/jiaming/mavs_srcs/contract@0xcc3da65cd7c963c913e5086e6413757f8cb60d96.sol(71)

[33mWarning[0m for UnhandledException in contract 'HumanStandardToken':
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  > |        require(_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData));
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xcc3da65cd7c963c913e5086e6413757f8cb60d96.sol(85)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HumanStandardToken':
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  > |        require(_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData));
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xcc3da65cd7c963c913e5086e6413757f8cb60d96.sol(85)

[31mViolation[0m for UnrestrictedWrite in contract 'HumanStandardToken':
    |        require(balances[msg.sender] >= _value);
    |        balances[msg.sender] -= _value;
  > |        balances[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xcc3da65cd7c963c913e5086e6413757f8cb60d96.sol(30)

[31mViolation[0m for UnrestrictedWrite in contract 'HumanStandardToken':
    |
    |        require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value);
  > |        balances[_to] += _value;
    |        balances[_from] -= _value;
    |        allowed[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0xcc3da65cd7c963c913e5086e6413757f8cb60d96.sol(40)

[31mViolation[0m for UnrestrictedWrite in contract 'HumanStandardToken':
    |        require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value);
    |        balances[_to] += _value;
  > |        balances[_from] -= _value;
    |        allowed[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xcc3da65cd7c963c913e5086e6413757f8cb60d96.sol(41)

[33mWarning[0m for UnrestrictedWrite in contract 'HumanStandardToken':
    | 
    |        require(balances[msg.sender] >= _value);
  > |        balances[msg.sender] -= _value;
    |        balances[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xcc3da65cd7c963c913e5086e6413757f8cb60d96.sol(29)

[33mWarning[0m for UnrestrictedWrite in contract 'HumanStandardToken':
    |        balances[_to] += _value;
    |        balances[_from] -= _value;
  > |        allowed[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xcc3da65cd7c963c913e5086e6413757f8cb60d96.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'HumanStandardToken':
    |    function approve(address _spender, uint256 _value) returns (bool success)   
    |    {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xcc3da65cd7c963c913e5086e6413757f8cb60d96.sol(53)

[33mWarning[0m for UnrestrictedWrite in contract 'HumanStandardToken':
    |    
    |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        require(_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData));
  at /home/jiaming/mavs_srcs/contract@0xcc3da65cd7c963c913e5086e6413757f8cb60d96.sol(83)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is Token {
    |    function transfer(address _to, uint256 _value) returns (bool success) {
    | 
  at /home/jiaming/mavs_srcs/contract@0xcc3da65cd7c963c913e5086e6413757f8cb60d96.sol(25)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |
    |contract StandardToken is Token {
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    | 
    |        require(balances[msg.sender] >= _value);
  at /home/jiaming/mavs_srcs/contract@0xcc3da65cd7c963c913e5086e6413757f8cb60d96.sol(26)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns 
    |    (bool success) {
    |
  at /home/jiaming/mavs_srcs/contract@0xcc3da65cd7c963c913e5086e6413757f8cb60d96.sol(36)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |        return true;
    |    }
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xcc3da65cd7c963c913e5086e6413757f8cb60d96.sol(46)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success)   
    |    {
    |        allowed[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0xcc3da65cd7c963c913e5086e6413757f8cb60d96.sol(51)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |        return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xcc3da65cd7c963c913e5086e6413757f8cb60d96.sol(59)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |contract Token{
    |    
  > |    uint256 public totalSupply;
    |
    |    function balanceOf(address _owner) constant returns (uint256 balance);
  at /home/jiaming/mavs_srcs/contract@0xcc3da65cd7c963c913e5086e6413757f8cb60d96.sol(5)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |        require(balances[msg.sender] >= _value);
    |        balances[msg.sender] -= _value;
  > |        balances[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xcc3da65cd7c963c913e5086e6413757f8cb60d96.sol(30)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |        require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value);
  > |        balances[_to] += _value;
    |        balances[_from] -= _value;
    |        allowed[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0xcc3da65cd7c963c913e5086e6413757f8cb60d96.sol(40)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |        require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value);
    |        balances[_to] += _value;
  > |        balances[_from] -= _value;
    |        allowed[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xcc3da65cd7c963c913e5086e6413757f8cb60d96.sol(41)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    | 
    |        require(balances[msg.sender] >= _value);
  > |        balances[msg.sender] -= _value;
    |        balances[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xcc3da65cd7c963c913e5086e6413757f8cb60d96.sol(29)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        balances[_to] += _value;
    |        balances[_from] -= _value;
  > |        allowed[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xcc3da65cd7c963c913e5086e6413757f8cb60d96.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    function approve(address _spender, uint256 _value) returns (bool success)   
    |    {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xcc3da65cd7c963c913e5086e6413757f8cb60d96.sol(53)


