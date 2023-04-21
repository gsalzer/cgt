Processing contract: /home/jiaming/mavs_srcs/contract@0x0d7afb8b66486f071b8acad41998c0e260e55e13.sol:ENZO
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'ENZO':
  > |contract ENZO {
    |    /* Public variables of the token */
    |    string public standard = 'Token 0.1';
  at /home/jiaming/mavs_srcs/contract@0x0d7afb8b66486f071b8acad41998c0e260e55e13.sol(1)

[31mViolation[0m for MissingInputValidation in contract 'ENZO':
    |
    |    /* This creates an array with all balances */
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0x0d7afb8b66486f071b8acad41998c0e260e55e13.sol(11)

[31mViolation[0m for MissingInputValidation in contract 'ENZO':
    |    /* This creates an array with all balances */
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |  
  at /home/jiaming/mavs_srcs/contract@0x0d7afb8b66486f071b8acad41998c0e260e55e13.sol(12)

[31mViolation[0m for MissingInputValidation in contract 'ENZO':
    |
    |    /* Send coins */
  > |    function transfer(address _to, uint256 _value) {
    |        if (balanceOf[msg.sender] < _value) throw;           // Check if the sender has enough
    |        if (balanceOf[_to] + _value < balanceOf[_to]) throw; // Check for overflows
  at /home/jiaming/mavs_srcs/contract@0x0d7afb8b66486f071b8acad41998c0e260e55e13.sol(29)

[33mWarning[0m for MissingInputValidation in contract 'ENZO':
    |contract ENZO {
    |    /* Public variables of the token */
  > |    string public standard = 'Token 0.1';
    |    string public name;
    |    string public symbol;
  at /home/jiaming/mavs_srcs/contract@0x0d7afb8b66486f071b8acad41998c0e260e55e13.sol(3)

[33mWarning[0m for MissingInputValidation in contract 'ENZO':
    |    /* Public variables of the token */
    |    string public standard = 'Token 0.1';
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0x0d7afb8b66486f071b8acad41998c0e260e55e13.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'ENZO':
    |    string public standard = 'Token 0.1';
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals;
    |    uint256 public initialSupply;
  at /home/jiaming/mavs_srcs/contract@0x0d7afb8b66486f071b8acad41998c0e260e55e13.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'ENZO':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals;
    |    uint256 public initialSupply;
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x0d7afb8b66486f071b8acad41998c0e260e55e13.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'ENZO':
    |    string public symbol;
    |    uint8 public decimals;
  > |    uint256 public initialSupply;
    |    uint256 public totalSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0x0d7afb8b66486f071b8acad41998c0e260e55e13.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'ENZO':
    |    uint8 public decimals;
    |    uint256 public initialSupply;
  > |    uint256 public totalSupply;
    |
    |    /* This creates an array with all balances */
  at /home/jiaming/mavs_srcs/contract@0x0d7afb8b66486f071b8acad41998c0e260e55e13.sol(8)

[31mViolation[0m for UnrestrictedWrite in contract 'ENZO':
    |        if (balanceOf[_to] + _value < balanceOf[_to]) throw; // Check for overflows
    |        balanceOf[msg.sender] -= _value;                     // Subtract from the sender
  > |        balanceOf[_to] += _value;                            // Add the same to the recipient
    |      
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0d7afb8b66486f071b8acad41998c0e260e55e13.sol(33)

[33mWarning[0m for UnrestrictedWrite in contract 'ENZO':
    |        if (balanceOf[msg.sender] < _value) throw;           // Check if the sender has enough
    |        if (balanceOf[_to] + _value < balanceOf[_to]) throw; // Check for overflows
  > |        balanceOf[msg.sender] -= _value;                     // Subtract from the sender
    |        balanceOf[_to] += _value;                            // Add the same to the recipient
    |      
  at /home/jiaming/mavs_srcs/contract@0x0d7afb8b66486f071b8acad41998c0e260e55e13.sol(32)


