Processing contract: /home/jiaming/mavs_srcs/contract@0x2ae9d68295f8b6c3a12ee5279271980830775f30.sol:Leverage
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2ae9d68295f8b6c3a12ee5279271980830775f30.sol:WinEthFree
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'Leverage':
    |        uint value = msg.value;
    |        if (value > 0) {
  > |            address(mainContract).transfer(value);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x2ae9d68295f8b6c3a12ee5279271980830775f30.sol(461)

[33mWarning[0m for LockedEther in contract 'Leverage':
    |}
    |
  > |contract Leverage {
    |
    |    WinEthFree private mainContract;
  at /home/jiaming/mavs_srcs/contract@0x2ae9d68295f8b6c3a12ee5279271980830775f30.sol(448)

[33mWarning[0m for TODReceiver in contract 'Leverage':
    |        uint value = msg.value;
    |        if (value > 0) {
  > |            address(mainContract).transfer(value);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x2ae9d68295f8b6c3a12ee5279271980830775f30.sol(461)

[33mWarning[0m for UnhandledException in contract 'Leverage':
    |        uint value = msg.value;
    |        if (value > 0) {
  > |            address(mainContract).transfer(value);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x2ae9d68295f8b6c3a12ee5279271980830775f30.sol(461)

[33mWarning[0m for UnhandledException in contract 'Leverage':
    |        value = uint(value / minInvestment) * minInvestment;
    |
  > |        mainContract.doLeverageBet(msg.sender, value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x2ae9d68295f8b6c3a12ee5279271980830775f30.sol(467)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Leverage':
    |        value = uint(value / minInvestment) * minInvestment;
    |
  > |        mainContract.doLeverageBet(msg.sender, value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x2ae9d68295f8b6c3a12ee5279271980830775f30.sol(467)

[31mViolation[0m for DAOConstantGas in contract 'WinEthFree':
    |        }
    |
  > |        addr.transfer(interest);
    |
    |        emit LogWithdrawInterest(addr, interest);
  at /home/jiaming/mavs_srcs/contract@0x2ae9d68295f8b6c3a12ee5279271980830775f30.sol(157)

[31mViolation[0m for DAOConstantGas in contract 'WinEthFree':
    |                if (beginNum <= luckyNum && luckyNum <= endNum) {
    |                    address winner = lotteryTickets[i].player;
  > |                    winner.transfer(prize);
    |
    |                    emit LogPayWinnerPrize(winner, luckyNum, prize);
  at /home/jiaming/mavs_srcs/contract@0x2ae9d68295f8b6c3a12ee5279271980830775f30.sol(352)

[33mWarning[0m for LockedEther in contract 'WinEthFree':
    | */
    |
  > |contract WinEthFree{
    |
    |    // investor gets 2% interest per day to return.
  at /home/jiaming/mavs_srcs/contract@0x2ae9d68295f8b6c3a12ee5279271980830775f30.sol(19)

[33mWarning[0m for TODAmount in contract 'WinEthFree':
    |            if (address(this).balance - prizePool >= minInvestment) {
    |                // last one gets extra 0.01 ETH award.
  > |                addr.transfer(minInvestment);
    |            }
    |
  at /home/jiaming/mavs_srcs/contract@0x2ae9d68295f8b6c3a12ee5279271980830775f30.sol(252)

[33mWarning[0m for TODAmount in contract 'WinEthFree':
    |    function takeCommission(uint value) private {
    |        uint commission = value * commissionPercent / 100;
  > |        admin.transfer(commission);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x2ae9d68295f8b6c3a12ee5279271980830775f30.sol(426)

[33mWarning[0m for TODReceiver in contract 'WinEthFree':
    |        }
    |
  > |        addr.transfer(interest);
    |
    |        emit LogWithdrawInterest(addr, interest);
  at /home/jiaming/mavs_srcs/contract@0x2ae9d68295f8b6c3a12ee5279271980830775f30.sol(157)

[33mWarning[0m for TODReceiver in contract 'WinEthFree':
    |            if (address(this).balance - prizePool >= minInvestment) {
    |                // last one gets extra 0.01 ETH award.
  > |                addr.transfer(minInvestment);
    |            }
    |
  at /home/jiaming/mavs_srcs/contract@0x2ae9d68295f8b6c3a12ee5279271980830775f30.sol(252)

[33mWarning[0m for UnhandledException in contract 'WinEthFree':
    |        }
    |
  > |        addr.transfer(interest);
    |
    |        emit LogWithdrawInterest(addr, interest);
  at /home/jiaming/mavs_srcs/contract@0x2ae9d68295f8b6c3a12ee5279271980830775f30.sol(157)

[33mWarning[0m for UnhandledException in contract 'WinEthFree':
    |            if (address(this).balance - prizePool >= minInvestment) {
    |                // last one gets extra 0.01 ETH award.
  > |                addr.transfer(minInvestment);
    |            }
    |
  at /home/jiaming/mavs_srcs/contract@0x2ae9d68295f8b6c3a12ee5279271980830775f30.sol(252)

[33mWarning[0m for UnhandledException in contract 'WinEthFree':
    |                if (beginNum <= luckyNum && luckyNum <= endNum) {
    |                    address winner = lotteryTickets[i].player;
  > |                    winner.transfer(prize);
    |
    |                    emit LogPayWinnerPrize(winner, luckyNum, prize);
  at /home/jiaming/mavs_srcs/contract@0x2ae9d68295f8b6c3a12ee5279271980830775f30.sol(352)

[33mWarning[0m for UnhandledException in contract 'WinEthFree':
    |    function takeCommission(uint value) private {
    |        uint commission = value * commissionPercent / 100;
  > |        admin.transfer(commission);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x2ae9d68295f8b6c3a12ee5279271980830775f30.sol(426)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'WinEthFree':
    |        }
    |
  > |        addr.transfer(interest);
    |
    |        emit LogWithdrawInterest(addr, interest);
  at /home/jiaming/mavs_srcs/contract@0x2ae9d68295f8b6c3a12ee5279271980830775f30.sol(157)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'WinEthFree':
    |            if (address(this).balance - prizePool >= minInvestment) {
    |                // last one gets extra 0.01 ETH award.
  > |                addr.transfer(minInvestment);
    |            }
    |
  at /home/jiaming/mavs_srcs/contract@0x2ae9d68295f8b6c3a12ee5279271980830775f30.sol(252)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'WinEthFree':
    |    function takeCommission(uint value) private {
    |        uint commission = value * commissionPercent / 100;
  > |        admin.transfer(commission);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x2ae9d68295f8b6c3a12ee5279271980830775f30.sol(426)

[33mWarning[0m for UnrestrictedWrite in contract 'WinEthFree':
    | */
    |
  > |contract WinEthFree{
    |
    |    // investor gets 2% interest per day to return.
  at /home/jiaming/mavs_srcs/contract@0x2ae9d68295f8b6c3a12ee5279271980830775f30.sol(19)

[33mWarning[0m for UnrestrictedWrite in contract 'WinEthFree':
    |
    |    function resetInvestor(address addr) private {
  > |        investors[addr].waveNum--;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x2ae9d68295f8b6c3a12ee5279271980830775f30.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'WinEthFree':
    |        uint interestRoundDown = uint(interest / minInterestWager) * minInterestWager;
    |
  > |        investors[addr].payableInterest = interest - interestRoundDown;
    |        investors[addr].paidInterest += interestRoundDown;
    |        investors[addr].payTime = now;
  at /home/jiaming/mavs_srcs/contract@0x2ae9d68295f8b6c3a12ee5279271980830775f30.sol(130)

[33mWarning[0m for UnrestrictedWrite in contract 'WinEthFree':
    |
    |        investors[addr].payableInterest = interest - interestRoundDown;
  > |        investors[addr].paidInterest += interestRoundDown;
    |        investors[addr].payTime = now;
    |
  at /home/jiaming/mavs_srcs/contract@0x2ae9d68295f8b6c3a12ee5279271980830775f30.sol(131)

[33mWarning[0m for UnrestrictedWrite in contract 'WinEthFree':
    |        investors[addr].payableInterest = interest - interestRoundDown;
    |        investors[addr].paidInterest += interestRoundDown;
  > |        investors[addr].payTime = now;
    |
    |        emit LogInvestChange(
  at /home/jiaming/mavs_srcs/contract@0x2ae9d68295f8b6c3a12ee5279271980830775f30.sol(132)

[33mWarning[0m for UnrestrictedWrite in contract 'WinEthFree':
    |        if (interest > 0) {
    |            // update payable Interest from last pay time.
  > |            investors[addr].payableInterest = interest;
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x2ae9d68295f8b6c3a12ee5279271980830775f30.sol(173)

[33mWarning[0m for UnrestrictedWrite in contract 'WinEthFree':
    |        if (isInvestor(addr)) {
    |            // add more investment
  > |            investors[addr].investment += value;
    |            investors[addr].payTime = now;
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0x2ae9d68295f8b6c3a12ee5279271980830775f30.sol(178)

[33mWarning[0m for UnrestrictedWrite in contract 'WinEthFree':
    |            // add more investment
    |            investors[addr].investment += value;
  > |            investors[addr].payTime = now;
    |        } else {
    |            // new investment
  at /home/jiaming/mavs_srcs/contract@0x2ae9d68295f8b6c3a12ee5279271980830775f30.sol(179)

[33mWarning[0m for UnrestrictedWrite in contract 'WinEthFree':
    |        } else {
    |            // new investment
  > |            investors[addr].waveNum = waveNum;
    |            investors[addr].investment = value;
    |            investors[addr].payableInterest = 0;
  at /home/jiaming/mavs_srcs/contract@0x2ae9d68295f8b6c3a12ee5279271980830775f30.sol(182)

[33mWarning[0m for UnrestrictedWrite in contract 'WinEthFree':
    |            // new investment
    |            investors[addr].waveNum = waveNum;
  > |            investors[addr].investment = value;
    |            investors[addr].payableInterest = 0;
    |            investors[addr].paidInterest = 0;
  at /home/jiaming/mavs_srcs/contract@0x2ae9d68295f8b6c3a12ee5279271980830775f30.sol(183)

[33mWarning[0m for UnrestrictedWrite in contract 'WinEthFree':
    |            investors[addr].waveNum = waveNum;
    |            investors[addr].investment = value;
  > |            investors[addr].payableInterest = 0;
    |            investors[addr].paidInterest = 0;
    |            investors[addr].payTime = now;
  at /home/jiaming/mavs_srcs/contract@0x2ae9d68295f8b6c3a12ee5279271980830775f30.sol(184)

[33mWarning[0m for UnrestrictedWrite in contract 'WinEthFree':
    |            investors[addr].investment = value;
    |            investors[addr].payableInterest = 0;
  > |            investors[addr].paidInterest = 0;
    |            investors[addr].payTime = now;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x2ae9d68295f8b6c3a12ee5279271980830775f30.sol(185)

[33mWarning[0m for UnrestrictedWrite in contract 'WinEthFree':
    |            investors[addr].payableInterest = 0;
    |            investors[addr].paidInterest = 0;
  > |            investors[addr].payTime = now;
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x2ae9d68295f8b6c3a12ee5279271980830775f30.sol(186)

[33mWarning[0m for UnrestrictedWrite in contract 'WinEthFree':
    |        if (value >= minInvestment) {
    |            // take 50% wager as winner's prize pool
  > |            prizePool += value * prizePercent / 100;
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x2ae9d68295f8b6c3a12ee5279271980830775f30.sol(220)

[33mWarning[0m for UnrestrictedWrite in contract 'WinEthFree':
    |        }
    |
  > |        uint slot = activeTicketSlotSum++;
    |        lotteryTickets[slot].player = addr;
    |        lotteryTickets[slot].conservative = conservative;
  at /home/jiaming/mavs_srcs/contract@0x2ae9d68295f8b6c3a12ee5279271980830775f30.sol(239)

[33mWarning[0m for UnrestrictedWrite in contract 'WinEthFree':
    |
    |        uint slot = activeTicketSlotSum++;
  > |        lotteryTickets[slot].player = addr;
    |        lotteryTickets[slot].conservative = conservative;
    |        lotteryTickets[slot].beginNum = ticketSum;
  at /home/jiaming/mavs_srcs/contract@0x2ae9d68295f8b6c3a12ee5279271980830775f30.sol(240)

[33mWarning[0m for UnrestrictedWrite in contract 'WinEthFree':
    |        uint slot = activeTicketSlotSum++;
    |        lotteryTickets[slot].player = addr;
  > |        lotteryTickets[slot].conservative = conservative;
    |        lotteryTickets[slot].beginNum = ticketSum;
    |        ticketSum += ticketNum;
  at /home/jiaming/mavs_srcs/contract@0x2ae9d68295f8b6c3a12ee5279271980830775f30.sol(241)

[33mWarning[0m for UnrestrictedWrite in contract 'WinEthFree':
    |        lotteryTickets[slot].player = addr;
    |        lotteryTickets[slot].conservative = conservative;
  > |        lotteryTickets[slot].beginNum = ticketSum;
    |        ticketSum += ticketNum;
    |        lotteryTickets[slot].endNum = ticketSum - 1;
  at /home/jiaming/mavs_srcs/contract@0x2ae9d68295f8b6c3a12ee5279271980830775f30.sol(242)

[33mWarning[0m for UnrestrictedWrite in contract 'WinEthFree':
    |        lotteryTickets[slot].conservative = conservative;
    |        lotteryTickets[slot].beginNum = ticketSum;
  > |        ticketSum += ticketNum;
    |        lotteryTickets[slot].endNum = ticketSum - 1;
    |
  at /home/jiaming/mavs_srcs/contract@0x2ae9d68295f8b6c3a12ee5279271980830775f30.sol(243)

[33mWarning[0m for UnrestrictedWrite in contract 'WinEthFree':
    |        lotteryTickets[slot].beginNum = ticketSum;
    |        ticketSum += ticketNum;
  > |        lotteryTickets[slot].endNum = ticketSum - 1;
    |
    |        emit LogBet(wagerType, addr, value, lotteryTickets[slot].beginNum, lotteryTickets[slot].endNum, prizePool);
  at /home/jiaming/mavs_srcs/contract@0x2ae9d68295f8b6c3a12ee5279271980830775f30.sol(244)

[33mWarning[0m for UnrestrictedWrite in contract 'WinEthFree':
    |
    |    function nextWave() private {
  > |        waveNum++;
    |        emit LogNextWave();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2ae9d68295f8b6c3a12ee5279271980830775f30.sol(388)


