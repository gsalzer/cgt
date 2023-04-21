Processing contract: /home/jiaming/mavs_srcs/contract@0xed6cb1eb72d52a2446dc42a537f75e048f047fdd.sol:ExBatallionCoin
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'ExBatallionCoin':
    |
    |
  > |contract ExBatallionCoin {
    |    /* Public variables of the token */
    |    string public standard = 'Token 0.1';
  at /home/jiaming/mavs_srcs/contract@0xed6cb1eb72d52a2446dc42a537f75e048f047fdd.sol(6)

[31mViolation[0m for MissingInputValidation in contract 'ExBatallionCoin':
    |
    |    /* This creates an array with all balances */
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0xed6cb1eb72d52a2446dc42a537f75e048f047fdd.sol(16)

[31mViolation[0m for MissingInputValidation in contract 'ExBatallionCoin':
    |    /* This creates an array with all balances */
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |  
  at /home/jiaming/mavs_srcs/contract@0xed6cb1eb72d52a2446dc42a537f75e048f047fdd.sol(17)

[31mViolation[0m for MissingInputValidation in contract 'ExBatallionCoin':
    |
    |    /* Send coins */
  > |    function transfer(address _to, uint256 _value) {
    |        if (balanceOf[msg.sender] < _value) throw;           // Check if the sender has enough
    |        if (balanceOf[_to] + _value < balanceOf[_to]) throw; // Check for overflows
  at /home/jiaming/mavs_srcs/contract@0xed6cb1eb72d52a2446dc42a537f75e048f047fdd.sol(34)

[33mWarning[0m for MissingInputValidation in contract 'ExBatallionCoin':
    |contract ExBatallionCoin {
    |    /* Public variables of the token */
  > |    string public standard = 'Token 0.1';
    |    string public name;
    |    string public symbol;
  at /home/jiaming/mavs_srcs/contract@0xed6cb1eb72d52a2446dc42a537f75e048f047fdd.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'ExBatallionCoin':
    |    /* Public variables of the token */
    |    string public standard = 'Token 0.1';
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0xed6cb1eb72d52a2446dc42a537f75e048f047fdd.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'ExBatallionCoin':
    |    string public standard = 'Token 0.1';
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals;
    |    uint256 public initialSupply;
  at /home/jiaming/mavs_srcs/contract@0xed6cb1eb72d52a2446dc42a537f75e048f047fdd.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'ExBatallionCoin':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals;
    |    uint256 public initialSupply;
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0xed6cb1eb72d52a2446dc42a537f75e048f047fdd.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'ExBatallionCoin':
    |    string public symbol;
    |    uint8 public decimals;
  > |    uint256 public initialSupply;
    |    uint256 public totalSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0xed6cb1eb72d52a2446dc42a537f75e048f047fdd.sol(12)

[33mWarning[0m for MissingInputValidation in contract 'ExBatallionCoin':
    |    uint8 public decimals;
    |    uint256 public initialSupply;
  > |    uint256 public totalSupply;
    |
    |    /* This creates an array with all balances */
  at /home/jiaming/mavs_srcs/contract@0xed6cb1eb72d52a2446dc42a537f75e048f047fdd.sol(13)

[31mViolation[0m for UnrestrictedWrite in contract 'ExBatallionCoin':
    |        if (balanceOf[_to] + _value < balanceOf[_to]) throw; // Check for overflows
    |        balanceOf[msg.sender] -= _value;                     // Subtract from the sender
  > |        balanceOf[_to] += _value;                            // Add the same to the recipient
    |      
    |    }
  at /home/jiaming/mavs_srcs/contract@0xed6cb1eb72d52a2446dc42a537f75e048f047fdd.sol(38)

[33mWarning[0m for UnrestrictedWrite in contract 'ExBatallionCoin':
    |        if (balanceOf[msg.sender] < _value) throw;           // Check if the sender has enough
    |        if (balanceOf[_to] + _value < balanceOf[_to]) throw; // Check for overflows
  > |        balanceOf[msg.sender] -= _value;                     // Subtract from the sender
    |        balanceOf[_to] += _value;                            // Add the same to the recipient
    |      
  at /home/jiaming/mavs_srcs/contract@0xed6cb1eb72d52a2446dc42a537f75e048f047fdd.sol(37)


