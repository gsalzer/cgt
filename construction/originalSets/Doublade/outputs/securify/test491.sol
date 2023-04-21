Processing contract: /home/jiaming/mavs_srcs/contract@0x201899a8d326626001daf0f31500ae43a8627307.sol:HerCoin
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for LockedEther in contract 'HerCoin':
    |pragma solidity ^0.4.2;
    |
  > |contract HerCoin {
    |    /* Public variables of the token */
    |    string public standard = 'Token 0.1';
  at /home/jiaming/mavs_srcs/contract@0x201899a8d326626001daf0f31500ae43a8627307.sol(3)

[31mViolation[0m for UnrestrictedWrite in contract 'HerCoin':
    |pragma solidity ^0.4.2;
    |
  > |contract HerCoin {
    |    /* Public variables of the token */
    |    string public standard = 'Token 0.1';
  at /home/jiaming/mavs_srcs/contract@0x201899a8d326626001daf0f31500ae43a8627307.sol(3)

[31mViolation[0m for UnrestrictedWrite in contract 'HerCoin':
    |    function Token() {
    |
  > |         initialSupply = 20000000;
    |         name ="hercoin";
    |        decimals = 4;
  at /home/jiaming/mavs_srcs/contract@0x201899a8d326626001daf0f31500ae43a8627307.sol(19)

[31mViolation[0m for UnrestrictedWrite in contract 'HerCoin':
    |         initialSupply = 20000000;
    |         name ="hercoin";
  > |        decimals = 4;
    |         symbol = "HER";
    |        
  at /home/jiaming/mavs_srcs/contract@0x201899a8d326626001daf0f31500ae43a8627307.sol(21)

[31mViolation[0m for UnrestrictedWrite in contract 'HerCoin':
    |        if (balanceOf[_to] + _value < balanceOf[_to]) throw; // Check for overflows
    |        balanceOf[msg.sender] -= _value;                     // Subtract from the sender
  > |        balanceOf[_to] += _value;                            // Add the same to the recipient
    |      
    |    }
  at /home/jiaming/mavs_srcs/contract@0x201899a8d326626001daf0f31500ae43a8627307.sol(34)

[33mWarning[0m for UnrestrictedWrite in contract 'HerCoin':
    |         symbol = "HER";
    |        
  > |        balanceOf[msg.sender] = initialSupply;              // Give the creator all initial tokens
    |        uint256 totalSupply = initialSupply;                        // Update total supply
    |                                   
  at /home/jiaming/mavs_srcs/contract@0x201899a8d326626001daf0f31500ae43a8627307.sol(24)

[33mWarning[0m for UnrestrictedWrite in contract 'HerCoin':
    |        if (balanceOf[msg.sender] < _value) throw;           // Check if the sender has enough
    |        if (balanceOf[_to] + _value < balanceOf[_to]) throw; // Check for overflows
  > |        balanceOf[msg.sender] -= _value;                     // Subtract from the sender
    |        balanceOf[_to] += _value;                            // Add the same to the recipient
    |      
  at /home/jiaming/mavs_srcs/contract@0x201899a8d326626001daf0f31500ae43a8627307.sol(33)


