Processing contract: /home/jiaming/mavs_srcs/contract@0x0eaf699c3253ab6c9e205cfefa8812b622b57df1.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0eaf699c3253ab6c9e205cfefa8812b622b57df1.sol:Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0eaf699c3253ab6c9e205cfefa8812b622b57df1.sol:VebionX
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is Token {
    |
    |    function transfer(address _to, uint256 _value) returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x0eaf699c3253ab6c9e205cfefa8812b622b57df1.sol(51)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |contract StandardToken is Token {
    |
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        //Default assumes totalSupply can't be over max (2^256 - 1).
    |        //If your token leaves out totalSupply and can issue more tokens as time goes on, you need to check if it doesn't wrap.
  at /home/jiaming/mavs_srcs/contract@0x0eaf699c3253ab6c9e205cfefa8812b622b57df1.sol(53)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        //same as above. Replace this line with the following if you want to protect against wrapping uints.
    |        //if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
  at /home/jiaming/mavs_srcs/contract@0x0eaf699c3253ab6c9e205cfefa8812b622b57df1.sol(66)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0eaf699c3253ab6c9e205cfefa8812b622b57df1.sol(78)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x0eaf699c3253ab6c9e205cfefa8812b622b57df1.sol(82)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0eaf699c3253ab6c9e205cfefa8812b622b57df1.sol(88)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |    mapping (address => uint256) balances;
    |    mapping (address => mapping (address => uint256)) allowed;
  > |    uint256 public totalSupply;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x0eaf699c3253ab6c9e205cfefa8812b622b57df1.sol(94)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        //if (balances[msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x0eaf699c3253ab6c9e205cfefa8812b622b57df1.sol(59)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x0eaf699c3253ab6c9e205cfefa8812b622b57df1.sol(72)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x0eaf699c3253ab6c9e205cfefa8812b622b57df1.sol(83)

[33mWarning[0m for LockedEther in contract 'Token':
    |// (c) VebionX Limited  
    |
  > |contract Token {
    |
    |    /// @return total amount of tokens
  at /home/jiaming/mavs_srcs/contract@0x0eaf699c3253ab6c9e205cfefa8812b622b57df1.sol(13)

[33mWarning[0m for LockedEther in contract 'VebionX':
    |}
    |
  > |contract VebionX is StandardToken { // CHANGE THIS. Update the contract name.
    |
    |    /* Public variables of the token */
  at /home/jiaming/mavs_srcs/contract@0x0eaf699c3253ab6c9e205cfefa8812b622b57df1.sol(97)

[31mViolation[0m for MissingInputValidation in contract 'VebionX':
    |contract StandardToken is Token {
    |
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        //Default assumes totalSupply can't be over max (2^256 - 1).
    |        //If your token leaves out totalSupply and can issue more tokens as time goes on, you need to check if it doesn't wrap.
  at /home/jiaming/mavs_srcs/contract@0x0eaf699c3253ab6c9e205cfefa8812b622b57df1.sol(53)

[31mViolation[0m for MissingInputValidation in contract 'VebionX':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        //same as above. Replace this line with the following if you want to protect against wrapping uints.
    |        //if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
  at /home/jiaming/mavs_srcs/contract@0x0eaf699c3253ab6c9e205cfefa8812b622b57df1.sol(66)

[31mViolation[0m for MissingInputValidation in contract 'VebionX':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0eaf699c3253ab6c9e205cfefa8812b622b57df1.sol(78)

[31mViolation[0m for MissingInputValidation in contract 'VebionX':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x0eaf699c3253ab6c9e205cfefa8812b622b57df1.sol(82)

[31mViolation[0m for MissingInputValidation in contract 'VebionX':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0eaf699c3253ab6c9e205cfefa8812b622b57df1.sol(88)

[31mViolation[0m for MissingInputValidation in contract 'VebionX':
    |
    |    /* Approves and then calls the receiving contract */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x0eaf699c3253ab6c9e205cfefa8812b622b57df1.sol(142)

[33mWarning[0m for MissingInputValidation in contract 'VebionX':
    |    mapping (address => uint256) balances;
    |    mapping (address => mapping (address => uint256)) allowed;
  > |    uint256 public totalSupply;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x0eaf699c3253ab6c9e205cfefa8812b622b57df1.sol(94)

[33mWarning[0m for MissingInputValidation in contract 'VebionX':
    |    Some wallets/interfaces might not even bother to look at this information.
    |    */
  > |    string public name;                  
    |    uint8 public decimals;               
    |    string public symbol;                 
  at /home/jiaming/mavs_srcs/contract@0x0eaf699c3253ab6c9e205cfefa8812b622b57df1.sol(107)

[33mWarning[0m for MissingInputValidation in contract 'VebionX':
    |    */
    |    string public name;                  
  > |    uint8 public decimals;               
    |    string public symbol;                 
    |    string public version = 'H1.0'; 
  at /home/jiaming/mavs_srcs/contract@0x0eaf699c3253ab6c9e205cfefa8812b622b57df1.sol(108)

[33mWarning[0m for MissingInputValidation in contract 'VebionX':
    |    string public name;                  
    |    uint8 public decimals;               
  > |    string public symbol;                 
    |    string public version = 'H1.0'; 
    |    uint256 public unitsOneEthCanBuy;     
  at /home/jiaming/mavs_srcs/contract@0x0eaf699c3253ab6c9e205cfefa8812b622b57df1.sol(109)

[33mWarning[0m for MissingInputValidation in contract 'VebionX':
    |    uint8 public decimals;               
    |    string public symbol;                 
  > |    string public version = 'H1.0'; 
    |    uint256 public unitsOneEthCanBuy;     
    |    uint256 public totalEthInWei;         
  at /home/jiaming/mavs_srcs/contract@0x0eaf699c3253ab6c9e205cfefa8812b622b57df1.sol(110)

[33mWarning[0m for MissingInputValidation in contract 'VebionX':
    |    string public symbol;                 
    |    string public version = 'H1.0'; 
  > |    uint256 public unitsOneEthCanBuy;     
    |    uint256 public totalEthInWei;         
    |    address public fundsWallet;           
  at /home/jiaming/mavs_srcs/contract@0x0eaf699c3253ab6c9e205cfefa8812b622b57df1.sol(111)

[33mWarning[0m for MissingInputValidation in contract 'VebionX':
    |    string public version = 'H1.0'; 
    |    uint256 public unitsOneEthCanBuy;     
  > |    uint256 public totalEthInWei;         
    |    address public fundsWallet;           
    |
  at /home/jiaming/mavs_srcs/contract@0x0eaf699c3253ab6c9e205cfefa8812b622b57df1.sol(112)

[33mWarning[0m for MissingInputValidation in contract 'VebionX':
    |    uint256 public unitsOneEthCanBuy;     
    |    uint256 public totalEthInWei;         
  > |    address public fundsWallet;           
    |
    |    // This is a constructor function 
  at /home/jiaming/mavs_srcs/contract@0x0eaf699c3253ab6c9e205cfefa8812b622b57df1.sol(113)

[33mWarning[0m for UnhandledException in contract 'VebionX':
    |        //receiveApproval(address _from, uint256 _value, address _tokenContract, bytes _extraData)
    |        //it is assumed that when does this that the call *should* succeed, otherwise one would use vanilla approve instead.
  > |        if(!_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) { throw; }
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0eaf699c3253ab6c9e205cfefa8812b622b57df1.sol(149)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'VebionX':
    |        //receiveApproval(address _from, uint256 _value, address _tokenContract, bytes _extraData)
    |        //it is assumed that when does this that the call *should* succeed, otherwise one would use vanilla approve instead.
  > |        if(!_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) { throw; }
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0eaf699c3253ab6c9e205cfefa8812b622b57df1.sol(149)

[33mWarning[0m for UnrestrictedWrite in contract 'VebionX':
    |        //if (balances[msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x0eaf699c3253ab6c9e205cfefa8812b622b57df1.sol(59)

[33mWarning[0m for UnrestrictedWrite in contract 'VebionX':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x0eaf699c3253ab6c9e205cfefa8812b622b57df1.sol(72)

[33mWarning[0m for UnrestrictedWrite in contract 'VebionX':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x0eaf699c3253ab6c9e205cfefa8812b622b57df1.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'VebionX':
    |    /* Approves and then calls the receiving contract */
    |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |
  at /home/jiaming/mavs_srcs/contract@0x0eaf699c3253ab6c9e205cfefa8812b622b57df1.sol(143)


