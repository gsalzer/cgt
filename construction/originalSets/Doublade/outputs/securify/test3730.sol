Processing contract: /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol:Etherama
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol:EtheramaCommon
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol:EtheramaCore
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol:EtheramaData
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol:EtheramaGasPriceLimit
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol:IStdToken
Processing contract: /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol:RealMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'EtheramaCommon':
    |}
    |
  > |contract EtheramaCommon {
    |    
    |    //main adrministrators of the Etherama network
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(9)

[31mViolation[0m for MissingInputValidation in contract 'EtheramaCommon':
    |    
    |    
  > |    function addAdministator(address addr) onlyAdministrator public {
    |        _administrators[addr] = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(33)

[31mViolation[0m for MissingInputValidation in contract 'EtheramaCommon':
    |    }
    |
  > |    function removeAdministator(address addr) onlyAdministrator public {
    |        _administrators[addr] = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(37)

[31mViolation[0m for MissingInputValidation in contract 'EtheramaCommon':
    |    }
    |
  > |    function isAdministrator(address addr) public view returns (bool) {
    |        return _administrators[addr];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(41)

[31mViolation[0m for MissingInputValidation in contract 'EtheramaCommon':
    |    }
    |
  > |    function addManager(address addr) onlyAdministrator public {
    |        _managers[addr] = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(45)

[31mViolation[0m for MissingInputValidation in contract 'EtheramaCommon':
    |    }
    |
  > |    function removeManager(address addr) onlyAdministrator public {
    |        _managers[addr] = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(49)

[31mViolation[0m for MissingInputValidation in contract 'EtheramaCommon':
    |    }
    |    
  > |    function isManager(address addr) public view returns (bool) {
    |        return _managers[addr];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(53)

[31mViolation[0m for UnrestrictedWrite in contract 'EtheramaCommon':
    |    
    |    function addAdministator(address addr) onlyAdministrator public {
  > |        _administrators[addr] = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(34)

[31mViolation[0m for UnrestrictedWrite in contract 'EtheramaCommon':
    |
    |    function removeAdministator(address addr) onlyAdministrator public {
  > |        _administrators[addr] = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(38)

[31mViolation[0m for UnrestrictedWrite in contract 'EtheramaCommon':
    |
    |    function addManager(address addr) onlyAdministrator public {
  > |        _managers[addr] = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(46)

[31mViolation[0m for UnrestrictedWrite in contract 'EtheramaCommon':
    |
    |    function removeManager(address addr) onlyAdministrator public {
  > |        _managers[addr] = false;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(50)

[33mWarning[0m for LockedEther in contract 'EtheramaData':
    |
    |// Data contract for Etherama contract controller. Data contract cannot be changed so no data can be lost. On the other hand Etherama controller can be replaced if some error is found.
  > |contract EtheramaData {
    |
    |    // tranding token address
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(567)

[31mViolation[0m for MissingInputValidation in contract 'EtheramaData':
    |    
    |
  > |    function setNewControllerAddress(address newAddress) onlyController public {
    |        _controllerAddress = newAddress;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(639)

[31mViolation[0m for MissingInputValidation in contract 'EtheramaData':
    |    }
    |
  > |    function addAdministator(address addr) onlyController public {
    |        _administrators[addr] = true;
    |        _administratorCount = SafeMath.add(_administratorCount, 1);
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(649)

[31mViolation[0m for MissingInputValidation in contract 'EtheramaData':
    |    }
    |
  > |    function removeAdministator(address addr) onlyController public {
    |        _administrators[addr] = false;
    |        _administratorCount = SafeMath.sub(_administratorCount, 1);
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(654)

[31mViolation[0m for MissingInputValidation in contract 'EtheramaData':
    |    }
    |    
  > |    function isAdministrator(address addr) public view returns(bool) {
    |        return _administrators[addr];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(663)

[31mViolation[0m for MissingInputValidation in contract 'EtheramaData':
    |    }    
    |
  > |    function setTotalSupply(uint256 val) onlyController public {
    |        _totalSupply = val;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(694)

[31mViolation[0m for MissingInputValidation in contract 'EtheramaData':
    |    }
    |    
  > |    function setRealTokenPrice(int128 val) onlyController public {
    |        _realTokenPrice = val;
    |    }    
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(698)

[31mViolation[0m for MissingInputValidation in contract 'EtheramaData':
    |    
    |    
  > |    function setHasMaxPurchaseLimit(bool val) onlyController public {
    |        _hasMaxPurchaseLimit = val;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(703)

[31mViolation[0m for MissingInputValidation in contract 'EtheramaData':
    |    }
    |    
  > |    function getUserTokenLocalBalance(address userAddress) public view returns(uint256) {
    |        return _core.getUserTokenLocalBalance(address(this), userAddress);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(707)

[31mViolation[0m for MissingInputValidation in contract 'EtheramaData':
    |    }
    |    
  > |    function getActualUserTokenBalance(address userAddress) public view returns(uint256) {
    |        return SafeMath.min(getUserTokenLocalBalance(userAddress), _token.balanceOf(userAddress));
    |    }  
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(711)

[31mViolation[0m for MissingInputValidation in contract 'EtheramaData':
    |    }
    |    
  > |    function getUserRewardPayouts(address userAddress) public view returns(uint256) {
    |        return _core.getUserRewardPayouts(address(this), userAddress);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(719)

[31mViolation[0m for MissingInputValidation in contract 'EtheramaData':
    |    }
    |    
  > |    function getUserRefBalance(address userAddress) public view returns(uint256) {
    |        return _core.getUserRefBalance(address(this), userAddress);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(723)

[31mViolation[0m for MissingInputValidation in contract 'EtheramaData':
    |    }
    |    
  > |    function getUserReward(address userAddress, bool incRefBonus, bool incPromoBonus) public view returns(uint256) {
    |        return _core.getUserReward(address(this), userAddress, true, incRefBonus, incPromoBonus);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(727)

[31mViolation[0m for MissingInputValidation in contract 'EtheramaData':
    |    }
    |    
  > |    function getUserTotalPromoBonus(address userAddress) public view returns(uint256) {
    |        return _core.getUserTotalPromoBonus(address(this), userAddress);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(731)

[31mViolation[0m for MissingInputValidation in contract 'EtheramaData':
    |    }
    |    
  > |    function getUserBigPromoBonus(address userAddress) public view returns(uint256) {
    |        return _core.getUserBigPromoBonus(address(this), userAddress);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(735)

[31mViolation[0m for MissingInputValidation in contract 'EtheramaData':
    |    }
    |
  > |    function getUserQuickPromoBonus(address userAddress) public view returns(uint256) {
    |        return _core.getUserQuickPromoBonus(address(this), userAddress);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(739)

[31mViolation[0m for MissingInputValidation in contract 'EtheramaData':
    |    }   
    |    
  > |    function getUserEthVolumeSaldo(address userAddress) public view returns(uint256) {
    |        return _core.getUserEthVolumeSaldo(address(this), userAddress);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(751)

[33mWarning[0m for MissingInputValidation in contract 'EtheramaData':
    |
    |    // tranding token address
  > |    address constant public TOKEN_CONTRACT_ADDRESS = 0x83cee9e086A77e492eE0bB93C2B0437aD6fdECCc;
    |    
    |    // token price in the begining
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(570)

[33mWarning[0m for MissingInputValidation in contract 'EtheramaData':
    |    
    |    // token price in the begining
  > |    uint256 constant public TOKEN_PRICE_INITIAL = 0.0023 ether;
    |    // a percent of the token price which adds/subs each _priceSpeedInterval tokens
    |    uint64 constant public PRICE_SPEED_PERCENT = 5;
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(573)

[33mWarning[0m for MissingInputValidation in contract 'EtheramaData':
    |    uint256 constant public TOKEN_PRICE_INITIAL = 0.0023 ether;
    |    // a percent of the token price which adds/subs each _priceSpeedInterval tokens
  > |    uint64 constant public PRICE_SPEED_PERCENT = 5;
    |    // Token price speed interval. For instance, if PRICE_SPEED_PERCENT = 5 and PRICE_SPEED_INTERVAL = 10000 it means that after 10000 tokens are bought/sold  token price will increase/decrease for 5%.
    |    uint64 constant public PRICE_SPEED_INTERVAL = 10000;
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(575)

[33mWarning[0m for MissingInputValidation in contract 'EtheramaData':
    |    uint64 constant public PRICE_SPEED_PERCENT = 5;
    |    // Token price speed interval. For instance, if PRICE_SPEED_PERCENT = 5 and PRICE_SPEED_INTERVAL = 10000 it means that after 10000 tokens are bought/sold  token price will increase/decrease for 5%.
  > |    uint64 constant public PRICE_SPEED_INTERVAL = 10000;
    |    // lock-up period in days. Until this period is expeired nobody can close the contract or withdraw users' funds
    |    uint64 constant public EXP_PERIOD_DAYS = 365;
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(577)

[33mWarning[0m for MissingInputValidation in contract 'EtheramaData':
    |    uint64 constant public PRICE_SPEED_INTERVAL = 10000;
    |    // lock-up period in days. Until this period is expeired nobody can close the contract or withdraw users' funds
  > |    uint64 constant public EXP_PERIOD_DAYS = 365;
    |
    |    
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(579)

[33mWarning[0m for MissingInputValidation in contract 'EtheramaData':
    |    uint256 private  _administratorCount;
    |
  > |    uint64 public _initTime;
    |    uint64 public _expirationTime;
    |    uint256 public _tokenOwnerReward;
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(585)

[33mWarning[0m for MissingInputValidation in contract 'EtheramaData':
    |
    |    uint64 public _initTime;
  > |    uint64 public _expirationTime;
    |    uint256 public _tokenOwnerReward;
    |    
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(586)

[33mWarning[0m for MissingInputValidation in contract 'EtheramaData':
    |    uint64 public _initTime;
    |    uint64 public _expirationTime;
  > |    uint256 public _tokenOwnerReward;
    |    
    |    uint256 public _totalSupply;
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(587)

[33mWarning[0m for MissingInputValidation in contract 'EtheramaData':
    |    uint256 public _tokenOwnerReward;
    |    
  > |    uint256 public _totalSupply;
    |    int128 public _realTokenPrice;
    |
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(589)

[33mWarning[0m for MissingInputValidation in contract 'EtheramaData':
    |    
    |    uint256 public _totalSupply;
  > |    int128 public _realTokenPrice;
    |
    |    address public _controllerAddress = address(0x0);
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(590)

[33mWarning[0m for MissingInputValidation in contract 'EtheramaData':
    |    int128 public _realTokenPrice;
    |
  > |    address public _controllerAddress = address(0x0);
    |
    |    EtheramaCore public _core;
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(592)

[33mWarning[0m for MissingInputValidation in contract 'EtheramaData':
    |    address public _controllerAddress = address(0x0);
    |
  > |    EtheramaCore public _core;
    |
    |    uint256 public _initBlockNum;
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(594)

[33mWarning[0m for MissingInputValidation in contract 'EtheramaData':
    |    EtheramaCore public _core;
    |
  > |    uint256 public _initBlockNum;
    |    
    |    bool public _hasMaxPurchaseLimit = false;
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(596)

[33mWarning[0m for MissingInputValidation in contract 'EtheramaData':
    |    uint256 public _initBlockNum;
    |    
  > |    bool public _hasMaxPurchaseLimit = false;
    |    
    |    IStdToken public _token;
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(598)

[33mWarning[0m for MissingInputValidation in contract 'EtheramaData':
    |    bool public _hasMaxPurchaseLimit = false;
    |    
  > |    IStdToken public _token;
    |
    |    //only main contract
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(600)

[33mWarning[0m for MissingInputValidation in contract 'EtheramaData':
    |    }
    |    
  > |    function init() public {
    |        require(_controllerAddress == address(0x0));
    |        require(TOKEN_CONTRACT_ADDRESS != address(0x0));
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(615)

[33mWarning[0m for MissingInputValidation in contract 'EtheramaData':
    |    }
    |    
  > |    function isInited()  public view returns(bool) {
    |        return (_controllerAddress != address(0x0));
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(630)

[33mWarning[0m for MissingInputValidation in contract 'EtheramaData':
    |    }
    |    
  > |    function getCoreAddress()  public view returns(address) {
    |        return address(_core);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(634)

[33mWarning[0m for MissingInputValidation in contract 'EtheramaData':
    |
    |    
  > |    function getPromoMinPurchaseEth() public view returns(uint256) {
    |        return _core._promoMinPurchaseEth();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(645)

[33mWarning[0m for MissingInputValidation in contract 'EtheramaData':
    |    }
    |
  > |    function getAdministratorCount() public view returns(uint256) {
    |        return _administratorCount;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(659)

[33mWarning[0m for MissingInputValidation in contract 'EtheramaData':
    |
    |    
  > |    function getCommonInitBlockNum() public view returns (uint256) {
    |        return _core.getInitBlockNum();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(668)

[33mWarning[0m for MissingInputValidation in contract 'EtheramaData':
    |    
    |    
  > |    function resetTokenOwnerReward() onlyController public {
    |        _tokenOwnerReward = 0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(673)

[33mWarning[0m for MissingInputValidation in contract 'EtheramaData':
    |    }
    |    
  > |    function getCurrentBigPromoBonus() public view returns (uint256) {
    |        return _core._currentBigPromoBonus();
    |    }        
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(681)

[33mWarning[0m for MissingInputValidation in contract 'EtheramaData':
    |    
    |
  > |    function getCurrentQuickPromoBonus() public view returns (uint256) {
    |        return _core._currentQuickPromoBonus();
    |    }    
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(686)

[33mWarning[0m for MissingInputValidation in contract 'EtheramaData':
    |    }    
    |
  > |    function getTotalCollectedPromoBonus() public view returns (uint256) {
    |        return _core.getTotalCollectedPromoBonus();
    |    }    
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(690)

[33mWarning[0m for MissingInputValidation in contract 'EtheramaData':
    |    }  
    |    
  > |    function getBonusPerShare() public view returns(uint256) {
    |        return _core.getBonusPerShare(address(this));
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(715)

[33mWarning[0m for MissingInputValidation in contract 'EtheramaData':
    |    }
    |
  > |    function getRemainingTokenAmount() public view returns(uint256) {
    |        return _token.balanceOf(_controllerAddress);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(743)

[33mWarning[0m for MissingInputValidation in contract 'EtheramaData':
    |    }
    |
  > |    function getTotalTokenSold() public view returns(uint256) {
    |        return _totalSupply - getRemainingTokenAmount();
    |    }   
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(747)

[33mWarning[0m for MissingInputValidation in contract 'EtheramaData':
    |    * @dev Substracts two numbers, throws on overflow (i.e. if subtrahend is greater than minuend).
    |    */
  > |    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
    |        assert(b <= a);
    |        return a - b;
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(1530)

[33mWarning[0m for MissingInputValidation in contract 'EtheramaData':
    |    * @dev Adds two numbers, throws on overflow.
    |    */
  > |    function add(uint256 a, uint256 b) internal pure returns (uint256) {
    |        uint256 c = a + b;
    |        assert(c >= a);
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(1538)

[33mWarning[0m for MissingInputValidation in contract 'EtheramaData':
    |    } 
    |
  > |    function min(uint256 a, uint256 b) internal pure returns (uint256) {
    |        return a < b ? a : b;
    |    }   
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(1544)

[33mWarning[0m for MissingInputValidation in contract 'EtheramaData':
    |    }
    |    
  > |    function getMaxInt64() internal pure returns (int64) {
    |        return MAX_INT64;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(1620)

[33mWarning[0m for MissingInputValidation in contract 'EtheramaData':
    |    }
    |    
  > |    function isUInt64ValidIn64(uint64 val) internal pure returns (bool) {
    |        return val >= 0 && val <= uint64(getMaxInt64());
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(1632)

[33mWarning[0m for UnhandledException in contract 'EtheramaData':
    |        _initTime = uint64(now);
    |        _expirationTime = _initTime + EXP_PERIOD_DAYS * 1 days;
  > |        _realTokenPrice = _core.convert256ToReal(TOKEN_PRICE_INITIAL);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(627)

[33mWarning[0m for UnhandledException in contract 'EtheramaData':
    |    
    |    function getPromoMinPurchaseEth() public view returns(uint256) {
  > |        return _core._promoMinPurchaseEth();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(646)

[33mWarning[0m for UnhandledException in contract 'EtheramaData':
    |    
    |    function getCommonInitBlockNum() public view returns (uint256) {
  > |        return _core.getInitBlockNum();
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(669)

[33mWarning[0m for UnhandledException in contract 'EtheramaData':
    |    
    |    function getCurrentBigPromoBonus() public view returns (uint256) {
  > |        return _core._currentBigPromoBonus();
    |    }        
    |    
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(682)

[33mWarning[0m for UnhandledException in contract 'EtheramaData':
    |
    |    function getCurrentQuickPromoBonus() public view returns (uint256) {
  > |        return _core._currentQuickPromoBonus();
    |    }    
    |
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(687)

[33mWarning[0m for UnhandledException in contract 'EtheramaData':
    |
    |    function getTotalCollectedPromoBonus() public view returns (uint256) {
  > |        return _core.getTotalCollectedPromoBonus();
    |    }    
    |
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(691)

[33mWarning[0m for UnhandledException in contract 'EtheramaData':
    |    
    |    function getUserTokenLocalBalance(address userAddress) public view returns(uint256) {
  > |        return _core.getUserTokenLocalBalance(address(this), userAddress);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(708)

[33mWarning[0m for UnhandledException in contract 'EtheramaData':
    |    
    |    function getActualUserTokenBalance(address userAddress) public view returns(uint256) {
  > |        return SafeMath.min(getUserTokenLocalBalance(userAddress), _token.balanceOf(userAddress));
    |    }  
    |    
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(712)

[33mWarning[0m for UnhandledException in contract 'EtheramaData':
    |    
    |    function getBonusPerShare() public view returns(uint256) {
  > |        return _core.getBonusPerShare(address(this));
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(716)

[33mWarning[0m for UnhandledException in contract 'EtheramaData':
    |    
    |    function getUserRewardPayouts(address userAddress) public view returns(uint256) {
  > |        return _core.getUserRewardPayouts(address(this), userAddress);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(720)

[33mWarning[0m for UnhandledException in contract 'EtheramaData':
    |    
    |    function getUserRefBalance(address userAddress) public view returns(uint256) {
  > |        return _core.getUserRefBalance(address(this), userAddress);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(724)

[33mWarning[0m for UnhandledException in contract 'EtheramaData':
    |    
    |    function getUserReward(address userAddress, bool incRefBonus, bool incPromoBonus) public view returns(uint256) {
  > |        return _core.getUserReward(address(this), userAddress, true, incRefBonus, incPromoBonus);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(728)

[33mWarning[0m for UnhandledException in contract 'EtheramaData':
    |    
    |    function getUserTotalPromoBonus(address userAddress) public view returns(uint256) {
  > |        return _core.getUserTotalPromoBonus(address(this), userAddress);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(732)

[33mWarning[0m for UnhandledException in contract 'EtheramaData':
    |    
    |    function getUserBigPromoBonus(address userAddress) public view returns(uint256) {
  > |        return _core.getUserBigPromoBonus(address(this), userAddress);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(736)

[33mWarning[0m for UnhandledException in contract 'EtheramaData':
    |
    |    function getUserQuickPromoBonus(address userAddress) public view returns(uint256) {
  > |        return _core.getUserQuickPromoBonus(address(this), userAddress);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(740)

[33mWarning[0m for UnhandledException in contract 'EtheramaData':
    |
    |    function getRemainingTokenAmount() public view returns(uint256) {
  > |        return _token.balanceOf(_controllerAddress);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(744)

[33mWarning[0m for UnhandledException in contract 'EtheramaData':
    |    
    |    function getUserEthVolumeSaldo(address userAddress) public view returns(uint256) {
  > |        return _core.getUserEthVolumeSaldo(address(this), userAddress);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(752)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EtheramaData':
    |        _initTime = uint64(now);
    |        _expirationTime = _initTime + EXP_PERIOD_DAYS * 1 days;
  > |        _realTokenPrice = _core.convert256ToReal(TOKEN_PRICE_INITIAL);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(627)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EtheramaData':
    |    
    |    function getPromoMinPurchaseEth() public view returns(uint256) {
  > |        return _core._promoMinPurchaseEth();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(646)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EtheramaData':
    |    
    |    function getCommonInitBlockNum() public view returns (uint256) {
  > |        return _core.getInitBlockNum();
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(669)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EtheramaData':
    |    
    |    function getCurrentBigPromoBonus() public view returns (uint256) {
  > |        return _core._currentBigPromoBonus();
    |    }        
    |    
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(682)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EtheramaData':
    |
    |    function getCurrentQuickPromoBonus() public view returns (uint256) {
  > |        return _core._currentQuickPromoBonus();
    |    }    
    |
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(687)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EtheramaData':
    |
    |    function getTotalCollectedPromoBonus() public view returns (uint256) {
  > |        return _core.getTotalCollectedPromoBonus();
    |    }    
    |
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(691)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EtheramaData':
    |    
    |    function getUserTokenLocalBalance(address userAddress) public view returns(uint256) {
  > |        return _core.getUserTokenLocalBalance(address(this), userAddress);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(708)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EtheramaData':
    |    
    |    function getActualUserTokenBalance(address userAddress) public view returns(uint256) {
  > |        return SafeMath.min(getUserTokenLocalBalance(userAddress), _token.balanceOf(userAddress));
    |    }  
    |    
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(712)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EtheramaData':
    |    
    |    function getBonusPerShare() public view returns(uint256) {
  > |        return _core.getBonusPerShare(address(this));
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(716)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EtheramaData':
    |    
    |    function getUserRewardPayouts(address userAddress) public view returns(uint256) {
  > |        return _core.getUserRewardPayouts(address(this), userAddress);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(720)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EtheramaData':
    |    
    |    function getUserRefBalance(address userAddress) public view returns(uint256) {
  > |        return _core.getUserRefBalance(address(this), userAddress);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(724)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EtheramaData':
    |    
    |    function getUserReward(address userAddress, bool incRefBonus, bool incPromoBonus) public view returns(uint256) {
  > |        return _core.getUserReward(address(this), userAddress, true, incRefBonus, incPromoBonus);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(728)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EtheramaData':
    |    
    |    function getUserTotalPromoBonus(address userAddress) public view returns(uint256) {
  > |        return _core.getUserTotalPromoBonus(address(this), userAddress);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(732)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EtheramaData':
    |    
    |    function getUserBigPromoBonus(address userAddress) public view returns(uint256) {
  > |        return _core.getUserBigPromoBonus(address(this), userAddress);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(736)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EtheramaData':
    |
    |    function getUserQuickPromoBonus(address userAddress) public view returns(uint256) {
  > |        return _core.getUserQuickPromoBonus(address(this), userAddress);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(740)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EtheramaData':
    |
    |    function getRemainingTokenAmount() public view returns(uint256) {
  > |        return _token.balanceOf(_controllerAddress);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(744)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EtheramaData':
    |    
    |    function getUserEthVolumeSaldo(address userAddress) public view returns(uint256) {
  > |        return _core.getUserEthVolumeSaldo(address(this), userAddress);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(752)

[31mViolation[0m for UnrestrictedWrite in contract 'EtheramaData':
    |        
    |        
  > |        _controllerAddress = msg.sender;
    |
    |        _token = IStdToken(TOKEN_CONTRACT_ADDRESS);
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(622)

[31mViolation[0m for UnrestrictedWrite in contract 'EtheramaData':
    |        _controllerAddress = msg.sender;
    |
  > |        _token = IStdToken(TOKEN_CONTRACT_ADDRESS);
    |        _initTime = uint64(now);
    |        _expirationTime = _initTime + EXP_PERIOD_DAYS * 1 days;
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(624)

[31mViolation[0m for UnrestrictedWrite in contract 'EtheramaData':
    |
    |        _token = IStdToken(TOKEN_CONTRACT_ADDRESS);
  > |        _initTime = uint64(now);
    |        _expirationTime = _initTime + EXP_PERIOD_DAYS * 1 days;
    |        _realTokenPrice = _core.convert256ToReal(TOKEN_PRICE_INITIAL);
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(625)

[31mViolation[0m for UnrestrictedWrite in contract 'EtheramaData':
    |        _token = IStdToken(TOKEN_CONTRACT_ADDRESS);
    |        _initTime = uint64(now);
  > |        _expirationTime = _initTime + EXP_PERIOD_DAYS * 1 days;
    |        _realTokenPrice = _core.convert256ToReal(TOKEN_PRICE_INITIAL);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(626)

[31mViolation[0m for UnrestrictedWrite in contract 'EtheramaData':
    |        _initTime = uint64(now);
    |        _expirationTime = _initTime + EXP_PERIOD_DAYS * 1 days;
  > |        _realTokenPrice = _core.convert256ToReal(TOKEN_PRICE_INITIAL);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(627)

[31mViolation[0m for UnrestrictedWrite in contract 'EtheramaData':
    |    function addAdministator(address addr) onlyController public {
    |        _administrators[addr] = true;
  > |        _administratorCount = SafeMath.add(_administratorCount, 1);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(651)

[31mViolation[0m for UnrestrictedWrite in contract 'EtheramaData':
    |    
    |    function addTokenOwnerReward(uint256 val) onlyController public {
  > |        _tokenOwnerReward = SafeMath.add(_tokenOwnerReward, val);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(678)

[33mWarning[0m for UnrestrictedWrite in contract 'EtheramaData':
    |
    |    function setNewControllerAddress(address newAddress) onlyController public {
  > |        _controllerAddress = newAddress;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(640)

[33mWarning[0m for UnrestrictedWrite in contract 'EtheramaData':
    |
    |    function addAdministator(address addr) onlyController public {
  > |        _administrators[addr] = true;
    |        _administratorCount = SafeMath.add(_administratorCount, 1);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(650)

[33mWarning[0m for UnrestrictedWrite in contract 'EtheramaData':
    |
    |    function removeAdministator(address addr) onlyController public {
  > |        _administrators[addr] = false;
    |        _administratorCount = SafeMath.sub(_administratorCount, 1);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(655)

[33mWarning[0m for UnrestrictedWrite in contract 'EtheramaData':
    |    function removeAdministator(address addr) onlyController public {
    |        _administrators[addr] = false;
  > |        _administratorCount = SafeMath.sub(_administratorCount, 1);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(656)

[33mWarning[0m for UnrestrictedWrite in contract 'EtheramaData':
    |    
    |    function resetTokenOwnerReward() onlyController public {
  > |        _tokenOwnerReward = 0;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(674)

[33mWarning[0m for UnrestrictedWrite in contract 'EtheramaData':
    |
    |    function setTotalSupply(uint256 val) onlyController public {
  > |        _totalSupply = val;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(695)

[33mWarning[0m for UnrestrictedWrite in contract 'EtheramaData':
    |    
    |    function setRealTokenPrice(int128 val) onlyController public {
  > |        _realTokenPrice = val;
    |    }    
    |    
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(699)

[33mWarning[0m for UnrestrictedWrite in contract 'EtheramaData':
    |    
    |    function setHasMaxPurchaseLimit(bool val) onlyController public {
  > |        _hasMaxPurchaseLimit = val;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(704)

[33mWarning[0m for LockedEther in contract 'EtheramaGasPriceLimit':
    |
    |
  > |contract EtheramaGasPriceLimit is EtheramaCommon {
    |    
    |    uint256 public MAX_GAS_PRICE = 0 wei;
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(59)

[31mViolation[0m for MissingInputValidation in contract 'EtheramaGasPriceLimit':
    |    
    |    
  > |    function addAdministator(address addr) onlyAdministrator public {
    |        _administrators[addr] = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(33)

[31mViolation[0m for MissingInputValidation in contract 'EtheramaGasPriceLimit':
    |    }
    |
  > |    function removeAdministator(address addr) onlyAdministrator public {
    |        _administrators[addr] = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(37)

[31mViolation[0m for MissingInputValidation in contract 'EtheramaGasPriceLimit':
    |    }
    |
  > |    function isAdministrator(address addr) public view returns (bool) {
    |        return _administrators[addr];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(41)

[31mViolation[0m for MissingInputValidation in contract 'EtheramaGasPriceLimit':
    |    }
    |
  > |    function addManager(address addr) onlyAdministrator public {
    |        _managers[addr] = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(45)

[31mViolation[0m for MissingInputValidation in contract 'EtheramaGasPriceLimit':
    |    }
    |
  > |    function removeManager(address addr) onlyAdministrator public {
    |        _managers[addr] = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(49)

[31mViolation[0m for MissingInputValidation in contract 'EtheramaGasPriceLimit':
    |    }
    |    
  > |    function isManager(address addr) public view returns (bool) {
    |        return _managers[addr];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(53)

[33mWarning[0m for MissingInputValidation in contract 'EtheramaGasPriceLimit':
    |contract EtheramaGasPriceLimit is EtheramaCommon {
    |    
  > |    uint256 public MAX_GAS_PRICE = 0 wei;
    |    
    |    event onSetMaxGasPrice(uint256 val);    
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(61)

[33mWarning[0m for MissingInputValidation in contract 'EtheramaGasPriceLimit':
    |    
    |    //only main administators or managers can set max gas price
  > |    function setMaxGasPrice(uint256 val) public validGasPrice(val) onlyAdministratorOrManager {
    |        MAX_GAS_PRICE = val;
    |        
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(78)

[31mViolation[0m for UnrestrictedWrite in contract 'EtheramaGasPriceLimit':
    |    
    |    function addAdministator(address addr) onlyAdministrator public {
  > |        _administrators[addr] = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(34)

[31mViolation[0m for UnrestrictedWrite in contract 'EtheramaGasPriceLimit':
    |
    |    function removeAdministator(address addr) onlyAdministrator public {
  > |        _administrators[addr] = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(38)

[31mViolation[0m for UnrestrictedWrite in contract 'EtheramaGasPriceLimit':
    |
    |    function addManager(address addr) onlyAdministrator public {
  > |        _managers[addr] = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(46)

[31mViolation[0m for UnrestrictedWrite in contract 'EtheramaGasPriceLimit':
    |
    |    function removeManager(address addr) onlyAdministrator public {
  > |        _managers[addr] = false;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(50)

[31mViolation[0m for UnrestrictedWrite in contract 'EtheramaGasPriceLimit':
    |    //only main administators or managers can set max gas price
    |    function setMaxGasPrice(uint256 val) public validGasPrice(val) onlyAdministratorOrManager {
  > |        MAX_GAS_PRICE = val;
    |        
    |        emit onSetMaxGasPrice(val);
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(79)

[33mWarning[0m for LockedEther in contract 'RealMath':
    |
    |//taken from https://github.com/NovakDistributed/macroverse/blob/master/contracts/RealMath.sol and a bit modified
  > |library RealMath {
    |    
    |    int64 constant MIN_INT64 = int64((uint64(1) << 63));
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(1554)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |
    |
  > |library SafeMath {
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0xf4a3679eb0a3d9e8af9824a29bd32dd98d1e7127.sol(1503)


