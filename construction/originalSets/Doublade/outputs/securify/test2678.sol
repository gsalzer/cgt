Processing contract: /home/jiaming/mavs_srcs/contract@0xaecd36312b8f633810a6a06b722f3d15d26973c6.sol:F2UPhone
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'F2UPhone':
  > |contract F2UPhone {
    |    /* Public variables of the token */
    |    string public standard = 'Token 0.1';
  at /home/jiaming/mavs_srcs/contract@0xaecd36312b8f633810a6a06b722f3d15d26973c6.sol(1)

[31mViolation[0m for MissingInputValidation in contract 'F2UPhone':
    |
    |    /* This creates an array with all balances */
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0xaecd36312b8f633810a6a06b722f3d15d26973c6.sol(10)

[31mViolation[0m for MissingInputValidation in contract 'F2UPhone':
    |    /* This creates an array with all balances */
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |  
  at /home/jiaming/mavs_srcs/contract@0xaecd36312b8f633810a6a06b722f3d15d26973c6.sol(11)

[31mViolation[0m for MissingInputValidation in contract 'F2UPhone':
    |
    |    /* Send coins */
  > |    function transfer(address _to, uint256 _value) {
    |        if (balanceOf[msg.sender] < _value) throw;           // Check if the sender has enough
    |        if (balanceOf[_to] + _value < balanceOf[_to]) throw; // Check for overflows
  at /home/jiaming/mavs_srcs/contract@0xaecd36312b8f633810a6a06b722f3d15d26973c6.sol(28)

[33mWarning[0m for MissingInputValidation in contract 'F2UPhone':
    |contract F2UPhone {
    |    /* Public variables of the token */
  > |    string public standard = 'Token 0.1';
    |    string public name;
    |    string public symbol;
  at /home/jiaming/mavs_srcs/contract@0xaecd36312b8f633810a6a06b722f3d15d26973c6.sol(3)

[33mWarning[0m for MissingInputValidation in contract 'F2UPhone':
    |    /* Public variables of the token */
    |    string public standard = 'Token 0.1';
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0xaecd36312b8f633810a6a06b722f3d15d26973c6.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'F2UPhone':
    |    string public standard = 'Token 0.1';
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals;
    |    uint256 public initialSupply;
  at /home/jiaming/mavs_srcs/contract@0xaecd36312b8f633810a6a06b722f3d15d26973c6.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'F2UPhone':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals;
    |    uint256 public initialSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0xaecd36312b8f633810a6a06b722f3d15d26973c6.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'F2UPhone':
    |    string public symbol;
    |    uint8 public decimals;
  > |    uint256 public initialSupply;
    |
    |    /* This creates an array with all balances */
  at /home/jiaming/mavs_srcs/contract@0xaecd36312b8f633810a6a06b722f3d15d26973c6.sol(7)

[31mViolation[0m for UnrestrictedWrite in contract 'F2UPhone':
    |        if (balanceOf[_to] + _value < balanceOf[_to]) throw; // Check for overflows
    |        balanceOf[msg.sender] -= _value;                     // Subtract from the sender
  > |        balanceOf[_to] += _value;                            // Add the same to the recipient
    |      
    |    }
  at /home/jiaming/mavs_srcs/contract@0xaecd36312b8f633810a6a06b722f3d15d26973c6.sol(32)

[33mWarning[0m for UnrestrictedWrite in contract 'F2UPhone':
    |        if (balanceOf[msg.sender] < _value) throw;           // Check if the sender has enough
    |        if (balanceOf[_to] + _value < balanceOf[_to]) throw; // Check for overflows
  > |        balanceOf[msg.sender] -= _value;                     // Subtract from the sender
    |        balanceOf[_to] += _value;                            // Add the same to the recipient
    |      
  at /home/jiaming/mavs_srcs/contract@0xaecd36312b8f633810a6a06b722f3d15d26973c6.sol(31)


