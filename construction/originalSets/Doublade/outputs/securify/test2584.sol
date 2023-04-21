Processing contract: /home/jiaming/mavs_srcs/contract@0xa949966baa94d94248d13e446b2a301480f6815a.sol:HelpMeTokenInterface
Processing contract: /home/jiaming/mavs_srcs/contract@0xa949966baa94d94248d13e446b2a301480f6815a.sol:HelpMeTokenPart3
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'HelpMeTokenPart3':
    |        require( msg.value > 0 );
    |        HelpMeTokenInterface token = HelpMeTokenInterface (helpMeTokenPart1);
  > |        token.owner().transfer(msg.value);
    |        token.thankYou( msg.sender );
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa949966baa94d94248d13e446b2a301480f6815a.sol(33)

[33mWarning[0m for LockedEther in contract 'HelpMeTokenPart3':
    |
    |
  > |contract HelpMeTokenPart3 {
    |    
    |    string public name = ") STUPID GOVERNMENT DESTROYS ME";
  at /home/jiaming/mavs_srcs/contract@0xa949966baa94d94248d13e446b2a301480f6815a.sol(10)

[33mWarning[0m for TODReceiver in contract 'HelpMeTokenPart3':
    |        require( msg.value > 0 );
    |        HelpMeTokenInterface token = HelpMeTokenInterface (helpMeTokenPart1);
  > |        token.owner().transfer(msg.value);
    |        token.thankYou( msg.sender );
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa949966baa94d94248d13e446b2a301480f6815a.sol(33)

[33mWarning[0m for UnhandledException in contract 'HelpMeTokenPart3':
    |        require( msg.value > 0 );
    |        HelpMeTokenInterface token = HelpMeTokenInterface (helpMeTokenPart1);
  > |        token.owner().transfer(msg.value);
    |        token.thankYou( msg.sender );
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa949966baa94d94248d13e446b2a301480f6815a.sol(33)

[33mWarning[0m for UnhandledException in contract 'HelpMeTokenPart3':
    |        HelpMeTokenInterface token = HelpMeTokenInterface (helpMeTokenPart1);
    |        token.owner().transfer(msg.value);
  > |        token.thankYou( msg.sender );
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xa949966baa94d94248d13e446b2a301480f6815a.sol(34)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HelpMeTokenPart3':
    |        require( msg.value > 0 );
    |        HelpMeTokenInterface token = HelpMeTokenInterface (helpMeTokenPart1);
  > |        token.owner().transfer(msg.value);
    |        token.thankYou( msg.sender );
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa949966baa94d94248d13e446b2a301480f6815a.sol(33)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HelpMeTokenPart3':
    |        HelpMeTokenInterface token = HelpMeTokenInterface (helpMeTokenPart1);
    |        token.owner().transfer(msg.value);
  > |        token.thankYou( msg.sender );
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xa949966baa94d94248d13e446b2a301480f6815a.sol(34)

[33mWarning[0m for UnrestrictedWrite in contract 'HelpMeTokenPart3':
    |    function stopIt() public onlyPart1 returns(bool)
    |    {
  > |        stop_it = true;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa949966baa94d94248d13e446b2a301480f6815a.sol(39)

[33mWarning[0m for UnrestrictedWrite in contract 'HelpMeTokenPart3':
    |    function thankYou(address _a) public onlyPart1 returns(bool)
    |    {
  > |        thank_you[_a] = true;
    |        emit Transfer(_a, address(this), num);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xa949966baa94d94248d13e446b2a301480f6815a.sol(45)


