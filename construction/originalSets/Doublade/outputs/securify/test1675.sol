Processing contract: /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol:BitpaintingBase
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol:BitpaintingEditions
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol:ERC721
Processing contract: /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol:ERC721Metadata
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol:IEditions
Processing contract: /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol:IStorage
Processing contract: /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol:PaintingOwnership
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol:Pausable
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
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(220)

[31mViolation[0m for MissingInputValidation in contract 'BitpaintingBase':
    |    }
    |
  > |    function canUserReleaseArtwork(address _address)
    |        public constant returns (bool _can) {
    |        return (bitpaintingStorage.isOwner(_address)
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(257)

[31mViolation[0m for MissingInputValidation in contract 'BitpaintingBase':
    |    }
    |
  > |    function canUserCancelArtwork(address _address)
    |        public constant returns (bool _can) {
    |        return (bitpaintingStorage.isOwner(_address)
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(264)

[33mWarning[0m for MissingInputValidation in contract 'BitpaintingBase':
    |contract Ownable {
    |
  > |    address public owner;
    |
    |    function Ownable() public {
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(151)

[33mWarning[0m for MissingInputValidation in contract 'BitpaintingBase':
    |    }
    |
  > |    function isOwner(address _address) public constant returns (bool) {
    |        return _address == owner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(162)

[33mWarning[0m for MissingInputValidation in contract 'BitpaintingBase':
    |    }
    |
  > |    function transferOwnership(address newOwner) external onlyOwner {
    |        require(newOwner != address(0));
    |        owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(166)

[33mWarning[0m for MissingInputValidation in contract 'BitpaintingBase':
    |    event Unpause();
    |
  > |    bool public paused = false;
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(183)

[33mWarning[0m for MissingInputValidation in contract 'BitpaintingBase':
    |    * @dev called by the owner to pause, triggers stopped state
    |    */
  > |    function _pause() internal whenNotPaused {
    |        paused = true;
    |        Pause();
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(204)

[33mWarning[0m for MissingInputValidation in contract 'BitpaintingBase':
    |     * @dev called by the owner to unpause, returns to normal state
    |     */
  > |    function _unpause() internal whenPaused {
    |        paused = false;
    |        Unpause();
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(212)

[33mWarning[0m for MissingInputValidation in contract 'BitpaintingBase':
    |    event Transfer(address from, address to, uint256 tokenId);
    |
  > |    IStorage public bitpaintingStorage;
    |
    |    modifier canPauseUnpause() {
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(231)

[33mWarning[0m for MissingInputValidation in contract 'BitpaintingBase':
    |    }
    |
  > |    function setBitpaintingStorage(address _address) public onlyOwner {
    |        require(_address != address(0));
    |        bitpaintingStorage = IStorage(_address);
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(238)

[33mWarning[0m for MissingInputValidation in contract 'BitpaintingBase':
    |    * @dev called by the owner to pause, triggers stopped state
    |    */
  > |    function pause() public canPauseUnpause whenNotPaused {
    |        super._pause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(246)

[33mWarning[0m for MissingInputValidation in contract 'BitpaintingBase':
    |     * @dev called by the owner to unpause, returns to normal state
    |     */
  > |    function unpause() external canPauseUnpause whenPaused {
    |        super._unpause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(253)

[33mWarning[0m for UnhandledException in contract 'BitpaintingBase':
    |
    |    modifier canPauseUnpause() {
  > |        require(msg.sender == owner || msg.sender == bitpaintingStorage.developer());
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(234)

[33mWarning[0m for UnhandledException in contract 'BitpaintingBase':
    |    function canUserReleaseArtwork(address _address)
    |        public constant returns (bool _can) {
  > |        return (bitpaintingStorage.isOwner(_address)
    |            || bitpaintingStorage.isAdmin(_address)
    |            || bitpaintingStorage.isAllowed(_address));
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(259)

[33mWarning[0m for UnhandledException in contract 'BitpaintingBase':
    |        public constant returns (bool _can) {
    |        return (bitpaintingStorage.isOwner(_address)
  > |            || bitpaintingStorage.isAdmin(_address)
    |            || bitpaintingStorage.isAllowed(_address));
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(260)

[33mWarning[0m for UnhandledException in contract 'BitpaintingBase':
    |        return (bitpaintingStorage.isOwner(_address)
    |            || bitpaintingStorage.isAdmin(_address)
  > |            || bitpaintingStorage.isAllowed(_address));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(261)

[33mWarning[0m for UnhandledException in contract 'BitpaintingBase':
    |    function canUserCancelArtwork(address _address)
    |        public constant returns (bool _can) {
  > |        return (bitpaintingStorage.isOwner(_address)
    |            || bitpaintingStorage.isAdmin(_address));
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(266)

[33mWarning[0m for UnhandledException in contract 'BitpaintingBase':
    |        public constant returns (bool _can) {
    |        return (bitpaintingStorage.isOwner(_address)
  > |            || bitpaintingStorage.isAdmin(_address));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(267)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingBase':
    |
    |    modifier canPauseUnpause() {
  > |        require(msg.sender == owner || msg.sender == bitpaintingStorage.developer());
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(234)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingBase':
    |    function canUserReleaseArtwork(address _address)
    |        public constant returns (bool _can) {
  > |        return (bitpaintingStorage.isOwner(_address)
    |            || bitpaintingStorage.isAdmin(_address)
    |            || bitpaintingStorage.isAllowed(_address));
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(259)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingBase':
    |        public constant returns (bool _can) {
    |        return (bitpaintingStorage.isOwner(_address)
  > |            || bitpaintingStorage.isAdmin(_address)
    |            || bitpaintingStorage.isAllowed(_address));
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(260)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingBase':
    |        return (bitpaintingStorage.isOwner(_address)
    |            || bitpaintingStorage.isAdmin(_address)
  > |            || bitpaintingStorage.isAllowed(_address));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(261)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingBase':
    |    function canUserCancelArtwork(address _address)
    |        public constant returns (bool _can) {
  > |        return (bitpaintingStorage.isOwner(_address)
    |            || bitpaintingStorage.isAdmin(_address));
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(266)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingBase':
    |        public constant returns (bool _can) {
    |        return (bitpaintingStorage.isOwner(_address)
  > |            || bitpaintingStorage.isAdmin(_address));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(267)

[31mViolation[0m for UnrestrictedWrite in contract 'BitpaintingBase':
    |    */
    |    function _pause() internal whenNotPaused {
  > |        paused = true;
    |        Pause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(205)

[31mViolation[0m for UnrestrictedWrite in contract 'BitpaintingBase':
    |     */
    |    function _unpause() internal whenPaused {
  > |        paused = false;
    |        Unpause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(213)

[33mWarning[0m for UnrestrictedWrite in contract 'BitpaintingBase':
    |    function transferOwnership(address newOwner) external onlyOwner {
    |        require(newOwner != address(0));
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(168)

[33mWarning[0m for UnrestrictedWrite in contract 'BitpaintingBase':
    |    */
    |    function _pause() internal whenNotPaused {
  > |        paused = true;
    |        Pause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(205)

[33mWarning[0m for UnrestrictedWrite in contract 'BitpaintingBase':
    |     */
    |    function _unpause() internal whenPaused {
  > |        paused = false;
    |        Unpause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(213)

[33mWarning[0m for UnrestrictedWrite in contract 'BitpaintingBase':
    |    function setBitpaintingStorage(address _address) public onlyOwner {
    |        require(_address != address(0));
  > |        bitpaintingStorage = IStorage(_address);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(240)

[33mWarning[0m for DAO in contract 'BitpaintingEditions':
    |    function _transfer(address _from, address _to, uint256 _tokenId)
    |        internal {
  > |        bitpaintingStorage.setOwnership(_tokenId, _to);
    |        Transfer(_from, _to, _tokenId);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(283)

[33mWarning[0m for DAO in contract 'BitpaintingEditions':
    |        require(_generation == uint256(uint8(_generation)));
    |
  > |        bitpaintingStorage.createPainting(
    |            _owner, _tokenId, _parentId, _generation, _speed, _artistId, _releasedAt);
    |
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(310)

[33mWarning[0m for DAO in contract 'BitpaintingEditions':
    |        uint _createdAt;
    |        uint _completedAt;
  > |        (,,_createdAt, _completedAt,,) = bitpaintingStorage.getPainting(_tokenId);
    |
    |        // emit the create event
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(315)

[33mWarning[0m for DAO in contract 'BitpaintingEditions':
    |
    |    function _owns(address _claimant, uint256 _tokenId) internal constant returns (bool) {
  > |        return bitpaintingStorage.getPaintingOwner(_tokenId) == _claimant;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(428)

[33mWarning[0m for DAO in contract 'BitpaintingEditions':
    |
    |    function _approve(uint256 _tokenId, address _approved) internal {
  > |        bitpaintingStorage.approve(_tokenId, _approved);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(436)

[33mWarning[0m for DAO in contract 'BitpaintingEditions':
    |    function _approvedFor(address _claimant, uint256 _tokenId)
    |        internal constant returns (bool) {
  > |        return bitpaintingStorage.isApprovedFor(_tokenId, _claimant);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(441)

[33mWarning[0m for DAO in contract 'BitpaintingEditions':
    |    function _ownerOf(uint256 _tokenId)
    |        internal constant returns (address) {
  > |        return bitpaintingStorage.getPaintingOwner(_tokenId);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(507)

[33mWarning[0m for DAO in contract 'BitpaintingEditions':
    |            limit = 1;
    |        } else {
  > |            uint original = bitpaintingStorage.getPaintingOriginal(_tokenId);
    |            uint8[3] memory counts = bitpaintingStorage.getEditionsCount(original);
    |            uint8[3] memory limits = bitpaintingStorage.getEditionLimits(original);
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(680)

[33mWarning[0m for DAO in contract 'BitpaintingEditions':
    |        } else {
    |            uint original = bitpaintingStorage.getPaintingOriginal(_tokenId);
  > |            uint8[3] memory counts = bitpaintingStorage.getEditionsCount(original);
    |            uint8[3] memory limits = bitpaintingStorage.getEditionLimits(original);
    |            current = counts[gen - 1];
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(681)

[33mWarning[0m for DAO in contract 'BitpaintingEditions':
    |            uint original = bitpaintingStorage.getPaintingOriginal(_tokenId);
    |            uint8[3] memory counts = bitpaintingStorage.getEditionsCount(original);
  > |            uint8[3] memory limits = bitpaintingStorage.getEditionLimits(original);
    |            current = counts[gen - 1];
    |            limit = limits[gen - 1];
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(682)

[33mWarning[0m for DAOConstantGas in contract 'BitpaintingEditions':
    |
    |    function withdraw() external onlyOwner {
  > |        owner.transfer(this.balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(587)

[33mWarning[0m for LockedEther in contract 'BitpaintingEditions':
    |// File: contracts/BitpaintingEditions.sol
    |
  > |contract BitpaintingEditions is PaintingOwnership, IEditions {
    |
    |    event EditionCreated(
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(593)

[31mViolation[0m for MissingInputValidation in contract 'BitpaintingEditions':
    |    }
    |
  > |    function canUserReleaseArtwork(address _address)
    |        public constant returns (bool _can) {
    |        return (bitpaintingStorage.isOwner(_address)
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(257)

[31mViolation[0m for MissingInputValidation in contract 'BitpaintingEditions':
    |    }
    |
  > |    function canUserCancelArtwork(address _address)
    |        public constant returns (bool _can) {
    |        return (bitpaintingStorage.isOwner(_address)
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(264)

[31mViolation[0m for MissingInputValidation in contract 'BitpaintingEditions':
    |    /// @dev Set the address of the sibling contract that tracks metadata.
    |    ///  CEO only.
  > |    function setMetadataAddress(address _contractAddress) public onlyOwner {
    |        erc721Metadata = ERC721Metadata(_contractAddress);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(423)

[31mViolation[0m for MissingInputValidation in contract 'BitpaintingEditions':
    |    }
    |
  > |    function balanceOf(address _owner) public constant returns (uint256 count) {
    |        return bitpaintingStorage.getOwnershipTokenCount(_owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(431)

[31mViolation[0m for MissingInputValidation in contract 'BitpaintingEditions':
    |    }
    |
  > |    function transfer(
    |        address _to,
    |        uint256 _tokenId
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(444)

[31mViolation[0m for MissingInputValidation in contract 'BitpaintingEditions':
    |    }
    |
  > |    function approve(
    |      address _to,
    |      uint256 _tokenId
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(458)

[31mViolation[0m for MissingInputValidation in contract 'BitpaintingEditions':
    |    }
    |
  > |    function transferFrom(
    |      address _from,
    |      address _to,
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(471)

[31mViolation[0m for MissingInputValidation in contract 'BitpaintingEditions':
    |    }
    |
  > |    function ownerOf(uint256 _tokenId)
    |        external constant returns (address) {
    |        return _ownerOf(_tokenId);
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(500)

[31mViolation[0m for MissingInputValidation in contract 'BitpaintingEditions':
    |    }
    |
  > |    function tokensOfOwner(address _owner)
    |        external constant returns(uint256[]) {
    |        uint256 tokenCount = balanceOf(_owner);
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(510)

[31mViolation[0m for MissingInputValidation in contract 'BitpaintingEditions':
    |    ///  ERC-721 (https://github.com/ethereum/EIPs/issues/721)
    |    /// @param _tokenId The ID number of the Kitty whose metadata should be returned.
  > |    function tokenMetadata(uint256 _tokenId, string _preferredTransport) external constant returns (string infoUrl) {
    |      require(erc721Metadata != address(0));
    |      bytes32[4] memory buffer;
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(577)

[31mViolation[0m for MissingInputValidation in contract 'BitpaintingEditions':
    |        uint8 parentSpeed);
    |
  > |    function createEdition(uint _tokenId) external whenNotPaused {
    |        address creator = msg.sender;
    |        require(creator == _ownerOf(_tokenId));
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(601)

[31mViolation[0m for MissingInputValidation in contract 'BitpaintingEditions':
    |    }
    |
  > |    function pendingEditionsOf(address _of) public constant returns (
    |            uint[] tokens,
    |            uint[] startedAt,
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(622)

[31mViolation[0m for MissingInputValidation in contract 'BitpaintingEditions':
    |    }
    |
  > |    function counter(uint _tokenId) public
    |        constant returns (uint8 current, uint8 limit) {
    |
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(672)

[33mWarning[0m for MissingInputValidation in contract 'BitpaintingEditions':
    |contract Ownable {
    |
  > |    address public owner;
    |
    |    function Ownable() public {
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(151)

[33mWarning[0m for MissingInputValidation in contract 'BitpaintingEditions':
    |    }
    |
  > |    function isOwner(address _address) public constant returns (bool) {
    |        return _address == owner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(162)

[33mWarning[0m for MissingInputValidation in contract 'BitpaintingEditions':
    |    }
    |
  > |    function transferOwnership(address newOwner) external onlyOwner {
    |        require(newOwner != address(0));
    |        owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(166)

[33mWarning[0m for MissingInputValidation in contract 'BitpaintingEditions':
    |    event Unpause();
    |
  > |    bool public paused = false;
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(183)

[33mWarning[0m for MissingInputValidation in contract 'BitpaintingEditions':
    |    * @dev called by the owner to pause, triggers stopped state
    |    */
  > |    function _pause() internal whenNotPaused {
    |        paused = true;
    |        Pause();
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(204)

[33mWarning[0m for MissingInputValidation in contract 'BitpaintingEditions':
    |     * @dev called by the owner to unpause, returns to normal state
    |     */
  > |    function _unpause() internal whenPaused {
    |        paused = false;
    |        Unpause();
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(212)

[33mWarning[0m for MissingInputValidation in contract 'BitpaintingEditions':
    |    event Transfer(address from, address to, uint256 tokenId);
    |
  > |    IStorage public bitpaintingStorage;
    |
    |    modifier canPauseUnpause() {
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(231)

[33mWarning[0m for MissingInputValidation in contract 'BitpaintingEditions':
    |    }
    |
  > |    function setBitpaintingStorage(address _address) public onlyOwner {
    |        require(_address != address(0));
    |        bitpaintingStorage = IStorage(_address);
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(238)

[33mWarning[0m for MissingInputValidation in contract 'BitpaintingEditions':
    |    * @dev called by the owner to pause, triggers stopped state
    |    */
  > |    function pause() public canPauseUnpause whenNotPaused {
    |        super._pause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(246)

[33mWarning[0m for MissingInputValidation in contract 'BitpaintingEditions':
    |     * @dev called by the owner to unpause, returns to normal state
    |     */
  > |    function unpause() external canPauseUnpause whenPaused {
    |        super._unpause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(253)

[33mWarning[0m for MissingInputValidation in contract 'BitpaintingEditions':
    |
    |    /// @dev Assigns ownership of a specific Painting to an address.
  > |    function _transfer(address _from, address _to, uint256 _tokenId)
    |        internal {
    |        bitpaintingStorage.setOwnership(_tokenId, _to);
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(281)

[33mWarning[0m for MissingInputValidation in contract 'BitpaintingEditions':
    |    }
    |
  > |    function _createPainting(
    |        address _owner,
    |        uint _tokenId,
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(295)

[33mWarning[0m for MissingInputValidation in contract 'BitpaintingEditions':
    |
    |    /// @notice Name and symbol of the non fungible token, as defined in ERC721.
  > |    string public constant name = "BitPaintings";
    |    string public constant symbol = "BP";
    |
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(390)

[33mWarning[0m for MissingInputValidation in contract 'BitpaintingEditions':
    |    /// @notice Name and symbol of the non fungible token, as defined in ERC721.
    |    string public constant name = "BitPaintings";
  > |    string public constant symbol = "BP";
    |
    |    ERC721Metadata public erc721Metadata;
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(391)

[33mWarning[0m for MissingInputValidation in contract 'BitpaintingEditions':
    |    string public constant symbol = "BP";
    |
  > |    ERC721Metadata public erc721Metadata;
    |
    |    bytes4 constant InterfaceSignature_ERC165 =
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(393)

[33mWarning[0m for MissingInputValidation in contract 'BitpaintingEditions':
    |    ///  Returns true for any standardized interfaces implemented by this contract. We implement
    |    ///  ERC-165 (obviously!) and ERC-721.
  > |    function supportsInterface(bytes4 _interfaceID) external constant returns (bool)
    |    {
    |        // DEBUG ONLY
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(413)

[33mWarning[0m for MissingInputValidation in contract 'BitpaintingEditions':
    |    }
    |
  > |    function _owns(address _claimant, uint256 _tokenId) internal constant returns (bool) {
    |        return bitpaintingStorage.getPaintingOwner(_tokenId) == _claimant;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(427)

[33mWarning[0m for MissingInputValidation in contract 'BitpaintingEditions':
    |    }
    |
  > |    function _approve(uint256 _tokenId, address _approved) internal {
    |        bitpaintingStorage.approve(_tokenId, _approved);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(435)

[33mWarning[0m for MissingInputValidation in contract 'BitpaintingEditions':
    |    }
    |
  > |    function _approvedFor(address _claimant, uint256 _tokenId)
    |        internal constant returns (bool) {
    |        return bitpaintingStorage.isApprovedFor(_tokenId, _claimant);
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(439)

[33mWarning[0m for MissingInputValidation in contract 'BitpaintingEditions':
    |    }
    |
  > |    function _transferFrom(
    |      address _from,
    |      address _to,
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(480)

[33mWarning[0m for MissingInputValidation in contract 'BitpaintingEditions':
    |    }
    |
  > |    function totalSupply() public constant returns (uint) {
    |      return bitpaintingStorage.paintingsCount();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(496)

[33mWarning[0m for MissingInputValidation in contract 'BitpaintingEditions':
    |    }
    |
  > |    function _ownerOf(uint256 _tokenId)
    |        internal constant returns (address) {
    |        return bitpaintingStorage.getPaintingOwner(_tokenId);
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(505)

[33mWarning[0m for MissingInputValidation in contract 'BitpaintingEditions':
    |    ///  This method is licenced under the Apache License.
    |    ///  Ref: https://github.com/Arachnid/solidity-stringutils/blob/2f6ca9accb48ae14c66f1437ec50ed19a0616f78/strings.sol
  > |    function _memcpy(uint _dest, uint _src, uint _len) private constant {
    |      // Copy word-length chunks while possible
    |      for(; _len >= 32; _len -= 32) {
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(537)

[33mWarning[0m for MissingInputValidation in contract 'BitpaintingEditions':
    |    ///  This method is licenced under the Apache License.
    |    ///  Ref: https://github.com/Arachnid/solidity-stringutils/blob/2f6ca9accb48ae14c66f1437ec50ed19a0616f78/strings.sol
  > |    function _toString(bytes32[4] _rawBytes, uint256 _stringLength) private constant returns (string) {
    |      var outputString = new string(_stringLength);
    |      uint256 outputPtr;
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(559)

[33mWarning[0m for MissingInputValidation in contract 'BitpaintingEditions':
    |    }
    |
  > |    function withdraw() external onlyOwner {
    |        owner.transfer(this.balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(586)

[33mWarning[0m for MissingInputValidation in contract 'BitpaintingEditions':
    |// File: contracts/BitpaintingEditions.sol
    |
  > |contract BitpaintingEditions is PaintingOwnership, IEditions {
    |
    |    event EditionCreated(
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(593)

[33mWarning[0m for MissingInputValidation in contract 'BitpaintingEditions':
    |    }
    |
  > |    function signature() external constant returns (uint _signature) {
    |        return uint(keccak256("editions"));
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(688)

[31mViolation[0m for TODAmount in contract 'BitpaintingEditions':
    |
    |    function withdraw() external onlyOwner {
  > |        owner.transfer(this.balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(587)

[31mViolation[0m for TODReceiver in contract 'BitpaintingEditions':
    |
    |    function withdraw() external onlyOwner {
  > |        owner.transfer(this.balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(587)

[33mWarning[0m for UnhandledException in contract 'BitpaintingEditions':
    |
    |    modifier canPauseUnpause() {
  > |        require(msg.sender == owner || msg.sender == bitpaintingStorage.developer());
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(234)

[33mWarning[0m for UnhandledException in contract 'BitpaintingEditions':
    |    function canUserReleaseArtwork(address _address)
    |        public constant returns (bool _can) {
  > |        return (bitpaintingStorage.isOwner(_address)
    |            || bitpaintingStorage.isAdmin(_address)
    |            || bitpaintingStorage.isAllowed(_address));
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(259)

[33mWarning[0m for UnhandledException in contract 'BitpaintingEditions':
    |        public constant returns (bool _can) {
    |        return (bitpaintingStorage.isOwner(_address)
  > |            || bitpaintingStorage.isAdmin(_address)
    |            || bitpaintingStorage.isAllowed(_address));
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(260)

[33mWarning[0m for UnhandledException in contract 'BitpaintingEditions':
    |        return (bitpaintingStorage.isOwner(_address)
    |            || bitpaintingStorage.isAdmin(_address)
  > |            || bitpaintingStorage.isAllowed(_address));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(261)

[33mWarning[0m for UnhandledException in contract 'BitpaintingEditions':
    |    function canUserCancelArtwork(address _address)
    |        public constant returns (bool _can) {
  > |        return (bitpaintingStorage.isOwner(_address)
    |            || bitpaintingStorage.isAdmin(_address));
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(266)

[33mWarning[0m for UnhandledException in contract 'BitpaintingEditions':
    |        public constant returns (bool _can) {
    |        return (bitpaintingStorage.isOwner(_address)
  > |            || bitpaintingStorage.isAdmin(_address));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(267)

[33mWarning[0m for UnhandledException in contract 'BitpaintingEditions':
    |    function _transfer(address _from, address _to, uint256 _tokenId)
    |        internal {
  > |        bitpaintingStorage.setOwnership(_tokenId, _to);
    |        Transfer(_from, _to, _tokenId);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(283)

[33mWarning[0m for UnhandledException in contract 'BitpaintingEditions':
    |        require(_generation == uint256(uint8(_generation)));
    |
  > |        bitpaintingStorage.createPainting(
    |            _owner, _tokenId, _parentId, _generation, _speed, _artistId, _releasedAt);
    |
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(310)

[33mWarning[0m for UnhandledException in contract 'BitpaintingEditions':
    |        uint _createdAt;
    |        uint _completedAt;
  > |        (,,_createdAt, _completedAt,,) = bitpaintingStorage.getPainting(_tokenId);
    |
    |        // emit the create event
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(315)

[33mWarning[0m for UnhandledException in contract 'BitpaintingEditions':
    |
    |    function _owns(address _claimant, uint256 _tokenId) internal constant returns (bool) {
  > |        return bitpaintingStorage.getPaintingOwner(_tokenId) == _claimant;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(428)

[33mWarning[0m for UnhandledException in contract 'BitpaintingEditions':
    |
    |    function balanceOf(address _owner) public constant returns (uint256 count) {
  > |        return bitpaintingStorage.getOwnershipTokenCount(_owner);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(432)

[33mWarning[0m for UnhandledException in contract 'BitpaintingEditions':
    |
    |    function _approve(uint256 _tokenId, address _approved) internal {
  > |        bitpaintingStorage.approve(_tokenId, _approved);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(436)

[33mWarning[0m for UnhandledException in contract 'BitpaintingEditions':
    |    function _approvedFor(address _claimant, uint256 _tokenId)
    |        internal constant returns (bool) {
  > |        return bitpaintingStorage.isApprovedFor(_tokenId, _claimant);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(441)

[33mWarning[0m for UnhandledException in contract 'BitpaintingEditions':
    |
    |    function totalSupply() public constant returns (uint) {
  > |      return bitpaintingStorage.paintingsCount();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(497)

[33mWarning[0m for UnhandledException in contract 'BitpaintingEditions':
    |    function _ownerOf(uint256 _tokenId)
    |        internal constant returns (address) {
  > |        return bitpaintingStorage.getPaintingOwner(_tokenId);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(507)

[33mWarning[0m for UnhandledException in contract 'BitpaintingEditions':
    |
    |        for (paintingId = 1; paintingId <= totalCats; paintingId++) {
  > |            if (bitpaintingStorage.getPaintingOwner(paintingId) == _owner) {
    |                result[resultIndex] = paintingId;
    |                resultIndex++;
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(525)

[33mWarning[0m for UnhandledException in contract 'BitpaintingEditions':
    |      bytes32[4] memory buffer;
    |      uint256 count;
  > |      (buffer, count) = erc721Metadata.getMetadata(_tokenId, _preferredTransport);
    |
    |      return _toString(buffer, count);
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(581)

[33mWarning[0m for UnhandledException in contract 'BitpaintingEditions':
    |
    |    function withdraw() external onlyOwner {
  > |        owner.transfer(this.balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(587)

[33mWarning[0m for UnhandledException in contract 'BitpaintingEditions':
    |        address creator = msg.sender;
    |        require(creator == _ownerOf(_tokenId));
  > |        require(bitpaintingStorage.isReady(_tokenId));
    |        require(!bitpaintingStorage.hasEditionInProgress(_tokenId));
    |        require(bitpaintingStorage.hasEmptyEditionSlots(_tokenId));
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(604)

[33mWarning[0m for UnhandledException in contract 'BitpaintingEditions':
    |        require(creator == _ownerOf(_tokenId));
    |        require(bitpaintingStorage.isReady(_tokenId));
  > |        require(!bitpaintingStorage.hasEditionInProgress(_tokenId));
    |        require(bitpaintingStorage.hasEmptyEditionSlots(_tokenId));
    |        require(!bitpaintingStorage.isOnAuction(_tokenId));
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(605)

[33mWarning[0m for UnhandledException in contract 'BitpaintingEditions':
    |        require(bitpaintingStorage.isReady(_tokenId));
    |        require(!bitpaintingStorage.hasEditionInProgress(_tokenId));
  > |        require(bitpaintingStorage.hasEmptyEditionSlots(_tokenId));
    |        require(!bitpaintingStorage.isOnAuction(_tokenId));
    |
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(606)

[33mWarning[0m for UnhandledException in contract 'BitpaintingEditions':
    |        require(!bitpaintingStorage.hasEditionInProgress(_tokenId));
    |        require(bitpaintingStorage.hasEmptyEditionSlots(_tokenId));
  > |        require(!bitpaintingStorage.isOnAuction(_tokenId));
    |
    |        bitpaintingStorage.createEditionMeta(_tokenId);
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(607)

[33mWarning[0m for UnhandledException in contract 'BitpaintingEditions':
    |        require(!bitpaintingStorage.isOnAuction(_tokenId));
    |
  > |        bitpaintingStorage.createEditionMeta(_tokenId);
    |        uint editionId = bitpaintingStorage.getOffsetIndex();
    |        uint8 _generation =
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(609)

[33mWarning[0m for UnhandledException in contract 'BitpaintingEditions':
    |
    |        bitpaintingStorage.createEditionMeta(_tokenId);
  > |        uint editionId = bitpaintingStorage.getOffsetIndex();
    |        uint8 _generation =
    |            bitpaintingStorage.getPaintingGeneration(_tokenId) + 1;
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(610)

[33mWarning[0m for UnhandledException in contract 'BitpaintingEditions':
    |        uint editionId = bitpaintingStorage.getOffsetIndex();
    |        uint8 _generation =
  > |            bitpaintingStorage.getPaintingGeneration(_tokenId) + 1;
    |        uint8 _speed = 10;
    |        uint _artistId = bitpaintingStorage.getPaintingArtistId(_tokenId);
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(612)

[33mWarning[0m for UnhandledException in contract 'BitpaintingEditions':
    |            bitpaintingStorage.getPaintingGeneration(_tokenId) + 1;
    |        uint8 _speed = 10;
  > |        uint _artistId = bitpaintingStorage.getPaintingArtistId(_tokenId);
    |        _createPainting(creator, editionId, _tokenId, _generation, _speed, _artistId, now + 1);
    |        bitpaintingStorage.decreaseSpeed(_tokenId);
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(614)

[33mWarning[0m for UnhandledException in contract 'BitpaintingEditions':
    |        uint _artistId = bitpaintingStorage.getPaintingArtistId(_tokenId);
    |        _createPainting(creator, editionId, _tokenId, _generation, _speed, _artistId, now + 1);
  > |        bitpaintingStorage.decreaseSpeed(_tokenId);
    |
    |        uint8 speed = bitpaintingStorage.getPaintingSpeed(_tokenId);
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(616)

[33mWarning[0m for UnhandledException in contract 'BitpaintingEditions':
    |        bitpaintingStorage.decreaseSpeed(_tokenId);
    |
  > |        uint8 speed = bitpaintingStorage.getPaintingSpeed(_tokenId);
    |        EditionCreated(creator, _tokenId, editionId, speed);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(618)

[33mWarning[0m for UnhandledException in contract 'BitpaintingEditions':
    |
    |        for(uint index = 0; index < tokenCount; index++) {
  > |            uint tokenId = bitpaintingStorage.getPaintingIdAtIndex(index);
    |
    |            if (tokenId == 0) {
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(641)

[33mWarning[0m for UnhandledException in contract 'BitpaintingEditions':
    |            }
    |
  > |            if (bitpaintingStorage.isReady(tokenId)) {
    |                continue;
    |            }
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(651)

[33mWarning[0m for UnhandledException in contract 'BitpaintingEditions':
    |            uint _startedAt;
    |            uint _completedAt;
  > |            (,,_startedAt, _completedAt,,) = bitpaintingStorage.getPainting(tokenId);
    |            uint8 _current;
    |            uint8 _limit;
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(657)

[33mWarning[0m for UnhandledException in contract 'BitpaintingEditions':
    |        constant returns (uint8 current, uint8 limit) {
    |
  > |        uint8 gen = bitpaintingStorage.getPaintingGeneration(_tokenId);
    |        if (gen == 0) {
    |            current = 1;
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(675)

[33mWarning[0m for UnhandledException in contract 'BitpaintingEditions':
    |            limit = 1;
    |        } else {
  > |            uint original = bitpaintingStorage.getPaintingOriginal(_tokenId);
    |            uint8[3] memory counts = bitpaintingStorage.getEditionsCount(original);
    |            uint8[3] memory limits = bitpaintingStorage.getEditionLimits(original);
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(680)

[33mWarning[0m for UnhandledException in contract 'BitpaintingEditions':
    |        } else {
    |            uint original = bitpaintingStorage.getPaintingOriginal(_tokenId);
  > |            uint8[3] memory counts = bitpaintingStorage.getEditionsCount(original);
    |            uint8[3] memory limits = bitpaintingStorage.getEditionLimits(original);
    |            current = counts[gen - 1];
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(681)

[33mWarning[0m for UnhandledException in contract 'BitpaintingEditions':
    |            uint original = bitpaintingStorage.getPaintingOriginal(_tokenId);
    |            uint8[3] memory counts = bitpaintingStorage.getEditionsCount(original);
  > |            uint8[3] memory limits = bitpaintingStorage.getEditionLimits(original);
    |            current = counts[gen - 1];
    |            limit = limits[gen - 1];
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(682)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingEditions':
    |
    |    modifier canPauseUnpause() {
  > |        require(msg.sender == owner || msg.sender == bitpaintingStorage.developer());
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(234)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingEditions':
    |    function canUserReleaseArtwork(address _address)
    |        public constant returns (bool _can) {
  > |        return (bitpaintingStorage.isOwner(_address)
    |            || bitpaintingStorage.isAdmin(_address)
    |            || bitpaintingStorage.isAllowed(_address));
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(259)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingEditions':
    |        public constant returns (bool _can) {
    |        return (bitpaintingStorage.isOwner(_address)
  > |            || bitpaintingStorage.isAdmin(_address)
    |            || bitpaintingStorage.isAllowed(_address));
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(260)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingEditions':
    |        return (bitpaintingStorage.isOwner(_address)
    |            || bitpaintingStorage.isAdmin(_address)
  > |            || bitpaintingStorage.isAllowed(_address));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(261)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingEditions':
    |    function canUserCancelArtwork(address _address)
    |        public constant returns (bool _can) {
  > |        return (bitpaintingStorage.isOwner(_address)
    |            || bitpaintingStorage.isAdmin(_address));
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(266)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingEditions':
    |        public constant returns (bool _can) {
    |        return (bitpaintingStorage.isOwner(_address)
  > |            || bitpaintingStorage.isAdmin(_address));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(267)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingEditions':
    |    function _transfer(address _from, address _to, uint256 _tokenId)
    |        internal {
  > |        bitpaintingStorage.setOwnership(_tokenId, _to);
    |        Transfer(_from, _to, _tokenId);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(283)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingEditions':
    |        require(_generation == uint256(uint8(_generation)));
    |
  > |        bitpaintingStorage.createPainting(
    |            _owner, _tokenId, _parentId, _generation, _speed, _artistId, _releasedAt);
    |
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(310)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingEditions':
    |        uint _createdAt;
    |        uint _completedAt;
  > |        (,,_createdAt, _completedAt,,) = bitpaintingStorage.getPainting(_tokenId);
    |
    |        // emit the create event
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(315)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingEditions':
    |
    |    function _owns(address _claimant, uint256 _tokenId) internal constant returns (bool) {
  > |        return bitpaintingStorage.getPaintingOwner(_tokenId) == _claimant;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(428)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingEditions':
    |
    |    function balanceOf(address _owner) public constant returns (uint256 count) {
  > |        return bitpaintingStorage.getOwnershipTokenCount(_owner);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(432)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingEditions':
    |
    |    function _approve(uint256 _tokenId, address _approved) internal {
  > |        bitpaintingStorage.approve(_tokenId, _approved);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(436)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingEditions':
    |    function _approvedFor(address _claimant, uint256 _tokenId)
    |        internal constant returns (bool) {
  > |        return bitpaintingStorage.isApprovedFor(_tokenId, _claimant);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(441)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingEditions':
    |
    |    function totalSupply() public constant returns (uint) {
  > |      return bitpaintingStorage.paintingsCount();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(497)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingEditions':
    |    function _ownerOf(uint256 _tokenId)
    |        internal constant returns (address) {
  > |        return bitpaintingStorage.getPaintingOwner(_tokenId);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(507)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingEditions':
    |
    |        for (paintingId = 1; paintingId <= totalCats; paintingId++) {
  > |            if (bitpaintingStorage.getPaintingOwner(paintingId) == _owner) {
    |                result[resultIndex] = paintingId;
    |                resultIndex++;
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(525)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingEditions':
    |      bytes32[4] memory buffer;
    |      uint256 count;
  > |      (buffer, count) = erc721Metadata.getMetadata(_tokenId, _preferredTransport);
    |
    |      return _toString(buffer, count);
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(581)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingEditions':
    |
    |    function withdraw() external onlyOwner {
  > |        owner.transfer(this.balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(587)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingEditions':
    |        address creator = msg.sender;
    |        require(creator == _ownerOf(_tokenId));
  > |        require(bitpaintingStorage.isReady(_tokenId));
    |        require(!bitpaintingStorage.hasEditionInProgress(_tokenId));
    |        require(bitpaintingStorage.hasEmptyEditionSlots(_tokenId));
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(604)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingEditions':
    |        require(creator == _ownerOf(_tokenId));
    |        require(bitpaintingStorage.isReady(_tokenId));
  > |        require(!bitpaintingStorage.hasEditionInProgress(_tokenId));
    |        require(bitpaintingStorage.hasEmptyEditionSlots(_tokenId));
    |        require(!bitpaintingStorage.isOnAuction(_tokenId));
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(605)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingEditions':
    |        require(bitpaintingStorage.isReady(_tokenId));
    |        require(!bitpaintingStorage.hasEditionInProgress(_tokenId));
  > |        require(bitpaintingStorage.hasEmptyEditionSlots(_tokenId));
    |        require(!bitpaintingStorage.isOnAuction(_tokenId));
    |
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(606)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingEditions':
    |        require(!bitpaintingStorage.hasEditionInProgress(_tokenId));
    |        require(bitpaintingStorage.hasEmptyEditionSlots(_tokenId));
  > |        require(!bitpaintingStorage.isOnAuction(_tokenId));
    |
    |        bitpaintingStorage.createEditionMeta(_tokenId);
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(607)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingEditions':
    |        require(!bitpaintingStorage.isOnAuction(_tokenId));
    |
  > |        bitpaintingStorage.createEditionMeta(_tokenId);
    |        uint editionId = bitpaintingStorage.getOffsetIndex();
    |        uint8 _generation =
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(609)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingEditions':
    |
    |        bitpaintingStorage.createEditionMeta(_tokenId);
  > |        uint editionId = bitpaintingStorage.getOffsetIndex();
    |        uint8 _generation =
    |            bitpaintingStorage.getPaintingGeneration(_tokenId) + 1;
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(610)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingEditions':
    |        uint editionId = bitpaintingStorage.getOffsetIndex();
    |        uint8 _generation =
  > |            bitpaintingStorage.getPaintingGeneration(_tokenId) + 1;
    |        uint8 _speed = 10;
    |        uint _artistId = bitpaintingStorage.getPaintingArtistId(_tokenId);
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(612)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingEditions':
    |            bitpaintingStorage.getPaintingGeneration(_tokenId) + 1;
    |        uint8 _speed = 10;
  > |        uint _artistId = bitpaintingStorage.getPaintingArtistId(_tokenId);
    |        _createPainting(creator, editionId, _tokenId, _generation, _speed, _artistId, now + 1);
    |        bitpaintingStorage.decreaseSpeed(_tokenId);
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(614)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingEditions':
    |        uint _artistId = bitpaintingStorage.getPaintingArtistId(_tokenId);
    |        _createPainting(creator, editionId, _tokenId, _generation, _speed, _artistId, now + 1);
  > |        bitpaintingStorage.decreaseSpeed(_tokenId);
    |
    |        uint8 speed = bitpaintingStorage.getPaintingSpeed(_tokenId);
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(616)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingEditions':
    |        bitpaintingStorage.decreaseSpeed(_tokenId);
    |
  > |        uint8 speed = bitpaintingStorage.getPaintingSpeed(_tokenId);
    |        EditionCreated(creator, _tokenId, editionId, speed);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(618)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingEditions':
    |
    |        for(uint index = 0; index < tokenCount; index++) {
  > |            uint tokenId = bitpaintingStorage.getPaintingIdAtIndex(index);
    |
    |            if (tokenId == 0) {
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(641)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingEditions':
    |            }
    |
  > |            if (bitpaintingStorage.isReady(tokenId)) {
    |                continue;
    |            }
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(651)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingEditions':
    |            uint _startedAt;
    |            uint _completedAt;
  > |            (,,_startedAt, _completedAt,,) = bitpaintingStorage.getPainting(tokenId);
    |            uint8 _current;
    |            uint8 _limit;
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(657)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingEditions':
    |        constant returns (uint8 current, uint8 limit) {
    |
  > |        uint8 gen = bitpaintingStorage.getPaintingGeneration(_tokenId);
    |        if (gen == 0) {
    |            current = 1;
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(675)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingEditions':
    |            limit = 1;
    |        } else {
  > |            uint original = bitpaintingStorage.getPaintingOriginal(_tokenId);
    |            uint8[3] memory counts = bitpaintingStorage.getEditionsCount(original);
    |            uint8[3] memory limits = bitpaintingStorage.getEditionLimits(original);
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(680)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingEditions':
    |        } else {
    |            uint original = bitpaintingStorage.getPaintingOriginal(_tokenId);
  > |            uint8[3] memory counts = bitpaintingStorage.getEditionsCount(original);
    |            uint8[3] memory limits = bitpaintingStorage.getEditionLimits(original);
    |            current = counts[gen - 1];
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(681)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitpaintingEditions':
    |            uint original = bitpaintingStorage.getPaintingOriginal(_tokenId);
    |            uint8[3] memory counts = bitpaintingStorage.getEditionsCount(original);
  > |            uint8[3] memory limits = bitpaintingStorage.getEditionLimits(original);
    |            current = counts[gen - 1];
    |            limit = limits[gen - 1];
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(682)

[31mViolation[0m for UnrestrictedWrite in contract 'BitpaintingEditions':
    |    */
    |    function _pause() internal whenNotPaused {
  > |        paused = true;
    |        Pause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(205)

[31mViolation[0m for UnrestrictedWrite in contract 'BitpaintingEditions':
    |     */
    |    function _unpause() internal whenPaused {
  > |        paused = false;
    |        Unpause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(213)

[33mWarning[0m for UnrestrictedWrite in contract 'BitpaintingEditions':
    |    function transferOwnership(address newOwner) external onlyOwner {
    |        require(newOwner != address(0));
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(168)

[33mWarning[0m for UnrestrictedWrite in contract 'BitpaintingEditions':
    |    */
    |    function _pause() internal whenNotPaused {
  > |        paused = true;
    |        Pause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(205)

[33mWarning[0m for UnrestrictedWrite in contract 'BitpaintingEditions':
    |     */
    |    function _unpause() internal whenPaused {
  > |        paused = false;
    |        Unpause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(213)

[33mWarning[0m for UnrestrictedWrite in contract 'BitpaintingEditions':
    |    function setBitpaintingStorage(address _address) public onlyOwner {
    |        require(_address != address(0));
  > |        bitpaintingStorage = IStorage(_address);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(240)

[33mWarning[0m for UnrestrictedWrite in contract 'BitpaintingEditions':
    |    ///  CEO only.
    |    function setMetadataAddress(address _contractAddress) public onlyOwner {
  > |        erc721Metadata = ERC721Metadata(_contractAddress);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(424)

[33mWarning[0m for LockedEther in contract 'ERC721Metadata':
    |/// @title The external contract that is responsible for generating metadata for the kitties,
    |///  it has one function that will return the data as bytes.
  > |contract ERC721Metadata {
    |    /// @dev Given a token Id, returns a byte array that is supposed to be converted into string.
    |    function getMetadata(uint256 _tokenId, string) public constant returns (bytes32[4] buffer, uint256 count) {
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(365)

[33mWarning[0m for MissingInputValidation in contract 'ERC721Metadata':
    |/// @title The external contract that is responsible for generating metadata for the kitties,
    |///  it has one function that will return the data as bytes.
  > |contract ERC721Metadata {
    |    /// @dev Given a token Id, returns a byte array that is supposed to be converted into string.
    |    function getMetadata(uint256 _tokenId, string) public constant returns (bytes32[4] buffer, uint256 count) {
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(365)

[33mWarning[0m for MissingInputValidation in contract 'ERC721Metadata':
    |contract ERC721Metadata {
    |    /// @dev Given a token Id, returns a byte array that is supposed to be converted into string.
  > |    function getMetadata(uint256 _tokenId, string) public constant returns (bytes32[4] buffer, uint256 count) {
    |        if (_tokenId == 1) {
    |            buffer[0] = "Hello World! :D";
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(367)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |* @dev Manages ownership of the contracts
    |*/
  > |contract Ownable {
    |
    |    address public owner;
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(149)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |contract Ownable {
    |
  > |    address public owner;
    |
    |    function Ownable() public {
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(151)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    }
    |
  > |    function isOwner(address _address) public constant returns (bool) {
    |        return _address == owner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(162)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    }
    |
  > |    function transferOwnership(address newOwner) external onlyOwner {
    |        require(newOwner != address(0));
    |        owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(166)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    function transferOwnership(address newOwner) external onlyOwner {
    |        require(newOwner != address(0));
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(168)

[33mWarning[0m for DAO in contract 'PaintingOwnership':
    |    function _transfer(address _from, address _to, uint256 _tokenId)
    |        internal {
  > |        bitpaintingStorage.setOwnership(_tokenId, _to);
    |        Transfer(_from, _to, _tokenId);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(283)

[33mWarning[0m for DAO in contract 'PaintingOwnership':
    |
    |    function _owns(address _claimant, uint256 _tokenId) internal constant returns (bool) {
  > |        return bitpaintingStorage.getPaintingOwner(_tokenId) == _claimant;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(428)

[33mWarning[0m for DAO in contract 'PaintingOwnership':
    |
    |    function _approve(uint256 _tokenId, address _approved) internal {
  > |        bitpaintingStorage.approve(_tokenId, _approved);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(436)

[33mWarning[0m for DAO in contract 'PaintingOwnership':
    |    function _approvedFor(address _claimant, uint256 _tokenId)
    |        internal constant returns (bool) {
  > |        return bitpaintingStorage.isApprovedFor(_tokenId, _claimant);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(441)

[33mWarning[0m for DAO in contract 'PaintingOwnership':
    |    function _ownerOf(uint256 _tokenId)
    |        internal constant returns (address) {
  > |        return bitpaintingStorage.getPaintingOwner(_tokenId);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(507)

[33mWarning[0m for DAOConstantGas in contract 'PaintingOwnership':
    |
    |    function withdraw() external onlyOwner {
  > |        owner.transfer(this.balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(587)

[33mWarning[0m for LockedEther in contract 'PaintingOwnership':
    |// File: contracts/libs/PaintingOwnership.sol
    |
  > |contract PaintingOwnership is BitpaintingBase, ERC721 {
    |
    |    /// @notice Name and symbol of the non fungible token, as defined in ERC721.
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(387)

[31mViolation[0m for MissingInputValidation in contract 'PaintingOwnership':
    |    }
    |
  > |    function canUserReleaseArtwork(address _address)
    |        public constant returns (bool _can) {
    |        return (bitpaintingStorage.isOwner(_address)
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(257)

[31mViolation[0m for MissingInputValidation in contract 'PaintingOwnership':
    |    }
    |
  > |    function canUserCancelArtwork(address _address)
    |        public constant returns (bool _can) {
    |        return (bitpaintingStorage.isOwner(_address)
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(264)

[31mViolation[0m for MissingInputValidation in contract 'PaintingOwnership':
    |    /// @dev Set the address of the sibling contract that tracks metadata.
    |    ///  CEO only.
  > |    function setMetadataAddress(address _contractAddress) public onlyOwner {
    |        erc721Metadata = ERC721Metadata(_contractAddress);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(423)

[31mViolation[0m for MissingInputValidation in contract 'PaintingOwnership':
    |    }
    |
  > |    function balanceOf(address _owner) public constant returns (uint256 count) {
    |        return bitpaintingStorage.getOwnershipTokenCount(_owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(431)

[31mViolation[0m for MissingInputValidation in contract 'PaintingOwnership':
    |    }
    |
  > |    function transfer(
    |        address _to,
    |        uint256 _tokenId
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(444)

[31mViolation[0m for MissingInputValidation in contract 'PaintingOwnership':
    |    }
    |
  > |    function approve(
    |      address _to,
    |      uint256 _tokenId
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(458)

[31mViolation[0m for MissingInputValidation in contract 'PaintingOwnership':
    |    }
    |
  > |    function transferFrom(
    |      address _from,
    |      address _to,
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(471)

[31mViolation[0m for MissingInputValidation in contract 'PaintingOwnership':
    |    }
    |
  > |    function ownerOf(uint256 _tokenId)
    |        external constant returns (address) {
    |        return _ownerOf(_tokenId);
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(500)

[31mViolation[0m for MissingInputValidation in contract 'PaintingOwnership':
    |    }
    |
  > |    function tokensOfOwner(address _owner)
    |        external constant returns(uint256[]) {
    |        uint256 tokenCount = balanceOf(_owner);
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(510)

[31mViolation[0m for MissingInputValidation in contract 'PaintingOwnership':
    |    ///  ERC-721 (https://github.com/ethereum/EIPs/issues/721)
    |    /// @param _tokenId The ID number of the Kitty whose metadata should be returned.
  > |    function tokenMetadata(uint256 _tokenId, string _preferredTransport) external constant returns (string infoUrl) {
    |      require(erc721Metadata != address(0));
    |      bytes32[4] memory buffer;
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(577)

[33mWarning[0m for MissingInputValidation in contract 'PaintingOwnership':
    |contract Ownable {
    |
  > |    address public owner;
    |
    |    function Ownable() public {
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(151)

[33mWarning[0m for MissingInputValidation in contract 'PaintingOwnership':
    |    }
    |
  > |    function isOwner(address _address) public constant returns (bool) {
    |        return _address == owner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(162)

[33mWarning[0m for MissingInputValidation in contract 'PaintingOwnership':
    |    }
    |
  > |    function transferOwnership(address newOwner) external onlyOwner {
    |        require(newOwner != address(0));
    |        owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(166)

[33mWarning[0m for MissingInputValidation in contract 'PaintingOwnership':
    |    event Unpause();
    |
  > |    bool public paused = false;
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(183)

[33mWarning[0m for MissingInputValidation in contract 'PaintingOwnership':
    |    * @dev called by the owner to pause, triggers stopped state
    |    */
  > |    function _pause() internal whenNotPaused {
    |        paused = true;
    |        Pause();
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(204)

[33mWarning[0m for MissingInputValidation in contract 'PaintingOwnership':
    |     * @dev called by the owner to unpause, returns to normal state
    |     */
  > |    function _unpause() internal whenPaused {
    |        paused = false;
    |        Unpause();
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(212)

[33mWarning[0m for MissingInputValidation in contract 'PaintingOwnership':
    |    event Transfer(address from, address to, uint256 tokenId);
    |
  > |    IStorage public bitpaintingStorage;
    |
    |    modifier canPauseUnpause() {
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(231)

[33mWarning[0m for MissingInputValidation in contract 'PaintingOwnership':
    |    }
    |
  > |    function setBitpaintingStorage(address _address) public onlyOwner {
    |        require(_address != address(0));
    |        bitpaintingStorage = IStorage(_address);
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(238)

[33mWarning[0m for MissingInputValidation in contract 'PaintingOwnership':
    |    * @dev called by the owner to pause, triggers stopped state
    |    */
  > |    function pause() public canPauseUnpause whenNotPaused {
    |        super._pause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(246)

[33mWarning[0m for MissingInputValidation in contract 'PaintingOwnership':
    |     * @dev called by the owner to unpause, returns to normal state
    |     */
  > |    function unpause() external canPauseUnpause whenPaused {
    |        super._unpause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(253)

[33mWarning[0m for MissingInputValidation in contract 'PaintingOwnership':
    |
    |    /// @dev Assigns ownership of a specific Painting to an address.
  > |    function _transfer(address _from, address _to, uint256 _tokenId)
    |        internal {
    |        bitpaintingStorage.setOwnership(_tokenId, _to);
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(281)

[33mWarning[0m for MissingInputValidation in contract 'PaintingOwnership':
    |// File: contracts/libs/PaintingOwnership.sol
    |
  > |contract PaintingOwnership is BitpaintingBase, ERC721 {
    |
    |    /// @notice Name and symbol of the non fungible token, as defined in ERC721.
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(387)

[33mWarning[0m for MissingInputValidation in contract 'PaintingOwnership':
    |
    |    /// @notice Name and symbol of the non fungible token, as defined in ERC721.
  > |    string public constant name = "BitPaintings";
    |    string public constant symbol = "BP";
    |
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(390)

[33mWarning[0m for MissingInputValidation in contract 'PaintingOwnership':
    |    /// @notice Name and symbol of the non fungible token, as defined in ERC721.
    |    string public constant name = "BitPaintings";
  > |    string public constant symbol = "BP";
    |
    |    ERC721Metadata public erc721Metadata;
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(391)

[33mWarning[0m for MissingInputValidation in contract 'PaintingOwnership':
    |    string public constant symbol = "BP";
    |
  > |    ERC721Metadata public erc721Metadata;
    |
    |    bytes4 constant InterfaceSignature_ERC165 =
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(393)

[33mWarning[0m for MissingInputValidation in contract 'PaintingOwnership':
    |    ///  Returns true for any standardized interfaces implemented by this contract. We implement
    |    ///  ERC-165 (obviously!) and ERC-721.
  > |    function supportsInterface(bytes4 _interfaceID) external constant returns (bool)
    |    {
    |        // DEBUG ONLY
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(413)

[33mWarning[0m for MissingInputValidation in contract 'PaintingOwnership':
    |    }
    |
  > |    function _owns(address _claimant, uint256 _tokenId) internal constant returns (bool) {
    |        return bitpaintingStorage.getPaintingOwner(_tokenId) == _claimant;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(427)

[33mWarning[0m for MissingInputValidation in contract 'PaintingOwnership':
    |    }
    |
  > |    function _approve(uint256 _tokenId, address _approved) internal {
    |        bitpaintingStorage.approve(_tokenId, _approved);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(435)

[33mWarning[0m for MissingInputValidation in contract 'PaintingOwnership':
    |    }
    |
  > |    function _approvedFor(address _claimant, uint256 _tokenId)
    |        internal constant returns (bool) {
    |        return bitpaintingStorage.isApprovedFor(_tokenId, _claimant);
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(439)

[33mWarning[0m for MissingInputValidation in contract 'PaintingOwnership':
    |    }
    |
  > |    function _transferFrom(
    |      address _from,
    |      address _to,
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(480)

[33mWarning[0m for MissingInputValidation in contract 'PaintingOwnership':
    |    }
    |
  > |    function totalSupply() public constant returns (uint) {
    |      return bitpaintingStorage.paintingsCount();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(496)

[33mWarning[0m for MissingInputValidation in contract 'PaintingOwnership':
    |    }
    |
  > |    function _ownerOf(uint256 _tokenId)
    |        internal constant returns (address) {
    |        return bitpaintingStorage.getPaintingOwner(_tokenId);
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(505)

[33mWarning[0m for MissingInputValidation in contract 'PaintingOwnership':
    |    ///  This method is licenced under the Apache License.
    |    ///  Ref: https://github.com/Arachnid/solidity-stringutils/blob/2f6ca9accb48ae14c66f1437ec50ed19a0616f78/strings.sol
  > |    function _memcpy(uint _dest, uint _src, uint _len) private constant {
    |      // Copy word-length chunks while possible
    |      for(; _len >= 32; _len -= 32) {
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(537)

[33mWarning[0m for MissingInputValidation in contract 'PaintingOwnership':
    |    ///  This method is licenced under the Apache License.
    |    ///  Ref: https://github.com/Arachnid/solidity-stringutils/blob/2f6ca9accb48ae14c66f1437ec50ed19a0616f78/strings.sol
  > |    function _toString(bytes32[4] _rawBytes, uint256 _stringLength) private constant returns (string) {
    |      var outputString = new string(_stringLength);
    |      uint256 outputPtr;
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(559)

[33mWarning[0m for MissingInputValidation in contract 'PaintingOwnership':
    |    }
    |
  > |    function withdraw() external onlyOwner {
    |        owner.transfer(this.balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(586)

[31mViolation[0m for TODAmount in contract 'PaintingOwnership':
    |
    |    function withdraw() external onlyOwner {
  > |        owner.transfer(this.balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(587)

[31mViolation[0m for TODReceiver in contract 'PaintingOwnership':
    |
    |    function withdraw() external onlyOwner {
  > |        owner.transfer(this.balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(587)

[33mWarning[0m for UnhandledException in contract 'PaintingOwnership':
    |
    |    modifier canPauseUnpause() {
  > |        require(msg.sender == owner || msg.sender == bitpaintingStorage.developer());
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(234)

[33mWarning[0m for UnhandledException in contract 'PaintingOwnership':
    |    function canUserReleaseArtwork(address _address)
    |        public constant returns (bool _can) {
  > |        return (bitpaintingStorage.isOwner(_address)
    |            || bitpaintingStorage.isAdmin(_address)
    |            || bitpaintingStorage.isAllowed(_address));
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(259)

[33mWarning[0m for UnhandledException in contract 'PaintingOwnership':
    |        public constant returns (bool _can) {
    |        return (bitpaintingStorage.isOwner(_address)
  > |            || bitpaintingStorage.isAdmin(_address)
    |            || bitpaintingStorage.isAllowed(_address));
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(260)

[33mWarning[0m for UnhandledException in contract 'PaintingOwnership':
    |        return (bitpaintingStorage.isOwner(_address)
    |            || bitpaintingStorage.isAdmin(_address)
  > |            || bitpaintingStorage.isAllowed(_address));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(261)

[33mWarning[0m for UnhandledException in contract 'PaintingOwnership':
    |    function canUserCancelArtwork(address _address)
    |        public constant returns (bool _can) {
  > |        return (bitpaintingStorage.isOwner(_address)
    |            || bitpaintingStorage.isAdmin(_address));
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(266)

[33mWarning[0m for UnhandledException in contract 'PaintingOwnership':
    |        public constant returns (bool _can) {
    |        return (bitpaintingStorage.isOwner(_address)
  > |            || bitpaintingStorage.isAdmin(_address));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(267)

[33mWarning[0m for UnhandledException in contract 'PaintingOwnership':
    |    function _transfer(address _from, address _to, uint256 _tokenId)
    |        internal {
  > |        bitpaintingStorage.setOwnership(_tokenId, _to);
    |        Transfer(_from, _to, _tokenId);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(283)

[33mWarning[0m for UnhandledException in contract 'PaintingOwnership':
    |
    |    function _owns(address _claimant, uint256 _tokenId) internal constant returns (bool) {
  > |        return bitpaintingStorage.getPaintingOwner(_tokenId) == _claimant;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(428)

[33mWarning[0m for UnhandledException in contract 'PaintingOwnership':
    |
    |    function balanceOf(address _owner) public constant returns (uint256 count) {
  > |        return bitpaintingStorage.getOwnershipTokenCount(_owner);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(432)

[33mWarning[0m for UnhandledException in contract 'PaintingOwnership':
    |
    |    function _approve(uint256 _tokenId, address _approved) internal {
  > |        bitpaintingStorage.approve(_tokenId, _approved);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(436)

[33mWarning[0m for UnhandledException in contract 'PaintingOwnership':
    |    function _approvedFor(address _claimant, uint256 _tokenId)
    |        internal constant returns (bool) {
  > |        return bitpaintingStorage.isApprovedFor(_tokenId, _claimant);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(441)

[33mWarning[0m for UnhandledException in contract 'PaintingOwnership':
    |
    |    function totalSupply() public constant returns (uint) {
  > |      return bitpaintingStorage.paintingsCount();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(497)

[33mWarning[0m for UnhandledException in contract 'PaintingOwnership':
    |    function _ownerOf(uint256 _tokenId)
    |        internal constant returns (address) {
  > |        return bitpaintingStorage.getPaintingOwner(_tokenId);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(507)

[33mWarning[0m for UnhandledException in contract 'PaintingOwnership':
    |
    |        for (paintingId = 1; paintingId <= totalCats; paintingId++) {
  > |            if (bitpaintingStorage.getPaintingOwner(paintingId) == _owner) {
    |                result[resultIndex] = paintingId;
    |                resultIndex++;
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(525)

[33mWarning[0m for UnhandledException in contract 'PaintingOwnership':
    |      bytes32[4] memory buffer;
    |      uint256 count;
  > |      (buffer, count) = erc721Metadata.getMetadata(_tokenId, _preferredTransport);
    |
    |      return _toString(buffer, count);
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(581)

[33mWarning[0m for UnhandledException in contract 'PaintingOwnership':
    |
    |    function withdraw() external onlyOwner {
  > |        owner.transfer(this.balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(587)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PaintingOwnership':
    |
    |    modifier canPauseUnpause() {
  > |        require(msg.sender == owner || msg.sender == bitpaintingStorage.developer());
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(234)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PaintingOwnership':
    |    function canUserReleaseArtwork(address _address)
    |        public constant returns (bool _can) {
  > |        return (bitpaintingStorage.isOwner(_address)
    |            || bitpaintingStorage.isAdmin(_address)
    |            || bitpaintingStorage.isAllowed(_address));
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(259)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PaintingOwnership':
    |        public constant returns (bool _can) {
    |        return (bitpaintingStorage.isOwner(_address)
  > |            || bitpaintingStorage.isAdmin(_address)
    |            || bitpaintingStorage.isAllowed(_address));
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(260)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PaintingOwnership':
    |        return (bitpaintingStorage.isOwner(_address)
    |            || bitpaintingStorage.isAdmin(_address)
  > |            || bitpaintingStorage.isAllowed(_address));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(261)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PaintingOwnership':
    |    function canUserCancelArtwork(address _address)
    |        public constant returns (bool _can) {
  > |        return (bitpaintingStorage.isOwner(_address)
    |            || bitpaintingStorage.isAdmin(_address));
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(266)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PaintingOwnership':
    |        public constant returns (bool _can) {
    |        return (bitpaintingStorage.isOwner(_address)
  > |            || bitpaintingStorage.isAdmin(_address));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(267)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PaintingOwnership':
    |    function _transfer(address _from, address _to, uint256 _tokenId)
    |        internal {
  > |        bitpaintingStorage.setOwnership(_tokenId, _to);
    |        Transfer(_from, _to, _tokenId);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(283)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PaintingOwnership':
    |
    |    function _owns(address _claimant, uint256 _tokenId) internal constant returns (bool) {
  > |        return bitpaintingStorage.getPaintingOwner(_tokenId) == _claimant;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(428)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PaintingOwnership':
    |
    |    function balanceOf(address _owner) public constant returns (uint256 count) {
  > |        return bitpaintingStorage.getOwnershipTokenCount(_owner);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(432)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PaintingOwnership':
    |
    |    function _approve(uint256 _tokenId, address _approved) internal {
  > |        bitpaintingStorage.approve(_tokenId, _approved);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(436)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PaintingOwnership':
    |    function _approvedFor(address _claimant, uint256 _tokenId)
    |        internal constant returns (bool) {
  > |        return bitpaintingStorage.isApprovedFor(_tokenId, _claimant);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(441)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PaintingOwnership':
    |
    |    function totalSupply() public constant returns (uint) {
  > |      return bitpaintingStorage.paintingsCount();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(497)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PaintingOwnership':
    |    function _ownerOf(uint256 _tokenId)
    |        internal constant returns (address) {
  > |        return bitpaintingStorage.getPaintingOwner(_tokenId);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(507)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PaintingOwnership':
    |
    |        for (paintingId = 1; paintingId <= totalCats; paintingId++) {
  > |            if (bitpaintingStorage.getPaintingOwner(paintingId) == _owner) {
    |                result[resultIndex] = paintingId;
    |                resultIndex++;
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(525)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PaintingOwnership':
    |      bytes32[4] memory buffer;
    |      uint256 count;
  > |      (buffer, count) = erc721Metadata.getMetadata(_tokenId, _preferredTransport);
    |
    |      return _toString(buffer, count);
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(581)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PaintingOwnership':
    |
    |    function withdraw() external onlyOwner {
  > |        owner.transfer(this.balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(587)

[31mViolation[0m for UnrestrictedWrite in contract 'PaintingOwnership':
    |    */
    |    function _pause() internal whenNotPaused {
  > |        paused = true;
    |        Pause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(205)

[31mViolation[0m for UnrestrictedWrite in contract 'PaintingOwnership':
    |     */
    |    function _unpause() internal whenPaused {
  > |        paused = false;
    |        Unpause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(213)

[33mWarning[0m for UnrestrictedWrite in contract 'PaintingOwnership':
    |    function transferOwnership(address newOwner) external onlyOwner {
    |        require(newOwner != address(0));
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(168)

[33mWarning[0m for UnrestrictedWrite in contract 'PaintingOwnership':
    |    */
    |    function _pause() internal whenNotPaused {
  > |        paused = true;
    |        Pause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(205)

[33mWarning[0m for UnrestrictedWrite in contract 'PaintingOwnership':
    |     */
    |    function _unpause() internal whenPaused {
  > |        paused = false;
    |        Unpause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(213)

[33mWarning[0m for UnrestrictedWrite in contract 'PaintingOwnership':
    |    function setBitpaintingStorage(address _address) public onlyOwner {
    |        require(_address != address(0));
  > |        bitpaintingStorage = IStorage(_address);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(240)

[33mWarning[0m for UnrestrictedWrite in contract 'PaintingOwnership':
    |    ///  CEO only.
    |    function setMetadataAddress(address _contractAddress) public onlyOwner {
  > |        erc721Metadata = ERC721Metadata(_contractAddress);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(424)

[33mWarning[0m for LockedEther in contract 'Pausable':
    | * @dev Base contract which allows children to implement an emergency stop mechanism.
    | */
  > |contract Pausable is Ownable {
    |    event Pause();
    |    event Unpause();
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(179)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |contract Ownable {
    |
  > |    address public owner;
    |
    |    function Ownable() public {
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(151)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |    }
    |
  > |    function isOwner(address _address) public constant returns (bool) {
    |        return _address == owner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(162)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |    }
    |
  > |    function transferOwnership(address newOwner) external onlyOwner {
    |        require(newOwner != address(0));
    |        owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(166)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |    event Unpause();
    |
  > |    bool public paused = false;
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(183)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    function transferOwnership(address newOwner) external onlyOwner {
    |        require(newOwner != address(0));
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6ad9c45c7d058aa8568329fb58ced0a35e249b6d.sol(168)


