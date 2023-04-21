Processing contract: /home/jiaming/mavs_srcs/contract@0xffcf7f75602157e36fbe09047e7fafaf69e530e8.sol:DiceGame
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xffcf7f75602157e36fbe09047e7fafaf69e530e8.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for DAO in contract 'DiceGame':
    |        require(withdrawAmount > 0);
    |        playerPendingWithdrawals[msg.sender] = 0;
  > |        if (msg.sender.call.value(withdrawAmount)()) {
    |            return true;
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0xffcf7f75602157e36fbe09047e7fafaf69e530e8.sol(301)

[31mViolation[0m for DAOConstantGas in contract 'DiceGame':
    |
    |    function safeSendFunds(address beneficiary, uint amount) private {
  > |        if (!beneficiary.send(amount)) {
    |            playerPendingWithdrawals[beneficiary] = playerPendingWithdrawals[beneficiary].add(amount);
    |
  at /home/jiaming/mavs_srcs/contract@0xffcf7f75602157e36fbe09047e7fafaf69e530e8.sol(290)

[33mWarning[0m for DAOConstantGas in contract 'DiceGame':
    |    function houseWithdraw(uint amount) public onlyOwner {
    |
  > |        if (!owner.send(amount)) revert();
    |
    |        emit LogHouseWithdraw(amount);
  at /home/jiaming/mavs_srcs/contract@0xffcf7f75602157e36fbe09047e7fafaf69e530e8.sol(320)

[33mWarning[0m for LockedEther in contract 'DiceGame':
    |}
    |
  > |contract DiceGame {
    |
    |    using SafeMath for *;
  at /home/jiaming/mavs_srcs/contract@0xffcf7f75602157e36fbe09047e7fafaf69e530e8.sol(45)

[33mWarning[0m for TODAmount in contract 'DiceGame':
    |    function houseWithdraw(uint amount) public onlyOwner {
    |
  > |        if (!owner.send(amount)) revert();
    |
    |        emit LogHouseWithdraw(amount);
  at /home/jiaming/mavs_srcs/contract@0xffcf7f75602157e36fbe09047e7fafaf69e530e8.sol(320)

[31mViolation[0m for TODReceiver in contract 'DiceGame':
    |    function houseWithdraw(uint amount) public onlyOwner {
    |
  > |        if (!owner.send(amount)) revert();
    |
    |        emit LogHouseWithdraw(amount);
  at /home/jiaming/mavs_srcs/contract@0xffcf7f75602157e36fbe09047e7fafaf69e530e8.sol(320)

[33mWarning[0m for TODReceiver in contract 'DiceGame':
    |        require(withdrawAmount > 0);
    |        playerPendingWithdrawals[msg.sender] = 0;
  > |        if (msg.sender.call.value(withdrawAmount)()) {
    |            return true;
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0xffcf7f75602157e36fbe09047e7fafaf69e530e8.sol(301)

[33mWarning[0m for UnhandledException in contract 'DiceGame':
    |
    |        bytes32 signatureHash = keccak256(abi.encodePacked(lastBlock, commit));
  > |        require(signer == ecrecover(signatureHash, v, r, s), "ECDSA signature is not valid.");
    |
    |        Bet storage bet = bets[commit];
  at /home/jiaming/mavs_srcs/contract@0xffcf7f75602157e36fbe09047e7fafaf69e530e8.sol(165)

[33mWarning[0m for UnhandledException in contract 'DiceGame':
    |
    |    function safeSendFunds(address beneficiary, uint amount) private {
  > |        if (!beneficiary.send(amount)) {
    |            playerPendingWithdrawals[beneficiary] = playerPendingWithdrawals[beneficiary].add(amount);
    |
  at /home/jiaming/mavs_srcs/contract@0xffcf7f75602157e36fbe09047e7fafaf69e530e8.sol(290)

[33mWarning[0m for UnhandledException in contract 'DiceGame':
    |        require(withdrawAmount > 0);
    |        playerPendingWithdrawals[msg.sender] = 0;
  > |        if (msg.sender.call.value(withdrawAmount)()) {
    |            return true;
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0xffcf7f75602157e36fbe09047e7fafaf69e530e8.sol(301)

[33mWarning[0m for UnhandledException in contract 'DiceGame':
    |    function houseWithdraw(uint amount) public onlyOwner {
    |
  > |        if (!owner.send(amount)) revert();
    |
    |        emit LogHouseWithdraw(amount);
  at /home/jiaming/mavs_srcs/contract@0xffcf7f75602157e36fbe09047e7fafaf69e530e8.sol(320)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DiceGame':
    |
    |        bytes32 signatureHash = keccak256(abi.encodePacked(lastBlock, commit));
  > |        require(signer == ecrecover(signatureHash, v, r, s), "ECDSA signature is not valid.");
    |
    |        Bet storage bet = bets[commit];
  at /home/jiaming/mavs_srcs/contract@0xffcf7f75602157e36fbe09047e7fafaf69e530e8.sol(165)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DiceGame':
    |    function houseWithdraw(uint amount) public onlyOwner {
    |
  > |        if (!owner.send(amount)) revert();
    |
    |        emit LogHouseWithdraw(amount);
  at /home/jiaming/mavs_srcs/contract@0xffcf7f75602157e36fbe09047e7fafaf69e530e8.sol(320)

[31mViolation[0m for UnrestrictedWrite in contract 'DiceGame':
    |    function createInviteID(address _addr) public returns (bool) {
    |        if (playerIdxAddr[_addr] == 0) {
  > |            pID++;
    |            playerIdxAddr[_addr] = pID;
    |            playerAddrIdx[pID] = _addr;
  at /home/jiaming/mavs_srcs/contract@0xffcf7f75602157e36fbe09047e7fafaf69e530e8.sol(133)

[31mViolation[0m for UnrestrictedWrite in contract 'DiceGame':
    |        if (playerIdxAddr[_addr] == 0) {
    |            pID++;
  > |            playerIdxAddr[_addr] = pID;
    |            playerAddrIdx[pID] = _addr;
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xffcf7f75602157e36fbe09047e7fafaf69e530e8.sol(134)

[31mViolation[0m for UnrestrictedWrite in contract 'DiceGame':
    |            pID++;
    |            playerIdxAddr[_addr] = pID;
  > |            playerAddrIdx[pID] = _addr;
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xffcf7f75602157e36fbe09047e7fafaf69e530e8.sol(135)

[31mViolation[0m for UnrestrictedWrite in contract 'DiceGame':
    |        require(block.number > bet.placeBlockNumber + BET_EXPIRATION_BLOCKS);
    |
  > |        bet.amount = 0;
    |        uint winAmount = getDiceWinAmount(amount, bet.roll, bet.lessThan);
    |        maxPendingPayouts = maxPendingPayouts.sub(winAmount);
  at /home/jiaming/mavs_srcs/contract@0xffcf7f75602157e36fbe09047e7fafaf69e530e8.sol(218)

[31mViolation[0m for UnrestrictedWrite in contract 'DiceGame':
    |        bet.amount = 0;
    |        uint winAmount = getDiceWinAmount(amount, bet.roll, bet.lessThan);
  > |        maxPendingPayouts = maxPendingPayouts.sub(winAmount);
    |
    |        safeSendFunds(player, amount);
  at /home/jiaming/mavs_srcs/contract@0xffcf7f75602157e36fbe09047e7fafaf69e530e8.sol(220)

[31mViolation[0m for UnrestrictedWrite in contract 'DiceGame':
    |
    |
  > |        bet.amount = 0;
    |
    |        bytes32 seed = keccak256(abi.encodePacked(reveal, blockHash));
  at /home/jiaming/mavs_srcs/contract@0xffcf7f75602157e36fbe09047e7fafaf69e530e8.sol(266)

[31mViolation[0m for UnrestrictedWrite in contract 'DiceGame':
    |
    |
  > |        maxPendingPayouts = maxPendingPayouts.sub(diceWinAmount);
    |
    |        uint diceWin = 0;
  at /home/jiaming/mavs_srcs/contract@0xffcf7f75602157e36fbe09047e7fafaf69e530e8.sol(275)

[33mWarning[0m for UnrestrictedWrite in contract 'DiceGame':
    |
    |    function setInvite(address inviteAddress, uint inviteID, uint profit) public onlyOwner {
  > |        playerIdxAddr[inviteAddress] = inviteID;
    |        playerAddrIdx[inviteID] = inviteAddress;
    |        playerPendingWithdrawals[inviteAddress] = profit;
  at /home/jiaming/mavs_srcs/contract@0xffcf7f75602157e36fbe09047e7fafaf69e530e8.sol(113)

[33mWarning[0m for UnrestrictedWrite in contract 'DiceGame':
    |    function setInvite(address inviteAddress, uint inviteID, uint profit) public onlyOwner {
    |        playerIdxAddr[inviteAddress] = inviteID;
  > |        playerAddrIdx[inviteID] = inviteAddress;
    |        playerPendingWithdrawals[inviteAddress] = profit;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xffcf7f75602157e36fbe09047e7fafaf69e530e8.sol(114)

[33mWarning[0m for UnrestrictedWrite in contract 'DiceGame':
    |        playerIdxAddr[inviteAddress] = inviteID;
    |        playerAddrIdx[inviteID] = inviteAddress;
  > |        playerPendingWithdrawals[inviteAddress] = profit;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xffcf7f75602157e36fbe09047e7fafaf69e530e8.sol(115)

[33mWarning[0m for UnrestrictedWrite in contract 'DiceGame':
    |        uint withdrawAmount = playerPendingWithdrawals[msg.sender];
    |        require(withdrawAmount > 0);
  > |        playerPendingWithdrawals[msg.sender] = 0;
    |        if (msg.sender.call.value(withdrawAmount)()) {
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xffcf7f75602157e36fbe09047e7fafaf69e530e8.sol(300)

[33mWarning[0m for UnrestrictedWrite in contract 'DiceGame':
    |            return true;
    |        } else {
  > |            playerPendingWithdrawals[msg.sender] = withdrawAmount;
    |            return false;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xffcf7f75602157e36fbe09047e7fafaf69e530e8.sol(304)

[33mWarning[0m for UnrestrictedWrite in contract 'DiceGame':
    |
    |    function setSecretSigner(address _signer) external onlyOwner {
  > |        signer = _signer;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xffcf7f75602157e36fbe09047e7fafaf69e530e8.sol(101)

[33mWarning[0m for UnrestrictedWrite in contract 'DiceGame':
    |
    |    function setMinBet(uint _minBet) public onlyOwner {
  > |        minBet = _minBet;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xffcf7f75602157e36fbe09047e7fafaf69e530e8.sol(105)

[33mWarning[0m for UnrestrictedWrite in contract 'DiceGame':
    |
    |    function addBankerAddress(address bankerAddress) public onlyOwner {
  > |        banker[bankerAddress] = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xffcf7f75602157e36fbe09047e7fafaf69e530e8.sol(109)

[33mWarning[0m for UnrestrictedWrite in contract 'DiceGame':
    |
    |    function setMaxProfit(uint _maxProfit) public onlyOwner {
  > |        maxProfit = _maxProfit;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xffcf7f75602157e36fbe09047e7fafaf69e530e8.sol(146)

[33mWarning[0m for UnrestrictedWrite in contract 'DiceGame':
    |
    |    function setOwner(address _owner) public onlyOwner {
  > |        owner = _owner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xffcf7f75602157e36fbe09047e7fafaf69e530e8.sol(155)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.24;
    |
  > |library SafeMath {
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0xffcf7f75602157e36fbe09047e7fafaf69e530e8.sol(3)


