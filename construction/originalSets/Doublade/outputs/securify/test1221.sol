Processing contract: /home/jiaming/mavs_srcs/contract@0x4d7edd5f94515b0f35b38f6fb2ea975a20823465.sol:CryptoSprites
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4d7edd5f94515b0f35b38f6fb2ea975a20823465.sol:ERC721
Processing contract: /home/jiaming/mavs_srcs/contract@0x4d7edd5f94515b0f35b38f6fb2ea975a20823465.sol:KittyCore
Processing contract: /home/jiaming/mavs_srcs/contract@0x4d7edd5f94515b0f35b38f6fb2ea975a20823465.sol:SaleClockAuction
[31mViolation[0m for DAOConstantGas in contract 'CryptoSprites':
    |    
    |    function withdraw() onlyOwner {
  > |        owner.transfer(etherForOwner);
    |        charityAddress.transfer(etherForCharity);
    |        etherForOwner = 0;
  at /home/jiaming/mavs_srcs/contract@0x4d7edd5f94515b0f35b38f6fb2ea975a20823465.sol(138)

[31mViolation[0m for DAOConstantGas in contract 'CryptoSprites':
    |    function withdraw() onlyOwner {
    |        owner.transfer(etherForOwner);
  > |        charityAddress.transfer(etherForCharity);
    |        etherForOwner = 0;
    |        etherForCharity = 0;
  at /home/jiaming/mavs_srcs/contract@0x4d7edd5f94515b0f35b38f6fb2ea975a20823465.sol(139)

[31mViolation[0m for DAOConstantGas in contract 'CryptoSprites':
    |            require (msg.value == broughtSprites[spriteId].price + _ownerCut + _charityCut);
    |            
  > |            broughtSprites[spriteId].owner.transfer(broughtSprites[spriteId].price);
    |            
    |            numberOfSpritesOwnedByUser[broughtSprites[spriteId].owner]--;
  at /home/jiaming/mavs_srcs/contract@0x4d7edd5f94515b0f35b38f6fb2ea975a20823465.sol(196)

[31mViolation[0m for DAOConstantGas in contract 'CryptoSprites':
    |            var (kittyOwner,,,,) = SaleClockAuction(SaleClockAuctionAddress).getAuction(spriteId);
    |            
  > |            kittyOwner.transfer(priceIfAny * priceMultiplier / priceDivider);
    |            
    |            allPurchasedSprites.push(spriteId);
  at /home/jiaming/mavs_srcs/contract@0x4d7edd5f94515b0f35b38f6fb2ea975a20823465.sol(230)

[33mWarning[0m for LockedEther in contract 'CryptoSprites':
    |}
    |
  > |contract CryptoSprites is ERC721 {
    |    
    |    address public owner;
  at /home/jiaming/mavs_srcs/contract@0x4d7edd5f94515b0f35b38f6fb2ea975a20823465.sol(46)

[31mViolation[0m for TODAmount in contract 'CryptoSprites':
    |    
    |    function withdraw() onlyOwner {
  > |        owner.transfer(etherForOwner);
    |        charityAddress.transfer(etherForCharity);
    |        etherForOwner = 0;
  at /home/jiaming/mavs_srcs/contract@0x4d7edd5f94515b0f35b38f6fb2ea975a20823465.sol(138)

[31mViolation[0m for TODAmount in contract 'CryptoSprites':
    |    function withdraw() onlyOwner {
    |        owner.transfer(etherForOwner);
  > |        charityAddress.transfer(etherForCharity);
    |        etherForOwner = 0;
    |        etherForCharity = 0;
  at /home/jiaming/mavs_srcs/contract@0x4d7edd5f94515b0f35b38f6fb2ea975a20823465.sol(139)

[31mViolation[0m for TODAmount in contract 'CryptoSprites':
    |            var (kittyOwner,,,,) = SaleClockAuction(SaleClockAuctionAddress).getAuction(spriteId);
    |            
  > |            kittyOwner.transfer(priceIfAny * priceMultiplier / priceDivider);
    |            
    |            allPurchasedSprites.push(spriteId);
  at /home/jiaming/mavs_srcs/contract@0x4d7edd5f94515b0f35b38f6fb2ea975a20823465.sol(230)

[33mWarning[0m for TODReceiver in contract 'CryptoSprites':
    |    
    |    function withdraw() onlyOwner {
  > |        owner.transfer(etherForOwner);
    |        charityAddress.transfer(etherForCharity);
    |        etherForOwner = 0;
  at /home/jiaming/mavs_srcs/contract@0x4d7edd5f94515b0f35b38f6fb2ea975a20823465.sol(138)

[33mWarning[0m for TODReceiver in contract 'CryptoSprites':
    |    function withdraw() onlyOwner {
    |        owner.transfer(etherForOwner);
  > |        charityAddress.transfer(etherForCharity);
    |        etherForOwner = 0;
    |        etherForCharity = 0;
  at /home/jiaming/mavs_srcs/contract@0x4d7edd5f94515b0f35b38f6fb2ea975a20823465.sol(139)

[33mWarning[0m for TODReceiver in contract 'CryptoSprites':
    |            var (kittyOwner,,,,) = SaleClockAuction(SaleClockAuctionAddress).getAuction(spriteId);
    |            
  > |            kittyOwner.transfer(priceIfAny * priceMultiplier / priceDivider);
    |            
    |            allPurchasedSprites.push(spriteId);
  at /home/jiaming/mavs_srcs/contract@0x4d7edd5f94515b0f35b38f6fb2ea975a20823465.sol(230)

[33mWarning[0m for UnhandledException in contract 'CryptoSprites':
    |    
    |    function withdraw() onlyOwner {
  > |        owner.transfer(etherForOwner);
    |        charityAddress.transfer(etherForCharity);
    |        etherForOwner = 0;
  at /home/jiaming/mavs_srcs/contract@0x4d7edd5f94515b0f35b38f6fb2ea975a20823465.sol(138)

[33mWarning[0m for UnhandledException in contract 'CryptoSprites':
    |    function withdraw() onlyOwner {
    |        owner.transfer(etherForOwner);
  > |        charityAddress.transfer(etherForCharity);
    |        etherForOwner = 0;
    |        etherForCharity = 0;
  at /home/jiaming/mavs_srcs/contract@0x4d7edd5f94515b0f35b38f6fb2ea975a20823465.sol(139)

[33mWarning[0m for UnhandledException in contract 'CryptoSprites':
    |
    |        if (broughtSprites[spriteId].timesTraded == 0) {
  > |            address kittyOwner = KittyCore(KittyCoreAddress).ownerOf(spriteId);
    |            uint priceIfAny = SaleClockAuction(SaleClockAuctionAddress).getCurrentPrice(spriteId);
    |            
  at /home/jiaming/mavs_srcs/contract@0x4d7edd5f94515b0f35b38f6fb2ea975a20823465.sol(151)

[33mWarning[0m for UnhandledException in contract 'CryptoSprites':
    |        if (broughtSprites[spriteId].timesTraded == 0) {
    |            address kittyOwner = KittyCore(KittyCoreAddress).ownerOf(spriteId);
  > |            uint priceIfAny = SaleClockAuction(SaleClockAuctionAddress).getCurrentPrice(spriteId);
    |            
    |            // When featuring a Sprite that hasn't been traded before, if the original Kitty is for sale, update this Sprite with a price and set forSale = true - as long as msg.sender is the owner of the Kitty. Otherwise it could be that the owner of the Kitty removed the Sprite for sale and a different user could feature the Sprite and have it listed for sale
  at /home/jiaming/mavs_srcs/contract@0x4d7edd5f94515b0f35b38f6fb2ea975a20823465.sol(152)

[33mWarning[0m for UnhandledException in contract 'CryptoSprites':
    |    function calculatePrice (uint kittyId) view returns (uint) {
    |        
  > |        uint priceIfAny = SaleClockAuction(SaleClockAuctionAddress).getCurrentPrice(kittyId);
    |        
    |        var _ownerCut = ((priceIfAny / 1000) * ownerCut) * priceMultiplier / priceDivider;
  at /home/jiaming/mavs_srcs/contract@0x4d7edd5f94515b0f35b38f6fb2ea975a20823465.sol(173)

[33mWarning[0m for UnhandledException in contract 'CryptoSprites':
    |            require (msg.value == broughtSprites[spriteId].price + _ownerCut + _charityCut);
    |            
  > |            broughtSprites[spriteId].owner.transfer(broughtSprites[spriteId].price);
    |            
    |            numberOfSpritesOwnedByUser[broughtSprites[spriteId].owner]--;
  at /home/jiaming/mavs_srcs/contract@0x4d7edd5f94515b0f35b38f6fb2ea975a20823465.sol(196)

[33mWarning[0m for UnhandledException in contract 'CryptoSprites':
    |            // Here we are looking up the price of the Sprite's corresponding Kitty
    |            
  > |            uint priceIfAny = SaleClockAuction(SaleClockAuctionAddress).getCurrentPrice(spriteId);
    |            require (priceIfAny > 0); // If the kitten in the CryptoKitties contract isn't for sale, a Sprite for it won't be for sale either
    |            
  at /home/jiaming/mavs_srcs/contract@0x4d7edd5f94515b0f35b38f6fb2ea975a20823465.sol(216)

[33mWarning[0m for UnhandledException in contract 'CryptoSprites':
    |            // Get the owner of the Kitty for sale
    |            
  > |            var (kittyOwner,,,,) = SaleClockAuction(SaleClockAuctionAddress).getAuction(spriteId);
    |            
    |            kittyOwner.transfer(priceIfAny * priceMultiplier / priceDivider);
  at /home/jiaming/mavs_srcs/contract@0x4d7edd5f94515b0f35b38f6fb2ea975a20823465.sol(228)

[33mWarning[0m for UnhandledException in contract 'CryptoSprites':
    |            var (kittyOwner,,,,) = SaleClockAuction(SaleClockAuctionAddress).getAuction(spriteId);
    |            
  > |            kittyOwner.transfer(priceIfAny * priceMultiplier / priceDivider);
    |            
    |            allPurchasedSprites.push(spriteId);
  at /home/jiaming/mavs_srcs/contract@0x4d7edd5f94515b0f35b38f6fb2ea975a20823465.sol(230)

[33mWarning[0m for UnhandledException in contract 'CryptoSprites':
    |            
    |            // This will be the owner of a Crypto Kitty, who can control the price of their unbrought Sprite
  > |            address kittyOwner = KittyCore(KittyCoreAddress).ownerOf(spriteId);
    |            require (kittyOwner == msg.sender);
    |            
  at /home/jiaming/mavs_srcs/contract@0x4d7edd5f94515b0f35b38f6fb2ea975a20823465.sol(262)

[33mWarning[0m for UnhandledException in contract 'CryptoSprites':
    |        if (broughtSprites[spriteId].owner != msg.sender) {
    |            require (broughtSprites[spriteId].timesTraded == 0);
  > |            address kittyOwner = KittyCore(KittyCoreAddress).ownerOf(spriteId);
    |            require (kittyOwner == msg.sender);
    |            broughtSprites[spriteId].price = 1; // When a user buys a Sprite Id that isn't for sale in the buySprite() function (ie. would be a Sprite that's never been brought before, for a Crypto Kitty that's for sale), one of the requirements is broughtSprites[spriteId].price == 0, which will be the case by default. By making the price = 1 this will throw and the Sprite won't be able to be brought
  at /home/jiaming/mavs_srcs/contract@0x4d7edd5f94515b0f35b38f6fb2ea975a20823465.sol(275)

[33mWarning[0m for UnhandledException in contract 'CryptoSprites':
    |    function lookupKitty (uint kittyId) view returns (address, uint, address) {
    |        
  > |        var (kittyOwner,,,,) = SaleClockAuction(SaleClockAuctionAddress).getAuction(kittyId);
    |
    |        uint priceIfAny = SaleClockAuction(SaleClockAuctionAddress).getCurrentPrice(kittyId);
  at /home/jiaming/mavs_srcs/contract@0x4d7edd5f94515b0f35b38f6fb2ea975a20823465.sol(308)

[33mWarning[0m for UnhandledException in contract 'CryptoSprites':
    |        var (kittyOwner,,,,) = SaleClockAuction(SaleClockAuctionAddress).getAuction(kittyId);
    |
  > |        uint priceIfAny = SaleClockAuction(SaleClockAuctionAddress).getCurrentPrice(kittyId);
    |        
    |        address kittyOwnerNotForSale = KittyCore(KittyCoreAddress).ownerOf(kittyId);
  at /home/jiaming/mavs_srcs/contract@0x4d7edd5f94515b0f35b38f6fb2ea975a20823465.sol(310)

[33mWarning[0m for UnhandledException in contract 'CryptoSprites':
    |        uint priceIfAny = SaleClockAuction(SaleClockAuctionAddress).getCurrentPrice(kittyId);
    |        
  > |        address kittyOwnerNotForSale = KittyCore(KittyCoreAddress).ownerOf(kittyId);
    |
    |        return (kittyOwner, priceIfAny, kittyOwnerNotForSale);
  at /home/jiaming/mavs_srcs/contract@0x4d7edd5f94515b0f35b38f6fb2ea975a20823465.sol(312)

[33mWarning[0m for UnhandledException in contract 'CryptoSprites':
    |    function lookupKittyDetails1 (uint kittyId) view returns (bool, bool, uint, uint, uint) {
    |        
  > |        var (isGestating, isReady, cooldownIndex, nextActionAt, siringWithId,,,,,) = KittyCore(KittyCoreAddress).getKitty(kittyId);
    |        
    |        return (isGestating, isReady, cooldownIndex, nextActionAt, siringWithId);
  at /home/jiaming/mavs_srcs/contract@0x4d7edd5f94515b0f35b38f6fb2ea975a20823465.sol(322)

[33mWarning[0m for UnhandledException in contract 'CryptoSprites':
    |    function lookupKittyDetails2 (uint kittyId) view returns (uint, uint, uint, uint, uint) {
    |        
  > |        var(,,,,,birthTime, matronId, sireId, generation, genes) = KittyCore(KittyCoreAddress).getKitty(kittyId);
    |        
    |        return (birthTime, matronId, sireId, generation, genes);
  at /home/jiaming/mavs_srcs/contract@0x4d7edd5f94515b0f35b38f6fb2ea975a20823465.sol(330)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CryptoSprites':
    |    
    |    function withdraw() onlyOwner {
  > |        owner.transfer(etherForOwner);
    |        charityAddress.transfer(etherForCharity);
    |        etherForOwner = 0;
  at /home/jiaming/mavs_srcs/contract@0x4d7edd5f94515b0f35b38f6fb2ea975a20823465.sol(138)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CryptoSprites':
    |    function withdraw() onlyOwner {
    |        owner.transfer(etherForOwner);
  > |        charityAddress.transfer(etherForCharity);
    |        etherForOwner = 0;
    |        etherForCharity = 0;
  at /home/jiaming/mavs_srcs/contract@0x4d7edd5f94515b0f35b38f6fb2ea975a20823465.sol(139)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CryptoSprites':
    |
    |        if (broughtSprites[spriteId].timesTraded == 0) {
  > |            address kittyOwner = KittyCore(KittyCoreAddress).ownerOf(spriteId);
    |            uint priceIfAny = SaleClockAuction(SaleClockAuctionAddress).getCurrentPrice(spriteId);
    |            
  at /home/jiaming/mavs_srcs/contract@0x4d7edd5f94515b0f35b38f6fb2ea975a20823465.sol(151)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CryptoSprites':
    |        if (broughtSprites[spriteId].timesTraded == 0) {
    |            address kittyOwner = KittyCore(KittyCoreAddress).ownerOf(spriteId);
  > |            uint priceIfAny = SaleClockAuction(SaleClockAuctionAddress).getCurrentPrice(spriteId);
    |            
    |            // When featuring a Sprite that hasn't been traded before, if the original Kitty is for sale, update this Sprite with a price and set forSale = true - as long as msg.sender is the owner of the Kitty. Otherwise it could be that the owner of the Kitty removed the Sprite for sale and a different user could feature the Sprite and have it listed for sale
  at /home/jiaming/mavs_srcs/contract@0x4d7edd5f94515b0f35b38f6fb2ea975a20823465.sol(152)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CryptoSprites':
    |    function calculatePrice (uint kittyId) view returns (uint) {
    |        
  > |        uint priceIfAny = SaleClockAuction(SaleClockAuctionAddress).getCurrentPrice(kittyId);
    |        
    |        var _ownerCut = ((priceIfAny / 1000) * ownerCut) * priceMultiplier / priceDivider;
  at /home/jiaming/mavs_srcs/contract@0x4d7edd5f94515b0f35b38f6fb2ea975a20823465.sol(173)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CryptoSprites':
    |            // Here we are looking up the price of the Sprite's corresponding Kitty
    |            
  > |            uint priceIfAny = SaleClockAuction(SaleClockAuctionAddress).getCurrentPrice(spriteId);
    |            require (priceIfAny > 0); // If the kitten in the CryptoKitties contract isn't for sale, a Sprite for it won't be for sale either
    |            
  at /home/jiaming/mavs_srcs/contract@0x4d7edd5f94515b0f35b38f6fb2ea975a20823465.sol(216)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CryptoSprites':
    |            // Get the owner of the Kitty for sale
    |            
  > |            var (kittyOwner,,,,) = SaleClockAuction(SaleClockAuctionAddress).getAuction(spriteId);
    |            
    |            kittyOwner.transfer(priceIfAny * priceMultiplier / priceDivider);
  at /home/jiaming/mavs_srcs/contract@0x4d7edd5f94515b0f35b38f6fb2ea975a20823465.sol(228)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CryptoSprites':
    |            
    |            // This will be the owner of a Crypto Kitty, who can control the price of their unbrought Sprite
  > |            address kittyOwner = KittyCore(KittyCoreAddress).ownerOf(spriteId);
    |            require (kittyOwner == msg.sender);
    |            
  at /home/jiaming/mavs_srcs/contract@0x4d7edd5f94515b0f35b38f6fb2ea975a20823465.sol(262)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CryptoSprites':
    |        if (broughtSprites[spriteId].owner != msg.sender) {
    |            require (broughtSprites[spriteId].timesTraded == 0);
  > |            address kittyOwner = KittyCore(KittyCoreAddress).ownerOf(spriteId);
    |            require (kittyOwner == msg.sender);
    |            broughtSprites[spriteId].price = 1; // When a user buys a Sprite Id that isn't for sale in the buySprite() function (ie. would be a Sprite that's never been brought before, for a Crypto Kitty that's for sale), one of the requirements is broughtSprites[spriteId].price == 0, which will be the case by default. By making the price = 1 this will throw and the Sprite won't be able to be brought
  at /home/jiaming/mavs_srcs/contract@0x4d7edd5f94515b0f35b38f6fb2ea975a20823465.sol(275)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CryptoSprites':
    |    function lookupKitty (uint kittyId) view returns (address, uint, address) {
    |        
  > |        var (kittyOwner,,,,) = SaleClockAuction(SaleClockAuctionAddress).getAuction(kittyId);
    |
    |        uint priceIfAny = SaleClockAuction(SaleClockAuctionAddress).getCurrentPrice(kittyId);
  at /home/jiaming/mavs_srcs/contract@0x4d7edd5f94515b0f35b38f6fb2ea975a20823465.sol(308)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CryptoSprites':
    |        var (kittyOwner,,,,) = SaleClockAuction(SaleClockAuctionAddress).getAuction(kittyId);
    |
  > |        uint priceIfAny = SaleClockAuction(SaleClockAuctionAddress).getCurrentPrice(kittyId);
    |        
    |        address kittyOwnerNotForSale = KittyCore(KittyCoreAddress).ownerOf(kittyId);
  at /home/jiaming/mavs_srcs/contract@0x4d7edd5f94515b0f35b38f6fb2ea975a20823465.sol(310)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CryptoSprites':
    |        uint priceIfAny = SaleClockAuction(SaleClockAuctionAddress).getCurrentPrice(kittyId);
    |        
  > |        address kittyOwnerNotForSale = KittyCore(KittyCoreAddress).ownerOf(kittyId);
    |
    |        return (kittyOwner, priceIfAny, kittyOwnerNotForSale);
  at /home/jiaming/mavs_srcs/contract@0x4d7edd5f94515b0f35b38f6fb2ea975a20823465.sol(312)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CryptoSprites':
    |    function lookupKittyDetails1 (uint kittyId) view returns (bool, bool, uint, uint, uint) {
    |        
  > |        var (isGestating, isReady, cooldownIndex, nextActionAt, siringWithId,,,,,) = KittyCore(KittyCoreAddress).getKitty(kittyId);
    |        
    |        return (isGestating, isReady, cooldownIndex, nextActionAt, siringWithId);
  at /home/jiaming/mavs_srcs/contract@0x4d7edd5f94515b0f35b38f6fb2ea975a20823465.sol(322)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CryptoSprites':
    |    function lookupKittyDetails2 (uint kittyId) view returns (uint, uint, uint, uint, uint) {
    |        
  > |        var(,,,,,birthTime, matronId, sireId, generation, genes) = KittyCore(KittyCoreAddress).getKitty(kittyId);
    |        
    |        return (birthTime, matronId, sireId, generation, genes);
  at /home/jiaming/mavs_srcs/contract@0x4d7edd5f94515b0f35b38f6fb2ea975a20823465.sol(330)

[31mViolation[0m for UnrestrictedWrite in contract 'CryptoSprites':
    |pragma solidity ^0.4.2;
    |
  > |// The below two interfaces (KittyCore and SaleClockAuction) are from Crypto Kitties. This contract will have to call the Crypto Kitties contracts to find the owner of a Kitty, the properties of a Kitty and a Kitties price.
    |interface KittyCore {
    |
  at /home/jiaming/mavs_srcs/contract@0x4d7edd5f94515b0f35b38f6fb2ea975a20823465.sol(3)

[31mViolation[0m for UnrestrictedWrite in contract 'CryptoSprites':
    |        // require (msg.sender == broughtSprites[spriteId].owner);
    |        require (msg.value == featurePrice);
  > |        broughtSprites[spriteId].featured = true;
    |
    |        if (broughtSprites[spriteId].timesTraded == 0) {
  at /home/jiaming/mavs_srcs/contract@0x4d7edd5f94515b0f35b38f6fb2ea975a20823465.sol(148)

[31mViolation[0m for UnrestrictedWrite in contract 'CryptoSprites':
    |            broughtSprites[spriteId].owner.transfer(broughtSprites[spriteId].price);
    |            
  > |            numberOfSpritesOwnedByUser[broughtSprites[spriteId].owner]--;
    |            
    |            if (broughtSprites[spriteId].timesTraded == 0) {
  at /home/jiaming/mavs_srcs/contract@0x4d7edd5f94515b0f35b38f6fb2ea975a20823465.sol(198)

[31mViolation[0m for UnrestrictedWrite in contract 'CryptoSprites':
    |            if (broughtSprites[spriteId].timesTraded == 0) {
    |                // Featured sprite that is being purchased for the first time
  > |                allPurchasedSprites.push(spriteId);
    |            }
    |            
  at /home/jiaming/mavs_srcs/contract@0x4d7edd5f94515b0f35b38f6fb2ea975a20823465.sol(202)

[31mViolation[0m for UnrestrictedWrite in contract 'CryptoSprites':
    |            kittyOwner.transfer(priceIfAny * priceMultiplier / priceDivider);
    |            
  > |            allPurchasedSprites.push(spriteId);
    |            
    |            broughtSprites[spriteId].spriteImageID = uint(block.blockhash(block.number-1))%360 + 1; // Random number to determine what image/character the sprite will be
  at /home/jiaming/mavs_srcs/contract@0x4d7edd5f94515b0f35b38f6fb2ea975a20823465.sol(232)

[31mViolation[0m for UnrestrictedWrite in contract 'CryptoSprites':
    |            allPurchasedSprites.push(spriteId);
    |            
  > |            broughtSprites[spriteId].spriteImageID = uint(block.blockhash(block.number-1))%360 + 1; // Random number to determine what image/character the sprite will be
    |            
    |            Transfer (kittyOwner, msg.sender, spriteId);
  at /home/jiaming/mavs_srcs/contract@0x4d7edd5f94515b0f35b38f6fb2ea975a20823465.sol(234)

[31mViolation[0m for UnrestrictedWrite in contract 'CryptoSprites':
    |        }
    |        
  > |        totalBuys++;
    |        
    |        spriteOwningHistory[msg.sender].push(spriteId);
  at /home/jiaming/mavs_srcs/contract@0x4d7edd5f94515b0f35b38f6fb2ea975a20823465.sol(240)

[31mViolation[0m for UnrestrictedWrite in contract 'CryptoSprites':
    |        numberOfSpritesOwnedByUser[msg.sender]++;
    |        
  > |        broughtSprites[spriteId].owner = msg.sender;
    |        broughtSprites[spriteId].forSale = false;
    |        broughtSprites[spriteId].timesTraded++;
  at /home/jiaming/mavs_srcs/contract@0x4d7edd5f94515b0f35b38f6fb2ea975a20823465.sol(245)

[31mViolation[0m for UnrestrictedWrite in contract 'CryptoSprites':
    |        
    |        broughtSprites[spriteId].owner = msg.sender;
  > |        broughtSprites[spriteId].forSale = false;
    |        broughtSprites[spriteId].timesTraded++;
    |        broughtSprites[spriteId].featured = false;
  at /home/jiaming/mavs_srcs/contract@0x4d7edd5f94515b0f35b38f6fb2ea975a20823465.sol(246)

[31mViolation[0m for UnrestrictedWrite in contract 'CryptoSprites':
    |        broughtSprites[spriteId].owner = msg.sender;
    |        broughtSprites[spriteId].forSale = false;
  > |        broughtSprites[spriteId].timesTraded++;
    |        broughtSprites[spriteId].featured = false;
    |            
  at /home/jiaming/mavs_srcs/contract@0x4d7edd5f94515b0f35b38f6fb2ea975a20823465.sol(247)

[31mViolation[0m for UnrestrictedWrite in contract 'CryptoSprites':
    |        broughtSprites[spriteId].forSale = false;
    |        broughtSprites[spriteId].timesTraded++;
  > |        broughtSprites[spriteId].featured = false;
    |            
    |        etherForOwner += _ownerCut;
  at /home/jiaming/mavs_srcs/contract@0x4d7edd5f94515b0f35b38f6fb2ea975a20823465.sol(248)

[31mViolation[0m for UnrestrictedWrite in contract 'CryptoSprites':
    |        broughtSprites[spriteId].featured = false;
    |            
  > |        etherForOwner += _ownerCut;
    |        etherForCharity += _charityCut;
    |        
  at /home/jiaming/mavs_srcs/contract@0x4d7edd5f94515b0f35b38f6fb2ea975a20823465.sol(250)

[31mViolation[0m for UnrestrictedWrite in contract 'CryptoSprites':
    |            
    |        etherForOwner += _ownerCut;
  > |        etherForCharity += _charityCut;
    |        
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4d7edd5f94515b0f35b38f6fb2ea975a20823465.sol(251)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoSprites':
    |pragma solidity ^0.4.2;
    |
  > |// The below two interfaces (KittyCore and SaleClockAuction) are from Crypto Kitties. This contract will have to call the Crypto Kitties contracts to find the owner of a Kitty, the properties of a Kitty and a Kitties price.
    |interface KittyCore {
    |
  at /home/jiaming/mavs_srcs/contract@0x4d7edd5f94515b0f35b38f6fb2ea975a20823465.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoSprites':
    |        totalBuys++;
    |        
  > |        spriteOwningHistory[msg.sender].push(spriteId);
    |        numberOfSpritesOwnedByUser[msg.sender]++;
    |        
  at /home/jiaming/mavs_srcs/contract@0x4d7edd5f94515b0f35b38f6fb2ea975a20823465.sol(242)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoSprites':
    |        
    |        spriteOwningHistory[msg.sender].push(spriteId);
  > |        numberOfSpritesOwnedByUser[msg.sender]++;
    |        
    |        broughtSprites[spriteId].owner = msg.sender;
  at /home/jiaming/mavs_srcs/contract@0x4d7edd5f94515b0f35b38f6fb2ea975a20823465.sol(243)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoSprites':
    |            require (kittyOwner == msg.sender);
    |            
  > |            broughtSprites[spriteId].owner = msg.sender;
    |            broughtSprites[spriteId].spriteImageID = uint(block.blockhash(block.number-1))%360 + 1; 
    |        }
  at /home/jiaming/mavs_srcs/contract@0x4d7edd5f94515b0f35b38f6fb2ea975a20823465.sol(265)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoSprites':
    |            
    |            broughtSprites[spriteId].owner = msg.sender;
  > |            broughtSprites[spriteId].spriteImageID = uint(block.blockhash(block.number-1))%360 + 1; 
    |        }
    |        broughtSprites[spriteId].forSale = true;
  at /home/jiaming/mavs_srcs/contract@0x4d7edd5f94515b0f35b38f6fb2ea975a20823465.sol(266)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoSprites':
    |            broughtSprites[spriteId].spriteImageID = uint(block.blockhash(block.number-1))%360 + 1; 
    |        }
  > |        broughtSprites[spriteId].forSale = true;
    |        broughtSprites[spriteId].price = price;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4d7edd5f94515b0f35b38f6fb2ea975a20823465.sol(268)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoSprites':
    |        }
    |        broughtSprites[spriteId].forSale = true;
  > |        broughtSprites[spriteId].price = price;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x4d7edd5f94515b0f35b38f6fb2ea975a20823465.sol(269)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoSprites':
    |            address kittyOwner = KittyCore(KittyCoreAddress).ownerOf(spriteId);
    |            require (kittyOwner == msg.sender);
  > |            broughtSprites[spriteId].price = 1; // When a user buys a Sprite Id that isn't for sale in the buySprite() function (ie. would be a Sprite that's never been brought before, for a Crypto Kitty that's for sale), one of the requirements is broughtSprites[spriteId].price == 0, which will be the case by default. By making the price = 1 this will throw and the Sprite won't be able to be brought
    |        } 
    |        broughtSprites[spriteId].forSale = false;
  at /home/jiaming/mavs_srcs/contract@0x4d7edd5f94515b0f35b38f6fb2ea975a20823465.sol(277)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoSprites':
    |    function approve (address _to, uint256 _tokenId) external {
    |        require (broughtSprites[_tokenId].owner == msg.sender);
  > |        allowed [msg.sender][_to].push(_tokenId);
    |        Approval (msg.sender, _to, _tokenId);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4d7edd5f94515b0f35b38f6fb2ea975a20823465.sol(364)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoSprites':
    |        require (broughtSprites[_tokenId].owner == msg.sender);
    |        broughtSprites[_tokenId].owner = _to;
  > |        numberOfSpritesOwnedByUser[msg.sender]--;
    |        numberOfSpritesOwnedByUser[_to]++;
    |        spriteOwningHistory[_to].push(_tokenId);
  at /home/jiaming/mavs_srcs/contract@0x4d7edd5f94515b0f35b38f6fb2ea975a20823465.sol(371)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoSprites':
    |        numberOfSpritesOwnedByUser[msg.sender]--;
    |        numberOfSpritesOwnedByUser[_to]++;
  > |        spriteOwningHistory[_to].push(_tokenId);
    |        Transfer (msg.sender, _to, _tokenId);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4d7edd5f94515b0f35b38f6fb2ea975a20823465.sol(373)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoSprites':
    |pragma solidity ^0.4.2;
    |
  > |// The below two interfaces (KittyCore and SaleClockAuction) are from Crypto Kitties. This contract will have to call the Crypto Kitties contracts to find the owner of a Kitty, the properties of a Kitty and a Kitties price.
    |interface KittyCore {
    |
  at /home/jiaming/mavs_srcs/contract@0x4d7edd5f94515b0f35b38f6fb2ea975a20823465.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoSprites':
    |        require (_priceMultiplier > 0);
    |        require (_priceDivider > 0);
  > |        priceMultiplier = _priceMultiplier;
    |        priceDivider = _priceDivider;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4d7edd5f94515b0f35b38f6fb2ea975a20823465.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoSprites':
    |        require (_priceDivider > 0);
    |        priceMultiplier = _priceMultiplier;
  > |        priceDivider = _priceDivider;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x4d7edd5f94515b0f35b38f6fb2ea975a20823465.sol(123)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoSprites':
    |    function adjustCut (uint _ownerCut, uint _charityCut) onlyOwner {
    |        require (_ownerCut + _charityCut < 51); // Keep this contract honest by allowing the maximum combined cut to be no more than 5% (50/1000) of sales
  > |        ownerCut = _ownerCut;
    |        charityCut = _charityCut;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4d7edd5f94515b0f35b38f6fb2ea975a20823465.sol(128)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoSprites':
    |        require (_ownerCut + _charityCut < 51); // Keep this contract honest by allowing the maximum combined cut to be no more than 5% (50/1000) of sales
    |        ownerCut = _ownerCut;
  > |        charityCut = _charityCut;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x4d7edd5f94515b0f35b38f6fb2ea975a20823465.sol(129)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoSprites':
    |    function adjustFeaturePrice (uint _featurePrice) onlyOwner {
    |        require (_featurePrice > 0);
  > |        featurePrice = _featurePrice;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x4d7edd5f94515b0f35b38f6fb2ea975a20823465.sol(134)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoSprites':
    |        owner.transfer(etherForOwner);
    |        charityAddress.transfer(etherForCharity);
  > |        etherForOwner = 0;
    |        etherForCharity = 0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4d7edd5f94515b0f35b38f6fb2ea975a20823465.sol(140)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoSprites':
    |        charityAddress.transfer(etherForCharity);
    |        etherForOwner = 0;
  > |        etherForCharity = 0;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x4d7edd5f94515b0f35b38f6fb2ea975a20823465.sol(141)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoSprites':
    |            broughtSprites[spriteId].price = 1; // When a user buys a Sprite Id that isn't for sale in the buySprite() function (ie. would be a Sprite that's never been brought before, for a Crypto Kitty that's for sale), one of the requirements is broughtSprites[spriteId].price == 0, which will be the case by default. By making the price = 1 this will throw and the Sprite won't be able to be brought
    |        } 
  > |        broughtSprites[spriteId].forSale = false;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x4d7edd5f94515b0f35b38f6fb2ea975a20823465.sol(279)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoSprites':
    |    function transfer (address _to, uint _tokenId) external {
    |        require (broughtSprites[_tokenId].owner == msg.sender);
  > |        broughtSprites[_tokenId].owner = _to;
    |        numberOfSpritesOwnedByUser[msg.sender]--;
    |        numberOfSpritesOwnedByUser[_to]++;
  at /home/jiaming/mavs_srcs/contract@0x4d7edd5f94515b0f35b38f6fb2ea975a20823465.sol(370)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoSprites':
    |        broughtSprites[_tokenId].owner = _to;
    |        numberOfSpritesOwnedByUser[msg.sender]--;
  > |        numberOfSpritesOwnedByUser[_to]++;
    |        spriteOwningHistory[_to].push(_tokenId);
    |        Transfer (msg.sender, _to, _tokenId);
  at /home/jiaming/mavs_srcs/contract@0x4d7edd5f94515b0f35b38f6fb2ea975a20823465.sol(372)


