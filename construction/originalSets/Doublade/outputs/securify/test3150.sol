Processing contract: /home/jiaming/mavs_srcs/contract@0xcecb8e27639368bcc6b103cb3a4d4e3eb0f99d3b.sol:PowervestTokens
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'PowervestTokens':
    |pragma solidity ^0.4.2;
    |
  > |contract PowervestTokens {
    |    /* Public variables of the token */
    |    string public standard = 'Token 0.1';
  at /home/jiaming/mavs_srcs/contract@0xcecb8e27639368bcc6b103cb3a4d4e3eb0f99d3b.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'PowervestTokens':
    |
    |    /* This creates an array with all balances */
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0xcecb8e27639368bcc6b103cb3a4d4e3eb0f99d3b.sol(13)

[31mViolation[0m for MissingInputValidation in contract 'PowervestTokens':
    |    /* This creates an array with all balances */
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |  
  at /home/jiaming/mavs_srcs/contract@0xcecb8e27639368bcc6b103cb3a4d4e3eb0f99d3b.sol(14)

[31mViolation[0m for MissingInputValidation in contract 'PowervestTokens':
    |
    |    /* Send coins */
  > |    function transfer(address _to, uint256 _value) {
    |        if (balanceOf[msg.sender] < _value) throw;           // Check if the sender has enough
    |        if (balanceOf[_to] + _value < balanceOf[_to]) throw; // Check for overflows
  at /home/jiaming/mavs_srcs/contract@0xcecb8e27639368bcc6b103cb3a4d4e3eb0f99d3b.sol(31)

[33mWarning[0m for MissingInputValidation in contract 'PowervestTokens':
    |contract PowervestTokens {
    |    /* Public variables of the token */
  > |    string public standard = 'Token 0.1';
    |    string public name;
    |    string public symbol;
  at /home/jiaming/mavs_srcs/contract@0xcecb8e27639368bcc6b103cb3a4d4e3eb0f99d3b.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'PowervestTokens':
    |    /* Public variables of the token */
    |    string public standard = 'Token 0.1';
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0xcecb8e27639368bcc6b103cb3a4d4e3eb0f99d3b.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'PowervestTokens':
    |    string public standard = 'Token 0.1';
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals;
    |    uint256 public initialSupply;
  at /home/jiaming/mavs_srcs/contract@0xcecb8e27639368bcc6b103cb3a4d4e3eb0f99d3b.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'PowervestTokens':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals;
    |    uint256 public initialSupply;
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0xcecb8e27639368bcc6b103cb3a4d4e3eb0f99d3b.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'PowervestTokens':
    |    string public symbol;
    |    uint8 public decimals;
  > |    uint256 public initialSupply;
    |    uint256 public totalSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0xcecb8e27639368bcc6b103cb3a4d4e3eb0f99d3b.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'PowervestTokens':
    |    uint8 public decimals;
    |    uint256 public initialSupply;
  > |    uint256 public totalSupply;
    |
    |    /* This creates an array with all balances */
  at /home/jiaming/mavs_srcs/contract@0xcecb8e27639368bcc6b103cb3a4d4e3eb0f99d3b.sol(10)

[31mViolation[0m for UnrestrictedWrite in contract 'PowervestTokens':
    |        if (balanceOf[_to] + _value < balanceOf[_to]) throw; // Check for overflows
    |        balanceOf[msg.sender] -= _value;                     // Subtract from the sender
  > |        balanceOf[_to] += _value;                            // Add the same to the recipient
    |      
    |    }
  at /home/jiaming/mavs_srcs/contract@0xcecb8e27639368bcc6b103cb3a4d4e3eb0f99d3b.sol(35)

[33mWarning[0m for UnrestrictedWrite in contract 'PowervestTokens':
    |        if (balanceOf[msg.sender] < _value) throw;           // Check if the sender has enough
    |        if (balanceOf[_to] + _value < balanceOf[_to]) throw; // Check for overflows
  > |        balanceOf[msg.sender] -= _value;                     // Subtract from the sender
    |        balanceOf[_to] += _value;                            // Add the same to the recipient
    |      
  at /home/jiaming/mavs_srcs/contract@0xcecb8e27639368bcc6b103cb3a4d4e3eb0f99d3b.sol(34)


