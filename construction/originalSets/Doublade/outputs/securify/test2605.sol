Processing contract: /home/jiaming/mavs_srcs/contract@0xaa4371051384cbff66b7e1c8cd304c1b6a7ae20b.sol:LEASToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xaa4371051384cbff66b7e1c8cd304c1b6a7ae20b.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'LEASToken':
    |}
    |
  > |contract LEASToken is SafeMath{
    |    string public name = "Linked Ecological Available System";
    |    string public symbol = "LEAS";
  at /home/jiaming/mavs_srcs/contract@0xaa4371051384cbff66b7e1c8cd304c1b6a7ae20b.sol(35)

[31mViolation[0m for MissingInputValidation in contract 'LEASToken':
    |
    |    /* This creates an array with all balances */
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0xaa4371051384cbff66b7e1c8cd304c1b6a7ae20b.sol(42)

[31mViolation[0m for MissingInputValidation in contract 'LEASToken':
    |    /* This creates an array with all balances */
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    /* This generates a public event on the blockchain that will notify clients */
  at /home/jiaming/mavs_srcs/contract@0xaa4371051384cbff66b7e1c8cd304c1b6a7ae20b.sol(43)

[31mViolation[0m for MissingInputValidation in contract 'LEASToken':
    |
    |    /* Allow another contract to spend some tokens in your behalf */
  > |    function approve(address _spender, uint256 _value) public returns (bool success) {
    |        if (_value <= 0) revert();
    |        allowance[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0xaa4371051384cbff66b7e1c8cd304c1b6a7ae20b.sol(65)

[31mViolation[0m for MissingInputValidation in contract 'LEASToken':
    |       
    |    /* A contract attempts to get the coins */
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        if (_to == 0x0000000000000000000000000000000000000000) revert();                                   // Prevent transfer to 0x0 address
    |        if (_value <= 0) revert();
  at /home/jiaming/mavs_srcs/contract@0xaa4371051384cbff66b7e1c8cd304c1b6a7ae20b.sol(72)

[33mWarning[0m for MissingInputValidation in contract 'LEASToken':
    |    }
    |
  > |    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
    |        assert(b <= a);
    |        return a - b;
  at /home/jiaming/mavs_srcs/contract@0xaa4371051384cbff66b7e1c8cd304c1b6a7ae20b.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'LEASToken':
    |    }
    |
  > |    function add(uint256 a, uint256 b) internal pure returns (uint256 c) {
    |        c = a + b;
    |        assert(c >= a);
  at /home/jiaming/mavs_srcs/contract@0xaa4371051384cbff66b7e1c8cd304c1b6a7ae20b.sol(28)

[33mWarning[0m for MissingInputValidation in contract 'LEASToken':
    |
    |contract LEASToken is SafeMath{
  > |    string public name = "Linked Ecological Available System";
    |    string public symbol = "LEAS";
    |    uint8 public decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0xaa4371051384cbff66b7e1c8cd304c1b6a7ae20b.sol(36)

[33mWarning[0m for MissingInputValidation in contract 'LEASToken':
    |contract LEASToken is SafeMath{
    |    string public name = "Linked Ecological Available System";
  > |    string public symbol = "LEAS";
    |    uint8 public decimals = 18;
    |    uint256 public totalSupply = 200 * 10 ** 8 * 10 ** uint256(decimals);
  at /home/jiaming/mavs_srcs/contract@0xaa4371051384cbff66b7e1c8cd304c1b6a7ae20b.sol(37)

[33mWarning[0m for MissingInputValidation in contract 'LEASToken':
    |    string public name = "Linked Ecological Available System";
    |    string public symbol = "LEAS";
  > |    uint8 public decimals = 18;
    |    uint256 public totalSupply = 200 * 10 ** 8 * 10 ** uint256(decimals);
    |
  at /home/jiaming/mavs_srcs/contract@0xaa4371051384cbff66b7e1c8cd304c1b6a7ae20b.sol(38)

[33mWarning[0m for MissingInputValidation in contract 'LEASToken':
    |    string public symbol = "LEAS";
    |    uint8 public decimals = 18;
  > |    uint256 public totalSupply = 200 * 10 ** 8 * 10 ** uint256(decimals);
    |
    |    /* This creates an array with all balances */
  at /home/jiaming/mavs_srcs/contract@0xaa4371051384cbff66b7e1c8cd304c1b6a7ae20b.sol(39)

[31mViolation[0m for UnrestrictedWrite in contract 'LEASToken':
    |        if (balanceOf[msg.sender] < _value) revert();                           // Check if the sender has enough
    |        if (balanceOf[_to] + _value < balanceOf[_to]) revert();                 // Check for overflows
  > |        balanceOf[msg.sender] = SafeMath.sub(balanceOf[msg.sender], _value);    // Subtract from the sender
    |        balanceOf[_to] = SafeMath.add(balanceOf[_to], _value);                  // Add the same to the recipient
    |        emit Transfer(msg.sender, _to, _value);     // Notify anyone listening that this transfer took place
  at /home/jiaming/mavs_srcs/contract@0xaa4371051384cbff66b7e1c8cd304c1b6a7ae20b.sol(58)

[31mViolation[0m for UnrestrictedWrite in contract 'LEASToken':
    |        if (balanceOf[_to] + _value < balanceOf[_to]) revert();                 // Check for overflows
    |        balanceOf[msg.sender] = SafeMath.sub(balanceOf[msg.sender], _value);    // Subtract from the sender
  > |        balanceOf[_to] = SafeMath.add(balanceOf[_to], _value);                  // Add the same to the recipient
    |        emit Transfer(msg.sender, _to, _value);     // Notify anyone listening that this transfer took place
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xaa4371051384cbff66b7e1c8cd304c1b6a7ae20b.sol(59)

[31mViolation[0m for UnrestrictedWrite in contract 'LEASToken':
    |        if (balanceOf[_to] + _value < balanceOf[_to]) revert();     // Check for overflows
    |        if (_value > allowance[_from][msg.sender]) revert();        // Check allowance
  > |        balanceOf[_from] = SafeMath.sub(balanceOf[_from], _value);  // Subtract from the sender
    |        balanceOf[_to] = SafeMath.add(balanceOf[_to], _value);      // Add the same to the recipient
    |        allowance[_from][msg.sender] = SafeMath.sub(allowance[_from][msg.sender], _value);
  at /home/jiaming/mavs_srcs/contract@0xaa4371051384cbff66b7e1c8cd304c1b6a7ae20b.sol(78)

[31mViolation[0m for UnrestrictedWrite in contract 'LEASToken':
    |        if (_value > allowance[_from][msg.sender]) revert();        // Check allowance
    |        balanceOf[_from] = SafeMath.sub(balanceOf[_from], _value);  // Subtract from the sender
  > |        balanceOf[_to] = SafeMath.add(balanceOf[_to], _value);      // Add the same to the recipient
    |        allowance[_from][msg.sender] = SafeMath.sub(allowance[_from][msg.sender], _value);
    |        emit Transfer(_from, _to, _value);      // Notify anyone listening that this transfer took place
  at /home/jiaming/mavs_srcs/contract@0xaa4371051384cbff66b7e1c8cd304c1b6a7ae20b.sol(79)

[31mViolation[0m for UnrestrictedWrite in contract 'LEASToken':
    |        balanceOf[_from] = SafeMath.sub(balanceOf[_from], _value);  // Subtract from the sender
    |        balanceOf[_to] = SafeMath.add(balanceOf[_to], _value);      // Add the same to the recipient
  > |        allowance[_from][msg.sender] = SafeMath.sub(allowance[_from][msg.sender], _value);
    |        emit Transfer(_from, _to, _value);      // Notify anyone listening that this transfer took place
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xaa4371051384cbff66b7e1c8cd304c1b6a7ae20b.sol(80)

[33mWarning[0m for UnrestrictedWrite in contract 'LEASToken':
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
    |        if (_value <= 0) revert();
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xaa4371051384cbff66b7e1c8cd304c1b6a7ae20b.sol(67)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * Math operations with safety checks
    | */
  > |contract SafeMath{
    |    function mul(uint256 a, uint256 b) internal pure returns (uint256 c) {
    |        if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0xaa4371051384cbff66b7e1c8cd304c1b6a7ae20b.sol(6)


