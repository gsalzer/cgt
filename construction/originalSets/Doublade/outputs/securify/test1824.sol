Processing contract: /home/jiaming/mavs_srcs/contract@0x75041597d8f6e869092d78b9814b7bcdeeb393b4.sol:Gift_1_ETH
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'Gift_1_ETH':
    |        if(hashPass == sha3(pass))
    |        {
  > |            msg.sender.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x75041597d8f6e869092d78b9814b7bcdeeb393b4.sol(29)

[33mWarning[0m for LockedEther in contract 'Gift_1_ETH':
    |pragma solidity ^0.4.19;
    |
  > |contract Gift_1_ETH
    |{
    |    bool passHasBeenSet = false;
  at /home/jiaming/mavs_srcs/contract@0x75041597d8f6e869092d78b9814b7bcdeeb393b4.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'Gift_1_ETH':
    |    bytes32 public hashPass;
    |    
  > |    function SetPass(bytes32 hash)
    |    public
    |    payable
  at /home/jiaming/mavs_srcs/contract@0x75041597d8f6e869092d78b9814b7bcdeeb393b4.sol(13)

[31mViolation[0m for MissingInputValidation in contract 'Gift_1_ETH':
    |    }
    |    
  > |    function GetGift(bytes pass)
    |    external
    |    payable
  at /home/jiaming/mavs_srcs/contract@0x75041597d8f6e869092d78b9814b7bcdeeb393b4.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'Gift_1_ETH':
    |    function()payable{}
    |    
  > |    function GetHash(bytes pass) constant returns (bytes32) {return sha3(pass);}
    |    
    |    bytes32 public hashPass;
  at /home/jiaming/mavs_srcs/contract@0x75041597d8f6e869092d78b9814b7bcdeeb393b4.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'Gift_1_ETH':
    |    function GetHash(bytes pass) constant returns (bytes32) {return sha3(pass);}
    |    
  > |    bytes32 public hashPass;
    |    
    |    function SetPass(bytes32 hash)
  at /home/jiaming/mavs_srcs/contract@0x75041597d8f6e869092d78b9814b7bcdeeb393b4.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'Gift_1_ETH':
    |    }
    |    
  > |    function PassHasBeenSet(bytes32 hash)
    |    public
    |    {
  at /home/jiaming/mavs_srcs/contract@0x75041597d8f6e869092d78b9814b7bcdeeb393b4.sol(33)

[31mViolation[0m for TODAmount in contract 'Gift_1_ETH':
    |        if(hashPass == sha3(pass))
    |        {
  > |            msg.sender.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x75041597d8f6e869092d78b9814b7bcdeeb393b4.sol(29)

[33mWarning[0m for TODReceiver in contract 'Gift_1_ETH':
    |        if(hashPass == sha3(pass))
    |        {
  > |            msg.sender.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x75041597d8f6e869092d78b9814b7bcdeeb393b4.sol(29)

[33mWarning[0m for UnhandledException in contract 'Gift_1_ETH':
    |        if(hashPass == sha3(pass))
    |        {
  > |            msg.sender.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x75041597d8f6e869092d78b9814b7bcdeeb393b4.sol(29)

[31mViolation[0m for UnrestrictedWrite in contract 'Gift_1_ETH':
    |        if(!passHasBeenSet&&(msg.value >= 1 ether))
    |        {
  > |            hashPass = hash;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x75041597d8f6e869092d78b9814b7bcdeeb393b4.sol(19)

[31mViolation[0m for UnrestrictedWrite in contract 'Gift_1_ETH':
    |        if(hash==hashPass)
    |        {
  > |           passHasBeenSet=true;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x75041597d8f6e869092d78b9814b7bcdeeb393b4.sol(38)


