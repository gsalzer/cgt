Processing contract: /home/jiaming/mavs_srcs/contract@0x6f0a7aa19425752ff39d9f568c9d930ef30997ed.sol:ERC20Token
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6f0a7aa19425752ff39d9f568c9d930ef30997ed.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6f0a7aa19425752ff39d9f568c9d930ef30997ed.sol:Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'ERC20Token':
    |
    |
  > |contract ERC20Token is StandardToken {
    |
    |    function () {
  at /home/jiaming/mavs_srcs/contract@0x6f0a7aa19425752ff39d9f568c9d930ef30997ed.sol(77)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Token':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        //same as above. Replace this line with the following if you want to protect against wrapping uints.
    |        if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
  at /home/jiaming/mavs_srcs/contract@0x6f0a7aa19425752ff39d9f568c9d930ef30997ed.sol(44)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Token':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6f0a7aa19425752ff39d9f568c9d930ef30997ed.sol(56)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Token':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x6f0a7aa19425752ff39d9f568c9d930ef30997ed.sol(60)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Token':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6f0a7aa19425752ff39d9f568c9d930ef30997ed.sol(66)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Token':
    |
    |   
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x6f0a7aa19425752ff39d9f568c9d930ef30997ed.sol(101)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Token':
    |    mapping (address => uint256) balances;
    |    mapping (address => mapping (address => uint256)) allowed;
  > |    uint256 public totalSupply;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x6f0a7aa19425752ff39d9f568c9d930ef30997ed.sol(72)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Token':
    |
    |
  > |    string public name;                   
    |    uint8 public decimals;                
    |    string public symbol;                 
  at /home/jiaming/mavs_srcs/contract@0x6f0a7aa19425752ff39d9f568c9d930ef30997ed.sol(85)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Token':
    |
    |    string public name;                   
  > |    uint8 public decimals;                
    |    string public symbol;                 
    |    string public version = 'H1.0';       
  at /home/jiaming/mavs_srcs/contract@0x6f0a7aa19425752ff39d9f568c9d930ef30997ed.sol(86)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Token':
    |    string public name;                   
    |    uint8 public decimals;                
  > |    string public symbol;                 
    |    string public version = 'H1.0';       
    |
  at /home/jiaming/mavs_srcs/contract@0x6f0a7aa19425752ff39d9f568c9d930ef30997ed.sol(87)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Token':
    |    uint8 public decimals;                
    |    string public symbol;                 
  > |    string public version = 'H1.0';       
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x6f0a7aa19425752ff39d9f568c9d930ef30997ed.sol(88)

[33mWarning[0m for UnhandledException in contract 'ERC20Token':
    |
    |        
  > |        if(!_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) { throw; }
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6f0a7aa19425752ff39d9f568c9d930ef30997ed.sol(106)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Token':
    |
    |        
  > |        if(!_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) { throw; }
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6f0a7aa19425752ff39d9f568c9d930ef30997ed.sol(106)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |        if (balances[msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
    |        //if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x6f0a7aa19425752ff39d9f568c9d930ef30997ed.sol(37)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x6f0a7aa19425752ff39d9f568c9d930ef30997ed.sol(50)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6f0a7aa19425752ff39d9f568c9d930ef30997ed.sol(61)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |   
    |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |
  at /home/jiaming/mavs_srcs/contract@0x6f0a7aa19425752ff39d9f568c9d930ef30997ed.sol(102)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |
    |
  > |contract StandardToken is Token {
    |
    |    function transfer(address _to, uint256 _value) returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x6f0a7aa19425752ff39d9f568c9d930ef30997ed.sol(29)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        //same as above. Replace this line with the following if you want to protect against wrapping uints.
    |        if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
  at /home/jiaming/mavs_srcs/contract@0x6f0a7aa19425752ff39d9f568c9d930ef30997ed.sol(44)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6f0a7aa19425752ff39d9f568c9d930ef30997ed.sol(56)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x6f0a7aa19425752ff39d9f568c9d930ef30997ed.sol(60)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6f0a7aa19425752ff39d9f568c9d930ef30997ed.sol(66)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |    mapping (address => uint256) balances;
    |    mapping (address => mapping (address => uint256)) allowed;
  > |    uint256 public totalSupply;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x6f0a7aa19425752ff39d9f568c9d930ef30997ed.sol(72)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        if (balances[msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
    |        //if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x6f0a7aa19425752ff39d9f568c9d930ef30997ed.sol(37)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x6f0a7aa19425752ff39d9f568c9d930ef30997ed.sol(50)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6f0a7aa19425752ff39d9f568c9d930ef30997ed.sol(61)

[33mWarning[0m for LockedEther in contract 'Token':
    |pragma solidity ^0.4.4;
    |
  > |contract Token {
    |
    |    
  at /home/jiaming/mavs_srcs/contract@0x6f0a7aa19425752ff39d9f568c9d930ef30997ed.sol(3)


