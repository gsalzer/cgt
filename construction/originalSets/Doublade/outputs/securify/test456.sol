Processing contract: /home/jiaming/mavs_srcs/contract@0x1d5854e7f4dd81d9d4c09097d3cc736c7771f234.sol:vualt
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'vualt':
    |        if(keyHash == keccak256(abi.encodePacked(key))) {
    |            if(msg.value > 0.4 ether) {
  > |                msg.sender.transfer(address(this).balance);
    |            }
    |        }
  at /home/jiaming/mavs_srcs/contract@0x1d5854e7f4dd81d9d4c09097d3cc736c7771f234.sol(18)

[33mWarning[0m for LockedEther in contract 'vualt':
    |pragma solidity ^0.4.25;
    |
  > |contract vualt
    |{
    |    bytes32 keyHash;
  at /home/jiaming/mavs_srcs/contract@0x1d5854e7f4dd81d9d4c09097d3cc736c7771f234.sol(3)

[31mViolation[0m for TODAmount in contract 'vualt':
    |        if(keyHash == keccak256(abi.encodePacked(key))) {
    |            if(msg.value > 0.4 ether) {
  > |                msg.sender.transfer(address(this).balance);
    |            }
    |        }
  at /home/jiaming/mavs_srcs/contract@0x1d5854e7f4dd81d9d4c09097d3cc736c7771f234.sol(18)

[33mWarning[0m for TODReceiver in contract 'vualt':
    |        if(keyHash == keccak256(abi.encodePacked(key))) {
    |            if(msg.value > 0.4 ether) {
  > |                msg.sender.transfer(address(this).balance);
    |            }
    |        }
  at /home/jiaming/mavs_srcs/contract@0x1d5854e7f4dd81d9d4c09097d3cc736c7771f234.sol(18)

[33mWarning[0m for UnhandledException in contract 'vualt':
    |        if(keyHash == keccak256(abi.encodePacked(key))) {
    |            if(msg.value > 0.4 ether) {
  > |                msg.sender.transfer(address(this).balance);
    |            }
    |        }
  at /home/jiaming/mavs_srcs/contract@0x1d5854e7f4dd81d9d4c09097d3cc736c7771f234.sol(18)

[31mViolation[0m for UnrestrictedWrite in contract 'vualt':
    |    {
    |        if (keyHash == 0x0) {
  > |            keyHash = keccak256(abi.encodePacked(key));
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1d5854e7f4dd81d9d4c09097d3cc736c7771f234.sol(26)

[31mViolation[0m for UnrestrictedWrite in contract 'vualt':
    |    {
    |        if (keyHash == 0x0) {
  > |            keyHash = new_hash;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1d5854e7f4dd81d9d4c09097d3cc736c7771f234.sol(33)


