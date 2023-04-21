Processing contract: /home/jiaming/mavs_srcs/contract@0x3dd2e6958037a7acf4ed9f13d0e36ba9022dd708.sol:HTC
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3dd2e6958037a7acf4ed9f13d0e36ba9022dd708.sol:HTCStandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3dd2e6958037a7acf4ed9f13d0e36ba9022dd708.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3dd2e6958037a7acf4ed9f13d0e36ba9022dd708.sol:Token
[33mWarning[0m for LockedEther in contract 'HTC':
    |}
    |// Creates 1,000,000,000.000000000000000000 HuiTong Coin (HTC) Tokens
  > |contract HTC is HTCStandardToken(1000000000000000000000000000, "HuiTong Coin", 18, "HTC") {}
  at /home/jiaming/mavs_srcs/contract@0x3dd2e6958037a7acf4ed9f13d0e36ba9022dd708.sol(139)

[31mViolation[0m for MissingInputValidation in contract 'HTC':
    |    uint256 constant MAX_UINT256 = 2**256 - 1;
    |
  > |    function transfer(address _to, uint256 _value) public returns (bool success) {
    |        //Default assumes totalSupply can't be over max (2^256 - 1).
    |        //If your token leaves out totalSupply and can issue more tokens as time goes on, you need to check if it doesn't wrap.
  at /home/jiaming/mavs_srcs/contract@0x3dd2e6958037a7acf4ed9f13d0e36ba9022dd708.sol(53)

[31mViolation[0m for MissingInputValidation in contract 'HTC':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        //same as above. Replace this line with the following if you want to protect against wrapping uints.
    |        //require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value && balances[_to] + _value > balances[_to]);
  at /home/jiaming/mavs_srcs/contract@0x3dd2e6958037a7acf4ed9f13d0e36ba9022dd708.sol(65)

[31mViolation[0m for MissingInputValidation in contract 'HTC':
    |    }
    |
  > |    function balanceOf(address _owner) view public returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3dd2e6958037a7acf4ed9f13d0e36ba9022dd708.sol(79)

[31mViolation[0m for MissingInputValidation in contract 'HTC':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) public returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x3dd2e6958037a7acf4ed9f13d0e36ba9022dd708.sol(83)

[31mViolation[0m for MissingInputValidation in contract 'HTC':
    |    }
    |
  > |    function allowance(address _owner, address _spender)
    |    view public returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
  at /home/jiaming/mavs_srcs/contract@0x3dd2e6958037a7acf4ed9f13d0e36ba9022dd708.sol(89)

[31mViolation[0m for MissingInputValidation in contract 'HTC':
    |
    |    /* Approves and then calls the receiving contract */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) public returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x3dd2e6958037a7acf4ed9f13d0e36ba9022dd708.sol(127)

[33mWarning[0m for MissingInputValidation in contract 'HTC':
    |    */
    |    /// total amount of tokens
  > |    uint256 public totalSupply;
    |
    |    /// @param _owner The address from which the balance will be retrieved
  at /home/jiaming/mavs_srcs/contract@0x3dd2e6958037a7acf4ed9f13d0e36ba9022dd708.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'HTC':
    |    Some wallets/interfaces might not even bother to look at this information.
    |    */
  > |    string public name;                   //fancy name: eg Simon Bucks
    |    uint8 public decimals;                //How many decimals to show. 
    |    string public symbol;                 //An identifier
  at /home/jiaming/mavs_srcs/contract@0x3dd2e6958037a7acf4ed9f13d0e36ba9022dd708.sol(108)

[33mWarning[0m for MissingInputValidation in contract 'HTC':
    |    */
    |    string public name;                   //fancy name: eg Simon Bucks
  > |    uint8 public decimals;                //How many decimals to show. 
    |    string public symbol;                 //An identifier
    |    string public version = 'F0.1';       // Just an arbitrary versioning scheme.
  at /home/jiaming/mavs_srcs/contract@0x3dd2e6958037a7acf4ed9f13d0e36ba9022dd708.sol(109)

[33mWarning[0m for MissingInputValidation in contract 'HTC':
    |    string public name;                   //fancy name: eg Simon Bucks
    |    uint8 public decimals;                //How many decimals to show. 
  > |    string public symbol;                 //An identifier
    |    string public version = 'F0.1';       // Just an arbitrary versioning scheme.
    |
  at /home/jiaming/mavs_srcs/contract@0x3dd2e6958037a7acf4ed9f13d0e36ba9022dd708.sol(110)

[33mWarning[0m for MissingInputValidation in contract 'HTC':
    |    uint8 public decimals;                //How many decimals to show. 
    |    string public symbol;                 //An identifier
  > |    string public version = 'F0.1';       // Just an arbitrary versioning scheme.
    |
    |     constructor(
  at /home/jiaming/mavs_srcs/contract@0x3dd2e6958037a7acf4ed9f13d0e36ba9022dd708.sol(111)

[33mWarning[0m for UnhandledException in contract 'HTC':
    |        //receiveApproval(address _from, uint256 _value, address _tokenContract, bytes _extraData)
    |        //it is assumed when one does this that the call *should* succeed, otherwise one would use vanilla approve instead.
  > |        require(_spender.call(bytes4(bytes32(keccak256("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData));
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3dd2e6958037a7acf4ed9f13d0e36ba9022dd708.sol(134)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HTC':
    |        //receiveApproval(address _from, uint256 _value, address _tokenContract, bytes _extraData)
    |        //it is assumed when one does this that the call *should* succeed, otherwise one would use vanilla approve instead.
  > |        require(_spender.call(bytes4(bytes32(keccak256("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData));
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3dd2e6958037a7acf4ed9f13d0e36ba9022dd708.sol(134)

[31mViolation[0m for UnrestrictedWrite in contract 'HTC':
    |        require(balances[msg.sender] >= _value);
    |        balances[msg.sender] -= _value;
  > |        balances[_to] += _value;
    |        emit Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x3dd2e6958037a7acf4ed9f13d0e36ba9022dd708.sol(60)

[31mViolation[0m for UnrestrictedWrite in contract 'HTC':
    |        uint256 allowance = allowed[_from][msg.sender];
    |        require(balances[_from] >= _value && allowance >= _value);
  > |        balances[_to] += _value;
    |        balances[_from] -= _value;
    |        if (allowance < MAX_UINT256) {
  at /home/jiaming/mavs_srcs/contract@0x3dd2e6958037a7acf4ed9f13d0e36ba9022dd708.sol(70)

[31mViolation[0m for UnrestrictedWrite in contract 'HTC':
    |        require(balances[_from] >= _value && allowance >= _value);
    |        balances[_to] += _value;
  > |        balances[_from] -= _value;
    |        if (allowance < MAX_UINT256) {
    |            allowed[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x3dd2e6958037a7acf4ed9f13d0e36ba9022dd708.sol(71)

[33mWarning[0m for UnrestrictedWrite in contract 'HTC':
    |        //require(balances[msg.sender] >= _value && balances[_to] + _value > balances[_to]);
    |        require(balances[msg.sender] >= _value);
  > |        balances[msg.sender] -= _value;
    |        balances[_to] += _value;
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x3dd2e6958037a7acf4ed9f13d0e36ba9022dd708.sol(59)

[33mWarning[0m for UnrestrictedWrite in contract 'HTC':
    |        balances[_from] -= _value;
    |        if (allowance < MAX_UINT256) {
  > |            allowed[_from][msg.sender] -= _value;
    |        }
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x3dd2e6958037a7acf4ed9f13d0e36ba9022dd708.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'HTC':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x3dd2e6958037a7acf4ed9f13d0e36ba9022dd708.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'HTC':
    |    /* Approves and then calls the receiving contract */
    |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |
  at /home/jiaming/mavs_srcs/contract@0x3dd2e6958037a7acf4ed9f13d0e36ba9022dd708.sol(128)

[33mWarning[0m for LockedEther in contract 'HTCStandardToken':
    |}
    |
  > |contract HTCStandardToken is StandardToken {
    |
    |    /* Public variables of the token */
  at /home/jiaming/mavs_srcs/contract@0x3dd2e6958037a7acf4ed9f13d0e36ba9022dd708.sol(98)

[31mViolation[0m for MissingInputValidation in contract 'HTCStandardToken':
    |    uint256 constant MAX_UINT256 = 2**256 - 1;
    |
  > |    function transfer(address _to, uint256 _value) public returns (bool success) {
    |        //Default assumes totalSupply can't be over max (2^256 - 1).
    |        //If your token leaves out totalSupply and can issue more tokens as time goes on, you need to check if it doesn't wrap.
  at /home/jiaming/mavs_srcs/contract@0x3dd2e6958037a7acf4ed9f13d0e36ba9022dd708.sol(53)

[31mViolation[0m for MissingInputValidation in contract 'HTCStandardToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        //same as above. Replace this line with the following if you want to protect against wrapping uints.
    |        //require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value && balances[_to] + _value > balances[_to]);
  at /home/jiaming/mavs_srcs/contract@0x3dd2e6958037a7acf4ed9f13d0e36ba9022dd708.sol(65)

[31mViolation[0m for MissingInputValidation in contract 'HTCStandardToken':
    |    }
    |
  > |    function balanceOf(address _owner) view public returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3dd2e6958037a7acf4ed9f13d0e36ba9022dd708.sol(79)

[31mViolation[0m for MissingInputValidation in contract 'HTCStandardToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) public returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x3dd2e6958037a7acf4ed9f13d0e36ba9022dd708.sol(83)

[31mViolation[0m for MissingInputValidation in contract 'HTCStandardToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender)
    |    view public returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
  at /home/jiaming/mavs_srcs/contract@0x3dd2e6958037a7acf4ed9f13d0e36ba9022dd708.sol(89)

[31mViolation[0m for MissingInputValidation in contract 'HTCStandardToken':
    |
    |    /* Approves and then calls the receiving contract */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) public returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x3dd2e6958037a7acf4ed9f13d0e36ba9022dd708.sol(127)

[33mWarning[0m for MissingInputValidation in contract 'HTCStandardToken':
    |    */
    |    /// total amount of tokens
  > |    uint256 public totalSupply;
    |
    |    /// @param _owner The address from which the balance will be retrieved
  at /home/jiaming/mavs_srcs/contract@0x3dd2e6958037a7acf4ed9f13d0e36ba9022dd708.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'HTCStandardToken':
    |    Some wallets/interfaces might not even bother to look at this information.
    |    */
  > |    string public name;                   //fancy name: eg Simon Bucks
    |    uint8 public decimals;                //How many decimals to show. 
    |    string public symbol;                 //An identifier
  at /home/jiaming/mavs_srcs/contract@0x3dd2e6958037a7acf4ed9f13d0e36ba9022dd708.sol(108)

[33mWarning[0m for MissingInputValidation in contract 'HTCStandardToken':
    |    */
    |    string public name;                   //fancy name: eg Simon Bucks
  > |    uint8 public decimals;                //How many decimals to show. 
    |    string public symbol;                 //An identifier
    |    string public version = 'F0.1';       // Just an arbitrary versioning scheme.
  at /home/jiaming/mavs_srcs/contract@0x3dd2e6958037a7acf4ed9f13d0e36ba9022dd708.sol(109)

[33mWarning[0m for MissingInputValidation in contract 'HTCStandardToken':
    |    string public name;                   //fancy name: eg Simon Bucks
    |    uint8 public decimals;                //How many decimals to show. 
  > |    string public symbol;                 //An identifier
    |    string public version = 'F0.1';       // Just an arbitrary versioning scheme.
    |
  at /home/jiaming/mavs_srcs/contract@0x3dd2e6958037a7acf4ed9f13d0e36ba9022dd708.sol(110)

[33mWarning[0m for MissingInputValidation in contract 'HTCStandardToken':
    |    uint8 public decimals;                //How many decimals to show. 
    |    string public symbol;                 //An identifier
  > |    string public version = 'F0.1';       // Just an arbitrary versioning scheme.
    |
    |     constructor(
  at /home/jiaming/mavs_srcs/contract@0x3dd2e6958037a7acf4ed9f13d0e36ba9022dd708.sol(111)

[33mWarning[0m for UnhandledException in contract 'HTCStandardToken':
    |        //receiveApproval(address _from, uint256 _value, address _tokenContract, bytes _extraData)
    |        //it is assumed when one does this that the call *should* succeed, otherwise one would use vanilla approve instead.
  > |        require(_spender.call(bytes4(bytes32(keccak256("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData));
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3dd2e6958037a7acf4ed9f13d0e36ba9022dd708.sol(134)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HTCStandardToken':
    |        //receiveApproval(address _from, uint256 _value, address _tokenContract, bytes _extraData)
    |        //it is assumed when one does this that the call *should* succeed, otherwise one would use vanilla approve instead.
  > |        require(_spender.call(bytes4(bytes32(keccak256("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData));
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3dd2e6958037a7acf4ed9f13d0e36ba9022dd708.sol(134)

[31mViolation[0m for UnrestrictedWrite in contract 'HTCStandardToken':
    |        require(balances[msg.sender] >= _value);
    |        balances[msg.sender] -= _value;
  > |        balances[_to] += _value;
    |        emit Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x3dd2e6958037a7acf4ed9f13d0e36ba9022dd708.sol(60)

[31mViolation[0m for UnrestrictedWrite in contract 'HTCStandardToken':
    |        uint256 allowance = allowed[_from][msg.sender];
    |        require(balances[_from] >= _value && allowance >= _value);
  > |        balances[_to] += _value;
    |        balances[_from] -= _value;
    |        if (allowance < MAX_UINT256) {
  at /home/jiaming/mavs_srcs/contract@0x3dd2e6958037a7acf4ed9f13d0e36ba9022dd708.sol(70)

[31mViolation[0m for UnrestrictedWrite in contract 'HTCStandardToken':
    |        require(balances[_from] >= _value && allowance >= _value);
    |        balances[_to] += _value;
  > |        balances[_from] -= _value;
    |        if (allowance < MAX_UINT256) {
    |            allowed[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x3dd2e6958037a7acf4ed9f13d0e36ba9022dd708.sol(71)

[33mWarning[0m for UnrestrictedWrite in contract 'HTCStandardToken':
    |        //require(balances[msg.sender] >= _value && balances[_to] + _value > balances[_to]);
    |        require(balances[msg.sender] >= _value);
  > |        balances[msg.sender] -= _value;
    |        balances[_to] += _value;
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x3dd2e6958037a7acf4ed9f13d0e36ba9022dd708.sol(59)

[33mWarning[0m for UnrestrictedWrite in contract 'HTCStandardToken':
    |        balances[_from] -= _value;
    |        if (allowance < MAX_UINT256) {
  > |            allowed[_from][msg.sender] -= _value;
    |        }
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x3dd2e6958037a7acf4ed9f13d0e36ba9022dd708.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'HTCStandardToken':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x3dd2e6958037a7acf4ed9f13d0e36ba9022dd708.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'HTCStandardToken':
    |    /* Approves and then calls the receiving contract */
    |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |
  at /home/jiaming/mavs_srcs/contract@0x3dd2e6958037a7acf4ed9f13d0e36ba9022dd708.sol(128)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |    event Approval(address indexed _owner, address indexed _spender, uint256 _value);
    |}
  > |contract StandardToken is Token {
    |
    |    uint256 constant MAX_UINT256 = 2**256 - 1;
  at /home/jiaming/mavs_srcs/contract@0x3dd2e6958037a7acf4ed9f13d0e36ba9022dd708.sol(49)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    uint256 constant MAX_UINT256 = 2**256 - 1;
    |
  > |    function transfer(address _to, uint256 _value) public returns (bool success) {
    |        //Default assumes totalSupply can't be over max (2^256 - 1).
    |        //If your token leaves out totalSupply and can issue more tokens as time goes on, you need to check if it doesn't wrap.
  at /home/jiaming/mavs_srcs/contract@0x3dd2e6958037a7acf4ed9f13d0e36ba9022dd708.sol(53)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        //same as above. Replace this line with the following if you want to protect against wrapping uints.
    |        //require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value && balances[_to] + _value > balances[_to]);
  at /home/jiaming/mavs_srcs/contract@0x3dd2e6958037a7acf4ed9f13d0e36ba9022dd708.sol(65)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function balanceOf(address _owner) view public returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3dd2e6958037a7acf4ed9f13d0e36ba9022dd708.sol(79)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) public returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x3dd2e6958037a7acf4ed9f13d0e36ba9022dd708.sol(83)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender)
    |    view public returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
  at /home/jiaming/mavs_srcs/contract@0x3dd2e6958037a7acf4ed9f13d0e36ba9022dd708.sol(89)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |    */
    |    /// total amount of tokens
  > |    uint256 public totalSupply;
    |
    |    /// @param _owner The address from which the balance will be retrieved
  at /home/jiaming/mavs_srcs/contract@0x3dd2e6958037a7acf4ed9f13d0e36ba9022dd708.sol(16)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |        require(balances[msg.sender] >= _value);
    |        balances[msg.sender] -= _value;
  > |        balances[_to] += _value;
    |        emit Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x3dd2e6958037a7acf4ed9f13d0e36ba9022dd708.sol(60)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |        uint256 allowance = allowed[_from][msg.sender];
    |        require(balances[_from] >= _value && allowance >= _value);
  > |        balances[_to] += _value;
    |        balances[_from] -= _value;
    |        if (allowance < MAX_UINT256) {
  at /home/jiaming/mavs_srcs/contract@0x3dd2e6958037a7acf4ed9f13d0e36ba9022dd708.sol(70)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |        require(balances[_from] >= _value && allowance >= _value);
    |        balances[_to] += _value;
  > |        balances[_from] -= _value;
    |        if (allowance < MAX_UINT256) {
    |            allowed[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x3dd2e6958037a7acf4ed9f13d0e36ba9022dd708.sol(71)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        //require(balances[msg.sender] >= _value && balances[_to] + _value > balances[_to]);
    |        require(balances[msg.sender] >= _value);
  > |        balances[msg.sender] -= _value;
    |        balances[_to] += _value;
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x3dd2e6958037a7acf4ed9f13d0e36ba9022dd708.sol(59)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        balances[_from] -= _value;
    |        if (allowance < MAX_UINT256) {
  > |            allowed[_from][msg.sender] -= _value;
    |        }
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x3dd2e6958037a7acf4ed9f13d0e36ba9022dd708.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x3dd2e6958037a7acf4ed9f13d0e36ba9022dd708.sol(84)


