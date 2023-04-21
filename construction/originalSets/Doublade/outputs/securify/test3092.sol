Processing contract: /home/jiaming/mavs_srcs/contract@0xcafda83c50843e755cb4315ef0fb30923335a376.sol:BEB
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xcafda83c50843e755cb4315ef0fb30923335a376.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for LockedEther in contract 'BEB':
    |  
    |}
  > |contract BEB is SafeMath{
    |    string public name;
    |    string public symbol;
  at /home/jiaming/mavs_srcs/contract@0xcafda83c50843e755cb4315ef0fb30923335a376.sol(35)

[31mViolation[0m for MissingInputValidation in contract 'BEB':
    |
    |    /* This creates an array with all balances */
  > |    mapping (address => uint256) public balanceOf;
    |	mapping (address => uint256) public freezeOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
  at /home/jiaming/mavs_srcs/contract@0xcafda83c50843e755cb4315ef0fb30923335a376.sol(43)

[31mViolation[0m for MissingInputValidation in contract 'BEB':
    |    /* This creates an array with all balances */
    |    mapping (address => uint256) public balanceOf;
  > |	mapping (address => uint256) public freezeOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0xcafda83c50843e755cb4315ef0fb30923335a376.sol(44)

[31mViolation[0m for MissingInputValidation in contract 'BEB':
    |    mapping (address => uint256) public balanceOf;
    |	mapping (address => uint256) public freezeOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    /* This generates a public event on the blockchain that will notify clients */
  at /home/jiaming/mavs_srcs/contract@0xcafda83c50843e755cb4315ef0fb30923335a376.sol(45)

[31mViolation[0m for MissingInputValidation in contract 'BEB':
    |
    |    /* Allow another contract to spend some tokens in your behalf */
  > |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
    |		require(_value > 0); 
  at /home/jiaming/mavs_srcs/contract@0xcafda83c50843e755cb4315ef0fb30923335a376.sol(87)

[31mViolation[0m for MissingInputValidation in contract 'BEB':
    |
    |    /* A contract attempts to get the coins */
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_to != 0x0);                                // Prevent transfer to 0x0 address. Use burn() instead
    |		require(_value > 0); 
  at /home/jiaming/mavs_srcs/contract@0xcafda83c50843e755cb4315ef0fb30923335a376.sol(96)

[33mWarning[0m for MissingInputValidation in contract 'BEB':
    |  }
    |
  > |  function safeSub(uint256 a, uint256 b) internal pure returns (uint256) {
    |    assert(b <= a);
    |    return a - b;
  at /home/jiaming/mavs_srcs/contract@0xcafda83c50843e755cb4315ef0fb30923335a376.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'BEB':
    |  }
    |
  > |  function safeAdd(uint256 a, uint256 b) internal pure returns (uint256) {
    |    uint256 c = a + b;
    |    assert(c>=a && c>=b);
  at /home/jiaming/mavs_srcs/contract@0xcafda83c50843e755cb4315ef0fb30923335a376.sol(28)

[33mWarning[0m for MissingInputValidation in contract 'BEB':
    |}
    |contract BEB is SafeMath{
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0xcafda83c50843e755cb4315ef0fb30923335a376.sol(36)

[33mWarning[0m for MissingInputValidation in contract 'BEB':
    |contract BEB is SafeMath{
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals;
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0xcafda83c50843e755cb4315ef0fb30923335a376.sol(37)

[33mWarning[0m for MissingInputValidation in contract 'BEB':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals;
    |    uint256 public totalSupply;
    |	address public owner;
  at /home/jiaming/mavs_srcs/contract@0xcafda83c50843e755cb4315ef0fb30923335a376.sol(38)

[33mWarning[0m for MissingInputValidation in contract 'BEB':
    |    string public symbol;
    |    uint8 public decimals;
  > |    uint256 public totalSupply;
    |	address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xcafda83c50843e755cb4315ef0fb30923335a376.sol(39)

[33mWarning[0m for MissingInputValidation in contract 'BEB':
    |    uint8 public decimals;
    |    uint256 public totalSupply;
  > |	address public owner;
    |
    |    /* This creates an array with all balances */
  at /home/jiaming/mavs_srcs/contract@0xcafda83c50843e755cb4315ef0fb30923335a376.sol(40)

[31mViolation[0m for UnrestrictedWrite in contract 'BEB':
    |        require(balanceOf[msg.sender] >= _value);           // Check if the sender has enough
    |        require(balanceOf[_to] + _value >= balanceOf[_to]); // Check for overflows
  > |        balanceOf[msg.sender] = SafeMath.safeSub(balanceOf[msg.sender], _value);                     // Subtract from the sender
    |        balanceOf[_to] = SafeMath.safeAdd(balanceOf[_to], _value);                            // Add the same to the recipient
    |        Transfer(msg.sender, _to, _value);                   // Notify anyone listening that this transfer took place
  at /home/jiaming/mavs_srcs/contract@0xcafda83c50843e755cb4315ef0fb30923335a376.sol(81)

[31mViolation[0m for UnrestrictedWrite in contract 'BEB':
    |        require(balanceOf[_to] + _value >= balanceOf[_to]); // Check for overflows
    |        balanceOf[msg.sender] = SafeMath.safeSub(balanceOf[msg.sender], _value);                     // Subtract from the sender
  > |        balanceOf[_to] = SafeMath.safeAdd(balanceOf[_to], _value);                            // Add the same to the recipient
    |        Transfer(msg.sender, _to, _value);                   // Notify anyone listening that this transfer took place
    |    }
  at /home/jiaming/mavs_srcs/contract@0xcafda83c50843e755cb4315ef0fb30923335a376.sol(82)

[31mViolation[0m for UnrestrictedWrite in contract 'BEB':
    |        require(balanceOf[_to] + _value >= balanceOf[_to]);  // Check for overflows
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
  > |        balanceOf[_from] = SafeMath.safeSub(balanceOf[_from], _value);                           // Subtract from the sender
    |        balanceOf[_to] = SafeMath.safeAdd(balanceOf[_to], _value);                             // Add the same to the recipient
    |        allowance[_from][msg.sender] = SafeMath.safeSub(allowance[_from][msg.sender], _value);
  at /home/jiaming/mavs_srcs/contract@0xcafda83c50843e755cb4315ef0fb30923335a376.sol(102)

[31mViolation[0m for UnrestrictedWrite in contract 'BEB':
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
    |        balanceOf[_from] = SafeMath.safeSub(balanceOf[_from], _value);                           // Subtract from the sender
  > |        balanceOf[_to] = SafeMath.safeAdd(balanceOf[_to], _value);                             // Add the same to the recipient
    |        allowance[_from][msg.sender] = SafeMath.safeSub(allowance[_from][msg.sender], _value);
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xcafda83c50843e755cb4315ef0fb30923335a376.sol(103)

[31mViolation[0m for UnrestrictedWrite in contract 'BEB':
    |        balanceOf[_from] = SafeMath.safeSub(balanceOf[_from], _value);                           // Subtract from the sender
    |        balanceOf[_to] = SafeMath.safeAdd(balanceOf[_to], _value);                             // Add the same to the recipient
  > |        allowance[_from][msg.sender] = SafeMath.safeSub(allowance[_from][msg.sender], _value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xcafda83c50843e755cb4315ef0fb30923335a376.sol(104)

[31mViolation[0m for UnrestrictedWrite in contract 'BEB':
    |        require(balanceOf[msg.sender] >= _value);            // Check if the sender has enough
    |		require(_value > 0); 
  > |        balanceOf[msg.sender] = SafeMath.safeSub(balanceOf[msg.sender], _value);                      // Subtract from the sender
    |        totalSupply = SafeMath.safeSub(totalSupply,_value);                                // Updates totalSupply
    |        Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0xcafda83c50843e755cb4315ef0fb30923335a376.sol(112)

[31mViolation[0m for UnrestrictedWrite in contract 'BEB':
    |		require(_value > 0); 
    |        balanceOf[msg.sender] = SafeMath.safeSub(balanceOf[msg.sender], _value);                      // Subtract from the sender
  > |        totalSupply = SafeMath.safeSub(totalSupply,_value);                                // Updates totalSupply
    |        Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xcafda83c50843e755cb4315ef0fb30923335a376.sol(113)

[31mViolation[0m for UnrestrictedWrite in contract 'BEB':
    |        require(balanceOf[msg.sender] >= _value);            // Check if the sender has enough
    |		require(_value > 0); 
  > |        balanceOf[msg.sender] = SafeMath.safeSub(balanceOf[msg.sender], _value);                      // Subtract from the sender
    |        freezeOf[msg.sender] = SafeMath.safeAdd(freezeOf[msg.sender], _value);                                // Updates totalSupply
    |        Freeze(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0xcafda83c50843e755cb4315ef0fb30923335a376.sol(121)

[31mViolation[0m for UnrestrictedWrite in contract 'BEB':
    |		require(_value > 0); 
    |        balanceOf[msg.sender] = SafeMath.safeSub(balanceOf[msg.sender], _value);                      // Subtract from the sender
  > |        freezeOf[msg.sender] = SafeMath.safeAdd(freezeOf[msg.sender], _value);                                // Updates totalSupply
    |        Freeze(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xcafda83c50843e755cb4315ef0fb30923335a376.sol(122)

[31mViolation[0m for UnrestrictedWrite in contract 'BEB':
    |        require(freezeOf[msg.sender] >= _value);            // Check if the sender has enough
    |		require(_value > 0); 
  > |        freezeOf[msg.sender] = SafeMath.safeSub(freezeOf[msg.sender], _value);                      // Subtract from the sender
    |		balanceOf[msg.sender] = SafeMath.safeAdd(balanceOf[msg.sender], _value);
    |        Unfreeze(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0xcafda83c50843e755cb4315ef0fb30923335a376.sol(130)

[31mViolation[0m for UnrestrictedWrite in contract 'BEB':
    |		require(_value > 0); 
    |        freezeOf[msg.sender] = SafeMath.safeSub(freezeOf[msg.sender], _value);                      // Subtract from the sender
  > |		balanceOf[msg.sender] = SafeMath.safeAdd(balanceOf[msg.sender], _value);
    |        Unfreeze(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xcafda83c50843e755cb4315ef0fb30923335a376.sol(131)

[33mWarning[0m for UnrestrictedWrite in contract 'BEB':
    |        returns (bool success) {
    |		require(_value > 0); 
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xcafda83c50843e755cb4315ef0fb30923335a376.sol(90)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * Math operations with safety checks
    | */
  > |contract SafeMath {
    |  function safeMul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0xcafda83c50843e755cb4315ef0fb30923335a376.sol(6)


