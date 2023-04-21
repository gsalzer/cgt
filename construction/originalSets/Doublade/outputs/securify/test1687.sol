Processing contract: /home/jiaming/mavs_srcs/contract@0x6b8880260f71d2370cc2b754b4ba0ec9861e04a4.sol:RaliusToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6b8880260f71d2370cc2b754b4ba0ec9861e04a4.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6b8880260f71d2370cc2b754b4ba0ec9861e04a4.sol:Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'RaliusToken':
    |}
    |
  > |contract RaliusToken is StandardToken { 
    |    string public name;                   
    |    uint8 public decimals;              
  at /home/jiaming/mavs_srcs/contract@0x6b8880260f71d2370cc2b754b4ba0ec9861e04a4.sol(65)

[31mViolation[0m for MissingInputValidation in contract 'RaliusToken':
    |}
    |
  > |function transferFrom(address _from, address _to, uint256 _value) returns(bool success)
    |{
    |    if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && balances[_to] + _value > balances[_to])
  at /home/jiaming/mavs_srcs/contract@0x6b8880260f71d2370cc2b754b4ba0ec9861e04a4.sol(30)

[31mViolation[0m for MissingInputValidation in contract 'RaliusToken':
    |}
    |
  > |function balanceOf(address _owner) constant returns(uint256 balance)
    |{
    |    return balances[_owner];
  at /home/jiaming/mavs_srcs/contract@0x6b8880260f71d2370cc2b754b4ba0ec9861e04a4.sol(43)

[31mViolation[0m for MissingInputValidation in contract 'RaliusToken':
    |}
    |
  > |function approve(address _spender, uint256 _value) returns(bool success)
    |{
    |    allowed[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0x6b8880260f71d2370cc2b754b4ba0ec9861e04a4.sol(48)

[31mViolation[0m for MissingInputValidation in contract 'RaliusToken':
    |}
    |
  > |function allowance(address _owner, address _spender) constant returns(uint256 remaining)
    |{
    |    return allowed[_owner][_spender];
  at /home/jiaming/mavs_srcs/contract@0x6b8880260f71d2370cc2b754b4ba0ec9861e04a4.sol(55)

[31mViolation[0m for MissingInputValidation in contract 'RaliusToken':
    |    }
    |
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns(bool success)
    |{
    |    allowed[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0x6b8880260f71d2370cc2b754b4ba0ec9861e04a4.sol(100)

[33mWarning[0m for MissingInputValidation in contract 'RaliusToken':
    |    mapping(address => uint256) balances;
    |    mapping(address => mapping (address => uint256)) allowed;
  > |    uint256 public totalSupply;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x6b8880260f71d2370cc2b754b4ba0ec9861e04a4.sol(62)

[33mWarning[0m for MissingInputValidation in contract 'RaliusToken':
    |
    |contract RaliusToken is StandardToken { 
  > |    string public name;                   
    |    uint8 public decimals;              
    |    string public symbol;                
  at /home/jiaming/mavs_srcs/contract@0x6b8880260f71d2370cc2b754b4ba0ec9861e04a4.sol(66)

[33mWarning[0m for MissingInputValidation in contract 'RaliusToken':
    |contract RaliusToken is StandardToken { 
    |    string public name;                   
  > |    uint8 public decimals;              
    |    string public symbol;                
    |    string public version = 'H1.0'; 
  at /home/jiaming/mavs_srcs/contract@0x6b8880260f71d2370cc2b754b4ba0ec9861e04a4.sol(67)

[33mWarning[0m for MissingInputValidation in contract 'RaliusToken':
    |    string public name;                   
    |    uint8 public decimals;              
  > |    string public symbol;                
    |    string public version = 'H1.0'; 
    |    uint256 public unitsOneEthCanBuy;    
  at /home/jiaming/mavs_srcs/contract@0x6b8880260f71d2370cc2b754b4ba0ec9861e04a4.sol(68)

[33mWarning[0m for MissingInputValidation in contract 'RaliusToken':
    |    uint8 public decimals;              
    |    string public symbol;                
  > |    string public version = 'H1.0'; 
    |    uint256 public unitsOneEthCanBuy;    
    |    uint256 public totalEthInWei;         
  at /home/jiaming/mavs_srcs/contract@0x6b8880260f71d2370cc2b754b4ba0ec9861e04a4.sol(69)

[33mWarning[0m for MissingInputValidation in contract 'RaliusToken':
    |    string public symbol;                
    |    string public version = 'H1.0'; 
  > |    uint256 public unitsOneEthCanBuy;    
    |    uint256 public totalEthInWei;         
    |    address public fundsWallet;           
  at /home/jiaming/mavs_srcs/contract@0x6b8880260f71d2370cc2b754b4ba0ec9861e04a4.sol(70)

[33mWarning[0m for MissingInputValidation in contract 'RaliusToken':
    |    string public version = 'H1.0'; 
    |    uint256 public unitsOneEthCanBuy;    
  > |    uint256 public totalEthInWei;         
    |    address public fundsWallet;           
    |
  at /home/jiaming/mavs_srcs/contract@0x6b8880260f71d2370cc2b754b4ba0ec9861e04a4.sol(71)

[33mWarning[0m for MissingInputValidation in contract 'RaliusToken':
    |    uint256 public unitsOneEthCanBuy;    
    |    uint256 public totalEthInWei;         
  > |    address public fundsWallet;           
    |
    |    function RaliusToken()
  at /home/jiaming/mavs_srcs/contract@0x6b8880260f71d2370cc2b754b4ba0ec9861e04a4.sol(72)

[33mWarning[0m for UnhandledException in contract 'RaliusToken':
    |    Approval(msg.sender, _spender, _value);
    |
  > |    if (!_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) { throw; }
    |    return true;
    |}
  at /home/jiaming/mavs_srcs/contract@0x6b8880260f71d2370cc2b754b4ba0ec9861e04a4.sol(105)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RaliusToken':
    |    Approval(msg.sender, _spender, _value);
    |
  > |    if (!_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) { throw; }
    |    return true;
    |}
  at /home/jiaming/mavs_srcs/contract@0x6b8880260f71d2370cc2b754b4ba0ec9861e04a4.sol(105)

[33mWarning[0m for UnrestrictedWrite in contract 'RaliusToken':
    |    if (balances[msg.sender] >= _value && balances[_to] + _value > balances[_to])
    |    {
  > |        balances[msg.sender] -= _value;
    |        balances[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x6b8880260f71d2370cc2b754b4ba0ec9861e04a4.sol(22)

[33mWarning[0m for UnrestrictedWrite in contract 'RaliusToken':
    |        balances[_to] += _value;
    |        balances[_from] -= _value;
  > |        allowed[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6b8880260f71d2370cc2b754b4ba0ec9861e04a4.sol(36)

[33mWarning[0m for UnrestrictedWrite in contract 'RaliusToken':
    |function approve(address _spender, uint256 _value) returns(bool success)
    |{
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x6b8880260f71d2370cc2b754b4ba0ec9861e04a4.sol(50)

[33mWarning[0m for UnrestrictedWrite in contract 'RaliusToken':
    |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns(bool success)
    |{
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |
  at /home/jiaming/mavs_srcs/contract@0x6b8880260f71d2370cc2b754b4ba0ec9861e04a4.sol(102)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is Token 
    |    {
    |    function transfer(address _to, uint256 _value) returns(bool success)
  at /home/jiaming/mavs_srcs/contract@0x6b8880260f71d2370cc2b754b4ba0ec9861e04a4.sol(16)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |}
    |
  > |function transferFrom(address _from, address _to, uint256 _value) returns(bool success)
    |{
    |    if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && balances[_to] + _value > balances[_to])
  at /home/jiaming/mavs_srcs/contract@0x6b8880260f71d2370cc2b754b4ba0ec9861e04a4.sol(30)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |}
    |
  > |function balanceOf(address _owner) constant returns(uint256 balance)
    |{
    |    return balances[_owner];
  at /home/jiaming/mavs_srcs/contract@0x6b8880260f71d2370cc2b754b4ba0ec9861e04a4.sol(43)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |}
    |
  > |function approve(address _spender, uint256 _value) returns(bool success)
    |{
    |    allowed[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0x6b8880260f71d2370cc2b754b4ba0ec9861e04a4.sol(48)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |}
    |
  > |function allowance(address _owner, address _spender) constant returns(uint256 remaining)
    |{
    |    return allowed[_owner][_spender];
  at /home/jiaming/mavs_srcs/contract@0x6b8880260f71d2370cc2b754b4ba0ec9861e04a4.sol(55)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |    mapping(address => uint256) balances;
    |    mapping(address => mapping (address => uint256)) allowed;
  > |    uint256 public totalSupply;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x6b8880260f71d2370cc2b754b4ba0ec9861e04a4.sol(62)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    if (balances[msg.sender] >= _value && balances[_to] + _value > balances[_to])
    |    {
  > |        balances[msg.sender] -= _value;
    |        balances[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x6b8880260f71d2370cc2b754b4ba0ec9861e04a4.sol(22)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        balances[_to] += _value;
    |        balances[_from] -= _value;
  > |        allowed[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6b8880260f71d2370cc2b754b4ba0ec9861e04a4.sol(36)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |function approve(address _spender, uint256 _value) returns(bool success)
    |{
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x6b8880260f71d2370cc2b754b4ba0ec9861e04a4.sol(50)

[33mWarning[0m for LockedEther in contract 'Token':
    |pragma solidity ^0.4.4;
    |
  > |contract Token
    |{
    |    function totalSupply() constant returns (uint256 supply) { }
  at /home/jiaming/mavs_srcs/contract@0x6b8880260f71d2370cc2b754b4ba0ec9861e04a4.sol(3)


