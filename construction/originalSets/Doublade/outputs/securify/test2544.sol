Processing contract: /home/jiaming/mavs_srcs/contract@0xa6a52efd0e0387756bc0ef10a34dd723ac408a30.sol:Pgp
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for LockedEther in contract 'Pgp':
    |pragma solidity ^0.4.23;
    |
  > |contract Pgp {
    |  mapping(address => string) public addressToPublicKey;
    |
  at /home/jiaming/mavs_srcs/contract@0xa6a52efd0e0387756bc0ef10a34dd723ac408a30.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'Pgp':
    |pragma solidity ^0.4.23;
    |
  > |contract Pgp {
    |  mapping(address => string) public addressToPublicKey;
    |
  at /home/jiaming/mavs_srcs/contract@0xa6a52efd0e0387756bc0ef10a34dd723ac408a30.sol(3)


