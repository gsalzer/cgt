Processing contract: /home/jiaming/mavs_srcs/contract@0x6c0a11e254b666b107abe5ecf5003b53bf362eb0.sol:BdpBase
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6c0a11e254b666b107abe5ecf5003b53bf362eb0.sol:BdpBaseData
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6c0a11e254b666b107abe5ecf5003b53bf362eb0.sol:BdpCalculator
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6c0a11e254b666b107abe5ecf5003b53bf362eb0.sol:BdpContracts
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6c0a11e254b666b107abe5ecf5003b53bf362eb0.sol:BdpDataStorage
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6c0a11e254b666b107abe5ecf5003b53bf362eb0.sol:BdpPriceStorage
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6c0a11e254b666b107abe5ecf5003b53bf362eb0.sol:SafeMath
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
  at /home/jiaming/mavs_srcs/contract@0x6c0a11e254b666b107abe5ecf5003b53bf362eb0.sol(50)

[31mViolation[0m for UnrestrictedWrite in contract 'BdpBase':
    |}
    |
  > |contract BdpBase is BdpBaseData {
    |
    |	modifier onlyOwner() {
  at /home/jiaming/mavs_srcs/contract@0x6c0a11e254b666b107abe5ecf5003b53bf362eb0.sol(50)

[33mWarning[0m for UnrestrictedWrite in contract 'BdpBase':
    |	function setOwner(address _newOwner) external onlyOwner {
    |		require(_newOwner != address(0));
  > |		ownerAddress = _newOwner;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x6c0a11e254b666b107abe5ecf5003b53bf362eb0.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'BdpBase':
    |	function setManager(address _newManager) external onlyOwner {
    |		require(_newManager != address(0));
  > |		managerAddress = _newManager;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x6c0a11e254b666b107abe5ecf5003b53bf362eb0.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'BdpBase':
    |
    |	function pause() external onlyAuthorized {
  > |		paused = true;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x6c0a11e254b666b107abe5ecf5003b53bf362eb0.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'BdpBase':
    |
    |	function unpause() external onlyOwner {
  > |		paused = false;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x6c0a11e254b666b107abe5ecf5003b53bf362eb0.sol(94)

[33mWarning[0m for UnrestrictedWrite in contract 'BdpBase':
    |
    |	function setSetupComplete() external onlyOwner {
  > |		setupComplete = true;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x6c0a11e254b666b107abe5ecf5003b53bf362eb0.sol(98)

[33mWarning[0m for LockedEther in contract 'BdpBaseData':
    |pragma solidity ^0.4.19;
    |
  > |contract BdpBaseData {
    |
    |	address public ownerAddress;
  at /home/jiaming/mavs_srcs/contract@0x6c0a11e254b666b107abe5ecf5003b53bf362eb0.sol(3)

[33mWarning[0m for MissingInputValidation in contract 'BdpBaseData':
    |contract BdpBaseData {
    |
  > |	address public ownerAddress;
    |
    |	address public managerAddress;
  at /home/jiaming/mavs_srcs/contract@0x6c0a11e254b666b107abe5ecf5003b53bf362eb0.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'BdpBaseData':
    |	address public ownerAddress;
    |
  > |	address public managerAddress;
    |
    |	address[16] public contracts;
  at /home/jiaming/mavs_srcs/contract@0x6c0a11e254b666b107abe5ecf5003b53bf362eb0.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'BdpBaseData':
    |	address public managerAddress;
    |
  > |	address[16] public contracts;
    |
    |	bool public paused = false;
  at /home/jiaming/mavs_srcs/contract@0x6c0a11e254b666b107abe5ecf5003b53bf362eb0.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'BdpBaseData':
    |	address[16] public contracts;
    |
  > |	bool public paused = false;
    |
    |	bool public setupComplete = false;
  at /home/jiaming/mavs_srcs/contract@0x6c0a11e254b666b107abe5ecf5003b53bf362eb0.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'BdpBaseData':
    |	bool public paused = false;
    |
  > |	bool public setupComplete = false;
    |
    |	bytes8 public version;
  at /home/jiaming/mavs_srcs/contract@0x6c0a11e254b666b107abe5ecf5003b53bf362eb0.sol(13)

[33mWarning[0m for MissingInputValidation in contract 'BdpBaseData':
    |	bool public setupComplete = false;
    |
  > |	bytes8 public version;
    |
    |}
  at /home/jiaming/mavs_srcs/contract@0x6c0a11e254b666b107abe5ecf5003b53bf362eb0.sol(15)

[33mWarning[0m for LockedEther in contract 'BdpCalculator':
    |}
    |
  > |library BdpCalculator {
    |
    |	using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0x6c0a11e254b666b107abe5ecf5003b53bf362eb0.sol(327)

[33mWarning[0m for UnhandledException in contract 'BdpCalculator':
    |
    |	function calculateArea(address[16] _contracts, uint256 _regionId) view public returns (uint256 _area, uint256 _width, uint256 _height) {
  > |		var (x1, y1, x2, y2) = BdpDataStorage(BdpContracts.getBdpDataStorage(_contracts)).getRegionCoordinates(_regionId);
    |		_width = x2 - x1 + 1;
    |		_height = y2 - y1 + 1;
  at /home/jiaming/mavs_srcs/contract@0x6c0a11e254b666b107abe5ecf5003b53bf362eb0.sol(332)

[33mWarning[0m for UnhandledException in contract 'BdpCalculator':
    |
    |	function countPurchasedPixels(address[16] _contracts) view public returns (uint256 _count) {
  > |		var lastRegionId = BdpDataStorage(BdpContracts.getBdpDataStorage(_contracts)).getLastRegionId();
    |		for (uint256 i = 0; i <= lastRegionId; i++) {
    |			if(BdpDataStorage(BdpContracts.getBdpDataStorage(_contracts)).getRegionPurchasedAt(i) > 0) { // region is purchased
  at /home/jiaming/mavs_srcs/contract@0x6c0a11e254b666b107abe5ecf5003b53bf362eb0.sol(339)

[33mWarning[0m for UnhandledException in contract 'BdpCalculator':
    |		var lastRegionId = BdpDataStorage(BdpContracts.getBdpDataStorage(_contracts)).getLastRegionId();
    |		for (uint256 i = 0; i <= lastRegionId; i++) {
  > |			if(BdpDataStorage(BdpContracts.getBdpDataStorage(_contracts)).getRegionPurchasedAt(i) > 0) { // region is purchased
    |				var (area,,) = calculateArea(_contracts, i);
    |				_count += area;
  at /home/jiaming/mavs_srcs/contract@0x6c0a11e254b666b107abe5ecf5003b53bf362eb0.sol(341)

[33mWarning[0m for UnhandledException in contract 'BdpCalculator':
    |
    |	function calculateMarketPixelPrice(address[16] _contracts, uint _pixelsSold) view public returns(uint) {
  > |		var pricePointsLength = BdpPriceStorage(BdpContracts.getBdpPriceStorage(_contracts)).getPricePointsLength();
    |		uint mod = _pixelsSold % (1000000 / (pricePointsLength - 1));
    |		uint div = _pixelsSold * (pricePointsLength - 1) / 1000000;
  at /home/jiaming/mavs_srcs/contract@0x6c0a11e254b666b107abe5ecf5003b53bf362eb0.sol(353)

[33mWarning[0m for UnhandledException in contract 'BdpCalculator':
    |		uint mod = _pixelsSold % (1000000 / (pricePointsLength - 1));
    |		uint div = _pixelsSold * (pricePointsLength - 1) / 1000000;
  > |		var divPoint = BdpPriceStorage(BdpContracts.getBdpPriceStorage(_contracts)).getPricePoint(div);
    |		if(mod == 0) return divPoint;
    |		return divPoint + mod * (BdpPriceStorage(BdpContracts.getBdpPriceStorage(_contracts)).getPricePoint(div+1) - divPoint) * (pricePointsLength - 1) / 1000000;
  at /home/jiaming/mavs_srcs/contract@0x6c0a11e254b666b107abe5ecf5003b53bf362eb0.sol(356)

[33mWarning[0m for UnhandledException in contract 'BdpCalculator':
    |		var divPoint = BdpPriceStorage(BdpContracts.getBdpPriceStorage(_contracts)).getPricePoint(div);
    |		if(mod == 0) return divPoint;
  > |		return divPoint + mod * (BdpPriceStorage(BdpContracts.getBdpPriceStorage(_contracts)).getPricePoint(div+1) - divPoint) * (pricePointsLength - 1) / 1000000;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x6c0a11e254b666b107abe5ecf5003b53bf362eb0.sol(358)

[33mWarning[0m for UnhandledException in contract 'BdpCalculator':
    |	  */
    |	function calculateRegionInitialSalePixelPrice(address[16] _contracts, uint256 _regionId) view public returns (uint256) {
  > |		require(BdpDataStorage(BdpContracts.getBdpDataStorage(_contracts)).getRegionUpdatedAt(_regionId) > 0); // region exists
    |		var purchasedPixels = countPurchasedPixels(_contracts);
    |		var (area,,) = calculateArea(_contracts, _regionId);
  at /home/jiaming/mavs_srcs/contract@0x6c0a11e254b666b107abe5ecf5003b53bf362eb0.sol(368)

[33mWarning[0m for UnhandledException in contract 'BdpCalculator':
    |	  */
    |	function calculateRegionSalePixelPrice(address[16] _contracts, uint256 _regionId) view public returns (uint256) {
  > |		var pixelPrice = BdpDataStorage(BdpContracts.getBdpDataStorage(_contracts)).getRegionCurrentPixelPrice(_regionId);
    |		if(pixelPrice > 0) {
    |			return pixelPrice * 3;
  at /home/jiaming/mavs_srcs/contract@0x6c0a11e254b666b107abe5ecf5003b53bf362eb0.sol(377)

[33mWarning[0m for UnhandledException in contract 'BdpCalculator':
    |	  */
    |	function calculateSetupAllowedUntil(address[16] _contracts, uint256 _regionId) view public returns (uint256) {
  > |		var (updatedAt, purchasedAt) = BdpDataStorage(BdpContracts.getBdpDataStorage(_contracts)).getRegionUpdatedAtPurchasedAt(_regionId);
    |		if(updatedAt != purchasedAt) {
    |			return 0;
  at /home/jiaming/mavs_srcs/contract@0x6c0a11e254b666b107abe5ecf5003b53bf362eb0.sol(388)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BdpCalculator':
    |
    |	function calculateArea(address[16] _contracts, uint256 _regionId) view public returns (uint256 _area, uint256 _width, uint256 _height) {
  > |		var (x1, y1, x2, y2) = BdpDataStorage(BdpContracts.getBdpDataStorage(_contracts)).getRegionCoordinates(_regionId);
    |		_width = x2 - x1 + 1;
    |		_height = y2 - y1 + 1;
  at /home/jiaming/mavs_srcs/contract@0x6c0a11e254b666b107abe5ecf5003b53bf362eb0.sol(332)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BdpCalculator':
    |
    |	function countPurchasedPixels(address[16] _contracts) view public returns (uint256 _count) {
  > |		var lastRegionId = BdpDataStorage(BdpContracts.getBdpDataStorage(_contracts)).getLastRegionId();
    |		for (uint256 i = 0; i <= lastRegionId; i++) {
    |			if(BdpDataStorage(BdpContracts.getBdpDataStorage(_contracts)).getRegionPurchasedAt(i) > 0) { // region is purchased
  at /home/jiaming/mavs_srcs/contract@0x6c0a11e254b666b107abe5ecf5003b53bf362eb0.sol(339)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BdpCalculator':
    |		var lastRegionId = BdpDataStorage(BdpContracts.getBdpDataStorage(_contracts)).getLastRegionId();
    |		for (uint256 i = 0; i <= lastRegionId; i++) {
  > |			if(BdpDataStorage(BdpContracts.getBdpDataStorage(_contracts)).getRegionPurchasedAt(i) > 0) { // region is purchased
    |				var (area,,) = calculateArea(_contracts, i);
    |				_count += area;
  at /home/jiaming/mavs_srcs/contract@0x6c0a11e254b666b107abe5ecf5003b53bf362eb0.sol(341)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BdpCalculator':
    |
    |	function calculateMarketPixelPrice(address[16] _contracts, uint _pixelsSold) view public returns(uint) {
  > |		var pricePointsLength = BdpPriceStorage(BdpContracts.getBdpPriceStorage(_contracts)).getPricePointsLength();
    |		uint mod = _pixelsSold % (1000000 / (pricePointsLength - 1));
    |		uint div = _pixelsSold * (pricePointsLength - 1) / 1000000;
  at /home/jiaming/mavs_srcs/contract@0x6c0a11e254b666b107abe5ecf5003b53bf362eb0.sol(353)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BdpCalculator':
    |		uint mod = _pixelsSold % (1000000 / (pricePointsLength - 1));
    |		uint div = _pixelsSold * (pricePointsLength - 1) / 1000000;
  > |		var divPoint = BdpPriceStorage(BdpContracts.getBdpPriceStorage(_contracts)).getPricePoint(div);
    |		if(mod == 0) return divPoint;
    |		return divPoint + mod * (BdpPriceStorage(BdpContracts.getBdpPriceStorage(_contracts)).getPricePoint(div+1) - divPoint) * (pricePointsLength - 1) / 1000000;
  at /home/jiaming/mavs_srcs/contract@0x6c0a11e254b666b107abe5ecf5003b53bf362eb0.sol(356)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BdpCalculator':
    |		var divPoint = BdpPriceStorage(BdpContracts.getBdpPriceStorage(_contracts)).getPricePoint(div);
    |		if(mod == 0) return divPoint;
  > |		return divPoint + mod * (BdpPriceStorage(BdpContracts.getBdpPriceStorage(_contracts)).getPricePoint(div+1) - divPoint) * (pricePointsLength - 1) / 1000000;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x6c0a11e254b666b107abe5ecf5003b53bf362eb0.sol(358)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BdpCalculator':
    |	  */
    |	function calculateRegionInitialSalePixelPrice(address[16] _contracts, uint256 _regionId) view public returns (uint256) {
  > |		require(BdpDataStorage(BdpContracts.getBdpDataStorage(_contracts)).getRegionUpdatedAt(_regionId) > 0); // region exists
    |		var purchasedPixels = countPurchasedPixels(_contracts);
    |		var (area,,) = calculateArea(_contracts, _regionId);
  at /home/jiaming/mavs_srcs/contract@0x6c0a11e254b666b107abe5ecf5003b53bf362eb0.sol(368)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BdpCalculator':
    |	  */
    |	function calculateRegionSalePixelPrice(address[16] _contracts, uint256 _regionId) view public returns (uint256) {
  > |		var pixelPrice = BdpDataStorage(BdpContracts.getBdpDataStorage(_contracts)).getRegionCurrentPixelPrice(_regionId);
    |		if(pixelPrice > 0) {
    |			return pixelPrice * 3;
  at /home/jiaming/mavs_srcs/contract@0x6c0a11e254b666b107abe5ecf5003b53bf362eb0.sol(377)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BdpCalculator':
    |	  */
    |	function calculateSetupAllowedUntil(address[16] _contracts, uint256 _regionId) view public returns (uint256) {
  > |		var (updatedAt, purchasedAt) = BdpDataStorage(BdpContracts.getBdpDataStorage(_contracts)).getRegionUpdatedAtPurchasedAt(_regionId);
    |		if(updatedAt != purchasedAt) {
    |			return 0;
  at /home/jiaming/mavs_srcs/contract@0x6c0a11e254b666b107abe5ecf5003b53bf362eb0.sol(388)

[33mWarning[0m for LockedEther in contract 'BdpContracts':
    |
    |}
  > |library BdpContracts {
    |
    |	function getBdpEntryPoint(address[16] _contracts) pure internal returns (address) {
  at /home/jiaming/mavs_srcs/contract@0x6c0a11e254b666b107abe5ecf5003b53bf362eb0.sol(18)

[31mViolation[0m for LockedEther in contract 'BdpDataStorage':
    |}
    |
  > |contract BdpDataStorage is BdpBase {
    |
    |	using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0x6c0a11e254b666b107abe5ecf5003b53bf362eb0.sol(149)

[33mWarning[0m for UnrestrictedWrite in contract 'BdpDataStorage':
    |	function setOwner(address _newOwner) external onlyOwner {
    |		require(_newOwner != address(0));
  > |		ownerAddress = _newOwner;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x6c0a11e254b666b107abe5ecf5003b53bf362eb0.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'BdpDataStorage':
    |	function setManager(address _newManager) external onlyOwner {
    |		require(_newManager != address(0));
  > |		managerAddress = _newManager;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x6c0a11e254b666b107abe5ecf5003b53bf362eb0.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'BdpDataStorage':
    |
    |	function pause() external onlyAuthorized {
  > |		paused = true;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x6c0a11e254b666b107abe5ecf5003b53bf362eb0.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'BdpDataStorage':
    |
    |	function unpause() external onlyOwner {
  > |		paused = false;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x6c0a11e254b666b107abe5ecf5003b53bf362eb0.sol(94)

[33mWarning[0m for UnrestrictedWrite in contract 'BdpDataStorage':
    |
    |	function setSetupComplete() external onlyOwner {
  > |		setupComplete = true;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x6c0a11e254b666b107abe5ecf5003b53bf362eb0.sol(98)

[31mViolation[0m for LockedEther in contract 'BdpPriceStorage':
    |}
    |
  > |contract BdpPriceStorage is BdpBase {
    |
    |	uint64[1001] public pricePoints;
  at /home/jiaming/mavs_srcs/contract@0x6c0a11e254b666b107abe5ecf5003b53bf362eb0.sol(273)

[31mViolation[0m for UnrestrictedWrite in contract 'BdpPriceStorage':
    |}
    |
  > |contract BdpPriceStorage is BdpBase {
    |
    |	uint64[1001] public pricePoints;
  at /home/jiaming/mavs_srcs/contract@0x6c0a11e254b666b107abe5ecf5003b53bf362eb0.sol(273)

[33mWarning[0m for UnrestrictedWrite in contract 'BdpPriceStorage':
    |	function setOwner(address _newOwner) external onlyOwner {
    |		require(_newOwner != address(0));
  > |		ownerAddress = _newOwner;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x6c0a11e254b666b107abe5ecf5003b53bf362eb0.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'BdpPriceStorage':
    |	function setManager(address _newManager) external onlyOwner {
    |		require(_newManager != address(0));
  > |		managerAddress = _newManager;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x6c0a11e254b666b107abe5ecf5003b53bf362eb0.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'BdpPriceStorage':
    |
    |	function pause() external onlyAuthorized {
  > |		paused = true;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x6c0a11e254b666b107abe5ecf5003b53bf362eb0.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'BdpPriceStorage':
    |
    |	function unpause() external onlyOwner {
  > |		paused = false;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x6c0a11e254b666b107abe5ecf5003b53bf362eb0.sol(94)

[33mWarning[0m for UnrestrictedWrite in contract 'BdpPriceStorage':
    |
    |	function setSetupComplete() external onlyOwner {
  > |		setupComplete = true;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x6c0a11e254b666b107abe5ecf5003b53bf362eb0.sol(98)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |}
    |
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x6c0a11e254b666b107abe5ecf5003b53bf362eb0.sol(107)


