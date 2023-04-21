Processing contract: /home/jiaming/mavs_srcs/contract@0xa6d08680fbbc89b55a092c512e6d1868466750e9.sol:Qudostokenone
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Qudostokenone':
  > |contract Qudostokenone {
    |    /* Public variables of the token */
    |    string public standard = 'Token 0.1';
  at /home/jiaming/mavs_srcs/contract@0xa6d08680fbbc89b55a092c512e6d1868466750e9.sol(1)

[31mViolation[0m for MissingInputValidation in contract 'Qudostokenone':
    |    uint256 public totalSupply;
    |    /* This creates an array with all balances */
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |  
  at /home/jiaming/mavs_srcs/contract@0xa6d08680fbbc89b55a092c512e6d1868466750e9.sol(10)

[31mViolation[0m for MissingInputValidation in contract 'Qudostokenone':
    |    /* This creates an array with all balances */
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |  
    |    /* Initializes contract with initial supply tokens to the creator of the contract */
  at /home/jiaming/mavs_srcs/contract@0xa6d08680fbbc89b55a092c512e6d1868466750e9.sol(11)

[31mViolation[0m for MissingInputValidation in contract 'Qudostokenone':
    |    }
    |    /* Send coins */
  > |    function transfer(address _to, uint256 _value) {
    |        if (balanceOf[msg.sender] < _value) throw;           // Check if the sender has enough
    |        if (balanceOf[_to] + _value < balanceOf[_to]) throw; // Check for overflows
  at /home/jiaming/mavs_srcs/contract@0xa6d08680fbbc89b55a092c512e6d1868466750e9.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'Qudostokenone':
    |contract Qudostokenone {
    |    /* Public variables of the token */
  > |    string public standard = 'Token 0.1';
    |    string public name;
    |    string public symbol;
  at /home/jiaming/mavs_srcs/contract@0xa6d08680fbbc89b55a092c512e6d1868466750e9.sol(3)

[33mWarning[0m for MissingInputValidation in contract 'Qudostokenone':
    |    /* Public variables of the token */
    |    string public standard = 'Token 0.1';
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0xa6d08680fbbc89b55a092c512e6d1868466750e9.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'Qudostokenone':
    |    string public standard = 'Token 0.1';
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals;
    |    uint256 public initialSupply;
  at /home/jiaming/mavs_srcs/contract@0xa6d08680fbbc89b55a092c512e6d1868466750e9.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'Qudostokenone':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals;
    |    uint256 public initialSupply;
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0xa6d08680fbbc89b55a092c512e6d1868466750e9.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'Qudostokenone':
    |    string public symbol;
    |    uint8 public decimals;
  > |    uint256 public initialSupply;
    |    uint256 public totalSupply;
    |    /* This creates an array with all balances */
  at /home/jiaming/mavs_srcs/contract@0xa6d08680fbbc89b55a092c512e6d1868466750e9.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'Qudostokenone':
    |    uint8 public decimals;
    |    uint256 public initialSupply;
  > |    uint256 public totalSupply;
    |    /* This creates an array with all balances */
    |    mapping (address => uint256) public balanceOf;
  at /home/jiaming/mavs_srcs/contract@0xa6d08680fbbc89b55a092c512e6d1868466750e9.sol(8)

[31mViolation[0m for UnrestrictedWrite in contract 'Qudostokenone':
    |        if (balanceOf[_to] + _value < balanceOf[_to]) throw; // Check for overflows
    |        balanceOf[msg.sender] -= _value;                     // Subtract from the sender
  > |        balanceOf[_to] += _value;                            // Add the same to the recipient
    |      
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa6d08680fbbc89b55a092c512e6d1868466750e9.sol(29)

[33mWarning[0m for UnrestrictedWrite in contract 'Qudostokenone':
    |        if (balanceOf[msg.sender] < _value) throw;           // Check if the sender has enough
    |        if (balanceOf[_to] + _value < balanceOf[_to]) throw; // Check for overflows
  > |        balanceOf[msg.sender] -= _value;                     // Subtract from the sender
    |        balanceOf[_to] += _value;                            // Add the same to the recipient
    |      
  at /home/jiaming/mavs_srcs/contract@0xa6d08680fbbc89b55a092c512e6d1868466750e9.sol(28)


