Processing contract: /home/jiaming/mavs_srcs/contract@0xc3a57bfa038765db73b935b621213cf3b1a7f996.sol:MyMap
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'MyMap':
    |pragma solidity ^0.4.19;
    |
  > |contract MyMap {
    |    address public owner;
    |    mapping(bytes32=>bytes15) map;
  at /home/jiaming/mavs_srcs/contract@0xc3a57bfa038765db73b935b621213cf3b1a7f996.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'MyMap':
    |    }
    |    
  > |    function setValue(bytes32 a, bytes15 b) public {
    |        if(owner == msg.sender) {
    |            map[a] = b;
  at /home/jiaming/mavs_srcs/contract@0xc3a57bfa038765db73b935b621213cf3b1a7f996.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'MyMap':
    |
    |contract MyMap {
  > |    address public owner;
    |    mapping(bytes32=>bytes15) map;
    |
  at /home/jiaming/mavs_srcs/contract@0xc3a57bfa038765db73b935b621213cf3b1a7f996.sol(4)

[33mWarning[0m for UnrestrictedWrite in contract 'MyMap':
    |    function setValue(bytes32 a, bytes15 b) public {
    |        if(owner == msg.sender) {
  > |            map[a] = b;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc3a57bfa038765db73b935b621213cf3b1a7f996.sol(13)


