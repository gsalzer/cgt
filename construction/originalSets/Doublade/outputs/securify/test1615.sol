Processing contract: /home/jiaming/mavs_srcs/contract@0x66a182f66e71b28e9eb9083b0953a2b8c008de85.sol:HelpMeTokenInterface
Processing contract: /home/jiaming/mavs_srcs/contract@0x66a182f66e71b28e9eb9083b0953a2b8c008de85.sol:HelpMeTokenPart5
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'HelpMeTokenPart5':
    |        require( msg.value > 0 );
    |        HelpMeTokenInterface token = HelpMeTokenInterface (helpMeTokenPart1);
  > |        token.owner().transfer(msg.value);
    |        token.thankYou( msg.sender );
    |    }
  at /home/jiaming/mavs_srcs/contract@0x66a182f66e71b28e9eb9083b0953a2b8c008de85.sol(33)

[33mWarning[0m for LockedEther in contract 'HelpMeTokenPart5':
    |
    |
  > |contract HelpMeTokenPart5 {
    |    
    |    string public name = ") SEND ANY ETH TO ANY THIS TOKENS";
  at /home/jiaming/mavs_srcs/contract@0x66a182f66e71b28e9eb9083b0953a2b8c008de85.sol(10)

[33mWarning[0m for TODReceiver in contract 'HelpMeTokenPart5':
    |        require( msg.value > 0 );
    |        HelpMeTokenInterface token = HelpMeTokenInterface (helpMeTokenPart1);
  > |        token.owner().transfer(msg.value);
    |        token.thankYou( msg.sender );
    |    }
  at /home/jiaming/mavs_srcs/contract@0x66a182f66e71b28e9eb9083b0953a2b8c008de85.sol(33)

[33mWarning[0m for UnhandledException in contract 'HelpMeTokenPart5':
    |        require( msg.value > 0 );
    |        HelpMeTokenInterface token = HelpMeTokenInterface (helpMeTokenPart1);
  > |        token.owner().transfer(msg.value);
    |        token.thankYou( msg.sender );
    |    }
  at /home/jiaming/mavs_srcs/contract@0x66a182f66e71b28e9eb9083b0953a2b8c008de85.sol(33)

[33mWarning[0m for UnhandledException in contract 'HelpMeTokenPart5':
    |        HelpMeTokenInterface token = HelpMeTokenInterface (helpMeTokenPart1);
    |        token.owner().transfer(msg.value);
  > |        token.thankYou( msg.sender );
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x66a182f66e71b28e9eb9083b0953a2b8c008de85.sol(34)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HelpMeTokenPart5':
    |        require( msg.value > 0 );
    |        HelpMeTokenInterface token = HelpMeTokenInterface (helpMeTokenPart1);
  > |        token.owner().transfer(msg.value);
    |        token.thankYou( msg.sender );
    |    }
  at /home/jiaming/mavs_srcs/contract@0x66a182f66e71b28e9eb9083b0953a2b8c008de85.sol(33)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HelpMeTokenPart5':
    |        HelpMeTokenInterface token = HelpMeTokenInterface (helpMeTokenPart1);
    |        token.owner().transfer(msg.value);
  > |        token.thankYou( msg.sender );
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x66a182f66e71b28e9eb9083b0953a2b8c008de85.sol(34)

[33mWarning[0m for UnrestrictedWrite in contract 'HelpMeTokenPart5':
    |    function stopIt() public onlyPart1 returns(bool)
    |    {
  > |        stop_it = true;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x66a182f66e71b28e9eb9083b0953a2b8c008de85.sol(39)

[33mWarning[0m for UnrestrictedWrite in contract 'HelpMeTokenPart5':
    |    function thankYou(address _a) public onlyPart1 returns(bool)
    |    {
  > |        thank_you[_a] = true;
    |        emit Transfer(_a, address(this), num * 1 ether);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x66a182f66e71b28e9eb9083b0953a2b8c008de85.sol(45)


