Processing contract: /home/jiaming/mavs_srcs/contract@0x842d6da3097b5efde5a81535144f947ab482b6ee.sol:WhoTheEth
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'WhoTheEth':
    |        uint value = bank[msg.sender];
    |        bank[msg.sender] = 0;
  > |        msg.sender.transfer(value);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x842d6da3097b5efde5a81535144f947ab482b6ee.sol(27)

[33mWarning[0m for LockedEther in contract 'WhoTheEth':
    |
    |
  > |contract WhoTheEth {
    |    
    |    address owner;
  at /home/jiaming/mavs_srcs/contract@0x842d6da3097b5efde5a81535144f947ab482b6ee.sol(4)

[33mWarning[0m for TODReceiver in contract 'WhoTheEth':
    |        uint value = bank[msg.sender];
    |        bank[msg.sender] = 0;
  > |        msg.sender.transfer(value);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x842d6da3097b5efde5a81535144f947ab482b6ee.sol(27)

[33mWarning[0m for UnhandledException in contract 'WhoTheEth':
    |        uint value = bank[msg.sender];
    |        bank[msg.sender] = 0;
  > |        msg.sender.transfer(value);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x842d6da3097b5efde5a81535144f947ab482b6ee.sol(27)

[31mViolation[0m for UnrestrictedWrite in contract 'WhoTheEth':
    |    function setName(string newName) payable public {
    |        require(msg.value >= 1 finney || numberOfNames < 500);
  > |        numberOfNames++;
    |        names[msg.sender] = newName;
    |        bank[owner] += msg.value;
  at /home/jiaming/mavs_srcs/contract@0x842d6da3097b5efde5a81535144f947ab482b6ee.sol(32)

[31mViolation[0m for UnrestrictedWrite in contract 'WhoTheEth':
    |        numberOfNames++;
    |        names[msg.sender] = newName;
  > |        bank[owner] += msg.value;
    |        AddedName(msg.sender, newName, now, owner, msg.value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x842d6da3097b5efde5a81535144f947ab482b6ee.sol(34)

[31mViolation[0m for UnrestrictedWrite in contract 'WhoTheEth':
    |        numberOfNames++;
    |        names[msg.sender] = newName;
  > |        bank[owner] += msg.value / 10;
    |        bank[ref] += msg.value - (msg.value / 10);
    |        AddedName(msg.sender, newName, now, ref, msg.value);
  at /home/jiaming/mavs_srcs/contract@0x842d6da3097b5efde5a81535144f947ab482b6ee.sol(44)

[31mViolation[0m for UnrestrictedWrite in contract 'WhoTheEth':
    |        names[msg.sender] = newName;
    |        bank[owner] += msg.value / 10;
  > |        bank[ref] += msg.value - (msg.value / 10);
    |        AddedName(msg.sender, newName, now, ref, msg.value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x842d6da3097b5efde5a81535144f947ab482b6ee.sol(45)

[33mWarning[0m for UnrestrictedWrite in contract 'WhoTheEth':
    |
    |
  > |contract WhoTheEth {
    |    
    |    address owner;
  at /home/jiaming/mavs_srcs/contract@0x842d6da3097b5efde5a81535144f947ab482b6ee.sol(4)

[33mWarning[0m for UnrestrictedWrite in contract 'WhoTheEth':
    |        require (bank[msg.sender] > 0);
    |        uint value = bank[msg.sender];
  > |        bank[msg.sender] = 0;
    |        msg.sender.transfer(value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x842d6da3097b5efde5a81535144f947ab482b6ee.sol(26)

[33mWarning[0m for UnrestrictedWrite in contract 'WhoTheEth':
    |        require(msg.value >= 1 finney || numberOfNames < 500);
    |        require(msg.sender != ref);
  > |        numberOfNames++;
    |        names[msg.sender] = newName;
    |        bank[owner] += msg.value / 10;
  at /home/jiaming/mavs_srcs/contract@0x842d6da3097b5efde5a81535144f947ab482b6ee.sol(42)


