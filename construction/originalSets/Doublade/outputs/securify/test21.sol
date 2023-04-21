Processing contract: /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol:CrowdSale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol:MigrationAgent
Processing contract: /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol:Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol:Vesting
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol:WhiteList
[33mWarning[0m for DAOConstantGas in contract 'CrowdSale':
    |            require(totalTokensSold <= maxCapTokens);  // ensure that max cap hasn't been reached
    |        }
  > |        multisig.transfer(msg.value);  // send money to multisignature wallet
    |
    |        ReceivedETH(_contributor, currentStep, msg.value); // Register event
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(400)

[33mWarning[0m for DAOConstantGas in contract 'CrowdSale':
    |        refunded[msg.sender] = totalRefunded;
    |
  > |        msg.sender.transfer(totalEtherReceived);  // refund contribution
    |        Refunded(msg.sender, totalEtherReceived); // log event
    |    }
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(514)

[33mWarning[0m for DAOConstantGas in contract 'CrowdSale':
    |        }
    |
  > |        _contributor.transfer(totalEtherReceived);  // refund contribution
    |        Refunded(_contributor, totalEtherReceived); // log event
    |    }
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(554)

[33mWarning[0m for DAOConstantGas in contract 'CrowdSale':
    |    // @notice Failsafe drain to individual wallet
    |    function drain() external onlyOwner() {
  > |        multisig.transfer(this.balance);
    |
    |    }
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(560)

[33mWarning[0m for LockedEther in contract 'CrowdSale':
    |// Presale Smart Contract
    |// This smart contract collects ETH and in return sends tokens to the backers.
  > |contract CrowdSale is  Pausable, Vesting {
    |
    |    using SafeMath for uint;
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(205)

[31mViolation[0m for TODAmount in contract 'CrowdSale':
    |        refunded[msg.sender] = totalRefunded;
    |
  > |        msg.sender.transfer(totalEtherReceived);  // refund contribution
    |        Refunded(msg.sender, totalEtherReceived); // log event
    |    }
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(514)

[31mViolation[0m for TODAmount in contract 'CrowdSale':
    |    // @notice Failsafe drain to individual wallet
    |    function drain() external onlyOwner() {
  > |        multisig.transfer(this.balance);
    |
    |    }
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(560)

[33mWarning[0m for TODReceiver in contract 'CrowdSale':
    |        refunded[msg.sender] = totalRefunded;
    |
  > |        msg.sender.transfer(totalEtherReceived);  // refund contribution
    |        Refunded(msg.sender, totalEtherReceived); // log event
    |    }
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(514)

[33mWarning[0m for TODReceiver in contract 'CrowdSale':
    |        }
    |
  > |        _contributor.transfer(totalEtherReceived);  // refund contribution
    |        Refunded(_contributor, totalEtherReceived); // log event
    |    }
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(554)

[33mWarning[0m for TODReceiver in contract 'CrowdSale':
    |    // @notice Failsafe drain to individual wallet
    |    function drain() external onlyOwner() {
  > |        multisig.transfer(this.balance);
    |
    |    }
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(560)

[33mWarning[0m for UnhandledException in contract 'CrowdSale':
    |        teamTokensCurrent = teamTokensCurrent.add(_tokensToTransfer);  // update released token amount
    |        
  > |        if (!token.transfer(_recipient, _tokensToTransfer))
    |                revert();
    |
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(174)

[33mWarning[0m for UnhandledException in contract 'CrowdSale':
    |        companyTokensCurrent = companyTokensCurrent.add(_tokensToTransfer);  // update released token amount
    |
  > |        if (!token.transfer(_recipient, _tokensToTransfer))
    |                revert();
    |        LogCompanyTokensTransferred(_recipient, _tokensToTransfer);
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(197)

[33mWarning[0m for UnhandledException in contract 'CrowdSale':
    |
    |
  > |        require(whiteList.isWhiteListed(_contributor));  // ensure that user is whitelisted
    |        Backer storage backer = backers[_contributor];
    |        require (msg.value >= minInvestment);  // ensure that min contributions amount is met
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(378)

[33mWarning[0m for UnhandledException in contract 'CrowdSale':
    |            require(totalTokensSold <= maxCapTokens);  // ensure that max cap hasn't been reached
    |        }
  > |        multisig.transfer(msg.value);  // send money to multisignature wallet
    |
    |        ReceivedETH(_contributor, currentStep, msg.value); // Register event
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(400)

[33mWarning[0m for UnhandledException in contract 'CrowdSale':
    |        companyTokensInitial += maxCapTokens - totalTokensSold; // allocate unsold tokens to the company        
    |        dateICOEnded = now;
  > |        token.unlock();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(420)

[33mWarning[0m for UnhandledException in contract 'CrowdSale':
    |        totalClaimed += tokensToSend;
    |
  > |        if (!token.transfer(_backer, tokensToSend))
    |            revert(); // send claimed tokens to contributor account
    |
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(470)

[33mWarning[0m for UnhandledException in contract 'CrowdSale':
    |        refunded[msg.sender] = totalRefunded;
    |
  > |        msg.sender.transfer(totalEtherReceived);  // refund contribution
    |        Refunded(msg.sender, totalEtherReceived); // log event
    |    }
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(514)

[33mWarning[0m for UnhandledException in contract 'CrowdSale':
    |        }
    |
  > |        _contributor.transfer(totalEtherReceived);  // refund contribution
    |        Refunded(_contributor, totalEtherReceived); // log event
    |    }
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(554)

[33mWarning[0m for UnhandledException in contract 'CrowdSale':
    |    // @notice Failsafe drain to individual wallet
    |    function drain() external onlyOwner() {
  > |        multisig.transfer(this.balance);
    |
    |    }
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(560)

[33mWarning[0m for UnhandledException in contract 'CrowdSale':
    |    function tokenDrain() external onlyOwner() {
    |    if (block.number > endBlock) {
  > |        if (!token.transfer(multisig, token.balanceOf(this)))
    |                revert();
    |        }
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(567)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CrowdSale':
    |        teamTokensCurrent = teamTokensCurrent.add(_tokensToTransfer);  // update released token amount
    |        
  > |        if (!token.transfer(_recipient, _tokensToTransfer))
    |                revert();
    |
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(174)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CrowdSale':
    |        companyTokensCurrent = companyTokensCurrent.add(_tokensToTransfer);  // update released token amount
    |
  > |        if (!token.transfer(_recipient, _tokensToTransfer))
    |                revert();
    |        LogCompanyTokensTransferred(_recipient, _tokensToTransfer);
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(197)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CrowdSale':
    |
    |
  > |        require(whiteList.isWhiteListed(_contributor));  // ensure that user is whitelisted
    |        Backer storage backer = backers[_contributor];
    |        require (msg.value >= minInvestment);  // ensure that min contributions amount is met
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(378)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CrowdSale':
    |            require(totalTokensSold <= maxCapTokens);  // ensure that max cap hasn't been reached
    |        }
  > |        multisig.transfer(msg.value);  // send money to multisignature wallet
    |
    |        ReceivedETH(_contributor, currentStep, msg.value); // Register event
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(400)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CrowdSale':
    |        companyTokensInitial += maxCapTokens - totalTokensSold; // allocate unsold tokens to the company        
    |        dateICOEnded = now;
  > |        token.unlock();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(420)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CrowdSale':
    |        totalClaimed += tokensToSend;
    |
  > |        if (!token.transfer(_backer, tokensToSend))
    |            revert(); // send claimed tokens to contributor account
    |
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(470)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CrowdSale':
    |        }
    |
  > |        _contributor.transfer(totalEtherReceived);  // refund contribution
    |        Refunded(_contributor, totalEtherReceived); // log event
    |    }
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(554)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CrowdSale':
    |    // @notice Failsafe drain to individual wallet
    |    function drain() external onlyOwner() {
  > |        multisig.transfer(this.balance);
    |
    |    }
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(560)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CrowdSale':
    |    function tokenDrain() external onlyOwner() {
    |    if (block.number > endBlock) {
  > |        if (!token.transfer(multisig, token.balanceOf(this)))
    |                revert();
    |        }
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(567)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdSale':
    |            require(teamTokensCurrent.add(_tokensToTransfer) <= teamTokensInitial);
    |
  > |        teamTokensCurrent = teamTokensCurrent.add(_tokensToTransfer);  // update released token amount
    |        
    |        if (!token.transfer(_recipient, _tokensToTransfer))
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(172)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdSale':
    |            require(companyTokensCurrent.add(_tokensToTransfer) <= companyTokensInitial);
    |
  > |        companyTokensCurrent = companyTokensCurrent.add(_tokensToTransfer);  // update released token amount
    |
    |        if (!token.transfer(_recipient, _tokensToTransfer))
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(195)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdSale':
    |        require(_returnPercentage > 0);
    |        require(msg.value == (ethReceivedPresaleOne.mul(_returnPercentage) / 100) + ethReceivedPresaleTwo + ethReceiveMainSale);
  > |        returnPercentage = _returnPercentage;
    |        currentStep = Step.Refunding;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(348)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdSale':
    |        require(msg.value == (ethReceivedPresaleOne.mul(_returnPercentage) / 100) + ethReceivedPresaleTwo + ethReceiveMainSale);
    |        returnPercentage = _returnPercentage;
  > |        currentStep = Step.Refunding;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(349)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdSale':
    |        require(_block <= 625392);  // 4.3×60×24×101 days
    |        require(_block > block.number.sub(startBlock)); // ensure that endBlock is not set in the past
  > |        endBlock = startBlock.add(_block);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(367)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdSale':
    |
    |        if (currentStep == Step.FundingPresaleOne) {          
  > |            backer.weiReceivedOne = backer.weiReceivedOne.add(msg.value);
    |            ethReceivedPresaleOne = ethReceivedPresaleOne.add(msg.value); // Update the total Ether received in presale 1
    |            require(ethReceivedPresaleOne <= maxCapEth);  // ensure that max cap hasn't been reached
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(386)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdSale':
    |        if (currentStep == Step.FundingPresaleOne) {          
    |            backer.weiReceivedOne = backer.weiReceivedOne.add(msg.value);
  > |            ethReceivedPresaleOne = ethReceivedPresaleOne.add(msg.value); // Update the total Ether received in presale 1
    |            require(ethReceivedPresaleOne <= maxCapEth);  // ensure that max cap hasn't been reached
    |        }else if (currentStep == Step.FundingPresaleTwo) {           
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(387)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdSale':
    |            require(ethReceivedPresaleOne <= maxCapEth);  // ensure that max cap hasn't been reached
    |        }else if (currentStep == Step.FundingPresaleTwo) {           
  > |            backer.weiReceivedTwo = backer.weiReceivedTwo.add(msg.value);
    |            ethReceivedPresaleTwo = ethReceivedPresaleTwo.add(msg.value);  // Update the total Ether received in presale 2
    |            require(ethReceivedPresaleOne + ethReceivedPresaleTwo <= maxCapEth);  // ensure that max cap hasn't been reached
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(390)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdSale':
    |        }else if (currentStep == Step.FundingPresaleTwo) {           
    |            backer.weiReceivedTwo = backer.weiReceivedTwo.add(msg.value);
  > |            ethReceivedPresaleTwo = ethReceivedPresaleTwo.add(msg.value);  // Update the total Ether received in presale 2
    |            require(ethReceivedPresaleOne + ethReceivedPresaleTwo <= maxCapEth);  // ensure that max cap hasn't been reached
    |        }else if (currentStep == Step.FundingMainSale) {
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(391)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdSale':
    |            require(ethReceivedPresaleOne + ethReceivedPresaleTwo <= maxCapEth);  // ensure that max cap hasn't been reached
    |        }else if (currentStep == Step.FundingMainSale) {
  > |            backer.weiReceivedMain = backer.weiReceivedMain.add(msg.value);
    |            ethReceiveMainSale = ethReceiveMainSale.add(msg.value);  // Update the total Ether received in presale 2
    |            uint tokensToSend = dollarPerEtherRatio.mul(msg.value) / 62;  // calculate amount of tokens to send for this user 
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(394)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdSale':
    |        }else if (currentStep == Step.FundingMainSale) {
    |            backer.weiReceivedMain = backer.weiReceivedMain.add(msg.value);
  > |            ethReceiveMainSale = ethReceiveMainSale.add(msg.value);  // Update the total Ether received in presale 2
    |            uint tokensToSend = dollarPerEtherRatio.mul(msg.value) / 62;  // calculate amount of tokens to send for this user 
    |            totalTokensSold += tokensToSend;
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(395)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdSale':
    |            ethReceiveMainSale = ethReceiveMainSale.add(msg.value);  // Update the total Ether received in presale 2
    |            uint tokensToSend = dollarPerEtherRatio.mul(msg.value) / 62;  // calculate amount of tokens to send for this user 
  > |            totalTokensSold += tokensToSend;
    |            require(totalTokensSold <= maxCapTokens);  // ensure that max cap hasn't been reached
    |        }
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(397)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdSale':
    |        tokensToSend = tokensToSend + (dollarPerEtherRatio * backer.weiReceivedMain) / 62;  // determine amount of tokens to send from main sale
    |
  > |        claimed[_backer] = tokensToSend;  // save claimed tokens
    |        backer.claimed = true;
    |        backer.tokensSent = tokensToSend;
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(465)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdSale':
    |
    |        claimed[_backer] = tokensToSend;  // save claimed tokens
  > |        backer.claimed = true;
    |        backer.tokensSent = tokensToSend;
    |        totalClaimed += tokensToSend;
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(466)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdSale':
    |        claimed[_backer] = tokensToSend;  // save claimed tokens
    |        backer.claimed = true;
  > |        backer.tokensSent = tokensToSend;
    |        totalClaimed += tokensToSend;
    |
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(467)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdSale':
    |        assert(totalEtherReceived > 0);
    |
  > |        backer.refunded = true; // mark contributor as refunded.
    |        totalRefunded += totalEtherReceived;
    |        refundCount ++;
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(509)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdSale':
    |        totalRefunded += totalEtherReceived;
    |        refundCount ++;
  > |        refunded[msg.sender] = totalRefunded;
    |
    |        msg.sender.transfer(totalEtherReceived);  // refund contribution
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(512)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdSale':
    |
    |
  > |library SafeMath {
    |    function mul(uint a, uint b) pure internal returns(uint) {
    |        uint c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(4)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdSale':
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(57)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdSale':
    |    // @notice Called by the owner in emergency, triggers stopped state
    |    function emergencyStop() external onlyOwner {
  > |        stopped = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(81)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdSale':
    |    /// @notice Called by the owner to end of emergency, returns to normal state
    |    function release() external onlyOwner onlyInEmergency {
  > |        stopped = false;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(86)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdSale':
    |    function setToken(Token _token) public onlyOwner() returns(bool) {
    |        require (token == address(0));  
  > |        token = _token;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(145)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdSale':
    |    // @notice set the product completion date for release of dev tokens
    |    function setProductCompletionDate() external onlyOwner() {
  > |        dateProductCompleted = now;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(151)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdSale':
    |    // contract is deployed in presale 1 mode
    |    function setPresaleTwo() public onlyOwner() {
  > |        currentStep = Step.FundingPresaleTwo;
    |        minInvestment = 10 ether;  // 10 eth
    |    }
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(310)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdSale':
    |    function setPresaleTwo() public onlyOwner() {
    |        currentStep = Step.FundingPresaleTwo;
  > |        minInvestment = 10 ether;  // 10 eth
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(311)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdSale':
    |
    |        require(_ratio > 0);
  > |        currentStep = Step.FundingMainSale;
    |        dollarPerEtherRatio = _ratio;
    |        maxCapTokens = 50e24;
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(320)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdSale':
    |        require(_ratio > 0);
    |        currentStep = Step.FundingMainSale;
  > |        dollarPerEtherRatio = _ratio;
    |        maxCapTokens = 50e24;
    |        minInvestment = 1 ether / 10;  // 0.1 eth
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(321)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdSale':
    |        currentStep = Step.FundingMainSale;
    |        dollarPerEtherRatio = _ratio;
  > |        maxCapTokens = 50e24;
    |        minInvestment = 1 ether / 10;  // 0.1 eth
    |        totalTokensSold = (dollarPerEtherRatio * ethReceivedPresaleOne) / 48;  // determine amount of tokens to send from first presale
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(322)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdSale':
    |        dollarPerEtherRatio = _ratio;
    |        maxCapTokens = 50e24;
  > |        minInvestment = 1 ether / 10;  // 0.1 eth
    |        totalTokensSold = (dollarPerEtherRatio * ethReceivedPresaleOne) / 48;  // determine amount of tokens to send from first presale
    |        totalTokensSold += (dollarPerEtherRatio * ethReceivedPresaleTwo) / 55;  // determine amount of tokens to send from second presale and total it.
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(323)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdSale':
    |        maxCapTokens = 50e24;
    |        minInvestment = 1 ether / 10;  // 0.1 eth
  > |        totalTokensSold = (dollarPerEtherRatio * ethReceivedPresaleOne) / 48;  // determine amount of tokens to send from first presale
    |        totalTokensSold += (dollarPerEtherRatio * ethReceivedPresaleTwo) / 55;  // determine amount of tokens to send from second presale and total it.
    |    }
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(324)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdSale':
    |        minInvestment = 1 ether / 10;  // 0.1 eth
    |        totalTokensSold = (dollarPerEtherRatio * ethReceivedPresaleOne) / 48;  // determine amount of tokens to send from first presale
  > |        totalTokensSold += (dollarPerEtherRatio * ethReceivedPresaleTwo) / 55;  // determine amount of tokens to send from second presale and total it.
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(325)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdSale':
    |    // block numbers will be calculated based on current block time average.    
    |    function start() external onlyOwner() {
  > |        startBlock = block.number;
    |        endBlock = startBlock + 563472; // 4.3*60*24*91 days
    |    }
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(355)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdSale':
    |    function start() external onlyOwner() {
    |        startBlock = block.number;
  > |        endBlock = startBlock + 563472; // 4.3*60*24*91 days
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(356)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdSale':
    |        require(totalTokensSold >= minCapTokens);
    |        
  > |        companyTokensInitial += maxCapTokens - totalTokensSold; // allocate unsold tokens to the company        
    |        dateICOEnded = now;
    |        token.unlock();
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(418)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdSale':
    |        
    |        companyTokensInitial += maxCapTokens - totalTokensSold; // allocate unsold tokens to the company        
  > |        dateICOEnded = now;
    |        token.unlock();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(419)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdSale':
    |
    |        // invalidate old address
  > |        backerOld.claimed = true;
    |        backerOld.refunded = true;
    |
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(437)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdSale':
    |        // invalidate old address
    |        backerOld.claimed = true;
  > |        backerOld.refunded = true;
    |
    |        // initialize new address
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(438)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdSale':
    |
    |        // initialize new address
  > |        backerNew.weiReceivedOne = backerOld.weiReceivedOne;
    |        backerNew.weiReceivedTwo = backerOld.weiReceivedTwo;
    |        backerNew.weiReceivedMain = backerOld.weiReceivedMain;
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(441)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdSale':
    |        // initialize new address
    |        backerNew.weiReceivedOne = backerOld.weiReceivedOne;
  > |        backerNew.weiReceivedTwo = backerOld.weiReceivedTwo;
    |        backerNew.weiReceivedMain = backerOld.weiReceivedMain;
    |        backersIndex.push(_contributorNew);
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(442)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdSale':
    |        backerNew.weiReceivedOne = backerOld.weiReceivedOne;
    |        backerNew.weiReceivedTwo = backerOld.weiReceivedTwo;
  > |        backerNew.weiReceivedMain = backerOld.weiReceivedMain;
    |        backersIndex.push(_contributorNew);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(443)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdSale':
    |        backerNew.weiReceivedTwo = backerOld.weiReceivedTwo;
    |        backerNew.weiReceivedMain = backerOld.weiReceivedMain;
  > |        backersIndex.push(_contributorNew);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(444)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdSale':
    |        require (backer.weiReceivedOne > 0 || backer.weiReceivedTwo > 0 || backer.weiReceivedMain > 0);   // only continue if there is any contribution
    |
  > |        claimCount++;
    |        uint tokensToSend = (dollarPerEtherRatio * backer.weiReceivedOne) / 48;  // determine amount of tokens to send from first presale
    |        tokensToSend = tokensToSend + (dollarPerEtherRatio * backer.weiReceivedTwo) / 55;  // determine amount of tokens to send from second presale
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(460)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdSale':
    |        backer.claimed = true;
    |        backer.tokensSent = tokensToSend;
  > |        totalClaimed += tokensToSend;
    |
    |        if (!token.transfer(_backer, tokensToSend))
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(468)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdSale':
    |        require (!backer.claimed); // check if tokens have been allocated already
    |        require (!backer.refunded); // check if user has been already refunded
  > |        backer.refunded = true; // mark contributor as refunded.            
    |
    |        uint totalEtherReceived = backer.weiReceivedOne + backer.weiReceivedTwo + backer.weiReceivedMain;
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(528)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdSale':
    |
    |        //adjust amounts received
  > |        ethReceivedPresaleOne -= backer.weiReceivedOne;
    |        ethReceivedPresaleTwo -= backer.weiReceivedTwo;
    |        ethReceiveMainSale -= backer.weiReceivedMain;
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(536)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdSale':
    |        //adjust amounts received
    |        ethReceivedPresaleOne -= backer.weiReceivedOne;
  > |        ethReceivedPresaleTwo -= backer.weiReceivedTwo;
    |        ethReceiveMainSale -= backer.weiReceivedMain;
    |        
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(537)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdSale':
    |        ethReceivedPresaleOne -= backer.weiReceivedOne;
    |        ethReceivedPresaleTwo -= backer.weiReceivedTwo;
  > |        ethReceiveMainSale -= backer.weiReceivedMain;
    |        
    |        totalRefunded += totalEtherReceived;
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(538)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdSale':
    |        ethReceiveMainSale -= backer.weiReceivedMain;
    |        
  > |        totalRefunded += totalEtherReceived;
    |        refundCount ++;
    |        refunded[_contributor] = totalRefunded;      
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(540)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdSale':
    |        
    |        totalRefunded += totalEtherReceived;
  > |        refundCount ++;
    |        refunded[_contributor] = totalRefunded;      
    |
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(541)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdSale':
    |        totalRefunded += totalEtherReceived;
    |        refundCount ++;
  > |        refunded[_contributor] = totalRefunded;      
    |
    |        uint tokensToSend = (dollarPerEtherRatio * backer.weiReceivedOne) / 48;  // determine amount of tokens to send from first presale
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(542)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdSale':
    |
    |        if(dateICOEnded == 0) {
  > |            totalTokensSold -= tokensToSend;
    |        } else {
    |            companyTokensInitial += tokensToSend;
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(549)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdSale':
    |            totalTokensSold -= tokensToSend;
    |        } else {
  > |            companyTokensInitial += tokensToSend;
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(551)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |* functions, this simplifies the implementation of "user permissions".
    |*/
  > |contract Ownable {
    |    address public owner;
    |    
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(29)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |*/
    |contract Ownable {
  > |    address public owner;
    |    
    |    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(30)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    * @param newOwner The address to transfer ownership to.
    |    */
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(54)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(57)

[33mWarning[0m for LockedEther in contract 'Pausable':
    |}
    |
  > |contract Pausable is Ownable {
    |    bool public stopped;
    |
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(62)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |*/
    |contract Ownable {
  > |    address public owner;
    |    
    |    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(30)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |    * @param newOwner The address to transfer ownership to.
    |    */
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(54)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |
    |contract Pausable is Ownable {
  > |    bool public stopped;
    |
    |    modifier stopInEmergency {
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(63)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |
    |    // @notice Called by the owner in emergency, triggers stopped state
  > |    function emergencyStop() external onlyOwner {
    |        stopped = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(80)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |
    |    /// @notice Called by the owner to end of emergency, returns to normal state
  > |    function release() external onlyOwner onlyInEmergency {
    |        stopped = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(85)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(57)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    // @notice Called by the owner in emergency, triggers stopped state
    |    function emergencyStop() external onlyOwner {
  > |        stopped = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(81)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    /// @notice Called by the owner to end of emergency, returns to normal state
    |    function release() external onlyOwner onlyInEmergency {
  > |        stopped = false;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(86)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |
    |
  > |library SafeMath {
    |    function mul(uint a, uint b) pure internal returns(uint) {
    |        uint c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(4)

[33mWarning[0m for LockedEther in contract 'Token':
    |
    |// @notice The token contract
  > |contract Token is ERC20,  Ownable {
    |
    |    using SafeMath for uint;
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(578)

[33mWarning[0m for UnhandledException in contract 'Token':
    |        totalSupply = totalSupply.sub(_value);
    |        totalMigrated = totalMigrated.add(_value);
  > |        MigrationAgent(migrationAgent).migrateFrom(msg.sender, _value);
    |        Migrate(msg.sender, migrationAgent, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(666)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Token':
    |        totalSupply = totalSupply.sub(_value);
    |        totalMigrated = totalMigrated.add(_value);
  > |        MigrationAgent(migrationAgent).migrateFrom(msg.sender, _value);
    |        Migrate(msg.sender, migrationAgent, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(666)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(57)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |    // @notice unlock tokens for trading
    |    function unlock() public onlyAuthorized {
  > |        locked = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(636)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |    // @notice lock tokens in case of problems
    |    function lock() public onlyAuthorized {
  > |        locked = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(641)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |    function setAuthorized(address _authorized) public onlyOwner {
    |
  > |        authorized = _authorized;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(648)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |        require (migrationAgent != 0);
    |        require(_value > 0);
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
    |        totalMigrated = totalMigrated.add(_value);
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(663)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
  > |        totalMigrated = totalMigrated.add(_value);
    |        MigrationAgent(migrationAgent).migrateFrom(msg.sender, _value);
    |        Migrate(msg.sender, migrationAgent, _value);
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(665)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |        require(migrationAgent == 0);
    |        require(msg.sender == migrationMaster);
  > |        migrationAgent = _agent;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(680)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |        require(msg.sender == migrationMaster);
    |        require(_master != 0);
  > |        migrationMaster = _master;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(686)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |    function mint(address _target, uint256 _mintedAmount) public onlyAuthorized() returns(bool) {
    |        assert(totalSupply.add(_mintedAmount) <= 1975e23);  // ensure that max amount ever minted should not exceed 197.5 million tokens with 18 decimals
  > |        balances[_target] = balances[_target].add(_mintedAmount);
    |        totalSupply = totalSupply.add(_mintedAmount);
    |        Transfer(0, _target, _mintedAmount);
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(695)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |        assert(totalSupply.add(_mintedAmount) <= 1975e23);  // ensure that max amount ever minted should not exceed 197.5 million tokens with 18 decimals
    |        balances[_target] = balances[_target].add(_mintedAmount);
  > |        totalSupply = totalSupply.add(_mintedAmount);
    |        Transfer(0, _target, _mintedAmount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(696)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |        require(_to != address(0));
    |        require(balances[msg.sender] >= _value);
  > |        balances[msg.sender] -= _value;
    |        balances[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(709)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |        require(balances[msg.sender] >= _value);
    |        balances[msg.sender] -= _value;
  > |        balances[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(710)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |        require(balances[_from] >= _value); // Check if the sender has enough
    |        require(_value <= allowed[_from][msg.sender]); // Check if allowed is greater or equal
  > |        balances[_from] -= _value; // Subtract from the sender
    |        balances[_to] += _value; // Add the same to the recipient
    |        allowed[_from][msg.sender] -= _value;  // adjust allowed
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(726)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |        require(_value <= allowed[_from][msg.sender]); // Check if allowed is greater or equal
    |        balances[_from] -= _value; // Subtract from the sender
  > |        balances[_to] += _value; // Add the same to the recipient
    |        allowed[_from][msg.sender] -= _value;  // adjust allowed
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(727)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |        balances[_from] -= _value; // Subtract from the sender
    |        balances[_to] += _value; // Add the same to the recipient
  > |        allowed[_from][msg.sender] -= _value;  // adjust allowed
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(728)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |    */
    |    function approve(address _spender, uint _value) public returns(bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(751)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |    */
    |    function increaseApproval (address _spender, uint _addedValue) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(772)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |        uint oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        } else {
    |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(780)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |            allowed[msg.sender][_spender] = 0;
    |        } else {
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(782)

[33mWarning[0m for LockedEther in contract 'Vesting':
    |
    |// @notice contract to control vesting schedule for company and team tokens
  > |contract Vesting is Ownable {
    |
    |    using SafeMath for uint;
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(123)

[33mWarning[0m for UnhandledException in contract 'Vesting':
    |        teamTokensCurrent = teamTokensCurrent.add(_tokensToTransfer);  // update released token amount
    |        
  > |        if (!token.transfer(_recipient, _tokensToTransfer))
    |                revert();
    |
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(174)

[33mWarning[0m for UnhandledException in contract 'Vesting':
    |        companyTokensCurrent = companyTokensCurrent.add(_tokensToTransfer);  // update released token amount
    |
  > |        if (!token.transfer(_recipient, _tokensToTransfer))
    |                revert();
    |        LogCompanyTokensTransferred(_recipient, _tokensToTransfer);
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(197)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Vesting':
    |        teamTokensCurrent = teamTokensCurrent.add(_tokensToTransfer);  // update released token amount
    |        
  > |        if (!token.transfer(_recipient, _tokensToTransfer))
    |                revert();
    |
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(174)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Vesting':
    |        companyTokensCurrent = companyTokensCurrent.add(_tokensToTransfer);  // update released token amount
    |
  > |        if (!token.transfer(_recipient, _tokensToTransfer))
    |                revert();
    |        LogCompanyTokensTransferred(_recipient, _tokensToTransfer);
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(197)

[33mWarning[0m for UnrestrictedWrite in contract 'Vesting':
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(57)

[33mWarning[0m for UnrestrictedWrite in contract 'Vesting':
    |    function setToken(Token _token) public onlyOwner() returns(bool) {
    |        require (token == address(0));  
  > |        token = _token;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(145)

[33mWarning[0m for UnrestrictedWrite in contract 'Vesting':
    |    // @notice set the product completion date for release of dev tokens
    |    function setProductCompletionDate() external onlyOwner() {
  > |        dateProductCompleted = now;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(151)

[33mWarning[0m for UnrestrictedWrite in contract 'Vesting':
    |            require(teamTokensCurrent.add(_tokensToTransfer) <= teamTokensInitial);
    |
  > |        teamTokensCurrent = teamTokensCurrent.add(_tokensToTransfer);  // update released token amount
    |        
    |        if (!token.transfer(_recipient, _tokensToTransfer))
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(172)

[33mWarning[0m for UnrestrictedWrite in contract 'Vesting':
    |            require(companyTokensCurrent.add(_tokensToTransfer) <= companyTokensInitial);
    |
  > |        companyTokensCurrent = companyTokensCurrent.add(_tokensToTransfer);  // update released token amount
    |
    |        if (!token.transfer(_recipient, _tokensToTransfer))
  at /home/jiaming/mavs_srcs/contract@0x018f01b4cb44ed29f4d91e7e28b1c1f4abc8a060.sol(195)


