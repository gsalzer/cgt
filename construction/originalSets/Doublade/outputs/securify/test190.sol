Processing contract: /home/jiaming/mavs_srcs/contract@0x0c8931423583d9c1ff126d424e34656947876649.sol:HelpMeTokenInterface
Processing contract: /home/jiaming/mavs_srcs/contract@0x0c8931423583d9c1ff126d424e34656947876649.sol:HelpMeTokenPart7
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'HelpMeTokenPart7':
    |        require( msg.value > 0 );
    |        HelpMeTokenInterface token = HelpMeTokenInterface (helpMeTokenPart1);
  > |        token.owner().transfer(msg.value);
    |        token.thankYou( msg.sender );
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0c8931423583d9c1ff126d424e34656947876649.sol(33)

[33mWarning[0m for LockedEther in contract 'HelpMeTokenPart7':
    |
    |
  > |contract HelpMeTokenPart7 {
    |    
    |    string public name = ") I HOPE FOR YUOR UNDERSTANDING";
  at /home/jiaming/mavs_srcs/contract@0x0c8931423583d9c1ff126d424e34656947876649.sol(10)

[33mWarning[0m for TODReceiver in contract 'HelpMeTokenPart7':
    |        require( msg.value > 0 );
    |        HelpMeTokenInterface token = HelpMeTokenInterface (helpMeTokenPart1);
  > |        token.owner().transfer(msg.value);
    |        token.thankYou( msg.sender );
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0c8931423583d9c1ff126d424e34656947876649.sol(33)

[33mWarning[0m for UnhandledException in contract 'HelpMeTokenPart7':
    |        require( msg.value > 0 );
    |        HelpMeTokenInterface token = HelpMeTokenInterface (helpMeTokenPart1);
  > |        token.owner().transfer(msg.value);
    |        token.thankYou( msg.sender );
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0c8931423583d9c1ff126d424e34656947876649.sol(33)

[33mWarning[0m for UnhandledException in contract 'HelpMeTokenPart7':
    |        HelpMeTokenInterface token = HelpMeTokenInterface (helpMeTokenPart1);
    |        token.owner().transfer(msg.value);
  > |        token.thankYou( msg.sender );
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x0c8931423583d9c1ff126d424e34656947876649.sol(34)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HelpMeTokenPart7':
    |        require( msg.value > 0 );
    |        HelpMeTokenInterface token = HelpMeTokenInterface (helpMeTokenPart1);
  > |        token.owner().transfer(msg.value);
    |        token.thankYou( msg.sender );
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0c8931423583d9c1ff126d424e34656947876649.sol(33)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HelpMeTokenPart7':
    |        HelpMeTokenInterface token = HelpMeTokenInterface (helpMeTokenPart1);
    |        token.owner().transfer(msg.value);
  > |        token.thankYou( msg.sender );
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x0c8931423583d9c1ff126d424e34656947876649.sol(34)

[33mWarning[0m for UnrestrictedWrite in contract 'HelpMeTokenPart7':
    |    function stopIt() public onlyPart1 returns(bool)
    |    {
  > |        stop_it = true;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0c8931423583d9c1ff126d424e34656947876649.sol(39)

[33mWarning[0m for UnrestrictedWrite in contract 'HelpMeTokenPart7':
    |    function thankYou(address _a) public onlyPart1 returns(bool)
    |    {
  > |        thank_you[_a] = true;
    |        emit Transfer(_a, address(this), num * 1 ether);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x0c8931423583d9c1ff126d424e34656947876649.sol(45)


