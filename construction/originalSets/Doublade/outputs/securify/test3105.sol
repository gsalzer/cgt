Processing contract: /home/jiaming/mavs_srcs/contract@0xcbe2c3076b33554b713c8c503869fec2e0671d33.sol:SkechoCoin
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'SkechoCoin':
  > |contract SkechoCoin {
    |    /* Public variables of the token */
    |    string public standard = 'Token 0.1';
  at /home/jiaming/mavs_srcs/contract@0xcbe2c3076b33554b713c8c503869fec2e0671d33.sol(1)

[31mViolation[0m for MissingInputValidation in contract 'SkechoCoin':
    |
    |    /* This creates an array with all balances */
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0xcbe2c3076b33554b713c8c503869fec2e0671d33.sol(11)

[31mViolation[0m for MissingInputValidation in contract 'SkechoCoin':
    |    /* This creates an array with all balances */
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    /* Initializes contract with initial supply tokens to the creator of the contract */
  at /home/jiaming/mavs_srcs/contract@0xcbe2c3076b33554b713c8c503869fec2e0671d33.sol(12)

[31mViolation[0m for MissingInputValidation in contract 'SkechoCoin':
    |
    |    /* Send coins */
  > |    function transfer(address _to, uint256 _value) {
    |        if (balanceOf[msg.sender] < _value) throw;           // Check if the sender has enough
    |        if (balanceOf[_to] + _value < balanceOf[_to]) throw; // Check for overflows
  at /home/jiaming/mavs_srcs/contract@0xcbe2c3076b33554b713c8c503869fec2e0671d33.sol(27)

[33mWarning[0m for MissingInputValidation in contract 'SkechoCoin':
    |contract SkechoCoin {
    |    /* Public variables of the token */
  > |    string public standard = 'Token 0.1';
    |    string public name;
    |    string public symbol;
  at /home/jiaming/mavs_srcs/contract@0xcbe2c3076b33554b713c8c503869fec2e0671d33.sol(3)

[33mWarning[0m for MissingInputValidation in contract 'SkechoCoin':
    |    /* Public variables of the token */
    |    string public standard = 'Token 0.1';
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0xcbe2c3076b33554b713c8c503869fec2e0671d33.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'SkechoCoin':
    |    string public standard = 'Token 0.1';
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals;
    |    uint256 public initialSupply;
  at /home/jiaming/mavs_srcs/contract@0xcbe2c3076b33554b713c8c503869fec2e0671d33.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'SkechoCoin':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals;
    |    uint256 public initialSupply;
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0xcbe2c3076b33554b713c8c503869fec2e0671d33.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'SkechoCoin':
    |    string public symbol;
    |    uint8 public decimals;
  > |    uint256 public initialSupply;
    |    uint256 public totalSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0xcbe2c3076b33554b713c8c503869fec2e0671d33.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'SkechoCoin':
    |    uint8 public decimals;
    |    uint256 public initialSupply;
  > |    uint256 public totalSupply;
    |
    |    /* This creates an array with all balances */
  at /home/jiaming/mavs_srcs/contract@0xcbe2c3076b33554b713c8c503869fec2e0671d33.sol(8)

[31mViolation[0m for UnrestrictedWrite in contract 'SkechoCoin':
    |        if (balanceOf[_to] + _value < balanceOf[_to]) throw; // Check for overflows
    |        balanceOf[msg.sender] -= _value;                     // Subtract from the sender
  > |        balanceOf[_to] += _value;                            // Add the same to the recipient
    |      
    |    }
  at /home/jiaming/mavs_srcs/contract@0xcbe2c3076b33554b713c8c503869fec2e0671d33.sol(31)

[33mWarning[0m for UnrestrictedWrite in contract 'SkechoCoin':
    |        if (balanceOf[msg.sender] < _value) throw;           // Check if the sender has enough
    |        if (balanceOf[_to] + _value < balanceOf[_to]) throw; // Check for overflows
  > |        balanceOf[msg.sender] -= _value;                     // Subtract from the sender
    |        balanceOf[_to] += _value;                            // Add the same to the recipient
    |      
  at /home/jiaming/mavs_srcs/contract@0xcbe2c3076b33554b713c8c503869fec2e0671d33.sol(30)


