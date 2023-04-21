Processing contract: /home/jiaming/mavs_srcs/contract@0xf7f6177494b68cd9a777316cfc878f83a80ecfb4.sol:TCNCrowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf7f6177494b68cd9a777316cfc878f83a80ecfb4.sol:Token
[33mWarning[0m for DAOConstantGas in contract 'TCNCrowdsale':
    |        tokenReward.transfer(msg.sender, amount);
    |        FundTransfer(msg.sender, amount, true);
  > |        owner.transfer(msg.value);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xf7f6177494b68cd9a777316cfc878f83a80ecfb4.sol(74)

[33mWarning[0m for LockedEther in contract 'TCNCrowdsale':
    |}
    |
  > |contract TCNCrowdsale {
    |    
    |    Token public tokenReward;
  at /home/jiaming/mavs_srcs/contract@0xf7f6177494b68cd9a777316cfc878f83a80ecfb4.sol(7)

[31mViolation[0m for TODReceiver in contract 'TCNCrowdsale':
    |        tokenReward.transfer(msg.sender, amount);
    |        FundTransfer(msg.sender, amount, true);
  > |        owner.transfer(msg.value);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xf7f6177494b68cd9a777316cfc878f83a80ecfb4.sol(74)

[33mWarning[0m for UnhandledException in contract 'TCNCrowdsale':
    |
    |    function sendToken(address _to, uint256 _value) isCreator public {
  > |        tokenReward.transfer(_to, _value);      
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xf7f6177494b68cd9a777316cfc878f83a80ecfb4.sol(57)

[33mWarning[0m for UnhandledException in contract 'TCNCrowdsale':
    |        }
    |
  > |        tokenReward.transfer(msg.sender, amount);
    |        FundTransfer(msg.sender, amount, true);
    |        owner.transfer(msg.value);
  at /home/jiaming/mavs_srcs/contract@0xf7f6177494b68cd9a777316cfc878f83a80ecfb4.sol(72)

[33mWarning[0m for UnhandledException in contract 'TCNCrowdsale':
    |        tokenReward.transfer(msg.sender, amount);
    |        FundTransfer(msg.sender, amount, true);
  > |        owner.transfer(msg.value);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xf7f6177494b68cd9a777316cfc878f83a80ecfb4.sol(74)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TCNCrowdsale':
    |
    |    function sendToken(address _to, uint256 _value) isCreator public {
  > |        tokenReward.transfer(_to, _value);      
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xf7f6177494b68cd9a777316cfc878f83a80ecfb4.sol(57)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TCNCrowdsale':
    |        }
    |
  > |        tokenReward.transfer(msg.sender, amount);
    |        FundTransfer(msg.sender, amount, true);
    |        owner.transfer(msg.value);
  at /home/jiaming/mavs_srcs/contract@0xf7f6177494b68cd9a777316cfc878f83a80ecfb4.sol(72)

[33mWarning[0m for UnrestrictedWrite in contract 'TCNCrowdsale':
    |
    |    function setOwner(address _owner) isCreator public {
  > |        owner = _owner;      
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xf7f6177494b68cd9a777316cfc878f83a80ecfb4.sol(33)

[33mWarning[0m for UnrestrictedWrite in contract 'TCNCrowdsale':
    |
    |    function setCreator(address _creator) isCreator public {
  > |        creator = _creator;      
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xf7f6177494b68cd9a777316cfc878f83a80ecfb4.sol(37)

[33mWarning[0m for UnrestrictedWrite in contract 'TCNCrowdsale':
    |
    |    function setStartDate(uint256 _startDate) isCreator public {
  > |        startDate = _startDate;      
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xf7f6177494b68cd9a777316cfc878f83a80ecfb4.sol(41)

[33mWarning[0m for UnrestrictedWrite in contract 'TCNCrowdsale':
    |
    |    function setEndtDate(uint256 _endDate) isCreator public {
  > |        endDate = _endDate;      
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xf7f6177494b68cd9a777316cfc878f83a80ecfb4.sol(45)

[33mWarning[0m for UnrestrictedWrite in contract 'TCNCrowdsale':
    |
    |    function setPrice(uint256 _price) isCreator public {
  > |        price = _price;      
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xf7f6177494b68cd9a777316cfc878f83a80ecfb4.sol(49)

[33mWarning[0m for UnrestrictedWrite in contract 'TCNCrowdsale':
    |
    |    function setToken(address _token) isCreator public {
  > |        tokenReward = Token(_token);      
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xf7f6177494b68cd9a777316cfc878f83a80ecfb4.sol(53)


