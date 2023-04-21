Processing contract: /home/jiaming/mavs_srcs/contract@0x08c67341b674ca2ffb37f400a5c7fc1035a7ae53.sol:FBR
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x08c67341b674ca2ffb37f400a5c7fc1035a7ae53.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'FBR':
    |}
    |
  > |contract FBR is SafeMath{
    |    string public name = "FBR";
    |    string public symbol = "FBR";
  at /home/jiaming/mavs_srcs/contract@0x08c67341b674ca2ffb37f400a5c7fc1035a7ae53.sol(36)

[31mViolation[0m for MissingInputValidation in contract 'FBR':
    |
    |    /* This creates an array with all balances */
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0x08c67341b674ca2ffb37f400a5c7fc1035a7ae53.sol(44)

[31mViolation[0m for MissingInputValidation in contract 'FBR':
    |    /* This creates an array with all balances */
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    /* This generates a public event on the blockchain that will notify clients */
  at /home/jiaming/mavs_srcs/contract@0x08c67341b674ca2ffb37f400a5c7fc1035a7ae53.sol(45)

[31mViolation[0m for MissingInputValidation in contract 'FBR':
    |
    |    /* Allow another contract to spend some tokens in your behalf */
  > |    function approve(address _spender, uint256 _value)
    |        returns (bool success) {
    |		require(_value > 0); 
  at /home/jiaming/mavs_srcs/contract@0x08c67341b674ca2ffb37f400a5c7fc1035a7ae53.sol(71)

[31mViolation[0m for MissingInputValidation in contract 'FBR':
    |       
    |    /* A contract attempts to get the coins */
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        require(_to != 0x0);                              // Prevent transfer to 0x0 address. Use burn() instead
    |		require(_value > 0); 
  at /home/jiaming/mavs_srcs/contract@0x08c67341b674ca2ffb37f400a5c7fc1035a7ae53.sol(79)

[33mWarning[0m for MissingInputValidation in contract 'FBR':
    |  }
    |
  > |  function safeSub(uint256 a, uint256 b) internal returns (uint256) {
    |    assert(b <= a);
    |    return a - b;
  at /home/jiaming/mavs_srcs/contract@0x08c67341b674ca2ffb37f400a5c7fc1035a7ae53.sol(20)

[33mWarning[0m for MissingInputValidation in contract 'FBR':
    |  }
    |
  > |  function safeAdd(uint256 a, uint256 b) internal returns (uint256) {
    |    uint256 c = a + b;
    |    assert(c>=a && c>=b);
  at /home/jiaming/mavs_srcs/contract@0x08c67341b674ca2ffb37f400a5c7fc1035a7ae53.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'FBR':
    |  }
    |
  > |  function assert(bool assertion) internal {
    |      require(assertion);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x08c67341b674ca2ffb37f400a5c7fc1035a7ae53.sol(31)

[33mWarning[0m for MissingInputValidation in contract 'FBR':
    |
    |contract FBR is SafeMath{
  > |    string public name = "FBR";
    |    string public symbol = "FBR";
    |    uint8 public decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0x08c67341b674ca2ffb37f400a5c7fc1035a7ae53.sol(37)

[33mWarning[0m for MissingInputValidation in contract 'FBR':
    |contract FBR is SafeMath{
    |    string public name = "FBR";
  > |    string public symbol = "FBR";
    |    uint8 public decimals = 18;
    |    uint256 public totalSupply = 10**26;
  at /home/jiaming/mavs_srcs/contract@0x08c67341b674ca2ffb37f400a5c7fc1035a7ae53.sol(38)

[33mWarning[0m for MissingInputValidation in contract 'FBR':
    |    string public name = "FBR";
    |    string public symbol = "FBR";
  > |    uint8 public decimals = 18;
    |    uint256 public totalSupply = 10**26;
    |	address public owner;
  at /home/jiaming/mavs_srcs/contract@0x08c67341b674ca2ffb37f400a5c7fc1035a7ae53.sol(39)

[33mWarning[0m for MissingInputValidation in contract 'FBR':
    |    string public symbol = "FBR";
    |    uint8 public decimals = 18;
  > |    uint256 public totalSupply = 10**26;
    |	address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x08c67341b674ca2ffb37f400a5c7fc1035a7ae53.sol(40)

[33mWarning[0m for MissingInputValidation in contract 'FBR':
    |    uint8 public decimals = 18;
    |    uint256 public totalSupply = 10**26;
  > |	address public owner;
    |
    |    /* This creates an array with all balances */
  at /home/jiaming/mavs_srcs/contract@0x08c67341b674ca2ffb37f400a5c7fc1035a7ae53.sol(41)

[31mViolation[0m for UnrestrictedWrite in contract 'FBR':
    |        require(balanceOf[_to] + _value >= balanceOf[_to]); // Check for overflows
    |        balanceOf[msg.sender] = SafeMath.safeSub(balanceOf[msg.sender], _value);                     // Subtract from the sender
  > |        balanceOf[_to] = SafeMath.safeAdd(balanceOf[_to], _value);                            // Add the same to the recipient
    |        Transfer(msg.sender, _to, _value);                   // Notify anyone listening that this transfer took place
    |    }
  at /home/jiaming/mavs_srcs/contract@0x08c67341b674ca2ffb37f400a5c7fc1035a7ae53.sol(66)

[31mViolation[0m for UnrestrictedWrite in contract 'FBR':
    |        require(balanceOf[_to] + _value >= balanceOf[_to]); // Check for overflows
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
  > |        balanceOf[_from] = SafeMath.safeSub(balanceOf[_from], _value);                           // Subtract from the sender
    |        balanceOf[_to] = SafeMath.safeAdd(balanceOf[_to], _value);                             // Add the same to the recipient
    |        allowance[_from][msg.sender] = SafeMath.safeSub(allowance[_from][msg.sender], _value);
  at /home/jiaming/mavs_srcs/contract@0x08c67341b674ca2ffb37f400a5c7fc1035a7ae53.sol(85)

[31mViolation[0m for UnrestrictedWrite in contract 'FBR':
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
    |        balanceOf[_from] = SafeMath.safeSub(balanceOf[_from], _value);                           // Subtract from the sender
  > |        balanceOf[_to] = SafeMath.safeAdd(balanceOf[_to], _value);                             // Add the same to the recipient
    |        allowance[_from][msg.sender] = SafeMath.safeSub(allowance[_from][msg.sender], _value);
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x08c67341b674ca2ffb37f400a5c7fc1035a7ae53.sol(86)

[31mViolation[0m for UnrestrictedWrite in contract 'FBR':
    |        balanceOf[_from] = SafeMath.safeSub(balanceOf[_from], _value);                           // Subtract from the sender
    |        balanceOf[_to] = SafeMath.safeAdd(balanceOf[_to], _value);                             // Add the same to the recipient
  > |        allowance[_from][msg.sender] = SafeMath.safeSub(allowance[_from][msg.sender], _value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x08c67341b674ca2ffb37f400a5c7fc1035a7ae53.sol(87)

[33mWarning[0m for UnrestrictedWrite in contract 'FBR':
    |        require(balanceOf[msg.sender] >= _value);           // Check if the sender has enough
    |        require(balanceOf[_to] + _value >= balanceOf[_to]); // Check for overflows
  > |        balanceOf[msg.sender] = SafeMath.safeSub(balanceOf[msg.sender], _value);                     // Subtract from the sender
    |        balanceOf[_to] = SafeMath.safeAdd(balanceOf[_to], _value);                            // Add the same to the recipient
    |        Transfer(msg.sender, _to, _value);                   // Notify anyone listening that this transfer took place
  at /home/jiaming/mavs_srcs/contract@0x08c67341b674ca2ffb37f400a5c7fc1035a7ae53.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'FBR':
    |        returns (bool success) {
    |		require(_value > 0); 
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x08c67341b674ca2ffb37f400a5c7fc1035a7ae53.sol(74)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * Math operations with safety checks
    | */
  > |contract SafeMath {
    |  function safeMul(uint256 a, uint256 b) internal returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x08c67341b674ca2ffb37f400a5c7fc1035a7ae53.sol(6)


