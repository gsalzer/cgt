Processing contract: /home/jiaming/mavs_srcs/contract@0x1366fd503de9bc25539488f88ff6016ab6f6f1d4.sol:CharitySpaceToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1366fd503de9bc25539488f88ff6016ab6f6f1d4.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1366fd503de9bc25539488f88ff6016ab6f6f1d4.sol:Token
[33mWarning[0m for LockedEther in contract 'CharitySpaceToken':
    |.*/
    |
  > |contract CharitySpaceToken is StandardToken {
    |
    |  /* Public variables of the token */
  at /home/jiaming/mavs_srcs/contract@0x1366fd503de9bc25539488f88ff6016ab6f6f1d4.sol(114)

[31mViolation[0m for MissingInputValidation in contract 'CharitySpaceToken':
    |    uint256 constant MAX_UINT256 = 2**256 - 1;
    |
  > |    function transfer(address _to, uint256 _value) public returns (bool success) {
    |        //Default assumes totalSupply can't be over max (2^256 - 1).
    |        //If your token leaves out totalSupply and can issue more tokens as time goes on, you need to check if it doesn't wrap.
  at /home/jiaming/mavs_srcs/contract@0x1366fd503de9bc25539488f88ff6016ab6f6f1d4.sol(64)

[31mViolation[0m for MissingInputValidation in contract 'CharitySpaceToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        //same as above. Replace this line with the following if you want to protect against wrapping uints.
    |        //require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value && balances[_to] + _value > balances[_to]);
  at /home/jiaming/mavs_srcs/contract@0x1366fd503de9bc25539488f88ff6016ab6f6f1d4.sol(76)

[31mViolation[0m for MissingInputValidation in contract 'CharitySpaceToken':
    |    }
    |
  > |    function balanceOf(address _owner) view public returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1366fd503de9bc25539488f88ff6016ab6f6f1d4.sol(90)

[31mViolation[0m for MissingInputValidation in contract 'CharitySpaceToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) public returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x1366fd503de9bc25539488f88ff6016ab6f6f1d4.sol(94)

[31mViolation[0m for MissingInputValidation in contract 'CharitySpaceToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender)
    |    view public returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
  at /home/jiaming/mavs_srcs/contract@0x1366fd503de9bc25539488f88ff6016ab6f6f1d4.sol(100)

[33mWarning[0m for MissingInputValidation in contract 'CharitySpaceToken':
    |    */
    |    /// total amount of tokens
  > |    uint256 public totalSupply;
    |
    |    /// @param _owner The address from which the balance will be retrieved
  at /home/jiaming/mavs_srcs/contract@0x1366fd503de9bc25539488f88ff6016ab6f6f1d4.sol(17)

[33mWarning[0m for MissingInputValidation in contract 'CharitySpaceToken':
    |
    |  /* Public variables of the token */
  > |  string public name;                   //fancy name: eg Simon Bucks
    |  uint8 public decimals;                //How many decimals to show. ie. There could 1000 base units with 3 decimals. Meaning 0.980 SBX = 980 base units. It's like comparing 1 wei to 1 ether.
    |  string public symbol;                 //An identifier: eg SBX
  at /home/jiaming/mavs_srcs/contract@0x1366fd503de9bc25539488f88ff6016ab6f6f1d4.sol(117)

[33mWarning[0m for MissingInputValidation in contract 'CharitySpaceToken':
    |  /* Public variables of the token */
    |  string public name;                   //fancy name: eg Simon Bucks
  > |  uint8 public decimals;                //How many decimals to show. ie. There could 1000 base units with 3 decimals. Meaning 0.980 SBX = 980 base units. It's like comparing 1 wei to 1 ether.
    |  string public symbol;                 //An identifier: eg SBX
    |
  at /home/jiaming/mavs_srcs/contract@0x1366fd503de9bc25539488f88ff6016ab6f6f1d4.sol(118)

[33mWarning[0m for MissingInputValidation in contract 'CharitySpaceToken':
    |  string public name;                   //fancy name: eg Simon Bucks
    |  uint8 public decimals;                //How many decimals to show. ie. There could 1000 base units with 3 decimals. Meaning 0.980 SBX = 980 base units. It's like comparing 1 wei to 1 ether.
  > |  string public symbol;                 //An identifier: eg SBX
    |
    |  address public owner;
  at /home/jiaming/mavs_srcs/contract@0x1366fd503de9bc25539488f88ff6016ab6f6f1d4.sol(119)

[33mWarning[0m for MissingInputValidation in contract 'CharitySpaceToken':
    |  string public symbol;                 //An identifier: eg SBX
    |
  > |  address public owner;
    |  address private icoAddress;
    |
  at /home/jiaming/mavs_srcs/contract@0x1366fd503de9bc25539488f88ff6016ab6f6f1d4.sol(121)

[33mWarning[0m for MissingInputValidation in contract 'CharitySpaceToken':
    |  }
    |
  > |  function destroyUnsoldTokens() public {
    |    require(msg.sender == icoAddress || msg.sender == owner);
    |    uint256 value = balances[icoAddress];
  at /home/jiaming/mavs_srcs/contract@0x1366fd503de9bc25539488f88ff6016ab6f6f1d4.sol(154)

[31mViolation[0m for UnrestrictedWrite in contract 'CharitySpaceToken':
    |        require(balances[msg.sender] >= _value);
    |        balances[msg.sender] -= _value;
  > |        balances[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x1366fd503de9bc25539488f88ff6016ab6f6f1d4.sol(71)

[31mViolation[0m for UnrestrictedWrite in contract 'CharitySpaceToken':
    |        uint256 allowance = allowed[_from][msg.sender];
    |        require(balances[_from] >= _value && allowance >= _value);
  > |        balances[_to] += _value;
    |        balances[_from] -= _value;
    |        if (allowance < MAX_UINT256) {
  at /home/jiaming/mavs_srcs/contract@0x1366fd503de9bc25539488f88ff6016ab6f6f1d4.sol(81)

[31mViolation[0m for UnrestrictedWrite in contract 'CharitySpaceToken':
    |        require(balances[_from] >= _value && allowance >= _value);
    |        balances[_to] += _value;
  > |        balances[_from] -= _value;
    |        if (allowance < MAX_UINT256) {
    |            allowed[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x1366fd503de9bc25539488f88ff6016ab6f6f1d4.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'CharitySpaceToken':
    |        //require(balances[msg.sender] >= _value && balances[_to] + _value > balances[_to]);
    |        require(balances[msg.sender] >= _value);
  > |        balances[msg.sender] -= _value;
    |        balances[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x1366fd503de9bc25539488f88ff6016ab6f6f1d4.sol(70)

[33mWarning[0m for UnrestrictedWrite in contract 'CharitySpaceToken':
    |        balances[_from] -= _value;
    |        if (allowance < MAX_UINT256) {
  > |            allowed[_from][msg.sender] -= _value;
    |        }
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x1366fd503de9bc25539488f88ff6016ab6f6f1d4.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'CharitySpaceToken':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x1366fd503de9bc25539488f88ff6016ab6f6f1d4.sol(95)

[33mWarning[0m for UnrestrictedWrite in contract 'CharitySpaceToken':
    |    require(msg.sender == icoAddress || msg.sender == owner);
    |    uint256 value = balances[icoAddress];
  > |    totalSupply -= value;
    |    balances[icoAddress] = 0;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x1366fd503de9bc25539488f88ff6016ab6f6f1d4.sol(157)

[33mWarning[0m for UnrestrictedWrite in contract 'CharitySpaceToken':
    |    uint256 value = balances[icoAddress];
    |    totalSupply -= value;
  > |    balances[icoAddress] = 0;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x1366fd503de9bc25539488f88ff6016ab6f6f1d4.sol(158)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |.*/
    |
  > |contract StandardToken is Token {
    |
    |    uint256 constant MAX_UINT256 = 2**256 - 1;
  at /home/jiaming/mavs_srcs/contract@0x1366fd503de9bc25539488f88ff6016ab6f6f1d4.sol(60)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    uint256 constant MAX_UINT256 = 2**256 - 1;
    |
  > |    function transfer(address _to, uint256 _value) public returns (bool success) {
    |        //Default assumes totalSupply can't be over max (2^256 - 1).
    |        //If your token leaves out totalSupply and can issue more tokens as time goes on, you need to check if it doesn't wrap.
  at /home/jiaming/mavs_srcs/contract@0x1366fd503de9bc25539488f88ff6016ab6f6f1d4.sol(64)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        //same as above. Replace this line with the following if you want to protect against wrapping uints.
    |        //require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value && balances[_to] + _value > balances[_to]);
  at /home/jiaming/mavs_srcs/contract@0x1366fd503de9bc25539488f88ff6016ab6f6f1d4.sol(76)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function balanceOf(address _owner) view public returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1366fd503de9bc25539488f88ff6016ab6f6f1d4.sol(90)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) public returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x1366fd503de9bc25539488f88ff6016ab6f6f1d4.sol(94)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender)
    |    view public returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
  at /home/jiaming/mavs_srcs/contract@0x1366fd503de9bc25539488f88ff6016ab6f6f1d4.sol(100)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |    */
    |    /// total amount of tokens
  > |    uint256 public totalSupply;
    |
    |    /// @param _owner The address from which the balance will be retrieved
  at /home/jiaming/mavs_srcs/contract@0x1366fd503de9bc25539488f88ff6016ab6f6f1d4.sol(17)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |        require(balances[msg.sender] >= _value);
    |        balances[msg.sender] -= _value;
  > |        balances[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x1366fd503de9bc25539488f88ff6016ab6f6f1d4.sol(71)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |        uint256 allowance = allowed[_from][msg.sender];
    |        require(balances[_from] >= _value && allowance >= _value);
  > |        balances[_to] += _value;
    |        balances[_from] -= _value;
    |        if (allowance < MAX_UINT256) {
  at /home/jiaming/mavs_srcs/contract@0x1366fd503de9bc25539488f88ff6016ab6f6f1d4.sol(81)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |        require(balances[_from] >= _value && allowance >= _value);
    |        balances[_to] += _value;
  > |        balances[_from] -= _value;
    |        if (allowance < MAX_UINT256) {
    |            allowed[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x1366fd503de9bc25539488f88ff6016ab6f6f1d4.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        //require(balances[msg.sender] >= _value && balances[_to] + _value > balances[_to]);
    |        require(balances[msg.sender] >= _value);
  > |        balances[msg.sender] -= _value;
    |        balances[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x1366fd503de9bc25539488f88ff6016ab6f6f1d4.sol(70)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        balances[_from] -= _value;
    |        if (allowance < MAX_UINT256) {
  > |            allowed[_from][msg.sender] -= _value;
    |        }
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x1366fd503de9bc25539488f88ff6016ab6f6f1d4.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x1366fd503de9bc25539488f88ff6016ab6f6f1d4.sol(95)


