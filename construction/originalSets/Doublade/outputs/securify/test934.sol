Processing contract: /home/jiaming/mavs_srcs/contract@0x3b5f11dbac1476af17957c6e5991f21c826743dd.sol:BaconCoin
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3b5f11dbac1476af17957c6e5991f21c826743dd.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3b5f11dbac1476af17957c6e5991f21c826743dd.sol:Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BaconCoin':
    |
    |
  > |contract BaconCoin is StandardToken {
    |
    |	string public name = "BaconCoin";
  at /home/jiaming/mavs_srcs/contract@0x3b5f11dbac1476af17957c6e5991f21c826743dd.sol(89)

[31mViolation[0m for MissingInputValidation in contract 'BaconCoin':
    |contract StandardToken is Token {
    |
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        //Default assumes totalSupply can't be over max (2^256 - 1).
    |        //If your token leaves out totalSupply and can issue more tokens as time goes on, you need to check if it doesn't wrap.
  at /home/jiaming/mavs_srcs/contract@0x3b5f11dbac1476af17957c6e5991f21c826743dd.sol(44)

[31mViolation[0m for MissingInputValidation in contract 'BaconCoin':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        //same as above. Replace this line with the following if you want to protect against wrapping uints.
    |        //if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
  at /home/jiaming/mavs_srcs/contract@0x3b5f11dbac1476af17957c6e5991f21c826743dd.sol(57)

[31mViolation[0m for MissingInputValidation in contract 'BaconCoin':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3b5f11dbac1476af17957c6e5991f21c826743dd.sol(69)

[31mViolation[0m for MissingInputValidation in contract 'BaconCoin':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x3b5f11dbac1476af17957c6e5991f21c826743dd.sol(73)

[31mViolation[0m for MissingInputValidation in contract 'BaconCoin':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3b5f11dbac1476af17957c6e5991f21c826743dd.sol(79)

[31mViolation[0m for MissingInputValidation in contract 'BaconCoin':
    |
    |    /* Approves and then calls the receiving contract */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x3b5f11dbac1476af17957c6e5991f21c826743dd.sol(102)

[33mWarning[0m for MissingInputValidation in contract 'BaconCoin':
    |    mapping (address => uint256) balances;
    |    mapping (address => mapping (address => uint256)) allowed;
  > |    uint256 public totalSupply;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x3b5f11dbac1476af17957c6e5991f21c826743dd.sol(85)

[33mWarning[0m for MissingInputValidation in contract 'BaconCoin':
    |contract BaconCoin is StandardToken {
    |
  > |	string public name = "BaconCoin";
    |	string public symbol = "BAK";
    |	uint public decimals = 8;
  at /home/jiaming/mavs_srcs/contract@0x3b5f11dbac1476af17957c6e5991f21c826743dd.sol(91)

[33mWarning[0m for MissingInputValidation in contract 'BaconCoin':
    |
    |	string public name = "BaconCoin";
  > |	string public symbol = "BAK";
    |	uint public decimals = 8;
    |	uint public INITIAL_SUPPLY = 2200000000 * (10 ** decimals);
  at /home/jiaming/mavs_srcs/contract@0x3b5f11dbac1476af17957c6e5991f21c826743dd.sol(92)

[33mWarning[0m for MissingInputValidation in contract 'BaconCoin':
    |	string public name = "BaconCoin";
    |	string public symbol = "BAK";
  > |	uint public decimals = 8;
    |	uint public INITIAL_SUPPLY = 2200000000 * (10 ** decimals);
    |
  at /home/jiaming/mavs_srcs/contract@0x3b5f11dbac1476af17957c6e5991f21c826743dd.sol(93)

[33mWarning[0m for MissingInputValidation in contract 'BaconCoin':
    |	string public symbol = "BAK";
    |	uint public decimals = 8;
  > |	uint public INITIAL_SUPPLY = 2200000000 * (10 ** decimals);
    |
    |	function BaconCoin() public {
  at /home/jiaming/mavs_srcs/contract@0x3b5f11dbac1476af17957c6e5991f21c826743dd.sol(94)

[33mWarning[0m for UnhandledException in contract 'BaconCoin':
    |        //receiveApproval(address _from, uint256 _value, address _tokenContract, bytes _extraData)
    |        //it is assumed that when does this that the call *should* succeed, otherwise one would use vanilla approve instead.
  > |        if(!_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) { throw; }
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3b5f11dbac1476af17957c6e5991f21c826743dd.sol(109)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BaconCoin':
    |        //receiveApproval(address _from, uint256 _value, address _tokenContract, bytes _extraData)
    |        //it is assumed that when does this that the call *should* succeed, otherwise one would use vanilla approve instead.
  > |        if(!_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) { throw; }
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3b5f11dbac1476af17957c6e5991f21c826743dd.sol(109)

[33mWarning[0m for UnrestrictedWrite in contract 'BaconCoin':
    |        //if (balances[msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x3b5f11dbac1476af17957c6e5991f21c826743dd.sol(50)

[33mWarning[0m for UnrestrictedWrite in contract 'BaconCoin':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x3b5f11dbac1476af17957c6e5991f21c826743dd.sol(63)

[33mWarning[0m for UnrestrictedWrite in contract 'BaconCoin':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x3b5f11dbac1476af17957c6e5991f21c826743dd.sol(74)

[33mWarning[0m for UnrestrictedWrite in contract 'BaconCoin':
    |    /* Approves and then calls the receiving contract */
    |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |
  at /home/jiaming/mavs_srcs/contract@0x3b5f11dbac1476af17957c6e5991f21c826743dd.sol(103)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |
    |
  > |contract StandardToken is Token {
    |
    |    function transfer(address _to, uint256 _value) returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x3b5f11dbac1476af17957c6e5991f21c826743dd.sol(42)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |contract StandardToken is Token {
    |
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        //Default assumes totalSupply can't be over max (2^256 - 1).
    |        //If your token leaves out totalSupply and can issue more tokens as time goes on, you need to check if it doesn't wrap.
  at /home/jiaming/mavs_srcs/contract@0x3b5f11dbac1476af17957c6e5991f21c826743dd.sol(44)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        //same as above. Replace this line with the following if you want to protect against wrapping uints.
    |        //if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
  at /home/jiaming/mavs_srcs/contract@0x3b5f11dbac1476af17957c6e5991f21c826743dd.sol(57)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3b5f11dbac1476af17957c6e5991f21c826743dd.sol(69)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x3b5f11dbac1476af17957c6e5991f21c826743dd.sol(73)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3b5f11dbac1476af17957c6e5991f21c826743dd.sol(79)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |    mapping (address => uint256) balances;
    |    mapping (address => mapping (address => uint256)) allowed;
  > |    uint256 public totalSupply;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x3b5f11dbac1476af17957c6e5991f21c826743dd.sol(85)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        //if (balances[msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x3b5f11dbac1476af17957c6e5991f21c826743dd.sol(50)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x3b5f11dbac1476af17957c6e5991f21c826743dd.sol(63)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x3b5f11dbac1476af17957c6e5991f21c826743dd.sol(74)

[33mWarning[0m for LockedEther in contract 'Token':
    |pragma solidity ^0.4.8;
    |
  > |contract Token {
    |
    |    // @return total amount of tokens
  at /home/jiaming/mavs_srcs/contract@0x3b5f11dbac1476af17957c6e5991f21c826743dd.sol(3)


