Processing contract: /home/jiaming/mavs_srcs/contract@0xe43b76436b7146e8b8c4a167831bbe0421335aed.sol:CicadaToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for LockedEther in contract 'CicadaToken':
  > |contract CicadaToken {
    |    /* Public variables of the Cicada token. Not made by the "official" Cicada 3301... or is it? 
    |        No, probably not, you're paranoid. Or am I? What if we're all Cicada? No, you're delusional.
  at /home/jiaming/mavs_srcs/contract@0xe43b76436b7146e8b8c4a167831bbe0421335aed.sol(1)

[31mViolation[0m for UnrestrictedWrite in contract 'CicadaToken':
  > |contract CicadaToken {
    |    /* Public variables of the Cicada token. Not made by the "official" Cicada 3301... or is it? 
    |        No, probably not, you're paranoid. Or am I? What if we're all Cicada? No, you're delusional.
  at /home/jiaming/mavs_srcs/contract@0xe43b76436b7146e8b8c4a167831bbe0421335aed.sol(1)

[31mViolation[0m for UnrestrictedWrite in contract 'CicadaToken':
    |    function Token() {
    |
  > |         initialSupply = 3301000000000;
    |         name ="CICADA";
    |         decimals = 9;
  at /home/jiaming/mavs_srcs/contract@0xe43b76436b7146e8b8c4a167831bbe0421335aed.sol(67)

[31mViolation[0m for UnrestrictedWrite in contract 'CicadaToken':
    |         initialSupply = 3301000000000;
    |         name ="CICADA";
  > |         decimals = 9;
    |         symbol = "3301";
    |        
  at /home/jiaming/mavs_srcs/contract@0xe43b76436b7146e8b8c4a167831bbe0421335aed.sol(69)

[31mViolation[0m for UnrestrictedWrite in contract 'CicadaToken':
    |        if (balanceOf[_to] + _value < balanceOf[_to]) throw; // Check for overflows
    |        balanceOf[msg.sender] -= _value;                     // Subtract from the sender
  > |        balanceOf[_to] += _value;                            // Add the same to the recipient
    |      
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe43b76436b7146e8b8c4a167831bbe0421335aed.sol(87)

[33mWarning[0m for UnrestrictedWrite in contract 'CicadaToken':
    |         symbol = "3301";
    |        
  > |        balanceOf[msg.sender] = initialSupply;              // Give the creator all initial tokens
    |        uint256 totalSupply = initialSupply;                // Update total supply
    |                                   
  at /home/jiaming/mavs_srcs/contract@0xe43b76436b7146e8b8c4a167831bbe0421335aed.sol(72)

[33mWarning[0m for UnrestrictedWrite in contract 'CicadaToken':
    |        if (balanceOf[msg.sender] < _value) throw;           // Check if the sender has enough
    |        if (balanceOf[_to] + _value < balanceOf[_to]) throw; // Check for overflows
  > |        balanceOf[msg.sender] -= _value;                     // Subtract from the sender
    |        balanceOf[_to] += _value;                            // Add the same to the recipient
    |      
  at /home/jiaming/mavs_srcs/contract@0xe43b76436b7146e8b8c4a167831bbe0421335aed.sol(86)


