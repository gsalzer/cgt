Processing contract: /home/jiaming/mavs_srcs/contract@0x1b82e91aef42531ca43872db609f4807ef1652d8.sol:PAOCoin
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1b82e91aef42531ca43872db609f4807ef1652d8.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1b82e91aef42531ca43872db609f4807ef1652d8.sol:Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'PAOCoin':
    |
    |
  > |contract PAOCoin is StandardToken {
    |
    |    function () {
  at /home/jiaming/mavs_srcs/contract@0x1b82e91aef42531ca43872db609f4807ef1652d8.sol(88)

[31mViolation[0m for MissingInputValidation in contract 'PAOCoin':
    |contract StandardToken is Token {
    |
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
    |            balances[msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x1b82e91aef42531ca43872db609f4807ef1652d8.sol(49)

[31mViolation[0m for MissingInputValidation in contract 'PAOCoin':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0) {
    |            balances[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x1b82e91aef42531ca43872db609f4807ef1652d8.sol(58)

[31mViolation[0m for MissingInputValidation in contract 'PAOCoin':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1b82e91aef42531ca43872db609f4807ef1652d8.sol(68)

[31mViolation[0m for MissingInputValidation in contract 'PAOCoin':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x1b82e91aef42531ca43872db609f4807ef1652d8.sol(72)

[31mViolation[0m for MissingInputValidation in contract 'PAOCoin':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1b82e91aef42531ca43872db609f4807ef1652d8.sol(78)

[31mViolation[0m for MissingInputValidation in contract 'PAOCoin':
    |
    |    /* Approves and then calls the receiving contract */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x1b82e91aef42531ca43872db609f4807ef1652d8.sol(113)

[33mWarning[0m for MissingInputValidation in contract 'PAOCoin':
    |    mapping (address => uint256) balances;
    |    mapping (address => mapping (address => uint256)) allowed;
  > |    uint256 public totalSupply;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x1b82e91aef42531ca43872db609f4807ef1652d8.sol(84)

[33mWarning[0m for MissingInputValidation in contract 'PAOCoin':
    |    /* Public variables of the token */
    |    
  > |    string public name;                   
    |    uint8 public decimals;                
    |    string public symbol;                 
  at /home/jiaming/mavs_srcs/contract@0x1b82e91aef42531ca43872db609f4807ef1652d8.sol(97)

[33mWarning[0m for MissingInputValidation in contract 'PAOCoin':
    |    
    |    string public name;                   
  > |    uint8 public decimals;                
    |    string public symbol;                 
    |    string public version = 'H1.0';  
  at /home/jiaming/mavs_srcs/contract@0x1b82e91aef42531ca43872db609f4807ef1652d8.sol(98)

[33mWarning[0m for MissingInputValidation in contract 'PAOCoin':
    |    string public name;                   
    |    uint8 public decimals;                
  > |    string public symbol;                 
    |    string public version = 'H1.0';  
    |
  at /home/jiaming/mavs_srcs/contract@0x1b82e91aef42531ca43872db609f4807ef1652d8.sol(99)

[33mWarning[0m for MissingInputValidation in contract 'PAOCoin':
    |    uint8 public decimals;                
    |    string public symbol;                 
  > |    string public version = 'H1.0';  
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x1b82e91aef42531ca43872db609f4807ef1652d8.sol(100)

[33mWarning[0m for UnhandledException in contract 'PAOCoin':
    |        Approval(msg.sender, _spender, _value);
    |
  > |        if(!_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) { throw; }
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1b82e91aef42531ca43872db609f4807ef1652d8.sol(117)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PAOCoin':
    |        Approval(msg.sender, _spender, _value);
    |
  > |        if(!_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) { throw; }
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1b82e91aef42531ca43872db609f4807ef1652d8.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'PAOCoin':
    |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x1b82e91aef42531ca43872db609f4807ef1652d8.sol(51)

[33mWarning[0m for UnrestrictedWrite in contract 'PAOCoin':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x1b82e91aef42531ca43872db609f4807ef1652d8.sol(62)

[33mWarning[0m for UnrestrictedWrite in contract 'PAOCoin':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x1b82e91aef42531ca43872db609f4807ef1652d8.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'PAOCoin':
    |    /* Approves and then calls the receiving contract */
    |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |
  at /home/jiaming/mavs_srcs/contract@0x1b82e91aef42531ca43872db609f4807ef1652d8.sol(114)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |
    |
  > |contract StandardToken is Token {
    |
    |    function transfer(address _to, uint256 _value) returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x1b82e91aef42531ca43872db609f4807ef1652d8.sol(47)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |contract StandardToken is Token {
    |
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
    |            balances[msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x1b82e91aef42531ca43872db609f4807ef1652d8.sol(49)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0) {
    |            balances[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x1b82e91aef42531ca43872db609f4807ef1652d8.sol(58)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1b82e91aef42531ca43872db609f4807ef1652d8.sol(68)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x1b82e91aef42531ca43872db609f4807ef1652d8.sol(72)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1b82e91aef42531ca43872db609f4807ef1652d8.sol(78)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |    mapping (address => uint256) balances;
    |    mapping (address => mapping (address => uint256)) allowed;
  > |    uint256 public totalSupply;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x1b82e91aef42531ca43872db609f4807ef1652d8.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x1b82e91aef42531ca43872db609f4807ef1652d8.sol(51)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x1b82e91aef42531ca43872db609f4807ef1652d8.sol(62)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x1b82e91aef42531ca43872db609f4807ef1652d8.sol(73)

[33mWarning[0m for LockedEther in contract 'Token':
    |*/
    |
  > |contract Token {
    |
    |    /// @return total amount of tokens
  at /home/jiaming/mavs_srcs/contract@0x1b82e91aef42531ca43872db609f4807ef1652d8.sol(8)


