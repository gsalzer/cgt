Processing contract: /home/jiaming/mavs_srcs/contract@0x10321d95ea2dfce2f69d9020ffe419f7a2d3a29b.sol:HelpMeTokenInterface
Processing contract: /home/jiaming/mavs_srcs/contract@0x10321d95ea2dfce2f69d9020ffe419f7a2d3a29b.sol:HelpMeTokenPart8
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'HelpMeTokenPart8':
    |        require( msg.value > 0 );
    |        HelpMeTokenInterface token = HelpMeTokenInterface (helpMeTokenPart1);
  > |        token.owner().transfer(msg.value);
    |        token.thankYou( msg.sender );
    |    }
  at /home/jiaming/mavs_srcs/contract@0x10321d95ea2dfce2f69d9020ffe419f7a2d3a29b.sol(33)

[33mWarning[0m for LockedEther in contract 'HelpMeTokenPart8':
    |
    |
  > |contract HelpMeTokenPart8 {
    |    
    |    string public name = ") SORRY FOR THE INSOLENT";
  at /home/jiaming/mavs_srcs/contract@0x10321d95ea2dfce2f69d9020ffe419f7a2d3a29b.sol(10)

[33mWarning[0m for TODReceiver in contract 'HelpMeTokenPart8':
    |        require( msg.value > 0 );
    |        HelpMeTokenInterface token = HelpMeTokenInterface (helpMeTokenPart1);
  > |        token.owner().transfer(msg.value);
    |        token.thankYou( msg.sender );
    |    }
  at /home/jiaming/mavs_srcs/contract@0x10321d95ea2dfce2f69d9020ffe419f7a2d3a29b.sol(33)

[33mWarning[0m for UnhandledException in contract 'HelpMeTokenPart8':
    |        require( msg.value > 0 );
    |        HelpMeTokenInterface token = HelpMeTokenInterface (helpMeTokenPart1);
  > |        token.owner().transfer(msg.value);
    |        token.thankYou( msg.sender );
    |    }
  at /home/jiaming/mavs_srcs/contract@0x10321d95ea2dfce2f69d9020ffe419f7a2d3a29b.sol(33)

[33mWarning[0m for UnhandledException in contract 'HelpMeTokenPart8':
    |        HelpMeTokenInterface token = HelpMeTokenInterface (helpMeTokenPart1);
    |        token.owner().transfer(msg.value);
  > |        token.thankYou( msg.sender );
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x10321d95ea2dfce2f69d9020ffe419f7a2d3a29b.sol(34)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HelpMeTokenPart8':
    |        require( msg.value > 0 );
    |        HelpMeTokenInterface token = HelpMeTokenInterface (helpMeTokenPart1);
  > |        token.owner().transfer(msg.value);
    |        token.thankYou( msg.sender );
    |    }
  at /home/jiaming/mavs_srcs/contract@0x10321d95ea2dfce2f69d9020ffe419f7a2d3a29b.sol(33)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HelpMeTokenPart8':
    |        HelpMeTokenInterface token = HelpMeTokenInterface (helpMeTokenPart1);
    |        token.owner().transfer(msg.value);
  > |        token.thankYou( msg.sender );
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x10321d95ea2dfce2f69d9020ffe419f7a2d3a29b.sol(34)

[33mWarning[0m for UnrestrictedWrite in contract 'HelpMeTokenPart8':
    |    function stopIt() public onlyPart1 returns(bool)
    |    {
  > |        stop_it = true;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x10321d95ea2dfce2f69d9020ffe419f7a2d3a29b.sol(39)

[33mWarning[0m for UnrestrictedWrite in contract 'HelpMeTokenPart8':
    |    function thankYou(address _a) public onlyPart1 returns(bool)
    |    {
  > |        thank_you[_a] = true;
    |        emit Transfer(_a, address(this), num);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x10321d95ea2dfce2f69d9020ffe419f7a2d3a29b.sol(45)


