Processing contract: /home/jiaming/mavs_srcs/contract@0xa353d00fa6d940cb625045d74fef8406854dd0da.sol:DAKUToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa353d00fa6d940cb625045d74fef8406854dd0da.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa353d00fa6d940cb625045d74fef8406854dd0da.sol:Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'DAKUToken':
    |
    |//name this contract whatever you'd like
  > |contract DAKUToken is StandardToken {
    |
    |    function () {
  at /home/jiaming/mavs_srcs/contract@0xa353d00fa6d940cb625045d74fef8406854dd0da.sol(91)

[31mViolation[0m for MissingInputValidation in contract 'DAKUToken':
    |contract StandardToken is Token {
    |
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        //Default assumes totalSupply can't be over max (2^256 - 1).
    |        //If your token leaves out totalSupply and can issue more tokens as time goes on, you need to check if it doesn't wrap.
  at /home/jiaming/mavs_srcs/contract@0xa353d00fa6d940cb625045d74fef8406854dd0da.sol(45)

[31mViolation[0m for MissingInputValidation in contract 'DAKUToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        //same as above. Replace this line with the following if you want to protect against wrapping uints.
    |        //if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
  at /home/jiaming/mavs_srcs/contract@0xa353d00fa6d940cb625045d74fef8406854dd0da.sol(58)

[31mViolation[0m for MissingInputValidation in contract 'DAKUToken':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa353d00fa6d940cb625045d74fef8406854dd0da.sol(70)

[31mViolation[0m for MissingInputValidation in contract 'DAKUToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xa353d00fa6d940cb625045d74fef8406854dd0da.sol(74)

[31mViolation[0m for MissingInputValidation in contract 'DAKUToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa353d00fa6d940cb625045d74fef8406854dd0da.sol(80)

[31mViolation[0m for MissingInputValidation in contract 'DAKUToken':
    |
    |    /* Approves and then calls the receiving contract */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xa353d00fa6d940cb625045d74fef8406854dd0da.sol(127)

[33mWarning[0m for MissingInputValidation in contract 'DAKUToken':
    |    mapping (address => uint256) balances;
    |    mapping (address => mapping (address => uint256)) allowed;
  > |    uint256 public totalSupply;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0xa353d00fa6d940cb625045d74fef8406854dd0da.sol(86)

[33mWarning[0m for MissingInputValidation in contract 'DAKUToken':
    |    Some wallets/interfaces might not even bother to look at this information.
    |    */
  > |    string public name;                   //fancy name: eg Simon Bucks
    |    uint8 public decimals;                //How many decimals to show. ie. There could 1000 base units with 3 decimals. Meaning 0.980 SBX = 980 base units. It's like comparing 1 wei to 1 ether.
    |    string public symbol;                 //An identifier: eg SBX
  at /home/jiaming/mavs_srcs/contract@0xa353d00fa6d940cb625045d74fef8406854dd0da.sol(106)

[33mWarning[0m for MissingInputValidation in contract 'DAKUToken':
    |    */
    |    string public name;                   //fancy name: eg Simon Bucks
  > |    uint8 public decimals;                //How many decimals to show. ie. There could 1000 base units with 3 decimals. Meaning 0.980 SBX = 980 base units. It's like comparing 1 wei to 1 ether.
    |    string public symbol;                 //An identifier: eg SBX
    |    string public version = 'H1.0';       //human 0.1 standard. Just an arbitrary versioning scheme.
  at /home/jiaming/mavs_srcs/contract@0xa353d00fa6d940cb625045d74fef8406854dd0da.sol(107)

[33mWarning[0m for MissingInputValidation in contract 'DAKUToken':
    |    string public name;                   //fancy name: eg Simon Bucks
    |    uint8 public decimals;                //How many decimals to show. ie. There could 1000 base units with 3 decimals. Meaning 0.980 SBX = 980 base units. It's like comparing 1 wei to 1 ether.
  > |    string public symbol;                 //An identifier: eg SBX
    |    string public version = 'H1.0';       //human 0.1 standard. Just an arbitrary versioning scheme.
    |
  at /home/jiaming/mavs_srcs/contract@0xa353d00fa6d940cb625045d74fef8406854dd0da.sol(108)

[33mWarning[0m for MissingInputValidation in contract 'DAKUToken':
    |    uint8 public decimals;                //How many decimals to show. ie. There could 1000 base units with 3 decimals. Meaning 0.980 SBX = 980 base units. It's like comparing 1 wei to 1 ether.
    |    string public symbol;                 //An identifier: eg SBX
  > |    string public version = 'H1.0';       //human 0.1 standard. Just an arbitrary versioning scheme.
    |
    |//
  at /home/jiaming/mavs_srcs/contract@0xa353d00fa6d940cb625045d74fef8406854dd0da.sol(109)

[33mWarning[0m for UnhandledException in contract 'DAKUToken':
    |        //receiveApproval(address _from, uint256 _value, address _tokenContract, bytes _extraData)
    |        //it is assumed that when does this that the call *should* succeed, otherwise one would use vanilla approve instead.
  > |        if(!_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) { throw; }
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa353d00fa6d940cb625045d74fef8406854dd0da.sol(134)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DAKUToken':
    |        //receiveApproval(address _from, uint256 _value, address _tokenContract, bytes _extraData)
    |        //it is assumed that when does this that the call *should* succeed, otherwise one would use vanilla approve instead.
  > |        if(!_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) { throw; }
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa353d00fa6d940cb625045d74fef8406854dd0da.sol(134)

[31mViolation[0m for UnrestrictedWrite in contract 'DAKUToken':
    |        //if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
    |        if (balances[_from] >= _value && _value > 0) {
  > |            balances[_to] += _value;
    |            balances[_from] -= _value;
    |            //allowed[msg.sender][_from] -= _value;
  at /home/jiaming/mavs_srcs/contract@0xa353d00fa6d940cb625045d74fef8406854dd0da.sol(62)

[31mViolation[0m for UnrestrictedWrite in contract 'DAKUToken':
    |        if (balances[_from] >= _value && _value > 0) {
    |            balances[_to] += _value;
  > |            balances[_from] -= _value;
    |            //allowed[msg.sender][_from] -= _value;
    |            Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xa353d00fa6d940cb625045d74fef8406854dd0da.sol(63)

[33mWarning[0m for UnrestrictedWrite in contract 'DAKUToken':
    |        //if (balances[msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xa353d00fa6d940cb625045d74fef8406854dd0da.sol(51)

[33mWarning[0m for UnrestrictedWrite in contract 'DAKUToken':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xa353d00fa6d940cb625045d74fef8406854dd0da.sol(75)

[33mWarning[0m for UnrestrictedWrite in contract 'DAKUToken':
    |    /* Approves and then calls the receiving contract */
    |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |
  at /home/jiaming/mavs_srcs/contract@0xa353d00fa6d940cb625045d74fef8406854dd0da.sol(128)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |
    |
  > |contract StandardToken is Token {
    |
    |    function transfer(address _to, uint256 _value) returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0xa353d00fa6d940cb625045d74fef8406854dd0da.sol(43)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |contract StandardToken is Token {
    |
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        //Default assumes totalSupply can't be over max (2^256 - 1).
    |        //If your token leaves out totalSupply and can issue more tokens as time goes on, you need to check if it doesn't wrap.
  at /home/jiaming/mavs_srcs/contract@0xa353d00fa6d940cb625045d74fef8406854dd0da.sol(45)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        //same as above. Replace this line with the following if you want to protect against wrapping uints.
    |        //if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
  at /home/jiaming/mavs_srcs/contract@0xa353d00fa6d940cb625045d74fef8406854dd0da.sol(58)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa353d00fa6d940cb625045d74fef8406854dd0da.sol(70)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xa353d00fa6d940cb625045d74fef8406854dd0da.sol(74)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa353d00fa6d940cb625045d74fef8406854dd0da.sol(80)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |    mapping (address => uint256) balances;
    |    mapping (address => mapping (address => uint256)) allowed;
  > |    uint256 public totalSupply;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0xa353d00fa6d940cb625045d74fef8406854dd0da.sol(86)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |        //if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
    |        if (balances[_from] >= _value && _value > 0) {
  > |            balances[_to] += _value;
    |            balances[_from] -= _value;
    |            //allowed[msg.sender][_from] -= _value;
  at /home/jiaming/mavs_srcs/contract@0xa353d00fa6d940cb625045d74fef8406854dd0da.sol(62)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |        if (balances[_from] >= _value && _value > 0) {
    |            balances[_to] += _value;
  > |            balances[_from] -= _value;
    |            //allowed[msg.sender][_from] -= _value;
    |            Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xa353d00fa6d940cb625045d74fef8406854dd0da.sol(63)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        //if (balances[msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xa353d00fa6d940cb625045d74fef8406854dd0da.sol(51)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xa353d00fa6d940cb625045d74fef8406854dd0da.sol(75)

[33mWarning[0m for LockedEther in contract 'Token':
    |pragma solidity ^0.4.4;
    |
  > |contract Token {
    |
    |    /// @return total amount of tokens
  at /home/jiaming/mavs_srcs/contract@0xa353d00fa6d940cb625045d74fef8406854dd0da.sol(3)


