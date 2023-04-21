Processing contract: /home/jiaming/mavs_srcs/contract@0x9df10486168cb25278c7ec72a3090e34f7aac29a.sol:GPowerToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9df10486168cb25278c7ec72a3090e34f7aac29a.sol:owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9df10486168cb25278c7ec72a3090e34f7aac29a.sol:tokenRecipient
[33mWarning[0m for DAOConstantGas in contract 'GPowerToken':
    |        balanceOf[msg.sender]+=tokens*1000000000000000000;
    |        totalSupply-=tokens*1000000000000000000;
  > |        wallet.transfer(msg.value);
    |        }
    |        else{
  at /home/jiaming/mavs_srcs/contract@0x9df10486168cb25278c7ec72a3090e34f7aac29a.sol(162)

[33mWarning[0m for LockedEther in contract 'GPowerToken':
    |
    |//*** GraphenePowerToken ***//
  > |contract GPowerToken is owned{
    |    
    |    //************** Token ************//
  at /home/jiaming/mavs_srcs/contract@0x9df10486168cb25278c7ec72a3090e34f7aac29a.sol(36)

[31mViolation[0m for TODReceiver in contract 'GPowerToken':
    |        balanceOf[msg.sender]+=tokens*1000000000000000000;
    |        totalSupply-=tokens*1000000000000000000;
  > |        wallet.transfer(msg.value);
    |        }
    |        else{
  at /home/jiaming/mavs_srcs/contract@0x9df10486168cb25278c7ec72a3090e34f7aac29a.sol(162)

[33mWarning[0m for UnhandledException in contract 'GPowerToken':
    |        balanceOf[msg.sender]+=tokens*1000000000000000000;
    |        totalSupply-=tokens*1000000000000000000;
  > |        wallet.transfer(msg.value);
    |        }
    |        else{
  at /home/jiaming/mavs_srcs/contract@0x9df10486168cb25278c7ec72a3090e34f7aac29a.sol(162)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GPowerToken':
    |        balanceOf[msg.sender]+=tokens*1000000000000000000;
    |        totalSupply-=tokens*1000000000000000000;
  > |        wallet.transfer(msg.value);
    |        }
    |        else{
  at /home/jiaming/mavs_srcs/contract@0x9df10486168cb25278c7ec72a3090e34f7aac29a.sol(162)

[33mWarning[0m for UnrestrictedWrite in contract 'GPowerToken':
    |        tokens=msg.value*weiAmount/1000000000000000000;
    |        Transfer(this, msg.sender, tokens*1000000000000000000);
  > |        balanceOf[msg.sender]+=tokens*1000000000000000000;
    |        totalSupply-=tokens*1000000000000000000;
    |        wallet.transfer(msg.value);
  at /home/jiaming/mavs_srcs/contract@0x9df10486168cb25278c7ec72a3090e34f7aac29a.sol(160)

[33mWarning[0m for UnrestrictedWrite in contract 'GPowerToken':
    |		    require(balanceOf[msg.sender] >= _value*1000000000000000000);
    |		    // Subtract from the sender
  > |		    balanceOf[msg.sender]-= _value*1000000000000000000;
    |	        balanceOf[_to] += _value*1000000000000000000;
    |		    Transfer(msg.sender, _to, _value*1000000000000000000);
  at /home/jiaming/mavs_srcs/contract@0x9df10486168cb25278c7ec72a3090e34f7aac29a.sol(174)

[33mWarning[0m for UnrestrictedWrite in contract 'GPowerToken':
    |		    // Subtract from the sender
    |		    balanceOf[msg.sender]-= _value*1000000000000000000;
  > |	        balanceOf[_to] += _value*1000000000000000000;
    |		    Transfer(msg.sender, _to, _value*1000000000000000000);
    |		    return true;
  at /home/jiaming/mavs_srcs/contract@0x9df10486168cb25278c7ec72a3090e34f7aac29a.sol(175)

[33mWarning[0m for UnrestrictedWrite in contract 'GPowerToken':
    |	//*** Destroy Owner ***//
    |	function destroyOwner(address _from, uint256 _amount) public onlyOwner{
  > |	    balanceOf[_from] =(balanceOf[_from] - _amount*1000000000000000000);
    |		totalSupply = (totalSupply - _amount*1000000000000000000);
    |		Transfer(_from, this, _amount*1000000000000000000);
  at /home/jiaming/mavs_srcs/contract@0x9df10486168cb25278c7ec72a3090e34f7aac29a.sol(235)

[33mWarning[0m for UnrestrictedWrite in contract 'GPowerToken':
    |    //*** Change Owner ***//
    |	function changeOwner(address newOwner) onlyOwner public {
  > |		owner = newOwner;
    |	}
    |    
  at /home/jiaming/mavs_srcs/contract@0x9df10486168cb25278c7ec72a3090e34f7aac29a.sol(16)

[33mWarning[0m for UnrestrictedWrite in contract 'GPowerToken':
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x9df10486168cb25278c7ec72a3090e34f7aac29a.sol(23)

[33mWarning[0m for UnrestrictedWrite in contract 'GPowerToken':
    |            uint256 weiAmount;
    |            uint256 tokens;
  > |            wallet=owner;
    |        
    |             if(newCourceSale>0){
  at /home/jiaming/mavs_srcs/contract@0x9df10486168cb25278c7ec72a3090e34f7aac29a.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'GPowerToken':
    |                    
    |            if(isPreSale()){
  > |                wallet=preSaleAddress;
    |                weiAmount=6000;
    |            }
  at /home/jiaming/mavs_srcs/contract@0x9df10486168cb25278c7ec72a3090e34f7aac29a.sol(129)

[33mWarning[0m for UnrestrictedWrite in contract 'GPowerToken':
    |            }
    |            else if(isIco()){
  > |                wallet=icoAddress;
    |            
    |                if((icoStart+(7*24*60*60)) >= now){
  at /home/jiaming/mavs_srcs/contract@0x9df10486168cb25278c7ec72a3090e34f7aac29a.sol(133)

[33mWarning[0m for UnrestrictedWrite in contract 'GPowerToken':
    |        Transfer(this, msg.sender, tokens*1000000000000000000);
    |        balanceOf[msg.sender]+=tokens*1000000000000000000;
  > |        totalSupply-=tokens*1000000000000000000;
    |        wallet.transfer(msg.value);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x9df10486168cb25278c7ec72a3090e34f7aac29a.sol(161)

[33mWarning[0m for UnrestrictedWrite in contract 'GPowerToken':
    |	function transferOwner(address _to,uint256 _value) public onlyOwner returns(bool success){
    |	    // Subtract from the sender
  > |	    totalSupply-=_value*1000000000000000000;
    |		// Add the same to the recipient
    |		balanceOf[_to] = (balanceOf[_to] + _value*1000000000000000000);
  at /home/jiaming/mavs_srcs/contract@0x9df10486168cb25278c7ec72a3090e34f7aac29a.sol(207)

[33mWarning[0m for UnrestrictedWrite in contract 'GPowerToken':
    |	    totalSupply-=_value*1000000000000000000;
    |		// Add the same to the recipient
  > |		balanceOf[_to] = (balanceOf[_to] + _value*1000000000000000000);
    |		Transfer(this, _to, _value*1000000000000000000);
    |		return true;
  at /home/jiaming/mavs_srcs/contract@0x9df10486168cb25278c7ec72a3090e34f7aac29a.sol(209)

[33mWarning[0m for UnrestrictedWrite in contract 'GPowerToken':
    |	function destroyOwner(address _from, uint256 _amount) public onlyOwner{
    |	    balanceOf[_from] =(balanceOf[_from] - _amount*1000000000000000000);
  > |		totalSupply = (totalSupply - _amount*1000000000000000000);
    |		Transfer(_from, this, _amount*1000000000000000000);
    |		Destruction(_amount*1000000000000000000);
  at /home/jiaming/mavs_srcs/contract@0x9df10486168cb25278c7ec72a3090e34f7aac29a.sol(236)

[33mWarning[0m for UnrestrictedWrite in contract 'GPowerToken':
    |	//*** Kill Balance ***//
    |	function killTotalSupply() onlyOwner public {
  > |	    totalSupply=0;
    |	}
    |	
  at /home/jiaming/mavs_srcs/contract@0x9df10486168cb25278c7ec72a3090e34f7aac29a.sol(243)

[33mWarning[0m for UnrestrictedWrite in contract 'GPowerToken':
    |        require(msg.sender==owner);
    |        if(totalSupply>=value*1000000000000000000){
  > |            balanceOf[this]-= value*1000000000000000000;
    |	        balanceOf[owner] += value*1000000000000000000;
    |	        totalSupply-=value*1000000000000000000;
  at /home/jiaming/mavs_srcs/contract@0x9df10486168cb25278c7ec72a3090e34f7aac29a.sol(250)

[33mWarning[0m for UnrestrictedWrite in contract 'GPowerToken':
    |        if(totalSupply>=value*1000000000000000000){
    |            balanceOf[this]-= value*1000000000000000000;
  > |	        balanceOf[owner] += value*1000000000000000000;
    |	        totalSupply-=value*1000000000000000000;
    |            Transfer(this,owner,value*1000000000000000000);
  at /home/jiaming/mavs_srcs/contract@0x9df10486168cb25278c7ec72a3090e34f7aac29a.sol(251)

[33mWarning[0m for UnrestrictedWrite in contract 'GPowerToken':
    |            balanceOf[this]-= value*1000000000000000000;
    |	        balanceOf[owner] += value*1000000000000000000;
  > |	        totalSupply-=value*1000000000000000000;
    |            Transfer(this,owner,value*1000000000000000000);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x9df10486168cb25278c7ec72a3090e34f7aac29a.sol(252)

[33mWarning[0m for UnrestrictedWrite in contract 'GPowerToken':
    |            Transfer(this,advisersConsultantsAddress,advisersConsultantTokens*1000000000000000000);
    |            
  > |            balanceOf[bountyAddress]+=(bountyTokens*1000000000000000000);
    |	        balanceOf[founderAddress]+=(founderTokens*1000000000000000000);
    |	        balanceOf[advisersConsultantsAddress]+=advisersConsultantTokens*1000000000000000000;
  at /home/jiaming/mavs_srcs/contract@0x9df10486168cb25278c7ec72a3090e34f7aac29a.sol(265)

[33mWarning[0m for UnrestrictedWrite in contract 'GPowerToken':
    |            
    |            balanceOf[bountyAddress]+=(bountyTokens*1000000000000000000);
  > |	        balanceOf[founderAddress]+=(founderTokens*1000000000000000000);
    |	        balanceOf[advisersConsultantsAddress]+=advisersConsultantTokens*1000000000000000000;
    |	        totalSupply-=((bountyTokens+founderTokens+advisersConsultantTokens)*1000000000000000000);
  at /home/jiaming/mavs_srcs/contract@0x9df10486168cb25278c7ec72a3090e34f7aac29a.sol(266)

[33mWarning[0m for UnrestrictedWrite in contract 'GPowerToken':
    |            balanceOf[bountyAddress]+=(bountyTokens*1000000000000000000);
    |	        balanceOf[founderAddress]+=(founderTokens*1000000000000000000);
  > |	        balanceOf[advisersConsultantsAddress]+=advisersConsultantTokens*1000000000000000000;
    |	        totalSupply-=((bountyTokens+founderTokens+advisersConsultantTokens)*1000000000000000000);
    |	        
  at /home/jiaming/mavs_srcs/contract@0x9df10486168cb25278c7ec72a3090e34f7aac29a.sol(267)

[33mWarning[0m for UnrestrictedWrite in contract 'GPowerToken':
    |	        balanceOf[founderAddress]+=(founderTokens*1000000000000000000);
    |	        balanceOf[advisersConsultantsAddress]+=advisersConsultantTokens*1000000000000000000;
  > |	        totalSupply-=((bountyTokens+founderTokens+advisersConsultantTokens)*1000000000000000000);
    |	        
    |	        bountyTokens=0;
  at /home/jiaming/mavs_srcs/contract@0x9df10486168cb25278c7ec72a3090e34f7aac29a.sol(268)

[33mWarning[0m for UnrestrictedWrite in contract 'GPowerToken':
    |	        totalSupply-=((bountyTokens+founderTokens+advisersConsultantTokens)*1000000000000000000);
    |	        
  > |	        bountyTokens=0;
    |	        founderTokens=0;
    |	        advisersConsultantTokens=0; 
  at /home/jiaming/mavs_srcs/contract@0x9df10486168cb25278c7ec72a3090e34f7aac29a.sol(270)

[33mWarning[0m for UnrestrictedWrite in contract 'GPowerToken':
    |	        
    |	        bountyTokens=0;
  > |	        founderTokens=0;
    |	        advisersConsultantTokens=0; 
    |	    }
  at /home/jiaming/mavs_srcs/contract@0x9df10486168cb25278c7ec72a3090e34f7aac29a.sol(271)

[33mWarning[0m for UnrestrictedWrite in contract 'GPowerToken':
    |	        bountyTokens=0;
    |	        founderTokens=0;
  > |	        advisersConsultantTokens=0; 
    |	    }
    |	}
  at /home/jiaming/mavs_srcs/contract@0x9df10486168cb25278c7ec72a3090e34f7aac29a.sol(272)

[33mWarning[0m for UnrestrictedWrite in contract 'GPowerToken':
    |	//*** Set Params For Sale ***//
    |	function setParamsStopSale(bool _value) public onlyOwner{
  > |	    stopSale=_value;
    |	}
    |	
  at /home/jiaming/mavs_srcs/contract@0x9df10486168cb25278c7ec72a3090e34f7aac29a.sol(283)

[33mWarning[0m for UnrestrictedWrite in contract 'GPowerToken':
    |	//*** Set ParamsTransfer ***//
    |	function setParamsTransfer(bool _value) public onlyOwner{
  > |	    transfersEnabled=_value;
    |	}
    |	
  at /home/jiaming/mavs_srcs/contract@0x9df10486168cb25278c7ec72a3090e34f7aac29a.sol(288)

[33mWarning[0m for UnrestrictedWrite in contract 'GPowerToken':
    |	//*** Set ParamsICO ***//
    |    function setParamsIco(bool _value) public onlyOwner returns(bool result){
  > |        enableIco=_value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9df10486168cb25278c7ec72a3090e34f7aac29a.sol(293)

[33mWarning[0m for UnrestrictedWrite in contract 'GPowerToken':
    |	//*** Set ParamsPreSale ***//
    |    function setParamsPreSale(bool _value) public onlyOwner returns(bool result){
  > |        enablePreSale=_value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9df10486168cb25278c7ec72a3090e34f7aac29a.sol(299)

[33mWarning[0m for UnrestrictedWrite in contract 'GPowerToken':
    |    //*** Set CourceSale ***//
    |    function setCourceSale(uint256 value) public onlyOwner{
  > |        newCourceSale=value;
    |    }
    |	
  at /home/jiaming/mavs_srcs/contract@0x9df10486168cb25278c7ec72a3090e34f7aac29a.sol(305)

[33mWarning[0m for LockedEther in contract 'owned':
    |
    |//*** Owner ***//
  > |contract owned {
    |	address public owner;
    |    
  at /home/jiaming/mavs_srcs/contract@0x9df10486168cb25278c7ec72a3090e34f7aac29a.sol(4)

[31mViolation[0m for MissingInputValidation in contract 'owned':
    |
    |    //*** Change Owner ***//
  > |	function changeOwner(address newOwner) onlyOwner public {
    |		owner = newOwner;
    |	}
  at /home/jiaming/mavs_srcs/contract@0x9df10486168cb25278c7ec72a3090e34f7aac29a.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'owned':
    |//*** Owner ***//
    |contract owned {
  > |	address public owner;
    |    
    |    //*** OwnershipTransferred ***//
  at /home/jiaming/mavs_srcs/contract@0x9df10486168cb25278c7ec72a3090e34f7aac29a.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'owned':
    |    
    |    //*** Transfer OwnerShip ***//
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x9df10486168cb25278c7ec72a3090e34f7aac29a.sol(20)

[33mWarning[0m for UnrestrictedWrite in contract 'owned':
    |    //*** Change Owner ***//
    |	function changeOwner(address newOwner) onlyOwner public {
  > |		owner = newOwner;
    |	}
    |    
  at /home/jiaming/mavs_srcs/contract@0x9df10486168cb25278c7ec72a3090e34f7aac29a.sol(16)

[33mWarning[0m for UnrestrictedWrite in contract 'owned':
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x9df10486168cb25278c7ec72a3090e34f7aac29a.sol(23)


