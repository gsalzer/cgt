Processing contract: /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol:BCSCrowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol:ERC20StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol:ICrowdsaleFormula
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol:IERC20Token
Processing contract: /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol:IInvestRestrictions
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol:ITokenPool
Processing contract: /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol:Manageable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol:ReturnTokenAgent
Processing contract: /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol:ReturnableToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for DAOConstantGas in contract 'BCSCrowdsale':
    |
    |        if (amount > 0) {
  > |            if (msg.sender.send(amount)) {
    |                OverpayRefund(msg.sender, amount);
    |            } else {
  at /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol(526)

[33mWarning[0m for DAOConstantGas in contract 'BCSCrowdsale':
    |            investedFrom[msg.sender] = 0;
    |            weiCollected = safeSub(weiCollected, amount);            
  > |            msg.sender.transfer(amount);
    |            
    |            Refund(msg.sender, amount);            
  at /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol(514)

[33mWarning[0m for DAOConstantGas in contract 'BCSCrowdsale':
    |        uint256 amount = amountToBeneficiary();
    |
  > |        beneficiary.transfer(amount);
    |        Refund(beneficiary, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol(541)

[33mWarning[0m for LockedEther in contract 'BCSCrowdsale':
    |/**@dev Crowdsale base contract, used for PRE-TGE and TGE stages
    |* Token holder should also be the owner of this contract */
  > |contract BCSCrowdsale is ICrowdsaleFormula, Manageable, SafeMath {
    |
    |    enum State {Unknown, BeforeStart, Active, FinishedSuccess, FinishedFailure}
  at /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol(346)

[31mViolation[0m for TODAmount in contract 'BCSCrowdsale':
    |        uint256 amount = amountToBeneficiary();
    |
  > |        beneficiary.transfer(amount);
    |        Refund(beneficiary, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol(541)

[33mWarning[0m for TODAmount in contract 'BCSCrowdsale':
    |            investedFrom[msg.sender] = 0;
    |            weiCollected = safeSub(weiCollected, amount);            
  > |            msg.sender.transfer(amount);
    |            
    |            Refund(msg.sender, amount);            
  at /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol(514)

[31mViolation[0m for TODReceiver in contract 'BCSCrowdsale':
    |        uint256 amount = amountToBeneficiary();
    |
  > |        beneficiary.transfer(amount);
    |        Refund(beneficiary, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol(541)

[33mWarning[0m for TODReceiver in contract 'BCSCrowdsale':
    |            investedFrom[msg.sender] = 0;
    |            weiCollected = safeSub(weiCollected, amount);            
  > |            msg.sender.transfer(amount);
    |            
    |            Refund(msg.sender, amount);            
  at /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol(514)

[33mWarning[0m for TODReceiver in contract 'BCSCrowdsale':
    |
    |        if (amount > 0) {
  > |            if (msg.sender.send(amount)) {
    |                OverpayRefund(msg.sender, amount);
    |            } else {
  at /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol(526)

[33mWarning[0m for UnhandledException in contract 'BCSCrowdsale':
    |
    |        if(address(restrictions) != 0x0) {
  > |            restrictions.investHappened(msg.sender, msg.value);
    |        }
    |        
  at /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol(443)

[33mWarning[0m for UnhandledException in contract 'BCSCrowdsale':
    |        }
    |        
  > |        require(tokenPool.token().transferFrom(tokenPool, msg.sender, tokensToBuy));
    |
    |        Invested(msg.sender, weiPaid, tokensToBuy);
  at /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol(446)

[33mWarning[0m for UnhandledException in contract 'BCSCrowdsale':
    |        return getState() == State.Active &&
    |                    (address(restrictions) == 0x0 || 
  > |                    restrictions.canInvest(investor, amount, tokensLeft()));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol(455)

[33mWarning[0m for UnhandledException in contract 'BCSCrowdsale':
    |    /**@dev Returns how many tokens left for sale */
    |    function tokensLeft() constant returns(uint256) {        
  > |        return tokenPool.getTokenAmount();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol(480)

[33mWarning[0m for UnhandledException in contract 'BCSCrowdsale':
    |            investedFrom[msg.sender] = 0;
    |            weiCollected = safeSub(weiCollected, amount);            
  > |            msg.sender.transfer(amount);
    |            
    |            Refund(msg.sender, amount);            
  at /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol(514)

[33mWarning[0m for UnhandledException in contract 'BCSCrowdsale':
    |
    |        if (amount > 0) {
  > |            if (msg.sender.send(amount)) {
    |                OverpayRefund(msg.sender, amount);
    |            } else {
  at /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol(526)

[33mWarning[0m for UnhandledException in contract 'BCSCrowdsale':
    |        uint256 amount = amountToBeneficiary();
    |
  > |        beneficiary.transfer(amount);
    |        Refund(beneficiary, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol(541)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BCSCrowdsale':
    |
    |        if(address(restrictions) != 0x0) {
  > |            restrictions.investHappened(msg.sender, msg.value);
    |        }
    |        
  at /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol(443)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BCSCrowdsale':
    |        }
    |        
  > |        require(tokenPool.token().transferFrom(tokenPool, msg.sender, tokensToBuy));
    |
    |        Invested(msg.sender, weiPaid, tokensToBuy);
  at /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol(446)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BCSCrowdsale':
    |        return getState() == State.Active &&
    |                    (address(restrictions) == 0x0 || 
  > |                    restrictions.canInvest(investor, amount, tokensLeft()));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol(455)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BCSCrowdsale':
    |    /**@dev Returns how many tokens left for sale */
    |    function tokensLeft() constant returns(uint256) {        
  > |        return tokenPool.getTokenAmount();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol(480)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BCSCrowdsale':
    |            investedFrom[msg.sender] = 0;
    |            weiCollected = safeSub(weiCollected, amount);            
  > |            msg.sender.transfer(amount);
    |            
    |            Refund(msg.sender, amount);            
  at /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol(514)

[33mWarning[0m for UnrestrictedWrite in contract 'BCSCrowdsale':
    |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
  > |        owner = _newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol(205)

[33mWarning[0m for UnrestrictedWrite in contract 'BCSCrowdsale':
    |        super.transferOwnership(_newOwner);
    |
  > |        managers[_newOwner] = true;
    |        managers[msg.sender] = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol(233)

[33mWarning[0m for UnrestrictedWrite in contract 'BCSCrowdsale':
    |
    |        managers[_newOwner] = true;
  > |        managers[msg.sender] = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol(234)

[33mWarning[0m for UnrestrictedWrite in contract 'BCSCrowdsale':
    |
    |    function setManager(address manager, bool state) ownerOnly {
  > |        managers[manager] = state;
    |        ManagerSet(manager, state);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol(238)

[33mWarning[0m for UnrestrictedWrite in contract 'BCSCrowdsale':
    |
    |        if (excess > 0) {
  > |            overpays[msg.sender] = safeAdd(overpays[msg.sender], excess);
    |            weiPaid = safeSub(weiPaid, excess);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol(432)

[33mWarning[0m for UnrestrictedWrite in contract 'BCSCrowdsale':
    |        }
    |        
  > |        investedFrom[msg.sender] = safeAdd(investedFrom[msg.sender], weiPaid);      
    |        tokensSoldTo[msg.sender] = safeAdd(tokensSoldTo[msg.sender], tokensToBuy);
    |        
  at /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol(436)

[33mWarning[0m for UnrestrictedWrite in contract 'BCSCrowdsale':
    |        
    |        investedFrom[msg.sender] = safeAdd(investedFrom[msg.sender], weiPaid);      
  > |        tokensSoldTo[msg.sender] = safeAdd(tokensSoldTo[msg.sender], tokensToBuy);
    |        
    |        tokensSold = safeAdd(tokensSold, tokensToBuy);
  at /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol(437)

[33mWarning[0m for UnrestrictedWrite in contract 'BCSCrowdsale':
    |        tokensSoldTo[msg.sender] = safeAdd(tokensSoldTo[msg.sender], tokensToBuy);
    |        
  > |        tokensSold = safeAdd(tokensSold, tokensToBuy);
    |        weiCollected = safeAdd(weiCollected, weiPaid);
    |
  at /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol(439)

[33mWarning[0m for UnrestrictedWrite in contract 'BCSCrowdsale':
    |        
    |        tokensSold = safeAdd(tokensSold, tokensToBuy);
  > |        weiCollected = safeAdd(weiCollected, weiPaid);
    |
    |        if(address(restrictions) != 0x0) {
  at /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol(440)

[33mWarning[0m for UnrestrictedWrite in contract 'BCSCrowdsale':
    |
    |        if (amount > 0) {
  > |            investedFrom[msg.sender] = 0;
    |            weiCollected = safeSub(weiCollected, amount);            
    |            msg.sender.transfer(amount);
  at /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol(512)

[33mWarning[0m for UnrestrictedWrite in contract 'BCSCrowdsale':
    |        if (amount > 0) {
    |            investedFrom[msg.sender] = 0;
  > |            weiCollected = safeSub(weiCollected, amount);            
    |            msg.sender.transfer(amount);
    |            
  at /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol(513)

[33mWarning[0m for UnrestrictedWrite in contract 'BCSCrowdsale':
    |    function withdrawOverpay() {
    |        uint amount = overpays[msg.sender];
  > |        overpays[msg.sender] = 0;        
    |
    |        if (amount > 0) {
  at /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol(523)

[33mWarning[0m for UnrestrictedWrite in contract 'BCSCrowdsale':
    |                OverpayRefund(msg.sender, amount);
    |            } else {
  > |                overpays[msg.sender] = amount; //restore funds in case of failed send
    |            }
    |        }
  at /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol(529)

[33mWarning[0m for LockedEther in contract 'ERC20StandardToken':
    |
    |/**@dev Standard ERC20 compliant token implementation */
  > |contract ERC20StandardToken is IERC20Token, SafeMath {
    |    string public name;
    |    string public symbol;
  at /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol(83)

[31mViolation[0m for MissingInputValidation in contract 'ERC20StandardToken':
    |    }
    | 
  > |    function balanceOf(address _owner) constant returns (uint balance) {
    |        balance = balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol(107)

[31mViolation[0m for MissingInputValidation in contract 'ERC20StandardToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool) {
    |        require(_to != address(0));
    |        
  at /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol(120)

[31mViolation[0m for MissingInputValidation in contract 'ERC20StandardToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol(131)

[31mViolation[0m for MissingInputValidation in contract 'ERC20StandardToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |        remaining = allowed[_owner][_spender];
    |    }    
  at /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol(137)

[33mWarning[0m for MissingInputValidation in contract 'ERC20StandardToken':
    |
    |    /**dev Returns the sum of a and b. Throws an exception if it exceeds uint256 limits*/
  > |    function safeAdd(uint256 a, uint256 b) internal returns (uint256) {        
    |        uint256 c = a + b;
    |        assert(c >= a);
  at /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol(54)

[33mWarning[0m for MissingInputValidation in contract 'ERC20StandardToken':
    |
    |    /**dev Returns the difference of a and b. Throws an exception if a is less than b*/
  > |    function safeSub(uint256 a, uint256 b) internal returns (uint256) {
    |        assert(a >= b);
    |        return a - b;
  at /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol(62)

[33mWarning[0m for MissingInputValidation in contract 'ERC20StandardToken':
    |/**@dev Standard ERC20 compliant token implementation */
    |contract ERC20StandardToken is IERC20Token, SafeMath {
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol(84)

[33mWarning[0m for MissingInputValidation in contract 'ERC20StandardToken':
    |contract ERC20StandardToken is IERC20Token, SafeMath {
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals;
    |
  at /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol(85)

[33mWarning[0m for MissingInputValidation in contract 'ERC20StandardToken':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals;
    |
    |    //tokens already issued
  at /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol(86)

[33mWarning[0m for MissingInputValidation in contract 'ERC20StandardToken':
    |    // 
    |
  > |    function totalSupply() constant returns (uint total) {
    |        total = tokensIssued;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol(103)

[33mWarning[0m for MissingInputValidation in contract 'ERC20StandardToken':
    |    //
    |    /**@dev Gets real token amount in the smallest token units */
  > |    function getRealTokenAmount(uint256 tokens) constant returns (uint256) {
    |        return tokens * (uint256(10) ** decimals);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol(145)

[33mWarning[0m for MissingInputValidation in contract 'ERC20StandardToken':
    |    //    
    |    
  > |    function doTransfer(address _from, address _to, uint256 _value) internal {
    |        balances[_from] = safeSub(balances[_from], _value);
    |        balances[_to] = safeAdd(balances[_to], _value);
  at /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol(153)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20StandardToken':
    |        
    |        // Check for allowance is not needed because sub(_allowance, _value) will throw if this condition is not met
  > |        allowed[_from][msg.sender] = safeSub(allowed[_from][msg.sender], _value);        
    |        // safeSub inside doTransfer will throw if there is not enough balance.
    |        doTransfer(_from, _to, _value);        
  at /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol(124)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20StandardToken':
    |    
    |    function doTransfer(address _from, address _to, uint256 _value) internal {
  > |        balances[_from] = safeSub(balances[_from], _value);
    |        balances[_to] = safeAdd(balances[_to], _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol(154)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20StandardToken':
    |    function doTransfer(address _from, address _to, uint256 _value) internal {
    |        balances[_from] = safeSub(balances[_from], _value);
  > |        balances[_to] = safeAdd(balances[_to], _value);
    |    }
    |}/*************************************************************************
  at /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol(155)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20StandardToken':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol(132)

[33mWarning[0m for LockedEther in contract 'ICrowdsaleFormula':
    |
    |/**@dev Abstraction of crowdsale token calculation function */
  > |contract ICrowdsaleFormula {
    |
    |    /**@dev Returns amount of tokens that can be bought with given weiAmount */
  at /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol(331)

[33mWarning[0m for LockedEther in contract 'IInvestRestrictions':
    |
    |/** @dev Restrictions on investment */
  > |contract IInvestRestrictions is Manageable {
    |    /**@dev Returns true if investmet is allowed */
    |    function canInvest(address investor, uint amount, uint tokensLeft) constant returns (bool result) {
  at /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol(315)

[33mWarning[0m for UnrestrictedWrite in contract 'IInvestRestrictions':
    |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
  > |        owner = _newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol(205)

[33mWarning[0m for UnrestrictedWrite in contract 'IInvestRestrictions':
    |        super.transferOwnership(_newOwner);
    |
  > |        managers[_newOwner] = true;
    |        managers[msg.sender] = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol(233)

[33mWarning[0m for UnrestrictedWrite in contract 'IInvestRestrictions':
    |
    |        managers[_newOwner] = true;
  > |        managers[msg.sender] = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol(234)

[33mWarning[0m for UnrestrictedWrite in contract 'IInvestRestrictions':
    |
    |    function setManager(address manager, bool state) ownerOnly {
  > |        managers[manager] = state;
    |        ManagerSet(manager, state);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol(238)

[33mWarning[0m for LockedEther in contract 'Manageable':
    |///A token that have an owner and a list of managers that can perform some operations
    |///Owner is always a manager too
  > |contract Manageable is Owned {
    |
    |    event ManagerSet(address manager, bool state);
  at /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol(214)

[31mViolation[0m for MissingInputValidation in contract 'Manageable':
    |    event ManagerSet(address manager, bool state);
    |
  > |    mapping (address => bool) public managers;
    |
    |    function Manageable() Owned() {
  at /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol(218)

[31mViolation[0m for MissingInputValidation in contract 'Manageable':
    |    }
    |
  > |    function setManager(address manager, bool state) ownerOnly {
    |        managers[manager] = state;
    |        ManagerSet(manager, state);
  at /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol(237)

[33mWarning[0m for MissingInputValidation in contract 'Manageable':
    |
    |contract Owned {
  > |    address public owner;        
    |
    |    function Owned() {
  at /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol(190)

[33mWarning[0m for MissingInputValidation in contract 'Manageable':
    |
    |    /**@dev allows transferring the contract ownership. */
  > |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
    |        owner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol(203)

[33mWarning[0m for MissingInputValidation in contract 'Manageable':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public ownerOnly {
    |        super.transferOwnership(_newOwner);
    |
  at /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol(230)

[31mViolation[0m for UnrestrictedWrite in contract 'Manageable':
    |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
  > |        owner = _newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol(205)

[33mWarning[0m for UnrestrictedWrite in contract 'Manageable':
    |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
  > |        owner = _newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol(205)

[33mWarning[0m for UnrestrictedWrite in contract 'Manageable':
    |        super.transferOwnership(_newOwner);
    |
  > |        managers[_newOwner] = true;
    |        managers[msg.sender] = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol(233)

[33mWarning[0m for UnrestrictedWrite in contract 'Manageable':
    |
    |        managers[_newOwner] = true;
  > |        managers[msg.sender] = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol(234)

[33mWarning[0m for UnrestrictedWrite in contract 'Manageable':
    |
    |    function setManager(address manager, bool state) ownerOnly {
  > |        managers[manager] = state;
    |        ManagerSet(manager, state);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol(238)

[33mWarning[0m for LockedEther in contract 'Owned':
    |
    |
  > |contract Owned {
    |    address public owner;        
    |
  at /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol(189)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |
    |contract Owned {
  > |    address public owner;        
    |
    |    function Owned() {
  at /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol(190)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |
    |    /**@dev allows transferring the contract ownership. */
  > |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
    |        owner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol(203)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
  > |        owner = _newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol(205)

[33mWarning[0m for DAO in contract 'ReturnableToken':
    |        super.doTransfer(_from, _to, _value);
    |        if (returnAgents[_to]) {
  > |            ReturnTokenAgent(_to).returnToken(_from, _value);                
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol(273)

[33mWarning[0m for LockedEther in contract 'ReturnableToken':
    |
    |///Token that when sent to specified contract (returnAgent) invokes additional actions
  > |contract ReturnableToken is Manageable, ERC20StandardToken {
    |
    |    /**@dev List of return agents */
  at /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol(253)

[31mViolation[0m for MissingInputValidation in contract 'ReturnableToken':
    |    }
    | 
  > |    function balanceOf(address _owner) constant returns (uint balance) {
    |        balance = balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol(107)

[31mViolation[0m for MissingInputValidation in contract 'ReturnableToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool) {
    |        require(_to != address(0));
    |        
  at /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol(120)

[31mViolation[0m for MissingInputValidation in contract 'ReturnableToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol(131)

[31mViolation[0m for MissingInputValidation in contract 'ReturnableToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |        remaining = allowed[_owner][_spender];
    |    }    
  at /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol(137)

[31mViolation[0m for MissingInputValidation in contract 'ReturnableToken':
    |    event ManagerSet(address manager, bool state);
    |
  > |    mapping (address => bool) public managers;
    |
    |    function Manageable() Owned() {
  at /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol(218)

[31mViolation[0m for MissingInputValidation in contract 'ReturnableToken':
    |    }
    |
  > |    function setManager(address manager, bool state) ownerOnly {
    |        managers[manager] = state;
    |        ManagerSet(manager, state);
  at /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol(237)

[31mViolation[0m for MissingInputValidation in contract 'ReturnableToken':
    |
    |    /**@dev List of return agents */
  > |    mapping (address => bool) public returnAgents;
    |
    |    function ReturnableToken() {}    
  at /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol(256)

[31mViolation[0m for MissingInputValidation in contract 'ReturnableToken':
    |    
    |    /**@dev Sets new return agent */
  > |    function setReturnAgent(ReturnTokenAgent agent) managerOnly {
    |        returnAgents[address(agent)] = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol(261)

[31mViolation[0m for MissingInputValidation in contract 'ReturnableToken':
    |
    |    /**@dev Removes return agent from list */
  > |    function removeReturnAgent(ReturnTokenAgent agent) managerOnly {
    |        returnAgents[address(agent)] = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol(266)

[33mWarning[0m for MissingInputValidation in contract 'ReturnableToken':
    |
    |    /**dev Returns the sum of a and b. Throws an exception if it exceeds uint256 limits*/
  > |    function safeAdd(uint256 a, uint256 b) internal returns (uint256) {        
    |        uint256 c = a + b;
    |        assert(c >= a);
  at /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol(54)

[33mWarning[0m for MissingInputValidation in contract 'ReturnableToken':
    |
    |    /**dev Returns the difference of a and b. Throws an exception if a is less than b*/
  > |    function safeSub(uint256 a, uint256 b) internal returns (uint256) {
    |        assert(a >= b);
    |        return a - b;
  at /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol(62)

[33mWarning[0m for MissingInputValidation in contract 'ReturnableToken':
    |/**@dev Standard ERC20 compliant token implementation */
    |contract ERC20StandardToken is IERC20Token, SafeMath {
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol(84)

[33mWarning[0m for MissingInputValidation in contract 'ReturnableToken':
    |contract ERC20StandardToken is IERC20Token, SafeMath {
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals;
    |
  at /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol(85)

[33mWarning[0m for MissingInputValidation in contract 'ReturnableToken':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals;
    |
    |    //tokens already issued
  at /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol(86)

[33mWarning[0m for MissingInputValidation in contract 'ReturnableToken':
    |    // 
    |
  > |    function totalSupply() constant returns (uint total) {
    |        total = tokensIssued;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol(103)

[33mWarning[0m for MissingInputValidation in contract 'ReturnableToken':
    |    //
    |    /**@dev Gets real token amount in the smallest token units */
  > |    function getRealTokenAmount(uint256 tokens) constant returns (uint256) {
    |        return tokens * (uint256(10) ** decimals);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol(145)

[33mWarning[0m for MissingInputValidation in contract 'ReturnableToken':
    |    //    
    |    
  > |    function doTransfer(address _from, address _to, uint256 _value) internal {
    |        balances[_from] = safeSub(balances[_from], _value);
    |        balances[_to] = safeAdd(balances[_to], _value);
  at /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol(153)

[33mWarning[0m for MissingInputValidation in contract 'ReturnableToken':
    |
    |contract Owned {
  > |    address public owner;        
    |
    |    function Owned() {
  at /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol(190)

[33mWarning[0m for MissingInputValidation in contract 'ReturnableToken':
    |
    |    /**@dev allows transferring the contract ownership. */
  > |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
    |        owner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol(203)

[33mWarning[0m for MissingInputValidation in contract 'ReturnableToken':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public ownerOnly {
    |        super.transferOwnership(_newOwner);
    |
  at /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol(230)

[33mWarning[0m for MissingInputValidation in contract 'ReturnableToken':
    |    }
    |
  > |    function doTransfer(address _from, address _to, uint256 _value) internal {
    |        super.doTransfer(_from, _to, _value);
    |        if (returnAgents[_to]) {
  at /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol(270)

[33mWarning[0m for UnhandledException in contract 'ReturnableToken':
    |        super.doTransfer(_from, _to, _value);
    |        if (returnAgents[_to]) {
  > |            ReturnTokenAgent(_to).returnToken(_from, _value);                
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol(273)

[31mViolation[0m for UnrestrictedWrite in contract 'ReturnableToken':
    |        
    |        // Check for allowance is not needed because sub(_allowance, _value) will throw if this condition is not met
  > |        allowed[_from][msg.sender] = safeSub(allowed[_from][msg.sender], _value);        
    |        // safeSub inside doTransfer will throw if there is not enough balance.
    |        doTransfer(_from, _to, _value);        
  at /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol(124)

[31mViolation[0m for UnrestrictedWrite in contract 'ReturnableToken':
    |    
    |    function doTransfer(address _from, address _to, uint256 _value) internal {
  > |        balances[_from] = safeSub(balances[_from], _value);
    |        balances[_to] = safeAdd(balances[_to], _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol(154)

[31mViolation[0m for UnrestrictedWrite in contract 'ReturnableToken':
    |    function doTransfer(address _from, address _to, uint256 _value) internal {
    |        balances[_from] = safeSub(balances[_from], _value);
  > |        balances[_to] = safeAdd(balances[_to], _value);
    |    }
    |}/*************************************************************************
  at /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol(155)

[31mViolation[0m for UnrestrictedWrite in contract 'ReturnableToken':
    |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
  > |        owner = _newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol(205)

[33mWarning[0m for UnrestrictedWrite in contract 'ReturnableToken':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol(132)

[33mWarning[0m for UnrestrictedWrite in contract 'ReturnableToken':
    |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
  > |        owner = _newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol(205)

[33mWarning[0m for UnrestrictedWrite in contract 'ReturnableToken':
    |        super.transferOwnership(_newOwner);
    |
  > |        managers[_newOwner] = true;
    |        managers[msg.sender] = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol(233)

[33mWarning[0m for UnrestrictedWrite in contract 'ReturnableToken':
    |
    |        managers[_newOwner] = true;
  > |        managers[msg.sender] = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol(234)

[33mWarning[0m for UnrestrictedWrite in contract 'ReturnableToken':
    |
    |    function setManager(address manager, bool state) ownerOnly {
  > |        managers[manager] = state;
    |        ManagerSet(manager, state);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol(238)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |/**dev Utility methods for overflow-proof arithmetic operations 
    |*/
  > |contract SafeMath {
    |
    |    /**dev Returns the sum of a and b. Throws an exception if it exceeds uint256 limits*/
  at /home/jiaming/mavs_srcs/contract@0x2f97dc94317760c7204e72a5bd058c10b409dc12.sol(51)


