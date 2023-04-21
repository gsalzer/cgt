Processing contract: /home/jiaming/mavs_srcs/contract@0x52ee48926c82f5bbfb7051eca499cfe2ef117ce6.sol:LotteryRound
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x52ee48926c82f5bbfb7051eca499cfe2ef117ce6.sol:LotteryRoundFactory
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x52ee48926c82f5bbfb7051eca499cfe2ef117ce6.sol:LotteryRoundFactoryInterface
Processing contract: /home/jiaming/mavs_srcs/contract@0x52ee48926c82f5bbfb7051eca499cfe2ef117ce6.sol:LotteryRoundFactoryInterfaceV1
Processing contract: /home/jiaming/mavs_srcs/contract@0x52ee48926c82f5bbfb7051eca499cfe2ef117ce6.sol:LotteryRoundInterface
Processing contract: /home/jiaming/mavs_srcs/contract@0x52ee48926c82f5bbfb7051eca499cfe2ef117ce6.sol:Owned
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for DAOConstantGas in contract 'LotteryRound':
    |        if (unclaimed) {
    |          winningsClaimable[winner] = false;
  > |          if (!winner.send(prizeValue)) {
    |            // If I can't send you money, dumbshit, you get to claim it on your own.
    |            // maybe next time don't use a contract or try to exploit the game.
  at /home/jiaming/mavs_srcs/contract@0x52ee48926c82f5bbfb7051eca499cfe2ef117ce6.sol(461)

[33mWarning[0m for DAOConstantGas in contract 'LotteryRound':
    |      uint256 value = ownerFee;
    |      ownerFee = 0;
  > |      if (!payout.send(value)) {
    |        throw;
    |      }
  at /home/jiaming/mavs_srcs/contract@0x52ee48926c82f5bbfb7051eca499cfe2ef117ce6.sol(421)

[33mWarning[0m for DAOConstantGas in contract 'LotteryRound':
    |  function withdraw() onlyOwner afterDraw {
    |    if (paidOut() && ownerFee == 0) {
  > |      if (!owner.send(this.balance)) {
    |        throw;
    |      }
  at /home/jiaming/mavs_srcs/contract@0x52ee48926c82f5bbfb7051eca499cfe2ef117ce6.sol(434)

[33mWarning[0m for DAOConstantGas in contract 'LotteryRound':
    |    }
    |    winningsClaimable[msg.sender] = false;
  > |    if (!msg.sender.send(prizeValue)) {
    |      // you really are a dumbshit, aren't you.
    |      throw;
  at /home/jiaming/mavs_srcs/contract@0x52ee48926c82f5bbfb7051eca499cfe2ef117ce6.sol(508)

[33mWarning[0m for LockedEther in contract 'LotteryRound':
    | * Also controls payout of winners for a particular round.
    | */
  > |contract LotteryRound is LotteryRoundInterface, Owned {
    |
    |  /*
  at /home/jiaming/mavs_srcs/contract@0x52ee48926c82f5bbfb7051eca499cfe2ef117ce6.sol(82)

[31mViolation[0m for TODAmount in contract 'LotteryRound':
    |      uint256 value = ownerFee;
    |      ownerFee = 0;
  > |      if (!payout.send(value)) {
    |        throw;
    |      }
  at /home/jiaming/mavs_srcs/contract@0x52ee48926c82f5bbfb7051eca499cfe2ef117ce6.sol(421)

[31mViolation[0m for TODAmount in contract 'LotteryRound':
    |  function withdraw() onlyOwner afterDraw {
    |    if (paidOut() && ownerFee == 0) {
  > |      if (!owner.send(this.balance)) {
    |        throw;
    |      }
  at /home/jiaming/mavs_srcs/contract@0x52ee48926c82f5bbfb7051eca499cfe2ef117ce6.sol(434)

[31mViolation[0m for TODAmount in contract 'LotteryRound':
    |        if (unclaimed) {
    |          winningsClaimable[winner] = false;
  > |          if (!winner.send(prizeValue)) {
    |            // If I can't send you money, dumbshit, you get to claim it on your own.
    |            // maybe next time don't use a contract or try to exploit the game.
  at /home/jiaming/mavs_srcs/contract@0x52ee48926c82f5bbfb7051eca499cfe2ef117ce6.sol(461)

[31mViolation[0m for TODAmount in contract 'LotteryRound':
    |    }
    |    winningsClaimable[msg.sender] = false;
  > |    if (!msg.sender.send(prizeValue)) {
    |      // you really are a dumbshit, aren't you.
    |      throw;
  at /home/jiaming/mavs_srcs/contract@0x52ee48926c82f5bbfb7051eca499cfe2ef117ce6.sol(508)

[31mViolation[0m for TODReceiver in contract 'LotteryRound':
    |  function withdraw() onlyOwner afterDraw {
    |    if (paidOut() && ownerFee == 0) {
  > |      if (!owner.send(this.balance)) {
    |        throw;
    |      }
  at /home/jiaming/mavs_srcs/contract@0x52ee48926c82f5bbfb7051eca499cfe2ef117ce6.sol(434)

[33mWarning[0m for TODReceiver in contract 'LotteryRound':
    |      uint256 value = ownerFee;
    |      ownerFee = 0;
  > |      if (!payout.send(value)) {
    |        throw;
    |      }
  at /home/jiaming/mavs_srcs/contract@0x52ee48926c82f5bbfb7051eca499cfe2ef117ce6.sol(421)

[33mWarning[0m for TODReceiver in contract 'LotteryRound':
    |    }
    |    winningsClaimable[msg.sender] = false;
  > |    if (!msg.sender.send(prizeValue)) {
    |      // you really are a dumbshit, aren't you.
    |      throw;
  at /home/jiaming/mavs_srcs/contract@0x52ee48926c82f5bbfb7051eca499cfe2ef117ce6.sol(508)

[33mWarning[0m for UnhandledException in contract 'LotteryRound':
    |   */
    |  function generatePseudoRand(bytes32 seed) internal returns(bytes32) {
  > |    uint8 pseudoRandomOffset = uint8(uint256(sha256(
    |      seed,
    |      block.difficulty,
  at /home/jiaming/mavs_srcs/contract@0x52ee48926c82f5bbfb7051eca499cfe2ef117ce6.sol(239)

[33mWarning[0m for UnhandledException in contract 'LotteryRound':
    |      uint256 value = ownerFee;
    |      ownerFee = 0;
  > |      if (!payout.send(value)) {
    |        throw;
    |      }
  at /home/jiaming/mavs_srcs/contract@0x52ee48926c82f5bbfb7051eca499cfe2ef117ce6.sol(421)

[33mWarning[0m for UnhandledException in contract 'LotteryRound':
    |  function withdraw() onlyOwner afterDraw {
    |    if (paidOut() && ownerFee == 0) {
  > |      if (!owner.send(this.balance)) {
    |        throw;
    |      }
  at /home/jiaming/mavs_srcs/contract@0x52ee48926c82f5bbfb7051eca499cfe2ef117ce6.sol(434)

[33mWarning[0m for UnhandledException in contract 'LotteryRound':
    |        if (unclaimed) {
    |          winningsClaimable[winner] = false;
  > |          if (!winner.send(prizeValue)) {
    |            // If I can't send you money, dumbshit, you get to claim it on your own.
    |            // maybe next time don't use a contract or try to exploit the game.
  at /home/jiaming/mavs_srcs/contract@0x52ee48926c82f5bbfb7051eca499cfe2ef117ce6.sol(461)

[33mWarning[0m for UnhandledException in contract 'LotteryRound':
    |    }
    |    winningsClaimable[msg.sender] = false;
  > |    if (!msg.sender.send(prizeValue)) {
    |      // you really are a dumbshit, aren't you.
    |      throw;
  at /home/jiaming/mavs_srcs/contract@0x52ee48926c82f5bbfb7051eca499cfe2ef117ce6.sol(508)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LotteryRound':
    |   */
    |  function generatePseudoRand(bytes32 seed) internal returns(bytes32) {
  > |    uint8 pseudoRandomOffset = uint8(uint256(sha256(
    |      seed,
    |      block.difficulty,
  at /home/jiaming/mavs_srcs/contract@0x52ee48926c82f5bbfb7051eca499cfe2ef117ce6.sol(239)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LotteryRound':
    |      uint256 value = ownerFee;
    |      ownerFee = 0;
  > |      if (!payout.send(value)) {
    |        throw;
    |      }
  at /home/jiaming/mavs_srcs/contract@0x52ee48926c82f5bbfb7051eca499cfe2ef117ce6.sol(421)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LotteryRound':
    |  function withdraw() onlyOwner afterDraw {
    |    if (paidOut() && ownerFee == 0) {
  > |      if (!owner.send(this.balance)) {
    |        throw;
    |      }
  at /home/jiaming/mavs_srcs/contract@0x52ee48926c82f5bbfb7051eca499cfe2ef117ce6.sol(434)

[31mViolation[0m for UnrestrictedWrite in contract 'LotteryRound':
    |
    |/**
  > | * Very basic owned/mortal boilerplate.  Used for basically everything, for
    | * security/access control purposes.
    | */
  at /home/jiaming/mavs_srcs/contract@0x52ee48926c82f5bbfb7051eca499cfe2ef117ce6.sol(4)

[31mViolation[0m for UnrestrictedWrite in contract 'LotteryRound':
    |      accumulatedEntropy
    |    );
  > |    accumulatedEntropy = sha3(accumulatedEntropy, pseudoRand);
    |    return pseudoRand;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x52ee48926c82f5bbfb7051eca499cfe2ef117ce6.sol(256)

[31mViolation[0m for UnrestrictedWrite in contract 'LotteryRound':
    |      }
    |    }
  > |    tickets[picks].push(msg.sender);
    |    nTickets++;
    |    generatePseudoRand(bytes32(picks)); // advance the accumulated entropy
  at /home/jiaming/mavs_srcs/contract@0x52ee48926c82f5bbfb7051eca499cfe2ef117ce6.sol(274)

[31mViolation[0m for UnrestrictedWrite in contract 'LotteryRound':
    |    }
    |    tickets[picks].push(msg.sender);
  > |    nTickets++;
    |    generatePseudoRand(bytes32(picks)); // advance the accumulated entropy
    |    LotteryRoundDraw(msg.sender, picks);
  at /home/jiaming/mavs_srcs/contract@0x52ee48926c82f5bbfb7051eca499cfe2ef117ce6.sol(275)

[31mViolation[0m for UnrestrictedWrite in contract 'LotteryRound':
    |        bool unclaimed = winningsClaimable[winner];
    |        if (unclaimed) {
  > |          winningsClaimable[winner] = false;
    |          if (!winner.send(prizeValue)) {
    |            // If I can't send you money, dumbshit, you get to claim it on your own.
  at /home/jiaming/mavs_srcs/contract@0x52ee48926c82f5bbfb7051eca499cfe2ef117ce6.sol(460)

[31mViolation[0m for UnrestrictedWrite in contract 'LotteryRound':
    |            // maybe next time don't use a contract or try to exploit the game.
    |            // Regardless, you're on your own.  Happy birthday to the ground.
  > |            winningsClaimable[winner] = true;
    |          }
    |        }
  at /home/jiaming/mavs_srcs/contract@0x52ee48926c82f5bbfb7051eca499cfe2ef117ce6.sol(465)

[33mWarning[0m for UnrestrictedWrite in contract 'LotteryRound':
    |
    |/**
  > | * Very basic owned/mortal boilerplate.  Used for basically everything, for
    | * security/access control purposes.
    | */
  at /home/jiaming/mavs_srcs/contract@0x52ee48926c82f5bbfb7051eca499cfe2ef117ce6.sol(4)

[33mWarning[0m for UnrestrictedWrite in contract 'LotteryRound':
    |    bytes32 pseudoRand = generatePseudoRand(bytes32(msg.sender));
    |    bytes4 picks = pickValues(pseudoRand);
  > |    tickets[picks].push(msg.sender);
    |    nTickets++;
    |    LotteryRoundDraw(msg.sender, picks);
  at /home/jiaming/mavs_srcs/contract@0x52ee48926c82f5bbfb7051eca499cfe2ef117ce6.sol(313)

[33mWarning[0m for UnrestrictedWrite in contract 'LotteryRound':
    |    bytes4 picks = pickValues(pseudoRand);
    |    tickets[picks].push(msg.sender);
  > |    nTickets++;
    |    LotteryRoundDraw(msg.sender, picks);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x52ee48926c82f5bbfb7051eca499cfe2ef117ce6.sol(314)

[33mWarning[0m for UnrestrictedWrite in contract 'LotteryRound':
    |   */
    |  function finalizeRound(bytes32 salt, uint8 N, bytes4 winningPicks) internal {
  > |    winningNumbers = winningPicks;
    |    winningNumbersPicked = true;
    |    LotteryRoundCompleted(salt, N, winningNumbers, this.balance);
  at /home/jiaming/mavs_srcs/contract@0x52ee48926c82f5bbfb7051eca499cfe2ef117ce6.sol(355)

[33mWarning[0m for UnrestrictedWrite in contract 'LotteryRound':
    |  function finalizeRound(bytes32 salt, uint8 N, bytes4 winningPicks) internal {
    |    winningNumbers = winningPicks;
  > |    winningNumbersPicked = true;
    |    LotteryRoundCompleted(salt, N, winningNumbers, this.balance);
    |
  at /home/jiaming/mavs_srcs/contract@0x52ee48926c82f5bbfb7051eca499cfe2ef117ce6.sol(356)

[33mWarning[0m for UnrestrictedWrite in contract 'LotteryRound':
    |      throw;
    |    }
  > |    winningsClaimable[msg.sender] = false;
    |    if (!msg.sender.send(prizeValue)) {
    |      // you really are a dumbshit, aren't you.
  at /home/jiaming/mavs_srcs/contract@0x52ee48926c82f5bbfb7051eca499cfe2ef117ce6.sol(507)

[33mWarning[0m for UnrestrictedWrite in contract 'LotteryRound':
    |   */
    |  function transferOwnership(address newOwner) onlyOwner {
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x52ee48926c82f5bbfb7051eca499cfe2ef117ce6.sol(29)

[33mWarning[0m for UnrestrictedWrite in contract 'LotteryRound':
    |    if (ownerFee > 0) {
    |      uint256 value = ownerFee;
  > |      ownerFee = 0;
    |      if (!payout.send(value)) {
    |        throw;
  at /home/jiaming/mavs_srcs/contract@0x52ee48926c82f5bbfb7051eca499cfe2ef117ce6.sol(420)

[33mWarning[0m for DAOConstantGas in contract 'LotteryRoundFactory':
    |   */
    |  function withdraw() onlyOwner {
  > |    if (!owner.send(this.balance)) {
    |      throw;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x52ee48926c82f5bbfb7051eca499cfe2ef117ce6.sol(45)

[33mWarning[0m for LockedEther in contract 'LotteryRoundFactory':
    |}
    |
  > |contract LotteryRoundFactory is LotteryRoundFactoryInterfaceV1, Owned {
    |
    |  string public VERSION = '0.1.2';
  at /home/jiaming/mavs_srcs/contract@0x52ee48926c82f5bbfb7051eca499cfe2ef117ce6.sol(531)

[31mViolation[0m for TODAmount in contract 'LotteryRoundFactory':
    |   */
    |  function withdraw() onlyOwner {
  > |    if (!owner.send(this.balance)) {
    |      throw;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x52ee48926c82f5bbfb7051eca499cfe2ef117ce6.sol(45)

[31mViolation[0m for TODReceiver in contract 'LotteryRoundFactory':
    |   */
    |  function withdraw() onlyOwner {
  > |    if (!owner.send(this.balance)) {
    |      throw;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x52ee48926c82f5bbfb7051eca499cfe2ef117ce6.sol(45)

[33mWarning[0m for UnhandledException in contract 'LotteryRoundFactory':
    |   */
    |  function withdraw() onlyOwner {
  > |    if (!owner.send(this.balance)) {
    |      throw;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x52ee48926c82f5bbfb7051eca499cfe2ef117ce6.sol(45)

[33mWarning[0m for UnhandledException in contract 'LotteryRoundFactory':
    |      throw;
    |    }
  > |    newRound.transferOwnership(owner);
    |    LotteryRoundCreated(address(newRound), VERSION);
    |    return address(newRound);
  at /home/jiaming/mavs_srcs/contract@0x52ee48926c82f5bbfb7051eca499cfe2ef117ce6.sol(565)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LotteryRoundFactory':
    |   */
    |  function withdraw() onlyOwner {
  > |    if (!owner.send(this.balance)) {
    |      throw;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x52ee48926c82f5bbfb7051eca499cfe2ef117ce6.sol(45)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LotteryRoundFactory':
    |      throw;
    |    }
  > |    newRound.transferOwnership(owner);
    |    LotteryRoundCreated(address(newRound), VERSION);
    |    return address(newRound);
  at /home/jiaming/mavs_srcs/contract@0x52ee48926c82f5bbfb7051eca499cfe2ef117ce6.sol(565)

[33mWarning[0m for UnrestrictedWrite in contract 'LotteryRoundFactory':
    |   */
    |  function transferOwnership(address newOwner) onlyOwner {
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x52ee48926c82f5bbfb7051eca499cfe2ef117ce6.sol(29)

[33mWarning[0m for DAOConstantGas in contract 'Owned':
    |   */
    |  function withdraw() onlyOwner {
  > |    if (!owner.send(this.balance)) {
    |      throw;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x52ee48926c82f5bbfb7051eca499cfe2ef117ce6.sol(45)

[33mWarning[0m for LockedEther in contract 'Owned':
    | * security/access control purposes.
    | */
  > |contract Owned {
    |  address owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x52ee48926c82f5bbfb7051eca499cfe2ef117ce6.sol(7)

[31mViolation[0m for TODAmount in contract 'Owned':
    |   */
    |  function withdraw() onlyOwner {
  > |    if (!owner.send(this.balance)) {
    |      throw;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x52ee48926c82f5bbfb7051eca499cfe2ef117ce6.sol(45)

[31mViolation[0m for TODReceiver in contract 'Owned':
    |   */
    |  function withdraw() onlyOwner {
  > |    if (!owner.send(this.balance)) {
    |      throw;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x52ee48926c82f5bbfb7051eca499cfe2ef117ce6.sol(45)

[33mWarning[0m for UnhandledException in contract 'Owned':
    |   */
    |  function withdraw() onlyOwner {
  > |    if (!owner.send(this.balance)) {
    |      throw;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x52ee48926c82f5bbfb7051eca499cfe2ef117ce6.sol(45)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Owned':
    |   */
    |  function withdraw() onlyOwner {
  > |    if (!owner.send(this.balance)) {
    |      throw;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x52ee48926c82f5bbfb7051eca499cfe2ef117ce6.sol(45)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |   */
    |  function transferOwnership(address newOwner) onlyOwner {
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x52ee48926c82f5bbfb7051eca499cfe2ef117ce6.sol(29)


