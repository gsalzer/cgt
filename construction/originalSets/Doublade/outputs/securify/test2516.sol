Processing contract: /home/jiaming/mavs_srcs/contract@0xa4b01cc6f2fde9d5d84da419bee4359819ae210b.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xa4b01cc6f2fde9d5d84da419bee4359819ae210b.sol:ERC721
Processing contract: /home/jiaming/mavs_srcs/contract@0xa4b01cc6f2fde9d5d84da419bee4359819ae210b.sol:VirtualGift
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for LockedEther in contract 'VirtualGift':
    |}
    |
  > |contract VirtualGift is ERC721 {
    |    
    |    // load GTO to Virtual Gift contract, to interact with GTO
  at /home/jiaming/mavs_srcs/contract@0xa4b01cc6f2fde9d5d84da419bee4359819ae210b.sol(52)

[33mWarning[0m for UnhandledException in contract 'VirtualGift':
    |        // tell gifto transfer GTO from new owner to oldowner
    |        // NOTE: new owner MUST approve for Virtual Gift contract to take his balance
  > |        require(GTO.transferFrom(msg.sender, oldowner, giftStorage[GiftId].price) == true);
    |        // assign new owner for GiftId
    |        // TODO: old owner should have something to confirm that he want to sell this Gift
  at /home/jiaming/mavs_srcs/contract@0xa4b01cc6f2fde9d5d84da419bee4359819ae210b.sol(168)

[33mWarning[0m for UnhandledException in contract 'VirtualGift':
    |    onlyOwner
    |    public {
  > |        GTO.transfer(owner, GTO.balanceOf(address(this)));
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xa4b01cc6f2fde9d5d84da419bee4359819ae210b.sol(453)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'VirtualGift':
    |        // tell gifto transfer GTO from new owner to oldowner
    |        // NOTE: new owner MUST approve for Virtual Gift contract to take his balance
  > |        require(GTO.transferFrom(msg.sender, oldowner, giftStorage[GiftId].price) == true);
    |        // assign new owner for GiftId
    |        // TODO: old owner should have something to confirm that he want to sell this Gift
  at /home/jiaming/mavs_srcs/contract@0xa4b01cc6f2fde9d5d84da419bee4359819ae210b.sol(168)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'VirtualGift':
    |    onlyOwner
    |    public {
  > |        GTO.transfer(owner, GTO.balanceOf(address(this)));
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xa4b01cc6f2fde9d5d84da419bee4359819ae210b.sol(453)

[31mViolation[0m for UnrestrictedWrite in contract 'VirtualGift':
    |}
    |
  > |contract VirtualGift is ERC721 {
    |    
    |    // load GTO to Virtual Gift contract, to interact with GTO
  at /home/jiaming/mavs_srcs/contract@0xa4b01cc6f2fde9d5d84da419bee4359819ae210b.sol(52)

[31mViolation[0m for UnrestrictedWrite in contract 'VirtualGift':
    |        uint256 newGiftId = giftStorage.push(newGift) - 1;
    |        // turn on existen
  > |        GiftExists[newGiftId] = true;
    |        // assin gift url
    |        GiftLinks[newGiftId] = _url;
  at /home/jiaming/mavs_srcs/contract@0xa4b01cc6f2fde9d5d84da419bee4359819ae210b.sol(397)

[33mWarning[0m for UnrestrictedWrite in contract 'VirtualGift':
    |        require(msg.sender != _to);
    |        
  > |        allowed[msg.sender][_to] = _GiftId;
    |        Approval(msg.sender, _to, _GiftId);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa4b01cc6f2fde9d5d84da419bee4359819ae210b.sol(224)

[33mWarning[0m for UnrestrictedWrite in contract 'VirtualGift':
    |
    |        // delete approve when being done take owner ship
  > |        delete allowed[oldOwner][newOwner];
    |
    |        Transfer(oldOwner, newOwner, _GiftId);
  at /home/jiaming/mavs_srcs/contract@0xa4b01cc6f2fde9d5d84da419bee4359819ae210b.sol(257)

[33mWarning[0m for UnrestrictedWrite in contract 'VirtualGift':
    |    internal {
    |        // Since the number of Gift is capped to 2^32 we can't overflow this
  > |        balances[_to]++;
    |        // transfer ownership
    |        GiftIndexToOwners[_GiftId] = _to;
  at /home/jiaming/mavs_srcs/contract@0xa4b01cc6f2fde9d5d84da419bee4359819ae210b.sol(269)

[33mWarning[0m for UnrestrictedWrite in contract 'VirtualGift':
    |        balances[_to]++;
    |        // transfer ownership
  > |        GiftIndexToOwners[_GiftId] = _to;
    |        // When creating new Gift _from is 0x0, but we can't account that address.
    |        if (_from != address(0)) {
  at /home/jiaming/mavs_srcs/contract@0xa4b01cc6f2fde9d5d84da419bee4359819ae210b.sol(271)

[33mWarning[0m for UnrestrictedWrite in contract 'VirtualGift':
    |        // When creating new Gift _from is 0x0, but we can't account that address.
    |        if (_from != address(0)) {
  > |            balances[_from]--;
    |        }
    |        // Emit the transfer event.
  at /home/jiaming/mavs_srcs/contract@0xa4b01cc6f2fde9d5d84da419bee4359819ae210b.sol(274)

[33mWarning[0m for UnrestrictedWrite in contract 'VirtualGift':
    |pragma solidity ^0.4.18;
    |
  > |contract ERC721 {
    |    // ERC20 compatible functions
    |    // use variable getter
  at /home/jiaming/mavs_srcs/contract@0xa4b01cc6f2fde9d5d84da419bee4359819ae210b.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'VirtualGift':
    |}
    |
  > |contract VirtualGift is ERC721 {
    |    
    |    // load GTO to Virtual Gift contract, to interact with GTO
  at /home/jiaming/mavs_srcs/contract@0xa4b01cc6f2fde9d5d84da419bee4359819ae210b.sol(52)

[33mWarning[0m for UnrestrictedWrite in contract 'VirtualGift':
    |    public
    |    onlyOwner{
  > |        GTO = ERC20(newAddress);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xa4b01cc6f2fde9d5d84da419bee4359819ae210b.sol(138)

[33mWarning[0m for UnrestrictedWrite in contract 'VirtualGift':
    |        });
    |        // push to array and return the length is the id of new Gift
  > |        uint256 newGiftId = giftStorage.push(newGift) - 1;
    |        // turn on existen
    |        GiftExists[newGiftId] = true;
  at /home/jiaming/mavs_srcs/contract@0xa4b01cc6f2fde9d5d84da419bee4359819ae210b.sol(395)

[33mWarning[0m for UnrestrictedWrite in contract 'VirtualGift':
    |        require(GiftExists[GiftId]);
    |        // setting new properties
  > |        giftStorage[GiftId].price = _price;
    |        giftStorage[GiftId].description = _description;
    |        GiftLinks[GiftId] = _giftUrl;
  at /home/jiaming/mavs_srcs/contract@0xa4b01cc6f2fde9d5d84da419bee4359819ae210b.sol(435)

[33mWarning[0m for UnrestrictedWrite in contract 'VirtualGift':
    |    onlyOwner {
    |        // just setting GiftExists equal to false
  > |        GiftExists[GiftId] = false;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xa4b01cc6f2fde9d5d84da419bee4359819ae210b.sol(446)


