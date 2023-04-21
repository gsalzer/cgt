Processing contract: /home/jiaming/mavs_srcs/contract@0x5f7457437d38bcef7a517bd2c2278a6559b90a4b.sol:CarPark
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'CarPark':
  > |contract CarPark {
    |    /* Public variables of the token */
    |    string public standard = 'Token 0.1';
  at /home/jiaming/mavs_srcs/contract@0x5f7457437d38bcef7a517bd2c2278a6559b90a4b.sol(1)

[31mViolation[0m for MissingInputValidation in contract 'CarPark':
    |
    |    /* This creates an array with all balances */
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0x5f7457437d38bcef7a517bd2c2278a6559b90a4b.sol(11)

[31mViolation[0m for MissingInputValidation in contract 'CarPark':
    |    /* This creates an array with all balances */
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |  
  at /home/jiaming/mavs_srcs/contract@0x5f7457437d38bcef7a517bd2c2278a6559b90a4b.sol(12)

[31mViolation[0m for MissingInputValidation in contract 'CarPark':
    |
    |    /* Send coins */
  > |    function transfer(address _to, uint256 _value) {
    |        if (balanceOf[msg.sender] < _value) throw;           // Check if the sender has enough
    |        if (balanceOf[_to] + _value < balanceOf[_to]) throw; // Check for overflows
  at /home/jiaming/mavs_srcs/contract@0x5f7457437d38bcef7a517bd2c2278a6559b90a4b.sol(29)

[33mWarning[0m for MissingInputValidation in contract 'CarPark':
    |contract CarPark {
    |    /* Public variables of the token */
  > |    string public standard = 'Token 0.1';
    |    string public name;
    |    string public symbol;
  at /home/jiaming/mavs_srcs/contract@0x5f7457437d38bcef7a517bd2c2278a6559b90a4b.sol(3)

[33mWarning[0m for MissingInputValidation in contract 'CarPark':
    |    /* Public variables of the token */
    |    string public standard = 'Token 0.1';
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0x5f7457437d38bcef7a517bd2c2278a6559b90a4b.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'CarPark':
    |    string public standard = 'Token 0.1';
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals;
    |    uint256 public initialSupply;
  at /home/jiaming/mavs_srcs/contract@0x5f7457437d38bcef7a517bd2c2278a6559b90a4b.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'CarPark':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals;
    |    uint256 public initialSupply;
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x5f7457437d38bcef7a517bd2c2278a6559b90a4b.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'CarPark':
    |    string public symbol;
    |    uint8 public decimals;
  > |    uint256 public initialSupply;
    |    uint256 public totalSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0x5f7457437d38bcef7a517bd2c2278a6559b90a4b.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'CarPark':
    |    uint8 public decimals;
    |    uint256 public initialSupply;
  > |    uint256 public totalSupply;
    |
    |    /* This creates an array with all balances */
  at /home/jiaming/mavs_srcs/contract@0x5f7457437d38bcef7a517bd2c2278a6559b90a4b.sol(8)

[31mViolation[0m for UnrestrictedWrite in contract 'CarPark':
    |        if (balanceOf[_to] + _value < balanceOf[_to]) throw; // Check for overflows
    |        balanceOf[msg.sender] -= _value;                     // Subtract from the sender
  > |        balanceOf[_to] += _value;                            // Add the same to the recipient
    |      
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5f7457437d38bcef7a517bd2c2278a6559b90a4b.sol(33)

[33mWarning[0m for UnrestrictedWrite in contract 'CarPark':
    |        if (balanceOf[msg.sender] < _value) throw;           // Check if the sender has enough
    |        if (balanceOf[_to] + _value < balanceOf[_to]) throw; // Check for overflows
  > |        balanceOf[msg.sender] -= _value;                     // Subtract from the sender
    |        balanceOf[_to] += _value;                            // Add the same to the recipient
    |      
  at /home/jiaming/mavs_srcs/contract@0x5f7457437d38bcef7a517bd2c2278a6559b90a4b.sol(32)


