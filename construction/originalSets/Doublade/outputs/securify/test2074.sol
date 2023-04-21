Processing contract: /home/jiaming/mavs_srcs/contract@0x8798f50078993c3d46be6f7d7d22b3a3868085d3.sol:PantherCoin
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8798f50078993c3d46be6f7d7d22b3a3868085d3.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8798f50078993c3d46be6f7d7d22b3a3868085d3.sol:Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'PantherCoin':
    |
    |
  > |contract PantherCoin is StandardToken {
    |
    |    function () {
  at /home/jiaming/mavs_srcs/contract@0x8798f50078993c3d46be6f7d7d22b3a3868085d3.sol(88)

[31mViolation[0m for MissingInputValidation in contract 'PantherCoin':
    |contract StandardToken is Token {
    |
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
    |            balances[msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x8798f50078993c3d46be6f7d7d22b3a3868085d3.sol(49)

[31mViolation[0m for MissingInputValidation in contract 'PantherCoin':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0) {
    |            balances[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x8798f50078993c3d46be6f7d7d22b3a3868085d3.sol(58)

[31mViolation[0m for MissingInputValidation in contract 'PantherCoin':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8798f50078993c3d46be6f7d7d22b3a3868085d3.sol(68)

[31mViolation[0m for MissingInputValidation in contract 'PantherCoin':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x8798f50078993c3d46be6f7d7d22b3a3868085d3.sol(72)

[31mViolation[0m for MissingInputValidation in contract 'PantherCoin':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8798f50078993c3d46be6f7d7d22b3a3868085d3.sol(78)

[31mViolation[0m for MissingInputValidation in contract 'PantherCoin':
    |
    |    /* Approves and then calls the receiving contract */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x8798f50078993c3d46be6f7d7d22b3a3868085d3.sol(113)

[33mWarning[0m for MissingInputValidation in contract 'PantherCoin':
    |    mapping (address => uint256) balances;
    |    mapping (address => mapping (address => uint256)) allowed;
  > |    uint256 public totalSupply;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x8798f50078993c3d46be6f7d7d22b3a3868085d3.sol(84)

[33mWarning[0m for MissingInputValidation in contract 'PantherCoin':
    |    /* Public variables of the token */
    |
  > |    string public name = "PantherCoin";                   
    |    uint8 public decimals = 7;                
    |    string public symbol = "PANT";                 
  at /home/jiaming/mavs_srcs/contract@0x8798f50078993c3d46be6f7d7d22b3a3868085d3.sol(97)

[33mWarning[0m for MissingInputValidation in contract 'PantherCoin':
    |
    |    string public name = "PantherCoin";                   
  > |    uint8 public decimals = 7;                
    |    string public symbol = "PANT";                 
    |    string public version = 'H1.0';       
  at /home/jiaming/mavs_srcs/contract@0x8798f50078993c3d46be6f7d7d22b3a3868085d3.sol(98)

[33mWarning[0m for MissingInputValidation in contract 'PantherCoin':
    |    string public name = "PantherCoin";                   
    |    uint8 public decimals = 7;                
  > |    string public symbol = "PANT";                 
    |    string public version = 'H1.0';       
    |
  at /home/jiaming/mavs_srcs/contract@0x8798f50078993c3d46be6f7d7d22b3a3868085d3.sol(99)

[33mWarning[0m for MissingInputValidation in contract 'PantherCoin':
    |    uint8 public decimals = 7;                
    |    string public symbol = "PANT";                 
  > |    string public version = 'H1.0';       
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x8798f50078993c3d46be6f7d7d22b3a3868085d3.sol(100)

[33mWarning[0m for UnhandledException in contract 'PantherCoin':
    |        //receiveApproval(address _from, uint256 _value, address _tokenContract, bytes _extraData)
    |        //it is assumed that when does this that the call *should* succeed, otherwise one would use vanilla approve instead.
  > |        if(!_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) { throw; }
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8798f50078993c3d46be6f7d7d22b3a3868085d3.sol(120)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PantherCoin':
    |        //receiveApproval(address _from, uint256 _value, address _tokenContract, bytes _extraData)
    |        //it is assumed that when does this that the call *should* succeed, otherwise one would use vanilla approve instead.
  > |        if(!_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) { throw; }
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8798f50078993c3d46be6f7d7d22b3a3868085d3.sol(120)

[33mWarning[0m for UnrestrictedWrite in contract 'PantherCoin':
    |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x8798f50078993c3d46be6f7d7d22b3a3868085d3.sol(51)

[33mWarning[0m for UnrestrictedWrite in contract 'PantherCoin':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x8798f50078993c3d46be6f7d7d22b3a3868085d3.sol(62)

[33mWarning[0m for UnrestrictedWrite in contract 'PantherCoin':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8798f50078993c3d46be6f7d7d22b3a3868085d3.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'PantherCoin':
    |    /* Approves and then calls the receiving contract */
    |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |
  at /home/jiaming/mavs_srcs/contract@0x8798f50078993c3d46be6f7d7d22b3a3868085d3.sol(114)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |
    |
  > |contract StandardToken is Token {
    |
    |    function transfer(address _to, uint256 _value) returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x8798f50078993c3d46be6f7d7d22b3a3868085d3.sol(47)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |contract StandardToken is Token {
    |
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
    |            balances[msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x8798f50078993c3d46be6f7d7d22b3a3868085d3.sol(49)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0) {
    |            balances[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x8798f50078993c3d46be6f7d7d22b3a3868085d3.sol(58)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8798f50078993c3d46be6f7d7d22b3a3868085d3.sol(68)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x8798f50078993c3d46be6f7d7d22b3a3868085d3.sol(72)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8798f50078993c3d46be6f7d7d22b3a3868085d3.sol(78)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |    mapping (address => uint256) balances;
    |    mapping (address => mapping (address => uint256)) allowed;
  > |    uint256 public totalSupply;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x8798f50078993c3d46be6f7d7d22b3a3868085d3.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x8798f50078993c3d46be6f7d7d22b3a3868085d3.sol(51)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x8798f50078993c3d46be6f7d7d22b3a3868085d3.sol(62)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8798f50078993c3d46be6f7d7d22b3a3868085d3.sol(73)

[33mWarning[0m for LockedEther in contract 'Token':
    |//Who am I?  My name is Zeaun Zarrieff, and I'm here to help.
    |
  > |contract Token {
    |
    |    /// @return total amount of tokens
  at /home/jiaming/mavs_srcs/contract@0x8798f50078993c3d46be6f7d7d22b3a3868085d3.sol(7)


