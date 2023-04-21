Processing contract: /home/jiaming/mavs_srcs/contract@0x36b14bae0989f65f80892b99a55378d3e1a80c81.sol:AbstractBlockjackLogs
Processing contract: /home/jiaming/mavs_srcs/contract@0x36b14bae0989f65f80892b99a55378d3e1a80c81.sol:ArrayLib
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x36b14bae0989f65f80892b99a55378d3e1a80c81.sol:Blockjack
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x36b14bae0989f65f80892b99a55378d3e1a80c81.sol:DeckLib
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x36b14bae0989f65f80892b99a55378d3e1a80c81.sol:GameLib
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for LockedEther in contract 'ArrayLib':
  > |library ArrayLib {
    |  // Inserts to keep array sorted (assumes input array is sorted)
    |	function insertInPlace(uint8[] storage self, uint8 n) {
  at /home/jiaming/mavs_srcs/contract@0x36b14bae0989f65f80892b99a55378d3e1a80c81.sol(1)

[31mViolation[0m for UnrestrictedWrite in contract 'ArrayLib':
  > |library ArrayLib {
    |  // Inserts to keep array sorted (assumes input array is sorted)
    |	function insertInPlace(uint8[] storage self, uint8 n) {
  at /home/jiaming/mavs_srcs/contract@0x36b14bae0989f65f80892b99a55378d3e1a80c81.sol(1)

[31mViolation[0m for UnrestrictedWrite in contract 'ArrayLib':
    |		self.length += 1;
    |		for (uint8 i = uint8(self.length) - 1; i > insertingIndex; i--) {
  > |			self[i] = self[i - 1];
    |		}
    |
  at /home/jiaming/mavs_srcs/contract@0x36b14bae0989f65f80892b99a55378d3e1a80c81.sol(12)

[31mViolation[0m for UnrestrictedWrite in contract 'ArrayLib':
    |		}
    |
  > |		self[insertingIndex] = n;
    |	}
    |}
  at /home/jiaming/mavs_srcs/contract@0x36b14bae0989f65f80892b99a55378d3e1a80c81.sol(15)

[31mViolation[0m for DAO in contract 'Blockjack':
    |
    |    uint256 profit = currentBankroll - initialBankroll;
  > |    if (!ADMIN_CONTRACT.call.value(profit)()) throw;
    |    currentBankroll -= profit;
    |
  at /home/jiaming/mavs_srcs/contract@0x36b14bae0989f65f80892b99a55378d3e1a80c81.sol(573)

[33mWarning[0m for DAO in contract 'Blockjack':
    |
    |    if (currentBankroll > initialBankroll) { // there are profits, share them
  > |      if (!ADMIN_CONTRACT.call.value(currentBankroll - initialBankroll)()) throw;
    |    }
    |    suicide(DX); // send rest to dx
  at /home/jiaming/mavs_srcs/contract@0x36b14bae0989f65f80892b99a55378d3e1a80c81.sol(562)

[33mWarning[0m for DAOConstantGas in contract 'Blockjack':
    |
    |    if (currentBankroll > initialBankroll) { // there are profits
  > |      if (!DEV.send(currentBankroll - initialBankroll)) throw;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x36b14bae0989f65f80892b99a55378d3e1a80c81.sol(551)

[33mWarning[0m for LockedEther in contract 'Blockjack':
    |}
    |
  > |contract Blockjack {
    |  AbstractBlockjackLogs blockjacklogs;
    |
  at /home/jiaming/mavs_srcs/contract@0x36b14bae0989f65f80892b99a55378d3e1a80c81.sol(318)

[31mViolation[0m for TODAmount in contract 'Blockjack':
    |
    |    if (currentBankroll > initialBankroll) { // there are profits
  > |      if (!DEV.send(currentBankroll - initialBankroll)) throw;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x36b14bae0989f65f80892b99a55378d3e1a80c81.sol(551)

[31mViolation[0m for TODAmount in contract 'Blockjack':
    |
    |    if (currentBankroll > initialBankroll) { // there are profits, share them
  > |      if (!ADMIN_CONTRACT.call.value(currentBankroll - initialBankroll)()) throw;
    |    }
    |    suicide(DX); // send rest to dx
  at /home/jiaming/mavs_srcs/contract@0x36b14bae0989f65f80892b99a55378d3e1a80c81.sol(562)

[31mViolation[0m for TODAmount in contract 'Blockjack':
    |
    |    uint256 profit = currentBankroll - initialBankroll;
  > |    if (!ADMIN_CONTRACT.call.value(profit)()) throw;
    |    currentBankroll -= profit;
    |
  at /home/jiaming/mavs_srcs/contract@0x36b14bae0989f65f80892b99a55378d3e1a80c81.sol(573)

[31mViolation[0m for TODReceiver in contract 'Blockjack':
    |
    |    if (currentBankroll > initialBankroll) { // there are profits
  > |      if (!DEV.send(currentBankroll - initialBankroll)) throw;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x36b14bae0989f65f80892b99a55378d3e1a80c81.sol(551)

[31mViolation[0m for TODReceiver in contract 'Blockjack':
    |
    |    if (currentBankroll > initialBankroll) { // there are profits, share them
  > |      if (!ADMIN_CONTRACT.call.value(currentBankroll - initialBankroll)()) throw;
    |    }
    |    suicide(DX); // send rest to dx
  at /home/jiaming/mavs_srcs/contract@0x36b14bae0989f65f80892b99a55378d3e1a80c81.sol(562)

[31mViolation[0m for TODReceiver in contract 'Blockjack':
    |
    |    uint256 profit = currentBankroll - initialBankroll;
  > |    if (!ADMIN_CONTRACT.call.value(profit)()) throw;
    |    currentBankroll -= profit;
    |
  at /home/jiaming/mavs_srcs/contract@0x36b14bae0989f65f80892b99a55378d3e1a80c81.sol(573)

[33mWarning[0m for UnhandledException in contract 'Blockjack':
    |    }
    |
  > |    blockjacklogs.recordLog(
    |			    openedGame.gameID,
    |			    openedGame.player,
  at /home/jiaming/mavs_srcs/contract@0x36b14bae0989f65f80892b99a55378d3e1a80c81.sol(454)

[33mWarning[0m for UnhandledException in contract 'Blockjack':
    |
    |  function tickRequiredLog(GameLib.Game storage game) private {
  > |    blockjacklogs.tickRequiredLog(game.gameID, game.player, game.actionBlock);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x36b14bae0989f65f80892b99a55378d3e1a80c81.sol(465)

[33mWarning[0m for UnhandledException in contract 'Blockjack':
    |
    |    if (currentBankroll > initialBankroll) { // there are profits
  > |      if (!DEV.send(currentBankroll - initialBankroll)) throw;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x36b14bae0989f65f80892b99a55378d3e1a80c81.sol(551)

[33mWarning[0m for UnhandledException in contract 'Blockjack':
    |
    |    if (currentBankroll > initialBankroll) { // there are profits, share them
  > |      if (!ADMIN_CONTRACT.call.value(currentBankroll - initialBankroll)()) throw;
    |    }
    |    suicide(DX); // send rest to dx
  at /home/jiaming/mavs_srcs/contract@0x36b14bae0989f65f80892b99a55378d3e1a80c81.sol(562)

[33mWarning[0m for UnhandledException in contract 'Blockjack':
    |
    |    uint256 profit = currentBankroll - initialBankroll;
  > |    if (!ADMIN_CONTRACT.call.value(profit)()) throw;
    |    currentBankroll -= profit;
    |
  at /home/jiaming/mavs_srcs/contract@0x36b14bae0989f65f80892b99a55378d3e1a80c81.sol(573)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Blockjack':
    |    }
    |
  > |    blockjacklogs.recordLog(
    |			    openedGame.gameID,
    |			    openedGame.player,
  at /home/jiaming/mavs_srcs/contract@0x36b14bae0989f65f80892b99a55378d3e1a80c81.sol(454)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Blockjack':
    |
    |  function tickRequiredLog(GameLib.Game storage game) private {
  > |    blockjacklogs.tickRequiredLog(game.gameID, game.player, game.actionBlock);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x36b14bae0989f65f80892b99a55378d3e1a80c81.sol(465)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Blockjack':
    |
    |    if (currentBankroll > initialBankroll) { // there are profits
  > |      if (!DEV.send(currentBankroll - initialBankroll)) throw;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x36b14bae0989f65f80892b99a55378d3e1a80c81.sol(551)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Blockjack':
    |
    |    if (currentBankroll > initialBankroll) { // there are profits, share them
  > |      if (!ADMIN_CONTRACT.call.value(currentBankroll - initialBankroll)()) throw;
    |    }
    |    suicide(DX); // send rest to dx
  at /home/jiaming/mavs_srcs/contract@0x36b14bae0989f65f80892b99a55378d3e1a80c81.sol(562)

[31mViolation[0m for UnrestrictedWrite in contract 'Blockjack':
    |
    |  modifier blockActionProtected {
  > |    blockActions[block.number] += 1;
    |    if (blockActions[block.number] > maxBlockActions) throw;
    |    _;
  at /home/jiaming/mavs_srcs/contract@0x36b14bae0989f65f80892b99a55378d3e1a80c81.sol(374)

[31mViolation[0m for UnrestrictedWrite in contract 'Blockjack':
    |    uint256 profit = currentBankroll - initialBankroll;
    |    if (!ADMIN_CONTRACT.call.value(profit)()) throw;
  > |    currentBankroll -= profit;
    |
    |    bankrollLockedUntil = now + BANKROLL_LOCK_PERIOD;
  at /home/jiaming/mavs_srcs/contract@0x36b14bae0989f65f80892b99a55378d3e1a80c81.sol(574)

[31mViolation[0m for UnrestrictedWrite in contract 'Blockjack':
    |    currentBankroll -= profit;
    |
  > |    bankrollLockedUntil = now + BANKROLL_LOCK_PERIOD;
    |    profitsLockedUntil = bankrollLockedUntil + BANKROLL_LOCK_PERIOD;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x36b14bae0989f65f80892b99a55378d3e1a80c81.sol(576)

[31mViolation[0m for UnrestrictedWrite in contract 'Blockjack':
    |
    |    bankrollLockedUntil = now + BANKROLL_LOCK_PERIOD;
  > |    profitsLockedUntil = bankrollLockedUntil + BANKROLL_LOCK_PERIOD;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x36b14bae0989f65f80892b99a55378d3e1a80c81.sol(577)

[33mWarning[0m for UnrestrictedWrite in contract 'Blockjack':
    |    games.length += 1;
    |    games[newGameID].init(newGameID);
  > |    currentGame[msg.sender] = newGameID;
    |    tickRequiredLog(games[newGameID]);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x36b14bae0989f65f80892b99a55378d3e1a80c81.sol(411)

[33mWarning[0m for UnrestrictedWrite in contract 'Blockjack':
    |    //vs potential overflow when croupier is not ticking frequently enough
    |    if(currentBankroll + openedGame.bet > openedGame.payout){
  > |      currentBankroll = currentBankroll + openedGame.bet - openedGame.payout;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x36b14bae0989f65f80892b99a55378d3e1a80c81.sol(451)

[33mWarning[0m for UnrestrictedWrite in contract 'Blockjack':
    |
    |  modifier blockActionProtected {
  > |    blockActions[block.number] += 1;
    |    if (blockActions[block.number] > maxBlockActions) throw;
    |    _;
  at /home/jiaming/mavs_srcs/contract@0x36b14bae0989f65f80892b99a55378d3e1a80c81.sol(374)

[33mWarning[0m for UnrestrictedWrite in contract 'Blockjack':
    |
    |  function changeDev(address newDev) only(DEV) {
  > |    isOwner[DEV] = false;
    |    DEV = newDev;
    |    isOwner[DEV] = true;
  at /home/jiaming/mavs_srcs/contract@0x36b14bae0989f65f80892b99a55378d3e1a80c81.sol(497)

[33mWarning[0m for UnrestrictedWrite in contract 'Blockjack':
    |  function changeDev(address newDev) only(DEV) {
    |    isOwner[DEV] = false;
  > |    DEV = newDev;
    |    isOwner[DEV] = true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x36b14bae0989f65f80892b99a55378d3e1a80c81.sol(498)

[33mWarning[0m for UnrestrictedWrite in contract 'Blockjack':
    |    isOwner[DEV] = false;
    |    DEV = newDev;
  > |    isOwner[DEV] = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x36b14bae0989f65f80892b99a55378d3e1a80c81.sol(499)

[33mWarning[0m for UnrestrictedWrite in contract 'Blockjack':
    |
    |  function changeDX(address newDX) only(DX) {
  > |    isOwner[DX] = false;
    |    DX = newDX;
    |    isOwner[DX] = true;
  at /home/jiaming/mavs_srcs/contract@0x36b14bae0989f65f80892b99a55378d3e1a80c81.sol(503)

[33mWarning[0m for UnrestrictedWrite in contract 'Blockjack':
    |  function changeDX(address newDX) only(DX) {
    |    isOwner[DX] = false;
  > |    DX = newDX;
    |    isOwner[DX] = true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x36b14bae0989f65f80892b99a55378d3e1a80c81.sol(504)

[33mWarning[0m for UnrestrictedWrite in contract 'Blockjack':
    |    isOwner[DX] = false;
    |    DX = newDX;
  > |    isOwner[DX] = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x36b14bae0989f65f80892b99a55378d3e1a80c81.sol(505)

[33mWarning[0m for UnrestrictedWrite in contract 'Blockjack':
    |
    |  function changeAdminContract(address _new_admin_contract) only(ADMIN_CONTRACT) {
  > |    isOwner[ADMIN_CONTRACT] = false;
    |    ADMIN_CONTRACT = _new_admin_contract;
    |    isOwner[ADMIN_CONTRACT] = true;
  at /home/jiaming/mavs_srcs/contract@0x36b14bae0989f65f80892b99a55378d3e1a80c81.sol(509)

[33mWarning[0m for UnrestrictedWrite in contract 'Blockjack':
    |  function changeAdminContract(address _new_admin_contract) only(ADMIN_CONTRACT) {
    |    isOwner[ADMIN_CONTRACT] = false;
  > |    ADMIN_CONTRACT = _new_admin_contract;
    |    isOwner[ADMIN_CONTRACT] = true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x36b14bae0989f65f80892b99a55378d3e1a80c81.sol(510)

[33mWarning[0m for UnrestrictedWrite in contract 'Blockjack':
    |    isOwner[ADMIN_CONTRACT] = false;
    |    ADMIN_CONTRACT = _new_admin_contract;
  > |    isOwner[ADMIN_CONTRACT] = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x36b14bae0989f65f80892b99a55378d3e1a80c81.sol(511)

[33mWarning[0m for UnrestrictedWrite in contract 'Blockjack':
    |
    |  function setSettings(uint256 _min, uint256 _max, uint256 _maxBlockActions) only(ADMIN_CONTRACT) {
  > |    minBet = _min;
    |    maxBet = _max;
    |    maxBlockActions = _maxBlockActions;
  at /home/jiaming/mavs_srcs/contract@0x36b14bae0989f65f80892b99a55378d3e1a80c81.sol(515)

[33mWarning[0m for UnrestrictedWrite in contract 'Blockjack':
    |  function setSettings(uint256 _min, uint256 _max, uint256 _maxBlockActions) only(ADMIN_CONTRACT) {
    |    minBet = _min;
  > |    maxBet = _max;
    |    maxBlockActions = _maxBlockActions;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x36b14bae0989f65f80892b99a55378d3e1a80c81.sol(516)

[33mWarning[0m for UnrestrictedWrite in contract 'Blockjack':
    |    minBet = _min;
    |    maxBet = _max;
  > |    maxBlockActions = _maxBlockActions;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x36b14bae0989f65f80892b99a55378d3e1a80c81.sol(517)

[33mWarning[0m for UnrestrictedWrite in contract 'Blockjack':
    |
    |  function registerOwner(address _new_watcher) only(ADMIN_CONTRACT) {
  > |    isOwner[_new_watcher] = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x36b14bae0989f65f80892b99a55378d3e1a80c81.sol(521)

[33mWarning[0m for UnrestrictedWrite in contract 'Blockjack':
    |
    |  function removeOwner(address _old_watcher) only(ADMIN_CONTRACT) {
  > |    isOwner[_old_watcher] = false;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x36b14bae0989f65f80892b99a55378d3e1a80c81.sol(525)

[33mWarning[0m for UnrestrictedWrite in contract 'Blockjack':
    |
    |  function stopBlockjack() onlyOwner {
  > |    allowsNewGames = false;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x36b14bae0989f65f80892b99a55378d3e1a80c81.sol(529)

[33mWarning[0m for UnrestrictedWrite in contract 'Blockjack':
    |
    |  function startBlockjack() only(ADMIN_CONTRACT) {
  > |    allowsNewGames = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x36b14bae0989f65f80892b99a55378d3e1a80c81.sol(533)

[33mWarning[0m for UnrestrictedWrite in contract 'Blockjack':
    |
    |  function addBankroll() only(DX) payable {
  > |    initialBankroll += msg.value;
    |    currentBankroll += msg.value;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x36b14bae0989f65f80892b99a55378d3e1a80c81.sol(537)

[33mWarning[0m for UnrestrictedWrite in contract 'Blockjack':
    |  function addBankroll() only(DX) payable {
    |    initialBankroll += msg.value;
  > |    currentBankroll += msg.value;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x36b14bae0989f65f80892b99a55378d3e1a80c81.sol(538)

[31mViolation[0m for LockedEther in contract 'DeckLib':
    |}
    |
  > |library DeckLib {
    |	using ArrayLib for uint8[];
    |
  at /home/jiaming/mavs_srcs/contract@0x36b14bae0989f65f80892b99a55378d3e1a80c81.sol(19)

[31mViolation[0m for UnrestrictedWrite in contract 'DeckLib':
    |}
    |
  > |library DeckLib {
    |	using ArrayLib for uint8[];
    |
  at /home/jiaming/mavs_srcs/contract@0x36b14bae0989f65f80892b99a55378d3e1a80c81.sol(19)

[31mViolation[0m for UnrestrictedWrite in contract 'DeckLib':
    |	function init(Deck storage self, uint256 gameID)  {
    |		self.usedCards = new uint8[](0);
  > |		self.player = msg.sender;
    |		self.gameID = gameID;
    |	}
  at /home/jiaming/mavs_srcs/contract@0x36b14bae0989f65f80892b99a55378d3e1a80c81.sol(35)

[31mViolation[0m for UnrestrictedWrite in contract 'DeckLib':
    |		self.usedCards = new uint8[](0);
    |		self.player = msg.sender;
  > |		self.gameID = gameID;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x36b14bae0989f65f80892b99a55378d3e1a80c81.sol(36)

[33mWarning[0m for DAOConstantGas in contract 'GameLib':
    |
    |    if (self.payout > 0) {
  > |      if (!self.player.send(self.payout)) throw;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x36b14bae0989f65f80892b99a55378d3e1a80c81.sol(252)

[33mWarning[0m for LockedEther in contract 'GameLib':
    |}
    |
  > |library GameLib {
    |  using DeckLib for *;
    |
  at /home/jiaming/mavs_srcs/contract@0x36b14bae0989f65f80892b99a55378d3e1a80c81.sol(96)

[33mWarning[0m for UnhandledException in contract 'GameLib':
    |
    |    if (self.payout > 0) {
  > |      if (!self.player.send(self.payout)) throw;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x36b14bae0989f65f80892b99a55378d3e1a80c81.sol(252)

[31mViolation[0m for UnrestrictedWrite in contract 'GameLib':
    |library ArrayLib {
  > |  // Inserts to keep array sorted (assumes input array is sorted)
    |	function insertInPlace(uint8[] storage self, uint8 n) {
    |		uint8 insertingIndex = 0;
  at /home/jiaming/mavs_srcs/contract@0x36b14bae0989f65f80892b99a55378d3e1a80c81.sol(2)

[31mViolation[0m for UnrestrictedWrite in contract 'GameLib':
    |}
    |
  > |library GameLib {
    |  using DeckLib for *;
    |
  at /home/jiaming/mavs_srcs/contract@0x36b14bae0989f65f80892b99a55378d3e1a80c81.sol(96)

[31mViolation[0m for UnrestrictedWrite in contract 'GameLib':
    |
    |  function init(Game storage self, uint256 gameID) {
  > |    self.player = msg.sender;
    |    self.bet = msg.value;
    |    self.payout = 0;
  at /home/jiaming/mavs_srcs/contract@0x36b14bae0989f65f80892b99a55378d3e1a80c81.sol(125)

[31mViolation[0m for UnrestrictedWrite in contract 'GameLib':
    |  function init(Game storage self, uint256 gameID) {
    |    self.player = msg.sender;
  > |    self.bet = msg.value;
    |    self.payout = 0;
    |    self.houseCards = new uint8[](0);
  at /home/jiaming/mavs_srcs/contract@0x36b14bae0989f65f80892b99a55378d3e1a80c81.sol(126)

[31mViolation[0m for UnrestrictedWrite in contract 'GameLib':
    |    self.player = msg.sender;
    |    self.bet = msg.value;
  > |    self.payout = 0;
    |    self.houseCards = new uint8[](0);
    |    self.playerCards = new uint8[](0);
  at /home/jiaming/mavs_srcs/contract@0x36b14bae0989f65f80892b99a55378d3e1a80c81.sol(127)

[31mViolation[0m for UnrestrictedWrite in contract 'GameLib':
    |    self.houseCards = new uint8[](0);
    |    self.playerCards = new uint8[](0);
  > |    self.actionBlock = block.number;
    |    self.state = GameState.InitialCards;
    |    self.result = GameResult.Ongoing;
  at /home/jiaming/mavs_srcs/contract@0x36b14bae0989f65f80892b99a55378d3e1a80c81.sol(130)

[31mViolation[0m for UnrestrictedWrite in contract 'GameLib':
    |    self.playerCards = new uint8[](0);
    |    self.actionBlock = block.number;
  > |    self.state = GameState.InitialCards;
    |    self.result = GameResult.Ongoing;
    |    self.closed = false;
  at /home/jiaming/mavs_srcs/contract@0x36b14bae0989f65f80892b99a55378d3e1a80c81.sol(131)

[31mViolation[0m for UnrestrictedWrite in contract 'GameLib':
    |    self.actionBlock = block.number;
    |    self.state = GameState.InitialCards;
  > |    self.result = GameResult.Ongoing;
    |    self.closed = false;
    |    self.gameID = gameID;
  at /home/jiaming/mavs_srcs/contract@0x36b14bae0989f65f80892b99a55378d3e1a80c81.sol(132)

[31mViolation[0m for UnrestrictedWrite in contract 'GameLib':
    |    self.state = GameState.InitialCards;
    |    self.result = GameResult.Ongoing;
  > |    self.closed = false;
    |    self.gameID = gameID;
    |
  at /home/jiaming/mavs_srcs/contract@0x36b14bae0989f65f80892b99a55378d3e1a80c81.sol(133)

[31mViolation[0m for UnrestrictedWrite in contract 'GameLib':
    |    self.result = GameResult.Ongoing;
    |    self.closed = false;
  > |    self.gameID = gameID;
    |
    |    self.deck.init(gameID);
  at /home/jiaming/mavs_srcs/contract@0x36b14bae0989f65f80892b99a55378d3e1a80c81.sol(134)

[31mViolation[0m for UnrestrictedWrite in contract 'GameLib':
    |    if (self.state == GameState.DoubleDown) {
    |      if (!canDoubleDown(self)) throw;
  > |      self.bet += msg.value;
    |      dealHitCard(self);
    |      forceStand(self);
  at /home/jiaming/mavs_srcs/contract@0x36b14bae0989f65f80892b99a55378d3e1a80c81.sol(151)

[31mViolation[0m for UnrestrictedWrite in contract 'GameLib':
    |    uint256 currentActionBlock = self.actionBlock;
    |    playerDecision(self, GameState.Stand);
  > |    self.actionBlock = currentActionBlock;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x36b14bae0989f65f80892b99a55378d3e1a80c81.sol(199)

[31mViolation[0m for UnrestrictedWrite in contract 'GameLib':
    |    if (decision != GameState.Hit && decision != GameState.Stand) throw;
    |
  > |    self.state = decision;
    |    self.actionBlock = block.number;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x36b14bae0989f65f80892b99a55378d3e1a80c81.sol(213)

[31mViolation[0m for UnrestrictedWrite in contract 'GameLib':
    |
    |    self.state = decision;
  > |    self.actionBlock = block.number;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x36b14bae0989f65f80892b99a55378d3e1a80c81.sol(214)

[31mViolation[0m for UnrestrictedWrite in contract 'GameLib':
    |
    |  function dealInitialCards(Game storage self) private {
  > |    self.playerCards.push(self.deck.getCard(self.actionBlock));
    |    self.houseCards.push(self.deck.getCard(self.actionBlock));
    |    self.playerCards.push(self.deck.getCard(self.actionBlock));
  at /home/jiaming/mavs_srcs/contract@0x36b14bae0989f65f80892b99a55378d3e1a80c81.sol(218)

[31mViolation[0m for UnrestrictedWrite in contract 'GameLib':
    |  function dealInitialCards(Game storage self) private {
    |    self.playerCards.push(self.deck.getCard(self.actionBlock));
  > |    self.houseCards.push(self.deck.getCard(self.actionBlock));
    |    self.playerCards.push(self.deck.getCard(self.actionBlock));
    |
  at /home/jiaming/mavs_srcs/contract@0x36b14bae0989f65f80892b99a55378d3e1a80c81.sol(219)

[31mViolation[0m for UnrestrictedWrite in contract 'GameLib':
    |    self.playerCards.push(self.deck.getCard(self.actionBlock));
    |    self.houseCards.push(self.deck.getCard(self.actionBlock));
  > |    self.playerCards.push(self.deck.getCard(self.actionBlock));
    |
    |    self.state = GameState.Waiting;
  at /home/jiaming/mavs_srcs/contract@0x36b14bae0989f65f80892b99a55378d3e1a80c81.sol(220)

[31mViolation[0m for UnrestrictedWrite in contract 'GameLib':
    |    self.playerCards.push(self.deck.getCard(self.actionBlock));
    |
  > |    self.state = GameState.Waiting;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x36b14bae0989f65f80892b99a55378d3e1a80c81.sol(222)

[31mViolation[0m for UnrestrictedWrite in contract 'GameLib':
    |
    |  function dealHitCard(Game storage self) private {
  > |    self.playerCards.push(self.deck.getCard(self.actionBlock));
    |
    |    self.state = GameState.Waiting;
  at /home/jiaming/mavs_srcs/contract@0x36b14bae0989f65f80892b99a55378d3e1a80c81.sol(226)

[31mViolation[0m for UnrestrictedWrite in contract 'GameLib':
    |    self.playerCards.push(self.deck.getCard(self.actionBlock));
    |
  > |    self.state = GameState.Waiting;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x36b14bae0989f65f80892b99a55378d3e1a80c81.sol(228)

[31mViolation[0m for UnrestrictedWrite in contract 'GameLib':
    |
    |  function dealHouseCards(Game storage self) private {
  > |    self.houseCards.push(self.deck.getCard(self.actionBlock));
    |
    |    if (countHand(self.houseCards) < houseLimit) dealHouseCards(self);
  at /home/jiaming/mavs_srcs/contract@0x36b14bae0989f65f80892b99a55378d3e1a80c81.sol(232)

[31mViolation[0m for UnrestrictedWrite in contract 'GameLib':
    |
    |  function endGame(Game storage self, GameResult result) {
  > |    self.result = result;
    |    self.state = GameState.Finished;
    |    self.payout = payoutForResult(self.result, self.bet);
  at /home/jiaming/mavs_srcs/contract@0x36b14bae0989f65f80892b99a55378d3e1a80c81.sol(238)

[31mViolation[0m for UnrestrictedWrite in contract 'GameLib':
    |  function endGame(Game storage self, GameResult result) {
    |    self.result = result;
  > |    self.state = GameState.Finished;
    |    self.payout = payoutForResult(self.result, self.bet);
    |
  at /home/jiaming/mavs_srcs/contract@0x36b14bae0989f65f80892b99a55378d3e1a80c81.sol(239)

[31mViolation[0m for UnrestrictedWrite in contract 'GameLib':
    |    self.result = result;
    |    self.state = GameState.Finished;
  > |    self.payout = payoutForResult(self.result, self.bet);
    |
    |    closeGame(self);
  at /home/jiaming/mavs_srcs/contract@0x36b14bae0989f65f80892b99a55378d3e1a80c81.sol(240)

[31mViolation[0m for UnrestrictedWrite in contract 'GameLib':
    |    if (self.state != GameState.Finished) throw; // not closable
    |
  > |    self.closed = true;
    |
    |    if (self.payout > 0) {
  at /home/jiaming/mavs_srcs/contract@0x36b14bae0989f65f80892b99a55378d3e1a80c81.sol(249)


