Processing contract: /home/jiaming/mavs_srcs/contract@0xd1ce8888b962022365a660b17b4b6dcfa3c7ce7e.sol:Jackpot
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd1ce8888b962022365a660b17b4b6dcfa3c7ce7e.sol:Ownable
Processing contract: /home/jiaming/mavs_srcs/contract@0xd1ce8888b962022365a660b17b4b6dcfa3c7ce7e.sol:SX
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd1ce8888b962022365a660b17b4b6dcfa3c7ce7e.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Jackpot':
    |// File: contracts/Jackpot.sol
    |
  > |contract Jackpot is Ownable {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xd1ce8888b962022365a660b17b4b6dcfa3c7ce7e.sol(163)

[33mWarning[0m for UnrestrictedWrite in contract 'Jackpot':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipTransferred(_owner, address(0));
  > |    _owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd1ce8888b962022365a660b17b4b6dcfa3c7ce7e.sol(139)

[33mWarning[0m for UnrestrictedWrite in contract 'Jackpot':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(_owner, newOwner);
  > |    _owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xd1ce8888b962022365a660b17b4b6dcfa3c7ce7e.sol(157)

[33mWarning[0m for UnrestrictedWrite in contract 'Jackpot':
    |        end = begin.add(length);
    |
  > |        playerLengths[player] += length;
    |        ranges[begin] = Range({
    |            end: end,
  at /home/jiaming/mavs_srcs/contract@0xd1ce8888b962022365a660b17b4b6dcfa3c7ce7e.sol(187)

[33mWarning[0m for UnrestrictedWrite in contract 'Jackpot':
    |
    |        playerLengths[player] += length;
  > |        ranges[begin] = Range({
    |            end: end,
    |            player: player
  at /home/jiaming/mavs_srcs/contract@0xd1ce8888b962022365a660b17b4b6dcfa3c7ce7e.sol(188)

[33mWarning[0m for UnrestrictedWrite in contract 'Jackpot':
    |        });
    |
  > |        totalLength = end;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xd1ce8888b962022365a660b17b4b6dcfa3c7ce7e.sol(193)

[33mWarning[0m for UnrestrictedWrite in contract 'Jackpot':
    |        require(shouldSelectWinner(), "Winner could not be selected now");
    |
  > |        winnerOffset = (candidateNextBlockNumberHash() / PROBABILITY) % totalLength;
    |        return winnerOffset;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd1ce8888b962022365a660b17b4b6dcfa3c7ce7e.sol(218)

[31mViolation[0m for DAOConstantGas in contract 'SX':
    |            uint256 jackpotFee = reward.mul(jackpotFeePercent).div(100);
    |
  > |            owner().send(adminFee);                                 // solium-disable-line security/no-send
    |            address(nextJackpot).send(jackpotFee);                  // solium-disable-line security/no-send
    |            game.player.send(reward.sub(adminFee).sub(jackpotFee)); // solium-disable-line security/no-send
  at /home/jiaming/mavs_srcs/contract@0xd1ce8888b962022365a660b17b4b6dcfa3c7ce7e.sol(410)

[31mViolation[0m for DAOConstantGas in contract 'SX':
    |
    |            owner().send(adminFee);                                 // solium-disable-line security/no-send
  > |            address(nextJackpot).send(jackpotFee);                  // solium-disable-line security/no-send
    |            game.player.send(reward.sub(adminFee).sub(jackpotFee)); // solium-disable-line security/no-send
    |        }
  at /home/jiaming/mavs_srcs/contract@0xd1ce8888b962022365a660b17b4b6dcfa3c7ce7e.sol(411)

[33mWarning[0m for DAOConstantGas in contract 'SX':
    |
    |    function getFromBank(uint256 value) public onlyOwner {
  > |        msg.sender.transfer(value);
    |        require(totalWeisInGame <= address(this).balance, "Not enough balance");
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd1ce8888b962022365a660b17b4b6dcfa3c7ce7e.sol(483)

[33mWarning[0m for LockedEther in contract 'SX':
    |// File: contracts/SX.sol
    |
  > |contract SX is Ownable {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xd1ce8888b962022365a660b17b4b6dcfa3c7ce7e.sol(233)

[33mWarning[0m for TODAmount in contract 'SX':
    |
    |            owner().send(adminFee);                                 // solium-disable-line security/no-send
  > |            address(nextJackpot).send(jackpotFee);                  // solium-disable-line security/no-send
    |            game.player.send(reward.sub(adminFee).sub(jackpotFee)); // solium-disable-line security/no-send
    |        }
  at /home/jiaming/mavs_srcs/contract@0xd1ce8888b962022365a660b17b4b6dcfa3c7ce7e.sol(411)

[33mWarning[0m for TODAmount in contract 'SX':
    |
    |    function getFromBank(uint256 value) public onlyOwner {
  > |        msg.sender.transfer(value);
    |        require(totalWeisInGame <= address(this).balance, "Not enough balance");
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd1ce8888b962022365a660b17b4b6dcfa3c7ce7e.sol(483)

[33mWarning[0m for TODAmount in contract 'SX':
    |            owner().send(adminFee);                                 // solium-disable-line security/no-send
    |            address(nextJackpot).send(jackpotFee);                  // solium-disable-line security/no-send
  > |            game.player.send(reward.sub(adminFee).sub(jackpotFee)); // solium-disable-line security/no-send
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0xd1ce8888b962022365a660b17b4b6dcfa3c7ce7e.sol(412)

[31mViolation[0m for TODReceiver in contract 'SX':
    |            uint256 jackpotFee = reward.mul(jackpotFeePercent).div(100);
    |
  > |            owner().send(adminFee);                                 // solium-disable-line security/no-send
    |            address(nextJackpot).send(jackpotFee);                  // solium-disable-line security/no-send
    |            game.player.send(reward.sub(adminFee).sub(jackpotFee)); // solium-disable-line security/no-send
  at /home/jiaming/mavs_srcs/contract@0xd1ce8888b962022365a660b17b4b6dcfa3c7ce7e.sol(410)

[31mViolation[0m for TODReceiver in contract 'SX':
    |
    |            owner().send(adminFee);                                 // solium-disable-line security/no-send
  > |            address(nextJackpot).send(jackpotFee);                  // solium-disable-line security/no-send
    |            game.player.send(reward.sub(adminFee).sub(jackpotFee)); // solium-disable-line security/no-send
    |        }
  at /home/jiaming/mavs_srcs/contract@0xd1ce8888b962022365a660b17b4b6dcfa3c7ce7e.sol(411)

[33mWarning[0m for TODReceiver in contract 'SX':
    |
    |    function getFromBank(uint256 value) public onlyOwner {
  > |        msg.sender.transfer(value);
    |        require(totalWeisInGame <= address(this).balance, "Not enough balance");
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd1ce8888b962022365a660b17b4b6dcfa3c7ce7e.sol(483)

[31mViolation[0m for UnhandledException in contract 'SX':
    |            uint256 jackpotFee = reward.mul(jackpotFeePercent).div(100);
    |
  > |            owner().send(adminFee);                                 // solium-disable-line security/no-send
    |            address(nextJackpot).send(jackpotFee);                  // solium-disable-line security/no-send
    |            game.player.send(reward.sub(adminFee).sub(jackpotFee)); // solium-disable-line security/no-send
  at /home/jiaming/mavs_srcs/contract@0xd1ce8888b962022365a660b17b4b6dcfa3c7ce7e.sol(410)

[31mViolation[0m for UnhandledException in contract 'SX':
    |
    |            owner().send(adminFee);                                 // solium-disable-line security/no-send
  > |            address(nextJackpot).send(jackpotFee);                  // solium-disable-line security/no-send
    |            game.player.send(reward.sub(adminFee).sub(jackpotFee)); // solium-disable-line security/no-send
    |        }
  at /home/jiaming/mavs_srcs/contract@0xd1ce8888b962022365a660b17b4b6dcfa3c7ce7e.sol(411)

[31mViolation[0m for UnhandledException in contract 'SX':
    |            owner().send(adminFee);                                 // solium-disable-line security/no-send
    |            address(nextJackpot).send(jackpotFee);                  // solium-disable-line security/no-send
  > |            game.player.send(reward.sub(adminFee).sub(jackpotFee)); // solium-disable-line security/no-send
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0xd1ce8888b962022365a660b17b4b6dcfa3c7ce7e.sol(412)

[33mWarning[0m for UnhandledException in contract 'SX':
    |        finishAllGames();
    |
  > |        if (nextJackpot.shouldSelectWinner()) {
    |            nextJackpot.selectWinner();
    |            emit JackpotWinnerSelected(prevJackpots.length, nextJackpot.winnerOffset());
  at /home/jiaming/mavs_srcs/contract@0xd1ce8888b962022365a660b17b4b6dcfa3c7ce7e.sol(318)

[33mWarning[0m for UnhandledException in contract 'SX':
    |
    |        if (nextJackpot.shouldSelectWinner()) {
  > |            nextJackpot.selectWinner();
    |            emit JackpotWinnerSelected(prevJackpots.length, nextJackpot.winnerOffset());
    |
  at /home/jiaming/mavs_srcs/contract@0xd1ce8888b962022365a660b17b4b6dcfa3c7ce7e.sol(319)

[33mWarning[0m for UnhandledException in contract 'SX':
    |        if (nextJackpot.shouldSelectWinner()) {
    |            nextJackpot.selectWinner();
  > |            emit JackpotWinnerSelected(prevJackpots.length, nextJackpot.winnerOffset());
    |
    |            prevJackpots.push(nextJackpot);
  at /home/jiaming/mavs_srcs/contract@0xd1ce8888b962022365a660b17b4b6dcfa3c7ce7e.sol(320)

[33mWarning[0m for UnhandledException in contract 'SX':
    |            combinations: combinations,
    |            answer: answer,
  > |            salt: nextJackpot.totalLength()
    |        }));
    |
  at /home/jiaming/mavs_srcs/contract@0xd1ce8888b962022365a660b17b4b6dcfa3c7ce7e.sol(367)

[33mWarning[0m for UnhandledException in contract 'SX':
    |        }));
    |
  > |        (uint256 begin, uint256 end) = nextJackpot.addRange(msg.sender, msg.value);
    |        emit JackpotRangeAdded(
    |            prevJackpots.length,
  at /home/jiaming/mavs_srcs/contract@0xd1ce8888b962022365a660b17b4b6dcfa3c7ce7e.sol(370)

[33mWarning[0m for UnhandledException in contract 'SX':
    |        }
    |
  > |        (uint256 end, address player) = jackpot.ranges(begin);
    |        uint256 winnerOffset = jackpot.winnerOffset();
    |        uint256 value = address(jackpot).balance;
  at /home/jiaming/mavs_srcs/contract@0xd1ce8888b962022365a660b17b4b6dcfa3c7ce7e.sol(439)

[33mWarning[0m for UnhandledException in contract 'SX':
    |
    |        (uint256 end, address player) = jackpot.ranges(begin);
  > |        uint256 winnerOffset = jackpot.winnerOffset();
    |        uint256 value = address(jackpot).balance;
    |        jackpot.payJackpot(begin);
  at /home/jiaming/mavs_srcs/contract@0xd1ce8888b962022365a660b17b4b6dcfa3c7ce7e.sol(440)

[33mWarning[0m for UnhandledException in contract 'SX':
    |        uint256 winnerOffset = jackpot.winnerOffset();
    |        uint256 value = address(jackpot).balance;
  > |        jackpot.payJackpot(begin);
    |        delete prevJackpots[jackpotIndex];
    |        emit JackpotRewardPayed(
  at /home/jiaming/mavs_srcs/contract@0xd1ce8888b962022365a660b17b4b6dcfa3c7ce7e.sol(442)

[33mWarning[0m for UnhandledException in contract 'SX':
    |
    |    function getFromBank(uint256 value) public onlyOwner {
  > |        msg.sender.transfer(value);
    |        require(totalWeisInGame <= address(this).balance, "Not enough balance");
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd1ce8888b962022365a660b17b4b6dcfa3c7ce7e.sol(483)

[31mViolation[0m for UnrestrictedEtherFlow in contract 'SX':
    |
    |            owner().send(adminFee);                                 // solium-disable-line security/no-send
  > |            address(nextJackpot).send(jackpotFee);                  // solium-disable-line security/no-send
    |            game.player.send(reward.sub(adminFee).sub(jackpotFee)); // solium-disable-line security/no-send
    |        }
  at /home/jiaming/mavs_srcs/contract@0xd1ce8888b962022365a660b17b4b6dcfa3c7ce7e.sol(411)

[31mViolation[0m for UnrestrictedEtherFlow in contract 'SX':
    |            owner().send(adminFee);                                 // solium-disable-line security/no-send
    |            address(nextJackpot).send(jackpotFee);                  // solium-disable-line security/no-send
  > |            game.player.send(reward.sub(adminFee).sub(jackpotFee)); // solium-disable-line security/no-send
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0xd1ce8888b962022365a660b17b4b6dcfa3c7ce7e.sol(412)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SX':
    |        finishAllGames();
    |
  > |        if (nextJackpot.shouldSelectWinner()) {
    |            nextJackpot.selectWinner();
    |            emit JackpotWinnerSelected(prevJackpots.length, nextJackpot.winnerOffset());
  at /home/jiaming/mavs_srcs/contract@0xd1ce8888b962022365a660b17b4b6dcfa3c7ce7e.sol(318)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SX':
    |
    |        if (nextJackpot.shouldSelectWinner()) {
  > |            nextJackpot.selectWinner();
    |            emit JackpotWinnerSelected(prevJackpots.length, nextJackpot.winnerOffset());
    |
  at /home/jiaming/mavs_srcs/contract@0xd1ce8888b962022365a660b17b4b6dcfa3c7ce7e.sol(319)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SX':
    |        if (nextJackpot.shouldSelectWinner()) {
    |            nextJackpot.selectWinner();
  > |            emit JackpotWinnerSelected(prevJackpots.length, nextJackpot.winnerOffset());
    |
    |            prevJackpots.push(nextJackpot);
  at /home/jiaming/mavs_srcs/contract@0xd1ce8888b962022365a660b17b4b6dcfa3c7ce7e.sol(320)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SX':
    |            combinations: combinations,
    |            answer: answer,
  > |            salt: nextJackpot.totalLength()
    |        }));
    |
  at /home/jiaming/mavs_srcs/contract@0xd1ce8888b962022365a660b17b4b6dcfa3c7ce7e.sol(367)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SX':
    |        }));
    |
  > |        (uint256 begin, uint256 end) = nextJackpot.addRange(msg.sender, msg.value);
    |        emit JackpotRangeAdded(
    |            prevJackpots.length,
  at /home/jiaming/mavs_srcs/contract@0xd1ce8888b962022365a660b17b4b6dcfa3c7ce7e.sol(370)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SX':
    |        }
    |
  > |        (uint256 end, address player) = jackpot.ranges(begin);
    |        uint256 winnerOffset = jackpot.winnerOffset();
    |        uint256 value = address(jackpot).balance;
  at /home/jiaming/mavs_srcs/contract@0xd1ce8888b962022365a660b17b4b6dcfa3c7ce7e.sol(439)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SX':
    |
    |        (uint256 end, address player) = jackpot.ranges(begin);
  > |        uint256 winnerOffset = jackpot.winnerOffset();
    |        uint256 value = address(jackpot).balance;
    |        jackpot.payJackpot(begin);
  at /home/jiaming/mavs_srcs/contract@0xd1ce8888b962022365a660b17b4b6dcfa3c7ce7e.sol(440)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SX':
    |        uint256 winnerOffset = jackpot.winnerOffset();
    |        uint256 value = address(jackpot).balance;
  > |        jackpot.payJackpot(begin);
    |        delete prevJackpots[jackpotIndex];
    |        emit JackpotRewardPayed(
  at /home/jiaming/mavs_srcs/contract@0xd1ce8888b962022365a660b17b4b6dcfa3c7ce7e.sol(442)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SX':
    |
    |    function getFromBank(uint256 value) public onlyOwner {
  > |        msg.sender.transfer(value);
    |        require(totalWeisInGame <= address(this).balance, "Not enough balance");
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd1ce8888b962022365a660b17b4b6dcfa3c7ce7e.sol(483)

[31mViolation[0m for UnrestrictedWrite in contract 'SX':
    |
    |
  > |// * DICE.SX: dice.sx (DSX) - Fair Game, Real Gain.
    |// * 
    |// *
  at /home/jiaming/mavs_srcs/contract@0xd1ce8888b962022365a660b17b4b6dcfa3c7ce7e.sol(4)

[31mViolation[0m for UnrestrictedWrite in contract 'SX':
    |            emit JackpotWinnerSelected(prevJackpots.length, nextJackpot.winnerOffset());
    |
  > |            prevJackpots.push(nextJackpot);
    |            nextJackpot = new Jackpot();
    |        }
  at /home/jiaming/mavs_srcs/contract@0xd1ce8888b962022365a660b17b4b6dcfa3c7ce7e.sol(322)

[31mViolation[0m for UnrestrictedWrite in contract 'SX':
    |
    |            prevJackpots.push(nextJackpot);
  > |            nextJackpot = new Jackpot();
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd1ce8888b962022365a660b17b4b6dcfa3c7ce7e.sol(323)

[31mViolation[0m for UnrestrictedWrite in contract 'SX':
    |            msg.value
    |        );
  > |        games.push(Game({
    |            player: msg.sender,
    |            blockNumber: blockNumber,
  at /home/jiaming/mavs_srcs/contract@0xd1ce8888b962022365a660b17b4b6dcfa3c7ce7e.sol(361)

[31mViolation[0m for UnrestrictedWrite in contract 'SX':
    |        );
    |
  > |        totalWeisInGame = totalWeisInGame.add(possibleReward);
    |        require(totalWeisInGame <= address(this).balance, "Not enough balance");
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd1ce8888b962022365a660b17b4b6dcfa3c7ce7e.sol(378)

[31mViolation[0m for UnrestrictedWrite in contract 'SX':
    |            result
    |        );
  > |        delete games[gamesFinished];
    |        totalWeisInGame = totalWeisInGame.sub(reward);
    |        gamesFinished += 1;
  at /home/jiaming/mavs_srcs/contract@0xd1ce8888b962022365a660b17b4b6dcfa3c7ce7e.sol(423)

[31mViolation[0m for UnrestrictedWrite in contract 'SX':
    |        );
    |        delete games[gamesFinished];
  > |        totalWeisInGame = totalWeisInGame.sub(reward);
    |        gamesFinished += 1;
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xd1ce8888b962022365a660b17b4b6dcfa3c7ce7e.sol(424)

[31mViolation[0m for UnrestrictedWrite in contract 'SX':
    |        delete games[gamesFinished];
    |        totalWeisInGame = totalWeisInGame.sub(reward);
  > |        gamesFinished += 1;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd1ce8888b962022365a660b17b4b6dcfa3c7ce7e.sol(425)

[31mViolation[0m for UnrestrictedWrite in contract 'SX':
    |        uint256 value = address(jackpot).balance;
    |        jackpot.payJackpot(begin);
  > |        delete prevJackpots[jackpotIndex];
    |        emit JackpotRewardPayed(
    |            jackpotIndex,
  at /home/jiaming/mavs_srcs/contract@0xd1ce8888b962022365a660b17b4b6dcfa3c7ce7e.sol(443)

[33mWarning[0m for UnrestrictedWrite in contract 'SX':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipTransferred(_owner, address(0));
  > |    _owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd1ce8888b962022365a660b17b4b6dcfa3c7ce7e.sol(139)

[33mWarning[0m for UnrestrictedWrite in contract 'SX':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(_owner, newOwner);
  > |    _owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xd1ce8888b962022365a660b17b4b6dcfa3c7ce7e.sol(157)

[33mWarning[0m for UnrestrictedWrite in contract 'SX':
    |    function setAdminFeePercent(uint256 feePercent) public onlyOwner {
    |        require(feePercent <= 2, "Should be <= 2%");
  > |        adminFeePercent = feePercent;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xd1ce8888b962022365a660b17b4b6dcfa3c7ce7e.sol(458)

[33mWarning[0m for UnrestrictedWrite in contract 'SX':
    |    function setJackpotFeePercent(uint256 feePercent) public onlyOwner {
    |        require(feePercent <= 3, "Should be <= 3%");
  > |        jackpotFeePercent = feePercent;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xd1ce8888b962022365a660b17b4b6dcfa3c7ce7e.sol(463)

[33mWarning[0m for UnrestrictedWrite in contract 'SX':
    |    function setMaxRewardPercent(uint256 value) public onlyOwner {
    |        require(value <= 100, "Should not exceed 100%");
  > |        maxRewardPercent = value;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xd1ce8888b962022365a660b17b4b6dcfa3c7ce7e.sol(468)

[33mWarning[0m for UnrestrictedWrite in contract 'SX':
    |
    |    function setMinReward(uint256 value) public onlyOwner {
  > |        minReward = value;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xd1ce8888b962022365a660b17b4b6dcfa3c7ce7e.sol(472)

[33mWarning[0m for UnrestrictedWrite in contract 'SX':
    |
    |    function setMaxReward(uint256 value) public onlyOwner {
  > |        maxReward = value;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xd1ce8888b962022365a660b17b4b6dcfa3c7ce7e.sol(476)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that revert on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xd1ce8888b962022365a660b17b4b6dcfa3c7ce7e.sol(25)


