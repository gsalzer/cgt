Processing contract: /home/jiaming/mavs_srcs/contract@0x700d594cfc1744e10957367cfd8e4d35445e8bd9.sol:CicadaToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'CicadaToken':
    |pragma solidity ^0.4.14;
    |
  > |contract CicadaToken {
    |    /* Public variables of the Cicada token. Not made by the "official" Cicada 3301... or is it? 
    |        No, probably not, you're paranoid. Or am I? What if we're all Cicada? 
  at /home/jiaming/mavs_srcs/contract@0x700d594cfc1744e10957367cfd8e4d35445e8bd9.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'CicadaToken':
    |
    |    /* This creates an array with all balances */
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0x700d594cfc1744e10957367cfd8e4d35445e8bd9.sol(49)

[31mViolation[0m for MissingInputValidation in contract 'CicadaToken':
    |    /* This creates an array with all balances */
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |  
  at /home/jiaming/mavs_srcs/contract@0x700d594cfc1744e10957367cfd8e4d35445e8bd9.sol(50)

[31mViolation[0m for MissingInputValidation in contract 'CicadaToken':
    |    So, the Go board actually represents an extremely complex and chaotic universe.*/
    |    
  > |    function transfer(address _to, uint256 _value) {
    |        if (balanceOf[msg.sender] < _value) throw;           // Check if the sender has enough
    |        if (balanceOf[_to] + _value < balanceOf[_to]) throw; // Check for overflows
  at /home/jiaming/mavs_srcs/contract@0x700d594cfc1744e10957367cfd8e4d35445e8bd9.sol(87)

[33mWarning[0m for MissingInputValidation in contract 'CicadaToken':
    |        Between a man and a butterfly there is necessarily a distinction. 
    |        The transition is called the transformation of material things.*/
  > |    string public standard = 'Cicada 33.01';
    |    string public name;
    |    string public symbol;
  at /home/jiaming/mavs_srcs/contract@0x700d594cfc1744e10957367cfd8e4d35445e8bd9.sol(42)

[33mWarning[0m for MissingInputValidation in contract 'CicadaToken':
    |        The transition is called the transformation of material things.*/
    |    string public standard = 'Cicada 33.01';
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0x700d594cfc1744e10957367cfd8e4d35445e8bd9.sol(43)

[33mWarning[0m for MissingInputValidation in contract 'CicadaToken':
    |    string public standard = 'Cicada 33.01';
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals;
    |    uint256 public initialSupply;
  at /home/jiaming/mavs_srcs/contract@0x700d594cfc1744e10957367cfd8e4d35445e8bd9.sol(44)

[33mWarning[0m for MissingInputValidation in contract 'CicadaToken':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals;
    |    uint256 public initialSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0x700d594cfc1744e10957367cfd8e4d35445e8bd9.sol(45)

[33mWarning[0m for MissingInputValidation in contract 'CicadaToken':
    |    string public symbol;
    |    uint8 public decimals;
  > |    uint256 public initialSupply;
    |
    |    /* This creates an array with all balances */
  at /home/jiaming/mavs_srcs/contract@0x700d594cfc1744e10957367cfd8e4d35445e8bd9.sol(46)

[31mViolation[0m for UnrestrictedWrite in contract 'CicadaToken':
    |        if (balanceOf[_to] + _value < balanceOf[_to]) throw; // Check for overflows
    |        balanceOf[msg.sender] -= _value;                     // Subtract from the sender
  > |        balanceOf[_to] += _value;                            // Add the same to the recipient
    |      
    |    }
  at /home/jiaming/mavs_srcs/contract@0x700d594cfc1744e10957367cfd8e4d35445e8bd9.sol(91)

[33mWarning[0m for UnrestrictedWrite in contract 'CicadaToken':
    |        if (balanceOf[msg.sender] < _value) throw;           // Check if the sender has enough
    |        if (balanceOf[_to] + _value < balanceOf[_to]) throw; // Check for overflows
  > |        balanceOf[msg.sender] -= _value;                     // Subtract from the sender
    |        balanceOf[_to] += _value;                            // Add the same to the recipient
    |      
  at /home/jiaming/mavs_srcs/contract@0x700d594cfc1744e10957367cfd8e4d35445e8bd9.sol(90)


