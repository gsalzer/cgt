Processing contract: /home/jiaming/mavs_srcs/contract@0xb15970c21d3fe0ed440980b056ab7fa7acb296b1.sol:BaseUnilotGame
Processing contract: /home/jiaming/mavs_srcs/contract@0xb15970c21d3fe0ed440980b056ab7fa7acb296b1.sol:Game
Processing contract: /home/jiaming/mavs_srcs/contract@0xb15970c21d3fe0ed440980b056ab7fa7acb296b1.sol:TicketLib
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb15970c21d3fe0ed440980b056ab7fa7acb296b1.sol:UnilotPrizeCalculator
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb15970c21d3fe0ed440980b056ab7fa7acb296b1.sol:UnilotTailEther
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'TicketLib':
    |}
    |
  > |library TicketLib {
    |    struct Ticket {
    |        uint40 block_number;
  at /home/jiaming/mavs_srcs/contract@0xb15970c21d3fe0ed440980b056ab7fa7acb296b1.sol(24)

[33mWarning[0m for LockedEther in contract 'UnilotPrizeCalculator':
    |}
    |
  > |contract UnilotPrizeCalculator {
    |    //Calculation constants
    |    uint64  constant accuracy                   = 1000000000000000000;
  at /home/jiaming/mavs_srcs/contract@0xb15970c21d3fe0ed440980b056ab7fa7acb296b1.sol(32)

[31mViolation[0m for DAOConstantGas in contract 'UnilotTailEther':
    |    {
    |        for (uint24 i = 0; i < ticketIndex.length; i++) {
  > |            ticketIndex[i].transfer(bet);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0xb15970c21d3fe0ed440980b056ab7fa7acb296b1.sol(332)

[33mWarning[0m for LockedEther in contract 'UnilotTailEther':
    |
    |
  > |contract UnilotTailEther is BaseUnilotGame {
    |
    |    uint64 winnerIndex;
  at /home/jiaming/mavs_srcs/contract@0xb15970c21d3fe0ed440980b056ab7fa7acb296b1.sol(340)

[33mWarning[0m for UnhandledException in contract 'UnilotTailEther':
    |        returns (uint, uint)
    |    {
  > |        var(numWinners, numFixedAmountWinners) = calculator.getNumWinners(ticketIndex.length);
    |
    |        return (numWinners, numFixedAmountWinners);
  at /home/jiaming/mavs_srcs/contract@0xb15970c21d3fe0ed440980b056ab7fa7acb296b1.sol(277)

[33mWarning[0m for UnhandledException in contract 'UnilotTailEther':
    |        }
    |
  > |        result = calculator.getPrizeAmount(totalAmount);
    |
    |        return result;
  at /home/jiaming/mavs_srcs/contract@0xb15970c21d3fe0ed440980b056ab7fa7acb296b1.sol(293)

[33mWarning[0m for UnhandledException in contract 'UnilotTailEther':
    |
    |
  > |        uint[50] memory prizes = calculator.calcaultePrizes(
    |        bet, ticketIndex.length);
    |
  at /home/jiaming/mavs_srcs/contract@0xb15970c21d3fe0ed440980b056ab7fa7acb296b1.sol(316)

[33mWarning[0m for UnhandledException in contract 'UnilotTailEther':
    |    {
    |        for (uint24 i = 0; i < ticketIndex.length; i++) {
  > |            ticketIndex[i].transfer(bet);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0xb15970c21d3fe0ed440980b056ab7fa7acb296b1.sol(332)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UnilotTailEther':
    |        returns (uint, uint)
    |    {
  > |        var(numWinners, numFixedAmountWinners) = calculator.getNumWinners(ticketIndex.length);
    |
    |        return (numWinners, numFixedAmountWinners);
  at /home/jiaming/mavs_srcs/contract@0xb15970c21d3fe0ed440980b056ab7fa7acb296b1.sol(277)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UnilotTailEther':
    |        }
    |
  > |        result = calculator.getPrizeAmount(totalAmount);
    |
    |        return result;
  at /home/jiaming/mavs_srcs/contract@0xb15970c21d3fe0ed440980b056ab7fa7acb296b1.sol(293)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UnilotTailEther':
    |
    |
  > |        uint[50] memory prizes = calculator.calcaultePrizes(
    |        bet, ticketIndex.length);
    |
  at /home/jiaming/mavs_srcs/contract@0xb15970c21d3fe0ed440980b056ab7fa7acb296b1.sol(316)

[31mViolation[0m for UnrestrictedWrite in contract 'UnilotTailEther':
    |        }
    |
  > |        state = State.REVOKED;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xb15970c21d3fe0ed440980b056ab7fa7acb296b1.sol(335)

[31mViolation[0m for UnrestrictedWrite in contract 'UnilotTailEther':
    |            if ( num_votes[vote] > max_votes ) {
    |                max_votes = num_votes[vote];
  > |                winnerIndex = vote;
    |            }
    |        }
  at /home/jiaming/mavs_srcs/contract@0xb15970c21d3fe0ed440980b056ab7fa7acb296b1.sol(418)

[33mWarning[0m for UnrestrictedWrite in contract 'UnilotTailEther':
    |        require(ticketIndex.length <= 1000);
    |
  > |        tickets[msg.sender].block_number = uint40(block.number);
    |        tickets[msg.sender].block_time   = uint32(block.timestamp);
    |
  at /home/jiaming/mavs_srcs/contract@0xb15970c21d3fe0ed440980b056ab7fa7acb296b1.sol(394)

[33mWarning[0m for UnrestrictedWrite in contract 'UnilotTailEther':
    |
    |        tickets[msg.sender].block_number = uint40(block.number);
  > |        tickets[msg.sender].block_time   = uint32(block.timestamp);
    |
    |        ticketIndex.push(msg.sender);
  at /home/jiaming/mavs_srcs/contract@0xb15970c21d3fe0ed440980b056ab7fa7acb296b1.sol(395)

[33mWarning[0m for UnrestrictedWrite in contract 'UnilotTailEther':
    |pragma solidity ^0.4.16;
    |
  > |interface Game {
    |    event GameStarted(uint betAmount);
    |    event NewPlayerAdded(uint numPlayers, uint prizeAmount);
  at /home/jiaming/mavs_srcs/contract@0xb15970c21d3fe0ed440980b056ab7fa7acb296b1.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'UnilotTailEther':
    |        tickets[msg.sender].block_time   = uint32(block.timestamp);
    |
  > |        ticketIndex.push(msg.sender);
    |
    |        NewPlayerAdded(ticketIndex.length, getPrizeAmount());
  at /home/jiaming/mavs_srcs/contract@0xb15970c21d3fe0ed440980b056ab7fa7acb296b1.sol(397)


