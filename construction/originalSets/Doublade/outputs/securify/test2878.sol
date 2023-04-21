Processing contract: /home/jiaming/mavs_srcs/contract@0xbd3696b01a487b012ba99628b06a1a7859f5ca23.sol:Ambassador
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbd3696b01a487b012ba99628b06a1a7859f5ca23.sol:CoinCrowdICO
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbd3696b01a487b012ba99628b06a1a7859f5ca23.sol:Ownable
Processing contract: /home/jiaming/mavs_srcs/contract@0xbd3696b01a487b012ba99628b06a1a7859f5ca23.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbd3696b01a487b012ba99628b06a1a7859f5ca23.sol:tokenInterface
[31mViolation[0m for DAO in contract 'Ambassador':
    |        require( now > startRC );
    |        if( now < endRC ) {
  > |            uint256 tokenAmount = icoContract.buy.value(msg.value)(msg.sender);
    |            balanceUser[msg.sender] = balanceUser[msg.sender].add(tokenAmount);
    |            soldTokensWithoutBonus = soldTokensWithoutBonus.add(tokenAmount);
  at /home/jiaming/mavs_srcs/contract@0xbd3696b01a487b012ba99628b06a1a7859f5ca23.sol(142)

[33mWarning[0m for DAOConstantGas in contract 'Ambassador':
    |            
    |            icoContract.claimPremium(msg.sender, addTokenAmount);
  > |            if( msg.value > 0 ) msg.sender.transfer(msg.value); // give back eth 
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbd3696b01a487b012ba99628b06a1a7859f5ca23.sol(159)

[33mWarning[0m for LockedEther in contract 'Ambassador':
    |}
    |
  > |contract Ambassador {
    |    using SafeMath for uint256;
    |    CoinCrowdICO icoContract;
  at /home/jiaming/mavs_srcs/contract@0xbd3696b01a487b012ba99628b06a1a7859f5ca23.sol(80)

[33mWarning[0m for TODReceiver in contract 'Ambassador':
    |            
    |            icoContract.claimPremium(msg.sender, addTokenAmount);
  > |            if( msg.value > 0 ) msg.sender.transfer(msg.value); // give back eth 
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbd3696b01a487b012ba99628b06a1a7859f5ca23.sol(159)

[33mWarning[0m for UnhandledException in contract 'Ambassador':
    |    uint256 public soldTokensWithoutBonus; // wei of XCC sold token without bonuses
    |	function euroRaisedRc() public view returns(uint256 euro) {
  > |        return icoContract.euroRaised(soldTokensWithoutBonus);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xbd3696b01a487b012ba99628b06a1a7859f5ca23.sol(89)

[33mWarning[0m for UnhandledException in contract 'Ambassador':
    |        require( now > startRC );
    |        if( now < endRC ) {
  > |            uint256 tokenAmount = icoContract.buy.value(msg.value)(msg.sender);
    |            balanceUser[msg.sender] = balanceUser[msg.sender].add(tokenAmount);
    |            soldTokensWithoutBonus = soldTokensWithoutBonus.add(tokenAmount);
  at /home/jiaming/mavs_srcs/contract@0xbd3696b01a487b012ba99628b06a1a7859f5ca23.sol(142)

[33mWarning[0m for UnhandledException in contract 'Ambassador':
    |            uint256 bonusApplied = 0;
    |            for (uint i = 0; i < euroThreshold.length; i++) {
  > |                if ( icoContract.euroRaised(soldTokensWithoutBonus).div(1000) > euroThreshold[i] ) {
    |                    bonusApplied = bonusThreshold[i];
    |                }
  at /home/jiaming/mavs_srcs/contract@0xbd3696b01a487b012ba99628b06a1a7859f5ca23.sol(149)

[33mWarning[0m for UnhandledException in contract 'Ambassador':
    |            balanceUser[msg.sender] = 0; 
    |            
  > |            icoContract.claimPremium(msg.sender, addTokenAmount);
    |            if( msg.value > 0 ) msg.sender.transfer(msg.value); // give back eth 
    |        }
  at /home/jiaming/mavs_srcs/contract@0xbd3696b01a487b012ba99628b06a1a7859f5ca23.sol(158)

[33mWarning[0m for UnhandledException in contract 'Ambassador':
    |            
    |            icoContract.claimPremium(msg.sender, addTokenAmount);
  > |            if( msg.value > 0 ) msg.sender.transfer(msg.value); // give back eth 
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbd3696b01a487b012ba99628b06a1a7859f5ca23.sol(159)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Ambassador':
    |    uint256 public soldTokensWithoutBonus; // wei of XCC sold token without bonuses
    |	function euroRaisedRc() public view returns(uint256 euro) {
  > |        return icoContract.euroRaised(soldTokensWithoutBonus);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xbd3696b01a487b012ba99628b06a1a7859f5ca23.sol(89)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Ambassador':
    |            uint256 bonusApplied = 0;
    |            for (uint i = 0; i < euroThreshold.length; i++) {
  > |                if ( icoContract.euroRaised(soldTokensWithoutBonus).div(1000) > euroThreshold[i] ) {
    |                    bonusApplied = bonusThreshold[i];
    |                }
  at /home/jiaming/mavs_srcs/contract@0xbd3696b01a487b012ba99628b06a1a7859f5ca23.sol(149)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Ambassador':
    |            balanceUser[msg.sender] = 0; 
    |            
  > |            icoContract.claimPremium(msg.sender, addTokenAmount);
    |            if( msg.value > 0 ) msg.sender.transfer(msg.value); // give back eth 
    |        }
  at /home/jiaming/mavs_srcs/contract@0xbd3696b01a487b012ba99628b06a1a7859f5ca23.sol(158)

[33mWarning[0m for UnrestrictedWrite in contract 'Ambassador':
    |        if( now < endRC ) {
    |            uint256 tokenAmount = icoContract.buy.value(msg.value)(msg.sender);
  > |            balanceUser[msg.sender] = balanceUser[msg.sender].add(tokenAmount);
    |            soldTokensWithoutBonus = soldTokensWithoutBonus.add(tokenAmount);
    |        } else { //claim premium bonus logic
  at /home/jiaming/mavs_srcs/contract@0xbd3696b01a487b012ba99628b06a1a7859f5ca23.sol(143)

[33mWarning[0m for UnrestrictedWrite in contract 'Ambassador':
    |            
    |            uint256 addTokenAmount = balanceUser[msg.sender].mul( bonusApplied ).div(10**2);
  > |            balanceUser[msg.sender] = 0; 
    |            
    |            icoContract.claimPremium(msg.sender, addTokenAmount);
  at /home/jiaming/mavs_srcs/contract@0xbd3696b01a487b012ba99628b06a1a7859f5ca23.sol(156)

[33mWarning[0m for UnrestrictedWrite in contract 'Ambassador':
    |    
    |    function updateTime(uint256 _newStart, uint256 _newEnd) public onlyIcoContract {
  > |        if ( _newStart != 0 ) startRC = _newStart;
    |        if ( _newEnd != 0 ) endRC = _newEnd;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbd3696b01a487b012ba99628b06a1a7859f5ca23.sol(135)

[33mWarning[0m for UnrestrictedWrite in contract 'Ambassador':
    |    function updateTime(uint256 _newStart, uint256 _newEnd) public onlyIcoContract {
    |        if ( _newStart != 0 ) startRC = _newStart;
  > |        if ( _newEnd != 0 ) endRC = _newEnd;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbd3696b01a487b012ba99628b06a1a7859f5ca23.sol(136)

[31mViolation[0m for DAOConstantGas in contract 'CoinCrowdICO':
    |            uint256 refund = (tokenAmount - remainingTokens).mul(tokenValue).div(oneXCC);
    |            tokenAmount = remainingTokens;
  > |            owner.transfer(msg.value-refund);
    |			remainingTokens = 0; // set remaining token to 0
    |             _buyer.transfer(refund);
  at /home/jiaming/mavs_srcs/contract@0xbd3696b01a487b012ba99628b06a1a7859f5ca23.sol(270)

[31mViolation[0m for DAOConstantGas in contract 'CoinCrowdICO':
    |            owner.transfer(msg.value-refund);
    |			remainingTokens = 0; // set remaining token to 0
  > |             _buyer.transfer(refund);
    |        } else {
    |			remainingTokens = remainingTokens.sub(tokenAmount); // update remaining token without bonus
  at /home/jiaming/mavs_srcs/contract@0xbd3696b01a487b012ba99628b06a1a7859f5ca23.sol(272)

[33mWarning[0m for DAOConstantGas in contract 'CoinCrowdICO':
    |
    |    function withdraw(address to, uint256 value) public onlyOwner {
  > |        to.transfer(value);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xbd3696b01a487b012ba99628b06a1a7859f5ca23.sol(300)

[33mWarning[0m for LockedEther in contract 'CoinCrowdICO':
    |}
    |
  > |contract CoinCrowdICO is Ownable {
    |    using SafeMath for uint256;
    |    tokenInterface public tokenContract;
  at /home/jiaming/mavs_srcs/contract@0xbd3696b01a487b012ba99628b06a1a7859f5ca23.sol(164)

[33mWarning[0m for TODAmount in contract 'CoinCrowdICO':
    |
    |    function withdraw(address to, uint256 value) public onlyOwner {
  > |        to.transfer(value);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xbd3696b01a487b012ba99628b06a1a7859f5ca23.sol(300)

[33mWarning[0m for TODAmount in contract 'CoinCrowdICO':
    |            uint256 refund = (tokenAmount - remainingTokens).mul(tokenValue).div(oneXCC);
    |            tokenAmount = remainingTokens;
  > |            owner.transfer(msg.value-refund);
    |			remainingTokens = 0; // set remaining token to 0
    |             _buyer.transfer(refund);
  at /home/jiaming/mavs_srcs/contract@0xbd3696b01a487b012ba99628b06a1a7859f5ca23.sol(270)

[33mWarning[0m for TODAmount in contract 'CoinCrowdICO':
    |            owner.transfer(msg.value-refund);
    |			remainingTokens = 0; // set remaining token to 0
  > |             _buyer.transfer(refund);
    |        } else {
    |			remainingTokens = remainingTokens.sub(tokenAmount); // update remaining token without bonus
  at /home/jiaming/mavs_srcs/contract@0xbd3696b01a487b012ba99628b06a1a7859f5ca23.sol(272)

[31mViolation[0m for TODReceiver in contract 'CoinCrowdICO':
    |            uint256 refund = (tokenAmount - remainingTokens).mul(tokenValue).div(oneXCC);
    |            tokenAmount = remainingTokens;
  > |            owner.transfer(msg.value-refund);
    |			remainingTokens = 0; // set remaining token to 0
    |             _buyer.transfer(refund);
  at /home/jiaming/mavs_srcs/contract@0xbd3696b01a487b012ba99628b06a1a7859f5ca23.sol(270)

[31mViolation[0m for TODReceiver in contract 'CoinCrowdICO':
    |        } else {
    |			remainingTokens = remainingTokens.sub(tokenAmount); // update remaining token without bonus
  > |            owner.transfer(msg.value);
    |        }
    |        
  at /home/jiaming/mavs_srcs/contract@0xbd3696b01a487b012ba99628b06a1a7859f5ca23.sol(275)

[33mWarning[0m for TODReceiver in contract 'CoinCrowdICO':
    |
    |    function withdraw(address to, uint256 value) public onlyOwner {
  > |        to.transfer(value);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xbd3696b01a487b012ba99628b06a1a7859f5ca23.sol(300)

[33mWarning[0m for TODReceiver in contract 'CoinCrowdICO':
    |            owner.transfer(msg.value-refund);
    |			remainingTokens = 0; // set remaining token to 0
  > |             _buyer.transfer(refund);
    |        } else {
    |			remainingTokens = remainingTokens.sub(tokenAmount); // update remaining token without bonus
  at /home/jiaming/mavs_srcs/contract@0xbd3696b01a487b012ba99628b06a1a7859f5ca23.sol(272)

[33mWarning[0m for UnhandledException in contract 'CoinCrowdICO':
    |    
    |    function updateTimeRC(address _rcContract, uint256 _newStart, uint256 _newEnd) public onlyOwner {
  > |        Ambassador(_rcContract).updateTime( _newStart, _newEnd);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xbd3696b01a487b012ba99628b06a1a7859f5ca23.sol(219)

[33mWarning[0m for UnhandledException in contract 'CoinCrowdICO':
    |        require( remainingTokens > 0 ); // Check if there are any remaining tokens excluding bonuses
    |        
  > |        require( tokenContract.balanceOf(this) > remainingTokens); // should have enough balance
    |        
    |        uint256 oneXCC = 10 ** decimals;
  at /home/jiaming/mavs_srcs/contract@0xbd3696b01a487b012ba99628b06a1a7859f5ca23.sol(237)

[33mWarning[0m for UnhandledException in contract 'CoinCrowdICO':
    |            uint256 refund = (tokenAmount - remainingTokens).mul(tokenValue).div(oneXCC);
    |            tokenAmount = remainingTokens;
  > |            owner.transfer(msg.value-refund);
    |			remainingTokens = 0; // set remaining token to 0
    |             _buyer.transfer(refund);
  at /home/jiaming/mavs_srcs/contract@0xbd3696b01a487b012ba99628b06a1a7859f5ca23.sol(270)

[33mWarning[0m for UnhandledException in contract 'CoinCrowdICO':
    |            owner.transfer(msg.value-refund);
    |			remainingTokens = 0; // set remaining token to 0
  > |             _buyer.transfer(refund);
    |        } else {
    |			remainingTokens = remainingTokens.sub(tokenAmount); // update remaining token without bonus
  at /home/jiaming/mavs_srcs/contract@0xbd3696b01a487b012ba99628b06a1a7859f5ca23.sol(272)

[33mWarning[0m for UnhandledException in contract 'CoinCrowdICO':
    |        } else {
    |			remainingTokens = remainingTokens.sub(tokenAmount); // update remaining token without bonus
  > |            owner.transfer(msg.value);
    |        }
    |        
  at /home/jiaming/mavs_srcs/contract@0xbd3696b01a487b012ba99628b06a1a7859f5ca23.sol(275)

[33mWarning[0m for UnhandledException in contract 'CoinCrowdICO':
    |        uint256 tokenAmountWithBonus = tokenAmount.add(tokenAmount.mul( bonusRate ).div(10**4)); //add token bonus
    |        
  > |        tokenContract.transfer(_buyer, tokenAmountWithBonus);
    |        Buy(_buyer, tokenAmountWithBonus, currentAmbassador);
    |        
  at /home/jiaming/mavs_srcs/contract@0xbd3696b01a487b012ba99628b06a1a7859f5ca23.sol(280)

[33mWarning[0m for UnhandledException in contract 'CoinCrowdICO':
    |
    |    function withdraw(address to, uint256 value) public onlyOwner {
  > |        to.transfer(value);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xbd3696b01a487b012ba99628b06a1a7859f5ca23.sol(300)

[33mWarning[0m for UnhandledException in contract 'CoinCrowdICO':
    |
    |    function withdrawTokens(address to, uint256 value) public onlyOwner returns (bool) {
  > |        return tokenContract.transfer(to, value);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xbd3696b01a487b012ba99628b06a1a7859f5ca23.sol(308)

[33mWarning[0m for UnhandledException in contract 'CoinCrowdICO':
    |    function claimPremium(address _buyer, uint256 _amount) public returns(bool) {
    |        require( ambassadorAddressOf[msg.sender] != address(0) ); // Check if is an authorized _ambassadorContract
  > |        return tokenContract.transfer(_buyer, _amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbd3696b01a487b012ba99628b06a1a7859f5ca23.sol(313)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CoinCrowdICO':
    |    
    |    function updateTimeRC(address _rcContract, uint256 _newStart, uint256 _newEnd) public onlyOwner {
  > |        Ambassador(_rcContract).updateTime( _newStart, _newEnd);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xbd3696b01a487b012ba99628b06a1a7859f5ca23.sol(219)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CoinCrowdICO':
    |        require( remainingTokens > 0 ); // Check if there are any remaining tokens excluding bonuses
    |        
  > |        require( tokenContract.balanceOf(this) > remainingTokens); // should have enough balance
    |        
    |        uint256 oneXCC = 10 ** decimals;
  at /home/jiaming/mavs_srcs/contract@0xbd3696b01a487b012ba99628b06a1a7859f5ca23.sol(237)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CoinCrowdICO':
    |            uint256 refund = (tokenAmount - remainingTokens).mul(tokenValue).div(oneXCC);
    |            tokenAmount = remainingTokens;
  > |            owner.transfer(msg.value-refund);
    |			remainingTokens = 0; // set remaining token to 0
    |             _buyer.transfer(refund);
  at /home/jiaming/mavs_srcs/contract@0xbd3696b01a487b012ba99628b06a1a7859f5ca23.sol(270)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CoinCrowdICO':
    |            owner.transfer(msg.value-refund);
    |			remainingTokens = 0; // set remaining token to 0
  > |             _buyer.transfer(refund);
    |        } else {
    |			remainingTokens = remainingTokens.sub(tokenAmount); // update remaining token without bonus
  at /home/jiaming/mavs_srcs/contract@0xbd3696b01a487b012ba99628b06a1a7859f5ca23.sol(272)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CoinCrowdICO':
    |        } else {
    |			remainingTokens = remainingTokens.sub(tokenAmount); // update remaining token without bonus
  > |            owner.transfer(msg.value);
    |        }
    |        
  at /home/jiaming/mavs_srcs/contract@0xbd3696b01a487b012ba99628b06a1a7859f5ca23.sol(275)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CoinCrowdICO':
    |        uint256 tokenAmountWithBonus = tokenAmount.add(tokenAmount.mul( bonusRate ).div(10**4)); //add token bonus
    |        
  > |        tokenContract.transfer(_buyer, tokenAmountWithBonus);
    |        Buy(_buyer, tokenAmountWithBonus, currentAmbassador);
    |        
  at /home/jiaming/mavs_srcs/contract@0xbd3696b01a487b012ba99628b06a1a7859f5ca23.sol(280)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CoinCrowdICO':
    |
    |    function withdrawTokens(address to, uint256 value) public onlyOwner returns (bool) {
  > |        return tokenContract.transfer(to, value);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xbd3696b01a487b012ba99628b06a1a7859f5ca23.sol(308)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CoinCrowdICO':
    |    function claimPremium(address _buyer, uint256 _amount) public returns(bool) {
    |        require( ambassadorAddressOf[msg.sender] != address(0) ); // Check if is an authorized _ambassadorContract
  > |        return tokenContract.transfer(_buyer, _amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbd3696b01a487b012ba99628b06a1a7859f5ca23.sol(313)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CoinCrowdICO':
    |
    |    function withdraw(address to, uint256 value) public onlyOwner {
  > |        to.transfer(value);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xbd3696b01a487b012ba99628b06a1a7859f5ca23.sol(300)

[33mWarning[0m for UnrestrictedWrite in contract 'CoinCrowdICO':
    |            tokenAmount = remainingTokens;
    |            owner.transfer(msg.value-refund);
  > |			remainingTokens = 0; // set remaining token to 0
    |             _buyer.transfer(refund);
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0xbd3696b01a487b012ba99628b06a1a7859f5ca23.sol(271)

[33mWarning[0m for UnrestrictedWrite in contract 'CoinCrowdICO':
    |             _buyer.transfer(refund);
    |        } else {
  > |			remainingTokens = remainingTokens.sub(tokenAmount); // update remaining token without bonus
    |            owner.transfer(msg.value);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xbd3696b01a487b012ba99628b06a1a7859f5ca23.sol(274)

[33mWarning[0m for UnrestrictedWrite in contract 'CoinCrowdICO':
    |        Buy(_buyer, tokenAmountWithBonus, currentAmbassador);
    |        
  > |        totalSoldTokensWithBonus += tokenAmountWithBonus; 
    |		totalSoldTokensWithoutBonus += tokenAmount;
    |		
  at /home/jiaming/mavs_srcs/contract@0xbd3696b01a487b012ba99628b06a1a7859f5ca23.sol(283)

[33mWarning[0m for UnrestrictedWrite in contract 'CoinCrowdICO':
    |        
    |        totalSoldTokensWithBonus += tokenAmountWithBonus; 
  > |		totalSoldTokensWithoutBonus += tokenAmount;
    |		
    |        return tokenAmount; // retun tokenAmount without bonuses for easier calculations
  at /home/jiaming/mavs_srcs/contract@0xbd3696b01a487b012ba99628b06a1a7859f5ca23.sol(284)

[33mWarning[0m for UnrestrictedWrite in contract 'CoinCrowdICO':
    |        require(tx.origin == owner);
    |        
  > |        ambassadorAddressOf[ msg.sender ]  = _ambassadorAddr;
    |        
    |        NewAmbassador(_ambassadorAddr, msg.sender);
  at /home/jiaming/mavs_srcs/contract@0xbd3696b01a487b012ba99628b06a1a7859f5ca23.sol(294)

[33mWarning[0m for UnrestrictedWrite in contract 'CoinCrowdICO':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xbd3696b01a487b012ba99628b06a1a7859f5ca23.sol(71)

[33mWarning[0m for UnrestrictedWrite in contract 'CoinCrowdICO':
    |    function updateValue(uint256 newValue) public {
    |        require(msg.sender == updater || msg.sender == owner);
  > |        tokenValue = newValue;
    |        UpdateValue(newValue);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbd3696b01a487b012ba99628b06a1a7859f5ca23.sol(205)

[33mWarning[0m for UnrestrictedWrite in contract 'CoinCrowdICO':
    |
    |    function updateUpdater(address newUpdater) public onlyOwner {
  > |        updater = newUpdater;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbd3696b01a487b012ba99628b06a1a7859f5ca23.sol(210)

[33mWarning[0m for UnrestrictedWrite in contract 'CoinCrowdICO':
    |
    |    function updateTime(uint256 _newStart, uint256 _newEnd) public onlyOwner {
  > |        if ( _newStart != 0 ) startTime = _newStart;
    |        if ( _newEnd != 0 ) endTime = _newEnd;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbd3696b01a487b012ba99628b06a1a7859f5ca23.sol(214)

[33mWarning[0m for UnrestrictedWrite in contract 'CoinCrowdICO':
    |    function updateTime(uint256 _newStart, uint256 _newEnd) public onlyOwner {
    |        if ( _newStart != 0 ) startTime = _newStart;
  > |        if ( _newEnd != 0 ) endTime = _newEnd;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xbd3696b01a487b012ba99628b06a1a7859f5ca23.sol(215)

[33mWarning[0m for UnrestrictedWrite in contract 'CoinCrowdICO':
    |    function startICO(uint256 _startTime) public onlyOwner {
    |        if(_startTime == 0 ) {
  > |            startTime = now;
    |        } else {
    |            startTime = _startTime;
  at /home/jiaming/mavs_srcs/contract@0xbd3696b01a487b012ba99628b06a1a7859f5ca23.sol(224)

[33mWarning[0m for UnrestrictedWrite in contract 'CoinCrowdICO':
    |            startTime = now;
    |        } else {
  > |            startTime = _startTime;
    |        }
    |        endTime = startTime + 12*weekInSeconds;
  at /home/jiaming/mavs_srcs/contract@0xbd3696b01a487b012ba99628b06a1a7859f5ca23.sol(226)

[33mWarning[0m for UnrestrictedWrite in contract 'CoinCrowdICO':
    |            startTime = _startTime;
    |        }
  > |        endTime = startTime + 12*weekInSeconds;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xbd3696b01a487b012ba99628b06a1a7859f5ca23.sol(228)

[33mWarning[0m for UnrestrictedWrite in contract 'CoinCrowdICO':
    |    
    |    function updateTokenContract(address _tokenContract) public onlyOwner {
  > |        tokenContract = tokenInterface(_tokenContract);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbd3696b01a487b012ba99628b06a1a7859f5ca23.sol(304)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xbd3696b01a487b012ba99628b06a1a7859f5ca23.sol(11)


