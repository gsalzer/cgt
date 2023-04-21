Processing contract: /home/jiaming/mavs_srcs/contract@0x16d754b9ede093c5642c5c631fcd0f204ec348f0.sol:AutoSplit
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'AutoSplit':
    |
    |    function () payable {
  > |        a.transfer(msg.value * rate / 100);
    |        b.transfer(msg.value * (100 - rate) / 100);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x16d754b9ede093c5642c5c631fcd0f204ec348f0.sol(17)

[33mWarning[0m for DAOConstantGas in contract 'AutoSplit':
    |    function () payable {
    |        a.transfer(msg.value * rate / 100);
  > |        b.transfer(msg.value * (100 - rate) / 100);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x16d754b9ede093c5642c5c631fcd0f204ec348f0.sol(18)

[33mWarning[0m for DAOConstantGas in contract 'AutoSplit':
    |
    |    function collect() onlyOwner {
  > |        msg.sender.transfer(this.balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x16d754b9ede093c5642c5c631fcd0f204ec348f0.sol(34)

[33mWarning[0m for LockedEther in contract 'AutoSplit':
    |pragma solidity ^0.4.11;
    |
  > |contract AutoSplit {
    |
    |    address public a = 0xDeD5eCC268145e2BeeD2035DA984f134728d2166; // Emploee
  at /home/jiaming/mavs_srcs/contract@0x16d754b9ede093c5642c5c631fcd0f204ec348f0.sol(3)

[31mViolation[0m for TODAmount in contract 'AutoSplit':
    |
    |    function () payable {
  > |        a.transfer(msg.value * rate / 100);
    |        b.transfer(msg.value * (100 - rate) / 100);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x16d754b9ede093c5642c5c631fcd0f204ec348f0.sol(17)

[31mViolation[0m for TODAmount in contract 'AutoSplit':
    |    function () payable {
    |        a.transfer(msg.value * rate / 100);
  > |        b.transfer(msg.value * (100 - rate) / 100);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x16d754b9ede093c5642c5c631fcd0f204ec348f0.sol(18)

[31mViolation[0m for TODAmount in contract 'AutoSplit':
    |
    |    function collect() onlyOwner {
  > |        msg.sender.transfer(this.balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x16d754b9ede093c5642c5c631fcd0f204ec348f0.sol(34)

[31mViolation[0m for TODReceiver in contract 'AutoSplit':
    |
    |    function () payable {
  > |        a.transfer(msg.value * rate / 100);
    |        b.transfer(msg.value * (100 - rate) / 100);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x16d754b9ede093c5642c5c631fcd0f204ec348f0.sol(17)

[31mViolation[0m for TODReceiver in contract 'AutoSplit':
    |    function () payable {
    |        a.transfer(msg.value * rate / 100);
  > |        b.transfer(msg.value * (100 - rate) / 100);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x16d754b9ede093c5642c5c631fcd0f204ec348f0.sol(18)

[33mWarning[0m for TODReceiver in contract 'AutoSplit':
    |
    |    function collect() onlyOwner {
  > |        msg.sender.transfer(this.balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x16d754b9ede093c5642c5c631fcd0f204ec348f0.sol(34)

[33mWarning[0m for UnhandledException in contract 'AutoSplit':
    |
    |    function () payable {
  > |        a.transfer(msg.value * rate / 100);
    |        b.transfer(msg.value * (100 - rate) / 100);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x16d754b9ede093c5642c5c631fcd0f204ec348f0.sol(17)

[33mWarning[0m for UnhandledException in contract 'AutoSplit':
    |    function () payable {
    |        a.transfer(msg.value * rate / 100);
  > |        b.transfer(msg.value * (100 - rate) / 100);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x16d754b9ede093c5642c5c631fcd0f204ec348f0.sol(18)

[33mWarning[0m for UnhandledException in contract 'AutoSplit':
    |
    |    function collect() onlyOwner {
  > |        msg.sender.transfer(this.balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x16d754b9ede093c5642c5c631fcd0f204ec348f0.sol(34)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AutoSplit':
    |
    |    function collect() onlyOwner {
  > |        msg.sender.transfer(this.balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x16d754b9ede093c5642c5c631fcd0f204ec348f0.sol(34)

[33mWarning[0m for UnrestrictedWrite in contract 'AutoSplit':
    |    
    |    function change_a(address new_a) onlyOwner {
  > |        a = new_a;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x16d754b9ede093c5642c5c631fcd0f204ec348f0.sol(22)

[33mWarning[0m for UnrestrictedWrite in contract 'AutoSplit':
    |    
    |    function change_b(address new_b) onlyOwner {
  > |        b = new_b;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x16d754b9ede093c5642c5c631fcd0f204ec348f0.sol(26)

[33mWarning[0m for UnrestrictedWrite in contract 'AutoSplit':
    |    
    |    function change_rate(uint new_rate) onlyOwner {
  > |        rate = new_rate;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x16d754b9ede093c5642c5c631fcd0f204ec348f0.sol(30)


