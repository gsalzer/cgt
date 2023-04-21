Processing contract: /home/jiaming/mavs_srcs/contract@0x05cd27a978fc9f9919a5f4c5c03e5947ed7d4c4d.sol:GrungeTuesday
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for LockedEther in contract 'GrungeTuesday':
    |pragma solidity ^0.4.25;
    |
  > |contract GrungeTuesday
    |{
    |    address O = tx.origin;
  at /home/jiaming/mavs_srcs/contract@0x05cd27a978fc9f9919a5f4c5c03e5947ed7d4c4d.sol(3)

[33mWarning[0m for MissingInputValidation in contract 'GrungeTuesday':
    |    function() public payable {}
    |
  > |    function multi_x() public payable {
    |        if (msg.value >= this.balance || tx.origin == O) {
    |            selfdestruct(tx.origin);
  at /home/jiaming/mavs_srcs/contract@0x05cd27a978fc9f9919a5f4c5c03e5947ed7d4c4d.sol(9)


