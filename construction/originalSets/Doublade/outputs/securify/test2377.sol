Processing contract: /home/jiaming/mavs_srcs/contract@0x9aabaa0a378fce98c05d17f130223df7475eec23.sol:Quicketh
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for DAOConstantGas in contract 'Quicketh':
    |           uint random_number = uint(block.blockhash(block.number-1))%10 + 1;    // Get random winner
    |           winners.push(playedWallets[random_number]);                           // Add to winner list
  > |           playedWallets[random_number].transfer(8*playPrice);                   // Send price to winner
    |           WinnerWinnerChickenDinner(playedWallets[random_number], 8*playPrice); // Notify the world
    |           owner.transfer(this.balance);                                         // Let's get the profits :)
  at /home/jiaming/mavs_srcs/contract@0x9aabaa0a378fce98c05d17f130223df7475eec23.sol(30)

[31mViolation[0m for DAOConstantGas in contract 'Quicketh':
    |           playedWallets[random_number].transfer(8*playPrice);                   // Send price to winner
    |           WinnerWinnerChickenDinner(playedWallets[random_number], 8*playPrice); // Notify the world
  > |           owner.transfer(this.balance);                                         // Let's get the profits :)
    |           rounds += 1;                                                          // See how long we've been going
    |           players = 0;                                                          // reset players
  at /home/jiaming/mavs_srcs/contract@0x9aabaa0a378fce98c05d17f130223df7475eec23.sol(32)

[33mWarning[0m for LockedEther in contract 'Quicketh':
    |pragma solidity ^0.4.18;
    |
  > |contract Quicketh {
    |   // Bet 0.001 ETH.
    |   // Get a 10% change to win 0.008
  at /home/jiaming/mavs_srcs/contract@0x9aabaa0a378fce98c05d17f130223df7475eec23.sol(3)

[31mViolation[0m for TODAmount in contract 'Quicketh':
    |           playedWallets[random_number].transfer(8*playPrice);                   // Send price to winner
    |           WinnerWinnerChickenDinner(playedWallets[random_number], 8*playPrice); // Notify the world
  > |           owner.transfer(this.balance);                                         // Let's get the profits :)
    |           rounds += 1;                                                          // See how long we've been going
    |           players = 0;                                                          // reset players
  at /home/jiaming/mavs_srcs/contract@0x9aabaa0a378fce98c05d17f130223df7475eec23.sol(32)

[33mWarning[0m for UnhandledException in contract 'Quicketh':
    |           uint random_number = uint(block.blockhash(block.number-1))%10 + 1;    // Get random winner
    |           winners.push(playedWallets[random_number]);                           // Add to winner list
  > |           playedWallets[random_number].transfer(8*playPrice);                   // Send price to winner
    |           WinnerWinnerChickenDinner(playedWallets[random_number], 8*playPrice); // Notify the world
    |           owner.transfer(this.balance);                                         // Let's get the profits :)
  at /home/jiaming/mavs_srcs/contract@0x9aabaa0a378fce98c05d17f130223df7475eec23.sol(30)

[33mWarning[0m for UnhandledException in contract 'Quicketh':
    |           playedWallets[random_number].transfer(8*playPrice);                   // Send price to winner
    |           WinnerWinnerChickenDinner(playedWallets[random_number], 8*playPrice); // Notify the world
  > |           owner.transfer(this.balance);                                         // Let's get the profits :)
    |           rounds += 1;                                                          // See how long we've been going
    |           players = 0;                                                          // reset players
  at /home/jiaming/mavs_srcs/contract@0x9aabaa0a378fce98c05d17f130223df7475eec23.sol(32)

[31mViolation[0m for UnrestrictedWrite in contract 'Quicketh':
    |pragma solidity ^0.4.18;
    |
  > |contract Quicketh {
    |   // Bet 0.001 ETH.
    |   // Get a 10% change to win 0.008
  at /home/jiaming/mavs_srcs/contract@0x9aabaa0a378fce98c05d17f130223df7475eec23.sol(3)

[31mViolation[0m for UnrestrictedWrite in contract 'Quicketh':
    |   function play()  payable public{
    |       require (msg.value == playPrice);
  > |       playedWallets.push(msg.sender);
    |       players += 1;
    |       AnotherPlayer(msg.sender);
  at /home/jiaming/mavs_srcs/contract@0x9aabaa0a378fce98c05d17f130223df7475eec23.sol(24)

[31mViolation[0m for UnrestrictedWrite in contract 'Quicketh':
    |       require (msg.value == playPrice);
    |       playedWallets.push(msg.sender);
  > |       players += 1;
    |       AnotherPlayer(msg.sender);
    |       if (players > 9){
  at /home/jiaming/mavs_srcs/contract@0x9aabaa0a378fce98c05d17f130223df7475eec23.sol(25)

[31mViolation[0m for UnrestrictedWrite in contract 'Quicketh':
    |       if (players > 9){
    |           uint random_number = uint(block.blockhash(block.number-1))%10 + 1;    // Get random winner
  > |           winners.push(playedWallets[random_number]);                           // Add to winner list
    |           playedWallets[random_number].transfer(8*playPrice);                   // Send price to winner
    |           WinnerWinnerChickenDinner(playedWallets[random_number], 8*playPrice); // Notify the world
  at /home/jiaming/mavs_srcs/contract@0x9aabaa0a378fce98c05d17f130223df7475eec23.sol(29)

[31mViolation[0m for UnrestrictedWrite in contract 'Quicketh':
    |           WinnerWinnerChickenDinner(playedWallets[random_number], 8*playPrice); // Notify the world
    |           owner.transfer(this.balance);                                         // Let's get the profits :)
  > |           rounds += 1;                                                          // See how long we've been going
    |           players = 0;                                                          // reset players
    |           delete playedWallets;                                                 // get rid of the player addresses
  at /home/jiaming/mavs_srcs/contract@0x9aabaa0a378fce98c05d17f130223df7475eec23.sol(33)

[31mViolation[0m for UnrestrictedWrite in contract 'Quicketh':
    |           owner.transfer(this.balance);                                         // Let's get the profits :)
    |           rounds += 1;                                                          // See how long we've been going
  > |           players = 0;                                                          // reset players
    |           delete playedWallets;                                                 // get rid of the player addresses
    |       }
  at /home/jiaming/mavs_srcs/contract@0x9aabaa0a378fce98c05d17f130223df7475eec23.sol(34)


