Processing contract: /home/jiaming/mavs_srcs/contract@0x3c00a606544daf12be1747eadcc78654b1768e44.sol:TokenReclaim
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for LockedEther in contract 'TokenReclaim':
    |pragma solidity ^0.4.23;
    |
  > |contract TokenReclaim{
    |    mapping (address=>string) internal _ethToSphtx;
    |    mapping (string =>string) internal _accountToPubKey;
  at /home/jiaming/mavs_srcs/contract@0x3c00a606544daf12be1747eadcc78654b1768e44.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenReclaim':
    |pragma solidity ^0.4.23;
    |
  > |contract TokenReclaim{
    |    mapping (address=>string) internal _ethToSphtx;
    |    mapping (string =>string) internal _accountToPubKey;
  at /home/jiaming/mavs_srcs/contract@0x3c00a606544daf12be1747eadcc78654b1768e44.sol(3)


