Processing contract: /home/jiaming/mavs_srcs/contract@0x1e217adc6a6adc16e248af109ab7efa4d1bb252d.sol:LottoCount
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'LottoCount':
    |        totalBounty = 0;
    |		
  > |		worldOwner.transfer(this.balance); 
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x1e217adc6a6adc16e248af109ab7efa4d1bb252d.sol(58)

[33mWarning[0m for DAOConstantGas in contract 'LottoCount':
    |         
    |		//give real money
  > |        worldOwner.transfer(ownerTax);
    |        winner.transfer(winnerPrice); 
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1e217adc6a6adc16e248af109ab7efa4d1bb252d.sol(113)

[33mWarning[0m for DAOConstantGas in contract 'LottoCount':
    |		//give real money
    |        worldOwner.transfer(ownerTax);
  > |        winner.transfer(winnerPrice); 
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x1e217adc6a6adc16e248af109ab7efa4d1bb252d.sol(114)

[33mWarning[0m for LockedEther in contract 'LottoCount':
    |pragma solidity ^0.4.19;
  > |contract LottoCount {
    | 
    |    //CONSTANT
  at /home/jiaming/mavs_srcs/contract@0x1e217adc6a6adc16e248af109ab7efa4d1bb252d.sol(2)

[33mWarning[0m for MissingInputValidation in contract 'LottoCount':
    |    //CONSTANT
    |    uint256 private maxTickets;
  > |    uint256 public ticketPrice; 
    |     
    |    //LOTO REGISTER
  at /home/jiaming/mavs_srcs/contract@0x1e217adc6a6adc16e248af109ab7efa4d1bb252d.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'LottoCount':
    |     
    |    //LOTO REGISTER
  > |    uint256 public lottoIndex;
    |    uint256 lastTicketTime;
    |    
  at /home/jiaming/mavs_srcs/contract@0x1e217adc6a6adc16e248af109ab7efa4d1bb252d.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'LottoCount':
    |
    |    
  > |    function getBalance() public view returns (uint256 balance)
    |    {
    |        balance = 0;
  at /home/jiaming/mavs_srcs/contract@0x1e217adc6a6adc16e248af109ab7efa4d1bb252d.sol(39)

[33mWarning[0m for MissingInputValidation in contract 'LottoCount':
    |    
    |    
  > |	function withdraw() public 
    |    {
    |        require(worldOwner == msg.sender);  
  at /home/jiaming/mavs_srcs/contract@0x1e217adc6a6adc16e248af109ab7efa4d1bb252d.sol(49)

[33mWarning[0m for MissingInputValidation in contract 'LottoCount':
    |    
    |    
  > |    function getLastTicketTime() public view returns (uint256 time)
    |    {
    |        time = lastTicketTime; 
  at /home/jiaming/mavs_srcs/contract@0x1e217adc6a6adc16e248af109ab7efa4d1bb252d.sol(62)

[33mWarning[0m for MissingInputValidation in contract 'LottoCount':
    |    
    |	
  > |    function AddTicket() public payable 
    |    {
    |        require(msg.value == ticketPrice); 
  at /home/jiaming/mavs_srcs/contract@0x1e217adc6a6adc16e248af109ab7efa4d1bb252d.sol(69)

[33mWarning[0m for MissingInputValidation in contract 'LottoCount':
    |    
    |    
  > |    function PayWinner( address winner ) private 
    |    { 
    |        require(numtickets == maxTickets);
  at /home/jiaming/mavs_srcs/contract@0x1e217adc6a6adc16e248af109ab7efa4d1bb252d.sol(90)

[31mViolation[0m for TODAmount in contract 'LottoCount':
    |        totalBounty = 0;
    |		
  > |		worldOwner.transfer(this.balance); 
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x1e217adc6a6adc16e248af109ab7efa4d1bb252d.sol(58)

[31mViolation[0m for TODAmount in contract 'LottoCount':
    |         
    |		//give real money
  > |        worldOwner.transfer(ownerTax);
    |        winner.transfer(winnerPrice); 
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1e217adc6a6adc16e248af109ab7efa4d1bb252d.sol(113)

[31mViolation[0m for TODAmount in contract 'LottoCount':
    |		//give real money
    |        worldOwner.transfer(ownerTax);
  > |        winner.transfer(winnerPrice); 
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x1e217adc6a6adc16e248af109ab7efa4d1bb252d.sol(114)

[33mWarning[0m for TODReceiver in contract 'LottoCount':
    |        totalBounty = 0;
    |		
  > |		worldOwner.transfer(this.balance); 
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x1e217adc6a6adc16e248af109ab7efa4d1bb252d.sol(58)

[33mWarning[0m for TODReceiver in contract 'LottoCount':
    |		//give real money
    |        worldOwner.transfer(ownerTax);
  > |        winner.transfer(winnerPrice); 
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x1e217adc6a6adc16e248af109ab7efa4d1bb252d.sol(114)

[33mWarning[0m for UnhandledException in contract 'LottoCount':
    |        totalBounty = 0;
    |		
  > |		worldOwner.transfer(this.balance); 
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x1e217adc6a6adc16e248af109ab7efa4d1bb252d.sol(58)

[33mWarning[0m for UnhandledException in contract 'LottoCount':
    |         
    |		//give real money
  > |        worldOwner.transfer(ownerTax);
    |        winner.transfer(winnerPrice); 
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1e217adc6a6adc16e248af109ab7efa4d1bb252d.sol(113)

[33mWarning[0m for UnhandledException in contract 'LottoCount':
    |		//give real money
    |        worldOwner.transfer(ownerTax);
  > |        winner.transfer(winnerPrice); 
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x1e217adc6a6adc16e248af109ab7efa4d1bb252d.sol(114)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LottoCount':
    |        totalBounty = 0;
    |		
  > |		worldOwner.transfer(this.balance); 
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x1e217adc6a6adc16e248af109ab7efa4d1bb252d.sol(58)

[31mViolation[0m for UnrestrictedWrite in contract 'LottoCount':
    |        
    |		//update bif
  > |		lastTicketTime = now;
    |        numtickets += 1;
    |        totalBounty += ticketPrice;
  at /home/jiaming/mavs_srcs/contract@0x1e217adc6a6adc16e248af109ab7efa4d1bb252d.sol(75)

[31mViolation[0m for UnrestrictedWrite in contract 'LottoCount':
    |		//update bif
    |		lastTicketTime = now;
  > |        numtickets += 1;
    |        totalBounty += ticketPrice;
    |        bool success = numtickets == maxTickets;
  at /home/jiaming/mavs_srcs/contract@0x1e217adc6a6adc16e248af109ab7efa4d1bb252d.sol(76)

[31mViolation[0m for UnrestrictedWrite in contract 'LottoCount':
    |		lastTicketTime = now;
    |        numtickets += 1;
  > |        totalBounty += ticketPrice;
    |        bool success = numtickets == maxTickets;
    |		
  at /home/jiaming/mavs_srcs/contract@0x1e217adc6a6adc16e248af109ab7efa4d1bb252d.sol(77)

[31mViolation[0m for UnrestrictedWrite in contract 'LottoCount':
    |         
    |		//reset values
  > |        lottoIndex += 1;
    |        numtickets = 0;
    |        totalBounty = 0;
  at /home/jiaming/mavs_srcs/contract@0x1e217adc6a6adc16e248af109ab7efa4d1bb252d.sol(101)

[31mViolation[0m for UnrestrictedWrite in contract 'LottoCount':
    |		//reset values
    |        lottoIndex += 1;
  > |        numtickets = 0;
    |        totalBounty = 0;
    |		
  at /home/jiaming/mavs_srcs/contract@0x1e217adc6a6adc16e248af109ab7efa4d1bb252d.sol(102)

[31mViolation[0m for UnrestrictedWrite in contract 'LottoCount':
    |        lottoIndex += 1;
    |        numtickets = 0;
  > |        totalBounty = 0;
    |		
    |		//change max tickets to give unpredictability
  at /home/jiaming/mavs_srcs/contract@0x1e217adc6a6adc16e248af109ab7efa4d1bb252d.sol(103)

[31mViolation[0m for UnrestrictedWrite in contract 'LottoCount':
    |		
    |		//change max tickets to give unpredictability
  > |		if(_direction == 0 && maxTickets < 20) maxTickets += 1;
    |		if(_direction == 1 && maxTickets > 10) maxTickets -= 1;
    |		
  at /home/jiaming/mavs_srcs/contract@0x1e217adc6a6adc16e248af109ab7efa4d1bb252d.sol(106)

[31mViolation[0m for UnrestrictedWrite in contract 'LottoCount':
    |		//change max tickets to give unpredictability
    |		if(_direction == 0 && maxTickets < 20) maxTickets += 1;
  > |		if(_direction == 1 && maxTickets > 10) maxTickets -= 1;
    |		
    |		if(_direction == 0 && maxTickets == 20) _direction = 1;
  at /home/jiaming/mavs_srcs/contract@0x1e217adc6a6adc16e248af109ab7efa4d1bb252d.sol(107)

[31mViolation[0m for UnrestrictedWrite in contract 'LottoCount':
    |		if(_direction == 1 && maxTickets > 10) maxTickets -= 1;
    |		
  > |		if(_direction == 0 && maxTickets == 20) _direction = 1;
    |		if(_direction == 1 && maxTickets == 10) _direction = 0;
    |         
  at /home/jiaming/mavs_srcs/contract@0x1e217adc6a6adc16e248af109ab7efa4d1bb252d.sol(109)

[31mViolation[0m for UnrestrictedWrite in contract 'LottoCount':
    |		
    |		if(_direction == 0 && maxTickets == 20) _direction = 1;
  > |		if(_direction == 1 && maxTickets == 10) _direction = 0;
    |         
    |		//give real money
  at /home/jiaming/mavs_srcs/contract@0x1e217adc6a6adc16e248af109ab7efa4d1bb252d.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'LottoCount':
    |        
    |		//reset values
  > |        lottoIndex += 1;
    |        numtickets = 0;
    |        totalBounty = 0;
  at /home/jiaming/mavs_srcs/contract@0x1e217adc6a6adc16e248af109ab7efa4d1bb252d.sol(54)

[33mWarning[0m for UnrestrictedWrite in contract 'LottoCount':
    |		//reset values
    |        lottoIndex += 1;
  > |        numtickets = 0;
    |        totalBounty = 0;
    |		
  at /home/jiaming/mavs_srcs/contract@0x1e217adc6a6adc16e248af109ab7efa4d1bb252d.sol(55)

[33mWarning[0m for UnrestrictedWrite in contract 'LottoCount':
    |        lottoIndex += 1;
    |        numtickets = 0;
  > |        totalBounty = 0;
    |		
    |		worldOwner.transfer(this.balance); 
  at /home/jiaming/mavs_srcs/contract@0x1e217adc6a6adc16e248af109ab7efa4d1bb252d.sol(56)


