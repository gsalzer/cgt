Processing contract: /home/jiaming/mavs_srcs/contract@0xc8c6ce4649cfd7fda4f0745724df737a5e314e60.sol:Lottery
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc8c6ce4649cfd7fda4f0745724df737a5e314e60.sol:Proxy
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc8c6ce4649cfd7fda4f0745724df737a5e314e60.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'Proxy':
    |        contribution = contribution.add(msg.value);
    |        lottery.doInvest(msg.sender, msg.value, newReferrer);
  > |        address(lottery).transfer(msg.value);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xc8c6ce4649cfd7fda4f0745724df737a5e314e60.sol(70)

[33mWarning[0m for LockedEther in contract 'Proxy':
    |}
    |
  > |contract Proxy {
    |    using SafeMath for uint256;
    |    uint256 public contribution = 0;
  at /home/jiaming/mavs_srcs/contract@0xc8c6ce4649cfd7fda4f0745724df737a5e314e60.sol(49)

[33mWarning[0m for UnhandledException in contract 'Proxy':
    |        if(msg.value == 0) {
    |            // Dividends
  > |            lottery.withdrawDividends(msg.sender);
    |            return;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xc8c6ce4649cfd7fda4f0745724df737a5e314e60.sol(62)

[33mWarning[0m for UnhandledException in contract 'Proxy':
    |        // Deposit
    |        contribution = contribution.add(msg.value);
  > |        lottery.doInvest(msg.sender, msg.value, newReferrer);
    |        address(lottery).transfer(msg.value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc8c6ce4649cfd7fda4f0745724df737a5e314e60.sol(69)

[33mWarning[0m for UnhandledException in contract 'Proxy':
    |        contribution = contribution.add(msg.value);
    |        lottery.doInvest(msg.sender, msg.value, newReferrer);
  > |        address(lottery).transfer(msg.value);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xc8c6ce4649cfd7fda4f0745724df737a5e314e60.sol(70)

[33mWarning[0m for UnhandledException in contract 'Proxy':
    |    
    |    function resetContribution() external {
  > |        require(msg.sender == lottery.owner());
    |        contribution = 0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc8c6ce4649cfd7fda4f0745724df737a5e314e60.sol(81)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Proxy':
    |        if(msg.value == 0) {
    |            // Dividends
  > |            lottery.withdrawDividends(msg.sender);
    |            return;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xc8c6ce4649cfd7fda4f0745724df737a5e314e60.sol(62)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Proxy':
    |        // Deposit
    |        contribution = contribution.add(msg.value);
  > |        lottery.doInvest(msg.sender, msg.value, newReferrer);
    |        address(lottery).transfer(msg.value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc8c6ce4649cfd7fda4f0745724df737a5e314e60.sol(69)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Proxy':
    |    
    |    function resetContribution() external {
  > |        require(msg.sender == lottery.owner());
    |        contribution = 0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc8c6ce4649cfd7fda4f0745724df737a5e314e60.sol(81)

[31mViolation[0m for UnrestrictedWrite in contract 'Proxy':
    |        address newReferrer = _bytesToAddress(msg.data);
    |        // Deposit
  > |        contribution = contribution.add(msg.value);
    |        lottery.doInvest(msg.sender, msg.value, newReferrer);
    |        address(lottery).transfer(msg.value);
  at /home/jiaming/mavs_srcs/contract@0xc8c6ce4649cfd7fda4f0745724df737a5e314e60.sol(68)

[33mWarning[0m for UnrestrictedWrite in contract 'Proxy':
    |    function resetContribution() external {
    |        require(msg.sender == lottery.owner());
  > |        contribution = 0;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xc8c6ce4649cfd7fda4f0745724df737a5e314e60.sol(82)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.24;
    |
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xc8c6ce4649cfd7fda4f0745724df737a5e314e60.sol(3)


