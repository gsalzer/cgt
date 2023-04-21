Processing contract: /home/jiaming/mavs_srcs/contract@0x6b7470bfa67566df5275365933f5984530f54a7a.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x6b7470bfa67566df5275365933f5984530f54a7a.sol:EtheeraCrowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6b7470bfa67566df5275365933f5984530f54a7a.sol:EtheeraToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6b7470bfa67566df5275365933f5984530f54a7a.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6b7470bfa67566df5275365933f5984530f54a7a.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'EtheeraCrowdsale':
    |        refundToBuyers = true;
    |      burnRemainingTokens();
  > |      beneficiary.transfer(msg.value);
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0x6b7470bfa67566df5275365933f5984530f54a7a.sol(387)

[33mWarning[0m for DAOConstantGas in contract 'EtheeraCrowdsale':
    |  // send ether to the fund collection wallet
    |  function forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x6b7470bfa67566df5275365933f5984530f54a7a.sol(438)

[33mWarning[0m for DAOConstantGas in contract 'EtheeraCrowdsale':
    |        uint256 ethersSent = usersThatBoughtETA[msg.sender];
    |        require (wallet.balance >= ethersSent);
  > |        msg.sender.transfer(ethersSent);
    |        uint256 tokensIHave = token.balanceOf(msg.sender);
    |        token.mint(msg.sender,0x0,tokensIHave);
  at /home/jiaming/mavs_srcs/contract@0x6b7470bfa67566df5275365933f5984530f54a7a.sol(470)

[33mWarning[0m for LockedEther in contract 'EtheeraCrowdsale':
    |   
    |}
  > |contract EtheeraCrowdsale {
    |  using SafeMath for uint256;
    | 
  at /home/jiaming/mavs_srcs/contract@0x6b7470bfa67566df5275365933f5984530f54a7a.sol(245)

[33mWarning[0m for TODReceiver in contract 'EtheeraCrowdsale':
    |        refundToBuyers = true;
    |      burnRemainingTokens();
  > |      beneficiary.transfer(msg.value);
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0x6b7470bfa67566df5275365933f5984530f54a7a.sol(387)

[33mWarning[0m for TODReceiver in contract 'EtheeraCrowdsale':
    |        uint256 ethersSent = usersThatBoughtETA[msg.sender];
    |        require (wallet.balance >= ethersSent);
  > |        msg.sender.transfer(ethersSent);
    |        uint256 tokensIHave = token.balanceOf(msg.sender);
    |        token.mint(msg.sender,0x0,tokensIHave);
  at /home/jiaming/mavs_srcs/contract@0x6b7470bfa67566df5275365933f5984530f54a7a.sol(470)

[33mWarning[0m for UnhandledException in contract 'EtheeraCrowdsale':
    |        refundToBuyers = true;
    |      burnRemainingTokens();
  > |      beneficiary.transfer(msg.value);
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0x6b7470bfa67566df5275365933f5984530f54a7a.sol(387)

[33mWarning[0m for UnhandledException in contract 'EtheeraCrowdsale':
    |      isHardCapReached = true;
    |    
  > |    token.mint(wallet, beneficiary, tokens);
    |    
    |    uint olderAmount = usersThatBoughtETA[beneficiary];
  at /home/jiaming/mavs_srcs/contract@0x6b7470bfa67566df5275365933f5984530f54a7a.sol(424)

[33mWarning[0m for UnhandledException in contract 'EtheeraCrowdsale':
    |  // send ether to the fund collection wallet
    |  function forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x6b7470bfa67566df5275365933f5984530f54a7a.sol(438)

[33mWarning[0m for UnhandledException in contract 'EtheeraCrowdsale':
    |    {
    |        //burn all the unsold tokens as soon as the ICO is ended
  > |        uint balance = token.balanceOf(wallet);
    |        require(balance>0);
    |        uint tokensForTeam = tokensForReservedFund + tokensForFoundersAndTeam + tokensForAdvisors +tokensForMarketing + tokensForTournament;
  at /home/jiaming/mavs_srcs/contract@0x6b7470bfa67566df5275365933f5984530f54a7a.sol(456)

[33mWarning[0m for UnhandledException in contract 'EtheeraCrowdsale':
    |        require (balance >=tokensToBurn);
    |        address burnAddress = 0x0;
  > |        token.mint(wallet,burnAddress,tokensToBurn);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x6b7470bfa67566df5275365933f5984530f54a7a.sol(462)

[33mWarning[0m for UnhandledException in contract 'EtheeraCrowdsale':
    |        uint256 ethersSent = usersThatBoughtETA[msg.sender];
    |        require (wallet.balance >= ethersSent);
  > |        msg.sender.transfer(ethersSent);
    |        uint256 tokensIHave = token.balanceOf(msg.sender);
    |        token.mint(msg.sender,0x0,tokensIHave);
  at /home/jiaming/mavs_srcs/contract@0x6b7470bfa67566df5275365933f5984530f54a7a.sol(470)

[33mWarning[0m for UnhandledException in contract 'EtheeraCrowdsale':
    |        require (wallet.balance >= ethersSent);
    |        msg.sender.transfer(ethersSent);
  > |        uint256 tokensIHave = token.balanceOf(msg.sender);
    |        token.mint(msg.sender,0x0,tokensIHave);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6b7470bfa67566df5275365933f5984530f54a7a.sol(471)

[33mWarning[0m for UnhandledException in contract 'EtheeraCrowdsale':
    |        msg.sender.transfer(ethersSent);
    |        uint256 tokensIHave = token.balanceOf(msg.sender);
  > |        token.mint(msg.sender,0x0,tokensIHave);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x6b7470bfa67566df5275365933f5984530f54a7a.sol(472)

[33mWarning[0m for UnhandledException in contract 'EtheeraCrowdsale':
    |          for (i=0;i<whereToSendTokens.length;i++)
    |          {
  > |            token.mint(wallet,whereToSendTokens[i],tokensToSend);
    |          }
    |          tokensForReservedFund = 0;
  at /home/jiaming/mavs_srcs/contract@0x6b7470bfa67566df5275365933f5984530f54a7a.sol(534)

[33mWarning[0m for UnhandledException in contract 'EtheeraCrowdsale':
    |          for (i=0;i<whereToSendTokens.length;i++)
    |          {
  > |            token.mint(wallet,whereToSendTokens[i],tokensToSend);
    |          }            
    |          tokensForFoundersAndTeam = 0;
  at /home/jiaming/mavs_srcs/contract@0x6b7470bfa67566df5275365933f5984530f54a7a.sol(549)

[33mWarning[0m for UnhandledException in contract 'EtheeraCrowdsale':
    |          for (i=0;i<whereToSendTokens.length;i++)
    |          {
  > |            token.mint(wallet,whereToSendTokens[i],tokensToSend);
    |          }
    |          tokensForAdvisors = 0;
  at /home/jiaming/mavs_srcs/contract@0x6b7470bfa67566df5275365933f5984530f54a7a.sol(560)

[33mWarning[0m for UnhandledException in contract 'EtheeraCrowdsale':
    |          for (i=0;i<whereToSendTokens.length;i++)
    |          {
  > |            token.mint(wallet,whereToSendTokens[i],tokensToSend);
    |          }
    |          tokensForMarketing = 0;
  at /home/jiaming/mavs_srcs/contract@0x6b7470bfa67566df5275365933f5984530f54a7a.sol(572)

[33mWarning[0m for UnhandledException in contract 'EtheeraCrowdsale':
    |          for (i=0;i<whereToSendTokens.length;i++)
    |          {
  > |            token.mint(wallet,whereToSendTokens[i],tokensToSend);
    |          }
    |          tokensForTournament = 0;
  at /home/jiaming/mavs_srcs/contract@0x6b7470bfa67566df5275365933f5984530f54a7a.sol(584)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EtheeraCrowdsale':
    |        refundToBuyers = true;
    |      burnRemainingTokens();
  > |      beneficiary.transfer(msg.value);
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0x6b7470bfa67566df5275365933f5984530f54a7a.sol(387)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EtheeraCrowdsale':
    |      isHardCapReached = true;
    |    
  > |    token.mint(wallet, beneficiary, tokens);
    |    
    |    uint olderAmount = usersThatBoughtETA[beneficiary];
  at /home/jiaming/mavs_srcs/contract@0x6b7470bfa67566df5275365933f5984530f54a7a.sol(424)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EtheeraCrowdsale':
    |  // send ether to the fund collection wallet
    |  function forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x6b7470bfa67566df5275365933f5984530f54a7a.sol(438)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EtheeraCrowdsale':
    |    {
    |        //burn all the unsold tokens as soon as the ICO is ended
  > |        uint balance = token.balanceOf(wallet);
    |        require(balance>0);
    |        uint tokensForTeam = tokensForReservedFund + tokensForFoundersAndTeam + tokensForAdvisors +tokensForMarketing + tokensForTournament;
  at /home/jiaming/mavs_srcs/contract@0x6b7470bfa67566df5275365933f5984530f54a7a.sol(456)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EtheeraCrowdsale':
    |        require (balance >=tokensToBurn);
    |        address burnAddress = 0x0;
  > |        token.mint(wallet,burnAddress,tokensToBurn);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x6b7470bfa67566df5275365933f5984530f54a7a.sol(462)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EtheeraCrowdsale':
    |        require (wallet.balance >= ethersSent);
    |        msg.sender.transfer(ethersSent);
  > |        uint256 tokensIHave = token.balanceOf(msg.sender);
    |        token.mint(msg.sender,0x0,tokensIHave);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6b7470bfa67566df5275365933f5984530f54a7a.sol(471)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EtheeraCrowdsale':
    |        msg.sender.transfer(ethersSent);
    |        uint256 tokensIHave = token.balanceOf(msg.sender);
  > |        token.mint(msg.sender,0x0,tokensIHave);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x6b7470bfa67566df5275365933f5984530f54a7a.sol(472)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EtheeraCrowdsale':
    |          for (i=0;i<whereToSendTokens.length;i++)
    |          {
  > |            token.mint(wallet,whereToSendTokens[i],tokensToSend);
    |          }
    |          tokensForReservedFund = 0;
  at /home/jiaming/mavs_srcs/contract@0x6b7470bfa67566df5275365933f5984530f54a7a.sol(534)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EtheeraCrowdsale':
    |          for (i=0;i<whereToSendTokens.length;i++)
    |          {
  > |            token.mint(wallet,whereToSendTokens[i],tokensToSend);
    |          }            
    |          tokensForFoundersAndTeam = 0;
  at /home/jiaming/mavs_srcs/contract@0x6b7470bfa67566df5275365933f5984530f54a7a.sol(549)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EtheeraCrowdsale':
    |          for (i=0;i<whereToSendTokens.length;i++)
    |          {
  > |            token.mint(wallet,whereToSendTokens[i],tokensToSend);
    |          }
    |          tokensForAdvisors = 0;
  at /home/jiaming/mavs_srcs/contract@0x6b7470bfa67566df5275365933f5984530f54a7a.sol(560)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EtheeraCrowdsale':
    |          for (i=0;i<whereToSendTokens.length;i++)
    |          {
  > |            token.mint(wallet,whereToSendTokens[i],tokensToSend);
    |          }
    |          tokensForMarketing = 0;
  at /home/jiaming/mavs_srcs/contract@0x6b7470bfa67566df5275365933f5984530f54a7a.sol(572)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EtheeraCrowdsale':
    |          for (i=0;i<whereToSendTokens.length;i++)
    |          {
  > |            token.mint(wallet,whereToSendTokens[i],tokensToSend);
    |          }
    |          tokensForTournament = 0;
  at /home/jiaming/mavs_srcs/contract@0x6b7470bfa67566df5275365933f5984530f54a7a.sol(584)

[33mWarning[0m for UnrestrictedWrite in contract 'EtheeraCrowdsale':
    |  {
    |      if (!isSoftCapReached)
  > |        refundToBuyers = true;
    |      burnRemainingTokens();
    |      beneficiary.transfer(msg.value);
  at /home/jiaming/mavs_srcs/contract@0x6b7470bfa67566df5275365933f5984530f54a7a.sol(385)

[33mWarning[0m for UnrestrictedWrite in contract 'EtheeraCrowdsale':
    |    updateTokensForEtheeraTeam(tokens);
    |
  > |    weiRaised = weiRaised.add(weiAmount);
    |    
    |    
  at /home/jiaming/mavs_srcs/contract@0x6b7470bfa67566df5275365933f5984530f54a7a.sol(413)

[33mWarning[0m for UnrestrictedWrite in contract 'EtheeraCrowdsale':
    |    if (weiRaised >= softCap * 10 ** 18 && !isSoftCapReached)
    |    {
  > |      isSoftCapReached = true;
    |    }
    |  
  at /home/jiaming/mavs_srcs/contract@0x6b7470bfa67566df5275365933f5984530f54a7a.sol(418)

[33mWarning[0m for UnrestrictedWrite in contract 'EtheeraCrowdsale':
    |  
    |    if (weiRaised >= hardCap * 10 ** 18 && !isHardCapReached)
  > |      isHardCapReached = true;
    |    
    |    token.mint(wallet, beneficiary, tokens);
  at /home/jiaming/mavs_srcs/contract@0x6b7470bfa67566df5275365933f5984530f54a7a.sol(422)

[33mWarning[0m for UnrestrictedWrite in contract 'EtheeraCrowdsale':
    |    
    |    uint olderAmount = usersThatBoughtETA[beneficiary];
  > |    usersThatBoughtETA[beneficiary] = weiAmount + olderAmount;
    |    
    |    TokenPurchase(msg.sender, beneficiary, weiAmount, tokens);
  at /home/jiaming/mavs_srcs/contract@0x6b7470bfa67566df5275365933f5984530f54a7a.sol(427)

[33mWarning[0m for UnrestrictedWrite in contract 'EtheeraCrowdsale':
    |    TokenPurchase(msg.sender, beneficiary, weiAmount, tokens);
    |    
  > |    tokens_sold = tokens_sold.add(tokens);
    |    forwardFunds();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x6b7470bfa67566df5275365933f5984530f54a7a.sol(431)

[33mWarning[0m for UnrestrictedWrite in contract 'EtheeraCrowdsale':
    |        reservedFundTokens = tokens.mul(10);
    |        reservedFundTokens = reservedFundTokens.div(100);
  > |        tokensForReservedFund = tokensForReservedFund.add(reservedFundTokens);
    |    
    |        //15% of tokens for founders and team    
  at /home/jiaming/mavs_srcs/contract@0x6b7470bfa67566df5275365933f5984530f54a7a.sol(493)

[33mWarning[0m for UnrestrictedWrite in contract 'EtheeraCrowdsale':
    |        foundersAndTeamTokens=tokens.mul(15);
    |        foundersAndTeamTokens= foundersAndTeamTokens.div(100);
  > |        tokensForFoundersAndTeam = tokensForFoundersAndTeam.add(foundersAndTeamTokens);
    |    
    |        //3% of tokens for advisors
  at /home/jiaming/mavs_srcs/contract@0x6b7470bfa67566df5275365933f5984530f54a7a.sol(498)

[33mWarning[0m for UnrestrictedWrite in contract 'EtheeraCrowdsale':
    |        advisorsTokens=tokens.mul(3);
    |        advisorsTokens= advisorsTokens.div(100);
  > |        tokensForAdvisors= tokensForAdvisors.add(advisorsTokens);
    |    
    |        //1% of tokens for marketing
  at /home/jiaming/mavs_srcs/contract@0x6b7470bfa67566df5275365933f5984530f54a7a.sol(503)

[33mWarning[0m for UnrestrictedWrite in contract 'EtheeraCrowdsale':
    |        marketingTokens = tokens.mul(1);
    |        marketingTokens= marketingTokens.div(100);
  > |        tokensForMarketing= tokensForMarketing.add(marketingTokens);
    |        
    |        //1% of tokens for tournament 
  at /home/jiaming/mavs_srcs/contract@0x6b7470bfa67566df5275365933f5984530f54a7a.sol(508)

[33mWarning[0m for UnrestrictedWrite in contract 'EtheeraCrowdsale':
    |        tournamentTokens=tokens.mul(1);
    |        tournamentTokens= tournamentTokens.div(100);
  > |        tokensForTournament= tokensForTournament.add(tournamentTokens);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x6b7470bfa67566df5275365933f5984530f54a7a.sol(513)

[33mWarning[0m for UnrestrictedWrite in contract 'EtheeraCrowdsale':
    |        require(hasEnded() && msg.sender == wallet && !isSoftCapReached && !ethersSentForRefund);
    |        require(msg.value >=weiRaised);
  > |        ethersSentForRefund = true;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x6b7470bfa67566df5275365933f5984530f54a7a.sol(479)

[33mWarning[0m for LockedEther in contract 'EtheeraToken':
    |     event Approval(address indexed tokenOwner, address indexed spender, uint tokens);
    |}
  > |contract EtheeraToken is ERC20Interface,Ownable {
    |
    |    using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0x6b7470bfa67566df5275365933f5984530f54a7a.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'EtheeraToken':
    |  function transfer(address _to, uint256 _value) public returns (bool) {
    |    require(tokenBalances[msg.sender]>=_value);
  > |    tokenBalances[msg.sender] = tokenBalances[msg.sender].sub(_value);
    |    tokenBalances[_to] = tokenBalances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x6b7470bfa67566df5275365933f5984530f54a7a.sol(111)

[33mWarning[0m for UnrestrictedWrite in contract 'EtheeraToken':
    |    require(tokenBalances[msg.sender]>=_value);
    |    tokenBalances[msg.sender] = tokenBalances[msg.sender].sub(_value);
  > |    tokenBalances[_to] = tokenBalances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x6b7470bfa67566df5275365933f5984530f54a7a.sol(112)

[33mWarning[0m for UnrestrictedWrite in contract 'EtheeraToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    tokenBalances[_from] = tokenBalances[_from].sub(_value);
    |    tokenBalances[_to] = tokenBalances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x6b7470bfa67566df5275365933f5984530f54a7a.sol(138)

[33mWarning[0m for UnrestrictedWrite in contract 'EtheeraToken':
    |
    |    tokenBalances[_from] = tokenBalances[_from].sub(_value);
  > |    tokenBalances[_to] = tokenBalances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x6b7470bfa67566df5275365933f5984530f54a7a.sol(139)

[33mWarning[0m for UnrestrictedWrite in contract 'EtheeraToken':
    |    tokenBalances[_from] = tokenBalances[_from].sub(_value);
    |    tokenBalances[_to] = tokenBalances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x6b7470bfa67566df5275365933f5984530f54a7a.sol(140)

[33mWarning[0m for UnrestrictedWrite in contract 'EtheeraToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x6b7470bfa67566df5275365933f5984530f54a7a.sol(156)

[33mWarning[0m for UnrestrictedWrite in contract 'EtheeraToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x6b7470bfa67566df5275365933f5984530f54a7a.sol(189)

[33mWarning[0m for UnrestrictedWrite in contract 'EtheeraToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x6b7470bfa67566df5275365933f5984530f54a7a.sol(207)

[33mWarning[0m for UnrestrictedWrite in contract 'EtheeraToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x6b7470bfa67566df5275365933f5984530f54a7a.sol(209)

[33mWarning[0m for UnrestrictedWrite in contract 'EtheeraToken':
    |    function mint(address wallet, address buyer, uint256 tokenAmount) public onlyOwner {
    |      require(tokenBalances[wallet] >= tokenAmount);               // checks if it has enough to sell
  > |      tokenBalances[buyer] = tokenBalances[buyer].add(tokenAmount);                  // adds the amount to buyer's balance
    |      tokenBalances[wallet] = tokenBalances[wallet].sub(tokenAmount);                        // subtracts amount from seller's balance
    |      Transfer(wallet, buyer, tokenAmount); 
  at /home/jiaming/mavs_srcs/contract@0x6b7470bfa67566df5275365933f5984530f54a7a.sol(237)

[33mWarning[0m for UnrestrictedWrite in contract 'EtheeraToken':
    |      require(tokenBalances[wallet] >= tokenAmount);               // checks if it has enough to sell
    |      tokenBalances[buyer] = tokenBalances[buyer].add(tokenAmount);                  // adds the amount to buyer's balance
  > |      tokenBalances[wallet] = tokenBalances[wallet].sub(tokenAmount);                        // subtracts amount from seller's balance
    |      Transfer(wallet, buyer, tokenAmount); 
    |      totalSupply = totalSupply.sub(tokenAmount); 
  at /home/jiaming/mavs_srcs/contract@0x6b7470bfa67566df5275365933f5984530f54a7a.sol(238)

[33mWarning[0m for UnrestrictedWrite in contract 'EtheeraToken':
    |      tokenBalances[wallet] = tokenBalances[wallet].sub(tokenAmount);                        // subtracts amount from seller's balance
    |      Transfer(wallet, buyer, tokenAmount); 
  > |      totalSupply = totalSupply.sub(tokenAmount); 
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x6b7470bfa67566df5275365933f5984530f54a7a.sol(240)

[33mWarning[0m for UnrestrictedWrite in contract 'EtheeraToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x6b7470bfa67566df5275365933f5984530f54a7a.sol(71)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x6b7470bfa67566df5275365933f5984530f54a7a.sol(39)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x6b7470bfa67566df5275365933f5984530f54a7a.sol(40)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x6b7470bfa67566df5275365933f5984530f54a7a.sol(68)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x6b7470bfa67566df5275365933f5984530f54a7a.sol(71)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | 
    | 
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x6b7470bfa67566df5275365933f5984530f54a7a.sol(13)


