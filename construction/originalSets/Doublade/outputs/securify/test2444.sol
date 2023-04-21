Processing contract: /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol:BdpBase
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol:BdpBaseData
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol:BdpCalculator
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol:BdpContracts
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol:BdpDataStorage
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol:BdpOwnership
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol:BdpOwnershipStorage
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol:BdpPriceStorage
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for LockedEther in contract 'BdpBase':
    |}
    |
  > |contract BdpBase is BdpBaseData {
    |
    |	modifier onlyOwner() {
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(50)

[31mViolation[0m for UnrestrictedWrite in contract 'BdpBase':
    |}
    |
  > |contract BdpBase is BdpBaseData {
    |
    |	modifier onlyOwner() {
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(50)

[33mWarning[0m for UnrestrictedWrite in contract 'BdpBase':
    |	function setOwner(address _newOwner) external onlyOwner {
    |		require(_newOwner != address(0));
  > |		ownerAddress = _newOwner;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'BdpBase':
    |	function setManager(address _newManager) external onlyOwner {
    |		require(_newManager != address(0));
  > |		managerAddress = _newManager;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'BdpBase':
    |
    |	function pause() external onlyAuthorized {
  > |		paused = true;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'BdpBase':
    |
    |	function unpause() external onlyOwner {
  > |		paused = false;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(94)

[33mWarning[0m for UnrestrictedWrite in contract 'BdpBase':
    |
    |	function setSetupComplete() external onlyOwner {
  > |		setupComplete = true;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(98)

[33mWarning[0m for LockedEther in contract 'BdpBaseData':
    |pragma solidity ^0.4.19;
    |
  > |contract BdpBaseData {
    |
    |	address public ownerAddress;
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(3)

[33mWarning[0m for MissingInputValidation in contract 'BdpBaseData':
    |contract BdpBaseData {
    |
  > |	address public ownerAddress;
    |
    |	address public managerAddress;
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'BdpBaseData':
    |	address public ownerAddress;
    |
  > |	address public managerAddress;
    |
    |	address[16] public contracts;
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'BdpBaseData':
    |	address public managerAddress;
    |
  > |	address[16] public contracts;
    |
    |	bool public paused = false;
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'BdpBaseData':
    |	address[16] public contracts;
    |
  > |	bool public paused = false;
    |
    |	bool public setupComplete = false;
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'BdpBaseData':
    |	bool public paused = false;
    |
  > |	bool public setupComplete = false;
    |
    |	bytes8 public version;
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(13)

[33mWarning[0m for MissingInputValidation in contract 'BdpBaseData':
    |	bool public setupComplete = false;
    |
  > |	bytes8 public version;
    |
    |}
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(15)

[33mWarning[0m for LockedEther in contract 'BdpCalculator':
    |}
    |
  > |library BdpCalculator {
    |
    |	using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(327)

[33mWarning[0m for UnhandledException in contract 'BdpCalculator':
    |
    |	function calculateArea(address[16] _contracts, uint256 _regionId) view public returns (uint256 _area, uint256 _width, uint256 _height) {
  > |		var (x1, y1, x2, y2) = BdpDataStorage(BdpContracts.getBdpDataStorage(_contracts)).getRegionCoordinates(_regionId);
    |		_width = x2 - x1 + 1;
    |		_height = y2 - y1 + 1;
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(332)

[33mWarning[0m for UnhandledException in contract 'BdpCalculator':
    |
    |	function countPurchasedPixels(address[16] _contracts) view public returns (uint256 _count) {
  > |		var lastRegionId = BdpDataStorage(BdpContracts.getBdpDataStorage(_contracts)).getLastRegionId();
    |		for (uint256 i = 0; i <= lastRegionId; i++) {
    |			if(BdpDataStorage(BdpContracts.getBdpDataStorage(_contracts)).getRegionPurchasedAt(i) > 0) { // region is purchased
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(339)

[33mWarning[0m for UnhandledException in contract 'BdpCalculator':
    |		var lastRegionId = BdpDataStorage(BdpContracts.getBdpDataStorage(_contracts)).getLastRegionId();
    |		for (uint256 i = 0; i <= lastRegionId; i++) {
  > |			if(BdpDataStorage(BdpContracts.getBdpDataStorage(_contracts)).getRegionPurchasedAt(i) > 0) { // region is purchased
    |				var (area,,) = calculateArea(_contracts, i);
    |				_count += area;
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(341)

[33mWarning[0m for UnhandledException in contract 'BdpCalculator':
    |
    |	function calculateMarketPixelPrice(address[16] _contracts, uint _pixelsSold) view public returns(uint) {
  > |		var pricePointsLength = BdpPriceStorage(BdpContracts.getBdpPriceStorage(_contracts)).getPricePointsLength();
    |		uint mod = _pixelsSold % (1000000 / (pricePointsLength - 1));
    |		uint div = _pixelsSold * (pricePointsLength - 1) / 1000000;
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(353)

[33mWarning[0m for UnhandledException in contract 'BdpCalculator':
    |		uint mod = _pixelsSold % (1000000 / (pricePointsLength - 1));
    |		uint div = _pixelsSold * (pricePointsLength - 1) / 1000000;
  > |		var divPoint = BdpPriceStorage(BdpContracts.getBdpPriceStorage(_contracts)).getPricePoint(div);
    |		if(mod == 0) return divPoint;
    |		return divPoint + mod * (BdpPriceStorage(BdpContracts.getBdpPriceStorage(_contracts)).getPricePoint(div+1) - divPoint) * (pricePointsLength - 1) / 1000000;
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(356)

[33mWarning[0m for UnhandledException in contract 'BdpCalculator':
    |		var divPoint = BdpPriceStorage(BdpContracts.getBdpPriceStorage(_contracts)).getPricePoint(div);
    |		if(mod == 0) return divPoint;
  > |		return divPoint + mod * (BdpPriceStorage(BdpContracts.getBdpPriceStorage(_contracts)).getPricePoint(div+1) - divPoint) * (pricePointsLength - 1) / 1000000;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(358)

[33mWarning[0m for UnhandledException in contract 'BdpCalculator':
    |	  */
    |	function calculateRegionInitialSalePixelPrice(address[16] _contracts, uint256 _regionId) view public returns (uint256) {
  > |		require(BdpDataStorage(BdpContracts.getBdpDataStorage(_contracts)).getRegionUpdatedAt(_regionId) > 0); // region exists
    |		var purchasedPixels = countPurchasedPixels(_contracts);
    |		var (area,,) = calculateArea(_contracts, _regionId);
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(368)

[33mWarning[0m for UnhandledException in contract 'BdpCalculator':
    |	  */
    |	function calculateRegionSalePixelPrice(address[16] _contracts, uint256 _regionId) view public returns (uint256) {
  > |		var pixelPrice = BdpDataStorage(BdpContracts.getBdpDataStorage(_contracts)).getRegionCurrentPixelPrice(_regionId);
    |		if(pixelPrice > 0) {
    |			return pixelPrice * 3;
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(377)

[33mWarning[0m for UnhandledException in contract 'BdpCalculator':
    |	  */
    |	function calculateSetupAllowedUntil(address[16] _contracts, uint256 _regionId) view public returns (uint256) {
  > |		var (updatedAt, purchasedAt) = BdpDataStorage(BdpContracts.getBdpDataStorage(_contracts)).getRegionUpdatedAtPurchasedAt(_regionId);
    |		if(updatedAt != purchasedAt) {
    |			return 0;
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(388)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BdpCalculator':
    |
    |	function calculateArea(address[16] _contracts, uint256 _regionId) view public returns (uint256 _area, uint256 _width, uint256 _height) {
  > |		var (x1, y1, x2, y2) = BdpDataStorage(BdpContracts.getBdpDataStorage(_contracts)).getRegionCoordinates(_regionId);
    |		_width = x2 - x1 + 1;
    |		_height = y2 - y1 + 1;
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(332)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BdpCalculator':
    |
    |	function countPurchasedPixels(address[16] _contracts) view public returns (uint256 _count) {
  > |		var lastRegionId = BdpDataStorage(BdpContracts.getBdpDataStorage(_contracts)).getLastRegionId();
    |		for (uint256 i = 0; i <= lastRegionId; i++) {
    |			if(BdpDataStorage(BdpContracts.getBdpDataStorage(_contracts)).getRegionPurchasedAt(i) > 0) { // region is purchased
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(339)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BdpCalculator':
    |		var lastRegionId = BdpDataStorage(BdpContracts.getBdpDataStorage(_contracts)).getLastRegionId();
    |		for (uint256 i = 0; i <= lastRegionId; i++) {
  > |			if(BdpDataStorage(BdpContracts.getBdpDataStorage(_contracts)).getRegionPurchasedAt(i) > 0) { // region is purchased
    |				var (area,,) = calculateArea(_contracts, i);
    |				_count += area;
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(341)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BdpCalculator':
    |
    |	function calculateMarketPixelPrice(address[16] _contracts, uint _pixelsSold) view public returns(uint) {
  > |		var pricePointsLength = BdpPriceStorage(BdpContracts.getBdpPriceStorage(_contracts)).getPricePointsLength();
    |		uint mod = _pixelsSold % (1000000 / (pricePointsLength - 1));
    |		uint div = _pixelsSold * (pricePointsLength - 1) / 1000000;
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(353)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BdpCalculator':
    |		uint mod = _pixelsSold % (1000000 / (pricePointsLength - 1));
    |		uint div = _pixelsSold * (pricePointsLength - 1) / 1000000;
  > |		var divPoint = BdpPriceStorage(BdpContracts.getBdpPriceStorage(_contracts)).getPricePoint(div);
    |		if(mod == 0) return divPoint;
    |		return divPoint + mod * (BdpPriceStorage(BdpContracts.getBdpPriceStorage(_contracts)).getPricePoint(div+1) - divPoint) * (pricePointsLength - 1) / 1000000;
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(356)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BdpCalculator':
    |		var divPoint = BdpPriceStorage(BdpContracts.getBdpPriceStorage(_contracts)).getPricePoint(div);
    |		if(mod == 0) return divPoint;
  > |		return divPoint + mod * (BdpPriceStorage(BdpContracts.getBdpPriceStorage(_contracts)).getPricePoint(div+1) - divPoint) * (pricePointsLength - 1) / 1000000;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(358)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BdpCalculator':
    |	  */
    |	function calculateRegionInitialSalePixelPrice(address[16] _contracts, uint256 _regionId) view public returns (uint256) {
  > |		require(BdpDataStorage(BdpContracts.getBdpDataStorage(_contracts)).getRegionUpdatedAt(_regionId) > 0); // region exists
    |		var purchasedPixels = countPurchasedPixels(_contracts);
    |		var (area,,) = calculateArea(_contracts, _regionId);
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(368)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BdpCalculator':
    |	  */
    |	function calculateRegionSalePixelPrice(address[16] _contracts, uint256 _regionId) view public returns (uint256) {
  > |		var pixelPrice = BdpDataStorage(BdpContracts.getBdpDataStorage(_contracts)).getRegionCurrentPixelPrice(_regionId);
    |		if(pixelPrice > 0) {
    |			return pixelPrice * 3;
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(377)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BdpCalculator':
    |	  */
    |	function calculateSetupAllowedUntil(address[16] _contracts, uint256 _regionId) view public returns (uint256) {
  > |		var (updatedAt, purchasedAt) = BdpDataStorage(BdpContracts.getBdpDataStorage(_contracts)).getRegionUpdatedAtPurchasedAt(_regionId);
    |		if(updatedAt != purchasedAt) {
    |			return 0;
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(388)

[33mWarning[0m for LockedEther in contract 'BdpContracts':
    |
    |}
  > |library BdpContracts {
    |
    |	function getBdpEntryPoint(address[16] _contracts) pure internal returns (address) {
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(18)

[31mViolation[0m for LockedEther in contract 'BdpDataStorage':
    |}
    |
  > |contract BdpDataStorage is BdpBase {
    |
    |	using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(149)

[33mWarning[0m for UnrestrictedWrite in contract 'BdpDataStorage':
    |	function setOwner(address _newOwner) external onlyOwner {
    |		require(_newOwner != address(0));
  > |		ownerAddress = _newOwner;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'BdpDataStorage':
    |	function setManager(address _newManager) external onlyOwner {
    |		require(_newManager != address(0));
  > |		managerAddress = _newManager;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'BdpDataStorage':
    |
    |	function pause() external onlyAuthorized {
  > |		paused = true;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'BdpDataStorage':
    |
    |	function unpause() external onlyOwner {
  > |		paused = false;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(94)

[33mWarning[0m for UnrestrictedWrite in contract 'BdpDataStorage':
    |
    |	function setSetupComplete() external onlyOwner {
  > |		setupComplete = true;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(98)

[31mViolation[0m for LockedEther in contract 'BdpOwnership':
    |}
    |
  > |library BdpOwnership {
    |
    |	using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(524)

[33mWarning[0m for UnhandledException in contract 'BdpOwnership':
    |
    |	function ownerOf(address[16] _contracts, uint256 _tokenId) public view returns (address) {
  > |		var owner = BdpOwnershipStorage(BdpContracts.getBdpOwnershipStorage(_contracts)).getTokenOwner(_tokenId);
    |		require(owner != address(0));
    |		return owner;
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(533)

[33mWarning[0m for UnhandledException in contract 'BdpOwnership':
    |
    |	function balanceOf(address[16] _contracts, address _owner) public view returns (uint256) {
  > |		return BdpOwnershipStorage(BdpContracts.getBdpOwnershipStorage(_contracts)).getOwnedTokensLength(_owner);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(539)

[33mWarning[0m for UnhandledException in contract 'BdpOwnership':
    |		address owner = ownerOf(_contracts, _tokenId);
    |		require(_to != owner);
  > |		if (ownStorage.getTokenApproval(_tokenId) != 0 || _to != 0) {
    |			ownStorage.setTokenApproval(_tokenId, _to);
    |			Approval(owner, _to, _tokenId);
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(547)

[33mWarning[0m for UnhandledException in contract 'BdpOwnership':
    |		require(_to != owner);
    |		if (ownStorage.getTokenApproval(_tokenId) != 0 || _to != 0) {
  > |			ownStorage.setTokenApproval(_tokenId, _to);
    |			Approval(owner, _to, _tokenId);
    |		}
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(548)

[33mWarning[0m for UnhandledException in contract 'BdpOwnership':
    |
    |		require(ownerOf(_contracts, _tokenId) == _owner);
  > |		if (ownStorage.getTokenApproval(_tokenId) != 0) {
    |			BdpOwnershipStorage(BdpContracts.getBdpOwnershipStorage(_contracts)).setTokenApproval(_tokenId, 0);
    |			Approval(_owner, 0, _tokenId);
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(561)

[33mWarning[0m for UnhandledException in contract 'BdpOwnership':
    |		require(ownerOf(_contracts, _tokenId) == _owner);
    |		if (ownStorage.getTokenApproval(_tokenId) != 0) {
  > |			BdpOwnershipStorage(BdpContracts.getBdpOwnershipStorage(_contracts)).setTokenApproval(_tokenId, 0);
    |			Approval(_owner, 0, _tokenId);
    |		}
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(562)

[33mWarning[0m for UnhandledException in contract 'BdpOwnership':
    |		var ownStorage = BdpOwnershipStorage(BdpContracts.getBdpOwnershipStorage(_contracts));
    |
  > |		require(ownStorage.getTokenOwner(_tokenId) == address(0));
    |
    |		// Set token owner
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(592)

[33mWarning[0m for UnhandledException in contract 'BdpOwnership':
    |
    |		// Set token owner
  > |		ownStorage.setTokenOwner(_tokenId, _to);
    |
    |		// Add token to tokenIds list
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(595)

[33mWarning[0m for UnhandledException in contract 'BdpOwnership':
    |
    |		// Add token to tokenIds list
  > |		var tokenIdsLength = ownStorage.pushTokenId(_tokenId);
    |		ownStorage.setTokenIdsIndex(_tokenId, tokenIdsLength.sub(1));
    |
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(598)

[33mWarning[0m for UnhandledException in contract 'BdpOwnership':
    |		// Add token to tokenIds list
    |		var tokenIdsLength = ownStorage.pushTokenId(_tokenId);
  > |		ownStorage.setTokenIdsIndex(_tokenId, tokenIdsLength.sub(1));
    |
    |		uint256 ownedTokensLength = ownStorage.getOwnedTokensLength(_to);
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(599)

[33mWarning[0m for UnhandledException in contract 'BdpOwnership':
    |		ownStorage.setTokenIdsIndex(_tokenId, tokenIdsLength.sub(1));
    |
  > |		uint256 ownedTokensLength = ownStorage.getOwnedTokensLength(_to);
    |
    |		// Add token to ownedTokens list
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(601)

[33mWarning[0m for UnhandledException in contract 'BdpOwnership':
    |
    |		// Add token to ownedTokens list
  > |		ownStorage.pushOwnedToken(_to, _tokenId);
    |		ownStorage.setOwnedTokensIndex(_tokenId, ownedTokensLength);
    |
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(604)

[33mWarning[0m for UnhandledException in contract 'BdpOwnership':
    |		// Add token to ownedTokens list
    |		ownStorage.pushOwnedToken(_to, _tokenId);
  > |		ownStorage.setOwnedTokensIndex(_tokenId, ownedTokensLength);
    |
    |		// Increment total owned area
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(605)

[33mWarning[0m for UnhandledException in contract 'BdpOwnership':
    |		// Increment total owned area
    |		var (area,,) = BdpCalculator.calculateArea(_contracts, _tokenId);
  > |		ownStorage.incrementOwnedArea(_to, area);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(609)

[33mWarning[0m for UnhandledException in contract 'BdpOwnership':
    |
    |		// Clear token owner
  > |		ownStorage.setTokenOwner(_tokenId, 0);
    |
    |		removeFromTokenIds(ownStorage, _tokenId);
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(623)

[33mWarning[0m for UnhandledException in contract 'BdpOwnership':
    |		// Decrement total owned area
    |		var (area,,) = BdpCalculator.calculateArea(_contracts, _tokenId);
  > |		ownStorage.decrementOwnedArea(_from, area);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(630)

[33mWarning[0m for UnhandledException in contract 'BdpOwnership':
    |	 */
    |	function removeFromOwnedToken(BdpOwnershipStorage _ownStorage, address _from, uint256 _tokenId) private {
  > |		var ownedTokenIndex = _ownStorage.getOwnedTokensIndex(_tokenId);
    |		var lastOwnedTokenIndex = _ownStorage.getOwnedTokensLength(_from).sub(1);
    |		var lastOwnedToken = _ownStorage.getOwnedToken(_from, lastOwnedTokenIndex);
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(640)

[33mWarning[0m for UnhandledException in contract 'BdpOwnership':
    |	function removeFromOwnedToken(BdpOwnershipStorage _ownStorage, address _from, uint256 _tokenId) private {
    |		var ownedTokenIndex = _ownStorage.getOwnedTokensIndex(_tokenId);
  > |		var lastOwnedTokenIndex = _ownStorage.getOwnedTokensLength(_from).sub(1);
    |		var lastOwnedToken = _ownStorage.getOwnedToken(_from, lastOwnedTokenIndex);
    |		_ownStorage.setOwnedToken(_from, ownedTokenIndex, lastOwnedToken);
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(641)

[33mWarning[0m for UnhandledException in contract 'BdpOwnership':
    |		var ownedTokenIndex = _ownStorage.getOwnedTokensIndex(_tokenId);
    |		var lastOwnedTokenIndex = _ownStorage.getOwnedTokensLength(_from).sub(1);
  > |		var lastOwnedToken = _ownStorage.getOwnedToken(_from, lastOwnedTokenIndex);
    |		_ownStorage.setOwnedToken(_from, ownedTokenIndex, lastOwnedToken);
    |		_ownStorage.setOwnedToken(_from, lastOwnedTokenIndex, 0);
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(642)

[33mWarning[0m for UnhandledException in contract 'BdpOwnership':
    |		var lastOwnedTokenIndex = _ownStorage.getOwnedTokensLength(_from).sub(1);
    |		var lastOwnedToken = _ownStorage.getOwnedToken(_from, lastOwnedTokenIndex);
  > |		_ownStorage.setOwnedToken(_from, ownedTokenIndex, lastOwnedToken);
    |		_ownStorage.setOwnedToken(_from, lastOwnedTokenIndex, 0);
    |		_ownStorage.decrementOwnedTokensLength(_from);
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(643)

[33mWarning[0m for UnhandledException in contract 'BdpOwnership':
    |		var lastOwnedToken = _ownStorage.getOwnedToken(_from, lastOwnedTokenIndex);
    |		_ownStorage.setOwnedToken(_from, ownedTokenIndex, lastOwnedToken);
  > |		_ownStorage.setOwnedToken(_from, lastOwnedTokenIndex, 0);
    |		_ownStorage.decrementOwnedTokensLength(_from);
    |		_ownStorage.setOwnedTokensIndex(_tokenId, 0);
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(644)

[33mWarning[0m for UnhandledException in contract 'BdpOwnership':
    |		_ownStorage.setOwnedToken(_from, ownedTokenIndex, lastOwnedToken);
    |		_ownStorage.setOwnedToken(_from, lastOwnedTokenIndex, 0);
  > |		_ownStorage.decrementOwnedTokensLength(_from);
    |		_ownStorage.setOwnedTokensIndex(_tokenId, 0);
    |		_ownStorage.setOwnedTokensIndex(lastOwnedToken, ownedTokenIndex);
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(645)

[33mWarning[0m for UnhandledException in contract 'BdpOwnership':
    |		_ownStorage.setOwnedToken(_from, lastOwnedTokenIndex, 0);
    |		_ownStorage.decrementOwnedTokensLength(_from);
  > |		_ownStorage.setOwnedTokensIndex(_tokenId, 0);
    |		_ownStorage.setOwnedTokensIndex(lastOwnedToken, ownedTokenIndex);
    |	}
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(646)

[33mWarning[0m for UnhandledException in contract 'BdpOwnership':
    |		_ownStorage.decrementOwnedTokensLength(_from);
    |		_ownStorage.setOwnedTokensIndex(_tokenId, 0);
  > |		_ownStorage.setOwnedTokensIndex(lastOwnedToken, ownedTokenIndex);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(647)

[33mWarning[0m for UnhandledException in contract 'BdpOwnership':
    |	 */
    |	function removeFromTokenIds(BdpOwnershipStorage _ownStorage, uint256 _tokenId) private {
  > |		var tokenIndex = _ownStorage.getTokenIdsIndex(_tokenId);
    |		var lastTokenIdIndex = _ownStorage.getTokenIdsLength().sub(1);
    |		var lastTokenId = _ownStorage.getTokenIdByIndex(lastTokenIdIndex);
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(654)

[33mWarning[0m for UnhandledException in contract 'BdpOwnership':
    |	function removeFromTokenIds(BdpOwnershipStorage _ownStorage, uint256 _tokenId) private {
    |		var tokenIndex = _ownStorage.getTokenIdsIndex(_tokenId);
  > |		var lastTokenIdIndex = _ownStorage.getTokenIdsLength().sub(1);
    |		var lastTokenId = _ownStorage.getTokenIdByIndex(lastTokenIdIndex);
    |		_ownStorage.setTokenIdByIndex(tokenIndex, lastTokenId);
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(655)

[33mWarning[0m for UnhandledException in contract 'BdpOwnership':
    |		var tokenIndex = _ownStorage.getTokenIdsIndex(_tokenId);
    |		var lastTokenIdIndex = _ownStorage.getTokenIdsLength().sub(1);
  > |		var lastTokenId = _ownStorage.getTokenIdByIndex(lastTokenIdIndex);
    |		_ownStorage.setTokenIdByIndex(tokenIndex, lastTokenId);
    |		_ownStorage.setTokenIdByIndex(lastTokenIdIndex, 0);
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(656)

[33mWarning[0m for UnhandledException in contract 'BdpOwnership':
    |		var lastTokenIdIndex = _ownStorage.getTokenIdsLength().sub(1);
    |		var lastTokenId = _ownStorage.getTokenIdByIndex(lastTokenIdIndex);
  > |		_ownStorage.setTokenIdByIndex(tokenIndex, lastTokenId);
    |		_ownStorage.setTokenIdByIndex(lastTokenIdIndex, 0);
    |		_ownStorage.decrementTokenIdsLength();
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(657)

[33mWarning[0m for UnhandledException in contract 'BdpOwnership':
    |		var lastTokenId = _ownStorage.getTokenIdByIndex(lastTokenIdIndex);
    |		_ownStorage.setTokenIdByIndex(tokenIndex, lastTokenId);
  > |		_ownStorage.setTokenIdByIndex(lastTokenIdIndex, 0);
    |		_ownStorage.decrementTokenIdsLength();
    |		_ownStorage.setTokenIdsIndex(_tokenId, 0);
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(658)

[33mWarning[0m for UnhandledException in contract 'BdpOwnership':
    |		_ownStorage.setTokenIdByIndex(tokenIndex, lastTokenId);
    |		_ownStorage.setTokenIdByIndex(lastTokenIdIndex, 0);
  > |		_ownStorage.decrementTokenIdsLength();
    |		_ownStorage.setTokenIdsIndex(_tokenId, 0);
    |		_ownStorage.setTokenIdsIndex(lastTokenId, tokenIndex);
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(659)

[33mWarning[0m for UnhandledException in contract 'BdpOwnership':
    |		_ownStorage.setTokenIdByIndex(lastTokenIdIndex, 0);
    |		_ownStorage.decrementTokenIdsLength();
  > |		_ownStorage.setTokenIdsIndex(_tokenId, 0);
    |		_ownStorage.setTokenIdsIndex(lastTokenId, tokenIndex);
    |	}
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(660)

[33mWarning[0m for UnhandledException in contract 'BdpOwnership':
    |		_ownStorage.decrementTokenIdsLength();
    |		_ownStorage.setTokenIdsIndex(_tokenId, 0);
  > |		_ownStorage.setTokenIdsIndex(lastTokenId, tokenIndex);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(661)

[33mWarning[0m for UnhandledException in contract 'BdpOwnership':
    |	 */
    |	function burn(address[16] _contracts, uint256 _tokenId) public {
  > |		address owner = BdpOwnershipStorage(BdpContracts.getBdpOwnershipStorage(_contracts)).getTokenOwner(_tokenId);
    |		clearApproval(_contracts, owner, _tokenId);
    |		removeToken(_contracts, owner, _tokenId);
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(680)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BdpOwnership':
    |
    |	function ownerOf(address[16] _contracts, uint256 _tokenId) public view returns (address) {
  > |		var owner = BdpOwnershipStorage(BdpContracts.getBdpOwnershipStorage(_contracts)).getTokenOwner(_tokenId);
    |		require(owner != address(0));
    |		return owner;
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(533)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BdpOwnership':
    |
    |	function balanceOf(address[16] _contracts, address _owner) public view returns (uint256) {
  > |		return BdpOwnershipStorage(BdpContracts.getBdpOwnershipStorage(_contracts)).getOwnedTokensLength(_owner);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(539)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BdpOwnership':
    |		address owner = ownerOf(_contracts, _tokenId);
    |		require(_to != owner);
  > |		if (ownStorage.getTokenApproval(_tokenId) != 0 || _to != 0) {
    |			ownStorage.setTokenApproval(_tokenId, _to);
    |			Approval(owner, _to, _tokenId);
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(547)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BdpOwnership':
    |		require(_to != owner);
    |		if (ownStorage.getTokenApproval(_tokenId) != 0 || _to != 0) {
  > |			ownStorage.setTokenApproval(_tokenId, _to);
    |			Approval(owner, _to, _tokenId);
    |		}
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(548)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BdpOwnership':
    |
    |		require(ownerOf(_contracts, _tokenId) == _owner);
  > |		if (ownStorage.getTokenApproval(_tokenId) != 0) {
    |			BdpOwnershipStorage(BdpContracts.getBdpOwnershipStorage(_contracts)).setTokenApproval(_tokenId, 0);
    |			Approval(_owner, 0, _tokenId);
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(561)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BdpOwnership':
    |		require(ownerOf(_contracts, _tokenId) == _owner);
    |		if (ownStorage.getTokenApproval(_tokenId) != 0) {
  > |			BdpOwnershipStorage(BdpContracts.getBdpOwnershipStorage(_contracts)).setTokenApproval(_tokenId, 0);
    |			Approval(_owner, 0, _tokenId);
    |		}
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(562)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BdpOwnership':
    |		var ownStorage = BdpOwnershipStorage(BdpContracts.getBdpOwnershipStorage(_contracts));
    |
  > |		require(ownStorage.getTokenOwner(_tokenId) == address(0));
    |
    |		// Set token owner
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(592)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BdpOwnership':
    |
    |		// Set token owner
  > |		ownStorage.setTokenOwner(_tokenId, _to);
    |
    |		// Add token to tokenIds list
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(595)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BdpOwnership':
    |
    |		// Add token to tokenIds list
  > |		var tokenIdsLength = ownStorage.pushTokenId(_tokenId);
    |		ownStorage.setTokenIdsIndex(_tokenId, tokenIdsLength.sub(1));
    |
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(598)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BdpOwnership':
    |		// Add token to tokenIds list
    |		var tokenIdsLength = ownStorage.pushTokenId(_tokenId);
  > |		ownStorage.setTokenIdsIndex(_tokenId, tokenIdsLength.sub(1));
    |
    |		uint256 ownedTokensLength = ownStorage.getOwnedTokensLength(_to);
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(599)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BdpOwnership':
    |		ownStorage.setTokenIdsIndex(_tokenId, tokenIdsLength.sub(1));
    |
  > |		uint256 ownedTokensLength = ownStorage.getOwnedTokensLength(_to);
    |
    |		// Add token to ownedTokens list
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(601)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BdpOwnership':
    |
    |		// Add token to ownedTokens list
  > |		ownStorage.pushOwnedToken(_to, _tokenId);
    |		ownStorage.setOwnedTokensIndex(_tokenId, ownedTokensLength);
    |
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(604)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BdpOwnership':
    |		// Add token to ownedTokens list
    |		ownStorage.pushOwnedToken(_to, _tokenId);
  > |		ownStorage.setOwnedTokensIndex(_tokenId, ownedTokensLength);
    |
    |		// Increment total owned area
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(605)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BdpOwnership':
    |		// Increment total owned area
    |		var (area,,) = BdpCalculator.calculateArea(_contracts, _tokenId);
  > |		ownStorage.incrementOwnedArea(_to, area);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(609)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BdpOwnership':
    |
    |		// Clear token owner
  > |		ownStorage.setTokenOwner(_tokenId, 0);
    |
    |		removeFromTokenIds(ownStorage, _tokenId);
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(623)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BdpOwnership':
    |		// Decrement total owned area
    |		var (area,,) = BdpCalculator.calculateArea(_contracts, _tokenId);
  > |		ownStorage.decrementOwnedArea(_from, area);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(630)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BdpOwnership':
    |	 */
    |	function removeFromOwnedToken(BdpOwnershipStorage _ownStorage, address _from, uint256 _tokenId) private {
  > |		var ownedTokenIndex = _ownStorage.getOwnedTokensIndex(_tokenId);
    |		var lastOwnedTokenIndex = _ownStorage.getOwnedTokensLength(_from).sub(1);
    |		var lastOwnedToken = _ownStorage.getOwnedToken(_from, lastOwnedTokenIndex);
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(640)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BdpOwnership':
    |	function removeFromOwnedToken(BdpOwnershipStorage _ownStorage, address _from, uint256 _tokenId) private {
    |		var ownedTokenIndex = _ownStorage.getOwnedTokensIndex(_tokenId);
  > |		var lastOwnedTokenIndex = _ownStorage.getOwnedTokensLength(_from).sub(1);
    |		var lastOwnedToken = _ownStorage.getOwnedToken(_from, lastOwnedTokenIndex);
    |		_ownStorage.setOwnedToken(_from, ownedTokenIndex, lastOwnedToken);
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(641)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BdpOwnership':
    |		var ownedTokenIndex = _ownStorage.getOwnedTokensIndex(_tokenId);
    |		var lastOwnedTokenIndex = _ownStorage.getOwnedTokensLength(_from).sub(1);
  > |		var lastOwnedToken = _ownStorage.getOwnedToken(_from, lastOwnedTokenIndex);
    |		_ownStorage.setOwnedToken(_from, ownedTokenIndex, lastOwnedToken);
    |		_ownStorage.setOwnedToken(_from, lastOwnedTokenIndex, 0);
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(642)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BdpOwnership':
    |		var lastOwnedTokenIndex = _ownStorage.getOwnedTokensLength(_from).sub(1);
    |		var lastOwnedToken = _ownStorage.getOwnedToken(_from, lastOwnedTokenIndex);
  > |		_ownStorage.setOwnedToken(_from, ownedTokenIndex, lastOwnedToken);
    |		_ownStorage.setOwnedToken(_from, lastOwnedTokenIndex, 0);
    |		_ownStorage.decrementOwnedTokensLength(_from);
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(643)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BdpOwnership':
    |		var lastOwnedToken = _ownStorage.getOwnedToken(_from, lastOwnedTokenIndex);
    |		_ownStorage.setOwnedToken(_from, ownedTokenIndex, lastOwnedToken);
  > |		_ownStorage.setOwnedToken(_from, lastOwnedTokenIndex, 0);
    |		_ownStorage.decrementOwnedTokensLength(_from);
    |		_ownStorage.setOwnedTokensIndex(_tokenId, 0);
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(644)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BdpOwnership':
    |		_ownStorage.setOwnedToken(_from, ownedTokenIndex, lastOwnedToken);
    |		_ownStorage.setOwnedToken(_from, lastOwnedTokenIndex, 0);
  > |		_ownStorage.decrementOwnedTokensLength(_from);
    |		_ownStorage.setOwnedTokensIndex(_tokenId, 0);
    |		_ownStorage.setOwnedTokensIndex(lastOwnedToken, ownedTokenIndex);
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(645)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BdpOwnership':
    |		_ownStorage.setOwnedToken(_from, lastOwnedTokenIndex, 0);
    |		_ownStorage.decrementOwnedTokensLength(_from);
  > |		_ownStorage.setOwnedTokensIndex(_tokenId, 0);
    |		_ownStorage.setOwnedTokensIndex(lastOwnedToken, ownedTokenIndex);
    |	}
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(646)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BdpOwnership':
    |		_ownStorage.decrementOwnedTokensLength(_from);
    |		_ownStorage.setOwnedTokensIndex(_tokenId, 0);
  > |		_ownStorage.setOwnedTokensIndex(lastOwnedToken, ownedTokenIndex);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(647)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BdpOwnership':
    |	 */
    |	function removeFromTokenIds(BdpOwnershipStorage _ownStorage, uint256 _tokenId) private {
  > |		var tokenIndex = _ownStorage.getTokenIdsIndex(_tokenId);
    |		var lastTokenIdIndex = _ownStorage.getTokenIdsLength().sub(1);
    |		var lastTokenId = _ownStorage.getTokenIdByIndex(lastTokenIdIndex);
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(654)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BdpOwnership':
    |	function removeFromTokenIds(BdpOwnershipStorage _ownStorage, uint256 _tokenId) private {
    |		var tokenIndex = _ownStorage.getTokenIdsIndex(_tokenId);
  > |		var lastTokenIdIndex = _ownStorage.getTokenIdsLength().sub(1);
    |		var lastTokenId = _ownStorage.getTokenIdByIndex(lastTokenIdIndex);
    |		_ownStorage.setTokenIdByIndex(tokenIndex, lastTokenId);
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(655)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BdpOwnership':
    |		var tokenIndex = _ownStorage.getTokenIdsIndex(_tokenId);
    |		var lastTokenIdIndex = _ownStorage.getTokenIdsLength().sub(1);
  > |		var lastTokenId = _ownStorage.getTokenIdByIndex(lastTokenIdIndex);
    |		_ownStorage.setTokenIdByIndex(tokenIndex, lastTokenId);
    |		_ownStorage.setTokenIdByIndex(lastTokenIdIndex, 0);
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(656)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BdpOwnership':
    |		var lastTokenIdIndex = _ownStorage.getTokenIdsLength().sub(1);
    |		var lastTokenId = _ownStorage.getTokenIdByIndex(lastTokenIdIndex);
  > |		_ownStorage.setTokenIdByIndex(tokenIndex, lastTokenId);
    |		_ownStorage.setTokenIdByIndex(lastTokenIdIndex, 0);
    |		_ownStorage.decrementTokenIdsLength();
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(657)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BdpOwnership':
    |		var lastTokenId = _ownStorage.getTokenIdByIndex(lastTokenIdIndex);
    |		_ownStorage.setTokenIdByIndex(tokenIndex, lastTokenId);
  > |		_ownStorage.setTokenIdByIndex(lastTokenIdIndex, 0);
    |		_ownStorage.decrementTokenIdsLength();
    |		_ownStorage.setTokenIdsIndex(_tokenId, 0);
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(658)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BdpOwnership':
    |		_ownStorage.setTokenIdByIndex(tokenIndex, lastTokenId);
    |		_ownStorage.setTokenIdByIndex(lastTokenIdIndex, 0);
  > |		_ownStorage.decrementTokenIdsLength();
    |		_ownStorage.setTokenIdsIndex(_tokenId, 0);
    |		_ownStorage.setTokenIdsIndex(lastTokenId, tokenIndex);
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(659)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BdpOwnership':
    |		_ownStorage.setTokenIdByIndex(lastTokenIdIndex, 0);
    |		_ownStorage.decrementTokenIdsLength();
  > |		_ownStorage.setTokenIdsIndex(_tokenId, 0);
    |		_ownStorage.setTokenIdsIndex(lastTokenId, tokenIndex);
    |	}
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(660)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BdpOwnership':
    |		_ownStorage.decrementTokenIdsLength();
    |		_ownStorage.setTokenIdsIndex(_tokenId, 0);
  > |		_ownStorage.setTokenIdsIndex(lastTokenId, tokenIndex);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(661)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BdpOwnership':
    |	 */
    |	function burn(address[16] _contracts, uint256 _tokenId) public {
  > |		address owner = BdpOwnershipStorage(BdpContracts.getBdpOwnershipStorage(_contracts)).getTokenOwner(_tokenId);
    |		clearApproval(_contracts, owner, _tokenId);
    |		removeToken(_contracts, owner, _tokenId);
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(680)

[31mViolation[0m for LockedEther in contract 'BdpOwnershipStorage':
    |}
    |
  > |contract BdpOwnershipStorage is BdpBase {
    |
    |	using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(398)

[31mViolation[0m for UnrestrictedWrite in contract 'BdpOwnershipStorage':
    |}
    |
  > |contract BdpOwnershipStorage is BdpBase {
    |
    |	using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(398)

[33mWarning[0m for UnrestrictedWrite in contract 'BdpOwnershipStorage':
    |	function setOwner(address _newOwner) external onlyOwner {
    |		require(_newOwner != address(0));
  > |		ownerAddress = _newOwner;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'BdpOwnershipStorage':
    |	function setManager(address _newManager) external onlyOwner {
    |		require(_newManager != address(0));
  > |		managerAddress = _newManager;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'BdpOwnershipStorage':
    |
    |	function pause() external onlyAuthorized {
  > |		paused = true;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'BdpOwnershipStorage':
    |
    |	function unpause() external onlyOwner {
  > |		paused = false;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(94)

[33mWarning[0m for UnrestrictedWrite in contract 'BdpOwnershipStorage':
    |
    |	function setSetupComplete() external onlyOwner {
  > |		setupComplete = true;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(98)

[31mViolation[0m for LockedEther in contract 'BdpPriceStorage':
    |}
    |
  > |contract BdpPriceStorage is BdpBase {
    |
    |	uint64[1001] public pricePoints;
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(273)

[31mViolation[0m for UnrestrictedWrite in contract 'BdpPriceStorage':
    |}
    |
  > |contract BdpPriceStorage is BdpBase {
    |
    |	uint64[1001] public pricePoints;
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(273)

[33mWarning[0m for UnrestrictedWrite in contract 'BdpPriceStorage':
    |	function setOwner(address _newOwner) external onlyOwner {
    |		require(_newOwner != address(0));
  > |		ownerAddress = _newOwner;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'BdpPriceStorage':
    |	function setManager(address _newManager) external onlyOwner {
    |		require(_newManager != address(0));
  > |		managerAddress = _newManager;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'BdpPriceStorage':
    |
    |	function pause() external onlyAuthorized {
  > |		paused = true;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'BdpPriceStorage':
    |
    |	function unpause() external onlyOwner {
  > |		paused = false;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(94)

[33mWarning[0m for UnrestrictedWrite in contract 'BdpPriceStorage':
    |
    |	function setSetupComplete() external onlyOwner {
  > |		setupComplete = true;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(98)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |}
    |
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x9f51e7e4ceb88982da1695297ff7ca591ca2327a.sol(107)


