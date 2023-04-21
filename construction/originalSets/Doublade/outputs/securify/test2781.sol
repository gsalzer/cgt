Processing contract: /home/jiaming/mavs_srcs/contract@0xb61e53dec5217f3d6661ab0e42e5083767238911.sol:ERC20Token
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb61e53dec5217f3d6661ab0e42e5083767238911.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb61e53dec5217f3d6661ab0e42e5083767238911.sol:Token
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
  at /home/jiaming/mavs_srcs/contract@0xb61e53dec5217f3d6661ab0e42e5083767238911.sol(87)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Token':
    |contract StandardToken is Token {
    |
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |
    |        if (balances[msg.sender] >= _value && _value > 0) {
  at /home/jiaming/mavs_srcs/contract@0xb61e53dec5217f3d6661ab0e42e5083767238911.sol(45)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Token':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        
    |        if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0) {
  at /home/jiaming/mavs_srcs/contract@0xb61e53dec5217f3d6661ab0e42e5083767238911.sol(55)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Token':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb61e53dec5217f3d6661ab0e42e5083767238911.sol(66)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Token':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xb61e53dec5217f3d6661ab0e42e5083767238911.sol(70)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Token':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb61e53dec5217f3d6661ab0e42e5083767238911.sol(76)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Token':
    |
    |    
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xb61e53dec5217f3d6661ab0e42e5083767238911.sol(111)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Token':
    |    mapping (address => uint256) balances;
    |    mapping (address => mapping (address => uint256)) allowed;
  > |    uint256 public totalSupply;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0xb61e53dec5217f3d6661ab0e42e5083767238911.sol(82)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Token':
    |
    |
  > |    string public name;                   
    |    uint8 public decimals;                
    |    string public symbol;                 
  at /home/jiaming/mavs_srcs/contract@0xb61e53dec5217f3d6661ab0e42e5083767238911.sol(95)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Token':
    |
    |    string public name;                   
  > |    uint8 public decimals;                
    |    string public symbol;                 
    |    string public version = 'H1.0';       
  at /home/jiaming/mavs_srcs/contract@0xb61e53dec5217f3d6661ab0e42e5083767238911.sol(96)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Token':
    |    string public name;                   
    |    uint8 public decimals;                
  > |    string public symbol;                 
    |    string public version = 'H1.0';       
    |
  at /home/jiaming/mavs_srcs/contract@0xb61e53dec5217f3d6661ab0e42e5083767238911.sol(97)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Token':
    |    uint8 public decimals;                
    |    string public symbol;                 
  > |    string public version = 'H1.0';       
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xb61e53dec5217f3d6661ab0e42e5083767238911.sol(98)

[33mWarning[0m for UnhandledException in contract 'ERC20Token':
    |
    |        
  > |        if(!_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) { throw; }
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb61e53dec5217f3d6661ab0e42e5083767238911.sol(116)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Token':
    |
    |        
  > |        if(!_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) { throw; }
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb61e53dec5217f3d6661ab0e42e5083767238911.sol(116)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xb61e53dec5217f3d6661ab0e42e5083767238911.sol(48)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xb61e53dec5217f3d6661ab0e42e5083767238911.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xb61e53dec5217f3d6661ab0e42e5083767238911.sol(71)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |    
    |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |
  at /home/jiaming/mavs_srcs/contract@0xb61e53dec5217f3d6661ab0e42e5083767238911.sol(112)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |
    |
  > |contract StandardToken is Token {
    |
    |    function transfer(address _to, uint256 _value) returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0xb61e53dec5217f3d6661ab0e42e5083767238911.sol(43)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |contract StandardToken is Token {
    |
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |
    |        if (balances[msg.sender] >= _value && _value > 0) {
  at /home/jiaming/mavs_srcs/contract@0xb61e53dec5217f3d6661ab0e42e5083767238911.sol(45)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        
    |        if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0) {
  at /home/jiaming/mavs_srcs/contract@0xb61e53dec5217f3d6661ab0e42e5083767238911.sol(55)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb61e53dec5217f3d6661ab0e42e5083767238911.sol(66)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xb61e53dec5217f3d6661ab0e42e5083767238911.sol(70)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb61e53dec5217f3d6661ab0e42e5083767238911.sol(76)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |    mapping (address => uint256) balances;
    |    mapping (address => mapping (address => uint256)) allowed;
  > |    uint256 public totalSupply;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0xb61e53dec5217f3d6661ab0e42e5083767238911.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xb61e53dec5217f3d6661ab0e42e5083767238911.sol(48)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xb61e53dec5217f3d6661ab0e42e5083767238911.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xb61e53dec5217f3d6661ab0e42e5083767238911.sol(71)

[33mWarning[0m for LockedEther in contract 'Token':
    |pragma solidity ^0.4.4;
    |
  > |contract Token {
    |
    |    /// @return total amount of tokens
  at /home/jiaming/mavs_srcs/contract@0xb61e53dec5217f3d6661ab0e42e5083767238911.sol(3)


