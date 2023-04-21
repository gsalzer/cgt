Processing contract: /home/jiaming/mavs_srcs/contract@0x9853cab6a12cfaa586fc643badc575e1231c7134.sol:MasterMindAlliance
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9853cab6a12cfaa586fc643badc575e1231c7134.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9853cab6a12cfaa586fc643badc575e1231c7134.sol:Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'MasterMindAlliance':
    |}
    |
  > |contract MasterMindAlliance is StandardToken { 
    |
    |    /* Public variables of the token */
  at /home/jiaming/mavs_srcs/contract@0x9853cab6a12cfaa586fc643badc575e1231c7134.sol(87)

[31mViolation[0m for MissingInputValidation in contract 'MasterMindAlliance':
    |contract StandardToken is Token {
    |
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        //Default assumes totalSupply can't be over max (2^256 - 1).
    |        //If your token leaves out totalSupply and can issue more tokens as time goes on, you need to check if it doesn't wrap.
  at /home/jiaming/mavs_srcs/contract@0x9853cab6a12cfaa586fc643badc575e1231c7134.sol(43)

[31mViolation[0m for MissingInputValidation in contract 'MasterMindAlliance':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        //same as above. Replace this line with the following if you want to protect against wrapping uints.
    |        //if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
  at /home/jiaming/mavs_srcs/contract@0x9853cab6a12cfaa586fc643badc575e1231c7134.sol(56)

[31mViolation[0m for MissingInputValidation in contract 'MasterMindAlliance':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9853cab6a12cfaa586fc643badc575e1231c7134.sol(68)

[31mViolation[0m for MissingInputValidation in contract 'MasterMindAlliance':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x9853cab6a12cfaa586fc643badc575e1231c7134.sol(72)

[31mViolation[0m for MissingInputValidation in contract 'MasterMindAlliance':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9853cab6a12cfaa586fc643badc575e1231c7134.sol(78)

[31mViolation[0m for MissingInputValidation in contract 'MasterMindAlliance':
    |
    |    /* Approves and then calls the receiving contract */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x9853cab6a12cfaa586fc643badc575e1231c7134.sol(125)

[33mWarning[0m for MissingInputValidation in contract 'MasterMindAlliance':
    |    mapping (address => uint256) balances;
    |    mapping (address => mapping (address => uint256)) allowed;
  > |    uint256 public totalSupply;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x9853cab6a12cfaa586fc643badc575e1231c7134.sol(84)

[33mWarning[0m for MissingInputValidation in contract 'MasterMindAlliance':
    |    /* Public variables of the token */
    |
  > |    string public name;
    |    uint8 public decimals;
    |    string public symbol;
  at /home/jiaming/mavs_srcs/contract@0x9853cab6a12cfaa586fc643badc575e1231c7134.sol(91)

[33mWarning[0m for MissingInputValidation in contract 'MasterMindAlliance':
    |
    |    string public name;
  > |    uint8 public decimals;
    |    string public symbol;
    |    string public version = 'H1.0'; 
  at /home/jiaming/mavs_srcs/contract@0x9853cab6a12cfaa586fc643badc575e1231c7134.sol(92)

[33mWarning[0m for MissingInputValidation in contract 'MasterMindAlliance':
    |    string public name;
    |    uint8 public decimals;
  > |    string public symbol;
    |    string public version = 'H1.0'; 
    |    uint256 public unitsOneEthCanBuy;
  at /home/jiaming/mavs_srcs/contract@0x9853cab6a12cfaa586fc643badc575e1231c7134.sol(93)

[33mWarning[0m for MissingInputValidation in contract 'MasterMindAlliance':
    |    uint8 public decimals;
    |    string public symbol;
  > |    string public version = 'H1.0'; 
    |    uint256 public unitsOneEthCanBuy;
    |    uint256 public totalEthInWei; 
  at /home/jiaming/mavs_srcs/contract@0x9853cab6a12cfaa586fc643badc575e1231c7134.sol(94)

[33mWarning[0m for MissingInputValidation in contract 'MasterMindAlliance':
    |    string public symbol;
    |    string public version = 'H1.0'; 
  > |    uint256 public unitsOneEthCanBuy;
    |    uint256 public totalEthInWei; 
    |    address public fundsWallet;
  at /home/jiaming/mavs_srcs/contract@0x9853cab6a12cfaa586fc643badc575e1231c7134.sol(95)

[33mWarning[0m for MissingInputValidation in contract 'MasterMindAlliance':
    |    string public version = 'H1.0'; 
    |    uint256 public unitsOneEthCanBuy;
  > |    uint256 public totalEthInWei; 
    |    address public fundsWallet;
    |
  at /home/jiaming/mavs_srcs/contract@0x9853cab6a12cfaa586fc643badc575e1231c7134.sol(96)

[33mWarning[0m for MissingInputValidation in contract 'MasterMindAlliance':
    |    uint256 public unitsOneEthCanBuy;
    |    uint256 public totalEthInWei; 
  > |    address public fundsWallet;
    |
    |    //constructor function 
  at /home/jiaming/mavs_srcs/contract@0x9853cab6a12cfaa586fc643badc575e1231c7134.sol(97)

[33mWarning[0m for UnhandledException in contract 'MasterMindAlliance':
    |        //receiveApproval(address _from, uint256 _value, address _tokenContract, bytes _extraData)
    |        //it is assumed that when does this that the call *should* succeed, otherwise one would use vanilla approve instead.
  > |        if(!_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) { throw; }
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9853cab6a12cfaa586fc643badc575e1231c7134.sol(132)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MasterMindAlliance':
    |        //receiveApproval(address _from, uint256 _value, address _tokenContract, bytes _extraData)
    |        //it is assumed that when does this that the call *should* succeed, otherwise one would use vanilla approve instead.
  > |        if(!_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) { throw; }
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9853cab6a12cfaa586fc643badc575e1231c7134.sol(132)

[33mWarning[0m for UnrestrictedWrite in contract 'MasterMindAlliance':
    |        //if (balances[msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x9853cab6a12cfaa586fc643badc575e1231c7134.sol(49)

[33mWarning[0m for UnrestrictedWrite in contract 'MasterMindAlliance':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x9853cab6a12cfaa586fc643badc575e1231c7134.sol(62)

[33mWarning[0m for UnrestrictedWrite in contract 'MasterMindAlliance':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x9853cab6a12cfaa586fc643badc575e1231c7134.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'MasterMindAlliance':
    |    /* Approves and then calls the receiving contract */
    |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |
  at /home/jiaming/mavs_srcs/contract@0x9853cab6a12cfaa586fc643badc575e1231c7134.sol(126)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is Token {
    |
    |    function transfer(address _to, uint256 _value) returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x9853cab6a12cfaa586fc643badc575e1231c7134.sol(41)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |contract StandardToken is Token {
    |
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        //Default assumes totalSupply can't be over max (2^256 - 1).
    |        //If your token leaves out totalSupply and can issue more tokens as time goes on, you need to check if it doesn't wrap.
  at /home/jiaming/mavs_srcs/contract@0x9853cab6a12cfaa586fc643badc575e1231c7134.sol(43)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        //same as above. Replace this line with the following if you want to protect against wrapping uints.
    |        //if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
  at /home/jiaming/mavs_srcs/contract@0x9853cab6a12cfaa586fc643badc575e1231c7134.sol(56)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9853cab6a12cfaa586fc643badc575e1231c7134.sol(68)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x9853cab6a12cfaa586fc643badc575e1231c7134.sol(72)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9853cab6a12cfaa586fc643badc575e1231c7134.sol(78)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |    mapping (address => uint256) balances;
    |    mapping (address => mapping (address => uint256)) allowed;
  > |    uint256 public totalSupply;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x9853cab6a12cfaa586fc643badc575e1231c7134.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        //if (balances[msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x9853cab6a12cfaa586fc643badc575e1231c7134.sol(49)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x9853cab6a12cfaa586fc643badc575e1231c7134.sol(62)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x9853cab6a12cfaa586fc643badc575e1231c7134.sol(73)

[33mWarning[0m for LockedEther in contract 'Token':
    |pragma solidity ^0.4.4;
    |
  > |contract Token {
    |
    |    /// @return total amount of tokens
  at /home/jiaming/mavs_srcs/contract@0x9853cab6a12cfaa586fc643badc575e1231c7134.sol(3)


