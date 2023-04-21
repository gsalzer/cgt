Processing contract: /home/jiaming/mavs_srcs/contract@0xec987914ade432ce9806f418787a4ed0b0e77000.sol:DSSafeAddSub
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xec987914ade432ce9806f418787a4ed0b0e77000.sol:LuckyDice
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'DSSafeAddSub':
    |pragma solidity ^0.4.18;
    |
  > |contract DSSafeAddSub {
    |    function safeToAdd(uint a, uint b) internal returns (bool) {
    |        return (a + b >= a);
  at /home/jiaming/mavs_srcs/contract@0xec987914ade432ce9806f418787a4ed0b0e77000.sol(3)

[31mViolation[0m for DAO in contract 'LuckyDice':
    |        playerPendingWithdrawals[msg.sender] = 0;
    |        /* external call to untrusted contract */
  > |        if (msg.sender.call.value(withdrawAmount)()) {
    |            return true;
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0xec987914ade432ce9806f418787a4ed0b0e77000.sol(365)

[31mViolation[0m for DAOConstantGas in contract 'LuckyDice':
    |            jackpot = 0;
    |
  > |            if (!playerTempAddress[diceRollHash].send(jackpotTmp)) {
    |                LogJpPayment(playerBetDiceRollHash[diceRollHash], playerTempAddress[diceRollHash],
    |                    playerRollResult[diceRollHash], jackpotTmp, 1);
  at /home/jiaming/mavs_srcs/contract@0xec987914ade432ce9806f418787a4ed0b0e77000.sol(287)

[33mWarning[0m for DAOConstantGas in contract 'LuckyDice':
    |        /* safely update contract balance when sending out funds*/
    |        contractBalance = safeSub(contractBalance, amount);
  > |        if (!sendTo.send(amount)) throw;
    |        LogOwnerTransfer(sendTo, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xec987914ade432ce9806f418787a4ed0b0e77000.sol(433)

[33mWarning[0m for DAOConstantGas in contract 'LuckyDice':
    |        maxPendingPayouts = safeSub(maxPendingPayouts, originalPlayerProfit);
    |        /* send refund */
  > |        if (!sendTo.send(originalPlayerBetValue)) throw;
    |        /* log refunds */
    |        LogRefund(diceRollHash, sendTo, originalPlayerBetValue);
  at /home/jiaming/mavs_srcs/contract@0xec987914ade432ce9806f418787a4ed0b0e77000.sol(450)

[33mWarning[0m for LockedEther in contract 'LuckyDice':
    |
    |
  > |contract LuckyDice is DSSafeAddSub {
    |
    |    /*
  at /home/jiaming/mavs_srcs/contract@0xec987914ade432ce9806f418787a4ed0b0e77000.sol(24)

[31mViolation[0m for TODAmount in contract 'LuckyDice':
    |            jackpot = 0;
    |
  > |            if (!playerTempAddress[diceRollHash].send(jackpotTmp)) {
    |                LogJpPayment(playerBetDiceRollHash[diceRollHash], playerTempAddress[diceRollHash],
    |                    playerRollResult[diceRollHash], jackpotTmp, 1);
  at /home/jiaming/mavs_srcs/contract@0xec987914ade432ce9806f418787a4ed0b0e77000.sol(287)

[33mWarning[0m for TODAmount in contract 'LuckyDice':
    |        /* safely update contract balance when sending out funds*/
    |        contractBalance = safeSub(contractBalance, amount);
  > |        if (!sendTo.send(amount)) throw;
    |        LogOwnerTransfer(sendTo, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xec987914ade432ce9806f418787a4ed0b0e77000.sol(433)

[33mWarning[0m for TODAmount in contract 'LuckyDice':
    |        maxPendingPayouts = safeSub(maxPendingPayouts, originalPlayerProfit);
    |        /* send refund */
  > |        if (!sendTo.send(originalPlayerBetValue)) throw;
    |        /* log refunds */
    |        LogRefund(diceRollHash, sendTo, originalPlayerBetValue);
  at /home/jiaming/mavs_srcs/contract@0xec987914ade432ce9806f418787a4ed0b0e77000.sol(450)

[33mWarning[0m for TODReceiver in contract 'LuckyDice':
    |        playerPendingWithdrawals[msg.sender] = 0;
    |        /* external call to untrusted contract */
  > |        if (msg.sender.call.value(withdrawAmount)()) {
    |            return true;
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0xec987914ade432ce9806f418787a4ed0b0e77000.sol(365)

[33mWarning[0m for TODReceiver in contract 'LuckyDice':
    |        /* safely update contract balance when sending out funds*/
    |        contractBalance = safeSub(contractBalance, amount);
  > |        if (!sendTo.send(amount)) throw;
    |        LogOwnerTransfer(sendTo, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xec987914ade432ce9806f418787a4ed0b0e77000.sol(433)

[33mWarning[0m for TODReceiver in contract 'LuckyDice':
    |        maxPendingPayouts = safeSub(maxPendingPayouts, originalPlayerProfit);
    |        /* send refund */
  > |        if (!sendTo.send(originalPlayerBetValue)) throw;
    |        /* log refunds */
    |        LogRefund(diceRollHash, sendTo, originalPlayerBetValue);
  at /home/jiaming/mavs_srcs/contract@0xec987914ade432ce9806f418787a4ed0b0e77000.sol(450)

[33mWarning[0m for UnhandledException in contract 'LuckyDice':
    |
    |        /* checks bet sign */
  > |        tempBetHash = sha256(diceRollHash, byte(minRollLimit), byte(maxRollLimit), msg.sender);
    |        if (casino != ecrecover(tempBetHash, v, r, s)) throw;
    |
  at /home/jiaming/mavs_srcs/contract@0xec987914ade432ce9806f418787a4ed0b0e77000.sol(178)

[33mWarning[0m for UnhandledException in contract 'LuckyDice':
    |        /* checks bet sign */
    |        tempBetHash = sha256(diceRollHash, byte(minRollLimit), byte(maxRollLimit), msg.sender);
  > |        if (casino != ecrecover(tempBetHash, v, r, s)) throw;
    |
    |        tempFullprofit = getFullProfit(msg.value, minRollLimit, maxRollLimit);
  at /home/jiaming/mavs_srcs/contract@0xec987914ade432ce9806f418787a4ed0b0e77000.sol(179)

[33mWarning[0m for UnhandledException in contract 'LuckyDice':
    |
    |        /* checks hash */
  > |        bytes32 hash = sha256(rollResult, salt);
    |        if (diceRollHash != hash) throw;
    |
  at /home/jiaming/mavs_srcs/contract@0xec987914ade432ce9806f418787a4ed0b0e77000.sol(237)

[33mWarning[0m for UnhandledException in contract 'LuckyDice':
    |            jackpot = 0;
    |
  > |            if (!playerTempAddress[diceRollHash].send(jackpotTmp)) {
    |                LogJpPayment(playerBetDiceRollHash[diceRollHash], playerTempAddress[diceRollHash],
    |                    playerRollResult[diceRollHash], jackpotTmp, 1);
  at /home/jiaming/mavs_srcs/contract@0xec987914ade432ce9806f418787a4ed0b0e77000.sol(287)

[33mWarning[0m for UnhandledException in contract 'LuckyDice':
    |            * for withdrawal later via playerWithdrawPendingTransactions
    |            */
  > |            if (!playerTempAddress[diceRollHash].send(playerTempReward[diceRollHash])) {
    |                LogResult(playerBetDiceRollHash[diceRollHash], playerTempAddress[diceRollHash],
    |                    playerMinRollLimit[diceRollHash], playerMaxRollLimit[diceRollHash], playerRollResult[diceRollHash],
  at /home/jiaming/mavs_srcs/contract@0xec987914ade432ce9806f418787a4ed0b0e77000.sol(322)

[33mWarning[0m for UnhandledException in contract 'LuckyDice':
    |        playerPendingWithdrawals[msg.sender] = 0;
    |        /* external call to untrusted contract */
  > |        if (msg.sender.call.value(withdrawAmount)()) {
    |            return true;
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0xec987914ade432ce9806f418787a4ed0b0e77000.sol(365)

[33mWarning[0m for UnhandledException in contract 'LuckyDice':
    |        /* safely update contract balance when sending out funds*/
    |        contractBalance = safeSub(contractBalance, amount);
  > |        if (!sendTo.send(amount)) throw;
    |        LogOwnerTransfer(sendTo, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xec987914ade432ce9806f418787a4ed0b0e77000.sol(433)

[33mWarning[0m for UnhandledException in contract 'LuckyDice':
    |        maxPendingPayouts = safeSub(maxPendingPayouts, originalPlayerProfit);
    |        /* send refund */
  > |        if (!sendTo.send(originalPlayerBetValue)) throw;
    |        /* log refunds */
    |        LogRefund(diceRollHash, sendTo, originalPlayerBetValue);
  at /home/jiaming/mavs_srcs/contract@0xec987914ade432ce9806f418787a4ed0b0e77000.sol(450)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LuckyDice':
    |
    |        /* checks bet sign */
  > |        tempBetHash = sha256(diceRollHash, byte(minRollLimit), byte(maxRollLimit), msg.sender);
    |        if (casino != ecrecover(tempBetHash, v, r, s)) throw;
    |
  at /home/jiaming/mavs_srcs/contract@0xec987914ade432ce9806f418787a4ed0b0e77000.sol(178)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LuckyDice':
    |        /* checks bet sign */
    |        tempBetHash = sha256(diceRollHash, byte(minRollLimit), byte(maxRollLimit), msg.sender);
  > |        if (casino != ecrecover(tempBetHash, v, r, s)) throw;
    |
    |        tempFullprofit = getFullProfit(msg.value, minRollLimit, maxRollLimit);
  at /home/jiaming/mavs_srcs/contract@0xec987914ade432ce9806f418787a4ed0b0e77000.sol(179)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LuckyDice':
    |
    |        /* checks hash */
  > |        bytes32 hash = sha256(rollResult, salt);
    |        if (diceRollHash != hash) throw;
    |
  at /home/jiaming/mavs_srcs/contract@0xec987914ade432ce9806f418787a4ed0b0e77000.sol(237)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LuckyDice':
    |        /* safely update contract balance when sending out funds*/
    |        contractBalance = safeSub(contractBalance, amount);
  > |        if (!sendTo.send(amount)) throw;
    |        LogOwnerTransfer(sendTo, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xec987914ade432ce9806f418787a4ed0b0e77000.sol(433)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LuckyDice':
    |        maxPendingPayouts = safeSub(maxPendingPayouts, originalPlayerProfit);
    |        /* send refund */
  > |        if (!sendTo.send(originalPlayerBetValue)) throw;
    |        /* log refunds */
    |        LogRefund(diceRollHash, sendTo, originalPlayerBetValue);
  at /home/jiaming/mavs_srcs/contract@0xec987914ade432ce9806f418787a4ed0b0e77000.sol(450)

[31mViolation[0m for UnrestrictedWrite in contract 'LuckyDice':
    |
    |        /* checks bet sign */
  > |        tempBetHash = sha256(diceRollHash, byte(minRollLimit), byte(maxRollLimit), msg.sender);
    |        if (casino != ecrecover(tempBetHash, v, r, s)) throw;
    |
  at /home/jiaming/mavs_srcs/contract@0xec987914ade432ce9806f418787a4ed0b0e77000.sol(178)

[31mViolation[0m for UnrestrictedWrite in contract 'LuckyDice':
    |
    |        /* get the playerAddress for this query id */
  > |        playerTempAddress[diceRollHash] = playerAddress[diceRollHash];
    |        /* delete playerAddress for this query id */
    |        delete playerAddress[diceRollHash];
  at /home/jiaming/mavs_srcs/contract@0xec987914ade432ce9806f418787a4ed0b0e77000.sol(241)

[31mViolation[0m for UnrestrictedWrite in contract 'LuckyDice':
    |        playerTempAddress[diceRollHash] = playerAddress[diceRollHash];
    |        /* delete playerAddress for this query id */
  > |        delete playerAddress[diceRollHash];
    |
    |        /* map the playerProfit for this query id */
  at /home/jiaming/mavs_srcs/contract@0xec987914ade432ce9806f418787a4ed0b0e77000.sol(243)

[31mViolation[0m for UnrestrictedWrite in contract 'LuckyDice':
    |
    |        /* map the playerProfit for this query id */
  > |        playerTempReward[diceRollHash] = playerProfit[diceRollHash];
    |        /* set  playerProfit for this query id to 0 */
    |        playerProfit[diceRollHash] = 0;
  at /home/jiaming/mavs_srcs/contract@0xec987914ade432ce9806f418787a4ed0b0e77000.sol(246)

[31mViolation[0m for UnrestrictedWrite in contract 'LuckyDice':
    |        playerTempReward[diceRollHash] = playerProfit[diceRollHash];
    |        /* set  playerProfit for this query id to 0 */
  > |        playerProfit[diceRollHash] = 0;
    |
    |        /* safely reduce maxPendingPayouts liability */
  at /home/jiaming/mavs_srcs/contract@0xec987914ade432ce9806f418787a4ed0b0e77000.sol(248)

[33mWarning[0m for UnrestrictedWrite in contract 'LuckyDice':
    |
    |
  > |contract LuckyDice is DSSafeAddSub {
    |
    |    /*
  at /home/jiaming/mavs_srcs/contract@0xec987914ade432ce9806f418787a4ed0b0e77000.sol(24)

[33mWarning[0m for UnrestrictedWrite in contract 'LuckyDice':
    |        if (casino != ecrecover(tempBetHash, v, r, s)) throw;
    |
  > |        tempFullprofit = getFullProfit(msg.value, minRollLimit, maxRollLimit);
    |        playerProfit[diceRollHash] = getProfit(msg.value, tempFullprofit);
    |        if (playerProfit[diceRollHash] > maxProfit)
  at /home/jiaming/mavs_srcs/contract@0xec987914ade432ce9806f418787a4ed0b0e77000.sol(181)

[33mWarning[0m for UnrestrictedWrite in contract 'LuckyDice':
    |
    |        tempFullprofit = getFullProfit(msg.value, minRollLimit, maxRollLimit);
  > |        playerProfit[diceRollHash] = getProfit(msg.value, tempFullprofit);
    |        if (playerProfit[diceRollHash] > maxProfit)
    |            throw;
  at /home/jiaming/mavs_srcs/contract@0xec987914ade432ce9806f418787a4ed0b0e77000.sol(182)

[33mWarning[0m for UnrestrictedWrite in contract 'LuckyDice':
    |            throw;
    |
  > |        playerToJackpot[diceRollHash] = getToJackpot(msg.value);
    |        jackpot = safeAdd(jackpot, playerToJackpot[diceRollHash]);
    |        contractBalance = safeSub(contractBalance, playerToJackpot[diceRollHash]);
  at /home/jiaming/mavs_srcs/contract@0xec987914ade432ce9806f418787a4ed0b0e77000.sol(186)

[33mWarning[0m for UnrestrictedWrite in contract 'LuckyDice':
    |
    |        playerToJackpot[diceRollHash] = getToJackpot(msg.value);
  > |        jackpot = safeAdd(jackpot, playerToJackpot[diceRollHash]);
    |        contractBalance = safeSub(contractBalance, playerToJackpot[diceRollHash]);
    |
  at /home/jiaming/mavs_srcs/contract@0xec987914ade432ce9806f418787a4ed0b0e77000.sol(187)

[33mWarning[0m for UnrestrictedWrite in contract 'LuckyDice':
    |        playerToJackpot[diceRollHash] = getToJackpot(msg.value);
    |        jackpot = safeAdd(jackpot, playerToJackpot[diceRollHash]);
  > |        contractBalance = safeSub(contractBalance, playerToJackpot[diceRollHash]);
    |
    |        /* map bet id to serverSeedHash */
  at /home/jiaming/mavs_srcs/contract@0xec987914ade432ce9806f418787a4ed0b0e77000.sol(188)

[33mWarning[0m for UnrestrictedWrite in contract 'LuckyDice':
    |
    |        /* map bet id to serverSeedHash */
  > |        playerBetDiceRollHash[diceRollHash] = diceRollHash;
    |        /* map player limit to serverSeedHash */
    |        playerMinRollLimit[diceRollHash] = minRollLimit;
  at /home/jiaming/mavs_srcs/contract@0xec987914ade432ce9806f418787a4ed0b0e77000.sol(191)

[33mWarning[0m for UnrestrictedWrite in contract 'LuckyDice':
    |        playerBetDiceRollHash[diceRollHash] = diceRollHash;
    |        /* map player limit to serverSeedHash */
  > |        playerMinRollLimit[diceRollHash] = minRollLimit;
    |        playerMaxRollLimit[diceRollHash] = maxRollLimit;
    |        /* map value of wager to serverSeedHash */
  at /home/jiaming/mavs_srcs/contract@0xec987914ade432ce9806f418787a4ed0b0e77000.sol(193)

[33mWarning[0m for UnrestrictedWrite in contract 'LuckyDice':
    |        /* map player limit to serverSeedHash */
    |        playerMinRollLimit[diceRollHash] = minRollLimit;
  > |        playerMaxRollLimit[diceRollHash] = maxRollLimit;
    |        /* map value of wager to serverSeedHash */
    |        playerBetValue[diceRollHash] = msg.value;
  at /home/jiaming/mavs_srcs/contract@0xec987914ade432ce9806f418787a4ed0b0e77000.sol(194)

[33mWarning[0m for UnrestrictedWrite in contract 'LuckyDice':
    |        playerMaxRollLimit[diceRollHash] = maxRollLimit;
    |        /* map value of wager to serverSeedHash */
  > |        playerBetValue[diceRollHash] = msg.value;
    |        /* map player address to serverSeedHash */
    |        playerAddress[diceRollHash] = msg.sender;
  at /home/jiaming/mavs_srcs/contract@0xec987914ade432ce9806f418787a4ed0b0e77000.sol(196)

[33mWarning[0m for UnrestrictedWrite in contract 'LuckyDice':
    |        playerBetValue[diceRollHash] = msg.value;
    |        /* map player address to serverSeedHash */
  > |        playerAddress[diceRollHash] = msg.sender;
    |        /* safely increase maxPendingPayouts liability - calc all pending payouts under assumption they win */
    |        maxPendingPayouts = safeAdd(maxPendingPayouts, playerProfit[diceRollHash]);
  at /home/jiaming/mavs_srcs/contract@0xec987914ade432ce9806f418787a4ed0b0e77000.sol(198)

[33mWarning[0m for UnrestrictedWrite in contract 'LuckyDice':
    |        playerAddress[diceRollHash] = msg.sender;
    |        /* safely increase maxPendingPayouts liability - calc all pending payouts under assumption they win */
  > |        maxPendingPayouts = safeAdd(maxPendingPayouts, playerProfit[diceRollHash]);
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xec987914ade432ce9806f418787a4ed0b0e77000.sol(200)

[33mWarning[0m for UnrestrictedWrite in contract 'LuckyDice':
    |
    |        /* safely reduce maxPendingPayouts liability */
  > |        maxPendingPayouts = safeSub(maxPendingPayouts, playerTempReward[diceRollHash]);
    |
    |        /* map the playerBetValue for this query id */
  at /home/jiaming/mavs_srcs/contract@0xec987914ade432ce9806f418787a4ed0b0e77000.sol(251)

[33mWarning[0m for UnrestrictedWrite in contract 'LuckyDice':
    |
    |        /* map the playerBetValue for this query id */
  > |        playerTempBetValue[diceRollHash] = playerBetValue[diceRollHash];
    |        /* set  playerBetValue for this query id to 0 */
    |        playerBetValue[diceRollHash] = 0;
  at /home/jiaming/mavs_srcs/contract@0xec987914ade432ce9806f418787a4ed0b0e77000.sol(254)

[33mWarning[0m for UnrestrictedWrite in contract 'LuckyDice':
    |        playerTempBetValue[diceRollHash] = playerBetValue[diceRollHash];
    |        /* set  playerBetValue for this query id to 0 */
  > |        playerBetValue[diceRollHash] = 0;
    |
    |        /* total number of bets */
  at /home/jiaming/mavs_srcs/contract@0xec987914ade432ce9806f418787a4ed0b0e77000.sol(256)

[33mWarning[0m for UnrestrictedWrite in contract 'LuckyDice':
    |
    |        /* total number of bets */
  > |        totalBets += 1;
    |
    |        /* total wagered */
  at /home/jiaming/mavs_srcs/contract@0xec987914ade432ce9806f418787a4ed0b0e77000.sol(259)

[33mWarning[0m for UnrestrictedWrite in contract 'LuckyDice':
    |
    |        /* total wagered */
  > |        totalWeiWagered += playerTempBetValue[diceRollHash];
    |
    |        tempDiceSum = 0;
  at /home/jiaming/mavs_srcs/contract@0xec987914ade432ce9806f418787a4ed0b0e77000.sol(262)

[33mWarning[0m for UnrestrictedWrite in contract 'LuckyDice':
    |        totalWeiWagered += playerTempBetValue[diceRollHash];
    |
  > |        tempDiceSum = 0;
    |        tempJpCounter = 0;
    |        tempRollResult = bytes(rollResult);
  at /home/jiaming/mavs_srcs/contract@0xec987914ade432ce9806f418787a4ed0b0e77000.sol(264)

[33mWarning[0m for UnrestrictedWrite in contract 'LuckyDice':
    |
    |        tempDiceSum = 0;
  > |        tempJpCounter = 0;
    |        tempRollResult = bytes(rollResult);
    |        for (uint i = 0; i < 5; i++) {
  at /home/jiaming/mavs_srcs/contract@0xec987914ade432ce9806f418787a4ed0b0e77000.sol(265)

[33mWarning[0m for UnrestrictedWrite in contract 'LuckyDice':
    |
    |                /* if send failed let player withdraw via playerWithdrawPendingTransactions */
  > |                playerPendingWithdrawals[playerTempAddress[diceRollHash]] =
    |                safeAdd(playerPendingWithdrawals[playerTempAddress[diceRollHash]], jackpotTmp);
    |            }
  at /home/jiaming/mavs_srcs/contract@0xec987914ade432ce9806f418787a4ed0b0e77000.sol(292)

[33mWarning[0m for UnrestrictedWrite in contract 'LuckyDice':
    |        if (playerMinRollLimit[diceRollHash] < tempDiceSum && tempDiceSum < playerMaxRollLimit[diceRollHash]) {
    |            /* safely reduce contract balance by player profit */
  > |            contractBalance = safeSub(contractBalance, playerTempReward[diceRollHash]);
    |
    |            /* update total wei won */
  at /home/jiaming/mavs_srcs/contract@0xec987914ade432ce9806f418787a4ed0b0e77000.sol(305)

[33mWarning[0m for UnrestrictedWrite in contract 'LuckyDice':
    |
    |            /* update total wei won */
  > |            totalWeiWon = safeAdd(totalWeiWon, playerTempReward[diceRollHash]);
    |
    |            /* safely calculate payout via profit plus original wager */
  at /home/jiaming/mavs_srcs/contract@0xec987914ade432ce9806f418787a4ed0b0e77000.sol(308)

[33mWarning[0m for UnrestrictedWrite in contract 'LuckyDice':
    |
    |            /* safely calculate payout via profit plus original wager */
  > |            playerTempReward[diceRollHash] = safeAdd(playerTempReward[diceRollHash], playerTempBetValue[diceRollHash]);
    |
    |            LogResult(playerBetDiceRollHash[diceRollHash], playerTempAddress[diceRollHash],
  at /home/jiaming/mavs_srcs/contract@0xec987914ade432ce9806f418787a4ed0b0e77000.sol(311)

[33mWarning[0m for UnrestrictedWrite in contract 'LuckyDice':
    |
    |                /* if send failed let player withdraw via playerWithdrawPendingTransactions */
  > |                playerPendingWithdrawals[playerTempAddress[diceRollHash]] =
    |                safeAdd(playerPendingWithdrawals[playerTempAddress[diceRollHash]], playerTempReward[diceRollHash]);
    |            }
  at /home/jiaming/mavs_srcs/contract@0xec987914ade432ce9806f418787a4ed0b0e77000.sol(328)

[33mWarning[0m for UnrestrictedWrite in contract 'LuckyDice':
    |            *  safe adjust contractBalance
    |            */
  > |            contractBalance = safeAdd(contractBalance, (playerTempBetValue[diceRollHash]));
    |
    |            return;
  at /home/jiaming/mavs_srcs/contract@0xec987914ade432ce9806f418787a4ed0b0e77000.sol(347)

[33mWarning[0m for UnrestrictedWrite in contract 'LuckyDice':
    |    {
    |        uint withdrawAmount = playerPendingWithdrawals[msg.sender];
  > |        playerPendingWithdrawals[msg.sender] = 0;
    |        /* external call to untrusted contract */
    |        if (msg.sender.call.value(withdrawAmount)()) {
  at /home/jiaming/mavs_srcs/contract@0xec987914ade432ce9806f418787a4ed0b0e77000.sol(363)

[33mWarning[0m for UnrestrictedWrite in contract 'LuckyDice':
    |            /* if send failed revert playerPendingWithdrawals[msg.sender] = 0; */
    |            /* player can try to withdraw again later */
  > |            playerPendingWithdrawals[msg.sender] = withdrawAmount;
    |            return false;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xec987914ade432ce9806f418787a4ed0b0e77000.sol(370)

[33mWarning[0m for UnrestrictedWrite in contract 'LuckyDice':
    |    {
    |        /* safely update contract balance */
  > |        contractBalance = safeAdd(contractBalance, msg.value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xec987914ade432ce9806f418787a4ed0b0e77000.sol(388)

[33mWarning[0m for UnrestrictedWrite in contract 'LuckyDice':
    |    {
    |        /* safely update contract balance when sending out funds*/
  > |        contractBalance = safeSub(contractBalance, amount);
    |        if (!sendTo.send(amount)) throw;
    |        LogOwnerTransfer(sendTo, amount);
  at /home/jiaming/mavs_srcs/contract@0xec987914ade432ce9806f418787a4ed0b0e77000.sol(432)

[33mWarning[0m for UnrestrictedWrite in contract 'LuckyDice':
    |    {
    |        /* safely reduce pendingPayouts by playerProfit[rngId] */
  > |        maxPendingPayouts = safeSub(maxPendingPayouts, originalPlayerProfit);
    |        /* send refund */
    |        if (!sendTo.send(originalPlayerBetValue)) throw;
  at /home/jiaming/mavs_srcs/contract@0xec987914ade432ce9806f418787a4ed0b0e77000.sol(448)

[33mWarning[0m for UnrestrictedWrite in contract 'LuckyDice':
    |    onlyOwner
    |    {
  > |        contractBalance = newContractBalanceInWei;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xec987914ade432ce9806f418787a4ed0b0e77000.sol(396)

[33mWarning[0m for UnrestrictedWrite in contract 'LuckyDice':
    |    onlyOwner
    |    {
  > |        houseEdge = newHouseEdge;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xec987914ade432ce9806f418787a4ed0b0e77000.sol(403)

[33mWarning[0m for UnrestrictedWrite in contract 'LuckyDice':
    |    onlyOwner
    |    {
  > |        maxProfit = newMaxProfit;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xec987914ade432ce9806f418787a4ed0b0e77000.sol(410)

[33mWarning[0m for UnrestrictedWrite in contract 'LuckyDice':
    |    onlyOwner
    |    {
  > |        minBet = newMinimumBet;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xec987914ade432ce9806f418787a4ed0b0e77000.sol(417)

[33mWarning[0m for UnrestrictedWrite in contract 'LuckyDice':
    |    onlyOwner
    |    {
  > |        jpMinBet = newJpMinBet;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xec987914ade432ce9806f418787a4ed0b0e77000.sol(424)

[33mWarning[0m for UnrestrictedWrite in contract 'LuckyDice':
    |    onlyOwner
    |    {
  > |        gamePaused = newStatus;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xec987914ade432ce9806f418787a4ed0b0e77000.sol(459)

[33mWarning[0m for UnrestrictedWrite in contract 'LuckyDice':
    |    onlyOwner
    |    {
  > |        payoutsPaused = newPayoutStatus;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xec987914ade432ce9806f418787a4ed0b0e77000.sol(466)

[33mWarning[0m for UnrestrictedWrite in contract 'LuckyDice':
    |    onlyOwner
    |    {
  > |        casino = newCasino;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xec987914ade432ce9806f418787a4ed0b0e77000.sol(473)

[33mWarning[0m for UnrestrictedWrite in contract 'LuckyDice':
    |    onlyOwner
    |    {
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xec987914ade432ce9806f418787a4ed0b0e77000.sol(480)


