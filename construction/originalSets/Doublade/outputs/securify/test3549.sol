Processing contract: /home/jiaming/mavs_srcs/contract@0xe8a6d8e9a08281b0e235ad54ddedd98920517dff.sol:DigitalGame
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for DAOConstantGas in contract 'DigitalGame':
    |
    |    uint extractReward = stages[stage].amount / 100;
  > |    OWNER_ADDR.transfer(extractReward);
    |    RECOMM_ADDR.transfer(extractReward);
    |    SPARE_RECOMM_ADDR.transfer(extractReward);
  at /home/jiaming/mavs_srcs/contract@0xe8a6d8e9a08281b0e235ad54ddedd98920517dff.sol(379)

[31mViolation[0m for DAOConstantGas in contract 'DigitalGame':
    |    uint extractReward = stages[stage].amount / 100;
    |    OWNER_ADDR.transfer(extractReward);
  > |    RECOMM_ADDR.transfer(extractReward);
    |    SPARE_RECOMM_ADDR.transfer(extractReward);
    |
  at /home/jiaming/mavs_srcs/contract@0xe8a6d8e9a08281b0e235ad54ddedd98920517dff.sol(380)

[31mViolation[0m for DAOConstantGas in contract 'DigitalGame':
    |    OWNER_ADDR.transfer(extractReward);
    |    RECOMM_ADDR.transfer(extractReward);
  > |    SPARE_RECOMM_ADDR.transfer(extractReward);
    |
    |    if (WaitAwardBets.length != 0) {
  at /home/jiaming/mavs_srcs/contract@0xe8a6d8e9a08281b0e235ad54ddedd98920517dff.sol(381)

[33mWarning[0m for LockedEther in contract 'DigitalGame':
    |//   number to lottery and distributes the reward.
    |
  > |contract DigitalGame {
    |  /// *** Constants
    |
  at /home/jiaming/mavs_srcs/contract@0xe8a6d8e9a08281b0e235ad54ddedd98920517dff.sol(7)

[31mViolation[0m for TODReceiver in contract 'DigitalGame':
    |    uint extractReward = stages[stage].amount / 100;
    |    OWNER_ADDR.transfer(extractReward);
  > |    RECOMM_ADDR.transfer(extractReward);
    |    SPARE_RECOMM_ADDR.transfer(extractReward);
    |
  at /home/jiaming/mavs_srcs/contract@0xe8a6d8e9a08281b0e235ad54ddedd98920517dff.sol(380)

[31mViolation[0m for TODReceiver in contract 'DigitalGame':
    |    OWNER_ADDR.transfer(extractReward);
    |    RECOMM_ADDR.transfer(extractReward);
  > |    SPARE_RECOMM_ADDR.transfer(extractReward);
    |
    |    if (WaitAwardBets.length != 0) {
  at /home/jiaming/mavs_srcs/contract@0xe8a6d8e9a08281b0e235ad54ddedd98920517dff.sol(381)

[33mWarning[0m for UnhandledException in contract 'DigitalGame':
    |    for (uint j = 0; j < userRecomms.length; j++) {
    |      recomms += msg.value * GENERATION_REWARD[j] / 100;
  > |      userRecomms[j].transfer(msg.value * GENERATION_REWARD[j] / 100);
    |
    |      emit eventDividend(
  at /home/jiaming/mavs_srcs/contract@0xe8a6d8e9a08281b0e235ad54ddedd98920517dff.sol(259)

[33mWarning[0m for UnhandledException in contract 'DigitalGame':
    |
    |    uint extractReward = stages[stage].amount / 100;
  > |    OWNER_ADDR.transfer(extractReward);
    |    RECOMM_ADDR.transfer(extractReward);
    |    SPARE_RECOMM_ADDR.transfer(extractReward);
  at /home/jiaming/mavs_srcs/contract@0xe8a6d8e9a08281b0e235ad54ddedd98920517dff.sol(379)

[33mWarning[0m for UnhandledException in contract 'DigitalGame':
    |    uint extractReward = stages[stage].amount / 100;
    |    OWNER_ADDR.transfer(extractReward);
  > |    RECOMM_ADDR.transfer(extractReward);
    |    SPARE_RECOMM_ADDR.transfer(extractReward);
    |
  at /home/jiaming/mavs_srcs/contract@0xe8a6d8e9a08281b0e235ad54ddedd98920517dff.sol(380)

[33mWarning[0m for UnhandledException in contract 'DigitalGame':
    |    OWNER_ADDR.transfer(extractReward);
    |    RECOMM_ADDR.transfer(extractReward);
  > |    SPARE_RECOMM_ADDR.transfer(extractReward);
    |
    |    if (WaitAwardBets.length != 0) {
  at /home/jiaming/mavs_srcs/contract@0xe8a6d8e9a08281b0e235ad54ddedd98920517dff.sol(381)

[33mWarning[0m for UnhandledException in contract 'DigitalGame':
    |    for (uint m = 0; m < WaitAwardBets.length; m++) {
    |      uint reward = userAward * WaitAwardBets[m].count / counts;
  > |      WaitAwardBets[m].addr.transfer(reward);
    |
    |      emit eventReward(
  at /home/jiaming/mavs_srcs/contract@0xe8a6d8e9a08281b0e235ad54ddedd98920517dff.sol(401)

[33mWarning[0m for UnrestrictedWrite in contract 'DigitalGame':
    |pragma solidity ^0.4.24;
    |
  > |// * Digital Game - Version 1.
    |// * The user selects three digits, the platform generates trusted random 
    |//   number to lottery and distributes the reward.
  at /home/jiaming/mavs_srcs/contract@0xe8a6d8e9a08281b0e235ad54ddedd98920517dff.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'DigitalGame':
    |        );
    |      }
  > |      users[msg.sender] = recommAddr;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe8a6d8e9a08281b0e235ad54ddedd98920517dff.sol(202)

[33mWarning[0m for UnrestrictedWrite in contract 'DigitalGame':
    |    if (!userBetAddrs[stage][stages[stage].round][msg.sender]) {
    |      stages[stage].userNumber++;
  > |      userBetAddrs[stage][stages[stage].round][msg.sender] = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe8a6d8e9a08281b0e235ad54ddedd98920517dff.sol(212)

[33mWarning[0m for UnrestrictedWrite in contract 'DigitalGame':
    |    uint generation
    |  ) private returns(bool) {
  > |    userRecomms.push(users[addr]);
    |    if (users[addr] != RECOMM_ADDR && users[addr] != 0 && generation > 1) {
    |        generateUserRelation(users[addr], generation - 1);
  at /home/jiaming/mavs_srcs/contract@0xe8a6d8e9a08281b0e235ad54ddedd98920517dff.sol(239)

[33mWarning[0m for UnrestrictedWrite in contract 'DigitalGame':
    |      stages[stage].lastTime += 24 hours;
    |    } else {
  > |      stages[stage].lastTime += 24 hours;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe8a6d8e9a08281b0e235ad54ddedd98920517dff.sol(319)

[33mWarning[0m for UnrestrictedWrite in contract 'DigitalGame':
    |
    |  function setDefaultRecommAddr(address _RECOMM_ADDR) public onlyOwner {
  > |    RECOMM_ADDR = _RECOMM_ADDR;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe8a6d8e9a08281b0e235ad54ddedd98920517dff.sol(434)

[33mWarning[0m for UnrestrictedWrite in contract 'DigitalGame':
    |
    |  function setSpareRecommAddr(address _SPARE_RECOMM_ADDR) public onlyOwner {
  > |    SPARE_RECOMM_ADDR = _SPARE_RECOMM_ADDR;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xe8a6d8e9a08281b0e235ad54ddedd98920517dff.sol(438)


