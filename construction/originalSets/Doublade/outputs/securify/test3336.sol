Processing contract: /home/jiaming/mavs_srcs/contract@0xdb6ab046624c4c553bcaf0a2e4d529961331001d.sol:EtherGold
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'EtherGold':
    |pragma solidity ^0.4.11;
    | 
  > |contract EtherGold {
    |    /* Public variables of the token */
    |    string public standard = 'Token 0.1';
  at /home/jiaming/mavs_srcs/contract@0xdb6ab046624c4c553bcaf0a2e4d529961331001d.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'EtherGold':
    |
    |    /* This creates an array with all balances */
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0xdb6ab046624c4c553bcaf0a2e4d529961331001d.sol(13)

[31mViolation[0m for MissingInputValidation in contract 'EtherGold':
    |    /* This creates an array with all balances */
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |  
  at /home/jiaming/mavs_srcs/contract@0xdb6ab046624c4c553bcaf0a2e4d529961331001d.sol(14)

[31mViolation[0m for MissingInputValidation in contract 'EtherGold':
    |
    |    /* Send coins */
  > |    function transfer(address _to, uint256 _value) {
    |        if (balanceOf[msg.sender] < _value) throw;           // Check if the sender has enough
    |        if (balanceOf[_to] + _value < balanceOf[_to]) throw; // Check for overflows
  at /home/jiaming/mavs_srcs/contract@0xdb6ab046624c4c553bcaf0a2e4d529961331001d.sol(31)

[33mWarning[0m for MissingInputValidation in contract 'EtherGold':
    |contract EtherGold {
    |    /* Public variables of the token */
  > |    string public standard = 'Token 0.1';
    |    string public name;
    |    string public symbol;
  at /home/jiaming/mavs_srcs/contract@0xdb6ab046624c4c553bcaf0a2e4d529961331001d.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'EtherGold':
    |    /* Public variables of the token */
    |    string public standard = 'Token 0.1';
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0xdb6ab046624c4c553bcaf0a2e4d529961331001d.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'EtherGold':
    |    string public standard = 'Token 0.1';
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals;
    |    uint256 public initialSupply;
  at /home/jiaming/mavs_srcs/contract@0xdb6ab046624c4c553bcaf0a2e4d529961331001d.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'EtherGold':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals;
    |    uint256 public initialSupply;
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0xdb6ab046624c4c553bcaf0a2e4d529961331001d.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'EtherGold':
    |    string public symbol;
    |    uint8 public decimals;
  > |    uint256 public initialSupply;
    |    uint256 public totalSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0xdb6ab046624c4c553bcaf0a2e4d529961331001d.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'EtherGold':
    |    uint8 public decimals;
    |    uint256 public initialSupply;
  > |    uint256 public totalSupply;
    |
    |    /* This creates an array with all balances */
  at /home/jiaming/mavs_srcs/contract@0xdb6ab046624c4c553bcaf0a2e4d529961331001d.sol(10)

[31mViolation[0m for UnrestrictedWrite in contract 'EtherGold':
    |        if (balanceOf[_to] + _value < balanceOf[_to]) throw; // Check for overflows
    |        balanceOf[msg.sender] -= _value;                     // Subtract from the sender
  > |        balanceOf[_to] += _value;                            // Add the same to the recipient
    |      
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdb6ab046624c4c553bcaf0a2e4d529961331001d.sol(35)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherGold':
    |        if (balanceOf[msg.sender] < _value) throw;           // Check if the sender has enough
    |        if (balanceOf[_to] + _value < balanceOf[_to]) throw; // Check for overflows
  > |        balanceOf[msg.sender] -= _value;                     // Subtract from the sender
    |        balanceOf[_to] += _value;                            // Add the same to the recipient
    |      
  at /home/jiaming/mavs_srcs/contract@0xdb6ab046624c4c553bcaf0a2e4d529961331001d.sol(34)


