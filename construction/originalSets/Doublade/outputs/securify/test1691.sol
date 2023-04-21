Processing contract: /home/jiaming/mavs_srcs/contract@0x6ba12c060841b25c844567a4d5e0e8b425be13f6.sol:Story
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'Story':
    |  function payout() public {
    |    require(this.balance >= 1000000000000000);
  > |    developer.transfer(this.balance);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x6ba12c060841b25c844567a4d5e0e8b425be13f6.sol(62)

[33mWarning[0m for LockedEther in contract 'Story':
    |pragma solidity ^0.4.18;
    |
  > |contract Story {
    |  address public developer = 0x003BDf0961d5D6cda616ac8812B63E6De5910bc9;
    |
  at /home/jiaming/mavs_srcs/contract@0x6ba12c060841b25c844567a4d5e0e8b425be13f6.sol(3)

[31mViolation[0m for TODAmount in contract 'Story':
    |  function payout() public {
    |    require(this.balance >= 1000000000000000);
  > |    developer.transfer(this.balance);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x6ba12c060841b25c844567a4d5e0e8b425be13f6.sol(62)

[33mWarning[0m for UnhandledException in contract 'Story':
    |  function payout() public {
    |    require(this.balance >= 1000000000000000);
  > |    developer.transfer(this.balance);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x6ba12c060841b25c844567a4d5e0e8b425be13f6.sol(62)

[31mViolation[0m for UnrestrictedWrite in contract 'Story':
    |pragma solidity ^0.4.18;
    |
  > |contract Story {
    |  address public developer = 0x003BDf0961d5D6cda616ac8812B63E6De5910bc9;
    |
  at /home/jiaming/mavs_srcs/contract@0x6ba12c060841b25c844567a4d5e0e8b425be13f6.sol(3)

[31mViolation[0m for UnrestrictedWrite in contract 'Story':
    |    require(clientStoryIndex == iteration);
    |    require(optionNumber == 0 || optionNumber == 1);
  > |    votes[optionNumber] = votes[optionNumber] + msg.value;
    |    numVotes = numVotes + 1;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x6ba12c060841b25c844567a4d5e0e8b425be13f6.sol(30)

[31mViolation[0m for UnrestrictedWrite in contract 'Story':
    |    require(optionNumber == 0 || optionNumber == 1);
    |    votes[optionNumber] = votes[optionNumber] + msg.value;
  > |    numVotes = numVotes + 1;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x6ba12c060841b25c844567a4d5e0e8b425be13f6.sol(31)

[31mViolation[0m for UnrestrictedWrite in contract 'Story':
    |    }
    |
  > |    votes[0] = 0;
    |    votes[1] = 0;
    |    numVotes = 0;
  at /home/jiaming/mavs_srcs/contract@0x6ba12c060841b25c844567a4d5e0e8b425be13f6.sol(49)

[31mViolation[0m for UnrestrictedWrite in contract 'Story':
    |
    |    votes[0] = 0;
  > |    votes[1] = 0;
    |    numVotes = 0;
    |
  at /home/jiaming/mavs_srcs/contract@0x6ba12c060841b25c844567a4d5e0e8b425be13f6.sol(50)

[31mViolation[0m for UnrestrictedWrite in contract 'Story':
    |    votes[0] = 0;
    |    votes[1] = 0;
  > |    numVotes = 0;
    |
    |    iteration = iteration + 1;
  at /home/jiaming/mavs_srcs/contract@0x6ba12c060841b25c844567a4d5e0e8b425be13f6.sol(51)

[31mViolation[0m for UnrestrictedWrite in contract 'Story':
    |    numVotes = 0;
    |
  > |    iteration = iteration + 1;
    |    
    |    payout();
  at /home/jiaming/mavs_srcs/contract@0x6ba12c060841b25c844567a4d5e0e8b425be13f6.sol(53)

[33mWarning[0m for UnrestrictedWrite in contract 'Story':
    |pragma solidity ^0.4.18;
    |
  > |contract Story {
    |  address public developer = 0x003BDf0961d5D6cda616ac8812B63E6De5910bc9;
    |
  at /home/jiaming/mavs_srcs/contract@0x6ba12c060841b25c844567a4d5e0e8b425be13f6.sol(3)


