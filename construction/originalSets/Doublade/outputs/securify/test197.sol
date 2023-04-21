Processing contract: /home/jiaming/mavs_srcs/contract@0x0cf5a500a615adbb12ea08d681b39186c9bde4fb.sol:CryptoSprites
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0cf5a500a615adbb12ea08d681b39186c9bde4fb.sol:ERC721
Processing contract: /home/jiaming/mavs_srcs/contract@0x0cf5a500a615adbb12ea08d681b39186c9bde4fb.sol:KittyCore
Processing contract: /home/jiaming/mavs_srcs/contract@0x0cf5a500a615adbb12ea08d681b39186c9bde4fb.sol:SaleClockAuction
[31mViolation[0m for DAOConstantGas in contract 'CryptoSprites':
    |    
    |    function withdraw() onlyOwner {
  > |        owner.transfer(etherForOwner);
    |        charityAddress.transfer(etherForCharity);
    |        etherForOwner = 0;
  at /home/jiaming/mavs_srcs/contract@0x0cf5a500a615adbb12ea08d681b39186c9bde4fb.sol(136)

[31mViolation[0m for DAOConstantGas in contract 'CryptoSprites':
    |    function withdraw() onlyOwner {
    |        owner.transfer(etherForOwner);
  > |        charityAddress.transfer(etherForCharity);
    |        etherForOwner = 0;
    |        etherForCharity = 0;
  at /home/jiaming/mavs_srcs/contract@0x0cf5a500a615adbb12ea08d681b39186c9bde4fb.sol(137)

[31mViolation[0m for DAOConstantGas in contract 'CryptoSprites':
    |            require (msg.value == broughtSprites[spriteId].price + _ownerCut + _charityCut);
    |            
  > |            broughtSprites[spriteId].owner.transfer(broughtSprites[spriteId].price);
    |            
    |            numberOfSpritesOwnedByUser[broughtSprites[spriteId].owner]--;
  at /home/jiaming/mavs_srcs/contract@0x0cf5a500a615adbb12ea08d681b39186c9bde4fb.sol(183)

[31mViolation[0m for DAOConstantGas in contract 'CryptoSprites':
    |            address kittyOwner = KittyCore(KittyCoreAddress).ownerOf(spriteId);
    |            
  > |            kittyOwner.transfer(priceIfAny * priceMultiplier / priceDivider);
    |            
    |            allPurchasedSprites.push(spriteId);
  at /home/jiaming/mavs_srcs/contract@0x0cf5a500a615adbb12ea08d681b39186c9bde4fb.sol(213)

[33mWarning[0m for LockedEther in contract 'CryptoSprites':
    |}
    |
  > |contract CryptoSprites is ERC721 {
    |    
    |    address public owner;
  at /home/jiaming/mavs_srcs/contract@0x0cf5a500a615adbb12ea08d681b39186c9bde4fb.sol(44)

[31mViolation[0m for TODAmount in contract 'CryptoSprites':
    |    
    |    function withdraw() onlyOwner {
  > |        owner.transfer(etherForOwner);
    |        charityAddress.transfer(etherForCharity);
    |        etherForOwner = 0;
  at /home/jiaming/mavs_srcs/contract@0x0cf5a500a615adbb12ea08d681b39186c9bde4fb.sol(136)

[31mViolation[0m for TODAmount in contract 'CryptoSprites':
    |    function withdraw() onlyOwner {
    |        owner.transfer(etherForOwner);
  > |        charityAddress.transfer(etherForCharity);
    |        etherForOwner = 0;
    |        etherForCharity = 0;
  at /home/jiaming/mavs_srcs/contract@0x0cf5a500a615adbb12ea08d681b39186c9bde4fb.sol(137)

[31mViolation[0m for TODAmount in contract 'CryptoSprites':
    |            address kittyOwner = KittyCore(KittyCoreAddress).ownerOf(spriteId);
    |            
  > |            kittyOwner.transfer(priceIfAny * priceMultiplier / priceDivider);
    |            
    |            allPurchasedSprites.push(spriteId);
  at /home/jiaming/mavs_srcs/contract@0x0cf5a500a615adbb12ea08d681b39186c9bde4fb.sol(213)

[33mWarning[0m for TODReceiver in contract 'CryptoSprites':
    |    
    |    function withdraw() onlyOwner {
  > |        owner.transfer(etherForOwner);
    |        charityAddress.transfer(etherForCharity);
    |        etherForOwner = 0;
  at /home/jiaming/mavs_srcs/contract@0x0cf5a500a615adbb12ea08d681b39186c9bde4fb.sol(136)

[33mWarning[0m for TODReceiver in contract 'CryptoSprites':
    |    function withdraw() onlyOwner {
    |        owner.transfer(etherForOwner);
  > |        charityAddress.transfer(etherForCharity);
    |        etherForOwner = 0;
    |        etherForCharity = 0;
  at /home/jiaming/mavs_srcs/contract@0x0cf5a500a615adbb12ea08d681b39186c9bde4fb.sol(137)

[33mWarning[0m for TODReceiver in contract 'CryptoSprites':
    |            address kittyOwner = KittyCore(KittyCoreAddress).ownerOf(spriteId);
    |            
  > |            kittyOwner.transfer(priceIfAny * priceMultiplier / priceDivider);
    |            
    |            allPurchasedSprites.push(spriteId);
  at /home/jiaming/mavs_srcs/contract@0x0cf5a500a615adbb12ea08d681b39186c9bde4fb.sol(213)

[33mWarning[0m for UnhandledException in contract 'CryptoSprites':
    |    
    |    function withdraw() onlyOwner {
  > |        owner.transfer(etherForOwner);
    |        charityAddress.transfer(etherForCharity);
    |        etherForOwner = 0;
  at /home/jiaming/mavs_srcs/contract@0x0cf5a500a615adbb12ea08d681b39186c9bde4fb.sol(136)

[33mWarning[0m for UnhandledException in contract 'CryptoSprites':
    |    function withdraw() onlyOwner {
    |        owner.transfer(etherForOwner);
  > |        charityAddress.transfer(etherForCharity);
    |        etherForOwner = 0;
    |        etherForCharity = 0;
  at /home/jiaming/mavs_srcs/contract@0x0cf5a500a615adbb12ea08d681b39186c9bde4fb.sol(137)

[33mWarning[0m for UnhandledException in contract 'CryptoSprites':
    |
    |        if (broughtSprites[spriteId].timesTraded == 0) {
  > |            address kittyOwner = KittyCore(KittyCoreAddress).ownerOf(spriteId);
    |            uint priceIfAny = SaleClockAuction(SaleClockAuctionAddress).getCurrentPrice(spriteId);
    |            
  at /home/jiaming/mavs_srcs/contract@0x0cf5a500a615adbb12ea08d681b39186c9bde4fb.sol(149)

[33mWarning[0m for UnhandledException in contract 'CryptoSprites':
    |        if (broughtSprites[spriteId].timesTraded == 0) {
    |            address kittyOwner = KittyCore(KittyCoreAddress).ownerOf(spriteId);
  > |            uint priceIfAny = SaleClockAuction(SaleClockAuctionAddress).getCurrentPrice(spriteId);
    |            
    |            // When featuring a Sprite that hasn't been traded before, if the original Kitty is for sale, update this Sprite with a price and set forSale = true - as long as msg.sender is the owner of the Kitty. Otherwise it could be that the owner of the Kitty removed the Sprite for sale and a different user could feature the Sprite and have it listed for sale
  at /home/jiaming/mavs_srcs/contract@0x0cf5a500a615adbb12ea08d681b39186c9bde4fb.sol(150)

[33mWarning[0m for UnhandledException in contract 'CryptoSprites':
    |            require (msg.value == broughtSprites[spriteId].price + _ownerCut + _charityCut);
    |            
  > |            broughtSprites[spriteId].owner.transfer(broughtSprites[spriteId].price);
    |            
    |            numberOfSpritesOwnedByUser[broughtSprites[spriteId].owner]--;
  at /home/jiaming/mavs_srcs/contract@0x0cf5a500a615adbb12ea08d681b39186c9bde4fb.sol(183)

[33mWarning[0m for UnhandledException in contract 'CryptoSprites':
    |            // Here we are looking up the price of the Sprite's corresponding Kitty
    |            
  > |            uint priceIfAny = SaleClockAuction(SaleClockAuctionAddress).getCurrentPrice(spriteId);
    |            require (priceIfAny > 0); // If the kitten in the CryptoKitties contract isn't for sale, a Sprite for it won't be for sale either
    |            
  at /home/jiaming/mavs_srcs/contract@0x0cf5a500a615adbb12ea08d681b39186c9bde4fb.sol(203)

[33mWarning[0m for UnhandledException in contract 'CryptoSprites':
    |            require (msg.value == (priceIfAny * priceMultiplier / priceDivider) + _ownerCut + _charityCut);
    |            
  > |            address kittyOwner = KittyCore(KittyCoreAddress).ownerOf(spriteId);
    |            
    |            kittyOwner.transfer(priceIfAny * priceMultiplier / priceDivider);
  at /home/jiaming/mavs_srcs/contract@0x0cf5a500a615adbb12ea08d681b39186c9bde4fb.sol(211)

[33mWarning[0m for UnhandledException in contract 'CryptoSprites':
    |            address kittyOwner = KittyCore(KittyCoreAddress).ownerOf(spriteId);
    |            
  > |            kittyOwner.transfer(priceIfAny * priceMultiplier / priceDivider);
    |            
    |            allPurchasedSprites.push(spriteId);
  at /home/jiaming/mavs_srcs/contract@0x0cf5a500a615adbb12ea08d681b39186c9bde4fb.sol(213)

[33mWarning[0m for UnhandledException in contract 'CryptoSprites':
    |            
    |            // This will be the owner of a Crypto Kitty, who can control the price of their unbrought Sprite
  > |            address kittyOwner = KittyCore(KittyCoreAddress).ownerOf(spriteId);
    |            require (kittyOwner == msg.sender);
    |            
  at /home/jiaming/mavs_srcs/contract@0x0cf5a500a615adbb12ea08d681b39186c9bde4fb.sol(245)

[33mWarning[0m for UnhandledException in contract 'CryptoSprites':
    |        if (broughtSprites[spriteId].owner != msg.sender) {
    |            require (broughtSprites[spriteId].timesTraded == 0);
  > |            address kittyOwner = KittyCore(KittyCoreAddress).ownerOf(spriteId);
    |            require (kittyOwner == msg.sender);
    |            broughtSprites[spriteId].price = 1; // When a user buys a Sprite Id that isn't for sale in the buySprite() function (ie. would be a Sprite that's never been brought before, for a Crypto Kitty that's for sale), one of the requirements is broughtSprites[spriteId].price == 0, which will be the case by default. By making the price = 1 this will throw and the Sprite won't be able to be brought
  at /home/jiaming/mavs_srcs/contract@0x0cf5a500a615adbb12ea08d681b39186c9bde4fb.sol(258)

[33mWarning[0m for UnhandledException in contract 'CryptoSprites':
    |    function lookupKitty (uint kittyId) view returns (address, uint) {
    |        
  > |        address kittyOwner = KittyCore(KittyCoreAddress).ownerOf(kittyId);
    |
    |        uint priceIfAny = SaleClockAuction(SaleClockAuctionAddress).getCurrentPrice(kittyId);
  at /home/jiaming/mavs_srcs/contract@0x0cf5a500a615adbb12ea08d681b39186c9bde4fb.sol(291)

[33mWarning[0m for UnhandledException in contract 'CryptoSprites':
    |        address kittyOwner = KittyCore(KittyCoreAddress).ownerOf(kittyId);
    |
  > |        uint priceIfAny = SaleClockAuction(SaleClockAuctionAddress).getCurrentPrice(kittyId);
    |
    |        return (kittyOwner, priceIfAny);
  at /home/jiaming/mavs_srcs/contract@0x0cf5a500a615adbb12ea08d681b39186c9bde4fb.sol(293)

[33mWarning[0m for UnhandledException in contract 'CryptoSprites':
    |    function lookupKittyDetails1 (uint kittyId) view returns (bool, bool, uint, uint, uint) {
    |        
  > |        var (isGestating, isReady, cooldownIndex, nextActionAt, siringWithId,,,,,) = KittyCore(KittyCoreAddress).getKitty(kittyId);
    |        
    |        return (isGestating, isReady, cooldownIndex, nextActionAt, siringWithId);
  at /home/jiaming/mavs_srcs/contract@0x0cf5a500a615adbb12ea08d681b39186c9bde4fb.sol(303)

[33mWarning[0m for UnhandledException in contract 'CryptoSprites':
    |    function lookupKittyDetails2 (uint kittyId) view returns (uint, uint, uint, uint, uint) {
    |        
  > |        var(,,,,,birthTime, matronId, sireId, generation, genes) = KittyCore(KittyCoreAddress).getKitty(kittyId);
    |        
    |        return (birthTime, matronId, sireId, generation, genes);
  at /home/jiaming/mavs_srcs/contract@0x0cf5a500a615adbb12ea08d681b39186c9bde4fb.sol(311)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CryptoSprites':
    |    
    |    function withdraw() onlyOwner {
  > |        owner.transfer(etherForOwner);
    |        charityAddress.transfer(etherForCharity);
    |        etherForOwner = 0;
  at /home/jiaming/mavs_srcs/contract@0x0cf5a500a615adbb12ea08d681b39186c9bde4fb.sol(136)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CryptoSprites':
    |    function withdraw() onlyOwner {
    |        owner.transfer(etherForOwner);
  > |        charityAddress.transfer(etherForCharity);
    |        etherForOwner = 0;
    |        etherForCharity = 0;
  at /home/jiaming/mavs_srcs/contract@0x0cf5a500a615adbb12ea08d681b39186c9bde4fb.sol(137)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CryptoSprites':
    |
    |        if (broughtSprites[spriteId].timesTraded == 0) {
  > |            address kittyOwner = KittyCore(KittyCoreAddress).ownerOf(spriteId);
    |            uint priceIfAny = SaleClockAuction(SaleClockAuctionAddress).getCurrentPrice(spriteId);
    |            
  at /home/jiaming/mavs_srcs/contract@0x0cf5a500a615adbb12ea08d681b39186c9bde4fb.sol(149)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CryptoSprites':
    |        if (broughtSprites[spriteId].timesTraded == 0) {
    |            address kittyOwner = KittyCore(KittyCoreAddress).ownerOf(spriteId);
  > |            uint priceIfAny = SaleClockAuction(SaleClockAuctionAddress).getCurrentPrice(spriteId);
    |            
    |            // When featuring a Sprite that hasn't been traded before, if the original Kitty is for sale, update this Sprite with a price and set forSale = true - as long as msg.sender is the owner of the Kitty. Otherwise it could be that the owner of the Kitty removed the Sprite for sale and a different user could feature the Sprite and have it listed for sale
  at /home/jiaming/mavs_srcs/contract@0x0cf5a500a615adbb12ea08d681b39186c9bde4fb.sol(150)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CryptoSprites':
    |            // Here we are looking up the price of the Sprite's corresponding Kitty
    |            
  > |            uint priceIfAny = SaleClockAuction(SaleClockAuctionAddress).getCurrentPrice(spriteId);
    |            require (priceIfAny > 0); // If the kitten in the CryptoKitties contract isn't for sale, a Sprite for it won't be for sale either
    |            
  at /home/jiaming/mavs_srcs/contract@0x0cf5a500a615adbb12ea08d681b39186c9bde4fb.sol(203)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CryptoSprites':
    |            require (msg.value == (priceIfAny * priceMultiplier / priceDivider) + _ownerCut + _charityCut);
    |            
  > |            address kittyOwner = KittyCore(KittyCoreAddress).ownerOf(spriteId);
    |            
    |            kittyOwner.transfer(priceIfAny * priceMultiplier / priceDivider);
  at /home/jiaming/mavs_srcs/contract@0x0cf5a500a615adbb12ea08d681b39186c9bde4fb.sol(211)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CryptoSprites':
    |            
    |            // This will be the owner of a Crypto Kitty, who can control the price of their unbrought Sprite
  > |            address kittyOwner = KittyCore(KittyCoreAddress).ownerOf(spriteId);
    |            require (kittyOwner == msg.sender);
    |            
  at /home/jiaming/mavs_srcs/contract@0x0cf5a500a615adbb12ea08d681b39186c9bde4fb.sol(245)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CryptoSprites':
    |        if (broughtSprites[spriteId].owner != msg.sender) {
    |            require (broughtSprites[spriteId].timesTraded == 0);
  > |            address kittyOwner = KittyCore(KittyCoreAddress).ownerOf(spriteId);
    |            require (kittyOwner == msg.sender);
    |            broughtSprites[spriteId].price = 1; // When a user buys a Sprite Id that isn't for sale in the buySprite() function (ie. would be a Sprite that's never been brought before, for a Crypto Kitty that's for sale), one of the requirements is broughtSprites[spriteId].price == 0, which will be the case by default. By making the price = 1 this will throw and the Sprite won't be able to be brought
  at /home/jiaming/mavs_srcs/contract@0x0cf5a500a615adbb12ea08d681b39186c9bde4fb.sol(258)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CryptoSprites':
    |    function lookupKitty (uint kittyId) view returns (address, uint) {
    |        
  > |        address kittyOwner = KittyCore(KittyCoreAddress).ownerOf(kittyId);
    |
    |        uint priceIfAny = SaleClockAuction(SaleClockAuctionAddress).getCurrentPrice(kittyId);
  at /home/jiaming/mavs_srcs/contract@0x0cf5a500a615adbb12ea08d681b39186c9bde4fb.sol(291)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CryptoSprites':
    |        address kittyOwner = KittyCore(KittyCoreAddress).ownerOf(kittyId);
    |
  > |        uint priceIfAny = SaleClockAuction(SaleClockAuctionAddress).getCurrentPrice(kittyId);
    |
    |        return (kittyOwner, priceIfAny);
  at /home/jiaming/mavs_srcs/contract@0x0cf5a500a615adbb12ea08d681b39186c9bde4fb.sol(293)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CryptoSprites':
    |    function lookupKittyDetails1 (uint kittyId) view returns (bool, bool, uint, uint, uint) {
    |        
  > |        var (isGestating, isReady, cooldownIndex, nextActionAt, siringWithId,,,,,) = KittyCore(KittyCoreAddress).getKitty(kittyId);
    |        
    |        return (isGestating, isReady, cooldownIndex, nextActionAt, siringWithId);
  at /home/jiaming/mavs_srcs/contract@0x0cf5a500a615adbb12ea08d681b39186c9bde4fb.sol(303)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CryptoSprites':
    |    function lookupKittyDetails2 (uint kittyId) view returns (uint, uint, uint, uint, uint) {
    |        
  > |        var(,,,,,birthTime, matronId, sireId, generation, genes) = KittyCore(KittyCoreAddress).getKitty(kittyId);
    |        
    |        return (birthTime, matronId, sireId, generation, genes);
  at /home/jiaming/mavs_srcs/contract@0x0cf5a500a615adbb12ea08d681b39186c9bde4fb.sol(311)

[31mViolation[0m for UnrestrictedWrite in contract 'CryptoSprites':
    |pragma solidity ^0.4.2;
    |
  > |// The below two interfaces (KittyCore and SaleClockAuction) are from Crypto Kitties. This contract will have to call the Crypto Kitties contracts to find the owner of a Kitty, the properties of a Kitty and a Kitties price.
    |interface KittyCore {
    |
  at /home/jiaming/mavs_srcs/contract@0x0cf5a500a615adbb12ea08d681b39186c9bde4fb.sol(3)

[31mViolation[0m for UnrestrictedWrite in contract 'CryptoSprites':
    |        // require (msg.sender == broughtSprites[spriteId].owner);
    |        require (msg.value == featurePrice);
  > |        broughtSprites[spriteId].featured = true;
    |
    |        if (broughtSprites[spriteId].timesTraded == 0) {
  at /home/jiaming/mavs_srcs/contract@0x0cf5a500a615adbb12ea08d681b39186c9bde4fb.sol(146)

[31mViolation[0m for UnrestrictedWrite in contract 'CryptoSprites':
    |            broughtSprites[spriteId].owner.transfer(broughtSprites[spriteId].price);
    |            
  > |            numberOfSpritesOwnedByUser[broughtSprites[spriteId].owner]--;
    |            
    |            if (broughtSprites[spriteId].timesTraded == 0) {
  at /home/jiaming/mavs_srcs/contract@0x0cf5a500a615adbb12ea08d681b39186c9bde4fb.sol(185)

[31mViolation[0m for UnrestrictedWrite in contract 'CryptoSprites':
    |            if (broughtSprites[spriteId].timesTraded == 0) {
    |                // Featured sprite that is being purchased for the first time
  > |                allPurchasedSprites.push(spriteId);
    |            }
    |            
  at /home/jiaming/mavs_srcs/contract@0x0cf5a500a615adbb12ea08d681b39186c9bde4fb.sol(189)

[31mViolation[0m for UnrestrictedWrite in contract 'CryptoSprites':
    |            kittyOwner.transfer(priceIfAny * priceMultiplier / priceDivider);
    |            
  > |            allPurchasedSprites.push(spriteId);
    |            
    |            broughtSprites[spriteId].spriteImageID = uint(block.blockhash(block.number-1))%360 + 1; // Random number to determine what image/character the sprite will be
  at /home/jiaming/mavs_srcs/contract@0x0cf5a500a615adbb12ea08d681b39186c9bde4fb.sol(215)

[31mViolation[0m for UnrestrictedWrite in contract 'CryptoSprites':
    |            allPurchasedSprites.push(spriteId);
    |            
  > |            broughtSprites[spriteId].spriteImageID = uint(block.blockhash(block.number-1))%360 + 1; // Random number to determine what image/character the sprite will be
    |            
    |            Transfer (kittyOwner, msg.sender, spriteId);
  at /home/jiaming/mavs_srcs/contract@0x0cf5a500a615adbb12ea08d681b39186c9bde4fb.sol(217)

[31mViolation[0m for UnrestrictedWrite in contract 'CryptoSprites':
    |        }
    |        
  > |        totalBuys++;
    |        
    |        spriteOwningHistory[msg.sender].push(spriteId);
  at /home/jiaming/mavs_srcs/contract@0x0cf5a500a615adbb12ea08d681b39186c9bde4fb.sol(223)

[31mViolation[0m for UnrestrictedWrite in contract 'CryptoSprites':
    |        numberOfSpritesOwnedByUser[msg.sender]++;
    |        
  > |        broughtSprites[spriteId].owner = msg.sender;
    |        broughtSprites[spriteId].forSale = false;
    |        broughtSprites[spriteId].timesTraded++;
  at /home/jiaming/mavs_srcs/contract@0x0cf5a500a615adbb12ea08d681b39186c9bde4fb.sol(228)

[31mViolation[0m for UnrestrictedWrite in contract 'CryptoSprites':
    |        
    |        broughtSprites[spriteId].owner = msg.sender;
  > |        broughtSprites[spriteId].forSale = false;
    |        broughtSprites[spriteId].timesTraded++;
    |        broughtSprites[spriteId].featured = false;
  at /home/jiaming/mavs_srcs/contract@0x0cf5a500a615adbb12ea08d681b39186c9bde4fb.sol(229)

[31mViolation[0m for UnrestrictedWrite in contract 'CryptoSprites':
    |        broughtSprites[spriteId].owner = msg.sender;
    |        broughtSprites[spriteId].forSale = false;
  > |        broughtSprites[spriteId].timesTraded++;
    |        broughtSprites[spriteId].featured = false;
    |            
  at /home/jiaming/mavs_srcs/contract@0x0cf5a500a615adbb12ea08d681b39186c9bde4fb.sol(230)

[31mViolation[0m for UnrestrictedWrite in contract 'CryptoSprites':
    |        broughtSprites[spriteId].forSale = false;
    |        broughtSprites[spriteId].timesTraded++;
  > |        broughtSprites[spriteId].featured = false;
    |            
    |        etherForOwner += _ownerCut;
  at /home/jiaming/mavs_srcs/contract@0x0cf5a500a615adbb12ea08d681b39186c9bde4fb.sol(231)

[31mViolation[0m for UnrestrictedWrite in contract 'CryptoSprites':
    |        broughtSprites[spriteId].featured = false;
    |            
  > |        etherForOwner += _ownerCut;
    |        etherForCharity += _charityCut;
    |        
  at /home/jiaming/mavs_srcs/contract@0x0cf5a500a615adbb12ea08d681b39186c9bde4fb.sol(233)

[31mViolation[0m for UnrestrictedWrite in contract 'CryptoSprites':
    |            
    |        etherForOwner += _ownerCut;
  > |        etherForCharity += _charityCut;
    |        
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0cf5a500a615adbb12ea08d681b39186c9bde4fb.sol(234)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoSprites':
    |pragma solidity ^0.4.2;
    |
  > |// The below two interfaces (KittyCore and SaleClockAuction) are from Crypto Kitties. This contract will have to call the Crypto Kitties contracts to find the owner of a Kitty, the properties of a Kitty and a Kitties price.
    |interface KittyCore {
    |
  at /home/jiaming/mavs_srcs/contract@0x0cf5a500a615adbb12ea08d681b39186c9bde4fb.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoSprites':
    |        totalBuys++;
    |        
  > |        spriteOwningHistory[msg.sender].push(spriteId);
    |        numberOfSpritesOwnedByUser[msg.sender]++;
    |        
  at /home/jiaming/mavs_srcs/contract@0x0cf5a500a615adbb12ea08d681b39186c9bde4fb.sol(225)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoSprites':
    |        
    |        spriteOwningHistory[msg.sender].push(spriteId);
  > |        numberOfSpritesOwnedByUser[msg.sender]++;
    |        
    |        broughtSprites[spriteId].owner = msg.sender;
  at /home/jiaming/mavs_srcs/contract@0x0cf5a500a615adbb12ea08d681b39186c9bde4fb.sol(226)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoSprites':
    |            require (kittyOwner == msg.sender);
    |            
  > |            broughtSprites[spriteId].owner = msg.sender;
    |            broughtSprites[spriteId].spriteImageID = uint(block.blockhash(block.number-1))%360 + 1; 
    |        }
  at /home/jiaming/mavs_srcs/contract@0x0cf5a500a615adbb12ea08d681b39186c9bde4fb.sol(248)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoSprites':
    |            
    |            broughtSprites[spriteId].owner = msg.sender;
  > |            broughtSprites[spriteId].spriteImageID = uint(block.blockhash(block.number-1))%360 + 1; 
    |        }
    |        broughtSprites[spriteId].forSale = true;
  at /home/jiaming/mavs_srcs/contract@0x0cf5a500a615adbb12ea08d681b39186c9bde4fb.sol(249)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoSprites':
    |            broughtSprites[spriteId].spriteImageID = uint(block.blockhash(block.number-1))%360 + 1; 
    |        }
  > |        broughtSprites[spriteId].forSale = true;
    |        broughtSprites[spriteId].price = price;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0cf5a500a615adbb12ea08d681b39186c9bde4fb.sol(251)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoSprites':
    |        }
    |        broughtSprites[spriteId].forSale = true;
  > |        broughtSprites[spriteId].price = price;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x0cf5a500a615adbb12ea08d681b39186c9bde4fb.sol(252)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoSprites':
    |            address kittyOwner = KittyCore(KittyCoreAddress).ownerOf(spriteId);
    |            require (kittyOwner == msg.sender);
  > |            broughtSprites[spriteId].price = 1; // When a user buys a Sprite Id that isn't for sale in the buySprite() function (ie. would be a Sprite that's never been brought before, for a Crypto Kitty that's for sale), one of the requirements is broughtSprites[spriteId].price == 0, which will be the case by default. By making the price = 1 this will throw and the Sprite won't be able to be brought
    |        } 
    |        broughtSprites[spriteId].forSale = false;
  at /home/jiaming/mavs_srcs/contract@0x0cf5a500a615adbb12ea08d681b39186c9bde4fb.sol(260)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoSprites':
    |    function approve (address _to, uint256 _tokenId) external {
    |        require (broughtSprites[_tokenId].owner == msg.sender);
  > |        allowed [msg.sender][_to].push(_tokenId);
    |        Approval (msg.sender, _to, _tokenId);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0cf5a500a615adbb12ea08d681b39186c9bde4fb.sol(345)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoSprites':
    |        require (broughtSprites[_tokenId].owner == msg.sender);
    |        broughtSprites[_tokenId].owner = _to;
  > |        numberOfSpritesOwnedByUser[msg.sender]--;
    |        numberOfSpritesOwnedByUser[_to]++;
    |        spriteOwningHistory[_to].push(_tokenId);
  at /home/jiaming/mavs_srcs/contract@0x0cf5a500a615adbb12ea08d681b39186c9bde4fb.sol(352)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoSprites':
    |        numberOfSpritesOwnedByUser[msg.sender]--;
    |        numberOfSpritesOwnedByUser[_to]++;
  > |        spriteOwningHistory[_to].push(_tokenId);
    |        Transfer (msg.sender, _to, _tokenId);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0cf5a500a615adbb12ea08d681b39186c9bde4fb.sol(354)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoSprites':
    |pragma solidity ^0.4.2;
    |
  > |// The below two interfaces (KittyCore and SaleClockAuction) are from Crypto Kitties. This contract will have to call the Crypto Kitties contracts to find the owner of a Kitty, the properties of a Kitty and a Kitties price.
    |interface KittyCore {
    |
  at /home/jiaming/mavs_srcs/contract@0x0cf5a500a615adbb12ea08d681b39186c9bde4fb.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoSprites':
    |        require (_priceMultiplier > 0);
    |        require (_priceDivider > 0);
  > |        priceMultiplier = _priceMultiplier;
    |        priceDivider = _priceDivider;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0cf5a500a615adbb12ea08d681b39186c9bde4fb.sol(120)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoSprites':
    |        require (_priceDivider > 0);
    |        priceMultiplier = _priceMultiplier;
  > |        priceDivider = _priceDivider;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x0cf5a500a615adbb12ea08d681b39186c9bde4fb.sol(121)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoSprites':
    |    function adjustCut (uint _ownerCut, uint _charityCut) onlyOwner {
    |        require (_ownerCut + _charityCut < 51); // Keep this contract honest by allowing the maximum combined cut to be no more than 5% (50/1000) of sales
  > |        ownerCut = _ownerCut;
    |        charityCut = _charityCut;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0cf5a500a615adbb12ea08d681b39186c9bde4fb.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoSprites':
    |        require (_ownerCut + _charityCut < 51); // Keep this contract honest by allowing the maximum combined cut to be no more than 5% (50/1000) of sales
    |        ownerCut = _ownerCut;
  > |        charityCut = _charityCut;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x0cf5a500a615adbb12ea08d681b39186c9bde4fb.sol(127)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoSprites':
    |    function adjustFeaturePrice (uint _featurePrice) onlyOwner {
    |        require (_featurePrice > 0);
  > |        featurePrice = _featurePrice;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x0cf5a500a615adbb12ea08d681b39186c9bde4fb.sol(132)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoSprites':
    |        owner.transfer(etherForOwner);
    |        charityAddress.transfer(etherForCharity);
  > |        etherForOwner = 0;
    |        etherForCharity = 0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0cf5a500a615adbb12ea08d681b39186c9bde4fb.sol(138)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoSprites':
    |        charityAddress.transfer(etherForCharity);
    |        etherForOwner = 0;
  > |        etherForCharity = 0;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x0cf5a500a615adbb12ea08d681b39186c9bde4fb.sol(139)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoSprites':
    |            broughtSprites[spriteId].price = 1; // When a user buys a Sprite Id that isn't for sale in the buySprite() function (ie. would be a Sprite that's never been brought before, for a Crypto Kitty that's for sale), one of the requirements is broughtSprites[spriteId].price == 0, which will be the case by default. By making the price = 1 this will throw and the Sprite won't be able to be brought
    |        } 
  > |        broughtSprites[spriteId].forSale = false;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x0cf5a500a615adbb12ea08d681b39186c9bde4fb.sol(262)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoSprites':
    |    function transfer (address _to, uint _tokenId) external {
    |        require (broughtSprites[_tokenId].owner == msg.sender);
  > |        broughtSprites[_tokenId].owner = _to;
    |        numberOfSpritesOwnedByUser[msg.sender]--;
    |        numberOfSpritesOwnedByUser[_to]++;
  at /home/jiaming/mavs_srcs/contract@0x0cf5a500a615adbb12ea08d681b39186c9bde4fb.sol(351)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoSprites':
    |        broughtSprites[_tokenId].owner = _to;
    |        numberOfSpritesOwnedByUser[msg.sender]--;
  > |        numberOfSpritesOwnedByUser[_to]++;
    |        spriteOwningHistory[_to].push(_tokenId);
    |        Transfer (msg.sender, _to, _tokenId);
  at /home/jiaming/mavs_srcs/contract@0x0cf5a500a615adbb12ea08d681b39186c9bde4fb.sol(353)


