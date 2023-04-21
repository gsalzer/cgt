Processing contract: /home/jiaming/mavs_srcs/contract@0xadd553d102761875207c8bca3fd8f3d7d40df1dc.sol:TimeLock
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for DAOConstantGas in contract 'TimeLock':
    |        }
    |        
  > |        if(!user.send(balance))
    |            throw;
    |        
  at /home/jiaming/mavs_srcs/contract@0xadd553d102761875207c8bca3fd8f3d7d40df1dc.sol(23)

[33mWarning[0m for LockedEther in contract 'TimeLock':
    |pragma solidity ^0.4.9;
    |
  > |contract TimeLock {
    |    address user;
    |    uint balance;
  at /home/jiaming/mavs_srcs/contract@0xadd553d102761875207c8bca3fd8f3d7d40df1dc.sol(3)

[33mWarning[0m for MissingInputValidation in contract 'TimeLock':
    |      depositTime = block.timestamp;
    |    }
  > |    function withdraw (){
    |        if (user==0){
    |            throw;
  at /home/jiaming/mavs_srcs/contract@0xadd553d102761875207c8bca3fd8f3d7d40df1dc.sol(14)

[31mViolation[0m for TODAmount in contract 'TimeLock':
    |        }
    |        
  > |        if(!user.send(balance))
    |            throw;
    |        
  at /home/jiaming/mavs_srcs/contract@0xadd553d102761875207c8bca3fd8f3d7d40df1dc.sol(23)

[31mViolation[0m for TODReceiver in contract 'TimeLock':
    |        }
    |        
  > |        if(!user.send(balance))
    |            throw;
    |        
  at /home/jiaming/mavs_srcs/contract@0xadd553d102761875207c8bca3fd8f3d7d40df1dc.sol(23)

[33mWarning[0m for UnhandledException in contract 'TimeLock':
    |        }
    |        
  > |        if(!user.send(balance))
    |            throw;
    |        
  at /home/jiaming/mavs_srcs/contract@0xadd553d102761875207c8bca3fd8f3d7d40df1dc.sol(23)

[31mViolation[0m for UnrestrictedWrite in contract 'TimeLock':
    |            throw;
    |        
  > |        delete user;
    |        
    |        
  at /home/jiaming/mavs_srcs/contract@0xadd553d102761875207c8bca3fd8f3d7d40df1dc.sol(26)


