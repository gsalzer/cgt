Processing contract: /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol:BdpBase
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol:BdpBaseData
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol:BdpCalculator
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol:BdpContracts
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol:BdpCrud
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol:BdpDataStorage
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol:BdpImage
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol:BdpImageStorage
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol:BdpOwnership
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol:BdpOwnershipStorage
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol:BdpPriceStorage
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol:SafeMath
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
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(51)

[31mViolation[0m for UnrestrictedWrite in contract 'BdpBase':
    |}
    |
  > |contract BdpBase is BdpBaseData {
    |
    |	modifier onlyOwner() {
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(51)

[33mWarning[0m for UnrestrictedWrite in contract 'BdpBase':
    |	function setOwner(address _newOwner) external onlyOwner {
    |		require(_newOwner != address(0));
  > |		ownerAddress = _newOwner;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(78)

[33mWarning[0m for UnrestrictedWrite in contract 'BdpBase':
    |	function setManager(address _newManager) external onlyOwner {
    |		require(_newManager != address(0));
  > |		managerAddress = _newManager;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'BdpBase':
    |
    |	function pause() external onlyAuthorized {
  > |		paused = true;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(91)

[33mWarning[0m for UnrestrictedWrite in contract 'BdpBase':
    |
    |	function unpause() external onlyOwner {
  > |		paused = false;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(95)

[33mWarning[0m for UnrestrictedWrite in contract 'BdpBase':
    |
    |	function setSetupComplete() external onlyOwner {
  > |		setupComplete = true;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(99)

[33mWarning[0m for LockedEther in contract 'BdpBaseData':
    |}
    |
  > |contract BdpBaseData {
    |
    |	address public ownerAddress;
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(35)

[33mWarning[0m for MissingInputValidation in contract 'BdpBaseData':
    |contract BdpBaseData {
    |
  > |	address public ownerAddress;
    |
    |	address public managerAddress;
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(37)

[33mWarning[0m for MissingInputValidation in contract 'BdpBaseData':
    |	address public ownerAddress;
    |
  > |	address public managerAddress;
    |
    |	address[16] public contracts;
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(39)

[33mWarning[0m for MissingInputValidation in contract 'BdpBaseData':
    |	address public managerAddress;
    |
  > |	address[16] public contracts;
    |
    |	bool public paused = false;
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(41)

[33mWarning[0m for MissingInputValidation in contract 'BdpBaseData':
    |	address[16] public contracts;
    |
  > |	bool public paused = false;
    |
    |	bool public setupComplete = false;
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(43)

[33mWarning[0m for MissingInputValidation in contract 'BdpBaseData':
    |	bool public paused = false;
    |
  > |	bool public setupComplete = false;
    |
    |	bytes8 public version;
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(45)

[33mWarning[0m for MissingInputValidation in contract 'BdpBaseData':
    |	bool public setupComplete = false;
    |
  > |	bytes8 public version;
    |
    |}
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(47)

[33mWarning[0m for LockedEther in contract 'BdpCalculator':
    |}
    |
  > |library BdpCalculator {
    |
    |	using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(629)

[33mWarning[0m for UnhandledException in contract 'BdpCalculator':
    |
    |	function calculateArea(address[16] _contracts, uint256 _regionId) view public returns (uint256 _area, uint256 _width, uint256 _height) {
  > |		var (x1, y1, x2, y2) = BdpDataStorage(BdpContracts.getBdpDataStorage(_contracts)).getRegionCoordinates(_regionId);
    |		_width = x2 - x1 + 1;
    |		_height = y2 - y1 + 1;
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(634)

[33mWarning[0m for UnhandledException in contract 'BdpCalculator':
    |
    |	function countPurchasedPixels(address[16] _contracts) view public returns (uint256 _count) {
  > |		var lastRegionId = BdpDataStorage(BdpContracts.getBdpDataStorage(_contracts)).getLastRegionId();
    |		for (uint256 i = 0; i <= lastRegionId; i++) {
    |			if(BdpDataStorage(BdpContracts.getBdpDataStorage(_contracts)).getRegionPurchasedAt(i) > 0) { // region is purchased
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(641)

[33mWarning[0m for UnhandledException in contract 'BdpCalculator':
    |		var lastRegionId = BdpDataStorage(BdpContracts.getBdpDataStorage(_contracts)).getLastRegionId();
    |		for (uint256 i = 0; i <= lastRegionId; i++) {
  > |			if(BdpDataStorage(BdpContracts.getBdpDataStorage(_contracts)).getRegionPurchasedAt(i) > 0) { // region is purchased
    |				var (area,,) = calculateArea(_contracts, i);
    |				_count += area;
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(643)

[33mWarning[0m for UnhandledException in contract 'BdpCalculator':
    |
    |	function calculateMarketPixelPrice(address[16] _contracts, uint _pixelsSold) view public returns(uint) {
  > |		var pricePointsLength = BdpPriceStorage(BdpContracts.getBdpPriceStorage(_contracts)).getPricePointsLength();
    |		uint mod = _pixelsSold % (1000000 / (pricePointsLength - 1));
    |		uint div = _pixelsSold * (pricePointsLength - 1) / 1000000;
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(655)

[33mWarning[0m for UnhandledException in contract 'BdpCalculator':
    |		uint mod = _pixelsSold % (1000000 / (pricePointsLength - 1));
    |		uint div = _pixelsSold * (pricePointsLength - 1) / 1000000;
  > |		var divPoint = BdpPriceStorage(BdpContracts.getBdpPriceStorage(_contracts)).getPricePoint(div);
    |		if(mod == 0) return divPoint;
    |		return divPoint + mod * (BdpPriceStorage(BdpContracts.getBdpPriceStorage(_contracts)).getPricePoint(div+1) - divPoint) * (pricePointsLength - 1) / 1000000;
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(658)

[33mWarning[0m for UnhandledException in contract 'BdpCalculator':
    |		var divPoint = BdpPriceStorage(BdpContracts.getBdpPriceStorage(_contracts)).getPricePoint(div);
    |		if(mod == 0) return divPoint;
  > |		return divPoint + mod * (BdpPriceStorage(BdpContracts.getBdpPriceStorage(_contracts)).getPricePoint(div+1) - divPoint) * (pricePointsLength - 1) / 1000000;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(660)

[33mWarning[0m for UnhandledException in contract 'BdpCalculator':
    |	  */
    |	function calculateRegionInitialSalePixelPrice(address[16] _contracts, uint256 _regionId) view public returns (uint256) {
  > |		require(BdpDataStorage(BdpContracts.getBdpDataStorage(_contracts)).getRegionUpdatedAt(_regionId) > 0); // region exists
    |		var purchasedPixels = countPurchasedPixels(_contracts);
    |		var (area,,) = calculateArea(_contracts, _regionId);
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(670)

[33mWarning[0m for UnhandledException in contract 'BdpCalculator':
    |	  */
    |	function calculateRegionSalePixelPrice(address[16] _contracts, uint256 _regionId) view public returns (uint256) {
  > |		var pixelPrice = BdpDataStorage(BdpContracts.getBdpDataStorage(_contracts)).getRegionCurrentPixelPrice(_regionId);
    |		if(pixelPrice > 0) {
    |			return pixelPrice * 3;
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(679)

[33mWarning[0m for UnhandledException in contract 'BdpCalculator':
    |	  */
    |	function calculateSetupAllowedUntil(address[16] _contracts, uint256 _regionId) view public returns (uint256) {
  > |		var (updatedAt, purchasedAt) = BdpDataStorage(BdpContracts.getBdpDataStorage(_contracts)).getRegionUpdatedAtPurchasedAt(_regionId);
    |		if(updatedAt != purchasedAt) {
    |			return 0;
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(690)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BdpCalculator':
    |
    |	function calculateArea(address[16] _contracts, uint256 _regionId) view public returns (uint256 _area, uint256 _width, uint256 _height) {
  > |		var (x1, y1, x2, y2) = BdpDataStorage(BdpContracts.getBdpDataStorage(_contracts)).getRegionCoordinates(_regionId);
    |		_width = x2 - x1 + 1;
    |		_height = y2 - y1 + 1;
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(634)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BdpCalculator':
    |
    |	function countPurchasedPixels(address[16] _contracts) view public returns (uint256 _count) {
  > |		var lastRegionId = BdpDataStorage(BdpContracts.getBdpDataStorage(_contracts)).getLastRegionId();
    |		for (uint256 i = 0; i <= lastRegionId; i++) {
    |			if(BdpDataStorage(BdpContracts.getBdpDataStorage(_contracts)).getRegionPurchasedAt(i) > 0) { // region is purchased
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(641)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BdpCalculator':
    |		var lastRegionId = BdpDataStorage(BdpContracts.getBdpDataStorage(_contracts)).getLastRegionId();
    |		for (uint256 i = 0; i <= lastRegionId; i++) {
  > |			if(BdpDataStorage(BdpContracts.getBdpDataStorage(_contracts)).getRegionPurchasedAt(i) > 0) { // region is purchased
    |				var (area,,) = calculateArea(_contracts, i);
    |				_count += area;
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(643)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BdpCalculator':
    |
    |	function calculateMarketPixelPrice(address[16] _contracts, uint _pixelsSold) view public returns(uint) {
  > |		var pricePointsLength = BdpPriceStorage(BdpContracts.getBdpPriceStorage(_contracts)).getPricePointsLength();
    |		uint mod = _pixelsSold % (1000000 / (pricePointsLength - 1));
    |		uint div = _pixelsSold * (pricePointsLength - 1) / 1000000;
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(655)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BdpCalculator':
    |		uint mod = _pixelsSold % (1000000 / (pricePointsLength - 1));
    |		uint div = _pixelsSold * (pricePointsLength - 1) / 1000000;
  > |		var divPoint = BdpPriceStorage(BdpContracts.getBdpPriceStorage(_contracts)).getPricePoint(div);
    |		if(mod == 0) return divPoint;
    |		return divPoint + mod * (BdpPriceStorage(BdpContracts.getBdpPriceStorage(_contracts)).getPricePoint(div+1) - divPoint) * (pricePointsLength - 1) / 1000000;
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(658)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BdpCalculator':
    |		var divPoint = BdpPriceStorage(BdpContracts.getBdpPriceStorage(_contracts)).getPricePoint(div);
    |		if(mod == 0) return divPoint;
  > |		return divPoint + mod * (BdpPriceStorage(BdpContracts.getBdpPriceStorage(_contracts)).getPricePoint(div+1) - divPoint) * (pricePointsLength - 1) / 1000000;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(660)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BdpCalculator':
    |	  */
    |	function calculateRegionInitialSalePixelPrice(address[16] _contracts, uint256 _regionId) view public returns (uint256) {
  > |		require(BdpDataStorage(BdpContracts.getBdpDataStorage(_contracts)).getRegionUpdatedAt(_regionId) > 0); // region exists
    |		var purchasedPixels = countPurchasedPixels(_contracts);
    |		var (area,,) = calculateArea(_contracts, _regionId);
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(670)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BdpCalculator':
    |	  */
    |	function calculateRegionSalePixelPrice(address[16] _contracts, uint256 _regionId) view public returns (uint256) {
  > |		var pixelPrice = BdpDataStorage(BdpContracts.getBdpDataStorage(_contracts)).getRegionCurrentPixelPrice(_regionId);
    |		if(pixelPrice > 0) {
    |			return pixelPrice * 3;
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(679)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BdpCalculator':
    |	  */
    |	function calculateSetupAllowedUntil(address[16] _contracts, uint256 _regionId) view public returns (uint256) {
  > |		var (updatedAt, purchasedAt) = BdpDataStorage(BdpContracts.getBdpDataStorage(_contracts)).getRegionUpdatedAtPurchasedAt(_regionId);
    |		if(updatedAt != purchasedAt) {
    |			return 0;
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(690)

[33mWarning[0m for LockedEther in contract 'BdpContracts':
    |pragma solidity ^0.4.19;
    |
  > |library BdpContracts {
    |
    |	function getBdpEntryPoint(address[16] _contracts) pure internal returns (address) {
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(3)

[33mWarning[0m for DAO in contract 'BdpCrud':
    |		require(_y2 < 1000 && _y1 <= _y2);
    |
  > |		var regionId = dataStorage.getNextRegionId();
    |		dataStorage.setRegionCoordinates(regionId, _x1, _y1, _x2, _y2);
    |		dataStorage.setRegionBlockUpdatedAt(regionId, block.number);
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(930)

[33mWarning[0m for DAO in contract 'BdpCrud':
    |
    |		var regionId = dataStorage.getNextRegionId();
  > |		dataStorage.setRegionCoordinates(regionId, _x1, _y1, _x2, _y2);
    |		dataStorage.setRegionBlockUpdatedAt(regionId, block.number);
    |		dataStorage.setRegionUpdatedAt(regionId, block.timestamp);
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(931)

[33mWarning[0m for DAO in contract 'BdpCrud':
    |		var regionId = dataStorage.getNextRegionId();
    |		dataStorage.setRegionCoordinates(regionId, _x1, _y1, _x2, _y2);
  > |		dataStorage.setRegionBlockUpdatedAt(regionId, block.number);
    |		dataStorage.setRegionUpdatedAt(regionId, block.timestamp);
    |
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(932)

[33mWarning[0m for DAO in contract 'BdpCrud':
    |		dataStorage.setRegionCoordinates(regionId, _x1, _y1, _x2, _y2);
    |		dataStorage.setRegionBlockUpdatedAt(regionId, block.number);
  > |		dataStorage.setRegionUpdatedAt(regionId, block.timestamp);
    |
    |		BdpOwnership.mint(_contracts, _to, regionId);
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(933)

[33mWarning[0m for DAO in contract 'BdpCrud':
    |	function deleteRegion(address[16] _contracts, uint256 _regionId) public {
    |		var dataStorage = BdpDataStorage(BdpContracts.getBdpDataStorage(_contracts));
  > |		var regionPurchasePixelPrice = dataStorage.getRegionPurchasePixelPrice(_regionId);
    |		require(regionPurchasePixelPrice == 0);
    |		BdpOwnership.burn(_contracts, _regionId);
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(942)

[33mWarning[0m for DAO in contract 'BdpCrud':
    |		require(regionPurchasePixelPrice == 0);
    |		BdpOwnership.burn(_contracts, _regionId);
  > |		dataStorage.deleteRegionData(_regionId);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(945)

[33mWarning[0m for DAO in contract 'BdpCrud':
    |		_updateRegionUrl(dataStorage, _regionId, _url, false);
    |
  > |		dataStorage.setRegionBlockUpdatedAt(_regionId, block.number);
    |		dataStorage.setRegionUpdatedAt(_regionId, block.timestamp);
    |	}
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(958)

[33mWarning[0m for DAO in contract 'BdpCrud':
    |
    |		dataStorage.setRegionBlockUpdatedAt(_regionId, block.number);
  > |		dataStorage.setRegionUpdatedAt(_regionId, block.timestamp);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(959)

[33mWarning[0m for DAO in contract 'BdpCrud':
    |		require(BdpOwnership.ownerOf(_contracts, _regionId) == msg.sender);
    |		BdpImage.checkImageInput(_contracts, _regionId, _imageId, _imageData, _swapImages, _clearImage);
  > |		var regionCurrentPixelPrice = dataStorage.getRegionCurrentPixelPrice(_regionId);
    |		require(regionCurrentPixelPrice != 0); // region was purchased
    |
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(966)

[33mWarning[0m for DAO in contract 'BdpCrud':
    |		_updateRegionOwner(_contracts, _regionId, _newOwner);
    |		if(marketPixelPrice > regionCurrentPixelPrice) {
  > |			dataStorage.setRegionCurrentPixelPrice(_regionId, marketPixelPrice);
    |		}
    |		dataStorage.setRegionBlockUpdatedAt(_regionId, block.number);
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(978)

[33mWarning[0m for DAO in contract 'BdpCrud':
    |			dataStorage.setRegionCurrentPixelPrice(_regionId, marketPixelPrice);
    |		}
  > |		dataStorage.setRegionBlockUpdatedAt(_regionId, block.number);
    |		dataStorage.setRegionUpdatedAt(_regionId, block.timestamp);
    |	}
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(980)

[33mWarning[0m for DAO in contract 'BdpCrud':
    |		}
    |		dataStorage.setRegionBlockUpdatedAt(_regionId, block.number);
  > |		dataStorage.setRegionUpdatedAt(_regionId, block.timestamp);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(981)

[33mWarning[0m for DAO in contract 'BdpCrud':
    |		var dataStorage = BdpDataStorage(BdpContracts.getBdpDataStorage(_contracts));
    |		require(BdpOwnership.ownerOf(_contracts, _regionId) == msg.sender);
  > |		var regionCurrentPixelPrice = dataStorage.getRegionCurrentPixelPrice(_regionId);
    |		require(regionCurrentPixelPrice != 0); // region was purchased
    |
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(987)

[33mWarning[0m for DAO in contract 'BdpCrud':
    |		_processUpdateFee(_contracts, _pixelPrice * area / 20);
    |
  > |		dataStorage.setRegionCurrentPixelPrice(_regionId, _pixelPrice);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(996)

[33mWarning[0m for DAO in contract 'BdpCrud':
    |		}
    |
  > |		var forwardUpdateFeesTo = BdpPriceStorage(BdpContracts.getBdpPriceStorage(_contracts)).getForwardUpdateFeesTo();
    |		if(forwardUpdateFeesTo != address(0)) {
    |			forwardUpdateFeesTo.transfer(_updateFee);
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(1007)

[33mWarning[0m for DAO in contract 'BdpCrud':
    |	function _updateRegionImage(address[16] _contracts, BdpDataStorage _dataStorage, uint256 _regionId, uint256 _imageId, uint256[] _imageData, bool _swapImages, bool _clearImage) internal {
    |		var imageStorage = BdpImageStorage(BdpContracts.getBdpImageStorage(_contracts));
  > |		var currentImageId = _dataStorage.getRegionCurrentImageId(_regionId);
    |		if(_imageId != 0) {
    |			if(currentImageId != 0) {
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(1015)

[33mWarning[0m for DAO in contract 'BdpCrud':
    |		if(_imageId != 0) {
    |			if(currentImageId != 0) {
  > |				imageStorage.setImageCurrentRegionId(currentImageId, 0);
    |			}
    |			_dataStorage.setRegionCurrentImageId(_regionId, _imageId);
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(1018)

[33mWarning[0m for DAO in contract 'BdpCrud':
    |				imageStorage.setImageCurrentRegionId(currentImageId, 0);
    |			}
  > |			_dataStorage.setRegionCurrentImageId(_regionId, _imageId);
    |			imageStorage.setImageCurrentRegionId(_imageId, _regionId);
    |		}
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(1020)

[33mWarning[0m for DAO in contract 'BdpCrud':
    |			}
    |			_dataStorage.setRegionCurrentImageId(_regionId, _imageId);
  > |			imageStorage.setImageCurrentRegionId(_imageId, _regionId);
    |		}
    |
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(1021)

[33mWarning[0m for DAO in contract 'BdpCrud':
    |		if(_imageData.length > 0) {
    |			if(currentImageId != 0) {
  > |				imageStorage.setImageCurrentRegionId(currentImageId, 0);
    |			}
    |			var (, width, height) = BdpCalculator.calculateArea(_contracts, _regionId);
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(1026)

[33mWarning[0m for DAO in contract 'BdpCrud':
    |			}
    |			var (, width, height) = BdpCalculator.calculateArea(_contracts, _regionId);
  > |			var imageId = imageStorage.createImage(msg.sender, _regionId, uint16(width), uint16(height), 1, 1);
    |			imageStorage.setImageData(imageId, 1, _imageData);
    |			_dataStorage.setRegionCurrentImageId(_regionId, imageId);
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(1029)

[33mWarning[0m for DAO in contract 'BdpCrud':
    |			var (, width, height) = BdpCalculator.calculateArea(_contracts, _regionId);
    |			var imageId = imageStorage.createImage(msg.sender, _regionId, uint16(width), uint16(height), 1, 1);
  > |			imageStorage.setImageData(imageId, 1, _imageData);
    |			_dataStorage.setRegionCurrentImageId(_regionId, imageId);
    |			imageStorage.setImageCurrentRegionId(imageId, _regionId);
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(1030)

[33mWarning[0m for DAO in contract 'BdpCrud':
    |			var imageId = imageStorage.createImage(msg.sender, _regionId, uint16(width), uint16(height), 1, 1);
    |			imageStorage.setImageData(imageId, 1, _imageData);
  > |			_dataStorage.setRegionCurrentImageId(_regionId, imageId);
    |			imageStorage.setImageCurrentRegionId(imageId, _regionId);
    |		}
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(1031)

[33mWarning[0m for DAO in contract 'BdpCrud':
    |			imageStorage.setImageData(imageId, 1, _imageData);
    |			_dataStorage.setRegionCurrentImageId(_regionId, imageId);
  > |			imageStorage.setImageCurrentRegionId(imageId, _regionId);
    |		}
    |
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(1032)

[33mWarning[0m for DAO in contract 'BdpCrud':
    |		if(_swapImages) {
    |			if(currentImageId != 0) {
  > |				imageStorage.setImageCurrentRegionId(currentImageId, 0);
    |			}
    |			var nextImageId = _dataStorage.getRegionNextImageId(_regionId);
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(1037)

[33mWarning[0m for DAO in contract 'BdpCrud':
    |				imageStorage.setImageCurrentRegionId(currentImageId, 0);
    |			}
  > |			var nextImageId = _dataStorage.getRegionNextImageId(_regionId);
    |			_dataStorage.setRegionCurrentImageId(_regionId, nextImageId);
    |			imageStorage.setImageCurrentRegionId(nextImageId, _regionId);
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(1039)

[33mWarning[0m for DAO in contract 'BdpCrud':
    |			}
    |			var nextImageId = _dataStorage.getRegionNextImageId(_regionId);
  > |			_dataStorage.setRegionCurrentImageId(_regionId, nextImageId);
    |			imageStorage.setImageCurrentRegionId(nextImageId, _regionId);
    |			_dataStorage.setRegionNextImageId(_regionId, 0);
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(1040)

[33mWarning[0m for DAO in contract 'BdpCrud':
    |			var nextImageId = _dataStorage.getRegionNextImageId(_regionId);
    |			_dataStorage.setRegionCurrentImageId(_regionId, nextImageId);
  > |			imageStorage.setImageCurrentRegionId(nextImageId, _regionId);
    |			_dataStorage.setRegionNextImageId(_regionId, 0);
    |		}
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(1041)

[33mWarning[0m for DAO in contract 'BdpCrud':
    |			_dataStorage.setRegionCurrentImageId(_regionId, nextImageId);
    |			imageStorage.setImageCurrentRegionId(nextImageId, _regionId);
  > |			_dataStorage.setRegionNextImageId(_regionId, 0);
    |		}
    |
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(1042)

[33mWarning[0m for DAO in contract 'BdpCrud':
    |		if(_clearImage) {
    |			if(currentImageId != 0) {
  > |				imageStorage.setImageCurrentRegionId(currentImageId, 0);
    |			}
    |			_dataStorage.setRegionCurrentImageId(_regionId, 0);
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(1047)

[33mWarning[0m for DAO in contract 'BdpCrud':
    |				imageStorage.setImageCurrentRegionId(currentImageId, 0);
    |			}
  > |			_dataStorage.setRegionCurrentImageId(_regionId, 0);
    |		}
    |	}
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(1049)

[33mWarning[0m for DAO in contract 'BdpCrud':
    |	function _updateRegionUrl(BdpDataStorage _dataStorage, uint256 _regionId, uint8[128] _url, bool _deleteUrl) internal {
    |		if(_url[0] != 0) {
  > |			_dataStorage.setRegionUrl(_regionId, _url);
    |		}
    |		if(_deleteUrl) {
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(1055)

[33mWarning[0m for DAO in contract 'BdpCrud':
    |		if(_deleteUrl) {
    |			uint8[128] memory emptyUrl;
  > |			_dataStorage.setRegionUrl(_regionId, emptyUrl);
    |		}
    |	}
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(1059)

[33mWarning[0m for DAOConstantGas in contract 'BdpCrud':
    |		if(msg.value > _updateFee) {
    |			var change = msg.value - _updateFee;
  > |			msg.sender.transfer(change);
    |		}
    |
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(1004)

[33mWarning[0m for DAOConstantGas in contract 'BdpCrud':
    |		var forwardUpdateFeesTo = BdpPriceStorage(BdpContracts.getBdpPriceStorage(_contracts)).getForwardUpdateFeesTo();
    |		if(forwardUpdateFeesTo != address(0)) {
  > |			forwardUpdateFeesTo.transfer(_updateFee);
    |		}
    |	}
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(1009)

[33mWarning[0m for LockedEther in contract 'BdpCrud':
    |}
    |
  > |library BdpCrud {
    |
    |	function createRegion(address[16] _contracts, address _to, uint256 _x1, uint256 _y1, uint256 _x2, uint256 _y2) public returns (uint256) {
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(923)

[33mWarning[0m for MissingInputValidation in contract 'BdpCrud':
    |	}
    |
  > |	function getBdpDataStorage(address[16] _contracts) pure internal returns (address) {
    |		return _contracts[4];
    |	}
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(17)

[33mWarning[0m for MissingInputValidation in contract 'BdpCrud':
    |	}
    |
  > |	function getBdpImageStorage(address[16] _contracts) pure internal returns (address) {
    |		return _contracts[5];
    |	}
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(21)

[33mWarning[0m for MissingInputValidation in contract 'BdpCrud':
    |	}
    |
  > |	function getBdpPriceStorage(address[16] _contracts) pure internal returns (address) {
    |		return _contracts[7];
    |	}
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(29)

[33mWarning[0m for MissingInputValidation in contract 'BdpCrud':
    |}
    |
  > |library BdpCrud {
    |
    |	function createRegion(address[16] _contracts, address _to, uint256 _x1, uint256 _y1, uint256 _x2, uint256 _y2) public returns (uint256) {
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(923)

[33mWarning[0m for MissingInputValidation in contract 'BdpCrud':
    |	}
    |
  > |	function _processUpdateFee(address[16] _contracts, uint256 _updateFee) internal {
    |		require(msg.value >= _updateFee);
    |
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(999)

[33mWarning[0m for MissingInputValidation in contract 'BdpCrud':
    |	}
    |
  > |	function _updateRegionImage(address[16] _contracts, BdpDataStorage _dataStorage, uint256 _regionId, uint256 _imageId, uint256[] _imageData, bool _swapImages, bool _clearImage) internal {
    |		var imageStorage = BdpImageStorage(BdpContracts.getBdpImageStorage(_contracts));
    |		var currentImageId = _dataStorage.getRegionCurrentImageId(_regionId);
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(1013)

[33mWarning[0m for MissingInputValidation in contract 'BdpCrud':
    |	}
    |
  > |	function _updateRegionUrl(BdpDataStorage _dataStorage, uint256 _regionId, uint8[128] _url, bool _deleteUrl) internal {
    |		if(_url[0] != 0) {
    |			_dataStorage.setRegionUrl(_regionId, _url);
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(1053)

[33mWarning[0m for MissingInputValidation in contract 'BdpCrud':
    |	}
    |
  > |	function _updateRegionOwner(address[16] _contracts, uint256 _regionId, address _newOwner) internal {
    |		if(_newOwner != address(0)) {
    |			BdpOwnership.clearApprovalAndTransfer(_contracts, msg.sender, _newOwner, _regionId);
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(1063)

[33mWarning[0m for TODAmount in contract 'BdpCrud':
    |		if(msg.value > _updateFee) {
    |			var change = msg.value - _updateFee;
  > |			msg.sender.transfer(change);
    |		}
    |
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(1004)

[33mWarning[0m for TODReceiver in contract 'BdpCrud':
    |		if(msg.value > _updateFee) {
    |			var change = msg.value - _updateFee;
  > |			msg.sender.transfer(change);
    |		}
    |
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(1004)

[33mWarning[0m for UnhandledException in contract 'BdpCrud':
    |		require(_y2 < 1000 && _y1 <= _y2);
    |
  > |		var regionId = dataStorage.getNextRegionId();
    |		dataStorage.setRegionCoordinates(regionId, _x1, _y1, _x2, _y2);
    |		dataStorage.setRegionBlockUpdatedAt(regionId, block.number);
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(930)

[33mWarning[0m for UnhandledException in contract 'BdpCrud':
    |
    |		var regionId = dataStorage.getNextRegionId();
  > |		dataStorage.setRegionCoordinates(regionId, _x1, _y1, _x2, _y2);
    |		dataStorage.setRegionBlockUpdatedAt(regionId, block.number);
    |		dataStorage.setRegionUpdatedAt(regionId, block.timestamp);
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(931)

[33mWarning[0m for UnhandledException in contract 'BdpCrud':
    |		var regionId = dataStorage.getNextRegionId();
    |		dataStorage.setRegionCoordinates(regionId, _x1, _y1, _x2, _y2);
  > |		dataStorage.setRegionBlockUpdatedAt(regionId, block.number);
    |		dataStorage.setRegionUpdatedAt(regionId, block.timestamp);
    |
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(932)

[33mWarning[0m for UnhandledException in contract 'BdpCrud':
    |		dataStorage.setRegionCoordinates(regionId, _x1, _y1, _x2, _y2);
    |		dataStorage.setRegionBlockUpdatedAt(regionId, block.number);
  > |		dataStorage.setRegionUpdatedAt(regionId, block.timestamp);
    |
    |		BdpOwnership.mint(_contracts, _to, regionId);
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(933)

[33mWarning[0m for UnhandledException in contract 'BdpCrud':
    |	function deleteRegion(address[16] _contracts, uint256 _regionId) public {
    |		var dataStorage = BdpDataStorage(BdpContracts.getBdpDataStorage(_contracts));
  > |		var regionPurchasePixelPrice = dataStorage.getRegionPurchasePixelPrice(_regionId);
    |		require(regionPurchasePixelPrice == 0);
    |		BdpOwnership.burn(_contracts, _regionId);
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(942)

[33mWarning[0m for UnhandledException in contract 'BdpCrud':
    |		require(regionPurchasePixelPrice == 0);
    |		BdpOwnership.burn(_contracts, _regionId);
  > |		dataStorage.deleteRegionData(_regionId);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(945)

[33mWarning[0m for UnhandledException in contract 'BdpCrud':
    |		_updateRegionUrl(dataStorage, _regionId, _url, false);
    |
  > |		dataStorage.setRegionBlockUpdatedAt(_regionId, block.number);
    |		dataStorage.setRegionUpdatedAt(_regionId, block.timestamp);
    |	}
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(958)

[33mWarning[0m for UnhandledException in contract 'BdpCrud':
    |
    |		dataStorage.setRegionBlockUpdatedAt(_regionId, block.number);
  > |		dataStorage.setRegionUpdatedAt(_regionId, block.timestamp);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(959)

[33mWarning[0m for UnhandledException in contract 'BdpCrud':
    |		require(BdpOwnership.ownerOf(_contracts, _regionId) == msg.sender);
    |		BdpImage.checkImageInput(_contracts, _regionId, _imageId, _imageData, _swapImages, _clearImage);
  > |		var regionCurrentPixelPrice = dataStorage.getRegionCurrentPixelPrice(_regionId);
    |		require(regionCurrentPixelPrice != 0); // region was purchased
    |
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(966)

[33mWarning[0m for UnhandledException in contract 'BdpCrud':
    |		_updateRegionOwner(_contracts, _regionId, _newOwner);
    |		if(marketPixelPrice > regionCurrentPixelPrice) {
  > |			dataStorage.setRegionCurrentPixelPrice(_regionId, marketPixelPrice);
    |		}
    |		dataStorage.setRegionBlockUpdatedAt(_regionId, block.number);
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(978)

[33mWarning[0m for UnhandledException in contract 'BdpCrud':
    |			dataStorage.setRegionCurrentPixelPrice(_regionId, marketPixelPrice);
    |		}
  > |		dataStorage.setRegionBlockUpdatedAt(_regionId, block.number);
    |		dataStorage.setRegionUpdatedAt(_regionId, block.timestamp);
    |	}
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(980)

[33mWarning[0m for UnhandledException in contract 'BdpCrud':
    |		}
    |		dataStorage.setRegionBlockUpdatedAt(_regionId, block.number);
  > |		dataStorage.setRegionUpdatedAt(_regionId, block.timestamp);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(981)

[33mWarning[0m for UnhandledException in contract 'BdpCrud':
    |		var dataStorage = BdpDataStorage(BdpContracts.getBdpDataStorage(_contracts));
    |		require(BdpOwnership.ownerOf(_contracts, _regionId) == msg.sender);
  > |		var regionCurrentPixelPrice = dataStorage.getRegionCurrentPixelPrice(_regionId);
    |		require(regionCurrentPixelPrice != 0); // region was purchased
    |
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(987)

[33mWarning[0m for UnhandledException in contract 'BdpCrud':
    |		_processUpdateFee(_contracts, _pixelPrice * area / 20);
    |
  > |		dataStorage.setRegionCurrentPixelPrice(_regionId, _pixelPrice);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(996)

[33mWarning[0m for UnhandledException in contract 'BdpCrud':
    |		if(msg.value > _updateFee) {
    |			var change = msg.value - _updateFee;
  > |			msg.sender.transfer(change);
    |		}
    |
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(1004)

[33mWarning[0m for UnhandledException in contract 'BdpCrud':
    |		}
    |
  > |		var forwardUpdateFeesTo = BdpPriceStorage(BdpContracts.getBdpPriceStorage(_contracts)).getForwardUpdateFeesTo();
    |		if(forwardUpdateFeesTo != address(0)) {
    |			forwardUpdateFeesTo.transfer(_updateFee);
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(1007)

[33mWarning[0m for UnhandledException in contract 'BdpCrud':
    |		var forwardUpdateFeesTo = BdpPriceStorage(BdpContracts.getBdpPriceStorage(_contracts)).getForwardUpdateFeesTo();
    |		if(forwardUpdateFeesTo != address(0)) {
  > |			forwardUpdateFeesTo.transfer(_updateFee);
    |		}
    |	}
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(1009)

[33mWarning[0m for UnhandledException in contract 'BdpCrud':
    |	function _updateRegionImage(address[16] _contracts, BdpDataStorage _dataStorage, uint256 _regionId, uint256 _imageId, uint256[] _imageData, bool _swapImages, bool _clearImage) internal {
    |		var imageStorage = BdpImageStorage(BdpContracts.getBdpImageStorage(_contracts));
  > |		var currentImageId = _dataStorage.getRegionCurrentImageId(_regionId);
    |		if(_imageId != 0) {
    |			if(currentImageId != 0) {
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(1015)

[33mWarning[0m for UnhandledException in contract 'BdpCrud':
    |		if(_imageId != 0) {
    |			if(currentImageId != 0) {
  > |				imageStorage.setImageCurrentRegionId(currentImageId, 0);
    |			}
    |			_dataStorage.setRegionCurrentImageId(_regionId, _imageId);
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(1018)

[33mWarning[0m for UnhandledException in contract 'BdpCrud':
    |				imageStorage.setImageCurrentRegionId(currentImageId, 0);
    |			}
  > |			_dataStorage.setRegionCurrentImageId(_regionId, _imageId);
    |			imageStorage.setImageCurrentRegionId(_imageId, _regionId);
    |		}
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(1020)

[33mWarning[0m for UnhandledException in contract 'BdpCrud':
    |			}
    |			_dataStorage.setRegionCurrentImageId(_regionId, _imageId);
  > |			imageStorage.setImageCurrentRegionId(_imageId, _regionId);
    |		}
    |
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(1021)

[33mWarning[0m for UnhandledException in contract 'BdpCrud':
    |		if(_imageData.length > 0) {
    |			if(currentImageId != 0) {
  > |				imageStorage.setImageCurrentRegionId(currentImageId, 0);
    |			}
    |			var (, width, height) = BdpCalculator.calculateArea(_contracts, _regionId);
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(1026)

[33mWarning[0m for UnhandledException in contract 'BdpCrud':
    |			}
    |			var (, width, height) = BdpCalculator.calculateArea(_contracts, _regionId);
  > |			var imageId = imageStorage.createImage(msg.sender, _regionId, uint16(width), uint16(height), 1, 1);
    |			imageStorage.setImageData(imageId, 1, _imageData);
    |			_dataStorage.setRegionCurrentImageId(_regionId, imageId);
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(1029)

[33mWarning[0m for UnhandledException in contract 'BdpCrud':
    |			var (, width, height) = BdpCalculator.calculateArea(_contracts, _regionId);
    |			var imageId = imageStorage.createImage(msg.sender, _regionId, uint16(width), uint16(height), 1, 1);
  > |			imageStorage.setImageData(imageId, 1, _imageData);
    |			_dataStorage.setRegionCurrentImageId(_regionId, imageId);
    |			imageStorage.setImageCurrentRegionId(imageId, _regionId);
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(1030)

[33mWarning[0m for UnhandledException in contract 'BdpCrud':
    |			var imageId = imageStorage.createImage(msg.sender, _regionId, uint16(width), uint16(height), 1, 1);
    |			imageStorage.setImageData(imageId, 1, _imageData);
  > |			_dataStorage.setRegionCurrentImageId(_regionId, imageId);
    |			imageStorage.setImageCurrentRegionId(imageId, _regionId);
    |		}
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(1031)

[33mWarning[0m for UnhandledException in contract 'BdpCrud':
    |			imageStorage.setImageData(imageId, 1, _imageData);
    |			_dataStorage.setRegionCurrentImageId(_regionId, imageId);
  > |			imageStorage.setImageCurrentRegionId(imageId, _regionId);
    |		}
    |
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(1032)

[33mWarning[0m for UnhandledException in contract 'BdpCrud':
    |		if(_swapImages) {
    |			if(currentImageId != 0) {
  > |				imageStorage.setImageCurrentRegionId(currentImageId, 0);
    |			}
    |			var nextImageId = _dataStorage.getRegionNextImageId(_regionId);
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(1037)

[33mWarning[0m for UnhandledException in contract 'BdpCrud':
    |				imageStorage.setImageCurrentRegionId(currentImageId, 0);
    |			}
  > |			var nextImageId = _dataStorage.getRegionNextImageId(_regionId);
    |			_dataStorage.setRegionCurrentImageId(_regionId, nextImageId);
    |			imageStorage.setImageCurrentRegionId(nextImageId, _regionId);
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(1039)

[33mWarning[0m for UnhandledException in contract 'BdpCrud':
    |			}
    |			var nextImageId = _dataStorage.getRegionNextImageId(_regionId);
  > |			_dataStorage.setRegionCurrentImageId(_regionId, nextImageId);
    |			imageStorage.setImageCurrentRegionId(nextImageId, _regionId);
    |			_dataStorage.setRegionNextImageId(_regionId, 0);
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(1040)

[33mWarning[0m for UnhandledException in contract 'BdpCrud':
    |			var nextImageId = _dataStorage.getRegionNextImageId(_regionId);
    |			_dataStorage.setRegionCurrentImageId(_regionId, nextImageId);
  > |			imageStorage.setImageCurrentRegionId(nextImageId, _regionId);
    |			_dataStorage.setRegionNextImageId(_regionId, 0);
    |		}
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(1041)

[33mWarning[0m for UnhandledException in contract 'BdpCrud':
    |			_dataStorage.setRegionCurrentImageId(_regionId, nextImageId);
    |			imageStorage.setImageCurrentRegionId(nextImageId, _regionId);
  > |			_dataStorage.setRegionNextImageId(_regionId, 0);
    |		}
    |
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(1042)

[33mWarning[0m for UnhandledException in contract 'BdpCrud':
    |		if(_clearImage) {
    |			if(currentImageId != 0) {
  > |				imageStorage.setImageCurrentRegionId(currentImageId, 0);
    |			}
    |			_dataStorage.setRegionCurrentImageId(_regionId, 0);
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(1047)

[33mWarning[0m for UnhandledException in contract 'BdpCrud':
    |				imageStorage.setImageCurrentRegionId(currentImageId, 0);
    |			}
  > |			_dataStorage.setRegionCurrentImageId(_regionId, 0);
    |		}
    |	}
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(1049)

[33mWarning[0m for UnhandledException in contract 'BdpCrud':
    |	function _updateRegionUrl(BdpDataStorage _dataStorage, uint256 _regionId, uint8[128] _url, bool _deleteUrl) internal {
    |		if(_url[0] != 0) {
  > |			_dataStorage.setRegionUrl(_regionId, _url);
    |		}
    |		if(_deleteUrl) {
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(1055)

[33mWarning[0m for UnhandledException in contract 'BdpCrud':
    |		if(_deleteUrl) {
    |			uint8[128] memory emptyUrl;
  > |			_dataStorage.setRegionUrl(_regionId, emptyUrl);
    |		}
    |	}
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(1059)

[31mViolation[0m for UnrestrictedEtherFlow in contract 'BdpCrud':
    |		if(msg.value > _updateFee) {
    |			var change = msg.value - _updateFee;
  > |			msg.sender.transfer(change);
    |		}
    |
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(1004)

[31mViolation[0m for LockedEther in contract 'BdpDataStorage':
    |}
    |
  > |contract BdpDataStorage is BdpBase {
    |
    |	using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(154)

[33mWarning[0m for UnrestrictedWrite in contract 'BdpDataStorage':
    |	function setOwner(address _newOwner) external onlyOwner {
    |		require(_newOwner != address(0));
  > |		ownerAddress = _newOwner;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(78)

[33mWarning[0m for UnrestrictedWrite in contract 'BdpDataStorage':
    |	function setManager(address _newManager) external onlyOwner {
    |		require(_newManager != address(0));
  > |		managerAddress = _newManager;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'BdpDataStorage':
    |
    |	function pause() external onlyAuthorized {
  > |		paused = true;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(91)

[33mWarning[0m for UnrestrictedWrite in contract 'BdpDataStorage':
    |
    |	function unpause() external onlyOwner {
  > |		paused = false;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(95)

[33mWarning[0m for UnrestrictedWrite in contract 'BdpDataStorage':
    |
    |	function setSetupComplete() external onlyOwner {
  > |		setupComplete = true;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(99)

[33mWarning[0m for DAO in contract 'BdpImage':
    |
    |		require(_imageId == 0 || // Can use only own images not used by other regions
  > |			( (msg.sender == imageStorage.getImageOwner(_imageId)) && (imageStorage.getImageCurrentRegionId(_imageId) == 0) ) );
    |
    |		var nextImageId = dataStorage.getRegionNextImageId(_regionId);
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(713)

[33mWarning[0m for DAO in contract 'BdpImage':
    |			( (msg.sender == imageStorage.getImageOwner(_imageId)) && (imageStorage.getImageCurrentRegionId(_imageId) == 0) ) );
    |
  > |		var nextImageId = dataStorage.getRegionNextImageId(_regionId);
    |		require(!_swapImages || imageStorage.imageUploadComplete(nextImageId)); // Can swap images if next image upload is complete
    |	}
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(715)

[33mWarning[0m for DAO in contract 'BdpImage':
    |
    |		var nextImageId = dataStorage.getRegionNextImageId(_regionId);
  > |		require(!_swapImages || imageStorage.imageUploadComplete(nextImageId)); // Can swap images if next image upload is complete
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(716)

[33mWarning[0m for DAO in contract 'BdpImage':
    |		require(_part <= _partsCount);
    |
  > |		var nextImageId = dataStorage.getRegionNextImageId(_regionId);
    |		if(nextImageId == 0 || _imageDescriptor != imageStorage.getImageDescriptor(nextImageId)) {
    |			var (, width, height) = BdpCalculator.calculateArea(_contracts, _regionId);
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(728)

[33mWarning[0m for DAO in contract 'BdpImage':
    |
    |		var nextImageId = dataStorage.getRegionNextImageId(_regionId);
  > |		if(nextImageId == 0 || _imageDescriptor != imageStorage.getImageDescriptor(nextImageId)) {
    |			var (, width, height) = BdpCalculator.calculateArea(_contracts, _regionId);
    |			nextImageId = imageStorage.createImage(msg.sender, _regionId, uint16(width), uint16(height), _partsCount, _imageDescriptor);
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(729)

[33mWarning[0m for DAO in contract 'BdpImage':
    |		if(nextImageId == 0 || _imageDescriptor != imageStorage.getImageDescriptor(nextImageId)) {
    |			var (, width, height) = BdpCalculator.calculateArea(_contracts, _regionId);
  > |			nextImageId = imageStorage.createImage(msg.sender, _regionId, uint16(width), uint16(height), _partsCount, _imageDescriptor);
    |			dataStorage.setRegionNextImageId(_regionId, nextImageId);
    |		}
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(731)

[33mWarning[0m for DAO in contract 'BdpImage':
    |			var (, width, height) = BdpCalculator.calculateArea(_contracts, _regionId);
    |			nextImageId = imageStorage.createImage(msg.sender, _regionId, uint16(width), uint16(height), _partsCount, _imageDescriptor);
  > |			dataStorage.setRegionNextImageId(_regionId, nextImageId);
    |		}
    |
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(732)

[33mWarning[0m for DAO in contract 'BdpImage':
    |		}
    |
  > |		imageStorage.setImageData(nextImageId, _part, _imageData);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(735)

[33mWarning[0m for DAO in contract 'BdpImage':
    |	function setImageOwner(address[16] _contracts, uint256 _imageId, address _owner) public {
    |		var imageStorage = BdpImageStorage(BdpContracts.getBdpImageStorage(_contracts));
  > |		require(imageStorage.getImageOwner(_imageId) == msg.sender);
    |		require(_owner != address(0));
    |
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(740)

[33mWarning[0m for DAO in contract 'BdpImage':
    |		require(_owner != address(0));
    |
  > |		imageStorage.setImageOwner(_imageId, _owner);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(743)

[33mWarning[0m for DAO in contract 'BdpImage':
    |	function setImageData(address[16] _contracts, uint256 _imageId, uint16 _part, uint256[] _imageData) public returns (address) {
    |		var imageStorage = BdpImageStorage(BdpContracts.getBdpImageStorage(_contracts));
  > |		require(imageStorage.getImageOwner(_imageId) == msg.sender);
    |		require(imageStorage.getImageCurrentRegionId(_imageId) == 0);
    |		require(_imageData.length != 0);
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(748)

[33mWarning[0m for DAO in contract 'BdpImage':
    |		var imageStorage = BdpImageStorage(BdpContracts.getBdpImageStorage(_contracts));
    |		require(imageStorage.getImageOwner(_imageId) == msg.sender);
  > |		require(imageStorage.getImageCurrentRegionId(_imageId) == 0);
    |		require(_imageData.length != 0);
    |		require(_part > 0);
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(749)

[33mWarning[0m for DAO in contract 'BdpImage':
    |		require(_imageData.length != 0);
    |		require(_part > 0);
  > |		require(_part <= imageStorage.getImagePartsCount(_imageId));
    |
    |		imageStorage.setImageData(_imageId, _part, _imageData);
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(752)

[33mWarning[0m for DAO in contract 'BdpImage':
    |		require(_part <= imageStorage.getImagePartsCount(_imageId));
    |
  > |		imageStorage.setImageData(_imageId, _part, _imageData);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(754)

[33mWarning[0m for MissingInputValidation in contract 'BdpImage':
    |	}
    |
  > |	function getBdpDataStorage(address[16] _contracts) pure internal returns (address) {
    |		return _contracts[4];
    |	}
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(17)

[33mWarning[0m for MissingInputValidation in contract 'BdpImage':
    |	}
    |
  > |	function getBdpImageStorage(address[16] _contracts) pure internal returns (address) {
    |		return _contracts[5];
    |	}
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(21)

[33mWarning[0m for UnhandledException in contract 'BdpImage':
    |
    |		require(_imageId == 0 || // Can use only own images not used by other regions
  > |			( (msg.sender == imageStorage.getImageOwner(_imageId)) && (imageStorage.getImageCurrentRegionId(_imageId) == 0) ) );
    |
    |		var nextImageId = dataStorage.getRegionNextImageId(_regionId);
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(713)

[33mWarning[0m for UnhandledException in contract 'BdpImage':
    |			( (msg.sender == imageStorage.getImageOwner(_imageId)) && (imageStorage.getImageCurrentRegionId(_imageId) == 0) ) );
    |
  > |		var nextImageId = dataStorage.getRegionNextImageId(_regionId);
    |		require(!_swapImages || imageStorage.imageUploadComplete(nextImageId)); // Can swap images if next image upload is complete
    |	}
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(715)

[33mWarning[0m for UnhandledException in contract 'BdpImage':
    |
    |		var nextImageId = dataStorage.getRegionNextImageId(_regionId);
  > |		require(!_swapImages || imageStorage.imageUploadComplete(nextImageId)); // Can swap images if next image upload is complete
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(716)

[33mWarning[0m for UnhandledException in contract 'BdpImage':
    |		require(_part <= _partsCount);
    |
  > |		var nextImageId = dataStorage.getRegionNextImageId(_regionId);
    |		if(nextImageId == 0 || _imageDescriptor != imageStorage.getImageDescriptor(nextImageId)) {
    |			var (, width, height) = BdpCalculator.calculateArea(_contracts, _regionId);
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(728)

[33mWarning[0m for UnhandledException in contract 'BdpImage':
    |
    |		var nextImageId = dataStorage.getRegionNextImageId(_regionId);
  > |		if(nextImageId == 0 || _imageDescriptor != imageStorage.getImageDescriptor(nextImageId)) {
    |			var (, width, height) = BdpCalculator.calculateArea(_contracts, _regionId);
    |			nextImageId = imageStorage.createImage(msg.sender, _regionId, uint16(width), uint16(height), _partsCount, _imageDescriptor);
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(729)

[33mWarning[0m for UnhandledException in contract 'BdpImage':
    |		if(nextImageId == 0 || _imageDescriptor != imageStorage.getImageDescriptor(nextImageId)) {
    |			var (, width, height) = BdpCalculator.calculateArea(_contracts, _regionId);
  > |			nextImageId = imageStorage.createImage(msg.sender, _regionId, uint16(width), uint16(height), _partsCount, _imageDescriptor);
    |			dataStorage.setRegionNextImageId(_regionId, nextImageId);
    |		}
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(731)

[33mWarning[0m for UnhandledException in contract 'BdpImage':
    |			var (, width, height) = BdpCalculator.calculateArea(_contracts, _regionId);
    |			nextImageId = imageStorage.createImage(msg.sender, _regionId, uint16(width), uint16(height), _partsCount, _imageDescriptor);
  > |			dataStorage.setRegionNextImageId(_regionId, nextImageId);
    |		}
    |
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(732)

[33mWarning[0m for UnhandledException in contract 'BdpImage':
    |		}
    |
  > |		imageStorage.setImageData(nextImageId, _part, _imageData);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(735)

[33mWarning[0m for UnhandledException in contract 'BdpImage':
    |	function setImageOwner(address[16] _contracts, uint256 _imageId, address _owner) public {
    |		var imageStorage = BdpImageStorage(BdpContracts.getBdpImageStorage(_contracts));
  > |		require(imageStorage.getImageOwner(_imageId) == msg.sender);
    |		require(_owner != address(0));
    |
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(740)

[33mWarning[0m for UnhandledException in contract 'BdpImage':
    |		require(_owner != address(0));
    |
  > |		imageStorage.setImageOwner(_imageId, _owner);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(743)

[33mWarning[0m for UnhandledException in contract 'BdpImage':
    |	function setImageData(address[16] _contracts, uint256 _imageId, uint16 _part, uint256[] _imageData) public returns (address) {
    |		var imageStorage = BdpImageStorage(BdpContracts.getBdpImageStorage(_contracts));
  > |		require(imageStorage.getImageOwner(_imageId) == msg.sender);
    |		require(imageStorage.getImageCurrentRegionId(_imageId) == 0);
    |		require(_imageData.length != 0);
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(748)

[33mWarning[0m for UnhandledException in contract 'BdpImage':
    |		var imageStorage = BdpImageStorage(BdpContracts.getBdpImageStorage(_contracts));
    |		require(imageStorage.getImageOwner(_imageId) == msg.sender);
  > |		require(imageStorage.getImageCurrentRegionId(_imageId) == 0);
    |		require(_imageData.length != 0);
    |		require(_part > 0);
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(749)

[33mWarning[0m for UnhandledException in contract 'BdpImage':
    |		require(_imageData.length != 0);
    |		require(_part > 0);
  > |		require(_part <= imageStorage.getImagePartsCount(_imageId));
    |
    |		imageStorage.setImageData(_imageId, _part, _imageData);
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(752)

[33mWarning[0m for UnhandledException in contract 'BdpImage':
    |		require(_part <= imageStorage.getImagePartsCount(_imageId));
    |
  > |		imageStorage.setImageData(_imageId, _part, _imageData);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(754)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BdpImage':
    |
    |		require(_imageId == 0 || // Can use only own images not used by other regions
  > |			( (msg.sender == imageStorage.getImageOwner(_imageId)) && (imageStorage.getImageCurrentRegionId(_imageId) == 0) ) );
    |
    |		var nextImageId = dataStorage.getRegionNextImageId(_regionId);
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(713)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BdpImage':
    |		require(_owner != address(0));
    |
  > |		imageStorage.setImageOwner(_imageId, _owner);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(743)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BdpImage':
    |		var imageStorage = BdpImageStorage(BdpContracts.getBdpImageStorage(_contracts));
    |		require(imageStorage.getImageOwner(_imageId) == msg.sender);
  > |		require(imageStorage.getImageCurrentRegionId(_imageId) == 0);
    |		require(_imageData.length != 0);
    |		require(_part > 0);
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(749)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BdpImage':
    |		require(_imageData.length != 0);
    |		require(_part > 0);
  > |		require(_part <= imageStorage.getImagePartsCount(_imageId));
    |
    |		imageStorage.setImageData(_imageId, _part, _imageData);
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(752)

[31mViolation[0m for LockedEther in contract 'BdpImageStorage':
    |}
    |
  > |contract BdpImageStorage is BdpBase {
    |
    |	using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(278)

[33mWarning[0m for UnrestrictedWrite in contract 'BdpImageStorage':
    |	function setOwner(address _newOwner) external onlyOwner {
    |		require(_newOwner != address(0));
  > |		ownerAddress = _newOwner;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(78)

[33mWarning[0m for UnrestrictedWrite in contract 'BdpImageStorage':
    |	function setManager(address _newManager) external onlyOwner {
    |		require(_newManager != address(0));
  > |		managerAddress = _newManager;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'BdpImageStorage':
    |
    |	function pause() external onlyAuthorized {
  > |		paused = true;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(91)

[33mWarning[0m for UnrestrictedWrite in contract 'BdpImageStorage':
    |
    |	function unpause() external onlyOwner {
  > |		paused = false;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(95)

[33mWarning[0m for UnrestrictedWrite in contract 'BdpImageStorage':
    |
    |	function setSetupComplete() external onlyOwner {
  > |		setupComplete = true;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(99)

[31mViolation[0m for LockedEther in contract 'BdpOwnership':
    |}
    |
  > |library BdpOwnership {
    |
    |	using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(759)

[33mWarning[0m for UnhandledException in contract 'BdpOwnership':
    |
    |	function ownerOf(address[16] _contracts, uint256 _tokenId) public view returns (address) {
  > |		var owner = BdpOwnershipStorage(BdpContracts.getBdpOwnershipStorage(_contracts)).getTokenOwner(_tokenId);
    |		require(owner != address(0));
    |		return owner;
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(768)

[33mWarning[0m for UnhandledException in contract 'BdpOwnership':
    |
    |	function balanceOf(address[16] _contracts, address _owner) public view returns (uint256) {
  > |		return BdpOwnershipStorage(BdpContracts.getBdpOwnershipStorage(_contracts)).getOwnedTokensLength(_owner);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(774)

[33mWarning[0m for UnhandledException in contract 'BdpOwnership':
    |		address owner = ownerOf(_contracts, _tokenId);
    |		require(_to != owner);
  > |		if (ownStorage.getTokenApproval(_tokenId) != 0 || _to != 0) {
    |			ownStorage.setTokenApproval(_tokenId, _to);
    |			Approval(owner, _to, _tokenId);
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(782)

[33mWarning[0m for UnhandledException in contract 'BdpOwnership':
    |		require(_to != owner);
    |		if (ownStorage.getTokenApproval(_tokenId) != 0 || _to != 0) {
  > |			ownStorage.setTokenApproval(_tokenId, _to);
    |			Approval(owner, _to, _tokenId);
    |		}
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(783)

[33mWarning[0m for UnhandledException in contract 'BdpOwnership':
    |
    |		require(ownerOf(_contracts, _tokenId) == _owner);
  > |		if (ownStorage.getTokenApproval(_tokenId) != 0) {
    |			BdpOwnershipStorage(BdpContracts.getBdpOwnershipStorage(_contracts)).setTokenApproval(_tokenId, 0);
    |			Approval(_owner, 0, _tokenId);
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(796)

[33mWarning[0m for UnhandledException in contract 'BdpOwnership':
    |		require(ownerOf(_contracts, _tokenId) == _owner);
    |		if (ownStorage.getTokenApproval(_tokenId) != 0) {
  > |			BdpOwnershipStorage(BdpContracts.getBdpOwnershipStorage(_contracts)).setTokenApproval(_tokenId, 0);
    |			Approval(_owner, 0, _tokenId);
    |		}
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(797)

[33mWarning[0m for UnhandledException in contract 'BdpOwnership':
    |		var ownStorage = BdpOwnershipStorage(BdpContracts.getBdpOwnershipStorage(_contracts));
    |
  > |		require(ownStorage.getTokenOwner(_tokenId) == address(0));
    |
    |		// Set token owner
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(827)

[33mWarning[0m for UnhandledException in contract 'BdpOwnership':
    |
    |		// Set token owner
  > |		ownStorage.setTokenOwner(_tokenId, _to);
    |
    |		// Add token to tokenIds list
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(830)

[33mWarning[0m for UnhandledException in contract 'BdpOwnership':
    |
    |		// Add token to tokenIds list
  > |		var tokenIdsLength = ownStorage.pushTokenId(_tokenId);
    |		ownStorage.setTokenIdsIndex(_tokenId, tokenIdsLength.sub(1));
    |
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(833)

[33mWarning[0m for UnhandledException in contract 'BdpOwnership':
    |		// Add token to tokenIds list
    |		var tokenIdsLength = ownStorage.pushTokenId(_tokenId);
  > |		ownStorage.setTokenIdsIndex(_tokenId, tokenIdsLength.sub(1));
    |
    |		uint256 ownedTokensLength = ownStorage.getOwnedTokensLength(_to);
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(834)

[33mWarning[0m for UnhandledException in contract 'BdpOwnership':
    |		ownStorage.setTokenIdsIndex(_tokenId, tokenIdsLength.sub(1));
    |
  > |		uint256 ownedTokensLength = ownStorage.getOwnedTokensLength(_to);
    |
    |		// Add token to ownedTokens list
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(836)

[33mWarning[0m for UnhandledException in contract 'BdpOwnership':
    |
    |		// Add token to ownedTokens list
  > |		ownStorage.pushOwnedToken(_to, _tokenId);
    |		ownStorage.setOwnedTokensIndex(_tokenId, ownedTokensLength);
    |
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(839)

[33mWarning[0m for UnhandledException in contract 'BdpOwnership':
    |		// Add token to ownedTokens list
    |		ownStorage.pushOwnedToken(_to, _tokenId);
  > |		ownStorage.setOwnedTokensIndex(_tokenId, ownedTokensLength);
    |
    |		// Increment total owned area
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(840)

[33mWarning[0m for UnhandledException in contract 'BdpOwnership':
    |		// Increment total owned area
    |		var (area,,) = BdpCalculator.calculateArea(_contracts, _tokenId);
  > |		ownStorage.incrementOwnedArea(_to, area);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(844)

[33mWarning[0m for UnhandledException in contract 'BdpOwnership':
    |
    |		// Clear token owner
  > |		ownStorage.setTokenOwner(_tokenId, 0);
    |
    |		removeFromTokenIds(ownStorage, _tokenId);
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(858)

[33mWarning[0m for UnhandledException in contract 'BdpOwnership':
    |		// Decrement total owned area
    |		var (area,,) = BdpCalculator.calculateArea(_contracts, _tokenId);
  > |		ownStorage.decrementOwnedArea(_from, area);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(865)

[33mWarning[0m for UnhandledException in contract 'BdpOwnership':
    |	 */
    |	function removeFromOwnedToken(BdpOwnershipStorage _ownStorage, address _from, uint256 _tokenId) private {
  > |		var ownedTokenIndex = _ownStorage.getOwnedTokensIndex(_tokenId);
    |		var lastOwnedTokenIndex = _ownStorage.getOwnedTokensLength(_from).sub(1);
    |		var lastOwnedToken = _ownStorage.getOwnedToken(_from, lastOwnedTokenIndex);
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(875)

[33mWarning[0m for UnhandledException in contract 'BdpOwnership':
    |	function removeFromOwnedToken(BdpOwnershipStorage _ownStorage, address _from, uint256 _tokenId) private {
    |		var ownedTokenIndex = _ownStorage.getOwnedTokensIndex(_tokenId);
  > |		var lastOwnedTokenIndex = _ownStorage.getOwnedTokensLength(_from).sub(1);
    |		var lastOwnedToken = _ownStorage.getOwnedToken(_from, lastOwnedTokenIndex);
    |		_ownStorage.setOwnedToken(_from, ownedTokenIndex, lastOwnedToken);
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(876)

[33mWarning[0m for UnhandledException in contract 'BdpOwnership':
    |		var ownedTokenIndex = _ownStorage.getOwnedTokensIndex(_tokenId);
    |		var lastOwnedTokenIndex = _ownStorage.getOwnedTokensLength(_from).sub(1);
  > |		var lastOwnedToken = _ownStorage.getOwnedToken(_from, lastOwnedTokenIndex);
    |		_ownStorage.setOwnedToken(_from, ownedTokenIndex, lastOwnedToken);
    |		_ownStorage.setOwnedToken(_from, lastOwnedTokenIndex, 0);
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(877)

[33mWarning[0m for UnhandledException in contract 'BdpOwnership':
    |		var lastOwnedTokenIndex = _ownStorage.getOwnedTokensLength(_from).sub(1);
    |		var lastOwnedToken = _ownStorage.getOwnedToken(_from, lastOwnedTokenIndex);
  > |		_ownStorage.setOwnedToken(_from, ownedTokenIndex, lastOwnedToken);
    |		_ownStorage.setOwnedToken(_from, lastOwnedTokenIndex, 0);
    |		_ownStorage.decrementOwnedTokensLength(_from);
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(878)

[33mWarning[0m for UnhandledException in contract 'BdpOwnership':
    |		var lastOwnedToken = _ownStorage.getOwnedToken(_from, lastOwnedTokenIndex);
    |		_ownStorage.setOwnedToken(_from, ownedTokenIndex, lastOwnedToken);
  > |		_ownStorage.setOwnedToken(_from, lastOwnedTokenIndex, 0);
    |		_ownStorage.decrementOwnedTokensLength(_from);
    |		_ownStorage.setOwnedTokensIndex(_tokenId, 0);
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(879)

[33mWarning[0m for UnhandledException in contract 'BdpOwnership':
    |		_ownStorage.setOwnedToken(_from, ownedTokenIndex, lastOwnedToken);
    |		_ownStorage.setOwnedToken(_from, lastOwnedTokenIndex, 0);
  > |		_ownStorage.decrementOwnedTokensLength(_from);
    |		_ownStorage.setOwnedTokensIndex(_tokenId, 0);
    |		_ownStorage.setOwnedTokensIndex(lastOwnedToken, ownedTokenIndex);
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(880)

[33mWarning[0m for UnhandledException in contract 'BdpOwnership':
    |		_ownStorage.setOwnedToken(_from, lastOwnedTokenIndex, 0);
    |		_ownStorage.decrementOwnedTokensLength(_from);
  > |		_ownStorage.setOwnedTokensIndex(_tokenId, 0);
    |		_ownStorage.setOwnedTokensIndex(lastOwnedToken, ownedTokenIndex);
    |	}
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(881)

[33mWarning[0m for UnhandledException in contract 'BdpOwnership':
    |		_ownStorage.decrementOwnedTokensLength(_from);
    |		_ownStorage.setOwnedTokensIndex(_tokenId, 0);
  > |		_ownStorage.setOwnedTokensIndex(lastOwnedToken, ownedTokenIndex);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(882)

[33mWarning[0m for UnhandledException in contract 'BdpOwnership':
    |	 */
    |	function removeFromTokenIds(BdpOwnershipStorage _ownStorage, uint256 _tokenId) private {
  > |		var tokenIndex = _ownStorage.getTokenIdsIndex(_tokenId);
    |		var lastTokenIdIndex = _ownStorage.getTokenIdsLength().sub(1);
    |		var lastTokenId = _ownStorage.getTokenIdByIndex(lastTokenIdIndex);
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(889)

[33mWarning[0m for UnhandledException in contract 'BdpOwnership':
    |	function removeFromTokenIds(BdpOwnershipStorage _ownStorage, uint256 _tokenId) private {
    |		var tokenIndex = _ownStorage.getTokenIdsIndex(_tokenId);
  > |		var lastTokenIdIndex = _ownStorage.getTokenIdsLength().sub(1);
    |		var lastTokenId = _ownStorage.getTokenIdByIndex(lastTokenIdIndex);
    |		_ownStorage.setTokenIdByIndex(tokenIndex, lastTokenId);
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(890)

[33mWarning[0m for UnhandledException in contract 'BdpOwnership':
    |		var tokenIndex = _ownStorage.getTokenIdsIndex(_tokenId);
    |		var lastTokenIdIndex = _ownStorage.getTokenIdsLength().sub(1);
  > |		var lastTokenId = _ownStorage.getTokenIdByIndex(lastTokenIdIndex);
    |		_ownStorage.setTokenIdByIndex(tokenIndex, lastTokenId);
    |		_ownStorage.setTokenIdByIndex(lastTokenIdIndex, 0);
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(891)

[33mWarning[0m for UnhandledException in contract 'BdpOwnership':
    |		var lastTokenIdIndex = _ownStorage.getTokenIdsLength().sub(1);
    |		var lastTokenId = _ownStorage.getTokenIdByIndex(lastTokenIdIndex);
  > |		_ownStorage.setTokenIdByIndex(tokenIndex, lastTokenId);
    |		_ownStorage.setTokenIdByIndex(lastTokenIdIndex, 0);
    |		_ownStorage.decrementTokenIdsLength();
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(892)

[33mWarning[0m for UnhandledException in contract 'BdpOwnership':
    |		var lastTokenId = _ownStorage.getTokenIdByIndex(lastTokenIdIndex);
    |		_ownStorage.setTokenIdByIndex(tokenIndex, lastTokenId);
  > |		_ownStorage.setTokenIdByIndex(lastTokenIdIndex, 0);
    |		_ownStorage.decrementTokenIdsLength();
    |		_ownStorage.setTokenIdsIndex(_tokenId, 0);
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(893)

[33mWarning[0m for UnhandledException in contract 'BdpOwnership':
    |		_ownStorage.setTokenIdByIndex(tokenIndex, lastTokenId);
    |		_ownStorage.setTokenIdByIndex(lastTokenIdIndex, 0);
  > |		_ownStorage.decrementTokenIdsLength();
    |		_ownStorage.setTokenIdsIndex(_tokenId, 0);
    |		_ownStorage.setTokenIdsIndex(lastTokenId, tokenIndex);
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(894)

[33mWarning[0m for UnhandledException in contract 'BdpOwnership':
    |		_ownStorage.setTokenIdByIndex(lastTokenIdIndex, 0);
    |		_ownStorage.decrementTokenIdsLength();
  > |		_ownStorage.setTokenIdsIndex(_tokenId, 0);
    |		_ownStorage.setTokenIdsIndex(lastTokenId, tokenIndex);
    |	}
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(895)

[33mWarning[0m for UnhandledException in contract 'BdpOwnership':
    |		_ownStorage.decrementTokenIdsLength();
    |		_ownStorage.setTokenIdsIndex(_tokenId, 0);
  > |		_ownStorage.setTokenIdsIndex(lastTokenId, tokenIndex);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(896)

[33mWarning[0m for UnhandledException in contract 'BdpOwnership':
    |	 */
    |	function burn(address[16] _contracts, uint256 _tokenId) public {
  > |		address owner = BdpOwnershipStorage(BdpContracts.getBdpOwnershipStorage(_contracts)).getTokenOwner(_tokenId);
    |		clearApproval(_contracts, owner, _tokenId);
    |		removeToken(_contracts, owner, _tokenId);
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(915)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BdpOwnership':
    |
    |	function ownerOf(address[16] _contracts, uint256 _tokenId) public view returns (address) {
  > |		var owner = BdpOwnershipStorage(BdpContracts.getBdpOwnershipStorage(_contracts)).getTokenOwner(_tokenId);
    |		require(owner != address(0));
    |		return owner;
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(768)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BdpOwnership':
    |
    |	function balanceOf(address[16] _contracts, address _owner) public view returns (uint256) {
  > |		return BdpOwnershipStorage(BdpContracts.getBdpOwnershipStorage(_contracts)).getOwnedTokensLength(_owner);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(774)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BdpOwnership':
    |		address owner = ownerOf(_contracts, _tokenId);
    |		require(_to != owner);
  > |		if (ownStorage.getTokenApproval(_tokenId) != 0 || _to != 0) {
    |			ownStorage.setTokenApproval(_tokenId, _to);
    |			Approval(owner, _to, _tokenId);
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(782)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BdpOwnership':
    |		require(_to != owner);
    |		if (ownStorage.getTokenApproval(_tokenId) != 0 || _to != 0) {
  > |			ownStorage.setTokenApproval(_tokenId, _to);
    |			Approval(owner, _to, _tokenId);
    |		}
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(783)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BdpOwnership':
    |
    |		require(ownerOf(_contracts, _tokenId) == _owner);
  > |		if (ownStorage.getTokenApproval(_tokenId) != 0) {
    |			BdpOwnershipStorage(BdpContracts.getBdpOwnershipStorage(_contracts)).setTokenApproval(_tokenId, 0);
    |			Approval(_owner, 0, _tokenId);
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(796)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BdpOwnership':
    |		require(ownerOf(_contracts, _tokenId) == _owner);
    |		if (ownStorage.getTokenApproval(_tokenId) != 0) {
  > |			BdpOwnershipStorage(BdpContracts.getBdpOwnershipStorage(_contracts)).setTokenApproval(_tokenId, 0);
    |			Approval(_owner, 0, _tokenId);
    |		}
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(797)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BdpOwnership':
    |		var ownStorage = BdpOwnershipStorage(BdpContracts.getBdpOwnershipStorage(_contracts));
    |
  > |		require(ownStorage.getTokenOwner(_tokenId) == address(0));
    |
    |		// Set token owner
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(827)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BdpOwnership':
    |
    |		// Set token owner
  > |		ownStorage.setTokenOwner(_tokenId, _to);
    |
    |		// Add token to tokenIds list
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(830)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BdpOwnership':
    |
    |		// Add token to tokenIds list
  > |		var tokenIdsLength = ownStorage.pushTokenId(_tokenId);
    |		ownStorage.setTokenIdsIndex(_tokenId, tokenIdsLength.sub(1));
    |
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(833)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BdpOwnership':
    |		// Add token to tokenIds list
    |		var tokenIdsLength = ownStorage.pushTokenId(_tokenId);
  > |		ownStorage.setTokenIdsIndex(_tokenId, tokenIdsLength.sub(1));
    |
    |		uint256 ownedTokensLength = ownStorage.getOwnedTokensLength(_to);
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(834)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BdpOwnership':
    |		ownStorage.setTokenIdsIndex(_tokenId, tokenIdsLength.sub(1));
    |
  > |		uint256 ownedTokensLength = ownStorage.getOwnedTokensLength(_to);
    |
    |		// Add token to ownedTokens list
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(836)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BdpOwnership':
    |
    |		// Add token to ownedTokens list
  > |		ownStorage.pushOwnedToken(_to, _tokenId);
    |		ownStorage.setOwnedTokensIndex(_tokenId, ownedTokensLength);
    |
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(839)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BdpOwnership':
    |		// Add token to ownedTokens list
    |		ownStorage.pushOwnedToken(_to, _tokenId);
  > |		ownStorage.setOwnedTokensIndex(_tokenId, ownedTokensLength);
    |
    |		// Increment total owned area
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(840)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BdpOwnership':
    |		// Increment total owned area
    |		var (area,,) = BdpCalculator.calculateArea(_contracts, _tokenId);
  > |		ownStorage.incrementOwnedArea(_to, area);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(844)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BdpOwnership':
    |
    |		// Clear token owner
  > |		ownStorage.setTokenOwner(_tokenId, 0);
    |
    |		removeFromTokenIds(ownStorage, _tokenId);
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(858)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BdpOwnership':
    |		// Decrement total owned area
    |		var (area,,) = BdpCalculator.calculateArea(_contracts, _tokenId);
  > |		ownStorage.decrementOwnedArea(_from, area);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(865)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BdpOwnership':
    |	 */
    |	function removeFromOwnedToken(BdpOwnershipStorage _ownStorage, address _from, uint256 _tokenId) private {
  > |		var ownedTokenIndex = _ownStorage.getOwnedTokensIndex(_tokenId);
    |		var lastOwnedTokenIndex = _ownStorage.getOwnedTokensLength(_from).sub(1);
    |		var lastOwnedToken = _ownStorage.getOwnedToken(_from, lastOwnedTokenIndex);
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(875)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BdpOwnership':
    |	function removeFromOwnedToken(BdpOwnershipStorage _ownStorage, address _from, uint256 _tokenId) private {
    |		var ownedTokenIndex = _ownStorage.getOwnedTokensIndex(_tokenId);
  > |		var lastOwnedTokenIndex = _ownStorage.getOwnedTokensLength(_from).sub(1);
    |		var lastOwnedToken = _ownStorage.getOwnedToken(_from, lastOwnedTokenIndex);
    |		_ownStorage.setOwnedToken(_from, ownedTokenIndex, lastOwnedToken);
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(876)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BdpOwnership':
    |		var ownedTokenIndex = _ownStorage.getOwnedTokensIndex(_tokenId);
    |		var lastOwnedTokenIndex = _ownStorage.getOwnedTokensLength(_from).sub(1);
  > |		var lastOwnedToken = _ownStorage.getOwnedToken(_from, lastOwnedTokenIndex);
    |		_ownStorage.setOwnedToken(_from, ownedTokenIndex, lastOwnedToken);
    |		_ownStorage.setOwnedToken(_from, lastOwnedTokenIndex, 0);
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(877)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BdpOwnership':
    |		var lastOwnedTokenIndex = _ownStorage.getOwnedTokensLength(_from).sub(1);
    |		var lastOwnedToken = _ownStorage.getOwnedToken(_from, lastOwnedTokenIndex);
  > |		_ownStorage.setOwnedToken(_from, ownedTokenIndex, lastOwnedToken);
    |		_ownStorage.setOwnedToken(_from, lastOwnedTokenIndex, 0);
    |		_ownStorage.decrementOwnedTokensLength(_from);
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(878)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BdpOwnership':
    |		var lastOwnedToken = _ownStorage.getOwnedToken(_from, lastOwnedTokenIndex);
    |		_ownStorage.setOwnedToken(_from, ownedTokenIndex, lastOwnedToken);
  > |		_ownStorage.setOwnedToken(_from, lastOwnedTokenIndex, 0);
    |		_ownStorage.decrementOwnedTokensLength(_from);
    |		_ownStorage.setOwnedTokensIndex(_tokenId, 0);
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(879)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BdpOwnership':
    |		_ownStorage.setOwnedToken(_from, ownedTokenIndex, lastOwnedToken);
    |		_ownStorage.setOwnedToken(_from, lastOwnedTokenIndex, 0);
  > |		_ownStorage.decrementOwnedTokensLength(_from);
    |		_ownStorage.setOwnedTokensIndex(_tokenId, 0);
    |		_ownStorage.setOwnedTokensIndex(lastOwnedToken, ownedTokenIndex);
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(880)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BdpOwnership':
    |		_ownStorage.setOwnedToken(_from, lastOwnedTokenIndex, 0);
    |		_ownStorage.decrementOwnedTokensLength(_from);
  > |		_ownStorage.setOwnedTokensIndex(_tokenId, 0);
    |		_ownStorage.setOwnedTokensIndex(lastOwnedToken, ownedTokenIndex);
    |	}
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(881)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BdpOwnership':
    |		_ownStorage.decrementOwnedTokensLength(_from);
    |		_ownStorage.setOwnedTokensIndex(_tokenId, 0);
  > |		_ownStorage.setOwnedTokensIndex(lastOwnedToken, ownedTokenIndex);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(882)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BdpOwnership':
    |	 */
    |	function removeFromTokenIds(BdpOwnershipStorage _ownStorage, uint256 _tokenId) private {
  > |		var tokenIndex = _ownStorage.getTokenIdsIndex(_tokenId);
    |		var lastTokenIdIndex = _ownStorage.getTokenIdsLength().sub(1);
    |		var lastTokenId = _ownStorage.getTokenIdByIndex(lastTokenIdIndex);
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(889)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BdpOwnership':
    |	function removeFromTokenIds(BdpOwnershipStorage _ownStorage, uint256 _tokenId) private {
    |		var tokenIndex = _ownStorage.getTokenIdsIndex(_tokenId);
  > |		var lastTokenIdIndex = _ownStorage.getTokenIdsLength().sub(1);
    |		var lastTokenId = _ownStorage.getTokenIdByIndex(lastTokenIdIndex);
    |		_ownStorage.setTokenIdByIndex(tokenIndex, lastTokenId);
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(890)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BdpOwnership':
    |		var tokenIndex = _ownStorage.getTokenIdsIndex(_tokenId);
    |		var lastTokenIdIndex = _ownStorage.getTokenIdsLength().sub(1);
  > |		var lastTokenId = _ownStorage.getTokenIdByIndex(lastTokenIdIndex);
    |		_ownStorage.setTokenIdByIndex(tokenIndex, lastTokenId);
    |		_ownStorage.setTokenIdByIndex(lastTokenIdIndex, 0);
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(891)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BdpOwnership':
    |		var lastTokenIdIndex = _ownStorage.getTokenIdsLength().sub(1);
    |		var lastTokenId = _ownStorage.getTokenIdByIndex(lastTokenIdIndex);
  > |		_ownStorage.setTokenIdByIndex(tokenIndex, lastTokenId);
    |		_ownStorage.setTokenIdByIndex(lastTokenIdIndex, 0);
    |		_ownStorage.decrementTokenIdsLength();
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(892)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BdpOwnership':
    |		var lastTokenId = _ownStorage.getTokenIdByIndex(lastTokenIdIndex);
    |		_ownStorage.setTokenIdByIndex(tokenIndex, lastTokenId);
  > |		_ownStorage.setTokenIdByIndex(lastTokenIdIndex, 0);
    |		_ownStorage.decrementTokenIdsLength();
    |		_ownStorage.setTokenIdsIndex(_tokenId, 0);
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(893)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BdpOwnership':
    |		_ownStorage.setTokenIdByIndex(tokenIndex, lastTokenId);
    |		_ownStorage.setTokenIdByIndex(lastTokenIdIndex, 0);
  > |		_ownStorage.decrementTokenIdsLength();
    |		_ownStorage.setTokenIdsIndex(_tokenId, 0);
    |		_ownStorage.setTokenIdsIndex(lastTokenId, tokenIndex);
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(894)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BdpOwnership':
    |		_ownStorage.setTokenIdByIndex(lastTokenIdIndex, 0);
    |		_ownStorage.decrementTokenIdsLength();
  > |		_ownStorage.setTokenIdsIndex(_tokenId, 0);
    |		_ownStorage.setTokenIdsIndex(lastTokenId, tokenIndex);
    |	}
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(895)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BdpOwnership':
    |		_ownStorage.decrementTokenIdsLength();
    |		_ownStorage.setTokenIdsIndex(_tokenId, 0);
  > |		_ownStorage.setTokenIdsIndex(lastTokenId, tokenIndex);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(896)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BdpOwnership':
    |	 */
    |	function burn(address[16] _contracts, uint256 _tokenId) public {
  > |		address owner = BdpOwnershipStorage(BdpContracts.getBdpOwnershipStorage(_contracts)).getTokenOwner(_tokenId);
    |		clearApproval(_contracts, owner, _tokenId);
    |		removeToken(_contracts, owner, _tokenId);
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(915)

[31mViolation[0m for LockedEther in contract 'BdpOwnershipStorage':
    |}
    |
  > |contract BdpOwnershipStorage is BdpBase {
    |
    |	using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(449)

[31mViolation[0m for UnrestrictedWrite in contract 'BdpOwnershipStorage':
    |}
    |
  > |contract BdpOwnershipStorage is BdpBase {
    |
    |	using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(449)

[33mWarning[0m for UnrestrictedWrite in contract 'BdpOwnershipStorage':
    |	function setOwner(address _newOwner) external onlyOwner {
    |		require(_newOwner != address(0));
  > |		ownerAddress = _newOwner;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(78)

[33mWarning[0m for UnrestrictedWrite in contract 'BdpOwnershipStorage':
    |	function setManager(address _newManager) external onlyOwner {
    |		require(_newManager != address(0));
  > |		managerAddress = _newManager;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'BdpOwnershipStorage':
    |
    |	function pause() external onlyAuthorized {
  > |		paused = true;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(91)

[33mWarning[0m for UnrestrictedWrite in contract 'BdpOwnershipStorage':
    |
    |	function unpause() external onlyOwner {
  > |		paused = false;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(95)

[33mWarning[0m for UnrestrictedWrite in contract 'BdpOwnershipStorage':
    |
    |	function setSetupComplete() external onlyOwner {
  > |		setupComplete = true;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(99)

[31mViolation[0m for LockedEther in contract 'BdpPriceStorage':
    |}
    |
  > |contract BdpPriceStorage is BdpBase {
    |
    |	uint64[1001] public pricePoints;
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(575)

[31mViolation[0m for UnrestrictedWrite in contract 'BdpPriceStorage':
    |}
    |
  > |contract BdpPriceStorage is BdpBase {
    |
    |	uint64[1001] public pricePoints;
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(575)

[33mWarning[0m for UnrestrictedWrite in contract 'BdpPriceStorage':
    |	function setOwner(address _newOwner) external onlyOwner {
    |		require(_newOwner != address(0));
  > |		ownerAddress = _newOwner;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(78)

[33mWarning[0m for UnrestrictedWrite in contract 'BdpPriceStorage':
    |	function setManager(address _newManager) external onlyOwner {
    |		require(_newManager != address(0));
  > |		managerAddress = _newManager;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'BdpPriceStorage':
    |
    |	function pause() external onlyAuthorized {
  > |		paused = true;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(91)

[33mWarning[0m for UnrestrictedWrite in contract 'BdpPriceStorage':
    |
    |	function unpause() external onlyOwner {
  > |		paused = false;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(95)

[33mWarning[0m for UnrestrictedWrite in contract 'BdpPriceStorage':
    |
    |	function setSetupComplete() external onlyOwner {
  > |		setupComplete = true;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(99)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xb444b84053f7eca1c02d778f0b6fff99dd4608bb.sol(112)


