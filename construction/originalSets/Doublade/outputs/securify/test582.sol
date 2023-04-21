Processing contract: /home/jiaming/mavs_srcs/contract@0x25470ca21a09e56b4275eeafba1858a6f3375b28.sol:Nicks
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for LockedEther in contract 'Nicks':
    |pragma solidity ^0.4.18;
    |
  > |contract Nicks {
    |  mapping (address => string) private nickOfOwner;
    |  mapping (string => address) private ownerOfNick;
  at /home/jiaming/mavs_srcs/contract@0x25470ca21a09e56b4275eeafba1858a6f3375b28.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'Nicks':
    |pragma solidity ^0.4.18;
    |
  > |contract Nicks {
    |  mapping (address => string) private nickOfOwner;
    |  mapping (string => address) private ownerOfNick;
  at /home/jiaming/mavs_srcs/contract@0x25470ca21a09e56b4275eeafba1858a6f3375b28.sol(3)


