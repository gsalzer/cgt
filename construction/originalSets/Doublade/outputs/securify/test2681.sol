Processing contract: /home/jiaming/mavs_srcs/contract@0xaf0f6a53269fc9dbbd9da9f11c368d36b7a60006.sol:Etheropt
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAO in contract 'Etheropt':
    |      if (int(amount)<=getFunds(msg.sender, true) && int(amount)>0) {
    |        accounts[accountIDs[msg.sender]].capital -= int(amount);
  > |        msg.sender.call.value(amount)();
    |        Withdraw(msg.sender, amount, accounts[accountIDs[msg.sender]].capital);
    |      }
  at /home/jiaming/mavs_srcs/contract@0xaf0f6a53269fc9dbbd9da9f11c368d36b7a60006.sol(86)

[33mWarning[0m for LockedEther in contract 'Etheropt':
    |//last compiled with soljson-v0.3.5-2016-07-21-6610add
    |
  > |contract Etheropt {
    |
    |  struct Position {
  at /home/jiaming/mavs_srcs/contract@0xaf0f6a53269fc9dbbd9da9f11c368d36b7a60006.sol(3)

[33mWarning[0m for TODAmount in contract 'Etheropt':
    |      if (int(amount)<=getFunds(msg.sender, true) && int(amount)>0) {
    |        accounts[accountIDs[msg.sender]].capital -= int(amount);
  > |        msg.sender.call.value(amount)();
    |        Withdraw(msg.sender, amount, accounts[accountIDs[msg.sender]].capital);
    |      }
  at /home/jiaming/mavs_srcs/contract@0xaf0f6a53269fc9dbbd9da9f11c368d36b7a60006.sol(86)

[33mWarning[0m for TODAmount in contract 'Etheropt':
    |              numPositionsExpired++;
    |            }
  > |            accounts[accountID].user.call.value(amountToSend)();
    |            Expire(msg.sender, accounts[accountID].user);
    |          }
  at /home/jiaming/mavs_srcs/contract@0xaf0f6a53269fc9dbbd9da9f11c368d36b7a60006.sol(196)

[33mWarning[0m for TODReceiver in contract 'Etheropt':
    |      if (int(amount)<=getFunds(msg.sender, true) && int(amount)>0) {
    |        accounts[accountIDs[msg.sender]].capital -= int(amount);
  > |        msg.sender.call.value(amount)();
    |        Withdraw(msg.sender, amount, accounts[accountIDs[msg.sender]].capital);
    |      }
  at /home/jiaming/mavs_srcs/contract@0xaf0f6a53269fc9dbbd9da9f11c368d36b7a60006.sol(86)

[31mViolation[0m for UnhandledException in contract 'Etheropt':
    |      if (int(amount)<=getFunds(msg.sender, true) && int(amount)>0) {
    |        accounts[accountIDs[msg.sender]].capital -= int(amount);
  > |        msg.sender.call.value(amount)();
    |        Withdraw(msg.sender, amount, accounts[accountIDs[msg.sender]].capital);
    |      }
  at /home/jiaming/mavs_srcs/contract@0xaf0f6a53269fc9dbbd9da9f11c368d36b7a60006.sol(86)

[31mViolation[0m for UnhandledException in contract 'Etheropt':
    |              numPositionsExpired++;
    |            }
  > |            accounts[accountID].user.call.value(amountToSend)();
    |            Expire(msg.sender, accounts[accountID].user);
    |          }
  at /home/jiaming/mavs_srcs/contract@0xaf0f6a53269fc9dbbd9da9f11c368d36b7a60006.sol(196)

[33mWarning[0m for UnhandledException in contract 'Etheropt':
    |  function expire(uint accountID, uint8 v, bytes32 r, bytes32 s, bytes32 value) {
    |    if (expired == false) {
  > |      if (ecrecover(sha3(factHash, value), v, r, s) == ethAddr) {
    |        uint lastAccount = numAccounts;
    |        if (accountID==0) {
  at /home/jiaming/mavs_srcs/contract@0xaf0f6a53269fc9dbbd9da9f11c368d36b7a60006.sol(176)

[33mWarning[0m for UnhandledException in contract 'Etheropt':
    |  function orderMatch(uint optionID, uint price, int size, uint orderID, uint blockExpires, address addr, uint8 v, bytes32 r, bytes32 s, int matchSize) {
    |    addFunds();
  > |    bytes32 hash = sha256(optionID, price, size, orderID, blockExpires);
    |    if (ecrecover(hash, v, r, s) == addr && block.number<=blockExpires && ((size>0 && matchSize<0 && orderFills[hash]-matchSize<=size) || (size<0 && matchSize>0 && orderFills[hash]-matchSize>=size)) && getFunds(addr, false)+getMaxLossAfterTrade(addr, optionID, -matchSize, matchSize * int(price))>0 && getFunds(msg.sender, false)+getMaxLossAfterTrade(msg.sender, optionID, matchSize, -matchSize * int(price))>0) {
    |      if (positions[msg.sender].hasPosition == false) {
  at /home/jiaming/mavs_srcs/contract@0xaf0f6a53269fc9dbbd9da9f11c368d36b7a60006.sol(240)

[33mWarning[0m for UnhandledException in contract 'Etheropt':
    |    addFunds();
    |    bytes32 hash = sha256(optionID, price, size, orderID, blockExpires);
  > |    if (ecrecover(hash, v, r, s) == addr && block.number<=blockExpires && ((size>0 && matchSize<0 && orderFills[hash]-matchSize<=size) || (size<0 && matchSize>0 && orderFills[hash]-matchSize>=size)) && getFunds(addr, false)+getMaxLossAfterTrade(addr, optionID, -matchSize, matchSize * int(price))>0 && getFunds(msg.sender, false)+getMaxLossAfterTrade(msg.sender, optionID, matchSize, -matchSize * int(price))>0) {
    |      if (positions[msg.sender].hasPosition == false) {
    |        positions[msg.sender].hasPosition = true;
  at /home/jiaming/mavs_srcs/contract@0xaf0f6a53269fc9dbbd9da9f11c368d36b7a60006.sol(241)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Etheropt':
    |      if (int(amount)<=getFunds(msg.sender, true) && int(amount)>0) {
    |        accounts[accountIDs[msg.sender]].capital -= int(amount);
  > |        msg.sender.call.value(amount)();
    |        Withdraw(msg.sender, amount, accounts[accountIDs[msg.sender]].capital);
    |      }
  at /home/jiaming/mavs_srcs/contract@0xaf0f6a53269fc9dbbd9da9f11c368d36b7a60006.sol(86)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Etheropt':
    |  function expire(uint accountID, uint8 v, bytes32 r, bytes32 s, bytes32 value) {
    |    if (expired == false) {
  > |      if (ecrecover(sha3(factHash, value), v, r, s) == ethAddr) {
    |        uint lastAccount = numAccounts;
    |        if (accountID==0) {
  at /home/jiaming/mavs_srcs/contract@0xaf0f6a53269fc9dbbd9da9f11c368d36b7a60006.sol(176)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Etheropt':
    |  function orderMatch(uint optionID, uint price, int size, uint orderID, uint blockExpires, address addr, uint8 v, bytes32 r, bytes32 s, int matchSize) {
    |    addFunds();
  > |    bytes32 hash = sha256(optionID, price, size, orderID, blockExpires);
    |    if (ecrecover(hash, v, r, s) == addr && block.number<=blockExpires && ((size>0 && matchSize<0 && orderFills[hash]-matchSize<=size) || (size<0 && matchSize>0 && orderFills[hash]-matchSize>=size)) && getFunds(addr, false)+getMaxLossAfterTrade(addr, optionID, -matchSize, matchSize * int(price))>0 && getFunds(msg.sender, false)+getMaxLossAfterTrade(msg.sender, optionID, matchSize, -matchSize * int(price))>0) {
    |      if (positions[msg.sender].hasPosition == false) {
  at /home/jiaming/mavs_srcs/contract@0xaf0f6a53269fc9dbbd9da9f11c368d36b7a60006.sol(240)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Etheropt':
    |    addFunds();
    |    bytes32 hash = sha256(optionID, price, size, orderID, blockExpires);
  > |    if (ecrecover(hash, v, r, s) == addr && block.number<=blockExpires && ((size>0 && matchSize<0 && orderFills[hash]-matchSize<=size) || (size<0 && matchSize>0 && orderFills[hash]-matchSize>=size)) && getFunds(addr, false)+getMaxLossAfterTrade(addr, optionID, -matchSize, matchSize * int(price))>0 && getFunds(msg.sender, false)+getMaxLossAfterTrade(msg.sender, optionID, matchSize, -matchSize * int(price))>0) {
    |      if (positions[msg.sender].hasPosition == false) {
    |        positions[msg.sender].hasPosition = true;
  at /home/jiaming/mavs_srcs/contract@0xaf0f6a53269fc9dbbd9da9f11c368d36b7a60006.sol(241)

[33mWarning[0m for UnrestrictedWrite in contract 'Etheropt':
    |//last compiled with soljson-v0.3.5-2016-07-21-6610add
    |
  > |contract Etheropt {
    |
    |  struct Position {
  at /home/jiaming/mavs_srcs/contract@0xaf0f6a53269fc9dbbd9da9f11c368d36b7a60006.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'Etheropt':
    |      accounts[accountID].user = msg.sender;
    |      accounts[accountID].capital += int(msg.value);
  > |      accountIDs[msg.sender] = accountID;
    |    }
    |    Deposit(msg.sender, msg.value, accounts[accountIDs[msg.sender]].capital);
  at /home/jiaming/mavs_srcs/contract@0xaf0f6a53269fc9dbbd9da9f11c368d36b7a60006.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'Etheropt':
    |    if (accountIDs[msg.sender]>0) {
    |      if (int(amount)<=getFunds(msg.sender, true) && int(amount)>0) {
  > |        accounts[accountIDs[msg.sender]].capital -= int(amount);
    |        msg.sender.call.value(amount)();
    |        Withdraw(msg.sender, amount, accounts[accountIDs[msg.sender]].capital);
  at /home/jiaming/mavs_srcs/contract@0xaf0f6a53269fc9dbbd9da9f11c368d36b7a60006.sol(85)

[33mWarning[0m for UnrestrictedWrite in contract 'Etheropt':
    |      uint marketMakerID = 0;
    |      if (numMarketMakers<6) {
  > |        marketMakerID = ++numMarketMakers;
    |      } else {
    |        for (uint i=2; i<=numMarketMakers; i++) {
  at /home/jiaming/mavs_srcs/contract@0xaf0f6a53269fc9dbbd9da9f11c368d36b7a60006.sol(116)

[33mWarning[0m for UnrestrictedWrite in contract 'Etheropt':
    |      }
    |      if (marketMakerID>0) {
  > |        marketMakerIDs[marketMakers[marketMakerID].user] = 0;
    |        marketMakers[marketMakerID].user = msg.sender;
    |        marketMakers[marketMakerID].server = server;
  at /home/jiaming/mavs_srcs/contract@0xaf0f6a53269fc9dbbd9da9f11c368d36b7a60006.sol(125)

[33mWarning[0m for UnrestrictedWrite in contract 'Etheropt':
    |      if (marketMakerID>0) {
    |        marketMakerIDs[marketMakers[marketMakerID].user] = 0;
  > |        marketMakers[marketMakerID].user = msg.sender;
    |        marketMakers[marketMakerID].server = server;
    |        marketMakerIDs[msg.sender] = marketMakerID;
  at /home/jiaming/mavs_srcs/contract@0xaf0f6a53269fc9dbbd9da9f11c368d36b7a60006.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'Etheropt':
    |        marketMakers[marketMakerID].user = msg.sender;
    |        marketMakers[marketMakerID].server = server;
  > |        marketMakerIDs[msg.sender] = marketMakerID;
    |        NewMarketMaker(msg.sender, server);
    |      } else {
  at /home/jiaming/mavs_srcs/contract@0xaf0f6a53269fc9dbbd9da9f11c368d36b7a60006.sol(128)

[33mWarning[0m for UnrestrictedWrite in contract 'Etheropt':
    |    if (ecrecover(hash, v, r, s) == addr && block.number<=blockExpires && ((size>0 && matchSize<0 && orderFills[hash]-matchSize<=size) || (size<0 && matchSize>0 && orderFills[hash]-matchSize>=size)) && getFunds(addr, false)+getMaxLossAfterTrade(addr, optionID, -matchSize, matchSize * int(price))>0 && getFunds(msg.sender, false)+getMaxLossAfterTrade(msg.sender, optionID, matchSize, -matchSize * int(price))>0) {
    |      if (positions[msg.sender].hasPosition == false) {
  > |        positions[msg.sender].hasPosition = true;
    |        numPositions++;
    |      }
  at /home/jiaming/mavs_srcs/contract@0xaf0f6a53269fc9dbbd9da9f11c368d36b7a60006.sol(243)

[33mWarning[0m for UnrestrictedWrite in contract 'Etheropt':
    |        numPositions++;
    |      }
  > |      positions[msg.sender].positions[optionID] += matchSize;
    |      positions[msg.sender].cash -= matchSize * int(price);
    |      positions[addr].positions[optionID] -= matchSize;
  at /home/jiaming/mavs_srcs/contract@0xaf0f6a53269fc9dbbd9da9f11c368d36b7a60006.sol(250)

[33mWarning[0m for UnrestrictedWrite in contract 'Etheropt':
    |      }
    |      positions[msg.sender].positions[optionID] += matchSize;
  > |      positions[msg.sender].cash -= matchSize * int(price);
    |      positions[addr].positions[optionID] -= matchSize;
    |      positions[addr].cash += matchSize * int(price);
  at /home/jiaming/mavs_srcs/contract@0xaf0f6a53269fc9dbbd9da9f11c368d36b7a60006.sol(251)


