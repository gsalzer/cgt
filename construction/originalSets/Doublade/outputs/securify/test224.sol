Processing contract: /home/jiaming/mavs_srcs/contract@0x0f8019c51423a388a79e414f1dffbcb802db8962.sol:Satnet
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Satnet':
    |
    |
  > |contract Satnet {
    |    /* Public variables of the token */
    |    string public standard = 'Token 0.1';
  at /home/jiaming/mavs_srcs/contract@0x0f8019c51423a388a79e414f1dffbcb802db8962.sol(6)

[31mViolation[0m for MissingInputValidation in contract 'Satnet':
    |
    |    /* This creates an array with all balances */
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0x0f8019c51423a388a79e414f1dffbcb802db8962.sol(16)

[31mViolation[0m for MissingInputValidation in contract 'Satnet':
    |    /* This creates an array with all balances */
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |  
  at /home/jiaming/mavs_srcs/contract@0x0f8019c51423a388a79e414f1dffbcb802db8962.sol(17)

[31mViolation[0m for MissingInputValidation in contract 'Satnet':
    |
    |    /* Send coins */
  > |    function transfer(address _to, uint256 _value) {
    |        if (balanceOf[msg.sender] < _value) throw;           // Check if the sender has enough
    |        if (balanceOf[_to] + _value < balanceOf[_to]) throw; // Check for overflows
  at /home/jiaming/mavs_srcs/contract@0x0f8019c51423a388a79e414f1dffbcb802db8962.sol(34)

[33mWarning[0m for MissingInputValidation in contract 'Satnet':
    |contract Satnet {
    |    /* Public variables of the token */
  > |    string public standard = 'Token 0.1';
    |    string public name;
    |    string public symbol;
  at /home/jiaming/mavs_srcs/contract@0x0f8019c51423a388a79e414f1dffbcb802db8962.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'Satnet':
    |    /* Public variables of the token */
    |    string public standard = 'Token 0.1';
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0x0f8019c51423a388a79e414f1dffbcb802db8962.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'Satnet':
    |    string public standard = 'Token 0.1';
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals;
    |    uint256 public initialSupply;
  at /home/jiaming/mavs_srcs/contract@0x0f8019c51423a388a79e414f1dffbcb802db8962.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'Satnet':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals;
    |    uint256 public initialSupply;
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x0f8019c51423a388a79e414f1dffbcb802db8962.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'Satnet':
    |    string public symbol;
    |    uint8 public decimals;
  > |    uint256 public initialSupply;
    |    uint256 public totalSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0x0f8019c51423a388a79e414f1dffbcb802db8962.sol(12)

[33mWarning[0m for MissingInputValidation in contract 'Satnet':
    |    uint8 public decimals;
    |    uint256 public initialSupply;
  > |    uint256 public totalSupply;
    |
    |    /* This creates an array with all balances */
  at /home/jiaming/mavs_srcs/contract@0x0f8019c51423a388a79e414f1dffbcb802db8962.sol(13)

[31mViolation[0m for UnrestrictedWrite in contract 'Satnet':
    |        if (balanceOf[_to] + _value < balanceOf[_to]) throw; // Check for overflows
    |        balanceOf[msg.sender] -= _value;                     // Subtract from the sender
  > |        balanceOf[_to] += _value;                            // Add the same to the recipient
    |      
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0f8019c51423a388a79e414f1dffbcb802db8962.sol(38)

[33mWarning[0m for UnrestrictedWrite in contract 'Satnet':
    |        if (balanceOf[msg.sender] < _value) throw;           // Check if the sender has enough
    |        if (balanceOf[_to] + _value < balanceOf[_to]) throw; // Check for overflows
  > |        balanceOf[msg.sender] -= _value;                     // Subtract from the sender
    |        balanceOf[_to] += _value;                            // Add the same to the recipient
    |      
  at /home/jiaming/mavs_srcs/contract@0x0f8019c51423a388a79e414f1dffbcb802db8962.sol(37)


