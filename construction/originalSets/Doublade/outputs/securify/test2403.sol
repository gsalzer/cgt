Processing contract: /home/jiaming/mavs_srcs/contract@0x9bfe61748ba9b71789de234d2bdc8fa21047d3cb.sol:SimpleMixer
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'SimpleMixer':
    |    	if( errorDetected ){
    |    	    Claim( msg.sender, dealId, false, error );
  > |    	    if( ! msg.sender.send(msg.value) ) throw; // send money back
    |    	    return ReturnValue.Error;
    |    	}
  at /home/jiaming/mavs_srcs/contract@0x9bfe61748ba9b71789de234d2bdc8fa21047d3cb.sol(107)

[33mWarning[0m for DAOConstantGas in contract 'SimpleMixer':
    |    	if( errorDetected ){
    |    	    Deposit( msg.sender, dealId, msg.value, false, error );
  > |    	    if( ! msg.sender.send(msg.value) ) throw; // send money back
    |    	    return ReturnValue.Error;
    |    	}
  at /home/jiaming/mavs_srcs/contract@0x9bfe61748ba9b71789de234d2bdc8fa21047d3cb.sol(168)

[33mWarning[0m for DAOConstantGas in contract 'SimpleMixer':
    |            // give only half of extra balance. otherwise dishonest party could obtain 99% of the extra balance and lose almost nothing
    |	        withdrawedValue = depositValue + deal.claimDepositInWei * userEffectiveNumDeposits + ( userExtraBalance / 2 );
  > |            if( ! msg.sender.send(withdrawedValue) ) throw;
    |        }
    |        else{
  at /home/jiaming/mavs_srcs/contract@0x9bfe61748ba9b71789de234d2bdc8fa21047d3cb.sol(232)

[33mWarning[0m for DAOConstantGas in contract 'SimpleMixer':
    |		
    |            deal.claims[msg.sender] = false; // invalidate claim
  > |            if( ! msg.sender.send(withdrawedValue) ) throw;
    |        }
    |	    
  at /home/jiaming/mavs_srcs/contract@0x9bfe61748ba9b71789de234d2bdc8fa21047d3cb.sol(245)

[33mWarning[0m for LockedEther in contract 'SimpleMixer':
    |//This project is beta stage and might contain unknown bugs.
    |//I am not responsible for any consequences of any use of the code or protocol that is suggested here.
  > |contract SimpleMixer {
    |    
    |    struct Deal{
  at /home/jiaming/mavs_srcs/contract@0x9bfe61748ba9b71789de234d2bdc8fa21047d3cb.sol(4)

[33mWarning[0m for TODReceiver in contract 'SimpleMixer':
    |    	if( errorDetected ){
    |    	    Claim( msg.sender, dealId, false, error );
  > |    	    if( ! msg.sender.send(msg.value) ) throw; // send money back
    |    	    return ReturnValue.Error;
    |    	}
  at /home/jiaming/mavs_srcs/contract@0x9bfe61748ba9b71789de234d2bdc8fa21047d3cb.sol(107)

[33mWarning[0m for TODReceiver in contract 'SimpleMixer':
    |    	if( errorDetected ){
    |    	    Deposit( msg.sender, dealId, msg.value, false, error );
  > |    	    if( ! msg.sender.send(msg.value) ) throw; // send money back
    |    	    return ReturnValue.Error;
    |    	}
  at /home/jiaming/mavs_srcs/contract@0x9bfe61748ba9b71789de234d2bdc8fa21047d3cb.sol(168)

[33mWarning[0m for TODReceiver in contract 'SimpleMixer':
    |            // give only half of extra balance. otherwise dishonest party could obtain 99% of the extra balance and lose almost nothing
    |	        withdrawedValue = depositValue + deal.claimDepositInWei * userEffectiveNumDeposits + ( userExtraBalance / 2 );
  > |            if( ! msg.sender.send(withdrawedValue) ) throw;
    |        }
    |        else{
  at /home/jiaming/mavs_srcs/contract@0x9bfe61748ba9b71789de234d2bdc8fa21047d3cb.sol(232)

[33mWarning[0m for TODReceiver in contract 'SimpleMixer':
    |		
    |            deal.claims[msg.sender] = false; // invalidate claim
  > |            if( ! msg.sender.send(withdrawedValue) ) throw;
    |        }
    |	    
  at /home/jiaming/mavs_srcs/contract@0x9bfe61748ba9b71789de234d2bdc8fa21047d3cb.sol(245)

[33mWarning[0m for UnhandledException in contract 'SimpleMixer':
    |    	if( errorDetected ){
    |    	    Claim( msg.sender, dealId, false, error );
  > |    	    if( ! msg.sender.send(msg.value) ) throw; // send money back
    |    	    return ReturnValue.Error;
    |    	}
  at /home/jiaming/mavs_srcs/contract@0x9bfe61748ba9b71789de234d2bdc8fa21047d3cb.sol(107)

[33mWarning[0m for UnhandledException in contract 'SimpleMixer':
    |    	if( errorDetected ){
    |    	    Deposit( msg.sender, dealId, msg.value, false, error );
  > |    	    if( ! msg.sender.send(msg.value) ) throw; // send money back
    |    	    return ReturnValue.Error;
    |    	}
  at /home/jiaming/mavs_srcs/contract@0x9bfe61748ba9b71789de234d2bdc8fa21047d3cb.sol(168)

[33mWarning[0m for UnhandledException in contract 'SimpleMixer':
    |            // give only half of extra balance. otherwise dishonest party could obtain 99% of the extra balance and lose almost nothing
    |	        withdrawedValue = depositValue + deal.claimDepositInWei * userEffectiveNumDeposits + ( userExtraBalance / 2 );
  > |            if( ! msg.sender.send(withdrawedValue) ) throw;
    |        }
    |        else{
  at /home/jiaming/mavs_srcs/contract@0x9bfe61748ba9b71789de234d2bdc8fa21047d3cb.sol(232)

[33mWarning[0m for UnhandledException in contract 'SimpleMixer':
    |		
    |            deal.claims[msg.sender] = false; // invalidate claim
  > |            if( ! msg.sender.send(withdrawedValue) ) throw;
    |        }
    |	    
  at /home/jiaming/mavs_srcs/contract@0x9bfe61748ba9b71789de234d2bdc8fa21047d3cb.sol(245)

[31mViolation[0m for UnrestrictedWrite in contract 'SimpleMixer':
    |//This project is beta stage and might contain unknown bugs.
    |//I am not responsible for any consequences of any use of the code or protocol that is suggested here.
  > |contract SimpleMixer {
    |    
    |    struct Deal{
  at /home/jiaming/mavs_srcs/contract@0x9bfe61748ba9b71789de234d2bdc8fa21047d3cb.sol(4)

[31mViolation[0m for UnrestrictedWrite in contract 'SimpleMixer':
    |        }
    |        _deals.length++;
  > |        _deals[dealId].depositSum = 0;
    |	    _deals[dealId].numClaims = 0;
    |        _deals[dealId].claimSum = 0;
  at /home/jiaming/mavs_srcs/contract@0x9bfe61748ba9b71789de234d2bdc8fa21047d3cb.sol(55)

[31mViolation[0m for UnrestrictedWrite in contract 'SimpleMixer':
    |        _deals.length++;
    |        _deals[dealId].depositSum = 0;
  > |	    _deals[dealId].numClaims = 0;
    |        _deals[dealId].claimSum = 0;
    |        _deals[dealId].startTime = now;
  at /home/jiaming/mavs_srcs/contract@0x9bfe61748ba9b71789de234d2bdc8fa21047d3cb.sol(56)

[31mViolation[0m for UnrestrictedWrite in contract 'SimpleMixer':
    |        _deals[dealId].depositSum = 0;
    |	    _deals[dealId].numClaims = 0;
  > |        _deals[dealId].claimSum = 0;
    |        _deals[dealId].startTime = now;
    |        _deals[dealId].depositDurationInSec = _depositDurationInHours * 1 hours;
  at /home/jiaming/mavs_srcs/contract@0x9bfe61748ba9b71789de234d2bdc8fa21047d3cb.sol(57)

[31mViolation[0m for UnrestrictedWrite in contract 'SimpleMixer':
    |	    _deals[dealId].numClaims = 0;
    |        _deals[dealId].claimSum = 0;
  > |        _deals[dealId].startTime = now;
    |        _deals[dealId].depositDurationInSec = _depositDurationInHours * 1 hours;
    |        _deals[dealId].claimDurationInSec = _claimDurationInHours * 1 hours;
  at /home/jiaming/mavs_srcs/contract@0x9bfe61748ba9b71789de234d2bdc8fa21047d3cb.sol(58)

[31mViolation[0m for UnrestrictedWrite in contract 'SimpleMixer':
    |        _deals[dealId].claimSum = 0;
    |        _deals[dealId].startTime = now;
  > |        _deals[dealId].depositDurationInSec = _depositDurationInHours * 1 hours;
    |        _deals[dealId].claimDurationInSec = _claimDurationInHours * 1 hours;
    |        _deals[dealId].claimDepositInWei = _claimDepositInWei;
  at /home/jiaming/mavs_srcs/contract@0x9bfe61748ba9b71789de234d2bdc8fa21047d3cb.sol(59)

[31mViolation[0m for UnrestrictedWrite in contract 'SimpleMixer':
    |        _deals[dealId].startTime = now;
    |        _deals[dealId].depositDurationInSec = _depositDurationInHours * 1 hours;
  > |        _deals[dealId].claimDurationInSec = _claimDurationInHours * 1 hours;
    |        _deals[dealId].claimDepositInWei = _claimDepositInWei;
    |        _deals[dealId].claimValueInWei = _claimUnitValueInWei;
  at /home/jiaming/mavs_srcs/contract@0x9bfe61748ba9b71789de234d2bdc8fa21047d3cb.sol(60)

[31mViolation[0m for UnrestrictedWrite in contract 'SimpleMixer':
    |        _deals[dealId].depositDurationInSec = _depositDurationInHours * 1 hours;
    |        _deals[dealId].claimDurationInSec = _claimDurationInHours * 1 hours;
  > |        _deals[dealId].claimDepositInWei = _claimDepositInWei;
    |        _deals[dealId].claimValueInWei = _claimUnitValueInWei;
    |	    _deals[dealId].minNumClaims = _minNumClaims;
  at /home/jiaming/mavs_srcs/contract@0x9bfe61748ba9b71789de234d2bdc8fa21047d3cb.sol(61)

[31mViolation[0m for UnrestrictedWrite in contract 'SimpleMixer':
    |        _deals[dealId].claimDurationInSec = _claimDurationInHours * 1 hours;
    |        _deals[dealId].claimDepositInWei = _claimDepositInWei;
  > |        _deals[dealId].claimValueInWei = _claimUnitValueInWei;
    |	    _deals[dealId].minNumClaims = _minNumClaims;
    |        _deals[dealId].fullyFunded = false;
  at /home/jiaming/mavs_srcs/contract@0x9bfe61748ba9b71789de234d2bdc8fa21047d3cb.sol(62)

[31mViolation[0m for UnrestrictedWrite in contract 'SimpleMixer':
    |        _deals[dealId].claimDepositInWei = _claimDepositInWei;
    |        _deals[dealId].claimValueInWei = _claimUnitValueInWei;
  > |	    _deals[dealId].minNumClaims = _minNumClaims;
    |        _deals[dealId].fullyFunded = false;
    |        _deals[dealId].active = true;
  at /home/jiaming/mavs_srcs/contract@0x9bfe61748ba9b71789de234d2bdc8fa21047d3cb.sol(63)

[31mViolation[0m for UnrestrictedWrite in contract 'SimpleMixer':
    |        _deals[dealId].claimValueInWei = _claimUnitValueInWei;
    |	    _deals[dealId].minNumClaims = _minNumClaims;
  > |        _deals[dealId].fullyFunded = false;
    |        _deals[dealId].active = true;
    |    	NewDeal( msg.sender,
  at /home/jiaming/mavs_srcs/contract@0x9bfe61748ba9b71789de234d2bdc8fa21047d3cb.sol(64)

[31mViolation[0m for UnrestrictedWrite in contract 'SimpleMixer':
    |	    _deals[dealId].minNumClaims = _minNumClaims;
    |        _deals[dealId].fullyFunded = false;
  > |        _deals[dealId].active = true;
    |    	NewDeal( msg.sender,
    |    	         dealId,
  at /home/jiaming/mavs_srcs/contract@0x9bfe61748ba9b71789de234d2bdc8fa21047d3cb.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'SimpleMixer':
    |	    // actual claim
    |        deal.claimSum += deal.claimValueInWei;
  > |        deal.claims[msg.sender] = true;
    |	    deal.numClaims++;
    |
  at /home/jiaming/mavs_srcs/contract@0x9bfe61748ba9b71789de234d2bdc8fa21047d3cb.sol(113)

[33mWarning[0m for UnrestrictedWrite in contract 'SimpleMixer':
    |	    // actual deposit
    |        deal.depositSum += msg.value;
  > |        deal.deposit[msg.sender] = msg.value;
    |
    |    	if( deal.depositSum >= deal.claimSum ){
  at /home/jiaming/mavs_srcs/contract@0x9bfe61748ba9b71789de234d2bdc8fa21047d3cb.sol(174)

[33mWarning[0m for UnrestrictedWrite in contract 'SimpleMixer':
    |            uint userExtraBalance = userEffectiveNumDeposits * extraBalance / effectiveNumDeposits;
    |
  > |            deal.deposit[msg.sender] = 0; // invalidate user
    |            // give only half of extra balance. otherwise dishonest party could obtain 99% of the extra balance and lose almost nothing
    |	        withdrawedValue = depositValue + deal.claimDepositInWei * userEffectiveNumDeposits + ( userExtraBalance / 2 );
  at /home/jiaming/mavs_srcs/contract@0x9bfe61748ba9b71789de234d2bdc8fa21047d3cb.sol(229)

[33mWarning[0m for UnrestrictedWrite in contract 'SimpleMixer':
    |	        else withdrawedValue = deal.claimDepositInWei;
    |		
  > |            deal.claims[msg.sender] = false; // invalidate claim
    |            if( ! msg.sender.send(withdrawedValue) ) throw;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x9bfe61748ba9b71789de234d2bdc8fa21047d3cb.sol(244)


