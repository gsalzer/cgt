Processing contract: /home/jiaming/mavs_srcs/contract@0xd73f1bcb7143776cadc3faf6cdd089267aca184c.sol:SealCrowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd73f1bcb7143776cadc3faf6cdd089267aca184c.sol:Token
[33mWarning[0m for DAOConstantGas in contract 'SealCrowdsale':
    |        tokenReward.transfer(msg.sender, amount);
    |        FundTransfer(msg.sender, amount, true);
  > |        owner.transfer(msg.value);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xd73f1bcb7143776cadc3faf6cdd089267aca184c.sol(91)

[33mWarning[0m for LockedEther in contract 'SealCrowdsale':
    |}
    |
  > |contract SealCrowdsale {
    |    
    |    Token public tokenReward;
  at /home/jiaming/mavs_srcs/contract@0xd73f1bcb7143776cadc3faf6cdd089267aca184c.sol(7)

[31mViolation[0m for TODReceiver in contract 'SealCrowdsale':
    |        tokenReward.transfer(msg.sender, amount);
    |        FundTransfer(msg.sender, amount, true);
  > |        owner.transfer(msg.value);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xd73f1bcb7143776cadc3faf6cdd089267aca184c.sol(91)

[33mWarning[0m for UnhandledException in contract 'SealCrowdsale':
    |
    |    function sendToken(address _to, uint256 _value) isCreator public {
  > |        tokenReward.transfer(_to, _value);      
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xd73f1bcb7143776cadc3faf6cdd089267aca184c.sol(46)

[33mWarning[0m for UnhandledException in contract 'SealCrowdsale':
    |
    |        tokenSold += amount / 1 ether;
  > |        tokenReward.transfer(msg.sender, amount);
    |        FundTransfer(msg.sender, amount, true);
    |        owner.transfer(msg.value);
  at /home/jiaming/mavs_srcs/contract@0xd73f1bcb7143776cadc3faf6cdd089267aca184c.sol(89)

[33mWarning[0m for UnhandledException in contract 'SealCrowdsale':
    |        tokenReward.transfer(msg.sender, amount);
    |        FundTransfer(msg.sender, amount, true);
  > |        owner.transfer(msg.value);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xd73f1bcb7143776cadc3faf6cdd089267aca184c.sol(91)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SealCrowdsale':
    |
    |    function sendToken(address _to, uint256 _value) isCreator public {
  > |        tokenReward.transfer(_to, _value);      
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xd73f1bcb7143776cadc3faf6cdd089267aca184c.sol(46)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SealCrowdsale':
    |
    |        tokenSold += amount / 1 ether;
  > |        tokenReward.transfer(msg.sender, amount);
    |        FundTransfer(msg.sender, amount, true);
    |        owner.transfer(msg.value);
  at /home/jiaming/mavs_srcs/contract@0xd73f1bcb7143776cadc3faf6cdd089267aca184c.sol(89)

[31mViolation[0m for UnrestrictedWrite in contract 'SealCrowdsale':
    |        }
    |
  > |        tokenSold += amount / 1 ether;
    |        tokenReward.transfer(msg.sender, amount);
    |        FundTransfer(msg.sender, amount, true);
  at /home/jiaming/mavs_srcs/contract@0xd73f1bcb7143776cadc3faf6cdd089267aca184c.sol(88)

[33mWarning[0m for UnrestrictedWrite in contract 'SealCrowdsale':
    |
    |    function setOwner(address _owner) isCreator public {
  > |        owner = _owner;      
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xd73f1bcb7143776cadc3faf6cdd089267aca184c.sol(30)

[33mWarning[0m for UnrestrictedWrite in contract 'SealCrowdsale':
    |
    |    function setCreator(address _creator) isCreator public {
  > |        creator = _creator;      
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xd73f1bcb7143776cadc3faf6cdd089267aca184c.sol(34)

[33mWarning[0m for UnrestrictedWrite in contract 'SealCrowdsale':
    |
    |    function setPrice(uint256 _price) isCreator public {
  > |        price = _price;      
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xd73f1bcb7143776cadc3faf6cdd089267aca184c.sol(38)

[33mWarning[0m for UnrestrictedWrite in contract 'SealCrowdsale':
    |
    |    function setToken(address _token) isCreator public {
  > |        tokenReward = Token(_token);      
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xd73f1bcb7143776cadc3faf6cdd089267aca184c.sol(42)


