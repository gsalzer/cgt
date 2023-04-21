Processing contract: /home/jiaming/mavs_srcs/contract@0x152df2cb3868bef5c6ed6b9feb0fb091c9e11a96.sol:ETHLCrowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x152df2cb3868bef5c6ed6b9feb0fb091c9e11a96.sol:Token
[33mWarning[0m for DAOConstantGas in contract 'ETHLCrowdsale':
    |        tokenReward.transfer(msg.sender, amount);
    |        FundTransfer(msg.sender, amount, true);
  > |        owner.transfer(msg.value);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x152df2cb3868bef5c6ed6b9feb0fb091c9e11a96.sol(84)

[33mWarning[0m for LockedEther in contract 'ETHLCrowdsale':
    |}
    |
  > |contract ETHLCrowdsale {
    |    
    |    Token public tokenReward;
  at /home/jiaming/mavs_srcs/contract@0x152df2cb3868bef5c6ed6b9feb0fb091c9e11a96.sol(7)

[31mViolation[0m for TODReceiver in contract 'ETHLCrowdsale':
    |        tokenReward.transfer(msg.sender, amount);
    |        FundTransfer(msg.sender, amount, true);
  > |        owner.transfer(msg.value);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x152df2cb3868bef5c6ed6b9feb0fb091c9e11a96.sol(84)

[33mWarning[0m for UnhandledException in contract 'ETHLCrowdsale':
    |
    |    function sendToken(address _to, uint256 _value) isCreator public {
  > |        tokenReward.transfer(_to, _value);      
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x152df2cb3868bef5c6ed6b9feb0fb091c9e11a96.sol(40)

[33mWarning[0m for UnhandledException in contract 'ETHLCrowdsale':
    |
    |        tokenSold += amount / 1 ether;
  > |        tokenReward.transfer(msg.sender, amount);
    |        FundTransfer(msg.sender, amount, true);
    |        owner.transfer(msg.value);
  at /home/jiaming/mavs_srcs/contract@0x152df2cb3868bef5c6ed6b9feb0fb091c9e11a96.sol(82)

[33mWarning[0m for UnhandledException in contract 'ETHLCrowdsale':
    |        tokenReward.transfer(msg.sender, amount);
    |        FundTransfer(msg.sender, amount, true);
  > |        owner.transfer(msg.value);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x152df2cb3868bef5c6ed6b9feb0fb091c9e11a96.sol(84)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ETHLCrowdsale':
    |
    |    function sendToken(address _to, uint256 _value) isCreator public {
  > |        tokenReward.transfer(_to, _value);      
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x152df2cb3868bef5c6ed6b9feb0fb091c9e11a96.sol(40)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ETHLCrowdsale':
    |
    |        tokenSold += amount / 1 ether;
  > |        tokenReward.transfer(msg.sender, amount);
    |        FundTransfer(msg.sender, amount, true);
    |        owner.transfer(msg.value);
  at /home/jiaming/mavs_srcs/contract@0x152df2cb3868bef5c6ed6b9feb0fb091c9e11a96.sol(82)

[31mViolation[0m for UnrestrictedWrite in contract 'ETHLCrowdsale':
    |        }
    |
  > |        tokenSold += amount / 1 ether;
    |        tokenReward.transfer(msg.sender, amount);
    |        FundTransfer(msg.sender, amount, true);
  at /home/jiaming/mavs_srcs/contract@0x152df2cb3868bef5c6ed6b9feb0fb091c9e11a96.sol(81)

[33mWarning[0m for UnrestrictedWrite in contract 'ETHLCrowdsale':
    |
    |    function setOwner(address _owner) isCreator public {
  > |        owner = _owner;      
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x152df2cb3868bef5c6ed6b9feb0fb091c9e11a96.sol(28)

[33mWarning[0m for UnrestrictedWrite in contract 'ETHLCrowdsale':
    |
    |    function setCreator(address _creator) isCreator public {
  > |        creator = _creator;      
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x152df2cb3868bef5c6ed6b9feb0fb091c9e11a96.sol(32)

[33mWarning[0m for UnrestrictedWrite in contract 'ETHLCrowdsale':
    |
    |    function setToken(address _token) isCreator public {
  > |        tokenReward = Token(_token);      
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x152df2cb3868bef5c6ed6b9feb0fb091c9e11a96.sol(36)


