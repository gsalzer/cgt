Processing contract: /home/jiaming/mavs_srcs/contract@0xdc9f9a21219bdd887dc4ae923d2c293a1fe4b2bc.sol:Spineth
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'Spineth':
    |
    |        // Transfer the player's bet amount back to them
  > |        msg.sender.transfer(game.betAmountInWei);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xdc9f9a21219bdd887dc4ae923d2c293a1fe4b2bc.sol(246)

[33mWarning[0m for DAOConstantGas in contract 'Spineth':
    |        if(payFee == true)
    |        {
  > |            authority.transfer(feeWei);
    |        }
    |    
  at /home/jiaming/mavs_srcs/contract@0xdc9f9a21219bdd887dc4ae923d2c293a1fe4b2bc.sol(520)

[33mWarning[0m for DAOConstantGas in contract 'Spineth':
    |    
    |        // Transfer sender their outcome
  > |        msg.sender.transfer(withdrawAmount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xdc9f9a21219bdd887dc4ae923d2c293a1fe4b2bc.sol(524)

[33mWarning[0m for LockedEther in contract 'Spineth':
    |pragma solidity ^0.4.19;
    |
  > |contract Spineth
    |{
    |    /// The states the game will transition through
  at /home/jiaming/mavs_srcs/contract@0xdc9f9a21219bdd887dc4ae923d2c293a1fe4b2bc.sol(3)

[33mWarning[0m for TODAmount in contract 'Spineth':
    |        if(payFee == true)
    |        {
  > |            authority.transfer(feeWei);
    |        }
    |    
  at /home/jiaming/mavs_srcs/contract@0xdc9f9a21219bdd887dc4ae923d2c293a1fe4b2bc.sol(520)

[33mWarning[0m for TODAmount in contract 'Spineth':
    |    
    |        // Transfer sender their outcome
  > |        msg.sender.transfer(withdrawAmount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xdc9f9a21219bdd887dc4ae923d2c293a1fe4b2bc.sol(524)

[31mViolation[0m for TODReceiver in contract 'Spineth':
    |        if(payFee == true)
    |        {
  > |            authority.transfer(feeWei);
    |        }
    |    
  at /home/jiaming/mavs_srcs/contract@0xdc9f9a21219bdd887dc4ae923d2c293a1fe4b2bc.sol(520)

[33mWarning[0m for TODReceiver in contract 'Spineth':
    |
    |        // Transfer the player's bet amount back to them
  > |        msg.sender.transfer(game.betAmountInWei);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xdc9f9a21219bdd887dc4ae923d2c293a1fe4b2bc.sol(246)

[33mWarning[0m for TODReceiver in contract 'Spineth':
    |    
    |        // Transfer sender their outcome
  > |        msg.sender.transfer(withdrawAmount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xdc9f9a21219bdd887dc4ae923d2c293a1fe4b2bc.sol(524)

[33mWarning[0m for UnhandledException in contract 'Spineth':
    |
    |        // Transfer the player's bet amount back to them
  > |        msg.sender.transfer(game.betAmountInWei);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xdc9f9a21219bdd887dc4ae923d2c293a1fe4b2bc.sol(246)

[33mWarning[0m for UnhandledException in contract 'Spineth':
    |        if(payFee == true)
    |        {
  > |            authority.transfer(feeWei);
    |        }
    |    
  at /home/jiaming/mavs_srcs/contract@0xdc9f9a21219bdd887dc4ae923d2c293a1fe4b2bc.sol(520)

[33mWarning[0m for UnhandledException in contract 'Spineth':
    |    
    |        // Transfer sender their outcome
  > |        msg.sender.transfer(withdrawAmount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xdc9f9a21219bdd887dc4ae923d2c293a1fe4b2bc.sol(524)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Spineth':
    |        if(payFee == true)
    |        {
  > |            authority.transfer(feeWei);
    |        }
    |    
  at /home/jiaming/mavs_srcs/contract@0xdc9f9a21219bdd887dc4ae923d2c293a1fe4b2bc.sol(520)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Spineth':
    |    
    |        // Transfer sender their outcome
  > |        msg.sender.transfer(withdrawAmount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xdc9f9a21219bdd887dc4ae923d2c293a1fe4b2bc.sol(524)

[31mViolation[0m for UnrestrictedWrite in contract 'Spineth':
    |            {
    |                // Update the bet to the revealed value
  > |                game.wheelBetPlayer1 = i;
    |                break;
    |            }
  at /home/jiaming/mavs_srcs/contract@0xdc9f9a21219bdd887dc4ae923d2c293a1fe4b2bc.sol(348)

[31mViolation[0m for UnrestrictedWrite in contract 'Spineth':
    |
    |        // Update game state        
  > |        game.wheelResult = randomNumber % WHEEL_SIZE;
    |        game.state = State.Complete;
    |        
  at /home/jiaming/mavs_srcs/contract@0xdc9f9a21219bdd887dc4ae923d2c293a1fe4b2bc.sol(381)

[31mViolation[0m for UnrestrictedWrite in contract 'Spineth':
    |        // Update game state        
    |        game.wheelResult = randomNumber % WHEEL_SIZE;
  > |        game.state = State.Complete;
    |        
    |        // Fire an event for the completion of the game
  at /home/jiaming/mavs_srcs/contract@0xdc9f9a21219bdd887dc4ae923d2c293a1fe4b2bc.sol(382)

[33mWarning[0m for UnrestrictedWrite in contract 'Spineth':
    |pragma solidity ^0.4.19;
    |
  > |contract Spineth
    |{
    |    /// The states the game will transition through
  at /home/jiaming/mavs_srcs/contract@0xdc9f9a21219bdd887dc4ae923d2c293a1fe4b2bc.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'Spineth':
    |    function arrayAdd(uint[] storage array, uint element) private
    |    {
  > |        array.push(element);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xdc9f9a21219bdd887dc4ae923d2c293a1fe4b2bc.sol(133)

[33mWarning[0m for UnrestrictedWrite in contract 'Spineth':
    |
    |        // Increment the create game counter for this player
  > |        counterContext[msg.sender] = counterContext[msg.sender] + 1;
    |
    |        // Update game state
  at /home/jiaming/mavs_srcs/contract@0xdc9f9a21219bdd887dc4ae923d2c293a1fe4b2bc.sol(200)

[33mWarning[0m for UnrestrictedWrite in contract 'Spineth':
    |            require(game.withdrawnPlayer1 == false);
    |            
  > |            game.withdrawnPlayer1 = true; // They can't withdraw again
    |            
    |            // If player1 was the winner, they will pay the fee
  at /home/jiaming/mavs_srcs/contract@0xdc9f9a21219bdd887dc4ae923d2c293a1fe4b2bc.sol(479)

[33mWarning[0m for UnrestrictedWrite in contract 'Spineth':
    |            require(game.withdrawnPlayer2 == false);
    |            
  > |            game.withdrawnPlayer2 = true;
    |
    |            // If player2 was the winner, they will pay the fee
  at /home/jiaming/mavs_srcs/contract@0xdc9f9a21219bdd887dc4ae923d2c293a1fe4b2bc.sol(494)

[33mWarning[0m for UnrestrictedWrite in contract 'Spineth':
    |        require(msg.sender == authority);
    |
  > |        authority = newAuthority;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xdc9f9a21219bdd887dc4ae923d2c293a1fe4b2bc.sol(116)

[33mWarning[0m for UnrestrictedWrite in contract 'Spineth':
    |        require(maxBet >= minBet);
    |
  > |        minBetWei = minBet;
    |        maxBetWei = maxBet;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdc9f9a21219bdd887dc4ae923d2c293a1fe4b2bc.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'Spineth':
    |
    |        minBetWei = minBet;
  > |        maxBetWei = maxBet;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xdc9f9a21219bdd887dc4ae923d2c293a1fe4b2bc.sol(127)

[33mWarning[0m for UnrestrictedWrite in contract 'Spineth':
    |        // Update game state
    |        // The creator becomes player1
  > |        game.state = State.WaitingForPlayers;
    |        game.betAmountInWei = msg.value;
    |        game.player1 = msg.sender;
  at /home/jiaming/mavs_srcs/contract@0xdc9f9a21219bdd887dc4ae923d2c293a1fe4b2bc.sol(204)

[33mWarning[0m for UnrestrictedWrite in contract 'Spineth':
    |        // The creator becomes player1
    |        game.state = State.WaitingForPlayers;
  > |        game.betAmountInWei = msg.value;
    |        game.player1 = msg.sender;
    |        game.wheelBetPlayer1 = wheelPositionHash;
  at /home/jiaming/mavs_srcs/contract@0xdc9f9a21219bdd887dc4ae923d2c293a1fe4b2bc.sol(205)

[33mWarning[0m for UnrestrictedWrite in contract 'Spineth':
    |        game.state = State.WaitingForPlayers;
    |        game.betAmountInWei = msg.value;
  > |        game.player1 = msg.sender;
    |        game.wheelBetPlayer1 = wheelPositionHash;
    |        
  at /home/jiaming/mavs_srcs/contract@0xdc9f9a21219bdd887dc4ae923d2c293a1fe4b2bc.sol(206)

[33mWarning[0m for UnrestrictedWrite in contract 'Spineth':
    |        game.betAmountInWei = msg.value;
    |        game.player1 = msg.sender;
  > |        game.wheelBetPlayer1 = wheelPositionHash;
    |        
    |        // This game is now open to others and active for the player
  at /home/jiaming/mavs_srcs/contract@0xdc9f9a21219bdd887dc4ae923d2c293a1fe4b2bc.sol(207)

[33mWarning[0m for UnrestrictedWrite in contract 'Spineth':
    |        // Update game state
    |        // Mark earnings as already withdrawn since we are returning the bet amount
  > |        game.state = State.Complete;
    |        game.withdrawnPlayer1 = true;
    |
  at /home/jiaming/mavs_srcs/contract@0xdc9f9a21219bdd887dc4ae923d2c293a1fe4b2bc.sol(235)

[33mWarning[0m for UnrestrictedWrite in contract 'Spineth':
    |        // Mark earnings as already withdrawn since we are returning the bet amount
    |        game.state = State.Complete;
  > |        game.withdrawnPlayer1 = true;
    |
    |        // This game is no longer open and no longer active for the player
  at /home/jiaming/mavs_srcs/contract@0xdc9f9a21219bdd887dc4ae923d2c293a1fe4b2bc.sol(236)

[33mWarning[0m for UnrestrictedWrite in contract 'Spineth':
    |        // Update game state
    |        // The sender becomes player2
  > |        game.state = State.WaitingForReveal;
    |        game.player2 = msg.sender;
    |        game.wheelBetPlayer2 = wheelBet;
  at /home/jiaming/mavs_srcs/contract@0xdc9f9a21219bdd887dc4ae923d2c293a1fe4b2bc.sol(275)

[33mWarning[0m for UnrestrictedWrite in contract 'Spineth':
    |        // The sender becomes player2
    |        game.state = State.WaitingForReveal;
  > |        game.player2 = msg.sender;
    |        game.wheelBetPlayer2 = wheelBet;
    |        game.expireTime = now + maxRevealSeconds; // After expireTime the game can be expired
  at /home/jiaming/mavs_srcs/contract@0xdc9f9a21219bdd887dc4ae923d2c293a1fe4b2bc.sol(276)

[33mWarning[0m for UnrestrictedWrite in contract 'Spineth':
    |        game.state = State.WaitingForReveal;
    |        game.player2 = msg.sender;
  > |        game.wheelBetPlayer2 = wheelBet;
    |        game.expireTime = now + maxRevealSeconds; // After expireTime the game can be expired
    |
  at /home/jiaming/mavs_srcs/contract@0xdc9f9a21219bdd887dc4ae923d2c293a1fe4b2bc.sol(277)

[33mWarning[0m for UnrestrictedWrite in contract 'Spineth':
    |        game.player2 = msg.sender;
    |        game.wheelBetPlayer2 = wheelBet;
  > |        game.expireTime = now + maxRevealSeconds; // After expireTime the game can be expired
    |
    |        // This game is no longer open, and is now active for the joiner
  at /home/jiaming/mavs_srcs/contract@0xdc9f9a21219bdd887dc4ae923d2c293a1fe4b2bc.sol(278)

[33mWarning[0m for UnrestrictedWrite in contract 'Spineth':
    |        // Player1 (creator) did not reveal bet in time
    |        // Complete the game in favor of player2
  > |        game.wheelResult = game.wheelBetPlayer2;
    |        game.wheelBetPlayer1 = (game.wheelBetPlayer2 + (WHEEL_SIZE / 2)) % WHEEL_SIZE;
    |        
  at /home/jiaming/mavs_srcs/contract@0xdc9f9a21219bdd887dc4ae923d2c293a1fe4b2bc.sol(312)

[33mWarning[0m for UnrestrictedWrite in contract 'Spineth':
    |        // Complete the game in favor of player2
    |        game.wheelResult = game.wheelBetPlayer2;
  > |        game.wheelBetPlayer1 = (game.wheelBetPlayer2 + (WHEEL_SIZE / 2)) % WHEEL_SIZE;
    |        
    |        // This game is complete, the withdrawEarnings flow can now be invoked
  at /home/jiaming/mavs_srcs/contract@0xdc9f9a21219bdd887dc4ae923d2c293a1fe4b2bc.sol(313)

[33mWarning[0m for UnrestrictedWrite in contract 'Spineth':
    |        
    |        // This game is complete, the withdrawEarnings flow can now be invoked
  > |        game.state = State.Complete;
    |
    |        // Fire an event for the player forcing this game to end
  at /home/jiaming/mavs_srcs/contract@0xdc9f9a21219bdd887dc4ae923d2c293a1fe4b2bc.sol(316)


