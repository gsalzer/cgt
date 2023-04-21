Processing contract: /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol:GoldmintPool
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol:IStdToken
Processing contract: /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol:PoolCommon
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol:PoolCore
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAO in contract 'GoldmintPool':
    |        require(getMntpBalance() >= amount);
    |		
  > |        core.freeHeldTokens(msg.sender);
    |        mntpToken.transfer(msg.sender, amount);
    |        
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(230)

[33mWarning[0m for DAO in contract 'GoldmintPool':
    |		
    |        core.freeHeldTokens(msg.sender);
  > |        mntpToken.transfer(msg.sender, amount);
    |        
    |        emit onUnholdStake(msg.sender, amount);
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(231)

[33mWarning[0m for DAO in contract 'GoldmintPool':
    |        require(getGoldBalance() >= goldReward);
    |
  > |        core.addUserPayouts(msg.sender, mntpRewardAmp, goldRewardAmp);
    |        
    |        if (mntpReward > 0) mntpToken.transfer(msg.sender, mntpReward);
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(255)

[33mWarning[0m for DAO in contract 'GoldmintPool':
    |        core.addUserPayouts(msg.sender, mntpRewardAmp, goldRewardAmp);
    |        
  > |        if (mntpReward > 0) mntpToken.transfer(msg.sender, mntpReward);
    |        if (goldReward > 0) goldToken.transfer(msg.sender, goldReward);
    |        
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(257)

[33mWarning[0m for DAO in contract 'GoldmintPool':
    |        
    |        if (mntpReward > 0) mntpToken.transfer(msg.sender, mntpReward);
  > |        if (goldReward > 0) goldToken.transfer(msg.sender, goldReward);
    |        
    |        emit onUserRewardWithdrawn(msg.sender, mntpReward, goldReward);
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(258)

[33mWarning[0m for DAO in contract 'GoldmintPool':
    |
    |    function getGoldBalance() view public returns(uint256) {
  > |        return goldToken.balanceOf(address(this));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(327)

[33mWarning[0m for LockedEther in contract 'GoldmintPool':
    |
    |
  > |contract GoldmintPool {
    |
    |    address public tokenBankAddress = address(0x0);
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(161)

[33mWarning[0m for MissingInputValidation in contract 'GoldmintPool':
    |contract GoldmintPool {
    |
  > |    address public tokenBankAddress = address(0x0);
    |
    |    PoolCore public core;
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(163)

[33mWarning[0m for MissingInputValidation in contract 'GoldmintPool':
    |    address public tokenBankAddress = address(0x0);
    |
  > |    PoolCore public core;
    |    IStdToken public mntpToken;
    |    IStdToken public goldToken;
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(165)

[33mWarning[0m for MissingInputValidation in contract 'GoldmintPool':
    |
    |    PoolCore public core;
  > |    IStdToken public mntpToken;
    |    IStdToken public goldToken;
    |
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(166)

[33mWarning[0m for MissingInputValidation in contract 'GoldmintPool':
    |    PoolCore public core;
    |    IStdToken public mntpToken;
  > |    IStdToken public goldToken;
    |
    |    bool public isActualContractVer = true;
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(167)

[33mWarning[0m for MissingInputValidation in contract 'GoldmintPool':
    |    IStdToken public goldToken;
    |
  > |    bool public isActualContractVer = true;
    |    bool public isActive = true;
    |    
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(169)

[33mWarning[0m for MissingInputValidation in contract 'GoldmintPool':
    |
    |    bool public isActualContractVer = true;
  > |    bool public isActive = true;
    |    
    |    event onDistribShareProfit(uint256 mntpReward, uint256 goldReward); 
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(170)

[33mWarning[0m for MissingInputValidation in contract 'GoldmintPool':
    |    }
    |    
  > |    function setTokenBankAddress(address addr) onlyAdministrator notNullAddress(addr) public {
    |        tokenBankAddress = addr;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(205)

[33mWarning[0m for MissingInputValidation in contract 'GoldmintPool':
    |    }
    |    
  > |    function switchActive() onlyAdministrator public {
    |        require(isActualContractVer);
    |        isActive = !isActive;
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(209)

[33mWarning[0m for MissingInputValidation in contract 'GoldmintPool':
    |    }
    |    
  > |    function holdStake(uint256 mntpAmount) onlyActive public {
    |        require(mntpToken.balanceOf(msg.sender) > 0);
    |        require(mntpToken.balanceOf(msg.sender) >= mntpAmount);
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(214)

[33mWarning[0m for MissingInputValidation in contract 'GoldmintPool':
    |    }
    |    
  > |    function unholdStake() onlyActive public {
    |        uint256 amount = core.getUserStake(msg.sender);
    |        
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(224)

[33mWarning[0m for MissingInputValidation in contract 'GoldmintPool':
    |    }
    |    
  > |    function distribShareProfit(uint256 mntpReward, uint256 goldReward) onlyActive onlyAdministratorOrManager public {
    |        if (mntpReward > 0) mntpToken.transferFrom(tokenBankAddress, address(this), mntpReward);
    |        if (goldReward > 0) goldToken.transferFrom(tokenBankAddress, address(this), goldReward);
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(236)

[33mWarning[0m for MissingInputValidation in contract 'GoldmintPool':
    |    }
    |
  > |    function withdrawUserReward() onlyActive public {
    |        uint256 mntpReward; uint256 mntpRewardAmp;
    |        uint256 goldReward; uint256 goldRewardAmp;
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(245)

[33mWarning[0m for MissingInputValidation in contract 'GoldmintPool':
    |    }
    |    
  > |    function withdrawRewardAndUnholdStake() onlyActive public {
    |        withdrawUserReward();
    |        unholdStake();
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(263)

[33mWarning[0m for MissingInputValidation in contract 'GoldmintPool':
    |    }
    |    
  > |    function addRewadToStake() onlyActive public {
    |        uint256 mntpReward; uint256 mntpRewardAmp;
    |        
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(268)

[33mWarning[0m for MissingInputValidation in contract 'GoldmintPool':
    |    }
    |
  > |    function getMntpTokenUserReward() public view returns(uint256) {  
    |        uint256 mntpReward; uint256 mntpRewardAmp;
    |        (mntpReward, mntpRewardAmp) = core.getMntpTokenUserReward(msg.sender);
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(296)

[33mWarning[0m for MissingInputValidation in contract 'GoldmintPool':
    |    }
    |    
  > |    function getGoldTokenUserReward() public view returns(uint256) {  
    |        uint256 goldReward; uint256 goldRewardAmp;
    |        (goldReward, goldRewardAmp) = core.getGoldTokenUserReward(msg.sender);
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(302)

[33mWarning[0m for MissingInputValidation in contract 'GoldmintPool':
    |    }
    |    
  > |    function getUserMntpRewardPayouts() public view returns(uint256) {
    |        return core.getUserMntpRewardPayouts(msg.sender);
    |    }    
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(308)

[33mWarning[0m for MissingInputValidation in contract 'GoldmintPool':
    |    }    
    |    
  > |    function getUserGoldRewardPayouts() public view returns(uint256) {
    |        return core.getUserGoldRewardPayouts(msg.sender);
    |    }    
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(312)

[33mWarning[0m for MissingInputValidation in contract 'GoldmintPool':
    |    }    
    |    
  > |    function getUserStake() public view returns(uint256) {
    |        return core.getUserStake(msg.sender);
    |    } 
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(316)

[33mWarning[0m for MissingInputValidation in contract 'GoldmintPool':
    |    // HELPERS
    |
  > |    function getMntpBalance() view public returns(uint256) {
    |        return mntpToken.balanceOf(address(this));
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(322)

[33mWarning[0m for MissingInputValidation in contract 'GoldmintPool':
    |    }
    |
  > |    function getGoldBalance() view public returns(uint256) {
    |        return goldToken.balanceOf(address(this));
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(326)

[33mWarning[0m for UnhandledException in contract 'GoldmintPool':
    |
    |    modifier onlyAdministrator() {
  > |        require(core.isAdministrator(msg.sender));
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(178)

[33mWarning[0m for UnhandledException in contract 'GoldmintPool':
    |
    |    modifier onlyAdministratorOrManager() {
  > |        require(core.isAdministrator(msg.sender) || core.isManager(msg.sender));
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(183)

[33mWarning[0m for UnhandledException in contract 'GoldmintPool':
    |    
    |    function holdStake(uint256 mntpAmount) onlyActive public {
  > |        require(mntpToken.balanceOf(msg.sender) > 0);
    |        require(mntpToken.balanceOf(msg.sender) >= mntpAmount);
    |        
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(215)

[33mWarning[0m for UnhandledException in contract 'GoldmintPool':
    |    function holdStake(uint256 mntpAmount) onlyActive public {
    |        require(mntpToken.balanceOf(msg.sender) > 0);
  > |        require(mntpToken.balanceOf(msg.sender) >= mntpAmount);
    |        
    |        mntpToken.transferFrom(msg.sender, address(this), mntpAmount);
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(216)

[33mWarning[0m for UnhandledException in contract 'GoldmintPool':
    |        require(mntpToken.balanceOf(msg.sender) >= mntpAmount);
    |        
  > |        mntpToken.transferFrom(msg.sender, address(this), mntpAmount);
    |        core.addHeldTokens(msg.sender, mntpAmount);
    |        
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(218)

[33mWarning[0m for UnhandledException in contract 'GoldmintPool':
    |        
    |        mntpToken.transferFrom(msg.sender, address(this), mntpAmount);
  > |        core.addHeldTokens(msg.sender, mntpAmount);
    |        
    |        emit onHoldStake(msg.sender, mntpAmount);
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(219)

[33mWarning[0m for UnhandledException in contract 'GoldmintPool':
    |    
    |    function unholdStake() onlyActive public {
  > |        uint256 amount = core.getUserStake(msg.sender);
    |        
    |        require(amount > 0);
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(225)

[33mWarning[0m for UnhandledException in contract 'GoldmintPool':
    |        require(getMntpBalance() >= amount);
    |		
  > |        core.freeHeldTokens(msg.sender);
    |        mntpToken.transfer(msg.sender, amount);
    |        
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(230)

[33mWarning[0m for UnhandledException in contract 'GoldmintPool':
    |		
    |        core.freeHeldTokens(msg.sender);
  > |        mntpToken.transfer(msg.sender, amount);
    |        
    |        emit onUnholdStake(msg.sender, amount);
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(231)

[33mWarning[0m for UnhandledException in contract 'GoldmintPool':
    |    
    |    function distribShareProfit(uint256 mntpReward, uint256 goldReward) onlyActive onlyAdministratorOrManager public {
  > |        if (mntpReward > 0) mntpToken.transferFrom(tokenBankAddress, address(this), mntpReward);
    |        if (goldReward > 0) goldToken.transferFrom(tokenBankAddress, address(this), goldReward);
    |        
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(237)

[33mWarning[0m for UnhandledException in contract 'GoldmintPool':
    |    function distribShareProfit(uint256 mntpReward, uint256 goldReward) onlyActive onlyAdministratorOrManager public {
    |        if (mntpReward > 0) mntpToken.transferFrom(tokenBankAddress, address(this), mntpReward);
  > |        if (goldReward > 0) goldToken.transferFrom(tokenBankAddress, address(this), goldReward);
    |        
    |        core.addRewardPerShare(mntpReward, goldReward);
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(238)

[33mWarning[0m for UnhandledException in contract 'GoldmintPool':
    |        if (goldReward > 0) goldToken.transferFrom(tokenBankAddress, address(this), goldReward);
    |        
  > |        core.addRewardPerShare(mntpReward, goldReward);
    |        
    |        emit onDistribShareProfit(mntpReward, goldReward);
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(240)

[33mWarning[0m for UnhandledException in contract 'GoldmintPool':
    |        uint256 goldReward; uint256 goldRewardAmp;
    |
  > |        (mntpReward, mntpRewardAmp) = core.getMntpTokenUserReward(msg.sender);
    |        (goldReward, goldRewardAmp) = core.getGoldTokenUserReward(msg.sender);
    |
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(249)

[33mWarning[0m for UnhandledException in contract 'GoldmintPool':
    |
    |        (mntpReward, mntpRewardAmp) = core.getMntpTokenUserReward(msg.sender);
  > |        (goldReward, goldRewardAmp) = core.getGoldTokenUserReward(msg.sender);
    |
    |        require(getMntpBalance() >= mntpReward);
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(250)

[33mWarning[0m for UnhandledException in contract 'GoldmintPool':
    |        require(getGoldBalance() >= goldReward);
    |
  > |        core.addUserPayouts(msg.sender, mntpRewardAmp, goldRewardAmp);
    |        
    |        if (mntpReward > 0) mntpToken.transfer(msg.sender, mntpReward);
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(255)

[33mWarning[0m for UnhandledException in contract 'GoldmintPool':
    |        core.addUserPayouts(msg.sender, mntpRewardAmp, goldRewardAmp);
    |        
  > |        if (mntpReward > 0) mntpToken.transfer(msg.sender, mntpReward);
    |        if (goldReward > 0) goldToken.transfer(msg.sender, goldReward);
    |        
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(257)

[33mWarning[0m for UnhandledException in contract 'GoldmintPool':
    |        
    |        if (mntpReward > 0) mntpToken.transfer(msg.sender, mntpReward);
  > |        if (goldReward > 0) goldToken.transfer(msg.sender, goldReward);
    |        
    |        emit onUserRewardWithdrawn(msg.sender, mntpReward, goldReward);
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(258)

[33mWarning[0m for UnhandledException in contract 'GoldmintPool':
    |        uint256 mntpReward; uint256 mntpRewardAmp;
    |        
  > |        (mntpReward, mntpRewardAmp) = core.getMntpTokenUserReward(msg.sender);
    |        
    |        require(mntpReward > 0);
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(271)

[33mWarning[0m for UnhandledException in contract 'GoldmintPool':
    |        require(mntpReward > 0);
    |
  > |        core.addUserPayouts(msg.sender, mntpRewardAmp, 0);
    |        core.addHeldTokens(msg.sender, mntpReward);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(275)

[33mWarning[0m for UnhandledException in contract 'GoldmintPool':
    |
    |        core.addUserPayouts(msg.sender, mntpRewardAmp, 0);
  > |        core.addHeldTokens(msg.sender, mntpReward);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(276)

[33mWarning[0m for UnhandledException in contract 'GoldmintPool':
    |        isActive = false;
    |
  > |        core.setNewControllerAddress(newControllerAddr);
    |
    |        uint256 mntpTokenAmount = getMntpBalance();
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(285)

[33mWarning[0m for UnhandledException in contract 'GoldmintPool':
    |        uint256 goldTokenAmount = getGoldBalance();
    |
  > |        if (mntpTokenAmount > 0) mntpToken.transfer(newControllerAddr, mntpTokenAmount); 
    |        if (goldTokenAmount > 0) goldToken.transfer(newControllerAddr, goldTokenAmount); 
    |
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(290)

[33mWarning[0m for UnhandledException in contract 'GoldmintPool':
    |
    |        if (mntpTokenAmount > 0) mntpToken.transfer(newControllerAddr, mntpTokenAmount); 
  > |        if (goldTokenAmount > 0) goldToken.transfer(newControllerAddr, goldTokenAmount); 
    |
    |        isActualContractVer = false;
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(291)

[33mWarning[0m for UnhandledException in contract 'GoldmintPool':
    |    function getMntpTokenUserReward() public view returns(uint256) {  
    |        uint256 mntpReward; uint256 mntpRewardAmp;
  > |        (mntpReward, mntpRewardAmp) = core.getMntpTokenUserReward(msg.sender);
    |        return mntpReward;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(298)

[33mWarning[0m for UnhandledException in contract 'GoldmintPool':
    |    function getGoldTokenUserReward() public view returns(uint256) {  
    |        uint256 goldReward; uint256 goldRewardAmp;
  > |        (goldReward, goldRewardAmp) = core.getGoldTokenUserReward(msg.sender);
    |        return goldReward;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(304)

[33mWarning[0m for UnhandledException in contract 'GoldmintPool':
    |    
    |    function getUserMntpRewardPayouts() public view returns(uint256) {
  > |        return core.getUserMntpRewardPayouts(msg.sender);
    |    }    
    |    
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(309)

[33mWarning[0m for UnhandledException in contract 'GoldmintPool':
    |    
    |    function getUserGoldRewardPayouts() public view returns(uint256) {
  > |        return core.getUserGoldRewardPayouts(msg.sender);
    |    }    
    |    
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(313)

[33mWarning[0m for UnhandledException in contract 'GoldmintPool':
    |    
    |    function getUserStake() public view returns(uint256) {
  > |        return core.getUserStake(msg.sender);
    |    } 
    |
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(317)

[33mWarning[0m for UnhandledException in contract 'GoldmintPool':
    |
    |    function getMntpBalance() view public returns(uint256) {
  > |        return mntpToken.balanceOf(address(this));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(323)

[33mWarning[0m for UnhandledException in contract 'GoldmintPool':
    |
    |    function getGoldBalance() view public returns(uint256) {
  > |        return goldToken.balanceOf(address(this));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(327)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GoldmintPool':
    |
    |    modifier onlyAdministrator() {
  > |        require(core.isAdministrator(msg.sender));
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(178)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GoldmintPool':
    |
    |    modifier onlyAdministratorOrManager() {
  > |        require(core.isAdministrator(msg.sender) || core.isManager(msg.sender));
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(183)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GoldmintPool':
    |    
    |    function holdStake(uint256 mntpAmount) onlyActive public {
  > |        require(mntpToken.balanceOf(msg.sender) > 0);
    |        require(mntpToken.balanceOf(msg.sender) >= mntpAmount);
    |        
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(215)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GoldmintPool':
    |    function holdStake(uint256 mntpAmount) onlyActive public {
    |        require(mntpToken.balanceOf(msg.sender) > 0);
  > |        require(mntpToken.balanceOf(msg.sender) >= mntpAmount);
    |        
    |        mntpToken.transferFrom(msg.sender, address(this), mntpAmount);
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(216)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GoldmintPool':
    |        require(mntpToken.balanceOf(msg.sender) >= mntpAmount);
    |        
  > |        mntpToken.transferFrom(msg.sender, address(this), mntpAmount);
    |        core.addHeldTokens(msg.sender, mntpAmount);
    |        
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(218)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GoldmintPool':
    |        
    |        mntpToken.transferFrom(msg.sender, address(this), mntpAmount);
  > |        core.addHeldTokens(msg.sender, mntpAmount);
    |        
    |        emit onHoldStake(msg.sender, mntpAmount);
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(219)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GoldmintPool':
    |    
    |    function unholdStake() onlyActive public {
  > |        uint256 amount = core.getUserStake(msg.sender);
    |        
    |        require(amount > 0);
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(225)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GoldmintPool':
    |        require(getMntpBalance() >= amount);
    |		
  > |        core.freeHeldTokens(msg.sender);
    |        mntpToken.transfer(msg.sender, amount);
    |        
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(230)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GoldmintPool':
    |		
    |        core.freeHeldTokens(msg.sender);
  > |        mntpToken.transfer(msg.sender, amount);
    |        
    |        emit onUnholdStake(msg.sender, amount);
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(231)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GoldmintPool':
    |    
    |    function distribShareProfit(uint256 mntpReward, uint256 goldReward) onlyActive onlyAdministratorOrManager public {
  > |        if (mntpReward > 0) mntpToken.transferFrom(tokenBankAddress, address(this), mntpReward);
    |        if (goldReward > 0) goldToken.transferFrom(tokenBankAddress, address(this), goldReward);
    |        
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(237)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GoldmintPool':
    |    function distribShareProfit(uint256 mntpReward, uint256 goldReward) onlyActive onlyAdministratorOrManager public {
    |        if (mntpReward > 0) mntpToken.transferFrom(tokenBankAddress, address(this), mntpReward);
  > |        if (goldReward > 0) goldToken.transferFrom(tokenBankAddress, address(this), goldReward);
    |        
    |        core.addRewardPerShare(mntpReward, goldReward);
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(238)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GoldmintPool':
    |        if (goldReward > 0) goldToken.transferFrom(tokenBankAddress, address(this), goldReward);
    |        
  > |        core.addRewardPerShare(mntpReward, goldReward);
    |        
    |        emit onDistribShareProfit(mntpReward, goldReward);
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(240)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GoldmintPool':
    |        uint256 goldReward; uint256 goldRewardAmp;
    |
  > |        (mntpReward, mntpRewardAmp) = core.getMntpTokenUserReward(msg.sender);
    |        (goldReward, goldRewardAmp) = core.getGoldTokenUserReward(msg.sender);
    |
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(249)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GoldmintPool':
    |
    |        (mntpReward, mntpRewardAmp) = core.getMntpTokenUserReward(msg.sender);
  > |        (goldReward, goldRewardAmp) = core.getGoldTokenUserReward(msg.sender);
    |
    |        require(getMntpBalance() >= mntpReward);
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(250)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GoldmintPool':
    |        require(getGoldBalance() >= goldReward);
    |
  > |        core.addUserPayouts(msg.sender, mntpRewardAmp, goldRewardAmp);
    |        
    |        if (mntpReward > 0) mntpToken.transfer(msg.sender, mntpReward);
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(255)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GoldmintPool':
    |        core.addUserPayouts(msg.sender, mntpRewardAmp, goldRewardAmp);
    |        
  > |        if (mntpReward > 0) mntpToken.transfer(msg.sender, mntpReward);
    |        if (goldReward > 0) goldToken.transfer(msg.sender, goldReward);
    |        
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(257)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GoldmintPool':
    |        
    |        if (mntpReward > 0) mntpToken.transfer(msg.sender, mntpReward);
  > |        if (goldReward > 0) goldToken.transfer(msg.sender, goldReward);
    |        
    |        emit onUserRewardWithdrawn(msg.sender, mntpReward, goldReward);
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(258)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GoldmintPool':
    |        uint256 mntpReward; uint256 mntpRewardAmp;
    |        
  > |        (mntpReward, mntpRewardAmp) = core.getMntpTokenUserReward(msg.sender);
    |        
    |        require(mntpReward > 0);
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(271)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GoldmintPool':
    |        require(mntpReward > 0);
    |
  > |        core.addUserPayouts(msg.sender, mntpRewardAmp, 0);
    |        core.addHeldTokens(msg.sender, mntpReward);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(275)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GoldmintPool':
    |
    |        core.addUserPayouts(msg.sender, mntpRewardAmp, 0);
  > |        core.addHeldTokens(msg.sender, mntpReward);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(276)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GoldmintPool':
    |        isActive = false;
    |
  > |        core.setNewControllerAddress(newControllerAddr);
    |
    |        uint256 mntpTokenAmount = getMntpBalance();
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(285)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GoldmintPool':
    |        uint256 goldTokenAmount = getGoldBalance();
    |
  > |        if (mntpTokenAmount > 0) mntpToken.transfer(newControllerAddr, mntpTokenAmount); 
    |        if (goldTokenAmount > 0) goldToken.transfer(newControllerAddr, goldTokenAmount); 
    |
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(290)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GoldmintPool':
    |
    |        if (mntpTokenAmount > 0) mntpToken.transfer(newControllerAddr, mntpTokenAmount); 
  > |        if (goldTokenAmount > 0) goldToken.transfer(newControllerAddr, goldTokenAmount); 
    |
    |        isActualContractVer = false;
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(291)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GoldmintPool':
    |    function getMntpTokenUserReward() public view returns(uint256) {  
    |        uint256 mntpReward; uint256 mntpRewardAmp;
  > |        (mntpReward, mntpRewardAmp) = core.getMntpTokenUserReward(msg.sender);
    |        return mntpReward;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(298)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GoldmintPool':
    |    function getGoldTokenUserReward() public view returns(uint256) {  
    |        uint256 goldReward; uint256 goldRewardAmp;
  > |        (goldReward, goldRewardAmp) = core.getGoldTokenUserReward(msg.sender);
    |        return goldReward;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(304)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GoldmintPool':
    |    
    |    function getUserMntpRewardPayouts() public view returns(uint256) {
  > |        return core.getUserMntpRewardPayouts(msg.sender);
    |    }    
    |    
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(309)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GoldmintPool':
    |    
    |    function getUserGoldRewardPayouts() public view returns(uint256) {
  > |        return core.getUserGoldRewardPayouts(msg.sender);
    |    }    
    |    
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(313)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GoldmintPool':
    |    
    |    function getUserStake() public view returns(uint256) {
  > |        return core.getUserStake(msg.sender);
    |    } 
    |
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(317)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GoldmintPool':
    |
    |    function getMntpBalance() view public returns(uint256) {
  > |        return mntpToken.balanceOf(address(this));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(323)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GoldmintPool':
    |
    |    function getGoldBalance() view public returns(uint256) {
  > |        return goldToken.balanceOf(address(this));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(327)

[31mViolation[0m for UnrestrictedWrite in contract 'GoldmintPool':
    |    
    |    function setTokenBankAddress(address addr) onlyAdministrator notNullAddress(addr) public {
  > |        tokenBankAddress = addr;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(206)

[31mViolation[0m for UnrestrictedWrite in contract 'GoldmintPool':
    |    function switchActive() onlyAdministrator public {
    |        require(isActualContractVer);
  > |        isActive = !isActive;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(211)

[31mViolation[0m for UnrestrictedWrite in contract 'GoldmintPool':
    |        require(newControllerAddr != address(0x0) && isActualContractVer);
    |        
  > |        isActive = false;
    |
    |        core.setNewControllerAddress(newControllerAddr);
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(283)

[31mViolation[0m for UnrestrictedWrite in contract 'GoldmintPool':
    |        if (goldTokenAmount > 0) goldToken.transfer(newControllerAddr, goldTokenAmount); 
    |
  > |        isActualContractVer = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(293)

[33mWarning[0m for LockedEther in contract 'PoolCommon':
    |}
    |
  > |contract PoolCommon {
    |    
    |    //main adrministrators of the Etherama network
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(9)

[31mViolation[0m for MissingInputValidation in contract 'PoolCommon':
    |    
    |    
  > |    function addAdministator(address addr) onlyAdministrator public {
    |        _administrators[addr] = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(33)

[31mViolation[0m for MissingInputValidation in contract 'PoolCommon':
    |    }
    |
  > |    function removeAdministator(address addr) onlyAdministrator public {
    |        _administrators[addr] = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(37)

[31mViolation[0m for MissingInputValidation in contract 'PoolCommon':
    |    }
    |
  > |    function isAdministrator(address addr) public view returns (bool) {
    |        return _administrators[addr];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(41)

[31mViolation[0m for MissingInputValidation in contract 'PoolCommon':
    |    }
    |
  > |    function addManager(address addr) onlyAdministrator public {
    |        _managers[addr] = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(45)

[31mViolation[0m for MissingInputValidation in contract 'PoolCommon':
    |    }
    |
  > |    function removeManager(address addr) onlyAdministrator public {
    |        _managers[addr] = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(49)

[31mViolation[0m for MissingInputValidation in contract 'PoolCommon':
    |    }
    |    
  > |    function isManager(address addr) public view returns (bool) {
    |        return _managers[addr];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(53)

[31mViolation[0m for UnrestrictedWrite in contract 'PoolCommon':
    |    
    |    function addAdministator(address addr) onlyAdministrator public {
  > |        _administrators[addr] = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(34)

[31mViolation[0m for UnrestrictedWrite in contract 'PoolCommon':
    |
    |    function removeAdministator(address addr) onlyAdministrator public {
  > |        _administrators[addr] = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(38)

[31mViolation[0m for UnrestrictedWrite in contract 'PoolCommon':
    |
    |    function addManager(address addr) onlyAdministrator public {
  > |        _managers[addr] = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(46)

[31mViolation[0m for UnrestrictedWrite in contract 'PoolCommon':
    |
    |    function removeManager(address addr) onlyAdministrator public {
  > |        _managers[addr] = false;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(50)

[33mWarning[0m for LockedEther in contract 'PoolCore':
    |}
    |
  > |contract PoolCore is PoolCommon {
    |    uint256 constant public MAGNITUDE = 2**64;
    |
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(58)

[31mViolation[0m for MissingInputValidation in contract 'PoolCore':
    |    
    |    
  > |    function addAdministator(address addr) onlyAdministrator public {
    |        _administrators[addr] = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(33)

[31mViolation[0m for MissingInputValidation in contract 'PoolCore':
    |    }
    |
  > |    function removeAdministator(address addr) onlyAdministrator public {
    |        _administrators[addr] = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(37)

[31mViolation[0m for MissingInputValidation in contract 'PoolCore':
    |    }
    |
  > |    function isAdministrator(address addr) public view returns (bool) {
    |        return _administrators[addr];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(41)

[31mViolation[0m for MissingInputValidation in contract 'PoolCore':
    |    }
    |
  > |    function addManager(address addr) onlyAdministrator public {
    |        _managers[addr] = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(45)

[31mViolation[0m for MissingInputValidation in contract 'PoolCore':
    |    }
    |
  > |    function removeManager(address addr) onlyAdministrator public {
    |        _managers[addr] = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(49)

[31mViolation[0m for MissingInputValidation in contract 'PoolCore':
    |    }
    |    
  > |    function isManager(address addr) public view returns (bool) {
    |        return _managers[addr];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(53)

[31mViolation[0m for MissingInputValidation in contract 'PoolCore':
    |
    |    //mntp reward per share
  > |    mapping(address => uint256) public _mntpRewardPerShare;   
    |
    |    //gold reward per share
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(70)

[31mViolation[0m for MissingInputValidation in contract 'PoolCore':
    |
    |    //gold reward per share
  > |    mapping(address => uint256) public _goldRewardPerShare;  
    |
    |    address public controllerAddress = address(0x0);
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(73)

[31mViolation[0m for MissingInputValidation in contract 'PoolCore':
    |    address public controllerAddress = address(0x0);
    |
  > |    mapping(address => uint256) public _rewardMntpPayouts;
    |    mapping(address => uint256) public _rewardGoldPayouts;
    |
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(77)

[31mViolation[0m for MissingInputValidation in contract 'PoolCore':
    |
    |    mapping(address => uint256) public _rewardMntpPayouts;
  > |    mapping(address => uint256) public _rewardGoldPayouts;
    |
    |    mapping(address => uint256) public _userStakes;
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(78)

[31mViolation[0m for MissingInputValidation in contract 'PoolCore':
    |    mapping(address => uint256) public _rewardGoldPayouts;
    |
  > |    mapping(address => uint256) public _userStakes;
    |
    |    IStdToken public mntpToken;
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(80)

[31mViolation[0m for MissingInputValidation in contract 'PoolCore':
    |    }
    |	
  > |    function setNewControllerAddress(address newAddress) onlyController public {
    |        controllerAddress = newAddress;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(97)

[31mViolation[0m for MissingInputValidation in contract 'PoolCore':
    |    }
    |    
  > |    function addHeldTokens(address userAddress, uint256 tokenAmount) onlyController public {
    |        _userStakes[userAddress] = SafeMath.add(_userStakes[userAddress], tokenAmount);
    |        totalMntpHeld = SafeMath.add(totalMntpHeld, tokenAmount);
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(101)

[31mViolation[0m for MissingInputValidation in contract 'PoolCore':
    |    }
    |	
  > |    function freeHeldTokens(address userAddress) onlyController public {
    |        totalMntpHeld = SafeMath.sub(totalMntpHeld, _userStakes[userAddress]);
    |		_userStakes[userAddress] = 0;
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(108)

[31mViolation[0m for MissingInputValidation in contract 'PoolCore':
    |    }
    |
  > |    function getMntpTokenUserReward(address userAddress) public view returns(uint256 reward, uint256 rewardAmp) {  
    |        rewardAmp = SafeMath.mul(mntpRewardPerShare, getUserStake(userAddress));
    |        rewardAmp = (rewardAmp < getUserMntpRewardPayouts(userAddress)) ? 0 : SafeMath.sub(rewardAmp, getUserMntpRewardPayouts(userAddress));
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(130)

[31mViolation[0m for MissingInputValidation in contract 'PoolCore':
    |    }
    |    
  > |    function getGoldTokenUserReward(address userAddress) public view returns(uint256 reward, uint256 rewardAmp) {  
    |        rewardAmp = SafeMath.mul(goldRewardPerShare, getUserStake(userAddress));
    |        rewardAmp = (rewardAmp < getUserGoldRewardPayouts(userAddress)) ? 0 : SafeMath.sub(rewardAmp, getUserGoldRewardPayouts(userAddress));
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(138)

[31mViolation[0m for MissingInputValidation in contract 'PoolCore':
    |    }
    |    
  > |    function getUserMntpRewardPayouts(address userAddress) public view returns(uint256) {
    |        return _rewardMntpPayouts[userAddress];
    |    }    
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(146)

[31mViolation[0m for MissingInputValidation in contract 'PoolCore':
    |    }    
    |    
  > |    function getUserGoldRewardPayouts(address userAddress) public view returns(uint256) {
    |        return _rewardGoldPayouts[userAddress];
    |    }    
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(150)

[31mViolation[0m for MissingInputValidation in contract 'PoolCore':
    |    }    
    |    
  > |    function getUserStake(address userAddress) public view returns(uint256) {
    |        return _userStakes[userAddress];
    |    }    
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(154)

[33mWarning[0m for MissingInputValidation in contract 'PoolCore':
    |
    |contract PoolCore is PoolCommon {
  > |    uint256 constant public MAGNITUDE = 2**64;
    |
    |    //MNTP token reward per share
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(59)

[33mWarning[0m for MissingInputValidation in contract 'PoolCore':
    |
    |    //MNTP token reward per share
  > |    uint256 public mntpRewardPerShare;
    |    //GOLD token reward per share
    |    uint256 public goldRewardPerShare;
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(62)

[33mWarning[0m for MissingInputValidation in contract 'PoolCore':
    |    uint256 public mntpRewardPerShare;
    |    //GOLD token reward per share
  > |    uint256 public goldRewardPerShare;
    |
    |    //Total MNTP tokens held by users
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(64)

[33mWarning[0m for MissingInputValidation in contract 'PoolCore':
    |
    |    //Total MNTP tokens held by users
  > |    uint256 public totalMntpHeld;
    |
    |    //mntp reward per share
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(67)

[33mWarning[0m for MissingInputValidation in contract 'PoolCore':
    |    mapping(address => uint256) public _goldRewardPerShare;  
    |
  > |    address public controllerAddress = address(0x0);
    |
    |    mapping(address => uint256) public _rewardMntpPayouts;
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(75)

[33mWarning[0m for MissingInputValidation in contract 'PoolCore':
    |    mapping(address => uint256) public _userStakes;
    |
  > |    IStdToken public mntpToken;
    |    IStdToken public goldToken;
    |
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(82)

[33mWarning[0m for MissingInputValidation in contract 'PoolCore':
    |
    |    IStdToken public mntpToken;
  > |    IStdToken public goldToken;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(83)

[33mWarning[0m for MissingInputValidation in contract 'PoolCore':
    |    * @dev Multiplies two numbers, throws on overflow.
    |    */
  > |    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |        if (a == 0) {
    |            return 0;
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(338)

[33mWarning[0m for MissingInputValidation in contract 'PoolCore':
    |    * @dev Integer division of two numbers, truncating the quotient.
    |    */
  > |    function div(uint256 a, uint256 b) internal pure returns (uint256) {
    |        // assert(b > 0); // Solidity automatically throws when dividing by 0
    |        uint256 c = a / b;
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(350)

[33mWarning[0m for MissingInputValidation in contract 'PoolCore':
    |    * @dev Substracts two numbers, throws on overflow (i.e. if subtrahend is greater than minuend).
    |    */
  > |    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
    |        assert(b <= a);
    |        return a - b;
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(360)

[33mWarning[0m for MissingInputValidation in contract 'PoolCore':
    |    * @dev Adds two numbers, throws on overflow.
    |    */
  > |    function add(uint256 a, uint256 b) internal pure returns (uint256) {
    |        uint256 c = a + b;
    |        assert(c >= a);
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(368)

[31mViolation[0m for UnrestrictedWrite in contract 'PoolCore':
    |    
    |    function addAdministator(address addr) onlyAdministrator public {
  > |        _administrators[addr] = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(34)

[31mViolation[0m for UnrestrictedWrite in contract 'PoolCore':
    |
    |    function removeAdministator(address addr) onlyAdministrator public {
  > |        _administrators[addr] = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(38)

[31mViolation[0m for UnrestrictedWrite in contract 'PoolCore':
    |
    |    function addManager(address addr) onlyAdministrator public {
  > |        _managers[addr] = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(46)

[31mViolation[0m for UnrestrictedWrite in contract 'PoolCore':
    |
    |    function removeManager(address addr) onlyAdministrator public {
  > |        _managers[addr] = false;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(50)

[31mViolation[0m for UnrestrictedWrite in contract 'PoolCore':
    |    
    |    function addHeldTokens(address userAddress, uint256 tokenAmount) onlyController public {
  > |        _userStakes[userAddress] = SafeMath.add(_userStakes[userAddress], tokenAmount);
    |        totalMntpHeld = SafeMath.add(totalMntpHeld, tokenAmount);
    |        
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(102)

[31mViolation[0m for UnrestrictedWrite in contract 'PoolCore':
    |    function addHeldTokens(address userAddress, uint256 tokenAmount) onlyController public {
    |        _userStakes[userAddress] = SafeMath.add(_userStakes[userAddress], tokenAmount);
  > |        totalMntpHeld = SafeMath.add(totalMntpHeld, tokenAmount);
    |        
    |        addUserPayouts(userAddress, SafeMath.mul(mntpRewardPerShare, tokenAmount), SafeMath.mul(goldRewardPerShare, tokenAmount));
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(103)

[31mViolation[0m for UnrestrictedWrite in contract 'PoolCore':
    |	
    |    function freeHeldTokens(address userAddress) onlyController public {
  > |        totalMntpHeld = SafeMath.sub(totalMntpHeld, _userStakes[userAddress]);
    |		_userStakes[userAddress] = 0;
    |		_rewardMntpPayouts[userAddress] = 0;
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(109)

[31mViolation[0m for UnrestrictedWrite in contract 'PoolCore':
    |    function freeHeldTokens(address userAddress) onlyController public {
    |        totalMntpHeld = SafeMath.sub(totalMntpHeld, _userStakes[userAddress]);
  > |		_userStakes[userAddress] = 0;
    |		_rewardMntpPayouts[userAddress] = 0;
    |        _rewardGoldPayouts[userAddress] = 0;
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(110)

[31mViolation[0m for UnrestrictedWrite in contract 'PoolCore':
    |        totalMntpHeld = SafeMath.sub(totalMntpHeld, _userStakes[userAddress]);
    |		_userStakes[userAddress] = 0;
  > |		_rewardMntpPayouts[userAddress] = 0;
    |        _rewardGoldPayouts[userAddress] = 0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(111)

[31mViolation[0m for UnrestrictedWrite in contract 'PoolCore':
    |		_userStakes[userAddress] = 0;
    |		_rewardMntpPayouts[userAddress] = 0;
  > |        _rewardGoldPayouts[userAddress] = 0;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(112)

[31mViolation[0m for UnrestrictedWrite in contract 'PoolCore':
    |        uint256 goldShareReward = SafeMath.div(SafeMath.mul(goldReward, MAGNITUDE), totalMntpHeld);
    |
  > |        mntpRewardPerShare = SafeMath.add(mntpRewardPerShare, mntpShareReward);
    |        goldRewardPerShare = SafeMath.add(goldRewardPerShare, goldShareReward);
    |    }  
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(121)

[31mViolation[0m for UnrestrictedWrite in contract 'PoolCore':
    |
    |        mntpRewardPerShare = SafeMath.add(mntpRewardPerShare, mntpShareReward);
  > |        goldRewardPerShare = SafeMath.add(goldRewardPerShare, goldShareReward);
    |    }  
    |    
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(122)

[31mViolation[0m for UnrestrictedWrite in contract 'PoolCore':
    |    
    |    function addUserPayouts(address userAddress, uint256 mntpReward, uint256 goldReward) onlyController public {
  > |        _rewardMntpPayouts[userAddress] = SafeMath.add(_rewardMntpPayouts[userAddress], mntpReward);
    |        _rewardGoldPayouts[userAddress] = SafeMath.add(_rewardGoldPayouts[userAddress], goldReward);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(126)

[31mViolation[0m for UnrestrictedWrite in contract 'PoolCore':
    |    function addUserPayouts(address userAddress, uint256 mntpReward, uint256 goldReward) onlyController public {
    |        _rewardMntpPayouts[userAddress] = SafeMath.add(_rewardMntpPayouts[userAddress], mntpReward);
  > |        _rewardGoldPayouts[userAddress] = SafeMath.add(_rewardGoldPayouts[userAddress], goldReward);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(127)

[33mWarning[0m for UnrestrictedWrite in contract 'PoolCore':
    |	
    |    function setNewControllerAddress(address newAddress) onlyController public {
  > |        controllerAddress = newAddress;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(98)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |
    |
  > |library SafeMath {
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0xb6fc63a712fdef2946e173c2f4a4087bf1972c3c.sol(333)


