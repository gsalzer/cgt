Processing contract: /home/jiaming/mavs_srcs/contract@0xa25e8050f80ee99a17e861cd0931d5d362caa34e.sol:GameCards
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'GameCards':
    |        // sending to prevent re-entrancy attacks
    |        pendingWithdrawals[msg.sender] = 0;
  > |        msg.sender.transfer(amount);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa25e8050f80ee99a17e861cd0931d5d362caa34e.sol(353)

[33mWarning[0m for LockedEther in contract 'GameCards':
    |
    |
  > |contract GameCards {
    |
    |    /// Lease record, store card tenants details
  at /home/jiaming/mavs_srcs/contract@0xa25e8050f80ee99a17e861cd0931d5d362caa34e.sol(4)

[33mWarning[0m for TODReceiver in contract 'GameCards':
    |        // sending to prevent re-entrancy attacks
    |        pendingWithdrawals[msg.sender] = 0;
  > |        msg.sender.transfer(amount);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa25e8050f80ee99a17e861cd0931d5d362caa34e.sol(353)

[33mWarning[0m for UnhandledException in contract 'GameCards':
    |        // sending to prevent re-entrancy attacks
    |        pendingWithdrawals[msg.sender] = 0;
  > |        msg.sender.transfer(amount);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa25e8050f80ee99a17e861cd0931d5d362caa34e.sol(353)

[33mWarning[0m for UnrestrictedWrite in contract 'GameCards':
    |
    |
  > |contract GameCards {
    |
    |    /// Lease record, store card tenants details
  at /home/jiaming/mavs_srcs/contract@0xa25e8050f80ee99a17e861cd0931d5d362caa34e.sol(4)

[33mWarning[0m for UnrestrictedWrite in contract 'GameCards':
    |        _initCardDetails(cardId, price);
    |        // Add the card to cardList
  > |        cardList.push(cardId);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa25e8050f80ee99a17e861cd0931d5d362caa34e.sol(161)

[33mWarning[0m for UnrestrictedWrite in contract 'GameCards':
    |        returns (bool success)
    |    {
  > |        cardDetailsStructs[cardId].price = price;
    |        cardDetailsStructs[cardId].availableBuy = true;
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xa25e8050f80ee99a17e861cd0931d5d362caa34e.sol(211)

[33mWarning[0m for UnrestrictedWrite in contract 'GameCards':
    |    {
    |        cardDetailsStructs[cardId].price = price;
  > |        cardDetailsStructs[cardId].availableBuy = true;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa25e8050f80ee99a17e861cd0931d5d362caa34e.sol(212)

[33mWarning[0m for UnrestrictedWrite in contract 'GameCards':
    |        returns (bool success)
    |    {
  > |        cardDetailsStructs[cardId].availableBuy = false;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa25e8050f80ee99a17e861cd0931d5d362caa34e.sol(222)

[33mWarning[0m for UnrestrictedWrite in contract 'GameCards':
    |        require(_until < block.number);
    |
  > |        cardDetailsStructs[cardId].priceLease = priceLease;
    |        cardDetailsStructs[cardId].availableLease = true;
    |        cardDetailsStructs[cardId].leaseDuration = leaseDuration;
  at /home/jiaming/mavs_srcs/contract@0xa25e8050f80ee99a17e861cd0931d5d362caa34e.sol(240)

[33mWarning[0m for UnrestrictedWrite in contract 'GameCards':
    |
    |        cardDetailsStructs[cardId].priceLease = priceLease;
  > |        cardDetailsStructs[cardId].availableLease = true;
    |        cardDetailsStructs[cardId].leaseDuration = leaseDuration;
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xa25e8050f80ee99a17e861cd0931d5d362caa34e.sol(241)

[33mWarning[0m for UnrestrictedWrite in contract 'GameCards':
    |        cardDetailsStructs[cardId].priceLease = priceLease;
    |        cardDetailsStructs[cardId].availableLease = true;
  > |        cardDetailsStructs[cardId].leaseDuration = leaseDuration;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa25e8050f80ee99a17e861cd0931d5d362caa34e.sol(242)

[33mWarning[0m for UnrestrictedWrite in contract 'GameCards':
    |        returns (bool success)
    |    {
  > |        cardDetailsStructs[cardId].availableLease = false;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa25e8050f80ee99a17e861cd0931d5d362caa34e.sol(253)

[33mWarning[0m for UnrestrictedWrite in contract 'GameCards':
    |        _applyShare(_cardOwner, contractOwner, ownerBuyCut);
    |        // Fill leaseCardStructs
  > |        details.leaseCardStructs[leaseId].id = leaseId;
    |        details.leaseCardStructs[leaseId].tenant = msg.sender;
    |        details.leaseCardStructs[leaseId].price = totalAmount;
  at /home/jiaming/mavs_srcs/contract@0xa25e8050f80ee99a17e861cd0931d5d362caa34e.sol(281)

[33mWarning[0m for UnrestrictedWrite in contract 'GameCards':
    |        // Fill leaseCardStructs
    |        details.leaseCardStructs[leaseId].id = leaseId;
  > |        details.leaseCardStructs[leaseId].tenant = msg.sender;
    |        details.leaseCardStructs[leaseId].price = totalAmount;
    |        details.leaseCardStructs[leaseId].untilBlock = untilBlock;
  at /home/jiaming/mavs_srcs/contract@0xa25e8050f80ee99a17e861cd0931d5d362caa34e.sol(282)

[33mWarning[0m for UnrestrictedWrite in contract 'GameCards':
    |        details.leaseCardStructs[leaseId].id = leaseId;
    |        details.leaseCardStructs[leaseId].tenant = msg.sender;
  > |        details.leaseCardStructs[leaseId].price = totalAmount;
    |        details.leaseCardStructs[leaseId].untilBlock = untilBlock;
    |        details.leaseCardStructs[leaseId].title = title;
  at /home/jiaming/mavs_srcs/contract@0xa25e8050f80ee99a17e861cd0931d5d362caa34e.sol(283)

[33mWarning[0m for UnrestrictedWrite in contract 'GameCards':
    |        details.leaseCardStructs[leaseId].tenant = msg.sender;
    |        details.leaseCardStructs[leaseId].price = totalAmount;
  > |        details.leaseCardStructs[leaseId].untilBlock = untilBlock;
    |        details.leaseCardStructs[leaseId].title = title;
    |        details.leaseCardStructs[leaseId].url = url;
  at /home/jiaming/mavs_srcs/contract@0xa25e8050f80ee99a17e861cd0931d5d362caa34e.sol(284)

[33mWarning[0m for UnrestrictedWrite in contract 'GameCards':
    |    {
    |        // Transfer card ownership
  > |        cardStructs[cardId].owner = to;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa25e8050f80ee99a17e861cd0931d5d362caa34e.sol(331)

[33mWarning[0m for UnrestrictedWrite in contract 'GameCards':
    |        // Remember to zero the pending refund before
    |        // sending to prevent re-entrancy attacks
  > |        pendingWithdrawals[msg.sender] = 0;
    |        msg.sender.transfer(amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xa25e8050f80ee99a17e861cd0931d5d362caa34e.sol(352)

[33mWarning[0m for UnrestrictedWrite in contract 'GameCards':
    |        returns (bool success)
    |    {
  > |        cardStructs[cardId].nsfw = flag;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa25e8050f80ee99a17e861cd0931d5d362caa34e.sol(372)

[33mWarning[0m for UnrestrictedWrite in contract 'GameCards':
    |        returns (bool success)
    |    {
  > |        cardStructs[_cardId].owner = _owner;
    |        cardStructs[_cardId].title = _title;
    |        cardStructs[_cardId].url = _url;
  at /home/jiaming/mavs_srcs/contract@0xa25e8050f80ee99a17e861cd0931d5d362caa34e.sol(380)

[33mWarning[0m for UnrestrictedWrite in contract 'GameCards':
    |    {
    |        // priceLease, leaseDuration set to default value(= 0)
  > |        cardDetailsStructs[cardId].id = cardId;
    |        cardDetailsStructs[cardId].price = price;
    |        cardDetailsStructs[cardId].availableBuy = false;
  at /home/jiaming/mavs_srcs/contract@0xa25e8050f80ee99a17e861cd0931d5d362caa34e.sol(392)

[33mWarning[0m for UnrestrictedWrite in contract 'GameCards':
    |        // priceLease, leaseDuration set to default value(= 0)
    |        cardDetailsStructs[cardId].id = cardId;
  > |        cardDetailsStructs[cardId].price = price;
    |        cardDetailsStructs[cardId].availableBuy = false;
    |        cardDetailsStructs[cardId].availableLease = false;
  at /home/jiaming/mavs_srcs/contract@0xa25e8050f80ee99a17e861cd0931d5d362caa34e.sol(393)

[33mWarning[0m for UnrestrictedWrite in contract 'GameCards':
    |        cardDetailsStructs[cardId].id = cardId;
    |        cardDetailsStructs[cardId].price = price;
  > |        cardDetailsStructs[cardId].availableBuy = false;
    |        cardDetailsStructs[cardId].availableLease = false;
    |        cardDetailsList.push(cardId);
  at /home/jiaming/mavs_srcs/contract@0xa25e8050f80ee99a17e861cd0931d5d362caa34e.sol(394)

[33mWarning[0m for UnrestrictedWrite in contract 'GameCards':
    |        cardDetailsStructs[cardId].price = price;
    |        cardDetailsStructs[cardId].availableBuy = false;
  > |        cardDetailsStructs[cardId].availableLease = false;
    |        cardDetailsList.push(cardId);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xa25e8050f80ee99a17e861cd0931d5d362caa34e.sol(395)

[33mWarning[0m for UnrestrictedWrite in contract 'GameCards':
    |        cardDetailsStructs[cardId].availableBuy = false;
    |        cardDetailsStructs[cardId].availableLease = false;
  > |        cardDetailsList.push(cardId);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa25e8050f80ee99a17e861cd0931d5d362caa34e.sol(396)

[33mWarning[0m for UnrestrictedWrite in contract 'GameCards':
    |        uint256 sellerProceeds = msg.value - auctioneerCut;
    |        // Credit seller balance
  > |        pendingWithdrawals[_seller] += sellerProceeds;
    |        // Credit auctionner balance
    |        pendingWithdrawals[_auctioneer] += auctioneerCut;
  at /home/jiaming/mavs_srcs/contract@0xa25e8050f80ee99a17e861cd0931d5d362caa34e.sol(408)

[33mWarning[0m for UnrestrictedWrite in contract 'GameCards':
    |        pendingWithdrawals[_seller] += sellerProceeds;
    |        // Credit auctionner balance
  > |        pendingWithdrawals[_auctioneer] += auctioneerCut;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa25e8050f80ee99a17e861cd0931d5d362caa34e.sol(410)


