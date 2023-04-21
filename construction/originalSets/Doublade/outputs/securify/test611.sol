Processing contract: /home/jiaming/mavs_srcs/contract@0x26fda14519788df69636f476535472ed6e35f8ce.sol:BaseUnilotGame
Processing contract: /home/jiaming/mavs_srcs/contract@0x26fda14519788df69636f476535472ed6e35f8ce.sol:Game
Processing contract: /home/jiaming/mavs_srcs/contract@0x26fda14519788df69636f476535472ed6e35f8ce.sol:TicketLib
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x26fda14519788df69636f476535472ed6e35f8ce.sol:UnilotPrizeCalculator
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x26fda14519788df69636f476535472ed6e35f8ce.sol:UnilotTailEther
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'TicketLib':
    |}
    |
  > |library TicketLib {
    |    struct Ticket {
    |        bool is_winner;
  at /home/jiaming/mavs_srcs/contract@0x26fda14519788df69636f476535472ed6e35f8ce.sol(25)

[33mWarning[0m for LockedEther in contract 'UnilotPrizeCalculator':
    |}
    |
  > |contract UnilotPrizeCalculator {
    |    //Calculation constants
    |    uint  constant accuracy                   = 1000000000000000000;
  at /home/jiaming/mavs_srcs/contract@0x26fda14519788df69636f476535472ed6e35f8ce.sol(36)

[31mViolation[0m for DAOConstantGas in contract 'UnilotTailEther':
    |        for (uint i = 0; i < ticketIndex.length; i++) {
    |            tickets[ticketIndex[i]].is_active = false;
  > |            ticketIndex[i].transfer(bet);
    |        }
    |        
  at /home/jiaming/mavs_srcs/contract@0x26fda14519788df69636f476535472ed6e35f8ce.sol(374)

[33mWarning[0m for LockedEther in contract 'UnilotTailEther':
    |}
    |
  > |contract UnilotTailEther is BaseUnilotGame {
    |    
    |    uint winnerIndex;
  at /home/jiaming/mavs_srcs/contract@0x26fda14519788df69636f476535472ed6e35f8ce.sol(381)

[33mWarning[0m for UnhandledException in contract 'UnilotTailEther':
    |        returns (uint, uint)
    |    {
  > |        var(numWinners, numFixedAmountWinners) = calculator.getNumWinners(ticketIndex.length);
    |
    |        return (numWinners, numFixedAmountWinners);
  at /home/jiaming/mavs_srcs/contract@0x26fda14519788df69636f476535472ed6e35f8ce.sol(318)

[33mWarning[0m for UnhandledException in contract 'UnilotTailEther':
    |        }
    |        
  > |        result = calculator.getPrizeAmount(totalAmount);
    |        
    |        return result;
  at /home/jiaming/mavs_srcs/contract@0x26fda14519788df69636f476535472ed6e35f8ce.sol(334)

[33mWarning[0m for UnhandledException in contract 'UnilotTailEther':
    |        
    |        
  > |        uint[50] memory prizes = calculator.calcaultePrizes(
    |        bet, ticketIndex.length);
    |        
  at /home/jiaming/mavs_srcs/contract@0x26fda14519788df69636f476535472ed6e35f8ce.sol(357)

[33mWarning[0m for UnhandledException in contract 'UnilotTailEther':
    |        for (uint i = 0; i < ticketIndex.length; i++) {
    |            tickets[ticketIndex[i]].is_active = false;
  > |            ticketIndex[i].transfer(bet);
    |        }
    |        
  at /home/jiaming/mavs_srcs/contract@0x26fda14519788df69636f476535472ed6e35f8ce.sol(374)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UnilotTailEther':
    |        returns (uint, uint)
    |    {
  > |        var(numWinners, numFixedAmountWinners) = calculator.getNumWinners(ticketIndex.length);
    |
    |        return (numWinners, numFixedAmountWinners);
  at /home/jiaming/mavs_srcs/contract@0x26fda14519788df69636f476535472ed6e35f8ce.sol(318)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UnilotTailEther':
    |        }
    |        
  > |        result = calculator.getPrizeAmount(totalAmount);
    |        
    |        return result;
  at /home/jiaming/mavs_srcs/contract@0x26fda14519788df69636f476535472ed6e35f8ce.sol(334)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UnilotTailEther':
    |        
    |        
  > |        uint[50] memory prizes = calculator.calcaultePrizes(
    |        bet, ticketIndex.length);
    |        
  at /home/jiaming/mavs_srcs/contract@0x26fda14519788df69636f476535472ed6e35f8ce.sol(357)

[31mViolation[0m for UnrestrictedWrite in contract 'UnilotTailEther':
    |    {
    |        for (uint i = 0; i < ticketIndex.length; i++) {
  > |            tickets[ticketIndex[i]].is_active = false;
    |            ticketIndex[i].transfer(bet);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x26fda14519788df69636f476535472ed6e35f8ce.sol(373)

[31mViolation[0m for UnrestrictedWrite in contract 'UnilotTailEther':
    |        }
    |        
  > |        state = State.REVOKED;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x26fda14519788df69636f476535472ed6e35f8ce.sol(377)

[31mViolation[0m for UnrestrictedWrite in contract 'UnilotTailEther':
    |            uint vote = ( ( ticket.block_number * ticket.block_time ) + uint(ticketIndex[i]) ) % ticketIndex.length;
    |            
  > |            tickets[ticketIndex[vote]].num_votes += 1;
    |            uint ticketNumVotes = tickets[ticketIndex[vote]].num_votes;
    |            
  at /home/jiaming/mavs_srcs/contract@0x26fda14519788df69636f476535472ed6e35f8ce.sol(429)

[31mViolation[0m for UnrestrictedWrite in contract 'UnilotTailEther':
    |            if ( ticketNumVotes > max_votes ) {
    |                max_votes = ticketNumVotes;
  > |                winnerIndex = vote;
    |            }
    |        }
  at /home/jiaming/mavs_srcs/contract@0x26fda14519788df69636f476535472ed6e35f8ce.sol(434)

[33mWarning[0m for UnrestrictedWrite in contract 'UnilotTailEther':
    |        require(ticketIndex.length < 200);
    |        
  > |        tickets[msg.sender].is_winner    = false;
    |        tickets[msg.sender].is_active    = true;
    |        tickets[msg.sender].block_number = block.number;
  at /home/jiaming/mavs_srcs/contract@0x26fda14519788df69636f476535472ed6e35f8ce.sol(407)

[33mWarning[0m for UnrestrictedWrite in contract 'UnilotTailEther':
    |        
    |        tickets[msg.sender].is_winner    = false;
  > |        tickets[msg.sender].is_active    = true;
    |        tickets[msg.sender].block_number = block.number;
    |        tickets[msg.sender].block_time   = block.timestamp;
  at /home/jiaming/mavs_srcs/contract@0x26fda14519788df69636f476535472ed6e35f8ce.sol(408)

[33mWarning[0m for UnrestrictedWrite in contract 'UnilotTailEther':
    |        tickets[msg.sender].is_winner    = false;
    |        tickets[msg.sender].is_active    = true;
  > |        tickets[msg.sender].block_number = block.number;
    |        tickets[msg.sender].block_time   = block.timestamp;
    |        tickets[msg.sender].num_votes    = 0;
  at /home/jiaming/mavs_srcs/contract@0x26fda14519788df69636f476535472ed6e35f8ce.sol(409)

[33mWarning[0m for UnrestrictedWrite in contract 'UnilotTailEther':
    |        tickets[msg.sender].is_active    = true;
    |        tickets[msg.sender].block_number = block.number;
  > |        tickets[msg.sender].block_time   = block.timestamp;
    |        tickets[msg.sender].num_votes    = 0;
    |        
  at /home/jiaming/mavs_srcs/contract@0x26fda14519788df69636f476535472ed6e35f8ce.sol(410)

[33mWarning[0m for UnrestrictedWrite in contract 'UnilotTailEther':
    |        tickets[msg.sender].block_number = block.number;
    |        tickets[msg.sender].block_time   = block.timestamp;
  > |        tickets[msg.sender].num_votes    = 0;
    |        
    |        ticketIndex.push(msg.sender);
  at /home/jiaming/mavs_srcs/contract@0x26fda14519788df69636f476535472ed6e35f8ce.sol(411)

[33mWarning[0m for UnrestrictedWrite in contract 'UnilotTailEther':
    |pragma solidity ^0.4.16;
    |
  > |interface Game {
    |    event GameStarted(uint betAmount);
    |    event NewPlayerAdded(uint numPlayers, uint prizeAmount);
  at /home/jiaming/mavs_srcs/contract@0x26fda14519788df69636f476535472ed6e35f8ce.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'UnilotTailEther':
    |        tickets[msg.sender].num_votes    = 0;
    |        
  > |        ticketIndex.push(msg.sender);
    |        
    |        NewPlayerAdded(ticketIndex.length, getPrizeAmount());
  at /home/jiaming/mavs_srcs/contract@0x26fda14519788df69636f476535472ed6e35f8ce.sol(413)


