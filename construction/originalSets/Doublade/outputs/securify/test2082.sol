Processing contract: /home/jiaming/mavs_srcs/contract@0x87f31ab270ecf848663d64d3ab0998de2088a226.sol:SlotMachine
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'SlotMachine':
    |        pendingWithdrawals[msg.sender] = 0;
    |
  > |        msg.sender.transfer(amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x87f31ab270ecf848663d64d3ab0998de2088a226.sol(69)

[33mWarning[0m for DAOConstantGas in contract 'SlotMachine':
    |
    |    function cashout(uint _amount) onlyOwner public{
  > |        msg.sender.transfer(_amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x87f31ab270ecf848663d64d3ab0998de2088a226.sol(86)

[33mWarning[0m for LockedEther in contract 'SlotMachine':
    |pragma solidity ^0.4.4;
    |
  > |contract SlotMachine {
    |
    |    address public slotMachineFunds;
  at /home/jiaming/mavs_srcs/contract@0x87f31ab270ecf848663d64d3ab0998de2088a226.sol(3)

[33mWarning[0m for TODAmount in contract 'SlotMachine':
    |
    |    function cashout(uint _amount) onlyOwner public{
  > |        msg.sender.transfer(_amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x87f31ab270ecf848663d64d3ab0998de2088a226.sol(86)

[33mWarning[0m for TODReceiver in contract 'SlotMachine':
    |        pendingWithdrawals[msg.sender] = 0;
    |
  > |        msg.sender.transfer(amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x87f31ab270ecf848663d64d3ab0998de2088a226.sol(69)

[33mWarning[0m for TODReceiver in contract 'SlotMachine':
    |
    |    function cashout(uint _amount) onlyOwner public{
  > |        msg.sender.transfer(_amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x87f31ab270ecf848663d64d3ab0998de2088a226.sol(86)

[33mWarning[0m for UnhandledException in contract 'SlotMachine':
    |        pendingWithdrawals[msg.sender] = 0;
    |
  > |        msg.sender.transfer(amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x87f31ab270ecf848663d64d3ab0998de2088a226.sol(69)

[33mWarning[0m for UnhandledException in contract 'SlotMachine':
    |
    |    function cashout(uint _amount) onlyOwner public{
  > |        msg.sender.transfer(_amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x87f31ab270ecf848663d64d3ab0998de2088a226.sol(86)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SlotMachine':
    |
    |    function cashout(uint _amount) onlyOwner public{
  > |        msg.sender.transfer(_amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x87f31ab270ecf848663d64d3ab0998de2088a226.sol(86)

[33mWarning[0m for UnrestrictedWrite in contract 'SlotMachine':
    |        emit Rolled(msg.sender, rand1, rand2, rand3);
    |
  > |        pendingWithdrawals[msg.sender] += result;
    |        
    |    }
  at /home/jiaming/mavs_srcs/contract@0x87f31ab270ecf848663d64d3ab0998de2088a226.sol(36)

[33mWarning[0m for UnrestrictedWrite in contract 'SlotMachine':
    |        uint amount = pendingWithdrawals[msg.sender];
    |
  > |        pendingWithdrawals[msg.sender] = 0;
    |
    |        msg.sender.transfer(amount);
  at /home/jiaming/mavs_srcs/contract@0x87f31ab270ecf848663d64d3ab0998de2088a226.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'SlotMachine':
    |
    |    function setCoinPrice(uint _coinPrice) public onlyOwner {
  > |        coinPrice = _coinPrice;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x87f31ab270ecf848663d64d3ab0998de2088a226.sol(77)


