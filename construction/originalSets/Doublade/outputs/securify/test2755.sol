Processing contract: /home/jiaming/mavs_srcs/contract@0xb45a424b19d171c9f3a2b03ec4d741c2ae2baefb.sol:EIP20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0xb45a424b19d171c9f3a2b03ec4d741c2ae2baefb.sol:OliToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'OliToken':
    |
    |
  > |contract OliToken is EIP20Interface {
    |
    |    uint256 constant private MAX_UINT256 = 2**256 - 1;
  at /home/jiaming/mavs_srcs/contract@0xb45a424b19d171c9f3a2b03ec4d741c2ae2baefb.sol(60)

[31mViolation[0m for MissingInputValidation in contract 'OliToken':
    |
    |    uint256 constant private MAX_UINT256 = 2**256 - 1;
  > |    mapping (address => uint256) public balances;
    |    mapping (address => mapping (address => uint256)) public allowed;
    |    /*
  at /home/jiaming/mavs_srcs/contract@0xb45a424b19d171c9f3a2b03ec4d741c2ae2baefb.sol(63)

[31mViolation[0m for MissingInputValidation in contract 'OliToken':
    |    uint256 constant private MAX_UINT256 = 2**256 - 1;
    |    mapping (address => uint256) public balances;
  > |    mapping (address => mapping (address => uint256)) public allowed;
    |    /*
    |    NOTE:
  at /home/jiaming/mavs_srcs/contract@0xb45a424b19d171c9f3a2b03ec4d741c2ae2baefb.sol(64)

[31mViolation[0m for MissingInputValidation in contract 'OliToken':
    |    }
    |
  > |    function transfer(address _to, uint256 _value) public returns (bool success) {
    |        require(balances[msg.sender] >= _value);
    |        balances[msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0xb45a424b19d171c9f3a2b03ec4d741c2ae2baefb.sol(88)

[31mViolation[0m for MissingInputValidation in contract 'OliToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        uint256 allowance = allowed[_from][msg.sender];
    |        require(balances[_from] >= _value && allowance >= _value);
  at /home/jiaming/mavs_srcs/contract@0xb45a424b19d171c9f3a2b03ec4d741c2ae2baefb.sol(96)

[31mViolation[0m for MissingInputValidation in contract 'OliToken':
    |    }
    |
  > |    function balanceOf(address _owner) public view returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb45a424b19d171c9f3a2b03ec4d741c2ae2baefb.sol(108)

[31mViolation[0m for MissingInputValidation in contract 'OliToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) public returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xb45a424b19d171c9f3a2b03ec4d741c2ae2baefb.sol(112)

[31mViolation[0m for MissingInputValidation in contract 'OliToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) public view returns (uint256 remaining) {
    |        return allowed[_owner][_spender];
    |    }   
  at /home/jiaming/mavs_srcs/contract@0xb45a424b19d171c9f3a2b03ec4d741c2ae2baefb.sol(118)

[33mWarning[0m for MissingInputValidation in contract 'OliToken':
    |    */
    |    /// total amount of tokens
  > |    uint256 public totalSupply;
    |
    |    /// @param _owner The address from which the balance will be retrieved
  at /home/jiaming/mavs_srcs/contract@0xb45a424b19d171c9f3a2b03ec4d741c2ae2baefb.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'OliToken':
    |    Some wallets/interfaces might not even bother to look at this information.
    |    */
  > |    string public name;                   //fancy name: eg Simon Bucks
    |    uint8 public decimals;                //How many decimals to show.
    |    string public symbol;                 //An identifier: eg SBX
  at /home/jiaming/mavs_srcs/contract@0xb45a424b19d171c9f3a2b03ec4d741c2ae2baefb.sol(71)

[33mWarning[0m for MissingInputValidation in contract 'OliToken':
    |    */
    |    string public name;                   //fancy name: eg Simon Bucks
  > |    uint8 public decimals;                //How many decimals to show.
    |    string public symbol;                 //An identifier: eg SBX
    |
  at /home/jiaming/mavs_srcs/contract@0xb45a424b19d171c9f3a2b03ec4d741c2ae2baefb.sol(72)

[33mWarning[0m for MissingInputValidation in contract 'OliToken':
    |    string public name;                   //fancy name: eg Simon Bucks
    |    uint8 public decimals;                //How many decimals to show.
  > |    string public symbol;                 //An identifier: eg SBX
    |
    |    function OliToken(
  at /home/jiaming/mavs_srcs/contract@0xb45a424b19d171c9f3a2b03ec4d741c2ae2baefb.sol(73)

[31mViolation[0m for UnrestrictedWrite in contract 'OliToken':
    |        require(balances[msg.sender] >= _value);
    |        balances[msg.sender] -= _value;
  > |        balances[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xb45a424b19d171c9f3a2b03ec4d741c2ae2baefb.sol(91)

[31mViolation[0m for UnrestrictedWrite in contract 'OliToken':
    |        uint256 allowance = allowed[_from][msg.sender];
    |        require(balances[_from] >= _value && allowance >= _value);
  > |        balances[_to] += _value;
    |        balances[_from] -= _value;
    |        if (allowance < MAX_UINT256) {
  at /home/jiaming/mavs_srcs/contract@0xb45a424b19d171c9f3a2b03ec4d741c2ae2baefb.sol(99)

[31mViolation[0m for UnrestrictedWrite in contract 'OliToken':
    |        require(balances[_from] >= _value && allowance >= _value);
    |        balances[_to] += _value;
  > |        balances[_from] -= _value;
    |        if (allowance < MAX_UINT256) {
    |            allowed[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0xb45a424b19d171c9f3a2b03ec4d741c2ae2baefb.sol(100)

[33mWarning[0m for UnrestrictedWrite in contract 'OliToken':
    |    function transfer(address _to, uint256 _value) public returns (bool success) {
    |        require(balances[msg.sender] >= _value);
  > |        balances[msg.sender] -= _value;
    |        balances[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xb45a424b19d171c9f3a2b03ec4d741c2ae2baefb.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'OliToken':
    |        balances[_from] -= _value;
    |        if (allowance < MAX_UINT256) {
  > |            allowed[_from][msg.sender] -= _value;
    |        }
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xb45a424b19d171c9f3a2b03ec4d741c2ae2baefb.sol(102)

[33mWarning[0m for UnrestrictedWrite in contract 'OliToken':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xb45a424b19d171c9f3a2b03ec4d741c2ae2baefb.sol(113)


