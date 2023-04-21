Processing contract: /home/jiaming/mavs_srcs/contract@0xc5c469a4f5c52852957f6b5b765eedcf46fc967f.sol:WebCoin
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'WebCoin':
  > |contract WebCoin{
    |    /* Public variables of the token */
    |    string public standard = 'Token 0.1';
  at /home/jiaming/mavs_srcs/contract@0xc5c469a4f5c52852957f6b5b765eedcf46fc967f.sol(1)

[31mViolation[0m for MissingInputValidation in contract 'WebCoin':
    |
    |    /* This creates an array with all balances */
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0xc5c469a4f5c52852957f6b5b765eedcf46fc967f.sol(11)

[31mViolation[0m for MissingInputValidation in contract 'WebCoin':
    |    /* This creates an array with all balances */
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |  
  at /home/jiaming/mavs_srcs/contract@0xc5c469a4f5c52852957f6b5b765eedcf46fc967f.sol(12)

[31mViolation[0m for MissingInputValidation in contract 'WebCoin':
    |
    |    /* Send coins */
  > |    function transfer(address _to, uint256 _value) {
    |        if (balanceOf[msg.sender] < _value) throw;           // Check if the sender has enough
    |        if (balanceOf[_to] + _value < balanceOf[_to]) throw; // Check for overflows
  at /home/jiaming/mavs_srcs/contract@0xc5c469a4f5c52852957f6b5b765eedcf46fc967f.sol(29)

[33mWarning[0m for MissingInputValidation in contract 'WebCoin':
    |contract WebCoin{
    |    /* Public variables of the token */
  > |    string public standard = 'Token 0.1';
    |    string public name;
    |    string public symbol;
  at /home/jiaming/mavs_srcs/contract@0xc5c469a4f5c52852957f6b5b765eedcf46fc967f.sol(3)

[33mWarning[0m for MissingInputValidation in contract 'WebCoin':
    |    /* Public variables of the token */
    |    string public standard = 'Token 0.1';
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0xc5c469a4f5c52852957f6b5b765eedcf46fc967f.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'WebCoin':
    |    string public standard = 'Token 0.1';
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals;
    |    uint256 public initialSupply;
  at /home/jiaming/mavs_srcs/contract@0xc5c469a4f5c52852957f6b5b765eedcf46fc967f.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'WebCoin':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals;
    |    uint256 public initialSupply;
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0xc5c469a4f5c52852957f6b5b765eedcf46fc967f.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'WebCoin':
    |    string public symbol;
    |    uint8 public decimals;
  > |    uint256 public initialSupply;
    |    uint256 public totalSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0xc5c469a4f5c52852957f6b5b765eedcf46fc967f.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'WebCoin':
    |    uint8 public decimals;
    |    uint256 public initialSupply;
  > |    uint256 public totalSupply;
    |
    |    /* This creates an array with all balances */
  at /home/jiaming/mavs_srcs/contract@0xc5c469a4f5c52852957f6b5b765eedcf46fc967f.sol(8)

[31mViolation[0m for UnrestrictedWrite in contract 'WebCoin':
    |        if (balanceOf[_to] + _value < balanceOf[_to]) throw; // Check for overflows
    |        balanceOf[msg.sender] -= _value;                     // Subtract from the sender
  > |        balanceOf[_to] += _value;                            // Add the same to the recipient
    |      
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc5c469a4f5c52852957f6b5b765eedcf46fc967f.sol(33)

[33mWarning[0m for UnrestrictedWrite in contract 'WebCoin':
    |        if (balanceOf[msg.sender] < _value) throw;           // Check if the sender has enough
    |        if (balanceOf[_to] + _value < balanceOf[_to]) throw; // Check for overflows
  > |        balanceOf[msg.sender] -= _value;                     // Subtract from the sender
    |        balanceOf[_to] += _value;                            // Add the same to the recipient
    |      
  at /home/jiaming/mavs_srcs/contract@0xc5c469a4f5c52852957f6b5b765eedcf46fc967f.sol(32)


