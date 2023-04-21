Processing contract: /home/jiaming/mavs_srcs/contract@0xcfd2047eb61412e9b8de511dc2087e07003829ee.sol:FifteenPlus
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for DAOConstantGas in contract 'FifteenPlus':
    |    function() external payable {
    |        if((now-prtime[owner]) >= 86400){
  > |            owner.transfer(ths.balance / 100);
    |            prtime[owner] = now;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xcfd2047eb61412e9b8de511dc2087e07003829ee.sol(16)

[31mViolation[0m for DAOConstantGas in contract 'FifteenPlus':
    |        if (balance[msg.sender] != 0){
    |            uint256 paymentAmount = balance[msg.sender]*rate[msg.sender]/1000*(now-timestamp[msg.sender])/86400;
  > |            msg.sender.transfer(paymentAmount);
    |            overallPayment[msg.sender]+=paymentAmount;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xcfd2047eb61412e9b8de511dc2087e07003829ee.sol(21)

[33mWarning[0m for LockedEther in contract 'FifteenPlus':
    |pragma solidity ^0.4.24;
  > |contract FifteenPlus {
    |   
    |    address owner;
  at /home/jiaming/mavs_srcs/contract@0xcfd2047eb61412e9b8de511dc2087e07003829ee.sol(2)

[31mViolation[0m for TODAmount in contract 'FifteenPlus':
    |    function() external payable {
    |        if((now-prtime[owner]) >= 86400){
  > |            owner.transfer(ths.balance / 100);
    |            prtime[owner] = now;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xcfd2047eb61412e9b8de511dc2087e07003829ee.sol(16)

[33mWarning[0m for TODReceiver in contract 'FifteenPlus':
    |        if (balance[msg.sender] != 0){
    |            uint256 paymentAmount = balance[msg.sender]*rate[msg.sender]/1000*(now-timestamp[msg.sender])/86400;
  > |            msg.sender.transfer(paymentAmount);
    |            overallPayment[msg.sender]+=paymentAmount;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xcfd2047eb61412e9b8de511dc2087e07003829ee.sol(21)

[33mWarning[0m for UnhandledException in contract 'FifteenPlus':
    |    function() external payable {
    |        if((now-prtime[owner]) >= 86400){
  > |            owner.transfer(ths.balance / 100);
    |            prtime[owner] = now;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xcfd2047eb61412e9b8de511dc2087e07003829ee.sol(16)

[33mWarning[0m for UnhandledException in contract 'FifteenPlus':
    |        if (balance[msg.sender] != 0){
    |            uint256 paymentAmount = balance[msg.sender]*rate[msg.sender]/1000*(now-timestamp[msg.sender])/86400;
  > |            msg.sender.transfer(paymentAmount);
    |            overallPayment[msg.sender]+=paymentAmount;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xcfd2047eb61412e9b8de511dc2087e07003829ee.sol(21)

[31mViolation[0m for UnrestrictedWrite in contract 'FifteenPlus':
    |        if((now-prtime[owner]) >= 86400){
    |            owner.transfer(ths.balance / 100);
  > |            prtime[owner] = now;
    |        }
    |        if (balance[msg.sender] != 0){
  at /home/jiaming/mavs_srcs/contract@0xcfd2047eb61412e9b8de511dc2087e07003829ee.sol(17)

[33mWarning[0m for UnrestrictedWrite in contract 'FifteenPlus':
    |            uint256 paymentAmount = balance[msg.sender]*rate[msg.sender]/1000*(now-timestamp[msg.sender])/86400;
    |            msg.sender.transfer(paymentAmount);
  > |            overallPayment[msg.sender]+=paymentAmount;
    |        }
    |        timestamp[msg.sender] = now;
  at /home/jiaming/mavs_srcs/contract@0xcfd2047eb61412e9b8de511dc2087e07003829ee.sol(22)

[33mWarning[0m for UnrestrictedWrite in contract 'FifteenPlus':
    |            overallPayment[msg.sender]+=paymentAmount;
    |        }
  > |        timestamp[msg.sender] = now;
    |        balance[msg.sender] += msg.value;
    |        
  at /home/jiaming/mavs_srcs/contract@0xcfd2047eb61412e9b8de511dc2087e07003829ee.sol(24)

[33mWarning[0m for UnrestrictedWrite in contract 'FifteenPlus':
    |        }
    |        timestamp[msg.sender] = now;
  > |        balance[msg.sender] += msg.value;
    |        
    |        if(balance[msg.sender]>overallPayment[msg.sender])
  at /home/jiaming/mavs_srcs/contract@0xcfd2047eb61412e9b8de511dc2087e07003829ee.sol(25)

[33mWarning[0m for UnrestrictedWrite in contract 'FifteenPlus':
    |        
    |        if(balance[msg.sender]>overallPayment[msg.sender])
  > |            rate[msg.sender]=150;
    |        else
    |            rate[msg.sender]=15;
  at /home/jiaming/mavs_srcs/contract@0xcfd2047eb61412e9b8de511dc2087e07003829ee.sol(28)

[33mWarning[0m for UnrestrictedWrite in contract 'FifteenPlus':
    |            rate[msg.sender]=150;
    |        else
  > |            rate[msg.sender]=15;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xcfd2047eb61412e9b8de511dc2087e07003829ee.sol(30)


