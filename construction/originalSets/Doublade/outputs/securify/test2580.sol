Processing contract: /home/jiaming/mavs_srcs/contract@0xa8f3d701887cc3ea885ef83ea00db258c43a656d.sol:BGJC
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa8f3d701887cc3ea885ef83ea00db258c43a656d.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'BGJC':
    |	function withdrawEther(uint256 amount) {
    |		if(msg.sender != owner)throw;
  > |		owner.transfer(amount);
    |	}
    |	
  at /home/jiaming/mavs_srcs/contract@0xa8f3d701887cc3ea885ef83ea00db258c43a656d.sol(137)

[33mWarning[0m for LockedEther in contract 'BGJC':
    |  }
    |}
  > |contract BGJC is SafeMath{
    |    string public name;
    |    string public symbol;
  at /home/jiaming/mavs_srcs/contract@0xa8f3d701887cc3ea885ef83ea00db258c43a656d.sol(36)

[31mViolation[0m for MissingInputValidation in contract 'BGJC':
    |
    |    /* This creates an array with all balances */
  > |    mapping (address => uint256) public balanceOf;
    |	mapping (address => uint256) public freezeOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
  at /home/jiaming/mavs_srcs/contract@0xa8f3d701887cc3ea885ef83ea00db258c43a656d.sol(44)

[31mViolation[0m for MissingInputValidation in contract 'BGJC':
    |    /* This creates an array with all balances */
    |    mapping (address => uint256) public balanceOf;
  > |	mapping (address => uint256) public freezeOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0xa8f3d701887cc3ea885ef83ea00db258c43a656d.sol(45)

[31mViolation[0m for MissingInputValidation in contract 'BGJC':
    |    mapping (address => uint256) public balanceOf;
    |	mapping (address => uint256) public freezeOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    /* This generates a public event on the blockchain that will notify clients */
  at /home/jiaming/mavs_srcs/contract@0xa8f3d701887cc3ea885ef83ea00db258c43a656d.sol(46)

[31mViolation[0m for MissingInputValidation in contract 'BGJC':
    |
    |    /* Allow another contract to spend some tokens in your behalf */
  > |    function approve(address _spender, uint256 _value)
    |        returns (bool success) {
    |		if (_value <= 0) throw; 
  at /home/jiaming/mavs_srcs/contract@0xa8f3d701887cc3ea885ef83ea00db258c43a656d.sol(85)

[31mViolation[0m for MissingInputValidation in contract 'BGJC':
    |
    |    /* A contract attempts to get the coins */
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        if (_to == 0x0) throw;                                // Prevent transfer to 0x0 address. Use burn() instead
    |		if (_value <= 0) throw; 
  at /home/jiaming/mavs_srcs/contract@0xa8f3d701887cc3ea885ef83ea00db258c43a656d.sol(94)

[31mViolation[0m for MissingInputValidation in contract 'BGJC':
    |	
    |	// transfer balance to owner
  > |	function withdrawEther(uint256 amount) {
    |		if(msg.sender != owner)throw;
    |		owner.transfer(amount);
  at /home/jiaming/mavs_srcs/contract@0xa8f3d701887cc3ea885ef83ea00db258c43a656d.sol(135)

[33mWarning[0m for MissingInputValidation in contract 'BGJC':
    |  }
    |
  > |  function safeSub(uint256 a, uint256 b) internal returns (uint256) {
    |    assert(b <= a);
    |    return a - b;
  at /home/jiaming/mavs_srcs/contract@0xa8f3d701887cc3ea885ef83ea00db258c43a656d.sol(19)

[33mWarning[0m for MissingInputValidation in contract 'BGJC':
    |  }
    |
  > |  function safeAdd(uint256 a, uint256 b) internal returns (uint256) {
    |    uint256 c = a + b;
    |    assert(c>=a && c>=b);
  at /home/jiaming/mavs_srcs/contract@0xa8f3d701887cc3ea885ef83ea00db258c43a656d.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'BGJC':
    |  }
    |
  > |  function assert(bool assertion) internal {
    |    if (!assertion) {
    |      throw;
  at /home/jiaming/mavs_srcs/contract@0xa8f3d701887cc3ea885ef83ea00db258c43a656d.sol(30)

[33mWarning[0m for MissingInputValidation in contract 'BGJC':
    |}
    |contract BGJC is SafeMath{
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals =8;
  at /home/jiaming/mavs_srcs/contract@0xa8f3d701887cc3ea885ef83ea00db258c43a656d.sol(37)

[33mWarning[0m for MissingInputValidation in contract 'BGJC':
    |contract BGJC is SafeMath{
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals =8;
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0xa8f3d701887cc3ea885ef83ea00db258c43a656d.sol(38)

[33mWarning[0m for MissingInputValidation in contract 'BGJC':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals =8;
    |    uint256 public totalSupply;
    |	address public owner;
  at /home/jiaming/mavs_srcs/contract@0xa8f3d701887cc3ea885ef83ea00db258c43a656d.sol(39)

[33mWarning[0m for MissingInputValidation in contract 'BGJC':
    |    string public symbol;
    |    uint8 public decimals =8;
  > |    uint256 public totalSupply;
    |	address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xa8f3d701887cc3ea885ef83ea00db258c43a656d.sol(40)

[33mWarning[0m for MissingInputValidation in contract 'BGJC':
    |    uint8 public decimals =8;
    |    uint256 public totalSupply;
  > |	address public owner;
    |
    |    /* This creates an array with all balances */
  at /home/jiaming/mavs_srcs/contract@0xa8f3d701887cc3ea885ef83ea00db258c43a656d.sol(41)

[33mWarning[0m for TODAmount in contract 'BGJC':
    |	function withdrawEther(uint256 amount) {
    |		if(msg.sender != owner)throw;
  > |		owner.transfer(amount);
    |	}
    |	
  at /home/jiaming/mavs_srcs/contract@0xa8f3d701887cc3ea885ef83ea00db258c43a656d.sol(137)

[33mWarning[0m for TODReceiver in contract 'BGJC':
    |	function withdrawEther(uint256 amount) {
    |		if(msg.sender != owner)throw;
  > |		owner.transfer(amount);
    |	}
    |	
  at /home/jiaming/mavs_srcs/contract@0xa8f3d701887cc3ea885ef83ea00db258c43a656d.sol(137)

[33mWarning[0m for UnhandledException in contract 'BGJC':
    |	function withdrawEther(uint256 amount) {
    |		if(msg.sender != owner)throw;
  > |		owner.transfer(amount);
    |	}
    |	
  at /home/jiaming/mavs_srcs/contract@0xa8f3d701887cc3ea885ef83ea00db258c43a656d.sol(137)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BGJC':
    |	function withdrawEther(uint256 amount) {
    |		if(msg.sender != owner)throw;
  > |		owner.transfer(amount);
    |	}
    |	
  at /home/jiaming/mavs_srcs/contract@0xa8f3d701887cc3ea885ef83ea00db258c43a656d.sol(137)

[31mViolation[0m for UnrestrictedWrite in contract 'BGJC':
    |        if (balanceOf[_to] + _value < balanceOf[_to]) throw;  // Check for overflows
    |        if (_value > allowance[_from][msg.sender]) throw;     // Check allowance
  > |        balanceOf[_from] = SafeMath.safeSub(balanceOf[_from], _value);                           // Subtract from the sender
    |        balanceOf[_to] = SafeMath.safeAdd(balanceOf[_to], _value);                             // Add the same to the recipient
    |        allowance[_from][msg.sender] = SafeMath.safeSub(allowance[_from][msg.sender], _value);
  at /home/jiaming/mavs_srcs/contract@0xa8f3d701887cc3ea885ef83ea00db258c43a656d.sol(100)

[31mViolation[0m for UnrestrictedWrite in contract 'BGJC':
    |        if (_value > allowance[_from][msg.sender]) throw;     // Check allowance
    |        balanceOf[_from] = SafeMath.safeSub(balanceOf[_from], _value);                           // Subtract from the sender
  > |        balanceOf[_to] = SafeMath.safeAdd(balanceOf[_to], _value);                             // Add the same to the recipient
    |        allowance[_from][msg.sender] = SafeMath.safeSub(allowance[_from][msg.sender], _value);
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xa8f3d701887cc3ea885ef83ea00db258c43a656d.sol(101)

[33mWarning[0m for UnrestrictedWrite in contract 'BGJC':
    |        if (balanceOf[msg.sender] < _value) throw;           // Check if the sender has enough
    |        if (balanceOf[_to] + _value < balanceOf[_to]) throw; // Check for overflows
  > |        balanceOf[msg.sender] = SafeMath.safeSub(balanceOf[msg.sender], _value);                     // Subtract from the sender
    |        balanceOf[_to] = SafeMath.safeAdd(balanceOf[_to], _value);                            // Add the same to the recipient
    |        Transfer(msg.sender, _to, _value);                   // Notify anyone listening that this transfer took place
  at /home/jiaming/mavs_srcs/contract@0xa8f3d701887cc3ea885ef83ea00db258c43a656d.sol(79)

[33mWarning[0m for UnrestrictedWrite in contract 'BGJC':
    |        returns (bool success) {
    |		if (_value <= 0) throw; 
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa8f3d701887cc3ea885ef83ea00db258c43a656d.sol(88)

[33mWarning[0m for UnrestrictedWrite in contract 'BGJC':
    |        balanceOf[_from] = SafeMath.safeSub(balanceOf[_from], _value);                           // Subtract from the sender
    |        balanceOf[_to] = SafeMath.safeAdd(balanceOf[_to], _value);                             // Add the same to the recipient
  > |        allowance[_from][msg.sender] = SafeMath.safeSub(allowance[_from][msg.sender], _value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xa8f3d701887cc3ea885ef83ea00db258c43a656d.sol(102)

[33mWarning[0m for UnrestrictedWrite in contract 'BGJC':
    |        if (balanceOf[msg.sender] < _value) throw;            // Check if the sender has enough
    |		if (_value <= 0) throw; 
  > |        balanceOf[msg.sender] = SafeMath.safeSub(balanceOf[msg.sender], _value);                      // Subtract from the sender
    |        totalSupply = SafeMath.safeSub(totalSupply,_value);                                // Updates totalSupply
    |        Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0xa8f3d701887cc3ea885ef83ea00db258c43a656d.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'BGJC':
    |        if (balanceOf[msg.sender] < _value) throw;            // Check if the sender has enough
    |		if (_value <= 0) throw; 
  > |        balanceOf[msg.sender] = SafeMath.safeSub(balanceOf[msg.sender], _value);                      // Subtract from the sender
    |        freezeOf[msg.sender] = SafeMath.safeAdd(freezeOf[msg.sender], _value);                                // Updates totalSupply
    |        Freeze(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0xa8f3d701887cc3ea885ef83ea00db258c43a656d.sol(119)

[33mWarning[0m for UnrestrictedWrite in contract 'BGJC':
    |		if (_value <= 0) throw; 
    |        balanceOf[msg.sender] = SafeMath.safeSub(balanceOf[msg.sender], _value);                      // Subtract from the sender
  > |        freezeOf[msg.sender] = SafeMath.safeAdd(freezeOf[msg.sender], _value);                                // Updates totalSupply
    |        Freeze(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xa8f3d701887cc3ea885ef83ea00db258c43a656d.sol(120)

[33mWarning[0m for UnrestrictedWrite in contract 'BGJC':
    |        if (freezeOf[msg.sender] < _value) throw;            // Check if the sender has enough
    |		if (_value <= 0) throw; 
  > |        freezeOf[msg.sender] = SafeMath.safeSub(freezeOf[msg.sender], _value);                      // Subtract from the sender
    |		balanceOf[msg.sender] = SafeMath.safeAdd(balanceOf[msg.sender], _value);
    |        Unfreeze(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0xa8f3d701887cc3ea885ef83ea00db258c43a656d.sol(128)

[33mWarning[0m for UnrestrictedWrite in contract 'BGJC':
    |		if (_value <= 0) throw; 
    |        freezeOf[msg.sender] = SafeMath.safeSub(freezeOf[msg.sender], _value);                      // Subtract from the sender
  > |		balanceOf[msg.sender] = SafeMath.safeAdd(balanceOf[msg.sender], _value);
    |        Unfreeze(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xa8f3d701887cc3ea885ef83ea00db258c43a656d.sol(129)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * Math operations with safety checks
    | */
  > |contract SafeMath {
    |  function safeMul(uint256 a, uint256 b) internal returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xa8f3d701887cc3ea885ef83ea00db258c43a656d.sol(5)


