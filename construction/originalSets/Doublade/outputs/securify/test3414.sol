Processing contract: /home/jiaming/mavs_srcs/contract@0xdfb4524b1c1fe01075fab0bb4e16db991d58a3bd.sol:EBAYCrowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xdfb4524b1c1fe01075fab0bb4e16db991d58a3bd.sol:Token
[33mWarning[0m for DAOConstantGas in contract 'EBAYCrowdsale':
    |        tokenReward.transfer(msg.sender, amount);
    |        FundTransfer(msg.sender, amount, true);
  > |        owner.transfer(msg.value);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xdfb4524b1c1fe01075fab0bb4e16db991d58a3bd.sol(88)

[33mWarning[0m for LockedEther in contract 'EBAYCrowdsale':
    |}
    |
  > |contract EBAYCrowdsale {
    |    
    |    Token public tokenReward;
  at /home/jiaming/mavs_srcs/contract@0xdfb4524b1c1fe01075fab0bb4e16db991d58a3bd.sol(7)

[31mViolation[0m for TODReceiver in contract 'EBAYCrowdsale':
    |        tokenReward.transfer(msg.sender, amount);
    |        FundTransfer(msg.sender, amount, true);
  > |        owner.transfer(msg.value);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xdfb4524b1c1fe01075fab0bb4e16db991d58a3bd.sol(88)

[33mWarning[0m for UnhandledException in contract 'EBAYCrowdsale':
    |
    |    function sendToken(address _to, uint256 _value) isCreator public {
  > |        tokenReward.transfer(_to, _value);      
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xdfb4524b1c1fe01075fab0bb4e16db991d58a3bd.sol(57)

[33mWarning[0m for UnhandledException in contract 'EBAYCrowdsale':
    |        }
    |
  > |        tokenReward.transfer(msg.sender, amount);
    |        FundTransfer(msg.sender, amount, true);
    |        owner.transfer(msg.value);
  at /home/jiaming/mavs_srcs/contract@0xdfb4524b1c1fe01075fab0bb4e16db991d58a3bd.sol(86)

[33mWarning[0m for UnhandledException in contract 'EBAYCrowdsale':
    |        tokenReward.transfer(msg.sender, amount);
    |        FundTransfer(msg.sender, amount, true);
  > |        owner.transfer(msg.value);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xdfb4524b1c1fe01075fab0bb4e16db991d58a3bd.sol(88)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EBAYCrowdsale':
    |
    |    function sendToken(address _to, uint256 _value) isCreator public {
  > |        tokenReward.transfer(_to, _value);      
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xdfb4524b1c1fe01075fab0bb4e16db991d58a3bd.sol(57)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EBAYCrowdsale':
    |        }
    |
  > |        tokenReward.transfer(msg.sender, amount);
    |        FundTransfer(msg.sender, amount, true);
    |        owner.transfer(msg.value);
  at /home/jiaming/mavs_srcs/contract@0xdfb4524b1c1fe01075fab0bb4e16db991d58a3bd.sol(86)

[33mWarning[0m for UnrestrictedWrite in contract 'EBAYCrowdsale':
    |
    |    function setOwner(address _owner) isCreator public {
  > |        owner = _owner;      
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xdfb4524b1c1fe01075fab0bb4e16db991d58a3bd.sol(33)

[33mWarning[0m for UnrestrictedWrite in contract 'EBAYCrowdsale':
    |
    |    function setCreator(address _creator) isCreator public {
  > |        creator = _creator;      
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xdfb4524b1c1fe01075fab0bb4e16db991d58a3bd.sol(37)

[33mWarning[0m for UnrestrictedWrite in contract 'EBAYCrowdsale':
    |
    |    function setStartDate(uint256 _startDate) isCreator public {
  > |        startDate = _startDate;      
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xdfb4524b1c1fe01075fab0bb4e16db991d58a3bd.sol(41)

[33mWarning[0m for UnrestrictedWrite in contract 'EBAYCrowdsale':
    |
    |    function setEndtDate(uint256 _endDate) isCreator public {
  > |        endDate = _endDate;      
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xdfb4524b1c1fe01075fab0bb4e16db991d58a3bd.sol(45)

[33mWarning[0m for UnrestrictedWrite in contract 'EBAYCrowdsale':
    |    
    |    function setPrice(uint256 _price) isCreator public {
  > |        price = _price;      
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xdfb4524b1c1fe01075fab0bb4e16db991d58a3bd.sol(49)

[33mWarning[0m for UnrestrictedWrite in contract 'EBAYCrowdsale':
    |
    |    function setToken(address _token) isCreator public {
  > |        tokenReward = Token(_token);      
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xdfb4524b1c1fe01075fab0bb4e16db991d58a3bd.sol(53)


