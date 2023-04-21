Processing contract: /home/jiaming/mavs_srcs/contract@0x2df5c5eb37fba9b386cf0b39e6b209687ca67559.sol:ERC721Receiver
Processing contract: /home/jiaming/mavs_srcs/contract@0x2df5c5eb37fba9b386cf0b39e6b209687ca67559.sol:PixelConMarket
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2df5c5eb37fba9b386cf0b39e6b209687ca67559.sol:PixelCons
[33mWarning[0m for DAOConstantGas in contract 'PixelConMarket':
    |	function adminWithdraw(address _to) public onlyAdmin validAddress(_to) 
    |	{
  > |		_to.transfer(address(this).balance);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x2df5c5eb37fba9b386cf0b39e6b209687ca67559.sol(216)

[33mWarning[0m for DAOConstantGas in contract 'PixelConMarket':
    |		//transfer pixelcon to buyer and value to seller
    |		pixelconsContract.transferFrom(address(this), _to, tokenId);
  > |		seller.transfer(currPrice);
    |		emit Purchase(_pixelconIndex, msg.sender, currPrice);
    |	}
  at /home/jiaming/mavs_srcs/contract@0x2df5c5eb37fba9b386cf0b39e6b209687ca67559.sol(397)

[33mWarning[0m for LockedEther in contract 'PixelConMarket':
    | * @author PixelCons
    | */
  > |contract PixelConMarket is ERC721Receiver {
    |
    |	/** @dev Different contract lock states */
  at /home/jiaming/mavs_srcs/contract@0x2df5c5eb37fba9b386cf0b39e6b209687ca67559.sol(43)

[31mViolation[0m for TODAmount in contract 'PixelConMarket':
    |	function adminWithdraw(address _to) public onlyAdmin validAddress(_to) 
    |	{
  > |		_to.transfer(address(this).balance);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x2df5c5eb37fba9b386cf0b39e6b209687ca67559.sol(216)

[33mWarning[0m for TODAmount in contract 'PixelConMarket':
    |		//transfer pixelcon to buyer and value to seller
    |		pixelconsContract.transferFrom(address(this), _to, tokenId);
  > |		seller.transfer(currPrice);
    |		emit Purchase(_pixelconIndex, msg.sender, currPrice);
    |	}
  at /home/jiaming/mavs_srcs/contract@0x2df5c5eb37fba9b386cf0b39e6b209687ca67559.sol(397)

[33mWarning[0m for TODReceiver in contract 'PixelConMarket':
    |	function adminWithdraw(address _to) public onlyAdmin validAddress(_to) 
    |	{
  > |		_to.transfer(address(this).balance);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x2df5c5eb37fba9b386cf0b39e6b209687ca67559.sol(216)

[33mWarning[0m for UnhandledException in contract 'PixelConMarket':
    |	function adminWithdraw(address _to) public onlyAdmin validAddress(_to) 
    |	{
  > |		_to.transfer(address(this).balance);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x2df5c5eb37fba9b386cf0b39e6b209687ca67559.sol(216)

[33mWarning[0m for UnhandledException in contract 'PixelConMarket':
    |
    |		//get pixelcon index
  > |		uint64 pixelconIndex = pixelconsContract.getTokenIndex(_tokenId);
    |
    |		//create the listing object
  at /home/jiaming/mavs_srcs/contract@0x2df5c5eb37fba9b386cf0b39e6b209687ca67559.sol(281)

[33mWarning[0m for UnhandledException in contract 'PixelConMarket':
    |
    |		//get data
  > |		uint256 tokenId = pixelconsContract.tokenByIndex(_pixelconIndex);
    |		address seller = listing.seller;
    |
  at /home/jiaming/mavs_srcs/contract@0x2df5c5eb37fba9b386cf0b39e6b209687ca67559.sol(359)

[33mWarning[0m for UnhandledException in contract 'PixelConMarket':
    |
    |		//transfer pixelcon back to seller
  > |		pixelconsContract.transferFrom(address(this), seller, tokenId);
    |		emit Remove(_pixelconIndex, msg.sender);
    |	}
  at /home/jiaming/mavs_srcs/contract@0x2df5c5eb37fba9b386cf0b39e6b209687ca67559.sol(366)

[33mWarning[0m for UnhandledException in contract 'PixelConMarket':
    |
    |		//get data
  > |		uint256 tokenId = pixelconsContract.tokenByIndex(_pixelconIndex);
    |		address seller = listing.seller;
    |
  at /home/jiaming/mavs_srcs/contract@0x2df5c5eb37fba9b386cf0b39e6b209687ca67559.sol(389)

[33mWarning[0m for UnhandledException in contract 'PixelConMarket':
    |
    |		//transfer pixelcon to buyer and value to seller
  > |		pixelconsContract.transferFrom(address(this), _to, tokenId);
    |		seller.transfer(currPrice);
    |		emit Purchase(_pixelconIndex, msg.sender, currPrice);
  at /home/jiaming/mavs_srcs/contract@0x2df5c5eb37fba9b386cf0b39e6b209687ca67559.sol(396)

[33mWarning[0m for UnhandledException in contract 'PixelConMarket':
    |		//transfer pixelcon to buyer and value to seller
    |		pixelconsContract.transferFrom(address(this), _to, tokenId);
  > |		seller.transfer(currPrice);
    |		emit Purchase(_pixelconIndex, msg.sender, currPrice);
    |	}
  at /home/jiaming/mavs_srcs/contract@0x2df5c5eb37fba9b386cf0b39e6b209687ca67559.sol(397)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PixelConMarket':
    |	function adminWithdraw(address _to) public onlyAdmin validAddress(_to) 
    |	{
  > |		_to.transfer(address(this).balance);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x2df5c5eb37fba9b386cf0b39e6b209687ca67559.sol(216)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PixelConMarket':
    |
    |		//get pixelcon index
  > |		uint64 pixelconIndex = pixelconsContract.getTokenIndex(_tokenId);
    |
    |		//create the listing object
  at /home/jiaming/mavs_srcs/contract@0x2df5c5eb37fba9b386cf0b39e6b209687ca67559.sol(281)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PixelConMarket':
    |
    |		//get data
  > |		uint256 tokenId = pixelconsContract.tokenByIndex(_pixelconIndex);
    |		address seller = listing.seller;
    |
  at /home/jiaming/mavs_srcs/contract@0x2df5c5eb37fba9b386cf0b39e6b209687ca67559.sol(359)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PixelConMarket':
    |
    |		//transfer pixelcon back to seller
  > |		pixelconsContract.transferFrom(address(this), seller, tokenId);
    |		emit Remove(_pixelconIndex, msg.sender);
    |	}
  at /home/jiaming/mavs_srcs/contract@0x2df5c5eb37fba9b386cf0b39e6b209687ca67559.sol(366)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PixelConMarket':
    |
    |		//get data
  > |		uint256 tokenId = pixelconsContract.tokenByIndex(_pixelconIndex);
    |		address seller = listing.seller;
    |
  at /home/jiaming/mavs_srcs/contract@0x2df5c5eb37fba9b386cf0b39e6b209687ca67559.sol(389)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PixelConMarket':
    |
    |		//transfer pixelcon to buyer and value to seller
  > |		pixelconsContract.transferFrom(address(this), _to, tokenId);
    |		seller.transfer(currPrice);
    |		emit Purchase(_pixelconIndex, msg.sender, currPrice);
  at /home/jiaming/mavs_srcs/contract@0x2df5c5eb37fba9b386cf0b39e6b209687ca67559.sol(396)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PixelConMarket':
    |		//transfer pixelcon to buyer and value to seller
    |		pixelconsContract.transferFrom(address(this), _to, tokenId);
  > |		seller.transfer(currPrice);
    |		emit Purchase(_pixelconIndex, msg.sender, currPrice);
    |	}
  at /home/jiaming/mavs_srcs/contract@0x2df5c5eb37fba9b386cf0b39e6b209687ca67559.sol(397)

[33mWarning[0m for UnrestrictedWrite in contract 'PixelConMarket':
    | * @author PixelCons
    | */
  > |contract PixelConMarket is ERC721Receiver {
    |
    |	/** @dev Different contract lock states */
  at /home/jiaming/mavs_srcs/contract@0x2df5c5eb37fba9b386cf0b39e6b209687ca67559.sol(43)

[33mWarning[0m for UnrestrictedWrite in contract 'PixelConMarket':
    |		//create the listing object
    |		Listing storage listing = marketPixelconListings[pixelconIndex];
  > |		listing.startAmount = uint64(_startPrice);
    |		listing.endAmount = uint64(_endPrice);
    |		listing.startDate = uint64(startDate);
  at /home/jiaming/mavs_srcs/contract@0x2df5c5eb37fba9b386cf0b39e6b209687ca67559.sol(285)

[33mWarning[0m for UnrestrictedWrite in contract 'PixelConMarket':
    |		Listing storage listing = marketPixelconListings[pixelconIndex];
    |		listing.startAmount = uint64(_startPrice);
  > |		listing.endAmount = uint64(_endPrice);
    |		listing.startDate = uint64(startDate);
    |		listing.duration = uint64(_duration);
  at /home/jiaming/mavs_srcs/contract@0x2df5c5eb37fba9b386cf0b39e6b209687ca67559.sol(286)

[33mWarning[0m for UnrestrictedWrite in contract 'PixelConMarket':
    |		listing.startAmount = uint64(_startPrice);
    |		listing.endAmount = uint64(_endPrice);
  > |		listing.startDate = uint64(startDate);
    |		listing.duration = uint64(_duration);
    |		listing.seller = _seller;
  at /home/jiaming/mavs_srcs/contract@0x2df5c5eb37fba9b386cf0b39e6b209687ca67559.sol(287)

[33mWarning[0m for UnrestrictedWrite in contract 'PixelConMarket':
    |		listing.endAmount = uint64(_endPrice);
    |		listing.startDate = uint64(startDate);
  > |		listing.duration = uint64(_duration);
    |		listing.seller = _seller;
    |
  at /home/jiaming/mavs_srcs/contract@0x2df5c5eb37fba9b386cf0b39e6b209687ca67559.sol(288)

[33mWarning[0m for UnrestrictedWrite in contract 'PixelConMarket':
    |		listing.startDate = uint64(startDate);
    |		listing.duration = uint64(_duration);
  > |		listing.seller = _seller;
    |
    |		//store references
  at /home/jiaming/mavs_srcs/contract@0x2df5c5eb37fba9b386cf0b39e6b209687ca67559.sol(289)

[33mWarning[0m for UnrestrictedWrite in contract 'PixelConMarket':
    |		require(sellerTokensIndex < uint256(2 ** 32 - 1), "Max number of market listings has been exceeded for seller");
    |		require(forSaleIndex < uint256(2 ** 64 - 1), "Max number of market listings has been exceeded");
  > |		listing.sellerIndex = uint32(sellerTokensIndex);
    |		listing.forSaleIndex = uint64(forSaleIndex);
    |		sellerTokens.length++;
  at /home/jiaming/mavs_srcs/contract@0x2df5c5eb37fba9b386cf0b39e6b209687ca67559.sol(297)

[33mWarning[0m for UnrestrictedWrite in contract 'PixelConMarket':
    |		require(forSaleIndex < uint256(2 ** 64 - 1), "Max number of market listings has been exceeded");
    |		listing.sellerIndex = uint32(sellerTokensIndex);
  > |		listing.forSaleIndex = uint64(forSaleIndex);
    |		sellerTokens.length++;
    |		sellerTokens[sellerTokensIndex] = pixelconIndex;
  at /home/jiaming/mavs_srcs/contract@0x2df5c5eb37fba9b386cf0b39e6b209687ca67559.sol(298)

[33mWarning[0m for UnrestrictedWrite in contract 'PixelConMarket':
    |		listing.forSaleIndex = uint64(forSaleIndex);
    |		sellerTokens.length++;
  > |		sellerTokens[sellerTokensIndex] = pixelconIndex;
    |		forSalePixelconIndexes.length++;
    |		forSalePixelconIndexes[forSaleIndex] = pixelconIndex;
  at /home/jiaming/mavs_srcs/contract@0x2df5c5eb37fba9b386cf0b39e6b209687ca67559.sol(300)

[33mWarning[0m for UnrestrictedWrite in contract 'PixelConMarket':
    |		sellerTokens[sellerTokensIndex] = pixelconIndex;
    |		forSalePixelconIndexes.length++;
  > |		forSalePixelconIndexes[forSaleIndex] = pixelconIndex;
    |		emit Create(pixelconIndex, _seller, _startPrice, _endPrice, uint64(_duration));
    |	}
  at /home/jiaming/mavs_srcs/contract@0x2df5c5eb37fba9b386cf0b39e6b209687ca67559.sol(302)

[33mWarning[0m for UnrestrictedWrite in contract 'PixelConMarket':
    |		uint64[] storage sellerTokens = sellerPixelconIndexes[_seller];
    |		uint64 replacementSellerTokenIndex = sellerTokens[sellerTokens.length - 1];
  > |		delete sellerTokens[sellerTokens.length - 1];
    |		sellerTokens.length--;
    |		if (listing.sellerIndex < sellerTokens.length) {
  at /home/jiaming/mavs_srcs/contract@0x2df5c5eb37fba9b386cf0b39e6b209687ca67559.sol(533)

[33mWarning[0m for UnrestrictedWrite in contract 'PixelConMarket':
    |		if (listing.sellerIndex < sellerTokens.length) {
    |			//we just removed the last token index in the array, but if this wasn't the one to remove, then swap it with the one to remove 
  > |			sellerTokens[listing.sellerIndex] = replacementSellerTokenIndex;
    |			marketPixelconListings[replacementSellerTokenIndex].sellerIndex = listing.sellerIndex;
    |		}
  at /home/jiaming/mavs_srcs/contract@0x2df5c5eb37fba9b386cf0b39e6b209687ca67559.sol(537)

[33mWarning[0m for UnrestrictedWrite in contract 'PixelConMarket':
    |			//we just removed the last token index in the array, but if this wasn't the one to remove, then swap it with the one to remove 
    |			sellerTokens[listing.sellerIndex] = replacementSellerTokenIndex;
  > |			marketPixelconListings[replacementSellerTokenIndex].sellerIndex = listing.sellerIndex;
    |		}
    |
  at /home/jiaming/mavs_srcs/contract@0x2df5c5eb37fba9b386cf0b39e6b209687ca67559.sol(538)

[33mWarning[0m for UnrestrictedWrite in contract 'PixelConMarket':
    |		//clear forSalePixelconIndexes reference
    |		uint64 replacementForSaleTokenIndex = forSalePixelconIndexes[forSalePixelconIndexes.length - 1];
  > |		delete forSalePixelconIndexes[forSalePixelconIndexes.length - 1];
    |		forSalePixelconIndexes.length--;
    |		if (listing.forSaleIndex < forSalePixelconIndexes.length) {
  at /home/jiaming/mavs_srcs/contract@0x2df5c5eb37fba9b386cf0b39e6b209687ca67559.sol(543)

[33mWarning[0m for UnrestrictedWrite in contract 'PixelConMarket':
    |		if (listing.forSaleIndex < forSalePixelconIndexes.length) {
    |			//we just removed the last token index in the array, but if this wasn't the one to remove, then swap it with the one to remove 
  > |			forSalePixelconIndexes[listing.forSaleIndex] = replacementForSaleTokenIndex;
    |			marketPixelconListings[replacementForSaleTokenIndex].forSaleIndex = listing.forSaleIndex;
    |		}
  at /home/jiaming/mavs_srcs/contract@0x2df5c5eb37fba9b386cf0b39e6b209687ca67559.sol(547)

[33mWarning[0m for UnrestrictedWrite in contract 'PixelConMarket':
    |			//we just removed the last token index in the array, but if this wasn't the one to remove, then swap it with the one to remove 
    |			forSalePixelconIndexes[listing.forSaleIndex] = replacementForSaleTokenIndex;
  > |			marketPixelconListings[replacementForSaleTokenIndex].forSaleIndex = listing.forSaleIndex;
    |		}
    |
  at /home/jiaming/mavs_srcs/contract@0x2df5c5eb37fba9b386cf0b39e6b209687ca67559.sol(548)

[33mWarning[0m for UnrestrictedWrite in contract 'PixelConMarket':
    |
    |		//clear the listing object 
  > |		delete marketPixelconListings[_pixelconIndex];
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x2df5c5eb37fba9b386cf0b39e6b209687ca67559.sol(552)

[33mWarning[0m for UnrestrictedWrite in contract 'PixelConMarket':
    |	function adminChange(address _newAdmin) public onlyAdmin validAddress(_newAdmin) 
    |	{
  > |		admin = _newAdmin;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x2df5c5eb37fba9b386cf0b39e6b209687ca67559.sol(165)

[33mWarning[0m for UnrestrictedWrite in contract 'PixelConMarket':
    |	{
    |		if (_lock) {
  > |			if (_allowPurchase) systemLock = LOCK_NO_LISTING;
    |			else systemLock = LOCK_REMOVE_ONLY;
    |		} else {
  at /home/jiaming/mavs_srcs/contract@0x2df5c5eb37fba9b386cf0b39e6b209687ca67559.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'PixelConMarket':
    |		if (_lock) {
    |			if (_allowPurchase) systemLock = LOCK_NO_LISTING;
  > |			else systemLock = LOCK_REMOVE_ONLY;
    |		} else {
    |			systemLock = LOCK_NONE;
  at /home/jiaming/mavs_srcs/contract@0x2df5c5eb37fba9b386cf0b39e6b209687ca67559.sol(178)

[33mWarning[0m for UnrestrictedWrite in contract 'PixelConMarket':
    |			else systemLock = LOCK_REMOVE_ONLY;
    |		} else {
  > |			systemLock = LOCK_NONE;
    |		}
    |	}
  at /home/jiaming/mavs_srcs/contract@0x2df5c5eb37fba9b386cf0b39e6b209687ca67559.sol(180)

[33mWarning[0m for UnrestrictedWrite in contract 'PixelConMarket':
    |		uint64 _maxDuration, uint64 _minDuration, uint256 _maxPrice, uint256 _minPrice) public onlyAdmin 
    |	{
  > |		devFee = _devFee;
    |		priceUpdateInterval = _priceUpdateInterval;
    |		startDateRoundValue = _startDateRoundValue;
  at /home/jiaming/mavs_srcs/contract@0x2df5c5eb37fba9b386cf0b39e6b209687ca67559.sol(199)

[33mWarning[0m for UnrestrictedWrite in contract 'PixelConMarket':
    |	{
    |		devFee = _devFee;
  > |		priceUpdateInterval = _priceUpdateInterval;
    |		startDateRoundValue = _startDateRoundValue;
    |		durationRoundValue = _durationRoundValue;
  at /home/jiaming/mavs_srcs/contract@0x2df5c5eb37fba9b386cf0b39e6b209687ca67559.sol(200)

[33mWarning[0m for UnrestrictedWrite in contract 'PixelConMarket':
    |		devFee = _devFee;
    |		priceUpdateInterval = _priceUpdateInterval;
  > |		startDateRoundValue = _startDateRoundValue;
    |		durationRoundValue = _durationRoundValue;
    |		maxDuration = _maxDuration;
  at /home/jiaming/mavs_srcs/contract@0x2df5c5eb37fba9b386cf0b39e6b209687ca67559.sol(201)

[33mWarning[0m for UnrestrictedWrite in contract 'PixelConMarket':
    |		priceUpdateInterval = _priceUpdateInterval;
    |		startDateRoundValue = _startDateRoundValue;
  > |		durationRoundValue = _durationRoundValue;
    |		maxDuration = _maxDuration;
    |		minDuration = _minDuration;
  at /home/jiaming/mavs_srcs/contract@0x2df5c5eb37fba9b386cf0b39e6b209687ca67559.sol(202)

[33mWarning[0m for UnrestrictedWrite in contract 'PixelConMarket':
    |		startDateRoundValue = _startDateRoundValue;
    |		durationRoundValue = _durationRoundValue;
  > |		maxDuration = _maxDuration;
    |		minDuration = _minDuration;
    |		maxPrice = _maxPrice;
  at /home/jiaming/mavs_srcs/contract@0x2df5c5eb37fba9b386cf0b39e6b209687ca67559.sol(203)

[33mWarning[0m for UnrestrictedWrite in contract 'PixelConMarket':
    |		durationRoundValue = _durationRoundValue;
    |		maxDuration = _maxDuration;
  > |		minDuration = _minDuration;
    |		maxPrice = _maxPrice;
    |		minPrice = _minPrice;
  at /home/jiaming/mavs_srcs/contract@0x2df5c5eb37fba9b386cf0b39e6b209687ca67559.sol(204)

[33mWarning[0m for UnrestrictedWrite in contract 'PixelConMarket':
    |		maxDuration = _maxDuration;
    |		minDuration = _minDuration;
  > |		maxPrice = _maxPrice;
    |		minPrice = _minPrice;
    |	}
  at /home/jiaming/mavs_srcs/contract@0x2df5c5eb37fba9b386cf0b39e6b209687ca67559.sol(205)

[33mWarning[0m for UnrestrictedWrite in contract 'PixelConMarket':
    |		minDuration = _minDuration;
    |		maxPrice = _maxPrice;
  > |		minPrice = _minPrice;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x2df5c5eb37fba9b386cf0b39e6b209687ca67559.sol(206)


