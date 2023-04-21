Processing contract: /home/jiaming/mavs_srcs/contract@0x287123335683bba3cdc2e92cd0913f5c22fd2325.sol:Eurocoin
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for LockedEther in contract 'Eurocoin':
    |pragma solidity ^0.4.4;
    |
  > |contract Eurocoin {
    |    /* Public variables of the token */
    |    string public standard = 'Token 0.1';
  at /home/jiaming/mavs_srcs/contract@0x287123335683bba3cdc2e92cd0913f5c22fd2325.sol(3)

[31mViolation[0m for UnrestrictedWrite in contract 'Eurocoin':
    |pragma solidity ^0.4.4;
    |
  > |contract Eurocoin {
    |    /* Public variables of the token */
    |    string public standard = 'Token 0.1';
  at /home/jiaming/mavs_srcs/contract@0x287123335683bba3cdc2e92cd0913f5c22fd2325.sol(3)

[31mViolation[0m for UnrestrictedWrite in contract 'Eurocoin':
    |    function EurocoinB() {
    |
  > |         initialSupply = 100000000;
    |         name ="Eurocoin";
    |         decimals = 0;
  at /home/jiaming/mavs_srcs/contract@0x287123335683bba3cdc2e92cd0913f5c22fd2325.sol(20)

[31mViolation[0m for UnrestrictedWrite in contract 'Eurocoin':
    |         initialSupply = 100000000;
    |         name ="Eurocoin";
  > |         decimals = 0;
    |         symbol = "EUCE";
    |        
  at /home/jiaming/mavs_srcs/contract@0x287123335683bba3cdc2e92cd0913f5c22fd2325.sol(22)

[31mViolation[0m for UnrestrictedWrite in contract 'Eurocoin':
    |        
    |        balanceOf[msg.sender] = initialSupply;              // Give the creator all initial tokens
  > |        totalSupply = initialSupply;                        // Update total supply
    |                                   
    |    }
  at /home/jiaming/mavs_srcs/contract@0x287123335683bba3cdc2e92cd0913f5c22fd2325.sol(26)

[31mViolation[0m for UnrestrictedWrite in contract 'Eurocoin':
    |        if (balanceOf[_to] + _value < balanceOf[_to]) throw; // Check for overflows
    |        balanceOf[msg.sender] -= _value;                     // Subtract from the sender
  > |        balanceOf[_to] += _value;                            // Add the same to the recipient
    |      
    |    }
  at /home/jiaming/mavs_srcs/contract@0x287123335683bba3cdc2e92cd0913f5c22fd2325.sol(35)

[33mWarning[0m for UnrestrictedWrite in contract 'Eurocoin':
    |         symbol = "EUCE";
    |        
  > |        balanceOf[msg.sender] = initialSupply;              // Give the creator all initial tokens
    |        totalSupply = initialSupply;                        // Update total supply
    |                                   
  at /home/jiaming/mavs_srcs/contract@0x287123335683bba3cdc2e92cd0913f5c22fd2325.sol(25)

[33mWarning[0m for UnrestrictedWrite in contract 'Eurocoin':
    |        if (balanceOf[msg.sender] < _value) throw;           // Check if the sender has enough
    |        if (balanceOf[_to] + _value < balanceOf[_to]) throw; // Check for overflows
  > |        balanceOf[msg.sender] -= _value;                     // Subtract from the sender
    |        balanceOf[_to] += _value;                            // Add the same to the recipient
    |      
  at /home/jiaming/mavs_srcs/contract@0x287123335683bba3cdc2e92cd0913f5c22fd2325.sol(34)


