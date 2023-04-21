Processing contract: /home/jiaming/mavs_srcs/contract@0x89c71090d597d8271258f51e9c61986c9b38bbfa.sol:Ownable
Processing contract: /home/jiaming/mavs_srcs/contract@0x89c71090d597d8271258f51e9c61986c9b38bbfa.sol:Presale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x89c71090d597d8271258f51e9c61986c9b38bbfa.sol:ReentrancyGuard
Processing contract: /home/jiaming/mavs_srcs/contract@0x89c71090d597d8271258f51e9c61986c9b38bbfa.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for DAOConstantGas in contract 'Presale':
    |        currentDiscountSum = currentDiscountSum.sub(amount);
    |
  > |        if (!msg.sender.send(amount)) {
    |            referralBonuses[msg.sender] = amount;
    |            currentDiscountSum = currentDiscountSum.add(amount);
  at /home/jiaming/mavs_srcs/contract@0x89c71090d597d8271258f51e9c61986c9b38bbfa.sol(325)

[33mWarning[0m for DAOConstantGas in contract 'Presale':
    |
    |  function withdraw(uint256 amount) public onlyOwner {
  > |    owner().transfer(amount);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x89c71090d597d8271258f51e9c61986c9b38bbfa.sol(315)

[33mWarning[0m for LockedEther in contract 'Presale':
    |}
    |
  > |contract Presale is Ownable, ReentrancyGuard {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x89c71090d597d8271258f51e9c61986c9b38bbfa.sol(159)

[33mWarning[0m for TODAmount in contract 'Presale':
    |
    |  function withdraw(uint256 amount) public onlyOwner {
  > |    owner().transfer(amount);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x89c71090d597d8271258f51e9c61986c9b38bbfa.sol(315)

[33mWarning[0m for TODAmount in contract 'Presale':
    |        currentDiscountSum = currentDiscountSum.sub(amount);
    |
  > |        if (!msg.sender.send(amount)) {
    |            referralBonuses[msg.sender] = amount;
    |            currentDiscountSum = currentDiscountSum.add(amount);
  at /home/jiaming/mavs_srcs/contract@0x89c71090d597d8271258f51e9c61986c9b38bbfa.sol(325)

[31mViolation[0m for TODReceiver in contract 'Presale':
    |
    |  function withdraw(uint256 amount) public onlyOwner {
  > |    owner().transfer(amount);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x89c71090d597d8271258f51e9c61986c9b38bbfa.sol(315)

[33mWarning[0m for TODReceiver in contract 'Presale':
    |        currentDiscountSum = currentDiscountSum.sub(amount);
    |
  > |        if (!msg.sender.send(amount)) {
    |            referralBonuses[msg.sender] = amount;
    |            currentDiscountSum = currentDiscountSum.add(amount);
  at /home/jiaming/mavs_srcs/contract@0x89c71090d597d8271258f51e9c61986c9b38bbfa.sol(325)

[33mWarning[0m for UnhandledException in contract 'Presale':
    |
    |  function withdraw(uint256 amount) public onlyOwner {
  > |    owner().transfer(amount);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x89c71090d597d8271258f51e9c61986c9b38bbfa.sol(315)

[33mWarning[0m for UnhandledException in contract 'Presale':
    |        currentDiscountSum = currentDiscountSum.sub(amount);
    |
  > |        if (!msg.sender.send(amount)) {
    |            referralBonuses[msg.sender] = amount;
    |            currentDiscountSum = currentDiscountSum.add(amount);
  at /home/jiaming/mavs_srcs/contract@0x89c71090d597d8271258f51e9c61986c9b38bbfa.sol(325)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Presale':
    |
    |  function withdraw(uint256 amount) public onlyOwner {
  > |    owner().transfer(amount);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x89c71090d597d8271258f51e9c61986c9b38bbfa.sol(315)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Presale':
    |        currentDiscountSum = currentDiscountSum.sub(amount);
    |
  > |        if (!msg.sender.send(amount)) {
    |            referralBonuses[msg.sender] = amount;
    |            currentDiscountSum = currentDiscountSum.add(amount);
  at /home/jiaming/mavs_srcs/contract@0x89c71090d597d8271258f51e9c61986c9b38bbfa.sol(325)

[33mWarning[0m for UnrestrictedWrite in contract 'Presale':
    |pragma solidity ^0.4.24;
    |
  > |contract Ownable {
    |  address private _owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x89c71090d597d8271258f51e9c61986c9b38bbfa.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'Presale':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipTransferred(_owner, address(0));
  > |    _owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x89c71090d597d8271258f51e9c61986c9b38bbfa.sol(50)

[33mWarning[0m for UnrestrictedWrite in contract 'Presale':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(_owner, newOwner);
  > |    _owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x89c71090d597d8271258f51e9c61986c9b38bbfa.sol(68)

[33mWarning[0m for UnrestrictedWrite in contract 'Presale':
    |      address parent = parentReferrals[msg.sender];
    |      if (referralData[parent].referrals == 0) {
  > |        referralData[referral].referrals = referralData[referral].referrals.add(1);
    |        referralData[referral].children.push(msg.sender);
    |        parentReferrals[msg.sender] = referral;
  at /home/jiaming/mavs_srcs/contract@0x89c71090d597d8271258f51e9c61986c9b38bbfa.sol(234)

[33mWarning[0m for UnrestrictedWrite in contract 'Presale':
    |      if (referralData[parent].referrals == 0) {
    |        referralData[referral].referrals = referralData[referral].referrals.add(1);
  > |        referralData[referral].children.push(msg.sender);
    |        parentReferrals[msg.sender] = referral;
    |      }
  at /home/jiaming/mavs_srcs/contract@0x89c71090d597d8271258f51e9c61986c9b38bbfa.sol(235)

[33mWarning[0m for UnrestrictedWrite in contract 'Presale':
    |        referralData[referral].referrals = referralData[referral].referrals.add(1);
    |        referralData[referral].children.push(msg.sender);
  > |        parentReferrals[msg.sender] = referral;
    |      }
    |
  at /home/jiaming/mavs_srcs/contract@0x89c71090d597d8271258f51e9c61986c9b38bbfa.sol(236)

[33mWarning[0m for UnrestrictedWrite in contract 'Presale':
    |
    |          // set payout bonus
  > |          referralBonuses[currentReferral] = referralBonuses[currentReferral].add(referralBonus);
    |
    |          // set stats/counters
  at /home/jiaming/mavs_srcs/contract@0x89c71090d597d8271258f51e9c61986c9b38bbfa.sol(253)

[33mWarning[0m for UnrestrictedWrite in contract 'Presale':
    |
    |          // set stats/counters
  > |          referralData[currentReferral].bonusSum = referralData[currentReferral].bonusSum.add(referralBonus);
    |          discountSumForThisPayment = discountSumForThisPayment.add(referralBonus);
    |
  at /home/jiaming/mavs_srcs/contract@0x89c71090d597d8271258f51e9c61986c9b38bbfa.sol(256)

[33mWarning[0m for UnrestrictedWrite in contract 'Presale':
    |      require(discountSumForThisPayment < nodePrice, "Wrong calculation of bonuses/discounts - would be higher than the price itself");
    |
  > |      currentDiscountSum = currentDiscountSum.add(discountSumForThisPayment);
    |      overallDiscountSum = overallDiscountSum.add(discountSumForThisPayment);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x89c71090d597d8271258f51e9c61986c9b38bbfa.sol(269)

[33mWarning[0m for UnrestrictedWrite in contract 'Presale':
    |
    |      currentDiscountSum = currentDiscountSum.add(discountSumForThisPayment);
  > |      overallDiscountSum = overallDiscountSum.add(discountSumForThisPayment);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x89c71090d597d8271258f51e9c61986c9b38bbfa.sol(270)

[33mWarning[0m for UnrestrictedWrite in contract 'Presale':
    |
    |    // set the node bought counter
  > |    nodesBought[msg.sender] = nodesBought[msg.sender].add(1);
    |
    |    emit MasternodeSold(msg.sender, currentPrice, coinsTargetAddress, useReferral);
  at /home/jiaming/mavs_srcs/contract@0x89c71090d597d8271258f51e9c61986c9b38bbfa.sol(274)

[33mWarning[0m for UnrestrictedWrite in contract 'Presale':
    |
    |  function setActiveState(bool active) public onlyOwner {
  > |    isActive = active;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x89c71090d597d8271258f51e9c61986c9b38bbfa.sol(280)

[33mWarning[0m for UnrestrictedWrite in contract 'Presale':
    |    require(price > 0, "Price has to be greater than zero.");
    |
  > |    currentPrice = price;
    |
    |    emit MasternodePriceChanged(price);
  at /home/jiaming/mavs_srcs/contract@0x89c71090d597d8271258f51e9c61986c9b38bbfa.sol(286)

[33mWarning[0m for UnrestrictedWrite in contract 'Presale':
    |
    |  function setReferralsEnabledState(bool _referralsEnabled) public onlyOwner {
  > |    referralsEnabled = _referralsEnabled;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x89c71090d597d8271258f51e9c61986c9b38bbfa.sol(292)

[33mWarning[0m for UnrestrictedWrite in contract 'Presale':
    |    require(level >= 0 && level < referralBonusMaxDepth, "Invalid depth level");
    |
  > |    currentReferralCommissionPercentages[level] = percentage;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x89c71090d597d8271258f51e9c61986c9b38bbfa.sol(299)

[33mWarning[0m for UnrestrictedWrite in contract 'Presale':
    |    require(depth >= 0 && depth <= 10, "Referral bonus depth too high.");
    |
  > |    referralBonusMaxDepth = depth;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x89c71090d597d8271258f51e9c61986c9b38bbfa.sol(305)

[33mWarning[0m for UnrestrictedWrite in contract 'Presale':
    |    require(percentage >= 0 && percentage <= 20, "Percentage has to be between 0 and 20.");
    |
  > |    currentReferralBuyerDiscountPercentage = percentage;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x89c71090d597d8271258f51e9c61986c9b38bbfa.sol(311)

[33mWarning[0m for UnrestrictedWrite in contract 'Presale':
    |
    |    if (amount > 0) {
  > |        referralBonuses[msg.sender] = 0;
    |        currentDiscountSum = currentDiscountSum.sub(amount);
    |
  at /home/jiaming/mavs_srcs/contract@0x89c71090d597d8271258f51e9c61986c9b38bbfa.sol(322)

[33mWarning[0m for UnrestrictedWrite in contract 'Presale':
    |    if (amount > 0) {
    |        referralBonuses[msg.sender] = 0;
  > |        currentDiscountSum = currentDiscountSum.sub(amount);
    |
    |        if (!msg.sender.send(amount)) {
  at /home/jiaming/mavs_srcs/contract@0x89c71090d597d8271258f51e9c61986c9b38bbfa.sol(323)

[33mWarning[0m for UnrestrictedWrite in contract 'Presale':
    |
    |        if (!msg.sender.send(amount)) {
  > |            referralBonuses[msg.sender] = amount;
    |            currentDiscountSum = currentDiscountSum.add(amount);
    |
  at /home/jiaming/mavs_srcs/contract@0x89c71090d597d8271258f51e9c61986c9b38bbfa.sol(326)

[33mWarning[0m for UnrestrictedWrite in contract 'Presale':
    |        if (!msg.sender.send(amount)) {
    |            referralBonuses[msg.sender] = amount;
  > |            currentDiscountSum = currentDiscountSum.add(amount);
    |
    |            return false;
  at /home/jiaming/mavs_srcs/contract@0x89c71090d597d8271258f51e9c61986c9b38bbfa.sol(327)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |}
    |
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x89c71090d597d8271258f51e9c61986c9b38bbfa.sol(72)


