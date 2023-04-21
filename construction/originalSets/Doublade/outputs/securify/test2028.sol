Processing contract: /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol:BCSAddBonusCrowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol:BCSCrowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol:ERC20StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol:ICrowdsaleFormula
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol:IERC20Token
Processing contract: /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol:IInvestRestrictions
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol:IOwned
Processing contract: /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol:ITokenHolder
Processing contract: /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol:ITokenPool
Processing contract: /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol:Manageable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol:ReturnTokenAgent
Processing contract: /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol:ReturnableToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol:TokenHolder
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for DAOConstantGas in contract 'BCSAddBonusCrowdsale':
    |
    |        if (amount > 0) {
  > |            if (msg.sender.send(amount)) {
    |                OverpayRefund(msg.sender, amount);
    |            } else {
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(578)

[33mWarning[0m for DAOConstantGas in contract 'BCSAddBonusCrowdsale':
    |            returnedTo[from] = investedFrom[from];
    |            investedFrom[from] = 0;
  > |            from.transfer(returnedTo[from]);
    |
    |            Refund(from, returnedTo[from]);
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(512)

[33mWarning[0m for DAOConstantGas in contract 'BCSAddBonusCrowdsale':
    |        uint256 amount = amountToBeneficiary();
    |
  > |        beneficiary.transfer(amount);
    |        Refund(beneficiary, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(593)

[33mWarning[0m for LockedEther in contract 'BCSAddBonusCrowdsale':
    |    _bonusPctSteps = [1,2,3,5]
    |    */ 
  > |contract BCSAddBonusCrowdsale is BCSCrowdsale {
    |    
    |    uint256 public decreaseStepPct;
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(631)

[31mViolation[0m for TODAmount in contract 'BCSAddBonusCrowdsale':
    |        uint256 amount = amountToBeneficiary();
    |
  > |        beneficiary.transfer(amount);
    |        Refund(beneficiary, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(593)

[31mViolation[0m for TODReceiver in contract 'BCSAddBonusCrowdsale':
    |        uint256 amount = amountToBeneficiary();
    |
  > |        beneficiary.transfer(amount);
    |        Refund(beneficiary, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(593)

[33mWarning[0m for TODReceiver in contract 'BCSAddBonusCrowdsale':
    |            returnedTo[from] = investedFrom[from];
    |            investedFrom[from] = 0;
  > |            from.transfer(returnedTo[from]);
    |
    |            Refund(from, returnedTo[from]);
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(512)

[33mWarning[0m for TODReceiver in contract 'BCSAddBonusCrowdsale':
    |
    |        if (amount > 0) {
  > |            if (msg.sender.send(amount)) {
    |                OverpayRefund(msg.sender, amount);
    |            } else {
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(578)

[33mWarning[0m for UnhandledException in contract 'BCSAddBonusCrowdsale':
    |        managerOnly
    |    {
  > |        assert(_token.transfer(_to, _amount));
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(387)

[33mWarning[0m for UnhandledException in contract 'BCSAddBonusCrowdsale':
    |
    |        if(address(restrictions) != 0x0) {
  > |            restrictions.investHappened(msg.sender, msg.value);
    |        }
    |        
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(495)

[33mWarning[0m for UnhandledException in contract 'BCSAddBonusCrowdsale':
    |        }
    |        
  > |        require(tokenPool.token().transferFrom(tokenPool, msg.sender, tokensToBuy));
    |        ++totalInvestments;
    |        Invested(msg.sender, weiPaid, tokensToBuy);
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(498)

[33mWarning[0m for UnhandledException in contract 'BCSAddBonusCrowdsale':
    |        and amount of returned tokens is exactly the same as bought */
    |    function returnToken(address from, uint256 amountReturned) public returnableTokenOnly {
  > |        if (msg.sender == address(tokenPool.token()) && getState() == State.FinishedFailure) {
    |            //require(getState() == State.FinishedFailure);
    |            require(tokensSoldTo[from] == amountReturned);
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(506)

[33mWarning[0m for UnhandledException in contract 'BCSAddBonusCrowdsale':
    |            returnedTo[from] = investedFrom[from];
    |            investedFrom[from] = 0;
  > |            from.transfer(returnedTo[from]);
    |
    |            Refund(from, returnedTo[from]);
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(512)

[33mWarning[0m for UnhandledException in contract 'BCSAddBonusCrowdsale':
    |        return getState() == State.Active &&
    |                    (address(restrictions) == 0x0 || 
  > |                    restrictions.canInvest(investor, amount, tokensLeft()));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(522)

[33mWarning[0m for UnhandledException in contract 'BCSAddBonusCrowdsale':
    |    /**@dev Returns how many tokens left for sale */
    |    function tokensLeft() constant returns(uint256) {        
  > |        return tokenPool.getTokenAmount();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(547)

[33mWarning[0m for UnhandledException in contract 'BCSAddBonusCrowdsale':
    |
    |        if (amount > 0) {
  > |            if (msg.sender.send(amount)) {
    |                OverpayRefund(msg.sender, amount);
    |            } else {
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(578)

[33mWarning[0m for UnhandledException in contract 'BCSAddBonusCrowdsale':
    |        uint256 amount = amountToBeneficiary();
    |
  > |        beneficiary.transfer(amount);
    |        Refund(beneficiary, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(593)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BCSAddBonusCrowdsale':
    |        managerOnly
    |    {
  > |        assert(_token.transfer(_to, _amount));
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(387)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BCSAddBonusCrowdsale':
    |
    |        if(address(restrictions) != 0x0) {
  > |            restrictions.investHappened(msg.sender, msg.value);
    |        }
    |        
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(495)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BCSAddBonusCrowdsale':
    |        }
    |        
  > |        require(tokenPool.token().transferFrom(tokenPool, msg.sender, tokensToBuy));
    |        ++totalInvestments;
    |        Invested(msg.sender, weiPaid, tokensToBuy);
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(498)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BCSAddBonusCrowdsale':
    |        and amount of returned tokens is exactly the same as bought */
    |    function returnToken(address from, uint256 amountReturned) public returnableTokenOnly {
  > |        if (msg.sender == address(tokenPool.token()) && getState() == State.FinishedFailure) {
    |            //require(getState() == State.FinishedFailure);
    |            require(tokensSoldTo[from] == amountReturned);
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(506)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BCSAddBonusCrowdsale':
    |            returnedTo[from] = investedFrom[from];
    |            investedFrom[from] = 0;
  > |            from.transfer(returnedTo[from]);
    |
    |            Refund(from, returnedTo[from]);
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(512)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BCSAddBonusCrowdsale':
    |        return getState() == State.Active &&
    |                    (address(restrictions) == 0x0 || 
  > |                    restrictions.canInvest(investor, amount, tokensLeft()));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(522)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BCSAddBonusCrowdsale':
    |    /**@dev Returns how many tokens left for sale */
    |    function tokensLeft() constant returns(uint256) {        
  > |        return tokenPool.getTokenAmount();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(547)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BCSAddBonusCrowdsale':
    |        uint256 amount = amountToBeneficiary();
    |
  > |        beneficiary.transfer(amount);
    |        Refund(beneficiary, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(593)

[31mViolation[0m for UnrestrictedWrite in contract 'BCSAddBonusCrowdsale':
    |    /**@dev Sets token that can call returnToken method */
    |    function setReturnableToken(ReturnableToken token) public managerOnly {
  > |        returnableTokens[address(token)] = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(306)

[31mViolation[0m for UnrestrictedWrite in contract 'BCSAddBonusCrowdsale':
    |    /**@dev Removes token that can call returnToken method */
    |    function removeReturnableToken(ReturnableToken token) public managerOnly {
  > |        returnableTokens[address(token)] = false;
    |    }
    |}/*************************************************************************
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(311)

[31mViolation[0m for UnrestrictedWrite in contract 'BCSAddBonusCrowdsale':
    |    /**@dev Makes crowdsale failed/ok, for emergency reasons */
    |    function makeFailed(bool state) managerOnly {
  > |        failure = state;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(599)

[31mViolation[0m for UnrestrictedWrite in contract 'BCSAddBonusCrowdsale':
    |    /**@dev Sets new beneficiary */
    |    function changeBeneficiary(address newBeneficiary) managerOnly {
  > |        beneficiary = newBeneficiary;
    |    }
    |} /*************************************************************************
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(604)

[33mWarning[0m for UnrestrictedWrite in contract 'BCSAddBonusCrowdsale':
    |
    |        managers[_newOwner] = true;
  > |        managers[msg.sender] = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(244)

[33mWarning[0m for UnrestrictedWrite in contract 'BCSAddBonusCrowdsale':
    |
    |        if (excess > 0) {
  > |            overpays[msg.sender] = safeAdd(overpays[msg.sender], excess);
    |            weiPaid = safeSub(weiPaid, excess);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(484)

[33mWarning[0m for UnrestrictedWrite in contract 'BCSAddBonusCrowdsale':
    |        }
    |        
  > |        investedFrom[msg.sender] = safeAdd(investedFrom[msg.sender], weiPaid);      
    |        tokensSoldTo[msg.sender] = safeAdd(tokensSoldTo[msg.sender], tokensToBuy);
    |        
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(488)

[33mWarning[0m for UnrestrictedWrite in contract 'BCSAddBonusCrowdsale':
    |        
    |        investedFrom[msg.sender] = safeAdd(investedFrom[msg.sender], weiPaid);      
  > |        tokensSoldTo[msg.sender] = safeAdd(tokensSoldTo[msg.sender], tokensToBuy);
    |        
    |        tokensSold = safeAdd(tokensSold, tokensToBuy);
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(489)

[33mWarning[0m for UnrestrictedWrite in contract 'BCSAddBonusCrowdsale':
    |        tokensSoldTo[msg.sender] = safeAdd(tokensSoldTo[msg.sender], tokensToBuy);
    |        
  > |        tokensSold = safeAdd(tokensSold, tokensToBuy);
    |        weiCollected = safeAdd(weiCollected, weiPaid);
    |
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(491)

[33mWarning[0m for UnrestrictedWrite in contract 'BCSAddBonusCrowdsale':
    |        
    |        tokensSold = safeAdd(tokensSold, tokensToBuy);
  > |        weiCollected = safeAdd(weiCollected, weiPaid);
    |
    |        if(address(restrictions) != 0x0) {
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(492)

[33mWarning[0m for UnrestrictedWrite in contract 'BCSAddBonusCrowdsale':
    |        
    |        require(tokenPool.token().transferFrom(tokenPool, msg.sender, tokensToBuy));
  > |        ++totalInvestments;
    |        Invested(msg.sender, weiPaid, tokensToBuy);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(499)

[33mWarning[0m for UnrestrictedWrite in contract 'BCSAddBonusCrowdsale':
    |            require(tokensSoldTo[from] == amountReturned);
    |
  > |            returnedTo[from] = investedFrom[from];
    |            investedFrom[from] = 0;
    |            from.transfer(returnedTo[from]);
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(510)

[33mWarning[0m for UnrestrictedWrite in contract 'BCSAddBonusCrowdsale':
    |
    |            returnedTo[from] = investedFrom[from];
  > |            investedFrom[from] = 0;
    |            from.transfer(returnedTo[from]);
    |
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(511)

[33mWarning[0m for UnrestrictedWrite in contract 'BCSAddBonusCrowdsale':
    |    function withdrawOverpay() {
    |        uint amount = overpays[msg.sender];
  > |        overpays[msg.sender] = 0;        
    |
    |        if (amount > 0) {
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(575)

[33mWarning[0m for UnrestrictedWrite in contract 'BCSAddBonusCrowdsale':
    |                OverpayRefund(msg.sender, amount);
    |            } else {
  > |                overpays[msg.sender] = amount; //restore funds in case of failed send
    |            }
    |        }
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(581)

[33mWarning[0m for UnrestrictedWrite in contract 'BCSAddBonusCrowdsale':
    |        require(getState() == State.FinishedSuccess && !withdrew);
    |        
  > |        withdrew = true;
    |        uint256 amount = amountToBeneficiary();
    |
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(590)

[33mWarning[0m for UnrestrictedWrite in contract 'BCSAddBonusCrowdsale':
    |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
  > |        owner = _newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(215)

[33mWarning[0m for UnrestrictedWrite in contract 'BCSAddBonusCrowdsale':
    |        super.transferOwnership(_newOwner);
    |
  > |        managers[_newOwner] = true;
    |        managers[msg.sender] = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(243)

[33mWarning[0m for UnrestrictedWrite in contract 'BCSAddBonusCrowdsale':
    |
    |    function setManager(address manager, bool state) public ownerOnly {
  > |        managers[manager] = state;
    |        ManagerSet(manager, state);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(248)

[31mViolation[0m for DAOConstantGas in contract 'BCSCrowdsale':
    |
    |        if (amount > 0) {
  > |            if (msg.sender.send(amount)) {
    |                OverpayRefund(msg.sender, amount);
    |            } else {
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(578)

[33mWarning[0m for DAOConstantGas in contract 'BCSCrowdsale':
    |            returnedTo[from] = investedFrom[from];
    |            investedFrom[from] = 0;
  > |            from.transfer(returnedTo[from]);
    |
    |            Refund(from, returnedTo[from]);
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(512)

[33mWarning[0m for DAOConstantGas in contract 'BCSCrowdsale':
    |        uint256 amount = amountToBeneficiary();
    |
  > |        beneficiary.transfer(amount);
    |        Refund(beneficiary, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(593)

[33mWarning[0m for LockedEther in contract 'BCSCrowdsale':
    |/**@dev Crowdsale base contract, used for PRE-TGE and TGE stages
    |* Token holder should also be the owner of this contract */
  > |contract BCSCrowdsale is ReturnTokenAgent, TokenHolder, ICrowdsaleFormula, SafeMath {
    |
    |    enum State {Unknown, BeforeStart, Active, FinishedSuccess, FinishedFailure}
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(396)

[31mViolation[0m for TODAmount in contract 'BCSCrowdsale':
    |        uint256 amount = amountToBeneficiary();
    |
  > |        beneficiary.transfer(amount);
    |        Refund(beneficiary, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(593)

[31mViolation[0m for TODReceiver in contract 'BCSCrowdsale':
    |        uint256 amount = amountToBeneficiary();
    |
  > |        beneficiary.transfer(amount);
    |        Refund(beneficiary, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(593)

[33mWarning[0m for TODReceiver in contract 'BCSCrowdsale':
    |            returnedTo[from] = investedFrom[from];
    |            investedFrom[from] = 0;
  > |            from.transfer(returnedTo[from]);
    |
    |            Refund(from, returnedTo[from]);
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(512)

[33mWarning[0m for TODReceiver in contract 'BCSCrowdsale':
    |
    |        if (amount > 0) {
  > |            if (msg.sender.send(amount)) {
    |                OverpayRefund(msg.sender, amount);
    |            } else {
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(578)

[33mWarning[0m for UnhandledException in contract 'BCSCrowdsale':
    |        managerOnly
    |    {
  > |        assert(_token.transfer(_to, _amount));
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(387)

[33mWarning[0m for UnhandledException in contract 'BCSCrowdsale':
    |
    |        if(address(restrictions) != 0x0) {
  > |            restrictions.investHappened(msg.sender, msg.value);
    |        }
    |        
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(495)

[33mWarning[0m for UnhandledException in contract 'BCSCrowdsale':
    |        }
    |        
  > |        require(tokenPool.token().transferFrom(tokenPool, msg.sender, tokensToBuy));
    |        ++totalInvestments;
    |        Invested(msg.sender, weiPaid, tokensToBuy);
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(498)

[33mWarning[0m for UnhandledException in contract 'BCSCrowdsale':
    |        and amount of returned tokens is exactly the same as bought */
    |    function returnToken(address from, uint256 amountReturned) public returnableTokenOnly {
  > |        if (msg.sender == address(tokenPool.token()) && getState() == State.FinishedFailure) {
    |            //require(getState() == State.FinishedFailure);
    |            require(tokensSoldTo[from] == amountReturned);
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(506)

[33mWarning[0m for UnhandledException in contract 'BCSCrowdsale':
    |            returnedTo[from] = investedFrom[from];
    |            investedFrom[from] = 0;
  > |            from.transfer(returnedTo[from]);
    |
    |            Refund(from, returnedTo[from]);
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(512)

[33mWarning[0m for UnhandledException in contract 'BCSCrowdsale':
    |        return getState() == State.Active &&
    |                    (address(restrictions) == 0x0 || 
  > |                    restrictions.canInvest(investor, amount, tokensLeft()));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(522)

[33mWarning[0m for UnhandledException in contract 'BCSCrowdsale':
    |    /**@dev Returns how many tokens left for sale */
    |    function tokensLeft() constant returns(uint256) {        
  > |        return tokenPool.getTokenAmount();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(547)

[33mWarning[0m for UnhandledException in contract 'BCSCrowdsale':
    |
    |        if (amount > 0) {
  > |            if (msg.sender.send(amount)) {
    |                OverpayRefund(msg.sender, amount);
    |            } else {
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(578)

[33mWarning[0m for UnhandledException in contract 'BCSCrowdsale':
    |        uint256 amount = amountToBeneficiary();
    |
  > |        beneficiary.transfer(amount);
    |        Refund(beneficiary, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(593)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BCSCrowdsale':
    |        managerOnly
    |    {
  > |        assert(_token.transfer(_to, _amount));
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(387)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BCSCrowdsale':
    |
    |        if(address(restrictions) != 0x0) {
  > |            restrictions.investHappened(msg.sender, msg.value);
    |        }
    |        
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(495)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BCSCrowdsale':
    |        }
    |        
  > |        require(tokenPool.token().transferFrom(tokenPool, msg.sender, tokensToBuy));
    |        ++totalInvestments;
    |        Invested(msg.sender, weiPaid, tokensToBuy);
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(498)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BCSCrowdsale':
    |        and amount of returned tokens is exactly the same as bought */
    |    function returnToken(address from, uint256 amountReturned) public returnableTokenOnly {
  > |        if (msg.sender == address(tokenPool.token()) && getState() == State.FinishedFailure) {
    |            //require(getState() == State.FinishedFailure);
    |            require(tokensSoldTo[from] == amountReturned);
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(506)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BCSCrowdsale':
    |            returnedTo[from] = investedFrom[from];
    |            investedFrom[from] = 0;
  > |            from.transfer(returnedTo[from]);
    |
    |            Refund(from, returnedTo[from]);
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(512)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BCSCrowdsale':
    |        return getState() == State.Active &&
    |                    (address(restrictions) == 0x0 || 
  > |                    restrictions.canInvest(investor, amount, tokensLeft()));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(522)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BCSCrowdsale':
    |    /**@dev Returns how many tokens left for sale */
    |    function tokensLeft() constant returns(uint256) {        
  > |        return tokenPool.getTokenAmount();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(547)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BCSCrowdsale':
    |        uint256 amount = amountToBeneficiary();
    |
  > |        beneficiary.transfer(amount);
    |        Refund(beneficiary, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(593)

[31mViolation[0m for UnrestrictedWrite in contract 'BCSCrowdsale':
    |    /**@dev Sets token that can call returnToken method */
    |    function setReturnableToken(ReturnableToken token) public managerOnly {
  > |        returnableTokens[address(token)] = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(306)

[31mViolation[0m for UnrestrictedWrite in contract 'BCSCrowdsale':
    |    /**@dev Removes token that can call returnToken method */
    |    function removeReturnableToken(ReturnableToken token) public managerOnly {
  > |        returnableTokens[address(token)] = false;
    |    }
    |}/*************************************************************************
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(311)

[31mViolation[0m for UnrestrictedWrite in contract 'BCSCrowdsale':
    |    /**@dev Makes crowdsale failed/ok, for emergency reasons */
    |    function makeFailed(bool state) managerOnly {
  > |        failure = state;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(599)

[31mViolation[0m for UnrestrictedWrite in contract 'BCSCrowdsale':
    |    /**@dev Sets new beneficiary */
    |    function changeBeneficiary(address newBeneficiary) managerOnly {
  > |        beneficiary = newBeneficiary;
    |    }
    |} /*************************************************************************
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(604)

[33mWarning[0m for UnrestrictedWrite in contract 'BCSCrowdsale':
    |
    |        managers[_newOwner] = true;
  > |        managers[msg.sender] = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(244)

[33mWarning[0m for UnrestrictedWrite in contract 'BCSCrowdsale':
    |
    |        if (excess > 0) {
  > |            overpays[msg.sender] = safeAdd(overpays[msg.sender], excess);
    |            weiPaid = safeSub(weiPaid, excess);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(484)

[33mWarning[0m for UnrestrictedWrite in contract 'BCSCrowdsale':
    |        }
    |        
  > |        investedFrom[msg.sender] = safeAdd(investedFrom[msg.sender], weiPaid);      
    |        tokensSoldTo[msg.sender] = safeAdd(tokensSoldTo[msg.sender], tokensToBuy);
    |        
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(488)

[33mWarning[0m for UnrestrictedWrite in contract 'BCSCrowdsale':
    |        
    |        investedFrom[msg.sender] = safeAdd(investedFrom[msg.sender], weiPaid);      
  > |        tokensSoldTo[msg.sender] = safeAdd(tokensSoldTo[msg.sender], tokensToBuy);
    |        
    |        tokensSold = safeAdd(tokensSold, tokensToBuy);
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(489)

[33mWarning[0m for UnrestrictedWrite in contract 'BCSCrowdsale':
    |        tokensSoldTo[msg.sender] = safeAdd(tokensSoldTo[msg.sender], tokensToBuy);
    |        
  > |        tokensSold = safeAdd(tokensSold, tokensToBuy);
    |        weiCollected = safeAdd(weiCollected, weiPaid);
    |
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(491)

[33mWarning[0m for UnrestrictedWrite in contract 'BCSCrowdsale':
    |        
    |        tokensSold = safeAdd(tokensSold, tokensToBuy);
  > |        weiCollected = safeAdd(weiCollected, weiPaid);
    |
    |        if(address(restrictions) != 0x0) {
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(492)

[33mWarning[0m for UnrestrictedWrite in contract 'BCSCrowdsale':
    |        
    |        require(tokenPool.token().transferFrom(tokenPool, msg.sender, tokensToBuy));
  > |        ++totalInvestments;
    |        Invested(msg.sender, weiPaid, tokensToBuy);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(499)

[33mWarning[0m for UnrestrictedWrite in contract 'BCSCrowdsale':
    |            require(tokensSoldTo[from] == amountReturned);
    |
  > |            returnedTo[from] = investedFrom[from];
    |            investedFrom[from] = 0;
    |            from.transfer(returnedTo[from]);
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(510)

[33mWarning[0m for UnrestrictedWrite in contract 'BCSCrowdsale':
    |
    |            returnedTo[from] = investedFrom[from];
  > |            investedFrom[from] = 0;
    |            from.transfer(returnedTo[from]);
    |
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(511)

[33mWarning[0m for UnrestrictedWrite in contract 'BCSCrowdsale':
    |    function withdrawOverpay() {
    |        uint amount = overpays[msg.sender];
  > |        overpays[msg.sender] = 0;        
    |
    |        if (amount > 0) {
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(575)

[33mWarning[0m for UnrestrictedWrite in contract 'BCSCrowdsale':
    |                OverpayRefund(msg.sender, amount);
    |            } else {
  > |                overpays[msg.sender] = amount; //restore funds in case of failed send
    |            }
    |        }
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(581)

[33mWarning[0m for UnrestrictedWrite in contract 'BCSCrowdsale':
    |        require(getState() == State.FinishedSuccess && !withdrew);
    |        
  > |        withdrew = true;
    |        uint256 amount = amountToBeneficiary();
    |
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(590)

[33mWarning[0m for UnrestrictedWrite in contract 'BCSCrowdsale':
    |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
  > |        owner = _newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(215)

[33mWarning[0m for UnrestrictedWrite in contract 'BCSCrowdsale':
    |        super.transferOwnership(_newOwner);
    |
  > |        managers[_newOwner] = true;
    |        managers[msg.sender] = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(243)

[33mWarning[0m for UnrestrictedWrite in contract 'BCSCrowdsale':
    |
    |    function setManager(address manager, bool state) public ownerOnly {
  > |        managers[manager] = state;
    |        ManagerSet(manager, state);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(248)

[33mWarning[0m for LockedEther in contract 'ERC20StandardToken':
    |
    |/**@dev Standard ERC20 compliant token implementation */
  > |contract ERC20StandardToken is IERC20Token, SafeMath {
    |    string public name;
    |    string public symbol;
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(82)

[31mViolation[0m for MissingInputValidation in contract 'ERC20StandardToken':
    |    }
    | 
  > |    function balanceOf(address _owner) public constant returns (uint balance) {
    |        balance = balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(106)

[31mViolation[0m for MissingInputValidation in contract 'ERC20StandardToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool) {
    |        require(_to != address(0));
    |        
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(119)

[31mViolation[0m for MissingInputValidation in contract 'ERC20StandardToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) public returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(130)

[31mViolation[0m for MissingInputValidation in contract 'ERC20StandardToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) public constant returns (uint256 remaining) {
    |        remaining = allowed[_owner][_spender];
    |    }    
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(136)

[33mWarning[0m for MissingInputValidation in contract 'ERC20StandardToken':
    |
    |    /**dev Returns the sum of a and b. Throws an exception if it exceeds uint256 limits*/
  > |    function safeAdd(uint256 a, uint256 b) internal pure returns (uint256) {        
    |        assert(a+b >= a);
    |        return a+b;
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(55)

[33mWarning[0m for MissingInputValidation in contract 'ERC20StandardToken':
    |
    |    /**dev Returns the difference of a and b. Throws an exception if a is less than b*/
  > |    function safeSub(uint256 a, uint256 b) internal pure returns (uint256) {
    |        assert(a >= b);
    |        return a - b;
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(61)

[33mWarning[0m for MissingInputValidation in contract 'ERC20StandardToken':
    |/**@dev Standard ERC20 compliant token implementation */
    |contract ERC20StandardToken is IERC20Token, SafeMath {
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(83)

[33mWarning[0m for MissingInputValidation in contract 'ERC20StandardToken':
    |contract ERC20StandardToken is IERC20Token, SafeMath {
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals;
    |
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(84)

[33mWarning[0m for MissingInputValidation in contract 'ERC20StandardToken':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals;
    |
    |    //tokens already issued
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(85)

[33mWarning[0m for MissingInputValidation in contract 'ERC20StandardToken':
    |    // 
    |
  > |    function totalSupply() public constant returns (uint total) {
    |        total = tokensIssued;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(102)

[33mWarning[0m for MissingInputValidation in contract 'ERC20StandardToken':
    |    //
    |    /**@dev Gets real token amount in the smallest token units */
  > |    function getRealTokenAmount(uint256 tokens) public constant returns (uint256) {
    |        return tokens * (uint256(10) ** decimals);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(144)

[33mWarning[0m for MissingInputValidation in contract 'ERC20StandardToken':
    |    //    
    |    
  > |    function doTransfer(address _from, address _to, uint256 _value) internal {
    |        balances[_from] = safeSub(balances[_from], _value);
    |        balances[_to] = safeAdd(balances[_to], _value);
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(152)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20StandardToken':
    |        
    |        // Check for allowance is not needed because sub(_allowance, _value) will throw if this condition is not met
  > |        allowed[_from][msg.sender] = safeSub(allowed[_from][msg.sender], _value);        
    |        // safeSub inside doTransfer will throw if there is not enough balance.
    |        doTransfer(_from, _to, _value);        
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(123)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20StandardToken':
    |    
    |    function doTransfer(address _from, address _to, uint256 _value) internal {
  > |        balances[_from] = safeSub(balances[_from], _value);
    |        balances[_to] = safeAdd(balances[_to], _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(153)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20StandardToken':
    |    function doTransfer(address _from, address _to, uint256 _value) internal {
    |        balances[_from] = safeSub(balances[_from], _value);
  > |        balances[_to] = safeAdd(balances[_to], _value);
    |    }
    |}/*************************************************************************
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(154)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20StandardToken':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(131)

[33mWarning[0m for LockedEther in contract 'ICrowdsaleFormula':
    |
    |/**@dev Abstraction of crowdsale token calculation function */
  > |contract ICrowdsaleFormula {
    |
    |    /**@dev Returns amount of tokens that can be bought with given weiAmount */
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(341)

[33mWarning[0m for LockedEther in contract 'IInvestRestrictions':
    |
    |/** @dev Restrictions on investment */
  > |contract IInvestRestrictions is Manageable {
    |    /**@dev Returns true if investmet is allowed */
    |    function canInvest(address investor, uint amount, uint tokensLeft) constant returns (bool result) {
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(325)

[33mWarning[0m for UnrestrictedWrite in contract 'IInvestRestrictions':
    |
    |        managers[_newOwner] = true;
  > |        managers[msg.sender] = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(244)

[33mWarning[0m for UnrestrictedWrite in contract 'IInvestRestrictions':
    |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
  > |        owner = _newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(215)

[33mWarning[0m for UnrestrictedWrite in contract 'IInvestRestrictions':
    |        super.transferOwnership(_newOwner);
    |
  > |        managers[_newOwner] = true;
    |        managers[msg.sender] = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(243)

[33mWarning[0m for UnrestrictedWrite in contract 'IInvestRestrictions':
    |
    |    function setManager(address manager, bool state) public ownerOnly {
  > |        managers[manager] = state;
    |        ManagerSet(manager, state);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(248)

[33mWarning[0m for LockedEther in contract 'Manageable':
    |///A token that have an owner and a list of managers that can perform some operations
    |///Owner is always a manager too
  > |contract Manageable is Owned {
    |
    |    event ManagerSet(address manager, bool state);
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(224)

[31mViolation[0m for MissingInputValidation in contract 'Manageable':
    |    event ManagerSet(address manager, bool state);
    |
  > |    mapping (address => bool) public managers;
    |
    |    function Manageable() public Owned() {
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(228)

[31mViolation[0m for MissingInputValidation in contract 'Manageable':
    |    }
    |
  > |    function setManager(address manager, bool state) public ownerOnly {
    |        managers[manager] = state;
    |        ManagerSet(manager, state);
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(247)

[33mWarning[0m for MissingInputValidation in contract 'Manageable':
    |
    |contract Owned is IOwned {
  > |    address public owner;        
    |
    |    function Owned() public {
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(200)

[33mWarning[0m for MissingInputValidation in contract 'Manageable':
    |
    |    /**@dev allows transferring the contract ownership. */
  > |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
    |        owner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(213)

[33mWarning[0m for MissingInputValidation in contract 'Manageable':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public ownerOnly {
    |        super.transferOwnership(_newOwner);
    |
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(240)

[33mWarning[0m for UnrestrictedWrite in contract 'Manageable':
    |
    |        managers[_newOwner] = true;
  > |        managers[msg.sender] = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(244)

[33mWarning[0m for UnrestrictedWrite in contract 'Manageable':
    |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
  > |        owner = _newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(215)

[33mWarning[0m for UnrestrictedWrite in contract 'Manageable':
    |        super.transferOwnership(_newOwner);
    |
  > |        managers[_newOwner] = true;
    |        managers[msg.sender] = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(243)

[33mWarning[0m for UnrestrictedWrite in contract 'Manageable':
    |
    |    function setManager(address manager, bool state) public ownerOnly {
  > |        managers[manager] = state;
    |        ManagerSet(manager, state);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(248)

[33mWarning[0m for LockedEther in contract 'Owned':
    | *************************************************************************/
    |
  > |contract Owned is IOwned {
    |    address public owner;        
    |
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(199)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |
    |contract Owned is IOwned {
  > |    address public owner;        
    |
    |    function Owned() public {
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(200)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |
    |    /**@dev allows transferring the contract ownership. */
  > |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
    |        owner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(213)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
  > |        owner = _newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(215)

[33mWarning[0m for DAO in contract 'ReturnableToken':
    |        super.doTransfer(_from, _to, _value);
    |        if (returnAgents[_to]) {
  > |            ReturnTokenAgent(_to).returnToken(_from, _value);                
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(283)

[33mWarning[0m for LockedEther in contract 'ReturnableToken':
    |
    |///Token that when sent to specified contract (returnAgent) invokes additional actions
  > |contract ReturnableToken is Manageable, ERC20StandardToken {
    |
    |    /**@dev List of return agents */
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(263)

[31mViolation[0m for MissingInputValidation in contract 'ReturnableToken':
    |    }
    | 
  > |    function balanceOf(address _owner) public constant returns (uint balance) {
    |        balance = balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(106)

[31mViolation[0m for MissingInputValidation in contract 'ReturnableToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool) {
    |        require(_to != address(0));
    |        
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(119)

[31mViolation[0m for MissingInputValidation in contract 'ReturnableToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) public returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(130)

[31mViolation[0m for MissingInputValidation in contract 'ReturnableToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) public constant returns (uint256 remaining) {
    |        remaining = allowed[_owner][_spender];
    |    }    
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(136)

[31mViolation[0m for MissingInputValidation in contract 'ReturnableToken':
    |    event ManagerSet(address manager, bool state);
    |
  > |    mapping (address => bool) public managers;
    |
    |    function Manageable() public Owned() {
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(228)

[31mViolation[0m for MissingInputValidation in contract 'ReturnableToken':
    |    }
    |
  > |    function setManager(address manager, bool state) public ownerOnly {
    |        managers[manager] = state;
    |        ManagerSet(manager, state);
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(247)

[31mViolation[0m for MissingInputValidation in contract 'ReturnableToken':
    |
    |    /**@dev List of return agents */
  > |    mapping (address => bool) public returnAgents;
    |
    |    function ReturnableToken() public {}    
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(266)

[31mViolation[0m for MissingInputValidation in contract 'ReturnableToken':
    |    
    |    /**@dev Sets new return agent */
  > |    function setReturnAgent(ReturnTokenAgent agent) public managerOnly {
    |        returnAgents[address(agent)] = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(271)

[31mViolation[0m for MissingInputValidation in contract 'ReturnableToken':
    |
    |    /**@dev Removes return agent from list */
  > |    function removeReturnAgent(ReturnTokenAgent agent) public managerOnly {
    |        returnAgents[address(agent)] = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(276)

[33mWarning[0m for MissingInputValidation in contract 'ReturnableToken':
    |
    |    /**dev Returns the sum of a and b. Throws an exception if it exceeds uint256 limits*/
  > |    function safeAdd(uint256 a, uint256 b) internal pure returns (uint256) {        
    |        assert(a+b >= a);
    |        return a+b;
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(55)

[33mWarning[0m for MissingInputValidation in contract 'ReturnableToken':
    |
    |    /**dev Returns the difference of a and b. Throws an exception if a is less than b*/
  > |    function safeSub(uint256 a, uint256 b) internal pure returns (uint256) {
    |        assert(a >= b);
    |        return a - b;
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(61)

[33mWarning[0m for MissingInputValidation in contract 'ReturnableToken':
    |/**@dev Standard ERC20 compliant token implementation */
    |contract ERC20StandardToken is IERC20Token, SafeMath {
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(83)

[33mWarning[0m for MissingInputValidation in contract 'ReturnableToken':
    |contract ERC20StandardToken is IERC20Token, SafeMath {
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals;
    |
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(84)

[33mWarning[0m for MissingInputValidation in contract 'ReturnableToken':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals;
    |
    |    //tokens already issued
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(85)

[33mWarning[0m for MissingInputValidation in contract 'ReturnableToken':
    |    // 
    |
  > |    function totalSupply() public constant returns (uint total) {
    |        total = tokensIssued;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(102)

[33mWarning[0m for MissingInputValidation in contract 'ReturnableToken':
    |    //
    |    /**@dev Gets real token amount in the smallest token units */
  > |    function getRealTokenAmount(uint256 tokens) public constant returns (uint256) {
    |        return tokens * (uint256(10) ** decimals);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(144)

[33mWarning[0m for MissingInputValidation in contract 'ReturnableToken':
    |    //    
    |    
  > |    function doTransfer(address _from, address _to, uint256 _value) internal {
    |        balances[_from] = safeSub(balances[_from], _value);
    |        balances[_to] = safeAdd(balances[_to], _value);
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(152)

[33mWarning[0m for MissingInputValidation in contract 'ReturnableToken':
    |
    |contract Owned is IOwned {
  > |    address public owner;        
    |
    |    function Owned() public {
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(200)

[33mWarning[0m for MissingInputValidation in contract 'ReturnableToken':
    |
    |    /**@dev allows transferring the contract ownership. */
  > |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
    |        owner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(213)

[33mWarning[0m for MissingInputValidation in contract 'ReturnableToken':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public ownerOnly {
    |        super.transferOwnership(_newOwner);
    |
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(240)

[33mWarning[0m for MissingInputValidation in contract 'ReturnableToken':
    |    }
    |
  > |    function doTransfer(address _from, address _to, uint256 _value) internal {
    |        super.doTransfer(_from, _to, _value);
    |        if (returnAgents[_to]) {
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(280)

[33mWarning[0m for UnhandledException in contract 'ReturnableToken':
    |        super.doTransfer(_from, _to, _value);
    |        if (returnAgents[_to]) {
  > |            ReturnTokenAgent(_to).returnToken(_from, _value);                
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(283)

[31mViolation[0m for UnrestrictedWrite in contract 'ReturnableToken':
    |        
    |        // Check for allowance is not needed because sub(_allowance, _value) will throw if this condition is not met
  > |        allowed[_from][msg.sender] = safeSub(allowed[_from][msg.sender], _value);        
    |        // safeSub inside doTransfer will throw if there is not enough balance.
    |        doTransfer(_from, _to, _value);        
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(123)

[31mViolation[0m for UnrestrictedWrite in contract 'ReturnableToken':
    |    
    |    function doTransfer(address _from, address _to, uint256 _value) internal {
  > |        balances[_from] = safeSub(balances[_from], _value);
    |        balances[_to] = safeAdd(balances[_to], _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(153)

[31mViolation[0m for UnrestrictedWrite in contract 'ReturnableToken':
    |    function doTransfer(address _from, address _to, uint256 _value) internal {
    |        balances[_from] = safeSub(balances[_from], _value);
  > |        balances[_to] = safeAdd(balances[_to], _value);
    |    }
    |}/*************************************************************************
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(154)

[31mViolation[0m for UnrestrictedWrite in contract 'ReturnableToken':
    |    /**@dev Sets new return agent */
    |    function setReturnAgent(ReturnTokenAgent agent) public managerOnly {
  > |        returnAgents[address(agent)] = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(272)

[31mViolation[0m for UnrestrictedWrite in contract 'ReturnableToken':
    |    /**@dev Removes return agent from list */
    |    function removeReturnAgent(ReturnTokenAgent agent) public managerOnly {
  > |        returnAgents[address(agent)] = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(277)

[33mWarning[0m for UnrestrictedWrite in contract 'ReturnableToken':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(131)

[33mWarning[0m for UnrestrictedWrite in contract 'ReturnableToken':
    |
    |        managers[_newOwner] = true;
  > |        managers[msg.sender] = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(244)

[33mWarning[0m for UnrestrictedWrite in contract 'ReturnableToken':
    |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
  > |        owner = _newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(215)

[33mWarning[0m for UnrestrictedWrite in contract 'ReturnableToken':
    |        super.transferOwnership(_newOwner);
    |
  > |        managers[_newOwner] = true;
    |        managers[msg.sender] = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(243)

[33mWarning[0m for UnrestrictedWrite in contract 'ReturnableToken':
    |
    |    function setManager(address manager, bool state) public ownerOnly {
  > |        managers[manager] = state;
    |        ManagerSet(manager, state);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(248)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |/**dev Utility methods for overflow-proof arithmetic operations 
    |*/
  > |contract SafeMath {
    |
    |    /**dev Returns the sum of a and b. Throws an exception if it exceeds uint256 limits*/
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(52)

[33mWarning[0m for LockedEther in contract 'TokenHolder':
    |
    |/**@dev A convenient way to manage token's of a contract */
  > |contract TokenHolder is ITokenHolder, Manageable {
    |    
    |    function TokenHolder() {
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(377)

[31mViolation[0m for MissingInputValidation in contract 'TokenHolder':
    |    event ManagerSet(address manager, bool state);
    |
  > |    mapping (address => bool) public managers;
    |
    |    function Manageable() public Owned() {
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(228)

[31mViolation[0m for MissingInputValidation in contract 'TokenHolder':
    |    }
    |
  > |    function setManager(address manager, bool state) public ownerOnly {
    |        managers[manager] = state;
    |        ManagerSet(manager, state);
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(247)

[31mViolation[0m for MissingInputValidation in contract 'TokenHolder':
    |
    |    /** @dev Withdraws tokens held by the contract and sends them to a given address */
  > |    function withdrawTokens(IERC20Token _token, address _to, uint256 _amount)
    |        public
    |        managerOnly
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(383)

[33mWarning[0m for MissingInputValidation in contract 'TokenHolder':
    |
    |contract Owned is IOwned {
  > |    address public owner;        
    |
    |    function Owned() public {
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(200)

[33mWarning[0m for MissingInputValidation in contract 'TokenHolder':
    |
    |    /**@dev allows transferring the contract ownership. */
  > |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
    |        owner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(213)

[33mWarning[0m for MissingInputValidation in contract 'TokenHolder':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public ownerOnly {
    |        super.transferOwnership(_newOwner);
    |
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(240)

[33mWarning[0m for UnhandledException in contract 'TokenHolder':
    |        managerOnly
    |    {
  > |        assert(_token.transfer(_to, _amount));
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(387)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenHolder':
    |        managerOnly
    |    {
  > |        assert(_token.transfer(_to, _amount));
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(387)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenHolder':
    |
    |        managers[_newOwner] = true;
  > |        managers[msg.sender] = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(244)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenHolder':
    |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
  > |        owner = _newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(215)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenHolder':
    |        super.transferOwnership(_newOwner);
    |
  > |        managers[_newOwner] = true;
    |        managers[msg.sender] = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(243)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenHolder':
    |
    |    function setManager(address manager, bool state) public ownerOnly {
  > |        managers[manager] = state;
    |        ManagerSet(manager, state);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8418c859eb647209785c972f50b003efb4290d05.sol(248)


