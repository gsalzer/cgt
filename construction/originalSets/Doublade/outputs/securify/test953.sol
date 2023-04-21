Processing contract: /home/jiaming/mavs_srcs/contract@0x3c5e0c2aec958cd643445c15b1b535091cf1cae3.sol:RealEstateToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3c5e0c2aec958cd643445c15b1b535091cf1cae3.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3c5e0c2aec958cd643445c15b1b535091cf1cae3.sol:Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'RealEstateToken':
    |}
    |
  > |contract RealEstateToken is StandardToken { 
    |    string public name;                   
    |    uint8 public decimals;                
  at /home/jiaming/mavs_srcs/contract@0x3c5e0c2aec958cd643445c15b1b535091cf1cae3.sol(221)

[31mViolation[0m for MissingInputValidation in contract 'RealEstateToken':
    |contract StandardToken is Token {
    |
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        //Default assumes totalSupply can't be over max (2^256 - 1).
    |        //If your token leaves out totalSupply and can issue more tokens as time goes on, you need to check if it doesn't wrap.
  at /home/jiaming/mavs_srcs/contract@0x3c5e0c2aec958cd643445c15b1b535091cf1cae3.sol(177)

[31mViolation[0m for MissingInputValidation in contract 'RealEstateToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        //same as above. Replace this line with the following if you want to protect against wrapping uints.
    |        //if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
  at /home/jiaming/mavs_srcs/contract@0x3c5e0c2aec958cd643445c15b1b535091cf1cae3.sol(190)

[31mViolation[0m for MissingInputValidation in contract 'RealEstateToken':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3c5e0c2aec958cd643445c15b1b535091cf1cae3.sol(202)

[31mViolation[0m for MissingInputValidation in contract 'RealEstateToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x3c5e0c2aec958cd643445c15b1b535091cf1cae3.sol(206)

[31mViolation[0m for MissingInputValidation in contract 'RealEstateToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3c5e0c2aec958cd643445c15b1b535091cf1cae3.sol(212)

[31mViolation[0m for MissingInputValidation in contract 'RealEstateToken':
    |
    |    
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x3c5e0c2aec958cd643445c15b1b535091cf1cae3.sol(257)

[33mWarning[0m for MissingInputValidation in contract 'RealEstateToken':
    |    mapping (address => uint256) balances;
    |    mapping (address => mapping (address => uint256)) allowed;
  > |    uint256 public totalSupply;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x3c5e0c2aec958cd643445c15b1b535091cf1cae3.sol(218)

[33mWarning[0m for MissingInputValidation in contract 'RealEstateToken':
    |
    |contract RealEstateToken is StandardToken { 
  > |    string public name;                   
    |    uint8 public decimals;                
    |    string public symbol;                 
  at /home/jiaming/mavs_srcs/contract@0x3c5e0c2aec958cd643445c15b1b535091cf1cae3.sol(222)

[33mWarning[0m for MissingInputValidation in contract 'RealEstateToken':
    |contract RealEstateToken is StandardToken { 
    |    string public name;                   
  > |    uint8 public decimals;                
    |    string public symbol;                 
    |    string public version = 'H1.0'; 
  at /home/jiaming/mavs_srcs/contract@0x3c5e0c2aec958cd643445c15b1b535091cf1cae3.sol(223)

[33mWarning[0m for MissingInputValidation in contract 'RealEstateToken':
    |    string public name;                   
    |    uint8 public decimals;                
  > |    string public symbol;                 
    |    string public version = 'H1.0'; 
    |    uint256 public unitsOneEthCanBuy;     
  at /home/jiaming/mavs_srcs/contract@0x3c5e0c2aec958cd643445c15b1b535091cf1cae3.sol(224)

[33mWarning[0m for MissingInputValidation in contract 'RealEstateToken':
    |    uint8 public decimals;                
    |    string public symbol;                 
  > |    string public version = 'H1.0'; 
    |    uint256 public unitsOneEthCanBuy;     
    |    uint256 public totalEthInWei;           
  at /home/jiaming/mavs_srcs/contract@0x3c5e0c2aec958cd643445c15b1b535091cf1cae3.sol(225)

[33mWarning[0m for MissingInputValidation in contract 'RealEstateToken':
    |    string public symbol;                 
    |    string public version = 'H1.0'; 
  > |    uint256 public unitsOneEthCanBuy;     
    |    uint256 public totalEthInWei;           
    |    address public fundsWallet;          
  at /home/jiaming/mavs_srcs/contract@0x3c5e0c2aec958cd643445c15b1b535091cf1cae3.sol(226)

[33mWarning[0m for MissingInputValidation in contract 'RealEstateToken':
    |    string public version = 'H1.0'; 
    |    uint256 public unitsOneEthCanBuy;     
  > |    uint256 public totalEthInWei;           
    |    address public fundsWallet;          
    |
  at /home/jiaming/mavs_srcs/contract@0x3c5e0c2aec958cd643445c15b1b535091cf1cae3.sol(227)

[33mWarning[0m for MissingInputValidation in contract 'RealEstateToken':
    |    uint256 public unitsOneEthCanBuy;     
    |    uint256 public totalEthInWei;           
  > |    address public fundsWallet;          
    |
    |    
  at /home/jiaming/mavs_srcs/contract@0x3c5e0c2aec958cd643445c15b1b535091cf1cae3.sol(228)

[33mWarning[0m for UnhandledException in contract 'RealEstateToken':
    |
    |        
  > |        if(!_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) { throw; }
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3c5e0c2aec958cd643445c15b1b535091cf1cae3.sol(262)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RealEstateToken':
    |
    |        
  > |        if(!_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) { throw; }
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3c5e0c2aec958cd643445c15b1b535091cf1cae3.sol(262)

[33mWarning[0m for UnrestrictedWrite in contract 'RealEstateToken':
    |        //if (balances[msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x3c5e0c2aec958cd643445c15b1b535091cf1cae3.sol(183)

[33mWarning[0m for UnrestrictedWrite in contract 'RealEstateToken':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x3c5e0c2aec958cd643445c15b1b535091cf1cae3.sol(196)

[33mWarning[0m for UnrestrictedWrite in contract 'RealEstateToken':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x3c5e0c2aec958cd643445c15b1b535091cf1cae3.sol(207)

[33mWarning[0m for UnrestrictedWrite in contract 'RealEstateToken':
    |    
    |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |
  at /home/jiaming/mavs_srcs/contract@0x3c5e0c2aec958cd643445c15b1b535091cf1cae3.sol(258)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is Token {
    |
    |    function transfer(address _to, uint256 _value) returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x3c5e0c2aec958cd643445c15b1b535091cf1cae3.sol(175)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |contract StandardToken is Token {
    |
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        //Default assumes totalSupply can't be over max (2^256 - 1).
    |        //If your token leaves out totalSupply and can issue more tokens as time goes on, you need to check if it doesn't wrap.
  at /home/jiaming/mavs_srcs/contract@0x3c5e0c2aec958cd643445c15b1b535091cf1cae3.sol(177)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        //same as above. Replace this line with the following if you want to protect against wrapping uints.
    |        //if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
  at /home/jiaming/mavs_srcs/contract@0x3c5e0c2aec958cd643445c15b1b535091cf1cae3.sol(190)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3c5e0c2aec958cd643445c15b1b535091cf1cae3.sol(202)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x3c5e0c2aec958cd643445c15b1b535091cf1cae3.sol(206)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3c5e0c2aec958cd643445c15b1b535091cf1cae3.sol(212)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |    mapping (address => uint256) balances;
    |    mapping (address => mapping (address => uint256)) allowed;
  > |    uint256 public totalSupply;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x3c5e0c2aec958cd643445c15b1b535091cf1cae3.sol(218)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        //if (balances[msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x3c5e0c2aec958cd643445c15b1b535091cf1cae3.sol(183)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x3c5e0c2aec958cd643445c15b1b535091cf1cae3.sol(196)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x3c5e0c2aec958cd643445c15b1b535091cf1cae3.sol(207)

[33mWarning[0m for LockedEther in contract 'Token':
    |*/
    |
  > |contract Token {
    |
    |    
  at /home/jiaming/mavs_srcs/contract@0x3c5e0c2aec958cd643445c15b1b535091cf1cae3.sol(151)


