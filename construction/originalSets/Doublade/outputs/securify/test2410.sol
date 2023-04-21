Processing contract: /home/jiaming/mavs_srcs/contract@0x9c97b8cc86b3c4ceec555b07d30420c25d16989a.sol:HelpMeTokenInterface
Processing contract: /home/jiaming/mavs_srcs/contract@0x9c97b8cc86b3c4ceec555b07d30420c25d16989a.sol:HelpMeTokenPart3
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
  at /home/jiaming/mavs_srcs/contract@0x9c97b8cc86b3c4ceec555b07d30420c25d16989a.sol(33)

[33mWarning[0m for LockedEther in contract 'HelpMeTokenPart3':
    |
    |
  > |contract HelpMeTokenPart3 {
    |    
    |    string public name = ") STUPID GOVERNMENT DESTROYS ME";
  at /home/jiaming/mavs_srcs/contract@0x9c97b8cc86b3c4ceec555b07d30420c25d16989a.sol(10)

[33mWarning[0m for TODReceiver in contract 'HelpMeTokenPart3':
    |        require( msg.value > 0 );
    |        HelpMeTokenInterface token = HelpMeTokenInterface (helpMeTokenPart1);
  > |        token.owner().transfer(msg.value);
    |        token.thankYou( msg.sender );
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9c97b8cc86b3c4ceec555b07d30420c25d16989a.sol(33)

[33mWarning[0m for UnhandledException in contract 'HelpMeTokenPart3':
    |        require( msg.value > 0 );
    |        HelpMeTokenInterface token = HelpMeTokenInterface (helpMeTokenPart1);
  > |        token.owner().transfer(msg.value);
    |        token.thankYou( msg.sender );
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9c97b8cc86b3c4ceec555b07d30420c25d16989a.sol(33)

[33mWarning[0m for UnhandledException in contract 'HelpMeTokenPart3':
    |        HelpMeTokenInterface token = HelpMeTokenInterface (helpMeTokenPart1);
    |        token.owner().transfer(msg.value);
  > |        token.thankYou( msg.sender );
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x9c97b8cc86b3c4ceec555b07d30420c25d16989a.sol(34)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HelpMeTokenPart3':
    |        require( msg.value > 0 );
    |        HelpMeTokenInterface token = HelpMeTokenInterface (helpMeTokenPart1);
  > |        token.owner().transfer(msg.value);
    |        token.thankYou( msg.sender );
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9c97b8cc86b3c4ceec555b07d30420c25d16989a.sol(33)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HelpMeTokenPart3':
    |        HelpMeTokenInterface token = HelpMeTokenInterface (helpMeTokenPart1);
    |        token.owner().transfer(msg.value);
  > |        token.thankYou( msg.sender );
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x9c97b8cc86b3c4ceec555b07d30420c25d16989a.sol(34)

[33mWarning[0m for UnrestrictedWrite in contract 'HelpMeTokenPart3':
    |    function stopIt() public onlyPart1 returns(bool)
    |    {
  > |        stop_it = true;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9c97b8cc86b3c4ceec555b07d30420c25d16989a.sol(39)

[33mWarning[0m for UnrestrictedWrite in contract 'HelpMeTokenPart3':
    |    function thankYou(address _a) public onlyPart1 returns(bool)
    |    {
  > |        thank_you[_a] = true;
    |        emit Transfer(_a, address(this), num * 1 ether);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x9c97b8cc86b3c4ceec555b07d30420c25d16989a.sol(45)


