Processing contract: /home/jiaming/mavs_srcs/contract@0x3bc8d8e091294f86d624f5fd3d5c983ab35117d4.sol:klik
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'klik':
  > |contract klik {
    |    /* Public variables of the token */
    |    string public standard = 'Token 0.1';
  at /home/jiaming/mavs_srcs/contract@0x3bc8d8e091294f86d624f5fd3d5c983ab35117d4.sol(1)

[31mViolation[0m for MissingInputValidation in contract 'klik':
    |
    |    /* This creates an array with all balances */
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0x3bc8d8e091294f86d624f5fd3d5c983ab35117d4.sol(10)

[31mViolation[0m for MissingInputValidation in contract 'klik':
    |    /* This creates an array with all balances */
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |  
  at /home/jiaming/mavs_srcs/contract@0x3bc8d8e091294f86d624f5fd3d5c983ab35117d4.sol(11)

[31mViolation[0m for MissingInputValidation in contract 'klik':
    |
    |    /* Send coins */
  > |    function transfer(address _to, uint256 _value) {
    |        if (balanceOf[msg.sender] < _value) throw;           // Check if the sender has enough
    |        if (balanceOf[_to] + _value < balanceOf[_to]) throw; // Check for overflows
  at /home/jiaming/mavs_srcs/contract@0x3bc8d8e091294f86d624f5fd3d5c983ab35117d4.sol(28)

[33mWarning[0m for MissingInputValidation in contract 'klik':
    |contract klik {
    |    /* Public variables of the token */
  > |    string public standard = 'Token 0.1';
    |    string public name;
    |    string public symbol;
  at /home/jiaming/mavs_srcs/contract@0x3bc8d8e091294f86d624f5fd3d5c983ab35117d4.sol(3)

[33mWarning[0m for MissingInputValidation in contract 'klik':
    |    /* Public variables of the token */
    |    string public standard = 'Token 0.1';
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0x3bc8d8e091294f86d624f5fd3d5c983ab35117d4.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'klik':
    |    string public standard = 'Token 0.1';
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals;
    |    uint256 public initialSupply;
  at /home/jiaming/mavs_srcs/contract@0x3bc8d8e091294f86d624f5fd3d5c983ab35117d4.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'klik':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals;
    |    uint256 public initialSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0x3bc8d8e091294f86d624f5fd3d5c983ab35117d4.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'klik':
    |    string public symbol;
    |    uint8 public decimals;
  > |    uint256 public initialSupply;
    |
    |    /* This creates an array with all balances */
  at /home/jiaming/mavs_srcs/contract@0x3bc8d8e091294f86d624f5fd3d5c983ab35117d4.sol(7)

[31mViolation[0m for UnrestrictedWrite in contract 'klik':
    |        if (balanceOf[_to] + _value < balanceOf[_to]) throw; // Check for overflows
    |        balanceOf[msg.sender] -= _value;                     // Subtract from the sender
  > |        balanceOf[_to] += _value;                            // Add the same to the recipient
    |      
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3bc8d8e091294f86d624f5fd3d5c983ab35117d4.sol(32)

[33mWarning[0m for UnrestrictedWrite in contract 'klik':
    |        if (balanceOf[msg.sender] < _value) throw;           // Check if the sender has enough
    |        if (balanceOf[_to] + _value < balanceOf[_to]) throw; // Check for overflows
  > |        balanceOf[msg.sender] -= _value;                     // Subtract from the sender
    |        balanceOf[_to] += _value;                            // Add the same to the recipient
    |      
  at /home/jiaming/mavs_srcs/contract@0x3bc8d8e091294f86d624f5fd3d5c983ab35117d4.sol(31)


