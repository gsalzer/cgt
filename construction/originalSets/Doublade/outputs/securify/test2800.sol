Processing contract: /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol:BitpaintingAuctions
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol:BitpaintingBase
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol:ERC721
Processing contract: /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol:ERC721Metadata
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol:IAuctions
Processing contract: /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol:IStorage
Processing contract: /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol:PaintingOwnership
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'BitpaintingAuctions':
    |
    |    function withdraw() external onlyOwner {
  > |        owner.transfer(this.balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(603)

[33mWarning[0m for DAOConstantGas in contract 'BitpaintingAuctions':
    |            uint8 cut = bitpaintingStorage.secondarySaleCut();
    |            uint forSeller = ((100 - cut) * _amount) / 100;
  > |            seller.transfer(forSeller);
    |        }
    |        bitpaintingStorage.removeAuction(_tokenId);
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(688)

[33mWarning[0m for LockedEther in contract 'BitpaintingAuctions':
    |// File: contracts/BitpaintingAuctions.sol
    |
  > |contract BitpaintingAuctions is PaintingOwnership, IAuctions {
    |
    |    event AuctionCreated(
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(609)

[31mViolation[0m for TODAmount in contract 'BitpaintingAuctions':
    |
    |    function withdraw() external onlyOwner {
  > |        owner.transfer(this.balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(603)

[31mViolation[0m for TODReceiver in contract 'BitpaintingAuctions':
    |
    |    function withdraw() external onlyOwner {
  > |        owner.transfer(this.balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(603)

[33mWarning[0m for UnhandledException in contract 'BitpaintingAuctions':
    |
    |    modifier canPauseUnpause() {
  > |        require(msg.sender == owner || msg.sender == bitpaintingStorage.developer());
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(250)

[33mWarning[0m for UnhandledException in contract 'BitpaintingAuctions':
    |    function canUserReleaseArtwork(address _address)
    |        public constant returns (bool _can) {
  > |        return (bitpaintingStorage.isOwner(_address)
    |            || bitpaintingStorage.isAdmin(_address)
    |            || bitpaintingStorage.isAllowed(_address));
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(275)

[33mWarning[0m for UnhandledException in contract 'BitpaintingAuctions':
    |        public constant returns (bool _can) {
    |        return (bitpaintingStorage.isOwner(_address)
  > |            || bitpaintingStorage.isAdmin(_address)
    |            || bitpaintingStorage.isAllowed(_address));
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(276)

[33mWarning[0m for UnhandledException in contract 'BitpaintingAuctions':
    |        return (bitpaintingStorage.isOwner(_address)
    |            || bitpaintingStorage.isAdmin(_address)
  > |            || bitpaintingStorage.isAllowed(_address));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(277)

[33mWarning[0m for UnhandledException in contract 'BitpaintingAuctions':
    |    function canUserCancelArtwork(address _address)
    |        public constant returns (bool _can) {
  > |        return (bitpaintingStorage.isOwner(_address)
    |            || bitpaintingStorage.isAdmin(_address));
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(282)

[33mWarning[0m for UnhandledException in contract 'BitpaintingAuctions':
    |        public constant returns (bool _can) {
    |        return (bitpaintingStorage.isOwner(_address)
  > |            || bitpaintingStorage.isAdmin(_address));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(283)

[33mWarning[0m for UnhandledException in contract 'BitpaintingAuctions':
    |    function _transfer(address _from, address _to, uint256 _tokenId)
    |        internal {
  > |        bitpaintingStorage.setOwnership(_tokenId, _to);
    |        Transfer(_from, _to, _tokenId);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(299)

[33mWarning[0m for UnhandledException in contract 'BitpaintingAuctions':
    |
    |    function _owns(address _claimant, uint256 _tokenId) internal constant returns (bool) {
  > |        return bitpaintingStorage.getPaintingOwner(_tokenId) == _claimant;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(444)

[33mWarning[0m for UnhandledException in contract 'BitpaintingAuctions':
    |
    |    function balanceOf(address _owner) public constant returns (uint256 count) {
  > |        return bitpaintingStorage.getOwnershipTokenCount(_owner);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(448)

[33mWarning[0m for UnhandledException in contract 'BitpaintingAuctions':
    |
    |    function _approve(uint256 _tokenId, address _approved) internal {
  > |        bitpaintingStorage.approve(_tokenId, _approved);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(452)

[33mWarning[0m for UnhandledException in contract 'BitpaintingAuctions':
    |    function _approvedFor(address _claimant, uint256 _tokenId)
    |        internal constant returns (bool) {
  > |        return bitpaintingStorage.isApprovedFor(_tokenId, _claimant);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(457)

[33mWarning[0m for UnhandledException in contract 'BitpaintingAuctions':
    |
    |    function totalSupply() public constant returns (uint) {
  > |      return bitpaintingStorage.paintingsCount();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(513)

[33mWarning[0m for UnhandledException in contract 'BitpaintingAuctions':
    |    function _ownerOf(uint256 _tokenId)
    |        internal constant returns (address) {
  > |        return bitpaintingStorage.getPaintingOwner(_tokenId);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(523)

[33mWarning[0m for UnhandledException in contract 'BitpaintingAuctions':
    |
    |        for (paintingId = 1; paintingId <= totalCats; paintingId++) {
  > |            if (bitpaintingStorage.getPaintingOwner(paintingId) == _owner) {
    |                result[resultIndex] = paintingId;
    |                resultIndex++;
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(541)

[33mWarning[0m for UnhandledException in contract 'BitpaintingAuctions':
    |      bytes32[4] memory buffer;
    |      uint256 count;
  > |      (buffer, count) = erc721Metadata.getMetadata(_tokenId, _preferredTransport);
    |
    |      return _toString(buffer, count);
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(597)

[33mWarning[0m for UnhandledException in contract 'BitpaintingAuctions':
    |
    |    function withdraw() external onlyOwner {
  > |        owner.transfer(this.balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(603)

[33mWarning[0m for UnhandledException in contract 'BitpaintingAuctions':
    |        returns (uint)
    |    {
  > |        require(bitpaintingStorage.isOnAuction(_tokenId));
    |        uint secondsPassed = 0;
    |        address seller;
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(625)

[33mWarning[0m for UnhandledException in contract 'BitpaintingAuctions':
    |        uint startedAt;
    |        (seller, startingPrice, endingPrice, duration, startedAt)
  > |            = bitpaintingStorage.getAuction(_tokenId);
    |
    |        // move that as class/contract member
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(633)

[33mWarning[0m for UnhandledException in contract 'BitpaintingAuctions':
    |
    |    function _bid(uint _tokenId, uint _amount) private {
  > |        require(bitpaintingStorage.isOnAuction(_tokenId));
    |        require(bitpaintingStorage.canBeBidden(_tokenId));
    |
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(677)

[33mWarning[0m for UnhandledException in contract 'BitpaintingAuctions':
    |    function _bid(uint _tokenId, uint _amount) private {
    |        require(bitpaintingStorage.isOnAuction(_tokenId));
  > |        require(bitpaintingStorage.canBeBidden(_tokenId));
    |
    |        uint weis_in_gwei = 1000000000;
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(678)

[33mWarning[0m for UnhandledException in contract 'BitpaintingAuctions':
    |
    |        uint weis_in_gwei = 1000000000;
  > |        address seller = bitpaintingStorage.getAuctionSeller(_tokenId);
    |        uint price = currentPrice(_tokenId) * weis_in_gwei;
    |        require(_amount >= price);
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(681)

[33mWarning[0m for UnhandledException in contract 'BitpaintingAuctions':
    |        require(_amount >= price);
    |
  > |        if (bitpaintingStorage.isSecondary(_tokenId)) {
    |            uint8 cut = bitpaintingStorage.secondarySaleCut();
    |            uint forSeller = ((100 - cut) * _amount) / 100;
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(685)

[33mWarning[0m for UnhandledException in contract 'BitpaintingAuctions':
    |
    |        if (bitpaintingStorage.isSecondary(_tokenId)) {
  > |            uint8 cut = bitpaintingStorage.secondarySaleCut();
    |            uint forSeller = ((100 - cut) * _amount) / 100;
    |            seller.transfer(forSeller);
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(686)

[33mWarning[0m for UnhandledException in contract 'BitpaintingAuctions':
    |            uint8 cut = bitpaintingStorage.secondarySaleCut();
    |            uint forSeller = ((100 - cut) * _amount) / 100;
  > |            seller.transfer(forSeller);
    |        }
    |        bitpaintingStorage.removeAuction(_tokenId);
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(688)

[33mWarning[0m for UnhandledException in contract 'BitpaintingAuctions':
    |            seller.transfer(forSeller);
    |        }
  > |        bitpaintingStorage.removeAuction(_tokenId);
    |        bitpaintingStorage.increaseOwnershipTokenCount(msg.sender);
    |        bitpaintingStorage.decreaseOwnershipTokenCount(seller);
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(690)

[33mWarning[0m for UnhandledException in contract 'BitpaintingAuctions':
    |        }
    |        bitpaintingStorage.removeAuction(_tokenId);
  > |        bitpaintingStorage.increaseOwnershipTokenCount(msg.sender);
    |        bitpaintingStorage.decreaseOwnershipTokenCount(seller);
    |        bitpaintingStorage.sealForChanges(_tokenId);
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(691)

[33mWarning[0m for UnhandledException in contract 'BitpaintingAuctions':
    |        bitpaintingStorage.removeAuction(_tokenId);
    |        bitpaintingStorage.increaseOwnershipTokenCount(msg.sender);
  > |        bitpaintingStorage.decreaseOwnershipTokenCount(seller);
    |        bitpaintingStorage.sealForChanges(_tokenId);
    |
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(692)

[33mWarning[0m for UnhandledException in contract 'BitpaintingAuctions':
    |        bitpaintingStorage.increaseOwnershipTokenCount(msg.sender);
    |        bitpaintingStorage.decreaseOwnershipTokenCount(seller);
  > |        bitpaintingStorage.sealForChanges(_tokenId);
    |
    |        AuctionSuccessful(_tokenId, price, msg.sender);
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(693)

[33mWarning[0m for UnhandledException in contract 'BitpaintingAuctions':
    |    /// @dev Cancels an auction unconditionally.
    |    function _cancelAuction(uint _tokenId) internal {
  > |        bitpaintingStorage.removeAuction(_tokenId);
    |        AuctionCancelled(_tokenId, msg.sender);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(704)

[33mWarning[0m for UnhandledException in contract 'BitpaintingAuctions':
    |        require(_duration == uint(uint64(_duration)));
    |
  > |        bitpaintingStorage.addAuction(_tokenId, _startingPrice, _endingPrice, _duration, _seller);
    |
    |        AuctionCreated(
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(731)

[33mWarning[0m for UnhandledException in contract 'BitpaintingAuctions':
    |        require(_duration == uint(uint64(_duration)));
    |
  > |        bitpaintingStorage.addReleaseAuction(
    |            _tokenId,
    |            _startingPrice,
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(755)

[33mWarning[0m for UnhandledException in contract 'BitpaintingAuctions':
    |        whenNotPaused
    |    {
  > |        require(bitpaintingStorage.getPaintingOwner(_tokenId) == msg.sender);
    |        require(!bitpaintingStorage.hasEditionInProgress(_tokenId));
    |        require(bitpaintingStorage.isReady(_tokenId));
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(793)

[33mWarning[0m for UnhandledException in contract 'BitpaintingAuctions':
    |    {
    |        require(bitpaintingStorage.getPaintingOwner(_tokenId) == msg.sender);
  > |        require(!bitpaintingStorage.hasEditionInProgress(_tokenId));
    |        require(bitpaintingStorage.isReady(_tokenId));
    |        require(!bitpaintingStorage.isOnAuction(_tokenId));
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(794)

[33mWarning[0m for UnhandledException in contract 'BitpaintingAuctions':
    |        require(bitpaintingStorage.getPaintingOwner(_tokenId) == msg.sender);
    |        require(!bitpaintingStorage.hasEditionInProgress(_tokenId));
  > |        require(bitpaintingStorage.isReady(_tokenId));
    |        require(!bitpaintingStorage.isOnAuction(_tokenId));
    |        require(_startingPrice > _endingPrice);
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(795)

[33mWarning[0m for UnhandledException in contract 'BitpaintingAuctions':
    |        require(!bitpaintingStorage.hasEditionInProgress(_tokenId));
    |        require(bitpaintingStorage.isReady(_tokenId));
  > |        require(!bitpaintingStorage.isOnAuction(_tokenId));
    |        require(_startingPrice > _endingPrice);
    |
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(796)

[33mWarning[0m for UnhandledException in contract 'BitpaintingAuctions':
    |
    |    function cancelAuction(uint _tokenId) external whenNotPaused {
  > |        require(bitpaintingStorage.isOnAuction(_tokenId));
    |        address seller = bitpaintingStorage.getAuctionSeller(_tokenId);
    |        require(msg.sender == seller);
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(810)

[33mWarning[0m for UnhandledException in contract 'BitpaintingAuctions':
    |    function cancelAuction(uint _tokenId) external whenNotPaused {
    |        require(bitpaintingStorage.isOnAuction(_tokenId));
  > |        address seller = bitpaintingStorage.getAuctionSeller(_tokenId);
    |        require(msg.sender == seller);
    |        _cancelAuction(_tokenId);
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(811)

[33mWarning[0m for UnhandledException in contract 'BitpaintingAuctions':
    |    function cancelAuctionWhenPaused(uint _tokenId)
    |        external whenPaused onlyOwner {
  > |        require(bitpaintingStorage.isOnAuction(_tokenId));
    |        address seller = bitpaintingStorage.getAuctionSeller(_tokenId);
    |        require(msg.sender == seller);
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(818)

[33mWarning[0m for UnhandledException in contract 'BitpaintingAuctions':
    |        external whenPaused onlyOwner {
    |        require(bitpaintingStorage.isOnAuction(_tokenId));
  > |        address seller = bitpaintingStorage.getAuctionSeller(_tokenId);
    |        require(msg.sender == seller);
    |        _cancelAuction(_tokenId);
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(819)

[33mWarning[0m for UnhandledException in contract 'BitpaintingAuctions':
    |
    |    function bid(uint _tokenId, address _owner) external payable whenNotPaused {
  > |        address seller = bitpaintingStorage.getAuctionSeller(_tokenId);
    |        require(seller == _owner);
    |        _bid(_tokenId, msg.value);
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(825)

[33mWarning[0m for UnhandledException in contract 'BitpaintingAuctions':
    |        uint[] prices
    |        ) {
  > |        uint length = bitpaintingStorage.totalPaintingsCount();
    |        uint count = bitpaintingStorage.getAuctionsCount();
    |        tokens = new uint[](count);
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(838)

[33mWarning[0m for UnhandledException in contract 'BitpaintingAuctions':
    |        ) {
    |        uint length = bitpaintingStorage.totalPaintingsCount();
  > |        uint count = bitpaintingStorage.getAuctionsCount();
    |        tokens = new uint[](count);
    |        generations = new uint8[](count);
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(839)

[33mWarning[0m for UnhandledException in contract 'BitpaintingAuctions':
    |
    |        for(uint index = 0; index < length; index++) {
  > |            uint tokenId = bitpaintingStorage.getPaintingIdAtIndex(index);
    |
    |            if (bitpaintingStorage.isCanceled(tokenId)) {
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(848)

[33mWarning[0m for UnhandledException in contract 'BitpaintingAuctions':
    |            uint tokenId = bitpaintingStorage.getPaintingIdAtIndex(index);
    |
  > |            if (bitpaintingStorage.isCanceled(tokenId)) {
    |                continue;
    |            }
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(850)

[33mWarning[0m for UnhandledException in contract 'BitpaintingAuctions':
    |            }
    |
  > |            if (!bitpaintingStorage.isOnAuction(tokenId)) {
    |                continue;
    |            }
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(854)

[33mWarning[0m for UnhandledException in contract 'BitpaintingAuctions':
    |
    |            tokens[pointer] = tokenId;
  > |            generations[pointer] = bitpaintingStorage.getPaintingGeneration(tokenId);
    |            sellers[pointer] = _ownerOf(tokenId);
    |            speeds[pointer] = bitpaintingStorage.getPaintingSpeed(tokenId);
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(859)

[33mWarning[0m for UnhandledException in contract 'BitpaintingAuctions':
    |            generations[pointer] = bitpaintingStorage.getPaintingGeneration(tokenId);
    |            sellers[pointer] = _ownerOf(tokenId);
  > |            speeds[pointer] = bitpaintingStorage.getPaintingSpeed(tokenId);
    |            prices[pointer] = currentPrice(tokenId);
    |            pointer++;
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(861)

[33mWarning[0m for UnhandledException in contract 'BitpaintingAuctions':
    |
    |        for(uint index = 0; index < tokenCount; index++) {
  > |            uint tokenId = bitpaintingStorage.getPaintingIdAtIndex(index);
    |
    |            if (_ownerOf(tokenId) != _of) {
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(880)

[33mWarning[0m for UnhandledException in contract 'BitpaintingAuctions':
    |            }
    |
  > |            if (!bitpaintingStorage.isReady(tokenId)) {
    |                continue;
    |            }
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(886)

[33mWarning[0m for UnhandledException in contract 'BitpaintingAuctions':
    |            }
    |
  > |            if (!bitpaintingStorage.isOnAuction(tokenId)) {
    |                continue;
    |            }
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(890)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingAuctions':
    |
    |    modifier canPauseUnpause() {
  > |        require(msg.sender == owner || msg.sender == bitpaintingStorage.developer());
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(250)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingAuctions':
    |    function canUserReleaseArtwork(address _address)
    |        public constant returns (bool _can) {
  > |        return (bitpaintingStorage.isOwner(_address)
    |            || bitpaintingStorage.isAdmin(_address)
    |            || bitpaintingStorage.isAllowed(_address));
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(275)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingAuctions':
    |        public constant returns (bool _can) {
    |        return (bitpaintingStorage.isOwner(_address)
  > |            || bitpaintingStorage.isAdmin(_address)
    |            || bitpaintingStorage.isAllowed(_address));
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(276)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingAuctions':
    |        return (bitpaintingStorage.isOwner(_address)
    |            || bitpaintingStorage.isAdmin(_address)
  > |            || bitpaintingStorage.isAllowed(_address));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(277)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingAuctions':
    |    function canUserCancelArtwork(address _address)
    |        public constant returns (bool _can) {
  > |        return (bitpaintingStorage.isOwner(_address)
    |            || bitpaintingStorage.isAdmin(_address));
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(282)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingAuctions':
    |        public constant returns (bool _can) {
    |        return (bitpaintingStorage.isOwner(_address)
  > |            || bitpaintingStorage.isAdmin(_address));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(283)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingAuctions':
    |    function _transfer(address _from, address _to, uint256 _tokenId)
    |        internal {
  > |        bitpaintingStorage.setOwnership(_tokenId, _to);
    |        Transfer(_from, _to, _tokenId);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(299)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingAuctions':
    |
    |    function _owns(address _claimant, uint256 _tokenId) internal constant returns (bool) {
  > |        return bitpaintingStorage.getPaintingOwner(_tokenId) == _claimant;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(444)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingAuctions':
    |
    |    function balanceOf(address _owner) public constant returns (uint256 count) {
  > |        return bitpaintingStorage.getOwnershipTokenCount(_owner);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(448)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingAuctions':
    |
    |    function _approve(uint256 _tokenId, address _approved) internal {
  > |        bitpaintingStorage.approve(_tokenId, _approved);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(452)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingAuctions':
    |    function _approvedFor(address _claimant, uint256 _tokenId)
    |        internal constant returns (bool) {
  > |        return bitpaintingStorage.isApprovedFor(_tokenId, _claimant);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(457)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingAuctions':
    |
    |    function totalSupply() public constant returns (uint) {
  > |      return bitpaintingStorage.paintingsCount();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(513)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingAuctions':
    |    function _ownerOf(uint256 _tokenId)
    |        internal constant returns (address) {
  > |        return bitpaintingStorage.getPaintingOwner(_tokenId);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(523)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingAuctions':
    |
    |        for (paintingId = 1; paintingId <= totalCats; paintingId++) {
  > |            if (bitpaintingStorage.getPaintingOwner(paintingId) == _owner) {
    |                result[resultIndex] = paintingId;
    |                resultIndex++;
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(541)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingAuctions':
    |      bytes32[4] memory buffer;
    |      uint256 count;
  > |      (buffer, count) = erc721Metadata.getMetadata(_tokenId, _preferredTransport);
    |
    |      return _toString(buffer, count);
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(597)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingAuctions':
    |
    |    function withdraw() external onlyOwner {
  > |        owner.transfer(this.balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(603)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingAuctions':
    |        returns (uint)
    |    {
  > |        require(bitpaintingStorage.isOnAuction(_tokenId));
    |        uint secondsPassed = 0;
    |        address seller;
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(625)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingAuctions':
    |        uint startedAt;
    |        (seller, startingPrice, endingPrice, duration, startedAt)
  > |            = bitpaintingStorage.getAuction(_tokenId);
    |
    |        // move that as class/contract member
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(633)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingAuctions':
    |
    |    function _bid(uint _tokenId, uint _amount) private {
  > |        require(bitpaintingStorage.isOnAuction(_tokenId));
    |        require(bitpaintingStorage.canBeBidden(_tokenId));
    |
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(677)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingAuctions':
    |    function _bid(uint _tokenId, uint _amount) private {
    |        require(bitpaintingStorage.isOnAuction(_tokenId));
  > |        require(bitpaintingStorage.canBeBidden(_tokenId));
    |
    |        uint weis_in_gwei = 1000000000;
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(678)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingAuctions':
    |
    |        uint weis_in_gwei = 1000000000;
  > |        address seller = bitpaintingStorage.getAuctionSeller(_tokenId);
    |        uint price = currentPrice(_tokenId) * weis_in_gwei;
    |        require(_amount >= price);
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(681)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingAuctions':
    |        require(_amount >= price);
    |
  > |        if (bitpaintingStorage.isSecondary(_tokenId)) {
    |            uint8 cut = bitpaintingStorage.secondarySaleCut();
    |            uint forSeller = ((100 - cut) * _amount) / 100;
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(685)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingAuctions':
    |
    |        if (bitpaintingStorage.isSecondary(_tokenId)) {
  > |            uint8 cut = bitpaintingStorage.secondarySaleCut();
    |            uint forSeller = ((100 - cut) * _amount) / 100;
    |            seller.transfer(forSeller);
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(686)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingAuctions':
    |            seller.transfer(forSeller);
    |        }
  > |        bitpaintingStorage.removeAuction(_tokenId);
    |        bitpaintingStorage.increaseOwnershipTokenCount(msg.sender);
    |        bitpaintingStorage.decreaseOwnershipTokenCount(seller);
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(690)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingAuctions':
    |        }
    |        bitpaintingStorage.removeAuction(_tokenId);
  > |        bitpaintingStorage.increaseOwnershipTokenCount(msg.sender);
    |        bitpaintingStorage.decreaseOwnershipTokenCount(seller);
    |        bitpaintingStorage.sealForChanges(_tokenId);
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(691)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingAuctions':
    |        bitpaintingStorage.removeAuction(_tokenId);
    |        bitpaintingStorage.increaseOwnershipTokenCount(msg.sender);
  > |        bitpaintingStorage.decreaseOwnershipTokenCount(seller);
    |        bitpaintingStorage.sealForChanges(_tokenId);
    |
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(692)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingAuctions':
    |        bitpaintingStorage.increaseOwnershipTokenCount(msg.sender);
    |        bitpaintingStorage.decreaseOwnershipTokenCount(seller);
  > |        bitpaintingStorage.sealForChanges(_tokenId);
    |
    |        AuctionSuccessful(_tokenId, price, msg.sender);
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(693)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingAuctions':
    |    /// @dev Cancels an auction unconditionally.
    |    function _cancelAuction(uint _tokenId) internal {
  > |        bitpaintingStorage.removeAuction(_tokenId);
    |        AuctionCancelled(_tokenId, msg.sender);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(704)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingAuctions':
    |        require(_duration == uint(uint64(_duration)));
    |
  > |        bitpaintingStorage.addAuction(_tokenId, _startingPrice, _endingPrice, _duration, _seller);
    |
    |        AuctionCreated(
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(731)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingAuctions':
    |        require(_duration == uint(uint64(_duration)));
    |
  > |        bitpaintingStorage.addReleaseAuction(
    |            _tokenId,
    |            _startingPrice,
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(755)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingAuctions':
    |        whenNotPaused
    |    {
  > |        require(bitpaintingStorage.getPaintingOwner(_tokenId) == msg.sender);
    |        require(!bitpaintingStorage.hasEditionInProgress(_tokenId));
    |        require(bitpaintingStorage.isReady(_tokenId));
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(793)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingAuctions':
    |    {
    |        require(bitpaintingStorage.getPaintingOwner(_tokenId) == msg.sender);
  > |        require(!bitpaintingStorage.hasEditionInProgress(_tokenId));
    |        require(bitpaintingStorage.isReady(_tokenId));
    |        require(!bitpaintingStorage.isOnAuction(_tokenId));
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(794)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingAuctions':
    |        require(bitpaintingStorage.getPaintingOwner(_tokenId) == msg.sender);
    |        require(!bitpaintingStorage.hasEditionInProgress(_tokenId));
  > |        require(bitpaintingStorage.isReady(_tokenId));
    |        require(!bitpaintingStorage.isOnAuction(_tokenId));
    |        require(_startingPrice > _endingPrice);
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(795)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingAuctions':
    |        require(!bitpaintingStorage.hasEditionInProgress(_tokenId));
    |        require(bitpaintingStorage.isReady(_tokenId));
  > |        require(!bitpaintingStorage.isOnAuction(_tokenId));
    |        require(_startingPrice > _endingPrice);
    |
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(796)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingAuctions':
    |
    |    function cancelAuction(uint _tokenId) external whenNotPaused {
  > |        require(bitpaintingStorage.isOnAuction(_tokenId));
    |        address seller = bitpaintingStorage.getAuctionSeller(_tokenId);
    |        require(msg.sender == seller);
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(810)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingAuctions':
    |    function cancelAuction(uint _tokenId) external whenNotPaused {
    |        require(bitpaintingStorage.isOnAuction(_tokenId));
  > |        address seller = bitpaintingStorage.getAuctionSeller(_tokenId);
    |        require(msg.sender == seller);
    |        _cancelAuction(_tokenId);
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(811)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingAuctions':
    |    function cancelAuctionWhenPaused(uint _tokenId)
    |        external whenPaused onlyOwner {
  > |        require(bitpaintingStorage.isOnAuction(_tokenId));
    |        address seller = bitpaintingStorage.getAuctionSeller(_tokenId);
    |        require(msg.sender == seller);
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(818)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingAuctions':
    |        external whenPaused onlyOwner {
    |        require(bitpaintingStorage.isOnAuction(_tokenId));
  > |        address seller = bitpaintingStorage.getAuctionSeller(_tokenId);
    |        require(msg.sender == seller);
    |        _cancelAuction(_tokenId);
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(819)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingAuctions':
    |
    |    function bid(uint _tokenId, address _owner) external payable whenNotPaused {
  > |        address seller = bitpaintingStorage.getAuctionSeller(_tokenId);
    |        require(seller == _owner);
    |        _bid(_tokenId, msg.value);
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(825)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingAuctions':
    |        uint[] prices
    |        ) {
  > |        uint length = bitpaintingStorage.totalPaintingsCount();
    |        uint count = bitpaintingStorage.getAuctionsCount();
    |        tokens = new uint[](count);
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(838)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingAuctions':
    |        ) {
    |        uint length = bitpaintingStorage.totalPaintingsCount();
  > |        uint count = bitpaintingStorage.getAuctionsCount();
    |        tokens = new uint[](count);
    |        generations = new uint8[](count);
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(839)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingAuctions':
    |
    |        for(uint index = 0; index < length; index++) {
  > |            uint tokenId = bitpaintingStorage.getPaintingIdAtIndex(index);
    |
    |            if (bitpaintingStorage.isCanceled(tokenId)) {
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(848)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingAuctions':
    |            uint tokenId = bitpaintingStorage.getPaintingIdAtIndex(index);
    |
  > |            if (bitpaintingStorage.isCanceled(tokenId)) {
    |                continue;
    |            }
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(850)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingAuctions':
    |            }
    |
  > |            if (!bitpaintingStorage.isOnAuction(tokenId)) {
    |                continue;
    |            }
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(854)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingAuctions':
    |
    |            tokens[pointer] = tokenId;
  > |            generations[pointer] = bitpaintingStorage.getPaintingGeneration(tokenId);
    |            sellers[pointer] = _ownerOf(tokenId);
    |            speeds[pointer] = bitpaintingStorage.getPaintingSpeed(tokenId);
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(859)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingAuctions':
    |            generations[pointer] = bitpaintingStorage.getPaintingGeneration(tokenId);
    |            sellers[pointer] = _ownerOf(tokenId);
  > |            speeds[pointer] = bitpaintingStorage.getPaintingSpeed(tokenId);
    |            prices[pointer] = currentPrice(tokenId);
    |            pointer++;
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(861)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingAuctions':
    |
    |        for(uint index = 0; index < tokenCount; index++) {
  > |            uint tokenId = bitpaintingStorage.getPaintingIdAtIndex(index);
    |
    |            if (_ownerOf(tokenId) != _of) {
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(880)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingAuctions':
    |            }
    |
  > |            if (!bitpaintingStorage.isReady(tokenId)) {
    |                continue;
    |            }
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(886)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingAuctions':
    |            }
    |
  > |            if (!bitpaintingStorage.isOnAuction(tokenId)) {
    |                continue;
    |            }
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(890)

[33mWarning[0m for UnrestrictedWrite in contract 'BitpaintingAuctions':
    |    function transferOwnership(address newOwner) external onlyOwner {
    |        require(newOwner != address(0));
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(184)

[33mWarning[0m for UnrestrictedWrite in contract 'BitpaintingAuctions':
    |    */
    |    function _pause() internal whenNotPaused {
  > |        paused = true;
    |        Pause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(221)

[33mWarning[0m for UnrestrictedWrite in contract 'BitpaintingAuctions':
    |     */
    |    function _unpause() internal whenPaused {
  > |        paused = false;
    |        Unpause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(229)

[33mWarning[0m for UnrestrictedWrite in contract 'BitpaintingAuctions':
    |    function setBitpaintingStorage(address _address) public onlyOwner {
    |        require(_address != address(0));
  > |        bitpaintingStorage = IStorage(_address);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(256)

[33mWarning[0m for UnrestrictedWrite in contract 'BitpaintingAuctions':
    |    ///  CEO only.
    |    function setMetadataAddress(address _contractAddress) public onlyOwner {
  > |        erc721Metadata = ERC721Metadata(_contractAddress);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(440)

[33mWarning[0m for LockedEther in contract 'BitpaintingBase':
    |// File: contracts/libs/BitpaintingBase.sol
    |
  > |contract BitpaintingBase is Pausable {
    |    /*** EVENTS ***/
    |    event Create(uint _tokenId,
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(236)

[31mViolation[0m for MissingInputValidation in contract 'BitpaintingBase':
    |    }
    |
  > |    function canUserReleaseArtwork(address _address)
    |        public constant returns (bool _can) {
    |        return (bitpaintingStorage.isOwner(_address)
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(273)

[31mViolation[0m for MissingInputValidation in contract 'BitpaintingBase':
    |    }
    |
  > |    function canUserCancelArtwork(address _address)
    |        public constant returns (bool _can) {
    |        return (bitpaintingStorage.isOwner(_address)
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(280)

[33mWarning[0m for MissingInputValidation in contract 'BitpaintingBase':
    |contract Ownable {
    |
  > |    address public owner;
    |
    |    function Ownable() public {
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(167)

[33mWarning[0m for MissingInputValidation in contract 'BitpaintingBase':
    |    }
    |
  > |    function isOwner(address _address) public constant returns (bool) {
    |        return _address == owner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(178)

[33mWarning[0m for MissingInputValidation in contract 'BitpaintingBase':
    |    }
    |
  > |    function transferOwnership(address newOwner) external onlyOwner {
    |        require(newOwner != address(0));
    |        owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(182)

[33mWarning[0m for MissingInputValidation in contract 'BitpaintingBase':
    |    event Unpause();
    |
  > |    bool public paused = false;
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(199)

[33mWarning[0m for MissingInputValidation in contract 'BitpaintingBase':
    |    * @dev called by the owner to pause, triggers stopped state
    |    */
  > |    function _pause() internal whenNotPaused {
    |        paused = true;
    |        Pause();
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(220)

[33mWarning[0m for MissingInputValidation in contract 'BitpaintingBase':
    |     * @dev called by the owner to unpause, returns to normal state
    |     */
  > |    function _unpause() internal whenPaused {
    |        paused = false;
    |        Unpause();
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(228)

[33mWarning[0m for MissingInputValidation in contract 'BitpaintingBase':
    |    event Transfer(address from, address to, uint256 tokenId);
    |
  > |    IStorage public bitpaintingStorage;
    |
    |    modifier canPauseUnpause() {
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(247)

[33mWarning[0m for MissingInputValidation in contract 'BitpaintingBase':
    |    }
    |
  > |    function setBitpaintingStorage(address _address) public onlyOwner {
    |        require(_address != address(0));
    |        bitpaintingStorage = IStorage(_address);
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(254)

[33mWarning[0m for MissingInputValidation in contract 'BitpaintingBase':
    |    * @dev called by the owner to pause, triggers stopped state
    |    */
  > |    function pause() public canPauseUnpause whenNotPaused {
    |        super._pause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(262)

[33mWarning[0m for MissingInputValidation in contract 'BitpaintingBase':
    |     * @dev called by the owner to unpause, returns to normal state
    |     */
  > |    function unpause() external canPauseUnpause whenPaused {
    |        super._unpause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(269)

[33mWarning[0m for UnhandledException in contract 'BitpaintingBase':
    |
    |    modifier canPauseUnpause() {
  > |        require(msg.sender == owner || msg.sender == bitpaintingStorage.developer());
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(250)

[33mWarning[0m for UnhandledException in contract 'BitpaintingBase':
    |    function canUserReleaseArtwork(address _address)
    |        public constant returns (bool _can) {
  > |        return (bitpaintingStorage.isOwner(_address)
    |            || bitpaintingStorage.isAdmin(_address)
    |            || bitpaintingStorage.isAllowed(_address));
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(275)

[33mWarning[0m for UnhandledException in contract 'BitpaintingBase':
    |        public constant returns (bool _can) {
    |        return (bitpaintingStorage.isOwner(_address)
  > |            || bitpaintingStorage.isAdmin(_address)
    |            || bitpaintingStorage.isAllowed(_address));
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(276)

[33mWarning[0m for UnhandledException in contract 'BitpaintingBase':
    |        return (bitpaintingStorage.isOwner(_address)
    |            || bitpaintingStorage.isAdmin(_address)
  > |            || bitpaintingStorage.isAllowed(_address));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(277)

[33mWarning[0m for UnhandledException in contract 'BitpaintingBase':
    |    function canUserCancelArtwork(address _address)
    |        public constant returns (bool _can) {
  > |        return (bitpaintingStorage.isOwner(_address)
    |            || bitpaintingStorage.isAdmin(_address));
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(282)

[33mWarning[0m for UnhandledException in contract 'BitpaintingBase':
    |        public constant returns (bool _can) {
    |        return (bitpaintingStorage.isOwner(_address)
  > |            || bitpaintingStorage.isAdmin(_address));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(283)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingBase':
    |
    |    modifier canPauseUnpause() {
  > |        require(msg.sender == owner || msg.sender == bitpaintingStorage.developer());
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(250)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingBase':
    |    function canUserReleaseArtwork(address _address)
    |        public constant returns (bool _can) {
  > |        return (bitpaintingStorage.isOwner(_address)
    |            || bitpaintingStorage.isAdmin(_address)
    |            || bitpaintingStorage.isAllowed(_address));
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(275)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingBase':
    |        public constant returns (bool _can) {
    |        return (bitpaintingStorage.isOwner(_address)
  > |            || bitpaintingStorage.isAdmin(_address)
    |            || bitpaintingStorage.isAllowed(_address));
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(276)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingBase':
    |        return (bitpaintingStorage.isOwner(_address)
    |            || bitpaintingStorage.isAdmin(_address)
  > |            || bitpaintingStorage.isAllowed(_address));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(277)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingBase':
    |    function canUserCancelArtwork(address _address)
    |        public constant returns (bool _can) {
  > |        return (bitpaintingStorage.isOwner(_address)
    |            || bitpaintingStorage.isAdmin(_address));
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(282)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingBase':
    |        public constant returns (bool _can) {
    |        return (bitpaintingStorage.isOwner(_address)
  > |            || bitpaintingStorage.isAdmin(_address));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(283)

[31mViolation[0m for UnrestrictedWrite in contract 'BitpaintingBase':
    |    */
    |    function _pause() internal whenNotPaused {
  > |        paused = true;
    |        Pause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(221)

[31mViolation[0m for UnrestrictedWrite in contract 'BitpaintingBase':
    |     */
    |    function _unpause() internal whenPaused {
  > |        paused = false;
    |        Unpause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(229)

[33mWarning[0m for UnrestrictedWrite in contract 'BitpaintingBase':
    |    function transferOwnership(address newOwner) external onlyOwner {
    |        require(newOwner != address(0));
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(184)

[33mWarning[0m for UnrestrictedWrite in contract 'BitpaintingBase':
    |    */
    |    function _pause() internal whenNotPaused {
  > |        paused = true;
    |        Pause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(221)

[33mWarning[0m for UnrestrictedWrite in contract 'BitpaintingBase':
    |     */
    |    function _unpause() internal whenPaused {
  > |        paused = false;
    |        Unpause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(229)

[33mWarning[0m for UnrestrictedWrite in contract 'BitpaintingBase':
    |    function setBitpaintingStorage(address _address) public onlyOwner {
    |        require(_address != address(0));
  > |        bitpaintingStorage = IStorage(_address);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(256)

[33mWarning[0m for LockedEther in contract 'ERC721Metadata':
    |/// @title The external contract that is responsible for generating metadata for the kitties,
    |///  it has one function that will return the data as bytes.
  > |contract ERC721Metadata {
    |    /// @dev Given a token Id, returns a byte array that is supposed to be converted into string.
    |    function getMetadata(uint256 _tokenId, string) public constant returns (bytes32[4] buffer, uint256 count) {
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(381)

[33mWarning[0m for MissingInputValidation in contract 'ERC721Metadata':
    |/// @title The external contract that is responsible for generating metadata for the kitties,
    |///  it has one function that will return the data as bytes.
  > |contract ERC721Metadata {
    |    /// @dev Given a token Id, returns a byte array that is supposed to be converted into string.
    |    function getMetadata(uint256 _tokenId, string) public constant returns (bytes32[4] buffer, uint256 count) {
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(381)

[33mWarning[0m for MissingInputValidation in contract 'ERC721Metadata':
    |contract ERC721Metadata {
    |    /// @dev Given a token Id, returns a byte array that is supposed to be converted into string.
  > |    function getMetadata(uint256 _tokenId, string) public constant returns (bytes32[4] buffer, uint256 count) {
    |        if (_tokenId == 1) {
    |            buffer[0] = "Hello World! :D";
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(383)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |* @dev Manages ownership of the contracts
    |*/
  > |contract Ownable {
    |
    |    address public owner;
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(165)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |contract Ownable {
    |
  > |    address public owner;
    |
    |    function Ownable() public {
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(167)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    }
    |
  > |    function isOwner(address _address) public constant returns (bool) {
    |        return _address == owner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(178)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    }
    |
  > |    function transferOwnership(address newOwner) external onlyOwner {
    |        require(newOwner != address(0));
    |        owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(182)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    function transferOwnership(address newOwner) external onlyOwner {
    |        require(newOwner != address(0));
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(184)

[33mWarning[0m for DAO in contract 'PaintingOwnership':
    |    function _transfer(address _from, address _to, uint256 _tokenId)
    |        internal {
  > |        bitpaintingStorage.setOwnership(_tokenId, _to);
    |        Transfer(_from, _to, _tokenId);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(299)

[33mWarning[0m for DAO in contract 'PaintingOwnership':
    |
    |    function _owns(address _claimant, uint256 _tokenId) internal constant returns (bool) {
  > |        return bitpaintingStorage.getPaintingOwner(_tokenId) == _claimant;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(444)

[33mWarning[0m for DAO in contract 'PaintingOwnership':
    |
    |    function _approve(uint256 _tokenId, address _approved) internal {
  > |        bitpaintingStorage.approve(_tokenId, _approved);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(452)

[33mWarning[0m for DAO in contract 'PaintingOwnership':
    |    function _approvedFor(address _claimant, uint256 _tokenId)
    |        internal constant returns (bool) {
  > |        return bitpaintingStorage.isApprovedFor(_tokenId, _claimant);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(457)

[33mWarning[0m for DAO in contract 'PaintingOwnership':
    |    function _ownerOf(uint256 _tokenId)
    |        internal constant returns (address) {
  > |        return bitpaintingStorage.getPaintingOwner(_tokenId);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(523)

[33mWarning[0m for DAOConstantGas in contract 'PaintingOwnership':
    |
    |    function withdraw() external onlyOwner {
  > |        owner.transfer(this.balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(603)

[33mWarning[0m for LockedEther in contract 'PaintingOwnership':
    |// File: contracts/libs/PaintingOwnership.sol
    |
  > |contract PaintingOwnership is BitpaintingBase, ERC721 {
    |
    |    /// @notice Name and symbol of the non fungible token, as defined in ERC721.
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(403)

[31mViolation[0m for MissingInputValidation in contract 'PaintingOwnership':
    |    }
    |
  > |    function canUserReleaseArtwork(address _address)
    |        public constant returns (bool _can) {
    |        return (bitpaintingStorage.isOwner(_address)
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(273)

[31mViolation[0m for MissingInputValidation in contract 'PaintingOwnership':
    |    }
    |
  > |    function canUserCancelArtwork(address _address)
    |        public constant returns (bool _can) {
    |        return (bitpaintingStorage.isOwner(_address)
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(280)

[31mViolation[0m for MissingInputValidation in contract 'PaintingOwnership':
    |    /// @dev Set the address of the sibling contract that tracks metadata.
    |    ///  CEO only.
  > |    function setMetadataAddress(address _contractAddress) public onlyOwner {
    |        erc721Metadata = ERC721Metadata(_contractAddress);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(439)

[31mViolation[0m for MissingInputValidation in contract 'PaintingOwnership':
    |    }
    |
  > |    function balanceOf(address _owner) public constant returns (uint256 count) {
    |        return bitpaintingStorage.getOwnershipTokenCount(_owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(447)

[31mViolation[0m for MissingInputValidation in contract 'PaintingOwnership':
    |    }
    |
  > |    function transfer(
    |        address _to,
    |        uint256 _tokenId
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(460)

[31mViolation[0m for MissingInputValidation in contract 'PaintingOwnership':
    |    }
    |
  > |    function approve(
    |      address _to,
    |      uint256 _tokenId
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(474)

[31mViolation[0m for MissingInputValidation in contract 'PaintingOwnership':
    |    }
    |
  > |    function transferFrom(
    |      address _from,
    |      address _to,
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(487)

[31mViolation[0m for MissingInputValidation in contract 'PaintingOwnership':
    |    }
    |
  > |    function ownerOf(uint256 _tokenId)
    |        external constant returns (address) {
    |        return _ownerOf(_tokenId);
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(516)

[31mViolation[0m for MissingInputValidation in contract 'PaintingOwnership':
    |    }
    |
  > |    function tokensOfOwner(address _owner)
    |        external constant returns(uint256[]) {
    |        uint256 tokenCount = balanceOf(_owner);
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(526)

[31mViolation[0m for MissingInputValidation in contract 'PaintingOwnership':
    |    ///  ERC-721 (https://github.com/ethereum/EIPs/issues/721)
    |    /// @param _tokenId The ID number of the Kitty whose metadata should be returned.
  > |    function tokenMetadata(uint256 _tokenId, string _preferredTransport) external constant returns (string infoUrl) {
    |      require(erc721Metadata != address(0));
    |      bytes32[4] memory buffer;
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(593)

[33mWarning[0m for MissingInputValidation in contract 'PaintingOwnership':
    |contract Ownable {
    |
  > |    address public owner;
    |
    |    function Ownable() public {
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(167)

[33mWarning[0m for MissingInputValidation in contract 'PaintingOwnership':
    |    }
    |
  > |    function isOwner(address _address) public constant returns (bool) {
    |        return _address == owner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(178)

[33mWarning[0m for MissingInputValidation in contract 'PaintingOwnership':
    |    }
    |
  > |    function transferOwnership(address newOwner) external onlyOwner {
    |        require(newOwner != address(0));
    |        owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(182)

[33mWarning[0m for MissingInputValidation in contract 'PaintingOwnership':
    |    event Unpause();
    |
  > |    bool public paused = false;
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(199)

[33mWarning[0m for MissingInputValidation in contract 'PaintingOwnership':
    |    * @dev called by the owner to pause, triggers stopped state
    |    */
  > |    function _pause() internal whenNotPaused {
    |        paused = true;
    |        Pause();
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(220)

[33mWarning[0m for MissingInputValidation in contract 'PaintingOwnership':
    |     * @dev called by the owner to unpause, returns to normal state
    |     */
  > |    function _unpause() internal whenPaused {
    |        paused = false;
    |        Unpause();
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(228)

[33mWarning[0m for MissingInputValidation in contract 'PaintingOwnership':
    |    event Transfer(address from, address to, uint256 tokenId);
    |
  > |    IStorage public bitpaintingStorage;
    |
    |    modifier canPauseUnpause() {
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(247)

[33mWarning[0m for MissingInputValidation in contract 'PaintingOwnership':
    |    }
    |
  > |    function setBitpaintingStorage(address _address) public onlyOwner {
    |        require(_address != address(0));
    |        bitpaintingStorage = IStorage(_address);
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(254)

[33mWarning[0m for MissingInputValidation in contract 'PaintingOwnership':
    |    * @dev called by the owner to pause, triggers stopped state
    |    */
  > |    function pause() public canPauseUnpause whenNotPaused {
    |        super._pause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(262)

[33mWarning[0m for MissingInputValidation in contract 'PaintingOwnership':
    |     * @dev called by the owner to unpause, returns to normal state
    |     */
  > |    function unpause() external canPauseUnpause whenPaused {
    |        super._unpause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(269)

[33mWarning[0m for MissingInputValidation in contract 'PaintingOwnership':
    |
    |    /// @dev Assigns ownership of a specific Painting to an address.
  > |    function _transfer(address _from, address _to, uint256 _tokenId)
    |        internal {
    |        bitpaintingStorage.setOwnership(_tokenId, _to);
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(297)

[33mWarning[0m for MissingInputValidation in contract 'PaintingOwnership':
    |// File: contracts/libs/PaintingOwnership.sol
    |
  > |contract PaintingOwnership is BitpaintingBase, ERC721 {
    |
    |    /// @notice Name and symbol of the non fungible token, as defined in ERC721.
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(403)

[33mWarning[0m for MissingInputValidation in contract 'PaintingOwnership':
    |
    |    /// @notice Name and symbol of the non fungible token, as defined in ERC721.
  > |    string public constant name = "BitPaintings";
    |    string public constant symbol = "BP";
    |
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(406)

[33mWarning[0m for MissingInputValidation in contract 'PaintingOwnership':
    |    /// @notice Name and symbol of the non fungible token, as defined in ERC721.
    |    string public constant name = "BitPaintings";
  > |    string public constant symbol = "BP";
    |
    |    ERC721Metadata public erc721Metadata;
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(407)

[33mWarning[0m for MissingInputValidation in contract 'PaintingOwnership':
    |    string public constant symbol = "BP";
    |
  > |    ERC721Metadata public erc721Metadata;
    |
    |    bytes4 constant InterfaceSignature_ERC165 =
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(409)

[33mWarning[0m for MissingInputValidation in contract 'PaintingOwnership':
    |    ///  Returns true for any standardized interfaces implemented by this contract. We implement
    |    ///  ERC-165 (obviously!) and ERC-721.
  > |    function supportsInterface(bytes4 _interfaceID) external constant returns (bool)
    |    {
    |        // DEBUG ONLY
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(429)

[33mWarning[0m for MissingInputValidation in contract 'PaintingOwnership':
    |    }
    |
  > |    function _owns(address _claimant, uint256 _tokenId) internal constant returns (bool) {
    |        return bitpaintingStorage.getPaintingOwner(_tokenId) == _claimant;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(443)

[33mWarning[0m for MissingInputValidation in contract 'PaintingOwnership':
    |    }
    |
  > |    function _approve(uint256 _tokenId, address _approved) internal {
    |        bitpaintingStorage.approve(_tokenId, _approved);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(451)

[33mWarning[0m for MissingInputValidation in contract 'PaintingOwnership':
    |    }
    |
  > |    function _approvedFor(address _claimant, uint256 _tokenId)
    |        internal constant returns (bool) {
    |        return bitpaintingStorage.isApprovedFor(_tokenId, _claimant);
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(455)

[33mWarning[0m for MissingInputValidation in contract 'PaintingOwnership':
    |    }
    |
  > |    function _transferFrom(
    |      address _from,
    |      address _to,
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(496)

[33mWarning[0m for MissingInputValidation in contract 'PaintingOwnership':
    |    }
    |
  > |    function totalSupply() public constant returns (uint) {
    |      return bitpaintingStorage.paintingsCount();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(512)

[33mWarning[0m for MissingInputValidation in contract 'PaintingOwnership':
    |    }
    |
  > |    function _ownerOf(uint256 _tokenId)
    |        internal constant returns (address) {
    |        return bitpaintingStorage.getPaintingOwner(_tokenId);
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(521)

[33mWarning[0m for MissingInputValidation in contract 'PaintingOwnership':
    |    ///  This method is licenced under the Apache License.
    |    ///  Ref: https://github.com/Arachnid/solidity-stringutils/blob/2f6ca9accb48ae14c66f1437ec50ed19a0616f78/strings.sol
  > |    function _memcpy(uint _dest, uint _src, uint _len) private constant {
    |      // Copy word-length chunks while possible
    |      for(; _len >= 32; _len -= 32) {
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(553)

[33mWarning[0m for MissingInputValidation in contract 'PaintingOwnership':
    |    ///  This method is licenced under the Apache License.
    |    ///  Ref: https://github.com/Arachnid/solidity-stringutils/blob/2f6ca9accb48ae14c66f1437ec50ed19a0616f78/strings.sol
  > |    function _toString(bytes32[4] _rawBytes, uint256 _stringLength) private constant returns (string) {
    |      var outputString = new string(_stringLength);
    |      uint256 outputPtr;
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(575)

[33mWarning[0m for MissingInputValidation in contract 'PaintingOwnership':
    |    }
    |
  > |    function withdraw() external onlyOwner {
    |        owner.transfer(this.balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(602)

[31mViolation[0m for TODAmount in contract 'PaintingOwnership':
    |
    |    function withdraw() external onlyOwner {
  > |        owner.transfer(this.balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(603)

[31mViolation[0m for TODReceiver in contract 'PaintingOwnership':
    |
    |    function withdraw() external onlyOwner {
  > |        owner.transfer(this.balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(603)

[33mWarning[0m for UnhandledException in contract 'PaintingOwnership':
    |
    |    modifier canPauseUnpause() {
  > |        require(msg.sender == owner || msg.sender == bitpaintingStorage.developer());
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(250)

[33mWarning[0m for UnhandledException in contract 'PaintingOwnership':
    |    function canUserReleaseArtwork(address _address)
    |        public constant returns (bool _can) {
  > |        return (bitpaintingStorage.isOwner(_address)
    |            || bitpaintingStorage.isAdmin(_address)
    |            || bitpaintingStorage.isAllowed(_address));
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(275)

[33mWarning[0m for UnhandledException in contract 'PaintingOwnership':
    |        public constant returns (bool _can) {
    |        return (bitpaintingStorage.isOwner(_address)
  > |            || bitpaintingStorage.isAdmin(_address)
    |            || bitpaintingStorage.isAllowed(_address));
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(276)

[33mWarning[0m for UnhandledException in contract 'PaintingOwnership':
    |        return (bitpaintingStorage.isOwner(_address)
    |            || bitpaintingStorage.isAdmin(_address)
  > |            || bitpaintingStorage.isAllowed(_address));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(277)

[33mWarning[0m for UnhandledException in contract 'PaintingOwnership':
    |    function canUserCancelArtwork(address _address)
    |        public constant returns (bool _can) {
  > |        return (bitpaintingStorage.isOwner(_address)
    |            || bitpaintingStorage.isAdmin(_address));
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(282)

[33mWarning[0m for UnhandledException in contract 'PaintingOwnership':
    |        public constant returns (bool _can) {
    |        return (bitpaintingStorage.isOwner(_address)
  > |            || bitpaintingStorage.isAdmin(_address));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(283)

[33mWarning[0m for UnhandledException in contract 'PaintingOwnership':
    |    function _transfer(address _from, address _to, uint256 _tokenId)
    |        internal {
  > |        bitpaintingStorage.setOwnership(_tokenId, _to);
    |        Transfer(_from, _to, _tokenId);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(299)

[33mWarning[0m for UnhandledException in contract 'PaintingOwnership':
    |
    |    function _owns(address _claimant, uint256 _tokenId) internal constant returns (bool) {
  > |        return bitpaintingStorage.getPaintingOwner(_tokenId) == _claimant;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(444)

[33mWarning[0m for UnhandledException in contract 'PaintingOwnership':
    |
    |    function balanceOf(address _owner) public constant returns (uint256 count) {
  > |        return bitpaintingStorage.getOwnershipTokenCount(_owner);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(448)

[33mWarning[0m for UnhandledException in contract 'PaintingOwnership':
    |
    |    function _approve(uint256 _tokenId, address _approved) internal {
  > |        bitpaintingStorage.approve(_tokenId, _approved);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(452)

[33mWarning[0m for UnhandledException in contract 'PaintingOwnership':
    |    function _approvedFor(address _claimant, uint256 _tokenId)
    |        internal constant returns (bool) {
  > |        return bitpaintingStorage.isApprovedFor(_tokenId, _claimant);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(457)

[33mWarning[0m for UnhandledException in contract 'PaintingOwnership':
    |
    |    function totalSupply() public constant returns (uint) {
  > |      return bitpaintingStorage.paintingsCount();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(513)

[33mWarning[0m for UnhandledException in contract 'PaintingOwnership':
    |    function _ownerOf(uint256 _tokenId)
    |        internal constant returns (address) {
  > |        return bitpaintingStorage.getPaintingOwner(_tokenId);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(523)

[33mWarning[0m for UnhandledException in contract 'PaintingOwnership':
    |
    |        for (paintingId = 1; paintingId <= totalCats; paintingId++) {
  > |            if (bitpaintingStorage.getPaintingOwner(paintingId) == _owner) {
    |                result[resultIndex] = paintingId;
    |                resultIndex++;
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(541)

[33mWarning[0m for UnhandledException in contract 'PaintingOwnership':
    |      bytes32[4] memory buffer;
    |      uint256 count;
  > |      (buffer, count) = erc721Metadata.getMetadata(_tokenId, _preferredTransport);
    |
    |      return _toString(buffer, count);
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(597)

[33mWarning[0m for UnhandledException in contract 'PaintingOwnership':
    |
    |    function withdraw() external onlyOwner {
  > |        owner.transfer(this.balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(603)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PaintingOwnership':
    |
    |    modifier canPauseUnpause() {
  > |        require(msg.sender == owner || msg.sender == bitpaintingStorage.developer());
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(250)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PaintingOwnership':
    |    function canUserReleaseArtwork(address _address)
    |        public constant returns (bool _can) {
  > |        return (bitpaintingStorage.isOwner(_address)
    |            || bitpaintingStorage.isAdmin(_address)
    |            || bitpaintingStorage.isAllowed(_address));
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(275)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PaintingOwnership':
    |        public constant returns (bool _can) {
    |        return (bitpaintingStorage.isOwner(_address)
  > |            || bitpaintingStorage.isAdmin(_address)
    |            || bitpaintingStorage.isAllowed(_address));
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(276)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PaintingOwnership':
    |        return (bitpaintingStorage.isOwner(_address)
    |            || bitpaintingStorage.isAdmin(_address)
  > |            || bitpaintingStorage.isAllowed(_address));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(277)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PaintingOwnership':
    |    function canUserCancelArtwork(address _address)
    |        public constant returns (bool _can) {
  > |        return (bitpaintingStorage.isOwner(_address)
    |            || bitpaintingStorage.isAdmin(_address));
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(282)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PaintingOwnership':
    |        public constant returns (bool _can) {
    |        return (bitpaintingStorage.isOwner(_address)
  > |            || bitpaintingStorage.isAdmin(_address));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(283)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PaintingOwnership':
    |    function _transfer(address _from, address _to, uint256 _tokenId)
    |        internal {
  > |        bitpaintingStorage.setOwnership(_tokenId, _to);
    |        Transfer(_from, _to, _tokenId);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(299)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PaintingOwnership':
    |
    |    function _owns(address _claimant, uint256 _tokenId) internal constant returns (bool) {
  > |        return bitpaintingStorage.getPaintingOwner(_tokenId) == _claimant;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(444)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PaintingOwnership':
    |
    |    function balanceOf(address _owner) public constant returns (uint256 count) {
  > |        return bitpaintingStorage.getOwnershipTokenCount(_owner);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(448)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PaintingOwnership':
    |
    |    function _approve(uint256 _tokenId, address _approved) internal {
  > |        bitpaintingStorage.approve(_tokenId, _approved);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(452)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PaintingOwnership':
    |    function _approvedFor(address _claimant, uint256 _tokenId)
    |        internal constant returns (bool) {
  > |        return bitpaintingStorage.isApprovedFor(_tokenId, _claimant);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(457)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PaintingOwnership':
    |
    |    function totalSupply() public constant returns (uint) {
  > |      return bitpaintingStorage.paintingsCount();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(513)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PaintingOwnership':
    |    function _ownerOf(uint256 _tokenId)
    |        internal constant returns (address) {
  > |        return bitpaintingStorage.getPaintingOwner(_tokenId);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(523)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PaintingOwnership':
    |
    |        for (paintingId = 1; paintingId <= totalCats; paintingId++) {
  > |            if (bitpaintingStorage.getPaintingOwner(paintingId) == _owner) {
    |                result[resultIndex] = paintingId;
    |                resultIndex++;
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(541)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PaintingOwnership':
    |      bytes32[4] memory buffer;
    |      uint256 count;
  > |      (buffer, count) = erc721Metadata.getMetadata(_tokenId, _preferredTransport);
    |
    |      return _toString(buffer, count);
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(597)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PaintingOwnership':
    |
    |    function withdraw() external onlyOwner {
  > |        owner.transfer(this.balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(603)

[31mViolation[0m for UnrestrictedWrite in contract 'PaintingOwnership':
    |    */
    |    function _pause() internal whenNotPaused {
  > |        paused = true;
    |        Pause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(221)

[31mViolation[0m for UnrestrictedWrite in contract 'PaintingOwnership':
    |     */
    |    function _unpause() internal whenPaused {
  > |        paused = false;
    |        Unpause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(229)

[33mWarning[0m for UnrestrictedWrite in contract 'PaintingOwnership':
    |    function transferOwnership(address newOwner) external onlyOwner {
    |        require(newOwner != address(0));
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(184)

[33mWarning[0m for UnrestrictedWrite in contract 'PaintingOwnership':
    |    */
    |    function _pause() internal whenNotPaused {
  > |        paused = true;
    |        Pause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(221)

[33mWarning[0m for UnrestrictedWrite in contract 'PaintingOwnership':
    |     */
    |    function _unpause() internal whenPaused {
  > |        paused = false;
    |        Unpause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(229)

[33mWarning[0m for UnrestrictedWrite in contract 'PaintingOwnership':
    |    function setBitpaintingStorage(address _address) public onlyOwner {
    |        require(_address != address(0));
  > |        bitpaintingStorage = IStorage(_address);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(256)

[33mWarning[0m for UnrestrictedWrite in contract 'PaintingOwnership':
    |    ///  CEO only.
    |    function setMetadataAddress(address _contractAddress) public onlyOwner {
  > |        erc721Metadata = ERC721Metadata(_contractAddress);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(440)

[33mWarning[0m for LockedEther in contract 'Pausable':
    | * @dev Base contract which allows children to implement an emergency stop mechanism.
    | */
  > |contract Pausable is Ownable {
    |    event Pause();
    |    event Unpause();
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(195)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |contract Ownable {
    |
  > |    address public owner;
    |
    |    function Ownable() public {
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(167)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |    }
    |
  > |    function isOwner(address _address) public constant returns (bool) {
    |        return _address == owner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(178)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |    }
    |
  > |    function transferOwnership(address newOwner) external onlyOwner {
    |        require(newOwner != address(0));
    |        owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(182)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |    event Unpause();
    |
  > |    bool public paused = false;
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(199)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    function transferOwnership(address newOwner) external onlyOwner {
    |        require(newOwner != address(0));
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb818acc3307fd45a461df55df75f3aa435682977.sol(184)


