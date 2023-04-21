Processing contract: /home/jiaming/mavs_srcs/contract@0x246023fcbef2465c8e562a2b3a046eba492d39b1.sol:Crypterium
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x246023fcbef2465c8e562a2b3a046eba492d39b1.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x246023fcbef2465c8e562a2b3a046eba492d39b1.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x246023fcbef2465c8e562a2b3a046eba492d39b1.sol:Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Crypterium':
    |
    |
  > |contract Crypterium is StandardToken {
    |
    |    function () {
  at /home/jiaming/mavs_srcs/contract@0x246023fcbef2465c8e562a2b3a046eba492d39b1.sol(98)

[31mViolation[0m for MissingInputValidation in contract 'Crypterium':
    |    using SafeMath for uint256;
    |
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
    |            balances[msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x246023fcbef2465c8e562a2b3a046eba492d39b1.sol(59)

[31mViolation[0m for MissingInputValidation in contract 'Crypterium':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0) {
    |            balances[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x246023fcbef2465c8e562a2b3a046eba492d39b1.sol(68)

[31mViolation[0m for MissingInputValidation in contract 'Crypterium':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x246023fcbef2465c8e562a2b3a046eba492d39b1.sol(78)

[31mViolation[0m for MissingInputValidation in contract 'Crypterium':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x246023fcbef2465c8e562a2b3a046eba492d39b1.sol(82)

[31mViolation[0m for MissingInputValidation in contract 'Crypterium':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x246023fcbef2465c8e562a2b3a046eba492d39b1.sol(88)

[31mViolation[0m for MissingInputValidation in contract 'Crypterium':
    |    }
    |
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x246023fcbef2465c8e562a2b3a046eba492d39b1.sol(120)

[33mWarning[0m for MissingInputValidation in contract 'Crypterium':
    |    mapping (address => uint256) balances;
    |    mapping (address => mapping (address => uint256)) allowed;
  > |    uint256 public totalSupply;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x246023fcbef2465c8e562a2b3a046eba492d39b1.sol(94)

[33mWarning[0m for MissingInputValidation in contract 'Crypterium':
    |
    |
  > |    string public name;                   
    |    uint8 public decimals;                
    |    string public symbol;                 
  at /home/jiaming/mavs_srcs/contract@0x246023fcbef2465c8e562a2b3a046eba492d39b1.sol(105)

[33mWarning[0m for MissingInputValidation in contract 'Crypterium':
    |
    |    string public name;                   
  > |    uint8 public decimals;                
    |    string public symbol;                 
    |    string public version = 'H1.0';     
  at /home/jiaming/mavs_srcs/contract@0x246023fcbef2465c8e562a2b3a046eba492d39b1.sol(106)

[33mWarning[0m for MissingInputValidation in contract 'Crypterium':
    |    string public name;                   
    |    uint8 public decimals;                
  > |    string public symbol;                 
    |    string public version = 'H1.0';     
    |
  at /home/jiaming/mavs_srcs/contract@0x246023fcbef2465c8e562a2b3a046eba492d39b1.sol(107)

[33mWarning[0m for MissingInputValidation in contract 'Crypterium':
    |    uint8 public decimals;                
    |    string public symbol;                 
  > |    string public version = 'H1.0';     
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x246023fcbef2465c8e562a2b3a046eba492d39b1.sol(108)

[33mWarning[0m for UnhandledException in contract 'Crypterium':
    |        Approval(msg.sender, _spender, _value);
    |
  > |        if(!_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) { throw; }
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x246023fcbef2465c8e562a2b3a046eba492d39b1.sol(124)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crypterium':
    |        Approval(msg.sender, _spender, _value);
    |
  > |        if(!_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) { throw; }
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x246023fcbef2465c8e562a2b3a046eba492d39b1.sol(124)

[33mWarning[0m for UnrestrictedWrite in contract 'Crypterium':
    |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x246023fcbef2465c8e562a2b3a046eba492d39b1.sol(61)

[33mWarning[0m for UnrestrictedWrite in contract 'Crypterium':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x246023fcbef2465c8e562a2b3a046eba492d39b1.sol(72)

[33mWarning[0m for UnrestrictedWrite in contract 'Crypterium':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x246023fcbef2465c8e562a2b3a046eba492d39b1.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'Crypterium':
    |
    |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |
  at /home/jiaming/mavs_srcs/contract@0x246023fcbef2465c8e562a2b3a046eba492d39b1.sol(121)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x246023fcbef2465c8e562a2b3a046eba492d39b1.sol(7)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |
    |
  > |contract StandardToken is Token {
    |    
    |    using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0x246023fcbef2465c8e562a2b3a046eba492d39b1.sol(55)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    using SafeMath for uint256;
    |
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
    |            balances[msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x246023fcbef2465c8e562a2b3a046eba492d39b1.sol(59)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0) {
    |            balances[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x246023fcbef2465c8e562a2b3a046eba492d39b1.sol(68)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x246023fcbef2465c8e562a2b3a046eba492d39b1.sol(78)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x246023fcbef2465c8e562a2b3a046eba492d39b1.sol(82)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x246023fcbef2465c8e562a2b3a046eba492d39b1.sol(88)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |    mapping (address => uint256) balances;
    |    mapping (address => mapping (address => uint256)) allowed;
  > |    uint256 public totalSupply;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x246023fcbef2465c8e562a2b3a046eba492d39b1.sol(94)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x246023fcbef2465c8e562a2b3a046eba492d39b1.sol(61)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x246023fcbef2465c8e562a2b3a046eba492d39b1.sol(72)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x246023fcbef2465c8e562a2b3a046eba492d39b1.sol(83)

[33mWarning[0m for LockedEther in contract 'Token':
    |
    |
  > |contract Token {
    |
    |    function totalSupply() constant returns (uint256 supply) {}
  at /home/jiaming/mavs_srcs/contract@0x246023fcbef2465c8e562a2b3a046eba492d39b1.sol(34)


