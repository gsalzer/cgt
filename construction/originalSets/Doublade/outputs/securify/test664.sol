Processing contract: /home/jiaming/mavs_srcs/contract@0x2a7ff7db15f50d20fd9f102a0bf0c6917986c761.sol:Store4Less
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Store4Less':
    |pragma solidity ^0.4.23;
    |
  > |contract Store4Less {
    |  struct Pair {
    |    uint96 address1;
  at /home/jiaming/mavs_srcs/contract@0x2a7ff7db15f50d20fd9f102a0bf0c6917986c761.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'Store4Less':
    |  mapping (uint => mapping (uint => Pair)) stored;
    |
  > |  function store(uint32 data) external {
    |    recursive_store(data, 1);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x2a7ff7db15f50d20fd9f102a0bf0c6917986c761.sol(14)

[33mWarning[0m for MissingInputValidation in contract 'Store4Less':
    |  }
    |
  > |  function read() external returns (uint32) {
    |    return recursive_read(1);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x2a7ff7db15f50d20fd9f102a0bf0c6917986c761.sol(36)

[33mWarning[0m for MissingInputValidation in contract 'Store4Less':
    |  }
    |
  > |  function recursive_read(uint iteration) internal returns (uint32) {
    |    uint96 sender = uint96(uint(msg.sender) / 2**64);
    |    uint index = uint(msg.sender) % (4 ** iteration);
  at /home/jiaming/mavs_srcs/contract@0x2a7ff7db15f50d20fd9f102a0bf0c6917986c761.sol(40)

[31mViolation[0m for UnrestrictedWrite in contract 'Store4Less':
    |    uint index = uint(msg.sender) % (4 ** iteration);
    |    if (stored[iteration][index].address1 == 0) {
  > |      stored[iteration][index].address1 = sender;
    |      stored[iteration][index].data1 = data;
    |    } else if (stored[iteration][index].address1 == sender) {
  at /home/jiaming/mavs_srcs/contract@0x2a7ff7db15f50d20fd9f102a0bf0c6917986c761.sol(22)

[31mViolation[0m for UnrestrictedWrite in contract 'Store4Less':
    |    if (stored[iteration][index].address1 == 0) {
    |      stored[iteration][index].address1 = sender;
  > |      stored[iteration][index].data1 = data;
    |    } else if (stored[iteration][index].address1 == sender) {
    |      stored[iteration][index].data1 = data;
  at /home/jiaming/mavs_srcs/contract@0x2a7ff7db15f50d20fd9f102a0bf0c6917986c761.sol(23)

[31mViolation[0m for UnrestrictedWrite in contract 'Store4Less':
    |      stored[iteration][index].data1 = data;
    |    } else if (stored[iteration][index].address2 == 0) {
  > |      stored[iteration][index].address2 = sender;
    |      stored[iteration][index].data2 = data;
    |    } else if (stored[iteration][index].address2 == sender) {
  at /home/jiaming/mavs_srcs/contract@0x2a7ff7db15f50d20fd9f102a0bf0c6917986c761.sol(27)

[31mViolation[0m for UnrestrictedWrite in contract 'Store4Less':
    |    } else if (stored[iteration][index].address2 == 0) {
    |      stored[iteration][index].address2 = sender;
  > |      stored[iteration][index].data2 = data;
    |    } else if (stored[iteration][index].address2 == sender) {
    |      stored[iteration][index].data2 = data;
  at /home/jiaming/mavs_srcs/contract@0x2a7ff7db15f50d20fd9f102a0bf0c6917986c761.sol(28)

[33mWarning[0m for UnrestrictedWrite in contract 'Store4Less':
    |    uint index = uint(msg.sender) % (4 ** iteration);
    |    if (stored[iteration][index].address1 == 0) {
  > |      stored[iteration][index].address1 = sender;
    |      stored[iteration][index].data1 = data;
    |    } else if (stored[iteration][index].address1 == sender) {
  at /home/jiaming/mavs_srcs/contract@0x2a7ff7db15f50d20fd9f102a0bf0c6917986c761.sol(22)

[33mWarning[0m for UnrestrictedWrite in contract 'Store4Less':
    |    if (stored[iteration][index].address1 == 0) {
    |      stored[iteration][index].address1 = sender;
  > |      stored[iteration][index].data1 = data;
    |    } else if (stored[iteration][index].address1 == sender) {
    |      stored[iteration][index].data1 = data;
  at /home/jiaming/mavs_srcs/contract@0x2a7ff7db15f50d20fd9f102a0bf0c6917986c761.sol(23)

[33mWarning[0m for UnrestrictedWrite in contract 'Store4Less':
    |      stored[iteration][index].data1 = data;
    |    } else if (stored[iteration][index].address1 == sender) {
  > |      stored[iteration][index].data1 = data;
    |    } else if (stored[iteration][index].address2 == 0) {
    |      stored[iteration][index].address2 = sender;
  at /home/jiaming/mavs_srcs/contract@0x2a7ff7db15f50d20fd9f102a0bf0c6917986c761.sol(25)

[33mWarning[0m for UnrestrictedWrite in contract 'Store4Less':
    |      stored[iteration][index].data1 = data;
    |    } else if (stored[iteration][index].address2 == 0) {
  > |      stored[iteration][index].address2 = sender;
    |      stored[iteration][index].data2 = data;
    |    } else if (stored[iteration][index].address2 == sender) {
  at /home/jiaming/mavs_srcs/contract@0x2a7ff7db15f50d20fd9f102a0bf0c6917986c761.sol(27)

[33mWarning[0m for UnrestrictedWrite in contract 'Store4Less':
    |    } else if (stored[iteration][index].address2 == 0) {
    |      stored[iteration][index].address2 = sender;
  > |      stored[iteration][index].data2 = data;
    |    } else if (stored[iteration][index].address2 == sender) {
    |      stored[iteration][index].data2 = data;
  at /home/jiaming/mavs_srcs/contract@0x2a7ff7db15f50d20fd9f102a0bf0c6917986c761.sol(28)

[33mWarning[0m for UnrestrictedWrite in contract 'Store4Less':
    |      stored[iteration][index].data2 = data;
    |    } else if (stored[iteration][index].address2 == sender) {
  > |      stored[iteration][index].data2 = data;
    |    } else {
    |      recursive_store(data, iteration + 1);
  at /home/jiaming/mavs_srcs/contract@0x2a7ff7db15f50d20fd9f102a0bf0c6917986c761.sol(30)


