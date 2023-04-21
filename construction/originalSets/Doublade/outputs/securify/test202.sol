Processing contract: /home/jiaming/mavs_srcs/contract@0x0dc568fc30eb731b6551848382e53bdf2c47a230.sol:CryptoBetOn
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for DAOConstantGas in contract 'CryptoBetOn':
    |        uint amount = 0;
    |        for (uint index = 0; index < gamers.length; index++) {
  > |            if (!gamers[index].wallet.send(gamers[index].amount)) {
    |                amount += gamers[index].amount;
    |            }
  at /home/jiaming/mavs_srcs/contract@0x0dc568fc30eb731b6551848382e53bdf2c47a230.sol(169)

[31mViolation[0m for DAOConstantGas in contract 'CryptoBetOn':
    |        for (uint index = 0; index < gamers.length; index += 1) {
    |            uint winAmount = gamers[index].amount + ((gamers[index].amount * losePot) / winPot);
  > |            if (!gamers[index].wallet.send(winAmount)) {
    |                fallbackAmount += winAmount;
    |            }
  at /home/jiaming/mavs_srcs/contract@0x0dc568fc30eb731b6551848382e53bdf2c47a230.sol(245)

[33mWarning[0m for DAOConstantGas in contract 'CryptoBetOn':
    |         require(this.balance > _amount);
    |         // send cash
  > |         if (_receiver.send(_amount)) {
    |             // confirm
    |             CashSaved(_amount);
  at /home/jiaming/mavs_srcs/contract@0x0dc568fc30eb731b6551848382e53bdf2c47a230.sol(318)

[33mWarning[0m for LockedEther in contract 'CryptoBetOn':
    | * Cryptobeton is a multi-functional platform for working with SmartContract, allowing you to make bets, watch matches and news from the world of cybersport. Staying with us you will be next to the tournaments on CS GO, DOTA2, LOL
    | */
  > |contract CryptoBetOn {
    |
    |    struct Gamer {
  at /home/jiaming/mavs_srcs/contract@0x0dc568fc30eb731b6551848382e53bdf2c47a230.sol(7)

[33mWarning[0m for TODAmount in contract 'CryptoBetOn':
    |         require(this.balance > _amount);
    |         // send cash
  > |         if (_receiver.send(_amount)) {
    |             // confirm
    |             CashSaved(_amount);
  at /home/jiaming/mavs_srcs/contract@0x0dc568fc30eb731b6551848382e53bdf2c47a230.sol(318)

[31mViolation[0m for TODReceiver in contract 'CryptoBetOn':
    |        // pay housecut & reset for next bet
    |        if (collectedFees > 0) {
  > |            if (!owner.send(collectedFees)) {
    |                TxMessage(_matchId, TX_N16, collectedFees);
    |                   // There is a manual way of withdrawing money!
  at /home/jiaming/mavs_srcs/contract@0x0dc568fc30eb731b6551848382e53bdf2c47a230.sol(255)

[31mViolation[0m for TODReceiver in contract 'CryptoBetOn':
    |        }
    |        if (fallbackAmount > 0) {
  > |            if (owner.send(fallbackAmount)) {
    |                TxMessage(_matchId, TX_N17, fallbackAmount);
    |            } else {
  at /home/jiaming/mavs_srcs/contract@0x0dc568fc30eb731b6551848382e53bdf2c47a230.sol(261)

[33mWarning[0m for TODReceiver in contract 'CryptoBetOn':
    |         require(this.balance > _amount);
    |         // send cash
  > |         if (_receiver.send(_amount)) {
    |             // confirm
    |             CashSaved(_amount);
  at /home/jiaming/mavs_srcs/contract@0x0dc568fc30eb731b6551848382e53bdf2c47a230.sol(318)

[33mWarning[0m for UnhandledException in contract 'CryptoBetOn':
    |        uint amount = 0;
    |        for (uint index = 0; index < gamers.length; index++) {
  > |            if (!gamers[index].wallet.send(gamers[index].amount)) {
    |                amount += gamers[index].amount;
    |            }
  at /home/jiaming/mavs_srcs/contract@0x0dc568fc30eb731b6551848382e53bdf2c47a230.sol(169)

[33mWarning[0m for UnhandledException in contract 'CryptoBetOn':
    |        for (uint index = 0; index < gamers.length; index += 1) {
    |            uint winAmount = gamers[index].amount + ((gamers[index].amount * losePot) / winPot);
  > |            if (!gamers[index].wallet.send(winAmount)) {
    |                fallbackAmount += winAmount;
    |            }
  at /home/jiaming/mavs_srcs/contract@0x0dc568fc30eb731b6551848382e53bdf2c47a230.sol(245)

[33mWarning[0m for UnhandledException in contract 'CryptoBetOn':
    |        // pay housecut & reset for next bet
    |        if (collectedFees > 0) {
  > |            if (!owner.send(collectedFees)) {
    |                TxMessage(_matchId, TX_N16, collectedFees);
    |                   // There is a manual way of withdrawing money!
  at /home/jiaming/mavs_srcs/contract@0x0dc568fc30eb731b6551848382e53bdf2c47a230.sol(255)

[33mWarning[0m for UnhandledException in contract 'CryptoBetOn':
    |        }
    |        if (fallbackAmount > 0) {
  > |            if (owner.send(fallbackAmount)) {
    |                TxMessage(_matchId, TX_N17, fallbackAmount);
    |            } else {
  at /home/jiaming/mavs_srcs/contract@0x0dc568fc30eb731b6551848382e53bdf2c47a230.sol(261)

[33mWarning[0m for UnhandledException in contract 'CryptoBetOn':
    |         require(this.balance > _amount);
    |         // send cash
  > |         if (_receiver.send(_amount)) {
    |             // confirm
    |             CashSaved(_amount);
  at /home/jiaming/mavs_srcs/contract@0x0dc568fc30eb731b6551848382e53bdf2c47a230.sol(318)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CryptoBetOn':
    |         require(this.balance > _amount);
    |         // send cash
  > |         if (_receiver.send(_amount)) {
    |             // confirm
    |             CashSaved(_amount);
  at /home/jiaming/mavs_srcs/contract@0x0dc568fc30eb731b6551848382e53bdf2c47a230.sol(318)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoBetOn':
    | * Cryptobeton is a multi-functional platform for working with SmartContract, allowing you to make bets, watch matches and news from the world of cybersport. Staying with us you will be next to the tournaments on CS GO, DOTA2, LOL
    | */
  > |contract CryptoBetOn {
    |
    |    struct Gamer {
  at /home/jiaming/mavs_srcs/contract@0x0dc568fc30eb731b6551848382e53bdf2c47a230.sol(7)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoBetOn':
    |            return;
    |        }
  > |        houseEdge = _houseEdge;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x0dc568fc30eb731b6551848382e53bdf2c47a230.sol(107)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoBetOn':
    |
    |    function betsOff(uint _matchId) onlyowner hasmatch(_matchId) returns (bool) {
  > |        matchesMap[_matchId].bets = false;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0dc568fc30eb731b6551848382e53bdf2c47a230.sol(162)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoBetOn':
    |        address jackpotWinner = 0;
    |        uint tmpJackpotAmount = jackpotAmount;
  > |        jackpotAmount = 0;
    |        for (uint pos = 0; pos < gamers.length; pos += 1) {
    |            if (gamers[pos].amount > tmpAmount) {
  at /home/jiaming/mavs_srcs/contract@0x0dc568fc30eb731b6551848382e53bdf2c47a230.sol(194)


