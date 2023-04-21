Processing contract: /home/jiaming/mavs_srcs/contract@0xde8f8e2ebb7799e6b02a963ee8976f162872cf49.sol:PexCash
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xde8f8e2ebb7799e6b02a963ee8976f162872cf49.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xde8f8e2ebb7799e6b02a963ee8976f162872cf49.sol:Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'PexCash':
    |
    |
  > |contract PexCash is StandardToken {
    |
    |    function () {
  at /home/jiaming/mavs_srcs/contract@0xde8f8e2ebb7799e6b02a963ee8976f162872cf49.sol(73)

[31mViolation[0m for MissingInputValidation in contract 'PexCash':
    |contract StandardToken is Token {
    |
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
    |            balances[msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0xde8f8e2ebb7799e6b02a963ee8976f162872cf49.sol(34)

[31mViolation[0m for MissingInputValidation in contract 'PexCash':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0) {
    |            balances[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0xde8f8e2ebb7799e6b02a963ee8976f162872cf49.sol(43)

[31mViolation[0m for MissingInputValidation in contract 'PexCash':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xde8f8e2ebb7799e6b02a963ee8976f162872cf49.sol(53)

[31mViolation[0m for MissingInputValidation in contract 'PexCash':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xde8f8e2ebb7799e6b02a963ee8976f162872cf49.sol(57)

[31mViolation[0m for MissingInputValidation in contract 'PexCash':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xde8f8e2ebb7799e6b02a963ee8976f162872cf49.sol(63)

[31mViolation[0m for MissingInputValidation in contract 'PexCash':
    |    }
    |
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xde8f8e2ebb7799e6b02a963ee8976f162872cf49.sol(94)

[33mWarning[0m for MissingInputValidation in contract 'PexCash':
    |    mapping (address => uint256) balances;
    |    mapping (address => mapping (address => uint256)) allowed;
  > |    uint256 public totalSupply;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0xde8f8e2ebb7799e6b02a963ee8976f162872cf49.sol(69)

[33mWarning[0m for MissingInputValidation in contract 'PexCash':
    |
    |    
  > |    string public name;                   
    |    uint8 public decimals;                
    |    string public symbol;                 
  at /home/jiaming/mavs_srcs/contract@0xde8f8e2ebb7799e6b02a963ee8976f162872cf49.sol(80)

[33mWarning[0m for MissingInputValidation in contract 'PexCash':
    |    
    |    string public name;                   
  > |    uint8 public decimals;                
    |    string public symbol;                 
    |    string public version = 'H1.0';       
  at /home/jiaming/mavs_srcs/contract@0xde8f8e2ebb7799e6b02a963ee8976f162872cf49.sol(81)

[33mWarning[0m for MissingInputValidation in contract 'PexCash':
    |    string public name;                   
    |    uint8 public decimals;                
  > |    string public symbol;                 
    |    string public version = 'H1.0';       
    |
  at /home/jiaming/mavs_srcs/contract@0xde8f8e2ebb7799e6b02a963ee8976f162872cf49.sol(82)

[33mWarning[0m for MissingInputValidation in contract 'PexCash':
    |    uint8 public decimals;                
    |    string public symbol;                 
  > |    string public version = 'H1.0';       
    |
    |    function PexCash(
  at /home/jiaming/mavs_srcs/contract@0xde8f8e2ebb7799e6b02a963ee8976f162872cf49.sol(83)

[33mWarning[0m for UnhandledException in contract 'PexCash':
    |        Approval(msg.sender, _spender, _value);
    |
  > |        if(!_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) { throw; }
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xde8f8e2ebb7799e6b02a963ee8976f162872cf49.sol(98)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PexCash':
    |        Approval(msg.sender, _spender, _value);
    |
  > |        if(!_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) { throw; }
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xde8f8e2ebb7799e6b02a963ee8976f162872cf49.sol(98)

[33mWarning[0m for UnrestrictedWrite in contract 'PexCash':
    |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xde8f8e2ebb7799e6b02a963ee8976f162872cf49.sol(36)

[33mWarning[0m for UnrestrictedWrite in contract 'PexCash':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xde8f8e2ebb7799e6b02a963ee8976f162872cf49.sol(47)

[33mWarning[0m for UnrestrictedWrite in contract 'PexCash':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xde8f8e2ebb7799e6b02a963ee8976f162872cf49.sol(58)

[33mWarning[0m for UnrestrictedWrite in contract 'PexCash':
    |
    |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |
  at /home/jiaming/mavs_srcs/contract@0xde8f8e2ebb7799e6b02a963ee8976f162872cf49.sol(95)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |
    |
  > |contract StandardToken is Token {
    |
    |    function transfer(address _to, uint256 _value) returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0xde8f8e2ebb7799e6b02a963ee8976f162872cf49.sol(32)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |contract StandardToken is Token {
    |
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
    |            balances[msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0xde8f8e2ebb7799e6b02a963ee8976f162872cf49.sol(34)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0) {
    |            balances[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0xde8f8e2ebb7799e6b02a963ee8976f162872cf49.sol(43)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xde8f8e2ebb7799e6b02a963ee8976f162872cf49.sol(53)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xde8f8e2ebb7799e6b02a963ee8976f162872cf49.sol(57)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xde8f8e2ebb7799e6b02a963ee8976f162872cf49.sol(63)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |    mapping (address => uint256) balances;
    |    mapping (address => mapping (address => uint256)) allowed;
  > |    uint256 public totalSupply;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0xde8f8e2ebb7799e6b02a963ee8976f162872cf49.sol(69)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xde8f8e2ebb7799e6b02a963ee8976f162872cf49.sol(36)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xde8f8e2ebb7799e6b02a963ee8976f162872cf49.sol(47)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xde8f8e2ebb7799e6b02a963ee8976f162872cf49.sol(58)

[33mWarning[0m for LockedEther in contract 'Token':
    |*/
    |
  > |contract Token {
    |
    |    function totalSupply() constant returns (uint256 supply) {}
  at /home/jiaming/mavs_srcs/contract@0xde8f8e2ebb7799e6b02a963ee8976f162872cf49.sol(8)


