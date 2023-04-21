Processing contract: /home/jiaming/mavs_srcs/contract@0xae30af822572d8bb49b912b4c0a70335c1576a30.sol:pix
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'pix':
    |pragma solidity ^0.4.18;
  > |contract pix {
    |    /* Public variables of the token */
    |    string public standard = 'Token 0.1';
  at /home/jiaming/mavs_srcs/contract@0xae30af822572d8bb49b912b4c0a70335c1576a30.sol(2)

[31mViolation[0m for MissingInputValidation in contract 'pix':
    |
    |    /* This creates an array with all balances */
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0xae30af822572d8bb49b912b4c0a70335c1576a30.sol(12)

[31mViolation[0m for MissingInputValidation in contract 'pix':
    |    /* This creates an array with all balances */
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |  
  at /home/jiaming/mavs_srcs/contract@0xae30af822572d8bb49b912b4c0a70335c1576a30.sol(13)

[31mViolation[0m for MissingInputValidation in contract 'pix':
    |
    |    /* Send coins */
  > |    function transfer(address _to, uint256 _value) {
    |        if (balanceOf[msg.sender] < _value) throw;           // Check if the sender has enough
    |        if (balanceOf[_to] + _value < balanceOf[_to]) throw; // Check for overflows
  at /home/jiaming/mavs_srcs/contract@0xae30af822572d8bb49b912b4c0a70335c1576a30.sol(30)

[33mWarning[0m for MissingInputValidation in contract 'pix':
    |contract pix {
    |    /* Public variables of the token */
  > |    string public standard = 'Token 0.1';
    |    string public name;
    |    string public symbol;
  at /home/jiaming/mavs_srcs/contract@0xae30af822572d8bb49b912b4c0a70335c1576a30.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'pix':
    |    /* Public variables of the token */
    |    string public standard = 'Token 0.1';
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0xae30af822572d8bb49b912b4c0a70335c1576a30.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'pix':
    |    string public standard = 'Token 0.1';
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals;
    |    uint256 public initialSupply;
  at /home/jiaming/mavs_srcs/contract@0xae30af822572d8bb49b912b4c0a70335c1576a30.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'pix':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals;
    |    uint256 public initialSupply;
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0xae30af822572d8bb49b912b4c0a70335c1576a30.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'pix':
    |    string public symbol;
    |    uint8 public decimals;
  > |    uint256 public initialSupply;
    |    uint256 public totalSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0xae30af822572d8bb49b912b4c0a70335c1576a30.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'pix':
    |    uint8 public decimals;
    |    uint256 public initialSupply;
  > |    uint256 public totalSupply;
    |
    |    /* This creates an array with all balances */
  at /home/jiaming/mavs_srcs/contract@0xae30af822572d8bb49b912b4c0a70335c1576a30.sol(9)

[31mViolation[0m for UnrestrictedWrite in contract 'pix':
    |        if (balanceOf[_to] + _value < balanceOf[_to]) throw; // Check for overflows
    |        balanceOf[msg.sender] -= _value;                     // Subtract from the sender
  > |        balanceOf[_to] += _value;                            // Add the same to the recipient
    |      
    |    }
  at /home/jiaming/mavs_srcs/contract@0xae30af822572d8bb49b912b4c0a70335c1576a30.sol(34)

[33mWarning[0m for UnrestrictedWrite in contract 'pix':
    |        if (balanceOf[msg.sender] < _value) throw;           // Check if the sender has enough
    |        if (balanceOf[_to] + _value < balanceOf[_to]) throw; // Check for overflows
  > |        balanceOf[msg.sender] -= _value;                     // Subtract from the sender
    |        balanceOf[_to] += _value;                            // Add the same to the recipient
    |      
  at /home/jiaming/mavs_srcs/contract@0xae30af822572d8bb49b912b4c0a70335c1576a30.sol(33)


