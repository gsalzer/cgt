Processing contract: /home/jiaming/mavs_srcs/contract@0x927c06fa32caa8b24a5d89b6302eaad5269363a6.sol:Grimmjow8Token
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x927c06fa32caa8b24a5d89b6302eaad5269363a6.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x927c06fa32caa8b24a5d89b6302eaad5269363a6.sol:Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Grimmjow8Token':
    |
    |//name this contract whatever you'd like
  > |contract Grimmjow8Token is StandardToken {
    |
    |    function () public {
  at /home/jiaming/mavs_srcs/contract@0x927c06fa32caa8b24a5d89b6302eaad5269363a6.sol(89)

[31mViolation[0m for MissingInputValidation in contract 'Grimmjow8Token':
    |contract StandardToken is Token {
    |
  > |    function transfer(address _to, uint256 _value) public returns (bool success) {
    |        //Default assumes totalSupply can't be over max (2^256 - 1).
    |        //If your token leaves out totalSupply and can issue more tokens as time goes on, you need to check if it doesn't wrap.
  at /home/jiaming/mavs_srcs/contract@0x927c06fa32caa8b24a5d89b6302eaad5269363a6.sol(43)

[31mViolation[0m for MissingInputValidation in contract 'Grimmjow8Token':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        //same as above. Replace this line with the following if you want to protect against wrapping uints.
    |        //if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
  at /home/jiaming/mavs_srcs/contract@0x927c06fa32caa8b24a5d89b6302eaad5269363a6.sol(56)

[31mViolation[0m for MissingInputValidation in contract 'Grimmjow8Token':
    |    }
    | 
  > |    function balanceOf(address _owner) public constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x927c06fa32caa8b24a5d89b6302eaad5269363a6.sol(68)

[31mViolation[0m for MissingInputValidation in contract 'Grimmjow8Token':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) public returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x927c06fa32caa8b24a5d89b6302eaad5269363a6.sol(72)

[31mViolation[0m for MissingInputValidation in contract 'Grimmjow8Token':
    |    }
    |
  > |    function allowance(address _owner, address _spender) public constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x927c06fa32caa8b24a5d89b6302eaad5269363a6.sol(78)

[31mViolation[0m for MissingInputValidation in contract 'Grimmjow8Token':
    |
    |    /* Approves and then calls the receiving contract */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) public returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x927c06fa32caa8b24a5d89b6302eaad5269363a6.sol(121)

[33mWarning[0m for MissingInputValidation in contract 'Grimmjow8Token':
    |    mapping (address => uint256) balances;
    |    mapping (address => mapping (address => uint256)) allowed;
  > |    uint256 public totalSupply;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x927c06fa32caa8b24a5d89b6302eaad5269363a6.sol(84)

[33mWarning[0m for MissingInputValidation in contract 'Grimmjow8Token':
    |    Some wallets/interfaces might not even bother to look at this information.
    |    */
  > |    string public name;                   //fancy name: eg Simon Bucks
    |    uint8 public decimals;                //How many decimals to show. ie. There could 1000 base units with 3 decimals. Meaning 0.980 SBX = 980 base units. It's like comparing 1 wei to 1 ether.
    |    string public symbol;                 //An identifier: eg SBX
  at /home/jiaming/mavs_srcs/contract@0x927c06fa32caa8b24a5d89b6302eaad5269363a6.sol(104)

[33mWarning[0m for MissingInputValidation in contract 'Grimmjow8Token':
    |    */
    |    string public name;                   //fancy name: eg Simon Bucks
  > |    uint8 public decimals;                //How many decimals to show. ie. There could 1000 base units with 3 decimals. Meaning 0.980 SBX = 980 base units. It's like comparing 1 wei to 1 ether.
    |    string public symbol;                 //An identifier: eg SBX
    |    string public version = 'H1.0';       //human 0.1 standard. Just an arbitrary versioning scheme.
  at /home/jiaming/mavs_srcs/contract@0x927c06fa32caa8b24a5d89b6302eaad5269363a6.sol(105)

[33mWarning[0m for MissingInputValidation in contract 'Grimmjow8Token':
    |    string public name;                   //fancy name: eg Simon Bucks
    |    uint8 public decimals;                //How many decimals to show. ie. There could 1000 base units with 3 decimals. Meaning 0.980 SBX = 980 base units. It's like comparing 1 wei to 1 ether.
  > |    string public symbol;                 //An identifier: eg SBX
    |    string public version = 'H1.0';       //human 0.1 standard. Just an arbitrary versioning scheme.
    |
  at /home/jiaming/mavs_srcs/contract@0x927c06fa32caa8b24a5d89b6302eaad5269363a6.sol(106)

[33mWarning[0m for MissingInputValidation in contract 'Grimmjow8Token':
    |    uint8 public decimals;                //How many decimals to show. ie. There could 1000 base units with 3 decimals. Meaning 0.980 SBX = 980 base units. It's like comparing 1 wei to 1 ether.
    |    string public symbol;                 //An identifier: eg SBX
  > |    string public version = 'H1.0';       //human 0.1 standard. Just an arbitrary versioning scheme.
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x927c06fa32caa8b24a5d89b6302eaad5269363a6.sol(107)

[33mWarning[0m for UnhandledException in contract 'Grimmjow8Token':
    |        //receiveApproval(address _from, uint256 _value, address _tokenContract, bytes _extraData)
    |        //it is assumed that when does this that the call *should* succeed, otherwise one would use vanilla approve instead.
  > |        if(!_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) { throw; }
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x927c06fa32caa8b24a5d89b6302eaad5269363a6.sol(128)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Grimmjow8Token':
    |        //receiveApproval(address _from, uint256 _value, address _tokenContract, bytes _extraData)
    |        //it is assumed that when does this that the call *should* succeed, otherwise one would use vanilla approve instead.
  > |        if(!_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) { throw; }
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x927c06fa32caa8b24a5d89b6302eaad5269363a6.sol(128)

[33mWarning[0m for UnrestrictedWrite in contract 'Grimmjow8Token':
    |        //if (balances[msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x927c06fa32caa8b24a5d89b6302eaad5269363a6.sol(49)

[33mWarning[0m for UnrestrictedWrite in contract 'Grimmjow8Token':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x927c06fa32caa8b24a5d89b6302eaad5269363a6.sol(62)

[33mWarning[0m for UnrestrictedWrite in contract 'Grimmjow8Token':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x927c06fa32caa8b24a5d89b6302eaad5269363a6.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'Grimmjow8Token':
    |    /* Approves and then calls the receiving contract */
    |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |
  at /home/jiaming/mavs_srcs/contract@0x927c06fa32caa8b24a5d89b6302eaad5269363a6.sol(122)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |
    |
  > |contract StandardToken is Token {
    |
    |    function transfer(address _to, uint256 _value) public returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x927c06fa32caa8b24a5d89b6302eaad5269363a6.sol(41)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |contract StandardToken is Token {
    |
  > |    function transfer(address _to, uint256 _value) public returns (bool success) {
    |        //Default assumes totalSupply can't be over max (2^256 - 1).
    |        //If your token leaves out totalSupply and can issue more tokens as time goes on, you need to check if it doesn't wrap.
  at /home/jiaming/mavs_srcs/contract@0x927c06fa32caa8b24a5d89b6302eaad5269363a6.sol(43)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        //same as above. Replace this line with the following if you want to protect against wrapping uints.
    |        //if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
  at /home/jiaming/mavs_srcs/contract@0x927c06fa32caa8b24a5d89b6302eaad5269363a6.sol(56)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    | 
  > |    function balanceOf(address _owner) public constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x927c06fa32caa8b24a5d89b6302eaad5269363a6.sol(68)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) public returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x927c06fa32caa8b24a5d89b6302eaad5269363a6.sol(72)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) public constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x927c06fa32caa8b24a5d89b6302eaad5269363a6.sol(78)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |    mapping (address => uint256) balances;
    |    mapping (address => mapping (address => uint256)) allowed;
  > |    uint256 public totalSupply;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x927c06fa32caa8b24a5d89b6302eaad5269363a6.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        //if (balances[msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x927c06fa32caa8b24a5d89b6302eaad5269363a6.sol(49)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x927c06fa32caa8b24a5d89b6302eaad5269363a6.sol(62)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x927c06fa32caa8b24a5d89b6302eaad5269363a6.sol(73)

[33mWarning[0m for LockedEther in contract 'Token':
    |pragma solidity ^0.4.4;
    |
  > |contract Token {
    |
    |    /// @return total amount of tokens
  at /home/jiaming/mavs_srcs/contract@0x927c06fa32caa8b24a5d89b6302eaad5269363a6.sol(3)


