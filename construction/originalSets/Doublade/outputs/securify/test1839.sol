Processing contract: /home/jiaming/mavs_srcs/contract@0x75e13520fc29d0bcdd21da14ed693563091ff0fc.sol:CryptoStars
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'CryptoStars':
    |        // sending to prevent re-entrancy attacks
    |        pendingWithdrawals[msg.sender] = 0;
  > |        msg.sender.send(amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x75e13520fc29d0bcdd21da14ed693563091ff0fc.sol(362)

[33mWarning[0m for DAOConstantGas in contract 'CryptoStars':
    |
    |        pendingWithdrawals[msg.sender] -= withdrawAmount;
  > |        msg.sender.send(withdrawAmount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x75e13520fc29d0bcdd21da14ed693563091ff0fc.sol(372)

[33mWarning[0m for LockedEther in contract 'CryptoStars':
    |//import "./ConvertLib.sol";
    |
  > |contract CryptoStars {
    |
    |    address owner;
  at /home/jiaming/mavs_srcs/contract@0x75e13520fc29d0bcdd21da14ed693563091ff0fc.sol(5)

[33mWarning[0m for TODAmount in contract 'CryptoStars':
    |
    |        pendingWithdrawals[msg.sender] -= withdrawAmount;
  > |        msg.sender.send(withdrawAmount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x75e13520fc29d0bcdd21da14ed693563091ff0fc.sol(372)

[33mWarning[0m for TODReceiver in contract 'CryptoStars':
    |        // sending to prevent re-entrancy attacks
    |        pendingWithdrawals[msg.sender] = 0;
  > |        msg.sender.send(amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x75e13520fc29d0bcdd21da14ed693563091ff0fc.sol(362)

[33mWarning[0m for TODReceiver in contract 'CryptoStars':
    |
    |        pendingWithdrawals[msg.sender] -= withdrawAmount;
  > |        msg.sender.send(withdrawAmount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x75e13520fc29d0bcdd21da14ed693563091ff0fc.sol(372)

[31mViolation[0m for UnhandledException in contract 'CryptoStars':
    |        // sending to prevent re-entrancy attacks
    |        pendingWithdrawals[msg.sender] = 0;
  > |        msg.sender.send(amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x75e13520fc29d0bcdd21da14ed693563091ff0fc.sol(362)

[31mViolation[0m for UnhandledException in contract 'CryptoStars':
    |
    |        pendingWithdrawals[msg.sender] -= withdrawAmount;
  > |        msg.sender.send(withdrawAmount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x75e13520fc29d0bcdd21da14ed693563091ff0fc.sol(372)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CryptoStars':
    |
    |        pendingWithdrawals[msg.sender] -= withdrawAmount;
  > |        msg.sender.send(withdrawAmount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x75e13520fc29d0bcdd21da14ed693563091ff0fc.sol(372)

[31mViolation[0m for UnrestrictedWrite in contract 'CryptoStars':
    |        starIndexToSTRZMasterName[starIndex] = strSTRZMasterName;
    |
  > |        starIndexToAddress[starIndex] = msg.sender;
    |    
    |        balanceOf[msg.sender]++;
  at /home/jiaming/mavs_srcs/contract@0x75e13520fc29d0bcdd21da14ed693563091ff0fc.sol(171)

[31mViolation[0m for UnrestrictedWrite in contract 'CryptoStars':
    |        address seller = offer.seller;
    |        
  > |        balanceOf[seller]--;
    |        balanceOf[msg.sender]++;
    |
  at /home/jiaming/mavs_srcs/contract@0x75e13520fc29d0bcdd21da14ed693563091ff0fc.sol(239)

[31mViolation[0m for UnrestrictedWrite in contract 'CryptoStars':
    |        if (msg.value < initialPrice) throw;               // Didn't send enough ETH
    |        
  > |        starIndexToAddress[starIndex] = msg.sender;   
    |        starIndexToSTRZName[starIndex] = strSTRZName;      //Assign the star to new owner
    |        
  at /home/jiaming/mavs_srcs/contract@0x75e13520fc29d0bcdd21da14ed693563091ff0fc.sol(277)

[31mViolation[0m for UnrestrictedWrite in contract 'CryptoStars':
    |        
    |        balanceOf[msg.sender]++;                            //Update the STRZ token balance for the new owner
  > |        pendingWithdrawals[owner] += msg.value;
    |
    |        string STRZMasterName = starIndexToSTRZMasterName[starIndex];
  at /home/jiaming/mavs_srcs/contract@0x75e13520fc29d0bcdd21da14ed693563091ff0fc.sol(281)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoStars':
    |        starsRemainingToAssign -= numberStarsReservedThisRun;
    |        numberOfStarsReserved += numberStarsReservedThisRun;
  > |        balanceOf[msg.sender] += numberStarsReservedThisRun;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x75e13520fc29d0bcdd21da14ed693563091ff0fc.sol(124)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoStars':
    |        starIndexToAddress[starIndex] = msg.sender;
    |    
  > |        balanceOf[msg.sender]++;
    |        Assign(msg.sender, starIndex, starIndexToSTRZName[starIndex], starIndexToSTRZMasterName[starIndex]);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x75e13520fc29d0bcdd21da14ed693563091ff0fc.sol(173)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoStars':
    |
    |        starIndexToAddress[starIndex] = to;
  > |        balanceOf[msg.sender]--;
    |        balanceOf[to]++;
    |        StarTransfer(msg.sender, to, starIndex);
  at /home/jiaming/mavs_srcs/contract@0x75e13520fc29d0bcdd21da14ed693563091ff0fc.sol(183)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoStars':
    |        StarTransfer(msg.sender, to, starIndex);
    |        Assign(to, starIndex, starIndexToSTRZName[starIndex], starIndexToSTRZMasterName[starIndex]);
  > |        pendingWithdrawals[owner] += msg.value;
    |        //kill any bids and refund bid
    |        Bid bid = starBids[starIndex];
  at /home/jiaming/mavs_srcs/contract@0x75e13520fc29d0bcdd21da14ed693563091ff0fc.sol(187)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoStars':
    |        Bid bid = starBids[starIndex];
    |        if (bid.hasBid) {
  > |            pendingWithdrawals[bid.bidder] += bid.value;
    |            starBids[starIndex] = Bid(false, starIndex, 0x0, 0);
    |            StarBidWithdrawn(starIndex, bid.value, to);
  at /home/jiaming/mavs_srcs/contract@0x75e13520fc29d0bcdd21da14ed693563091ff0fc.sol(191)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoStars':
    |        if (bid.hasBid) {
    |            pendingWithdrawals[bid.bidder] += bid.value;
  > |            starBids[starIndex] = Bid(false, starIndex, 0x0, 0);
    |            StarBidWithdrawn(starIndex, bid.value, to);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x75e13520fc29d0bcdd21da14ed693563091ff0fc.sol(192)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoStars':
    |        Offer offer = starsOfferedForSale[starIndex];
    |        if (offer.isForSale) {
  > |             starsOfferedForSale[starIndex] = Offer(false, starIndex, msg.sender, 0, 0x0);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x75e13520fc29d0bcdd21da14ed693563091ff0fc.sol(199)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoStars':
    |    function starNoLongerForSale(uint starIndex) {
    |        if (starIndexToAddress[starIndex] != msg.sender) throw;
  > |        starsOfferedForSale[starIndex] = Offer(false, starIndex, msg.sender, 0, 0x0);
    |        StarNoLongerForSale(starIndex);
    |        Bid bid = starBids[starIndex];
  at /home/jiaming/mavs_srcs/contract@0x75e13520fc29d0bcdd21da14ed693563091ff0fc.sol(206)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoStars':
    |        if (bid.bidder == msg.sender ) {
    |            // Kill bid and refund value
  > |            pendingWithdrawals[msg.sender] += bid.value;
    |            starBids[starIndex] = Bid(false, starIndex, 0x0, 0);
    |            StarBidWithdrawn(starIndex, bid.value, msg.sender);
  at /home/jiaming/mavs_srcs/contract@0x75e13520fc29d0bcdd21da14ed693563091ff0fc.sol(211)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoStars':
    |            // Kill bid and refund value
    |            pendingWithdrawals[msg.sender] += bid.value;
  > |            starBids[starIndex] = Bid(false, starIndex, 0x0, 0);
    |            StarBidWithdrawn(starIndex, bid.value, msg.sender);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x75e13520fc29d0bcdd21da14ed693563091ff0fc.sol(212)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoStars':
    |        
    |        balanceOf[seller]--;
  > |        balanceOf[msg.sender]++;
    |
    |        Assign(msg.sender, starIndex,starIndexToSTRZName[starIndex], starIndexToSTRZMasterName[starIndex]);
  at /home/jiaming/mavs_srcs/contract@0x75e13520fc29d0bcdd21da14ed693563091ff0fc.sol(240)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoStars':
    |        if (bid.bidder == msg.sender) {
    |            // Kill bid and refund value
  > |            pendingWithdrawals[msg.sender] += bid.value;
    |            starBids[starIndex] = Bid(false, starIndex, 0x0, 0);
    |            StarBidWithdrawn(starIndex, bid.value, msg.sender);
  at /home/jiaming/mavs_srcs/contract@0x75e13520fc29d0bcdd21da14ed693563091ff0fc.sol(262)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoStars':
    |            // Kill bid and refund value
    |            pendingWithdrawals[msg.sender] += bid.value;
  > |            starBids[starIndex] = Bid(false, starIndex, 0x0, 0);
    |            StarBidWithdrawn(starIndex, bid.value, msg.sender);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x75e13520fc29d0bcdd21da14ed693563091ff0fc.sol(263)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoStars':
    |        starIndexToSTRZName[starIndex] = strSTRZName;      //Assign the star to new owner
    |        
  > |        balanceOf[msg.sender]++;                            //Update the STRZ token balance for the new owner
    |        pendingWithdrawals[owner] += msg.value;
    |
  at /home/jiaming/mavs_srcs/contract@0x75e13520fc29d0bcdd21da14ed693563091ff0fc.sol(280)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoStars':
    |
    |        starIndexToAddress[starIndex] = bid.bidder;
  > |        balanceOf[seller]--;
    |        balanceOf[bid.bidder]++;
    |        Transfer(seller, bid.bidder, 1);
  at /home/jiaming/mavs_srcs/contract@0x75e13520fc29d0bcdd21da14ed693563091ff0fc.sol(318)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoStars':
    |        starIndexToAddress[starIndex] = bid.bidder;
    |        balanceOf[seller]--;
  > |        balanceOf[bid.bidder]++;
    |        Transfer(seller, bid.bidder, 1);
    |
  at /home/jiaming/mavs_srcs/contract@0x75e13520fc29d0bcdd21da14ed693563091ff0fc.sol(319)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoStars':
    |        uint amountowner = amount*3/100;
    |        
  > |        pendingWithdrawals[seller] += amountseller;
    |        pendingWithdrawals[owner] += amountowner;               //Registration Fee 3%
    |
  at /home/jiaming/mavs_srcs/contract@0x75e13520fc29d0bcdd21da14ed693563091ff0fc.sol(328)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoStars':
    |        StarNoLongerForSale(starIndex);
    |
  > |        starBids[starIndex] = Bid(false, starIndex, 0x0, 0);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x75e13520fc29d0bcdd21da14ed693563091ff0fc.sol(338)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoStars':
    |        starBids[starIndex] = Bid(false, starIndex, 0x0, 0);
    |        // Refund the bid money
  > |        pendingWithdrawals[msg.sender] += amount;
    |    
    |    }
  at /home/jiaming/mavs_srcs/contract@0x75e13520fc29d0bcdd21da14ed693563091ff0fc.sol(352)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoStars':
    |        // Remember to zero the pending refund before
    |        // sending to prevent re-entrancy attacks
  > |        pendingWithdrawals[msg.sender] = 0;
    |        msg.sender.send(amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x75e13520fc29d0bcdd21da14ed693563091ff0fc.sol(361)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoStars':
    |        if (withdrawAmount > pendingWithdrawals[msg.sender]) throw;
    |
  > |        pendingWithdrawals[msg.sender] -= withdrawAmount;
    |        msg.sender.send(withdrawAmount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x75e13520fc29d0bcdd21da14ed693563091ff0fc.sol(371)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoStars':
    |//import "./ConvertLib.sol";
    |
  > |contract CryptoStars {
    |
    |    address owner;
  at /home/jiaming/mavs_srcs/contract@0x75e13520fc29d0bcdd21da14ed693563091ff0fc.sol(5)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoStars':
    |    function setMinMax(uint256 MaxStarIndexHolder, uint256 MinStarIndexHolder) {
    |        if (msg.sender != owner) throw;
  > |        MaxStarIndexAvailable = MaxStarIndexHolder;
    |        MinStarIndexAvailable = MinStarIndexHolder;
    |        StarMinMax(MinStarIndexAvailable,MaxStarIndexAvailable, initialPrice);
  at /home/jiaming/mavs_srcs/contract@0x75e13520fc29d0bcdd21da14ed693563091ff0fc.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoStars':
    |        if (msg.sender != owner) throw;
    |        MaxStarIndexAvailable = MaxStarIndexHolder;
  > |        MinStarIndexAvailable = MinStarIndexHolder;
    |        StarMinMax(MinStarIndexAvailable,MaxStarIndexAvailable, initialPrice);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x75e13520fc29d0bcdd21da14ed693563091ff0fc.sol(148)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoStars':
    |    function setStarInitialPrice(uint256 initialPriceHolder) {
    |        if (msg.sender != owner) throw;
  > |        initialPrice = initialPriceHolder;
    |        StarMinMax(MinStarIndexAvailable,MaxStarIndexAvailable, initialPrice);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x75e13520fc29d0bcdd21da14ed693563091ff0fc.sol(154)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoStars':
    |    function setTransferPrice(uint256 transferPriceHolder){
    |        if (msg.sender != owner) throw;
  > |        transferPrice = transferPriceHolder;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x75e13520fc29d0bcdd21da14ed693563091ff0fc.sol(160)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoStars':
    |        if (msg.value < transferPrice) throw;                       // Didn't send enough ETH
    |
  > |        starIndexToAddress[starIndex] = to;
    |        balanceOf[msg.sender]--;
    |        balanceOf[to]++;
  at /home/jiaming/mavs_srcs/contract@0x75e13520fc29d0bcdd21da14ed693563091ff0fc.sol(182)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoStars':
    |        starIndexToAddress[starIndex] = to;
    |        balanceOf[msg.sender]--;
  > |        balanceOf[to]++;
    |        StarTransfer(msg.sender, to, starIndex);
    |        Assign(to, starIndex, starIndexToSTRZName[starIndex], starIndexToSTRZMasterName[starIndex]);
  at /home/jiaming/mavs_srcs/contract@0x75e13520fc29d0bcdd21da14ed693563091ff0fc.sol(184)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoStars':
    |    function offerStarForSale(uint starIndex, uint minSalePriceInWei) {
    |        if (starIndexToAddress[starIndex] != msg.sender) throw;
  > |        starsOfferedForSale[starIndex] = Offer(true, starIndex, msg.sender, minSalePriceInWei, 0x0);
    |        StarOffered(starIndex, minSalePriceInWei, msg.sender, 0x0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x75e13520fc29d0bcdd21da14ed693563091ff0fc.sol(219)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoStars':
    |    function offerStarForSaleToAddress(uint starIndex, uint minSalePriceInWei, address toAddress) {
    |        if (starIndexToAddress[starIndex] != msg.sender) throw;
  > |        starsOfferedForSale[starIndex] = Offer(true, starIndex, msg.sender, minSalePriceInWei, toAddress);
    |        StarOffered(starIndex, minSalePriceInWei, msg.sender, toAddress);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x75e13520fc29d0bcdd21da14ed693563091ff0fc.sol(225)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoStars':
    |        if (existing.value > 0) {
    |            // Refund the failing bid
  > |            pendingWithdrawals[existing.bidder] += existing.value;
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x75e13520fc29d0bcdd21da14ed693563091ff0fc.sol(301)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoStars':
    |        }
    |
  > |        starBids[starIndex] = Bid(true, starIndex, msg.sender, msg.value);
    |        StarBidEntered(starIndex, msg.value, msg.sender);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x75e13520fc29d0bcdd21da14ed693563091ff0fc.sol(304)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoStars':
    |        if (bid.value < minPrice) throw;
    |
  > |        starIndexToAddress[starIndex] = bid.bidder;
    |        balanceOf[seller]--;
    |        balanceOf[bid.bidder]++;
  at /home/jiaming/mavs_srcs/contract@0x75e13520fc29d0bcdd21da14ed693563091ff0fc.sol(317)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoStars':
    |        Transfer(seller, bid.bidder, 1);
    |
  > |        starsOfferedForSale[starIndex] = Offer(false, starIndex, bid.bidder, 0, 0x0);
    |        
    |        uint amount = bid.value;
  at /home/jiaming/mavs_srcs/contract@0x75e13520fc29d0bcdd21da14ed693563091ff0fc.sol(322)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoStars':
    |        
    |        pendingWithdrawals[seller] += amountseller;
  > |        pendingWithdrawals[owner] += amountowner;               //Registration Fee 3%
    |
    |        string STRZGivenName = starIndexToSTRZName[starIndex];
  at /home/jiaming/mavs_srcs/contract@0x75e13520fc29d0bcdd21da14ed693563091ff0fc.sol(329)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoStars':
    |        StarBidWithdrawn(starIndex, bid.value, msg.sender);
    |        uint amount = bid.value;
  > |        starBids[starIndex] = Bid(false, starIndex, 0x0, 0);
    |        // Refund the bid money
    |        pendingWithdrawals[msg.sender] += amount;
  at /home/jiaming/mavs_srcs/contract@0x75e13520fc29d0bcdd21da14ed693563091ff0fc.sol(350)


