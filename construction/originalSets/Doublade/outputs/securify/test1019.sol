Processing contract: /home/jiaming/mavs_srcs/contract@0x402a767d78d00882f41c4846b6f05785e36cf038.sol:MecStandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x402a767d78d00882f41c4846b6f05785e36cf038.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x402a767d78d00882f41c4846b6f05785e36cf038.sol:Token
[33mWarning[0m for LockedEther in contract 'MecStandardToken':
    |}
    |
  > |contract MecStandardToken is StandardToken {
    |    function () {
    |        //if ether is sent to this address, send it back.
  at /home/jiaming/mavs_srcs/contract@0x402a767d78d00882f41c4846b6f05785e36cf038.sol(103)

[31mViolation[0m for MissingInputValidation in contract 'MecStandardToken':
    |contract StandardToken is Token {
    |    
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        //Default assumes totalSupply can't be over max (2^256 - 1).
    |        //If your token leaves out totalSupply and can issue more tokens as time goes on, you need to check if it doesn't wrap.
  at /home/jiaming/mavs_srcs/contract@0x402a767d78d00882f41c4846b6f05785e36cf038.sol(60)

[31mViolation[0m for MissingInputValidation in contract 'MecStandardToken':
    |    }
    |    
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        //same as above. Replace this line with the following if you want to protect against wrapping uints.
    |        //if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
  at /home/jiaming/mavs_srcs/contract@0x402a767d78d00882f41c4846b6f05785e36cf038.sol(73)

[31mViolation[0m for MissingInputValidation in contract 'MecStandardToken':
    |    }
    |    
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x402a767d78d00882f41c4846b6f05785e36cf038.sol(85)

[31mViolation[0m for MissingInputValidation in contract 'MecStandardToken':
    |    }
    |    
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x402a767d78d00882f41c4846b6f05785e36cf038.sol(89)

[31mViolation[0m for MissingInputValidation in contract 'MecStandardToken':
    |    }
    |    
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x402a767d78d00882f41c4846b6f05785e36cf038.sol(95)

[31mViolation[0m for MissingInputValidation in contract 'MecStandardToken':
    |    
    |    /* Approves and then calls the receiving contract */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x402a767d78d00882f41c4846b6f05785e36cf038.sol(135)

[33mWarning[0m for MissingInputValidation in contract 'MecStandardToken':
    |    */
    |    /// total amount of tokens
  > |    uint256 public totalSupply;
    |    
    |    /// @param _owner The address from which the balance will be retrieved
  at /home/jiaming/mavs_srcs/contract@0x402a767d78d00882f41c4846b6f05785e36cf038.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'MecStandardToken':
    |    Some wallets/interfaces might not even bother to look at this information.
    |    */
  > |    string public name;                   //fancy name: eg Simon Bucks
    |    uint8 public decimals;                //How many decimals to show. ie. There could 1000 base units with 3 decimals. Meaning 0.980 SBX = 980 base units. It's like comparing 1 wei to 1 ether.
    |    string public symbol;                 //An identifier: eg SBX
  at /home/jiaming/mavs_srcs/contract@0x402a767d78d00882f41c4846b6f05785e36cf038.sol(115)

[33mWarning[0m for MissingInputValidation in contract 'MecStandardToken':
    |    */
    |    string public name;                   //fancy name: eg Simon Bucks
  > |    uint8 public decimals;                //How many decimals to show. ie. There could 1000 base units with 3 decimals. Meaning 0.980 SBX = 980 base units. It's like comparing 1 wei to 1 ether.
    |    string public symbol;                 //An identifier: eg SBX
    |    string public version = 'V0.1';       //MecStandardToken 0.1 standard. Just an arbitrary versioning scheme.
  at /home/jiaming/mavs_srcs/contract@0x402a767d78d00882f41c4846b6f05785e36cf038.sol(116)

[33mWarning[0m for MissingInputValidation in contract 'MecStandardToken':
    |    string public name;                   //fancy name: eg Simon Bucks
    |    uint8 public decimals;                //How many decimals to show. ie. There could 1000 base units with 3 decimals. Meaning 0.980 SBX = 980 base units. It's like comparing 1 wei to 1 ether.
  > |    string public symbol;                 //An identifier: eg SBX
    |    string public version = 'V0.1';       //MecStandardToken 0.1 standard. Just an arbitrary versioning scheme.
    |    
  at /home/jiaming/mavs_srcs/contract@0x402a767d78d00882f41c4846b6f05785e36cf038.sol(117)

[33mWarning[0m for MissingInputValidation in contract 'MecStandardToken':
    |    uint8 public decimals;                //How many decimals to show. ie. There could 1000 base units with 3 decimals. Meaning 0.980 SBX = 980 base units. It's like comparing 1 wei to 1 ether.
    |    string public symbol;                 //An identifier: eg SBX
  > |    string public version = 'V0.1';       //MecStandardToken 0.1 standard. Just an arbitrary versioning scheme.
    |    
    |    function MecStandardToken(
  at /home/jiaming/mavs_srcs/contract@0x402a767d78d00882f41c4846b6f05785e36cf038.sol(118)

[33mWarning[0m for UnhandledException in contract 'MecStandardToken':
    |        //receiveApproval(address _from, uint256 _value, address _tokenContract, bytes _extraData)
    |        //it is assumed that when does this that the call *should* succeed, otherwise one would use vanilla approve instead.
  > |        if(!_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) { throw; }
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x402a767d78d00882f41c4846b6f05785e36cf038.sol(142)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MecStandardToken':
    |        //receiveApproval(address _from, uint256 _value, address _tokenContract, bytes _extraData)
    |        //it is assumed that when does this that the call *should* succeed, otherwise one would use vanilla approve instead.
  > |        if(!_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) { throw; }
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x402a767d78d00882f41c4846b6f05785e36cf038.sol(142)

[33mWarning[0m for UnrestrictedWrite in contract 'MecStandardToken':
    |        //if (balances[msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x402a767d78d00882f41c4846b6f05785e36cf038.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'MecStandardToken':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x402a767d78d00882f41c4846b6f05785e36cf038.sol(79)

[33mWarning[0m for UnrestrictedWrite in contract 'MecStandardToken':
    |    
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x402a767d78d00882f41c4846b6f05785e36cf038.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'MecStandardToken':
    |    /* Approves and then calls the receiving contract */
    |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |
  at /home/jiaming/mavs_srcs/contract@0x402a767d78d00882f41c4846b6f05785e36cf038.sol(136)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |.*/
    |
  > |contract StandardToken is Token {
    |    
    |    function transfer(address _to, uint256 _value) returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x402a767d78d00882f41c4846b6f05785e36cf038.sol(58)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |contract StandardToken is Token {
    |    
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        //Default assumes totalSupply can't be over max (2^256 - 1).
    |        //If your token leaves out totalSupply and can issue more tokens as time goes on, you need to check if it doesn't wrap.
  at /home/jiaming/mavs_srcs/contract@0x402a767d78d00882f41c4846b6f05785e36cf038.sol(60)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |    
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        //same as above. Replace this line with the following if you want to protect against wrapping uints.
    |        //if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
  at /home/jiaming/mavs_srcs/contract@0x402a767d78d00882f41c4846b6f05785e36cf038.sol(73)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |    
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x402a767d78d00882f41c4846b6f05785e36cf038.sol(85)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |    
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x402a767d78d00882f41c4846b6f05785e36cf038.sol(89)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |    
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x402a767d78d00882f41c4846b6f05785e36cf038.sol(95)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |    */
    |    /// total amount of tokens
  > |    uint256 public totalSupply;
    |    
    |    /// @param _owner The address from which the balance will be retrieved
  at /home/jiaming/mavs_srcs/contract@0x402a767d78d00882f41c4846b6f05785e36cf038.sol(15)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        //if (balances[msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x402a767d78d00882f41c4846b6f05785e36cf038.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x402a767d78d00882f41c4846b6f05785e36cf038.sol(79)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x402a767d78d00882f41c4846b6f05785e36cf038.sol(90)


