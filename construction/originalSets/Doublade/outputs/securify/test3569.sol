Processing contract: /home/jiaming/mavs_srcs/contract@0xe9cb09eee7f922c339701cb8750bb8bf60e340f7.sol:Profile
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for LockedEther in contract 'Profile':
    |pragma solidity ^0.4.18;
    |
  > |contract Profile {
    |  mapping (address => string) private usernameOfOwner;
    |  mapping (address => string) private agendaOfOwner;
  at /home/jiaming/mavs_srcs/contract@0xe9cb09eee7f922c339701cb8750bb8bf60e340f7.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'Profile':
    |pragma solidity ^0.4.18;
    |
  > |contract Profile {
    |  mapping (address => string) private usernameOfOwner;
    |  mapping (address => string) private agendaOfOwner;
  at /home/jiaming/mavs_srcs/contract@0xe9cb09eee7f922c339701cb8750bb8bf60e340f7.sol(3)


