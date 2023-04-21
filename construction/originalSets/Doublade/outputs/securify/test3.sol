Processing contract: /home/jiaming/mavs_srcs/contract@0x004460229a42542772f21ee82b8772cc6f2a502b.sol:InfraCoin
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'InfraCoin':
  > |contract InfraCoin {
    |    /* Public variables of the token */
    |    string public standard = 'Token 0.1';
  at /home/jiaming/mavs_srcs/contract@0x004460229a42542772f21ee82b8772cc6f2a502b.sol(1)

[31mViolation[0m for MissingInputValidation in contract 'InfraCoin':
    |
    |    /* This creates an array with all balances */
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0x004460229a42542772f21ee82b8772cc6f2a502b.sol(11)

[31mViolation[0m for MissingInputValidation in contract 'InfraCoin':
    |    /* This creates an array with all balances */
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |  
  at /home/jiaming/mavs_srcs/contract@0x004460229a42542772f21ee82b8772cc6f2a502b.sol(12)

[31mViolation[0m for MissingInputValidation in contract 'InfraCoin':
    |
    |    /* Send coins */
  > |    function transfer(address _to, uint256 _value) {
    |        if (balanceOf[msg.sender] < _value) throw;           // Check if the sender has enough
    |        if (balanceOf[_to] + _value < balanceOf[_to]) throw; // Check for overflows
  at /home/jiaming/mavs_srcs/contract@0x004460229a42542772f21ee82b8772cc6f2a502b.sol(29)

[33mWarning[0m for MissingInputValidation in contract 'InfraCoin':
    |contract InfraCoin {
    |    /* Public variables of the token */
  > |    string public standard = 'Token 0.1';
    |    string public name;
    |    string public symbol;
  at /home/jiaming/mavs_srcs/contract@0x004460229a42542772f21ee82b8772cc6f2a502b.sol(3)

[33mWarning[0m for MissingInputValidation in contract 'InfraCoin':
    |    /* Public variables of the token */
    |    string public standard = 'Token 0.1';
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0x004460229a42542772f21ee82b8772cc6f2a502b.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'InfraCoin':
    |    string public standard = 'Token 0.1';
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals;
    |    uint256 public initialSupply;
  at /home/jiaming/mavs_srcs/contract@0x004460229a42542772f21ee82b8772cc6f2a502b.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'InfraCoin':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals;
    |    uint256 public initialSupply;
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x004460229a42542772f21ee82b8772cc6f2a502b.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'InfraCoin':
    |    string public symbol;
    |    uint8 public decimals;
  > |    uint256 public initialSupply;
    |    uint256 public totalSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0x004460229a42542772f21ee82b8772cc6f2a502b.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'InfraCoin':
    |    uint8 public decimals;
    |    uint256 public initialSupply;
  > |    uint256 public totalSupply;
    |
    |    /* This creates an array with all balances */
  at /home/jiaming/mavs_srcs/contract@0x004460229a42542772f21ee82b8772cc6f2a502b.sol(8)

[31mViolation[0m for UnrestrictedWrite in contract 'InfraCoin':
    |        if (balanceOf[_to] + _value < balanceOf[_to]) throw; // Check for overflows
    |        balanceOf[msg.sender] -= _value;                     // Subtract from the sender
  > |        balanceOf[_to] += _value;                            // Add the same to the recipient
    |      
    |    }
  at /home/jiaming/mavs_srcs/contract@0x004460229a42542772f21ee82b8772cc6f2a502b.sol(33)

[33mWarning[0m for UnrestrictedWrite in contract 'InfraCoin':
    |        if (balanceOf[msg.sender] < _value) throw;           // Check if the sender has enough
    |        if (balanceOf[_to] + _value < balanceOf[_to]) throw; // Check for overflows
  > |        balanceOf[msg.sender] -= _value;                     // Subtract from the sender
    |        balanceOf[_to] += _value;                            // Add the same to the recipient
    |      
  at /home/jiaming/mavs_srcs/contract@0x004460229a42542772f21ee82b8772cc6f2a502b.sol(32)


