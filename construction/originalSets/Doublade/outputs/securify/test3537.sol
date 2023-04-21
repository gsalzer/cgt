Processing contract: /home/jiaming/mavs_srcs/contract@0xe7e0bb725a6c1ed81b89042b1d37756b21db4958.sol:BDSM_Crowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe7e0bb725a6c1ed81b89042b1d37756b21db4958.sol:token
[31mViolation[0m for DAOConstantGas in contract 'BDSM_Crowdsale':
    |		}
    |		else if (now > stopICO) {
  > |			msg.sender.transfer(msg.value); // if crowdsale closed - cash back
    |			if(!tokenWithdraw){ // when crowdsale closed - unsold tokens transfer to stopScamHolder
    |			    sharesTokenAddress.transfer(safeContract, sharesTokenAddress.balanceOf(this));
  at /home/jiaming/mavs_srcs/contract@0xe7e0bb725a6c1ed81b89042b1d37756b21db4958.sol(44)

[31mViolation[0m for DAOConstantGas in contract 'BDSM_Crowdsale':
    |			uint256 actualETHTransfer = tokenToBuy * price / coeff;
    |			if (tokenFree >= tokenToBuy) { // free tokens >= tokens to buy, sell tokens
  > |				owner.transfer(actualETHTransfer);
    |				if (msg.value > actualETHTransfer){ // if more than need - cash back
    |					msg.sender.transfer(msg.value - actualETHTransfer);
  at /home/jiaming/mavs_srcs/contract@0xe7e0bb725a6c1ed81b89042b1d37756b21db4958.sol(61)

[31mViolation[0m for DAOConstantGas in contract 'BDSM_Crowdsale':
    |			} else { // free tokens < tokens to buy 
    |				uint256 sendETH = tokenFree * price / coeff; // price for all free tokens
  > |				owner.transfer(sendETH); 
    |				sharesTokenAddress.transfer(msg.sender, tokenFree); 
    |				msg.sender.transfer(msg.value - sendETH); // more than need - cash back
  at /home/jiaming/mavs_srcs/contract@0xe7e0bb725a6c1ed81b89042b1d37756b21db4958.sol(71)

[31mViolation[0m for DAOConstantGas in contract 'BDSM_Crowdsale':
    |				owner.transfer(sendETH); 
    |				sharesTokenAddress.transfer(msg.sender, tokenFree); 
  > |				msg.sender.transfer(msg.value - sendETH); // more than need - cash back
    |				tokenSold += tokenFree;
    |				tokenFree = sharesTokenAddress.balanceOf(this);
  at /home/jiaming/mavs_srcs/contract@0xe7e0bb725a6c1ed81b89042b1d37756b21db4958.sol(73)

[33mWarning[0m for DAOConstantGas in contract 'BDSM_Crowdsale':
    |		
    |		if (now < startICO) {
  > |		    msg.sender.transfer(msg.value);
    |		}
    |		else if (now > stopICO) {
  at /home/jiaming/mavs_srcs/contract@0xe7e0bb725a6c1ed81b89042b1d37756b21db4958.sol(41)

[33mWarning[0m for DAOConstantGas in contract 'BDSM_Crowdsale':
    |		} 
    |		else if (crowdsaleClosed) {
  > |			msg.sender.transfer(msg.value); // if no more tokens - cash back
    |		} 
    |		else {
  at /home/jiaming/mavs_srcs/contract@0xe7e0bb725a6c1ed81b89042b1d37756b21db4958.sol(53)

[33mWarning[0m for LockedEther in contract 'BDSM_Crowdsale':
    |}
    |
  > |contract BDSM_Crowdsale {
    |    
    |    token public sharesTokenAddress; // token address
  at /home/jiaming/mavs_srcs/contract@0xe7e0bb725a6c1ed81b89042b1d37756b21db4958.sol(8)

[31mViolation[0m for TODAmount in contract 'BDSM_Crowdsale':
    |			uint256 actualETHTransfer = tokenToBuy * price / coeff;
    |			if (tokenFree >= tokenToBuy) { // free tokens >= tokens to buy, sell tokens
  > |				owner.transfer(actualETHTransfer);
    |				if (msg.value > actualETHTransfer){ // if more than need - cash back
    |					msg.sender.transfer(msg.value - actualETHTransfer);
  at /home/jiaming/mavs_srcs/contract@0xe7e0bb725a6c1ed81b89042b1d37756b21db4958.sol(61)

[31mViolation[0m for TODAmount in contract 'BDSM_Crowdsale':
    |				owner.transfer(actualETHTransfer);
    |				if (msg.value > actualETHTransfer){ // if more than need - cash back
  > |					msg.sender.transfer(msg.value - actualETHTransfer);
    |				}
    |				sharesTokenAddress.transfer(msg.sender, tokenToBuy);
  at /home/jiaming/mavs_srcs/contract@0xe7e0bb725a6c1ed81b89042b1d37756b21db4958.sol(63)

[31mViolation[0m for TODAmount in contract 'BDSM_Crowdsale':
    |			} else { // free tokens < tokens to buy 
    |				uint256 sendETH = tokenFree * price / coeff; // price for all free tokens
  > |				owner.transfer(sendETH); 
    |				sharesTokenAddress.transfer(msg.sender, tokenFree); 
    |				msg.sender.transfer(msg.value - sendETH); // more than need - cash back
  at /home/jiaming/mavs_srcs/contract@0xe7e0bb725a6c1ed81b89042b1d37756b21db4958.sol(71)

[31mViolation[0m for TODAmount in contract 'BDSM_Crowdsale':
    |				owner.transfer(sendETH); 
    |				sharesTokenAddress.transfer(msg.sender, tokenFree); 
  > |				msg.sender.transfer(msg.value - sendETH); // more than need - cash back
    |				tokenSold += tokenFree;
    |				tokenFree = sharesTokenAddress.balanceOf(this);
  at /home/jiaming/mavs_srcs/contract@0xe7e0bb725a6c1ed81b89042b1d37756b21db4958.sol(73)

[33mWarning[0m for TODAmount in contract 'BDSM_Crowdsale':
    |		
    |		if (now < startICO) {
  > |		    msg.sender.transfer(msg.value);
    |		}
    |		else if (now > stopICO) {
  at /home/jiaming/mavs_srcs/contract@0xe7e0bb725a6c1ed81b89042b1d37756b21db4958.sol(41)

[33mWarning[0m for TODAmount in contract 'BDSM_Crowdsale':
    |		}
    |		else if (now > stopICO) {
  > |			msg.sender.transfer(msg.value); // if crowdsale closed - cash back
    |			if(!tokenWithdraw){ // when crowdsale closed - unsold tokens transfer to stopScamHolder
    |			    sharesTokenAddress.transfer(safeContract, sharesTokenAddress.balanceOf(this));
  at /home/jiaming/mavs_srcs/contract@0xe7e0bb725a6c1ed81b89042b1d37756b21db4958.sol(44)

[33mWarning[0m for TODReceiver in contract 'BDSM_Crowdsale':
    |		
    |		if (now < startICO) {
  > |		    msg.sender.transfer(msg.value);
    |		}
    |		else if (now > stopICO) {
  at /home/jiaming/mavs_srcs/contract@0xe7e0bb725a6c1ed81b89042b1d37756b21db4958.sol(41)

[33mWarning[0m for TODReceiver in contract 'BDSM_Crowdsale':
    |		}
    |		else if (now > stopICO) {
  > |			msg.sender.transfer(msg.value); // if crowdsale closed - cash back
    |			if(!tokenWithdraw){ // when crowdsale closed - unsold tokens transfer to stopScamHolder
    |			    sharesTokenAddress.transfer(safeContract, sharesTokenAddress.balanceOf(this));
  at /home/jiaming/mavs_srcs/contract@0xe7e0bb725a6c1ed81b89042b1d37756b21db4958.sol(44)

[33mWarning[0m for TODReceiver in contract 'BDSM_Crowdsale':
    |		} 
    |		else if (crowdsaleClosed) {
  > |			msg.sender.transfer(msg.value); // if no more tokens - cash back
    |		} 
    |		else {
  at /home/jiaming/mavs_srcs/contract@0xe7e0bb725a6c1ed81b89042b1d37756b21db4958.sol(53)

[33mWarning[0m for TODReceiver in contract 'BDSM_Crowdsale':
    |		else {
    |			uint256 tokenToBuy = msg.value / price * coeff; // tokens to buy
  > |			if(tokenToBuy <= 0) msg.sender.transfer(msg.value); // mistake protector
    |			require(tokenToBuy > 0);
    |			uint256 actualETHTransfer = tokenToBuy * price / coeff;
  at /home/jiaming/mavs_srcs/contract@0xe7e0bb725a6c1ed81b89042b1d37756b21db4958.sol(57)

[33mWarning[0m for TODReceiver in contract 'BDSM_Crowdsale':
    |				owner.transfer(actualETHTransfer);
    |				if (msg.value > actualETHTransfer){ // if more than need - cash back
  > |					msg.sender.transfer(msg.value - actualETHTransfer);
    |				}
    |				sharesTokenAddress.transfer(msg.sender, tokenToBuy);
  at /home/jiaming/mavs_srcs/contract@0xe7e0bb725a6c1ed81b89042b1d37756b21db4958.sol(63)

[33mWarning[0m for TODReceiver in contract 'BDSM_Crowdsale':
    |				owner.transfer(sendETH); 
    |				sharesTokenAddress.transfer(msg.sender, tokenFree); 
  > |				msg.sender.transfer(msg.value - sendETH); // more than need - cash back
    |				tokenSold += tokenFree;
    |				tokenFree = sharesTokenAddress.balanceOf(this);
  at /home/jiaming/mavs_srcs/contract@0xe7e0bb725a6c1ed81b89042b1d37756b21db4958.sol(73)

[33mWarning[0m for UnhandledException in contract 'BDSM_Crowdsale':
    |	    else if(now > 1516406400) price = 0.0070 * 1 ether; // if time later than - 20 January 2018 - price x2
    |	    
  > |		tokenFree = sharesTokenAddress.balanceOf(this); // free tokens count
    |		
    |		if (now < startICO) {
  at /home/jiaming/mavs_srcs/contract@0xe7e0bb725a6c1ed81b89042b1d37756b21db4958.sol(38)

[33mWarning[0m for UnhandledException in contract 'BDSM_Crowdsale':
    |		
    |		if (now < startICO) {
  > |		    msg.sender.transfer(msg.value);
    |		}
    |		else if (now > stopICO) {
  at /home/jiaming/mavs_srcs/contract@0xe7e0bb725a6c1ed81b89042b1d37756b21db4958.sol(41)

[33mWarning[0m for UnhandledException in contract 'BDSM_Crowdsale':
    |		}
    |		else if (now > stopICO) {
  > |			msg.sender.transfer(msg.value); // if crowdsale closed - cash back
    |			if(!tokenWithdraw){ // when crowdsale closed - unsold tokens transfer to stopScamHolder
    |			    sharesTokenAddress.transfer(safeContract, sharesTokenAddress.balanceOf(this));
  at /home/jiaming/mavs_srcs/contract@0xe7e0bb725a6c1ed81b89042b1d37756b21db4958.sol(44)

[33mWarning[0m for UnhandledException in contract 'BDSM_Crowdsale':
    |			msg.sender.transfer(msg.value); // if crowdsale closed - cash back
    |			if(!tokenWithdraw){ // when crowdsale closed - unsold tokens transfer to stopScamHolder
  > |			    sharesTokenAddress.transfer(safeContract, sharesTokenAddress.balanceOf(this));
    |			    tokenFree = sharesTokenAddress.balanceOf(this);
    |			    tokenWithdraw = true;
  at /home/jiaming/mavs_srcs/contract@0xe7e0bb725a6c1ed81b89042b1d37756b21db4958.sol(46)

[33mWarning[0m for UnhandledException in contract 'BDSM_Crowdsale':
    |			if(!tokenWithdraw){ // when crowdsale closed - unsold tokens transfer to stopScamHolder
    |			    sharesTokenAddress.transfer(safeContract, sharesTokenAddress.balanceOf(this));
  > |			    tokenFree = sharesTokenAddress.balanceOf(this);
    |			    tokenWithdraw = true;
    |			    crowdsaleClosed = true;
  at /home/jiaming/mavs_srcs/contract@0xe7e0bb725a6c1ed81b89042b1d37756b21db4958.sol(47)

[33mWarning[0m for UnhandledException in contract 'BDSM_Crowdsale':
    |		} 
    |		else if (crowdsaleClosed) {
  > |			msg.sender.transfer(msg.value); // if no more tokens - cash back
    |		} 
    |		else {
  at /home/jiaming/mavs_srcs/contract@0xe7e0bb725a6c1ed81b89042b1d37756b21db4958.sol(53)

[33mWarning[0m for UnhandledException in contract 'BDSM_Crowdsale':
    |		else {
    |			uint256 tokenToBuy = msg.value / price * coeff; // tokens to buy
  > |			if(tokenToBuy <= 0) msg.sender.transfer(msg.value); // mistake protector
    |			require(tokenToBuy > 0);
    |			uint256 actualETHTransfer = tokenToBuy * price / coeff;
  at /home/jiaming/mavs_srcs/contract@0xe7e0bb725a6c1ed81b89042b1d37756b21db4958.sol(57)

[33mWarning[0m for UnhandledException in contract 'BDSM_Crowdsale':
    |			uint256 actualETHTransfer = tokenToBuy * price / coeff;
    |			if (tokenFree >= tokenToBuy) { // free tokens >= tokens to buy, sell tokens
  > |				owner.transfer(actualETHTransfer);
    |				if (msg.value > actualETHTransfer){ // if more than need - cash back
    |					msg.sender.transfer(msg.value - actualETHTransfer);
  at /home/jiaming/mavs_srcs/contract@0xe7e0bb725a6c1ed81b89042b1d37756b21db4958.sol(61)

[33mWarning[0m for UnhandledException in contract 'BDSM_Crowdsale':
    |				owner.transfer(actualETHTransfer);
    |				if (msg.value > actualETHTransfer){ // if more than need - cash back
  > |					msg.sender.transfer(msg.value - actualETHTransfer);
    |				}
    |				sharesTokenAddress.transfer(msg.sender, tokenToBuy);
  at /home/jiaming/mavs_srcs/contract@0xe7e0bb725a6c1ed81b89042b1d37756b21db4958.sol(63)

[33mWarning[0m for UnhandledException in contract 'BDSM_Crowdsale':
    |					msg.sender.transfer(msg.value - actualETHTransfer);
    |				}
  > |				sharesTokenAddress.transfer(msg.sender, tokenToBuy);
    |				tokenSold += tokenToBuy;
    |				tokenFree -= tokenToBuy;
  at /home/jiaming/mavs_srcs/contract@0xe7e0bb725a6c1ed81b89042b1d37756b21db4958.sol(65)

[33mWarning[0m for UnhandledException in contract 'BDSM_Crowdsale':
    |			} else { // free tokens < tokens to buy 
    |				uint256 sendETH = tokenFree * price / coeff; // price for all free tokens
  > |				owner.transfer(sendETH); 
    |				sharesTokenAddress.transfer(msg.sender, tokenFree); 
    |				msg.sender.transfer(msg.value - sendETH); // more than need - cash back
  at /home/jiaming/mavs_srcs/contract@0xe7e0bb725a6c1ed81b89042b1d37756b21db4958.sol(71)

[33mWarning[0m for UnhandledException in contract 'BDSM_Crowdsale':
    |				uint256 sendETH = tokenFree * price / coeff; // price for all free tokens
    |				owner.transfer(sendETH); 
  > |				sharesTokenAddress.transfer(msg.sender, tokenFree); 
    |				msg.sender.transfer(msg.value - sendETH); // more than need - cash back
    |				tokenSold += tokenFree;
  at /home/jiaming/mavs_srcs/contract@0xe7e0bb725a6c1ed81b89042b1d37756b21db4958.sol(72)

[33mWarning[0m for UnhandledException in contract 'BDSM_Crowdsale':
    |				owner.transfer(sendETH); 
    |				sharesTokenAddress.transfer(msg.sender, tokenFree); 
  > |				msg.sender.transfer(msg.value - sendETH); // more than need - cash back
    |				tokenSold += tokenFree;
    |				tokenFree = sharesTokenAddress.balanceOf(this);
  at /home/jiaming/mavs_srcs/contract@0xe7e0bb725a6c1ed81b89042b1d37756b21db4958.sol(73)

[33mWarning[0m for UnhandledException in contract 'BDSM_Crowdsale':
    |				msg.sender.transfer(msg.value - sendETH); // more than need - cash back
    |				tokenSold += tokenFree;
  > |				tokenFree = sharesTokenAddress.balanceOf(this);
    |				crowdsaleClosed = true;
    |			}
  at /home/jiaming/mavs_srcs/contract@0xe7e0bb725a6c1ed81b89042b1d37756b21db4958.sol(75)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BDSM_Crowdsale':
    |	    else if(now > 1516406400) price = 0.0070 * 1 ether; // if time later than - 20 January 2018 - price x2
    |	    
  > |		tokenFree = sharesTokenAddress.balanceOf(this); // free tokens count
    |		
    |		if (now < startICO) {
  at /home/jiaming/mavs_srcs/contract@0xe7e0bb725a6c1ed81b89042b1d37756b21db4958.sol(38)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BDSM_Crowdsale':
    |			msg.sender.transfer(msg.value); // if crowdsale closed - cash back
    |			if(!tokenWithdraw){ // when crowdsale closed - unsold tokens transfer to stopScamHolder
  > |			    sharesTokenAddress.transfer(safeContract, sharesTokenAddress.balanceOf(this));
    |			    tokenFree = sharesTokenAddress.balanceOf(this);
    |			    tokenWithdraw = true;
  at /home/jiaming/mavs_srcs/contract@0xe7e0bb725a6c1ed81b89042b1d37756b21db4958.sol(46)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BDSM_Crowdsale':
    |			if(!tokenWithdraw){ // when crowdsale closed - unsold tokens transfer to stopScamHolder
    |			    sharesTokenAddress.transfer(safeContract, sharesTokenAddress.balanceOf(this));
  > |			    tokenFree = sharesTokenAddress.balanceOf(this);
    |			    tokenWithdraw = true;
    |			    crowdsaleClosed = true;
  at /home/jiaming/mavs_srcs/contract@0xe7e0bb725a6c1ed81b89042b1d37756b21db4958.sol(47)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BDSM_Crowdsale':
    |					msg.sender.transfer(msg.value - actualETHTransfer);
    |				}
  > |				sharesTokenAddress.transfer(msg.sender, tokenToBuy);
    |				tokenSold += tokenToBuy;
    |				tokenFree -= tokenToBuy;
  at /home/jiaming/mavs_srcs/contract@0xe7e0bb725a6c1ed81b89042b1d37756b21db4958.sol(65)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BDSM_Crowdsale':
    |				uint256 sendETH = tokenFree * price / coeff; // price for all free tokens
    |				owner.transfer(sendETH); 
  > |				sharesTokenAddress.transfer(msg.sender, tokenFree); 
    |				msg.sender.transfer(msg.value - sendETH); // more than need - cash back
    |				tokenSold += tokenFree;
  at /home/jiaming/mavs_srcs/contract@0xe7e0bb725a6c1ed81b89042b1d37756b21db4958.sol(72)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BDSM_Crowdsale':
    |				msg.sender.transfer(msg.value - sendETH); // more than need - cash back
    |				tokenSold += tokenFree;
  > |				tokenFree = sharesTokenAddress.balanceOf(this);
    |				crowdsaleClosed = true;
    |			}
  at /home/jiaming/mavs_srcs/contract@0xe7e0bb725a6c1ed81b89042b1d37756b21db4958.sol(75)

[31mViolation[0m for UnrestrictedWrite in contract 'BDSM_Crowdsale':
    |	function() payable {
    |	    
  > |	    if(now > 1519084800) price = 0.0105 * 1 ether; // if time later than - 20 February 2018 - price x3
    |	    else if(now > 1516406400) price = 0.0070 * 1 ether; // if time later than - 20 January 2018 - price x2
    |	    
  at /home/jiaming/mavs_srcs/contract@0xe7e0bb725a6c1ed81b89042b1d37756b21db4958.sol(35)

[31mViolation[0m for UnrestrictedWrite in contract 'BDSM_Crowdsale':
    |	    
    |	    if(now > 1519084800) price = 0.0105 * 1 ether; // if time later than - 20 February 2018 - price x3
  > |	    else if(now > 1516406400) price = 0.0070 * 1 ether; // if time later than - 20 January 2018 - price x2
    |	    
    |		tokenFree = sharesTokenAddress.balanceOf(this); // free tokens count
  at /home/jiaming/mavs_srcs/contract@0xe7e0bb725a6c1ed81b89042b1d37756b21db4958.sol(36)

[31mViolation[0m for UnrestrictedWrite in contract 'BDSM_Crowdsale':
    |	    else if(now > 1516406400) price = 0.0070 * 1 ether; // if time later than - 20 January 2018 - price x2
    |	    
  > |		tokenFree = sharesTokenAddress.balanceOf(this); // free tokens count
    |		
    |		if (now < startICO) {
  at /home/jiaming/mavs_srcs/contract@0xe7e0bb725a6c1ed81b89042b1d37756b21db4958.sol(38)

[31mViolation[0m for UnrestrictedWrite in contract 'BDSM_Crowdsale':
    |			if(!tokenWithdraw){ // when crowdsale closed - unsold tokens transfer to stopScamHolder
    |			    sharesTokenAddress.transfer(safeContract, sharesTokenAddress.balanceOf(this));
  > |			    tokenFree = sharesTokenAddress.balanceOf(this);
    |			    tokenWithdraw = true;
    |			    crowdsaleClosed = true;
  at /home/jiaming/mavs_srcs/contract@0xe7e0bb725a6c1ed81b89042b1d37756b21db4958.sol(47)

[31mViolation[0m for UnrestrictedWrite in contract 'BDSM_Crowdsale':
    |			    sharesTokenAddress.transfer(safeContract, sharesTokenAddress.balanceOf(this));
    |			    tokenFree = sharesTokenAddress.balanceOf(this);
  > |			    tokenWithdraw = true;
    |			    crowdsaleClosed = true;
    |			}
  at /home/jiaming/mavs_srcs/contract@0xe7e0bb725a6c1ed81b89042b1d37756b21db4958.sol(48)

[31mViolation[0m for UnrestrictedWrite in contract 'BDSM_Crowdsale':
    |			    tokenFree = sharesTokenAddress.balanceOf(this);
    |			    tokenWithdraw = true;
  > |			    crowdsaleClosed = true;
    |			}
    |		} 
  at /home/jiaming/mavs_srcs/contract@0xe7e0bb725a6c1ed81b89042b1d37756b21db4958.sol(49)

[31mViolation[0m for UnrestrictedWrite in contract 'BDSM_Crowdsale':
    |				}
    |				sharesTokenAddress.transfer(msg.sender, tokenToBuy);
  > |				tokenSold += tokenToBuy;
    |				tokenFree -= tokenToBuy;
    |				if(tokenFree==0) crowdsaleClosed = true;
  at /home/jiaming/mavs_srcs/contract@0xe7e0bb725a6c1ed81b89042b1d37756b21db4958.sol(66)

[31mViolation[0m for UnrestrictedWrite in contract 'BDSM_Crowdsale':
    |				sharesTokenAddress.transfer(msg.sender, tokenToBuy);
    |				tokenSold += tokenToBuy;
  > |				tokenFree -= tokenToBuy;
    |				if(tokenFree==0) crowdsaleClosed = true;
    |			} else { // free tokens < tokens to buy 
  at /home/jiaming/mavs_srcs/contract@0xe7e0bb725a6c1ed81b89042b1d37756b21db4958.sol(67)

[31mViolation[0m for UnrestrictedWrite in contract 'BDSM_Crowdsale':
    |				tokenSold += tokenToBuy;
    |				tokenFree -= tokenToBuy;
  > |				if(tokenFree==0) crowdsaleClosed = true;
    |			} else { // free tokens < tokens to buy 
    |				uint256 sendETH = tokenFree * price / coeff; // price for all free tokens
  at /home/jiaming/mavs_srcs/contract@0xe7e0bb725a6c1ed81b89042b1d37756b21db4958.sol(68)

[31mViolation[0m for UnrestrictedWrite in contract 'BDSM_Crowdsale':
    |				sharesTokenAddress.transfer(msg.sender, tokenFree); 
    |				msg.sender.transfer(msg.value - sendETH); // more than need - cash back
  > |				tokenSold += tokenFree;
    |				tokenFree = sharesTokenAddress.balanceOf(this);
    |				crowdsaleClosed = true;
  at /home/jiaming/mavs_srcs/contract@0xe7e0bb725a6c1ed81b89042b1d37756b21db4958.sol(74)

[31mViolation[0m for UnrestrictedWrite in contract 'BDSM_Crowdsale':
    |				msg.sender.transfer(msg.value - sendETH); // more than need - cash back
    |				tokenSold += tokenFree;
  > |				tokenFree = sharesTokenAddress.balanceOf(this);
    |				crowdsaleClosed = true;
    |			}
  at /home/jiaming/mavs_srcs/contract@0xe7e0bb725a6c1ed81b89042b1d37756b21db4958.sol(75)

[31mViolation[0m for UnrestrictedWrite in contract 'BDSM_Crowdsale':
    |				tokenSold += tokenFree;
    |				tokenFree = sharesTokenAddress.balanceOf(this);
  > |				crowdsaleClosed = true;
    |			}
    |		}
  at /home/jiaming/mavs_srcs/contract@0xe7e0bb725a6c1ed81b89042b1d37756b21db4958.sol(76)


