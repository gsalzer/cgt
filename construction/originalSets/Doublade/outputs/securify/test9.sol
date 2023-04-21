Processing contract: /home/jiaming/mavs_srcs/contract@0x007e7c474a1abb8fdc1cd012b98ca3682a09e42f.sol:ABStandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x007e7c474a1abb8fdc1cd012b98ca3682a09e42f.sol:ABToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x007e7c474a1abb8fdc1cd012b98ca3682a09e42f.sol:ABTokenBase
[33mWarning[0m for LockedEther in contract 'ABStandardToken':
    |}
    |
  > |contract ABStandardToken is ABTokenBase {
    |
    |    uint256 constant MAX_UINT256 = 2**256 - 1;
  at /home/jiaming/mavs_srcs/contract@0x007e7c474a1abb8fdc1cd012b98ca3682a09e42f.sol(48)

[31mViolation[0m for MissingInputValidation in contract 'ABStandardToken':
    |    uint256 constant MAX_UINT256 = 2**256 - 1;
    |
  > |    function transfer(address _to, uint256 _value) public returns (bool success) {
    |        //Default assumes totalSupply can't be over max (2^256 - 1).
    |        //If your token leaves out totalSupply and can issue more tokens as time goes on, you need to check if it doesn't wrap.
  at /home/jiaming/mavs_srcs/contract@0x007e7c474a1abb8fdc1cd012b98ca3682a09e42f.sol(52)

[31mViolation[0m for MissingInputValidation in contract 'ABStandardToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        //same as above. Replace this line with the following if you want to protect against wrapping uints.
    |        //require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value && balances[_to] + _value > balances[_to]);
  at /home/jiaming/mavs_srcs/contract@0x007e7c474a1abb8fdc1cd012b98ca3682a09e42f.sol(64)

[31mViolation[0m for MissingInputValidation in contract 'ABStandardToken':
    |    }
    |
  > |    function balanceOf(address _owner) constant public returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x007e7c474a1abb8fdc1cd012b98ca3682a09e42f.sol(78)

[31mViolation[0m for MissingInputValidation in contract 'ABStandardToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) public returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x007e7c474a1abb8fdc1cd012b98ca3682a09e42f.sol(82)

[31mViolation[0m for MissingInputValidation in contract 'ABStandardToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) public constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x007e7c474a1abb8fdc1cd012b98ca3682a09e42f.sol(88)

[33mWarning[0m for MissingInputValidation in contract 'ABStandardToken':
    |    */
    |    /// total amount of tokens
  > |    uint256 public totalSupply;
    |
    |    /// @param _owner The address from which the balance will be retrieved
  at /home/jiaming/mavs_srcs/contract@0x007e7c474a1abb8fdc1cd012b98ca3682a09e42f.sol(14)

[31mViolation[0m for UnrestrictedWrite in contract 'ABStandardToken':
    |        require(balances[msg.sender] >= _value);
    |        balances[msg.sender] -= _value;
  > |        balances[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x007e7c474a1abb8fdc1cd012b98ca3682a09e42f.sol(59)

[31mViolation[0m for UnrestrictedWrite in contract 'ABStandardToken':
    |        uint256 allowance = allowed[_from][msg.sender];
    |        require(balances[_from] >= _value && allowance >= _value);
  > |        balances[_to] += _value;
    |        balances[_from] -= _value;
    |        if (allowance < MAX_UINT256) {
  at /home/jiaming/mavs_srcs/contract@0x007e7c474a1abb8fdc1cd012b98ca3682a09e42f.sol(69)

[31mViolation[0m for UnrestrictedWrite in contract 'ABStandardToken':
    |        require(balances[_from] >= _value && allowance >= _value);
    |        balances[_to] += _value;
  > |        balances[_from] -= _value;
    |        if (allowance < MAX_UINT256) {
    |            allowed[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x007e7c474a1abb8fdc1cd012b98ca3682a09e42f.sol(70)

[33mWarning[0m for UnrestrictedWrite in contract 'ABStandardToken':
    |        //require(balances[msg.sender] >= _value && balances[_to] + _value > balances[_to]);
    |        require(balances[msg.sender] >= _value);
  > |        balances[msg.sender] -= _value;
    |        balances[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x007e7c474a1abb8fdc1cd012b98ca3682a09e42f.sol(58)

[33mWarning[0m for UnrestrictedWrite in contract 'ABStandardToken':
    |        balances[_from] -= _value;
    |        if (allowance < MAX_UINT256) {
  > |            allowed[_from][msg.sender] -= _value;
    |        }
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x007e7c474a1abb8fdc1cd012b98ca3682a09e42f.sol(72)

[33mWarning[0m for UnrestrictedWrite in contract 'ABStandardToken':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x007e7c474a1abb8fdc1cd012b98ca3682a09e42f.sol(83)

[33mWarning[0m for LockedEther in contract 'ABToken':
    |}
    |
  > |contract ABToken is ABStandardToken {
    |
    |    /* Public variables of the token */
  at /home/jiaming/mavs_srcs/contract@0x007e7c474a1abb8fdc1cd012b98ca3682a09e42f.sol(96)

[31mViolation[0m for MissingInputValidation in contract 'ABToken':
    |    uint256 constant MAX_UINT256 = 2**256 - 1;
    |
  > |    function transfer(address _to, uint256 _value) public returns (bool success) {
    |        //Default assumes totalSupply can't be over max (2^256 - 1).
    |        //If your token leaves out totalSupply and can issue more tokens as time goes on, you need to check if it doesn't wrap.
  at /home/jiaming/mavs_srcs/contract@0x007e7c474a1abb8fdc1cd012b98ca3682a09e42f.sol(52)

[31mViolation[0m for MissingInputValidation in contract 'ABToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        //same as above. Replace this line with the following if you want to protect against wrapping uints.
    |        //require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value && balances[_to] + _value > balances[_to]);
  at /home/jiaming/mavs_srcs/contract@0x007e7c474a1abb8fdc1cd012b98ca3682a09e42f.sol(64)

[31mViolation[0m for MissingInputValidation in contract 'ABToken':
    |    }
    |
  > |    function balanceOf(address _owner) constant public returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x007e7c474a1abb8fdc1cd012b98ca3682a09e42f.sol(78)

[31mViolation[0m for MissingInputValidation in contract 'ABToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) public returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x007e7c474a1abb8fdc1cd012b98ca3682a09e42f.sol(82)

[31mViolation[0m for MissingInputValidation in contract 'ABToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) public constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x007e7c474a1abb8fdc1cd012b98ca3682a09e42f.sol(88)

[31mViolation[0m for MissingInputValidation in contract 'ABToken':
    |
    |    /* Approves and then calls the receiving contract */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) public returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x007e7c474a1abb8fdc1cd012b98ca3682a09e42f.sol(125)

[33mWarning[0m for MissingInputValidation in contract 'ABToken':
    |    */
    |    /// total amount of tokens
  > |    uint256 public totalSupply;
    |
    |    /// @param _owner The address from which the balance will be retrieved
  at /home/jiaming/mavs_srcs/contract@0x007e7c474a1abb8fdc1cd012b98ca3682a09e42f.sol(14)

[33mWarning[0m for MissingInputValidation in contract 'ABToken':
    |    Some wallets/interfaces might not even bother to look at this information.
    |    */
  > |    string public name;                   //fancy name: eg Simon Bucks
    |    uint8 public decimals;                //How many decimals to show. ie. There could 1000 base units with 3 decimals. Meaning 0.980 SBX = 980 base units. It's like comparing 1 wei to 1 ether.
    |    string public symbol;                 //An identifier: eg SBX
  at /home/jiaming/mavs_srcs/contract@0x007e7c474a1abb8fdc1cd012b98ca3682a09e42f.sol(106)

[33mWarning[0m for MissingInputValidation in contract 'ABToken':
    |    */
    |    string public name;                   //fancy name: eg Simon Bucks
  > |    uint8 public decimals;                //How many decimals to show. ie. There could 1000 base units with 3 decimals. Meaning 0.980 SBX = 980 base units. It's like comparing 1 wei to 1 ether.
    |    string public symbol;                 //An identifier: eg SBX
    |    string public version = 'H0.1.1';       //human 0.1 standard + applied blockchain first patch (H0.1.1)
  at /home/jiaming/mavs_srcs/contract@0x007e7c474a1abb8fdc1cd012b98ca3682a09e42f.sol(107)

[33mWarning[0m for MissingInputValidation in contract 'ABToken':
    |    string public name;                   //fancy name: eg Simon Bucks
    |    uint8 public decimals;                //How many decimals to show. ie. There could 1000 base units with 3 decimals. Meaning 0.980 SBX = 980 base units. It's like comparing 1 wei to 1 ether.
  > |    string public symbol;                 //An identifier: eg SBX
    |    string public version = 'H0.1.1';       //human 0.1 standard + applied blockchain first patch (H0.1.1)
    |
  at /home/jiaming/mavs_srcs/contract@0x007e7c474a1abb8fdc1cd012b98ca3682a09e42f.sol(108)

[33mWarning[0m for MissingInputValidation in contract 'ABToken':
    |    uint8 public decimals;                //How many decimals to show. ie. There could 1000 base units with 3 decimals. Meaning 0.980 SBX = 980 base units. It's like comparing 1 wei to 1 ether.
    |    string public symbol;                 //An identifier: eg SBX
  > |    string public version = 'H0.1.1';       //human 0.1 standard + applied blockchain first patch (H0.1.1)
    |
    |     function ABToken() public {
  at /home/jiaming/mavs_srcs/contract@0x007e7c474a1abb8fdc1cd012b98ca3682a09e42f.sol(109)

[33mWarning[0m for UnhandledException in contract 'ABToken':
    |        //receiveApproval(address _from, uint256 _value, address _tokenContract, bytes _extraData)
    |        //it is assumed when one does this that the call *should* succeed, otherwise one would use vanilla approve instead.
  > |        require(_spender.call(bytes4(bytes32(keccak256("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData));
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x007e7c474a1abb8fdc1cd012b98ca3682a09e42f.sol(132)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ABToken':
    |        //receiveApproval(address _from, uint256 _value, address _tokenContract, bytes _extraData)
    |        //it is assumed when one does this that the call *should* succeed, otherwise one would use vanilla approve instead.
  > |        require(_spender.call(bytes4(bytes32(keccak256("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData));
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x007e7c474a1abb8fdc1cd012b98ca3682a09e42f.sol(132)

[31mViolation[0m for UnrestrictedWrite in contract 'ABToken':
    |        require(balances[msg.sender] >= _value);
    |        balances[msg.sender] -= _value;
  > |        balances[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x007e7c474a1abb8fdc1cd012b98ca3682a09e42f.sol(59)

[31mViolation[0m for UnrestrictedWrite in contract 'ABToken':
    |        uint256 allowance = allowed[_from][msg.sender];
    |        require(balances[_from] >= _value && allowance >= _value);
  > |        balances[_to] += _value;
    |        balances[_from] -= _value;
    |        if (allowance < MAX_UINT256) {
  at /home/jiaming/mavs_srcs/contract@0x007e7c474a1abb8fdc1cd012b98ca3682a09e42f.sol(69)

[31mViolation[0m for UnrestrictedWrite in contract 'ABToken':
    |        require(balances[_from] >= _value && allowance >= _value);
    |        balances[_to] += _value;
  > |        balances[_from] -= _value;
    |        if (allowance < MAX_UINT256) {
    |            allowed[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x007e7c474a1abb8fdc1cd012b98ca3682a09e42f.sol(70)

[33mWarning[0m for UnrestrictedWrite in contract 'ABToken':
    |        //require(balances[msg.sender] >= _value && balances[_to] + _value > balances[_to]);
    |        require(balances[msg.sender] >= _value);
  > |        balances[msg.sender] -= _value;
    |        balances[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x007e7c474a1abb8fdc1cd012b98ca3682a09e42f.sol(58)

[33mWarning[0m for UnrestrictedWrite in contract 'ABToken':
    |        balances[_from] -= _value;
    |        if (allowance < MAX_UINT256) {
  > |            allowed[_from][msg.sender] -= _value;
    |        }
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x007e7c474a1abb8fdc1cd012b98ca3682a09e42f.sol(72)

[33mWarning[0m for UnrestrictedWrite in contract 'ABToken':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x007e7c474a1abb8fdc1cd012b98ca3682a09e42f.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'ABToken':
    |    /* Approves and then calls the receiving contract */
    |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |
  at /home/jiaming/mavs_srcs/contract@0x007e7c474a1abb8fdc1cd012b98ca3682a09e42f.sol(126)


