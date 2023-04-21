Processing contract: /home/jiaming/mavs_srcs/contract@0x8df6eba1a0225509c16d59f69f4495b6a1e7b0a1.sol:HelpMeTokenInterface
Processing contract: /home/jiaming/mavs_srcs/contract@0x8df6eba1a0225509c16d59f69f4495b6a1e7b0a1.sol:HelpMeTokenPart2
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'HelpMeTokenPart2':
    |        require( msg.value > 0 );
    |        HelpMeTokenInterface token = HelpMeTokenInterface (helpMeTokenPart1);
  > |        token.owner().transfer(msg.value);
    |        token.thankYou( msg.sender );
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8df6eba1a0225509c16d59f69f4495b6a1e7b0a1.sol(33)

[33mWarning[0m for LockedEther in contract 'HelpMeTokenPart2':
    |
    |
  > |contract HelpMeTokenPart2 {
    |    
    |    string public name = ") I WAS FUCKEDUP LIVING IN RUSSIA";
  at /home/jiaming/mavs_srcs/contract@0x8df6eba1a0225509c16d59f69f4495b6a1e7b0a1.sol(10)

[33mWarning[0m for TODReceiver in contract 'HelpMeTokenPart2':
    |        require( msg.value > 0 );
    |        HelpMeTokenInterface token = HelpMeTokenInterface (helpMeTokenPart1);
  > |        token.owner().transfer(msg.value);
    |        token.thankYou( msg.sender );
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8df6eba1a0225509c16d59f69f4495b6a1e7b0a1.sol(33)

[33mWarning[0m for UnhandledException in contract 'HelpMeTokenPart2':
    |        require( msg.value > 0 );
    |        HelpMeTokenInterface token = HelpMeTokenInterface (helpMeTokenPart1);
  > |        token.owner().transfer(msg.value);
    |        token.thankYou( msg.sender );
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8df6eba1a0225509c16d59f69f4495b6a1e7b0a1.sol(33)

[33mWarning[0m for UnhandledException in contract 'HelpMeTokenPart2':
    |        HelpMeTokenInterface token = HelpMeTokenInterface (helpMeTokenPart1);
    |        token.owner().transfer(msg.value);
  > |        token.thankYou( msg.sender );
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x8df6eba1a0225509c16d59f69f4495b6a1e7b0a1.sol(34)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HelpMeTokenPart2':
    |        require( msg.value > 0 );
    |        HelpMeTokenInterface token = HelpMeTokenInterface (helpMeTokenPart1);
  > |        token.owner().transfer(msg.value);
    |        token.thankYou( msg.sender );
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8df6eba1a0225509c16d59f69f4495b6a1e7b0a1.sol(33)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HelpMeTokenPart2':
    |        HelpMeTokenInterface token = HelpMeTokenInterface (helpMeTokenPart1);
    |        token.owner().transfer(msg.value);
  > |        token.thankYou( msg.sender );
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x8df6eba1a0225509c16d59f69f4495b6a1e7b0a1.sol(34)

[33mWarning[0m for UnrestrictedWrite in contract 'HelpMeTokenPart2':
    |    function stopIt() public onlyPart1 returns(bool)
    |    {
  > |        stop_it = true;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8df6eba1a0225509c16d59f69f4495b6a1e7b0a1.sol(39)

[33mWarning[0m for UnrestrictedWrite in contract 'HelpMeTokenPart2':
    |    function thankYou(address _a) public onlyPart1 returns(bool)
    |    {
  > |        thank_you[_a] = true;
    |        emit Transfer(_a, address(this), num);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8df6eba1a0225509c16d59f69f4495b6a1e7b0a1.sol(45)


