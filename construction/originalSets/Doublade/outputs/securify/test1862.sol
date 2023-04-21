Processing contract: /home/jiaming/mavs_srcs/contract@0x77070dd59c298d766585de4b5ec2b4549ab28ecc.sol:SealPrivateCrowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x77070dd59c298d766585de4b5ec2b4549ab28ecc.sol:Token
[33mWarning[0m for DAOConstantGas in contract 'SealPrivateCrowdsale':
    |        tokenReward.transfer(msg.sender, amount);
    |        FundTransfer(msg.sender, amount, true);
  > |        owner.transfer(msg.value);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x77070dd59c298d766585de4b5ec2b4549ab28ecc.sol(58)

[33mWarning[0m for LockedEther in contract 'SealPrivateCrowdsale':
    |}
    |
  > |contract SealPrivateCrowdsale {
    |    
    |    Token public tokenReward;
  at /home/jiaming/mavs_srcs/contract@0x77070dd59c298d766585de4b5ec2b4549ab28ecc.sol(7)

[31mViolation[0m for TODReceiver in contract 'SealPrivateCrowdsale':
    |        tokenReward.transfer(msg.sender, amount);
    |        FundTransfer(msg.sender, amount, true);
  > |        owner.transfer(msg.value);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x77070dd59c298d766585de4b5ec2b4549ab28ecc.sol(58)

[33mWarning[0m for UnhandledException in contract 'SealPrivateCrowdsale':
    |
    |    function sendToken(address _to, uint256 _value) isCreator public {
  > |        tokenReward.transfer(_to, _value);      
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x77070dd59c298d766585de4b5ec2b4549ab28ecc.sol(45)

[33mWarning[0m for UnhandledException in contract 'SealPrivateCrowdsale':
    |        require(now > 1517443200);
    |        uint256 amount = msg.value * price;
  > |        tokenReward.transfer(msg.sender, amount);
    |        FundTransfer(msg.sender, amount, true);
    |        owner.transfer(msg.value);
  at /home/jiaming/mavs_srcs/contract@0x77070dd59c298d766585de4b5ec2b4549ab28ecc.sol(56)

[33mWarning[0m for UnhandledException in contract 'SealPrivateCrowdsale':
    |        tokenReward.transfer(msg.sender, amount);
    |        FundTransfer(msg.sender, amount, true);
  > |        owner.transfer(msg.value);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x77070dd59c298d766585de4b5ec2b4549ab28ecc.sol(58)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SealPrivateCrowdsale':
    |
    |    function sendToken(address _to, uint256 _value) isCreator public {
  > |        tokenReward.transfer(_to, _value);      
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x77070dd59c298d766585de4b5ec2b4549ab28ecc.sol(45)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SealPrivateCrowdsale':
    |        require(now > 1517443200);
    |        uint256 amount = msg.value * price;
  > |        tokenReward.transfer(msg.sender, amount);
    |        FundTransfer(msg.sender, amount, true);
    |        owner.transfer(msg.value);
  at /home/jiaming/mavs_srcs/contract@0x77070dd59c298d766585de4b5ec2b4549ab28ecc.sol(56)

[33mWarning[0m for UnrestrictedWrite in contract 'SealPrivateCrowdsale':
    |
    |    function setOwner(address _owner) isCreator public {
  > |        owner = _owner;      
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x77070dd59c298d766585de4b5ec2b4549ab28ecc.sol(29)

[33mWarning[0m for UnrestrictedWrite in contract 'SealPrivateCrowdsale':
    |
    |    function setCreator(address _creator) isCreator public {
  > |        creator = _creator;      
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x77070dd59c298d766585de4b5ec2b4549ab28ecc.sol(33)

[33mWarning[0m for UnrestrictedWrite in contract 'SealPrivateCrowdsale':
    |
    |    function setPrice(uint256 _price) isCreator public {
  > |        price = _price;      
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x77070dd59c298d766585de4b5ec2b4549ab28ecc.sol(37)

[33mWarning[0m for UnrestrictedWrite in contract 'SealPrivateCrowdsale':
    |
    |    function setToken(address _token) isCreator public {
  > |        tokenReward = Token(_token);      
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x77070dd59c298d766585de4b5ec2b4549ab28ecc.sol(41)


