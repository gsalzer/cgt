Processing contract: /home/jiaming/mavs_srcs/contract@0x0b7c723afbd859a2b9eebb7a0b674ab38d79c027.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0b7c723afbd859a2b9eebb7a0b674ab38d79c027.sol:Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0b7c723afbd859a2b9eebb7a0b674ab38d79c027.sol:nibbl
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
  at /home/jiaming/mavs_srcs/contract@0x0b7c723afbd859a2b9eebb7a0b674ab38d79c027.sol(22)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |contract StandardToken is Token {
    |
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |
    |        if (balances[msg.sender] >= _value && _value > 0) {
  at /home/jiaming/mavs_srcs/contract@0x0b7c723afbd859a2b9eebb7a0b674ab38d79c027.sol(24)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0) {
    |            balances[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x0b7c723afbd859a2b9eebb7a0b674ab38d79c027.sol(34)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0b7c723afbd859a2b9eebb7a0b674ab38d79c027.sol(44)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x0b7c723afbd859a2b9eebb7a0b674ab38d79c027.sol(48)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |        return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0b7c723afbd859a2b9eebb7a0b674ab38d79c027.sol(54)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |    mapping (address => uint256) balances;
    |    mapping (address => mapping (address => uint256)) allowed;
  > |    uint256 public totalSupply;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x0b7c723afbd859a2b9eebb7a0b674ab38d79c027.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x0b7c723afbd859a2b9eebb7a0b674ab38d79c027.sol(27)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x0b7c723afbd859a2b9eebb7a0b674ab38d79c027.sol(38)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x0b7c723afbd859a2b9eebb7a0b674ab38d79c027.sol(49)

[33mWarning[0m for LockedEther in contract 'Token':
    |pragma solidity ^0.4.19;
    |
  > |contract Token {
    |
    |    function totalSupply() constant returns (uint256 supply) {}
  at /home/jiaming/mavs_srcs/contract@0x0b7c723afbd859a2b9eebb7a0b674ab38d79c027.sol(3)

[33mWarning[0m for LockedEther in contract 'nibbl':
    |}
    |
  > |contract nibbl is StandardToken {
    |
    |    string public name;
  at /home/jiaming/mavs_srcs/contract@0x0b7c723afbd859a2b9eebb7a0b674ab38d79c027.sol(63)

[31mViolation[0m for MissingInputValidation in contract 'nibbl':
    |contract StandardToken is Token {
    |
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |
    |        if (balances[msg.sender] >= _value && _value > 0) {
  at /home/jiaming/mavs_srcs/contract@0x0b7c723afbd859a2b9eebb7a0b674ab38d79c027.sol(24)

[31mViolation[0m for MissingInputValidation in contract 'nibbl':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0) {
    |            balances[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x0b7c723afbd859a2b9eebb7a0b674ab38d79c027.sol(34)

[31mViolation[0m for MissingInputValidation in contract 'nibbl':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0b7c723afbd859a2b9eebb7a0b674ab38d79c027.sol(44)

[31mViolation[0m for MissingInputValidation in contract 'nibbl':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x0b7c723afbd859a2b9eebb7a0b674ab38d79c027.sol(48)

[31mViolation[0m for MissingInputValidation in contract 'nibbl':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |        return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0b7c723afbd859a2b9eebb7a0b674ab38d79c027.sol(54)

[31mViolation[0m for MissingInputValidation in contract 'nibbl':
    |    }
    |
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x0b7c723afbd859a2b9eebb7a0b674ab38d79c027.sol(98)

[33mWarning[0m for MissingInputValidation in contract 'nibbl':
    |    mapping (address => uint256) balances;
    |    mapping (address => mapping (address => uint256)) allowed;
  > |    uint256 public totalSupply;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x0b7c723afbd859a2b9eebb7a0b674ab38d79c027.sol(60)

[33mWarning[0m for MissingInputValidation in contract 'nibbl':
    |contract nibbl is StandardToken {
    |
  > |    string public name;
    |    uint8 public decimals;
    |    string public symbol;
  at /home/jiaming/mavs_srcs/contract@0x0b7c723afbd859a2b9eebb7a0b674ab38d79c027.sol(65)

[33mWarning[0m for MissingInputValidation in contract 'nibbl':
    |
    |    string public name;
  > |    uint8 public decimals;
    |    string public symbol;
    |    string public version = 'H1.0';
  at /home/jiaming/mavs_srcs/contract@0x0b7c723afbd859a2b9eebb7a0b674ab38d79c027.sol(66)

[33mWarning[0m for MissingInputValidation in contract 'nibbl':
    |    string public name;
    |    uint8 public decimals;
  > |    string public symbol;
    |    string public version = 'H1.0';
    |    uint256 public unitsOneEthCanBuy;
  at /home/jiaming/mavs_srcs/contract@0x0b7c723afbd859a2b9eebb7a0b674ab38d79c027.sol(67)

[33mWarning[0m for MissingInputValidation in contract 'nibbl':
    |    uint8 public decimals;
    |    string public symbol;
  > |    string public version = 'H1.0';
    |    uint256 public unitsOneEthCanBuy;
    |    uint256 public totalEthInWei;
  at /home/jiaming/mavs_srcs/contract@0x0b7c723afbd859a2b9eebb7a0b674ab38d79c027.sol(68)

[33mWarning[0m for MissingInputValidation in contract 'nibbl':
    |    string public symbol;
    |    string public version = 'H1.0';
  > |    uint256 public unitsOneEthCanBuy;
    |    uint256 public totalEthInWei;
    |    address public fundsWallet;
  at /home/jiaming/mavs_srcs/contract@0x0b7c723afbd859a2b9eebb7a0b674ab38d79c027.sol(69)

[33mWarning[0m for MissingInputValidation in contract 'nibbl':
    |    string public version = 'H1.0';
    |    uint256 public unitsOneEthCanBuy;
  > |    uint256 public totalEthInWei;
    |    address public fundsWallet;
    |
  at /home/jiaming/mavs_srcs/contract@0x0b7c723afbd859a2b9eebb7a0b674ab38d79c027.sol(70)

[33mWarning[0m for MissingInputValidation in contract 'nibbl':
    |    uint256 public unitsOneEthCanBuy;
    |    uint256 public totalEthInWei;
  > |    address public fundsWallet;
    |
    |    function nibbl() {
  at /home/jiaming/mavs_srcs/contract@0x0b7c723afbd859a2b9eebb7a0b674ab38d79c027.sol(71)

[33mWarning[0m for UnhandledException in contract 'nibbl':
    |        Approval(msg.sender, _spender, _value);
    |
  > |        if(!_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) { throw; }
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0b7c723afbd859a2b9eebb7a0b674ab38d79c027.sol(102)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'nibbl':
    |        Approval(msg.sender, _spender, _value);
    |
  > |        if(!_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) { throw; }
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0b7c723afbd859a2b9eebb7a0b674ab38d79c027.sol(102)

[33mWarning[0m for UnrestrictedWrite in contract 'nibbl':
    |
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x0b7c723afbd859a2b9eebb7a0b674ab38d79c027.sol(27)

[33mWarning[0m for UnrestrictedWrite in contract 'nibbl':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x0b7c723afbd859a2b9eebb7a0b674ab38d79c027.sol(38)

[33mWarning[0m for UnrestrictedWrite in contract 'nibbl':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x0b7c723afbd859a2b9eebb7a0b674ab38d79c027.sol(49)

[33mWarning[0m for UnrestrictedWrite in contract 'nibbl':
    |
    |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |
  at /home/jiaming/mavs_srcs/contract@0x0b7c723afbd859a2b9eebb7a0b674ab38d79c027.sol(99)


