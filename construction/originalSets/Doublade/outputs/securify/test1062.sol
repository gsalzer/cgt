Processing contract: /home/jiaming/mavs_srcs/contract@0x4341d82876ff3fc717a0f3b6d6329f9aacca3964.sol:HelpMeTokenInterface
Processing contract: /home/jiaming/mavs_srcs/contract@0x4341d82876ff3fc717a0f3b6d6329f9aacca3964.sol:HelpMeTokenPart4
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'HelpMeTokenPart4':
    |        require( msg.value > 0 );
    |        HelpMeTokenInterface token = HelpMeTokenInterface (helpMeTokenPart1);
  > |        token.owner().transfer(msg.value);
    |        token.thankYou( msg.sender );
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4341d82876ff3fc717a0f3b6d6329f9aacca3964.sol(33)

[33mWarning[0m for LockedEther in contract 'HelpMeTokenPart4':
    |
    |
  > |contract HelpMeTokenPart4 {
    |    
    |    string public name = ") HELP ME LEAVE THIS COUNTRY";
  at /home/jiaming/mavs_srcs/contract@0x4341d82876ff3fc717a0f3b6d6329f9aacca3964.sol(10)

[33mWarning[0m for TODReceiver in contract 'HelpMeTokenPart4':
    |        require( msg.value > 0 );
    |        HelpMeTokenInterface token = HelpMeTokenInterface (helpMeTokenPart1);
  > |        token.owner().transfer(msg.value);
    |        token.thankYou( msg.sender );
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4341d82876ff3fc717a0f3b6d6329f9aacca3964.sol(33)

[33mWarning[0m for UnhandledException in contract 'HelpMeTokenPart4':
    |        require( msg.value > 0 );
    |        HelpMeTokenInterface token = HelpMeTokenInterface (helpMeTokenPart1);
  > |        token.owner().transfer(msg.value);
    |        token.thankYou( msg.sender );
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4341d82876ff3fc717a0f3b6d6329f9aacca3964.sol(33)

[33mWarning[0m for UnhandledException in contract 'HelpMeTokenPart4':
    |        HelpMeTokenInterface token = HelpMeTokenInterface (helpMeTokenPart1);
    |        token.owner().transfer(msg.value);
  > |        token.thankYou( msg.sender );
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x4341d82876ff3fc717a0f3b6d6329f9aacca3964.sol(34)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HelpMeTokenPart4':
    |        require( msg.value > 0 );
    |        HelpMeTokenInterface token = HelpMeTokenInterface (helpMeTokenPart1);
  > |        token.owner().transfer(msg.value);
    |        token.thankYou( msg.sender );
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4341d82876ff3fc717a0f3b6d6329f9aacca3964.sol(33)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HelpMeTokenPart4':
    |        HelpMeTokenInterface token = HelpMeTokenInterface (helpMeTokenPart1);
    |        token.owner().transfer(msg.value);
  > |        token.thankYou( msg.sender );
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x4341d82876ff3fc717a0f3b6d6329f9aacca3964.sol(34)

[33mWarning[0m for UnrestrictedWrite in contract 'HelpMeTokenPart4':
    |    function stopIt() public onlyPart1 returns(bool)
    |    {
  > |        stop_it = true;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4341d82876ff3fc717a0f3b6d6329f9aacca3964.sol(39)

[33mWarning[0m for UnrestrictedWrite in contract 'HelpMeTokenPart4':
    |    function thankYou(address _a) public onlyPart1 returns(bool)
    |    {
  > |        thank_you[_a] = true;
    |        emit Transfer(_a, address(this), num);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x4341d82876ff3fc717a0f3b6d6329f9aacca3964.sol(45)


