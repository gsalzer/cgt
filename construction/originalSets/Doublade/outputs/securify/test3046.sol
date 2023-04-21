Processing contract: /home/jiaming/mavs_srcs/contract@0xc726ac92955fc07ad09c5af4827418f581e37017.sol:CryptoHill
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for DAOConstantGas in contract 'CryptoHill':
    |          if(leader != admin){
    |            Winner("Victory! Game will be reset to end in 1 week (in block time).", leader);
  > |            leader.send(this.balance);
    |          }else NoWinner("No winner! Game will be reset to end in 1 week (in block time).");
    |
  at /home/jiaming/mavs_srcs/contract@0xc726ac92955fc07ad09c5af4827418f581e37017.sol(75)

[33mWarning[0m for LockedEther in contract 'CryptoHill':
  > |contract CryptoHill {
    |    
    |  address admin;
  at /home/jiaming/mavs_srcs/contract@0xc726ac92955fc07ad09c5af4827418f581e37017.sol(1)

[31mViolation[0m for TODAmount in contract 'CryptoHill':
    |          if(leader != admin){
    |            Winner("Victory! Game will be reset to end in 1 week (in block time).", leader);
  > |            leader.send(this.balance);
    |          }else NoWinner("No winner! Game will be reset to end in 1 week (in block time).");
    |
  at /home/jiaming/mavs_srcs/contract@0xc726ac92955fc07ad09c5af4827418f581e37017.sol(75)

[31mViolation[0m for TODReceiver in contract 'CryptoHill':
    |          if(leader != admin){
    |            Winner("Victory! Game will be reset to end in 1 week (in block time).", leader);
  > |            leader.send(this.balance);
    |          }else NoWinner("No winner! Game will be reset to end in 1 week (in block time).");
    |
  at /home/jiaming/mavs_srcs/contract@0xc726ac92955fc07ad09c5af4827418f581e37017.sol(75)

[31mViolation[0m for UnhandledException in contract 'CryptoHill':
    |          if(leader != admin){
    |            Winner("Victory! Game will be reset to end in 1 week (in block time).", leader);
  > |            leader.send(this.balance);
    |          }else NoWinner("No winner! Game will be reset to end in 1 week (in block time).");
    |
  at /home/jiaming/mavs_srcs/contract@0xc726ac92955fc07ad09c5af4827418f581e37017.sol(75)

[31mViolation[0m for UnrestrictedWrite in contract 'CryptoHill':
  > |contract CryptoHill {
    |    
    |  address admin;
  at /home/jiaming/mavs_srcs/contract@0xc726ac92955fc07ad09c5af4827418f581e37017.sol(1)

[31mViolation[0m for UnrestrictedWrite in contract 'CryptoHill':
    |      
    |      //Make the hash unpredictable.
  > |      leaderHash = sha3(block.timestamp);
    |      
    |      //Reset the leader message
  at /home/jiaming/mavs_srcs/contract@0xc726ac92955fc07ad09c5af4827418f581e37017.sol(58)

[31mViolation[0m for UnrestrictedWrite in contract 'CryptoHill':
    |          }else NoWinner("No winner! Game will be reset to end in 1 week (in block time).");
    |
  > |          startingTime = block.timestamp;
    |
    |          //Reset
  at /home/jiaming/mavs_srcs/contract@0xc726ac92955fc07ad09c5af4827418f581e37017.sol(78)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoHill':
  > |contract CryptoHill {
    |    
    |  address admin;
  at /home/jiaming/mavs_srcs/contract@0xc726ac92955fc07ad09c5af4827418f581e37017.sol(1)


