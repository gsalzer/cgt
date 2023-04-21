Processing contract: /home/jiaming/mavs_srcs/contract@0x10cc060f6f9b2e5dcdb23f1361e4b368a7daec73.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x10cc060f6f9b2e5dcdb23f1361e4b368a7daec73.sol:UnicornInit
Processing contract: /home/jiaming/mavs_srcs/contract@0x10cc060f6f9b2e5dcdb23f1361e4b368a7daec73.sol:UnicornManagement
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.21;
    |
  > |library SafeMath {
    |    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |        if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0x10cc060f6f9b2e5dcdb23f1361e4b368a7daec73.sol(3)

[31mViolation[0m for LockedEther in contract 'UnicornManagement':
    |}
    |
  > |contract UnicornManagement {
    |    using SafeMath for uint;
    |
  at /home/jiaming/mavs_srcs/contract@0x10cc060f6f9b2e5dcdb23f1361e4b368a7daec73.sol(36)

[33mWarning[0m for UnhandledException in contract 'UnicornManagement':
    |    function runInit() external onlyOwner whenPaused {
    |        for(uint i = 0; i < initList.length; i++) {
  > |            UnicornInit(initList[i]).init();
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x10cc060f6f9b2e5dcdb23f1361e4b368a7daec73.sol(164)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UnicornManagement':
    |    function runInit() external onlyOwner whenPaused {
    |        for(uint i = 0; i < initList.length; i++) {
  > |            UnicornInit(initList[i]).init();
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x10cc060f6f9b2e5dcdb23f1361e4b368a7daec73.sol(164)

[31mViolation[0m for UnrestrictedWrite in contract 'UnicornManagement':
    |}
    |
  > |contract UnicornManagement {
    |    using SafeMath for uint;
    |
  at /home/jiaming/mavs_srcs/contract@0x10cc060f6f9b2e5dcdb23f1361e4b368a7daec73.sol(36)

[33mWarning[0m for UnrestrictedWrite in contract 'UnicornManagement':
    |pragma solidity ^0.4.21;
    |
  > |library SafeMath {
    |    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |        if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0x10cc060f6f9b2e5dcdb23f1361e4b368a7daec73.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'UnicornManagement':
    |}
    |
  > |contract UnicornManagement {
    |    using SafeMath for uint;
    |
  at /home/jiaming/mavs_srcs/contract@0x10cc060f6f9b2e5dcdb23f1361e4b368a7daec73.sol(36)

[33mWarning[0m for UnrestrictedWrite in contract 'UnicornManagement':
    |
    |    function lock() external onlyOwner whenPaused whenUnlocked {
  > |        locked = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x10cc060f6f9b2e5dcdb23f1361e4b368a7daec73.sol(119)

[33mWarning[0m for UnrestrictedWrite in contract 'UnicornManagement':
    |
    |        if (!initItems[_contract].exists) {
  > |            initItems[_contract] = InitItem({
    |                listIndex: initList.length,
    |                exists: true
  at /home/jiaming/mavs_srcs/contract@0x10cc060f6f9b2e5dcdb23f1361e4b368a7daec73.sol(144)

[33mWarning[0m for UnrestrictedWrite in contract 'UnicornManagement':
    |                exists: true
    |                });
  > |            initList.push(_contract);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x10cc060f6f9b2e5dcdb23f1361e4b368a7daec73.sol(148)

[33mWarning[0m for UnrestrictedWrite in contract 'UnicornManagement':
    |        require(initItems[_contract].exists && initList.length > 0);
    |        uint lastIdx = initList.length - 1;
  > |        initItems[initList[lastIdx]].listIndex = initItems[_contract].listIndex;
    |        initList[initItems[_contract].listIndex] = initList[lastIdx];
    |        initList.length--;
  at /home/jiaming/mavs_srcs/contract@0x10cc060f6f9b2e5dcdb23f1361e4b368a7daec73.sol(155)

[33mWarning[0m for UnrestrictedWrite in contract 'UnicornManagement':
    |        uint lastIdx = initList.length - 1;
    |        initItems[initList[lastIdx]].listIndex = initItems[_contract].listIndex;
  > |        initList[initItems[_contract].listIndex] = initList[lastIdx];
    |        initList.length--;
    |        delete initItems[_contract];
  at /home/jiaming/mavs_srcs/contract@0x10cc060f6f9b2e5dcdb23f1361e4b368a7daec73.sol(156)

[33mWarning[0m for UnrestrictedWrite in contract 'UnicornManagement':
    |        initList[initItems[_contract].listIndex] = initList[lastIdx];
    |        initList.length--;
  > |        delete initItems[_contract];
    |
    |    }
  at /home/jiaming/mavs_srcs/contract@0x10cc060f6f9b2e5dcdb23f1361e4b368a7daec73.sol(158)

[33mWarning[0m for UnrestrictedWrite in contract 'UnicornManagement':
    |    function setCandyPowerToken(address _candyPowerToken) external onlyOwner whenPaused {
    |        require(_candyPowerToken != address(0));
  > |        candyPowerToken = _candyPowerToken;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x10cc060f6f9b2e5dcdb23f1361e4b368a7daec73.sol(170)

[33mWarning[0m for UnrestrictedWrite in contract 'UnicornManagement':
    |        require(_unicornTokenAddress != address(0));
    |        //        require(unicornTokenAddress == address(0));
  > |        unicornTokenAddress = _unicornTokenAddress;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x10cc060f6f9b2e5dcdb23f1361e4b368a7daec73.sol(176)

[33mWarning[0m for UnrestrictedWrite in contract 'UnicornManagement':
    |    function setBlackBox(address _blackBoxAddress) external onlyOwner whenPaused {
    |        require(_blackBoxAddress != address(0));
  > |        blackBoxAddress = _blackBoxAddress;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x10cc060f6f9b2e5dcdb23f1361e4b368a7daec73.sol(181)

[33mWarning[0m for UnrestrictedWrite in contract 'UnicornManagement':
    |    function setGeneLab(address _geneLabAddress) external onlyOwner whenPaused {
    |        require(_geneLabAddress != address(0));
  > |        geneLabAddress = _geneLabAddress;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x10cc060f6f9b2e5dcdb23f1361e4b368a7daec73.sol(186)

[33mWarning[0m for UnrestrictedWrite in contract 'UnicornManagement':
    |        require(_unicornBreedingAddress != address(0));
    |        //        require(unicornBreedingAddress == address(0));
  > |        unicornBreedingAddress = _unicornBreedingAddress;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x10cc060f6f9b2e5dcdb23f1361e4b368a7daec73.sol(192)

[33mWarning[0m for UnrestrictedWrite in contract 'UnicornManagement':
    |    function setManagerAddress(address _managerAddress) external onlyOwner {
    |        require(_managerAddress != address(0));
  > |        managerAddress = _managerAddress;
    |        emit NewManagerAddress(_managerAddress);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x10cc060f6f9b2e5dcdb23f1361e4b368a7daec73.sol(197)

[33mWarning[0m for UnrestrictedWrite in contract 'UnicornManagement':
    |    function setDividendManager(address _dividendManagerAddress) external onlyOwner {
    |        require(_dividendManagerAddress != address(0));
  > |        dividendManagerAddress = _dividendManagerAddress;
    |        emit NewDividendManagerAddress(_dividendManagerAddress);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x10cc060f6f9b2e5dcdb23f1361e4b368a7daec73.sol(203)

[33mWarning[0m for UnrestrictedWrite in contract 'UnicornManagement':
    |    function setWallet(address _walletAddress) external onlyOwner {
    |        require(_walletAddress != address(0));
  > |        walletAddress = _walletAddress;
    |        emit NewWalletAddress(_walletAddress);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x10cc060f6f9b2e5dcdb23f1361e4b368a7daec73.sol(209)

[33mWarning[0m for UnrestrictedWrite in contract 'UnicornManagement':
    |    function setTournament(address _tournamentAddress) external onlyOwner {
    |        require(_tournamentAddress != address(0));
  > |        tournaments[_tournamentAddress] = true;
    |        emit AddTournament(_tournamentAddress);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x10cc060f6f9b2e5dcdb23f1361e4b368a7daec73.sol(215)

[33mWarning[0m for UnrestrictedWrite in contract 'UnicornManagement':
    |    function delTournament(address _tournamentAddress) external onlyOwner {
    |        require(tournaments[_tournamentAddress]);
  > |        tournaments[_tournamentAddress] = false;
    |        emit DelTournament(_tournamentAddress);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x10cc060f6f9b2e5dcdb23f1361e4b368a7daec73.sol(221)

[33mWarning[0m for UnrestrictedWrite in contract 'UnicornManagement':
    |    function transferOwnership(address _ownerAddress) external onlyOwner {
    |        require(_ownerAddress != address(0));
  > |        ownerAddress = _ownerAddress;
    |        emit OwnershipTransferred(ownerAddress, _ownerAddress);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x10cc060f6f9b2e5dcdb23f1361e4b368a7daec73.sol(227)

[33mWarning[0m for UnrestrictedWrite in contract 'UnicornManagement':
    |        require(_percent < 2500);
    |        //no more then 25%
  > |        createDividendPercent = _percent;
    |        emit NewCreateDividendPercent(_percent);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x10cc060f6f9b2e5dcdb23f1361e4b368a7daec73.sol(235)

[33mWarning[0m for UnrestrictedWrite in contract 'UnicornManagement':
    |        require(_percent < 2500);
    |        //no more then 25%
  > |        sellDividendPercent = _percent;
    |        emit NewSellDividendPercent(_percent);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x10cc060f6f9b2e5dcdb23f1361e4b368a7daec73.sol(242)

[33mWarning[0m for UnrestrictedWrite in contract 'UnicornManagement':
    |    //time in minutes
    |    function setSubFreezingTime(uint64 _time) external onlyManager {
  > |        subFreezingTime = _time * 1 minutes;
    |        emit NewSubFreezingTime(_time);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x10cc060f6f9b2e5dcdb23f1361e4b368a7daec73.sol(248)

[33mWarning[0m for UnrestrictedWrite in contract 'UnicornManagement':
    |    //price in CandyCoins
    |    function setSubFreezingPrice(uint _price) external onlyManager {
  > |        subFreezingPrice = _price;
    |        emit NewSubFreezingPrice(_price);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x10cc060f6f9b2e5dcdb23f1361e4b368a7daec73.sol(254)

[33mWarning[0m for UnrestrictedWrite in contract 'UnicornManagement':
    |    //time in minutes
    |    function setSubTourFreezingTime(uint64 _time) external onlyManager {
  > |        subTourFreezingTime = _time * 1 minutes;
    |        emit NewSubTourFreezingTime(_time);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x10cc060f6f9b2e5dcdb23f1361e4b368a7daec73.sol(261)

[33mWarning[0m for UnrestrictedWrite in contract 'UnicornManagement':
    |    //price in CandyCoins
    |    function setSubTourFreezingPrice(uint _price) external onlyManager {
  > |        subTourFreezingPrice = _price;
    |        emit NewSubTourFreezingPrice(_price);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x10cc060f6f9b2e5dcdb23f1361e4b368a7daec73.sol(267)

[33mWarning[0m for UnrestrictedWrite in contract 'UnicornManagement':
    |    //in weis
    |    function setOraclizeFee(uint _fee) external onlyManager {
  > |        oraclizeFee = _fee;
    |        emit NewOraclizeFee(_fee);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x10cc060f6f9b2e5dcdb23f1361e4b368a7daec73.sol(273)

[33mWarning[0m for UnrestrictedWrite in contract 'UnicornManagement':
    |    //price in weis
    |    function setCreateUnicornPrice(uint _price, uint _candyPrice) external onlyManager {
  > |        createUnicornPrice = _price;
    |        createUnicornPriceInCandy = _candyPrice;
    |        emit NewCreateUnicornPrice(_price, _candyPrice);
  at /home/jiaming/mavs_srcs/contract@0x10cc060f6f9b2e5dcdb23f1361e4b368a7daec73.sol(279)

[33mWarning[0m for UnrestrictedWrite in contract 'UnicornManagement':
    |    function setCreateUnicornPrice(uint _price, uint _candyPrice) external onlyManager {
    |        createUnicornPrice = _price;
  > |        createUnicornPriceInCandy = _candyPrice;
    |        emit NewCreateUnicornPrice(_price, _candyPrice);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x10cc060f6f9b2e5dcdb23f1361e4b368a7daec73.sol(280)

[33mWarning[0m for UnrestrictedWrite in contract 'UnicornManagement':
    |    function setCommunity(address _communityAddress) external onlyCommunity {
    |        require(_communityAddress != address(0));
  > |        communityAddress = _communityAddress;
    |        emit NewCommunityAddress(_communityAddress);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x10cc060f6f9b2e5dcdb23f1361e4b368a7daec73.sol(286)

[33mWarning[0m for UnrestrictedWrite in contract 'UnicornManagement':
    |
    |    function pause() external onlyOwner whenNotPaused {
  > |        paused = true;
    |        emit GamePaused();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x10cc060f6f9b2e5dcdb23f1361e4b368a7daec73.sol(292)

[33mWarning[0m for UnrestrictedWrite in contract 'UnicornManagement':
    |
    |    function unpause() external onlyOwner whenPaused {
  > |        paused = false;
    |        emit GameResumed();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x10cc060f6f9b2e5dcdb23f1361e4b368a7daec73.sol(297)


