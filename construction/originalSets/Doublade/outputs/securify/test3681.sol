Processing contract: /home/jiaming/mavs_srcs/contract@0xf1252560e9bf579550622f25c533fea1279e10a1.sol:NlinkToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf1252560e9bf579550622f25c533fea1279e10a1.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'NlinkToken':
    |}
    |
  > |contract NlinkToken is SafeMath {
    |    string public name;
    |    string public symbol;
  at /home/jiaming/mavs_srcs/contract@0xf1252560e9bf579550622f25c533fea1279e10a1.sol(38)

[31mViolation[0m for MissingInputValidation in contract 'NlinkToken':
    |
    |    /* This creates an array with all balances */
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => uint256) public freezeOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
  at /home/jiaming/mavs_srcs/contract@0xf1252560e9bf579550622f25c533fea1279e10a1.sol(45)

[31mViolation[0m for MissingInputValidation in contract 'NlinkToken':
    |    /* This creates an array with all balances */
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => uint256) public freezeOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0xf1252560e9bf579550622f25c533fea1279e10a1.sol(46)

[31mViolation[0m for MissingInputValidation in contract 'NlinkToken':
    |    mapping (address => uint256) public balanceOf;
    |    mapping (address => uint256) public freezeOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    /* This generates a public event on the blockchain that will notify clients */
  at /home/jiaming/mavs_srcs/contract@0xf1252560e9bf579550622f25c533fea1279e10a1.sol(47)

[31mViolation[0m for MissingInputValidation in contract 'NlinkToken':
    |
    |    /* Transfer tokens */
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        if (_to == 0x0) revert();                                // Prevent transfer to 0x0 address. Use burn() instead
    |        if (_value <= 0) revert();
  at /home/jiaming/mavs_srcs/contract@0xf1252560e9bf579550622f25c533fea1279e10a1.sol(90)

[33mWarning[0m for MissingInputValidation in contract 'NlinkToken':
    |  }
    |
  > |  function safeSub(uint256 a, uint256 b) internal returns (uint256) {
    |    assert(b <= a);
    |    return a - b;
  at /home/jiaming/mavs_srcs/contract@0xf1252560e9bf579550622f25c533fea1279e10a1.sol(20)

[33mWarning[0m for MissingInputValidation in contract 'NlinkToken':
    |  }
    |
  > |  function safeAdd(uint256 a, uint256 b) internal returns (uint256) {
    |    uint256 c = a + b;
    |    assert(c>=a && c>=b);
  at /home/jiaming/mavs_srcs/contract@0xf1252560e9bf579550622f25c533fea1279e10a1.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'NlinkToken':
    |  }
    |
  > |  function assert(bool assertion) internal {
    |    if (!assertion) {
    |      revert();
  at /home/jiaming/mavs_srcs/contract@0xf1252560e9bf579550622f25c533fea1279e10a1.sol(31)

[33mWarning[0m for MissingInputValidation in contract 'NlinkToken':
    |
    |contract NlinkToken is SafeMath {
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0xf1252560e9bf579550622f25c533fea1279e10a1.sol(39)

[33mWarning[0m for MissingInputValidation in contract 'NlinkToken':
    |contract NlinkToken is SafeMath {
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals;
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0xf1252560e9bf579550622f25c533fea1279e10a1.sol(40)

[33mWarning[0m for MissingInputValidation in contract 'NlinkToken':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals;
    |    uint256 public totalSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0xf1252560e9bf579550622f25c533fea1279e10a1.sol(41)

[33mWarning[0m for MissingInputValidation in contract 'NlinkToken':
    |    string public symbol;
    |    uint8 public decimals;
  > |    uint256 public totalSupply;
    |
    |    /* This creates an array with all balances */
  at /home/jiaming/mavs_srcs/contract@0xf1252560e9bf579550622f25c533fea1279e10a1.sol(42)

[31mViolation[0m for UnrestrictedWrite in contract 'NlinkToken':
    |        if (balanceOf[_to] + _value < balanceOf[_to]) revert();  // Check for overflows
    |        if (_value > allowance[_from][msg.sender]) revert();     // Check allowance
  > |        balanceOf[_from] = SafeMath.safeSub(balanceOf[_from], _value);                         // Subtract from the sender
    |        balanceOf[_to] = SafeMath.safeAdd(balanceOf[_to], _value);                             // Add the same to the recipient
    |        allowance[_from][msg.sender] = SafeMath.safeSub(allowance[_from][msg.sender], _value);
  at /home/jiaming/mavs_srcs/contract@0xf1252560e9bf579550622f25c533fea1279e10a1.sol(96)

[31mViolation[0m for UnrestrictedWrite in contract 'NlinkToken':
    |        if (_value > allowance[_from][msg.sender]) revert();     // Check allowance
    |        balanceOf[_from] = SafeMath.safeSub(balanceOf[_from], _value);                         // Subtract from the sender
  > |        balanceOf[_to] = SafeMath.safeAdd(balanceOf[_to], _value);                             // Add the same to the recipient
    |        allowance[_from][msg.sender] = SafeMath.safeSub(allowance[_from][msg.sender], _value);
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xf1252560e9bf579550622f25c533fea1279e10a1.sol(97)

[33mWarning[0m for UnrestrictedWrite in contract 'NlinkToken':
    |        if (balanceOf[msg.sender] < _value) revert();           // Check if the sender has enough
    |        if (balanceOf[_to] + _value < balanceOf[_to]) revert(); // Check for overflows
  > |        balanceOf[msg.sender] = SafeMath.safeSub(balanceOf[msg.sender], _value);              // Subtract from the sender
    |        balanceOf[_to] = SafeMath.safeAdd(balanceOf[_to], _value);                            // Add the same to the recipient
    |        Transfer(msg.sender, _to, _value);                      // Notify anyone listening that this transfer took place
  at /home/jiaming/mavs_srcs/contract@0xf1252560e9bf579550622f25c533fea1279e10a1.sol(76)

[33mWarning[0m for UnrestrictedWrite in contract 'NlinkToken':
    |        require((_value == 0) || (allowance[msg.sender][_spender] == 0));
    |        if (_value <= 0) revert();
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf1252560e9bf579550622f25c533fea1279e10a1.sol(85)

[33mWarning[0m for UnrestrictedWrite in contract 'NlinkToken':
    |        balanceOf[_from] = SafeMath.safeSub(balanceOf[_from], _value);                         // Subtract from the sender
    |        balanceOf[_to] = SafeMath.safeAdd(balanceOf[_to], _value);                             // Add the same to the recipient
  > |        allowance[_from][msg.sender] = SafeMath.safeSub(allowance[_from][msg.sender], _value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xf1252560e9bf579550622f25c533fea1279e10a1.sol(98)

[33mWarning[0m for UnrestrictedWrite in contract 'NlinkToken':
    |        if (balanceOf[msg.sender] < _value) revert();            // Check if the sender has enough
    |        if (_value <= 0) revert();
  > |        balanceOf[msg.sender] = SafeMath.safeSub(balanceOf[msg.sender], _value);           // Subtract from the sender
    |        totalSupply = SafeMath.safeSub(totalSupply,_value);                                // Updates totalSupply
    |        Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0xf1252560e9bf579550622f25c533fea1279e10a1.sol(107)

[33mWarning[0m for UnrestrictedWrite in contract 'NlinkToken':
    |        if (balanceOf[msg.sender] < _value) revert();            // Check if the sender has enough
    |        if (_value <= 0) revert();
  > |        balanceOf[msg.sender] = SafeMath.safeSub(balanceOf[msg.sender], _value);             // Subtract from the sender
    |        freezeOf[msg.sender] = SafeMath.safeAdd(freezeOf[msg.sender], _value);               // Updates frozen tokens
    |        Freeze(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0xf1252560e9bf579550622f25c533fea1279e10a1.sol(116)

[33mWarning[0m for UnrestrictedWrite in contract 'NlinkToken':
    |        if (_value <= 0) revert();
    |        balanceOf[msg.sender] = SafeMath.safeSub(balanceOf[msg.sender], _value);             // Subtract from the sender
  > |        freezeOf[msg.sender] = SafeMath.safeAdd(freezeOf[msg.sender], _value);               // Updates frozen tokens
    |        Freeze(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xf1252560e9bf579550622f25c533fea1279e10a1.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'NlinkToken':
    |        if (freezeOf[msg.sender] < _value) revert();            // Check if the sender has enough
    |        if (_value <= 0) revert();
  > |        freezeOf[msg.sender] = SafeMath.safeSub(freezeOf[msg.sender], _value);              // Updates frozen tokens
    |        balanceOf[msg.sender] = SafeMath.safeAdd(balanceOf[msg.sender], _value);            // Add to the sender
    |        Unfreeze(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0xf1252560e9bf579550622f25c533fea1279e10a1.sol(125)

[33mWarning[0m for UnrestrictedWrite in contract 'NlinkToken':
    |        if (_value <= 0) revert();
    |        freezeOf[msg.sender] = SafeMath.safeSub(freezeOf[msg.sender], _value);              // Updates frozen tokens
  > |        balanceOf[msg.sender] = SafeMath.safeAdd(balanceOf[msg.sender], _value);            // Add to the sender
    |        Unfreeze(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xf1252560e9bf579550622f25c533fea1279e10a1.sol(126)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * Math operations with safety checks
    | */
  > |contract SafeMath {
    |  function safeMul(uint256 a, uint256 b) internal returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xf1252560e9bf579550622f25c533fea1279e10a1.sol(6)


