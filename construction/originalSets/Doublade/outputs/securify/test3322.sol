Processing contract: /home/jiaming/mavs_srcs/contract@0xdaae9ad046a6166db07d6ba3a85bfc66a9e8ab07.sol:Aliencoin
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xdaae9ad046a6166db07d6ba3a85bfc66a9e8ab07.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xdaae9ad046a6166db07d6ba3a85bfc66a9e8ab07.sol:Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Aliencoin':
    |
    |
  > |contract Aliencoin is StandardToken {
    |
    |    function () {
  at /home/jiaming/mavs_srcs/contract@0xdaae9ad046a6166db07d6ba3a85bfc66a9e8ab07.sol(90)

[31mViolation[0m for MissingInputValidation in contract 'Aliencoin':
    |contract StandardToken is Token {
    |
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |       
    |        //Replace the if with this one instead.
  at /home/jiaming/mavs_srcs/contract@0xdaae9ad046a6166db07d6ba3a85bfc66a9e8ab07.sol(45)

[31mViolation[0m for MissingInputValidation in contract 'Aliencoin':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        //same as above. Replace this line with the following if you want to protect against wrapping uints.
    |        //if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
  at /home/jiaming/mavs_srcs/contract@0xdaae9ad046a6166db07d6ba3a85bfc66a9e8ab07.sol(57)

[31mViolation[0m for MissingInputValidation in contract 'Aliencoin':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdaae9ad046a6166db07d6ba3a85bfc66a9e8ab07.sol(69)

[31mViolation[0m for MissingInputValidation in contract 'Aliencoin':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xdaae9ad046a6166db07d6ba3a85bfc66a9e8ab07.sol(73)

[31mViolation[0m for MissingInputValidation in contract 'Aliencoin':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdaae9ad046a6166db07d6ba3a85bfc66a9e8ab07.sol(79)

[31mViolation[0m for MissingInputValidation in contract 'Aliencoin':
    |
    |    /* Approves and then calls the receiving contract */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xdaae9ad046a6166db07d6ba3a85bfc66a9e8ab07.sol(123)

[33mWarning[0m for MissingInputValidation in contract 'Aliencoin':
    |    mapping (address => uint256) balances;
    |    mapping (address => mapping (address => uint256)) allowed;
  > |    uint256 public totalSupply;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0xdaae9ad046a6166db07d6ba3a85bfc66a9e8ab07.sol(85)

[33mWarning[0m for MissingInputValidation in contract 'Aliencoin':
    |    Some wallets/interfaces might not even bother to look at this information.
    |    */
  > |    string public name;                   //fancy name: eg Simon Bucks
    |    uint8 public decimals;                //How many decimals to show. ie. There could 1000 base units with 3 decimals. Meaning 0.980 SBX = 980 base units. It's like comparing 1 wei to 1 ether.
    |    string public symbol;                 //An identifier: eg SBX
  at /home/jiaming/mavs_srcs/contract@0xdaae9ad046a6166db07d6ba3a85bfc66a9e8ab07.sol(105)

[33mWarning[0m for MissingInputValidation in contract 'Aliencoin':
    |    */
    |    string public name;                   //fancy name: eg Simon Bucks
  > |    uint8 public decimals;                //How many decimals to show. ie. There could 1000 base units with 3 decimals. Meaning 0.980 SBX = 980 base units. It's like comparing 1 wei to 1 ether.
    |    string public symbol;                 //An identifier: eg SBX
    |    string public version = 'H1.0';       //human 0.1 standard. Just an arbitrary versioning scheme.
  at /home/jiaming/mavs_srcs/contract@0xdaae9ad046a6166db07d6ba3a85bfc66a9e8ab07.sol(106)

[33mWarning[0m for MissingInputValidation in contract 'Aliencoin':
    |    string public name;                   //fancy name: eg Simon Bucks
    |    uint8 public decimals;                //How many decimals to show. ie. There could 1000 base units with 3 decimals. Meaning 0.980 SBX = 980 base units. It's like comparing 1 wei to 1 ether.
  > |    string public symbol;                 //An identifier: eg SBX
    |    string public version = 'H1.0';       //human 0.1 standard. Just an arbitrary versioning scheme.
    |
  at /home/jiaming/mavs_srcs/contract@0xdaae9ad046a6166db07d6ba3a85bfc66a9e8ab07.sol(107)

[33mWarning[0m for MissingInputValidation in contract 'Aliencoin':
    |    uint8 public decimals;                //How many decimals to show. ie. There could 1000 base units with 3 decimals. Meaning 0.980 SBX = 980 base units. It's like comparing 1 wei to 1 ether.
    |    string public symbol;                 //An identifier: eg SBX
  > |    string public version = 'H1.0';       //human 0.1 standard. Just an arbitrary versioning scheme.
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xdaae9ad046a6166db07d6ba3a85bfc66a9e8ab07.sol(108)

[33mWarning[0m for UnhandledException in contract 'Aliencoin':
    |        //receiveApproval(address _from, uint256 _value, address _tokenContract, bytes _extraData)
    |        //it is assumed that when does this that the call *should* succeed, otherwise one would use vanilla approve instead.
  > |        if(!_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) { throw; }
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdaae9ad046a6166db07d6ba3a85bfc66a9e8ab07.sol(130)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Aliencoin':
    |        //receiveApproval(address _from, uint256 _value, address _tokenContract, bytes _extraData)
    |        //it is assumed that when does this that the call *should* succeed, otherwise one would use vanilla approve instead.
  > |        if(!_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) { throw; }
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdaae9ad046a6166db07d6ba3a85bfc66a9e8ab07.sol(130)

[33mWarning[0m for UnrestrictedWrite in contract 'Aliencoin':
    |        //if (balances[msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xdaae9ad046a6166db07d6ba3a85bfc66a9e8ab07.sol(50)

[33mWarning[0m for UnrestrictedWrite in contract 'Aliencoin':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xdaae9ad046a6166db07d6ba3a85bfc66a9e8ab07.sol(63)

[33mWarning[0m for UnrestrictedWrite in contract 'Aliencoin':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xdaae9ad046a6166db07d6ba3a85bfc66a9e8ab07.sol(74)

[33mWarning[0m for UnrestrictedWrite in contract 'Aliencoin':
    |    /* Approves and then calls the receiving contract */
    |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |
  at /home/jiaming/mavs_srcs/contract@0xdaae9ad046a6166db07d6ba3a85bfc66a9e8ab07.sol(124)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |
    |
  > |contract StandardToken is Token {
    |
    |    function transfer(address _to, uint256 _value) returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0xdaae9ad046a6166db07d6ba3a85bfc66a9e8ab07.sol(43)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |contract StandardToken is Token {
    |
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |       
    |        //Replace the if with this one instead.
  at /home/jiaming/mavs_srcs/contract@0xdaae9ad046a6166db07d6ba3a85bfc66a9e8ab07.sol(45)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        //same as above. Replace this line with the following if you want to protect against wrapping uints.
    |        //if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
  at /home/jiaming/mavs_srcs/contract@0xdaae9ad046a6166db07d6ba3a85bfc66a9e8ab07.sol(57)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdaae9ad046a6166db07d6ba3a85bfc66a9e8ab07.sol(69)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xdaae9ad046a6166db07d6ba3a85bfc66a9e8ab07.sol(73)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdaae9ad046a6166db07d6ba3a85bfc66a9e8ab07.sol(79)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |    mapping (address => uint256) balances;
    |    mapping (address => mapping (address => uint256)) allowed;
  > |    uint256 public totalSupply;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0xdaae9ad046a6166db07d6ba3a85bfc66a9e8ab07.sol(85)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        //if (balances[msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xdaae9ad046a6166db07d6ba3a85bfc66a9e8ab07.sol(50)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xdaae9ad046a6166db07d6ba3a85bfc66a9e8ab07.sol(63)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xdaae9ad046a6166db07d6ba3a85bfc66a9e8ab07.sol(74)

[33mWarning[0m for LockedEther in contract 'Token':
    |pragma solidity ^0.4.4;
    |
  > |contract Token {
    |
    |    /// @return total amount of tokens
  at /home/jiaming/mavs_srcs/contract@0xdaae9ad046a6166db07d6ba3a85bfc66a9e8ab07.sol(3)


