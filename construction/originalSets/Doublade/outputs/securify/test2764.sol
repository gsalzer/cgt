Processing contract: /home/jiaming/mavs_srcs/contract@0xb4b7b5d03ada718c7d20a75f6c28118f133f3fa0.sol:Eyecoin
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Eyecoin':
    |pragma solidity ^ 0.4.2;
    |
  > |contract Eyecoin {
    |    /* Public variables of the token */
    |    string public standard;
  at /home/jiaming/mavs_srcs/contract@0xb4b7b5d03ada718c7d20a75f6c28118f133f3fa0.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'Eyecoin':
    |
    |    /* This creates an array with all balances */
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0xb4b7b5d03ada718c7d20a75f6c28118f133f3fa0.sol(13)

[31mViolation[0m for MissingInputValidation in contract 'Eyecoin':
    |    /* This creates an array with all balances */
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |  
  at /home/jiaming/mavs_srcs/contract@0xb4b7b5d03ada718c7d20a75f6c28118f133f3fa0.sol(14)

[31mViolation[0m for MissingInputValidation in contract 'Eyecoin':
    |
    |    /* Send coins */
  > |    function transfer(address _to, uint256 _value) {
    |        if (balanceOf[msg.sender] < _value) throw;           // Check if the sender has enough
    |        if (balanceOf[_to] + _value < balanceOf[_to]) throw; // Check for overflows
  at /home/jiaming/mavs_srcs/contract@0xb4b7b5d03ada718c7d20a75f6c28118f133f3fa0.sol(31)

[33mWarning[0m for MissingInputValidation in contract 'Eyecoin':
    |contract Eyecoin {
    |    /* Public variables of the token */
  > |    string public standard;
    |    string public name;
    |    string public symbol;
  at /home/jiaming/mavs_srcs/contract@0xb4b7b5d03ada718c7d20a75f6c28118f133f3fa0.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'Eyecoin':
    |    /* Public variables of the token */
    |    string public standard;
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0xb4b7b5d03ada718c7d20a75f6c28118f133f3fa0.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'Eyecoin':
    |    string public standard;
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals;
    |    uint256 public initialSupply;
  at /home/jiaming/mavs_srcs/contract@0xb4b7b5d03ada718c7d20a75f6c28118f133f3fa0.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'Eyecoin':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals;
    |    uint256 public initialSupply;
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0xb4b7b5d03ada718c7d20a75f6c28118f133f3fa0.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'Eyecoin':
    |    string public symbol;
    |    uint8 public decimals;
  > |    uint256 public initialSupply;
    |    uint256 public totalSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0xb4b7b5d03ada718c7d20a75f6c28118f133f3fa0.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'Eyecoin':
    |    uint8 public decimals;
    |    uint256 public initialSupply;
  > |    uint256 public totalSupply;
    |
    |    /* This creates an array with all balances */
  at /home/jiaming/mavs_srcs/contract@0xb4b7b5d03ada718c7d20a75f6c28118f133f3fa0.sol(10)

[31mViolation[0m for UnrestrictedWrite in contract 'Eyecoin':
    |        if (balanceOf[_to] + _value < balanceOf[_to]) throw; // Check for overflows
    |        balanceOf[msg.sender] -= _value;                     // Subtract from the sender
  > |        balanceOf[_to] += _value;                            // Add the same to the recipient
    |      
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb4b7b5d03ada718c7d20a75f6c28118f133f3fa0.sol(35)

[33mWarning[0m for UnrestrictedWrite in contract 'Eyecoin':
    |        if (balanceOf[msg.sender] < _value) throw;           // Check if the sender has enough
    |        if (balanceOf[_to] + _value < balanceOf[_to]) throw; // Check for overflows
  > |        balanceOf[msg.sender] -= _value;                     // Subtract from the sender
    |        balanceOf[_to] += _value;                            // Add the same to the recipient
    |      
  at /home/jiaming/mavs_srcs/contract@0xb4b7b5d03ada718c7d20a75f6c28118f133f3fa0.sol(34)


