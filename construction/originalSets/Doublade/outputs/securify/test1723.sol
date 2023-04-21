Processing contract: /home/jiaming/mavs_srcs/contract@0x6e00d60e15c9a60ba18d5b7aca7ee37777be2a7d.sol:TestToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for LockedEther in contract 'TestToken':
    |pragma solidity ^0.4.19;
    |
  > |contract TestToken {
    |    
    |    mapping (address => uint) public balanceOf;
  at /home/jiaming/mavs_srcs/contract@0x6e00d60e15c9a60ba18d5b7aca7ee37777be2a7d.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'TestToken':
    |contract TestToken {
    |    
  > |    mapping (address => uint) public balanceOf;
    |    
    |    function () public payable {
  at /home/jiaming/mavs_srcs/contract@0x6e00d60e15c9a60ba18d5b7aca7ee37777be2a7d.sol(5)


