Processing contract: /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol:AuctionManager
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol:CarefulTransfer
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol:CloningInterface
Processing contract: /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol:ERC721
Processing contract: /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol:GenesMarket
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol:MarketManager
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol:MetadataContract
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol:MoneyManager
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol:PullPayment
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol:REPOPAccessControl
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol:REPOPCore
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol:REPOPERC721
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol:RoundMoneyNicely
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAO in contract 'AuctionManager':
    |
    |    function _takeOwnershipOfTokenFrom(uint256 _itemForAuctionID, address previousOwner) internal {
  > |        nonFungibleContract.transferFrom(previousOwner,this,_itemForAuctionID);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(696)

[31mViolation[0m for DAOConstantGas in contract 'AuctionManager':
    |    uint payment = payments[msg.sender];
    |    payments[msg.sender] = 0;
  > |    if (!msg.sender.send(payment)) {
    |      payments[msg.sender] = payment;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(83)

[31mViolation[0m for DAOConstantGas in contract 'AuctionManager':
    |        uint _extraGasIncluded
    |    ) internal returns (bool success) {
  > |        return _toAddress.call.value(_valueWei).gas(_extraGasIncluded)();
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(453)

[33mWarning[0m for DAOConstantGas in contract 'AuctionManager':
    |        uint _extraGasIncluded
    |    ) internal returns (bool success) {
  > |        return _toAddress.call.value(_valueWei).gas(_extraGasIncluded)();
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(453)

[33mWarning[0m for DAOConstantGas in contract 'AuctionManager':
    |    function withdraw(uint amount) external onlyCFO {
    |        require(amount < address(this).balance);
  > |        cfoAddress.transfer(amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(470)

[33mWarning[0m for LockedEther in contract 'AuctionManager':
    |}
    |
  > |contract AuctionManager is MoneyManager {
    |    event Bid(address bidder, uint256 bid, uint256 auctionId);
    |    event NewAuction( uint256 itemForAuctionID, uint256 durationSeconds, address seller);
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(508)

[31mViolation[0m for MissingInputValidation in contract 'AuctionManager':
    |
    |contract PullPayment {
  > |  mapping(address => uint) public payments;
    |
    |  function asyncSend(address dest, uint amount) internal {
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(74)

[31mViolation[0m for MissingInputValidation in contract 'AuctionManager':
    |    address private auctionsStartAddress;
    |
  > |    mapping (uint256 => uint256) public _itemID2auctionID;
    |    mapping (uint256 => uint256) public _auctionID2itemID;
    |    Auction[] public _auctionsArray;
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(527)

[31mViolation[0m for MissingInputValidation in contract 'AuctionManager':
    |
    |    mapping (uint256 => uint256) public _itemID2auctionID;
  > |    mapping (uint256 => uint256) public _auctionID2itemID;
    |    Auction[] public _auctionsArray;
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(528)

[31mViolation[0m for MissingInputValidation in contract 'AuctionManager':
    |    }
    |
  > |    function setERCContract(address candidateAddress) public onlyCEO {
    |        ERC721 candidateContract = ERC721(candidateAddress);
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(542)

[31mViolation[0m for MissingInputValidation in contract 'AuctionManager':
    |    }
    |
  > |    function setAuctionStartBid(uint256 _auctionStartBid) public onlyCLevel{
    |      auctionsStartBid = _auctionStartBid;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(681)

[33mWarning[0m for MissingInputValidation in contract 'AuctionManager':
    |/// @author Luis Freitas, Miguel Amaral (https://repop.world)
    |contract REPOPAccessControl {
  > |    address public ceoAddress;
    |    address public cfoAddress;
    |    address public cooAddress;
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'AuctionManager':
    |contract REPOPAccessControl {
    |    address public ceoAddress;
  > |    address public cfoAddress;
    |    address public cooAddress;
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'AuctionManager':
    |    address public ceoAddress;
    |    address public cfoAddress;
  > |    address public cooAddress;
    |
    |    bool public paused = false;
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'AuctionManager':
    |    address public cooAddress;
    |
  > |    bool public paused = false;
    |
    |    modifier onlyCEO() {
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'AuctionManager':
    |    }
    |
  > |    function setCEO(address _newCEO) external onlyCEO {
    |        require(_newCEO != address(0));
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(35)

[33mWarning[0m for MissingInputValidation in contract 'AuctionManager':
    |    }
    |
  > |    function setCFO(address _newCFO) external onlyCEO {
    |        require(_newCFO != address(0));
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(41)

[33mWarning[0m for MissingInputValidation in contract 'AuctionManager':
    |    }
    |
  > |    function setCOO(address _newCOO) external onlyCEO {
    |        require(_newCOO != address(0));
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(47)

[33mWarning[0m for MissingInputValidation in contract 'AuctionManager':
    |    }
    |
  > |    function pause() external onlyCLevel whenNotPaused {
    |        paused = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(63)

[33mWarning[0m for MissingInputValidation in contract 'AuctionManager':
    |    }
    |
  > |    function unpause() public onlyCEO whenPaused {
    |
    |        paused = false;
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(67)

[33mWarning[0m for MissingInputValidation in contract 'AuctionManager':
    |  mapping(address => uint) public payments;
    |
  > |  function asyncSend(address dest, uint amount) internal {
    |    payments[dest] += amount;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(76)

[33mWarning[0m for MissingInputValidation in contract 'AuctionManager':
    |  }
    |
  > |  function withdrawPayments() external {
    |    uint payment = payments[msg.sender];
    |    payments[msg.sender] = 0;
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(80)

[33mWarning[0m for MissingInputValidation in contract 'AuctionManager':
    |  }
    |
  > |  function add(uint256 a, uint256 b) internal pure returns (uint256) {
    |    uint256 c = a + b;
    |    assert(c >= a);
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(131)

[33mWarning[0m for MissingInputValidation in contract 'AuctionManager':
    |    uint constant suggestedExtraGasToIncludeWithSends = 23000;
    |
  > |    function carefulSendWithFixedGas(
    |        address _toAddress,
    |        uint _valueWei,
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(448)

[33mWarning[0m for MissingInputValidation in contract 'AuctionManager':
    |contract MoneyManager is PullPayment, CarefulTransfer, REPOPAccessControl {
    |
  > |    function _repopTransaction(address _receiver, uint256 _amountWei, uint256 _marginPerThousandForDevelopers) internal {
    |        uint256 commissionWei = (_amountWei * _marginPerThousandForDevelopers) / 1000;
    |        uint256 compensationWei = _amountWei - commissionWei;
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(459)

[33mWarning[0m for MissingInputValidation in contract 'AuctionManager':
    |    }
    |
  > |    function withdraw(uint amount) external onlyCFO {
    |        require(amount < address(this).balance);
    |        cfoAddress.transfer(amount);
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(468)

[33mWarning[0m for MissingInputValidation in contract 'AuctionManager':
    |    }
    |
  > |    function getBalance() public view returns (uint256 balance) {
    |        return address(this).balance;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(473)

[33mWarning[0m for MissingInputValidation in contract 'AuctionManager':
    |
    |library RoundMoneyNicely {
  > |    function roundMoneyDownNicely(uint _rawValueWei) internal pure
    |    returns (uint nicerValueWei) {
    |        if (_rawValueWei < 1 finney) {
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(479)

[33mWarning[0m for MissingInputValidation in contract 'AuctionManager':
    |}
    |
  > |contract AuctionManager is MoneyManager {
    |    event Bid(address bidder, uint256 bid, uint256 auctionId);
    |    event NewAuction( uint256 itemForAuctionID, uint256 durationSeconds, address seller);
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(508)

[33mWarning[0m for MissingInputValidation in contract 'AuctionManager':
    |    }
    |
  > |    bool public isAuctionManager = true;
    |    uint256 private marginPerThousandForDevelopers = 50;
    |    uint256 private percentageBidIncrease = 33;
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(521)

[33mWarning[0m for MissingInputValidation in contract 'AuctionManager':
    |    mapping (uint256 => uint256) public _itemID2auctionID;
    |    mapping (uint256 => uint256) public _auctionID2itemID;
  > |    Auction[] public _auctionsArray;
    |
    |    ERC721 public nonFungibleContract;
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(529)

[33mWarning[0m for MissingInputValidation in contract 'AuctionManager':
    |    Auction[] public _auctionsArray;
    |
  > |    ERC721 public nonFungibleContract;
    |
    |    function AuctionManager() public {
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(531)

[33mWarning[0m for MissingInputValidation in contract 'AuctionManager':
    |    }
    |
  > |    function getERCContractAddress() public view returns (address) {
    |        return address(nonFungibleContract);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(548)

[33mWarning[0m for MissingInputValidation in contract 'AuctionManager':
    |    }
    |
  > |    function getAllActiveAuctions()  external view returns (uint256[] popsIDs,uint256[] auctionsIDs,uint256[] sellingPrices, address[] highestBidders, bool[] canBeEnded){
    |
    |        uint256[] memory toReturnPopsIDs = new uint256[](_auctionsArray.length);
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(552)

[33mWarning[0m for MissingInputValidation in contract 'AuctionManager':
    |    }
    |
  > |    function getAllAuctions()  external view returns (uint256[] popsIDs,uint256[] auctionsIDs,uint256[] sellingPrices){
    |
    |        uint256[] memory toReturnPopsIDs = new uint256[](_auctionsArray.length);
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(577)

[33mWarning[0m for MissingInputValidation in contract 'AuctionManager':
    |
    |
  > |    function createAuction(uint256 _itemForAuctionID, uint256 _auctionDurationSeconds, address _seller) public {
    |        require(msg.sender == getERCContractAddress());
    |        require(_auctionDurationSeconds >= 20 seconds);
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(597)

[33mWarning[0m for MissingInputValidation in contract 'AuctionManager':
    |    }
    |
  > |    function endAuction(uint auctionID) public{
    |        require(auctionID != 0);
    |        Auction storage auction = _auctionsArray[auctionID];
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(639)

[33mWarning[0m for MissingInputValidation in contract 'AuctionManager':
    |    }
    |
  > |    function getAuction(uint _itemForAuctionID) external constant returns (uint256 itemID, uint256 auctionStart, uint256 auctionEnd, address highestBidder, uint256 highestBid, bool ended){
    |        require(_itemForAuctionID != 0);
    |        Auction memory auction = _auctionsArray[_itemID2auctionID[_itemForAuctionID]];
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(661)

[33mWarning[0m for MissingInputValidation in contract 'AuctionManager':
    |    }
    |
  > |    function getAuctionStartBid() public view returns(uint256){
    |      return auctionsStartBid;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(677)

[33mWarning[0m for MissingInputValidation in contract 'AuctionManager':
    |    }
    |
  > |    function _takeOwnershipOfTokenFrom(uint256 _itemForAuctionID, address previousOwner) internal {
    |        nonFungibleContract.transferFrom(previousOwner,this,_itemForAuctionID);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(695)

[33mWarning[0m for TODAmount in contract 'AuctionManager':
    |        uint _extraGasIncluded
    |    ) internal returns (bool success) {
  > |        return _toAddress.call.value(_valueWei).gas(_extraGasIncluded)();
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(453)

[33mWarning[0m for TODAmount in contract 'AuctionManager':
    |    function withdraw(uint amount) external onlyCFO {
    |        require(amount < address(this).balance);
  > |        cfoAddress.transfer(amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(470)

[31mViolation[0m for TODReceiver in contract 'AuctionManager':
    |    function withdraw(uint amount) external onlyCFO {
    |        require(amount < address(this).balance);
  > |        cfoAddress.transfer(amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(470)

[33mWarning[0m for TODReceiver in contract 'AuctionManager':
    |    uint payment = payments[msg.sender];
    |    payments[msg.sender] = 0;
  > |    if (!msg.sender.send(payment)) {
    |      payments[msg.sender] = payment;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(83)

[33mWarning[0m for TODReceiver in contract 'AuctionManager':
    |        uint _extraGasIncluded
    |    ) internal returns (bool success) {
  > |        return _toAddress.call.value(_valueWei).gas(_extraGasIncluded)();
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(453)

[31mViolation[0m for UnhandledException in contract 'AuctionManager':
    |        uint _extraGasIncluded
    |    ) internal returns (bool success) {
  > |        return _toAddress.call.value(_valueWei).gas(_extraGasIncluded)();
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(453)

[33mWarning[0m for UnhandledException in contract 'AuctionManager':
    |    uint payment = payments[msg.sender];
    |    payments[msg.sender] = 0;
  > |    if (!msg.sender.send(payment)) {
    |      payments[msg.sender] = payment;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(83)

[33mWarning[0m for UnhandledException in contract 'AuctionManager':
    |        uint _extraGasIncluded
    |    ) internal returns (bool success) {
  > |        return _toAddress.call.value(_valueWei).gas(_extraGasIncluded)();
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(453)

[33mWarning[0m for UnhandledException in contract 'AuctionManager':
    |    function withdraw(uint amount) external onlyCFO {
    |        require(amount < address(this).balance);
  > |        cfoAddress.transfer(amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(470)

[33mWarning[0m for UnhandledException in contract 'AuctionManager':
    |        require(auction.auctionEnd < now);
    |        auction.ended = true;
  > |        nonFungibleContract.transfer(auction.highestBidder, _auctionID2itemID[auctionID]);
    |        emit NewAuctionWinner(auction.highestBidder, auctionID);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(645)

[33mWarning[0m for UnhandledException in contract 'AuctionManager':
    |
    |    function _takeOwnershipOfTokenFrom(uint256 _itemForAuctionID, address previousOwner) internal {
  > |        nonFungibleContract.transferFrom(previousOwner,this,_itemForAuctionID);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(696)

[31mViolation[0m for UnrestrictedEtherFlow in contract 'AuctionManager':
    |        uint _extraGasIncluded
    |    ) internal returns (bool success) {
  > |        return _toAddress.call.value(_valueWei).gas(_extraGasIncluded)();
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(453)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AuctionManager':
    |        require(auction.auctionEnd < now);
    |        auction.ended = true;
  > |        nonFungibleContract.transfer(auction.highestBidder, _auctionID2itemID[auctionID]);
    |        emit NewAuctionWinner(auction.highestBidder, auctionID);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(645)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AuctionManager':
    |
    |    function _takeOwnershipOfTokenFrom(uint256 _itemForAuctionID, address previousOwner) internal {
  > |        nonFungibleContract.transferFrom(previousOwner,this,_itemForAuctionID);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(696)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AuctionManager':
    |    function withdraw(uint amount) external onlyCFO {
    |        require(amount < address(this).balance);
  > |        cfoAddress.transfer(amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(470)

[31mViolation[0m for UnrestrictedWrite in contract 'AuctionManager':
    |
    |  function asyncSend(address dest, uint amount) internal {
  > |    payments[dest] += amount;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(77)

[31mViolation[0m for UnrestrictedWrite in contract 'AuctionManager':
    |        require(bidValue >= claimBidPrice);
    |        address previousHighestBidder = auction.highestBidder;
  > |        auction.highestBid = msg.value;
    |        auction.highestBidder = msg.sender;
    |        _repopTransaction(previousHighestBidder, msg.value, marginPerThousandForDevelopers);
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(633)

[31mViolation[0m for UnrestrictedWrite in contract 'AuctionManager':
    |        address previousHighestBidder = auction.highestBidder;
    |        auction.highestBid = msg.value;
  > |        auction.highestBidder = msg.sender;
    |        _repopTransaction(previousHighestBidder, msg.value, marginPerThousandForDevelopers);
    |        emit Bid(msg.sender, msg.value, auctionID);
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(634)

[31mViolation[0m for UnrestrictedWrite in contract 'AuctionManager':
    |        require(auction.ended == false);
    |        require(auction.auctionEnd < now);
  > |        auction.ended = true;
    |        nonFungibleContract.transfer(auction.highestBidder, _auctionID2itemID[auctionID]);
    |        emit NewAuctionWinner(auction.highestBidder, auctionID);
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(644)

[33mWarning[0m for UnrestrictedWrite in contract 'AuctionManager':
    |  function withdrawPayments() external {
    |    uint payment = payments[msg.sender];
  > |    payments[msg.sender] = 0;
    |    if (!msg.sender.send(payment)) {
    |      payments[msg.sender] = payment;
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'AuctionManager':
    |    payments[msg.sender] = 0;
    |    if (!msg.sender.send(payment)) {
  > |      payments[msg.sender] = payment;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'AuctionManager':
    |pragma solidity ^0.4.21;
    |
  > |/// @author Luis Freitas, Miguel Amaral (https://repop.world)
    |contract REPOPAccessControl {
    |    address public ceoAddress;
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'AuctionManager':
    |        require(_newCEO != address(0));
    |
  > |        ceoAddress = _newCEO;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(38)

[33mWarning[0m for UnrestrictedWrite in contract 'AuctionManager':
    |        require(_newCFO != address(0));
    |
  > |        cfoAddress = _newCFO;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(44)

[33mWarning[0m for UnrestrictedWrite in contract 'AuctionManager':
    |        require(_newCOO != address(0));
    |
  > |        cooAddress = _newCOO;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(50)

[33mWarning[0m for UnrestrictedWrite in contract 'AuctionManager':
    |
    |    function pause() external onlyCLevel whenNotPaused {
  > |        paused = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(64)

[33mWarning[0m for UnrestrictedWrite in contract 'AuctionManager':
    |    function unpause() public onlyCEO whenPaused {
    |
  > |        paused = false;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(69)

[33mWarning[0m for UnrestrictedWrite in contract 'AuctionManager':
    |        ERC721 candidateContract = ERC721(candidateAddress);
    |
  > |        nonFungibleContract = candidateContract;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(545)

[33mWarning[0m for UnrestrictedWrite in contract 'AuctionManager':
    |        uint256 auctionID = _itemID2auctionID[_itemForAuctionID];
    |        if(auctionID == 0){
  > |            uint256 index = _auctionsArray.push(Auction(now, auctionEnd, 0, _seller, false)) - 1;
    |            _itemID2auctionID[_itemForAuctionID] = index;
    |            _auctionID2itemID[index] = _itemForAuctionID;
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(609)

[33mWarning[0m for UnrestrictedWrite in contract 'AuctionManager':
    |        if(auctionID == 0){
    |            uint256 index = _auctionsArray.push(Auction(now, auctionEnd, 0, _seller, false)) - 1;
  > |            _itemID2auctionID[_itemForAuctionID] = index;
    |            _auctionID2itemID[index] = _itemForAuctionID;
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(610)

[33mWarning[0m for UnrestrictedWrite in contract 'AuctionManager':
    |            uint256 index = _auctionsArray.push(Auction(now, auctionEnd, 0, _seller, false)) - 1;
    |            _itemID2auctionID[_itemForAuctionID] = index;
  > |            _auctionID2itemID[index] = _itemForAuctionID;
    |        } else {
    |            Auction storage previousAuction = _auctionsArray[auctionID];
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(611)

[33mWarning[0m for UnrestrictedWrite in contract 'AuctionManager':
    |            Auction storage previousAuction = _auctionsArray[auctionID];
    |            require(previousAuction.ended == true);
  > |            previousAuction.auctionStart = now;
    |            previousAuction.auctionEnd = auctionEnd;
    |            previousAuction.highestBidder = _seller;
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(615)

[33mWarning[0m for UnrestrictedWrite in contract 'AuctionManager':
    |            require(previousAuction.ended == true);
    |            previousAuction.auctionStart = now;
  > |            previousAuction.auctionEnd = auctionEnd;
    |            previousAuction.highestBidder = _seller;
    |            previousAuction.highestBid = 0;
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(616)

[33mWarning[0m for UnrestrictedWrite in contract 'AuctionManager':
    |            previousAuction.auctionStart = now;
    |            previousAuction.auctionEnd = auctionEnd;
  > |            previousAuction.highestBidder = _seller;
    |            previousAuction.highestBid = 0;
    |            previousAuction.ended = false;
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(617)

[33mWarning[0m for UnrestrictedWrite in contract 'AuctionManager':
    |            previousAuction.auctionEnd = auctionEnd;
    |            previousAuction.highestBidder = _seller;
  > |            previousAuction.highestBid = 0;
    |            previousAuction.ended = false;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(618)

[33mWarning[0m for UnrestrictedWrite in contract 'AuctionManager':
    |            previousAuction.highestBidder = _seller;
    |            previousAuction.highestBid = 0;
  > |            previousAuction.ended = false;
    |        }
    |        emit NewAuction(_itemForAuctionID, _auctionDurationSeconds, _seller);
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(619)

[33mWarning[0m for UnrestrictedWrite in contract 'AuctionManager':
    |
    |    function setAuctionStartBid(uint256 _auctionStartBid) public onlyCLevel{
  > |      auctionsStartBid = _auctionStartBid;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(682)

[33mWarning[0m for LockedEther in contract 'CarefulTransfer':
    |}
    |
  > |contract CarefulTransfer {
    |    uint constant suggestedExtraGasToIncludeWithSends = 23000;
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(445)

[31mViolation[0m for DAOConstantGas in contract 'GenesMarket':
    |    uint payment = payments[msg.sender];
    |    payments[msg.sender] = 0;
  > |    if (!msg.sender.send(payment)) {
    |      payments[msg.sender] = payment;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(83)

[31mViolation[0m for DAOConstantGas in contract 'GenesMarket':
    |        uint _extraGasIncluded
    |    ) internal returns (bool success) {
  > |        return _toAddress.call.value(_valueWei).gas(_extraGasIncluded)();
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(453)

[33mWarning[0m for DAOConstantGas in contract 'GenesMarket':
    |    function withdraw(uint amount) external onlyCFO {
    |        require(amount < address(this).balance);
  > |        cfoAddress.transfer(amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(470)

[33mWarning[0m for LockedEther in contract 'GenesMarket':
    |}
    |
  > |contract GenesMarket is MoneyManager {
    |    event GenesCancelSale(address popOwner, uint256 popId);
    |    event GenesPurchased(address buyer, address popOwner, uint256 popId, uint256 amount, uint256 price);
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(859)

[33mWarning[0m for TODAmount in contract 'GenesMarket':
    |    function withdraw(uint amount) external onlyCFO {
    |        require(amount < address(this).balance);
  > |        cfoAddress.transfer(amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(470)

[31mViolation[0m for TODReceiver in contract 'GenesMarket':
    |    function withdraw(uint amount) external onlyCFO {
    |        require(amount < address(this).balance);
  > |        cfoAddress.transfer(amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(470)

[33mWarning[0m for TODReceiver in contract 'GenesMarket':
    |    uint payment = payments[msg.sender];
    |    payments[msg.sender] = 0;
  > |    if (!msg.sender.send(payment)) {
    |      payments[msg.sender] = payment;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(83)

[33mWarning[0m for UnhandledException in contract 'GenesMarket':
    |    uint payment = payments[msg.sender];
    |    payments[msg.sender] = 0;
  > |    if (!msg.sender.send(payment)) {
    |      payments[msg.sender] = payment;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(83)

[33mWarning[0m for UnhandledException in contract 'GenesMarket':
    |        uint _extraGasIncluded
    |    ) internal returns (bool success) {
  > |        return _toAddress.call.value(_valueWei).gas(_extraGasIncluded)();
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(453)

[33mWarning[0m for UnhandledException in contract 'GenesMarket':
    |    function withdraw(uint amount) external onlyCFO {
    |        require(amount < address(this).balance);
  > |        cfoAddress.transfer(amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(470)

[33mWarning[0m for UnhandledException in contract 'GenesMarket':
    |        require(gene.sellingPrice != 0);
    |        gene.sellingPrice = 0;
  > |        nonFungibleContract.transfer(gene.currentOwner, _popId);
    |
    |        emit GenesCancelSale(msg.sender, _popId);
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(922)

[33mWarning[0m for UnhandledException in contract 'GenesMarket':
    |
    |    function _takeOwnershipOfTokenFrom(uint256 _popId, address previousOwner) internal {
  > |        nonFungibleContract.transferFrom(previousOwner,this,_popId);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(1041)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GenesMarket':
    |        uint _extraGasIncluded
    |    ) internal returns (bool success) {
  > |        return _toAddress.call.value(_valueWei).gas(_extraGasIncluded)();
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(453)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GenesMarket':
    |        require(gene.sellingPrice != 0);
    |        gene.sellingPrice = 0;
  > |        nonFungibleContract.transfer(gene.currentOwner, _popId);
    |
    |        emit GenesCancelSale(msg.sender, _popId);
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(922)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GenesMarket':
    |
    |    function _takeOwnershipOfTokenFrom(uint256 _popId, address previousOwner) internal {
  > |        nonFungibleContract.transferFrom(previousOwner,this,_popId);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(1041)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GenesMarket':
    |    function withdraw(uint amount) external onlyCFO {
    |        require(amount < address(this).balance);
  > |        cfoAddress.transfer(amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(470)

[33mWarning[0m for UnrestrictedWrite in contract 'GenesMarket':
    |pragma solidity ^0.4.21;
    |
  > |/// @author Luis Freitas, Miguel Amaral (https://repop.world)
    |contract REPOPAccessControl {
    |    address public ceoAddress;
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'GenesMarket':
    |  function withdrawPayments() external {
    |    uint payment = payments[msg.sender];
  > |    payments[msg.sender] = 0;
    |    if (!msg.sender.send(payment)) {
    |      payments[msg.sender] = payment;
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'GenesMarket':
    |    payments[msg.sender] = 0;
    |    if (!msg.sender.send(payment)) {
  > |      payments[msg.sender] = payment;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'GenesMarket':
    |        require(msg.value == SafeMath.mul(sellingPrice, _amountGenes));
    |        if( update && _genesOwned[msg.sender][_popId] == 0) {
  > |            _ownedGenesPopsId[msg.sender].push(_popId);
    |        }
    |        _genesOwned[msg.sender][_popId] = _genesOwned[msg.sender][_popId] + _amountGenes;
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(956)

[33mWarning[0m for UnrestrictedWrite in contract 'GenesMarket':
    |            _ownedGenesPopsId[msg.sender].push(_popId);
    |        }
  > |        _genesOwned[msg.sender][_popId] = _genesOwned[msg.sender][_popId] + _amountGenes;
    |        _repopTransaction(popOwner, msg.value, marginPerThousandForDevelopers);
    |        emit GenesPurchased(msg.sender, popOwner, _popId, _amountGenes, msg.value);
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(958)

[33mWarning[0m for UnrestrictedWrite in contract 'GenesMarket':
    |pragma solidity ^0.4.21;
    |
  > |/// @author Luis Freitas, Miguel Amaral (https://repop.world)
    |contract REPOPAccessControl {
    |    address public ceoAddress;
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'GenesMarket':
    |        require(_newCEO != address(0));
    |
  > |        ceoAddress = _newCEO;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(38)

[33mWarning[0m for UnrestrictedWrite in contract 'GenesMarket':
    |        require(_newCFO != address(0));
    |
  > |        cfoAddress = _newCFO;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(44)

[33mWarning[0m for UnrestrictedWrite in contract 'GenesMarket':
    |        require(_newCOO != address(0));
    |
  > |        cooAddress = _newCOO;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(50)

[33mWarning[0m for UnrestrictedWrite in contract 'GenesMarket':
    |
    |    function pause() external onlyCLevel whenNotPaused {
  > |        paused = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(64)

[33mWarning[0m for UnrestrictedWrite in contract 'GenesMarket':
    |    function unpause() public onlyCEO whenPaused {
    |
  > |        paused = false;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(69)

[33mWarning[0m for UnrestrictedWrite in contract 'GenesMarket':
    |
    |  function asyncSend(address dest, uint amount) internal {
  > |    payments[dest] += amount;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'GenesMarket':
    |    function setERCContract(address candidateAddress) public onlyCEO() {
    |        ERC721 candidateContract = ERC721(candidateAddress);
  > |        nonFungibleContract = candidateContract;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(889)

[33mWarning[0m for UnrestrictedWrite in contract 'GenesMarket':
    |        if(geneSaleID == 0){
    |
  > |            uint256 index = _genesForSaleArray.push(GeneForSale(_sellingPrice,_seller)) - 1;
    |            _itemID2geneSaleID[_popId] = index;
    |            _geneSaleID2itemID[index] = _popId;
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(904)

[33mWarning[0m for UnrestrictedWrite in contract 'GenesMarket':
    |
    |            uint256 index = _genesForSaleArray.push(GeneForSale(_sellingPrice,_seller)) - 1;
  > |            _itemID2geneSaleID[_popId] = index;
    |            _geneSaleID2itemID[index] = _popId;
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(905)

[33mWarning[0m for UnrestrictedWrite in contract 'GenesMarket':
    |            uint256 index = _genesForSaleArray.push(GeneForSale(_sellingPrice,_seller)) - 1;
    |            _itemID2geneSaleID[_popId] = index;
  > |            _geneSaleID2itemID[index] = _popId;
    |
    |        }else {
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(906)

[33mWarning[0m for UnrestrictedWrite in contract 'GenesMarket':
    |        }else {
    |            GeneForSale storage previousSale = _genesForSaleArray[geneSaleID];
  > |            previousSale.sellingPrice = _sellingPrice;
    |            previousSale.currentOwner = _seller;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(910)

[33mWarning[0m for UnrestrictedWrite in contract 'GenesMarket':
    |            GeneForSale storage previousSale = _genesForSaleArray[geneSaleID];
    |            previousSale.sellingPrice = _sellingPrice;
  > |            previousSale.currentOwner = _seller;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(911)

[33mWarning[0m for UnrestrictedWrite in contract 'GenesMarket':
    |        require(msg.sender == gene.currentOwner);
    |        require(gene.sellingPrice != 0);
  > |        gene.sellingPrice = 0;
    |        nonFungibleContract.transfer(gene.currentOwner, _popId);
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(921)

[33mWarning[0m for UnrestrictedWrite in contract 'GenesMarket':
    |        require(msg.sender == getERCContractAddress());
    |        require(_genesOwned[_user][_popId] > 0);
  > |        _genesOwned[_user][_popId] = _genesOwned[_user][_popId] - 1;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(941)

[33mWarning[0m for UnrestrictedWrite in contract 'GenesMarket':
    |      require(gene.sellingPrice != 0);
    |
  > |      gene.sellingPrice = _newSellingValue;
    |
    |      emit GenesChangedPrice(msg.sender, _popId, _newSellingValue);
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(1035)

[31mViolation[0m for DAOConstantGas in contract 'MarketManager':
    |    uint payment = payments[msg.sender];
    |    payments[msg.sender] = 0;
  > |    if (!msg.sender.send(payment)) {
    |      payments[msg.sender] = payment;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(83)

[31mViolation[0m for DAOConstantGas in contract 'MarketManager':
    |        uint _extraGasIncluded
    |    ) internal returns (bool success) {
  > |        return _toAddress.call.value(_valueWei).gas(_extraGasIncluded)();
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(453)

[33mWarning[0m for DAOConstantGas in contract 'MarketManager':
    |    function withdraw(uint amount) external onlyCFO {
    |        require(amount < address(this).balance);
  > |        cfoAddress.transfer(amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(470)

[33mWarning[0m for LockedEther in contract 'MarketManager':
    |}
    |
  > |contract MarketManager is MoneyManager {
    |    event PopPurchased(address seller, address buyer, uint256 popId, uint256 sellingPrice);
    |    event PopCancelSale(address popOwner, uint256 popId);
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(700)

[33mWarning[0m for TODAmount in contract 'MarketManager':
    |    function withdraw(uint amount) external onlyCFO {
    |        require(amount < address(this).balance);
  > |        cfoAddress.transfer(amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(470)

[31mViolation[0m for TODReceiver in contract 'MarketManager':
    |    function withdraw(uint amount) external onlyCFO {
    |        require(amount < address(this).balance);
  > |        cfoAddress.transfer(amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(470)

[33mWarning[0m for TODReceiver in contract 'MarketManager':
    |    uint payment = payments[msg.sender];
    |    payments[msg.sender] = 0;
  > |    if (!msg.sender.send(payment)) {
    |      payments[msg.sender] = payment;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(83)

[33mWarning[0m for UnhandledException in contract 'MarketManager':
    |    uint payment = payments[msg.sender];
    |    payments[msg.sender] = 0;
  > |    if (!msg.sender.send(payment)) {
    |      payments[msg.sender] = payment;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(83)

[33mWarning[0m for UnhandledException in contract 'MarketManager':
    |        uint _extraGasIncluded
    |    ) internal returns (bool success) {
  > |        return _toAddress.call.value(_valueWei).gas(_extraGasIncluded)();
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(453)

[33mWarning[0m for UnhandledException in contract 'MarketManager':
    |    function withdraw(uint amount) external onlyCFO {
    |        require(amount < address(this).balance);
  > |        cfoAddress.transfer(amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(470)

[33mWarning[0m for UnhandledException in contract 'MarketManager':
    |        require(msg.value == sellingPrice);
    |        sale.seller = 0;
  > |        nonFungibleContract.transfer(newOwner,_popId);
    |        _repopTransaction(popOwner, msg.value, marginPerThousandForDevelopers);
    |        emit PopPurchased(popOwner, msg.sender, _popId, msg.value);
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(794)

[33mWarning[0m for UnhandledException in contract 'MarketManager':
    |        require(sale.seller == msg.sender);
    |        sale.seller = 0;
  > |        nonFungibleContract.transfer(msg.sender,_popId);
    |
    |        emit PopCancelSale(msg.sender, _popId);
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(827)

[33mWarning[0m for UnhandledException in contract 'MarketManager':
    |
    |    function _takeOwnershipOfTokenFrom(uint256 _itemForAuctionID, address previousOwner) internal {
  > |        nonFungibleContract.transferFrom(previousOwner,this,_itemForAuctionID);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(850)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MarketManager':
    |        uint _extraGasIncluded
    |    ) internal returns (bool success) {
  > |        return _toAddress.call.value(_valueWei).gas(_extraGasIncluded)();
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(453)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MarketManager':
    |        require(msg.value == sellingPrice);
    |        sale.seller = 0;
  > |        nonFungibleContract.transfer(newOwner,_popId);
    |        _repopTransaction(popOwner, msg.value, marginPerThousandForDevelopers);
    |        emit PopPurchased(popOwner, msg.sender, _popId, msg.value);
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(794)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MarketManager':
    |        require(sale.seller == msg.sender);
    |        sale.seller = 0;
  > |        nonFungibleContract.transfer(msg.sender,_popId);
    |
    |        emit PopCancelSale(msg.sender, _popId);
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(827)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MarketManager':
    |
    |    function _takeOwnershipOfTokenFrom(uint256 _itemForAuctionID, address previousOwner) internal {
  > |        nonFungibleContract.transferFrom(previousOwner,this,_itemForAuctionID);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(850)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MarketManager':
    |    function withdraw(uint amount) external onlyCFO {
    |        require(amount < address(this).balance);
  > |        cfoAddress.transfer(amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(470)

[33mWarning[0m for UnrestrictedWrite in contract 'MarketManager':
    |  function withdrawPayments() external {
    |    uint payment = payments[msg.sender];
  > |    payments[msg.sender] = 0;
    |    if (!msg.sender.send(payment)) {
    |      payments[msg.sender] = payment;
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'MarketManager':
    |    payments[msg.sender] = 0;
    |    if (!msg.sender.send(payment)) {
  > |      payments[msg.sender] = payment;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'MarketManager':
    |pragma solidity ^0.4.21;
    |
  > |/// @author Luis Freitas, Miguel Amaral (https://repop.world)
    |contract REPOPAccessControl {
    |    address public ceoAddress;
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'MarketManager':
    |        require(_newCEO != address(0));
    |
  > |        ceoAddress = _newCEO;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(38)

[33mWarning[0m for UnrestrictedWrite in contract 'MarketManager':
    |        require(_newCFO != address(0));
    |
  > |        cfoAddress = _newCFO;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(44)

[33mWarning[0m for UnrestrictedWrite in contract 'MarketManager':
    |        require(_newCOO != address(0));
    |
  > |        cooAddress = _newCOO;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(50)

[33mWarning[0m for UnrestrictedWrite in contract 'MarketManager':
    |
    |    function pause() external onlyCLevel whenNotPaused {
  > |        paused = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(64)

[33mWarning[0m for UnrestrictedWrite in contract 'MarketManager':
    |    function unpause() public onlyCEO whenPaused {
    |
  > |        paused = false;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(69)

[33mWarning[0m for UnrestrictedWrite in contract 'MarketManager':
    |
    |  function asyncSend(address dest, uint amount) internal {
  > |    payments[dest] += amount;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'MarketManager':
    |        require(candidateAddress != address(0));
    |        ERC721 candidateContract = ERC721(candidateAddress);
  > |        nonFungibleContract = candidateContract;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(731)

[33mWarning[0m for UnrestrictedWrite in contract 'MarketManager':
    |        require(_addressNotNull(newOwner));
    |        require(msg.value == sellingPrice);
  > |        sale.seller = 0;
    |        nonFungibleContract.transfer(newOwner,_popId);
    |        _repopTransaction(popOwner, msg.value, marginPerThousandForDevelopers);
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(793)

[33mWarning[0m for UnrestrictedWrite in contract 'MarketManager':
    |        uint256 saleID = _itemID2saleID[_popId];
    |        if(saleID == 0) {
  > |            uint256  index = _salesArray.push(Sale(_sellingPrice,seller)) - 1;
    |            _itemID2saleID[_popId] = index;
    |            _saleID2itemID[index] = _popId;
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(812)

[33mWarning[0m for UnrestrictedWrite in contract 'MarketManager':
    |        if(saleID == 0) {
    |            uint256  index = _salesArray.push(Sale(_sellingPrice,seller)) - 1;
  > |            _itemID2saleID[_popId] = index;
    |            _saleID2itemID[index] = _popId;
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(813)

[33mWarning[0m for UnrestrictedWrite in contract 'MarketManager':
    |            uint256  index = _salesArray.push(Sale(_sellingPrice,seller)) - 1;
    |            _itemID2saleID[_popId] = index;
  > |            _saleID2itemID[index] = _popId;
    |        } else {
    |            Sale storage sale = _salesArray[saleID];
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(814)

[33mWarning[0m for UnrestrictedWrite in contract 'MarketManager':
    |            Sale storage sale = _salesArray[saleID];
    |            require(sale.seller == 0);
  > |            sale.seller = seller;
    |            sale.sellingPrice = _sellingPrice;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(818)

[33mWarning[0m for UnrestrictedWrite in contract 'MarketManager':
    |            require(sale.seller == 0);
    |            sale.seller = seller;
  > |            sale.sellingPrice = _sellingPrice;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(819)

[33mWarning[0m for UnrestrictedWrite in contract 'MarketManager':
    |        Sale storage sale = _salesArray[_itemID2saleID[_popId]];
    |        require(sale.seller == msg.sender);
  > |        sale.seller = 0;
    |        nonFungibleContract.transfer(msg.sender,_popId);
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(826)

[33mWarning[0m for UnrestrictedWrite in contract 'MarketManager':
    |      Sale storage sale = _salesArray[_itemID2saleID[_popId]];
    |      require(sale.seller == msg.sender);
  > |      sale.sellingPrice = _newSellingValue;
    |      emit PopChangedPrice(msg.sender, _popId, _newSellingValue);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(837)

[33mWarning[0m for LockedEther in contract 'MetadataContract':
    |}
    |
  > |contract MetadataContract{
    |
    |    function getMetadata(uint256 _tokenId) public view returns (bytes32[4] buffer, uint256 count) {
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(138)

[33mWarning[0m for MissingInputValidation in contract 'MetadataContract':
    |}
    |
  > |contract MetadataContract{
    |
    |    function getMetadata(uint256 _tokenId) public view returns (bytes32[4] buffer, uint256 count) {
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(138)

[33mWarning[0m for MissingInputValidation in contract 'MetadataContract':
    |    }
    |
  > |      function _memcpy(uint _dest, uint _src, uint _len) private view {
    |
    |        for(; _len >= 32; _len -= 32) {
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(146)

[33mWarning[0m for MissingInputValidation in contract 'MetadataContract':
    |    }
    |
  > |    function _toString(bytes32[4] _rawBytes, uint256 _stringLength) private view returns (string) {
    |        var outputString = new string(_stringLength);
    |        uint256 outputPtr;
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(164)

[33mWarning[0m for MissingInputValidation in contract 'MetadataContract':
    |    }
    |
  > |    function uintToBytes(uint v) public view returns (bytes32 ret) {
    |        if (v == 0) {
    |            ret = '0';
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(187)

[31mViolation[0m for DAOConstantGas in contract 'MoneyManager':
    |    uint payment = payments[msg.sender];
    |    payments[msg.sender] = 0;
  > |    if (!msg.sender.send(payment)) {
    |      payments[msg.sender] = payment;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(83)

[33mWarning[0m for DAOConstantGas in contract 'MoneyManager':
    |    function withdraw(uint amount) external onlyCFO {
    |        require(amount < address(this).balance);
  > |        cfoAddress.transfer(amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(470)

[33mWarning[0m for LockedEther in contract 'MoneyManager':
    |}
    |
  > |contract MoneyManager is PullPayment, CarefulTransfer, REPOPAccessControl {
    |
    |    function _repopTransaction(address _receiver, uint256 _amountWei, uint256 _marginPerThousandForDevelopers) internal {
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(457)

[31mViolation[0m for MissingInputValidation in contract 'MoneyManager':
    |
    |contract PullPayment {
  > |  mapping(address => uint) public payments;
    |
    |  function asyncSend(address dest, uint amount) internal {
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(74)

[33mWarning[0m for MissingInputValidation in contract 'MoneyManager':
    |/// @author Luis Freitas, Miguel Amaral (https://repop.world)
    |contract REPOPAccessControl {
  > |    address public ceoAddress;
    |    address public cfoAddress;
    |    address public cooAddress;
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'MoneyManager':
    |contract REPOPAccessControl {
    |    address public ceoAddress;
  > |    address public cfoAddress;
    |    address public cooAddress;
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'MoneyManager':
    |    address public ceoAddress;
    |    address public cfoAddress;
  > |    address public cooAddress;
    |
    |    bool public paused = false;
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'MoneyManager':
    |    address public cooAddress;
    |
  > |    bool public paused = false;
    |
    |    modifier onlyCEO() {
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'MoneyManager':
    |    }
    |
  > |    function setCEO(address _newCEO) external onlyCEO {
    |        require(_newCEO != address(0));
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(35)

[33mWarning[0m for MissingInputValidation in contract 'MoneyManager':
    |    }
    |
  > |    function setCFO(address _newCFO) external onlyCEO {
    |        require(_newCFO != address(0));
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(41)

[33mWarning[0m for MissingInputValidation in contract 'MoneyManager':
    |    }
    |
  > |    function setCOO(address _newCOO) external onlyCEO {
    |        require(_newCOO != address(0));
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(47)

[33mWarning[0m for MissingInputValidation in contract 'MoneyManager':
    |    }
    |
  > |    function pause() external onlyCLevel whenNotPaused {
    |        paused = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(63)

[33mWarning[0m for MissingInputValidation in contract 'MoneyManager':
    |    }
    |
  > |    function unpause() public onlyCEO whenPaused {
    |
    |        paused = false;
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(67)

[33mWarning[0m for MissingInputValidation in contract 'MoneyManager':
    |  }
    |
  > |  function withdrawPayments() external {
    |    uint payment = payments[msg.sender];
    |    payments[msg.sender] = 0;
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(80)

[33mWarning[0m for MissingInputValidation in contract 'MoneyManager':
    |    }
    |
  > |    function withdraw(uint amount) external onlyCFO {
    |        require(amount < address(this).balance);
    |        cfoAddress.transfer(amount);
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(468)

[33mWarning[0m for MissingInputValidation in contract 'MoneyManager':
    |    }
    |
  > |    function getBalance() public view returns (uint256 balance) {
    |        return address(this).balance;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(473)

[33mWarning[0m for TODAmount in contract 'MoneyManager':
    |    function withdraw(uint amount) external onlyCFO {
    |        require(amount < address(this).balance);
  > |        cfoAddress.transfer(amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(470)

[31mViolation[0m for TODReceiver in contract 'MoneyManager':
    |    function withdraw(uint amount) external onlyCFO {
    |        require(amount < address(this).balance);
  > |        cfoAddress.transfer(amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(470)

[33mWarning[0m for TODReceiver in contract 'MoneyManager':
    |    uint payment = payments[msg.sender];
    |    payments[msg.sender] = 0;
  > |    if (!msg.sender.send(payment)) {
    |      payments[msg.sender] = payment;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(83)

[33mWarning[0m for UnhandledException in contract 'MoneyManager':
    |    uint payment = payments[msg.sender];
    |    payments[msg.sender] = 0;
  > |    if (!msg.sender.send(payment)) {
    |      payments[msg.sender] = payment;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(83)

[33mWarning[0m for UnhandledException in contract 'MoneyManager':
    |    function withdraw(uint amount) external onlyCFO {
    |        require(amount < address(this).balance);
  > |        cfoAddress.transfer(amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(470)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MoneyManager':
    |    function withdraw(uint amount) external onlyCFO {
    |        require(amount < address(this).balance);
  > |        cfoAddress.transfer(amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(470)

[33mWarning[0m for UnrestrictedWrite in contract 'MoneyManager':
    |  function withdrawPayments() external {
    |    uint payment = payments[msg.sender];
  > |    payments[msg.sender] = 0;
    |    if (!msg.sender.send(payment)) {
    |      payments[msg.sender] = payment;
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'MoneyManager':
    |    payments[msg.sender] = 0;
    |    if (!msg.sender.send(payment)) {
  > |      payments[msg.sender] = payment;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'MoneyManager':
    |        require(_newCEO != address(0));
    |
  > |        ceoAddress = _newCEO;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(38)

[33mWarning[0m for UnrestrictedWrite in contract 'MoneyManager':
    |        require(_newCFO != address(0));
    |
  > |        cfoAddress = _newCFO;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(44)

[33mWarning[0m for UnrestrictedWrite in contract 'MoneyManager':
    |        require(_newCOO != address(0));
    |
  > |        cooAddress = _newCOO;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(50)

[33mWarning[0m for UnrestrictedWrite in contract 'MoneyManager':
    |
    |    function pause() external onlyCLevel whenNotPaused {
  > |        paused = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(64)

[33mWarning[0m for UnrestrictedWrite in contract 'MoneyManager':
    |    function unpause() public onlyCEO whenPaused {
    |
  > |        paused = false;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(69)

[31mViolation[0m for DAOConstantGas in contract 'PullPayment':
    |    uint payment = payments[msg.sender];
    |    payments[msg.sender] = 0;
  > |    if (!msg.sender.send(payment)) {
    |      payments[msg.sender] = payment;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(83)

[33mWarning[0m for LockedEther in contract 'PullPayment':
    |}
    |
  > |contract PullPayment {
    |  mapping(address => uint) public payments;
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(73)

[31mViolation[0m for MissingInputValidation in contract 'PullPayment':
    |
    |contract PullPayment {
  > |  mapping(address => uint) public payments;
    |
    |  function asyncSend(address dest, uint amount) internal {
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(74)

[33mWarning[0m for MissingInputValidation in contract 'PullPayment':
    |  }
    |
  > |  function withdrawPayments() external {
    |    uint payment = payments[msg.sender];
    |    payments[msg.sender] = 0;
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(80)

[33mWarning[0m for TODReceiver in contract 'PullPayment':
    |    uint payment = payments[msg.sender];
    |    payments[msg.sender] = 0;
  > |    if (!msg.sender.send(payment)) {
    |      payments[msg.sender] = payment;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(83)

[33mWarning[0m for UnhandledException in contract 'PullPayment':
    |    uint payment = payments[msg.sender];
    |    payments[msg.sender] = 0;
  > |    if (!msg.sender.send(payment)) {
    |      payments[msg.sender] = payment;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'PullPayment':
    |  function withdrawPayments() external {
    |    uint payment = payments[msg.sender];
  > |    payments[msg.sender] = 0;
    |    if (!msg.sender.send(payment)) {
    |      payments[msg.sender] = payment;
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'PullPayment':
    |    payments[msg.sender] = 0;
    |    if (!msg.sender.send(payment)) {
  > |      payments[msg.sender] = payment;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(84)

[33mWarning[0m for LockedEther in contract 'REPOPAccessControl':
    |
    |/// @author Luis Freitas, Miguel Amaral (https://repop.world)
  > |contract REPOPAccessControl {
    |    address public ceoAddress;
    |    address public cfoAddress;
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'REPOPAccessControl':
    |/// @author Luis Freitas, Miguel Amaral (https://repop.world)
    |contract REPOPAccessControl {
  > |    address public ceoAddress;
    |    address public cfoAddress;
    |    address public cooAddress;
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'REPOPAccessControl':
    |contract REPOPAccessControl {
    |    address public ceoAddress;
  > |    address public cfoAddress;
    |    address public cooAddress;
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'REPOPAccessControl':
    |    address public ceoAddress;
    |    address public cfoAddress;
  > |    address public cooAddress;
    |
    |    bool public paused = false;
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'REPOPAccessControl':
    |    address public cooAddress;
    |
  > |    bool public paused = false;
    |
    |    modifier onlyCEO() {
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'REPOPAccessControl':
    |    }
    |
  > |    function setCEO(address _newCEO) external onlyCEO {
    |        require(_newCEO != address(0));
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(35)

[33mWarning[0m for MissingInputValidation in contract 'REPOPAccessControl':
    |    }
    |
  > |    function setCFO(address _newCFO) external onlyCEO {
    |        require(_newCFO != address(0));
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(41)

[33mWarning[0m for MissingInputValidation in contract 'REPOPAccessControl':
    |    }
    |
  > |    function setCOO(address _newCOO) external onlyCEO {
    |        require(_newCOO != address(0));
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(47)

[33mWarning[0m for MissingInputValidation in contract 'REPOPAccessControl':
    |    }
    |
  > |    function pause() external onlyCLevel whenNotPaused {
    |        paused = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(63)

[33mWarning[0m for MissingInputValidation in contract 'REPOPAccessControl':
    |    }
    |
  > |    function unpause() public onlyCEO whenPaused {
    |
    |        paused = false;
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'REPOPAccessControl':
    |        require(_newCEO != address(0));
    |
  > |        ceoAddress = _newCEO;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(38)

[33mWarning[0m for UnrestrictedWrite in contract 'REPOPAccessControl':
    |        require(_newCFO != address(0));
    |
  > |        cfoAddress = _newCFO;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(44)

[33mWarning[0m for UnrestrictedWrite in contract 'REPOPAccessControl':
    |        require(_newCOO != address(0));
    |
  > |        cooAddress = _newCOO;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(50)

[33mWarning[0m for UnrestrictedWrite in contract 'REPOPAccessControl':
    |
    |    function pause() external onlyCLevel whenNotPaused {
  > |        paused = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(64)

[33mWarning[0m for UnrestrictedWrite in contract 'REPOPAccessControl':
    |    function unpause() public onlyCEO whenPaused {
    |
  > |        paused = false;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(69)

[33mWarning[0m for DAO in contract 'REPOPCore':
    |
    |    function _ownerOfPopInAnyPlatform(uint _popId) internal view returns (bool) {
  > |      return ownerOf(_popId) == msg.sender || genesMarket.sellerOf(_popId) == msg.sender || marketManager.sellerOf(_popId) == msg.sender;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(1169)

[33mWarning[0m for DAO in contract 'REPOPCore':
    |
    |    function getOwnershipForCloning(uint _popId) internal view returns (bool) {
  > |        return ownerOf(_popId) == msg.sender || genesMarket.sellerOf(_popId) == msg.sender;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(1173)

[31mViolation[0m for DAOConstantGas in contract 'REPOPCore':
    |    uint payment = payments[msg.sender];
    |    payments[msg.sender] = 0;
  > |    if (!msg.sender.send(payment)) {
    |      payments[msg.sender] = payment;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(83)

[33mWarning[0m for DAOConstantGas in contract 'REPOPCore':
    |    function withdraw(uint amount) external onlyCFO {
    |        require(amount < address(this).balance);
  > |        cfoAddress.transfer(amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(470)

[33mWarning[0m for LockedEther in contract 'REPOPCore':
    |}
    |
  > |contract REPOPCore is REPOPERC721, MoneyManager{
    |    uint256 public refresherFee = 0.01 ether;
    |    AuctionManager public auctionManager;
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(1045)

[31mViolation[0m for MissingInputValidation in contract 'REPOPCore':
    |
    |contract PullPayment {
  > |  mapping(address => uint) public payments;
    |
    |  function asyncSend(address dest, uint amount) internal {
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(74)

[31mViolation[0m for MissingInputValidation in contract 'REPOPCore':
    |    }
    |
  > |    function approve(address _to, uint256 _tokenId) public whenNotPaused{
    |
    |        require(_owns(msg.sender, _tokenId));
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(243)

[31mViolation[0m for MissingInputValidation in contract 'REPOPCore':
    |    }
    |
  > |    function balanceOf(address _owner) public view returns (uint256 balance){
    |        return ownershipTokenCount[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(252)

[31mViolation[0m for MissingInputValidation in contract 'REPOPCore':
    |    }
    |
  > |    function ownerOf(uint256 _tokenId) public view returns (address owner) {
    |        owner = popIndexToOwner[_tokenId];
    |        require(owner != address(0));
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(260)

[31mViolation[0m for MissingInputValidation in contract 'REPOPCore':
    |    }
    |
  > |    function takeOwnership(uint256 _tokenId) public {
    |        address currentOwner = ownerOf(_tokenId);
    |        address newOwner = msg.sender;
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(265)

[31mViolation[0m for MissingInputValidation in contract 'REPOPCore':
    |    }
    |
  > |    function tokensOfOwner(address _owner) external view returns(uint256[] ownerTokens) {
    |        uint256 tokenCount = balanceOf(_owner);
    |        if (tokenCount == 0) {
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(276)

[31mViolation[0m for MissingInputValidation in contract 'REPOPCore':
    |    }
    |
  > |    function transfer(address _to, uint256 _tokenId ) public whenNotPaused{
    |      require(_owns(msg.sender, _tokenId));
    |      require(_addressNotNull(_to));
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(301)

[31mViolation[0m for MissingInputValidation in contract 'REPOPCore':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _tokenId) public whenNotPaused{
    |        require(_owns(_from, _tokenId));
    |        require(_approved(msg.sender, _tokenId));
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(310)

[31mViolation[0m for MissingInputValidation in contract 'REPOPCore':
    |    Pop[] public pops;
    |
  > |    mapping (uint256 => address) public popIndexToOwner;
    |    mapping (address => uint256) public ownershipTokenCount;
    |    mapping (uint256 => address) public popIndexToApproved;
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(374)

[31mViolation[0m for MissingInputValidation in contract 'REPOPCore':
    |
    |    mapping (uint256 => address) public popIndexToOwner;
  > |    mapping (address => uint256) public ownershipTokenCount;
    |    mapping (uint256 => address) public popIndexToApproved;
    |    mapping (uint256 => uint256) public genesToTokenId;
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(375)

[31mViolation[0m for MissingInputValidation in contract 'REPOPCore':
    |    mapping (uint256 => address) public popIndexToOwner;
    |    mapping (address => uint256) public ownershipTokenCount;
  > |    mapping (uint256 => address) public popIndexToApproved;
    |    mapping (uint256 => uint256) public genesToTokenId;
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(376)

[31mViolation[0m for MissingInputValidation in contract 'REPOPCore':
    |    mapping (address => uint256) public ownershipTokenCount;
    |    mapping (uint256 => address) public popIndexToApproved;
  > |    mapping (uint256 => uint256) public genesToTokenId;
    |
    |    function getPop(uint256 _popId) public view
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(377)

[31mViolation[0m for MissingInputValidation in contract 'REPOPCore':
    |    }
    |
  > |    function setPopNameOriginal(uint256 popId, string newName) external onlyCLevel{
    |      Pop storage pop = pops[popId];
    |      require(pop.generation == 0);
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(430)

[31mViolation[0m for MissingInputValidation in contract 'REPOPCore':
    |    }
    |
  > |    function setDNA(uint256 popId, uint256 newDna) external onlyCLevel{
    |      require(_owns(msg.sender, popId));
    |      Pop storage pop = pops[popId];
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(437)

[31mViolation[0m for MissingInputValidation in contract 'REPOPCore':
    |    }
    |
  > |    function createNewAuction(uint256 _itemForAuctionID, uint256 _auctionDurationSeconds) public onlyCLevel{
    |        approve(address(auctionManager),_itemForAuctionID);
    |        auctionManager.createAuction(_itemForAuctionID,_auctionDurationSeconds,msg.sender);
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(1068)

[31mViolation[0m for MissingInputValidation in contract 'REPOPCore':
    |    }
    |
  > |    function sellPop(uint256 _popId, uint256 _price) public {
    |        Pop storage pop = pops[_popId];
    |        require(pop.cooldownEndTimestamp <= now);
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(1117)

[31mViolation[0m for MissingInputValidation in contract 'REPOPCore':
    |    }
    |
  > |    function sellGenes(uint256 _popId, uint256 _price) public {
    |        require(_popId > 0);
    |        approve(address(genesMarket),_popId);
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(1125)

[31mViolation[0m for MissingInputValidation in contract 'REPOPCore':
    |    }
    |
  > |    function getOwnerInAnyPlatformById(uint256 popId) public view returns (address){
    |      if(ownerOf(popId) == address(marketManager)){
    |        return marketManager.sellerOf(popId);
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(1132)

[31mViolation[0m for MissingInputValidation in contract 'REPOPCore':
    |    }
    |
  > |    function setPopName(uint256 popId, string newName) external {
    |      require(_ownerOfPopInAnyPlatform(popId));
    |      Pop storage pop = pops[popId];
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(1148)

[31mViolation[0m for MissingInputValidation in contract 'REPOPCore':
    |    }
    |
  > |    function removeCooldown(uint256 popId)
    |      external
    |      payable
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(1157)

[31mViolation[0m for MissingInputValidation in contract 'REPOPCore':
    |    }
    |
  > |    function changeRefresherFee(uint256 _newFee) public onlyCLevel{
    |        refresherFee = _newFee;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(1176)

[33mWarning[0m for MissingInputValidation in contract 'REPOPCore':
    |/// @author Luis Freitas, Miguel Amaral (https://repop.world)
    |contract REPOPAccessControl {
  > |    address public ceoAddress;
    |    address public cfoAddress;
    |    address public cooAddress;
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'REPOPCore':
    |contract REPOPAccessControl {
    |    address public ceoAddress;
  > |    address public cfoAddress;
    |    address public cooAddress;
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'REPOPCore':
    |    address public ceoAddress;
    |    address public cfoAddress;
  > |    address public cooAddress;
    |
    |    bool public paused = false;
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'REPOPCore':
    |    address public cooAddress;
    |
  > |    bool public paused = false;
    |
    |    modifier onlyCEO() {
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'REPOPCore':
    |    }
    |
  > |    function setCEO(address _newCEO) external onlyCEO {
    |        require(_newCEO != address(0));
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(35)

[33mWarning[0m for MissingInputValidation in contract 'REPOPCore':
    |    }
    |
  > |    function setCFO(address _newCFO) external onlyCEO {
    |        require(_newCFO != address(0));
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(41)

[33mWarning[0m for MissingInputValidation in contract 'REPOPCore':
    |    }
    |
  > |    function setCOO(address _newCOO) external onlyCEO {
    |        require(_newCOO != address(0));
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(47)

[33mWarning[0m for MissingInputValidation in contract 'REPOPCore':
    |    }
    |
  > |    function pause() external onlyCLevel whenNotPaused {
    |        paused = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(63)

[33mWarning[0m for MissingInputValidation in contract 'REPOPCore':
    |    }
    |
  > |    function unpause() public onlyCEO whenPaused {
    |
    |        paused = false;
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(67)

[33mWarning[0m for MissingInputValidation in contract 'REPOPCore':
    |  }
    |
  > |  function withdrawPayments() external {
    |    uint payment = payments[msg.sender];
    |    payments[msg.sender] = 0;
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(80)

[33mWarning[0m for MissingInputValidation in contract 'REPOPCore':
    |contract REPOPERC721 is ERC721, REPOPAccessControl{
    |
  > |  MetadataContract public metadataContract;
    |
    |  bytes4 constant InterfaceSignature_ERC165 =
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(206)

[33mWarning[0m for MissingInputValidation in contract 'REPOPCore':
    |      bytes4(keccak256('tokenMetadata(uint256)'));
    |
  > |    function tokenMetadata(uint256 _tokenId) public view returns (string infoUrl) {
    |      require(metadataContract != address(0));
    |      require(_tokenId >= 0 && _tokenId <= pops.length);
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(223)

[33mWarning[0m for MissingInputValidation in contract 'REPOPCore':
    |    }
    |
  > |    function setMetadataContractAddress(address contractAddress) public onlyCEO{
    |      require(contractAddress != address(0));
    |      metadataContract = MetadataContract(contractAddress);
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(230)

[33mWarning[0m for MissingInputValidation in contract 'REPOPCore':
    |    }
    |
  > |    string public constant name = "REPOP WORLD";
    |    string public constant symbol = "POP";
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(235)

[33mWarning[0m for MissingInputValidation in contract 'REPOPCore':
    |
    |    string public constant name = "REPOP WORLD";
  > |    string public constant symbol = "POP";
    |
    |    function supportsInterface(bytes4 _interfaceID) external view returns (bool)
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(236)

[33mWarning[0m for MissingInputValidation in contract 'REPOPCore':
    |    string public constant symbol = "POP";
    |
  > |    function supportsInterface(bytes4 _interfaceID) external view returns (bool)
    |    {
    |        return ((_interfaceID == InterfaceSignature_ERC165) || (_interfaceID == InterfaceSignature_ERC721));
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(238)

[33mWarning[0m for MissingInputValidation in contract 'REPOPCore':
    |    }
    |
  > |    function implementsERC721() public pure returns (bool){
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(256)

[33mWarning[0m for MissingInputValidation in contract 'REPOPCore':
    |    }
    |
  > |    function totalSupply() public view returns (uint256 total) {
    |        return pops.length;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(297)

[33mWarning[0m for MissingInputValidation in contract 'REPOPCore':
    |
    |
  > |    function _addressNotNull(address _to) private pure returns (bool){
    |        return _to != address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(321)

[33mWarning[0m for MissingInputValidation in contract 'REPOPCore':
    |    }
    |
  > |    function _approved(address _to, uint256 _tokenId) private view returns (bool) {
    |        return popIndexToApproved[_tokenId] == _to;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(325)

[33mWarning[0m for MissingInputValidation in contract 'REPOPCore':
    |    }
    |
  > |    function _owns(address claimant, uint256 _tokenId) private view returns (bool) {
    |        return claimant == popIndexToOwner[_tokenId];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(329)

[33mWarning[0m for MissingInputValidation in contract 'REPOPCore':
    |    }
    |
  > |    function _transfer(address _to, uint256 _tokenID) internal {
    |        address owner = popIndexToOwner[_tokenID];
    |        ownershipTokenCount[owner] = ownershipTokenCount[owner] - 1 ;
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(333)

[33mWarning[0m for MissingInputValidation in contract 'REPOPCore':
    |    }
    |
  > |    uint32[14] public cooldowns = [
    |        uint32(10 minutes),
    |        uint32(20 minutes),
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(355)

[33mWarning[0m for MissingInputValidation in contract 'REPOPCore':
    |    ];
    |
  > |    Pop[] public pops;
    |
    |    mapping (uint256 => address) public popIndexToOwner;
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(372)

[33mWarning[0m for MissingInputValidation in contract 'REPOPCore':
    |    mapping (uint256 => uint256) public genesToTokenId;
    |
  > |    function getPop(uint256 _popId) public view
    |                    returns (
    |                                bool isReady,
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(379)

[33mWarning[0m for MissingInputValidation in contract 'REPOPCore':
    |    }
    |
  > |    function _triggerCooldown(Pop storage _pop) internal {
    |        _pop.cooldownEndTimestamp = uint64(now + cooldowns[_pop.cooldownIndex]);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(416)

[33mWarning[0m for MissingInputValidation in contract 'REPOPCore':
    |    }
    |
  > |    function stringToBytes32(string memory source) internal pure returns (bytes32 result) {
    |        bytes memory tempEmptyStringTest = bytes(source);
    |        if (tempEmptyStringTest.length == 0) {
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(420)

[33mWarning[0m for MissingInputValidation in contract 'REPOPCore':
    |    }
    |
  > |    function withdraw(uint amount) external onlyCFO {
    |        require(amount < address(this).balance);
    |        cfoAddress.transfer(amount);
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(468)

[33mWarning[0m for MissingInputValidation in contract 'REPOPCore':
    |    }
    |
  > |    function getBalance() public view returns (uint256 balance) {
    |        return address(this).balance;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(473)

[33mWarning[0m for MissingInputValidation in contract 'REPOPCore':
    |}
    |
  > |contract REPOPCore is REPOPERC721, MoneyManager{
    |    uint256 public refresherFee = 0.01 ether;
    |    AuctionManager public auctionManager;
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(1045)

[33mWarning[0m for MissingInputValidation in contract 'REPOPCore':
    |
    |contract REPOPCore is REPOPERC721, MoneyManager{
  > |    uint256 public refresherFee = 0.01 ether;
    |    AuctionManager public auctionManager;
    |    MarketManager public marketManager;
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(1046)

[33mWarning[0m for MissingInputValidation in contract 'REPOPCore':
    |contract REPOPCore is REPOPERC721, MoneyManager{
    |    uint256 public refresherFee = 0.01 ether;
  > |    AuctionManager public auctionManager;
    |    MarketManager public marketManager;
    |    GenesMarket public genesMarket;
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(1047)

[33mWarning[0m for MissingInputValidation in contract 'REPOPCore':
    |    uint256 public refresherFee = 0.01 ether;
    |    AuctionManager public auctionManager;
  > |    MarketManager public marketManager;
    |    GenesMarket public genesMarket;
    |    CloningInterface public geneScience;
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(1048)

[33mWarning[0m for MissingInputValidation in contract 'REPOPCore':
    |    AuctionManager public auctionManager;
    |    MarketManager public marketManager;
  > |    GenesMarket public genesMarket;
    |    CloningInterface public geneScience;
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(1049)

[33mWarning[0m for MissingInputValidation in contract 'REPOPCore':
    |    MarketManager public marketManager;
    |    GenesMarket public genesMarket;
  > |    CloningInterface public geneScience;
    |
    |    event CloneWithTwoPops(address creator, uint256 cloneId, uint256 aParentId, uint256 bParentId);
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(1050)

[33mWarning[0m for MissingInputValidation in contract 'REPOPCore':
    |    }
    |
  > |    function setAuctionManagerAddress(address _address) external onlyCEO {
    |        AuctionManager candidateContract = AuctionManager(_address);
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(1073)

[33mWarning[0m for MissingInputValidation in contract 'REPOPCore':
    |    }
    |
  > |    function getAuctionManagerAddress() public view returns (address) {
    |        return address(auctionManager);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(1083)

[33mWarning[0m for MissingInputValidation in contract 'REPOPCore':
    |    }
    |
  > |    function setMarketManagerAddress(address _address) external onlyCEO {
    |        MarketManager candidateContract = MarketManager(_address);
    |        require(candidateContract.isMarketManager());
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(1087)

[33mWarning[0m for MissingInputValidation in contract 'REPOPCore':
    |    }
    |
  > |    function getMarketManagerAddress() public view returns (address) {
    |        return address(marketManager);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(1093)

[33mWarning[0m for MissingInputValidation in contract 'REPOPCore':
    |    }
    |
  > |    function setGeneScienceAddress(address _address) external onlyCEO {
    |      CloningInterface candidateContract = CloningInterface(_address);
    |      require(candidateContract.isGeneScience());
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(1097)

[33mWarning[0m for MissingInputValidation in contract 'REPOPCore':
    |    }
    |
  > |    function getGeneScienceAddress() public view returns (address) {
    |        return address(geneScience);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(1103)

[33mWarning[0m for MissingInputValidation in contract 'REPOPCore':
    |    }
    |
  > |    function setGenesMarketAddress(address _address) external onlyCEO {
    |      GenesMarket candidateContract = GenesMarket(_address);
    |      require(candidateContract.isGenesMarket());
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(1107)

[33mWarning[0m for MissingInputValidation in contract 'REPOPCore':
    |    }
    |
  > |    function getGenesMarketAddress() public view returns (address) {
    |        return address(genesMarket);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(1113)

[33mWarning[0m for MissingInputValidation in contract 'REPOPCore':
    |      }
    |
  > |    function _ownerOfPopInAnyPlatform(uint _popId) internal view returns (bool) {
    |      return ownerOf(_popId) == msg.sender || genesMarket.sellerOf(_popId) == msg.sender || marketManager.sellerOf(_popId) == msg.sender;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(1168)

[33mWarning[0m for MissingInputValidation in contract 'REPOPCore':
    |    }
    |
  > |    function getOwnershipForCloning(uint _popId) internal view returns (bool) {
    |        return ownerOf(_popId) == msg.sender || genesMarket.sellerOf(_popId) == msg.sender;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(1172)

[33mWarning[0m for TODAmount in contract 'REPOPCore':
    |    function withdraw(uint amount) external onlyCFO {
    |        require(amount < address(this).balance);
  > |        cfoAddress.transfer(amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(470)

[31mViolation[0m for TODReceiver in contract 'REPOPCore':
    |    function withdraw(uint amount) external onlyCFO {
    |        require(amount < address(this).balance);
  > |        cfoAddress.transfer(amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(470)

[33mWarning[0m for TODReceiver in contract 'REPOPCore':
    |    uint payment = payments[msg.sender];
    |    payments[msg.sender] = 0;
  > |    if (!msg.sender.send(payment)) {
    |      payments[msg.sender] = payment;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(83)

[33mWarning[0m for UnhandledException in contract 'REPOPCore':
    |    uint payment = payments[msg.sender];
    |    payments[msg.sender] = 0;
  > |    if (!msg.sender.send(payment)) {
    |      payments[msg.sender] = payment;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(83)

[33mWarning[0m for UnhandledException in contract 'REPOPCore':
    |      require(_tokenId >= 0 && _tokenId <= pops.length);
    |
  > |      return metadataContract.getMetadataUrl(_tokenId);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(227)

[33mWarning[0m for UnhandledException in contract 'REPOPCore':
    |    function withdraw(uint amount) external onlyCFO {
    |        require(amount < address(this).balance);
  > |        cfoAddress.transfer(amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(470)

[33mWarning[0m for UnhandledException in contract 'REPOPCore':
    |    function createNewAuction(uint256 _itemForAuctionID, uint256 _auctionDurationSeconds) public onlyCLevel{
    |        approve(address(auctionManager),_itemForAuctionID);
  > |        auctionManager.createAuction(_itemForAuctionID,_auctionDurationSeconds,msg.sender);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(1070)

[33mWarning[0m for UnhandledException in contract 'REPOPCore':
    |
    |
  > |        require(candidateContract.isAuctionManager());
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(1077)

[33mWarning[0m for UnhandledException in contract 'REPOPCore':
    |    function setMarketManagerAddress(address _address) external onlyCEO {
    |        MarketManager candidateContract = MarketManager(_address);
  > |        require(candidateContract.isMarketManager());
    |        marketManager = candidateContract;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(1089)

[33mWarning[0m for UnhandledException in contract 'REPOPCore':
    |    function setGeneScienceAddress(address _address) external onlyCEO {
    |      CloningInterface candidateContract = CloningInterface(_address);
  > |      require(candidateContract.isGeneScience());
    |      geneScience = candidateContract;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(1099)

[33mWarning[0m for UnhandledException in contract 'REPOPCore':
    |    function setGenesMarketAddress(address _address) external onlyCEO {
    |      GenesMarket candidateContract = GenesMarket(_address);
  > |      require(candidateContract.isGenesMarket());
    |      genesMarket = candidateContract;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(1109)

[33mWarning[0m for UnhandledException in contract 'REPOPCore':
    |        require(pop.cooldownEndTimestamp <= now);
    |        approve(address(marketManager),_popId);
  > |        marketManager.sellPop(msg.sender,_popId,_price);
    |        emit SellingPop(msg.sender, _popId, _price);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(1121)

[33mWarning[0m for UnhandledException in contract 'REPOPCore':
    |        require(_popId > 0);
    |        approve(address(genesMarket),_popId);
  > |        genesMarket.startSellingGenes(_popId,_price,msg.sender);
    |        emit SellingGenes(msg.sender, _popId, _price);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(1128)

[33mWarning[0m for UnhandledException in contract 'REPOPCore':
    |    function getOwnerInAnyPlatformById(uint256 popId) public view returns (address){
    |      if(ownerOf(popId) == address(marketManager)){
  > |        return marketManager.sellerOf(popId);
    |      }
    |      else if(ownerOf(popId) == address(genesMarket)){
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(1134)

[33mWarning[0m for UnhandledException in contract 'REPOPCore':
    |      }
    |      else if(ownerOf(popId) == address(genesMarket)){
  > |        return genesMarket.sellerOf(popId);
    |      }
    |      else if(ownerOf(popId) == address(auctionManager)){
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(1137)

[33mWarning[0m for UnhandledException in contract 'REPOPCore':
    |
    |    function _ownerOfPopInAnyPlatform(uint _popId) internal view returns (bool) {
  > |      return ownerOf(_popId) == msg.sender || genesMarket.sellerOf(_popId) == msg.sender || marketManager.sellerOf(_popId) == msg.sender;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(1169)

[33mWarning[0m for UnhandledException in contract 'REPOPCore':
    |
    |    function getOwnershipForCloning(uint _popId) internal view returns (bool) {
  > |        return ownerOf(_popId) == msg.sender || genesMarket.sellerOf(_popId) == msg.sender;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(1173)

[33mWarning[0m for UnhandledException in contract 'REPOPCore':
    |        }
    |
  > |        uint256 childGenes = geneScience.mixGenes(aParent.genes, bParent.genes);
    |
    |        _triggerCooldown(aParent);
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(1207)

[33mWarning[0m for UnhandledException in contract 'REPOPCore':
    |          }
    |
  > |          genesMarket.useBottle(msg.sender, _bParentId_bottle);
    |
    |          uint256 childGenes = geneScience.mixGenes(aParent.genes, bParent.genes);
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(1246)

[33mWarning[0m for UnhandledException in contract 'REPOPCore':
    |          genesMarket.useBottle(msg.sender, _bParentId_bottle);
    |
  > |          uint256 childGenes = geneScience.mixGenes(aParent.genes, bParent.genes);
    |
    |          _triggerCooldown(aParent);
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(1248)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'REPOPCore':
    |      require(_tokenId >= 0 && _tokenId <= pops.length);
    |
  > |      return metadataContract.getMetadataUrl(_tokenId);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(227)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'REPOPCore':
    |    function createNewAuction(uint256 _itemForAuctionID, uint256 _auctionDurationSeconds) public onlyCLevel{
    |        approve(address(auctionManager),_itemForAuctionID);
  > |        auctionManager.createAuction(_itemForAuctionID,_auctionDurationSeconds,msg.sender);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(1070)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'REPOPCore':
    |
    |
  > |        require(candidateContract.isAuctionManager());
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(1077)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'REPOPCore':
    |    function setMarketManagerAddress(address _address) external onlyCEO {
    |        MarketManager candidateContract = MarketManager(_address);
  > |        require(candidateContract.isMarketManager());
    |        marketManager = candidateContract;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(1089)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'REPOPCore':
    |    function setGeneScienceAddress(address _address) external onlyCEO {
    |      CloningInterface candidateContract = CloningInterface(_address);
  > |      require(candidateContract.isGeneScience());
    |      geneScience = candidateContract;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(1099)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'REPOPCore':
    |    function setGenesMarketAddress(address _address) external onlyCEO {
    |      GenesMarket candidateContract = GenesMarket(_address);
  > |      require(candidateContract.isGenesMarket());
    |      genesMarket = candidateContract;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(1109)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'REPOPCore':
    |        require(pop.cooldownEndTimestamp <= now);
    |        approve(address(marketManager),_popId);
  > |        marketManager.sellPop(msg.sender,_popId,_price);
    |        emit SellingPop(msg.sender, _popId, _price);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(1121)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'REPOPCore':
    |        require(_popId > 0);
    |        approve(address(genesMarket),_popId);
  > |        genesMarket.startSellingGenes(_popId,_price,msg.sender);
    |        emit SellingGenes(msg.sender, _popId, _price);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(1128)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'REPOPCore':
    |    function getOwnerInAnyPlatformById(uint256 popId) public view returns (address){
    |      if(ownerOf(popId) == address(marketManager)){
  > |        return marketManager.sellerOf(popId);
    |      }
    |      else if(ownerOf(popId) == address(genesMarket)){
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(1134)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'REPOPCore':
    |      }
    |      else if(ownerOf(popId) == address(genesMarket)){
  > |        return genesMarket.sellerOf(popId);
    |      }
    |      else if(ownerOf(popId) == address(auctionManager)){
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(1137)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'REPOPCore':
    |
    |    function _ownerOfPopInAnyPlatform(uint _popId) internal view returns (bool) {
  > |      return ownerOf(_popId) == msg.sender || genesMarket.sellerOf(_popId) == msg.sender || marketManager.sellerOf(_popId) == msg.sender;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(1169)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'REPOPCore':
    |
    |    function getOwnershipForCloning(uint _popId) internal view returns (bool) {
  > |        return ownerOf(_popId) == msg.sender || genesMarket.sellerOf(_popId) == msg.sender;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(1173)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'REPOPCore':
    |        }
    |
  > |        uint256 childGenes = geneScience.mixGenes(aParent.genes, bParent.genes);
    |
    |        _triggerCooldown(aParent);
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(1207)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'REPOPCore':
    |          }
    |
  > |          genesMarket.useBottle(msg.sender, _bParentId_bottle);
    |
    |          uint256 childGenes = geneScience.mixGenes(aParent.genes, bParent.genes);
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(1246)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'REPOPCore':
    |          genesMarket.useBottle(msg.sender, _bParentId_bottle);
    |
  > |          uint256 childGenes = geneScience.mixGenes(aParent.genes, bParent.genes);
    |
    |          _triggerCooldown(aParent);
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(1248)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'REPOPCore':
    |    function withdraw(uint amount) external onlyCFO {
    |        require(amount < address(this).balance);
  > |        cfoAddress.transfer(amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(470)

[31mViolation[0m for UnrestrictedWrite in contract 'REPOPCore':
    |pragma solidity ^0.4.21;
    |
  > |/// @author Luis Freitas, Miguel Amaral (https://repop.world)
    |contract REPOPAccessControl {
    |    address public ceoAddress;
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(3)

[31mViolation[0m for UnrestrictedWrite in contract 'REPOPCore':
    |    function _transfer(address _to, uint256 _tokenID) internal {
    |        address owner = popIndexToOwner[_tokenID];
  > |        ownershipTokenCount[owner] = ownershipTokenCount[owner] - 1 ;
    |        popIndexToApproved[_tokenID] = 0;
    |        popIndexToOwner[_tokenID] = _to;
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(335)

[31mViolation[0m for UnrestrictedWrite in contract 'REPOPCore':
    |        address owner = popIndexToOwner[_tokenID];
    |        ownershipTokenCount[owner] = ownershipTokenCount[owner] - 1 ;
  > |        popIndexToApproved[_tokenID] = 0;
    |        popIndexToOwner[_tokenID] = _to;
    |        ownershipTokenCount[_to] = ownershipTokenCount[_to] + 1;
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(336)

[31mViolation[0m for UnrestrictedWrite in contract 'REPOPCore':
    |        ownershipTokenCount[owner] = ownershipTokenCount[owner] - 1 ;
    |        popIndexToApproved[_tokenID] = 0;
  > |        popIndexToOwner[_tokenID] = _to;
    |        ownershipTokenCount[_to] = ownershipTokenCount[_to] + 1;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(337)

[31mViolation[0m for UnrestrictedWrite in contract 'REPOPCore':
    |        popIndexToApproved[_tokenID] = 0;
    |        popIndexToOwner[_tokenID] = _to;
  > |        ownershipTokenCount[_to] = ownershipTokenCount[_to] + 1;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(338)

[31mViolation[0m for UnrestrictedWrite in contract 'REPOPCore':
    |    function createNewPop(uint256 genes, string popName) public onlyCLevel whenNotPaused{
    |        bytes32 name32 = stringToBytes32(popName);
  > |        uint256 index = pops.push(Pop(genes,uint64(now),1,0,0,name32,0,0)) -1;
    |
    |        emit Birth(msg.sender,index,0,0,genes);
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(406)

[31mViolation[0m for UnrestrictedWrite in contract 'REPOPCore':
    |        emit Birth(msg.sender,index,0,0,genes);
    |
  > |        genesToTokenId[genes] = index;
    |
    |        popIndexToOwner[index] = msg.sender;
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(410)

[31mViolation[0m for UnrestrictedWrite in contract 'REPOPCore':
    |        genesToTokenId[genes] = index;
    |
  > |        popIndexToOwner[index] = msg.sender;
    |        ownershipTokenCount[msg.sender] = ownershipTokenCount[msg.sender]+1;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(412)

[31mViolation[0m for UnrestrictedWrite in contract 'REPOPCore':
    |
    |        popIndexToOwner[index] = msg.sender;
  > |        ownershipTokenCount[msg.sender] = ownershipTokenCount[msg.sender]+1;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(413)

[31mViolation[0m for UnrestrictedWrite in contract 'REPOPCore':
    |
    |    function _triggerCooldown(Pop storage _pop) internal {
  > |        _pop.cooldownEndTimestamp = uint64(now + cooldowns[_pop.cooldownIndex]);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(417)

[31mViolation[0m for UnrestrictedWrite in contract 'REPOPCore':
    |      require(pop.generation == 0);
    |      bytes32 name32 = stringToBytes32(newName);
  > |      pop.popName = name32;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(434)

[31mViolation[0m for UnrestrictedWrite in contract 'REPOPCore':
    |        uint256 index = pops.push(Pop(childGenes,uint64(now), 1, uint32(_aParentId), uint32(_bParentId), 0, cooldownIndex, parentGen + 1)) -1;
    |
  > |        popIndexToOwner[index] = msg.sender;
    |        ownershipTokenCount[msg.sender] = ownershipTokenCount[msg.sender]+1;
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(1214)

[31mViolation[0m for UnrestrictedWrite in contract 'REPOPCore':
    |
    |        popIndexToOwner[index] = msg.sender;
  > |        ownershipTokenCount[msg.sender] = ownershipTokenCount[msg.sender]+1;
    |
    |        emit CloneWithTwoPops(msg.sender, index, _aParentId, _bParentId);
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(1215)

[31mViolation[0m for UnrestrictedWrite in contract 'REPOPCore':
    |          uint256 index = pops.push(Pop(childGenes,uint64(now), 1, uint32(_aParentId), uint32(_bParentId_bottle), 0, cooldownIndex, parentGen + 1)) -1;
    |
  > |          popIndexToOwner[index] = msg.sender;
    |          ownershipTokenCount[msg.sender] = ownershipTokenCount[msg.sender]+1;
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(1254)

[31mViolation[0m for UnrestrictedWrite in contract 'REPOPCore':
    |
    |          popIndexToOwner[index] = msg.sender;
  > |          ownershipTokenCount[msg.sender] = ownershipTokenCount[msg.sender]+1;
    |
    |          emit CloneWithPopAndBottle(msg.sender, index, _aParentId, _bParentId_bottle);
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(1255)

[33mWarning[0m for UnrestrictedWrite in contract 'REPOPCore':
    |  function withdrawPayments() external {
    |    uint payment = payments[msg.sender];
  > |    payments[msg.sender] = 0;
    |    if (!msg.sender.send(payment)) {
    |      payments[msg.sender] = payment;
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'REPOPCore':
    |    payments[msg.sender] = 0;
    |    if (!msg.sender.send(payment)) {
  > |      payments[msg.sender] = payment;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'REPOPCore':
    |        popIndexToApproved[_tokenID] = 0;
    |        popIndexToOwner[_tokenID] = _to;
  > |        ownershipTokenCount[_to] = ownershipTokenCount[_to] + 1;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(338)

[33mWarning[0m for UnrestrictedWrite in contract 'REPOPCore':
    |        require(msg.value >= refresherFee);
    |        Pop storage pop = pops[popId];
  > |        pop.cooldownEndTimestamp = 1;
    |        emit CooldownRemoval(popId, msg.sender, refresherFee);
    |      }
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(1164)

[33mWarning[0m for UnrestrictedWrite in contract 'REPOPCore':
    |        require(_newCEO != address(0));
    |
  > |        ceoAddress = _newCEO;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(38)

[33mWarning[0m for UnrestrictedWrite in contract 'REPOPCore':
    |        require(_newCFO != address(0));
    |
  > |        cfoAddress = _newCFO;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(44)

[33mWarning[0m for UnrestrictedWrite in contract 'REPOPCore':
    |        require(_newCOO != address(0));
    |
  > |        cooAddress = _newCOO;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(50)

[33mWarning[0m for UnrestrictedWrite in contract 'REPOPCore':
    |
    |    function pause() external onlyCLevel whenNotPaused {
  > |        paused = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(64)

[33mWarning[0m for UnrestrictedWrite in contract 'REPOPCore':
    |    function unpause() public onlyCEO whenPaused {
    |
  > |        paused = false;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(69)

[33mWarning[0m for UnrestrictedWrite in contract 'REPOPCore':
    |    function setMetadataContractAddress(address contractAddress) public onlyCEO{
    |      require(contractAddress != address(0));
  > |      metadataContract = MetadataContract(contractAddress);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(232)

[33mWarning[0m for UnrestrictedWrite in contract 'REPOPCore':
    |    function _transfer(address _to, uint256 _tokenID) internal {
    |        address owner = popIndexToOwner[_tokenID];
  > |        ownershipTokenCount[owner] = ownershipTokenCount[owner] - 1 ;
    |        popIndexToApproved[_tokenID] = 0;
    |        popIndexToOwner[_tokenID] = _to;
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(335)

[33mWarning[0m for UnrestrictedWrite in contract 'REPOPCore':
    |        address owner = popIndexToOwner[_tokenID];
    |        ownershipTokenCount[owner] = ownershipTokenCount[owner] - 1 ;
  > |        popIndexToApproved[_tokenID] = 0;
    |        popIndexToOwner[_tokenID] = _to;
    |        ownershipTokenCount[_to] = ownershipTokenCount[_to] + 1;
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(336)

[33mWarning[0m for UnrestrictedWrite in contract 'REPOPCore':
    |        ownershipTokenCount[owner] = ownershipTokenCount[owner] - 1 ;
    |        popIndexToApproved[_tokenID] = 0;
  > |        popIndexToOwner[_tokenID] = _to;
    |        ownershipTokenCount[_to] = ownershipTokenCount[_to] + 1;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(337)

[33mWarning[0m for UnrestrictedWrite in contract 'REPOPCore':
    |        popIndexToApproved[_tokenID] = 0;
    |        popIndexToOwner[_tokenID] = _to;
  > |        ownershipTokenCount[_to] = ownershipTokenCount[_to] + 1;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(338)

[33mWarning[0m for UnrestrictedWrite in contract 'REPOPCore':
    |      require(_owns(msg.sender, popId));
    |      Pop storage pop = pops[popId];
  > |      pop.genes = newDna;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(440)

[33mWarning[0m for UnrestrictedWrite in contract 'REPOPCore':
    |
    |
  > |        auctionManager = candidateContract;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(1080)

[33mWarning[0m for UnrestrictedWrite in contract 'REPOPCore':
    |        MarketManager candidateContract = MarketManager(_address);
    |        require(candidateContract.isMarketManager());
  > |        marketManager = candidateContract;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(1090)

[33mWarning[0m for UnrestrictedWrite in contract 'REPOPCore':
    |      CloningInterface candidateContract = CloningInterface(_address);
    |      require(candidateContract.isGeneScience());
  > |      geneScience = candidateContract;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(1100)

[33mWarning[0m for UnrestrictedWrite in contract 'REPOPCore':
    |      GenesMarket candidateContract = GenesMarket(_address);
    |      require(candidateContract.isGenesMarket());
  > |      genesMarket = candidateContract;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(1110)

[33mWarning[0m for UnrestrictedWrite in contract 'REPOPCore':
    |
    |    function changeRefresherFee(uint256 _newFee) public onlyCLevel{
  > |        refresherFee = _newFee;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(1177)

[33mWarning[0m for LockedEther in contract 'REPOPERC721':
    |
    |/// @author Luis Freitas, Miguel Amaral (https://repop.world)
  > |contract REPOPERC721 is ERC721, REPOPAccessControl{
    |
    |  MetadataContract public metadataContract;
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(204)

[31mViolation[0m for MissingInputValidation in contract 'REPOPERC721':
    |    }
    |
  > |    function approve(address _to, uint256 _tokenId) public whenNotPaused{
    |
    |        require(_owns(msg.sender, _tokenId));
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(243)

[31mViolation[0m for MissingInputValidation in contract 'REPOPERC721':
    |    }
    |
  > |    function balanceOf(address _owner) public view returns (uint256 balance){
    |        return ownershipTokenCount[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(252)

[31mViolation[0m for MissingInputValidation in contract 'REPOPERC721':
    |    }
    |
  > |    function ownerOf(uint256 _tokenId) public view returns (address owner) {
    |        owner = popIndexToOwner[_tokenId];
    |        require(owner != address(0));
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(260)

[31mViolation[0m for MissingInputValidation in contract 'REPOPERC721':
    |    }
    |
  > |    function takeOwnership(uint256 _tokenId) public {
    |        address currentOwner = ownerOf(_tokenId);
    |        address newOwner = msg.sender;
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(265)

[31mViolation[0m for MissingInputValidation in contract 'REPOPERC721':
    |    }
    |
  > |    function tokensOfOwner(address _owner) external view returns(uint256[] ownerTokens) {
    |        uint256 tokenCount = balanceOf(_owner);
    |        if (tokenCount == 0) {
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(276)

[31mViolation[0m for MissingInputValidation in contract 'REPOPERC721':
    |    }
    |
  > |    function transfer(address _to, uint256 _tokenId ) public whenNotPaused{
    |      require(_owns(msg.sender, _tokenId));
    |      require(_addressNotNull(_to));
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(301)

[31mViolation[0m for MissingInputValidation in contract 'REPOPERC721':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _tokenId) public whenNotPaused{
    |        require(_owns(_from, _tokenId));
    |        require(_approved(msg.sender, _tokenId));
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(310)

[31mViolation[0m for MissingInputValidation in contract 'REPOPERC721':
    |    Pop[] public pops;
    |
  > |    mapping (uint256 => address) public popIndexToOwner;
    |    mapping (address => uint256) public ownershipTokenCount;
    |    mapping (uint256 => address) public popIndexToApproved;
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(374)

[31mViolation[0m for MissingInputValidation in contract 'REPOPERC721':
    |
    |    mapping (uint256 => address) public popIndexToOwner;
  > |    mapping (address => uint256) public ownershipTokenCount;
    |    mapping (uint256 => address) public popIndexToApproved;
    |    mapping (uint256 => uint256) public genesToTokenId;
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(375)

[31mViolation[0m for MissingInputValidation in contract 'REPOPERC721':
    |    mapping (uint256 => address) public popIndexToOwner;
    |    mapping (address => uint256) public ownershipTokenCount;
  > |    mapping (uint256 => address) public popIndexToApproved;
    |    mapping (uint256 => uint256) public genesToTokenId;
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(376)

[31mViolation[0m for MissingInputValidation in contract 'REPOPERC721':
    |    mapping (address => uint256) public ownershipTokenCount;
    |    mapping (uint256 => address) public popIndexToApproved;
  > |    mapping (uint256 => uint256) public genesToTokenId;
    |
    |    function getPop(uint256 _popId) public view
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(377)

[31mViolation[0m for MissingInputValidation in contract 'REPOPERC721':
    |    }
    |
  > |    function setPopNameOriginal(uint256 popId, string newName) external onlyCLevel{
    |      Pop storage pop = pops[popId];
    |      require(pop.generation == 0);
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(430)

[31mViolation[0m for MissingInputValidation in contract 'REPOPERC721':
    |    }
    |
  > |    function setDNA(uint256 popId, uint256 newDna) external onlyCLevel{
    |      require(_owns(msg.sender, popId));
    |      Pop storage pop = pops[popId];
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(437)

[33mWarning[0m for MissingInputValidation in contract 'REPOPERC721':
    |/// @author Luis Freitas, Miguel Amaral (https://repop.world)
    |contract REPOPAccessControl {
  > |    address public ceoAddress;
    |    address public cfoAddress;
    |    address public cooAddress;
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'REPOPERC721':
    |contract REPOPAccessControl {
    |    address public ceoAddress;
  > |    address public cfoAddress;
    |    address public cooAddress;
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'REPOPERC721':
    |    address public ceoAddress;
    |    address public cfoAddress;
  > |    address public cooAddress;
    |
    |    bool public paused = false;
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'REPOPERC721':
    |    address public cooAddress;
    |
  > |    bool public paused = false;
    |
    |    modifier onlyCEO() {
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'REPOPERC721':
    |    }
    |
  > |    function setCEO(address _newCEO) external onlyCEO {
    |        require(_newCEO != address(0));
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(35)

[33mWarning[0m for MissingInputValidation in contract 'REPOPERC721':
    |    }
    |
  > |    function setCFO(address _newCFO) external onlyCEO {
    |        require(_newCFO != address(0));
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(41)

[33mWarning[0m for MissingInputValidation in contract 'REPOPERC721':
    |    }
    |
  > |    function setCOO(address _newCOO) external onlyCEO {
    |        require(_newCOO != address(0));
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(47)

[33mWarning[0m for MissingInputValidation in contract 'REPOPERC721':
    |    }
    |
  > |    function pause() external onlyCLevel whenNotPaused {
    |        paused = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(63)

[33mWarning[0m for MissingInputValidation in contract 'REPOPERC721':
    |    }
    |
  > |    function unpause() public onlyCEO whenPaused {
    |
    |        paused = false;
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(67)

[33mWarning[0m for MissingInputValidation in contract 'REPOPERC721':
    |
    |/// @author Luis Freitas, Miguel Amaral (https://repop.world)
  > |contract REPOPERC721 is ERC721, REPOPAccessControl{
    |
    |  MetadataContract public metadataContract;
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(204)

[33mWarning[0m for MissingInputValidation in contract 'REPOPERC721':
    |contract REPOPERC721 is ERC721, REPOPAccessControl{
    |
  > |  MetadataContract public metadataContract;
    |
    |  bytes4 constant InterfaceSignature_ERC165 =
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(206)

[33mWarning[0m for MissingInputValidation in contract 'REPOPERC721':
    |      bytes4(keccak256('tokenMetadata(uint256)'));
    |
  > |    function tokenMetadata(uint256 _tokenId) public view returns (string infoUrl) {
    |      require(metadataContract != address(0));
    |      require(_tokenId >= 0 && _tokenId <= pops.length);
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(223)

[33mWarning[0m for MissingInputValidation in contract 'REPOPERC721':
    |    }
    |
  > |    function setMetadataContractAddress(address contractAddress) public onlyCEO{
    |      require(contractAddress != address(0));
    |      metadataContract = MetadataContract(contractAddress);
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(230)

[33mWarning[0m for MissingInputValidation in contract 'REPOPERC721':
    |    }
    |
  > |    string public constant name = "REPOP WORLD";
    |    string public constant symbol = "POP";
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(235)

[33mWarning[0m for MissingInputValidation in contract 'REPOPERC721':
    |
    |    string public constant name = "REPOP WORLD";
  > |    string public constant symbol = "POP";
    |
    |    function supportsInterface(bytes4 _interfaceID) external view returns (bool)
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(236)

[33mWarning[0m for MissingInputValidation in contract 'REPOPERC721':
    |    string public constant symbol = "POP";
    |
  > |    function supportsInterface(bytes4 _interfaceID) external view returns (bool)
    |    {
    |        return ((_interfaceID == InterfaceSignature_ERC165) || (_interfaceID == InterfaceSignature_ERC721));
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(238)

[33mWarning[0m for MissingInputValidation in contract 'REPOPERC721':
    |    }
    |
  > |    function implementsERC721() public pure returns (bool){
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(256)

[33mWarning[0m for MissingInputValidation in contract 'REPOPERC721':
    |    }
    |
  > |    function totalSupply() public view returns (uint256 total) {
    |        return pops.length;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(297)

[33mWarning[0m for MissingInputValidation in contract 'REPOPERC721':
    |
    |
  > |    function _addressNotNull(address _to) private pure returns (bool){
    |        return _to != address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(321)

[33mWarning[0m for MissingInputValidation in contract 'REPOPERC721':
    |    }
    |
  > |    function _approved(address _to, uint256 _tokenId) private view returns (bool) {
    |        return popIndexToApproved[_tokenId] == _to;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(325)

[33mWarning[0m for MissingInputValidation in contract 'REPOPERC721':
    |    }
    |
  > |    function _owns(address claimant, uint256 _tokenId) private view returns (bool) {
    |        return claimant == popIndexToOwner[_tokenId];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(329)

[33mWarning[0m for MissingInputValidation in contract 'REPOPERC721':
    |    }
    |
  > |    function _transfer(address _to, uint256 _tokenID) internal {
    |        address owner = popIndexToOwner[_tokenID];
    |        ownershipTokenCount[owner] = ownershipTokenCount[owner] - 1 ;
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(333)

[33mWarning[0m for MissingInputValidation in contract 'REPOPERC721':
    |    }
    |
  > |    uint32[14] public cooldowns = [
    |        uint32(10 minutes),
    |        uint32(20 minutes),
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(355)

[33mWarning[0m for MissingInputValidation in contract 'REPOPERC721':
    |    ];
    |
  > |    Pop[] public pops;
    |
    |    mapping (uint256 => address) public popIndexToOwner;
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(372)

[33mWarning[0m for MissingInputValidation in contract 'REPOPERC721':
    |    mapping (uint256 => uint256) public genesToTokenId;
    |
  > |    function getPop(uint256 _popId) public view
    |                    returns (
    |                                bool isReady,
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(379)

[33mWarning[0m for MissingInputValidation in contract 'REPOPERC721':
    |    }
    |
  > |    function stringToBytes32(string memory source) internal pure returns (bytes32 result) {
    |        bytes memory tempEmptyStringTest = bytes(source);
    |        if (tempEmptyStringTest.length == 0) {
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(420)

[33mWarning[0m for UnhandledException in contract 'REPOPERC721':
    |      require(_tokenId >= 0 && _tokenId <= pops.length);
    |
  > |      return metadataContract.getMetadataUrl(_tokenId);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(227)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'REPOPERC721':
    |      require(_tokenId >= 0 && _tokenId <= pops.length);
    |
  > |      return metadataContract.getMetadataUrl(_tokenId);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(227)

[31mViolation[0m for UnrestrictedWrite in contract 'REPOPERC721':
    |pragma solidity ^0.4.21;
    |
  > |/// @author Luis Freitas, Miguel Amaral (https://repop.world)
    |contract REPOPAccessControl {
    |    address public ceoAddress;
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(3)

[31mViolation[0m for UnrestrictedWrite in contract 'REPOPERC721':
    |    function _transfer(address _to, uint256 _tokenID) internal {
    |        address owner = popIndexToOwner[_tokenID];
  > |        ownershipTokenCount[owner] = ownershipTokenCount[owner] - 1 ;
    |        popIndexToApproved[_tokenID] = 0;
    |        popIndexToOwner[_tokenID] = _to;
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(335)

[31mViolation[0m for UnrestrictedWrite in contract 'REPOPERC721':
    |        address owner = popIndexToOwner[_tokenID];
    |        ownershipTokenCount[owner] = ownershipTokenCount[owner] - 1 ;
  > |        popIndexToApproved[_tokenID] = 0;
    |        popIndexToOwner[_tokenID] = _to;
    |        ownershipTokenCount[_to] = ownershipTokenCount[_to] + 1;
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(336)

[31mViolation[0m for UnrestrictedWrite in contract 'REPOPERC721':
    |        ownershipTokenCount[owner] = ownershipTokenCount[owner] - 1 ;
    |        popIndexToApproved[_tokenID] = 0;
  > |        popIndexToOwner[_tokenID] = _to;
    |        ownershipTokenCount[_to] = ownershipTokenCount[_to] + 1;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(337)

[31mViolation[0m for UnrestrictedWrite in contract 'REPOPERC721':
    |        popIndexToApproved[_tokenID] = 0;
    |        popIndexToOwner[_tokenID] = _to;
  > |        ownershipTokenCount[_to] = ownershipTokenCount[_to] + 1;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(338)

[31mViolation[0m for UnrestrictedWrite in contract 'REPOPERC721':
    |    function createNewPop(uint256 genes, string popName) public onlyCLevel whenNotPaused{
    |        bytes32 name32 = stringToBytes32(popName);
  > |        uint256 index = pops.push(Pop(genes,uint64(now),1,0,0,name32,0,0)) -1;
    |
    |        emit Birth(msg.sender,index,0,0,genes);
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(406)

[31mViolation[0m for UnrestrictedWrite in contract 'REPOPERC721':
    |        emit Birth(msg.sender,index,0,0,genes);
    |
  > |        genesToTokenId[genes] = index;
    |
    |        popIndexToOwner[index] = msg.sender;
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(410)

[31mViolation[0m for UnrestrictedWrite in contract 'REPOPERC721':
    |        genesToTokenId[genes] = index;
    |
  > |        popIndexToOwner[index] = msg.sender;
    |        ownershipTokenCount[msg.sender] = ownershipTokenCount[msg.sender]+1;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(412)

[31mViolation[0m for UnrestrictedWrite in contract 'REPOPERC721':
    |
    |        popIndexToOwner[index] = msg.sender;
  > |        ownershipTokenCount[msg.sender] = ownershipTokenCount[msg.sender]+1;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(413)

[31mViolation[0m for UnrestrictedWrite in contract 'REPOPERC721':
    |      require(pop.generation == 0);
    |      bytes32 name32 = stringToBytes32(newName);
  > |      pop.popName = name32;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(434)

[33mWarning[0m for UnrestrictedWrite in contract 'REPOPERC721':
    |        popIndexToApproved[_tokenID] = 0;
    |        popIndexToOwner[_tokenID] = _to;
  > |        ownershipTokenCount[_to] = ownershipTokenCount[_to] + 1;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(338)

[33mWarning[0m for UnrestrictedWrite in contract 'REPOPERC721':
    |        require(_newCEO != address(0));
    |
  > |        ceoAddress = _newCEO;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(38)

[33mWarning[0m for UnrestrictedWrite in contract 'REPOPERC721':
    |        require(_newCFO != address(0));
    |
  > |        cfoAddress = _newCFO;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(44)

[33mWarning[0m for UnrestrictedWrite in contract 'REPOPERC721':
    |        require(_newCOO != address(0));
    |
  > |        cooAddress = _newCOO;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(50)

[33mWarning[0m for UnrestrictedWrite in contract 'REPOPERC721':
    |
    |    function pause() external onlyCLevel whenNotPaused {
  > |        paused = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(64)

[33mWarning[0m for UnrestrictedWrite in contract 'REPOPERC721':
    |    function unpause() public onlyCEO whenPaused {
    |
  > |        paused = false;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(69)

[33mWarning[0m for UnrestrictedWrite in contract 'REPOPERC721':
    |    function setMetadataContractAddress(address contractAddress) public onlyCEO{
    |      require(contractAddress != address(0));
  > |      metadataContract = MetadataContract(contractAddress);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(232)

[33mWarning[0m for UnrestrictedWrite in contract 'REPOPERC721':
    |        require(_owns(msg.sender, _tokenId));
    |
  > |        popIndexToApproved[_tokenId] = _to;
    |
    |        emit Approval(msg.sender, _to, _tokenId);
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(247)

[33mWarning[0m for UnrestrictedWrite in contract 'REPOPERC721':
    |    function _transfer(address _to, uint256 _tokenID) internal {
    |        address owner = popIndexToOwner[_tokenID];
  > |        ownershipTokenCount[owner] = ownershipTokenCount[owner] - 1 ;
    |        popIndexToApproved[_tokenID] = 0;
    |        popIndexToOwner[_tokenID] = _to;
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(335)

[33mWarning[0m for UnrestrictedWrite in contract 'REPOPERC721':
    |        address owner = popIndexToOwner[_tokenID];
    |        ownershipTokenCount[owner] = ownershipTokenCount[owner] - 1 ;
  > |        popIndexToApproved[_tokenID] = 0;
    |        popIndexToOwner[_tokenID] = _to;
    |        ownershipTokenCount[_to] = ownershipTokenCount[_to] + 1;
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(336)

[33mWarning[0m for UnrestrictedWrite in contract 'REPOPERC721':
    |        ownershipTokenCount[owner] = ownershipTokenCount[owner] - 1 ;
    |        popIndexToApproved[_tokenID] = 0;
  > |        popIndexToOwner[_tokenID] = _to;
    |        ownershipTokenCount[_to] = ownershipTokenCount[_to] + 1;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(337)

[33mWarning[0m for UnrestrictedWrite in contract 'REPOPERC721':
    |        popIndexToApproved[_tokenID] = 0;
    |        popIndexToOwner[_tokenID] = _to;
  > |        ownershipTokenCount[_to] = ownershipTokenCount[_to] + 1;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(338)

[33mWarning[0m for UnrestrictedWrite in contract 'REPOPERC721':
    |      require(_owns(msg.sender, popId));
    |      Pop storage pop = pops[popId];
  > |      pop.genes = newDna;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(440)

[33mWarning[0m for LockedEther in contract 'RoundMoneyNicely':
    |}
    |
  > |library RoundMoneyNicely {
    |    function roundMoneyDownNicely(uint _rawValueWei) internal pure
    |    returns (uint nicerValueWei) {
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(478)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |}
    |
  > |library SafeMath {
    |
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
  at /home/jiaming/mavs_srcs/contract@0x5d7517c2dce1b9e358dda98bee2cf11a866ec9a2.sol(108)


