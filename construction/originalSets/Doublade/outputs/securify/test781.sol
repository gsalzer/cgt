Processing contract: /home/jiaming/mavs_srcs/contract@0x31b88320c5f5a45813d4a6f96f1d292c4f4383a2.sol:ApproveAndCallFallBack
Processing contract: /home/jiaming/mavs_srcs/contract@0x31b88320c5f5a45813d4a6f96f1d292c4f4383a2.sol:ClitCoinToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x31b88320c5f5a45813d4a6f96f1d292c4f4383a2.sol:ClitCrowdFunder
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x31b88320c5f5a45813d4a6f96f1d292c4f4383a2.sol:Controlled
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x31b88320c5f5a45813d4a6f96f1d292c4f4383a2.sol:ERC20Token
Processing contract: /home/jiaming/mavs_srcs/contract@0x31b88320c5f5a45813d4a6f96f1d292c4f4383a2.sol:MiniMeToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x31b88320c5f5a45813d4a6f96f1d292c4f4383a2.sol:MiniMeTokenFactory
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x31b88320c5f5a45813d4a6f96f1d292c4f4383a2.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x31b88320c5f5a45813d4a6f96f1d292c4f4383a2.sol:TokenController
[33mWarning[0m for DAO in contract 'ClitCoinToken':
    |    function ()  payable {
    |        if (isContract(controller)) {
  > |            if (! TokenController(controller).proxyPayment.value(msg.value)(msg.sender))
    |                throw;
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0x31b88320c5f5a45813d4a6f96f1d292c4f4383a2.sol(595)

[33mWarning[0m for LockedEther in contract 'ClitCoinToken':
    |
    |
  > |contract ClitCoinToken is MiniMeToken {
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x31b88320c5f5a45813d4a6f96f1d292c4f4383a2.sol(658)

[31mViolation[0m for TODReceiver in contract 'ClitCoinToken':
    |    function ()  payable {
    |        if (isContract(controller)) {
  > |            if (! TokenController(controller).proxyPayment.value(msg.value)(msg.sender))
    |                throw;
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0x31b88320c5f5a45813d4a6f96f1d292c4f4383a2.sol(595)

[33mWarning[0m for UnhandledException in contract 'ClitCoinToken':
    |           // Alerts the token controller of the transfer
    |           if (isContract(controller)) {
  > |               if (!TokenController(controller).onTransfer(_from, _to, _amount))
    |               throw;
    |           }
  at /home/jiaming/mavs_srcs/contract@0x31b88320c5f5a45813d4a6f96f1d292c4f4383a2.sol(293)

[33mWarning[0m for UnhandledException in contract 'ClitCoinToken':
    |        // Alerts the token controller of the approve function call
    |        if (isContract(controller)) {
  > |            if (!TokenController(controller).onApprove(msg.sender, _spender, _amount))
    |                throw;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x31b88320c5f5a45813d4a6f96f1d292c4f4383a2.sol(336)

[33mWarning[0m for UnhandledException in contract 'ClitCoinToken':
    |        if (!approve(_spender, _amount)) throw;
    |
  > |        ApproveAndCallFallBack(_spender).receiveApproval(
    |            msg.sender,
    |            _amount,
  at /home/jiaming/mavs_srcs/contract@0x31b88320c5f5a45813d4a6f96f1d292c4f4383a2.sol(366)

[33mWarning[0m for UnhandledException in contract 'ClitCoinToken':
    |            || (balances[_owner][0].fromBlock > _blockNumber)) {
    |            if (address(parentToken) != 0) {
  > |                return parentToken.balanceOfAt(_owner, min(_blockNumber, parentSnapShotBlock));
    |            } else {
    |                // Has no parent
  at /home/jiaming/mavs_srcs/contract@0x31b88320c5f5a45813d4a6f96f1d292c4f4383a2.sol(402)

[33mWarning[0m for UnhandledException in contract 'ClitCoinToken':
    |            || (totalSupplyHistory[0].fromBlock > _blockNumber)) {
    |            if (address(parentToken) != 0) {
  > |                return parentToken.totalSupplyAt(min(_blockNumber, parentSnapShotBlock));
    |            } else {
    |                return 0;
  at /home/jiaming/mavs_srcs/contract@0x31b88320c5f5a45813d4a6f96f1d292c4f4383a2.sol(427)

[33mWarning[0m for UnhandledException in contract 'ClitCoinToken':
    |        ) onlyController returns(address) {
    |        if (_snapshotBlock == 0) _snapshotBlock = block.number;
  > |        MiniMeToken cloneToken = tokenFactory.createCloneToken(
    |            this,
    |            _snapshotBlock,
  at /home/jiaming/mavs_srcs/contract@0x31b88320c5f5a45813d4a6f96f1d292c4f4383a2.sol(460)

[33mWarning[0m for UnhandledException in contract 'ClitCoinToken':
    |            );
    |
  > |        cloneToken.changeController(msg.sender);
    |
    |        // An event to make the token easy to find on the blockchain
  at /home/jiaming/mavs_srcs/contract@0x31b88320c5f5a45813d4a6f96f1d292c4f4383a2.sol(469)

[33mWarning[0m for UnhandledException in contract 'ClitCoinToken':
    |    function ()  payable {
    |        if (isContract(controller)) {
  > |            if (! TokenController(controller).proxyPayment.value(msg.value)(msg.sender))
    |                throw;
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0x31b88320c5f5a45813d4a6f96f1d292c4f4383a2.sol(595)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ClitCoinToken':
    |           // Alerts the token controller of the transfer
    |           if (isContract(controller)) {
  > |               if (!TokenController(controller).onTransfer(_from, _to, _amount))
    |               throw;
    |           }
  at /home/jiaming/mavs_srcs/contract@0x31b88320c5f5a45813d4a6f96f1d292c4f4383a2.sol(293)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ClitCoinToken':
    |        // Alerts the token controller of the approve function call
    |        if (isContract(controller)) {
  > |            if (!TokenController(controller).onApprove(msg.sender, _spender, _amount))
    |                throw;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x31b88320c5f5a45813d4a6f96f1d292c4f4383a2.sol(336)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ClitCoinToken':
    |        if (!approve(_spender, _amount)) throw;
    |
  > |        ApproveAndCallFallBack(_spender).receiveApproval(
    |            msg.sender,
    |            _amount,
  at /home/jiaming/mavs_srcs/contract@0x31b88320c5f5a45813d4a6f96f1d292c4f4383a2.sol(366)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ClitCoinToken':
    |            || (balances[_owner][0].fromBlock > _blockNumber)) {
    |            if (address(parentToken) != 0) {
  > |                return parentToken.balanceOfAt(_owner, min(_blockNumber, parentSnapShotBlock));
    |            } else {
    |                // Has no parent
  at /home/jiaming/mavs_srcs/contract@0x31b88320c5f5a45813d4a6f96f1d292c4f4383a2.sol(402)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ClitCoinToken':
    |            || (totalSupplyHistory[0].fromBlock > _blockNumber)) {
    |            if (address(parentToken) != 0) {
  > |                return parentToken.totalSupplyAt(min(_blockNumber, parentSnapShotBlock));
    |            } else {
    |                return 0;
  at /home/jiaming/mavs_srcs/contract@0x31b88320c5f5a45813d4a6f96f1d292c4f4383a2.sol(427)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ClitCoinToken':
    |        ) onlyController returns(address) {
    |        if (_snapshotBlock == 0) _snapshotBlock = block.number;
  > |        MiniMeToken cloneToken = tokenFactory.createCloneToken(
    |            this,
    |            _snapshotBlock,
  at /home/jiaming/mavs_srcs/contract@0x31b88320c5f5a45813d4a6f96f1d292c4f4383a2.sol(460)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ClitCoinToken':
    |            );
    |
  > |        cloneToken.changeController(msg.sender);
    |
    |        // An event to make the token easy to find on the blockchain
  at /home/jiaming/mavs_srcs/contract@0x31b88320c5f5a45813d4a6f96f1d292c4f4383a2.sol(469)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ClitCoinToken':
    |    function ()  payable {
    |        if (isContract(controller)) {
  > |            if (! TokenController(controller).proxyPayment.value(msg.value)(msg.sender))
    |                throw;
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0x31b88320c5f5a45813d4a6f96f1d292c4f4383a2.sol(595)

[33mWarning[0m for UnrestrictedWrite in contract 'ClitCoinToken':
    |            // The standard ERC 20 transferFrom functionality
    |            if (allowed[_from][msg.sender] < _amount) return false;
  > |            allowed[_from][msg.sender] -= _amount;
    |        }
    |        return doTransfer(_from, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x31b88320c5f5a45813d4a6f96f1d292c4f4383a2.sol(261)

[33mWarning[0m for UnrestrictedWrite in contract 'ClitCoinToken':
    |        }
    |
  > |        allowed[msg.sender][_spender] = _amount;
    |        Approval(msg.sender, _spender, _amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x31b88320c5f5a45813d4a6f96f1d292c4f4383a2.sol(340)

[33mWarning[0m for UnrestrictedWrite in contract 'ClitCoinToken':
    |        || (checkpoints[checkpoints.length -1].fromBlock < block.number)) {
    |               Checkpoint newCheckPoint = checkpoints[ checkpoints.length++ ];
  > |               newCheckPoint.fromBlock =  uint128(block.number);
    |               newCheckPoint.value = uint128(_value);
    |           } else {
  at /home/jiaming/mavs_srcs/contract@0x31b88320c5f5a45813d4a6f96f1d292c4f4383a2.sol(565)

[33mWarning[0m for UnrestrictedWrite in contract 'ClitCoinToken':
    |               Checkpoint newCheckPoint = checkpoints[ checkpoints.length++ ];
    |               newCheckPoint.fromBlock =  uint128(block.number);
  > |               newCheckPoint.value = uint128(_value);
    |           } else {
    |               Checkpoint oldCheckPoint = checkpoints[checkpoints.length-1];
  at /home/jiaming/mavs_srcs/contract@0x31b88320c5f5a45813d4a6f96f1d292c4f4383a2.sol(566)

[33mWarning[0m for UnrestrictedWrite in contract 'ClitCoinToken':
    |           } else {
    |               Checkpoint oldCheckPoint = checkpoints[checkpoints.length-1];
  > |               oldCheckPoint.value = uint128(_value);
    |           }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x31b88320c5f5a45813d4a6f96f1d292c4f4383a2.sol(569)

[33mWarning[0m for UnrestrictedWrite in contract 'ClitCoinToken':
    |
    |
  > |contract ClitCoinToken is MiniMeToken {
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x31b88320c5f5a45813d4a6f96f1d292c4f4383a2.sol(658)

[33mWarning[0m for UnrestrictedWrite in contract 'ClitCoinToken':
    |    /// @param _newController The new controller of the contract
    |    function changeController(address _newController) onlyController {
  > |        controller = _newController;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x31b88320c5f5a45813d4a6f96f1d292c4f4383a2.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'ClitCoinToken':
    |    /// @param _transfersEnabled True if transfers are allowed in the clone
    |    function enableTransfers(bool _transfersEnabled) onlyController {
  > |        transfersEnabled = _transfersEnabled;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31b88320c5f5a45813d4a6f96f1d292c4f4383a2.sol(522)

[31mViolation[0m for DAOConstantGas in contract 'ClitCrowdFunder':
    |		currentBalance = 0;
    |
  > |		fundRecipient.transfer(amount);
    |		
    |		// Update the token reserve amount so that 50% of tokens remain in reserve
  at /home/jiaming/mavs_srcs/contract@0x31b88320c5f5a45813d4a6f96f1d292c4f4383a2.sol(910)

[31mViolation[0m for DAOConstantGas in contract 'ClitCrowdFunder':
    |		
    |		// throws error if fails
  > |		msg.sender.transfer(amountToRefund);
    |		currentBalance -= amountToRefund;
    |		
  at /home/jiaming/mavs_srcs/contract@0x31b88320c5f5a45813d4a6f96f1d292c4f4383a2.sol(924)

[33mWarning[0m for LockedEther in contract 'ClitCrowdFunder':
    |
    |
  > |contract ClitCrowdFunder is Controlled, SafeMath {
    |
    |	address public creator;
  at /home/jiaming/mavs_srcs/contract@0x31b88320c5f5a45813d4a6f96f1d292c4f4383a2.sol(708)

[31mViolation[0m for TODAmount in contract 'ClitCrowdFunder':
    |		currentBalance = 0;
    |
  > |		fundRecipient.transfer(amount);
    |		
    |		// Update the token reserve amount so that 50% of tokens remain in reserve
  at /home/jiaming/mavs_srcs/contract@0x31b88320c5f5a45813d4a6f96f1d292c4f4383a2.sol(910)

[31mViolation[0m for TODReceiver in contract 'ClitCrowdFunder':
    |		currentBalance = 0;
    |
  > |		fundRecipient.transfer(amount);
    |		
    |		// Update the token reserve amount so that 50% of tokens remain in reserve
  at /home/jiaming/mavs_srcs/contract@0x31b88320c5f5a45813d4a6f96f1d292c4f4383a2.sol(910)

[33mWarning[0m for TODReceiver in contract 'ClitCrowdFunder':
    |		
    |		// throws error if fails
  > |		msg.sender.transfer(amountToRefund);
    |		currentBalance -= amountToRefund;
    |		
  at /home/jiaming/mavs_srcs/contract@0x31b88320c5f5a45813d4a6f96f1d292c4f4383a2.sol(924)

[33mWarning[0m for UnhandledException in contract 'ClitCrowdFunder':
    |						
    |		uint tokenAmount = getCurrentExchangeRate(amount);
  > |		exchangeToken.generateTokens(msg.sender, tokenAmount);
    |		totalTokensIssued += tokenAmount;
    |		issuedTokenBalance += tokenAmount;
  at /home/jiaming/mavs_srcs/contract@0x31b88320c5f5a45813d4a6f96f1d292c4f4383a2.sol(862)

[33mWarning[0m for UnhandledException in contract 'ClitCrowdFunder':
    |		currentBalance = 0;
    |
  > |		fundRecipient.transfer(amount);
    |		
    |		// Update the token reserve amount so that 50% of tokens remain in reserve
  at /home/jiaming/mavs_srcs/contract@0x31b88320c5f5a45813d4a6f96f1d292c4f4383a2.sol(910)

[33mWarning[0m for UnhandledException in contract 'ClitCrowdFunder':
    |		issuedTokenBalance = 0;
    |		
  > |		exchangeToken.generateTokens(fundRecipient, tokenCount);		
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x31b88320c5f5a45813d4a6f96f1d292c4f4383a2.sol(916)

[33mWarning[0m for UnhandledException in contract 'ClitCrowdFunder':
    |		
    |		// throws error if fails
  > |		msg.sender.transfer(amountToRefund);
    |		currentBalance -= amountToRefund;
    |		
  at /home/jiaming/mavs_srcs/contract@0x31b88320c5f5a45813d4a6f96f1d292c4f4383a2.sol(924)

[33mWarning[0m for UnhandledException in contract 'ClitCrowdFunder':
    |		
    |		// Allow clit owners to freely trade coins on the open market
  > |		exchangeToken.enableTransfers(true);
    |		
    |		// Restore ownership to controller
  at /home/jiaming/mavs_srcs/contract@0x31b88320c5f5a45813d4a6f96f1d292c4f4383a2.sol(934)

[33mWarning[0m for UnhandledException in contract 'ClitCrowdFunder':
    |		
    |		// Restore ownership to controller
  > |		exchangeToken.changeController(controller);
    |
    |		selfdestruct(msg.sender);
  at /home/jiaming/mavs_srcs/contract@0x31b88320c5f5a45813d4a6f96f1d292c4f4383a2.sol(937)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ClitCrowdFunder':
    |						
    |		uint tokenAmount = getCurrentExchangeRate(amount);
  > |		exchangeToken.generateTokens(msg.sender, tokenAmount);
    |		totalTokensIssued += tokenAmount;
    |		issuedTokenBalance += tokenAmount;
  at /home/jiaming/mavs_srcs/contract@0x31b88320c5f5a45813d4a6f96f1d292c4f4383a2.sol(862)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ClitCrowdFunder':
    |		issuedTokenBalance = 0;
    |		
  > |		exchangeToken.generateTokens(fundRecipient, tokenCount);		
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x31b88320c5f5a45813d4a6f96f1d292c4f4383a2.sol(916)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ClitCrowdFunder':
    |		
    |		// Allow clit owners to freely trade coins on the open market
  > |		exchangeToken.enableTransfers(true);
    |		
    |		// Restore ownership to controller
  at /home/jiaming/mavs_srcs/contract@0x31b88320c5f5a45813d4a6f96f1d292c4f4383a2.sol(934)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ClitCrowdFunder':
    |		
    |		// Restore ownership to controller
  > |		exchangeToken.changeController(controller);
    |
    |		selfdestruct(msg.sender);
  at /home/jiaming/mavs_srcs/contract@0x31b88320c5f5a45813d4a6f96f1d292c4f4383a2.sol(937)

[31mViolation[0m for UnrestrictedWrite in contract 'ClitCrowdFunder':
    |		balanceOf[msg.sender] += amount;	
    |		
  > |		totalRaised += amount;
    |		currentBalance += amount;
    |						
  at /home/jiaming/mavs_srcs/contract@0x31b88320c5f5a45813d4a6f96f1d292c4f4383a2.sol(858)

[31mViolation[0m for UnrestrictedWrite in contract 'ClitCrowdFunder':
    |		
    |		totalRaised += amount;
  > |		currentBalance += amount;
    |						
    |		uint tokenAmount = getCurrentExchangeRate(amount);
  at /home/jiaming/mavs_srcs/contract@0x31b88320c5f5a45813d4a6f96f1d292c4f4383a2.sol(859)

[31mViolation[0m for UnrestrictedWrite in contract 'ClitCrowdFunder':
    |		uint tokenAmount = getCurrentExchangeRate(amount);
    |		exchangeToken.generateTokens(msg.sender, tokenAmount);
  > |		totalTokensIssued += tokenAmount;
    |		issuedTokenBalance += tokenAmount;
    |		
  at /home/jiaming/mavs_srcs/contract@0x31b88320c5f5a45813d4a6f96f1d292c4f4383a2.sol(863)

[31mViolation[0m for UnrestrictedWrite in contract 'ClitCrowdFunder':
    |		exchangeToken.generateTokens(msg.sender, tokenAmount);
    |		totalTokensIssued += tokenAmount;
  > |		issuedTokenBalance += tokenAmount;
    |		
    |		FundTransfer(msg.sender, amount, true); 
  at /home/jiaming/mavs_srcs/contract@0x31b88320c5f5a45813d4a6f96f1d292c4f4383a2.sol(864)

[31mViolation[0m for UnrestrictedWrite in contract 'ClitCrowdFunder':
    |			// Hard limit reached
    |			if (currentBalance > fundingGoal || fundingGoalReached == true) {
  > |				state = State.Successful;
    |				payOut();
    |				
  at /home/jiaming/mavs_srcs/contract@0x31b88320c5f5a45813d4a6f96f1d292c4f4383a2.sol(877)

[31mViolation[0m for UnrestrictedWrite in contract 'ClitCrowdFunder':
    |
    |			} else  {
  > |				state = State.ExpiredRefund; // backers can now collect refunds by calling getRefund()
    |				
    |				RefundPeriodStarted();
  at /home/jiaming/mavs_srcs/contract@0x31b88320c5f5a45813d4a6f96f1d292c4f4383a2.sol(886)

[31mViolation[0m for UnrestrictedWrite in contract 'ClitCrowdFunder':
    |		} else if (currentBalance > fundingGoal && fundingGoalReached == false) {
    |			// Once goal reached
  > |			fundingGoalReached = true;
    |			
    |			state = State.Successful;
  at /home/jiaming/mavs_srcs/contract@0x31b88320c5f5a45813d4a6f96f1d292c4f4383a2.sol(892)

[31mViolation[0m for UnrestrictedWrite in contract 'ClitCrowdFunder':
    |			fundingGoalReached = true;
    |			
  > |			state = State.Successful;
    |			payOut();
    |			
  at /home/jiaming/mavs_srcs/contract@0x31b88320c5f5a45813d4a6f96f1d292c4f4383a2.sol(894)

[31mViolation[0m for UnrestrictedWrite in contract 'ClitCrowdFunder':
    |			
    |			// Continue allowing users to buy in
  > |			state = State.Fundraising;
    |			
    |			// currentBalance is zero after pay out
  at /home/jiaming/mavs_srcs/contract@0x31b88320c5f5a45813d4a6f96f1d292c4f4383a2.sol(898)

[31mViolation[0m for UnrestrictedWrite in contract 'ClitCrowdFunder':
    |		// Ethereum balance
    |		var amount = currentBalance;
  > |		currentBalance = 0;
    |
    |		fundRecipient.transfer(amount);
  at /home/jiaming/mavs_srcs/contract@0x31b88320c5f5a45813d4a6f96f1d292c4f4383a2.sol(908)

[31mViolation[0m for UnrestrictedWrite in contract 'ClitCrowdFunder':
    |		// Update the token reserve amount so that 50% of tokens remain in reserve
    |		var tokenCount = issuedTokenBalance;
  > |		issuedTokenBalance = 0;
    |		
    |		exchangeToken.generateTokens(fundRecipient, tokenCount);		
  at /home/jiaming/mavs_srcs/contract@0x31b88320c5f5a45813d4a6f96f1d292c4f4383a2.sol(914)

[31mViolation[0m for UnrestrictedWrite in contract 'ClitCrowdFunder':
    |		// throws error if fails
    |		msg.sender.transfer(amountToRefund);
  > |		currentBalance -= amountToRefund;
    |		
    |		FundTransfer(msg.sender, amountToRefund, false);
  at /home/jiaming/mavs_srcs/contract@0x31b88320c5f5a45813d4a6f96f1d292c4f4383a2.sol(925)

[31mViolation[0m for UnrestrictedWrite in contract 'ClitCrowdFunder':
    |	
    |	function removeContract() public atEndOfLifecycle {		
  > |		state = State.Closed;
    |		
    |		// Allow clit owners to freely trade coins on the open market
  at /home/jiaming/mavs_srcs/contract@0x31b88320c5f5a45813d4a6f96f1d292c4f4383a2.sol(931)

[33mWarning[0m for UnrestrictedWrite in contract 'ClitCrowdFunder':
    |		if (amount == 0) throw;
    |		
  > |		balanceOf[msg.sender] += amount;	
    |		
    |		totalRaised += amount;
  at /home/jiaming/mavs_srcs/contract@0x31b88320c5f5a45813d4a6f96f1d292c4f4383a2.sol(856)

[33mWarning[0m for UnrestrictedWrite in contract 'ClitCrowdFunder':
    |	function getRefund() public inState(State.ExpiredRefund) {	
    |		uint amountToRefund = balanceOf[msg.sender];
  > |		balanceOf[msg.sender] = 0;
    |		
    |		// throws error if fails
  at /home/jiaming/mavs_srcs/contract@0x31b88320c5f5a45813d4a6f96f1d292c4f4383a2.sol(921)

[33mWarning[0m for UnrestrictedWrite in contract 'ClitCrowdFunder':
    |    /// @param _newController The new controller of the contract
    |    function changeController(address _newController) onlyController {
  > |        controller = _newController;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x31b88320c5f5a45813d4a6f96f1d292c4f4383a2.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'ClitCrowdFunder':
    |	
    |	function freezeAccount(address target, bool freeze) onlyController {
  > |        frozenAccount[target] = freeze;
    |        FrozenFunds(target, freeze);
    |    }	
  at /home/jiaming/mavs_srcs/contract@0x31b88320c5f5a45813d4a6f96f1d292c4f4383a2.sol(831)

[33mWarning[0m for LockedEther in contract 'Controlled':
    |}
    |
  > |contract Controlled {
    |    /// @notice The address of the controller is the only address that can call
    |    ///  a function with this modifier
  at /home/jiaming/mavs_srcs/contract@0x31b88320c5f5a45813d4a6f96f1d292c4f4383a2.sol(110)

[31mViolation[0m for MissingInputValidation in contract 'Controlled':
    |    /// @notice Changes the controller of the contract
    |    /// @param _newController The new controller of the contract
  > |    function changeController(address _newController) onlyController {
    |        controller = _newController;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x31b88320c5f5a45813d4a6f96f1d292c4f4383a2.sol(121)

[33mWarning[0m for MissingInputValidation in contract 'Controlled':
    |    modifier onlyController { if (msg.sender != controller) throw; _; }
    |
  > |    address public controller;
    |
    |    function Controlled() { controller = msg.sender;}
  at /home/jiaming/mavs_srcs/contract@0x31b88320c5f5a45813d4a6f96f1d292c4f4383a2.sol(115)

[33mWarning[0m for UnrestrictedWrite in contract 'Controlled':
    |    /// @param _newController The new controller of the contract
    |    function changeController(address _newController) onlyController {
  > |        controller = _newController;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x31b88320c5f5a45813d4a6f96f1d292c4f4383a2.sol(122)

[33mWarning[0m for DAO in contract 'MiniMeToken':
    |    function ()  payable {
    |        if (isContract(controller)) {
  > |            if (! TokenController(controller).proxyPayment.value(msg.value)(msg.sender))
    |                throw;
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0x31b88320c5f5a45813d4a6f96f1d292c4f4383a2.sol(595)

[33mWarning[0m for LockedEther in contract 'MiniMeToken':
    |///  that deploys the contract, so usually this token will be deployed by a
    |///  token controller contract, which Giveth will call a "Campaign"
  > |contract MiniMeToken is Controlled, ERC20Token {
    |
    |    string public name;                //The Token's name: e.g. DigixDAO Tokens
  at /home/jiaming/mavs_srcs/contract@0x31b88320c5f5a45813d4a6f96f1d292c4f4383a2.sol(133)

[31mViolation[0m for TODReceiver in contract 'MiniMeToken':
    |    function ()  payable {
    |        if (isContract(controller)) {
  > |            if (! TokenController(controller).proxyPayment.value(msg.value)(msg.sender))
    |                throw;
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0x31b88320c5f5a45813d4a6f96f1d292c4f4383a2.sol(595)

[33mWarning[0m for UnhandledException in contract 'MiniMeToken':
    |           // Alerts the token controller of the transfer
    |           if (isContract(controller)) {
  > |               if (!TokenController(controller).onTransfer(_from, _to, _amount))
    |               throw;
    |           }
  at /home/jiaming/mavs_srcs/contract@0x31b88320c5f5a45813d4a6f96f1d292c4f4383a2.sol(293)

[33mWarning[0m for UnhandledException in contract 'MiniMeToken':
    |        // Alerts the token controller of the approve function call
    |        if (isContract(controller)) {
  > |            if (!TokenController(controller).onApprove(msg.sender, _spender, _amount))
    |                throw;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x31b88320c5f5a45813d4a6f96f1d292c4f4383a2.sol(336)

[33mWarning[0m for UnhandledException in contract 'MiniMeToken':
    |        if (!approve(_spender, _amount)) throw;
    |
  > |        ApproveAndCallFallBack(_spender).receiveApproval(
    |            msg.sender,
    |            _amount,
  at /home/jiaming/mavs_srcs/contract@0x31b88320c5f5a45813d4a6f96f1d292c4f4383a2.sol(366)

[33mWarning[0m for UnhandledException in contract 'MiniMeToken':
    |            || (balances[_owner][0].fromBlock > _blockNumber)) {
    |            if (address(parentToken) != 0) {
  > |                return parentToken.balanceOfAt(_owner, min(_blockNumber, parentSnapShotBlock));
    |            } else {
    |                // Has no parent
  at /home/jiaming/mavs_srcs/contract@0x31b88320c5f5a45813d4a6f96f1d292c4f4383a2.sol(402)

[33mWarning[0m for UnhandledException in contract 'MiniMeToken':
    |            || (totalSupplyHistory[0].fromBlock > _blockNumber)) {
    |            if (address(parentToken) != 0) {
  > |                return parentToken.totalSupplyAt(min(_blockNumber, parentSnapShotBlock));
    |            } else {
    |                return 0;
  at /home/jiaming/mavs_srcs/contract@0x31b88320c5f5a45813d4a6f96f1d292c4f4383a2.sol(427)

[33mWarning[0m for UnhandledException in contract 'MiniMeToken':
    |        ) onlyController returns(address) {
    |        if (_snapshotBlock == 0) _snapshotBlock = block.number;
  > |        MiniMeToken cloneToken = tokenFactory.createCloneToken(
    |            this,
    |            _snapshotBlock,
  at /home/jiaming/mavs_srcs/contract@0x31b88320c5f5a45813d4a6f96f1d292c4f4383a2.sol(460)

[33mWarning[0m for UnhandledException in contract 'MiniMeToken':
    |            );
    |
  > |        cloneToken.changeController(msg.sender);
    |
    |        // An event to make the token easy to find on the blockchain
  at /home/jiaming/mavs_srcs/contract@0x31b88320c5f5a45813d4a6f96f1d292c4f4383a2.sol(469)

[33mWarning[0m for UnhandledException in contract 'MiniMeToken':
    |    function ()  payable {
    |        if (isContract(controller)) {
  > |            if (! TokenController(controller).proxyPayment.value(msg.value)(msg.sender))
    |                throw;
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0x31b88320c5f5a45813d4a6f96f1d292c4f4383a2.sol(595)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MiniMeToken':
    |           // Alerts the token controller of the transfer
    |           if (isContract(controller)) {
  > |               if (!TokenController(controller).onTransfer(_from, _to, _amount))
    |               throw;
    |           }
  at /home/jiaming/mavs_srcs/contract@0x31b88320c5f5a45813d4a6f96f1d292c4f4383a2.sol(293)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MiniMeToken':
    |        // Alerts the token controller of the approve function call
    |        if (isContract(controller)) {
  > |            if (!TokenController(controller).onApprove(msg.sender, _spender, _amount))
    |                throw;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x31b88320c5f5a45813d4a6f96f1d292c4f4383a2.sol(336)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MiniMeToken':
    |        if (!approve(_spender, _amount)) throw;
    |
  > |        ApproveAndCallFallBack(_spender).receiveApproval(
    |            msg.sender,
    |            _amount,
  at /home/jiaming/mavs_srcs/contract@0x31b88320c5f5a45813d4a6f96f1d292c4f4383a2.sol(366)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MiniMeToken':
    |            || (balances[_owner][0].fromBlock > _blockNumber)) {
    |            if (address(parentToken) != 0) {
  > |                return parentToken.balanceOfAt(_owner, min(_blockNumber, parentSnapShotBlock));
    |            } else {
    |                // Has no parent
  at /home/jiaming/mavs_srcs/contract@0x31b88320c5f5a45813d4a6f96f1d292c4f4383a2.sol(402)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MiniMeToken':
    |            || (totalSupplyHistory[0].fromBlock > _blockNumber)) {
    |            if (address(parentToken) != 0) {
  > |                return parentToken.totalSupplyAt(min(_blockNumber, parentSnapShotBlock));
    |            } else {
    |                return 0;
  at /home/jiaming/mavs_srcs/contract@0x31b88320c5f5a45813d4a6f96f1d292c4f4383a2.sol(427)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MiniMeToken':
    |        ) onlyController returns(address) {
    |        if (_snapshotBlock == 0) _snapshotBlock = block.number;
  > |        MiniMeToken cloneToken = tokenFactory.createCloneToken(
    |            this,
    |            _snapshotBlock,
  at /home/jiaming/mavs_srcs/contract@0x31b88320c5f5a45813d4a6f96f1d292c4f4383a2.sol(460)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MiniMeToken':
    |            );
    |
  > |        cloneToken.changeController(msg.sender);
    |
    |        // An event to make the token easy to find on the blockchain
  at /home/jiaming/mavs_srcs/contract@0x31b88320c5f5a45813d4a6f96f1d292c4f4383a2.sol(469)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MiniMeToken':
    |    function ()  payable {
    |        if (isContract(controller)) {
  > |            if (! TokenController(controller).proxyPayment.value(msg.value)(msg.sender))
    |                throw;
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0x31b88320c5f5a45813d4a6f96f1d292c4f4383a2.sol(595)

[33mWarning[0m for UnrestrictedWrite in contract 'MiniMeToken':
    |///  that deploys the contract, so usually this token will be deployed by a
    |///  token controller contract, which Giveth will call a "Campaign"
  > |contract MiniMeToken is Controlled, ERC20Token {
    |
    |    string public name;                //The Token's name: e.g. DigixDAO Tokens
  at /home/jiaming/mavs_srcs/contract@0x31b88320c5f5a45813d4a6f96f1d292c4f4383a2.sol(133)

[33mWarning[0m for UnrestrictedWrite in contract 'MiniMeToken':
    |            // The standard ERC 20 transferFrom functionality
    |            if (allowed[_from][msg.sender] < _amount) return false;
  > |            allowed[_from][msg.sender] -= _amount;
    |        }
    |        return doTransfer(_from, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x31b88320c5f5a45813d4a6f96f1d292c4f4383a2.sol(261)

[33mWarning[0m for UnrestrictedWrite in contract 'MiniMeToken':
    |        }
    |
  > |        allowed[msg.sender][_spender] = _amount;
    |        Approval(msg.sender, _spender, _amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x31b88320c5f5a45813d4a6f96f1d292c4f4383a2.sol(340)

[33mWarning[0m for UnrestrictedWrite in contract 'MiniMeToken':
    |        || (checkpoints[checkpoints.length -1].fromBlock < block.number)) {
    |               Checkpoint newCheckPoint = checkpoints[ checkpoints.length++ ];
  > |               newCheckPoint.fromBlock =  uint128(block.number);
    |               newCheckPoint.value = uint128(_value);
    |           } else {
  at /home/jiaming/mavs_srcs/contract@0x31b88320c5f5a45813d4a6f96f1d292c4f4383a2.sol(565)

[33mWarning[0m for UnrestrictedWrite in contract 'MiniMeToken':
    |               Checkpoint newCheckPoint = checkpoints[ checkpoints.length++ ];
    |               newCheckPoint.fromBlock =  uint128(block.number);
  > |               newCheckPoint.value = uint128(_value);
    |           } else {
    |               Checkpoint oldCheckPoint = checkpoints[checkpoints.length-1];
  at /home/jiaming/mavs_srcs/contract@0x31b88320c5f5a45813d4a6f96f1d292c4f4383a2.sol(566)

[33mWarning[0m for UnrestrictedWrite in contract 'MiniMeToken':
    |           } else {
    |               Checkpoint oldCheckPoint = checkpoints[checkpoints.length-1];
  > |               oldCheckPoint.value = uint128(_value);
    |           }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x31b88320c5f5a45813d4a6f96f1d292c4f4383a2.sol(569)

[33mWarning[0m for UnrestrictedWrite in contract 'MiniMeToken':
    |    /// @param _newController The new controller of the contract
    |    function changeController(address _newController) onlyController {
  > |        controller = _newController;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x31b88320c5f5a45813d4a6f96f1d292c4f4383a2.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'MiniMeToken':
    |    /// @param _transfersEnabled True if transfers are allowed in the clone
    |    function enableTransfers(bool _transfersEnabled) onlyController {
  > |        transfersEnabled = _transfersEnabled;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31b88320c5f5a45813d4a6f96f1d292c4f4383a2.sol(522)

[33mWarning[0m for LockedEther in contract 'MiniMeTokenFactory':
    |///  In solidity this is the way to create a contract from a contract of the
    |///  same class
  > |contract MiniMeTokenFactory {
    |
    |    /// @notice Update the DApp by creating a new token with new functionalities
  at /home/jiaming/mavs_srcs/contract@0x31b88320c5f5a45813d4a6f96f1d292c4f4383a2.sol(619)

[31mViolation[0m for MissingInputValidation in contract 'MiniMeTokenFactory':
    |    /// @param _transfersEnabled If true, tokens will be able to be transferred
    |    /// @return The address of the new token contract
  > |    function createCloneToken(
    |        address _parentToken,
    |        uint _snapshotBlock,
  at /home/jiaming/mavs_srcs/contract@0x31b88320c5f5a45813d4a6f96f1d292c4f4383a2.sol(631)

[33mWarning[0m for MissingInputValidation in contract 'MiniMeTokenFactory':
    |///  In solidity this is the way to create a contract from a contract of the
    |///  same class
  > |contract MiniMeTokenFactory {
    |
    |    /// @notice Update the DApp by creating a new token with new functionalities
  at /home/jiaming/mavs_srcs/contract@0x31b88320c5f5a45813d4a6f96f1d292c4f4383a2.sol(619)

[33mWarning[0m for UnhandledException in contract 'MiniMeTokenFactory':
    |            );
    |
  > |        newToken.changeController(msg.sender);
    |        return newToken;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x31b88320c5f5a45813d4a6f96f1d292c4f4383a2.sol(649)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MiniMeTokenFactory':
    |            );
    |
  > |        newToken.changeController(msg.sender);
    |        return newToken;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x31b88320c5f5a45813d4a6f96f1d292c4f4383a2.sol(649)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * Math operations with safety checks
    | */
  > |contract SafeMath {
    |  function mul(uint a, uint b) internal returns (uint) {
    |    uint c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x31b88320c5f5a45813d4a6f96f1d292c4f4383a2.sol(681)


