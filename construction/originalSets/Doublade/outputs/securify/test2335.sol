Processing contract: /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol:BitpaintingBase
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol:BitpaintingPaintings
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol:ERC721
Processing contract: /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol:ERC721Metadata
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol:IAuctions
Processing contract: /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol:IPaintings
Processing contract: /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol:IStorage
Processing contract: /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol:PaintingOwnership
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BitpaintingBase':
    |// File: contracts/libs/BitpaintingBase.sol
    |
  > |contract BitpaintingBase is Pausable {
    |    /*** EVENTS ***/
    |    event Create(uint _tokenId,
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(254)

[31mViolation[0m for MissingInputValidation in contract 'BitpaintingBase':
    |    }
    |
  > |    function canUserReleaseArtwork(address _address)
    |        public constant returns (bool _can) {
    |        return (bitpaintingStorage.isOwner(_address)
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(291)

[31mViolation[0m for MissingInputValidation in contract 'BitpaintingBase':
    |    }
    |
  > |    function canUserCancelArtwork(address _address)
    |        public constant returns (bool _can) {
    |        return (bitpaintingStorage.isOwner(_address)
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(298)

[33mWarning[0m for MissingInputValidation in contract 'BitpaintingBase':
    |contract Ownable {
    |
  > |    address public owner;
    |
    |    function Ownable() public {
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(185)

[33mWarning[0m for MissingInputValidation in contract 'BitpaintingBase':
    |    }
    |
  > |    function isOwner(address _address) public constant returns (bool) {
    |        return _address == owner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(196)

[33mWarning[0m for MissingInputValidation in contract 'BitpaintingBase':
    |    }
    |
  > |    function transferOwnership(address newOwner) external onlyOwner {
    |        require(newOwner != address(0));
    |        owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(200)

[33mWarning[0m for MissingInputValidation in contract 'BitpaintingBase':
    |    event Unpause();
    |
  > |    bool public paused = false;
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(217)

[33mWarning[0m for MissingInputValidation in contract 'BitpaintingBase':
    |    * @dev called by the owner to pause, triggers stopped state
    |    */
  > |    function _pause() internal whenNotPaused {
    |        paused = true;
    |        Pause();
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(238)

[33mWarning[0m for MissingInputValidation in contract 'BitpaintingBase':
    |     * @dev called by the owner to unpause, returns to normal state
    |     */
  > |    function _unpause() internal whenPaused {
    |        paused = false;
    |        Unpause();
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(246)

[33mWarning[0m for MissingInputValidation in contract 'BitpaintingBase':
    |    event Transfer(address from, address to, uint256 tokenId);
    |
  > |    IStorage public bitpaintingStorage;
    |
    |    modifier canPauseUnpause() {
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(265)

[33mWarning[0m for MissingInputValidation in contract 'BitpaintingBase':
    |    }
    |
  > |    function setBitpaintingStorage(address _address) public onlyOwner {
    |        require(_address != address(0));
    |        bitpaintingStorage = IStorage(_address);
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(272)

[33mWarning[0m for MissingInputValidation in contract 'BitpaintingBase':
    |    * @dev called by the owner to pause, triggers stopped state
    |    */
  > |    function pause() public canPauseUnpause whenNotPaused {
    |        super._pause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(280)

[33mWarning[0m for MissingInputValidation in contract 'BitpaintingBase':
    |     * @dev called by the owner to unpause, returns to normal state
    |     */
  > |    function unpause() external canPauseUnpause whenPaused {
    |        super._unpause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(287)

[33mWarning[0m for UnhandledException in contract 'BitpaintingBase':
    |
    |    modifier canPauseUnpause() {
  > |        require(msg.sender == owner || msg.sender == bitpaintingStorage.developer());
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(268)

[33mWarning[0m for UnhandledException in contract 'BitpaintingBase':
    |    function canUserReleaseArtwork(address _address)
    |        public constant returns (bool _can) {
  > |        return (bitpaintingStorage.isOwner(_address)
    |            || bitpaintingStorage.isAdmin(_address)
    |            || bitpaintingStorage.isAllowed(_address));
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(293)

[33mWarning[0m for UnhandledException in contract 'BitpaintingBase':
    |        public constant returns (bool _can) {
    |        return (bitpaintingStorage.isOwner(_address)
  > |            || bitpaintingStorage.isAdmin(_address)
    |            || bitpaintingStorage.isAllowed(_address));
    |    }
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(294)

[33mWarning[0m for UnhandledException in contract 'BitpaintingBase':
    |        return (bitpaintingStorage.isOwner(_address)
    |            || bitpaintingStorage.isAdmin(_address)
  > |            || bitpaintingStorage.isAllowed(_address));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(295)

[33mWarning[0m for UnhandledException in contract 'BitpaintingBase':
    |    function canUserCancelArtwork(address _address)
    |        public constant returns (bool _can) {
  > |        return (bitpaintingStorage.isOwner(_address)
    |            || bitpaintingStorage.isAdmin(_address));
    |    }
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(300)

[33mWarning[0m for UnhandledException in contract 'BitpaintingBase':
    |        public constant returns (bool _can) {
    |        return (bitpaintingStorage.isOwner(_address)
  > |            || bitpaintingStorage.isAdmin(_address));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(301)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingBase':
    |
    |    modifier canPauseUnpause() {
  > |        require(msg.sender == owner || msg.sender == bitpaintingStorage.developer());
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(268)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingBase':
    |    function canUserReleaseArtwork(address _address)
    |        public constant returns (bool _can) {
  > |        return (bitpaintingStorage.isOwner(_address)
    |            || bitpaintingStorage.isAdmin(_address)
    |            || bitpaintingStorage.isAllowed(_address));
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(293)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingBase':
    |        public constant returns (bool _can) {
    |        return (bitpaintingStorage.isOwner(_address)
  > |            || bitpaintingStorage.isAdmin(_address)
    |            || bitpaintingStorage.isAllowed(_address));
    |    }
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(294)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingBase':
    |        return (bitpaintingStorage.isOwner(_address)
    |            || bitpaintingStorage.isAdmin(_address)
  > |            || bitpaintingStorage.isAllowed(_address));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(295)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingBase':
    |    function canUserCancelArtwork(address _address)
    |        public constant returns (bool _can) {
  > |        return (bitpaintingStorage.isOwner(_address)
    |            || bitpaintingStorage.isAdmin(_address));
    |    }
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(300)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingBase':
    |        public constant returns (bool _can) {
    |        return (bitpaintingStorage.isOwner(_address)
  > |            || bitpaintingStorage.isAdmin(_address));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(301)

[31mViolation[0m for UnrestrictedWrite in contract 'BitpaintingBase':
    |    */
    |    function _pause() internal whenNotPaused {
  > |        paused = true;
    |        Pause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(239)

[31mViolation[0m for UnrestrictedWrite in contract 'BitpaintingBase':
    |     */
    |    function _unpause() internal whenPaused {
  > |        paused = false;
    |        Unpause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(247)

[33mWarning[0m for UnrestrictedWrite in contract 'BitpaintingBase':
    |    function transferOwnership(address newOwner) external onlyOwner {
    |        require(newOwner != address(0));
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(202)

[33mWarning[0m for UnrestrictedWrite in contract 'BitpaintingBase':
    |    */
    |    function _pause() internal whenNotPaused {
  > |        paused = true;
    |        Pause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(239)

[33mWarning[0m for UnrestrictedWrite in contract 'BitpaintingBase':
    |     */
    |    function _unpause() internal whenPaused {
  > |        paused = false;
    |        Unpause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(247)

[33mWarning[0m for UnrestrictedWrite in contract 'BitpaintingBase':
    |    function setBitpaintingStorage(address _address) public onlyOwner {
    |        require(_address != address(0));
  > |        bitpaintingStorage = IStorage(_address);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(274)

[33mWarning[0m for DAOConstantGas in contract 'BitpaintingPaintings':
    |
    |    function withdraw() external onlyOwner {
  > |        owner.transfer(this.balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(621)

[33mWarning[0m for LockedEther in contract 'BitpaintingPaintings':
    |// File: contracts/BitpaintingPaintings.sol
    |
  > |contract BitpaintingPaintings is PaintingOwnership, IPaintings {
    |
    |    uint version = 2;
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(627)

[31mViolation[0m for TODAmount in contract 'BitpaintingPaintings':
    |
    |    function withdraw() external onlyOwner {
  > |        owner.transfer(this.balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(621)

[31mViolation[0m for TODReceiver in contract 'BitpaintingPaintings':
    |
    |    function withdraw() external onlyOwner {
  > |        owner.transfer(this.balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(621)

[33mWarning[0m for UnhandledException in contract 'BitpaintingPaintings':
    |
    |    modifier canPauseUnpause() {
  > |        require(msg.sender == owner || msg.sender == bitpaintingStorage.developer());
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(268)

[33mWarning[0m for UnhandledException in contract 'BitpaintingPaintings':
    |    function canUserReleaseArtwork(address _address)
    |        public constant returns (bool _can) {
  > |        return (bitpaintingStorage.isOwner(_address)
    |            || bitpaintingStorage.isAdmin(_address)
    |            || bitpaintingStorage.isAllowed(_address));
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(293)

[33mWarning[0m for UnhandledException in contract 'BitpaintingPaintings':
    |        public constant returns (bool _can) {
    |        return (bitpaintingStorage.isOwner(_address)
  > |            || bitpaintingStorage.isAdmin(_address)
    |            || bitpaintingStorage.isAllowed(_address));
    |    }
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(294)

[33mWarning[0m for UnhandledException in contract 'BitpaintingPaintings':
    |        return (bitpaintingStorage.isOwner(_address)
    |            || bitpaintingStorage.isAdmin(_address)
  > |            || bitpaintingStorage.isAllowed(_address));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(295)

[33mWarning[0m for UnhandledException in contract 'BitpaintingPaintings':
    |    function canUserCancelArtwork(address _address)
    |        public constant returns (bool _can) {
  > |        return (bitpaintingStorage.isOwner(_address)
    |            || bitpaintingStorage.isAdmin(_address));
    |    }
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(300)

[33mWarning[0m for UnhandledException in contract 'BitpaintingPaintings':
    |        public constant returns (bool _can) {
    |        return (bitpaintingStorage.isOwner(_address)
  > |            || bitpaintingStorage.isAdmin(_address));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(301)

[33mWarning[0m for UnhandledException in contract 'BitpaintingPaintings':
    |    function _transfer(address _from, address _to, uint256 _tokenId)
    |        internal {
  > |        bitpaintingStorage.setOwnership(_tokenId, _to);
    |        Transfer(_from, _to, _tokenId);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(317)

[33mWarning[0m for UnhandledException in contract 'BitpaintingPaintings':
    |        require(_generation == uint256(uint8(_generation)));
    |
  > |        bitpaintingStorage.createPainting(
    |            _owner, _tokenId, _parentId, _generation, _speed, _artistId, _releasedAt);
    |
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(344)

[33mWarning[0m for UnhandledException in contract 'BitpaintingPaintings':
    |        uint _createdAt;
    |        uint _completedAt;
  > |        (,,_createdAt, _completedAt,,) = bitpaintingStorage.getPainting(_tokenId);
    |
    |        // emit the create event
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(349)

[33mWarning[0m for UnhandledException in contract 'BitpaintingPaintings':
    |
    |    function _owns(address _claimant, uint256 _tokenId) internal constant returns (bool) {
  > |        return bitpaintingStorage.getPaintingOwner(_tokenId) == _claimant;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(462)

[33mWarning[0m for UnhandledException in contract 'BitpaintingPaintings':
    |
    |    function balanceOf(address _owner) public constant returns (uint256 count) {
  > |        return bitpaintingStorage.getOwnershipTokenCount(_owner);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(466)

[33mWarning[0m for UnhandledException in contract 'BitpaintingPaintings':
    |
    |    function _approve(uint256 _tokenId, address _approved) internal {
  > |        bitpaintingStorage.approve(_tokenId, _approved);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(470)

[33mWarning[0m for UnhandledException in contract 'BitpaintingPaintings':
    |    function _approvedFor(address _claimant, uint256 _tokenId)
    |        internal constant returns (bool) {
  > |        return bitpaintingStorage.isApprovedFor(_tokenId, _claimant);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(475)

[33mWarning[0m for UnhandledException in contract 'BitpaintingPaintings':
    |
    |    function totalSupply() public constant returns (uint) {
  > |      return bitpaintingStorage.paintingsCount();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(531)

[33mWarning[0m for UnhandledException in contract 'BitpaintingPaintings':
    |    function _ownerOf(uint256 _tokenId)
    |        internal constant returns (address) {
  > |        return bitpaintingStorage.getPaintingOwner(_tokenId);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(541)

[33mWarning[0m for UnhandledException in contract 'BitpaintingPaintings':
    |
    |        for (paintingId = 1; paintingId <= totalCats; paintingId++) {
  > |            if (bitpaintingStorage.getPaintingOwner(paintingId) == _owner) {
    |                result[resultIndex] = paintingId;
    |                resultIndex++;
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(559)

[33mWarning[0m for UnhandledException in contract 'BitpaintingPaintings':
    |      bytes32[4] memory buffer;
    |      uint256 count;
  > |      (buffer, count) = erc721Metadata.getMetadata(_tokenId, _preferredTransport);
    |
    |      return _toString(buffer, count);
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(615)

[33mWarning[0m for UnhandledException in contract 'BitpaintingPaintings':
    |
    |    function withdraw() external onlyOwner {
  > |        owner.transfer(this.balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(621)

[33mWarning[0m for UnhandledException in contract 'BitpaintingPaintings':
    |        _createOriginalPainting(_tokenId, _artistId, _releasedAt);
    |        _approve(_tokenId, owner);
  > |        bitpaintingStorage.setEditionLimits(_tokenId, _gens[0], _gens[1],_gens[2]);
    |        auctionsContract().createReleaseAuction(
    |            _tokenId,
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(644)

[33mWarning[0m for UnhandledException in contract 'BitpaintingPaintings':
    |        _approve(_tokenId, owner);
    |        bitpaintingStorage.setEditionLimits(_tokenId, _gens[0], _gens[1],_gens[2]);
  > |        auctionsContract().createReleaseAuction(
    |            _tokenId,
    |            _auctionStartingPrice,
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(645)

[33mWarning[0m for UnhandledException in contract 'BitpaintingPaintings':
    |            _releasedAt,
    |            _auctionDuration);
  > |        bitpaintingStorage.setPaintingArtist(_tokenId, _artist);
    |        bitpaintingStorage.setPaintingName(_tokenId, _name);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(651)

[33mWarning[0m for UnhandledException in contract 'BitpaintingPaintings':
    |            _auctionDuration);
    |        bitpaintingStorage.setPaintingArtist(_tokenId, _artist);
  > |        bitpaintingStorage.setPaintingName(_tokenId, _name);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(652)

[33mWarning[0m for UnhandledException in contract 'BitpaintingPaintings':
    |
    |    function cancel(uint _tokenId) external canCancelArtwork whenNotPaused {
  > |        require(bitpaintingStorage.isOnAuction(_tokenId));
    |        require(bitpaintingStorage.canBeChanged(_tokenId));
    |
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(680)

[33mWarning[0m for UnhandledException in contract 'BitpaintingPaintings':
    |    function cancel(uint _tokenId) external canCancelArtwork whenNotPaused {
    |        require(bitpaintingStorage.isOnAuction(_tokenId));
  > |        require(bitpaintingStorage.canBeChanged(_tokenId));
    |
    |        bitpaintingStorage.resetPainting(_tokenId);
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(681)

[33mWarning[0m for UnhandledException in contract 'BitpaintingPaintings':
    |        require(bitpaintingStorage.canBeChanged(_tokenId));
    |
  > |        bitpaintingStorage.resetPainting(_tokenId);
    |        bitpaintingStorage.removeAuction(_tokenId);
    |        bitpaintingStorage.resetEditionLimits(_tokenId);
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(683)

[33mWarning[0m for UnhandledException in contract 'BitpaintingPaintings':
    |
    |        bitpaintingStorage.resetPainting(_tokenId);
  > |        bitpaintingStorage.removeAuction(_tokenId);
    |        bitpaintingStorage.resetEditionLimits(_tokenId);
    |        bitpaintingStorage.purgeInformation(_tokenId);
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(684)

[33mWarning[0m for UnhandledException in contract 'BitpaintingPaintings':
    |        bitpaintingStorage.resetPainting(_tokenId);
    |        bitpaintingStorage.removeAuction(_tokenId);
  > |        bitpaintingStorage.resetEditionLimits(_tokenId);
    |        bitpaintingStorage.purgeInformation(_tokenId);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(685)

[33mWarning[0m for UnhandledException in contract 'BitpaintingPaintings':
    |        bitpaintingStorage.removeAuction(_tokenId);
    |        bitpaintingStorage.resetEditionLimits(_tokenId);
  > |        bitpaintingStorage.purgeInformation(_tokenId);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(686)

[33mWarning[0m for UnhandledException in contract 'BitpaintingPaintings':
    |    function auctionsContract() internal returns (IAuctions auctions){
    |        uint _signature = uint(keccak256("auctions"));
  > |        return IAuctions(bitpaintingStorage.contracts(_signature));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(691)

[33mWarning[0m for UnhandledException in contract 'BitpaintingPaintings':
    |        require(_to != address(this));
    |        require(_owns(msg.sender, _tokenId));
  > |        require(bitpaintingStorage.isReady(_tokenId));
    |        require(!bitpaintingStorage.hasEditionInProgress(_tokenId));
    |
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(704)

[33mWarning[0m for UnhandledException in contract 'BitpaintingPaintings':
    |        require(_owns(msg.sender, _tokenId));
    |        require(bitpaintingStorage.isReady(_tokenId));
  > |        require(!bitpaintingStorage.hasEditionInProgress(_tokenId));
    |
    |        if (bitpaintingStorage.isOnAuction(_tokenId)) {
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(705)

[33mWarning[0m for UnhandledException in contract 'BitpaintingPaintings':
    |        require(!bitpaintingStorage.hasEditionInProgress(_tokenId));
    |
  > |        if (bitpaintingStorage.isOnAuction(_tokenId)) {
    |            bitpaintingStorage.removeAuction(_tokenId);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(707)

[33mWarning[0m for UnhandledException in contract 'BitpaintingPaintings':
    |
    |        if (bitpaintingStorage.isOnAuction(_tokenId)) {
  > |            bitpaintingStorage.removeAuction(_tokenId);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(708)

[33mWarning[0m for UnhandledException in contract 'BitpaintingPaintings':
    |        }
    |
  > |        bitpaintingStorage.sealForChanges(_tokenId);
    |        _transfer(msg.sender, _to, _tokenId);
    |        bitpaintingStorage.increaseOwnershipTokenCount(_to);
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(711)

[33mWarning[0m for UnhandledException in contract 'BitpaintingPaintings':
    |        bitpaintingStorage.sealForChanges(_tokenId);
    |        _transfer(msg.sender, _to, _tokenId);
  > |        bitpaintingStorage.increaseOwnershipTokenCount(_to);
    |        bitpaintingStorage.decreaseOwnershipTokenCount(msg.sender);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(713)

[33mWarning[0m for UnhandledException in contract 'BitpaintingPaintings':
    |        _transfer(msg.sender, _to, _tokenId);
    |        bitpaintingStorage.increaseOwnershipTokenCount(_to);
  > |        bitpaintingStorage.decreaseOwnershipTokenCount(msg.sender);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(714)

[33mWarning[0m for UnhandledException in contract 'BitpaintingPaintings':
    |
    |    function allTokenIds() public constant returns (uint[] tokenIds) {
  > |        uint len = bitpaintingStorage.totalPaintingsCount();
    |        uint resultLen = bitpaintingStorage.paintingsCount();
    |        tokenIds = new uint[](resultLen);
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(718)

[33mWarning[0m for UnhandledException in contract 'BitpaintingPaintings':
    |    function allTokenIds() public constant returns (uint[] tokenIds) {
    |        uint len = bitpaintingStorage.totalPaintingsCount();
  > |        uint resultLen = bitpaintingStorage.paintingsCount();
    |        tokenIds = new uint[](resultLen);
    |        uint pointer = 0;
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(719)

[33mWarning[0m for UnhandledException in contract 'BitpaintingPaintings':
    |        uint pointer = 0;
    |        for (uint index = 0; index < len; index++) {
  > |            uint token = bitpaintingStorage.getPaintingIdAtIndex(index);
    |            if (bitpaintingStorage.isCanceled(token)) {
    |                continue;
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(723)

[33mWarning[0m for UnhandledException in contract 'BitpaintingPaintings':
    |        for (uint index = 0; index < len; index++) {
    |            uint token = bitpaintingStorage.getPaintingIdAtIndex(index);
  > |            if (bitpaintingStorage.isCanceled(token)) {
    |                continue;
    |            }
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(724)

[33mWarning[0m for UnhandledException in contract 'BitpaintingPaintings':
    |        ) {
    |
  > |        uint tokenCount = bitpaintingStorage.totalPaintingsCount();
    |        uint length = balanceOf(_of);
    |        uint pointer;
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(741)

[33mWarning[0m for UnhandledException in contract 'BitpaintingPaintings':
    |
    |        for(uint index = 0; index < tokenCount; index++) {
  > |            uint tokenId = bitpaintingStorage.getPaintingIdAtIndex(index);
    |
    |            if (_ownerOf(tokenId) != _of) {
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(753)

[33mWarning[0m for UnhandledException in contract 'BitpaintingPaintings':
    |
    |            uint _createdAt;
  > |            (,,_createdAt,,,) = bitpaintingStorage.getPainting(tokenId);
    |            if (_createdAt == 0) {
    |                continue;
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(760)

[33mWarning[0m for UnhandledException in contract 'BitpaintingPaintings':
    |
    |            tokens[pointer] = tokenId;
  > |            pending[pointer] = !bitpaintingStorage.isReady(tokenId);
    |            forSale[pointer] = (bitpaintingStorage.getAuctionStartedAt(tokenId) > 0);
    |            uint edition = bitpaintingStorage.lastEditionOf(tokenId);
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(766)

[33mWarning[0m for UnhandledException in contract 'BitpaintingPaintings':
    |            tokens[pointer] = tokenId;
    |            pending[pointer] = !bitpaintingStorage.isReady(tokenId);
  > |            forSale[pointer] = (bitpaintingStorage.getAuctionStartedAt(tokenId) > 0);
    |            uint edition = bitpaintingStorage.lastEditionOf(tokenId);
    |            if (edition == 0) {
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(767)

[33mWarning[0m for UnhandledException in contract 'BitpaintingPaintings':
    |            pending[pointer] = !bitpaintingStorage.isReady(tokenId);
    |            forSale[pointer] = (bitpaintingStorage.getAuctionStartedAt(tokenId) > 0);
  > |            uint edition = bitpaintingStorage.lastEditionOf(tokenId);
    |            if (edition == 0) {
    |                locked[pointer] = false;
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(768)

[33mWarning[0m for UnhandledException in contract 'BitpaintingPaintings':
    |                locked[pointer] = false;
    |            } else {
  > |                locked[pointer] = !bitpaintingStorage.isReady(edition);
    |            }
    |            generations[pointer] = bitpaintingStorage.getPaintingGeneration(tokenId);
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(772)

[33mWarning[0m for UnhandledException in contract 'BitpaintingPaintings':
    |                locked[pointer] = !bitpaintingStorage.isReady(edition);
    |            }
  > |            generations[pointer] = bitpaintingStorage.getPaintingGeneration(tokenId);
    |            speeds[pointer] = bitpaintingStorage.getPaintingSpeed(tokenId);
    |
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(774)

[33mWarning[0m for UnhandledException in contract 'BitpaintingPaintings':
    |            }
    |            generations[pointer] = bitpaintingStorage.getPaintingGeneration(tokenId);
  > |            speeds[pointer] = bitpaintingStorage.getPaintingSpeed(tokenId);
    |
    |            pointer++;
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(775)

[33mWarning[0m for UnhandledException in contract 'BitpaintingPaintings':
    |
    |        for(uint index = 0; index < tokenCount; index++) {
  > |            uint tokenId = bitpaintingStorage.getPaintingIdAtIndex(index);
    |
    |            if (_ownerOf(tokenId) != _of) {
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(787)

[33mWarning[0m for UnhandledException in contract 'BitpaintingPaintings':
    |            total++;
    |
  > |            if (bitpaintingStorage.isReady(tokenId)) {
    |                if (bitpaintingStorage.getAuctionStartedAt(tokenId) > 0) {
    |                    forSale++;
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(795)

[33mWarning[0m for UnhandledException in contract 'BitpaintingPaintings':
    |
    |            if (bitpaintingStorage.isReady(tokenId)) {
  > |                if (bitpaintingStorage.getAuctionStartedAt(tokenId) > 0) {
    |                    forSale++;
    |                }
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(796)

[33mWarning[0m for UnhandledException in contract 'BitpaintingPaintings':
    |            }
    |
  > |            if (!bitpaintingStorage.isReady(tokenId)) {
    |                pending++;
    |                continue;
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(803)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingPaintings':
    |
    |    modifier canPauseUnpause() {
  > |        require(msg.sender == owner || msg.sender == bitpaintingStorage.developer());
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(268)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingPaintings':
    |    function canUserReleaseArtwork(address _address)
    |        public constant returns (bool _can) {
  > |        return (bitpaintingStorage.isOwner(_address)
    |            || bitpaintingStorage.isAdmin(_address)
    |            || bitpaintingStorage.isAllowed(_address));
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(293)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingPaintings':
    |        public constant returns (bool _can) {
    |        return (bitpaintingStorage.isOwner(_address)
  > |            || bitpaintingStorage.isAdmin(_address)
    |            || bitpaintingStorage.isAllowed(_address));
    |    }
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(294)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingPaintings':
    |        return (bitpaintingStorage.isOwner(_address)
    |            || bitpaintingStorage.isAdmin(_address)
  > |            || bitpaintingStorage.isAllowed(_address));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(295)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingPaintings':
    |    function canUserCancelArtwork(address _address)
    |        public constant returns (bool _can) {
  > |        return (bitpaintingStorage.isOwner(_address)
    |            || bitpaintingStorage.isAdmin(_address));
    |    }
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(300)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingPaintings':
    |        public constant returns (bool _can) {
    |        return (bitpaintingStorage.isOwner(_address)
  > |            || bitpaintingStorage.isAdmin(_address));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(301)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingPaintings':
    |    function _transfer(address _from, address _to, uint256 _tokenId)
    |        internal {
  > |        bitpaintingStorage.setOwnership(_tokenId, _to);
    |        Transfer(_from, _to, _tokenId);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(317)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingPaintings':
    |        require(_generation == uint256(uint8(_generation)));
    |
  > |        bitpaintingStorage.createPainting(
    |            _owner, _tokenId, _parentId, _generation, _speed, _artistId, _releasedAt);
    |
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(344)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingPaintings':
    |        uint _createdAt;
    |        uint _completedAt;
  > |        (,,_createdAt, _completedAt,,) = bitpaintingStorage.getPainting(_tokenId);
    |
    |        // emit the create event
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(349)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingPaintings':
    |
    |    function _owns(address _claimant, uint256 _tokenId) internal constant returns (bool) {
  > |        return bitpaintingStorage.getPaintingOwner(_tokenId) == _claimant;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(462)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingPaintings':
    |
    |    function balanceOf(address _owner) public constant returns (uint256 count) {
  > |        return bitpaintingStorage.getOwnershipTokenCount(_owner);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(466)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingPaintings':
    |
    |    function _approve(uint256 _tokenId, address _approved) internal {
  > |        bitpaintingStorage.approve(_tokenId, _approved);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(470)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingPaintings':
    |    function _approvedFor(address _claimant, uint256 _tokenId)
    |        internal constant returns (bool) {
  > |        return bitpaintingStorage.isApprovedFor(_tokenId, _claimant);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(475)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingPaintings':
    |
    |    function totalSupply() public constant returns (uint) {
  > |      return bitpaintingStorage.paintingsCount();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(531)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingPaintings':
    |    function _ownerOf(uint256 _tokenId)
    |        internal constant returns (address) {
  > |        return bitpaintingStorage.getPaintingOwner(_tokenId);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(541)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingPaintings':
    |
    |        for (paintingId = 1; paintingId <= totalCats; paintingId++) {
  > |            if (bitpaintingStorage.getPaintingOwner(paintingId) == _owner) {
    |                result[resultIndex] = paintingId;
    |                resultIndex++;
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(559)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingPaintings':
    |      bytes32[4] memory buffer;
    |      uint256 count;
  > |      (buffer, count) = erc721Metadata.getMetadata(_tokenId, _preferredTransport);
    |
    |      return _toString(buffer, count);
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(615)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingPaintings':
    |
    |    function withdraw() external onlyOwner {
  > |        owner.transfer(this.balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(621)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingPaintings':
    |        _createOriginalPainting(_tokenId, _artistId, _releasedAt);
    |        _approve(_tokenId, owner);
  > |        bitpaintingStorage.setEditionLimits(_tokenId, _gens[0], _gens[1],_gens[2]);
    |        auctionsContract().createReleaseAuction(
    |            _tokenId,
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(644)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingPaintings':
    |        _approve(_tokenId, owner);
    |        bitpaintingStorage.setEditionLimits(_tokenId, _gens[0], _gens[1],_gens[2]);
  > |        auctionsContract().createReleaseAuction(
    |            _tokenId,
    |            _auctionStartingPrice,
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(645)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingPaintings':
    |            _releasedAt,
    |            _auctionDuration);
  > |        bitpaintingStorage.setPaintingArtist(_tokenId, _artist);
    |        bitpaintingStorage.setPaintingName(_tokenId, _name);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(651)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingPaintings':
    |            _auctionDuration);
    |        bitpaintingStorage.setPaintingArtist(_tokenId, _artist);
  > |        bitpaintingStorage.setPaintingName(_tokenId, _name);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(652)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingPaintings':
    |
    |    function cancel(uint _tokenId) external canCancelArtwork whenNotPaused {
  > |        require(bitpaintingStorage.isOnAuction(_tokenId));
    |        require(bitpaintingStorage.canBeChanged(_tokenId));
    |
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(680)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingPaintings':
    |    function cancel(uint _tokenId) external canCancelArtwork whenNotPaused {
    |        require(bitpaintingStorage.isOnAuction(_tokenId));
  > |        require(bitpaintingStorage.canBeChanged(_tokenId));
    |
    |        bitpaintingStorage.resetPainting(_tokenId);
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(681)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingPaintings':
    |        require(bitpaintingStorage.canBeChanged(_tokenId));
    |
  > |        bitpaintingStorage.resetPainting(_tokenId);
    |        bitpaintingStorage.removeAuction(_tokenId);
    |        bitpaintingStorage.resetEditionLimits(_tokenId);
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(683)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingPaintings':
    |
    |        bitpaintingStorage.resetPainting(_tokenId);
  > |        bitpaintingStorage.removeAuction(_tokenId);
    |        bitpaintingStorage.resetEditionLimits(_tokenId);
    |        bitpaintingStorage.purgeInformation(_tokenId);
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(684)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingPaintings':
    |        bitpaintingStorage.resetPainting(_tokenId);
    |        bitpaintingStorage.removeAuction(_tokenId);
  > |        bitpaintingStorage.resetEditionLimits(_tokenId);
    |        bitpaintingStorage.purgeInformation(_tokenId);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(685)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingPaintings':
    |        bitpaintingStorage.removeAuction(_tokenId);
    |        bitpaintingStorage.resetEditionLimits(_tokenId);
  > |        bitpaintingStorage.purgeInformation(_tokenId);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(686)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingPaintings':
    |    function auctionsContract() internal returns (IAuctions auctions){
    |        uint _signature = uint(keccak256("auctions"));
  > |        return IAuctions(bitpaintingStorage.contracts(_signature));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(691)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingPaintings':
    |        require(_to != address(this));
    |        require(_owns(msg.sender, _tokenId));
  > |        require(bitpaintingStorage.isReady(_tokenId));
    |        require(!bitpaintingStorage.hasEditionInProgress(_tokenId));
    |
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(704)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingPaintings':
    |        require(_owns(msg.sender, _tokenId));
    |        require(bitpaintingStorage.isReady(_tokenId));
  > |        require(!bitpaintingStorage.hasEditionInProgress(_tokenId));
    |
    |        if (bitpaintingStorage.isOnAuction(_tokenId)) {
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(705)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingPaintings':
    |        require(!bitpaintingStorage.hasEditionInProgress(_tokenId));
    |
  > |        if (bitpaintingStorage.isOnAuction(_tokenId)) {
    |            bitpaintingStorage.removeAuction(_tokenId);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(707)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingPaintings':
    |
    |        if (bitpaintingStorage.isOnAuction(_tokenId)) {
  > |            bitpaintingStorage.removeAuction(_tokenId);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(708)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingPaintings':
    |        }
    |
  > |        bitpaintingStorage.sealForChanges(_tokenId);
    |        _transfer(msg.sender, _to, _tokenId);
    |        bitpaintingStorage.increaseOwnershipTokenCount(_to);
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(711)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingPaintings':
    |        bitpaintingStorage.sealForChanges(_tokenId);
    |        _transfer(msg.sender, _to, _tokenId);
  > |        bitpaintingStorage.increaseOwnershipTokenCount(_to);
    |        bitpaintingStorage.decreaseOwnershipTokenCount(msg.sender);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(713)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingPaintings':
    |        _transfer(msg.sender, _to, _tokenId);
    |        bitpaintingStorage.increaseOwnershipTokenCount(_to);
  > |        bitpaintingStorage.decreaseOwnershipTokenCount(msg.sender);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(714)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingPaintings':
    |
    |    function allTokenIds() public constant returns (uint[] tokenIds) {
  > |        uint len = bitpaintingStorage.totalPaintingsCount();
    |        uint resultLen = bitpaintingStorage.paintingsCount();
    |        tokenIds = new uint[](resultLen);
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(718)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingPaintings':
    |    function allTokenIds() public constant returns (uint[] tokenIds) {
    |        uint len = bitpaintingStorage.totalPaintingsCount();
  > |        uint resultLen = bitpaintingStorage.paintingsCount();
    |        tokenIds = new uint[](resultLen);
    |        uint pointer = 0;
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(719)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingPaintings':
    |        uint pointer = 0;
    |        for (uint index = 0; index < len; index++) {
  > |            uint token = bitpaintingStorage.getPaintingIdAtIndex(index);
    |            if (bitpaintingStorage.isCanceled(token)) {
    |                continue;
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(723)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingPaintings':
    |        for (uint index = 0; index < len; index++) {
    |            uint token = bitpaintingStorage.getPaintingIdAtIndex(index);
  > |            if (bitpaintingStorage.isCanceled(token)) {
    |                continue;
    |            }
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(724)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingPaintings':
    |        ) {
    |
  > |        uint tokenCount = bitpaintingStorage.totalPaintingsCount();
    |        uint length = balanceOf(_of);
    |        uint pointer;
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(741)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingPaintings':
    |
    |        for(uint index = 0; index < tokenCount; index++) {
  > |            uint tokenId = bitpaintingStorage.getPaintingIdAtIndex(index);
    |
    |            if (_ownerOf(tokenId) != _of) {
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(753)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingPaintings':
    |
    |            uint _createdAt;
  > |            (,,_createdAt,,,) = bitpaintingStorage.getPainting(tokenId);
    |            if (_createdAt == 0) {
    |                continue;
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(760)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingPaintings':
    |
    |            tokens[pointer] = tokenId;
  > |            pending[pointer] = !bitpaintingStorage.isReady(tokenId);
    |            forSale[pointer] = (bitpaintingStorage.getAuctionStartedAt(tokenId) > 0);
    |            uint edition = bitpaintingStorage.lastEditionOf(tokenId);
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(766)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingPaintings':
    |            tokens[pointer] = tokenId;
    |            pending[pointer] = !bitpaintingStorage.isReady(tokenId);
  > |            forSale[pointer] = (bitpaintingStorage.getAuctionStartedAt(tokenId) > 0);
    |            uint edition = bitpaintingStorage.lastEditionOf(tokenId);
    |            if (edition == 0) {
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(767)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingPaintings':
    |            pending[pointer] = !bitpaintingStorage.isReady(tokenId);
    |            forSale[pointer] = (bitpaintingStorage.getAuctionStartedAt(tokenId) > 0);
  > |            uint edition = bitpaintingStorage.lastEditionOf(tokenId);
    |            if (edition == 0) {
    |                locked[pointer] = false;
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(768)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingPaintings':
    |                locked[pointer] = false;
    |            } else {
  > |                locked[pointer] = !bitpaintingStorage.isReady(edition);
    |            }
    |            generations[pointer] = bitpaintingStorage.getPaintingGeneration(tokenId);
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(772)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingPaintings':
    |                locked[pointer] = !bitpaintingStorage.isReady(edition);
    |            }
  > |            generations[pointer] = bitpaintingStorage.getPaintingGeneration(tokenId);
    |            speeds[pointer] = bitpaintingStorage.getPaintingSpeed(tokenId);
    |
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(774)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingPaintings':
    |            }
    |            generations[pointer] = bitpaintingStorage.getPaintingGeneration(tokenId);
  > |            speeds[pointer] = bitpaintingStorage.getPaintingSpeed(tokenId);
    |
    |            pointer++;
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(775)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingPaintings':
    |
    |        for(uint index = 0; index < tokenCount; index++) {
  > |            uint tokenId = bitpaintingStorage.getPaintingIdAtIndex(index);
    |
    |            if (_ownerOf(tokenId) != _of) {
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(787)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingPaintings':
    |            total++;
    |
  > |            if (bitpaintingStorage.isReady(tokenId)) {
    |                if (bitpaintingStorage.getAuctionStartedAt(tokenId) > 0) {
    |                    forSale++;
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(795)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingPaintings':
    |
    |            if (bitpaintingStorage.isReady(tokenId)) {
  > |                if (bitpaintingStorage.getAuctionStartedAt(tokenId) > 0) {
    |                    forSale++;
    |                }
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(796)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingPaintings':
    |            }
    |
  > |            if (!bitpaintingStorage.isReady(tokenId)) {
    |                pending++;
    |                continue;
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(803)

[33mWarning[0m for UnrestrictedWrite in contract 'BitpaintingPaintings':
    |    function transferOwnership(address newOwner) external onlyOwner {
    |        require(newOwner != address(0));
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(202)

[33mWarning[0m for UnrestrictedWrite in contract 'BitpaintingPaintings':
    |    */
    |    function _pause() internal whenNotPaused {
  > |        paused = true;
    |        Pause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(239)

[33mWarning[0m for UnrestrictedWrite in contract 'BitpaintingPaintings':
    |     */
    |    function _unpause() internal whenPaused {
  > |        paused = false;
    |        Unpause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(247)

[33mWarning[0m for UnrestrictedWrite in contract 'BitpaintingPaintings':
    |    function setBitpaintingStorage(address _address) public onlyOwner {
    |        require(_address != address(0));
  > |        bitpaintingStorage = IStorage(_address);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(274)

[33mWarning[0m for UnrestrictedWrite in contract 'BitpaintingPaintings':
    |    ///  CEO only.
    |    function setMetadataAddress(address _contractAddress) public onlyOwner {
  > |        erc721Metadata = ERC721Metadata(_contractAddress);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(458)

[33mWarning[0m for LockedEther in contract 'ERC721Metadata':
    |/// @title The external contract that is responsible for generating metadata for the kitties,
    |///  it has one function that will return the data as bytes.
  > |contract ERC721Metadata {
    |    /// @dev Given a token Id, returns a byte array that is supposed to be converted into string.
    |    function getMetadata(uint256 _tokenId, string) public constant returns (bytes32[4] buffer, uint256 count) {
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(399)

[33mWarning[0m for MissingInputValidation in contract 'ERC721Metadata':
    |/// @title The external contract that is responsible for generating metadata for the kitties,
    |///  it has one function that will return the data as bytes.
  > |contract ERC721Metadata {
    |    /// @dev Given a token Id, returns a byte array that is supposed to be converted into string.
    |    function getMetadata(uint256 _tokenId, string) public constant returns (bytes32[4] buffer, uint256 count) {
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(399)

[33mWarning[0m for MissingInputValidation in contract 'ERC721Metadata':
    |contract ERC721Metadata {
    |    /// @dev Given a token Id, returns a byte array that is supposed to be converted into string.
  > |    function getMetadata(uint256 _tokenId, string) public constant returns (bytes32[4] buffer, uint256 count) {
    |        if (_tokenId == 1) {
    |            buffer[0] = "Hello World! :D";
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(401)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |* @dev Manages ownership of the contracts
    |*/
  > |contract Ownable {
    |
    |    address public owner;
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(183)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |contract Ownable {
    |
  > |    address public owner;
    |
    |    function Ownable() public {
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(185)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    }
    |
  > |    function isOwner(address _address) public constant returns (bool) {
    |        return _address == owner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(196)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    }
    |
  > |    function transferOwnership(address newOwner) external onlyOwner {
    |        require(newOwner != address(0));
    |        owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(200)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    function transferOwnership(address newOwner) external onlyOwner {
    |        require(newOwner != address(0));
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(202)

[33mWarning[0m for DAO in contract 'PaintingOwnership':
    |    function _transfer(address _from, address _to, uint256 _tokenId)
    |        internal {
  > |        bitpaintingStorage.setOwnership(_tokenId, _to);
    |        Transfer(_from, _to, _tokenId);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(317)

[33mWarning[0m for DAO in contract 'PaintingOwnership':
    |
    |    function _owns(address _claimant, uint256 _tokenId) internal constant returns (bool) {
  > |        return bitpaintingStorage.getPaintingOwner(_tokenId) == _claimant;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(462)

[33mWarning[0m for DAO in contract 'PaintingOwnership':
    |
    |    function _approve(uint256 _tokenId, address _approved) internal {
  > |        bitpaintingStorage.approve(_tokenId, _approved);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(470)

[33mWarning[0m for DAO in contract 'PaintingOwnership':
    |    function _approvedFor(address _claimant, uint256 _tokenId)
    |        internal constant returns (bool) {
  > |        return bitpaintingStorage.isApprovedFor(_tokenId, _claimant);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(475)

[33mWarning[0m for DAO in contract 'PaintingOwnership':
    |    function _ownerOf(uint256 _tokenId)
    |        internal constant returns (address) {
  > |        return bitpaintingStorage.getPaintingOwner(_tokenId);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(541)

[33mWarning[0m for DAOConstantGas in contract 'PaintingOwnership':
    |
    |    function withdraw() external onlyOwner {
  > |        owner.transfer(this.balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(621)

[33mWarning[0m for LockedEther in contract 'PaintingOwnership':
    |// File: contracts/libs/PaintingOwnership.sol
    |
  > |contract PaintingOwnership is BitpaintingBase, ERC721 {
    |
    |    /// @notice Name and symbol of the non fungible token, as defined in ERC721.
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(421)

[31mViolation[0m for MissingInputValidation in contract 'PaintingOwnership':
    |    }
    |
  > |    function canUserReleaseArtwork(address _address)
    |        public constant returns (bool _can) {
    |        return (bitpaintingStorage.isOwner(_address)
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(291)

[31mViolation[0m for MissingInputValidation in contract 'PaintingOwnership':
    |    }
    |
  > |    function canUserCancelArtwork(address _address)
    |        public constant returns (bool _can) {
    |        return (bitpaintingStorage.isOwner(_address)
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(298)

[31mViolation[0m for MissingInputValidation in contract 'PaintingOwnership':
    |    /// @dev Set the address of the sibling contract that tracks metadata.
    |    ///  CEO only.
  > |    function setMetadataAddress(address _contractAddress) public onlyOwner {
    |        erc721Metadata = ERC721Metadata(_contractAddress);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(457)

[31mViolation[0m for MissingInputValidation in contract 'PaintingOwnership':
    |    }
    |
  > |    function balanceOf(address _owner) public constant returns (uint256 count) {
    |        return bitpaintingStorage.getOwnershipTokenCount(_owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(465)

[31mViolation[0m for MissingInputValidation in contract 'PaintingOwnership':
    |    }
    |
  > |    function transfer(
    |        address _to,
    |        uint256 _tokenId
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(478)

[31mViolation[0m for MissingInputValidation in contract 'PaintingOwnership':
    |    }
    |
  > |    function approve(
    |      address _to,
    |      uint256 _tokenId
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(492)

[31mViolation[0m for MissingInputValidation in contract 'PaintingOwnership':
    |    }
    |
  > |    function transferFrom(
    |      address _from,
    |      address _to,
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(505)

[31mViolation[0m for MissingInputValidation in contract 'PaintingOwnership':
    |    }
    |
  > |    function ownerOf(uint256 _tokenId)
    |        external constant returns (address) {
    |        return _ownerOf(_tokenId);
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(534)

[31mViolation[0m for MissingInputValidation in contract 'PaintingOwnership':
    |    }
    |
  > |    function tokensOfOwner(address _owner)
    |        external constant returns(uint256[]) {
    |        uint256 tokenCount = balanceOf(_owner);
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(544)

[31mViolation[0m for MissingInputValidation in contract 'PaintingOwnership':
    |    ///  ERC-721 (https://github.com/ethereum/EIPs/issues/721)
    |    /// @param _tokenId The ID number of the Kitty whose metadata should be returned.
  > |    function tokenMetadata(uint256 _tokenId, string _preferredTransport) external constant returns (string infoUrl) {
    |      require(erc721Metadata != address(0));
    |      bytes32[4] memory buffer;
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(611)

[33mWarning[0m for MissingInputValidation in contract 'PaintingOwnership':
    |contract Ownable {
    |
  > |    address public owner;
    |
    |    function Ownable() public {
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(185)

[33mWarning[0m for MissingInputValidation in contract 'PaintingOwnership':
    |    }
    |
  > |    function isOwner(address _address) public constant returns (bool) {
    |        return _address == owner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(196)

[33mWarning[0m for MissingInputValidation in contract 'PaintingOwnership':
    |    }
    |
  > |    function transferOwnership(address newOwner) external onlyOwner {
    |        require(newOwner != address(0));
    |        owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(200)

[33mWarning[0m for MissingInputValidation in contract 'PaintingOwnership':
    |    event Unpause();
    |
  > |    bool public paused = false;
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(217)

[33mWarning[0m for MissingInputValidation in contract 'PaintingOwnership':
    |    * @dev called by the owner to pause, triggers stopped state
    |    */
  > |    function _pause() internal whenNotPaused {
    |        paused = true;
    |        Pause();
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(238)

[33mWarning[0m for MissingInputValidation in contract 'PaintingOwnership':
    |     * @dev called by the owner to unpause, returns to normal state
    |     */
  > |    function _unpause() internal whenPaused {
    |        paused = false;
    |        Unpause();
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(246)

[33mWarning[0m for MissingInputValidation in contract 'PaintingOwnership':
    |    event Transfer(address from, address to, uint256 tokenId);
    |
  > |    IStorage public bitpaintingStorage;
    |
    |    modifier canPauseUnpause() {
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(265)

[33mWarning[0m for MissingInputValidation in contract 'PaintingOwnership':
    |    }
    |
  > |    function setBitpaintingStorage(address _address) public onlyOwner {
    |        require(_address != address(0));
    |        bitpaintingStorage = IStorage(_address);
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(272)

[33mWarning[0m for MissingInputValidation in contract 'PaintingOwnership':
    |    * @dev called by the owner to pause, triggers stopped state
    |    */
  > |    function pause() public canPauseUnpause whenNotPaused {
    |        super._pause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(280)

[33mWarning[0m for MissingInputValidation in contract 'PaintingOwnership':
    |     * @dev called by the owner to unpause, returns to normal state
    |     */
  > |    function unpause() external canPauseUnpause whenPaused {
    |        super._unpause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(287)

[33mWarning[0m for MissingInputValidation in contract 'PaintingOwnership':
    |
    |    /// @dev Assigns ownership of a specific Painting to an address.
  > |    function _transfer(address _from, address _to, uint256 _tokenId)
    |        internal {
    |        bitpaintingStorage.setOwnership(_tokenId, _to);
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(315)

[33mWarning[0m for MissingInputValidation in contract 'PaintingOwnership':
    |// File: contracts/libs/PaintingOwnership.sol
    |
  > |contract PaintingOwnership is BitpaintingBase, ERC721 {
    |
    |    /// @notice Name and symbol of the non fungible token, as defined in ERC721.
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(421)

[33mWarning[0m for MissingInputValidation in contract 'PaintingOwnership':
    |
    |    /// @notice Name and symbol of the non fungible token, as defined in ERC721.
  > |    string public constant name = "BitPaintings";
    |    string public constant symbol = "BP";
    |
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(424)

[33mWarning[0m for MissingInputValidation in contract 'PaintingOwnership':
    |    /// @notice Name and symbol of the non fungible token, as defined in ERC721.
    |    string public constant name = "BitPaintings";
  > |    string public constant symbol = "BP";
    |
    |    ERC721Metadata public erc721Metadata;
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(425)

[33mWarning[0m for MissingInputValidation in contract 'PaintingOwnership':
    |    string public constant symbol = "BP";
    |
  > |    ERC721Metadata public erc721Metadata;
    |
    |    bytes4 constant InterfaceSignature_ERC165 =
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(427)

[33mWarning[0m for MissingInputValidation in contract 'PaintingOwnership':
    |    ///  Returns true for any standardized interfaces implemented by this contract. We implement
    |    ///  ERC-165 (obviously!) and ERC-721.
  > |    function supportsInterface(bytes4 _interfaceID) external constant returns (bool)
    |    {
    |        // DEBUG ONLY
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(447)

[33mWarning[0m for MissingInputValidation in contract 'PaintingOwnership':
    |    }
    |
  > |    function _owns(address _claimant, uint256 _tokenId) internal constant returns (bool) {
    |        return bitpaintingStorage.getPaintingOwner(_tokenId) == _claimant;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(461)

[33mWarning[0m for MissingInputValidation in contract 'PaintingOwnership':
    |    }
    |
  > |    function _approve(uint256 _tokenId, address _approved) internal {
    |        bitpaintingStorage.approve(_tokenId, _approved);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(469)

[33mWarning[0m for MissingInputValidation in contract 'PaintingOwnership':
    |    }
    |
  > |    function _approvedFor(address _claimant, uint256 _tokenId)
    |        internal constant returns (bool) {
    |        return bitpaintingStorage.isApprovedFor(_tokenId, _claimant);
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(473)

[33mWarning[0m for MissingInputValidation in contract 'PaintingOwnership':
    |    }
    |
  > |    function _transferFrom(
    |      address _from,
    |      address _to,
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(514)

[33mWarning[0m for MissingInputValidation in contract 'PaintingOwnership':
    |    }
    |
  > |    function totalSupply() public constant returns (uint) {
    |      return bitpaintingStorage.paintingsCount();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(530)

[33mWarning[0m for MissingInputValidation in contract 'PaintingOwnership':
    |    }
    |
  > |    function _ownerOf(uint256 _tokenId)
    |        internal constant returns (address) {
    |        return bitpaintingStorage.getPaintingOwner(_tokenId);
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(539)

[33mWarning[0m for MissingInputValidation in contract 'PaintingOwnership':
    |    ///  This method is licenced under the Apache License.
    |    ///  Ref: https://github.com/Arachnid/solidity-stringutils/blob/2f6ca9accb48ae14c66f1437ec50ed19a0616f78/strings.sol
  > |    function _memcpy(uint _dest, uint _src, uint _len) private constant {
    |      // Copy word-length chunks while possible
    |      for(; _len >= 32; _len -= 32) {
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(571)

[33mWarning[0m for MissingInputValidation in contract 'PaintingOwnership':
    |    ///  This method is licenced under the Apache License.
    |    ///  Ref: https://github.com/Arachnid/solidity-stringutils/blob/2f6ca9accb48ae14c66f1437ec50ed19a0616f78/strings.sol
  > |    function _toString(bytes32[4] _rawBytes, uint256 _stringLength) private constant returns (string) {
    |      var outputString = new string(_stringLength);
    |      uint256 outputPtr;
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(593)

[33mWarning[0m for MissingInputValidation in contract 'PaintingOwnership':
    |    }
    |
  > |    function withdraw() external onlyOwner {
    |        owner.transfer(this.balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(620)

[31mViolation[0m for TODAmount in contract 'PaintingOwnership':
    |
    |    function withdraw() external onlyOwner {
  > |        owner.transfer(this.balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(621)

[31mViolation[0m for TODReceiver in contract 'PaintingOwnership':
    |
    |    function withdraw() external onlyOwner {
  > |        owner.transfer(this.balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(621)

[33mWarning[0m for UnhandledException in contract 'PaintingOwnership':
    |
    |    modifier canPauseUnpause() {
  > |        require(msg.sender == owner || msg.sender == bitpaintingStorage.developer());
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(268)

[33mWarning[0m for UnhandledException in contract 'PaintingOwnership':
    |    function canUserReleaseArtwork(address _address)
    |        public constant returns (bool _can) {
  > |        return (bitpaintingStorage.isOwner(_address)
    |            || bitpaintingStorage.isAdmin(_address)
    |            || bitpaintingStorage.isAllowed(_address));
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(293)

[33mWarning[0m for UnhandledException in contract 'PaintingOwnership':
    |        public constant returns (bool _can) {
    |        return (bitpaintingStorage.isOwner(_address)
  > |            || bitpaintingStorage.isAdmin(_address)
    |            || bitpaintingStorage.isAllowed(_address));
    |    }
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(294)

[33mWarning[0m for UnhandledException in contract 'PaintingOwnership':
    |        return (bitpaintingStorage.isOwner(_address)
    |            || bitpaintingStorage.isAdmin(_address)
  > |            || bitpaintingStorage.isAllowed(_address));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(295)

[33mWarning[0m for UnhandledException in contract 'PaintingOwnership':
    |    function canUserCancelArtwork(address _address)
    |        public constant returns (bool _can) {
  > |        return (bitpaintingStorage.isOwner(_address)
    |            || bitpaintingStorage.isAdmin(_address));
    |    }
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(300)

[33mWarning[0m for UnhandledException in contract 'PaintingOwnership':
    |        public constant returns (bool _can) {
    |        return (bitpaintingStorage.isOwner(_address)
  > |            || bitpaintingStorage.isAdmin(_address));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(301)

[33mWarning[0m for UnhandledException in contract 'PaintingOwnership':
    |    function _transfer(address _from, address _to, uint256 _tokenId)
    |        internal {
  > |        bitpaintingStorage.setOwnership(_tokenId, _to);
    |        Transfer(_from, _to, _tokenId);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(317)

[33mWarning[0m for UnhandledException in contract 'PaintingOwnership':
    |
    |    function _owns(address _claimant, uint256 _tokenId) internal constant returns (bool) {
  > |        return bitpaintingStorage.getPaintingOwner(_tokenId) == _claimant;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(462)

[33mWarning[0m for UnhandledException in contract 'PaintingOwnership':
    |
    |    function balanceOf(address _owner) public constant returns (uint256 count) {
  > |        return bitpaintingStorage.getOwnershipTokenCount(_owner);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(466)

[33mWarning[0m for UnhandledException in contract 'PaintingOwnership':
    |
    |    function _approve(uint256 _tokenId, address _approved) internal {
  > |        bitpaintingStorage.approve(_tokenId, _approved);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(470)

[33mWarning[0m for UnhandledException in contract 'PaintingOwnership':
    |    function _approvedFor(address _claimant, uint256 _tokenId)
    |        internal constant returns (bool) {
  > |        return bitpaintingStorage.isApprovedFor(_tokenId, _claimant);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(475)

[33mWarning[0m for UnhandledException in contract 'PaintingOwnership':
    |
    |    function totalSupply() public constant returns (uint) {
  > |      return bitpaintingStorage.paintingsCount();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(531)

[33mWarning[0m for UnhandledException in contract 'PaintingOwnership':
    |    function _ownerOf(uint256 _tokenId)
    |        internal constant returns (address) {
  > |        return bitpaintingStorage.getPaintingOwner(_tokenId);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(541)

[33mWarning[0m for UnhandledException in contract 'PaintingOwnership':
    |
    |        for (paintingId = 1; paintingId <= totalCats; paintingId++) {
  > |            if (bitpaintingStorage.getPaintingOwner(paintingId) == _owner) {
    |                result[resultIndex] = paintingId;
    |                resultIndex++;
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(559)

[33mWarning[0m for UnhandledException in contract 'PaintingOwnership':
    |      bytes32[4] memory buffer;
    |      uint256 count;
  > |      (buffer, count) = erc721Metadata.getMetadata(_tokenId, _preferredTransport);
    |
    |      return _toString(buffer, count);
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(615)

[33mWarning[0m for UnhandledException in contract 'PaintingOwnership':
    |
    |    function withdraw() external onlyOwner {
  > |        owner.transfer(this.balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(621)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PaintingOwnership':
    |
    |    modifier canPauseUnpause() {
  > |        require(msg.sender == owner || msg.sender == bitpaintingStorage.developer());
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(268)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PaintingOwnership':
    |    function canUserReleaseArtwork(address _address)
    |        public constant returns (bool _can) {
  > |        return (bitpaintingStorage.isOwner(_address)
    |            || bitpaintingStorage.isAdmin(_address)
    |            || bitpaintingStorage.isAllowed(_address));
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(293)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PaintingOwnership':
    |        public constant returns (bool _can) {
    |        return (bitpaintingStorage.isOwner(_address)
  > |            || bitpaintingStorage.isAdmin(_address)
    |            || bitpaintingStorage.isAllowed(_address));
    |    }
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(294)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PaintingOwnership':
    |        return (bitpaintingStorage.isOwner(_address)
    |            || bitpaintingStorage.isAdmin(_address)
  > |            || bitpaintingStorage.isAllowed(_address));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(295)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PaintingOwnership':
    |    function canUserCancelArtwork(address _address)
    |        public constant returns (bool _can) {
  > |        return (bitpaintingStorage.isOwner(_address)
    |            || bitpaintingStorage.isAdmin(_address));
    |    }
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(300)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PaintingOwnership':
    |        public constant returns (bool _can) {
    |        return (bitpaintingStorage.isOwner(_address)
  > |            || bitpaintingStorage.isAdmin(_address));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(301)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PaintingOwnership':
    |    function _transfer(address _from, address _to, uint256 _tokenId)
    |        internal {
  > |        bitpaintingStorage.setOwnership(_tokenId, _to);
    |        Transfer(_from, _to, _tokenId);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(317)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PaintingOwnership':
    |
    |    function _owns(address _claimant, uint256 _tokenId) internal constant returns (bool) {
  > |        return bitpaintingStorage.getPaintingOwner(_tokenId) == _claimant;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(462)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PaintingOwnership':
    |
    |    function balanceOf(address _owner) public constant returns (uint256 count) {
  > |        return bitpaintingStorage.getOwnershipTokenCount(_owner);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(466)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PaintingOwnership':
    |
    |    function _approve(uint256 _tokenId, address _approved) internal {
  > |        bitpaintingStorage.approve(_tokenId, _approved);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(470)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PaintingOwnership':
    |    function _approvedFor(address _claimant, uint256 _tokenId)
    |        internal constant returns (bool) {
  > |        return bitpaintingStorage.isApprovedFor(_tokenId, _claimant);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(475)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PaintingOwnership':
    |
    |    function totalSupply() public constant returns (uint) {
  > |      return bitpaintingStorage.paintingsCount();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(531)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PaintingOwnership':
    |    function _ownerOf(uint256 _tokenId)
    |        internal constant returns (address) {
  > |        return bitpaintingStorage.getPaintingOwner(_tokenId);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(541)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PaintingOwnership':
    |
    |        for (paintingId = 1; paintingId <= totalCats; paintingId++) {
  > |            if (bitpaintingStorage.getPaintingOwner(paintingId) == _owner) {
    |                result[resultIndex] = paintingId;
    |                resultIndex++;
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(559)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PaintingOwnership':
    |      bytes32[4] memory buffer;
    |      uint256 count;
  > |      (buffer, count) = erc721Metadata.getMetadata(_tokenId, _preferredTransport);
    |
    |      return _toString(buffer, count);
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(615)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PaintingOwnership':
    |
    |    function withdraw() external onlyOwner {
  > |        owner.transfer(this.balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(621)

[31mViolation[0m for UnrestrictedWrite in contract 'PaintingOwnership':
    |    */
    |    function _pause() internal whenNotPaused {
  > |        paused = true;
    |        Pause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(239)

[31mViolation[0m for UnrestrictedWrite in contract 'PaintingOwnership':
    |     */
    |    function _unpause() internal whenPaused {
  > |        paused = false;
    |        Unpause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(247)

[33mWarning[0m for UnrestrictedWrite in contract 'PaintingOwnership':
    |    function transferOwnership(address newOwner) external onlyOwner {
    |        require(newOwner != address(0));
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(202)

[33mWarning[0m for UnrestrictedWrite in contract 'PaintingOwnership':
    |    */
    |    function _pause() internal whenNotPaused {
  > |        paused = true;
    |        Pause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(239)

[33mWarning[0m for UnrestrictedWrite in contract 'PaintingOwnership':
    |     */
    |    function _unpause() internal whenPaused {
  > |        paused = false;
    |        Unpause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(247)

[33mWarning[0m for UnrestrictedWrite in contract 'PaintingOwnership':
    |    function setBitpaintingStorage(address _address) public onlyOwner {
    |        require(_address != address(0));
  > |        bitpaintingStorage = IStorage(_address);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(274)

[33mWarning[0m for UnrestrictedWrite in contract 'PaintingOwnership':
    |    ///  CEO only.
    |    function setMetadataAddress(address _contractAddress) public onlyOwner {
  > |        erc721Metadata = ERC721Metadata(_contractAddress);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(458)

[33mWarning[0m for LockedEther in contract 'Pausable':
    | * @dev Base contract which allows children to implement an emergency stop mechanism.
    | */
  > |contract Pausable is Ownable {
    |    event Pause();
    |    event Unpause();
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(213)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |contract Ownable {
    |
  > |    address public owner;
    |
    |    function Ownable() public {
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(185)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |    }
    |
  > |    function isOwner(address _address) public constant returns (bool) {
    |        return _address == owner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(196)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |    }
    |
  > |    function transferOwnership(address newOwner) external onlyOwner {
    |        require(newOwner != address(0));
    |        owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(200)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |    event Unpause();
    |
  > |    bool public paused = false;
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(217)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    function transferOwnership(address newOwner) external onlyOwner {
    |        require(newOwner != address(0));
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97fdfa48126205cfc24a3da42965fd623cc5e035.sol(202)


