Processing contract: /home/jiaming/mavs_srcs/contract@0xb83c6b381aac1b8eb4eb0426edb5a5233882ea71.sol:FZN
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb83c6b381aac1b8eb4eb0426edb5a5233882ea71.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb83c6b381aac1b8eb4eb0426edb5a5233882ea71.sol:Token
[33mWarning[0m for LockedEther in contract 'FZN':
    |}
    |
  > |contract FZN is StandardToken {
    |
    |    /* Public variables of the token */
  at /home/jiaming/mavs_srcs/contract@0xb83c6b381aac1b8eb4eb0426edb5a5233882ea71.sol(96)

[31mViolation[0m for MissingInputValidation in contract 'FZN':
    |    uint256 constant MAX_UINT256 = 2**256 - 1;
    |
  > |    function transfer(address _to, uint256 _value) public returns (bool success) {
    |        //Default assumes totalSupply can't be over max (2^256 - 1).
    |        //If your token leaves out totalSupply and can issue more tokens as time goes on, you need to check if it doesn't wrap.
  at /home/jiaming/mavs_srcs/contract@0xb83c6b381aac1b8eb4eb0426edb5a5233882ea71.sol(52)

[31mViolation[0m for MissingInputValidation in contract 'FZN':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        //same as above. Replace this line with the following if you want to protect against wrapping uints.
    |        //require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value && balances[_to] + _value > balances[_to]);
  at /home/jiaming/mavs_srcs/contract@0xb83c6b381aac1b8eb4eb0426edb5a5233882ea71.sol(64)

[31mViolation[0m for MissingInputValidation in contract 'FZN':
    |    }
    |
  > |    function balanceOf(address _owner) constant public returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb83c6b381aac1b8eb4eb0426edb5a5233882ea71.sol(78)

[31mViolation[0m for MissingInputValidation in contract 'FZN':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) public returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xb83c6b381aac1b8eb4eb0426edb5a5233882ea71.sol(82)

[31mViolation[0m for MissingInputValidation in contract 'FZN':
    |    }
    |
  > |    function allowance(address _owner, address _spender) public constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb83c6b381aac1b8eb4eb0426edb5a5233882ea71.sol(88)

[31mViolation[0m for MissingInputValidation in contract 'FZN':
    |
    |    /* Approves and then calls the receiving contract */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) public returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xb83c6b381aac1b8eb4eb0426edb5a5233882ea71.sol(126)

[33mWarning[0m for MissingInputValidation in contract 'FZN':
    |    */
    |    /// total amount of tokens
  > |    uint256 public totalSupply;
    |
    |    /// @param _owner The address from which the balance will be retrieved
  at /home/jiaming/mavs_srcs/contract@0xb83c6b381aac1b8eb4eb0426edb5a5233882ea71.sol(14)

[33mWarning[0m for MissingInputValidation in contract 'FZN':
    |    Some wallets/interfaces might not even bother to look at this information.
    |    */
  > |    string public name;                   //fancy name: eg Simon Bucks
    |    uint8 public decimals;                //How many decimals to show. ie. There could 1000 base units with 3 decimals. Meaning 0.980 SBX = 980 base units. It's like comparing 1 wei to 1 ether.
    |    string public symbol;                 //An identifier: eg SBX
  at /home/jiaming/mavs_srcs/contract@0xb83c6b381aac1b8eb4eb0426edb5a5233882ea71.sol(106)

[33mWarning[0m for MissingInputValidation in contract 'FZN':
    |    */
    |    string public name;                   //fancy name: eg Simon Bucks
  > |    uint8 public decimals;                //How many decimals to show. ie. There could 1000 base units with 3 decimals. Meaning 0.980 SBX = 980 base units. It's like comparing 1 wei to 1 ether.
    |    string public symbol;                 //An identifier: eg SBX
    |    string public version = 'N0.1';       //N 0.1 standard. Just an arbitrary versioning scheme.
  at /home/jiaming/mavs_srcs/contract@0xb83c6b381aac1b8eb4eb0426edb5a5233882ea71.sol(107)

[33mWarning[0m for MissingInputValidation in contract 'FZN':
    |    string public name;                   //fancy name: eg Simon Bucks
    |    uint8 public decimals;                //How many decimals to show. ie. There could 1000 base units with 3 decimals. Meaning 0.980 SBX = 980 base units. It's like comparing 1 wei to 1 ether.
  > |    string public symbol;                 //An identifier: eg SBX
    |    string public version = 'N0.1';       //N 0.1 standard. Just an arbitrary versioning scheme.
    |
  at /home/jiaming/mavs_srcs/contract@0xb83c6b381aac1b8eb4eb0426edb5a5233882ea71.sol(108)

[33mWarning[0m for MissingInputValidation in contract 'FZN':
    |    uint8 public decimals;                //How many decimals to show. ie. There could 1000 base units with 3 decimals. Meaning 0.980 SBX = 980 base units. It's like comparing 1 wei to 1 ether.
    |    string public symbol;                 //An identifier: eg SBX
  > |    string public version = 'N0.1';       //N 0.1 standard. Just an arbitrary versioning scheme.
    |
    |    // Deloy with paramters in remix like: 100000000000000000000,"New Bucks",18,"NB"
  at /home/jiaming/mavs_srcs/contract@0xb83c6b381aac1b8eb4eb0426edb5a5233882ea71.sol(109)

[33mWarning[0m for UnhandledException in contract 'FZN':
    |        //receiveApproval(address _from, uint256 _value, address _tokenContract, bytes _extraData)
    |        //it is assumed when one does this that the call *should* succeed, otherwise one would use vanilla approve instead.
  > |        require(_spender.call(bytes4(bytes32(keccak256("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData));
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb83c6b381aac1b8eb4eb0426edb5a5233882ea71.sol(133)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FZN':
    |        //receiveApproval(address _from, uint256 _value, address _tokenContract, bytes _extraData)
    |        //it is assumed when one does this that the call *should* succeed, otherwise one would use vanilla approve instead.
  > |        require(_spender.call(bytes4(bytes32(keccak256("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData));
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb83c6b381aac1b8eb4eb0426edb5a5233882ea71.sol(133)

[31mViolation[0m for UnrestrictedWrite in contract 'FZN':
    |        require(balances[msg.sender] >= _value);
    |        balances[msg.sender] -= _value;
  > |        balances[_to] += _value;
    |        emit Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xb83c6b381aac1b8eb4eb0426edb5a5233882ea71.sol(59)

[31mViolation[0m for UnrestrictedWrite in contract 'FZN':
    |        uint256 allowance = allowed[_from][msg.sender];
    |        require(balances[_from] >= _value && allowance >= _value);
  > |        balances[_to] += _value;
    |        balances[_from] -= _value;
    |        if (allowance < MAX_UINT256) {
  at /home/jiaming/mavs_srcs/contract@0xb83c6b381aac1b8eb4eb0426edb5a5233882ea71.sol(69)

[31mViolation[0m for UnrestrictedWrite in contract 'FZN':
    |        require(balances[_from] >= _value && allowance >= _value);
    |        balances[_to] += _value;
  > |        balances[_from] -= _value;
    |        if (allowance < MAX_UINT256) {
    |            allowed[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0xb83c6b381aac1b8eb4eb0426edb5a5233882ea71.sol(70)

[33mWarning[0m for UnrestrictedWrite in contract 'FZN':
    |        //require(balances[msg.sender] >= _value && balances[_to] + _value > balances[_to]);
    |        require(balances[msg.sender] >= _value);
  > |        balances[msg.sender] -= _value;
    |        balances[_to] += _value;
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xb83c6b381aac1b8eb4eb0426edb5a5233882ea71.sol(58)

[33mWarning[0m for UnrestrictedWrite in contract 'FZN':
    |        balances[_from] -= _value;
    |        if (allowance < MAX_UINT256) {
  > |            allowed[_from][msg.sender] -= _value;
    |        }
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xb83c6b381aac1b8eb4eb0426edb5a5233882ea71.sol(72)

[33mWarning[0m for UnrestrictedWrite in contract 'FZN':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xb83c6b381aac1b8eb4eb0426edb5a5233882ea71.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'FZN':
    |    /* Approves and then calls the receiving contract */
    |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |
  at /home/jiaming/mavs_srcs/contract@0xb83c6b381aac1b8eb4eb0426edb5a5233882ea71.sol(127)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is Token {
    |
    |    uint256 constant MAX_UINT256 = 2**256 - 1;
  at /home/jiaming/mavs_srcs/contract@0xb83c6b381aac1b8eb4eb0426edb5a5233882ea71.sol(48)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    uint256 constant MAX_UINT256 = 2**256 - 1;
    |
  > |    function transfer(address _to, uint256 _value) public returns (bool success) {
    |        //Default assumes totalSupply can't be over max (2^256 - 1).
    |        //If your token leaves out totalSupply and can issue more tokens as time goes on, you need to check if it doesn't wrap.
  at /home/jiaming/mavs_srcs/contract@0xb83c6b381aac1b8eb4eb0426edb5a5233882ea71.sol(52)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        //same as above. Replace this line with the following if you want to protect against wrapping uints.
    |        //require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value && balances[_to] + _value > balances[_to]);
  at /home/jiaming/mavs_srcs/contract@0xb83c6b381aac1b8eb4eb0426edb5a5233882ea71.sol(64)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function balanceOf(address _owner) constant public returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb83c6b381aac1b8eb4eb0426edb5a5233882ea71.sol(78)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) public returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xb83c6b381aac1b8eb4eb0426edb5a5233882ea71.sol(82)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) public constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb83c6b381aac1b8eb4eb0426edb5a5233882ea71.sol(88)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |    */
    |    /// total amount of tokens
  > |    uint256 public totalSupply;
    |
    |    /// @param _owner The address from which the balance will be retrieved
  at /home/jiaming/mavs_srcs/contract@0xb83c6b381aac1b8eb4eb0426edb5a5233882ea71.sol(14)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |        require(balances[msg.sender] >= _value);
    |        balances[msg.sender] -= _value;
  > |        balances[_to] += _value;
    |        emit Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xb83c6b381aac1b8eb4eb0426edb5a5233882ea71.sol(59)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |        uint256 allowance = allowed[_from][msg.sender];
    |        require(balances[_from] >= _value && allowance >= _value);
  > |        balances[_to] += _value;
    |        balances[_from] -= _value;
    |        if (allowance < MAX_UINT256) {
  at /home/jiaming/mavs_srcs/contract@0xb83c6b381aac1b8eb4eb0426edb5a5233882ea71.sol(69)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |        require(balances[_from] >= _value && allowance >= _value);
    |        balances[_to] += _value;
  > |        balances[_from] -= _value;
    |        if (allowance < MAX_UINT256) {
    |            allowed[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0xb83c6b381aac1b8eb4eb0426edb5a5233882ea71.sol(70)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        //require(balances[msg.sender] >= _value && balances[_to] + _value > balances[_to]);
    |        require(balances[msg.sender] >= _value);
  > |        balances[msg.sender] -= _value;
    |        balances[_to] += _value;
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xb83c6b381aac1b8eb4eb0426edb5a5233882ea71.sol(58)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        balances[_from] -= _value;
    |        if (allowance < MAX_UINT256) {
  > |            allowed[_from][msg.sender] -= _value;
    |        }
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xb83c6b381aac1b8eb4eb0426edb5a5233882ea71.sol(72)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xb83c6b381aac1b8eb4eb0426edb5a5233882ea71.sol(83)


