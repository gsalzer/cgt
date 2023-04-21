Processing contract: /home/jiaming/mavs_srcs/contract@0xc26677571d41ff2cffc1775f259e54827a1e162b.sol:CardSale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc26677571d41ff2cffc1775f259e54827a1e162b.sol:Ownable
Processing contract: /home/jiaming/mavs_srcs/contract@0xc26677571d41ff2cffc1775f259e54827a1e162b.sol:RC
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc26677571d41ff2cffc1775f259e54827a1e162b.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc26677571d41ff2cffc1775f259e54827a1e162b.sol:TokenSale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc26677571d41ff2cffc1775f259e54827a1e162b.sol:rateInterface
Processing contract: /home/jiaming/mavs_srcs/contract@0xc26677571d41ff2cffc1775f259e54827a1e162b.sol:tokenInterface
[31mViolation[0m for DAO in contract 'CardSale':
    |    
    |    function buyFromRC(address _buyer, uint256 _rcTokenValue, uint256 ) onlyRC public payable returns(uint256) {
  > |        uint256 tokenAmount = tokenSaleContract.buyFromRC.value(msg.value)(_buyer, _rcTokenValue, remainingTokens);
    |        remainingTokens = remainingTokens.sub(tokenAmount);
    |        soldTokens = soldTokens.add(tokenAmount);
  at /home/jiaming/mavs_srcs/contract@0xc26677571d41ff2cffc1775f259e54827a1e162b.sol(224)

[33mWarning[0m for LockedEther in contract 'CardSale':
    |}
    |
  > |contract CardSale {
    |    using SafeMath for uint256;
    |    TokenSale tokenSaleContract;
  at /home/jiaming/mavs_srcs/contract@0xc26677571d41ff2cffc1775f259e54827a1e162b.sol(147)

[33mWarning[0m for TODAmount in contract 'CardSale':
    |    
    |    function buyFromRC(address _buyer, uint256 _rcTokenValue, uint256 ) onlyRC public payable returns(uint256) {
  > |        uint256 tokenAmount = tokenSaleContract.buyFromRC.value(msg.value)(_buyer, _rcTokenValue, remainingTokens);
    |        remainingTokens = remainingTokens.sub(tokenAmount);
    |        soldTokens = soldTokens.add(tokenAmount);
  at /home/jiaming/mavs_srcs/contract@0xc26677571d41ff2cffc1775f259e54827a1e162b.sol(224)

[33mWarning[0m for TODReceiver in contract 'CardSale':
    |    
    |    function buyFromRC(address _buyer, uint256 _rcTokenValue, uint256 ) onlyRC public payable returns(uint256) {
  > |        uint256 tokenAmount = tokenSaleContract.buyFromRC.value(msg.value)(_buyer, _rcTokenValue, remainingTokens);
    |        remainingTokens = remainingTokens.sub(tokenAmount);
    |        soldTokens = soldTokens.add(tokenAmount);
  at /home/jiaming/mavs_srcs/contract@0xc26677571d41ff2cffc1775f259e54827a1e162b.sol(224)

[33mWarning[0m for UnhandledException in contract 'CardSale':
    |
    |    function owner() view public returns (address) {
  > |        return tokenSaleContract.owner();
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xc26677571d41ff2cffc1775f259e54827a1e162b.sol(187)

[33mWarning[0m for UnhandledException in contract 'CardSale':
    |    
    |    function buyFromRC(address _buyer, uint256 _rcTokenValue, uint256 ) onlyRC public payable returns(uint256) {
  > |        uint256 tokenAmount = tokenSaleContract.buyFromRC.value(msg.value)(_buyer, _rcTokenValue, remainingTokens);
    |        remainingTokens = remainingTokens.sub(tokenAmount);
    |        soldTokens = soldTokens.add(tokenAmount);
  at /home/jiaming/mavs_srcs/contract@0xc26677571d41ff2cffc1775f259e54827a1e162b.sol(224)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CardSale':
    |
    |    function owner() view public returns (address) {
  > |        return tokenSaleContract.owner();
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xc26677571d41ff2cffc1775f259e54827a1e162b.sol(187)

[31mViolation[0m for UnrestrictedWrite in contract 'CardSale':
    |    function buyFromRC(address _buyer, uint256 _rcTokenValue, uint256 ) onlyRC public payable returns(uint256) {
    |        uint256 tokenAmount = tokenSaleContract.buyFromRC.value(msg.value)(_buyer, _rcTokenValue, remainingTokens);
  > |        remainingTokens = remainingTokens.sub(tokenAmount);
    |        soldTokens = soldTokens.add(tokenAmount);
    |        return tokenAmount;
  at /home/jiaming/mavs_srcs/contract@0xc26677571d41ff2cffc1775f259e54827a1e162b.sol(225)

[31mViolation[0m for UnrestrictedWrite in contract 'CardSale':
    |        uint256 tokenAmount = tokenSaleContract.buyFromRC.value(msg.value)(_buyer, _rcTokenValue, remainingTokens);
    |        remainingTokens = remainingTokens.sub(tokenAmount);
  > |        soldTokens = soldTokens.add(tokenAmount);
    |        return tokenAmount;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc26677571d41ff2cffc1775f259e54827a1e162b.sol(226)

[33mWarning[0m for UnrestrictedWrite in contract 'CardSale':
    |        require(tx.origin == owner() );
    |        
  > |        rc[ msg.sender ]  = true;
    |        
    |        NewRC(msg.sender);
  at /home/jiaming/mavs_srcs/contract@0xc26677571d41ff2cffc1775f259e54827a1e162b.sol(205)

[33mWarning[0m for UnrestrictedWrite in contract 'CardSale':
    |    
    |    function setTime(uint256 _newStart, uint256 _newEnd) public onlyTokenSaleOwner {
  > |        if ( _newStart != 0 ) startTime = _newStart;
    |        if ( _newEnd != 0 ) endTime = _newEnd;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc26677571d41ff2cffc1775f259e54827a1e162b.sol(196)

[33mWarning[0m for UnrestrictedWrite in contract 'CardSale':
    |    function setTime(uint256 _newStart, uint256 _newEnd) public onlyTokenSaleOwner {
    |        if ( _newStart != 0 ) startTime = _newStart;
  > |        if ( _newEnd != 0 ) endTime = _newEnd;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xc26677571d41ff2cffc1775f259e54827a1e162b.sol(197)

[31mViolation[0m for DAO in contract 'RC':
    |        require( remainingTokens > 0 );
    |        
  > |        uint256 tokenAmount = tokenSaleContract.buyFromRC.value(msg.value)(msg.sender, oneTokenInUsdWei, remainingTokens);
    |        
    |        remainingTokens = remainingTokens.sub(tokenAmount);
  at /home/jiaming/mavs_srcs/contract@0xc26677571d41ff2cffc1775f259e54827a1e162b.sol(138)

[33mWarning[0m for LockedEther in contract 'RC':
    |}
    |
  > |contract RC {
    |    using SafeMath for uint256;
    |    TokenSale tokenSaleContract;
  at /home/jiaming/mavs_srcs/contract@0xc26677571d41ff2cffc1775f259e54827a1e162b.sol(80)

[33mWarning[0m for TODAmount in contract 'RC':
    |        require( remainingTokens > 0 );
    |        
  > |        uint256 tokenAmount = tokenSaleContract.buyFromRC.value(msg.value)(msg.sender, oneTokenInUsdWei, remainingTokens);
    |        
    |        remainingTokens = remainingTokens.sub(tokenAmount);
  at /home/jiaming/mavs_srcs/contract@0xc26677571d41ff2cffc1775f259e54827a1e162b.sol(138)

[33mWarning[0m for TODReceiver in contract 'RC':
    |        require( remainingTokens > 0 );
    |        
  > |        uint256 tokenAmount = tokenSaleContract.buyFromRC.value(msg.value)(msg.sender, oneTokenInUsdWei, remainingTokens);
    |        
    |        remainingTokens = remainingTokens.sub(tokenAmount);
  at /home/jiaming/mavs_srcs/contract@0xc26677571d41ff2cffc1775f259e54827a1e162b.sol(138)

[33mWarning[0m for UnhandledException in contract 'RC':
    |    
    |    modifier onlyTokenSaleOwner() {
  > |        require(msg.sender == tokenSaleContract.owner() );
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc26677571d41ff2cffc1775f259e54827a1e162b.sol(121)

[33mWarning[0m for UnhandledException in contract 'RC':
    |        require( remainingTokens > 0 );
    |        
  > |        uint256 tokenAmount = tokenSaleContract.buyFromRC.value(msg.value)(msg.sender, oneTokenInUsdWei, remainingTokens);
    |        
    |        remainingTokens = remainingTokens.sub(tokenAmount);
  at /home/jiaming/mavs_srcs/contract@0xc26677571d41ff2cffc1775f259e54827a1e162b.sol(138)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RC':
    |    
    |    modifier onlyTokenSaleOwner() {
  > |        require(msg.sender == tokenSaleContract.owner() );
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc26677571d41ff2cffc1775f259e54827a1e162b.sol(121)

[31mViolation[0m for UnrestrictedWrite in contract 'RC':
    |        uint256 tokenAmount = tokenSaleContract.buyFromRC.value(msg.value)(msg.sender, oneTokenInUsdWei, remainingTokens);
    |        
  > |        remainingTokens = remainingTokens.sub(tokenAmount);
    |        soldTokens = soldTokens.add(tokenAmount);
    |        
  at /home/jiaming/mavs_srcs/contract@0xc26677571d41ff2cffc1775f259e54827a1e162b.sol(140)

[31mViolation[0m for UnrestrictedWrite in contract 'RC':
    |        
    |        remainingTokens = remainingTokens.sub(tokenAmount);
  > |        soldTokens = soldTokens.add(tokenAmount);
    |        
    |        BuyRC( msg.sender, msg.data, msg.value, tokenAmount, oneTokenInUsdWei );
  at /home/jiaming/mavs_srcs/contract@0xc26677571d41ff2cffc1775f259e54827a1e162b.sol(141)

[33mWarning[0m for UnrestrictedWrite in contract 'RC':
    |    
    |    function setTime(uint256 _newStart, uint256 _newEnd) public onlyTokenSaleOwner {
  > |        if ( _newStart != 0 ) startTime = _newStart;
    |        if ( _newEnd != 0 ) endTime = _newEnd;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc26677571d41ff2cffc1775f259e54827a1e162b.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'RC':
    |    function setTime(uint256 _newStart, uint256 _newEnd) public onlyTokenSaleOwner {
    |        if ( _newStart != 0 ) startTime = _newStart;
  > |        if ( _newEnd != 0 ) endTime = _newEnd;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xc26677571d41ff2cffc1775f259e54827a1e162b.sol(127)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xc26677571d41ff2cffc1775f259e54827a1e162b.sol(7)

[33mWarning[0m for DAOConstantGas in contract 'TokenSale':
    |            forward(msg.value-refund);
    |			remainingTokens = 0; // set remaining token to 0
  > |             _buyer.transfer(refund);
    |        } else {
    |			remainingTokens = remainingTokens.sub(tokenAmount); // update remaining token without bonus
  at /home/jiaming/mavs_srcs/contract@0xc26677571d41ff2cffc1775f259e54827a1e162b.sol(297)

[33mWarning[0m for DAOConstantGas in contract 'TokenSale':
    |        uint256 advisorAmount = _amount.mul(advisorFee).div(10**3);
    |        uint256 walletAmount = _amount - advisorAmount;
  > |        advisor.transfer(advisorAmount);
    |        wallet.transfer(walletAmount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc26677571d41ff2cffc1775f259e54827a1e162b.sol(312)

[33mWarning[0m for DAOConstantGas in contract 'TokenSale':
    |        uint256 walletAmount = _amount - advisorAmount;
    |        advisor.transfer(advisorAmount);
  > |        wallet.transfer(walletAmount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc26677571d41ff2cffc1775f259e54827a1e162b.sol(313)

[33mWarning[0m for DAOConstantGas in contract 'TokenSale':
    |
    |    function withdraw(address to, uint256 value) public onlyOwner {
  > |        to.transfer(value);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xc26677571d41ff2cffc1775f259e54827a1e162b.sol(332)

[33mWarning[0m for LockedEther in contract 'TokenSale':
    |}
    |
  > |contract TokenSale is Ownable {
    |    using SafeMath for uint256;
    |    tokenInterface public tokenContract;
  at /home/jiaming/mavs_srcs/contract@0xc26677571d41ff2cffc1775f259e54827a1e162b.sol(231)

[33mWarning[0m for TODAmount in contract 'TokenSale':
    |
    |    function withdraw(address to, uint256 value) public onlyOwner {
  > |        to.transfer(value);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xc26677571d41ff2cffc1775f259e54827a1e162b.sol(332)

[33mWarning[0m for TODAmount in contract 'TokenSale':
    |            forward(msg.value-refund);
    |			remainingTokens = 0; // set remaining token to 0
  > |             _buyer.transfer(refund);
    |        } else {
    |			remainingTokens = remainingTokens.sub(tokenAmount); // update remaining token without bonus
  at /home/jiaming/mavs_srcs/contract@0xc26677571d41ff2cffc1775f259e54827a1e162b.sol(297)

[33mWarning[0m for TODAmount in contract 'TokenSale':
    |        uint256 advisorAmount = _amount.mul(advisorFee).div(10**3);
    |        uint256 walletAmount = _amount - advisorAmount;
  > |        advisor.transfer(advisorAmount);
    |        wallet.transfer(walletAmount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc26677571d41ff2cffc1775f259e54827a1e162b.sol(312)

[33mWarning[0m for TODAmount in contract 'TokenSale':
    |        uint256 walletAmount = _amount - advisorAmount;
    |        advisor.transfer(advisorAmount);
  > |        wallet.transfer(walletAmount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc26677571d41ff2cffc1775f259e54827a1e162b.sol(313)

[31mViolation[0m for TODReceiver in contract 'TokenSale':
    |        uint256 advisorAmount = _amount.mul(advisorFee).div(10**3);
    |        uint256 walletAmount = _amount - advisorAmount;
  > |        advisor.transfer(advisorAmount);
    |        wallet.transfer(walletAmount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc26677571d41ff2cffc1775f259e54827a1e162b.sol(312)

[31mViolation[0m for TODReceiver in contract 'TokenSale':
    |        uint256 walletAmount = _amount - advisorAmount;
    |        advisor.transfer(advisorAmount);
  > |        wallet.transfer(walletAmount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc26677571d41ff2cffc1775f259e54827a1e162b.sol(313)

[33mWarning[0m for TODReceiver in contract 'TokenSale':
    |
    |    function withdraw(address to, uint256 value) public onlyOwner {
  > |        to.transfer(value);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xc26677571d41ff2cffc1775f259e54827a1e162b.sol(332)

[33mWarning[0m for TODReceiver in contract 'TokenSale':
    |            forward(msg.value-refund);
    |			remainingTokens = 0; // set remaining token to 0
  > |             _buyer.transfer(refund);
    |        } else {
    |			remainingTokens = remainingTokens.sub(tokenAmount); // update remaining token without bonus
  at /home/jiaming/mavs_srcs/contract@0xc26677571d41ff2cffc1775f259e54827a1e162b.sol(297)

[33mWarning[0m for UnhandledException in contract 'TokenSale':
    |    
    |    function tokenValueInEther(uint256 _oneTokenInUsdWei) public view returns(uint256 tknValue) {
  > |        uint256 oneEtherInUsd = rateContract.readRate("usd");
    |        tknValue = _oneTokenInUsdWei.mul(10 ** uint256(decimals)).div(oneEtherInUsd);
    |        return tknValue;
  at /home/jiaming/mavs_srcs/contract@0xc26677571d41ff2cffc1775f259e54827a1e162b.sol(258)

[33mWarning[0m for UnhandledException in contract 'TokenSale':
    |        require( msg.value > 0 );
    |		
  > |		uint256 remainingTokens = tokenContract.balanceOf(this);
    |        require( remainingTokens > 0 ); // Check if there are any remaining tokens 
    |        _;
  at /home/jiaming/mavs_srcs/contract@0xc26677571d41ff2cffc1775f259e54827a1e162b.sol(268)

[33mWarning[0m for UnhandledException in contract 'TokenSale':
    |        
    |        
  > |        uint256 remainingTokens = tokenContract.balanceOf(this);
    |        if ( _remainingTokens < remainingTokens ) {
    |            remainingTokens = _remainingTokens;
  at /home/jiaming/mavs_srcs/contract@0xc26677571d41ff2cffc1775f259e54827a1e162b.sol(287)

[33mWarning[0m for UnhandledException in contract 'TokenSale':
    |            forward(msg.value-refund);
    |			remainingTokens = 0; // set remaining token to 0
  > |             _buyer.transfer(refund);
    |        } else {
    |			remainingTokens = remainingTokens.sub(tokenAmount); // update remaining token without bonus
  at /home/jiaming/mavs_srcs/contract@0xc26677571d41ff2cffc1775f259e54827a1e162b.sol(297)

[33mWarning[0m for UnhandledException in contract 'TokenSale':
    |        }
    |        
  > |        tokenContract.transfer(_buyer, tokenAmount);
    |        Buy(_buyer, tokenAmount, _ambassador);
    |		
  at /home/jiaming/mavs_srcs/contract@0xc26677571d41ff2cffc1775f259e54827a1e162b.sol(303)

[33mWarning[0m for UnhandledException in contract 'TokenSale':
    |        uint256 advisorAmount = _amount.mul(advisorFee).div(10**3);
    |        uint256 walletAmount = _amount - advisorAmount;
  > |        advisor.transfer(advisorAmount);
    |        wallet.transfer(walletAmount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc26677571d41ff2cffc1775f259e54827a1e162b.sol(312)

[33mWarning[0m for UnhandledException in contract 'TokenSale':
    |        uint256 walletAmount = _amount - advisorAmount;
    |        advisor.transfer(advisorAmount);
  > |        wallet.transfer(walletAmount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc26677571d41ff2cffc1775f259e54827a1e162b.sol(313)

[33mWarning[0m for UnhandledException in contract 'TokenSale':
    |
    |    function withdraw(address to, uint256 value) public onlyOwner {
  > |        to.transfer(value);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xc26677571d41ff2cffc1775f259e54827a1e162b.sol(332)

[33mWarning[0m for UnhandledException in contract 'TokenSale':
    |    
    |    function withdrawTokens(address to, uint256 value) public onlyOwner returns (bool) {
  > |        return tokenContract.transfer(to, value);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xc26677571d41ff2cffc1775f259e54827a1e162b.sol(336)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenSale':
    |    
    |    function tokenValueInEther(uint256 _oneTokenInUsdWei) public view returns(uint256 tknValue) {
  > |        uint256 oneEtherInUsd = rateContract.readRate("usd");
    |        tknValue = _oneTokenInUsdWei.mul(10 ** uint256(decimals)).div(oneEtherInUsd);
    |        return tknValue;
  at /home/jiaming/mavs_srcs/contract@0xc26677571d41ff2cffc1775f259e54827a1e162b.sol(258)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenSale':
    |        require( msg.value > 0 );
    |		
  > |		uint256 remainingTokens = tokenContract.balanceOf(this);
    |        require( remainingTokens > 0 ); // Check if there are any remaining tokens 
    |        _;
  at /home/jiaming/mavs_srcs/contract@0xc26677571d41ff2cffc1775f259e54827a1e162b.sol(268)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenSale':
    |        
    |        
  > |        uint256 remainingTokens = tokenContract.balanceOf(this);
    |        if ( _remainingTokens < remainingTokens ) {
    |            remainingTokens = _remainingTokens;
  at /home/jiaming/mavs_srcs/contract@0xc26677571d41ff2cffc1775f259e54827a1e162b.sol(287)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenSale':
    |            forward(msg.value-refund);
    |			remainingTokens = 0; // set remaining token to 0
  > |             _buyer.transfer(refund);
    |        } else {
    |			remainingTokens = remainingTokens.sub(tokenAmount); // update remaining token without bonus
  at /home/jiaming/mavs_srcs/contract@0xc26677571d41ff2cffc1775f259e54827a1e162b.sol(297)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenSale':
    |        }
    |        
  > |        tokenContract.transfer(_buyer, tokenAmount);
    |        Buy(_buyer, tokenAmount, _ambassador);
    |		
  at /home/jiaming/mavs_srcs/contract@0xc26677571d41ff2cffc1775f259e54827a1e162b.sol(303)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenSale':
    |        uint256 advisorAmount = _amount.mul(advisorFee).div(10**3);
    |        uint256 walletAmount = _amount - advisorAmount;
  > |        advisor.transfer(advisorAmount);
    |        wallet.transfer(walletAmount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc26677571d41ff2cffc1775f259e54827a1e162b.sol(312)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenSale':
    |        uint256 walletAmount = _amount - advisorAmount;
    |        advisor.transfer(advisorAmount);
  > |        wallet.transfer(walletAmount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc26677571d41ff2cffc1775f259e54827a1e162b.sol(313)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenSale':
    |
    |    function withdraw(address to, uint256 value) public onlyOwner {
  > |        to.transfer(value);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xc26677571d41ff2cffc1775f259e54827a1e162b.sol(332)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenSale':
    |    
    |    function withdrawTokens(address to, uint256 value) public onlyOwner returns (bool) {
  > |        return tokenContract.transfer(to, value);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xc26677571d41ff2cffc1775f259e54827a1e162b.sol(336)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenSale':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xc26677571d41ff2cffc1775f259e54827a1e162b.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenSale':
    |        require(tx.origin == owner);
    |        
  > |        rc[ msg.sender ]  = true;
    |        
    |        NewRC(msg.sender);
  at /home/jiaming/mavs_srcs/contract@0xc26677571d41ff2cffc1775f259e54827a1e162b.sol(321)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenSale':
    |    
    |    function setTime(uint256 _newStart, uint256 _newEnd) public onlyOwner {
  > |        if ( _newStart != 0 ) startTime = _newStart;
    |        if ( _newEnd != 0 ) endTime = _newEnd;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc26677571d41ff2cffc1775f259e54827a1e162b.sol(327)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenSale':
    |    function setTime(uint256 _newStart, uint256 _newEnd) public onlyOwner {
    |        if ( _newStart != 0 ) startTime = _newStart;
  > |        if ( _newEnd != 0 ) endTime = _newEnd;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc26677571d41ff2cffc1775f259e54827a1e162b.sol(328)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenSale':
    |    
    |    function setTokenContract(address _tokenContract) public onlyOwner {
  > |        tokenContract = tokenInterface(_tokenContract);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc26677571d41ff2cffc1775f259e54827a1e162b.sol(340)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenSale':
    |
    |    function setWalletAddress(address _wallet) public onlyOwner {
  > |        wallet = _wallet;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xc26677571d41ff2cffc1775f259e54827a1e162b.sol(344)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenSale':
    |    
    |    function setAdvisorAddress(address _advisor) public onlyOwner {
  > |            advisor = _advisor;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xc26677571d41ff2cffc1775f259e54827a1e162b.sol(348)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenSale':
    |    
    |    function setAdvisorFee(uint256 _advisorFee) public onlyOwner {
  > |            advisorFee = _advisorFee;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xc26677571d41ff2cffc1775f259e54827a1e162b.sol(352)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenSale':
    |    
    |    function setRateContract(address _rateAddress) public onlyOwner {
  > |        rateContract = rateInterface(_rateAddress);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc26677571d41ff2cffc1775f259e54827a1e162b.sol(356)


