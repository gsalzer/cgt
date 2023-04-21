Processing contract: /home/jiaming/mavs_srcs/contract@0x594bf6fa5d53e09ae8065d397c08bfa9017adcc9.sol:Cuffcoin
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x594bf6fa5d53e09ae8065d397c08bfa9017adcc9.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x594bf6fa5d53e09ae8065d397c08bfa9017adcc9.sol:Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Cuffcoin':
    |}
    |
  > |contract Cuffcoin is StandardToken {
    |
    |    function () {
  at /home/jiaming/mavs_srcs/contract@0x594bf6fa5d53e09ae8065d397c08bfa9017adcc9.sol(81)

[31mViolation[0m for MissingInputValidation in contract 'Cuffcoin':
    |contract StandardToken is Token {
    |
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
    |            balances[msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x594bf6fa5d53e09ae8065d397c08bfa9017adcc9.sol(43)

[31mViolation[0m for MissingInputValidation in contract 'Cuffcoin':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0) {
    |            balances[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x594bf6fa5d53e09ae8065d397c08bfa9017adcc9.sol(52)

[31mViolation[0m for MissingInputValidation in contract 'Cuffcoin':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x594bf6fa5d53e09ae8065d397c08bfa9017adcc9.sol(62)

[31mViolation[0m for MissingInputValidation in contract 'Cuffcoin':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x594bf6fa5d53e09ae8065d397c08bfa9017adcc9.sol(66)

[31mViolation[0m for MissingInputValidation in contract 'Cuffcoin':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x594bf6fa5d53e09ae8065d397c08bfa9017adcc9.sol(72)

[31mViolation[0m for MissingInputValidation in contract 'Cuffcoin':
    |
    |    /* Approves and then calls the receiving contract */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x594bf6fa5d53e09ae8065d397c08bfa9017adcc9.sol(105)

[33mWarning[0m for MissingInputValidation in contract 'Cuffcoin':
    |    mapping (address => uint256) balances;
    |    mapping (address => mapping (address => uint256)) allowed;
  > |    uint256 public totalSupply;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x594bf6fa5d53e09ae8065d397c08bfa9017adcc9.sol(78)

[33mWarning[0m for MissingInputValidation in contract 'Cuffcoin':
    |    /* Public variables of the token */
    |
  > |    string public name;
    |    uint8 public decimals;
    |    string public symbol;
  at /home/jiaming/mavs_srcs/contract@0x594bf6fa5d53e09ae8065d397c08bfa9017adcc9.sol(90)

[33mWarning[0m for MissingInputValidation in contract 'Cuffcoin':
    |
    |    string public name;
  > |    uint8 public decimals;
    |    string public symbol;
    |    string public version = 'H1.0';
  at /home/jiaming/mavs_srcs/contract@0x594bf6fa5d53e09ae8065d397c08bfa9017adcc9.sol(91)

[33mWarning[0m for MissingInputValidation in contract 'Cuffcoin':
    |    string public name;
    |    uint8 public decimals;
  > |    string public symbol;
    |    string public version = 'H1.0';
    |
  at /home/jiaming/mavs_srcs/contract@0x594bf6fa5d53e09ae8065d397c08bfa9017adcc9.sol(92)

[33mWarning[0m for MissingInputValidation in contract 'Cuffcoin':
    |    uint8 public decimals;
    |    string public symbol;
  > |    string public version = 'H1.0';
    |
    |    function Cuffcoin(
  at /home/jiaming/mavs_srcs/contract@0x594bf6fa5d53e09ae8065d397c08bfa9017adcc9.sol(93)

[33mWarning[0m for UnhandledException in contract 'Cuffcoin':
    |        //receiveApproval(address _from, uint256 _value, address _tokenContract, bytes _extraData)
    |        //it is assumed that when does this that the call *should* succeed, otherwise one would use vanilla approve instead.
  > |        if(!_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) { throw; }
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x594bf6fa5d53e09ae8065d397c08bfa9017adcc9.sol(112)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Cuffcoin':
    |        //receiveApproval(address _from, uint256 _value, address _tokenContract, bytes _extraData)
    |        //it is assumed that when does this that the call *should* succeed, otherwise one would use vanilla approve instead.
  > |        if(!_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) { throw; }
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x594bf6fa5d53e09ae8065d397c08bfa9017adcc9.sol(112)

[33mWarning[0m for UnrestrictedWrite in contract 'Cuffcoin':
    |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x594bf6fa5d53e09ae8065d397c08bfa9017adcc9.sol(45)

[33mWarning[0m for UnrestrictedWrite in contract 'Cuffcoin':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x594bf6fa5d53e09ae8065d397c08bfa9017adcc9.sol(56)

[33mWarning[0m for UnrestrictedWrite in contract 'Cuffcoin':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x594bf6fa5d53e09ae8065d397c08bfa9017adcc9.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'Cuffcoin':
    |    /* Approves and then calls the receiving contract */
    |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |
  at /home/jiaming/mavs_srcs/contract@0x594bf6fa5d53e09ae8065d397c08bfa9017adcc9.sol(106)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is Token {
    |
    |    function transfer(address _to, uint256 _value) returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x594bf6fa5d53e09ae8065d397c08bfa9017adcc9.sol(41)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |contract StandardToken is Token {
    |
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
    |            balances[msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x594bf6fa5d53e09ae8065d397c08bfa9017adcc9.sol(43)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0) {
    |            balances[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x594bf6fa5d53e09ae8065d397c08bfa9017adcc9.sol(52)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x594bf6fa5d53e09ae8065d397c08bfa9017adcc9.sol(62)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x594bf6fa5d53e09ae8065d397c08bfa9017adcc9.sol(66)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x594bf6fa5d53e09ae8065d397c08bfa9017adcc9.sol(72)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |    mapping (address => uint256) balances;
    |    mapping (address => mapping (address => uint256)) allowed;
  > |    uint256 public totalSupply;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x594bf6fa5d53e09ae8065d397c08bfa9017adcc9.sol(78)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x594bf6fa5d53e09ae8065d397c08bfa9017adcc9.sol(45)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x594bf6fa5d53e09ae8065d397c08bfa9017adcc9.sol(56)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x594bf6fa5d53e09ae8065d397c08bfa9017adcc9.sol(67)

[33mWarning[0m for LockedEther in contract 'Token':
    |pragma solidity ^0.4.4;
    |
  > |contract Token {
    |
    |    /// @return total amount of tokens
  at /home/jiaming/mavs_srcs/contract@0x594bf6fa5d53e09ae8065d397c08bfa9017adcc9.sol(3)


