Processing contract: /home/jiaming/mavs_srcs/contract@0xa235acbb4c265bc49acce88f5b627577967c182b.sol:holdEthereum
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'holdEthereum':
    |        if (value == 0) throw;
    |        holders[msg.sender] = 0;
  > |        msg.sender.transfer(value);
    |        Party(msg.sender, value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa235acbb4c265bc49acce88f5b627577967c182b.sol(19)

[33mWarning[0m for LockedEther in contract 'holdEthereum':
    |pragma solidity ^0.4.11;
  > |contract holdEthereum {
    |    event Hodl(address indexed hodler, uint indexed amount);
    |    event Party(address indexed hodler, uint indexed amount);
  at /home/jiaming/mavs_srcs/contract@0xa235acbb4c265bc49acce88f5b627577967c182b.sol(2)

[33mWarning[0m for MissingInputValidation in contract 'holdEthereum':
    |    }
    |    
  > |    function party() {
    |        if (block.timestamp < partyTime) throw;
    |        uint value = holders[msg.sender];
  at /home/jiaming/mavs_srcs/contract@0xa235acbb4c265bc49acce88f5b627577967c182b.sol(14)

[33mWarning[0m for TODReceiver in contract 'holdEthereum':
    |        if (value == 0) throw;
    |        holders[msg.sender] = 0;
  > |        msg.sender.transfer(value);
    |        Party(msg.sender, value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa235acbb4c265bc49acce88f5b627577967c182b.sol(19)

[33mWarning[0m for UnhandledException in contract 'holdEthereum':
    |        if (value == 0) throw;
    |        holders[msg.sender] = 0;
  > |        msg.sender.transfer(value);
    |        Party(msg.sender, value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa235acbb4c265bc49acce88f5b627577967c182b.sol(19)

[33mWarning[0m for UnrestrictedWrite in contract 'holdEthereum':
    |        uint value = holders[msg.sender];
    |        if (value == 0) throw;
  > |        holders[msg.sender] = 0;
    |        msg.sender.transfer(value);
    |        Party(msg.sender, value);
  at /home/jiaming/mavs_srcs/contract@0xa235acbb4c265bc49acce88f5b627577967c182b.sol(18)


