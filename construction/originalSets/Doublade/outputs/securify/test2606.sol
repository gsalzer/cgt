Processing contract: /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol:AccessControlStorage
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol:AuctionStorage
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol:BaseStorage
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol:BitpaintingStorage
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol:EditionStorage
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol:PaintingInformationStorage
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol:PaintingStorage
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'AccessControlStorage':
    |// File: contracts/libs/AccessControlStorage.sol
    |
  > |contract AccessControlStorage is BaseStorage {
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(118)

[31mViolation[0m for MissingInputValidation in contract 'AccessControlStorage':
    |    event AccessDenied(address _address);
    |
  > |    mapping (address => bool) public allowed;
    |    address public developer;
    |
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(85)

[31mViolation[0m for MissingInputValidation in contract 'AccessControlStorage':
    |    }
    |
  > |    function denied(address _address) external canWrite {
    |        delete allowed[_address];
    |        AccessDenied(_address);
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(106)

[31mViolation[0m for MissingInputValidation in contract 'AccessControlStorage':
    |    }
    |
  > |    function isAllowed(address _address) external constant returns (bool) {
    |        return allowed[_address];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(111)

[31mViolation[0m for MissingInputValidation in contract 'AccessControlStorage':
    |
    |
  > |    mapping (address => bool) public admins;
    |    mapping (uint => address) public contracts;
    |
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(121)

[31mViolation[0m for MissingInputValidation in contract 'AccessControlStorage':
    |
    |    mapping (address => bool) public admins;
  > |    mapping (uint => address) public contracts;
    |
    |    function addAdmin(address _address) public onlyOwner {
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(122)

[31mViolation[0m for MissingInputValidation in contract 'AccessControlStorage':
    |    }
    |
  > |    function isAdmin(address _address) public constant returns (bool) {
    |        return admins[_address];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(129)

[31mViolation[0m for MissingInputValidation in contract 'AccessControlStorage':
    |    }
    |
  > |    function setContract(uint _signature, address _address) external canWrite {
    |        contracts[_signature] = _address;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(138)

[33mWarning[0m for MissingInputValidation in contract 'AccessControlStorage':
    |contract Ownable {
    |
  > |    address public owner;
    |
    |    function Ownable() public {
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'AccessControlStorage':
    |    }
    |
  > |    function isOwner(address _address) public constant returns (bool) {
    |        return _address == owner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(22)

[33mWarning[0m for MissingInputValidation in contract 'AccessControlStorage':
    |    }
    |
  > |    function transferOwnership(address newOwner) external onlyOwner {
    |        require(newOwner != address(0));
    |        owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'AccessControlStorage':
    |    event Unpause();
    |
  > |    bool public paused = false;
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(43)

[33mWarning[0m for MissingInputValidation in contract 'AccessControlStorage':
    |
    |    mapping (address => bool) public allowed;
  > |    address public developer;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(86)

[33mWarning[0m for MissingInputValidation in contract 'AccessControlStorage':
    |    }
    |
  > |    function setDeveloper(address _address) public onlyOwner {
    |        require(_address != address(0));
    |        developer = _address;
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(95)

[33mWarning[0m for MissingInputValidation in contract 'AccessControlStorage':
    |    }
    |
  > |    function allow(address _address) external canWrite {
    |        require(_address != address(0));
    |        allowed[_address] = true;
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(100)

[33mWarning[0m for MissingInputValidation in contract 'AccessControlStorage':
    |    mapping (uint => address) public contracts;
    |
  > |    function addAdmin(address _address) public onlyOwner {
    |        require(_address != address(0));
    |        admins[_address] = true;
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(124)

[33mWarning[0m for MissingInputValidation in contract 'AccessControlStorage':
    |    }
    |
  > |    function removeAdmin(address _address) public onlyOwner {
    |        require(_address != address(0));
    |        delete admins[_address];
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(133)

[31mViolation[0m for UnrestrictedWrite in contract 'AccessControlStorage':
    |    function allow(address _address) external canWrite {
    |        require(_address != address(0));
  > |        allowed[_address] = true;
    |        AccessAllowed(_address);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(102)

[31mViolation[0m for UnrestrictedWrite in contract 'AccessControlStorage':
    |
    |    function denied(address _address) external canWrite {
  > |        delete allowed[_address];
    |        AccessDenied(_address);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(107)

[31mViolation[0m for UnrestrictedWrite in contract 'AccessControlStorage':
    |
    |    function setContract(uint _signature, address _address) external canWrite {
  > |        contracts[_signature] = _address;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(139)

[33mWarning[0m for UnrestrictedWrite in contract 'AccessControlStorage':
    |    function transferOwnership(address newOwner) external onlyOwner {
    |        require(newOwner != address(0));
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(28)

[33mWarning[0m for UnrestrictedWrite in contract 'AccessControlStorage':
    |    function setDeveloper(address _address) public onlyOwner {
    |        require(_address != address(0));
  > |        developer = _address;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(97)

[33mWarning[0m for UnrestrictedWrite in contract 'AccessControlStorage':
    |    function addAdmin(address _address) public onlyOwner {
    |        require(_address != address(0));
  > |        admins[_address] = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'AccessControlStorage':
    |    function removeAdmin(address _address) public onlyOwner {
    |        require(_address != address(0));
  > |        delete admins[_address];
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(135)

[33mWarning[0m for LockedEther in contract 'AuctionStorage':
    |// File: contracts/libs/AuctionStorage.sol
    |
  > |contract AuctionStorage is BaseStorage {
    |
    |    // Represents an auction on an NFT
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(145)

[31mViolation[0m for MissingInputValidation in contract 'AuctionStorage':
    |    event AccessDenied(address _address);
    |
  > |    mapping (address => bool) public allowed;
    |    address public developer;
    |
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(85)

[31mViolation[0m for MissingInputValidation in contract 'AuctionStorage':
    |    }
    |
  > |    function denied(address _address) external canWrite {
    |        delete allowed[_address];
    |        AccessDenied(_address);
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(106)

[31mViolation[0m for MissingInputValidation in contract 'AuctionStorage':
    |    }
    |
  > |    function isAllowed(address _address) external constant returns (bool) {
    |        return allowed[_address];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(111)

[31mViolation[0m for MissingInputValidation in contract 'AuctionStorage':
    |
    |    // Map from token ID to their corresponding auction.
  > |    mapping (uint => Auction) public tokenIdToAuction;
    |    uint auctionsCounter = 0;
    |    uint8 public secondarySaleCut = 4;
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(165)

[31mViolation[0m for MissingInputValidation in contract 'AuctionStorage':
    |    uint8 public secondarySaleCut = 4;
    |
  > |    function addAuction(
    |        uint _tokenId,
    |        uint _startingPrice,
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(169)

[31mViolation[0m for MissingInputValidation in contract 'AuctionStorage':
    |    }
    |
  > |    function addReleaseAuction(
    |        uint _tokenId,
    |        uint _startingPrice,
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(207)

[31mViolation[0m for MissingInputValidation in contract 'AuctionStorage':
    |    }
    |
  > |    function isOnAuction(uint _tokenId)
    |        external constant returns (bool) {
    |        return _isOnAuction(_tokenId);
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(231)

[31mViolation[0m for MissingInputValidation in contract 'AuctionStorage':
    |    }
    |
  > |    function removeAuction(uint _tokenId) public canWrite {
    |        require(_isOnAuction(_tokenId));
    |        delete tokenIdToAuction[_tokenId];
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(236)

[31mViolation[0m for MissingInputValidation in contract 'AuctionStorage':
    |    /// @dev Returns auction info for an NFT on auction.
    |    /// @param _tokenId - ID of NFT on auction.
  > |    function getAuction(uint256 _tokenId)
    |        external
    |        constant
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(244)

[31mViolation[0m for MissingInputValidation in contract 'AuctionStorage':
    |    }
    |
  > |    function getAuctionSeller(uint256 _tokenId)
    |        public constant returns (address) {
    |        return tokenIdToAuction[_tokenId].seller;
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(266)

[31mViolation[0m for MissingInputValidation in contract 'AuctionStorage':
    |    }
    |
  > |    function getAuctionStartedAt(uint256 _tokenId)
    |        public constant returns (uint) {
    |        return tokenIdToAuction[_tokenId].startedAt;
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(271)

[31mViolation[0m for MissingInputValidation in contract 'AuctionStorage':
    |    }
    |
  > |    function getAuctionEnd(uint _tokenId)
    |        public constant returns (uint) {
    |        Auction memory auction = tokenIdToAuction[_tokenId];
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(276)

[31mViolation[0m for MissingInputValidation in contract 'AuctionStorage':
    |    }
    |
  > |    function canBeCanceled(uint _tokenId) external constant returns (bool) {
    |        return getAuctionEnd(_tokenId) <= now;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(286)

[31mViolation[0m for MissingInputValidation in contract 'AuctionStorage':
    |    }
    |
  > |    function isSecondary(uint _tokenId) public constant returns (bool _is) {
    |        return (tokenIdToAuction[_tokenId].byTeam == false);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(290)

[33mWarning[0m for MissingInputValidation in contract 'AuctionStorage':
    |contract Ownable {
    |
  > |    address public owner;
    |
    |    function Ownable() public {
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'AuctionStorage':
    |    }
    |
  > |    function isOwner(address _address) public constant returns (bool) {
    |        return _address == owner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(22)

[33mWarning[0m for MissingInputValidation in contract 'AuctionStorage':
    |    }
    |
  > |    function transferOwnership(address newOwner) external onlyOwner {
    |        require(newOwner != address(0));
    |        owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'AuctionStorage':
    |    event Unpause();
    |
  > |    bool public paused = false;
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(43)

[33mWarning[0m for MissingInputValidation in contract 'AuctionStorage':
    |
    |    mapping (address => bool) public allowed;
  > |    address public developer;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(86)

[33mWarning[0m for MissingInputValidation in contract 'AuctionStorage':
    |    }
    |
  > |    function setDeveloper(address _address) public onlyOwner {
    |        require(_address != address(0));
    |        developer = _address;
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(95)

[33mWarning[0m for MissingInputValidation in contract 'AuctionStorage':
    |    }
    |
  > |    function allow(address _address) external canWrite {
    |        require(_address != address(0));
    |        allowed[_address] = true;
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(100)

[33mWarning[0m for MissingInputValidation in contract 'AuctionStorage':
    |// File: contracts/libs/AuctionStorage.sol
    |
  > |contract AuctionStorage is BaseStorage {
    |
    |    // Represents an auction on an NFT
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(145)

[33mWarning[0m for MissingInputValidation in contract 'AuctionStorage':
    |    mapping (uint => Auction) public tokenIdToAuction;
    |    uint auctionsCounter = 0;
  > |    uint8 public secondarySaleCut = 4;
    |
    |    function addAuction(
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(167)

[33mWarning[0m for MissingInputValidation in contract 'AuctionStorage':
    |    }
    |
  > |    function _isOnAuction(uint _tokenId)
    |        internal constant returns (bool) {
    |        return (tokenIdToAuction[_tokenId].startedAt > 0);
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(226)

[33mWarning[0m for MissingInputValidation in contract 'AuctionStorage':
    |    }
    |
  > |    function getAuctionsCount() public constant returns (uint) {
    |        return auctionsCounter;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(282)

[31mViolation[0m for UnrestrictedWrite in contract 'AuctionStorage':
    |    function allow(address _address) external canWrite {
    |        require(_address != address(0));
  > |        allowed[_address] = true;
    |        AccessAllowed(_address);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(102)

[31mViolation[0m for UnrestrictedWrite in contract 'AuctionStorage':
    |
    |    function denied(address _address) external canWrite {
  > |        delete allowed[_address];
    |        AccessDenied(_address);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(107)

[31mViolation[0m for UnrestrictedWrite in contract 'AuctionStorage':
    |        address _seller) public canWrite {
    |        require(!_isOnAuction(_tokenId));
  > |        tokenIdToAuction[_tokenId] = Auction({
    |            seller: _seller,
    |            startingPrice: uint128(_startingPrice),
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(176)

[31mViolation[0m for UnrestrictedWrite in contract 'AuctionStorage':
    |            byTeam: false
    |        });
  > |        auctionsCounter++;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(184)

[31mViolation[0m for UnrestrictedWrite in contract 'AuctionStorage':
    |        bool _byTeam) public canWrite {
    |        require(!_isOnAuction(_tokenId));
  > |        tokenIdToAuction[_tokenId] = Auction({
    |            seller: _seller,
    |            startingPrice: uint128(_startingPrice),
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(196)

[31mViolation[0m for UnrestrictedWrite in contract 'AuctionStorage':
    |            byTeam: _byTeam
    |        });
  > |        auctionsCounter++;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(204)

[31mViolation[0m for UnrestrictedWrite in contract 'AuctionStorage':
    |    function removeAuction(uint _tokenId) public canWrite {
    |        require(_isOnAuction(_tokenId));
  > |        delete tokenIdToAuction[_tokenId];
    |        auctionsCounter--;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(238)

[31mViolation[0m for UnrestrictedWrite in contract 'AuctionStorage':
    |        require(_isOnAuction(_tokenId));
    |        delete tokenIdToAuction[_tokenId];
  > |        auctionsCounter--;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(239)

[33mWarning[0m for UnrestrictedWrite in contract 'AuctionStorage':
    |    function transferOwnership(address newOwner) external onlyOwner {
    |        require(newOwner != address(0));
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(28)

[33mWarning[0m for UnrestrictedWrite in contract 'AuctionStorage':
    |    function setDeveloper(address _address) public onlyOwner {
    |        require(_address != address(0));
  > |        developer = _address;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(97)

[33mWarning[0m for LockedEther in contract 'BaseStorage':
    |// File: contracts/libs/BaseStorage.sol
    |
  > |contract BaseStorage is Pausable {
    |
    |    event AccessAllowed(address _address);
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(80)

[31mViolation[0m for MissingInputValidation in contract 'BaseStorage':
    |    event AccessDenied(address _address);
    |
  > |    mapping (address => bool) public allowed;
    |    address public developer;
    |
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(85)

[31mViolation[0m for MissingInputValidation in contract 'BaseStorage':
    |    }
    |
  > |    function denied(address _address) external canWrite {
    |        delete allowed[_address];
    |        AccessDenied(_address);
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(106)

[31mViolation[0m for MissingInputValidation in contract 'BaseStorage':
    |    }
    |
  > |    function isAllowed(address _address) external constant returns (bool) {
    |        return allowed[_address];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(111)

[33mWarning[0m for MissingInputValidation in contract 'BaseStorage':
    |contract Ownable {
    |
  > |    address public owner;
    |
    |    function Ownable() public {
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'BaseStorage':
    |    }
    |
  > |    function isOwner(address _address) public constant returns (bool) {
    |        return _address == owner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(22)

[33mWarning[0m for MissingInputValidation in contract 'BaseStorage':
    |    }
    |
  > |    function transferOwnership(address newOwner) external onlyOwner {
    |        require(newOwner != address(0));
    |        owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'BaseStorage':
    |    event Unpause();
    |
  > |    bool public paused = false;
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(43)

[33mWarning[0m for MissingInputValidation in contract 'BaseStorage':
    |
    |    mapping (address => bool) public allowed;
  > |    address public developer;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(86)

[33mWarning[0m for MissingInputValidation in contract 'BaseStorage':
    |    }
    |
  > |    function setDeveloper(address _address) public onlyOwner {
    |        require(_address != address(0));
    |        developer = _address;
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(95)

[33mWarning[0m for MissingInputValidation in contract 'BaseStorage':
    |    }
    |
  > |    function allow(address _address) external canWrite {
    |        require(_address != address(0));
    |        allowed[_address] = true;
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(100)

[31mViolation[0m for UnrestrictedWrite in contract 'BaseStorage':
    |    function allow(address _address) external canWrite {
    |        require(_address != address(0));
  > |        allowed[_address] = true;
    |        AccessAllowed(_address);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(102)

[31mViolation[0m for UnrestrictedWrite in contract 'BaseStorage':
    |
    |    function denied(address _address) external canWrite {
  > |        delete allowed[_address];
    |        AccessDenied(_address);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(107)

[33mWarning[0m for UnrestrictedWrite in contract 'BaseStorage':
    |    function transferOwnership(address newOwner) external onlyOwner {
    |        require(newOwner != address(0));
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(28)

[33mWarning[0m for UnrestrictedWrite in contract 'BaseStorage':
    |    function setDeveloper(address _address) public onlyOwner {
    |        require(_address != address(0));
  > |        developer = _address;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(97)

[31mViolation[0m for LockedEther in contract 'BitpaintingStorage':
    |// File: contracts/BitpaintingStorage.sol
    |
  > |contract BitpaintingStorage is PaintingStorage, PaintingInformationStorage, AccessControlStorage, AuctionStorage, EditionStorage {
    |
    |    /// 0 = production mode
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(558)

[33mWarning[0m for UnrestrictedWrite in contract 'BitpaintingStorage':
    |    function transferOwnership(address newOwner) external onlyOwner {
    |        require(newOwner != address(0));
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(28)

[33mWarning[0m for UnrestrictedWrite in contract 'BitpaintingStorage':
    |    function setDeveloper(address _address) public onlyOwner {
    |        require(_address != address(0));
  > |        developer = _address;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(97)

[33mWarning[0m for UnrestrictedWrite in contract 'BitpaintingStorage':
    |    function addAdmin(address _address) public onlyOwner {
    |        require(_address != address(0));
  > |        admins[_address] = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'BitpaintingStorage':
    |    function removeAdmin(address _address) public onlyOwner {
    |        require(_address != address(0));
  > |        delete admins[_address];
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(135)

[33mWarning[0m for UnrestrictedWrite in contract 'BitpaintingStorage':
    |
    |    function setOffset(uint _offset) external onlyOwner {
  > |        offset = _offset;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(308)

[33mWarning[0m for LockedEther in contract 'EditionStorage':
    |// File: contracts/libs/EditionStorage.sol
    |
  > |contract EditionStorage is BaseStorage {
    |
    |    uint public offset = 1000000;
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(298)

[31mViolation[0m for MissingInputValidation in contract 'EditionStorage':
    |    event AccessDenied(address _address);
    |
  > |    mapping (address => bool) public allowed;
    |    address public developer;
    |
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(85)

[31mViolation[0m for MissingInputValidation in contract 'EditionStorage':
    |    }
    |
  > |    function denied(address _address) external canWrite {
    |        delete allowed[_address];
    |        AccessDenied(_address);
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(106)

[31mViolation[0m for MissingInputValidation in contract 'EditionStorage':
    |    }
    |
  > |    function isAllowed(address _address) external constant returns (bool) {
    |        return allowed[_address];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(111)

[31mViolation[0m for MissingInputValidation in contract 'EditionStorage':
    |    uint public offsetIndex = 1;
    |    uint8[3] public defaultEditionLimits = [10, 89, 200];
  > |    mapping (uint => mapping (uint8 => uint8)) public editionCounts;
    |    mapping (uint => mapping (uint8 => uint8)) public editionLimits;
    |    mapping (uint => uint) public lastEditionOf;
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(303)

[31mViolation[0m for MissingInputValidation in contract 'EditionStorage':
    |    uint8[3] public defaultEditionLimits = [10, 89, 200];
    |    mapping (uint => mapping (uint8 => uint8)) public editionCounts;
  > |    mapping (uint => mapping (uint8 => uint8)) public editionLimits;
    |    mapping (uint => uint) public lastEditionOf;
    |
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(304)

[31mViolation[0m for MissingInputValidation in contract 'EditionStorage':
    |    mapping (uint => mapping (uint8 => uint8)) public editionCounts;
    |    mapping (uint => mapping (uint8 => uint8)) public editionLimits;
  > |    mapping (uint => uint) public lastEditionOf;
    |
    |    function setOffset(uint _offset) external onlyOwner {
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(305)

[31mViolation[0m for MissingInputValidation in contract 'EditionStorage':
    |    mapping (uint => uint) public lastEditionOf;
    |
  > |    function setOffset(uint _offset) external onlyOwner {
    |        offset = _offset;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(307)

[31mViolation[0m for MissingInputValidation in contract 'EditionStorage':
    |    }
    |
  > |    function canCreateEdition(uint _tokenId, uint8 _generation)
    |        public constant returns (bool) {
    |        uint8 actual = editionCounts[_tokenId][_generation - 1];
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(319)

[31mViolation[0m for MissingInputValidation in contract 'EditionStorage':
    |    }
    |
  > |    function increaseGenerationCount(uint _tokenId, uint8 _generation)
    |        public canWrite {
    |        require(canCreateEdition(_tokenId, _generation));
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(331)

[31mViolation[0m for MissingInputValidation in contract 'EditionStorage':
    |    }
    |
  > |    function getEditionsCount(uint _tokenId)
    |        external constant returns (uint8[3])  {
    |        return [
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(339)

[31mViolation[0m for MissingInputValidation in contract 'EditionStorage':
    |    }
    |
  > |    function setLastEditionOf(uint _tokenId, uint _editionId)
    |        public canWrite {
    |        lastEditionOf[_tokenId] = _editionId;
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(348)

[31mViolation[0m for MissingInputValidation in contract 'EditionStorage':
    |    }
    |
  > |    function getEditionLimits(uint _tokenId)
    |        external constant returns (uint8[3])  {
    |        return [
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(353)

[33mWarning[0m for MissingInputValidation in contract 'EditionStorage':
    |contract Ownable {
    |
  > |    address public owner;
    |
    |    function Ownable() public {
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'EditionStorage':
    |    }
    |
  > |    function isOwner(address _address) public constant returns (bool) {
    |        return _address == owner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(22)

[33mWarning[0m for MissingInputValidation in contract 'EditionStorage':
    |    }
    |
  > |    function transferOwnership(address newOwner) external onlyOwner {
    |        require(newOwner != address(0));
    |        owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'EditionStorage':
    |    event Unpause();
    |
  > |    bool public paused = false;
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(43)

[33mWarning[0m for MissingInputValidation in contract 'EditionStorage':
    |
    |    mapping (address => bool) public allowed;
  > |    address public developer;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(86)

[33mWarning[0m for MissingInputValidation in contract 'EditionStorage':
    |    }
    |
  > |    function setDeveloper(address _address) public onlyOwner {
    |        require(_address != address(0));
    |        developer = _address;
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(95)

[33mWarning[0m for MissingInputValidation in contract 'EditionStorage':
    |    }
    |
  > |    function allow(address _address) external canWrite {
    |        require(_address != address(0));
    |        allowed[_address] = true;
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(100)

[33mWarning[0m for MissingInputValidation in contract 'EditionStorage':
    |// File: contracts/libs/EditionStorage.sol
    |
  > |contract EditionStorage is BaseStorage {
    |
    |    uint public offset = 1000000;
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(298)

[33mWarning[0m for MissingInputValidation in contract 'EditionStorage':
    |contract EditionStorage is BaseStorage {
    |
  > |    uint public offset = 1000000;
    |    uint public offsetIndex = 1;
    |    uint8[3] public defaultEditionLimits = [10, 89, 200];
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(300)

[33mWarning[0m for MissingInputValidation in contract 'EditionStorage':
    |
    |    uint public offset = 1000000;
  > |    uint public offsetIndex = 1;
    |    uint8[3] public defaultEditionLimits = [10, 89, 200];
    |    mapping (uint => mapping (uint8 => uint8)) public editionCounts;
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(301)

[33mWarning[0m for MissingInputValidation in contract 'EditionStorage':
    |    uint public offset = 1000000;
    |    uint public offsetIndex = 1;
  > |    uint8[3] public defaultEditionLimits = [10, 89, 200];
    |    mapping (uint => mapping (uint8 => uint8)) public editionCounts;
    |    mapping (uint => mapping (uint8 => uint8)) public editionLimits;
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(302)

[33mWarning[0m for MissingInputValidation in contract 'EditionStorage':
    |    }
    |
  > |    function getOffsetIndex() public constant returns (uint) {
    |        return offset + offsetIndex;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(311)

[33mWarning[0m for MissingInputValidation in contract 'EditionStorage':
    |    }
    |
  > |    function nextOffsetIndex() public canWrite {
    |        offsetIndex++;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(315)

[33mWarning[0m for MissingInputValidation in contract 'EditionStorage':
    |    }
    |
  > |    function isValidGeneration(uint8 _generation)
    |        public constant returns (bool) {
    |        return (_generation >= 1 && _generation <= 3);
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(326)

[31mViolation[0m for UnrestrictedWrite in contract 'EditionStorage':
    |    function allow(address _address) external canWrite {
    |        require(_address != address(0));
  > |        allowed[_address] = true;
    |        AccessAllowed(_address);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(102)

[31mViolation[0m for UnrestrictedWrite in contract 'EditionStorage':
    |
    |    function denied(address _address) external canWrite {
  > |        delete allowed[_address];
    |        AccessDenied(_address);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(107)

[31mViolation[0m for UnrestrictedWrite in contract 'EditionStorage':
    |
    |    function nextOffsetIndex() public canWrite {
  > |        offsetIndex++;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(316)

[31mViolation[0m for UnrestrictedWrite in contract 'EditionStorage':
    |        require(isValidGeneration(_generation));
    |        uint8 _generationIndex = _generation - 1;
  > |        editionCounts[_tokenId][_generationIndex]++;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(336)

[31mViolation[0m for UnrestrictedWrite in contract 'EditionStorage':
    |    function setLastEditionOf(uint _tokenId, uint _editionId)
    |        public canWrite {
  > |        lastEditionOf[_tokenId] = _editionId;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(350)

[33mWarning[0m for UnrestrictedWrite in contract 'EditionStorage':
    |    function transferOwnership(address newOwner) external onlyOwner {
    |        require(newOwner != address(0));
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(28)

[33mWarning[0m for UnrestrictedWrite in contract 'EditionStorage':
    |    function setDeveloper(address _address) public onlyOwner {
    |        require(_address != address(0));
  > |        developer = _address;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(97)

[33mWarning[0m for UnrestrictedWrite in contract 'EditionStorage':
    |
    |    function setOffset(uint _offset) external onlyOwner {
  > |        offset = _offset;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(308)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |* @dev Manages ownership of the contracts
    |*/
  > |contract Ownable {
    |
    |    address public owner;
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |contract Ownable {
    |
  > |    address public owner;
    |
    |    function Ownable() public {
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    }
    |
  > |    function isOwner(address _address) public constant returns (bool) {
    |        return _address == owner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(22)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    }
    |
  > |    function transferOwnership(address newOwner) external onlyOwner {
    |        require(newOwner != address(0));
    |        owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(26)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    function transferOwnership(address newOwner) external onlyOwner {
    |        require(newOwner != address(0));
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(28)

[33mWarning[0m for LockedEther in contract 'PaintingInformationStorage':
    |// File: contracts/libs/PaintingInformationStorage.sol
    |
  > |contract PaintingInformationStorage {
    |
    |    struct PaintingInformation {
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(367)

[31mViolation[0m for MissingInputValidation in contract 'PaintingInformationStorage':
    |    }
    |
  > |    mapping (uint => PaintingInformation) public information;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(374)

[33mWarning[0m for LockedEther in contract 'PaintingStorage':
    |// File: contracts/libs/PaintingStorage.sol
    |
  > |contract PaintingStorage is BaseStorage {
    |
    |    struct Painting {
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(379)

[31mViolation[0m for MissingInputValidation in contract 'PaintingStorage':
    |    event AccessDenied(address _address);
    |
  > |    mapping (address => bool) public allowed;
    |    address public developer;
    |
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(85)

[31mViolation[0m for MissingInputValidation in contract 'PaintingStorage':
    |    }
    |
  > |    function denied(address _address) external canWrite {
    |        delete allowed[_address];
    |        AccessDenied(_address);
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(106)

[31mViolation[0m for MissingInputValidation in contract 'PaintingStorage':
    |    }
    |
  > |    function isAllowed(address _address) external constant returns (bool) {
    |        return allowed[_address];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(111)

[31mViolation[0m for MissingInputValidation in contract 'PaintingStorage':
    |    ];
    |
  > |    mapping (uint => address) public paintingIndexToOwner;
    |    mapping (uint => Painting) public paintings;
    |    mapping (uint => address) public paintingIndexToApproved;
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(432)

[31mViolation[0m for MissingInputValidation in contract 'PaintingStorage':
    |
    |    mapping (uint => address) public paintingIndexToOwner;
  > |    mapping (uint => Painting) public paintings;
    |    mapping (uint => address) public paintingIndexToApproved;
    |    uint[] public paintingIds;
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(433)

[31mViolation[0m for MissingInputValidation in contract 'PaintingStorage':
    |    mapping (uint => address) public paintingIndexToOwner;
    |    mapping (uint => Painting) public paintings;
  > |    mapping (uint => address) public paintingIndexToApproved;
    |    uint[] public paintingIds;
    |    mapping (uint => uint) public paintingIdToIndex;
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(434)

[31mViolation[0m for MissingInputValidation in contract 'PaintingStorage':
    |    mapping (uint => address) public paintingIndexToApproved;
    |    uint[] public paintingIds;
  > |    mapping (uint => uint) public paintingIdToIndex;
    |    uint public paintingsCount;
    |    uint public totalPaintingsCount;
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(436)

[31mViolation[0m for MissingInputValidation in contract 'PaintingStorage':
    |    uint public paintingsCount;
    |    uint public totalPaintingsCount;
  > |    mapping (uint => bool) public isCanceled;
    |    mapping (uint => bool) public isReleased;
    |
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(439)

[31mViolation[0m for MissingInputValidation in contract 'PaintingStorage':
    |    uint public totalPaintingsCount;
    |    mapping (uint => bool) public isCanceled;
  > |    mapping (uint => bool) public isReleased;
    |
    |    // @dev A mapping from owner address to count of tokens that address owns.
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(440)

[31mViolation[0m for MissingInputValidation in contract 'PaintingStorage':
    |    // @dev A mapping from owner address to count of tokens that address owns.
    |    // Used internally inside balanceOf() to resolve ownership count.
  > |    mapping (address => uint256) public ownershipTokenCount;
    |
    |    modifier isNew(uint _tokenId) {
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(444)

[31mViolation[0m for MissingInputValidation in contract 'PaintingStorage':
    |    }
    |
  > |    function exists(uint _tokenId) external constant returns (bool) {
    |        return paintings[_tokenId].createdAt != 0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(451)

[31mViolation[0m for MissingInputValidation in contract 'PaintingStorage':
    |    }
    |
  > |    function increaseOwnershipTokenCount(address _address) public canWrite {
    |        ownershipTokenCount[_address]++;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(455)

[31mViolation[0m for MissingInputValidation in contract 'PaintingStorage':
    |    }
    |
  > |    function decreaseOwnershipTokenCount(address _address) public canWrite {
    |        ownershipTokenCount[_address]--;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(459)

[31mViolation[0m for MissingInputValidation in contract 'PaintingStorage':
    |    }
    |
  > |    function setOwnership(uint _tokenId, address _address) public canWrite {
    |        paintingIndexToOwner[_tokenId] = _address;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(463)

[31mViolation[0m for MissingInputValidation in contract 'PaintingStorage':
    |    }
    |
  > |    function getPainting(uint _tokenId) external constant returns (
    |        address owner,
    |        uint parent,
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(467)

[31mViolation[0m for MissingInputValidation in contract 'PaintingStorage':
    |    }
    |
  > |    function approve(uint _tokenId, address _claimant) external canWrite {
    |        paintingIndexToApproved[_tokenId] = _claimant;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(484)

[31mViolation[0m for MissingInputValidation in contract 'PaintingStorage':
    |    }
    |
  > |    function isApprovedFor(uint _tokenId, address _claimant) external constant returns (bool) {
    |        return paintingIndexToApproved[_tokenId] == _claimant;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(488)

[31mViolation[0m for MissingInputValidation in contract 'PaintingStorage':
    |    }
    |
  > |    function decreaseSpeed(uint _tokenId) public canWrite() {
    |        uint8 _speed = paintings[_tokenId].speedIndex;
    |
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(492)

[31mViolation[0m for MissingInputValidation in contract 'PaintingStorage':
    |    }
    |
  > |    function getPaintingOwner(uint _tokenId)
    |        external constant returns (address) {
    |        return paintingIndexToOwner[_tokenId];
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(500)

[31mViolation[0m for MissingInputValidation in contract 'PaintingStorage':
    |    }
    |
  > |    function getPaintingGeneration(uint _tokenId)
    |        public constant returns (uint8) {
    |        return paintings[_tokenId].generation;
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(505)

[31mViolation[0m for MissingInputValidation in contract 'PaintingStorage':
    |    }
    |
  > |    function getPaintingArtistId(uint _tokenId)
    |        public constant returns (uint artistId) {
    |        return paintings[_tokenId].artistId;
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(510)

[31mViolation[0m for MissingInputValidation in contract 'PaintingStorage':
    |    }
    |
  > |    function getPaintingSpeed(uint _tokenId)
    |        external constant returns (uint8) {
    |        return paintings[_tokenId].speedIndex + 1;
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(515)

[31mViolation[0m for MissingInputValidation in contract 'PaintingStorage':
    |    }
    |
  > |    function getPaintingOriginal(uint _tokenId)
    |        external constant returns (uint) {
    |        return paintings[_tokenId].originalId;
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(520)

[31mViolation[0m for MissingInputValidation in contract 'PaintingStorage':
    |    }
    |
  > |    function getOwnershipTokenCount(address _address)
    |        external constant returns (uint) {
    |        return ownershipTokenCount[_address];
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(525)

[31mViolation[0m for MissingInputValidation in contract 'PaintingStorage':
    |    }
    |
  > |    function isReady(uint _tokenId)
    |        public constant returns (bool) {
    |        return paintings[_tokenId].completedAt <= now;
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(530)

[31mViolation[0m for MissingInputValidation in contract 'PaintingStorage':
    |    }
    |
  > |    function canBeChanged(uint _tokenId) public constant returns (bool _can) {
    |        return paintings[_tokenId].isFinal == false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(540)

[31mViolation[0m for MissingInputValidation in contract 'PaintingStorage':
    |    }
    |
  > |    function sealForChanges(uint _tokenId) public canWrite {
    |        if (paintings[_tokenId].isFinal == false) {
    |            paintings[_tokenId].isFinal = true;
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(544)

[31mViolation[0m for MissingInputValidation in contract 'PaintingStorage':
    |    }
    |
  > |    function canBeBidden(uint _tokenId) public constant returns (bool _can) {
    |        return (paintings[_tokenId].releasedAt <= now);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(550)

[33mWarning[0m for MissingInputValidation in contract 'PaintingStorage':
    |contract Ownable {
    |
  > |    address public owner;
    |
    |    function Ownable() public {
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'PaintingStorage':
    |    }
    |
  > |    function isOwner(address _address) public constant returns (bool) {
    |        return _address == owner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(22)

[33mWarning[0m for MissingInputValidation in contract 'PaintingStorage':
    |    }
    |
  > |    function transferOwnership(address newOwner) external onlyOwner {
    |        require(newOwner != address(0));
    |        owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'PaintingStorage':
    |    event Unpause();
    |
  > |    bool public paused = false;
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(43)

[33mWarning[0m for MissingInputValidation in contract 'PaintingStorage':
    |
    |    mapping (address => bool) public allowed;
  > |    address public developer;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(86)

[33mWarning[0m for MissingInputValidation in contract 'PaintingStorage':
    |    }
    |
  > |    function setDeveloper(address _address) public onlyOwner {
    |        require(_address != address(0));
    |        developer = _address;
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(95)

[33mWarning[0m for MissingInputValidation in contract 'PaintingStorage':
    |    }
    |
  > |    function allow(address _address) external canWrite {
    |        require(_address != address(0));
    |        allowed[_address] = true;
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(100)

[33mWarning[0m for MissingInputValidation in contract 'PaintingStorage':
    |    }
    |
  > |    uint32[10] public speeds = [
    |        uint32(8760 hours), // 365 days
    |        uint32(6480 hours), // 270 days
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(393)

[33mWarning[0m for MissingInputValidation in contract 'PaintingStorage':
    |    ];
    |
  > |    uint32[10] public speedsTest = [
    |        uint32(8760 seconds),
    |        uint32(6480 seconds),
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(406)

[33mWarning[0m for MissingInputValidation in contract 'PaintingStorage':
    |    ];
    |
  > |    uint32[10] public speedsDev = [
    |        uint32(0 seconds),
    |        uint32(0 seconds),
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(419)

[33mWarning[0m for MissingInputValidation in contract 'PaintingStorage':
    |    mapping (uint => Painting) public paintings;
    |    mapping (uint => address) public paintingIndexToApproved;
  > |    uint[] public paintingIds;
    |    mapping (uint => uint) public paintingIdToIndex;
    |    uint public paintingsCount;
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(435)

[33mWarning[0m for MissingInputValidation in contract 'PaintingStorage':
    |    uint[] public paintingIds;
    |    mapping (uint => uint) public paintingIdToIndex;
  > |    uint public paintingsCount;
    |    uint public totalPaintingsCount;
    |    mapping (uint => bool) public isCanceled;
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(437)

[33mWarning[0m for MissingInputValidation in contract 'PaintingStorage':
    |    mapping (uint => uint) public paintingIdToIndex;
    |    uint public paintingsCount;
  > |    uint public totalPaintingsCount;
    |    mapping (uint => bool) public isCanceled;
    |    mapping (uint => bool) public isReleased;
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(438)

[33mWarning[0m for MissingInputValidation in contract 'PaintingStorage':
    |    }
    |
  > |    function getPaintingIdAtIndex(uint _index)
    |        public constant returns (uint) {
    |        return paintingIds[_index];
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(535)

[31mViolation[0m for UnrestrictedWrite in contract 'PaintingStorage':
    |    function allow(address _address) external canWrite {
    |        require(_address != address(0));
  > |        allowed[_address] = true;
    |        AccessAllowed(_address);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(102)

[31mViolation[0m for UnrestrictedWrite in contract 'PaintingStorage':
    |
    |    function denied(address _address) external canWrite {
  > |        delete allowed[_address];
    |        AccessDenied(_address);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(107)

[31mViolation[0m for UnrestrictedWrite in contract 'PaintingStorage':
    |
    |    function increaseOwnershipTokenCount(address _address) public canWrite {
  > |        ownershipTokenCount[_address]++;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(456)

[31mViolation[0m for UnrestrictedWrite in contract 'PaintingStorage':
    |
    |    function decreaseOwnershipTokenCount(address _address) public canWrite {
  > |        ownershipTokenCount[_address]--;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(460)

[31mViolation[0m for UnrestrictedWrite in contract 'PaintingStorage':
    |
    |    function setOwnership(uint _tokenId, address _address) public canWrite {
  > |        paintingIndexToOwner[_tokenId] = _address;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(464)

[31mViolation[0m for UnrestrictedWrite in contract 'PaintingStorage':
    |
    |    function approve(uint _tokenId, address _claimant) external canWrite {
  > |        paintingIndexToApproved[_tokenId] = _claimant;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(485)

[31mViolation[0m for UnrestrictedWrite in contract 'PaintingStorage':
    |
    |        if (_speed > 0) {
  > |            paintings[_tokenId].speedIndex--;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(496)

[31mViolation[0m for UnrestrictedWrite in contract 'PaintingStorage':
    |    function sealForChanges(uint _tokenId) public canWrite {
    |        if (paintings[_tokenId].isFinal == false) {
  > |            paintings[_tokenId].isFinal = true;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(546)

[33mWarning[0m for UnrestrictedWrite in contract 'PaintingStorage':
    |    function transferOwnership(address newOwner) external onlyOwner {
    |        require(newOwner != address(0));
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(28)

[33mWarning[0m for UnrestrictedWrite in contract 'PaintingStorage':
    |    function setDeveloper(address _address) public onlyOwner {
    |        require(_address != address(0));
  > |        developer = _address;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(97)

[33mWarning[0m for LockedEther in contract 'Pausable':
    | * @dev Base contract which allows children to implement an emergency stop mechanism.
    | */
  > |contract Pausable is Ownable {
    |    event Pause();
    |    event Unpause();
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(39)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |contract Ownable {
    |
  > |    address public owner;
    |
    |    function Ownable() public {
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |    }
    |
  > |    function isOwner(address _address) public constant returns (bool) {
    |        return _address == owner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(22)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |    }
    |
  > |    function transferOwnership(address newOwner) external onlyOwner {
    |        require(newOwner != address(0));
    |        owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |    event Unpause();
    |
  > |    bool public paused = false;
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(43)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    function transferOwnership(address newOwner) external onlyOwner {
    |        require(newOwner != address(0));
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xaa57e849341a2899110ba676a49302c069251d19.sol(28)


