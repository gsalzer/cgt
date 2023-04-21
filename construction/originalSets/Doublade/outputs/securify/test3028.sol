Processing contract: /home/jiaming/mavs_srcs/contract@0xc6396aaa2c9ffe8bb22d4810493e27f463f2fcf8.sol:HumanStandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc6396aaa2c9ffe8bb22d4810493e27f463f2fcf8.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc6396aaa2c9ffe8bb22d4810493e27f463f2fcf8.sol:Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'HumanStandardToken':
    |.*/
    |
  > |contract HumanStandardToken is StandardToken {
    |
    |    function () {
  at /home/jiaming/mavs_srcs/contract@0xc6396aaa2c9ffe8bb22d4810493e27f463f2fcf8.sol(107)

[31mViolation[0m for MissingInputValidation in contract 'HumanStandardToken':
    |contract StandardToken is Token {
    |
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        //Default assumes totalSupply can't be over max (2^256 - 1).
    |        //If your token leaves out totalSupply and can issue more tokens as time goes on, you need to check if it doesn't wrap.
  at /home/jiaming/mavs_srcs/contract@0xc6396aaa2c9ffe8bb22d4810493e27f463f2fcf8.sol(50)

[31mViolation[0m for MissingInputValidation in contract 'HumanStandardToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        //same as above. Replace this line with the following if you want to protect against wrapping uints.
    |        //if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
  at /home/jiaming/mavs_srcs/contract@0xc6396aaa2c9ffe8bb22d4810493e27f463f2fcf8.sol(63)

[31mViolation[0m for MissingInputValidation in contract 'HumanStandardToken':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc6396aaa2c9ffe8bb22d4810493e27f463f2fcf8.sol(75)

[31mViolation[0m for MissingInputValidation in contract 'HumanStandardToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xc6396aaa2c9ffe8bb22d4810493e27f463f2fcf8.sol(79)

[31mViolation[0m for MissingInputValidation in contract 'HumanStandardToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc6396aaa2c9ffe8bb22d4810493e27f463f2fcf8.sol(85)

[31mViolation[0m for MissingInputValidation in contract 'HumanStandardToken':
    |
    |    /* Approves and then calls the receiving contract */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xc6396aaa2c9ffe8bb22d4810493e27f463f2fcf8.sol(141)

[33mWarning[0m for MissingInputValidation in contract 'HumanStandardToken':
    |    mapping (address => uint256) balances;
    |    mapping (address => mapping (address => uint256)) allowed;
  > |    uint256 public totalSupply;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0xc6396aaa2c9ffe8bb22d4810493e27f463f2fcf8.sol(91)

[33mWarning[0m for MissingInputValidation in contract 'HumanStandardToken':
    |    Some wallets/interfaces might not even bother to look at this information.
    |    */
  > |    string public name;                   //fancy name: eg Simon Bucks
    |    uint8 public decimals;                //How many decimals to show. ie. There could 1000 base units with 3 decimals. Meaning 0.980 SBX = 980 base units. It's like comparing 1 wei to 1 ether.
    |    string public symbol;                 //An identifier: eg SBX
  at /home/jiaming/mavs_srcs/contract@0xc6396aaa2c9ffe8bb22d4810493e27f463f2fcf8.sol(122)

[33mWarning[0m for MissingInputValidation in contract 'HumanStandardToken':
    |    */
    |    string public name;                   //fancy name: eg Simon Bucks
  > |    uint8 public decimals;                //How many decimals to show. ie. There could 1000 base units with 3 decimals. Meaning 0.980 SBX = 980 base units. It's like comparing 1 wei to 1 ether.
    |    string public symbol;                 //An identifier: eg SBX
    |    string public version = 'H0.1';       //human 0.1 standard. Just an arbitrary versioning scheme.
  at /home/jiaming/mavs_srcs/contract@0xc6396aaa2c9ffe8bb22d4810493e27f463f2fcf8.sol(123)

[33mWarning[0m for MissingInputValidation in contract 'HumanStandardToken':
    |    string public name;                   //fancy name: eg Simon Bucks
    |    uint8 public decimals;                //How many decimals to show. ie. There could 1000 base units with 3 decimals. Meaning 0.980 SBX = 980 base units. It's like comparing 1 wei to 1 ether.
  > |    string public symbol;                 //An identifier: eg SBX
    |    string public version = 'H0.1';       //human 0.1 standard. Just an arbitrary versioning scheme.
    |
  at /home/jiaming/mavs_srcs/contract@0xc6396aaa2c9ffe8bb22d4810493e27f463f2fcf8.sol(124)

[33mWarning[0m for MissingInputValidation in contract 'HumanStandardToken':
    |    uint8 public decimals;                //How many decimals to show. ie. There could 1000 base units with 3 decimals. Meaning 0.980 SBX = 980 base units. It's like comparing 1 wei to 1 ether.
    |    string public symbol;                 //An identifier: eg SBX
  > |    string public version = 'H0.1';       //human 0.1 standard. Just an arbitrary versioning scheme.
    |
    |    function HumanStandardToken(
  at /home/jiaming/mavs_srcs/contract@0xc6396aaa2c9ffe8bb22d4810493e27f463f2fcf8.sol(125)

[33mWarning[0m for UnhandledException in contract 'HumanStandardToken':
    |        //receiveApproval(address _from, uint256 _value, address _tokenContract, bytes _extraData)
    |        //it is assumed that when does this that the call *should* succeed, otherwise one would use vanilla approve instead.
  > |        if(!_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) { throw; }
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc6396aaa2c9ffe8bb22d4810493e27f463f2fcf8.sol(148)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HumanStandardToken':
    |        //receiveApproval(address _from, uint256 _value, address _tokenContract, bytes _extraData)
    |        //it is assumed that when does this that the call *should* succeed, otherwise one would use vanilla approve instead.
  > |        if(!_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) { throw; }
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc6396aaa2c9ffe8bb22d4810493e27f463f2fcf8.sol(148)

[33mWarning[0m for UnrestrictedWrite in contract 'HumanStandardToken':
    |        //if (balances[msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc6396aaa2c9ffe8bb22d4810493e27f463f2fcf8.sol(56)

[33mWarning[0m for UnrestrictedWrite in contract 'HumanStandardToken':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xc6396aaa2c9ffe8bb22d4810493e27f463f2fcf8.sol(69)

[33mWarning[0m for UnrestrictedWrite in contract 'HumanStandardToken':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xc6396aaa2c9ffe8bb22d4810493e27f463f2fcf8.sol(80)

[33mWarning[0m for UnrestrictedWrite in contract 'HumanStandardToken':
    |    /* Approves and then calls the receiving contract */
    |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |
  at /home/jiaming/mavs_srcs/contract@0xc6396aaa2c9ffe8bb22d4810493e27f463f2fcf8.sol(142)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |.*/
    |
  > |contract StandardToken is Token {
    |
    |    function transfer(address _to, uint256 _value) returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0xc6396aaa2c9ffe8bb22d4810493e27f463f2fcf8.sol(48)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |contract StandardToken is Token {
    |
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        //Default assumes totalSupply can't be over max (2^256 - 1).
    |        //If your token leaves out totalSupply and can issue more tokens as time goes on, you need to check if it doesn't wrap.
  at /home/jiaming/mavs_srcs/contract@0xc6396aaa2c9ffe8bb22d4810493e27f463f2fcf8.sol(50)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        //same as above. Replace this line with the following if you want to protect against wrapping uints.
    |        //if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
  at /home/jiaming/mavs_srcs/contract@0xc6396aaa2c9ffe8bb22d4810493e27f463f2fcf8.sol(63)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc6396aaa2c9ffe8bb22d4810493e27f463f2fcf8.sol(75)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xc6396aaa2c9ffe8bb22d4810493e27f463f2fcf8.sol(79)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc6396aaa2c9ffe8bb22d4810493e27f463f2fcf8.sol(85)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |    mapping (address => uint256) balances;
    |    mapping (address => mapping (address => uint256)) allowed;
  > |    uint256 public totalSupply;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0xc6396aaa2c9ffe8bb22d4810493e27f463f2fcf8.sol(91)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        //if (balances[msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc6396aaa2c9ffe8bb22d4810493e27f463f2fcf8.sol(56)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xc6396aaa2c9ffe8bb22d4810493e27f463f2fcf8.sol(69)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xc6396aaa2c9ffe8bb22d4810493e27f463f2fcf8.sol(80)

[33mWarning[0m for LockedEther in contract 'Token':
  > |contract Token {
    |
    |    /// @return total amount of tokens
  at /home/jiaming/mavs_srcs/contract@0xc6396aaa2c9ffe8bb22d4810493e27f463f2fcf8.sol(1)


