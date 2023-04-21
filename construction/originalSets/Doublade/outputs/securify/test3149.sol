Processing contract: /home/jiaming/mavs_srcs/contract@0xce9ed0b322a1420da4b6990e3047796f57471336.sol:LifetimeLottery
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for DAOConstantGas in contract 'LifetimeLottery':
    |				if(jackpotNumber < JACKPOT_CHANCE) {
    |					lastJackpotWinner = lastWinner;
  > |					lastJackpotWinner.transfer(msg.value + jackpot);
    |					jackpot = 0;
    |					LotteryLog(lastJackpotWinner, "Jackpot is hit!");
  at /home/jiaming/mavs_srcs/contract@0xce9ed0b322a1420da4b6990e3047796f57471336.sol(38)

[33mWarning[0m for DAOConstantGas in contract 'LifetimeLottery':
    |				} else {
    |					jackpot += JACKPOT_INC;
  > |					lastWinner.transfer(msg.value - JACKPOT_INC);
    |					LotteryLog(lastWinner, "We have a Winner!");
    |				}
  at /home/jiaming/mavs_srcs/contract@0xce9ed0b322a1420da4b6990e3047796f57471336.sol(43)

[33mWarning[0m for DAOConstantGas in contract 'LifetimeLottery':
    |				}
    |            } else {
  > |                msg.sender.transfer(msg.value);
    |				LotteryLog(msg.sender, "Failed: already joined! Sending back received ether...");
    |            }
  at /home/jiaming/mavs_srcs/contract@0xce9ed0b322a1420da4b6990e3047796f57471336.sol(47)

[33mWarning[0m for DAOConstantGas in contract 'LifetimeLottery':
    |            }
    |        } else {
  > |            msg.sender.transfer(msg.value);
    |			LotteryLog(msg.sender, "Failed: not enough Ether sent! Sending back received ether...");
    |        }
  at /home/jiaming/mavs_srcs/contract@0xce9ed0b322a1420da4b6990e3047796f57471336.sol(51)

[33mWarning[0m for DAOConstantGas in contract 'LifetimeLottery':
    |	
    |	function withdraw() public isDeployer { //backdoor in case of errors
  > |        deployer.transfer(this.balance - jackpot); //jackpot is untouchable
    |    }
    |	
  at /home/jiaming/mavs_srcs/contract@0xce9ed0b322a1420da4b6990e3047796f57471336.sol(78)

[33mWarning[0m for LockedEther in contract 'LifetimeLottery':
    |pragma solidity ^0.4.18;
  > |contract LifetimeLottery {
    |    
    |    uint internal constant MIN_SEND_VAL = 500000000000000000; //minimum amount (in wei) for getting registered on list
  at /home/jiaming/mavs_srcs/contract@0xce9ed0b322a1420da4b6990e3047796f57471336.sol(2)

[31mViolation[0m for TODAmount in contract 'LifetimeLottery':
    |				if(jackpotNumber < JACKPOT_CHANCE) {
    |					lastJackpotWinner = lastWinner;
  > |					lastJackpotWinner.transfer(msg.value + jackpot);
    |					jackpot = 0;
    |					LotteryLog(lastJackpotWinner, "Jackpot is hit!");
  at /home/jiaming/mavs_srcs/contract@0xce9ed0b322a1420da4b6990e3047796f57471336.sol(38)

[31mViolation[0m for TODAmount in contract 'LifetimeLottery':
    |	
    |	function withdraw() public isDeployer { //backdoor in case of errors
  > |        deployer.transfer(this.balance - jackpot); //jackpot is untouchable
    |    }
    |	
  at /home/jiaming/mavs_srcs/contract@0xce9ed0b322a1420da4b6990e3047796f57471336.sol(78)

[31mViolation[0m for TODReceiver in contract 'LifetimeLottery':
    |				if(jackpotNumber < JACKPOT_CHANCE) {
    |					lastJackpotWinner = lastWinner;
  > |					lastJackpotWinner.transfer(msg.value + jackpot);
    |					jackpot = 0;
    |					LotteryLog(lastJackpotWinner, "Jackpot is hit!");
  at /home/jiaming/mavs_srcs/contract@0xce9ed0b322a1420da4b6990e3047796f57471336.sol(38)

[31mViolation[0m for TODReceiver in contract 'LifetimeLottery':
    |				} else {
    |					jackpot += JACKPOT_INC;
  > |					lastWinner.transfer(msg.value - JACKPOT_INC);
    |					LotteryLog(lastWinner, "We have a Winner!");
    |				}
  at /home/jiaming/mavs_srcs/contract@0xce9ed0b322a1420da4b6990e3047796f57471336.sol(43)

[33mWarning[0m for TODReceiver in contract 'LifetimeLottery':
    |				}
    |            } else {
  > |                msg.sender.transfer(msg.value);
    |				LotteryLog(msg.sender, "Failed: already joined! Sending back received ether...");
    |            }
  at /home/jiaming/mavs_srcs/contract@0xce9ed0b322a1420da4b6990e3047796f57471336.sol(47)

[33mWarning[0m for TODReceiver in contract 'LifetimeLottery':
    |            }
    |        } else {
  > |            msg.sender.transfer(msg.value);
    |			LotteryLog(msg.sender, "Failed: not enough Ether sent! Sending back received ether...");
    |        }
  at /home/jiaming/mavs_srcs/contract@0xce9ed0b322a1420da4b6990e3047796f57471336.sol(51)

[33mWarning[0m for TODReceiver in contract 'LifetimeLottery':
    |	
    |	function withdraw() public isDeployer { //backdoor in case of errors
  > |        deployer.transfer(this.balance - jackpot); //jackpot is untouchable
    |    }
    |	
  at /home/jiaming/mavs_srcs/contract@0xce9ed0b322a1420da4b6990e3047796f57471336.sol(78)

[33mWarning[0m for UnhandledException in contract 'LifetimeLottery':
    |				if(jackpotNumber < JACKPOT_CHANCE) {
    |					lastJackpotWinner = lastWinner;
  > |					lastJackpotWinner.transfer(msg.value + jackpot);
    |					jackpot = 0;
    |					LotteryLog(lastJackpotWinner, "Jackpot is hit!");
  at /home/jiaming/mavs_srcs/contract@0xce9ed0b322a1420da4b6990e3047796f57471336.sol(38)

[33mWarning[0m for UnhandledException in contract 'LifetimeLottery':
    |				} else {
    |					jackpot += JACKPOT_INC;
  > |					lastWinner.transfer(msg.value - JACKPOT_INC);
    |					LotteryLog(lastWinner, "We have a Winner!");
    |				}
  at /home/jiaming/mavs_srcs/contract@0xce9ed0b322a1420da4b6990e3047796f57471336.sol(43)

[33mWarning[0m for UnhandledException in contract 'LifetimeLottery':
    |				}
    |            } else {
  > |                msg.sender.transfer(msg.value);
    |				LotteryLog(msg.sender, "Failed: already joined! Sending back received ether...");
    |            }
  at /home/jiaming/mavs_srcs/contract@0xce9ed0b322a1420da4b6990e3047796f57471336.sol(47)

[33mWarning[0m for UnhandledException in contract 'LifetimeLottery':
    |            }
    |        } else {
  > |            msg.sender.transfer(msg.value);
    |			LotteryLog(msg.sender, "Failed: not enough Ether sent! Sending back received ether...");
    |        }
  at /home/jiaming/mavs_srcs/contract@0xce9ed0b322a1420da4b6990e3047796f57471336.sol(51)

[33mWarning[0m for UnhandledException in contract 'LifetimeLottery':
    |	
    |	function withdraw() public isDeployer { //backdoor in case of errors
  > |        deployer.transfer(this.balance - jackpot); //jackpot is untouchable
    |    }
    |	
  at /home/jiaming/mavs_srcs/contract@0xce9ed0b322a1420da4b6990e3047796f57471336.sol(78)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LifetimeLottery':
    |	
    |	function withdraw() public isDeployer { //backdoor in case of errors
  > |        deployer.transfer(this.balance - jackpot); //jackpot is untouchable
    |    }
    |	
  at /home/jiaming/mavs_srcs/contract@0xce9ed0b322a1420da4b6990e3047796f57471336.sol(78)

[33mWarning[0m for UnrestrictedWrite in contract 'LifetimeLottery':
    |        if(msg.value >= MIN_SEND_VAL) {
    |            if(addressMapping[msg.sender] == false) { //--> cheaper access through map instead of a loop
  > |                addressMapping[msg.sender] = true;
    |                lotteryList.push(msg.sender);
    |                nonce++;
  at /home/jiaming/mavs_srcs/contract@0xce9ed0b322a1420da4b6990e3047796f57471336.sol(30)


