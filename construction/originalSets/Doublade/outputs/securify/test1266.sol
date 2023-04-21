Processing contract: /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol:BlackBoxInterface
Processing contract: /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol:DividendManagerInterface
Processing contract: /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol:UnicornAccessControl
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol:UnicornBreeding
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol:UnicornManagementInterface
Processing contract: /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol:UnicornTokenInterface
[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.21;
    |
  > |library SafeMath {
    |    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |        if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(3)

[33mWarning[0m for LockedEther in contract 'UnicornAccessControl':
    |
    |
  > |contract UnicornAccessControl {
    |
    |    UnicornManagementInterface public unicornManagement;
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(125)

[33mWarning[0m for MissingInputValidation in contract 'UnicornAccessControl':
    |contract UnicornAccessControl {
    |
  > |    UnicornManagementInterface public unicornManagement;
    |
    |    function UnicornAccessControl(address _unicornManagementAddress) public {
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(127)

[33mWarning[0m for MissingInputValidation in contract 'UnicornAccessControl':
    |    }
    |
  > |    function isGamePaused() external view returns (bool) {
    |        return unicornManagement.paused();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(190)

[33mWarning[0m for UnhandledException in contract 'UnicornAccessControl':
    |
    |    function isGamePaused() external view returns (bool) {
  > |        return unicornManagement.paused();
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(191)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UnicornAccessControl':
    |
    |    function isGamePaused() external view returns (bool) {
  > |        return unicornManagement.paused();
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(191)

[31mViolation[0m for DAO in contract 'UnicornBreeding':
    |        plusFreezingTime(_secondUnicornId);
    |        uint256 newUnicornId = unicornToken.createUnicorn(msg.sender);
  > |        blackBox.geneCore.value(unicornManagement.oraclizeFee())(newUnicornId, _firstUnicornId, _secondUnicornId);
    |        emit CreateUnicorn(msg.sender, newUnicornId, _firstUnicornId, _secondUnicornId);
    |        if (hybridizations[_firstUnicornId].price > 0) {
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(281)

[31mViolation[0m for DAO in contract 'UnicornBreeding':
    |        require(gen0Count < gen0Limit);
    |        uint256 newUnicornId = unicornToken.createUnicorn(_owner);
  > |        blackBox.createGen0.value(unicornManagement.oraclizeFee())(newUnicornId);
    |        emit CreateUnicorn(_owner, newUnicornId, 0, 0);
    |        gen0Count = gen0Count.add(1);
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(340)

[33mWarning[0m for DAO in contract 'UnicornBreeding':
    |        require(address(this).balance >= _value);
    |        DividendManagerInterface dividendManager = DividendManagerInterface(unicornManagement.dividendManagerAddress());
  > |        dividendManager.payDividend.value(_value)();
    |        emit FundsTransferred(unicornManagement.dividendManagerAddress(), _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(398)

[33mWarning[0m for DAOConstantGas in contract 'UnicornBreeding':
    |        //deleteoffer вызовется внутри transfer
    |        unicornToken.marketTransfer(owner, msg.sender, _unicornId);
  > |        owner.transfer(price);
    |//        _deleteOffer(_unicornId);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(458)

[33mWarning[0m for LockedEther in contract 'UnicornBreeding':
    |}
    |
  > |contract UnicornBreeding is UnicornAccessControl {
    |    using SafeMath for uint;
    |    //onlyOwner
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(195)

[33mWarning[0m for TODAmount in contract 'UnicornBreeding':
    |        plusFreezingTime(_secondUnicornId);
    |        uint256 newUnicornId = unicornToken.createUnicorn(msg.sender);
  > |        blackBox.geneCore.value(unicornManagement.oraclizeFee())(newUnicornId, _firstUnicornId, _secondUnicornId);
    |        emit CreateUnicorn(msg.sender, newUnicornId, _firstUnicornId, _secondUnicornId);
    |        if (hybridizations[_firstUnicornId].price > 0) {
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(281)

[33mWarning[0m for TODAmount in contract 'UnicornBreeding':
    |        require(gen0Count < gen0Limit);
    |        uint256 newUnicornId = unicornToken.createUnicorn(_owner);
  > |        blackBox.createGen0.value(unicornManagement.oraclizeFee())(newUnicornId);
    |        emit CreateUnicorn(_owner, newUnicornId, 0, 0);
    |        gen0Count = gen0Count.add(1);
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(340)

[33mWarning[0m for TODAmount in contract 'UnicornBreeding':
    |        require(address(this).balance >= _value);
    |        DividendManagerInterface dividendManager = DividendManagerInterface(unicornManagement.dividendManagerAddress());
  > |        dividendManager.payDividend.value(_value)();
    |        emit FundsTransferred(unicornManagement.dividendManagerAddress(), _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(398)

[31mViolation[0m for TODReceiver in contract 'UnicornBreeding':
    |        plusFreezingTime(_secondUnicornId);
    |        uint256 newUnicornId = unicornToken.createUnicorn(msg.sender);
  > |        blackBox.geneCore.value(unicornManagement.oraclizeFee())(newUnicornId, _firstUnicornId, _secondUnicornId);
    |        emit CreateUnicorn(msg.sender, newUnicornId, _firstUnicornId, _secondUnicornId);
    |        if (hybridizations[_firstUnicornId].price > 0) {
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(281)

[31mViolation[0m for TODReceiver in contract 'UnicornBreeding':
    |        require(gen0Count < gen0Limit);
    |        uint256 newUnicornId = unicornToken.createUnicorn(_owner);
  > |        blackBox.createGen0.value(unicornManagement.oraclizeFee())(newUnicornId);
    |        emit CreateUnicorn(_owner, newUnicornId, 0, 0);
    |        gen0Count = gen0Count.add(1);
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(340)

[33mWarning[0m for TODReceiver in contract 'UnicornBreeding':
    |        require(address(this).balance >= _value);
    |        DividendManagerInterface dividendManager = DividendManagerInterface(unicornManagement.dividendManagerAddress());
  > |        dividendManager.payDividend.value(_value)();
    |        emit FundsTransferred(unicornManagement.dividendManagerAddress(), _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(398)

[33mWarning[0m for TODReceiver in contract 'UnicornBreeding':
    |        //deleteoffer вызовется внутри transfer
    |        unicornToken.marketTransfer(owner, msg.sender, _unicornId);
  > |        owner.transfer(price);
    |//        _deleteOffer(_unicornId);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(458)

[33mWarning[0m for UnhandledException in contract 'UnicornBreeding':
    |
    |    modifier onlyManager() {
  > |        require(msg.sender == unicornManagement.managerAddress());
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(140)

[33mWarning[0m for UnhandledException in contract 'UnicornBreeding':
    |
    |    modifier onlyCommunity() {
  > |        require(msg.sender == unicornManagement.communityAddress());
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(145)

[33mWarning[0m for UnhandledException in contract 'UnicornBreeding':
    |
    |    modifier onlyTournament() {
  > |        require(unicornManagement.isTournament(msg.sender));
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(150)

[33mWarning[0m for UnhandledException in contract 'UnicornBreeding':
    |
    |    modifier whenNotPaused() {
  > |        require(!unicornManagement.paused());
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(155)

[33mWarning[0m for UnhandledException in contract 'UnicornBreeding':
    |
    |    modifier whenPaused {
  > |        require(unicornManagement.paused());
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(160)

[33mWarning[0m for UnhandledException in contract 'UnicornBreeding':
    |
    |    modifier onlyUnicornToken() {
  > |        require(msg.sender == unicornManagement.unicornTokenAddress());
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(186)

[33mWarning[0m for UnhandledException in contract 'UnicornBreeding':
    |
    |    function isGamePaused() external view returns (bool) {
  > |        return unicornManagement.paused();
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(191)

[33mWarning[0m for UnhandledException in contract 'UnicornBreeding':
    |
    |    function init() onlyManagement whenPaused external {
  > |        unicornToken = UnicornTokenInterface(unicornManagement.unicornTokenAddress());
    |        blackBox = BlackBoxInterface(unicornManagement.blackBoxAddress());
    |        candyPowerToken = ERC20(unicornManagement.candyPowerToken());
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(248)

[33mWarning[0m for UnhandledException in contract 'UnicornBreeding':
    |    function init() onlyManagement whenPaused external {
    |        unicornToken = UnicornTokenInterface(unicornManagement.unicornTokenAddress());
  > |        blackBox = BlackBoxInterface(unicornManagement.blackBoxAddress());
    |        candyPowerToken = ERC20(unicornManagement.candyPowerToken());
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(249)

[33mWarning[0m for UnhandledException in contract 'UnicornBreeding':
    |        unicornToken = UnicornTokenInterface(unicornManagement.unicornTokenAddress());
    |        blackBox = BlackBoxInterface(unicornManagement.blackBoxAddress());
  > |        candyPowerToken = ERC20(unicornManagement.candyPowerToken());
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(250)

[33mWarning[0m for UnhandledException in contract 'UnicornBreeding':
    |
    |    function makeHybridization(uint _unicornId, uint _price) public {
  > |        require(unicornToken.owns(msg.sender, _unicornId));
    |        require(unicornToken.isUnfreezed(_unicornId));
    |        require(!hybridizations[_unicornId].exists);
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(254)

[33mWarning[0m for UnhandledException in contract 'UnicornBreeding':
    |    function makeHybridization(uint _unicornId, uint _price) public {
    |        require(unicornToken.owns(msg.sender, _unicornId));
  > |        require(unicornToken.isUnfreezed(_unicornId));
    |        require(!hybridizations[_unicornId].exists);
    |
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(255)

[33mWarning[0m for UnhandledException in contract 'UnicornBreeding':
    |
    |    function acceptHybridization(uint _firstUnicornId, uint _secondUnicornId) whenNotPaused public payable {
  > |        require(unicornToken.owns(msg.sender, _secondUnicornId));
    |        require(_secondUnicornId != _firstUnicornId);
    |        require(unicornToken.isUnfreezed(_firstUnicornId) && unicornToken.isUnfreezed(_secondUnicornId));
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(270)

[33mWarning[0m for UnhandledException in contract 'UnicornBreeding':
    |        require(unicornToken.owns(msg.sender, _secondUnicornId));
    |        require(_secondUnicornId != _firstUnicornId);
  > |        require(unicornToken.isUnfreezed(_firstUnicornId) && unicornToken.isUnfreezed(_secondUnicornId));
    |        require(hybridizations[_firstUnicornId].exists);
    |        require(msg.value == unicornManagement.oraclizeFee());
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(272)

[33mWarning[0m for UnhandledException in contract 'UnicornBreeding':
    |        require(unicornToken.isUnfreezed(_firstUnicornId) && unicornToken.isUnfreezed(_secondUnicornId));
    |        require(hybridizations[_firstUnicornId].exists);
  > |        require(msg.value == unicornManagement.oraclizeFee());
    |        if (hybridizations[_firstUnicornId].price > 0) {
    |            require(candyToken.transferFrom(msg.sender, this, getHybridizationPrice(_firstUnicornId)));
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(274)

[33mWarning[0m for UnhandledException in contract 'UnicornBreeding':
    |        require(msg.value == unicornManagement.oraclizeFee());
    |        if (hybridizations[_firstUnicornId].price > 0) {
  > |            require(candyToken.transferFrom(msg.sender, this, getHybridizationPrice(_firstUnicornId)));
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(276)

[33mWarning[0m for UnhandledException in contract 'UnicornBreeding':
    |
    |        plusFreezingTime(_secondUnicornId);
  > |        uint256 newUnicornId = unicornToken.createUnicorn(msg.sender);
    |        blackBox.geneCore.value(unicornManagement.oraclizeFee())(newUnicornId, _firstUnicornId, _secondUnicornId);
    |        emit CreateUnicorn(msg.sender, newUnicornId, _firstUnicornId, _secondUnicornId);
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(280)

[33mWarning[0m for UnhandledException in contract 'UnicornBreeding':
    |        plusFreezingTime(_secondUnicornId);
    |        uint256 newUnicornId = unicornToken.createUnicorn(msg.sender);
  > |        blackBox.geneCore.value(unicornManagement.oraclizeFee())(newUnicornId, _firstUnicornId, _secondUnicornId);
    |        emit CreateUnicorn(msg.sender, newUnicornId, _firstUnicornId, _secondUnicornId);
    |        if (hybridizations[_firstUnicornId].price > 0) {
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(281)

[33mWarning[0m for UnhandledException in contract 'UnicornBreeding':
    |        emit CreateUnicorn(msg.sender, newUnicornId, _firstUnicornId, _secondUnicornId);
    |        if (hybridizations[_firstUnicornId].price > 0) {
  > |            candyToken.transfer(unicornToken.ownerOf(_firstUnicornId), hybridizations[_firstUnicornId].price);
    |        }
    |        emit HybridizationAccept(_firstUnicornId, _secondUnicornId, newUnicornId);
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(284)

[33mWarning[0m for UnhandledException in contract 'UnicornBreeding':
    |
    |    function cancelHybridization (uint _unicornId) public {
  > |        require(unicornToken.owns(msg.sender,_unicornId));
    |        require(hybridizations[_unicornId].exists);
    |        _deleteHybridization(_unicornId);
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(292)

[33mWarning[0m for UnhandledException in contract 'UnicornBreeding':
    |
    |    function createUnicornForCandy() public payable whenNotPaused returns(uint256)   {
  > |        require(msg.value == unicornManagement.oraclizeFee());
    |        require(candyToken.transferFrom(msg.sender, this, getCreateUnicornPriceInCandy()));
    |        return _createUnicorn(msg.sender);
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(318)

[33mWarning[0m for UnhandledException in contract 'UnicornBreeding':
    |    function createUnicornForCandy() public payable whenNotPaused returns(uint256)   {
    |        require(msg.value == unicornManagement.oraclizeFee());
  > |        require(candyToken.transferFrom(msg.sender, this, getCreateUnicornPriceInCandy()));
    |        return _createUnicorn(msg.sender);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(319)

[33mWarning[0m for UnhandledException in contract 'UnicornBreeding':
    |        address owner = _owner == address(0) ? msg.sender : _owner;
    |        for (uint i = 0; i < _count; i++){
  > |            newUnicornId = unicornToken.createUnicorn(owner);
    |            blackBox.createGen0(newUnicornId);
    |            emit CreateUnicorn(owner, newUnicornId, 0, 0);
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(328)

[33mWarning[0m for UnhandledException in contract 'UnicornBreeding':
    |        for (uint i = 0; i < _count; i++){
    |            newUnicornId = unicornToken.createUnicorn(owner);
  > |            blackBox.createGen0(newUnicornId);
    |            emit CreateUnicorn(owner, newUnicornId, 0, 0);
    |            gen0Count = gen0Count.add(1);
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(329)

[33mWarning[0m for UnhandledException in contract 'UnicornBreeding':
    |    function _createUnicorn(address _owner) private returns(uint256) {
    |        require(gen0Count < gen0Limit);
  > |        uint256 newUnicornId = unicornToken.createUnicorn(_owner);
    |        blackBox.createGen0.value(unicornManagement.oraclizeFee())(newUnicornId);
    |        emit CreateUnicorn(_owner, newUnicornId, 0, 0);
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(339)

[33mWarning[0m for UnhandledException in contract 'UnicornBreeding':
    |        require(gen0Count < gen0Limit);
    |        uint256 newUnicornId = unicornToken.createUnicorn(_owner);
  > |        blackBox.createGen0.value(unicornManagement.oraclizeFee())(newUnicornId);
    |        emit CreateUnicorn(_owner, newUnicornId, 0, 0);
    |        gen0Count = gen0Count.add(1);
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(340)

[33mWarning[0m for UnhandledException in contract 'UnicornBreeding':
    |
    |    function plusFreezingTime(uint _unicornId) private {
  > |        unicornToken.plusFreezingTime(_unicornId);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(347)

[33mWarning[0m for UnhandledException in contract 'UnicornBreeding':
    |
    |    function plusTourFreezingTime(uint _unicornId) onlyTournament public {
  > |        unicornToken.plusTourFreezingTime(_unicornId);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(351)

[33mWarning[0m for UnhandledException in contract 'UnicornBreeding':
    |    //change freezing time for candy
    |    function minusFreezingTime(uint _unicornId) public {
  > |        require(candyPowerToken.transferFrom(msg.sender, this, unicornManagement.subFreezingPrice()));
    |        unicornToken.minusFreezingTime(_unicornId, unicornManagement.subFreezingTime());
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(356)

[33mWarning[0m for UnhandledException in contract 'UnicornBreeding':
    |    function minusFreezingTime(uint _unicornId) public {
    |        require(candyPowerToken.transferFrom(msg.sender, this, unicornManagement.subFreezingPrice()));
  > |        unicornToken.minusFreezingTime(_unicornId, unicornManagement.subFreezingTime());
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(357)

[33mWarning[0m for UnhandledException in contract 'UnicornBreeding':
    |    //change tour freezing time for candy
    |    function minusTourFreezingTime(uint _unicornId) public {
  > |        require(candyPowerToken.transferFrom(msg.sender, this, unicornManagement.subTourFreezingPrice()));
    |        unicornToken.minusTourFreezingTime(_unicornId, unicornManagement.subTourFreezingTime());
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(362)

[33mWarning[0m for UnhandledException in contract 'UnicornBreeding':
    |    function minusTourFreezingTime(uint _unicornId) public {
    |        require(candyPowerToken.transferFrom(msg.sender, this, unicornManagement.subTourFreezingPrice()));
  > |        unicornToken.minusTourFreezingTime(_unicornId, unicornManagement.subTourFreezingTime());
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(363)

[33mWarning[0m for UnhandledException in contract 'UnicornBreeding':
    |
    |    function getHybridizationPrice(uint _unicornId) public view returns (uint) {
  > |        return unicornManagement.getHybridizationFullPrice(hybridizations[_unicornId].price);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(367)

[33mWarning[0m for UnhandledException in contract 'UnicornBreeding':
    |
    |    function getEtherFeeForPriceInCandy() public view returns (uint) {
  > |        return unicornManagement.oraclizeFee();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(371)

[33mWarning[0m for UnhandledException in contract 'UnicornBreeding':
    |
    |    function getCreateUnicornPriceInCandy() public view returns (uint) {
  > |        return unicornManagement.getCreateUnicornFullPriceInCandy();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(375)

[33mWarning[0m for UnhandledException in contract 'UnicornBreeding':
    |
    |    function getCreateUnicornPrice() public view returns (uint) {
  > |        return unicornManagement.getCreateUnicornFullPrice();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(380)

[33mWarning[0m for UnhandledException in contract 'UnicornBreeding':
    |
    |    function withdrawTokens() onlyManager public {
  > |        require(candyToken.balanceOf(this) > 0 || candyPowerToken.balanceOf(this) > 0);
    |        if (candyToken.balanceOf(this) > 0) {
    |            candyToken.transfer(unicornManagement.walletAddress(), candyToken.balanceOf(this));
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(385)

[33mWarning[0m for UnhandledException in contract 'UnicornBreeding':
    |    function withdrawTokens() onlyManager public {
    |        require(candyToken.balanceOf(this) > 0 || candyPowerToken.balanceOf(this) > 0);
  > |        if (candyToken.balanceOf(this) > 0) {
    |            candyToken.transfer(unicornManagement.walletAddress(), candyToken.balanceOf(this));
    |        }
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(386)

[33mWarning[0m for UnhandledException in contract 'UnicornBreeding':
    |        require(candyToken.balanceOf(this) > 0 || candyPowerToken.balanceOf(this) > 0);
    |        if (candyToken.balanceOf(this) > 0) {
  > |            candyToken.transfer(unicornManagement.walletAddress(), candyToken.balanceOf(this));
    |        }
    |        if (candyPowerToken.balanceOf(this) > 0) {
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(387)

[33mWarning[0m for UnhandledException in contract 'UnicornBreeding':
    |            candyToken.transfer(unicornManagement.walletAddress(), candyToken.balanceOf(this));
    |        }
  > |        if (candyPowerToken.balanceOf(this) > 0) {
    |            candyPowerToken.transfer(unicornManagement.walletAddress(), candyPowerToken.balanceOf(this));
    |        }
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(389)

[33mWarning[0m for UnhandledException in contract 'UnicornBreeding':
    |        }
    |        if (candyPowerToken.balanceOf(this) > 0) {
  > |            candyPowerToken.transfer(unicornManagement.walletAddress(), candyPowerToken.balanceOf(this));
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(390)

[33mWarning[0m for UnhandledException in contract 'UnicornBreeding':
    |    function transferEthersToDividendManager(uint _value) onlyManager public {
    |        require(address(this).balance >= _value);
  > |        DividendManagerInterface dividendManager = DividendManagerInterface(unicornManagement.dividendManagerAddress());
    |        dividendManager.payDividend.value(_value)();
    |        emit FundsTransferred(unicornManagement.dividendManagerAddress(), _value);
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(397)

[33mWarning[0m for UnhandledException in contract 'UnicornBreeding':
    |        require(address(this).balance >= _value);
    |        DividendManagerInterface dividendManager = DividendManagerInterface(unicornManagement.dividendManagerAddress());
  > |        dividendManager.payDividend.value(_value)();
    |        emit FundsTransferred(unicornManagement.dividendManagerAddress(), _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(398)

[33mWarning[0m for UnhandledException in contract 'UnicornBreeding':
    |        DividendManagerInterface dividendManager = DividendManagerInterface(unicornManagement.dividendManagerAddress());
    |        dividendManager.payDividend.value(_value)();
  > |        emit FundsTransferred(unicornManagement.dividendManagerAddress(), _value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(399)

[33mWarning[0m for UnhandledException in contract 'UnicornBreeding':
    |
    |    function sellUnicorn(uint _unicornId, uint _price) public {
  > |        require(unicornToken.owns(msg.sender, _unicornId));
    |        require(!offers[_unicornId].exists);
    |
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(433)

[33mWarning[0m for UnhandledException in contract 'UnicornBreeding':
    |        require(offers[_unicornId].exists);
    |        uint price = offers[_unicornId].price;
  > |        require(msg.value == unicornManagement.getSellUnicornFullPrice(price));
    |
    |        address owner = unicornToken.ownerOf(_unicornId);
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(451)

[33mWarning[0m for UnhandledException in contract 'UnicornBreeding':
    |        require(msg.value == unicornManagement.getSellUnicornFullPrice(price));
    |
  > |        address owner = unicornToken.ownerOf(_unicornId);
    |
    |        emit UnicornSold(_unicornId);
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(453)

[33mWarning[0m for UnhandledException in contract 'UnicornBreeding':
    |        emit UnicornSold(_unicornId);
    |        //deleteoffer вызовется внутри transfer
  > |        unicornToken.marketTransfer(owner, msg.sender, _unicornId);
    |        owner.transfer(price);
    |//        _deleteOffer(_unicornId);
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(457)

[33mWarning[0m for UnhandledException in contract 'UnicornBreeding':
    |        //deleteoffer вызовется внутри transfer
    |        unicornToken.marketTransfer(owner, msg.sender, _unicornId);
  > |        owner.transfer(price);
    |//        _deleteOffer(_unicornId);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(458)

[33mWarning[0m for UnhandledException in contract 'UnicornBreeding':
    |
    |    function revokeUnicorn(uint _unicornId) public {
  > |        require(unicornToken.owns(msg.sender, _unicornId));
    |        require(offers[_unicornId].exists);
    |        _deleteOffer(_unicornId);
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(464)

[33mWarning[0m for UnhandledException in contract 'UnicornBreeding':
    |
    |    function getOfferPrice(uint _unicornId) public view returns (uint) {
  > |        return unicornManagement.getSellUnicornFullPrice(offers[_unicornId].price);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(486)

[31mViolation[0m for UnrestrictedEtherFlow in contract 'UnicornBreeding':
    |        plusFreezingTime(_secondUnicornId);
    |        uint256 newUnicornId = unicornToken.createUnicorn(msg.sender);
  > |        blackBox.geneCore.value(unicornManagement.oraclizeFee())(newUnicornId, _firstUnicornId, _secondUnicornId);
    |        emit CreateUnicorn(msg.sender, newUnicornId, _firstUnicornId, _secondUnicornId);
    |        if (hybridizations[_firstUnicornId].price > 0) {
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(281)

[31mViolation[0m for UnrestrictedEtherFlow in contract 'UnicornBreeding':
    |        require(gen0Count < gen0Limit);
    |        uint256 newUnicornId = unicornToken.createUnicorn(_owner);
  > |        blackBox.createGen0.value(unicornManagement.oraclizeFee())(newUnicornId);
    |        emit CreateUnicorn(_owner, newUnicornId, 0, 0);
    |        gen0Count = gen0Count.add(1);
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(340)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UnicornBreeding':
    |
    |    modifier onlyManager() {
  > |        require(msg.sender == unicornManagement.managerAddress());
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(140)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UnicornBreeding':
    |
    |    modifier onlyCommunity() {
  > |        require(msg.sender == unicornManagement.communityAddress());
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(145)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UnicornBreeding':
    |
    |    modifier onlyTournament() {
  > |        require(unicornManagement.isTournament(msg.sender));
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(150)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UnicornBreeding':
    |
    |    modifier whenNotPaused() {
  > |        require(!unicornManagement.paused());
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(155)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UnicornBreeding':
    |
    |    modifier whenPaused {
  > |        require(unicornManagement.paused());
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(160)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UnicornBreeding':
    |
    |    modifier onlyUnicornToken() {
  > |        require(msg.sender == unicornManagement.unicornTokenAddress());
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(186)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UnicornBreeding':
    |
    |    function isGamePaused() external view returns (bool) {
  > |        return unicornManagement.paused();
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(191)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UnicornBreeding':
    |
    |    function init() onlyManagement whenPaused external {
  > |        unicornToken = UnicornTokenInterface(unicornManagement.unicornTokenAddress());
    |        blackBox = BlackBoxInterface(unicornManagement.blackBoxAddress());
    |        candyPowerToken = ERC20(unicornManagement.candyPowerToken());
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(248)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UnicornBreeding':
    |    function init() onlyManagement whenPaused external {
    |        unicornToken = UnicornTokenInterface(unicornManagement.unicornTokenAddress());
  > |        blackBox = BlackBoxInterface(unicornManagement.blackBoxAddress());
    |        candyPowerToken = ERC20(unicornManagement.candyPowerToken());
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(249)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UnicornBreeding':
    |        unicornToken = UnicornTokenInterface(unicornManagement.unicornTokenAddress());
    |        blackBox = BlackBoxInterface(unicornManagement.blackBoxAddress());
  > |        candyPowerToken = ERC20(unicornManagement.candyPowerToken());
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(250)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UnicornBreeding':
    |
    |    function makeHybridization(uint _unicornId, uint _price) public {
  > |        require(unicornToken.owns(msg.sender, _unicornId));
    |        require(unicornToken.isUnfreezed(_unicornId));
    |        require(!hybridizations[_unicornId].exists);
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(254)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UnicornBreeding':
    |    function makeHybridization(uint _unicornId, uint _price) public {
    |        require(unicornToken.owns(msg.sender, _unicornId));
  > |        require(unicornToken.isUnfreezed(_unicornId));
    |        require(!hybridizations[_unicornId].exists);
    |
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(255)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UnicornBreeding':
    |
    |    function acceptHybridization(uint _firstUnicornId, uint _secondUnicornId) whenNotPaused public payable {
  > |        require(unicornToken.owns(msg.sender, _secondUnicornId));
    |        require(_secondUnicornId != _firstUnicornId);
    |        require(unicornToken.isUnfreezed(_firstUnicornId) && unicornToken.isUnfreezed(_secondUnicornId));
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(270)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UnicornBreeding':
    |        require(unicornToken.owns(msg.sender, _secondUnicornId));
    |        require(_secondUnicornId != _firstUnicornId);
  > |        require(unicornToken.isUnfreezed(_firstUnicornId) && unicornToken.isUnfreezed(_secondUnicornId));
    |        require(hybridizations[_firstUnicornId].exists);
    |        require(msg.value == unicornManagement.oraclizeFee());
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(272)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UnicornBreeding':
    |        require(unicornToken.isUnfreezed(_firstUnicornId) && unicornToken.isUnfreezed(_secondUnicornId));
    |        require(hybridizations[_firstUnicornId].exists);
  > |        require(msg.value == unicornManagement.oraclizeFee());
    |        if (hybridizations[_firstUnicornId].price > 0) {
    |            require(candyToken.transferFrom(msg.sender, this, getHybridizationPrice(_firstUnicornId)));
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(274)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UnicornBreeding':
    |        require(msg.value == unicornManagement.oraclizeFee());
    |        if (hybridizations[_firstUnicornId].price > 0) {
  > |            require(candyToken.transferFrom(msg.sender, this, getHybridizationPrice(_firstUnicornId)));
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(276)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UnicornBreeding':
    |
    |        plusFreezingTime(_secondUnicornId);
  > |        uint256 newUnicornId = unicornToken.createUnicorn(msg.sender);
    |        blackBox.geneCore.value(unicornManagement.oraclizeFee())(newUnicornId, _firstUnicornId, _secondUnicornId);
    |        emit CreateUnicorn(msg.sender, newUnicornId, _firstUnicornId, _secondUnicornId);
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(280)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UnicornBreeding':
    |        plusFreezingTime(_secondUnicornId);
    |        uint256 newUnicornId = unicornToken.createUnicorn(msg.sender);
  > |        blackBox.geneCore.value(unicornManagement.oraclizeFee())(newUnicornId, _firstUnicornId, _secondUnicornId);
    |        emit CreateUnicorn(msg.sender, newUnicornId, _firstUnicornId, _secondUnicornId);
    |        if (hybridizations[_firstUnicornId].price > 0) {
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(281)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UnicornBreeding':
    |        emit CreateUnicorn(msg.sender, newUnicornId, _firstUnicornId, _secondUnicornId);
    |        if (hybridizations[_firstUnicornId].price > 0) {
  > |            candyToken.transfer(unicornToken.ownerOf(_firstUnicornId), hybridizations[_firstUnicornId].price);
    |        }
    |        emit HybridizationAccept(_firstUnicornId, _secondUnicornId, newUnicornId);
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(284)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UnicornBreeding':
    |
    |    function cancelHybridization (uint _unicornId) public {
  > |        require(unicornToken.owns(msg.sender,_unicornId));
    |        require(hybridizations[_unicornId].exists);
    |        _deleteHybridization(_unicornId);
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(292)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UnicornBreeding':
    |
    |    function createUnicornForCandy() public payable whenNotPaused returns(uint256)   {
  > |        require(msg.value == unicornManagement.oraclizeFee());
    |        require(candyToken.transferFrom(msg.sender, this, getCreateUnicornPriceInCandy()));
    |        return _createUnicorn(msg.sender);
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(318)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UnicornBreeding':
    |    function createUnicornForCandy() public payable whenNotPaused returns(uint256)   {
    |        require(msg.value == unicornManagement.oraclizeFee());
  > |        require(candyToken.transferFrom(msg.sender, this, getCreateUnicornPriceInCandy()));
    |        return _createUnicorn(msg.sender);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(319)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UnicornBreeding':
    |        address owner = _owner == address(0) ? msg.sender : _owner;
    |        for (uint i = 0; i < _count; i++){
  > |            newUnicornId = unicornToken.createUnicorn(owner);
    |            blackBox.createGen0(newUnicornId);
    |            emit CreateUnicorn(owner, newUnicornId, 0, 0);
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(328)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UnicornBreeding':
    |        for (uint i = 0; i < _count; i++){
    |            newUnicornId = unicornToken.createUnicorn(owner);
  > |            blackBox.createGen0(newUnicornId);
    |            emit CreateUnicorn(owner, newUnicornId, 0, 0);
    |            gen0Count = gen0Count.add(1);
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(329)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UnicornBreeding':
    |    function _createUnicorn(address _owner) private returns(uint256) {
    |        require(gen0Count < gen0Limit);
  > |        uint256 newUnicornId = unicornToken.createUnicorn(_owner);
    |        blackBox.createGen0.value(unicornManagement.oraclizeFee())(newUnicornId);
    |        emit CreateUnicorn(_owner, newUnicornId, 0, 0);
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(339)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UnicornBreeding':
    |        require(gen0Count < gen0Limit);
    |        uint256 newUnicornId = unicornToken.createUnicorn(_owner);
  > |        blackBox.createGen0.value(unicornManagement.oraclizeFee())(newUnicornId);
    |        emit CreateUnicorn(_owner, newUnicornId, 0, 0);
    |        gen0Count = gen0Count.add(1);
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(340)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UnicornBreeding':
    |
    |    function plusFreezingTime(uint _unicornId) private {
  > |        unicornToken.plusFreezingTime(_unicornId);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(347)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UnicornBreeding':
    |
    |    function plusTourFreezingTime(uint _unicornId) onlyTournament public {
  > |        unicornToken.plusTourFreezingTime(_unicornId);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(351)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UnicornBreeding':
    |    //change freezing time for candy
    |    function minusFreezingTime(uint _unicornId) public {
  > |        require(candyPowerToken.transferFrom(msg.sender, this, unicornManagement.subFreezingPrice()));
    |        unicornToken.minusFreezingTime(_unicornId, unicornManagement.subFreezingTime());
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(356)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UnicornBreeding':
    |    function minusFreezingTime(uint _unicornId) public {
    |        require(candyPowerToken.transferFrom(msg.sender, this, unicornManagement.subFreezingPrice()));
  > |        unicornToken.minusFreezingTime(_unicornId, unicornManagement.subFreezingTime());
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(357)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UnicornBreeding':
    |    //change tour freezing time for candy
    |    function minusTourFreezingTime(uint _unicornId) public {
  > |        require(candyPowerToken.transferFrom(msg.sender, this, unicornManagement.subTourFreezingPrice()));
    |        unicornToken.minusTourFreezingTime(_unicornId, unicornManagement.subTourFreezingTime());
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(362)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UnicornBreeding':
    |    function minusTourFreezingTime(uint _unicornId) public {
    |        require(candyPowerToken.transferFrom(msg.sender, this, unicornManagement.subTourFreezingPrice()));
  > |        unicornToken.minusTourFreezingTime(_unicornId, unicornManagement.subTourFreezingTime());
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(363)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UnicornBreeding':
    |
    |    function getHybridizationPrice(uint _unicornId) public view returns (uint) {
  > |        return unicornManagement.getHybridizationFullPrice(hybridizations[_unicornId].price);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(367)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UnicornBreeding':
    |
    |    function getEtherFeeForPriceInCandy() public view returns (uint) {
  > |        return unicornManagement.oraclizeFee();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(371)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UnicornBreeding':
    |
    |    function getCreateUnicornPriceInCandy() public view returns (uint) {
  > |        return unicornManagement.getCreateUnicornFullPriceInCandy();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(375)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UnicornBreeding':
    |
    |    function getCreateUnicornPrice() public view returns (uint) {
  > |        return unicornManagement.getCreateUnicornFullPrice();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(380)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UnicornBreeding':
    |
    |    function withdrawTokens() onlyManager public {
  > |        require(candyToken.balanceOf(this) > 0 || candyPowerToken.balanceOf(this) > 0);
    |        if (candyToken.balanceOf(this) > 0) {
    |            candyToken.transfer(unicornManagement.walletAddress(), candyToken.balanceOf(this));
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(385)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UnicornBreeding':
    |    function withdrawTokens() onlyManager public {
    |        require(candyToken.balanceOf(this) > 0 || candyPowerToken.balanceOf(this) > 0);
  > |        if (candyToken.balanceOf(this) > 0) {
    |            candyToken.transfer(unicornManagement.walletAddress(), candyToken.balanceOf(this));
    |        }
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(386)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UnicornBreeding':
    |        require(candyToken.balanceOf(this) > 0 || candyPowerToken.balanceOf(this) > 0);
    |        if (candyToken.balanceOf(this) > 0) {
  > |            candyToken.transfer(unicornManagement.walletAddress(), candyToken.balanceOf(this));
    |        }
    |        if (candyPowerToken.balanceOf(this) > 0) {
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(387)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UnicornBreeding':
    |            candyToken.transfer(unicornManagement.walletAddress(), candyToken.balanceOf(this));
    |        }
  > |        if (candyPowerToken.balanceOf(this) > 0) {
    |            candyPowerToken.transfer(unicornManagement.walletAddress(), candyPowerToken.balanceOf(this));
    |        }
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(389)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UnicornBreeding':
    |        }
    |        if (candyPowerToken.balanceOf(this) > 0) {
  > |            candyPowerToken.transfer(unicornManagement.walletAddress(), candyPowerToken.balanceOf(this));
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(390)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UnicornBreeding':
    |    function transferEthersToDividendManager(uint _value) onlyManager public {
    |        require(address(this).balance >= _value);
  > |        DividendManagerInterface dividendManager = DividendManagerInterface(unicornManagement.dividendManagerAddress());
    |        dividendManager.payDividend.value(_value)();
    |        emit FundsTransferred(unicornManagement.dividendManagerAddress(), _value);
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(397)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UnicornBreeding':
    |        DividendManagerInterface dividendManager = DividendManagerInterface(unicornManagement.dividendManagerAddress());
    |        dividendManager.payDividend.value(_value)();
  > |        emit FundsTransferred(unicornManagement.dividendManagerAddress(), _value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(399)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UnicornBreeding':
    |
    |    function sellUnicorn(uint _unicornId, uint _price) public {
  > |        require(unicornToken.owns(msg.sender, _unicornId));
    |        require(!offers[_unicornId].exists);
    |
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(433)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UnicornBreeding':
    |        require(offers[_unicornId].exists);
    |        uint price = offers[_unicornId].price;
  > |        require(msg.value == unicornManagement.getSellUnicornFullPrice(price));
    |
    |        address owner = unicornToken.ownerOf(_unicornId);
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(451)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UnicornBreeding':
    |        require(msg.value == unicornManagement.getSellUnicornFullPrice(price));
    |
  > |        address owner = unicornToken.ownerOf(_unicornId);
    |
    |        emit UnicornSold(_unicornId);
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(453)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UnicornBreeding':
    |        emit UnicornSold(_unicornId);
    |        //deleteoffer вызовется внутри transfer
  > |        unicornToken.marketTransfer(owner, msg.sender, _unicornId);
    |        owner.transfer(price);
    |//        _deleteOffer(_unicornId);
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(457)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UnicornBreeding':
    |
    |    function revokeUnicorn(uint _unicornId) public {
  > |        require(unicornToken.owns(msg.sender, _unicornId));
    |        require(offers[_unicornId].exists);
    |        _deleteOffer(_unicornId);
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(464)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UnicornBreeding':
    |
    |    function getOfferPrice(uint _unicornId) public view returns (uint) {
  > |        return unicornManagement.getSellUnicornFullPrice(offers[_unicornId].price);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(486)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UnicornBreeding':
    |        require(address(this).balance >= _value);
    |        DividendManagerInterface dividendManager = DividendManagerInterface(unicornManagement.dividendManagerAddress());
  > |        dividendManager.payDividend.value(_value)();
    |        emit FundsTransferred(unicornManagement.dividendManagerAddress(), _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(398)

[31mViolation[0m for UnrestrictedWrite in contract 'UnicornBreeding':
    |        require(!hybridizations[_unicornId].exists);
    |
  > |        hybridizations[_unicornId] = Hybridization({
    |            price: _price,
    |            exists: true,
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(258)

[31mViolation[0m for UnrestrictedWrite in contract 'UnicornBreeding':
    |            listIndex: hybridizationListSize
    |            });
  > |        hybridizationList[hybridizationListSize++] = _unicornId;
    |
    |        emit HybridizationAdd(_unicornId, _price);
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(263)

[31mViolation[0m for UnrestrictedWrite in contract 'UnicornBreeding':
    |        require(!offers[_unicornId].exists);
    |
  > |        offers[_unicornId] = Offer({
    |            price: _price,
    |            exists: true,
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(436)

[31mViolation[0m for UnrestrictedWrite in contract 'UnicornBreeding':
    |            });
    |
  > |        market[marketSize++] = _unicornId;
    |
    |        emit OfferAdd(_unicornId, _price);
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(442)

[33mWarning[0m for UnrestrictedWrite in contract 'UnicornBreeding':
    |
    |    function init() onlyManagement whenPaused external {
  > |        unicornToken = UnicornTokenInterface(unicornManagement.unicornTokenAddress());
    |        blackBox = BlackBoxInterface(unicornManagement.blackBoxAddress());
    |        candyPowerToken = ERC20(unicornManagement.candyPowerToken());
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(248)

[33mWarning[0m for UnrestrictedWrite in contract 'UnicornBreeding':
    |    function init() onlyManagement whenPaused external {
    |        unicornToken = UnicornTokenInterface(unicornManagement.unicornTokenAddress());
  > |        blackBox = BlackBoxInterface(unicornManagement.blackBoxAddress());
    |        candyPowerToken = ERC20(unicornManagement.candyPowerToken());
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(249)

[33mWarning[0m for UnrestrictedWrite in contract 'UnicornBreeding':
    |        unicornToken = UnicornTokenInterface(unicornManagement.unicornTokenAddress());
    |        blackBox = BlackBoxInterface(unicornManagement.blackBoxAddress());
  > |        candyPowerToken = ERC20(unicornManagement.candyPowerToken());
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(250)

[33mWarning[0m for UnrestrictedWrite in contract 'UnicornBreeding':
    |    function _deleteHybridization(uint _unicornId) internal {
    |        if (hybridizations[_unicornId].exists) {
  > |            hybridizations[hybridizationList[--hybridizationListSize]].listIndex = hybridizations[_unicornId].listIndex;
    |            hybridizationList[hybridizations[_unicornId].listIndex] = hybridizationList[hybridizationListSize];
    |            delete hybridizationList[hybridizationListSize];
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(303)

[33mWarning[0m for UnrestrictedWrite in contract 'UnicornBreeding':
    |        if (hybridizations[_unicornId].exists) {
    |            hybridizations[hybridizationList[--hybridizationListSize]].listIndex = hybridizations[_unicornId].listIndex;
  > |            hybridizationList[hybridizations[_unicornId].listIndex] = hybridizationList[hybridizationListSize];
    |            delete hybridizationList[hybridizationListSize];
    |            delete hybridizations[_unicornId];
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(304)

[33mWarning[0m for UnrestrictedWrite in contract 'UnicornBreeding':
    |            hybridizations[hybridizationList[--hybridizationListSize]].listIndex = hybridizations[_unicornId].listIndex;
    |            hybridizationList[hybridizations[_unicornId].listIndex] = hybridizationList[hybridizationListSize];
  > |            delete hybridizationList[hybridizationListSize];
    |            delete hybridizations[_unicornId];
    |            emit HybridizationDelete(_unicornId);
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(305)

[33mWarning[0m for UnrestrictedWrite in contract 'UnicornBreeding':
    |            hybridizationList[hybridizations[_unicornId].listIndex] = hybridizationList[hybridizationListSize];
    |            delete hybridizationList[hybridizationListSize];
  > |            delete hybridizations[_unicornId];
    |            emit HybridizationDelete(_unicornId);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(306)

[33mWarning[0m for UnrestrictedWrite in contract 'UnicornBreeding':
    |            blackBox.createGen0(newUnicornId);
    |            emit CreateUnicorn(owner, newUnicornId, 0, 0);
  > |            gen0Count = gen0Count.add(1);
    |            gen0PresaleCount = gen0PresaleCount.add(1);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(331)

[33mWarning[0m for UnrestrictedWrite in contract 'UnicornBreeding':
    |            emit CreateUnicorn(owner, newUnicornId, 0, 0);
    |            gen0Count = gen0Count.add(1);
  > |            gen0PresaleCount = gen0PresaleCount.add(1);
    |        }
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(332)

[33mWarning[0m for UnrestrictedWrite in contract 'UnicornBreeding':
    |        blackBox.createGen0.value(unicornManagement.oraclizeFee())(newUnicornId);
    |        emit CreateUnicorn(_owner, newUnicornId, 0, 0);
  > |        gen0Count = gen0Count.add(1);
    |        return newUnicornId;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(342)

[33mWarning[0m for UnrestrictedWrite in contract 'UnicornBreeding':
    |    function setGen0Limit() external onlyCommunity {
    |        require(gen0Count == gen0Limit);
  > |        gen0Limit = gen0Limit.add(gen0Step);
    |        emit NewGen0Limit(gen0Limit);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(405)

[33mWarning[0m for UnrestrictedWrite in contract 'UnicornBreeding':
    |
    |    function setGen0Step(uint _step) external onlyCommunity {
  > |        gen0Step = _step;
    |        emit NewGen0Step(gen0Limit);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(410)

[33mWarning[0m for UnrestrictedWrite in contract 'UnicornBreeding':
    |    function _deleteOffer(uint _unicornId) internal {
    |        if (offers[_unicornId].exists) {
  > |            offers[market[--marketSize]].marketIndex = offers[_unicornId].marketIndex;
    |            market[offers[_unicornId].marketIndex] = market[marketSize];
    |            delete market[marketSize];
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(477)

[33mWarning[0m for UnrestrictedWrite in contract 'UnicornBreeding':
    |        if (offers[_unicornId].exists) {
    |            offers[market[--marketSize]].marketIndex = offers[_unicornId].marketIndex;
  > |            market[offers[_unicornId].marketIndex] = market[marketSize];
    |            delete market[marketSize];
    |            delete offers[_unicornId];
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(478)

[33mWarning[0m for UnrestrictedWrite in contract 'UnicornBreeding':
    |            offers[market[--marketSize]].marketIndex = offers[_unicornId].marketIndex;
    |            market[offers[_unicornId].marketIndex] = market[marketSize];
  > |            delete market[marketSize];
    |            delete offers[_unicornId];
    |            emit OfferDelete(_unicornId);
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(479)

[33mWarning[0m for UnrestrictedWrite in contract 'UnicornBreeding':
    |            market[offers[_unicornId].marketIndex] = market[marketSize];
    |            delete market[marketSize];
  > |            delete offers[_unicornId];
    |            emit OfferDelete(_unicornId);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x4fdb91dbce6cee2e08cf85d26eaa3e9bca0c12fe.sol(480)


