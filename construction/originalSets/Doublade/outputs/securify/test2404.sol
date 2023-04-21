Processing contract: /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol:CrowdSale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol:DAOController
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol:Haltable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol:PricingMechanism
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol:SphereTokenFactory
[31mViolation[0m for DAOConstantGas in contract 'CrowdSale':
    |    function finalize() payable onlyOwner afterFinalizeSet{
    |        if (hardCapAmount == totalDepositedEthers || (now - startTime) > duration){
  > |            dao.call.gas(150000).value(totalDepositedEthers * 3 / 10)();
    |            multiSig.call.gas(150000).value(this.balance)();
    |            isFinalized = true;
  at /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol(222)

[31mViolation[0m for DAOConstantGas in contract 'CrowdSale':
    |        if (hardCapAmount == totalDepositedEthers || (now - startTime) > duration){
    |            dao.call.gas(150000).value(totalDepositedEthers * 3 / 10)();
  > |            multiSig.call.gas(150000).value(this.balance)();
    |            isFinalized = true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol(223)

[33mWarning[0m for DAOConstantGas in contract 'CrowdSale':
    |        tokenFactory.mint(msg.sender, numTokensToAllocate);
    |        if (excess > 0){
  > |            msg.sender.send(excess);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol(216)

[33mWarning[0m for DAOConstantGas in contract 'CrowdSale':
    |        isFinalized = true;
    |        isStarted = false;
  > |        multiSig.call.gas(150000).value(this.balance)();
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol(230)

[33mWarning[0m for LockedEther in contract 'CrowdSale':
    |}
    |
  > |contract CrowdSale is PricingMechanism, DAOController{
    |    SphereTokenFactory public tokenFactory;
    |    uint public hardCapAmount;
  at /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol(168)

[31mViolation[0m for TODAmount in contract 'CrowdSale':
    |    function finalize() payable onlyOwner afterFinalizeSet{
    |        if (hardCapAmount == totalDepositedEthers || (now - startTime) > duration){
  > |            dao.call.gas(150000).value(totalDepositedEthers * 3 / 10)();
    |            multiSig.call.gas(150000).value(this.balance)();
    |            isFinalized = true;
  at /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol(222)

[31mViolation[0m for TODAmount in contract 'CrowdSale':
    |        if (hardCapAmount == totalDepositedEthers || (now - startTime) > duration){
    |            dao.call.gas(150000).value(totalDepositedEthers * 3 / 10)();
  > |            multiSig.call.gas(150000).value(this.balance)();
    |            isFinalized = true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol(223)

[31mViolation[0m for TODAmount in contract 'CrowdSale':
    |        isFinalized = true;
    |        isStarted = false;
  > |        multiSig.call.gas(150000).value(this.balance)();
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol(230)

[33mWarning[0m for TODAmount in contract 'CrowdSale':
    |        tokenFactory.mint(msg.sender, numTokensToAllocate);
    |        if (excess > 0){
  > |            msg.sender.send(excess);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol(216)

[31mViolation[0m for TODReceiver in contract 'CrowdSale':
    |    function finalize() payable onlyOwner afterFinalizeSet{
    |        if (hardCapAmount == totalDepositedEthers || (now - startTime) > duration){
  > |            dao.call.gas(150000).value(totalDepositedEthers * 3 / 10)();
    |            multiSig.call.gas(150000).value(this.balance)();
    |            isFinalized = true;
  at /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol(222)

[31mViolation[0m for TODReceiver in contract 'CrowdSale':
    |        if (hardCapAmount == totalDepositedEthers || (now - startTime) > duration){
    |            dao.call.gas(150000).value(totalDepositedEthers * 3 / 10)();
  > |            multiSig.call.gas(150000).value(this.balance)();
    |            isFinalized = true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol(223)

[31mViolation[0m for TODReceiver in contract 'CrowdSale':
    |        isFinalized = true;
    |        isStarted = false;
  > |        multiSig.call.gas(150000).value(this.balance)();
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol(230)

[33mWarning[0m for TODReceiver in contract 'CrowdSale':
    |        tokenFactory.mint(msg.sender, numTokensToAllocate);
    |        if (excess > 0){
  > |            msg.sender.send(excess);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol(216)

[31mViolation[0m for UnhandledException in contract 'CrowdSale':
    |        tokenFactory.mint(msg.sender, numTokensToAllocate);
    |        if (excess > 0){
  > |            msg.sender.send(excess);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol(216)

[31mViolation[0m for UnhandledException in contract 'CrowdSale':
    |    function finalize() payable onlyOwner afterFinalizeSet{
    |        if (hardCapAmount == totalDepositedEthers || (now - startTime) > duration){
  > |            dao.call.gas(150000).value(totalDepositedEthers * 3 / 10)();
    |            multiSig.call.gas(150000).value(this.balance)();
    |            isFinalized = true;
  at /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol(222)

[31mViolation[0m for UnhandledException in contract 'CrowdSale':
    |        if (hardCapAmount == totalDepositedEthers || (now - startTime) > duration){
    |            dao.call.gas(150000).value(totalDepositedEthers * 3 / 10)();
  > |            multiSig.call.gas(150000).value(this.balance)();
    |            isFinalized = true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol(223)

[31mViolation[0m for UnhandledException in contract 'CrowdSale':
    |        isFinalized = true;
    |        isStarted = false;
  > |        multiSig.call.gas(150000).value(this.balance)();
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol(230)

[33mWarning[0m for UnhandledException in contract 'CrowdSale':
    |        uint excess = safeSub(msg.value, contribution);
    |        uint numTokensToAllocate = allocateTokensInternally(contribution);
  > |        tokenFactory.mint(msg.sender, numTokensToAllocate);
    |        if (excess > 0){
    |            msg.sender.send(excess);
  at /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol(214)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CrowdSale':
    |        uint excess = safeSub(msg.value, contribution);
    |        uint numTokensToAllocate = allocateTokensInternally(contribution);
  > |        tokenFactory.mint(msg.sender, numTokensToAllocate);
    |        if (excess > 0){
    |            msg.sender.send(excess);
  at /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol(214)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CrowdSale':
    |    function finalize() payable onlyOwner afterFinalizeSet{
    |        if (hardCapAmount == totalDepositedEthers || (now - startTime) > duration){
  > |            dao.call.gas(150000).value(totalDepositedEthers * 3 / 10)();
    |            multiSig.call.gas(150000).value(this.balance)();
    |            isFinalized = true;
  at /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol(222)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CrowdSale':
    |        if (hardCapAmount == totalDepositedEthers || (now - startTime) > duration){
    |            dao.call.gas(150000).value(totalDepositedEthers * 3 / 10)();
  > |            multiSig.call.gas(150000).value(this.balance)();
    |            isFinalized = true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol(223)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CrowdSale':
    |        isFinalized = true;
    |        isStarted = false;
  > |        multiSig.call.gas(150000).value(this.balance)();
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol(230)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CrowdSale':
    |        tokenFactory.mint(msg.sender, numTokensToAllocate);
    |        if (excess > 0){
  > |            msg.sender.send(excess);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol(216)

[31mViolation[0m for UnrestrictedWrite in contract 'CrowdSale':
    |            }
    |        }
  > |        currentTierIndex = tierIndex;
    |        return numTokens;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol(154)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdSale':
    |    function acceptOwnership() {
    |        if (msg.sender == newOwner) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol(71)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdSale':
    |pragma solidity ^0.4.11;
    |
  > |contract SafeMath {
    |  function safeMul(uint a, uint b) internal returns (uint) {
    |    uint c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdSale':
    |
    |    function changeOwner(address _newOwner) onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdSale':
    |  // called by the owner on emergency, triggers stopped state
    |  function halt() external onlyOwner {
  > |    halted = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol(104)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdSale':
    |  // called by the owner on end of emergency, returns to normal state
    |  function unhalt() external onlyOwner onlyInEmergency {
  > |    halted = false;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol(109)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdSale':
    |    function setPricing() onlyOwner{
    |        uint factor = 10 ** decimals;
  > |        priceList.push(PriceTier(uint(safeDiv(1 ether, 100 * factor)),0,5000 ether));
    |        priceList.push(PriceTier(uint((1 ether - (10 wei * factor)) / (90 * factor)),0,5000 ether));
    |        priceList.push(PriceTier(uint(1 ether / (80* factor)),0,5000 ether));
  at /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol(128)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdSale':
    |        uint factor = 10 ** decimals;
    |        priceList.push(PriceTier(uint(safeDiv(1 ether, 100 * factor)),0,5000 ether));
  > |        priceList.push(PriceTier(uint((1 ether - (10 wei * factor)) / (90 * factor)),0,5000 ether));
    |        priceList.push(PriceTier(uint(1 ether / (80* factor)),0,5000 ether));
    |        priceList.push(PriceTier(uint((1 ether - (50 wei * factor)) / (70* factor)),0,5000 ether));
  at /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol(129)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdSale':
    |        priceList.push(PriceTier(uint(safeDiv(1 ether, 100 * factor)),0,5000 ether));
    |        priceList.push(PriceTier(uint((1 ether - (10 wei * factor)) / (90 * factor)),0,5000 ether));
  > |        priceList.push(PriceTier(uint(1 ether / (80* factor)),0,5000 ether));
    |        priceList.push(PriceTier(uint((1 ether - (50 wei * factor)) / (70* factor)),0,5000 ether));
    |        priceList.push(PriceTier(uint((1 ether - (40 wei * factor)) / (60* factor)),0,5000 ether));
  at /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol(130)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdSale':
    |        priceList.push(PriceTier(uint((1 ether - (10 wei * factor)) / (90 * factor)),0,5000 ether));
    |        priceList.push(PriceTier(uint(1 ether / (80* factor)),0,5000 ether));
  > |        priceList.push(PriceTier(uint((1 ether - (50 wei * factor)) / (70* factor)),0,5000 ether));
    |        priceList.push(PriceTier(uint((1 ether - (40 wei * factor)) / (60* factor)),0,5000 ether));
    |        priceList.push(PriceTier(uint(1 ether / (50* factor)),0,5000 ether));
  at /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol(131)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdSale':
    |        priceList.push(PriceTier(uint(1 ether / (80* factor)),0,5000 ether));
    |        priceList.push(PriceTier(uint((1 ether - (50 wei * factor)) / (70* factor)),0,5000 ether));
  > |        priceList.push(PriceTier(uint((1 ether - (40 wei * factor)) / (60* factor)),0,5000 ether));
    |        priceList.push(PriceTier(uint(1 ether / (50* factor)),0,5000 ether));
    |        priceList.push(PriceTier(uint(1 ether / (40* factor)),0,5000 ether));
  at /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol(132)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdSale':
    |        priceList.push(PriceTier(uint((1 ether - (50 wei * factor)) / (70* factor)),0,5000 ether));
    |        priceList.push(PriceTier(uint((1 ether - (40 wei * factor)) / (60* factor)),0,5000 ether));
  > |        priceList.push(PriceTier(uint(1 ether / (50* factor)),0,5000 ether));
    |        priceList.push(PriceTier(uint(1 ether / (40* factor)),0,5000 ether));
    |        priceList.push(PriceTier(uint((1 ether - (10 wei * factor))/ (30* factor)),0,5000 ether));
  at /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol(133)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdSale':
    |        priceList.push(PriceTier(uint((1 ether - (40 wei * factor)) / (60* factor)),0,5000 ether));
    |        priceList.push(PriceTier(uint(1 ether / (50* factor)),0,5000 ether));
  > |        priceList.push(PriceTier(uint(1 ether / (40* factor)),0,5000 ether));
    |        priceList.push(PriceTier(uint((1 ether - (10 wei * factor))/ (30* factor)),0,5000 ether));
    |        priceList.push(PriceTier(uint((1 ether - (10 wei * factor))/ (15* factor)),0,30000 ether));
  at /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol(134)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdSale':
    |        priceList.push(PriceTier(uint(1 ether / (50* factor)),0,5000 ether));
    |        priceList.push(PriceTier(uint(1 ether / (40* factor)),0,5000 ether));
  > |        priceList.push(PriceTier(uint((1 ether - (10 wei * factor))/ (30* factor)),0,5000 ether));
    |        priceList.push(PriceTier(uint((1 ether - (10 wei * factor))/ (15* factor)),0,30000 ether));
    |        numTiers = 9;
  at /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol(135)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdSale':
    |        priceList.push(PriceTier(uint(1 ether / (40* factor)),0,5000 ether));
    |        priceList.push(PriceTier(uint((1 ether - (10 wei * factor))/ (30* factor)),0,5000 ether));
  > |        priceList.push(PriceTier(uint((1 ether - (10 wei * factor))/ (15* factor)),0,30000 ether));
    |        numTiers = 9;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdSale':
    |        priceList.push(PriceTier(uint((1 ether - (10 wei * factor))/ (30* factor)),0,5000 ether));
    |        priceList.push(PriceTier(uint((1 ether - (10 wei * factor))/ (15* factor)),0,30000 ether));
  > |        numTiers = 9;
    |    }
    |    function allocateTokensInternally(uint value) internal constant returns(uint numTokens){
  at /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol(137)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdSale':
    |                uint ethersToDepositInTier = min256(priceList[i].maxEthersInTier - priceList[i].ethersDepositedInTier, value);
    |                numTokens = safeAdd(numTokens, ethersToDepositInTier / priceList[i].costPerToken);
  > |                priceList[i].ethersDepositedInTier = safeAdd(ethersToDepositInTier, priceList[i].ethersDepositedInTier);
    |                totalDepositedEthers = safeAdd(ethersToDepositInTier, totalDepositedEthers);
    |                value = safeSub(value, ethersToDepositInTier);
  at /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdSale':
    |                numTokens = safeAdd(numTokens, ethersToDepositInTier / priceList[i].costPerToken);
    |                priceList[i].ethersDepositedInTier = safeAdd(ethersToDepositInTier, priceList[i].ethersDepositedInTier);
  > |                totalDepositedEthers = safeAdd(ethersToDepositInTier, totalDepositedEthers);
    |                value = safeSub(value, ethersToDepositInTier);
    |                if (priceList[i].ethersDepositedInTier > 0)
  at /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol(148)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdSale':
    |    function startCrowdsale() onlyOwner {
    |        if (isStarted) throw;
  > |        isStarted = true;
    |        startTime = now;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol(198)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdSale':
    |        if (isStarted) throw;
    |        isStarted = true;
  > |        startTime = now;
    |    }
    |    function setDAOAndMultiSig(address _dao, address _multiSig) onlyOwner{
  at /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol(199)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdSale':
    |    }
    |    function setDAOAndMultiSig(address _dao, address _multiSig) onlyOwner{
  > |        dao = _dao;
    |        multiSig = _multiSig;
    |        finalizeSet = true;
  at /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol(202)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdSale':
    |    function setDAOAndMultiSig(address _dao, address _multiSig) onlyOwner{
    |        dao = _dao;
  > |        multiSig = _multiSig;
    |        finalizeSet = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol(203)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdSale':
    |        dao = _dao;
    |        multiSig = _multiSig;
  > |        finalizeSet = true;
    |    }
    |    function() payable stopInEmergency onlyStarted notFinalized{
  at /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol(204)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdSale':
    |            dao.call.gas(150000).value(totalDepositedEthers * 3 / 10)();
    |            multiSig.call.gas(150000).value(this.balance)();
  > |            isFinalized = true;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol(224)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdSale':
    |    }
    |    function emergencyCease() payable onlyStarted onlyInEmergency onlyOwner afterFinalizeSet{
  > |        isFinalized = true;
    |        isStarted = false;
    |        multiSig.call.gas(150000).value(this.balance)();
  at /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol(228)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdSale':
    |    function emergencyCease() payable onlyStarted onlyInEmergency onlyOwner afterFinalizeSet{
    |        isFinalized = true;
  > |        isStarted = false;
    |        multiSig.call.gas(150000).value(this.balance)();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol(229)

[33mWarning[0m for LockedEther in contract 'DAOController':
    |}
    |
  > |contract DAOController{
    |    address public dao;
    |    modifier onlyDAO{
  at /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol(160)

[33mWarning[0m for MissingInputValidation in contract 'DAOController':
    |
    |contract DAOController{
  > |    address public dao;
    |    modifier onlyDAO{
    |        if (msg.sender != dao) throw;
  at /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol(161)

[33mWarning[0m for LockedEther in contract 'Haltable':
    | * Originally envisioned in FirstBlood ICO contract.
    | */
  > |contract Haltable is Owned {
    |  bool public halted;
    |
  at /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol(89)

[31mViolation[0m for MissingInputValidation in contract 'Haltable':
    |    address public newOwner;
    |
  > |    function changeOwner(address _newOwner) onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol(65)

[33mWarning[0m for MissingInputValidation in contract 'Haltable':
    |    }
    |
  > |    address public owner;
    |
    |    function Owned() {
  at /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol(57)

[33mWarning[0m for MissingInputValidation in contract 'Haltable':
    |    }
    |
  > |    address public newOwner;
    |
    |    function changeOwner(address _newOwner) onlyOwner {
  at /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol(63)

[33mWarning[0m for MissingInputValidation in contract 'Haltable':
    |    }
    |
  > |    function acceptOwnership() {
    |        if (msg.sender == newOwner) {
    |            owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol(69)

[33mWarning[0m for MissingInputValidation in contract 'Haltable':
    | */
    |contract Haltable is Owned {
  > |  bool public halted;
    |
    |  modifier stopInEmergency {
  at /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol(90)

[33mWarning[0m for MissingInputValidation in contract 'Haltable':
    |
    |  // called by the owner on emergency, triggers stopped state
  > |  function halt() external onlyOwner {
    |    halted = true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol(103)

[33mWarning[0m for MissingInputValidation in contract 'Haltable':
    |
    |  // called by the owner on end of emergency, returns to normal state
  > |  function unhalt() external onlyOwner onlyInEmergency {
    |    halted = false;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol(108)

[33mWarning[0m for UnrestrictedWrite in contract 'Haltable':
    |    function acceptOwnership() {
    |        if (msg.sender == newOwner) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol(71)

[33mWarning[0m for UnrestrictedWrite in contract 'Haltable':
    |
    |    function changeOwner(address _newOwner) onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'Haltable':
    |  // called by the owner on emergency, triggers stopped state
    |  function halt() external onlyOwner {
  > |    halted = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol(104)

[33mWarning[0m for UnrestrictedWrite in contract 'Haltable':
    |  // called by the owner on end of emergency, returns to normal state
    |  function unhalt() external onlyOwner onlyInEmergency {
  > |    halted = false;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol(109)

[33mWarning[0m for LockedEther in contract 'Owned':
    |}
    |
  > |contract Owned {
    |    modifier onlyOwner() {
    |        require(msg.sender == owner);
  at /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol(51)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    address public newOwner;
    |
  > |    function changeOwner(address _newOwner) onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol(65)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    address public owner;
    |
    |    function Owned() {
  at /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol(57)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    address public newOwner;
    |
    |    function changeOwner(address _newOwner) onlyOwner {
  at /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol(63)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function acceptOwnership() {
    |        if (msg.sender == newOwner) {
    |            owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol(69)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |    function acceptOwnership() {
    |        if (msg.sender == newOwner) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol(71)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |    function changeOwner(address _newOwner) onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol(66)

[33mWarning[0m for LockedEther in contract 'PricingMechanism':
    |}
    |
  > |contract PricingMechanism is Haltable, SafeMath{
    |    uint public decimals;
    |    PriceTier[] public priceList;
  at /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol(114)

[31mViolation[0m for MissingInputValidation in contract 'PricingMechanism':
    |    address public newOwner;
    |
  > |    function changeOwner(address _newOwner) onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol(65)

[33mWarning[0m for MissingInputValidation in contract 'PricingMechanism':
    |  }
    |
  > |  function safeDiv(uint a, uint b) internal returns (uint) {
    |    assert(b > 0);
    |    uint c = a / b;
  at /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'PricingMechanism':
    |  }
    |
  > |  function assert(bool assertion) internal {
    |    if (!assertion) {
    |      throw;
  at /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol(44)

[33mWarning[0m for MissingInputValidation in contract 'PricingMechanism':
    |    }
    |
  > |    address public owner;
    |
    |    function Owned() {
  at /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol(57)

[33mWarning[0m for MissingInputValidation in contract 'PricingMechanism':
    |    }
    |
  > |    address public newOwner;
    |
    |    function changeOwner(address _newOwner) onlyOwner {
  at /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol(63)

[33mWarning[0m for MissingInputValidation in contract 'PricingMechanism':
    |    }
    |
  > |    function acceptOwnership() {
    |        if (msg.sender == newOwner) {
    |            owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol(69)

[33mWarning[0m for MissingInputValidation in contract 'PricingMechanism':
    | */
    |contract Haltable is Owned {
  > |  bool public halted;
    |
    |  modifier stopInEmergency {
  at /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol(90)

[33mWarning[0m for MissingInputValidation in contract 'PricingMechanism':
    |
    |  // called by the owner on emergency, triggers stopped state
  > |  function halt() external onlyOwner {
    |    halted = true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol(103)

[33mWarning[0m for MissingInputValidation in contract 'PricingMechanism':
    |
    |  // called by the owner on end of emergency, returns to normal state
  > |  function unhalt() external onlyOwner onlyInEmergency {
    |    halted = false;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol(108)

[33mWarning[0m for MissingInputValidation in contract 'PricingMechanism':
    |
    |contract PricingMechanism is Haltable, SafeMath{
  > |    uint public decimals;
    |    PriceTier[] public priceList;
    |    uint8 public numTiers;
  at /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol(115)

[33mWarning[0m for MissingInputValidation in contract 'PricingMechanism':
    |contract PricingMechanism is Haltable, SafeMath{
    |    uint public decimals;
  > |    PriceTier[] public priceList;
    |    uint8 public numTiers;
    |    uint public currentTierIndex;
  at /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol(116)

[33mWarning[0m for MissingInputValidation in contract 'PricingMechanism':
    |    uint public decimals;
    |    PriceTier[] public priceList;
  > |    uint8 public numTiers;
    |    uint public currentTierIndex;
    |    uint public totalDepositedEthers;
  at /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol(117)

[33mWarning[0m for MissingInputValidation in contract 'PricingMechanism':
    |    PriceTier[] public priceList;
    |    uint8 public numTiers;
  > |    uint public currentTierIndex;
    |    uint public totalDepositedEthers;
    |    
  at /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol(118)

[33mWarning[0m for MissingInputValidation in contract 'PricingMechanism':
    |    uint8 public numTiers;
    |    uint public currentTierIndex;
  > |    uint public totalDepositedEthers;
    |    
    |    struct  PriceTier {
  at /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol(119)

[33mWarning[0m for MissingInputValidation in contract 'PricingMechanism':
    |        uint maxEthersInTier;
    |    }
  > |    function setPricing() onlyOwner{
    |        uint factor = 10 ** decimals;
    |        priceList.push(PriceTier(uint(safeDiv(1 ether, 100 * factor)),0,5000 ether));
  at /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol(126)

[31mViolation[0m for UnrestrictedWrite in contract 'PricingMechanism':
    |pragma solidity ^0.4.11;
    |
  > |contract SafeMath {
    |  function safeMul(uint a, uint b) internal returns (uint) {
    |    uint c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol(3)

[31mViolation[0m for UnrestrictedWrite in contract 'PricingMechanism':
    |    function setPricing() onlyOwner{
    |        uint factor = 10 ** decimals;
  > |        priceList.push(PriceTier(uint(safeDiv(1 ether, 100 * factor)),0,5000 ether));
    |        priceList.push(PriceTier(uint((1 ether - (10 wei * factor)) / (90 * factor)),0,5000 ether));
    |        priceList.push(PriceTier(uint(1 ether / (80* factor)),0,5000 ether));
  at /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol(128)

[31mViolation[0m for UnrestrictedWrite in contract 'PricingMechanism':
    |        uint factor = 10 ** decimals;
    |        priceList.push(PriceTier(uint(safeDiv(1 ether, 100 * factor)),0,5000 ether));
  > |        priceList.push(PriceTier(uint((1 ether - (10 wei * factor)) / (90 * factor)),0,5000 ether));
    |        priceList.push(PriceTier(uint(1 ether / (80* factor)),0,5000 ether));
    |        priceList.push(PriceTier(uint((1 ether - (50 wei * factor)) / (70* factor)),0,5000 ether));
  at /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol(129)

[31mViolation[0m for UnrestrictedWrite in contract 'PricingMechanism':
    |        priceList.push(PriceTier(uint(safeDiv(1 ether, 100 * factor)),0,5000 ether));
    |        priceList.push(PriceTier(uint((1 ether - (10 wei * factor)) / (90 * factor)),0,5000 ether));
  > |        priceList.push(PriceTier(uint(1 ether / (80* factor)),0,5000 ether));
    |        priceList.push(PriceTier(uint((1 ether - (50 wei * factor)) / (70* factor)),0,5000 ether));
    |        priceList.push(PriceTier(uint((1 ether - (40 wei * factor)) / (60* factor)),0,5000 ether));
  at /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol(130)

[31mViolation[0m for UnrestrictedWrite in contract 'PricingMechanism':
    |        priceList.push(PriceTier(uint((1 ether - (10 wei * factor)) / (90 * factor)),0,5000 ether));
    |        priceList.push(PriceTier(uint(1 ether / (80* factor)),0,5000 ether));
  > |        priceList.push(PriceTier(uint((1 ether - (50 wei * factor)) / (70* factor)),0,5000 ether));
    |        priceList.push(PriceTier(uint((1 ether - (40 wei * factor)) / (60* factor)),0,5000 ether));
    |        priceList.push(PriceTier(uint(1 ether / (50* factor)),0,5000 ether));
  at /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol(131)

[31mViolation[0m for UnrestrictedWrite in contract 'PricingMechanism':
    |        priceList.push(PriceTier(uint(1 ether / (80* factor)),0,5000 ether));
    |        priceList.push(PriceTier(uint((1 ether - (50 wei * factor)) / (70* factor)),0,5000 ether));
  > |        priceList.push(PriceTier(uint((1 ether - (40 wei * factor)) / (60* factor)),0,5000 ether));
    |        priceList.push(PriceTier(uint(1 ether / (50* factor)),0,5000 ether));
    |        priceList.push(PriceTier(uint(1 ether / (40* factor)),0,5000 ether));
  at /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol(132)

[31mViolation[0m for UnrestrictedWrite in contract 'PricingMechanism':
    |        priceList.push(PriceTier(uint((1 ether - (50 wei * factor)) / (70* factor)),0,5000 ether));
    |        priceList.push(PriceTier(uint((1 ether - (40 wei * factor)) / (60* factor)),0,5000 ether));
  > |        priceList.push(PriceTier(uint(1 ether / (50* factor)),0,5000 ether));
    |        priceList.push(PriceTier(uint(1 ether / (40* factor)),0,5000 ether));
    |        priceList.push(PriceTier(uint((1 ether - (10 wei * factor))/ (30* factor)),0,5000 ether));
  at /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol(133)

[31mViolation[0m for UnrestrictedWrite in contract 'PricingMechanism':
    |        priceList.push(PriceTier(uint((1 ether - (40 wei * factor)) / (60* factor)),0,5000 ether));
    |        priceList.push(PriceTier(uint(1 ether / (50* factor)),0,5000 ether));
  > |        priceList.push(PriceTier(uint(1 ether / (40* factor)),0,5000 ether));
    |        priceList.push(PriceTier(uint((1 ether - (10 wei * factor))/ (30* factor)),0,5000 ether));
    |        priceList.push(PriceTier(uint((1 ether - (10 wei * factor))/ (15* factor)),0,30000 ether));
  at /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol(134)

[31mViolation[0m for UnrestrictedWrite in contract 'PricingMechanism':
    |        priceList.push(PriceTier(uint(1 ether / (50* factor)),0,5000 ether));
    |        priceList.push(PriceTier(uint(1 ether / (40* factor)),0,5000 ether));
  > |        priceList.push(PriceTier(uint((1 ether - (10 wei * factor))/ (30* factor)),0,5000 ether));
    |        priceList.push(PriceTier(uint((1 ether - (10 wei * factor))/ (15* factor)),0,30000 ether));
    |        numTiers = 9;
  at /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol(135)

[31mViolation[0m for UnrestrictedWrite in contract 'PricingMechanism':
    |        priceList.push(PriceTier(uint(1 ether / (40* factor)),0,5000 ether));
    |        priceList.push(PriceTier(uint((1 ether - (10 wei * factor))/ (30* factor)),0,5000 ether));
  > |        priceList.push(PriceTier(uint((1 ether - (10 wei * factor))/ (15* factor)),0,30000 ether));
    |        numTiers = 9;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol(136)

[31mViolation[0m for UnrestrictedWrite in contract 'PricingMechanism':
    |        priceList.push(PriceTier(uint((1 ether - (10 wei * factor))/ (30* factor)),0,5000 ether));
    |        priceList.push(PriceTier(uint((1 ether - (10 wei * factor))/ (15* factor)),0,30000 ether));
  > |        numTiers = 9;
    |    }
    |    function allocateTokensInternally(uint value) internal constant returns(uint numTokens){
  at /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol(137)

[33mWarning[0m for UnrestrictedWrite in contract 'PricingMechanism':
    |    function acceptOwnership() {
    |        if (msg.sender == newOwner) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol(71)

[33mWarning[0m for UnrestrictedWrite in contract 'PricingMechanism':
    |
    |    function changeOwner(address _newOwner) onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'PricingMechanism':
    |  // called by the owner on emergency, triggers stopped state
    |  function halt() external onlyOwner {
  > |    halted = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol(104)

[33mWarning[0m for UnrestrictedWrite in contract 'PricingMechanism':
    |  // called by the owner on end of emergency, returns to normal state
    |  function unhalt() external onlyOwner onlyInEmergency {
  > |    halted = false;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol(109)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.11;
    |
  > |contract SafeMath {
    |  function safeMul(uint a, uint b) internal returns (uint) {
    |    uint c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x9c0c2c6d734d075a013c822b0cfea8917a3f5e75.sol(3)


