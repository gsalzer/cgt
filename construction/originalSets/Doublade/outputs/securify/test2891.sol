Processing contract: /home/jiaming/mavs_srcs/contract@0xbe242e4075ff099dd2ffaca6e69d49916a1f667b.sol:JetonToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbe242e4075ff099dd2ffaca6e69d49916a1f667b.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbe242e4075ff099dd2ffaca6e69d49916a1f667b.sol:Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for LockedEther in contract 'JetonToken':
    |
    |//name this contract whatever you'd like
  > |contract JetonToken is StandardToken {
    |
    |    function () {
  at /home/jiaming/mavs_srcs/contract@0xbe242e4075ff099dd2ffaca6e69d49916a1f667b.sol(89)

[33mWarning[0m for UnhandledException in contract 'JetonToken':
    |        //receiveApproval(address _from, uint256 _value, address _tokenContract, bytes _extraData)
    |        //it is assumed that when does this that the call *should* succeed, otherwise one would use vanilla approve instead.
  > |        if(!_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) { throw; }
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbe242e4075ff099dd2ffaca6e69d49916a1f667b.sol(132)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'JetonToken':
    |        //receiveApproval(address _from, uint256 _value, address _tokenContract, bytes _extraData)
    |        //it is assumed that when does this that the call *should* succeed, otherwise one would use vanilla approve instead.
  > |        if(!_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) { throw; }
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbe242e4075ff099dd2ffaca6e69d49916a1f667b.sol(132)

[31mViolation[0m for UnrestrictedWrite in contract 'JetonToken':
    |
    |//name this contract whatever you'd like
  > |contract JetonToken is StandardToken {
    |
    |    function () {
  at /home/jiaming/mavs_srcs/contract@0xbe242e4075ff099dd2ffaca6e69d49916a1f667b.sol(89)

[31mViolation[0m for UnrestrictedWrite in contract 'JetonToken':
    |        ) {
    |        balances[msg.sender] = 100000000;               // Give the creator all initial tokens (100000 for example)
  > |        totalSupply = 100000000;                        // Update total supply (100000 for example)
    |        name = "Jeton";                                   // Set the name for display purposes
    |        decimals = 0;                            // Amount of decimals for display purposes
  at /home/jiaming/mavs_srcs/contract@0xbe242e4075ff099dd2ffaca6e69d49916a1f667b.sol(118)

[31mViolation[0m for UnrestrictedWrite in contract 'JetonToken':
    |        totalSupply = 100000000;                        // Update total supply (100000 for example)
    |        name = "Jeton";                                   // Set the name for display purposes
  > |        decimals = 0;                            // Amount of decimals for display purposes
    |        symbol = "JTN";                               // Set the symbol for display purposes
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbe242e4075ff099dd2ffaca6e69d49916a1f667b.sol(120)

[33mWarning[0m for UnrestrictedWrite in contract 'JetonToken':
    |        //if (balances[msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xbe242e4075ff099dd2ffaca6e69d49916a1f667b.sol(49)

[33mWarning[0m for UnrestrictedWrite in contract 'JetonToken':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xbe242e4075ff099dd2ffaca6e69d49916a1f667b.sol(62)

[33mWarning[0m for UnrestrictedWrite in contract 'JetonToken':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xbe242e4075ff099dd2ffaca6e69d49916a1f667b.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'JetonToken':
    |    function ERC20Token(
    |        ) {
  > |        balances[msg.sender] = 100000000;               // Give the creator all initial tokens (100000 for example)
    |        totalSupply = 100000000;                        // Update total supply (100000 for example)
    |        name = "Jeton";                                   // Set the name for display purposes
  at /home/jiaming/mavs_srcs/contract@0xbe242e4075ff099dd2ffaca6e69d49916a1f667b.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'JetonToken':
    |    /* Approves and then calls the receiving contract */
    |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |
  at /home/jiaming/mavs_srcs/contract@0xbe242e4075ff099dd2ffaca6e69d49916a1f667b.sol(126)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |
    |
  > |contract StandardToken is Token {
    |
    |    function transfer(address _to, uint256 _value) returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0xbe242e4075ff099dd2ffaca6e69d49916a1f667b.sol(41)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |contract StandardToken is Token {
    |
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        //Default assumes totalSupply can't be over max (2^256 - 1).
    |        //If your token leaves out totalSupply and can issue more tokens as time goes on, you need to check if it doesn't wrap.
  at /home/jiaming/mavs_srcs/contract@0xbe242e4075ff099dd2ffaca6e69d49916a1f667b.sol(43)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        //same as above. Replace this line with the following if you want to protect against wrapping uints.
    |        //if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
  at /home/jiaming/mavs_srcs/contract@0xbe242e4075ff099dd2ffaca6e69d49916a1f667b.sol(56)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbe242e4075ff099dd2ffaca6e69d49916a1f667b.sol(68)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xbe242e4075ff099dd2ffaca6e69d49916a1f667b.sol(72)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbe242e4075ff099dd2ffaca6e69d49916a1f667b.sol(78)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |    mapping (address => uint256) balances;
    |    mapping (address => mapping (address => uint256)) allowed;
  > |    uint256 public totalSupply;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0xbe242e4075ff099dd2ffaca6e69d49916a1f667b.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        //if (balances[msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xbe242e4075ff099dd2ffaca6e69d49916a1f667b.sol(49)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xbe242e4075ff099dd2ffaca6e69d49916a1f667b.sol(62)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xbe242e4075ff099dd2ffaca6e69d49916a1f667b.sol(73)

[33mWarning[0m for LockedEther in contract 'Token':
  > |contract Token {
    |
    |    /// @return total amount of tokens
  at /home/jiaming/mavs_srcs/contract@0xbe242e4075ff099dd2ffaca6e69d49916a1f667b.sol(1)


