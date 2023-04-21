Processing contract: /home/jiaming/mavs_srcs/contract@0x46b6434711a2dfab29a7069844968752db387ddc.sol:DiceRoll
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x46b6434711a2dfab29a7069844968752db387ddc.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for DAOConstantGas in contract 'DiceRoll':
    |    function ownerTransferEther(address sendTo, uint256 amount) public onlyOwner{	
    |        contractBalance = safeSub(contractBalance, amount);
  > |        sendTo.transfer(amount);
    |        setMaxProfit();
    |        emit LogOwnerTransfer(sendTo, amount);
  at /home/jiaming/mavs_srcs/contract@0x46b6434711a2dfab29a7069844968752db387ddc.sol(280)

[33mWarning[0m for DAOConstantGas in contract 'DiceRoll':
    |            }
    |            
  > |            msg.sender.transfer(payout);
    |            return;
    |        }else{
  at /home/jiaming/mavs_srcs/contract@0x46b6434711a2dfab29a7069844968752db387ddc.sol(132)

[33mWarning[0m for DAOConstantGas in contract 'DiceRoll':
    |            contractBalance = safeAdd(contractBalance, (msg.value-1));                                                      
    |            setMaxProfit();
  > |            msg.sender.transfer(1);
    |            return;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x46b6434711a2dfab29a7069844968752db387ddc.sol(138)

[33mWarning[0m for DAOConstantGas in contract 'DiceRoll':
    |            }
    |            
  > |            msg.sender.transfer(payout);  
    |            return;
    |        }else{
  at /home/jiaming/mavs_srcs/contract@0x46b6434711a2dfab29a7069844968752db387ddc.sol(166)

[33mWarning[0m for DAOConstantGas in contract 'DiceRoll':
    |            contractBalance = safeAdd(contractBalance, (msg.value-1));
    |            setMaxProfit();
  > |            msg.sender.transfer(1);
    |            return;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x46b6434711a2dfab29a7069844968752db387ddc.sol(172)

[33mWarning[0m for DAOConstantGas in contract 'DiceRoll':
    |        require(amount < contractBalance);
    |        contractBalance = safeSub(contractBalance, amount);
  > |        inviter.transfer(amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x46b6434711a2dfab29a7069844968752db387ddc.sol(180)

[33mWarning[0m for DAOConstantGas in contract 'DiceRoll':
    |        emit SendJackpotSuccesss(winner, amount, JackpotPeriods);
    |        jackpotBlance = safeSub(jackpotBlance, amount);
  > |        winner.transfer(amount);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x46b6434711a2dfab29a7069844968752db387ddc.sol(211)

[33mWarning[0m for LockedEther in contract 'DiceRoll':
    |}
    |
  > |contract DiceRoll is SafeMath {
    |
    |    address public owner;
  at /home/jiaming/mavs_srcs/contract@0x46b6434711a2dfab29a7069844968752db387ddc.sol(22)

[33mWarning[0m for TODAmount in contract 'DiceRoll':
    |            contractBalance = safeAdd(contractBalance, (msg.value-1));                                                      
    |            setMaxProfit();
  > |            msg.sender.transfer(1);
    |            return;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x46b6434711a2dfab29a7069844968752db387ddc.sol(138)

[33mWarning[0m for TODAmount in contract 'DiceRoll':
    |            contractBalance = safeAdd(contractBalance, (msg.value-1));
    |            setMaxProfit();
  > |            msg.sender.transfer(1);
    |            return;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x46b6434711a2dfab29a7069844968752db387ddc.sol(172)

[33mWarning[0m for TODAmount in contract 'DiceRoll':
    |            }
    |            
  > |            msg.sender.transfer(payout);
    |            return;
    |        }else{
  at /home/jiaming/mavs_srcs/contract@0x46b6434711a2dfab29a7069844968752db387ddc.sol(132)

[33mWarning[0m for TODAmount in contract 'DiceRoll':
    |            }
    |            
  > |            msg.sender.transfer(payout);  
    |            return;
    |        }else{
  at /home/jiaming/mavs_srcs/contract@0x46b6434711a2dfab29a7069844968752db387ddc.sol(166)

[33mWarning[0m for TODAmount in contract 'DiceRoll':
    |        require(amount < contractBalance);
    |        contractBalance = safeSub(contractBalance, amount);
  > |        inviter.transfer(amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x46b6434711a2dfab29a7069844968752db387ddc.sol(180)

[33mWarning[0m for TODAmount in contract 'DiceRoll':
    |        emit SendJackpotSuccesss(winner, amount, JackpotPeriods);
    |        jackpotBlance = safeSub(jackpotBlance, amount);
  > |        winner.transfer(amount);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x46b6434711a2dfab29a7069844968752db387ddc.sol(211)

[33mWarning[0m for TODAmount in contract 'DiceRoll':
    |    function ownerTransferEther(address sendTo, uint256 amount) public onlyOwner{	
    |        contractBalance = safeSub(contractBalance, amount);
  > |        sendTo.transfer(amount);
    |        setMaxProfit();
    |        emit LogOwnerTransfer(sendTo, amount);
  at /home/jiaming/mavs_srcs/contract@0x46b6434711a2dfab29a7069844968752db387ddc.sol(280)

[33mWarning[0m for TODReceiver in contract 'DiceRoll':
    |            }
    |            
  > |            msg.sender.transfer(payout);
    |            return;
    |        }else{
  at /home/jiaming/mavs_srcs/contract@0x46b6434711a2dfab29a7069844968752db387ddc.sol(132)

[33mWarning[0m for TODReceiver in contract 'DiceRoll':
    |            contractBalance = safeAdd(contractBalance, (msg.value-1));                                                      
    |            setMaxProfit();
  > |            msg.sender.transfer(1);
    |            return;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x46b6434711a2dfab29a7069844968752db387ddc.sol(138)

[33mWarning[0m for TODReceiver in contract 'DiceRoll':
    |            }
    |            
  > |            msg.sender.transfer(payout);  
    |            return;
    |        }else{
  at /home/jiaming/mavs_srcs/contract@0x46b6434711a2dfab29a7069844968752db387ddc.sol(166)

[33mWarning[0m for TODReceiver in contract 'DiceRoll':
    |            contractBalance = safeAdd(contractBalance, (msg.value-1));
    |            setMaxProfit();
  > |            msg.sender.transfer(1);
    |            return;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x46b6434711a2dfab29a7069844968752db387ddc.sol(172)

[33mWarning[0m for TODReceiver in contract 'DiceRoll':
    |        require(amount < contractBalance);
    |        contractBalance = safeSub(contractBalance, amount);
  > |        inviter.transfer(amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x46b6434711a2dfab29a7069844968752db387ddc.sol(180)

[33mWarning[0m for TODReceiver in contract 'DiceRoll':
    |        emit SendJackpotSuccesss(winner, amount, JackpotPeriods);
    |        jackpotBlance = safeSub(jackpotBlance, amount);
  > |        winner.transfer(amount);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x46b6434711a2dfab29a7069844968752db387ddc.sol(211)

[33mWarning[0m for TODReceiver in contract 'DiceRoll':
    |    function ownerTransferEther(address sendTo, uint256 amount) public onlyOwner{	
    |        contractBalance = safeSub(contractBalance, amount);
  > |        sendTo.transfer(amount);
    |        setMaxProfit();
    |        emit LogOwnerTransfer(sendTo, amount);
  at /home/jiaming/mavs_srcs/contract@0x46b6434711a2dfab29a7069844968752db387ddc.sol(280)

[33mWarning[0m for UnhandledException in contract 'DiceRoll':
    |            }
    |            
  > |            msg.sender.transfer(payout);
    |            return;
    |        }else{
  at /home/jiaming/mavs_srcs/contract@0x46b6434711a2dfab29a7069844968752db387ddc.sol(132)

[33mWarning[0m for UnhandledException in contract 'DiceRoll':
    |            contractBalance = safeAdd(contractBalance, (msg.value-1));                                                      
    |            setMaxProfit();
  > |            msg.sender.transfer(1);
    |            return;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x46b6434711a2dfab29a7069844968752db387ddc.sol(138)

[33mWarning[0m for UnhandledException in contract 'DiceRoll':
    |            }
    |            
  > |            msg.sender.transfer(payout);  
    |            return;
    |        }else{
  at /home/jiaming/mavs_srcs/contract@0x46b6434711a2dfab29a7069844968752db387ddc.sol(166)

[33mWarning[0m for UnhandledException in contract 'DiceRoll':
    |            contractBalance = safeAdd(contractBalance, (msg.value-1));
    |            setMaxProfit();
  > |            msg.sender.transfer(1);
    |            return;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x46b6434711a2dfab29a7069844968752db387ddc.sol(172)

[33mWarning[0m for UnhandledException in contract 'DiceRoll':
    |        require(amount < contractBalance);
    |        contractBalance = safeSub(contractBalance, amount);
  > |        inviter.transfer(amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x46b6434711a2dfab29a7069844968752db387ddc.sol(180)

[33mWarning[0m for UnhandledException in contract 'DiceRoll':
    |        emit SendJackpotSuccesss(winner, amount, JackpotPeriods);
    |        jackpotBlance = safeSub(jackpotBlance, amount);
  > |        winner.transfer(amount);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x46b6434711a2dfab29a7069844968752db387ddc.sol(211)

[33mWarning[0m for UnhandledException in contract 'DiceRoll':
    |    function ownerTransferEther(address sendTo, uint256 amount) public onlyOwner{	
    |        contractBalance = safeSub(contractBalance, amount);
  > |        sendTo.transfer(amount);
    |        setMaxProfit();
    |        emit LogOwnerTransfer(sendTo, amount);
  at /home/jiaming/mavs_srcs/contract@0x46b6434711a2dfab29a7069844968752db387ddc.sol(280)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DiceRoll':
    |            }
    |            
  > |            msg.sender.transfer(payout);
    |            return;
    |        }else{
  at /home/jiaming/mavs_srcs/contract@0x46b6434711a2dfab29a7069844968752db387ddc.sol(132)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DiceRoll':
    |            contractBalance = safeAdd(contractBalance, (msg.value-1));                                                      
    |            setMaxProfit();
  > |            msg.sender.transfer(1);
    |            return;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x46b6434711a2dfab29a7069844968752db387ddc.sol(138)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DiceRoll':
    |            }
    |            
  > |            msg.sender.transfer(payout);  
    |            return;
    |        }else{
  at /home/jiaming/mavs_srcs/contract@0x46b6434711a2dfab29a7069844968752db387ddc.sol(166)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DiceRoll':
    |            contractBalance = safeAdd(contractBalance, (msg.value-1));
    |            setMaxProfit();
  > |            msg.sender.transfer(1);
    |            return;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x46b6434711a2dfab29a7069844968752db387ddc.sol(172)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DiceRoll':
    |        require(amount < contractBalance);
    |        contractBalance = safeSub(contractBalance, amount);
  > |        inviter.transfer(amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x46b6434711a2dfab29a7069844968752db387ddc.sol(180)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DiceRoll':
    |        emit SendJackpotSuccesss(winner, amount, JackpotPeriods);
    |        jackpotBlance = safeSub(jackpotBlance, amount);
  > |        winner.transfer(amount);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x46b6434711a2dfab29a7069844968752db387ddc.sol(211)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DiceRoll':
    |    function ownerTransferEther(address sendTo, uint256 amount) public onlyOwner{	
    |        contractBalance = safeSub(contractBalance, amount);
  > |        sendTo.transfer(amount);
    |        setMaxProfit();
    |        emit LogOwnerTransfer(sendTo, amount);
  at /home/jiaming/mavs_srcs/contract@0x46b6434711a2dfab29a7069844968752db387ddc.sol(280)

[31mViolation[0m for UnrestrictedWrite in contract 'DiceRoll':
    |}
    |
  > |contract DiceRoll is SafeMath {
    |
    |    address public owner;
  at /home/jiaming/mavs_srcs/contract@0x46b6434711a2dfab29a7069844968752db387ddc.sol(22)

[31mViolation[0m for UnrestrictedWrite in contract 'DiceRoll':
    |
    |    function playerRoll(uint8 start, uint8 end, address inviter) public payable gameIsActive betIsValid(msg.value, start, end) {
  > |        betId += 1;
    |        uint8 probability = end - start + 1;
    |        playerProfit = ((msg.value * (100 - probability) / probability + msg.value) * (1000 - houseEdge) / 1000) - msg.value;
  at /home/jiaming/mavs_srcs/contract@0x46b6434711a2dfab29a7069844968752db387ddc.sol(111)

[31mViolation[0m for UnrestrictedWrite in contract 'DiceRoll':
    |        betId += 1;
    |        uint8 probability = end - start + 1;
  > |        playerProfit = ((msg.value * (100 - probability) / probability + msg.value) * (1000 - houseEdge) / 1000) - msg.value;
    |        if(playerProfit > maxProfit) playerProfit = maxProfit;
    |        uint8 random = uint8(rand() % 100 + 1);
  at /home/jiaming/mavs_srcs/contract@0x46b6434711a2dfab29a7069844968752db387ddc.sol(113)

[31mViolation[0m for UnrestrictedWrite in contract 'DiceRoll':
    |        uint8 probability = end - start + 1;
    |        playerProfit = ((msg.value * (100 - probability) / probability + msg.value) * (1000 - houseEdge) / 1000) - msg.value;
  > |        if(playerProfit > maxProfit) playerProfit = maxProfit;
    |        uint8 random = uint8(rand() % 100 + 1);
    |        totalWeiWagered += msg.value;
  at /home/jiaming/mavs_srcs/contract@0x46b6434711a2dfab29a7069844968752db387ddc.sol(114)

[31mViolation[0m for UnrestrictedWrite in contract 'DiceRoll':
    |
    |    function oddEven(uint8 oddeven, address inviter) public payable gameIsActive oddEvenBetIsValid(msg.value, oddeven) {
  > |        betId += 1;
    |        uint8 probability = 50;
    |        playerProfit = ((msg.value * (100 - probability) / probability + msg.value) * (1000 - houseEdge) / 1000) - msg.value;
  at /home/jiaming/mavs_srcs/contract@0x46b6434711a2dfab29a7069844968752db387ddc.sol(145)

[31mViolation[0m for UnrestrictedWrite in contract 'DiceRoll':
    |        betId += 1;
    |        uint8 probability = 50;
  > |        playerProfit = ((msg.value * (100 - probability) / probability + msg.value) * (1000 - houseEdge) / 1000) - msg.value;
    |        if(playerProfit > maxProfit) playerProfit = maxProfit;
    |        uint8 random = uint8(rand() % 100 + 1);
  at /home/jiaming/mavs_srcs/contract@0x46b6434711a2dfab29a7069844968752db387ddc.sol(147)

[31mViolation[0m for UnrestrictedWrite in contract 'DiceRoll':
    |        uint8 probability = 50;
    |        playerProfit = ((msg.value * (100 - probability) / probability + msg.value) * (1000 - houseEdge) / 1000) - msg.value;
  > |        if(playerProfit > maxProfit) playerProfit = maxProfit;
    |        uint8 random = uint8(rand() % 100 + 1);
    |        totalWeiWagered += msg.value;
  at /home/jiaming/mavs_srcs/contract@0x46b6434711a2dfab29a7069844968752db387ddc.sol(148)

[33mWarning[0m for UnrestrictedWrite in contract 'DiceRoll':
    |pragma solidity ^0.4.23;
    |
  > |contract SafeMath {
    |    function safeToAdd(uint a, uint b) pure internal returns (bool) {
    |        return (a + b >= a);
  at /home/jiaming/mavs_srcs/contract@0x46b6434711a2dfab29a7069844968752db387ddc.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'DiceRoll':
    |
    |    function() public payable{
  > |        contractBalance = safeAdd(contractBalance, msg.value);
    |        setMaxProfit();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x46b6434711a2dfab29a7069844968752db387ddc.sol(94)

[33mWarning[0m for UnrestrictedWrite in contract 'DiceRoll':
    |        totalWeiWagered += msg.value;
    |        if(start <= random && random <= end){
  > |            totalWeiWon = safeAdd(totalWeiWon, playerProfit);
    |            contractBalance = safeSub(contractBalance, playerProfit);
    |            uint256 payout = safeAdd(playerProfit, msg.value);
  at /home/jiaming/mavs_srcs/contract@0x46b6434711a2dfab29a7069844968752db387ddc.sol(118)

[33mWarning[0m for UnrestrictedWrite in contract 'DiceRoll':
    |        if(start <= random && random <= end){
    |            totalWeiWon = safeAdd(totalWeiWon, playerProfit);
  > |            contractBalance = safeSub(contractBalance, playerProfit);
    |            uint256 payout = safeAdd(playerProfit, msg.value);
    |            setMaxProfit();
  at /home/jiaming/mavs_srcs/contract@0x46b6434711a2dfab29a7069844968752db387ddc.sol(119)

[33mWarning[0m for UnrestrictedWrite in contract 'DiceRoll':
    |        }else{
    |            emit LogResult(betId, msg.sender, random, 0, 0, start, end, 2, msg.value);    
  > |            contractBalance = safeAdd(contractBalance, (msg.value-1));                                                      
    |            setMaxProfit();
    |            msg.sender.transfer(1);
  at /home/jiaming/mavs_srcs/contract@0x46b6434711a2dfab29a7069844968752db387ddc.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'DiceRoll':
    |        totalWeiWagered += msg.value;
    |        if(random % 2 == oddeven){
  > |            totalWeiWon = safeAdd(totalWeiWon, playerProfit);
    |            contractBalance = safeSub(contractBalance, playerProfit);
    |            uint256 payout = safeAdd(playerProfit, msg.value);
  at /home/jiaming/mavs_srcs/contract@0x46b6434711a2dfab29a7069844968752db387ddc.sol(152)

[33mWarning[0m for UnrestrictedWrite in contract 'DiceRoll':
    |        if(random % 2 == oddeven){
    |            totalWeiWon = safeAdd(totalWeiWon, playerProfit);
  > |            contractBalance = safeSub(contractBalance, playerProfit);
    |            uint256 payout = safeAdd(playerProfit, msg.value);
    |            setMaxProfit();
  at /home/jiaming/mavs_srcs/contract@0x46b6434711a2dfab29a7069844968752db387ddc.sol(153)

[33mWarning[0m for UnrestrictedWrite in contract 'DiceRoll':
    |        }else{
    |            emit LogResult(betId, msg.sender, random, 0, 0, 0, 0, oddeven, msg.value); 
  > |            contractBalance = safeAdd(contractBalance, (msg.value-1));
    |            setMaxProfit();
    |            msg.sender.transfer(1);
  at /home/jiaming/mavs_srcs/contract@0x46b6434711a2dfab29a7069844968752db387ddc.sol(170)

[33mWarning[0m for UnrestrictedWrite in contract 'DiceRoll':
    |    function sendProportion(address inviter, uint256 amount) internal {
    |        require(amount < contractBalance);
  > |        contractBalance = safeSub(contractBalance, amount);
    |        inviter.transfer(amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x46b6434711a2dfab29a7069844968752db387ddc.sol(179)

[33mWarning[0m for UnrestrictedWrite in contract 'DiceRoll':
    |        require(increaseAmount < maxProfit);
    |        emit LogJackpot(_betId, msg.sender, increaseAmount);
  > |        jackpotBlance = safeAdd(jackpotBlance, increaseAmount);
    |        contractBalance = safeSub(contractBalance, increaseAmount);
    |        if(msg.value >= minJackpotBet){
  at /home/jiaming/mavs_srcs/contract@0x46b6434711a2dfab29a7069844968752db387ddc.sol(187)

[33mWarning[0m for UnrestrictedWrite in contract 'DiceRoll':
    |        emit LogJackpot(_betId, msg.sender, increaseAmount);
    |        jackpotBlance = safeAdd(jackpotBlance, increaseAmount);
  > |        contractBalance = safeSub(contractBalance, increaseAmount);
    |        if(msg.value >= minJackpotBet){
    |            jackpotPlayer.push(msg.sender);
  at /home/jiaming/mavs_srcs/contract@0x46b6434711a2dfab29a7069844968752db387ddc.sol(188)

[33mWarning[0m for UnrestrictedWrite in contract 'DiceRoll':
    |        contractBalance = safeSub(contractBalance, increaseAmount);
    |        if(msg.value >= minJackpotBet){
  > |            jackpotPlayer.push(msg.sender);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x46b6434711a2dfab29a7069844968752db387ddc.sol(190)

[33mWarning[0m for UnrestrictedWrite in contract 'DiceRoll':
    |        require(jackpotBlance > amount);
    |        emit SendJackpotSuccesss(winner, amount, JackpotPeriods);
  > |        jackpotBlance = safeSub(jackpotBlance, amount);
    |        winner.transfer(amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x46b6434711a2dfab29a7069844968752db387ddc.sol(210)

[33mWarning[0m for UnrestrictedWrite in contract 'DiceRoll':
    |    
    |    function sendValueToJackpot() payable public jackpotAreActive {
  > |        jackpotBlance = safeAdd(jackpotBlance, msg.value);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x46b6434711a2dfab29a7069844968752db387ddc.sol(215)

[33mWarning[0m for UnrestrictedWrite in contract 'DiceRoll':
    |
    |    function setMaxProfit() internal {
  > |        maxProfit = contractBalance * maxProfitAsPercentOfHouse / 1000;  
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x46b6434711a2dfab29a7069844968752db387ddc.sol(229)

[33mWarning[0m for UnrestrictedWrite in contract 'DiceRoll':
    |
    |    function ownerTransferEther(address sendTo, uint256 amount) public onlyOwner{	
  > |        contractBalance = safeSub(contractBalance, amount);
    |        sendTo.transfer(amount);
    |        setMaxProfit();
  at /home/jiaming/mavs_srcs/contract@0x46b6434711a2dfab29a7069844968752db387ddc.sol(279)

[33mWarning[0m for UnrestrictedWrite in contract 'DiceRoll':
    |}
    |
  > |contract DiceRoll is SafeMath {
    |
    |    address public owner;
  at /home/jiaming/mavs_srcs/contract@0x46b6434711a2dfab29a7069844968752db387ddc.sol(22)

[33mWarning[0m for UnrestrictedWrite in contract 'DiceRoll':
    |        if(playerProfit > maxProfit) playerProfit = maxProfit;
    |        uint8 random = uint8(rand() % 100 + 1);
  > |        totalWeiWagered += msg.value;
    |        if(start <= random && random <= end){
    |            totalWeiWon = safeAdd(totalWeiWon, playerProfit);
  at /home/jiaming/mavs_srcs/contract@0x46b6434711a2dfab29a7069844968752db387ddc.sol(116)

[33mWarning[0m for UnrestrictedWrite in contract 'DiceRoll':
    |        if(playerProfit > maxProfit) playerProfit = maxProfit;
    |        uint8 random = uint8(rand() % 100 + 1);
  > |        totalWeiWagered += msg.value;
    |        if(random % 2 == oddeven){
    |            totalWeiWon = safeAdd(totalWeiWon, playerProfit);
  at /home/jiaming/mavs_srcs/contract@0x46b6434711a2dfab29a7069844968752db387ddc.sol(150)

[33mWarning[0m for UnrestrictedWrite in contract 'DiceRoll':
    |        require(tmNow >= nextJackpotTime);
    |        require(jackpotPlayer.length > 0);
  > |        nextJackpotTime = tmNow + 72000;
    |        JackpotPeriods += 1;
    |        uint random = rand() % jackpotPlayer.length;
  at /home/jiaming/mavs_srcs/contract@0x46b6434711a2dfab29a7069844968752db387ddc.sol(198)

[33mWarning[0m for UnrestrictedWrite in contract 'DiceRoll':
    |        require(jackpotPlayer.length > 0);
    |        nextJackpotTime = tmNow + 72000;
  > |        JackpotPeriods += 1;
    |        uint random = rand() % jackpotPlayer.length;
    |        address winner = jackpotPlayer[random - 1];
  at /home/jiaming/mavs_srcs/contract@0x46b6434711a2dfab29a7069844968752db387ddc.sol(199)

[33mWarning[0m for UnrestrictedWrite in contract 'DiceRoll':
    |
    |    function rand() internal returns (uint256) {
  > |        seed = uint256(keccak256(msg.sender, blockhash(block.number - 1), block.coinbase, block.difficulty));
    |        return seed;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x46b6434711a2dfab29a7069844968752db387ddc.sol(224)

[33mWarning[0m for UnrestrictedWrite in contract 'DiceRoll':
    |    function ownerSetHouseEdge(uint16 newHouseEdge) public onlyOwner{
    |        require(newHouseEdge <= 1000);
  > |        houseEdge = newHouseEdge;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x46b6434711a2dfab29a7069844968752db387ddc.sol(234)

[33mWarning[0m for UnrestrictedWrite in contract 'DiceRoll':
    |    function ownerSetMinJackpoBet(uint256 newVal) public onlyOwner{
    |        require(newVal <= 1 ether);
  > |        minJackpotBet = newVal;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x46b6434711a2dfab29a7069844968752db387ddc.sol(239)

[33mWarning[0m for UnrestrictedWrite in contract 'DiceRoll':
    |    function ownerSetMaxProfitAsPercentOfHouse(uint8 newMaxProfitAsPercent) public onlyOwner{
    |        require(newMaxProfitAsPercent <= 1000);
  > |        maxProfitAsPercentOfHouse = newMaxProfitAsPercent;
    |        setMaxProfit();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x46b6434711a2dfab29a7069844968752db387ddc.sol(244)

[33mWarning[0m for UnrestrictedWrite in contract 'DiceRoll':
    |
    |    function ownerSetMinBet(uint256 newMinimumBet) public onlyOwner{
  > |        minBet = newMinimumBet;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x46b6434711a2dfab29a7069844968752db387ddc.sol(249)

[33mWarning[0m for UnrestrictedWrite in contract 'DiceRoll':
    |
    |    function ownerSetMaxBet(uint256 newMaxBet) public onlyOwner{
  > |        maxBet = newMaxBet;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x46b6434711a2dfab29a7069844968752db387ddc.sol(253)

[33mWarning[0m for UnrestrictedWrite in contract 'DiceRoll':
    |    function ownerSetJackpotOfHouseEdge(uint16 newProportion) public onlyOwner{
    |        require(newProportion < 1000);
  > |        jackpotOfHouseEdge = newProportion;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x46b6434711a2dfab29a7069844968752db387ddc.sol(258)

[33mWarning[0m for UnrestrictedWrite in contract 'DiceRoll':
    |    function ownerSetRecommendProportion(uint16 newRecommendProportion) public onlyOwner{
    |        require(newRecommendProportion < 1000);
  > |        recommendProportion = newRecommendProportion;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x46b6434711a2dfab29a7069844968752db387ddc.sol(263)

[33mWarning[0m for UnrestrictedWrite in contract 'DiceRoll':
    |
    |    function ownerPauseGame(bool newStatus) public onlyOwner{
  > |        gamePaused = newStatus;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x46b6434711a2dfab29a7069844968752db387ddc.sol(267)

[33mWarning[0m for UnrestrictedWrite in contract 'DiceRoll':
    |
    |    function ownerPauseJackpot(bool newStatus) public onlyOwner{
  > |        jackpotPaused = newStatus;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x46b6434711a2dfab29a7069844968752db387ddc.sol(271)

[33mWarning[0m for UnrestrictedWrite in contract 'DiceRoll':
    |
    |    function ownerPauseRecommend(bool newStatus) public onlyOwner{
  > |        recommendPaused = newStatus;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x46b6434711a2dfab29a7069844968752db387ddc.sol(275)

[33mWarning[0m for UnrestrictedWrite in contract 'DiceRoll':
    |
    |    function ownerChangeOwner(address newOwner) public onlyOwner{
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x46b6434711a2dfab29a7069844968752db387ddc.sol(286)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.23;
    |
  > |contract SafeMath {
    |    function safeToAdd(uint a, uint b) pure internal returns (bool) {
    |        return (a + b >= a);
  at /home/jiaming/mavs_srcs/contract@0x46b6434711a2dfab29a7069844968752db387ddc.sol(3)


