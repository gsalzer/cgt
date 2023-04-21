Processing contract: /home/jiaming/mavs_srcs/contract@0xc0adf1ccc703a0a3393892600883a1a91a4e38de.sol:BTCRelay
Processing contract: /home/jiaming/mavs_srcs/contract@0xc0adf1ccc703a0a3393892600883a1a91a4e38de.sol:Escrow
Processing contract: /home/jiaming/mavs_srcs/contract@0xc0adf1ccc703a0a3393892600883a1a91a4e38de.sol:EthereumLottery
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc0adf1ccc703a0a3393892600883a1a91a4e38de.sol:PoissonData
[33mWarning[0m for DAO in contract 'EthereumLottery':
    |                bool successful = winner.call.gas(GAS_LIMIT).value(value)();
    |                if (!successful) {
  > |                    Escrow(escrow).deposit.value(value)(winner);
    |                }
    |            }
  at /home/jiaming/mavs_srcs/contract@0xc0adf1ccc703a0a3393892600883a1a91a4e38de.sol(178)

[33mWarning[0m for DAOConstantGas in contract 'EthereumLottery':
    |            if (winner != 0) {
    |                uint value = lotteries[id].jackpot;
  > |                bool successful = winner.call.gas(GAS_LIMIT).value(value)();
    |                if (!successful) {
    |                    Escrow(escrow).deposit.value(value)(winner);
  at /home/jiaming/mavs_srcs/contract@0xc0adf1ccc703a0a3393892600883a1a91a4e38de.sol(176)

[33mWarning[0m for DAOConstantGas in contract 'EthereumLottery':
    |            }
    |
  > |            var _ = admin.call.gas(GAS_LIMIT).value(this.balance)();
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc0adf1ccc703a0a3393892600883a1a91a4e38de.sol(182)

[33mWarning[0m for LockedEther in contract 'EthereumLottery':
    |}
    |
  > |contract EthereumLottery {
    |    uint constant INACTIVITY_TIMEOUT = 2 weeks;
    |    uint constant GAS_LIMIT = 300000;
  at /home/jiaming/mavs_srcs/contract@0xc0adf1ccc703a0a3393892600883a1a91a4e38de.sol(18)

[31mViolation[0m for TODAmount in contract 'EthereumLottery':
    |            }
    |
  > |            var _ = admin.call.gas(GAS_LIMIT).value(this.balance)();
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc0adf1ccc703a0a3393892600883a1a91a4e38de.sol(182)

[31mViolation[0m for TODReceiver in contract 'EthereumLottery':
    |            }
    |
  > |            var _ = admin.call.gas(GAS_LIMIT).value(this.balance)();
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc0adf1ccc703a0a3393892600883a1a91a4e38de.sol(182)

[31mViolation[0m for UnhandledException in contract 'EthereumLottery':
    |            }
    |
  > |            var _ = admin.call.gas(GAS_LIMIT).value(this.balance)();
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc0adf1ccc703a0a3393892600883a1a91a4e38de.sol(182)

[33mWarning[0m for UnhandledException in contract 'EthereumLottery':
    |        // is safe to keep selling tickets.
    |        uint ticketSaleDuration =
  > |            PoissonData(poissonData).lookup(_durationInBlocks - 1);
    |        require(ticketSaleDuration > 0);
    |
  at /home/jiaming/mavs_srcs/contract@0xc0adf1ccc703a0a3393892600883a1a91a4e38de.sol(100)

[33mWarning[0m for UnhandledException in contract 'EthereumLottery':
    |        lotteries[id].jackpot = _jackpot;
    |        lotteries[id].decidingBlock =
  > |            BTCRelay(btcRelay).getLastBlockHeight() + _durationInBlocks;
    |        lotteries[id].numTickets = _numTickets;
    |        lotteries[id].ticketPrice = _ticketPrice;
  at /home/jiaming/mavs_srcs/contract@0xc0adf1ccc703a0a3393892600883a1a91a4e38de.sol(106)

[33mWarning[0m for UnhandledException in contract 'EthereumLottery':
    |    function buyTickets(uint[] _tickets)
    |             payable afterInitialization {
  > |        int blockHeight = BTCRelay(btcRelay).getLastBlockHeight();
    |        require(blockHeight + 1 < lotteries[id].decidingBlock);
    |        require(now < lotteries[id].cutoffTimestamp);
  at /home/jiaming/mavs_srcs/contract@0xc0adf1ccc703a0a3393892600883a1a91a4e38de.sol(117)

[33mWarning[0m for UnhandledException in contract 'EthereumLottery':
    |            lotteries[id].decidingBlock - blockHeight;
    |        uint ticketSaleDuration =
  > |            PoissonData(poissonData).lookup(remainingDurationInBlocks - 1);
    |        if (now + ticketSaleDuration < lotteries[id].cutoffTimestamp) {
    |            lotteries[id].cutoffTimestamp = now + ticketSaleDuration;
  at /home/jiaming/mavs_srcs/contract@0xc0adf1ccc703a0a3393892600883a1a91a4e38de.sol(145)

[33mWarning[0m for UnhandledException in contract 'EthereumLottery':
    |    function needsFinalization()
    |             afterInitialization constant returns (bool) {
  > |        int blockHeight = BTCRelay(btcRelay).getLastBlockHeight();
    |        return blockHeight >= lotteries[id].decidingBlock + 6 &&
    |               lotteries[id].finalizationBlock == 0;
  at /home/jiaming/mavs_srcs/contract@0xc0adf1ccc703a0a3393892600883a1a91a4e38de.sol(153)

[33mWarning[0m for UnhandledException in contract 'EthereumLottery':
    |            if (winner != 0) {
    |                uint value = lotteries[id].jackpot;
  > |                bool successful = winner.call.gas(GAS_LIMIT).value(value)();
    |                if (!successful) {
    |                    Escrow(escrow).deposit.value(value)(winner);
  at /home/jiaming/mavs_srcs/contract@0xc0adf1ccc703a0a3393892600883a1a91a4e38de.sol(176)

[33mWarning[0m for UnhandledException in contract 'EthereumLottery':
    |                bool successful = winner.call.gas(GAS_LIMIT).value(value)();
    |                if (!successful) {
  > |                    Escrow(escrow).deposit.value(value)(winner);
    |                }
    |            }
  at /home/jiaming/mavs_srcs/contract@0xc0adf1ccc703a0a3393892600883a1a91a4e38de.sol(178)

[33mWarning[0m for UnhandledException in contract 'EthereumLottery':
    |        int blockHash;
    |        if (lotteries[id].nearestKnownBlock == 0) {
  > |            blockHeight = BTCRelay(btcRelay).getLastBlockHeight();
    |            blockHash = BTCRelay(btcRelay).getBlockchainHead();
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0xc0adf1ccc703a0a3393892600883a1a91a4e38de.sol(190)

[33mWarning[0m for UnhandledException in contract 'EthereumLottery':
    |        if (lotteries[id].nearestKnownBlock == 0) {
    |            blockHeight = BTCRelay(btcRelay).getLastBlockHeight();
  > |            blockHash = BTCRelay(btcRelay).getBlockchainHead();
    |        } else {
    |            blockHeight = lotteries[id].nearestKnownBlock;
  at /home/jiaming/mavs_srcs/contract@0xc0adf1ccc703a0a3393892600883a1a91a4e38de.sol(191)

[33mWarning[0m for UnhandledException in contract 'EthereumLottery':
    |        for (uint step = 0; step < _steps; step++) {
    |            // We expect free access to BTCRelay.
  > |            int fee = BTCRelay(btcRelay).getFeeAmount(blockHash);
    |            require(fee == 0);
    |
  at /home/jiaming/mavs_srcs/contract@0xc0adf1ccc703a0a3393892600883a1a91a4e38de.sol(200)

[33mWarning[0m for UnhandledException in contract 'EthereumLottery':
    |
    |            bytes32 blockHeader =
  > |                BTCRelay(btcRelay).getBlockHeader(blockHash)[2];
    |            bytes32 temp;
    |
  at /home/jiaming/mavs_srcs/contract@0xc0adf1ccc703a0a3393892600883a1a91a4e38de.sol(204)

[33mWarning[0m for UnhandledException in contract 'EthereumLottery':
    |        }
    |
  > |        _blockHeight = BTCRelay(btcRelay).getLastBlockHeight();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc0adf1ccc703a0a3393892600883a1a91a4e38de.sol(288)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthereumLottery':
    |        // is safe to keep selling tickets.
    |        uint ticketSaleDuration =
  > |            PoissonData(poissonData).lookup(_durationInBlocks - 1);
    |        require(ticketSaleDuration > 0);
    |
  at /home/jiaming/mavs_srcs/contract@0xc0adf1ccc703a0a3393892600883a1a91a4e38de.sol(100)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthereumLottery':
    |        lotteries[id].jackpot = _jackpot;
    |        lotteries[id].decidingBlock =
  > |            BTCRelay(btcRelay).getLastBlockHeight() + _durationInBlocks;
    |        lotteries[id].numTickets = _numTickets;
    |        lotteries[id].ticketPrice = _ticketPrice;
  at /home/jiaming/mavs_srcs/contract@0xc0adf1ccc703a0a3393892600883a1a91a4e38de.sol(106)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthereumLottery':
    |    function buyTickets(uint[] _tickets)
    |             payable afterInitialization {
  > |        int blockHeight = BTCRelay(btcRelay).getLastBlockHeight();
    |        require(blockHeight + 1 < lotteries[id].decidingBlock);
    |        require(now < lotteries[id].cutoffTimestamp);
  at /home/jiaming/mavs_srcs/contract@0xc0adf1ccc703a0a3393892600883a1a91a4e38de.sol(117)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthereumLottery':
    |            lotteries[id].decidingBlock - blockHeight;
    |        uint ticketSaleDuration =
  > |            PoissonData(poissonData).lookup(remainingDurationInBlocks - 1);
    |        if (now + ticketSaleDuration < lotteries[id].cutoffTimestamp) {
    |            lotteries[id].cutoffTimestamp = now + ticketSaleDuration;
  at /home/jiaming/mavs_srcs/contract@0xc0adf1ccc703a0a3393892600883a1a91a4e38de.sol(145)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthereumLottery':
    |    function needsFinalization()
    |             afterInitialization constant returns (bool) {
  > |        int blockHeight = BTCRelay(btcRelay).getLastBlockHeight();
    |        return blockHeight >= lotteries[id].decidingBlock + 6 &&
    |               lotteries[id].finalizationBlock == 0;
  at /home/jiaming/mavs_srcs/contract@0xc0adf1ccc703a0a3393892600883a1a91a4e38de.sol(153)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthereumLottery':
    |        int blockHash;
    |        if (lotteries[id].nearestKnownBlock == 0) {
  > |            blockHeight = BTCRelay(btcRelay).getLastBlockHeight();
    |            blockHash = BTCRelay(btcRelay).getBlockchainHead();
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0xc0adf1ccc703a0a3393892600883a1a91a4e38de.sol(190)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthereumLottery':
    |        if (lotteries[id].nearestKnownBlock == 0) {
    |            blockHeight = BTCRelay(btcRelay).getLastBlockHeight();
  > |            blockHash = BTCRelay(btcRelay).getBlockchainHead();
    |        } else {
    |            blockHeight = lotteries[id].nearestKnownBlock;
  at /home/jiaming/mavs_srcs/contract@0xc0adf1ccc703a0a3393892600883a1a91a4e38de.sol(191)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthereumLottery':
    |        for (uint step = 0; step < _steps; step++) {
    |            // We expect free access to BTCRelay.
  > |            int fee = BTCRelay(btcRelay).getFeeAmount(blockHash);
    |            require(fee == 0);
    |
  at /home/jiaming/mavs_srcs/contract@0xc0adf1ccc703a0a3393892600883a1a91a4e38de.sol(200)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthereumLottery':
    |
    |            bytes32 blockHeader =
  > |                BTCRelay(btcRelay).getBlockHeader(blockHash)[2];
    |            bytes32 temp;
    |
  at /home/jiaming/mavs_srcs/contract@0xc0adf1ccc703a0a3393892600883a1a91a4e38de.sol(204)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthereumLottery':
    |        }
    |
  > |        _blockHeight = BTCRelay(btcRelay).getLastBlockHeight();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc0adf1ccc703a0a3393892600883a1a91a4e38de.sol(288)

[31mViolation[0m for UnrestrictedWrite in contract 'EthereumLottery':
    |}
    |
  > |contract EthereumLottery {
    |    uint constant INACTIVITY_TIMEOUT = 2 weeks;
    |    uint constant GAS_LIMIT = 300000;
  at /home/jiaming/mavs_srcs/contract@0xc0adf1ccc703a0a3393892600883a1a91a4e38de.sol(18)

[31mViolation[0m for UnrestrictedWrite in contract 'EthereumLottery':
    |            require(lotteries[id].tickets[ticket] == 0);
    |
  > |            lotteries[id].tickets[ticket] = msg.sender;
    |            recentActivity[recentActivityIdx] = ticket;
    |
  at /home/jiaming/mavs_srcs/contract@0xc0adf1ccc703a0a3393892600883a1a91a4e38de.sol(130)

[31mViolation[0m for UnrestrictedWrite in contract 'EthereumLottery':
    |
    |            lotteries[id].tickets[ticket] = msg.sender;
  > |            recentActivity[recentActivityIdx] = ticket;
    |
    |            recentActivityIdx += 1;
  at /home/jiaming/mavs_srcs/contract@0xc0adf1ccc703a0a3393892600883a1a91a4e38de.sol(131)

[31mViolation[0m for UnrestrictedWrite in contract 'EthereumLottery':
    |            recentActivity[recentActivityIdx] = ticket;
    |
  > |            recentActivityIdx += 1;
    |            if (recentActivityIdx >= recentActivity.length) {
    |                recentActivityIdx = 0;
  at /home/jiaming/mavs_srcs/contract@0xc0adf1ccc703a0a3393892600883a1a91a4e38de.sol(133)

[31mViolation[0m for UnrestrictedWrite in contract 'EthereumLottery':
    |            recentActivityIdx += 1;
    |            if (recentActivityIdx >= recentActivity.length) {
  > |                recentActivityIdx = 0;
    |            }
    |        }
  at /home/jiaming/mavs_srcs/contract@0xc0adf1ccc703a0a3393892600883a1a91a4e38de.sol(135)

[31mViolation[0m for UnrestrictedWrite in contract 'EthereumLottery':
    |            }
    |        }
  > |        lotteries[id].numTicketsSold += _tickets.length;
    |        lastSaleTimestamp = now;
    |
  at /home/jiaming/mavs_srcs/contract@0xc0adf1ccc703a0a3393892600883a1a91a4e38de.sol(138)

[31mViolation[0m for UnrestrictedWrite in contract 'EthereumLottery':
    |        }
    |        lotteries[id].numTicketsSold += _tickets.length;
  > |        lastSaleTimestamp = now;
    |
    |        // Maybe shorten ticket sale timespan if we are running ahead.
  at /home/jiaming/mavs_srcs/contract@0xc0adf1ccc703a0a3393892600883a1a91a4e38de.sol(139)

[31mViolation[0m for UnrestrictedWrite in contract 'EthereumLottery':
    |            address winner = lotteries[id].tickets[uint(winningTicket)];
    |
  > |            lotteries[id].winningTicket = winningTicket;
    |            lotteries[id].winner = winner;
    |            lotteries[id].finalizationBlock = block.number;
  at /home/jiaming/mavs_srcs/contract@0xc0adf1ccc703a0a3393892600883a1a91a4e38de.sol(169)

[31mViolation[0m for UnrestrictedWrite in contract 'EthereumLottery':
    |
    |            lotteries[id].winningTicket = winningTicket;
  > |            lotteries[id].winner = winner;
    |            lotteries[id].finalizationBlock = block.number;
    |            lotteries[id].finalizer = tx.origin;
  at /home/jiaming/mavs_srcs/contract@0xc0adf1ccc703a0a3393892600883a1a91a4e38de.sol(170)

[31mViolation[0m for UnrestrictedWrite in contract 'EthereumLottery':
    |            lotteries[id].winningTicket = winningTicket;
    |            lotteries[id].winner = winner;
  > |            lotteries[id].finalizationBlock = block.number;
    |            lotteries[id].finalizer = tx.origin;
    |
  at /home/jiaming/mavs_srcs/contract@0xc0adf1ccc703a0a3393892600883a1a91a4e38de.sol(171)

[31mViolation[0m for UnrestrictedWrite in contract 'EthereumLottery':
    |            lotteries[id].winner = winner;
    |            lotteries[id].finalizationBlock = block.number;
  > |            lotteries[id].finalizer = tx.origin;
    |
    |            if (winner != 0) {
  at /home/jiaming/mavs_srcs/contract@0xc0adf1ccc703a0a3393892600883a1a91a4e38de.sol(172)

[31mViolation[0m for UnrestrictedWrite in contract 'EthereumLottery':
    |
    |        // Store the progress to pick up from there next time.
  > |        lotteries[id].nearestKnownBlock = blockHeight;
    |        lotteries[id].nearestKnownBlockHash = blockHash;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc0adf1ccc703a0a3393892600883a1a91a4e38de.sol(223)

[31mViolation[0m for UnrestrictedWrite in contract 'EthereumLottery':
    |        // Store the progress to pick up from there next time.
    |        lotteries[id].nearestKnownBlock = blockHeight;
  > |        lotteries[id].nearestKnownBlockHash = blockHash;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc0adf1ccc703a0a3393892600883a1a91a4e38de.sol(224)

[33mWarning[0m for UnrestrictedWrite in contract 'EthereumLottery':
    |}
    |
  > |contract EthereumLottery {
    |    uint constant INACTIVITY_TIMEOUT = 2 weeks;
    |    uint constant GAS_LIMIT = 300000;
  at /home/jiaming/mavs_srcs/contract@0xc0adf1ccc703a0a3393892600883a1a91a4e38de.sol(18)

[33mWarning[0m for UnrestrictedWrite in contract 'EthereumLottery':
    |        require(ticketSaleDuration > 0);
    |
  > |        id += 1;
    |        lotteries[id].jackpot = _jackpot;
    |        lotteries[id].decidingBlock =
  at /home/jiaming/mavs_srcs/contract@0xc0adf1ccc703a0a3393892600883a1a91a4e38de.sol(103)

[33mWarning[0m for UnrestrictedWrite in contract 'EthereumLottery':
    |
    |        id += 1;
  > |        lotteries[id].jackpot = _jackpot;
    |        lotteries[id].decidingBlock =
    |            BTCRelay(btcRelay).getLastBlockHeight() + _durationInBlocks;
  at /home/jiaming/mavs_srcs/contract@0xc0adf1ccc703a0a3393892600883a1a91a4e38de.sol(104)

[33mWarning[0m for UnrestrictedWrite in contract 'EthereumLottery':
    |        id += 1;
    |        lotteries[id].jackpot = _jackpot;
  > |        lotteries[id].decidingBlock =
    |            BTCRelay(btcRelay).getLastBlockHeight() + _durationInBlocks;
    |        lotteries[id].numTickets = _numTickets;
  at /home/jiaming/mavs_srcs/contract@0xc0adf1ccc703a0a3393892600883a1a91a4e38de.sol(105)

[33mWarning[0m for UnrestrictedWrite in contract 'EthereumLottery':
    |        lotteries[id].decidingBlock =
    |            BTCRelay(btcRelay).getLastBlockHeight() + _durationInBlocks;
  > |        lotteries[id].numTickets = _numTickets;
    |        lotteries[id].ticketPrice = _ticketPrice;
    |        lotteries[id].cutoffTimestamp = now + ticketSaleDuration;
  at /home/jiaming/mavs_srcs/contract@0xc0adf1ccc703a0a3393892600883a1a91a4e38de.sol(107)

[33mWarning[0m for UnrestrictedWrite in contract 'EthereumLottery':
    |            BTCRelay(btcRelay).getLastBlockHeight() + _durationInBlocks;
    |        lotteries[id].numTickets = _numTickets;
  > |        lotteries[id].ticketPrice = _ticketPrice;
    |        lotteries[id].cutoffTimestamp = now + ticketSaleDuration;
    |        lotteries[id].winningTicket = -1;
  at /home/jiaming/mavs_srcs/contract@0xc0adf1ccc703a0a3393892600883a1a91a4e38de.sol(108)

[33mWarning[0m for UnrestrictedWrite in contract 'EthereumLottery':
    |        lotteries[id].numTickets = _numTickets;
    |        lotteries[id].ticketPrice = _ticketPrice;
  > |        lotteries[id].cutoffTimestamp = now + ticketSaleDuration;
    |        lotteries[id].winningTicket = -1;
    |
  at /home/jiaming/mavs_srcs/contract@0xc0adf1ccc703a0a3393892600883a1a91a4e38de.sol(109)

[33mWarning[0m for UnrestrictedWrite in contract 'EthereumLottery':
    |        lotteries[id].ticketPrice = _ticketPrice;
    |        lotteries[id].cutoffTimestamp = now + ticketSaleDuration;
  > |        lotteries[id].winningTicket = -1;
    |
    |        lastInitTimestamp = now;
  at /home/jiaming/mavs_srcs/contract@0xc0adf1ccc703a0a3393892600883a1a91a4e38de.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'EthereumLottery':
    |        lotteries[id].winningTicket = -1;
    |
  > |        lastInitTimestamp = now;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc0adf1ccc703a0a3393892600883a1a91a4e38de.sol(112)

[33mWarning[0m for UnrestrictedWrite in contract 'EthereumLottery':
    |
    |    function setAdmin(address _admin) onlyOwner {
  > |        admin = _admin;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc0adf1ccc703a0a3393892600883a1a91a4e38de.sol(324)

[33mWarning[0m for UnrestrictedWrite in contract 'EthereumLottery':
    |
    |    function proposeOwner(address _owner) onlyOwner {
  > |        proposedOwner = _owner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc0adf1ccc703a0a3393892600883a1a91a4e38de.sol(328)

[33mWarning[0m for UnrestrictedWrite in contract 'EthereumLottery':
    |        require(proposedOwner != 0);
    |        require(msg.sender == proposedOwner);
  > |        owner = proposedOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc0adf1ccc703a0a3393892600883a1a91a4e38de.sol(334)


