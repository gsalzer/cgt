Processing contract: /home/jiaming/mavs_srcs/contract@0xbae07df8862c08b29bddecea08b85145bb48d744.sol:MicroDAO
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbae07df8862c08b29bddecea08b85145bb48d744.sol:SpendingRequest
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for DAOConstantGas in contract 'MicroDAO':
    |					if(s.result_amount()>0) {
    |						if(s.result_payto()!=0) {
  > |							s.result_payto().send(s.result_amount()*1 ether);
    |							bookings.push(booking(now,0,s.result_amount()*1 ether,s.result_payto(),"Executed SpendingRequest"));
    |						}
  at /home/jiaming/mavs_srcs/contract@0xbae07df8862c08b29bddecea08b85145bb48d744.sol(220)

[33mWarning[0m for LockedEther in contract 'MicroDAO':
    |	}	
    |}
  > |contract MicroDAO
    |{
    |	string public directorNode;
  at /home/jiaming/mavs_srcs/contract@0xbae07df8862c08b29bddecea08b85145bb48d744.sol(99)

[33mWarning[0m for TODAmount in contract 'MicroDAO':
    |					if(s.result_amount()>0) {
    |						if(s.result_payto()!=0) {
  > |							s.result_payto().send(s.result_amount()*1 ether);
    |							bookings.push(booking(now,0,s.result_amount()*1 ether,s.result_payto(),"Executed SpendingRequest"));
    |						}
  at /home/jiaming/mavs_srcs/contract@0xbae07df8862c08b29bddecea08b85145bb48d744.sol(220)

[33mWarning[0m for TODReceiver in contract 'MicroDAO':
    |					if(s.result_amount()>0) {
    |						if(s.result_payto()!=0) {
  > |							s.result_payto().send(s.result_amount()*1 ether);
    |							bookings.push(booking(now,0,s.result_amount()*1 ether,s.result_payto(),"Executed SpendingRequest"));
    |						}
  at /home/jiaming/mavs_srcs/contract@0xbae07df8862c08b29bddecea08b85145bb48d744.sol(220)

[31mViolation[0m for UnhandledException in contract 'MicroDAO':
    |					if(s.result_amount()>0) {
    |						if(s.result_payto()!=0) {
  > |							s.result_payto().send(s.result_amount()*1 ether);
    |							bookings.push(booking(now,0,s.result_amount()*1 ether,s.result_payto(),"Executed SpendingRequest"));
    |						}
  at /home/jiaming/mavs_srcs/contract@0xbae07df8862c08b29bddecea08b85145bb48d744.sol(220)

[31mViolation[0m for UnhandledException in contract 'MicroDAO':
    |				sharesRaised-=balanceOf[funders[i]];
    |				balanceOf[funders[i]]=0;
  > |				funders[i].send(amount);				
    |			}
    |		}
  at /home/jiaming/mavs_srcs/contract@0xbae07df8862c08b29bddecea08b85145bb48d744.sol(248)

[33mWarning[0m for UnhandledException in contract 'MicroDAO':
    |		if(msg.sender!=director) throw;	
    |		SpendingRequest s = SpendingRequest(spendingRequest);		
  > |		if(s.executed()) throw;
    |		if(s.vote_until()<now) throw; 
    |		allowances.push(s);		
  at /home/jiaming/mavs_srcs/contract@0xbae07df8862c08b29bddecea08b85145bb48d744.sol(206)

[33mWarning[0m for UnhandledException in contract 'MicroDAO':
    |		SpendingRequest s = SpendingRequest(spendingRequest);		
    |		if(s.executed()) throw;
  > |		if(s.vote_until()<now) throw; 
    |		allowances.push(s);		
    |	}
  at /home/jiaming/mavs_srcs/contract@0xbae07df8862c08b29bddecea08b85145bb48d744.sol(207)

[33mWarning[0m for UnhandledException in contract 'MicroDAO':
    |		for(var i=0;i<allowances.length;i++) {
    |			SpendingRequest s =SpendingRequest(allowances[i]);
  > |			if(!s.executed()) {
    |				if((s.vote_until()<now)&&(s.request_until()>now)) {
    |					s.execute();
  at /home/jiaming/mavs_srcs/contract@0xbae07df8862c08b29bddecea08b85145bb48d744.sol(214)

[33mWarning[0m for UnhandledException in contract 'MicroDAO':
    |			SpendingRequest s =SpendingRequest(allowances[i]);
    |			if(!s.executed()) {
  > |				if((s.vote_until()<now)&&(s.request_until()>now)) {
    |					s.execute();
    |					directorLockUntil=now+(86400*directorLockDays);
  at /home/jiaming/mavs_srcs/contract@0xbae07df8862c08b29bddecea08b85145bb48d744.sol(215)

[33mWarning[0m for UnhandledException in contract 'MicroDAO':
    |			if(!s.executed()) {
    |				if((s.vote_until()<now)&&(s.request_until()>now)) {
  > |					s.execute();
    |					directorLockUntil=now+(86400*directorLockDays);
    |					if(s.result_amount()>0) {
  at /home/jiaming/mavs_srcs/contract@0xbae07df8862c08b29bddecea08b85145bb48d744.sol(216)

[33mWarning[0m for UnhandledException in contract 'MicroDAO':
    |					s.execute();
    |					directorLockUntil=now+(86400*directorLockDays);
  > |					if(s.result_amount()>0) {
    |						if(s.result_payto()!=0) {
    |							s.result_payto().send(s.result_amount()*1 ether);
  at /home/jiaming/mavs_srcs/contract@0xbae07df8862c08b29bddecea08b85145bb48d744.sol(218)

[33mWarning[0m for UnhandledException in contract 'MicroDAO':
    |					directorLockUntil=now+(86400*directorLockDays);
    |					if(s.result_amount()>0) {
  > |						if(s.result_payto()!=0) {
    |							s.result_payto().send(s.result_amount()*1 ether);
    |							bookings.push(booking(now,0,s.result_amount()*1 ether,s.result_payto(),"Executed SpendingRequest"));
  at /home/jiaming/mavs_srcs/contract@0xbae07df8862c08b29bddecea08b85145bb48d744.sol(219)

[33mWarning[0m for UnhandledException in contract 'MicroDAO':
    |					if(s.result_amount()>0) {
    |						if(s.result_payto()!=0) {
  > |							s.result_payto().send(s.result_amount()*1 ether);
    |							bookings.push(booking(now,0,s.result_amount()*1 ether,s.result_payto(),"Executed SpendingRequest"));
    |						}
  at /home/jiaming/mavs_srcs/contract@0xbae07df8862c08b29bddecea08b85145bb48d744.sol(220)

[33mWarning[0m for UnhandledException in contract 'MicroDAO':
    |						if(s.result_payto()!=0) {
    |							s.result_payto().send(s.result_amount()*1 ether);
  > |							bookings.push(booking(now,0,s.result_amount()*1 ether,s.result_payto(),"Executed SpendingRequest"));
    |						}
    |					}
  at /home/jiaming/mavs_srcs/contract@0xbae07df8862c08b29bddecea08b85145bb48d744.sol(221)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MicroDAO':
    |		if(msg.sender!=director) throw;	
    |		SpendingRequest s = SpendingRequest(spendingRequest);		
  > |		if(s.executed()) throw;
    |		if(s.vote_until()<now) throw; 
    |		allowances.push(s);		
  at /home/jiaming/mavs_srcs/contract@0xbae07df8862c08b29bddecea08b85145bb48d744.sol(206)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MicroDAO':
    |		SpendingRequest s = SpendingRequest(spendingRequest);		
    |		if(s.executed()) throw;
  > |		if(s.vote_until()<now) throw; 
    |		allowances.push(s);		
    |	}
  at /home/jiaming/mavs_srcs/contract@0xbae07df8862c08b29bddecea08b85145bb48d744.sol(207)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MicroDAO':
    |		for(var i=0;i<allowances.length;i++) {
    |			SpendingRequest s =SpendingRequest(allowances[i]);
  > |			if(!s.executed()) {
    |				if((s.vote_until()<now)&&(s.request_until()>now)) {
    |					s.execute();
  at /home/jiaming/mavs_srcs/contract@0xbae07df8862c08b29bddecea08b85145bb48d744.sol(214)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MicroDAO':
    |			SpendingRequest s =SpendingRequest(allowances[i]);
    |			if(!s.executed()) {
  > |				if((s.vote_until()<now)&&(s.request_until()>now)) {
    |					s.execute();
    |					directorLockUntil=now+(86400*directorLockDays);
  at /home/jiaming/mavs_srcs/contract@0xbae07df8862c08b29bddecea08b85145bb48d744.sol(215)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MicroDAO':
    |			if(!s.executed()) {
    |				if((s.vote_until()<now)&&(s.request_until()>now)) {
  > |					s.execute();
    |					directorLockUntil=now+(86400*directorLockDays);
    |					if(s.result_amount()>0) {
  at /home/jiaming/mavs_srcs/contract@0xbae07df8862c08b29bddecea08b85145bb48d744.sol(216)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MicroDAO':
    |					s.execute();
    |					directorLockUntil=now+(86400*directorLockDays);
  > |					if(s.result_amount()>0) {
    |						if(s.result_payto()!=0) {
    |							s.result_payto().send(s.result_amount()*1 ether);
  at /home/jiaming/mavs_srcs/contract@0xbae07df8862c08b29bddecea08b85145bb48d744.sol(218)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MicroDAO':
    |					directorLockUntil=now+(86400*directorLockDays);
    |					if(s.result_amount()>0) {
  > |						if(s.result_payto()!=0) {
    |							s.result_payto().send(s.result_amount()*1 ether);
    |							bookings.push(booking(now,0,s.result_amount()*1 ether,s.result_payto(),"Executed SpendingRequest"));
  at /home/jiaming/mavs_srcs/contract@0xbae07df8862c08b29bddecea08b85145bb48d744.sol(219)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MicroDAO':
    |					if(s.result_amount()>0) {
    |						if(s.result_payto()!=0) {
  > |							s.result_payto().send(s.result_amount()*1 ether);
    |							bookings.push(booking(now,0,s.result_amount()*1 ether,s.result_payto(),"Executed SpendingRequest"));
    |						}
  at /home/jiaming/mavs_srcs/contract@0xbae07df8862c08b29bddecea08b85145bb48d744.sol(220)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MicroDAO':
    |						if(s.result_payto()!=0) {
    |							s.result_payto().send(s.result_amount()*1 ether);
  > |							bookings.push(booking(now,0,s.result_amount()*1 ether,s.result_payto(),"Executed SpendingRequest"));
    |						}
    |					}
  at /home/jiaming/mavs_srcs/contract@0xbae07df8862c08b29bddecea08b85145bb48d744.sol(221)

[31mViolation[0m for UnrestrictedWrite in contract 'MicroDAO':
    |/* 
  > |MicroDAO V0.0.2 - <me@thorsten-zoerner.com>
    |===========================================================
    |Simplified DAO allowing to do initial funding.
  at /home/jiaming/mavs_srcs/contract@0xbae07df8862c08b29bddecea08b85145bb48d744.sol(2)

[31mViolation[0m for UnrestrictedWrite in contract 'MicroDAO':
    |				var amount=balanceOf[funders[i]]*1 finney;				
    |				Transfer(funders[i],this,balanceOf[funders[i]]);
  > |				sharesRaised-=balanceOf[funders[i]];
    |				balanceOf[funders[i]]=0;
    |				funders[i].send(amount);				
  at /home/jiaming/mavs_srcs/contract@0xbae07df8862c08b29bddecea08b85145bb48d744.sol(246)

[31mViolation[0m for UnrestrictedWrite in contract 'MicroDAO':
    |				Transfer(funders[i],this,balanceOf[funders[i]]);
    |				sharesRaised-=balanceOf[funders[i]];
  > |				balanceOf[funders[i]]=0;
    |				funders[i].send(amount);				
    |			}
  at /home/jiaming/mavs_srcs/contract@0xbae07df8862c08b29bddecea08b85145bb48d744.sol(247)

[31mViolation[0m for UnrestrictedWrite in contract 'MicroDAO':
    |        if (balanceOf[_to] + _value < balanceOf[_to]) throw; // Check for overflows
    |        balanceOf[msg.sender] -= _value;                     // Subtract from the sender
  > |        balanceOf[_to] += _value;                            // Add the same to the recipient
    |		if(balanceOf[_to]==0) {
    |			funders.push(_to);
  at /home/jiaming/mavs_srcs/contract@0xbae07df8862c08b29bddecea08b85145bb48d744.sol(258)

[31mViolation[0m for UnrestrictedWrite in contract 'MicroDAO':
    |				balanceOf[msg.sender]+=finneys;
    |				Transfer(this,msg.sender,finneys);
  > |				sharesRaised+=finneys;
    |				funding_type="Initial Funding";
    |			}
  at /home/jiaming/mavs_srcs/contract@0xbae07df8862c08b29bddecea08b85145bb48d744.sol(278)

[31mViolation[0m for UnrestrictedWrite in contract 'MicroDAO':
    |				funding_type="Initial Funding";
    |			}
  > |			bookings.push(booking(now,msg.value,0,msg.sender,funding_type));
    |			balanceFinney=this.balance/1 finney;
    |	}
  at /home/jiaming/mavs_srcs/contract@0xbae07df8862c08b29bddecea08b85145bb48d744.sol(281)

[33mWarning[0m for UnrestrictedWrite in contract 'MicroDAO':
    |	}	
    |}
  > |contract MicroDAO
    |{
    |	string public directorNode;
  at /home/jiaming/mavs_srcs/contract@0xbae07df8862c08b29bddecea08b85145bb48d744.sol(99)

[33mWarning[0m for UnrestrictedWrite in contract 'MicroDAO':
    |		if(found) {
    |			if(blockedtransfer[a]>until) {
  > |				blockedtransfer[a]=until;
    |			}
    |		}
  at /home/jiaming/mavs_srcs/contract@0xbae07df8862c08b29bddecea08b85145bb48d744.sol(151)

[33mWarning[0m for UnrestrictedWrite in contract 'MicroDAO':
    |	function myFundsExpireIn(uint256 number_of_days) {
    |		var exp=now+(86400*number_of_days);
  > |		if(exp>fundsExpire[msg.sender]) fundsExpire[msg.sender]=exp; else throw;
    |	}
    |		
  at /home/jiaming/mavs_srcs/contract@0xbae07df8862c08b29bddecea08b85145bb48d744.sol(231)

[33mWarning[0m for UnrestrictedWrite in contract 'MicroDAO':
    |		if (balanceOf[msg.sender] < _value) throw;           // Check if the sender has enough
    |        if (balanceOf[_to] + _value < balanceOf[_to]) throw; // Check for overflows
  > |        balanceOf[msg.sender] -= _value;                     // Subtract from the sender
    |        balanceOf[_to] += _value;                            // Add the same to the recipient
    |		if(balanceOf[_to]==0) {
  at /home/jiaming/mavs_srcs/contract@0xbae07df8862c08b29bddecea08b85145bb48d744.sol(257)

[33mWarning[0m for UnrestrictedWrite in contract 'MicroDAO':
    |				if(msg.value<100 finney) throw;
    |				
  > |				fundsExpire[msg.sender]=now+(lockInDays*86400);
    |				balanceOf[msg.sender]+=finneys;
    |				Transfer(this,msg.sender,finneys);
  at /home/jiaming/mavs_srcs/contract@0xbae07df8862c08b29bddecea08b85145bb48d744.sol(275)

[33mWarning[0m for UnrestrictedWrite in contract 'MicroDAO':
    |				
    |				fundsExpire[msg.sender]=now+(lockInDays*86400);
  > |				balanceOf[msg.sender]+=finneys;
    |				Transfer(this,msg.sender,finneys);
    |				sharesRaised+=finneys;
  at /home/jiaming/mavs_srcs/contract@0xbae07df8862c08b29bddecea08b85145bb48d744.sol(276)

[33mWarning[0m for UnrestrictedWrite in contract 'MicroDAO':
    |/* 
  > |MicroDAO V0.0.2 - <me@thorsten-zoerner.com>
    |===========================================================
    |Simplified DAO allowing to do initial funding.
  at /home/jiaming/mavs_srcs/contract@0xbae07df8862c08b29bddecea08b85145bb48d744.sol(2)

[33mWarning[0m for UnrestrictedWrite in contract 'MicroDAO':
    |		
    |		
  > |		directorLockDays=number_of_days;
    |		directorTransferShareRequired=requiredShares;
    |	}
  at /home/jiaming/mavs_srcs/contract@0xbae07df8862c08b29bddecea08b85145bb48d744.sol(162)

[33mWarning[0m for UnrestrictedWrite in contract 'MicroDAO':
    |		
    |		directorLockDays=number_of_days;
  > |		directorTransferShareRequired=requiredShares;
    |	}
    |	
  at /home/jiaming/mavs_srcs/contract@0xbae07df8862c08b29bddecea08b85145bb48d744.sol(163)

[33mWarning[0m for UnrestrictedWrite in contract 'MicroDAO':
    |	function setFundingGoal(uint256 goal) {
    |		if(msg.sender!=director) throw;
  > |		fundingGoal=goal;
    |	}
    |	
  at /home/jiaming/mavs_srcs/contract@0xbae07df8862c08b29bddecea08b85145bb48d744.sol(188)

[33mWarning[0m for UnrestrictedWrite in contract 'MicroDAO':
    |	function setInitialLockinDays(uint number_of_days) {
    |		if(msg.sender!=director) throw;
  > |		lockInDays=number_of_days;
    |	}
    |	
  at /home/jiaming/mavs_srcs/contract@0xbae07df8862c08b29bddecea08b85145bb48d744.sol(193)

[33mWarning[0m for UnrestrictedWrite in contract 'MicroDAO':
    |		if(s.executed()) throw;
    |		if(s.vote_until()<now) throw; 
  > |		allowances.push(s);		
    |	}
    |	
  at /home/jiaming/mavs_srcs/contract@0xbae07df8862c08b29bddecea08b85145bb48d744.sol(208)

[33mWarning[0m for UnrestrictedWrite in contract 'MicroDAO':
    |	function closeFunding() {
    |		if(msg.sender!=director) throw;
  > |		initialFunding=false;		
    |		checkExpiredfunds();		
    |	}
  at /home/jiaming/mavs_srcs/contract@0xbae07df8862c08b29bddecea08b85145bb48d744.sol(236)

[31mViolation[0m for LockedEther in contract 'SpendingRequest':
    |*/
    |
  > |contract SpendingRequest {
    |	string public name="SpendingRequest 4 MicroDAO";
    |	 address public creator;
  at /home/jiaming/mavs_srcs/contract@0xbae07df8862c08b29bddecea08b85145bb48d744.sol(22)

[33mWarning[0m for UnhandledException in contract 'SpendingRequest':
    | 		if(dao!=0) throw;
    |		MicroDAO d = MicroDAO(_dao);
  > |		if(d.balanceOf(creator)<1) throw;
    |		dao=_dao;		
    |	}
  at /home/jiaming/mavs_srcs/contract@0xbae07df8862c08b29bddecea08b85145bb48d744.sol(64)

[33mWarning[0m for UnhandledException in contract 'SpendingRequest':
    |		voting_started=true;
    |		MicroDAO d = MicroDAO(dao);
  > |		if(!veto) options[option].votes_pro+=d.balanceOf(msg.sender);	else options[option].votes_veto+=d.balanceOf(msg.sender);
    |		
    |		d.blockTransfer(msg.sender,vote_until);
  at /home/jiaming/mavs_srcs/contract@0xbae07df8862c08b29bddecea08b85145bb48d744.sol(79)

[33mWarning[0m for UnhandledException in contract 'SpendingRequest':
    |		if(!veto) options[option].votes_pro+=d.balanceOf(msg.sender);	else options[option].votes_veto+=d.balanceOf(msg.sender);
    |		
  > |		d.blockTransfer(msg.sender,vote_until);
    |	}
    |	function setRequestUntil(uint8 days_from_now) {
  at /home/jiaming/mavs_srcs/contract@0xbae07df8862c08b29bddecea08b85145bb48d744.sol(81)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SpendingRequest':
    | 		if(dao!=0) throw;
    |		MicroDAO d = MicroDAO(_dao);
  > |		if(d.balanceOf(creator)<1) throw;
    |		dao=_dao;		
    |	}
  at /home/jiaming/mavs_srcs/contract@0xbae07df8862c08b29bddecea08b85145bb48d744.sol(64)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SpendingRequest':
    |		voting_started=true;
    |		MicroDAO d = MicroDAO(dao);
  > |		if(!veto) options[option].votes_pro+=d.balanceOf(msg.sender);	else options[option].votes_veto+=d.balanceOf(msg.sender);
    |		
    |		d.blockTransfer(msg.sender,vote_until);
  at /home/jiaming/mavs_srcs/contract@0xbae07df8862c08b29bddecea08b85145bb48d744.sol(79)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SpendingRequest':
    |		if(!veto) options[option].votes_pro+=d.balanceOf(msg.sender);	else options[option].votes_veto+=d.balanceOf(msg.sender);
    |		
  > |		d.blockTransfer(msg.sender,vote_until);
    |	}
    |	function setRequestUntil(uint8 days_from_now) {
  at /home/jiaming/mavs_srcs/contract@0xbae07df8862c08b29bddecea08b85145bb48d744.sol(81)

[31mViolation[0m for UnrestrictedWrite in contract 'SpendingRequest':
    |*/
    |
  > |contract SpendingRequest {
    |	string public name="SpendingRequest 4 MicroDAO";
    |	 address public creator;
  at /home/jiaming/mavs_srcs/contract@0xbae07df8862c08b29bddecea08b85145bb48d744.sol(22)

[31mViolation[0m for UnrestrictedWrite in contract 'SpendingRequest':
    |	
    |	function execute(){
  > |		result_payto=options[0].payout_to;
    |		result_amount=options[0].eth_amount;
    |		executed=false;		
  at /home/jiaming/mavs_srcs/contract@0xbae07df8862c08b29bddecea08b85145bb48d744.sol(69)

[31mViolation[0m for UnrestrictedWrite in contract 'SpendingRequest':
    |	function execute(){
    |		result_payto=options[0].payout_to;
  > |		result_amount=options[0].eth_amount;
    |		executed=false;		
    |	}
  at /home/jiaming/mavs_srcs/contract@0xbae07df8862c08b29bddecea08b85145bb48d744.sol(70)

[31mViolation[0m for UnrestrictedWrite in contract 'SpendingRequest':
    |		result_payto=options[0].payout_to;
    |		result_amount=options[0].eth_amount;
  > |		executed=false;		
    |	}
    |	
  at /home/jiaming/mavs_srcs/contract@0xbae07df8862c08b29bddecea08b85145bb48d744.sol(71)

[31mViolation[0m for UnrestrictedWrite in contract 'SpendingRequest':
    |		if(voted[msg.sender]) throw;
    |		if(now<vote_until) throw;
  > |		voting_started=true;
    |		MicroDAO d = MicroDAO(dao);
    |		if(!veto) options[option].votes_pro+=d.balanceOf(msg.sender);	else options[option].votes_veto+=d.balanceOf(msg.sender);
  at /home/jiaming/mavs_srcs/contract@0xbae07df8862c08b29bddecea08b85145bb48d744.sol(77)

[31mViolation[0m for UnrestrictedWrite in contract 'SpendingRequest':
    |		voting_started=true;
    |		MicroDAO d = MicroDAO(dao);
  > |		if(!veto) options[option].votes_pro+=d.balanceOf(msg.sender);	else options[option].votes_veto+=d.balanceOf(msg.sender);
    |		
    |		d.blockTransfer(msg.sender,vote_until);
  at /home/jiaming/mavs_srcs/contract@0xbae07df8862c08b29bddecea08b85145bb48d744.sol(79)

[31mViolation[0m for UnrestrictedWrite in contract 'SpendingRequest':
    |		if(msg.sender!=creator) throw;
    |		if(voting_started) throw;
  > |		options.push(option(_description,_payout_to,_amount,0,0));
    |	}	
    |}
  at /home/jiaming/mavs_srcs/contract@0xbae07df8862c08b29bddecea08b85145bb48d744.sol(96)

[33mWarning[0m for UnrestrictedWrite in contract 'SpendingRequest':
    |/* 
  > |MicroDAO V0.0.2 - <me@thorsten-zoerner.com>
    |===========================================================
    |Simplified DAO allowing to do initial funding.
  at /home/jiaming/mavs_srcs/contract@0xbae07df8862c08b29bddecea08b85145bb48d744.sol(2)

[33mWarning[0m for UnrestrictedWrite in contract 'SpendingRequest':
    |*/
    |
  > |contract SpendingRequest {
    |	string public name="SpendingRequest 4 MicroDAO";
    |	 address public creator;
  at /home/jiaming/mavs_srcs/contract@0xbae07df8862c08b29bddecea08b85145bb48d744.sol(22)

[33mWarning[0m for UnrestrictedWrite in contract 'SpendingRequest':
    |		MicroDAO d = MicroDAO(_dao);
    |		if(d.balanceOf(creator)<1) throw;
  > |		dao=_dao;		
    |	}
    |	
  at /home/jiaming/mavs_srcs/contract@0xbae07df8862c08b29bddecea08b85145bb48d744.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'SpendingRequest':
    |		if(msg.sender!=creator) throw;
    |		if(voting_started) throw;
  > |		request_until=now+(86400*days_from_now);		
    |	}
    |	function setVotetUntil(uint8 days_from_now) {
  at /home/jiaming/mavs_srcs/contract@0xbae07df8862c08b29bddecea08b85145bb48d744.sol(86)

[33mWarning[0m for UnrestrictedWrite in contract 'SpendingRequest':
    |		if(msg.sender!=creator) throw;
    |		if(voting_started) throw;
  > |		vote_until=now+(86400*days_from_now);		
    |	}
    |	function addOption(string _description,address _payout_to,uint256 _amount) {
  at /home/jiaming/mavs_srcs/contract@0xbae07df8862c08b29bddecea08b85145bb48d744.sol(91)


