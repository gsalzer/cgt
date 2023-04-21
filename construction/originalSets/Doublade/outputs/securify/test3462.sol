Processing contract: /home/jiaming/mavs_srcs/contract@0xe308310359e04c4c95dc0a72c92c3fe35ba1d8c6.sol:callee
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'callee':
    |pragma solidity ^0.4.4;
    |
  > |contract callee {
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xe308310359e04c4c95dc0a72c92c3fe35ba1d8c6.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'callee':
    |    }
    |    
  > |  function x (address a1, uint i1, address a2, uint i2, bytes32 b1, bytes32 b2) public {
    |    outputa(a1);
    |    outputi(i1);
  at /home/jiaming/mavs_srcs/contract@0xe308310359e04c4c95dc0a72c92c3fe35ba1d8c6.sol(13)


