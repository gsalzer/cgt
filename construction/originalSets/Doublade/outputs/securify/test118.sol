Processing contract: /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol:ICOEngineInterface
Processing contract: /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol:KYCBase
Processing contract: /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol:Ownable
Processing contract: /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol:RC
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol:RCpro
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol:TokenSale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol:rateInterface
Processing contract: /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol:tokenInterface
[31mViolation[0m for DAOConstantGas in contract 'RC':
    |            tokenAmount = unboughtTokens;
    |			remainingTokens = 0; // set remaining token to 0
  > |            _buyer.transfer(refund);
    |        } else {
    |			remainingTokens = remainingTokens.sub(tokenAmount); // update remaining token without bonus
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(303)

[31mViolation[0m for DAOConstantGas in contract 'RC':
    |		pendingTokenUser[_buyer] = 0;
    |		
  > |		tokenSaleContract.wallet().transfer(etherUser[_buyer]);
    |		etherUser[_buyer] = 0;
    |	}
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(323)

[31mViolation[0m for DAOConstantGas in contract 'RC':
    |    
    |    function refundEther(address to) public onlyTokenSaleOwner {
  > |        to.transfer(etherUser[to]);
    |        etherUser[to] = 0;
    |        pendingTokenUser[to] = 0;
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(346)

[33mWarning[0m for DAOConstantGas in contract 'RC':
    |		
    |		tokenSaleContract.claim(_buyer, addTokenAmount);
  > |		_buyer.transfer(msg.value);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(342)

[33mWarning[0m for DAOConstantGas in contract 'RC':
    |    
    |    function withdraw(address to, uint256 value) public onlyTokenSaleOwner { 
  > |        to.transfer(value);
    |    }
    |	
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(352)

[33mWarning[0m for LockedEther in contract 'RC':
    |}
    |
  > |contract RC is ICOEngineInterface, KYCBase {
    |    using SafeMath for uint256;
    |    TokenSale tokenSaleContract;
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(168)

[33mWarning[0m for TODAmount in contract 'RC':
    |    
    |    function withdraw(address to, uint256 value) public onlyTokenSaleOwner { 
  > |        to.transfer(value);
    |    }
    |	
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(352)

[33mWarning[0m for TODAmount in contract 'RC':
    |            tokenAmount = unboughtTokens;
    |			remainingTokens = 0; // set remaining token to 0
  > |            _buyer.transfer(refund);
    |        } else {
    |			remainingTokens = remainingTokens.sub(tokenAmount); // update remaining token without bonus
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(303)

[33mWarning[0m for TODReceiver in contract 'RC':
    |    
    |    function refundEther(address to) public onlyTokenSaleOwner {
  > |        to.transfer(etherUser[to]);
    |        etherUser[to] = 0;
    |        pendingTokenUser[to] = 0;
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(346)

[33mWarning[0m for TODReceiver in contract 'RC':
    |    
    |    function withdraw(address to, uint256 value) public onlyTokenSaleOwner { 
  > |        to.transfer(value);
    |    }
    |	
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(352)

[33mWarning[0m for TODReceiver in contract 'RC':
    |            tokenAmount = unboughtTokens;
    |			remainingTokens = 0; // set remaining token to 0
  > |            _buyer.transfer(refund);
    |        } else {
    |			remainingTokens = remainingTokens.sub(tokenAmount); // update remaining token without bonus
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(303)

[33mWarning[0m for TODReceiver in contract 'RC':
    |		
    |		tokenSaleContract.claim(_buyer, addTokenAmount);
  > |		_buyer.transfer(msg.value);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(342)

[33mWarning[0m for UnhandledException in contract 'RC':
    |    {
    |        // check the signature
  > |        bytes32 hash = sha256("Eidoo icoengine authorization", address(0), buyerAddress, buyerId, maxAmount); //replaced this with address(0);
    |        address signer = ecrecover(hash, v, r, s);
    |        if (!isKycSigner[signer]) {
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(154)

[33mWarning[0m for UnhandledException in contract 'RC':
    |        // check the signature
    |        bytes32 hash = sha256("Eidoo icoengine authorization", address(0), buyerAddress, buyerId, maxAmount); //replaced this with address(0);
  > |        address signer = ecrecover(hash, v, r, s);
    |        if (!isKycSigner[signer]) {
    |            revert();
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(155)

[33mWarning[0m for UnhandledException in contract 'RC':
    |    
    |    modifier onlyTokenSaleOwner() {
  > |        require(msg.sender == tokenSaleContract.owner() );
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(223)

[33mWarning[0m for UnhandledException in contract 'RC':
    |    function price() public view returns(uint) {
    |        uint256 oneEther = 10**18;
  > |        return oneEther.mul(10**18).div( tokenSaleContract.tokenValueInEther(oneTokenInFiatWei) );
    |    }
    |	
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(268)

[33mWarning[0m for UnhandledException in contract 'RC':
    |        require( remainingTokens > 0 );
    |        
  > |        uint256 oneToken = 10 ** uint256(tokenSaleContract.decimals());
    |        uint256 tokenValue = tokenSaleContract.tokenValueInEther(oneTokenInFiatWei);
    |        uint256 tokenAmount = msg.value.mul(oneToken).div(tokenValue);
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(289)

[33mWarning[0m for UnhandledException in contract 'RC':
    |        
    |        uint256 oneToken = 10 ** uint256(tokenSaleContract.decimals());
  > |        uint256 tokenValue = tokenSaleContract.tokenValueInEther(oneTokenInFiatWei);
    |        uint256 tokenAmount = msg.value.mul(oneToken).div(tokenValue);
    |        
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(290)

[33mWarning[0m for UnhandledException in contract 'RC':
    |        uint256 tokenAmount = msg.value.mul(oneToken).div(tokenValue);
    |        
  > |        uint256 unboughtTokens = tokenInterface(tokenSaleContract.tokenContract()).balanceOf(tokenSaleContract);
    |        if ( unboughtTokens > remainingTokens ) {
    |            unboughtTokens = remainingTokens;
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(293)

[33mWarning[0m for UnhandledException in contract 'RC':
    |            tokenAmount = unboughtTokens;
    |			remainingTokens = 0; // set remaining token to 0
  > |            _buyer.transfer(refund);
    |        } else {
    |			remainingTokens = remainingTokens.sub(tokenAmount); // update remaining token without bonus
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(303)

[33mWarning[0m for UnhandledException in contract 'RC':
    |		tokenUser[_buyer] = tokenUser[_buyer].add(pendingTokenUser[_buyer]);
    |	
  > |		tokenSaleContract.claim(_buyer, pendingTokenUser[_buyer]);
    |		soldTokens = soldTokens.add(pendingTokenUser[_buyer]);
    |		pendingTokenUser[_buyer] = 0;
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(319)

[33mWarning[0m for UnhandledException in contract 'RC':
    |		pendingTokenUser[_buyer] = 0;
    |		
  > |		tokenSaleContract.wallet().transfer(etherUser[_buyer]);
    |		etherUser[_buyer] = 0;
    |	}
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(323)

[33mWarning[0m for UnhandledException in contract 'RC':
    |		tokenUser[_buyer] = 0; 
    |		
  > |		tokenSaleContract.claim(_buyer, addTokenAmount);
    |		_buyer.transfer(msg.value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(341)

[33mWarning[0m for UnhandledException in contract 'RC':
    |		
    |		tokenSaleContract.claim(_buyer, addTokenAmount);
  > |		_buyer.transfer(msg.value);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(342)

[33mWarning[0m for UnhandledException in contract 'RC':
    |    
    |    function refundEther(address to) public onlyTokenSaleOwner {
  > |        to.transfer(etherUser[to]);
    |        etherUser[to] = 0;
    |        pendingTokenUser[to] = 0;
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(346)

[33mWarning[0m for UnhandledException in contract 'RC':
    |    
    |    function withdraw(address to, uint256 value) public onlyTokenSaleOwner { 
  > |        to.transfer(value);
    |    }
    |	
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(352)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RC':
    |    {
    |        // check the signature
  > |        bytes32 hash = sha256("Eidoo icoengine authorization", address(0), buyerAddress, buyerId, maxAmount); //replaced this with address(0);
    |        address signer = ecrecover(hash, v, r, s);
    |        if (!isKycSigner[signer]) {
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(154)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RC':
    |        // check the signature
    |        bytes32 hash = sha256("Eidoo icoengine authorization", address(0), buyerAddress, buyerId, maxAmount); //replaced this with address(0);
  > |        address signer = ecrecover(hash, v, r, s);
    |        if (!isKycSigner[signer]) {
    |            revert();
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(155)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RC':
    |    
    |    modifier onlyTokenSaleOwner() {
  > |        require(msg.sender == tokenSaleContract.owner() );
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(223)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RC':
    |    function price() public view returns(uint) {
    |        uint256 oneEther = 10**18;
  > |        return oneEther.mul(10**18).div( tokenSaleContract.tokenValueInEther(oneTokenInFiatWei) );
    |    }
    |	
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(268)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RC':
    |        require( remainingTokens > 0 );
    |        
  > |        uint256 oneToken = 10 ** uint256(tokenSaleContract.decimals());
    |        uint256 tokenValue = tokenSaleContract.tokenValueInEther(oneTokenInFiatWei);
    |        uint256 tokenAmount = msg.value.mul(oneToken).div(tokenValue);
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(289)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RC':
    |        
    |        uint256 oneToken = 10 ** uint256(tokenSaleContract.decimals());
  > |        uint256 tokenValue = tokenSaleContract.tokenValueInEther(oneTokenInFiatWei);
    |        uint256 tokenAmount = msg.value.mul(oneToken).div(tokenValue);
    |        
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(290)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RC':
    |        uint256 tokenAmount = msg.value.mul(oneToken).div(tokenValue);
    |        
  > |        uint256 unboughtTokens = tokenInterface(tokenSaleContract.tokenContract()).balanceOf(tokenSaleContract);
    |        if ( unboughtTokens > remainingTokens ) {
    |            unboughtTokens = remainingTokens;
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(293)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RC':
    |            tokenAmount = unboughtTokens;
    |			remainingTokens = 0; // set remaining token to 0
  > |            _buyer.transfer(refund);
    |        } else {
    |			remainingTokens = remainingTokens.sub(tokenAmount); // update remaining token without bonus
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(303)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RC':
    |		tokenUser[_buyer] = tokenUser[_buyer].add(pendingTokenUser[_buyer]);
    |	
  > |		tokenSaleContract.claim(_buyer, pendingTokenUser[_buyer]);
    |		soldTokens = soldTokens.add(pendingTokenUser[_buyer]);
    |		pendingTokenUser[_buyer] = 0;
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(319)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RC':
    |		pendingTokenUser[_buyer] = 0;
    |		
  > |		tokenSaleContract.wallet().transfer(etherUser[_buyer]);
    |		etherUser[_buyer] = 0;
    |	}
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(323)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RC':
    |		tokenUser[_buyer] = 0; 
    |		
  > |		tokenSaleContract.claim(_buyer, addTokenAmount);
    |		_buyer.transfer(msg.value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(341)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RC':
    |		
    |		tokenSaleContract.claim(_buyer, addTokenAmount);
  > |		_buyer.transfer(msg.value);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(342)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RC':
    |    
    |    function refundEther(address to) public onlyTokenSaleOwner {
  > |        to.transfer(etherUser[to]);
    |        etherUser[to] = 0;
    |        pendingTokenUser[to] = 0;
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(346)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RC':
    |    
    |    function withdraw(address to, uint256 value) public onlyTokenSaleOwner { 
  > |        to.transfer(value);
    |    }
    |	
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(352)

[33mWarning[0m for UnrestrictedWrite in contract 'RC':
    |            uint256 totalPayed = alreadyPayed[buyerId].add(msg.value);
    |            require(totalPayed <= maxAmount);
  > |            alreadyPayed[buyerId] = totalPayed;
    |            emit KycVerified(signer, buyerAddress, buyerId, maxAmount);
    |            return releaseTokensTo(buyerAddress);
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(161)

[33mWarning[0m for UnrestrictedWrite in contract 'RC':
    |            refund = (tokenAmount - unboughtTokens).mul(tokenValue).div(oneToken);
    |            tokenAmount = unboughtTokens;
  > |			remainingTokens = 0; // set remaining token to 0
    |            _buyer.transfer(refund);
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(302)

[33mWarning[0m for UnrestrictedWrite in contract 'RC':
    |            _buyer.transfer(refund);
    |        } else {
  > |			remainingTokens = remainingTokens.sub(tokenAmount); // update remaining token without bonus
    |        }
    |        
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(305)

[33mWarning[0m for UnrestrictedWrite in contract 'RC':
    |        }
    |        
  > |        etherUser[_buyer] = etherUser[_buyer].add(msg.value.sub(refund));
    |        pendingTokenUser[_buyer] = pendingTokenUser[_buyer].add(tokenAmount);	
    |        
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(308)

[33mWarning[0m for UnrestrictedWrite in contract 'RC':
    |        
    |        etherUser[_buyer] = etherUser[_buyer].add(msg.value.sub(refund));
  > |        pendingTokenUser[_buyer] = pendingTokenUser[_buyer].add(tokenAmount);	
    |        
    |        emit Buy( _buyer, msg.value, tokenAmount, oneTokenInFiatWei );
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(309)

[33mWarning[0m for UnrestrictedWrite in contract 'RC':
    |	    require( pendingTokenUser[_buyer] > 0 );
    |
  > |		tokenUser[_buyer] = tokenUser[_buyer].add(pendingTokenUser[_buyer]);
    |	
    |		tokenSaleContract.claim(_buyer, pendingTokenUser[_buyer]);
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(317)

[33mWarning[0m for UnrestrictedWrite in contract 'RC':
    |	
    |		tokenSaleContract.claim(_buyer, pendingTokenUser[_buyer]);
  > |		soldTokens = soldTokens.add(pendingTokenUser[_buyer]);
    |		pendingTokenUser[_buyer] = 0;
    |		
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(320)

[33mWarning[0m for UnrestrictedWrite in contract 'RC':
    |		tokenSaleContract.claim(_buyer, pendingTokenUser[_buyer]);
    |		soldTokens = soldTokens.add(pendingTokenUser[_buyer]);
  > |		pendingTokenUser[_buyer] = 0;
    |		
    |		tokenSaleContract.wallet().transfer(etherUser[_buyer]);
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(321)

[33mWarning[0m for UnrestrictedWrite in contract 'RC':
    |		
    |		tokenSaleContract.wallet().transfer(etherUser[_buyer]);
  > |		etherUser[_buyer] = 0;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(324)

[33mWarning[0m for UnrestrictedWrite in contract 'RC':
    |		
    |		uint256 addTokenAmount = tokenUser[_buyer].mul( bonusApplied ).div(10**2);
  > |		tokenUser[_buyer] = 0; 
    |		
    |		tokenSaleContract.claim(_buyer, addTokenAmount);
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(339)

[33mWarning[0m for UnrestrictedWrite in contract 'RC':
    |    
    |    function setTime(uint256 _newStart, uint256 _newEnd) public onlyTokenSaleOwner {
  > |        if ( _newStart != 0 ) startTime = _newStart;
    |        if ( _newEnd != 0 ) endTime = _newEnd;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(228)

[33mWarning[0m for UnrestrictedWrite in contract 'RC':
    |    function setTime(uint256 _newStart, uint256 _newEnd) public onlyTokenSaleOwner {
    |        if ( _newStart != 0 ) startTime = _newStart;
  > |        if ( _newEnd != 0 ) endTime = _newEnd;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(229)

[33mWarning[0m for UnrestrictedWrite in contract 'RC':
    |    
    |    function changeMinimum(uint256 _newEtherMinimum) public onlyTokenSaleOwner {
  > |        etherMinimum = _newEtherMinimum;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(233)

[33mWarning[0m for UnrestrictedWrite in contract 'RC':
    |    function refundEther(address to) public onlyTokenSaleOwner {
    |        to.transfer(etherUser[to]);
  > |        etherUser[to] = 0;
    |        pendingTokenUser[to] = 0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(347)

[33mWarning[0m for UnrestrictedWrite in contract 'RC':
    |        to.transfer(etherUser[to]);
    |        etherUser[to] = 0;
  > |        pendingTokenUser[to] = 0;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(348)

[31mViolation[0m for DAOConstantGas in contract 'RCpro':
    |            tokenAmount = unboughtTokens;
    |			remainingTokens = 0; // set remaining token to 0
  > |            _buyer.transfer(refund);
    |        } else {
    |			remainingTokens = remainingTokens.sub(tokenAmount); // update remaining token without bonus
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(507)

[31mViolation[0m for DAOConstantGas in contract 'RCpro':
    |		pendingTokenUser[_buyer] = 0;
    |		
  > |		tokenSaleContract.wallet().transfer(etherUser[_buyer]);
    |		etherUser[_buyer] = 0;
    |	}
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(527)

[31mViolation[0m for DAOConstantGas in contract 'RCpro':
    |    
    |    function refundEther(address to) public onlyTokenSaleOwner {
  > |        to.transfer(etherUser[to]);
    |        etherUser[to] = 0;
    |        pendingTokenUser[to] = 0;
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(550)

[33mWarning[0m for DAOConstantGas in contract 'RCpro':
    |		
    |		tokenSaleContract.claim(_buyer, addTokenAmount);
  > |		_buyer.transfer(msg.value);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(546)

[33mWarning[0m for DAOConstantGas in contract 'RCpro':
    |    
    |    function withdraw(address to, uint256 value) public onlyTokenSaleOwner { 
  > |        to.transfer(value);
    |    }
    |	
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(556)

[33mWarning[0m for LockedEther in contract 'RCpro':
    |}
    |
  > |contract RCpro is ICOEngineInterface, KYCBase {
    |    using SafeMath for uint256;
    |    TokenSale tokenSaleContract;
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(360)

[33mWarning[0m for TODAmount in contract 'RCpro':
    |            tokenAmount = unboughtTokens;
    |			remainingTokens = 0; // set remaining token to 0
  > |            _buyer.transfer(refund);
    |        } else {
    |			remainingTokens = remainingTokens.sub(tokenAmount); // update remaining token without bonus
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(507)

[33mWarning[0m for TODAmount in contract 'RCpro':
    |    
    |    function withdraw(address to, uint256 value) public onlyTokenSaleOwner { 
  > |        to.transfer(value);
    |    }
    |	
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(556)

[33mWarning[0m for TODReceiver in contract 'RCpro':
    |		
    |		tokenSaleContract.claim(_buyer, addTokenAmount);
  > |		_buyer.transfer(msg.value);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(546)

[33mWarning[0m for TODReceiver in contract 'RCpro':
    |    
    |    function refundEther(address to) public onlyTokenSaleOwner {
  > |        to.transfer(etherUser[to]);
    |        etherUser[to] = 0;
    |        pendingTokenUser[to] = 0;
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(550)

[33mWarning[0m for TODReceiver in contract 'RCpro':
    |    
    |    function withdraw(address to, uint256 value) public onlyTokenSaleOwner { 
  > |        to.transfer(value);
    |    }
    |	
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(556)

[33mWarning[0m for UnhandledException in contract 'RCpro':
    |    {
    |        // check the signature
  > |        bytes32 hash = sha256("Eidoo icoengine authorization", address(0), buyerAddress, buyerId, maxAmount); //replaced this with address(0);
    |        address signer = ecrecover(hash, v, r, s);
    |        if (!isKycSigner[signer]) {
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(154)

[33mWarning[0m for UnhandledException in contract 'RCpro':
    |        // check the signature
    |        bytes32 hash = sha256("Eidoo icoengine authorization", address(0), buyerAddress, buyerId, maxAmount); //replaced this with address(0);
  > |        address signer = ecrecover(hash, v, r, s);
    |        if (!isKycSigner[signer]) {
    |            revert();
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(155)

[33mWarning[0m for UnhandledException in contract 'RCpro':
    |    
    |    modifier onlyTokenSaleOwner() {
  > |        require(msg.sender == tokenSaleContract.owner() );
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(418)

[33mWarning[0m for UnhandledException in contract 'RCpro':
    |    function price() public view returns(uint) {
    |        uint256 oneEther = 10**18;
  > |        return oneEther.mul(10**18).div( tokenSaleContract.tokenValueInEther(oneTokenInFiatWei[0]) );
    |    }
    |	
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(463)

[33mWarning[0m for UnhandledException in contract 'RCpro':
    |        require( remainingTokens > 0 );
    |        
  > |        uint256 oneToken = 10 ** uint256(tokenSaleContract.decimals());
    |		
    |		uint256 tknPriceApplied = 0;
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(484)

[33mWarning[0m for UnhandledException in contract 'RCpro':
    |		require( tknPriceApplied > 0 );
    |		
  > |        uint256 tokenValue = tokenSaleContract.tokenValueInEther(tknPriceApplied);
    |        uint256 tokenAmount = msg.value.mul(oneToken).div(tokenValue);
    |        
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(494)

[33mWarning[0m for UnhandledException in contract 'RCpro':
    |        uint256 tokenAmount = msg.value.mul(oneToken).div(tokenValue);
    |        
  > |        uint256 unboughtTokens = tokenInterface(tokenSaleContract.tokenContract()).balanceOf(tokenSaleContract);
    |        if ( unboughtTokens > remainingTokens ) {
    |            unboughtTokens = remainingTokens;
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(497)

[33mWarning[0m for UnhandledException in contract 'RCpro':
    |            tokenAmount = unboughtTokens;
    |			remainingTokens = 0; // set remaining token to 0
  > |            _buyer.transfer(refund);
    |        } else {
    |			remainingTokens = remainingTokens.sub(tokenAmount); // update remaining token without bonus
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(507)

[33mWarning[0m for UnhandledException in contract 'RCpro':
    |		tokenUser[_buyer] = tokenUser[_buyer].add(pendingTokenUser[_buyer]);
    |	
  > |		tokenSaleContract.claim(_buyer, pendingTokenUser[_buyer]);
    |		soldTokens = soldTokens.add(pendingTokenUser[_buyer]);
    |		pendingTokenUser[_buyer] = 0;
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(523)

[33mWarning[0m for UnhandledException in contract 'RCpro':
    |		pendingTokenUser[_buyer] = 0;
    |		
  > |		tokenSaleContract.wallet().transfer(etherUser[_buyer]);
    |		etherUser[_buyer] = 0;
    |	}
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(527)

[33mWarning[0m for UnhandledException in contract 'RCpro':
    |		tokenUser[_buyer] = 0; 
    |		
  > |		tokenSaleContract.claim(_buyer, addTokenAmount);
    |		_buyer.transfer(msg.value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(545)

[33mWarning[0m for UnhandledException in contract 'RCpro':
    |		
    |		tokenSaleContract.claim(_buyer, addTokenAmount);
  > |		_buyer.transfer(msg.value);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(546)

[33mWarning[0m for UnhandledException in contract 'RCpro':
    |    
    |    function refundEther(address to) public onlyTokenSaleOwner {
  > |        to.transfer(etherUser[to]);
    |        etherUser[to] = 0;
    |        pendingTokenUser[to] = 0;
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(550)

[33mWarning[0m for UnhandledException in contract 'RCpro':
    |    
    |    function withdraw(address to, uint256 value) public onlyTokenSaleOwner { 
  > |        to.transfer(value);
    |    }
    |	
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(556)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RCpro':
    |    {
    |        // check the signature
  > |        bytes32 hash = sha256("Eidoo icoengine authorization", address(0), buyerAddress, buyerId, maxAmount); //replaced this with address(0);
    |        address signer = ecrecover(hash, v, r, s);
    |        if (!isKycSigner[signer]) {
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(154)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RCpro':
    |        // check the signature
    |        bytes32 hash = sha256("Eidoo icoengine authorization", address(0), buyerAddress, buyerId, maxAmount); //replaced this with address(0);
  > |        address signer = ecrecover(hash, v, r, s);
    |        if (!isKycSigner[signer]) {
    |            revert();
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(155)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RCpro':
    |    
    |    modifier onlyTokenSaleOwner() {
  > |        require(msg.sender == tokenSaleContract.owner() );
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(418)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RCpro':
    |    function price() public view returns(uint) {
    |        uint256 oneEther = 10**18;
  > |        return oneEther.mul(10**18).div( tokenSaleContract.tokenValueInEther(oneTokenInFiatWei[0]) );
    |    }
    |	
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(463)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RCpro':
    |        require( remainingTokens > 0 );
    |        
  > |        uint256 oneToken = 10 ** uint256(tokenSaleContract.decimals());
    |		
    |		uint256 tknPriceApplied = 0;
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(484)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RCpro':
    |		require( tknPriceApplied > 0 );
    |		
  > |        uint256 tokenValue = tokenSaleContract.tokenValueInEther(tknPriceApplied);
    |        uint256 tokenAmount = msg.value.mul(oneToken).div(tokenValue);
    |        
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(494)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RCpro':
    |        uint256 tokenAmount = msg.value.mul(oneToken).div(tokenValue);
    |        
  > |        uint256 unboughtTokens = tokenInterface(tokenSaleContract.tokenContract()).balanceOf(tokenSaleContract);
    |        if ( unboughtTokens > remainingTokens ) {
    |            unboughtTokens = remainingTokens;
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(497)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RCpro':
    |		tokenUser[_buyer] = tokenUser[_buyer].add(pendingTokenUser[_buyer]);
    |	
  > |		tokenSaleContract.claim(_buyer, pendingTokenUser[_buyer]);
    |		soldTokens = soldTokens.add(pendingTokenUser[_buyer]);
    |		pendingTokenUser[_buyer] = 0;
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(523)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RCpro':
    |		pendingTokenUser[_buyer] = 0;
    |		
  > |		tokenSaleContract.wallet().transfer(etherUser[_buyer]);
    |		etherUser[_buyer] = 0;
    |	}
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(527)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RCpro':
    |		tokenUser[_buyer] = 0; 
    |		
  > |		tokenSaleContract.claim(_buyer, addTokenAmount);
    |		_buyer.transfer(msg.value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(545)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RCpro':
    |    
    |    function refundEther(address to) public onlyTokenSaleOwner {
  > |        to.transfer(etherUser[to]);
    |        etherUser[to] = 0;
    |        pendingTokenUser[to] = 0;
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(550)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RCpro':
    |    
    |    function withdraw(address to, uint256 value) public onlyTokenSaleOwner { 
  > |        to.transfer(value);
    |    }
    |	
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(556)

[33mWarning[0m for UnrestrictedWrite in contract 'RCpro':
    |            uint256 totalPayed = alreadyPayed[buyerId].add(msg.value);
    |            require(totalPayed <= maxAmount);
  > |            alreadyPayed[buyerId] = totalPayed;
    |            emit KycVerified(signer, buyerAddress, buyerId, maxAmount);
    |            return releaseTokensTo(buyerAddress);
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(161)

[33mWarning[0m for UnrestrictedWrite in contract 'RCpro':
    |        }
    |        
  > |        etherUser[_buyer] = etherUser[_buyer].add(msg.value.sub(refund));
    |        pendingTokenUser[_buyer] = pendingTokenUser[_buyer].add(tokenAmount);	
    |        
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(512)

[33mWarning[0m for UnrestrictedWrite in contract 'RCpro':
    |        
    |        etherUser[_buyer] = etherUser[_buyer].add(msg.value.sub(refund));
  > |        pendingTokenUser[_buyer] = pendingTokenUser[_buyer].add(tokenAmount);	
    |        
    |        emit Buy( _buyer, msg.value, tokenAmount, tknPriceApplied );
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(513)

[33mWarning[0m for UnrestrictedWrite in contract 'RCpro':
    |	    require( pendingTokenUser[_buyer] > 0 );
    |
  > |		tokenUser[_buyer] = tokenUser[_buyer].add(pendingTokenUser[_buyer]);
    |	
    |		tokenSaleContract.claim(_buyer, pendingTokenUser[_buyer]);
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(521)

[33mWarning[0m for UnrestrictedWrite in contract 'RCpro':
    |	
    |		tokenSaleContract.claim(_buyer, pendingTokenUser[_buyer]);
  > |		soldTokens = soldTokens.add(pendingTokenUser[_buyer]);
    |		pendingTokenUser[_buyer] = 0;
    |		
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(524)

[33mWarning[0m for UnrestrictedWrite in contract 'RCpro':
    |		tokenSaleContract.claim(_buyer, pendingTokenUser[_buyer]);
    |		soldTokens = soldTokens.add(pendingTokenUser[_buyer]);
  > |		pendingTokenUser[_buyer] = 0;
    |		
    |		tokenSaleContract.wallet().transfer(etherUser[_buyer]);
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(525)

[33mWarning[0m for UnrestrictedWrite in contract 'RCpro':
    |		
    |		tokenSaleContract.wallet().transfer(etherUser[_buyer]);
  > |		etherUser[_buyer] = 0;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(528)

[33mWarning[0m for UnrestrictedWrite in contract 'RCpro':
    |    
    |    function setTime(uint256 _newStart, uint256 _newEnd) public onlyTokenSaleOwner {
  > |        if ( _newStart != 0 ) startTime = _newStart;
    |        if ( _newEnd != 0 ) endTime = _newEnd;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(423)

[33mWarning[0m for UnrestrictedWrite in contract 'RCpro':
    |    function setTime(uint256 _newStart, uint256 _newEnd) public onlyTokenSaleOwner {
    |        if ( _newStart != 0 ) startTime = _newStart;
  > |        if ( _newEnd != 0 ) endTime = _newEnd;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(424)

[33mWarning[0m for UnrestrictedWrite in contract 'RCpro':
    |    
    |    function changeMinimum(uint256 _newEtherMinimum) public onlyTokenSaleOwner {
  > |        etherMinimum = _newEtherMinimum;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(428)

[33mWarning[0m for UnrestrictedWrite in contract 'RCpro':
    |    function refundEther(address to) public onlyTokenSaleOwner {
    |        to.transfer(etherUser[to]);
  > |        etherUser[to] = 0;
    |        pendingTokenUser[to] = 0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(551)

[33mWarning[0m for UnrestrictedWrite in contract 'RCpro':
    |        to.transfer(etherUser[to]);
    |        etherUser[to] = 0;
  > |        pendingTokenUser[to] = 0;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(552)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(7)

[33mWarning[0m for DAOConstantGas in contract 'TokenSale':
    |            forward(msg.value-refund);
    |			remainingTokens = 0; // set remaining token to 0
  > |             _buyer.transfer(refund);
    |        } else {
    |			remainingTokens = remainingTokens.sub(tokenAmount); // update remaining token without bonus
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(630)

[33mWarning[0m for DAOConstantGas in contract 'TokenSale':
    |        uint256 advisorAmount = _amount.mul(advisorFee).div(10**3);
    |        uint256 walletAmount = _amount - advisorAmount;
  > |        advisor.transfer(advisorAmount);
    |        wallet.transfer(walletAmount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(645)

[33mWarning[0m for DAOConstantGas in contract 'TokenSale':
    |        uint256 walletAmount = _amount - advisorAmount;
    |        advisor.transfer(advisorAmount);
  > |        wallet.transfer(walletAmount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(646)

[33mWarning[0m for DAOConstantGas in contract 'TokenSale':
    |
    |    function withdraw(address to, uint256 value) public onlyOwner {
  > |        to.transfer(value);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(665)

[33mWarning[0m for LockedEther in contract 'TokenSale':
    |}
    |
  > |contract TokenSale is Ownable {
    |    using SafeMath for uint256;
    |    tokenInterface public tokenContract;
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(564)

[33mWarning[0m for TODAmount in contract 'TokenSale':
    |
    |    function withdraw(address to, uint256 value) public onlyOwner {
  > |        to.transfer(value);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(665)

[33mWarning[0m for TODAmount in contract 'TokenSale':
    |            forward(msg.value-refund);
    |			remainingTokens = 0; // set remaining token to 0
  > |             _buyer.transfer(refund);
    |        } else {
    |			remainingTokens = remainingTokens.sub(tokenAmount); // update remaining token without bonus
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(630)

[33mWarning[0m for TODAmount in contract 'TokenSale':
    |        uint256 advisorAmount = _amount.mul(advisorFee).div(10**3);
    |        uint256 walletAmount = _amount - advisorAmount;
  > |        advisor.transfer(advisorAmount);
    |        wallet.transfer(walletAmount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(645)

[33mWarning[0m for TODAmount in contract 'TokenSale':
    |        uint256 walletAmount = _amount - advisorAmount;
    |        advisor.transfer(advisorAmount);
  > |        wallet.transfer(walletAmount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(646)

[31mViolation[0m for TODReceiver in contract 'TokenSale':
    |        uint256 advisorAmount = _amount.mul(advisorFee).div(10**3);
    |        uint256 walletAmount = _amount - advisorAmount;
  > |        advisor.transfer(advisorAmount);
    |        wallet.transfer(walletAmount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(645)

[31mViolation[0m for TODReceiver in contract 'TokenSale':
    |        uint256 walletAmount = _amount - advisorAmount;
    |        advisor.transfer(advisorAmount);
  > |        wallet.transfer(walletAmount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(646)

[33mWarning[0m for TODReceiver in contract 'TokenSale':
    |
    |    function withdraw(address to, uint256 value) public onlyOwner {
  > |        to.transfer(value);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(665)

[33mWarning[0m for TODReceiver in contract 'TokenSale':
    |            forward(msg.value-refund);
    |			remainingTokens = 0; // set remaining token to 0
  > |             _buyer.transfer(refund);
    |        } else {
    |			remainingTokens = remainingTokens.sub(tokenAmount); // update remaining token without bonus
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(630)

[33mWarning[0m for UnhandledException in contract 'TokenSale':
    |    
    |    function tokenValueInEther(uint256 _oneTokenInFiatWei) public view returns(uint256 tknValue) {
  > |        uint256 oneEtherInUsd = rateContract.readRate("usd");
    |        tknValue = _oneTokenInFiatWei.mul(10 ** uint256(decimals)).div(oneEtherInUsd);
    |        return tknValue;
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(591)

[33mWarning[0m for UnhandledException in contract 'TokenSale':
    |        require( msg.value > 0 );
    |		
  > |		uint256 remainingTokens = tokenContract.balanceOf(this);
    |        require( remainingTokens > 0 ); // Check if there are any remaining tokens 
    |        _;
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(601)

[33mWarning[0m for UnhandledException in contract 'TokenSale':
    |        
    |        
  > |        uint256 remainingTokens = tokenContract.balanceOf(this);
    |        if ( _remainingTokens < remainingTokens ) {
    |            remainingTokens = _remainingTokens;
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(620)

[33mWarning[0m for UnhandledException in contract 'TokenSale':
    |            forward(msg.value-refund);
    |			remainingTokens = 0; // set remaining token to 0
  > |             _buyer.transfer(refund);
    |        } else {
    |			remainingTokens = remainingTokens.sub(tokenAmount); // update remaining token without bonus
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(630)

[33mWarning[0m for UnhandledException in contract 'TokenSale':
    |        }
    |        
  > |        tokenContract.transfer(_buyer, tokenAmount);
    |        emit Buy(_buyer, tokenAmount, _ambassador);
    |		
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(636)

[33mWarning[0m for UnhandledException in contract 'TokenSale':
    |        uint256 advisorAmount = _amount.mul(advisorFee).div(10**3);
    |        uint256 walletAmount = _amount - advisorAmount;
  > |        advisor.transfer(advisorAmount);
    |        wallet.transfer(walletAmount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(645)

[33mWarning[0m for UnhandledException in contract 'TokenSale':
    |        uint256 walletAmount = _amount - advisorAmount;
    |        advisor.transfer(advisorAmount);
  > |        wallet.transfer(walletAmount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(646)

[33mWarning[0m for UnhandledException in contract 'TokenSale':
    |
    |    function withdraw(address to, uint256 value) public onlyOwner {
  > |        to.transfer(value);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(665)

[33mWarning[0m for UnhandledException in contract 'TokenSale':
    |    
    |    function withdrawTokens(address to, uint256 value) public onlyOwner returns (bool) {
  > |        return tokenContract.transfer(to, value);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(669)

[33mWarning[0m for UnhandledException in contract 'TokenSale':
    |	
    |	function claim(address _buyer, uint256 _amount) onlyRC public returns(bool) {
  > |        return tokenContract.transfer(_buyer, _amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(693)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenSale':
    |    
    |    function tokenValueInEther(uint256 _oneTokenInFiatWei) public view returns(uint256 tknValue) {
  > |        uint256 oneEtherInUsd = rateContract.readRate("usd");
    |        tknValue = _oneTokenInFiatWei.mul(10 ** uint256(decimals)).div(oneEtherInUsd);
    |        return tknValue;
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(591)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenSale':
    |        require( msg.value > 0 );
    |		
  > |		uint256 remainingTokens = tokenContract.balanceOf(this);
    |        require( remainingTokens > 0 ); // Check if there are any remaining tokens 
    |        _;
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(601)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenSale':
    |        
    |        
  > |        uint256 remainingTokens = tokenContract.balanceOf(this);
    |        if ( _remainingTokens < remainingTokens ) {
    |            remainingTokens = _remainingTokens;
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(620)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenSale':
    |            forward(msg.value-refund);
    |			remainingTokens = 0; // set remaining token to 0
  > |             _buyer.transfer(refund);
    |        } else {
    |			remainingTokens = remainingTokens.sub(tokenAmount); // update remaining token without bonus
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(630)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenSale':
    |        }
    |        
  > |        tokenContract.transfer(_buyer, tokenAmount);
    |        emit Buy(_buyer, tokenAmount, _ambassador);
    |		
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(636)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenSale':
    |        uint256 advisorAmount = _amount.mul(advisorFee).div(10**3);
    |        uint256 walletAmount = _amount - advisorAmount;
  > |        advisor.transfer(advisorAmount);
    |        wallet.transfer(walletAmount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(645)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenSale':
    |        uint256 walletAmount = _amount - advisorAmount;
    |        advisor.transfer(advisorAmount);
  > |        wallet.transfer(walletAmount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(646)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenSale':
    |
    |    function withdraw(address to, uint256 value) public onlyOwner {
  > |        to.transfer(value);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(665)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenSale':
    |    
    |    function withdrawTokens(address to, uint256 value) public onlyOwner returns (bool) {
  > |        return tokenContract.transfer(to, value);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(669)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenSale':
    |	
    |	function claim(address _buyer, uint256 _amount) onlyRC public returns(bool) {
  > |        return tokenContract.transfer(_buyer, _amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(693)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenSale':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenSale':
    |        require(tx.origin == owner);
    |        
  > |        rc[ msg.sender ]  = true;
    |        
    |        emit NewRC(msg.sender);
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(654)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenSale':
    |    
    |    function setTime(uint256 _newStart, uint256 _newEnd) public onlyOwner {
  > |        if ( _newStart != 0 ) startTime = _newStart;
    |        if ( _newEnd != 0 ) endTime = _newEnd;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(660)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenSale':
    |    function setTime(uint256 _newStart, uint256 _newEnd) public onlyOwner {
    |        if ( _newStart != 0 ) startTime = _newStart;
  > |        if ( _newEnd != 0 ) endTime = _newEnd;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(661)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenSale':
    |    
    |    function setTokenContract(address _tokenContract) public onlyOwner {
  > |        tokenContract = tokenInterface(_tokenContract);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(673)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenSale':
    |
    |    function setWalletAddress(address _wallet) public onlyOwner {
  > |        wallet = _wallet;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(677)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenSale':
    |    
    |    function setAdvisorAddress(address _advisor) public onlyOwner {
  > |            advisor = _advisor;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(681)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenSale':
    |    
    |    function setAdvisorFee(uint256 _advisorFee) public onlyOwner {
  > |            advisorFee = _advisorFee;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(685)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenSale':
    |    
    |    function setRateContract(address _rateAddress) public onlyOwner {
  > |        rateContract = rateInterface(_rateAddress);
    |    }
    |	
  at /home/jiaming/mavs_srcs/contract@0x07c1c8c2bce6290daa554118b7d208041615ce54.sol(689)


