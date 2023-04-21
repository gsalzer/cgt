Processing contract: /home/jiaming/mavs_srcs/contract@0x5b3f340e286b9a7382f50b1d98ef7cb073660ab9.sol:Octus
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5b3f340e286b9a7382f50b1d98ef7cb073660ab9.sol:OctusToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5b3f340e286b9a7382f50b1d98ef7cb073660ab9.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5b3f340e286b9a7382f50b1d98ef7cb073660ab9.sol:Token
[33mWarning[0m for LockedEther in contract 'Octus':
    |}
    |
  > |contract Octus is OctusToken(2500000000000000000000000, "Octus", 18, "OCT") {}
  at /home/jiaming/mavs_srcs/contract@0x5b3f340e286b9a7382f50b1d98ef7cb073660ab9.sol(110)

[31mViolation[0m for MissingInputValidation in contract 'Octus':
    |contract StandardToken is Token {
    |
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        require(balances[msg.sender] >= _value);
    |        balances[msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x5b3f340e286b9a7382f50b1d98ef7cb073660ab9.sol(41)

[31mViolation[0m for MissingInputValidation in contract 'Octus':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value);
    |        balances[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x5b3f340e286b9a7382f50b1d98ef7cb073660ab9.sol(49)

[31mViolation[0m for MissingInputValidation in contract 'Octus':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5b3f340e286b9a7382f50b1d98ef7cb073660ab9.sol(58)

[31mViolation[0m for MissingInputValidation in contract 'Octus':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x5b3f340e286b9a7382f50b1d98ef7cb073660ab9.sol(62)

[31mViolation[0m for MissingInputValidation in contract 'Octus':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5b3f340e286b9a7382f50b1d98ef7cb073660ab9.sol(68)

[31mViolation[0m for MissingInputValidation in contract 'Octus':
    |
    |    /* Approves and then calls the receiving contract */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x5b3f340e286b9a7382f50b1d98ef7cb073660ab9.sol(98)

[33mWarning[0m for MissingInputValidation in contract 'Octus':
    |contract Token {
    |    /// total amount of tokens
  > |    uint256 public totalSupply;
    |
    |    /// @param _owner The address from which the balance will be retrieved
  at /home/jiaming/mavs_srcs/contract@0x5b3f340e286b9a7382f50b1d98ef7cb073660ab9.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'Octus':
    |    /* Public variables of the token */
    |
  > |    string public name;                   //fancy name: eg Simon Bucks
    |    uint8 public decimals;                //How many decimals to show. ie. There could 1000 base units with 3 decimals. Meaning 0.980 SBX = 980 base units. It's like comparing 1 wei to 1 ether.
    |    string public symbol;                 //An identifier: eg SBX
  at /home/jiaming/mavs_srcs/contract@0x5b3f340e286b9a7382f50b1d98ef7cb073660ab9.sol(80)

[33mWarning[0m for MissingInputValidation in contract 'Octus':
    |
    |    string public name;                   //fancy name: eg Simon Bucks
  > |    uint8 public decimals;                //How many decimals to show. ie. There could 1000 base units with 3 decimals. Meaning 0.980 SBX = 980 base units. It's like comparing 1 wei to 1 ether.
    |    string public symbol;                 //An identifier: eg SBX
    |
  at /home/jiaming/mavs_srcs/contract@0x5b3f340e286b9a7382f50b1d98ef7cb073660ab9.sol(81)

[33mWarning[0m for MissingInputValidation in contract 'Octus':
    |    string public name;                   //fancy name: eg Simon Bucks
    |    uint8 public decimals;                //How many decimals to show. ie. There could 1000 base units with 3 decimals. Meaning 0.980 SBX = 980 base units. It's like comparing 1 wei to 1 ether.
  > |    string public symbol;                 //An identifier: eg SBX
    |
    |    function OctusToken(
  at /home/jiaming/mavs_srcs/contract@0x5b3f340e286b9a7382f50b1d98ef7cb073660ab9.sol(82)

[33mWarning[0m for UnhandledException in contract 'Octus':
    |        //receiveApproval(address _from, uint256 _value, address _tokenContract, bytes _extraData)
    |        //it is assumed that when does this that the call *should* succeed, otherwise one would use vanilla approve instead.
  > |        require(_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData));
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5b3f340e286b9a7382f50b1d98ef7cb073660ab9.sol(105)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Octus':
    |        //receiveApproval(address _from, uint256 _value, address _tokenContract, bytes _extraData)
    |        //it is assumed that when does this that the call *should* succeed, otherwise one would use vanilla approve instead.
  > |        require(_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData));
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5b3f340e286b9a7382f50b1d98ef7cb073660ab9.sol(105)

[31mViolation[0m for UnrestrictedWrite in contract 'Octus':
    |        require(balances[msg.sender] >= _value);
    |        balances[msg.sender] -= _value;
  > |        balances[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x5b3f340e286b9a7382f50b1d98ef7cb073660ab9.sol(44)

[31mViolation[0m for UnrestrictedWrite in contract 'Octus':
    |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value);
  > |        balances[_to] += _value;
    |        balances[_from] -= _value;
    |        allowed[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x5b3f340e286b9a7382f50b1d98ef7cb073660ab9.sol(51)

[31mViolation[0m for UnrestrictedWrite in contract 'Octus':
    |        require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value);
    |        balances[_to] += _value;
  > |        balances[_from] -= _value;
    |        allowed[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x5b3f340e286b9a7382f50b1d98ef7cb073660ab9.sol(52)

[33mWarning[0m for UnrestrictedWrite in contract 'Octus':
    |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        require(balances[msg.sender] >= _value);
  > |        balances[msg.sender] -= _value;
    |        balances[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x5b3f340e286b9a7382f50b1d98ef7cb073660ab9.sol(43)

[33mWarning[0m for UnrestrictedWrite in contract 'Octus':
    |        balances[_to] += _value;
    |        balances[_from] -= _value;
  > |        allowed[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x5b3f340e286b9a7382f50b1d98ef7cb073660ab9.sol(53)

[33mWarning[0m for UnrestrictedWrite in contract 'Octus':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x5b3f340e286b9a7382f50b1d98ef7cb073660ab9.sol(63)

[33mWarning[0m for UnrestrictedWrite in contract 'Octus':
    |    /* Approves and then calls the receiving contract */
    |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |
  at /home/jiaming/mavs_srcs/contract@0x5b3f340e286b9a7382f50b1d98ef7cb073660ab9.sol(99)

[33mWarning[0m for LockedEther in contract 'OctusToken':
    |}
    |
  > |contract OctusToken is StandardToken {
    |
    |    /* Public variables of the token */
  at /home/jiaming/mavs_srcs/contract@0x5b3f340e286b9a7382f50b1d98ef7cb073660ab9.sol(76)

[31mViolation[0m for MissingInputValidation in contract 'OctusToken':
    |contract StandardToken is Token {
    |
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        require(balances[msg.sender] >= _value);
    |        balances[msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x5b3f340e286b9a7382f50b1d98ef7cb073660ab9.sol(41)

[31mViolation[0m for MissingInputValidation in contract 'OctusToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value);
    |        balances[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x5b3f340e286b9a7382f50b1d98ef7cb073660ab9.sol(49)

[31mViolation[0m for MissingInputValidation in contract 'OctusToken':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5b3f340e286b9a7382f50b1d98ef7cb073660ab9.sol(58)

[31mViolation[0m for MissingInputValidation in contract 'OctusToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x5b3f340e286b9a7382f50b1d98ef7cb073660ab9.sol(62)

[31mViolation[0m for MissingInputValidation in contract 'OctusToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5b3f340e286b9a7382f50b1d98ef7cb073660ab9.sol(68)

[31mViolation[0m for MissingInputValidation in contract 'OctusToken':
    |
    |    /* Approves and then calls the receiving contract */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x5b3f340e286b9a7382f50b1d98ef7cb073660ab9.sol(98)

[33mWarning[0m for MissingInputValidation in contract 'OctusToken':
    |contract Token {
    |    /// total amount of tokens
  > |    uint256 public totalSupply;
    |
    |    /// @param _owner The address from which the balance will be retrieved
  at /home/jiaming/mavs_srcs/contract@0x5b3f340e286b9a7382f50b1d98ef7cb073660ab9.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'OctusToken':
    |    /* Public variables of the token */
    |
  > |    string public name;                   //fancy name: eg Simon Bucks
    |    uint8 public decimals;                //How many decimals to show. ie. There could 1000 base units with 3 decimals. Meaning 0.980 SBX = 980 base units. It's like comparing 1 wei to 1 ether.
    |    string public symbol;                 //An identifier: eg SBX
  at /home/jiaming/mavs_srcs/contract@0x5b3f340e286b9a7382f50b1d98ef7cb073660ab9.sol(80)

[33mWarning[0m for MissingInputValidation in contract 'OctusToken':
    |
    |    string public name;                   //fancy name: eg Simon Bucks
  > |    uint8 public decimals;                //How many decimals to show. ie. There could 1000 base units with 3 decimals. Meaning 0.980 SBX = 980 base units. It's like comparing 1 wei to 1 ether.
    |    string public symbol;                 //An identifier: eg SBX
    |
  at /home/jiaming/mavs_srcs/contract@0x5b3f340e286b9a7382f50b1d98ef7cb073660ab9.sol(81)

[33mWarning[0m for MissingInputValidation in contract 'OctusToken':
    |    string public name;                   //fancy name: eg Simon Bucks
    |    uint8 public decimals;                //How many decimals to show. ie. There could 1000 base units with 3 decimals. Meaning 0.980 SBX = 980 base units. It's like comparing 1 wei to 1 ether.
  > |    string public symbol;                 //An identifier: eg SBX
    |
    |    function OctusToken(
  at /home/jiaming/mavs_srcs/contract@0x5b3f340e286b9a7382f50b1d98ef7cb073660ab9.sol(82)

[33mWarning[0m for UnhandledException in contract 'OctusToken':
    |        //receiveApproval(address _from, uint256 _value, address _tokenContract, bytes _extraData)
    |        //it is assumed that when does this that the call *should* succeed, otherwise one would use vanilla approve instead.
  > |        require(_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData));
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5b3f340e286b9a7382f50b1d98ef7cb073660ab9.sol(105)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'OctusToken':
    |        //receiveApproval(address _from, uint256 _value, address _tokenContract, bytes _extraData)
    |        //it is assumed that when does this that the call *should* succeed, otherwise one would use vanilla approve instead.
  > |        require(_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData));
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5b3f340e286b9a7382f50b1d98ef7cb073660ab9.sol(105)

[31mViolation[0m for UnrestrictedWrite in contract 'OctusToken':
    |        require(balances[msg.sender] >= _value);
    |        balances[msg.sender] -= _value;
  > |        balances[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x5b3f340e286b9a7382f50b1d98ef7cb073660ab9.sol(44)

[31mViolation[0m for UnrestrictedWrite in contract 'OctusToken':
    |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value);
  > |        balances[_to] += _value;
    |        balances[_from] -= _value;
    |        allowed[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x5b3f340e286b9a7382f50b1d98ef7cb073660ab9.sol(51)

[31mViolation[0m for UnrestrictedWrite in contract 'OctusToken':
    |        require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value);
    |        balances[_to] += _value;
  > |        balances[_from] -= _value;
    |        allowed[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x5b3f340e286b9a7382f50b1d98ef7cb073660ab9.sol(52)

[33mWarning[0m for UnrestrictedWrite in contract 'OctusToken':
    |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        require(balances[msg.sender] >= _value);
  > |        balances[msg.sender] -= _value;
    |        balances[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x5b3f340e286b9a7382f50b1d98ef7cb073660ab9.sol(43)

[33mWarning[0m for UnrestrictedWrite in contract 'OctusToken':
    |        balances[_to] += _value;
    |        balances[_from] -= _value;
  > |        allowed[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x5b3f340e286b9a7382f50b1d98ef7cb073660ab9.sol(53)

[33mWarning[0m for UnrestrictedWrite in contract 'OctusToken':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x5b3f340e286b9a7382f50b1d98ef7cb073660ab9.sol(63)

[33mWarning[0m for UnrestrictedWrite in contract 'OctusToken':
    |    /* Approves and then calls the receiving contract */
    |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |
  at /home/jiaming/mavs_srcs/contract@0x5b3f340e286b9a7382f50b1d98ef7cb073660ab9.sol(99)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is Token {
    |
    |    function transfer(address _to, uint256 _value) returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x5b3f340e286b9a7382f50b1d98ef7cb073660ab9.sol(39)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |contract StandardToken is Token {
    |
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        require(balances[msg.sender] >= _value);
    |        balances[msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x5b3f340e286b9a7382f50b1d98ef7cb073660ab9.sol(41)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value);
    |        balances[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x5b3f340e286b9a7382f50b1d98ef7cb073660ab9.sol(49)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5b3f340e286b9a7382f50b1d98ef7cb073660ab9.sol(58)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x5b3f340e286b9a7382f50b1d98ef7cb073660ab9.sol(62)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5b3f340e286b9a7382f50b1d98ef7cb073660ab9.sol(68)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |contract Token {
    |    /// total amount of tokens
  > |    uint256 public totalSupply;
    |
    |    /// @param _owner The address from which the balance will be retrieved
  at /home/jiaming/mavs_srcs/contract@0x5b3f340e286b9a7382f50b1d98ef7cb073660ab9.sol(5)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |        require(balances[msg.sender] >= _value);
    |        balances[msg.sender] -= _value;
  > |        balances[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x5b3f340e286b9a7382f50b1d98ef7cb073660ab9.sol(44)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value);
  > |        balances[_to] += _value;
    |        balances[_from] -= _value;
    |        allowed[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x5b3f340e286b9a7382f50b1d98ef7cb073660ab9.sol(51)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |        require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value);
    |        balances[_to] += _value;
  > |        balances[_from] -= _value;
    |        allowed[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x5b3f340e286b9a7382f50b1d98ef7cb073660ab9.sol(52)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        require(balances[msg.sender] >= _value);
  > |        balances[msg.sender] -= _value;
    |        balances[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x5b3f340e286b9a7382f50b1d98ef7cb073660ab9.sol(43)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        balances[_to] += _value;
    |        balances[_from] -= _value;
  > |        allowed[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x5b3f340e286b9a7382f50b1d98ef7cb073660ab9.sol(53)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x5b3f340e286b9a7382f50b1d98ef7cb073660ab9.sol(63)


