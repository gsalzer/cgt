Processing contract: /home/jiaming/mavs_srcs/contract@0xfd713821b52a5d5b3d4e20b63ad63ac09069dab5.sol:Gokey
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xfd713821b52a5d5b3d4e20b63ad63ac09069dab5.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xfd713821b52a5d5b3d4e20b63ad63ac09069dab5.sol:Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Gokey':
    |
    |
  > |contract Gokey is StandardToken {
    |
    |    function () {
  at /home/jiaming/mavs_srcs/contract@0xfd713821b52a5d5b3d4e20b63ad63ac09069dab5.sol(50)

[31mViolation[0m for MissingInputValidation in contract 'Gokey':
    |}
    |contract StandardToken is Token {
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
    |            balances[msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0xfd713821b52a5d5b3d4e20b63ad63ac09069dab5.sol(14)

[31mViolation[0m for MissingInputValidation in contract 'Gokey':
    |        } else { return false; }
    |    }
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0) {
    |            balances[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0xfd713821b52a5d5b3d4e20b63ad63ac09069dab5.sol(22)

[31mViolation[0m for MissingInputValidation in contract 'Gokey':
    |        } else { return false; }
    |    }
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfd713821b52a5d5b3d4e20b63ad63ac09069dab5.sol(31)

[31mViolation[0m for MissingInputValidation in contract 'Gokey':
    |        return balances[_owner];
    |    }
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xfd713821b52a5d5b3d4e20b63ad63ac09069dab5.sol(34)

[31mViolation[0m for MissingInputValidation in contract 'Gokey':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfd713821b52a5d5b3d4e20b63ad63ac09069dab5.sol(40)

[31mViolation[0m for MissingInputValidation in contract 'Gokey':
    |    }
    |
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xfd713821b52a5d5b3d4e20b63ad63ac09069dab5.sol(70)

[33mWarning[0m for MissingInputValidation in contract 'Gokey':
    |    mapping (address => uint256) balances;
    |    mapping (address => mapping (address => uint256)) allowed;
  > |    uint256 public totalSupply;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0xfd713821b52a5d5b3d4e20b63ad63ac09069dab5.sol(46)

[33mWarning[0m for MissingInputValidation in contract 'Gokey':
    |    }
    |
  > |    string public name;                   //fancy name: eg Simon Bucks
    |    uint8 public decimals;                //How many decimals to show. ie. There could 1000 base units with 3 decimals. Meaning 0.980 SBX = 980 base units. It's like comparing 1 wei to 1 ether.
    |    string public symbol;                 //An identifier: eg SBX
  at /home/jiaming/mavs_srcs/contract@0xfd713821b52a5d5b3d4e20b63ad63ac09069dab5.sol(56)

[33mWarning[0m for MissingInputValidation in contract 'Gokey':
    |
    |    string public name;                   //fancy name: eg Simon Bucks
  > |    uint8 public decimals;                //How many decimals to show. ie. There could 1000 base units with 3 decimals. Meaning 0.980 SBX = 980 base units. It's like comparing 1 wei to 1 ether.
    |    string public symbol;                 //An identifier: eg SBX
    |    string public version = 'H1.0';       //human 0.1 standard. Just an arbitrary versioning scheme.
  at /home/jiaming/mavs_srcs/contract@0xfd713821b52a5d5b3d4e20b63ad63ac09069dab5.sol(57)

[33mWarning[0m for MissingInputValidation in contract 'Gokey':
    |    string public name;                   //fancy name: eg Simon Bucks
    |    uint8 public decimals;                //How many decimals to show. ie. There could 1000 base units with 3 decimals. Meaning 0.980 SBX = 980 base units. It's like comparing 1 wei to 1 ether.
  > |    string public symbol;                 //An identifier: eg SBX
    |    string public version = 'H1.0';       //human 0.1 standard. Just an arbitrary versioning scheme.
    |
  at /home/jiaming/mavs_srcs/contract@0xfd713821b52a5d5b3d4e20b63ad63ac09069dab5.sol(58)

[33mWarning[0m for MissingInputValidation in contract 'Gokey':
    |    uint8 public decimals;                //How many decimals to show. ie. There could 1000 base units with 3 decimals. Meaning 0.980 SBX = 980 base units. It's like comparing 1 wei to 1 ether.
    |    string public symbol;                 //An identifier: eg SBX
  > |    string public version = 'H1.0';       //human 0.1 standard. Just an arbitrary versioning scheme.
    |
    |    function Gokey(
  at /home/jiaming/mavs_srcs/contract@0xfd713821b52a5d5b3d4e20b63ad63ac09069dab5.sol(59)

[33mWarning[0m for UnhandledException in contract 'Gokey':
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  > |        if(!_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) { throw; }
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfd713821b52a5d5b3d4e20b63ad63ac09069dab5.sol(73)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Gokey':
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  > |        if(!_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) { throw; }
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfd713821b52a5d5b3d4e20b63ad63ac09069dab5.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'Gokey':
    |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xfd713821b52a5d5b3d4e20b63ad63ac09069dab5.sol(16)

[33mWarning[0m for UnrestrictedWrite in contract 'Gokey':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xfd713821b52a5d5b3d4e20b63ad63ac09069dab5.sol(26)

[33mWarning[0m for UnrestrictedWrite in contract 'Gokey':
    |    }
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xfd713821b52a5d5b3d4e20b63ad63ac09069dab5.sol(35)

[33mWarning[0m for UnrestrictedWrite in contract 'Gokey':
    |
    |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        if(!_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) { throw; }
  at /home/jiaming/mavs_srcs/contract@0xfd713821b52a5d5b3d4e20b63ad63ac09069dab5.sol(71)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |    event Approval(address indexed _owner, address indexed _spender, uint256 _value);
    |}
  > |contract StandardToken is Token {
    |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
  at /home/jiaming/mavs_srcs/contract@0xfd713821b52a5d5b3d4e20b63ad63ac09069dab5.sol(13)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |}
    |contract StandardToken is Token {
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
    |            balances[msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0xfd713821b52a5d5b3d4e20b63ad63ac09069dab5.sol(14)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |        } else { return false; }
    |    }
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0) {
    |            balances[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0xfd713821b52a5d5b3d4e20b63ad63ac09069dab5.sol(22)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |        } else { return false; }
    |    }
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfd713821b52a5d5b3d4e20b63ad63ac09069dab5.sol(31)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |        return balances[_owner];
    |    }
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xfd713821b52a5d5b3d4e20b63ad63ac09069dab5.sol(34)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfd713821b52a5d5b3d4e20b63ad63ac09069dab5.sol(40)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |    mapping (address => uint256) balances;
    |    mapping (address => mapping (address => uint256)) allowed;
  > |    uint256 public totalSupply;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0xfd713821b52a5d5b3d4e20b63ad63ac09069dab5.sol(46)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xfd713821b52a5d5b3d4e20b63ad63ac09069dab5.sol(16)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xfd713821b52a5d5b3d4e20b63ad63ac09069dab5.sol(26)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    }
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xfd713821b52a5d5b3d4e20b63ad63ac09069dab5.sol(35)

[33mWarning[0m for LockedEther in contract 'Token':
    |pragma solidity ^0.4.19;
    |
  > |contract Token {
    |    function totalSupply() constant returns (uint256 supply) {}
    |    function balanceOf(address _owner) constant returns (uint256 balance) {}
  at /home/jiaming/mavs_srcs/contract@0xfd713821b52a5d5b3d4e20b63ad63ac09069dab5.sol(3)


