Processing contract: /home/jiaming/mavs_srcs/contract@0xb1c16cbc0cef590f63c60d47f9cb790033971345.sol:MyToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'MyToken':
    |pragma solidity ^0.4.11;
    |
  > |contract MyToken {
    |    /* This creates an array with all balances */
    |    mapping (address => uint256) public balanceOf;
  at /home/jiaming/mavs_srcs/contract@0xb1c16cbc0cef590f63c60d47f9cb790033971345.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'MyToken':
    |contract MyToken {
    |    /* This creates an array with all balances */
  > |    mapping (address => uint256) public balanceOf;
    |    string public name;
    |    string public symbol;
  at /home/jiaming/mavs_srcs/contract@0xb1c16cbc0cef590f63c60d47f9cb790033971345.sol(5)

[31mViolation[0m for MissingInputValidation in contract 'MyToken':
    |
    |    /* Send coins */
  > |    function transfer(address _to, uint256 _value) {
    |        require(balanceOf[msg.sender] >= _value);           // Check if the sender has enough
    |        require(balanceOf[_to] + _value >= balanceOf[_to]); // Check for overflows
  at /home/jiaming/mavs_srcs/contract@0xb1c16cbc0cef590f63c60d47f9cb790033971345.sol(19)

[33mWarning[0m for MissingInputValidation in contract 'MyToken':
    |    /* This creates an array with all balances */
    |    mapping (address => uint256) public balanceOf;
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0xb1c16cbc0cef590f63c60d47f9cb790033971345.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'MyToken':
    |    mapping (address => uint256) public balanceOf;
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals;
    |
  at /home/jiaming/mavs_srcs/contract@0xb1c16cbc0cef590f63c60d47f9cb790033971345.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'MyToken':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals;
    |
    |    /* Initializes contract with initial supply tokens to the creator of the contract */
  at /home/jiaming/mavs_srcs/contract@0xb1c16cbc0cef590f63c60d47f9cb790033971345.sol(8)

[31mViolation[0m for UnrestrictedWrite in contract 'MyToken':
    |        require(balanceOf[_to] + _value >= balanceOf[_to]); // Check for overflows
    |        balanceOf[msg.sender] -= _value;                    // Subtract from the sender
  > |        balanceOf[_to] += _value;                           // Add the same to the recipient
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xb1c16cbc0cef590f63c60d47f9cb790033971345.sol(23)

[33mWarning[0m for UnrestrictedWrite in contract 'MyToken':
    |        require(balanceOf[msg.sender] >= _value);           // Check if the sender has enough
    |        require(balanceOf[_to] + _value >= balanceOf[_to]); // Check for overflows
  > |        balanceOf[msg.sender] -= _value;                    // Subtract from the sender
    |        balanceOf[_to] += _value;                           // Add the same to the recipient
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb1c16cbc0cef590f63c60d47f9cb790033971345.sol(22)


