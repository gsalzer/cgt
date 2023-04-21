Processing contract: /home/jiaming/mavs_srcs/contract@0x17c3b17843a7dd182ba35d21a88a71d6c4af216a.sol:vault
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'vault':
    |        if(keyHash == keccak256(abi.encodePacked(key))) {
    |            if(msg.value > 0.4 ether) {
  > |                msg.sender.transfer(address(this).balance);
    |            }
    |        }
  at /home/jiaming/mavs_srcs/contract@0x17c3b17843a7dd182ba35d21a88a71d6c4af216a.sol(18)

[33mWarning[0m for LockedEther in contract 'vault':
    |pragma solidity ^0.4.25;
    |
  > |contract vault
    |{
    |    bytes32 keyHash;
  at /home/jiaming/mavs_srcs/contract@0x17c3b17843a7dd182ba35d21a88a71d6c4af216a.sol(3)

[31mViolation[0m for TODAmount in contract 'vault':
    |        if(keyHash == keccak256(abi.encodePacked(key))) {
    |            if(msg.value > 0.4 ether) {
  > |                msg.sender.transfer(address(this).balance);
    |            }
    |        }
  at /home/jiaming/mavs_srcs/contract@0x17c3b17843a7dd182ba35d21a88a71d6c4af216a.sol(18)

[33mWarning[0m for TODReceiver in contract 'vault':
    |        if(keyHash == keccak256(abi.encodePacked(key))) {
    |            if(msg.value > 0.4 ether) {
  > |                msg.sender.transfer(address(this).balance);
    |            }
    |        }
  at /home/jiaming/mavs_srcs/contract@0x17c3b17843a7dd182ba35d21a88a71d6c4af216a.sol(18)

[33mWarning[0m for UnhandledException in contract 'vault':
    |        if(keyHash == keccak256(abi.encodePacked(key))) {
    |            if(msg.value > 0.4 ether) {
  > |                msg.sender.transfer(address(this).balance);
    |            }
    |        }
  at /home/jiaming/mavs_srcs/contract@0x17c3b17843a7dd182ba35d21a88a71d6c4af216a.sol(18)

[31mViolation[0m for UnrestrictedWrite in contract 'vault':
    |    {
    |        if (keyHash == 0x0) {
  > |            keyHash = keccak256(abi.encodePacked(key));
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x17c3b17843a7dd182ba35d21a88a71d6c4af216a.sol(26)

[31mViolation[0m for UnrestrictedWrite in contract 'vault':
    |    {
    |        if (keyHash == 0x0) {
  > |            keyHash = new_hash;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x17c3b17843a7dd182ba35d21a88a71d6c4af216a.sol(33)


