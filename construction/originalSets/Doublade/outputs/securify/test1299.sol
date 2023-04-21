Processing contract: /home/jiaming/mavs_srcs/contract@0x51a1421116f4d35d2952343b9dd66b3371e48b64.sol:MCTOKEN
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x51a1421116f4d35d2952343b9dd66b3371e48b64.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x51a1421116f4d35d2952343b9dd66b3371e48b64.sol:Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'MCTOKEN':
    |}
    |
  > |contract MCTOKEN is StandardToken {
    |
    |    function () {
  at /home/jiaming/mavs_srcs/contract@0x51a1421116f4d35d2952343b9dd66b3371e48b64.sol(57)

[31mViolation[0m for MissingInputValidation in contract 'MCTOKEN':
    |contract StandardToken is Token {
    |
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |     
    |        if (balances[msg.sender] >= _value && _value > 0) {
  at /home/jiaming/mavs_srcs/contract@0x51a1421116f4d35d2952343b9dd66b3371e48b64.sol(17)

[31mViolation[0m for MissingInputValidation in contract 'MCTOKEN':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |
    |        if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0) {
  at /home/jiaming/mavs_srcs/contract@0x51a1421116f4d35d2952343b9dd66b3371e48b64.sol(27)

[31mViolation[0m for MissingInputValidation in contract 'MCTOKEN':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x51a1421116f4d35d2952343b9dd66b3371e48b64.sol(38)

[31mViolation[0m for MissingInputValidation in contract 'MCTOKEN':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x51a1421116f4d35d2952343b9dd66b3371e48b64.sol(42)

[31mViolation[0m for MissingInputValidation in contract 'MCTOKEN':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x51a1421116f4d35d2952343b9dd66b3371e48b64.sol(48)

[31mViolation[0m for MissingInputValidation in contract 'MCTOKEN':
    |    }
    |
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x51a1421116f4d35d2952343b9dd66b3371e48b64.sol(79)

[33mWarning[0m for MissingInputValidation in contract 'MCTOKEN':
    |    mapping (address => uint256) balances;
    |    mapping (address => mapping (address => uint256)) allowed;
  > |    uint256 public totalSupply;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x51a1421116f4d35d2952343b9dd66b3371e48b64.sol(54)

[33mWarning[0m for MissingInputValidation in contract 'MCTOKEN':
    |
    |
  > |    string public name;                   //fancy name: eg Simon Bucks
    |    uint8 public decimals;                //How many decimals to show. ie. There could 1000 base units with 3 decimals. Meaning 0.980 SBX = 980 base units. It's like comparing 1 wei to 1 ether.
    |    string public symbol;                 //An identifier: eg SBX
  at /home/jiaming/mavs_srcs/contract@0x51a1421116f4d35d2952343b9dd66b3371e48b64.sol(64)

[33mWarning[0m for MissingInputValidation in contract 'MCTOKEN':
    |
    |    string public name;                   //fancy name: eg Simon Bucks
  > |    uint8 public decimals;                //How many decimals to show. ie. There could 1000 base units with 3 decimals. Meaning 0.980 SBX = 980 base units. It's like comparing 1 wei to 1 ether.
    |    string public symbol;                 //An identifier: eg SBX
    |    string public version = 'H1.0';       //human 0.1 standard. Just an arbitrary versioning scheme.
  at /home/jiaming/mavs_srcs/contract@0x51a1421116f4d35d2952343b9dd66b3371e48b64.sol(65)

[33mWarning[0m for MissingInputValidation in contract 'MCTOKEN':
    |    string public name;                   //fancy name: eg Simon Bucks
    |    uint8 public decimals;                //How many decimals to show. ie. There could 1000 base units with 3 decimals. Meaning 0.980 SBX = 980 base units. It's like comparing 1 wei to 1 ether.
  > |    string public symbol;                 //An identifier: eg SBX
    |    string public version = 'H1.0';       //human 0.1 standard. Just an arbitrary versioning scheme.
    |
  at /home/jiaming/mavs_srcs/contract@0x51a1421116f4d35d2952343b9dd66b3371e48b64.sol(66)

[33mWarning[0m for MissingInputValidation in contract 'MCTOKEN':
    |    uint8 public decimals;                //How many decimals to show. ie. There could 1000 base units with 3 decimals. Meaning 0.980 SBX = 980 base units. It's like comparing 1 wei to 1 ether.
    |    string public symbol;                 //An identifier: eg SBX
  > |    string public version = 'H1.0';       //human 0.1 standard. Just an arbitrary versioning scheme.
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x51a1421116f4d35d2952343b9dd66b3371e48b64.sol(67)

[33mWarning[0m for UnhandledException in contract 'MCTOKEN':
    |        Approval(msg.sender, _spender, _value);
    |
  > |        if(!_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) { throw; }
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x51a1421116f4d35d2952343b9dd66b3371e48b64.sol(83)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MCTOKEN':
    |        Approval(msg.sender, _spender, _value);
    |
  > |        if(!_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) { throw; }
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x51a1421116f4d35d2952343b9dd66b3371e48b64.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'MCTOKEN':
    |     
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x51a1421116f4d35d2952343b9dd66b3371e48b64.sol(20)

[33mWarning[0m for UnrestrictedWrite in contract 'MCTOKEN':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x51a1421116f4d35d2952343b9dd66b3371e48b64.sol(32)

[33mWarning[0m for UnrestrictedWrite in contract 'MCTOKEN':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x51a1421116f4d35d2952343b9dd66b3371e48b64.sol(43)

[33mWarning[0m for UnrestrictedWrite in contract 'MCTOKEN':
    |
    |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |
  at /home/jiaming/mavs_srcs/contract@0x51a1421116f4d35d2952343b9dd66b3371e48b64.sol(80)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is Token {
    |
    |    function transfer(address _to, uint256 _value) returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x51a1421116f4d35d2952343b9dd66b3371e48b64.sol(15)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |contract StandardToken is Token {
    |
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |     
    |        if (balances[msg.sender] >= _value && _value > 0) {
  at /home/jiaming/mavs_srcs/contract@0x51a1421116f4d35d2952343b9dd66b3371e48b64.sol(17)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |
    |        if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0) {
  at /home/jiaming/mavs_srcs/contract@0x51a1421116f4d35d2952343b9dd66b3371e48b64.sol(27)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x51a1421116f4d35d2952343b9dd66b3371e48b64.sol(38)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x51a1421116f4d35d2952343b9dd66b3371e48b64.sol(42)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x51a1421116f4d35d2952343b9dd66b3371e48b64.sol(48)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |    mapping (address => uint256) balances;
    |    mapping (address => mapping (address => uint256)) allowed;
  > |    uint256 public totalSupply;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x51a1421116f4d35d2952343b9dd66b3371e48b64.sol(54)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |     
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x51a1421116f4d35d2952343b9dd66b3371e48b64.sol(20)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x51a1421116f4d35d2952343b9dd66b3371e48b64.sol(32)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x51a1421116f4d35d2952343b9dd66b3371e48b64.sol(43)

[33mWarning[0m for LockedEther in contract 'Token':
    |pragma solidity ^0.4.12;
    |
  > |contract Token {
    |
    |    function totalSupply() constant returns (uint256 supply) {}
  at /home/jiaming/mavs_srcs/contract@0x51a1421116f4d35d2952343b9dd66b3371e48b64.sol(3)


