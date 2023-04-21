Processing contract: /home/jiaming/mavs_srcs/contract@0xa3b5a4bfbc940691c67310f3945b5efa2025b14a.sol:Craftmelon
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Craftmelon':
    |
    |
  > |contract Craftmelon {
    |    /* Public variables of the token */
    |    string public standard = 'Token 0.1';
  at /home/jiaming/mavs_srcs/contract@0xa3b5a4bfbc940691c67310f3945b5efa2025b14a.sol(4)

[31mViolation[0m for MissingInputValidation in contract 'Craftmelon':
    |
    |    /* This creates an array with all balances */
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0xa3b5a4bfbc940691c67310f3945b5efa2025b14a.sol(14)

[31mViolation[0m for MissingInputValidation in contract 'Craftmelon':
    |    /* This creates an array with all balances */
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |  
  at /home/jiaming/mavs_srcs/contract@0xa3b5a4bfbc940691c67310f3945b5efa2025b14a.sol(15)

[31mViolation[0m for MissingInputValidation in contract 'Craftmelon':
    |
    |    /* Send coins */
  > |    function transfer(address _to, uint256 _value) {
    |        if (balanceOf[msg.sender] < _value) throw;           // Check if the sender has enough
    |        if (balanceOf[_to] + _value < balanceOf[_to]) throw; // Check for overflows
  at /home/jiaming/mavs_srcs/contract@0xa3b5a4bfbc940691c67310f3945b5efa2025b14a.sol(32)

[33mWarning[0m for MissingInputValidation in contract 'Craftmelon':
    |contract Craftmelon {
    |    /* Public variables of the token */
  > |    string public standard = 'Token 0.1';
    |    string public name;
    |    string public symbol;
  at /home/jiaming/mavs_srcs/contract@0xa3b5a4bfbc940691c67310f3945b5efa2025b14a.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'Craftmelon':
    |    /* Public variables of the token */
    |    string public standard = 'Token 0.1';
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0xa3b5a4bfbc940691c67310f3945b5efa2025b14a.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'Craftmelon':
    |    string public standard = 'Token 0.1';
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals;
    |    uint256 public initialSupply;
  at /home/jiaming/mavs_srcs/contract@0xa3b5a4bfbc940691c67310f3945b5efa2025b14a.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'Craftmelon':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals;
    |    uint256 public initialSupply;
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0xa3b5a4bfbc940691c67310f3945b5efa2025b14a.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'Craftmelon':
    |    string public symbol;
    |    uint8 public decimals;
  > |    uint256 public initialSupply;
    |    uint256 public totalSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0xa3b5a4bfbc940691c67310f3945b5efa2025b14a.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'Craftmelon':
    |    uint8 public decimals;
    |    uint256 public initialSupply;
  > |    uint256 public totalSupply;
    |
    |    /* This creates an array with all balances */
  at /home/jiaming/mavs_srcs/contract@0xa3b5a4bfbc940691c67310f3945b5efa2025b14a.sol(11)

[31mViolation[0m for UnrestrictedWrite in contract 'Craftmelon':
    |        if (balanceOf[_to] + _value < balanceOf[_to]) throw; // Check for overflows
    |        balanceOf[msg.sender] -= _value;                     // Subtract from the sender
  > |        balanceOf[_to] += _value;                            // Add the same to the recipient
    |      
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa3b5a4bfbc940691c67310f3945b5efa2025b14a.sol(36)

[33mWarning[0m for UnrestrictedWrite in contract 'Craftmelon':
    |        if (balanceOf[msg.sender] < _value) throw;           // Check if the sender has enough
    |        if (balanceOf[_to] + _value < balanceOf[_to]) throw; // Check for overflows
  > |        balanceOf[msg.sender] -= _value;                     // Subtract from the sender
    |        balanceOf[_to] += _value;                            // Add the same to the recipient
    |      
  at /home/jiaming/mavs_srcs/contract@0xa3b5a4bfbc940691c67310f3945b5efa2025b14a.sol(35)


