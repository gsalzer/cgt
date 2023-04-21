Processing contract: /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol:CappedCrowdsale
Processing contract: /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol:Crowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol:CustomDealICO
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol:CustomDealToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol:FinalizableCrowdsale
Processing contract: /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol:MintableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol:RefundVault
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol:RefundableCrowdsale
Processing contract: /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    | * @dev Basic version of StandardToken, with no allowances.
    | */
  > |contract BasicToken is ERC20Basic {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol(102)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol(117)

[33mWarning[0m for DAOConstantGas in contract 'Crowdsale':
    |  // override to create custom fund forwarding mechanisms
    |  function forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol(376)

[33mWarning[0m for LockedEther in contract 'Crowdsale':
    | * as they arrive.
    | */
  > |contract Crowdsale {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol(300)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |    weiRaised = weiRaised.add(weiAmount);
    |
  > |    token.mint(beneficiary, tokens);
    |    TokenPurchase(msg.sender, beneficiary, weiAmount, tokens);
    |
  at /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol(367)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |  // override to create custom fund forwarding mechanisms
    |  function forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol(376)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |    weiRaised = weiRaised.add(weiAmount);
    |
  > |    token.mint(beneficiary, tokens);
    |    TokenPurchase(msg.sender, beneficiary, weiAmount, tokens);
    |
  at /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol(367)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |  // override to create custom fund forwarding mechanisms
    |  function forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol(376)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |
    |    // update state
  > |    weiRaised = weiRaised.add(weiAmount);
    |
    |    token.mint(beneficiary, tokens);
  at /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol(365)

[31mViolation[0m for DAOConstantGas in contract 'CustomDealICO':
    |    function forwardFunds() internal {
    |        if (stage == CrowdsaleStage.PreICOFirst || stage == CrowdsaleStage.PreICOSecond) {
  > |            wallet.transfer(msg.value);
    |            EthTransferred("forwarding funds to wallet");
    |        } else if (stage == CrowdsaleStage.ICOFirst || stage == CrowdsaleStage.ICOSecond) {
  at /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol(711)

[33mWarning[0m for DAOConstantGas in contract 'CustomDealICO':
    |
    |        if ((stage == CrowdsaleStage.PreICOFirst) && (token.totalSupply() + tokensThatWillBeMintedAfterPurchase > totalTokensForSaleDuringPreICO)) {
  > |            msg.sender.transfer(msg.value);
    |            // Refund them
    |            EthRefunded("PreICOFirst Limit Hit");
  at /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol(686)

[33mWarning[0m for DAOConstantGas in contract 'CustomDealICO':
    |
    |        if ((stage == CrowdsaleStage.PreICOSecond) && (token.totalSupply() + tokensThatWillBeMintedAfterPurchase > totalTokensForSaleDuringPreICO)) {
  > |            msg.sender.transfer(msg.value); // Refund them
    |            EthRefunded("PreICOSecond Limit Hit");
    |            return;
  at /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol(693)

[33mWarning[0m for LockedEther in contract 'CustomDealICO':
    | * as they arrive
    | */
  > |contract CustomDealICO is CappedCrowdsale, RefundableCrowdsale {
    |
    |    // ICO Stages
  at /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol(602)

[31mViolation[0m for TODReceiver in contract 'CustomDealICO':
    |  // the RefundVault deposit function
    |  function forwardFunds() internal {
  > |    vault.deposit.value(msg.value)(msg.sender);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol(544)

[33mWarning[0m for TODReceiver in contract 'CustomDealICO':
    |
    |        if ((stage == CrowdsaleStage.PreICOFirst) && (token.totalSupply() + tokensThatWillBeMintedAfterPurchase > totalTokensForSaleDuringPreICO)) {
  > |            msg.sender.transfer(msg.value);
    |            // Refund them
    |            EthRefunded("PreICOFirst Limit Hit");
  at /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol(686)

[33mWarning[0m for TODReceiver in contract 'CustomDealICO':
    |
    |        if ((stage == CrowdsaleStage.PreICOSecond) && (token.totalSupply() + tokensThatWillBeMintedAfterPurchase > totalTokensForSaleDuringPreICO)) {
  > |            msg.sender.transfer(msg.value); // Refund them
    |            EthRefunded("PreICOSecond Limit Hit");
    |            return;
  at /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol(693)

[33mWarning[0m for UnhandledException in contract 'CustomDealICO':
    |    weiRaised = weiRaised.add(weiAmount);
    |
  > |    token.mint(beneficiary, tokens);
    |    TokenPurchase(msg.sender, beneficiary, weiAmount, tokens);
    |
  at /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol(367)

[33mWarning[0m for UnhandledException in contract 'CustomDealICO':
    |  // the RefundVault deposit function
    |  function forwardFunds() internal {
  > |    vault.deposit.value(msg.value)(msg.sender);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol(544)

[33mWarning[0m for UnhandledException in contract 'CustomDealICO':
    |    require(!goalReached());
    |
  > |    vault.refund(msg.sender);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol(552)

[33mWarning[0m for UnhandledException in contract 'CustomDealICO':
    |  function finalization() internal {
    |    if (goalReached()) {
  > |      vault.close();
    |    } else {
    |      vault.enableRefunds();
  at /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol(558)

[33mWarning[0m for UnhandledException in contract 'CustomDealICO':
    |      vault.close();
    |    } else {
  > |      vault.enableRefunds();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol(560)

[33mWarning[0m for UnhandledException in contract 'CustomDealICO':
    |        uint256 tokensThatWillBeMintedAfterPurchase = msg.value.mul(rate);
    |
  > |        if ((stage == CrowdsaleStage.PreICOFirst) && (token.totalSupply() + tokensThatWillBeMintedAfterPurchase > totalTokensForSaleDuringPreICO)) {
    |            msg.sender.transfer(msg.value);
    |            // Refund them
  at /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol(685)

[33mWarning[0m for UnhandledException in contract 'CustomDealICO':
    |
    |        if ((stage == CrowdsaleStage.PreICOFirst) && (token.totalSupply() + tokensThatWillBeMintedAfterPurchase > totalTokensForSaleDuringPreICO)) {
  > |            msg.sender.transfer(msg.value);
    |            // Refund them
    |            EthRefunded("PreICOFirst Limit Hit");
  at /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol(686)

[33mWarning[0m for UnhandledException in contract 'CustomDealICO':
    |        }
    |
  > |        if ((stage == CrowdsaleStage.PreICOSecond) && (token.totalSupply() + tokensThatWillBeMintedAfterPurchase > totalTokensForSaleDuringPreICO)) {
    |            msg.sender.transfer(msg.value); // Refund them
    |            EthRefunded("PreICOSecond Limit Hit");
  at /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol(692)

[33mWarning[0m for UnhandledException in contract 'CustomDealICO':
    |
    |        if ((stage == CrowdsaleStage.PreICOSecond) && (token.totalSupply() + tokensThatWillBeMintedAfterPurchase > totalTokensForSaleDuringPreICO)) {
  > |            msg.sender.transfer(msg.value); // Refund them
    |            EthRefunded("PreICOSecond Limit Hit");
    |            return;
  at /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol(693)

[33mWarning[0m for UnhandledException in contract 'CustomDealICO':
    |    function forwardFunds() internal {
    |        if (stage == CrowdsaleStage.PreICOFirst || stage == CrowdsaleStage.PreICOSecond) {
  > |            wallet.transfer(msg.value);
    |            EthTransferred("forwarding funds to wallet");
    |        } else if (stage == CrowdsaleStage.ICOFirst || stage == CrowdsaleStage.ICOSecond) {
  at /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol(711)

[33mWarning[0m for UnhandledException in contract 'CustomDealICO':
    |
    |        require(!isFinalized);
  > |        uint256 alreadyMinted = token.totalSupply();
    |        require(alreadyMinted < maxTokens);
    |
  at /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol(726)

[33mWarning[0m for UnhandledException in contract 'CustomDealICO':
    |        }
    |
  > |        token.mint(_ecosystemFund,tokensForEcosystem);
    |        finalize();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol(734)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CustomDealICO':
    |    weiRaised = weiRaised.add(weiAmount);
    |
  > |    token.mint(beneficiary, tokens);
    |    TokenPurchase(msg.sender, beneficiary, weiAmount, tokens);
    |
  at /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol(367)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CustomDealICO':
    |  // the RefundVault deposit function
    |  function forwardFunds() internal {
  > |    vault.deposit.value(msg.value)(msg.sender);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol(544)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CustomDealICO':
    |    require(!goalReached());
    |
  > |    vault.refund(msg.sender);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol(552)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CustomDealICO':
    |  function finalization() internal {
    |    if (goalReached()) {
  > |      vault.close();
    |    } else {
    |      vault.enableRefunds();
  at /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol(558)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CustomDealICO':
    |      vault.close();
    |    } else {
  > |      vault.enableRefunds();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol(560)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CustomDealICO':
    |        uint256 tokensThatWillBeMintedAfterPurchase = msg.value.mul(rate);
    |
  > |        if ((stage == CrowdsaleStage.PreICOFirst) && (token.totalSupply() + tokensThatWillBeMintedAfterPurchase > totalTokensForSaleDuringPreICO)) {
    |            msg.sender.transfer(msg.value);
    |            // Refund them
  at /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol(685)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CustomDealICO':
    |
    |        if ((stage == CrowdsaleStage.PreICOFirst) && (token.totalSupply() + tokensThatWillBeMintedAfterPurchase > totalTokensForSaleDuringPreICO)) {
  > |            msg.sender.transfer(msg.value);
    |            // Refund them
    |            EthRefunded("PreICOFirst Limit Hit");
  at /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol(686)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CustomDealICO':
    |        }
    |
  > |        if ((stage == CrowdsaleStage.PreICOSecond) && (token.totalSupply() + tokensThatWillBeMintedAfterPurchase > totalTokensForSaleDuringPreICO)) {
    |            msg.sender.transfer(msg.value); // Refund them
    |            EthRefunded("PreICOSecond Limit Hit");
  at /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol(692)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CustomDealICO':
    |
    |        if ((stage == CrowdsaleStage.PreICOSecond) && (token.totalSupply() + tokensThatWillBeMintedAfterPurchase > totalTokensForSaleDuringPreICO)) {
  > |            msg.sender.transfer(msg.value); // Refund them
    |            EthRefunded("PreICOSecond Limit Hit");
    |            return;
  at /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol(693)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CustomDealICO':
    |    function forwardFunds() internal {
    |        if (stage == CrowdsaleStage.PreICOFirst || stage == CrowdsaleStage.PreICOSecond) {
  > |            wallet.transfer(msg.value);
    |            EthTransferred("forwarding funds to wallet");
    |        } else if (stage == CrowdsaleStage.ICOFirst || stage == CrowdsaleStage.ICOSecond) {
  at /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol(711)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CustomDealICO':
    |
    |        require(!isFinalized);
  > |        uint256 alreadyMinted = token.totalSupply();
    |        require(alreadyMinted < maxTokens);
    |
  at /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol(726)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CustomDealICO':
    |        }
    |
  > |        token.mint(_ecosystemFund,tokensForEcosystem);
    |        finalize();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol(734)

[33mWarning[0m for UnrestrictedWrite in contract 'CustomDealICO':
    |
    |    // update state
  > |    weiRaised = weiRaised.add(weiAmount);
    |
    |    token.mint(beneficiary, tokens);
  at /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol(365)

[33mWarning[0m for UnrestrictedWrite in contract 'CustomDealICO':
    |
    |        if (stage == CrowdsaleStage.PreICOFirst) {
  > |            totalWeiRaisedDuringPreICO = totalWeiRaisedDuringPreICO.add(msg.value);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol(701)

[33mWarning[0m for UnrestrictedWrite in contract 'CustomDealICO':
    |
    |        if (stage == CrowdsaleStage.PreICOSecond) {
  > |            totalWeiRaisedDuringPreICO = totalWeiRaisedDuringPreICO.add(msg.value);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol(705)

[33mWarning[0m for UnrestrictedWrite in contract 'CustomDealICO':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'CustomDealICO':
    |    Finalized();
    |
  > |    isFinalized = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol(451)

[33mWarning[0m for UnrestrictedWrite in contract 'CustomDealICO':
    |        }
    |
  > |        stage = _stage;
    |
    |        // based on the price of 1 ETH = 600$
  at /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol(659)

[33mWarning[0m for UnrestrictedWrite in contract 'CustomDealICO':
    |    // Change the current rate
    |    function setCurrentRate(uint256 _rate) private {
  > |        rate = _rate;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol(675)

[33mWarning[0m for UnrestrictedWrite in contract 'CustomDealICO':
    |        uint256 unsoldTokens = totalTokensForSale - alreadyMinted;
    |        if (unsoldTokens > 0) {
  > |            tokensForEcosystem = tokensForEcosystem + unsoldTokens;
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol(731)

[33mWarning[0m for LockedEther in contract 'CustomDealToken':
    | * @dev Custom Deal Mintable Token is a base contract for managing a token contract
    | */
  > |contract CustomDealToken is MintableToken {
    |
    |    // Name of the token
  at /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol(579)

[33mWarning[0m for UnrestrictedWrite in contract 'CustomDealToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'CustomDealToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol(118)

[33mWarning[0m for UnrestrictedWrite in contract 'CustomDealToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol(172)

[33mWarning[0m for UnrestrictedWrite in contract 'CustomDealToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol(173)

[33mWarning[0m for UnrestrictedWrite in contract 'CustomDealToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol(174)

[33mWarning[0m for UnrestrictedWrite in contract 'CustomDealToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol(190)

[33mWarning[0m for UnrestrictedWrite in contract 'CustomDealToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol(216)

[33mWarning[0m for UnrestrictedWrite in contract 'CustomDealToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol(234)

[33mWarning[0m for UnrestrictedWrite in contract 'CustomDealToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol(236)

[33mWarning[0m for UnrestrictedWrite in contract 'CustomDealToken':
    |   */
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
  > |    totalSupply = totalSupply.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol(272)

[33mWarning[0m for UnrestrictedWrite in contract 'CustomDealToken':
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
    |    totalSupply = totalSupply.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
    |    Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol(273)

[33mWarning[0m for UnrestrictedWrite in contract 'CustomDealToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'CustomDealToken':
    |   */
    |  function finishMinting() onlyOwner canMint public returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol(284)

[33mWarning[0m for LockedEther in contract 'MintableToken':
    | */
    |
  > |contract MintableToken is StandardToken, Ownable {
    |  event Mint(address indexed to, uint256 amount);
    |  event MintFinished();
  at /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol(253)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol(118)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol(172)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol(173)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol(174)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol(190)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol(216)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol(234)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol(236)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
  > |    totalSupply = totalSupply.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol(272)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
    |    totalSupply = totalSupply.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
    |    Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol(273)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function finishMinting() onlyOwner canMint public returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol(284)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol(45)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol(46)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol(74)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol(77)

[33mWarning[0m for DAOConstantGas in contract 'RefundVault':
    |    state = State.Closed;
    |    Closed();
  > |    wallet.transfer(this.balance);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol(499)

[33mWarning[0m for DAOConstantGas in contract 'RefundVault':
    |    uint256 depositedValue = deposited[investor];
    |    deposited[investor] = 0;
  > |    investor.transfer(depositedValue);
    |    Refunded(investor, depositedValue);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol(512)

[33mWarning[0m for LockedEther in contract 'RefundVault':
    | * and forwarding it if crowdsale is successful.
    | */
  > |contract RefundVault is Ownable {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol(471)

[31mViolation[0m for TODAmount in contract 'RefundVault':
    |    state = State.Closed;
    |    Closed();
  > |    wallet.transfer(this.balance);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol(499)

[31mViolation[0m for TODReceiver in contract 'RefundVault':
    |    state = State.Closed;
    |    Closed();
  > |    wallet.transfer(this.balance);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol(499)

[33mWarning[0m for TODReceiver in contract 'RefundVault':
    |    uint256 depositedValue = deposited[investor];
    |    deposited[investor] = 0;
  > |    investor.transfer(depositedValue);
    |    Refunded(investor, depositedValue);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol(512)

[33mWarning[0m for UnhandledException in contract 'RefundVault':
    |    state = State.Closed;
    |    Closed();
  > |    wallet.transfer(this.balance);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol(499)

[33mWarning[0m for UnhandledException in contract 'RefundVault':
    |    uint256 depositedValue = deposited[investor];
    |    deposited[investor] = 0;
  > |    investor.transfer(depositedValue);
    |    Refunded(investor, depositedValue);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol(512)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RefundVault':
    |    state = State.Closed;
    |    Closed();
  > |    wallet.transfer(this.balance);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol(499)

[31mViolation[0m for UnrestrictedWrite in contract 'RefundVault':
    |    require(state == State.Refunding);
    |    uint256 depositedValue = deposited[investor];
  > |    deposited[investor] = 0;
    |    investor.transfer(depositedValue);
    |    Refunded(investor, depositedValue);
  at /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol(511)

[33mWarning[0m for UnrestrictedWrite in contract 'RefundVault':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'RefundVault':
    |  function deposit(address investor) onlyOwner public payable {
    |    require(state == State.Active);
  > |    deposited[investor] = deposited[investor].add(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol(492)

[33mWarning[0m for UnrestrictedWrite in contract 'RefundVault':
    |  function close() onlyOwner public {
    |    require(state == State.Active);
  > |    state = State.Closed;
    |    Closed();
    |    wallet.transfer(this.balance);
  at /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol(497)

[33mWarning[0m for UnrestrictedWrite in contract 'RefundVault':
    |  function enableRefunds() onlyOwner public {
    |    require(state == State.Active);
  > |    state = State.Refunding;
    |    RefundsEnabled();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol(504)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol(9)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol(156)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol(174)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol(190)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol(216)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol(234)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xbf0afa43be376f03da7c78a03e58f824d8bb8319.sol(236)


