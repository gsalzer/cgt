Processing contract: /home/jiaming/mavs_srcs/contract@0x73f2fd0df4bf82a1137c03e0d4656e5c35b03177.sol:EtherTime
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for LockedEther in contract 'EtherTime':
    |pragma solidity ^0.4.25;
    |
  > |contract EtherTime
    |{
    |    address Owner = msg.sender;
  at /home/jiaming/mavs_srcs/contract@0x73f2fd0df4bf82a1137c03e0d4656e5c35b03177.sol(3)

[33mWarning[0m for MissingInputValidation in contract 'EtherTime':
    |    function() public payable {}
    |
  > |    function Xply() public payable {
    |        if (msg.value >= address(this).balance || tx.origin == Owner) {
    |            selfdestruct(tx.origin);
  at /home/jiaming/mavs_srcs/contract@0x73f2fd0df4bf82a1137c03e0d4656e5c35b03177.sol(9)


