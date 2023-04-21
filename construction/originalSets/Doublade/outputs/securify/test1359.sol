Processing contract: /home/jiaming/mavs_srcs/contract@0x56609c7dcb32cbedf7c5896cbb29b227bf4ec6a1.sol:EFTCrowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x56609c7dcb32cbedf7c5896cbb29b227bf4ec6a1.sol:Token
[33mWarning[0m for DAOConstantGas in contract 'EFTCrowdsale':
    |        tokenReward.transfer(msg.sender, amount);
    |        FundTransfer(msg.sender, amount, true);
  > |        owner.transfer(msg.value);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x56609c7dcb32cbedf7c5896cbb29b227bf4ec6a1.sol(98)

[33mWarning[0m for LockedEther in contract 'EFTCrowdsale':
    |}
    |
  > |contract EFTCrowdsale {
    |    
    |    Token public tokenReward;
  at /home/jiaming/mavs_srcs/contract@0x56609c7dcb32cbedf7c5896cbb29b227bf4ec6a1.sol(7)

[31mViolation[0m for TODReceiver in contract 'EFTCrowdsale':
    |        tokenReward.transfer(msg.sender, amount);
    |        FundTransfer(msg.sender, amount, true);
  > |        owner.transfer(msg.value);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x56609c7dcb32cbedf7c5896cbb29b227bf4ec6a1.sol(98)

[33mWarning[0m for UnhandledException in contract 'EFTCrowdsale':
    |
    |    function sendToken(address _to, uint256 _value) isCreator public {
  > |        tokenReward.transfer(_to, _value);      
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x56609c7dcb32cbedf7c5896cbb29b227bf4ec6a1.sol(57)

[33mWarning[0m for UnhandledException in contract 'EFTCrowdsale':
    |        }
    |
  > |        tokenReward.transfer(msg.sender, amount);
    |        FundTransfer(msg.sender, amount, true);
    |        owner.transfer(msg.value);
  at /home/jiaming/mavs_srcs/contract@0x56609c7dcb32cbedf7c5896cbb29b227bf4ec6a1.sol(96)

[33mWarning[0m for UnhandledException in contract 'EFTCrowdsale':
    |        tokenReward.transfer(msg.sender, amount);
    |        FundTransfer(msg.sender, amount, true);
  > |        owner.transfer(msg.value);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x56609c7dcb32cbedf7c5896cbb29b227bf4ec6a1.sol(98)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EFTCrowdsale':
    |
    |    function sendToken(address _to, uint256 _value) isCreator public {
  > |        tokenReward.transfer(_to, _value);      
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x56609c7dcb32cbedf7c5896cbb29b227bf4ec6a1.sol(57)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EFTCrowdsale':
    |        }
    |
  > |        tokenReward.transfer(msg.sender, amount);
    |        FundTransfer(msg.sender, amount, true);
    |        owner.transfer(msg.value);
  at /home/jiaming/mavs_srcs/contract@0x56609c7dcb32cbedf7c5896cbb29b227bf4ec6a1.sol(96)

[33mWarning[0m for UnrestrictedWrite in contract 'EFTCrowdsale':
    |
    |    function setOwner(address _owner) isCreator public {
  > |        owner = _owner;      
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x56609c7dcb32cbedf7c5896cbb29b227bf4ec6a1.sol(33)

[33mWarning[0m for UnrestrictedWrite in contract 'EFTCrowdsale':
    |
    |    function setCreator(address _creator) isCreator public {
  > |        creator = _creator;      
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x56609c7dcb32cbedf7c5896cbb29b227bf4ec6a1.sol(37)

[33mWarning[0m for UnrestrictedWrite in contract 'EFTCrowdsale':
    |
    |    function setStartDate(uint256 _startDate) isCreator public {
  > |        startDate = _startDate;      
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x56609c7dcb32cbedf7c5896cbb29b227bf4ec6a1.sol(41)

[33mWarning[0m for UnrestrictedWrite in contract 'EFTCrowdsale':
    |
    |    function setEndtDate(uint256 _endDate) isCreator public {
  > |        endDate = _endDate;      
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x56609c7dcb32cbedf7c5896cbb29b227bf4ec6a1.sol(45)

[33mWarning[0m for UnrestrictedWrite in contract 'EFTCrowdsale':
    |    
    |    function setPrice(uint256 _price) isCreator public {
  > |        price = _price;      
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x56609c7dcb32cbedf7c5896cbb29b227bf4ec6a1.sol(49)

[33mWarning[0m for UnrestrictedWrite in contract 'EFTCrowdsale':
    |
    |    function setToken(address _token) isCreator public {
  > |        tokenReward = Token(_token);      
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x56609c7dcb32cbedf7c5896cbb29b227bf4ec6a1.sol(53)


