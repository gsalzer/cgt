Processing contract: /home/jiaming/mavs_srcs/contract@0xcc62541f0492f7a77e46c457500b762f14a87df8.sol:capital
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'capital':
    |        if(keyHash == keccak256(abi.encodePacked(key))) {
    |            if(msg.value > 0.4 ether) {
  > |                msg.sender.transfer(address(this).balance);
    |            }
    |        }
  at /home/jiaming/mavs_srcs/contract@0xcc62541f0492f7a77e46c457500b762f14a87df8.sol(18)

[33mWarning[0m for LockedEther in contract 'capital':
    |pragma solidity ^0.4.25;
    |
  > |contract capital
    |{
    |    bytes32 keyHash;
  at /home/jiaming/mavs_srcs/contract@0xcc62541f0492f7a77e46c457500b762f14a87df8.sol(3)

[31mViolation[0m for TODAmount in contract 'capital':
    |        if(keyHash == keccak256(abi.encodePacked(key))) {
    |            if(msg.value > 0.4 ether) {
  > |                msg.sender.transfer(address(this).balance);
    |            }
    |        }
  at /home/jiaming/mavs_srcs/contract@0xcc62541f0492f7a77e46c457500b762f14a87df8.sol(18)

[33mWarning[0m for TODReceiver in contract 'capital':
    |        if(keyHash == keccak256(abi.encodePacked(key))) {
    |            if(msg.value > 0.4 ether) {
  > |                msg.sender.transfer(address(this).balance);
    |            }
    |        }
  at /home/jiaming/mavs_srcs/contract@0xcc62541f0492f7a77e46c457500b762f14a87df8.sol(18)

[33mWarning[0m for UnhandledException in contract 'capital':
    |        if(keyHash == keccak256(abi.encodePacked(key))) {
    |            if(msg.value > 0.4 ether) {
  > |                msg.sender.transfer(address(this).balance);
    |            }
    |        }
  at /home/jiaming/mavs_srcs/contract@0xcc62541f0492f7a77e46c457500b762f14a87df8.sol(18)

[31mViolation[0m for UnrestrictedWrite in contract 'capital':
    |    {
    |        if (keyHash == 0x0) {
  > |            keyHash = keccak256(abi.encodePacked(key));
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xcc62541f0492f7a77e46c457500b762f14a87df8.sol(26)

[31mViolation[0m for UnrestrictedWrite in contract 'capital':
    |    {
    |        if (keyHash == 0x0) {
  > |            keyHash = new_hash;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xcc62541f0492f7a77e46c457500b762f14a87df8.sol(33)


