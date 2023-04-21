Processing contract: /home/jiaming/mavs_srcs/contract@0xc1df55d279122d93f4965a17e205c0e74ea0c63e.sol:Token
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Token':
    |
    |
  > |contract Token {
    |    /* Public variables of the token */
    |    string public standard = 'Token 0.1';
  at /home/jiaming/mavs_srcs/contract@0xc1df55d279122d93f4965a17e205c0e74ea0c63e.sol(5)

[31mViolation[0m for MissingInputValidation in contract 'Token':
    |
    |    /* This creates an array with all balances */
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0xc1df55d279122d93f4965a17e205c0e74ea0c63e.sol(15)

[31mViolation[0m for MissingInputValidation in contract 'Token':
    |    /* This creates an array with all balances */
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |  
  at /home/jiaming/mavs_srcs/contract@0xc1df55d279122d93f4965a17e205c0e74ea0c63e.sol(16)

[31mViolation[0m for MissingInputValidation in contract 'Token':
    |
    |    /* Send coins */
  > |    function transfer(address _to, uint256 _value) {
    |        if (balanceOf[msg.sender] < _value) throw;           // Check if the sender has enough
    |        if (balanceOf[_to] + _value < balanceOf[_to]) throw; // Check for overflows
  at /home/jiaming/mavs_srcs/contract@0xc1df55d279122d93f4965a17e205c0e74ea0c63e.sol(33)

[33mWarning[0m for MissingInputValidation in contract 'Token':
    |contract Token {
    |    /* Public variables of the token */
  > |    string public standard = 'Token 0.1';
    |    string public name;
    |    string public symbol;
  at /home/jiaming/mavs_srcs/contract@0xc1df55d279122d93f4965a17e205c0e74ea0c63e.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'Token':
    |    /* Public variables of the token */
    |    string public standard = 'Token 0.1';
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0xc1df55d279122d93f4965a17e205c0e74ea0c63e.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'Token':
    |    string public standard = 'Token 0.1';
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals;
    |    uint256 public initialSupply;
  at /home/jiaming/mavs_srcs/contract@0xc1df55d279122d93f4965a17e205c0e74ea0c63e.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'Token':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals;
    |    uint256 public initialSupply;
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0xc1df55d279122d93f4965a17e205c0e74ea0c63e.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'Token':
    |    string public symbol;
    |    uint8 public decimals;
  > |    uint256 public initialSupply;
    |    uint256 public totalSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0xc1df55d279122d93f4965a17e205c0e74ea0c63e.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'Token':
    |    uint8 public decimals;
    |    uint256 public initialSupply;
  > |    uint256 public totalSupply;
    |
    |    /* This creates an array with all balances */
  at /home/jiaming/mavs_srcs/contract@0xc1df55d279122d93f4965a17e205c0e74ea0c63e.sol(12)

[31mViolation[0m for UnrestrictedWrite in contract 'Token':
    |        if (balanceOf[_to] + _value < balanceOf[_to]) throw; // Check for overflows
    |        balanceOf[msg.sender] -= _value;                     // Subtract from the sender
  > |        balanceOf[_to] += _value;                            // Add the same to the recipient
    |      
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc1df55d279122d93f4965a17e205c0e74ea0c63e.sol(37)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |        if (balanceOf[msg.sender] < _value) throw;           // Check if the sender has enough
    |        if (balanceOf[_to] + _value < balanceOf[_to]) throw; // Check for overflows
  > |        balanceOf[msg.sender] -= _value;                     // Subtract from the sender
    |        balanceOf[_to] += _value;                            // Add the same to the recipient
    |      
  at /home/jiaming/mavs_srcs/contract@0xc1df55d279122d93f4965a17e205c0e74ea0c63e.sol(36)


