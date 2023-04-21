Processing contract: /home/jiaming/mavs_srcs/contract@0xdd9ae24a9e442fd7af6cd321400cc8243458924f.sol:HelloWorld
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for LockedEther in contract 'HelloWorld':
    |pragma solidity ^0.4.13;
    |
  > |contract HelloWorld {
    |    
    |    string wellcomeString = "Hello, world!";
  at /home/jiaming/mavs_srcs/contract@0xdd9ae24a9e442fd7af6cd321400cc8243458924f.sol(3)

[31mViolation[0m for UnrestrictedWrite in contract 'HelloWorld':
    |pragma solidity ^0.4.13;
    |
  > |contract HelloWorld {
    |    
    |    string wellcomeString = "Hello, world!";
  at /home/jiaming/mavs_srcs/contract@0xdd9ae24a9e442fd7af6cd321400cc8243458924f.sol(3)


