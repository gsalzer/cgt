Processing contract: /home/jiaming/mavs_srcs/contract@0x6c5c0e2496d27f60c486faaaaa9bde58ea1dc386.sol:Sylence
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for LockedEther in contract 'Sylence':
    |pragma solidity ^0.4.8;
    |
  > |contract Sylence {
    |
    |  struct User {
  at /home/jiaming/mavs_srcs/contract@0x6c5c0e2496d27f60c486faaaaa9bde58ea1dc386.sol(3)

[31mViolation[0m for UnrestrictedWrite in contract 'Sylence':
    |pragma solidity ^0.4.8;
    |
  > |contract Sylence {
    |
    |  struct User {
  at /home/jiaming/mavs_srcs/contract@0x6c5c0e2496d27f60c486faaaaa9bde58ea1dc386.sol(3)

[31mViolation[0m for UnrestrictedWrite in contract 'Sylence':
    |  function registerNewPubKeyForHash(string phoneHash, string pubKey) {
    |    if(msg.sender != owner) { throw; }
  > |    users[phoneHash].pubKeys[++users[phoneHash].pubKeysCount] = pubKey;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x6c5c0e2496d27f60c486faaaaa9bde58ea1dc386.sol(21)


