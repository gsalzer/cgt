Processing contract: /home/jiaming/mavs_srcs/contract@0x0b6f6e073a08ab8fd458527c47ed83982ff26851.sol:Vote
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0b6f6e073a08ab8fd458527c47ed83982ff26851.sol:VoteFactory
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'Vote':
    |    function payOut() {
    |        // just to collect accidentally accumulated funds
  > |        msg.sender.send(this.balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x0b6f6e073a08ab8fd458527c47ed83982ff26851.sol(104)

[33mWarning[0m for LockedEther in contract 'Vote':
    |}
    |
  > |contract Vote {
    |    VoteFactory public myVoteFactory;
    |
  at /home/jiaming/mavs_srcs/contract@0x0b6f6e073a08ab8fd458527c47ed83982ff26851.sol(89)

[33mWarning[0m for MissingInputValidation in contract 'Vote':
    |
    |contract Vote {
  > |    VoteFactory public myVoteFactory;
    |
    |    function Vote() {
  at /home/jiaming/mavs_srcs/contract@0x0b6f6e073a08ab8fd458527c47ed83982ff26851.sol(90)

[33mWarning[0m for MissingInputValidation in contract 'Vote':
    |    }
    |
  > |    function payOut() {
    |        // just to collect accidentally accumulated funds
    |        msg.sender.send(this.balance);
  at /home/jiaming/mavs_srcs/contract@0x0b6f6e073a08ab8fd458527c47ed83982ff26851.sol(102)

[31mViolation[0m for TODAmount in contract 'Vote':
    |    function payOut() {
    |        // just to collect accidentally accumulated funds
  > |        msg.sender.send(this.balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x0b6f6e073a08ab8fd458527c47ed83982ff26851.sol(104)

[33mWarning[0m for TODReceiver in contract 'Vote':
    |    function payOut() {
    |        // just to collect accidentally accumulated funds
  > |        msg.sender.send(this.balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x0b6f6e073a08ab8fd458527c47ed83982ff26851.sol(104)

[31mViolation[0m for UnhandledException in contract 'Vote':
    |    function payOut() {
    |        // just to collect accidentally accumulated funds
  > |        msg.sender.send(this.balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x0b6f6e073a08ab8fd458527c47ed83982ff26851.sol(104)

[33mWarning[0m for DAOConstantGas in contract 'VoteFactory':
    |    function payOut() onlyOwner {
    |        // just in case we accumulate a balance here, we have to be able to retrieve it
  > |        owner.send(this.balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x0b6f6e073a08ab8fd458527c47ed83982ff26851.sol(33)

[33mWarning[0m for LockedEther in contract 'VoteFactory':
    |pragma solidity ^0.4.10;
    |
  > |contract VoteFactory {
    |    address public owner;
    |    uint public numPolls;
  at /home/jiaming/mavs_srcs/contract@0x0b6f6e073a08ab8fd458527c47ed83982ff26851.sol(3)

[31mViolation[0m for TODAmount in contract 'VoteFactory':
    |    function payOut() onlyOwner {
    |        // just in case we accumulate a balance here, we have to be able to retrieve it
  > |        owner.send(this.balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x0b6f6e073a08ab8fd458527c47ed83982ff26851.sol(33)

[31mViolation[0m for TODReceiver in contract 'VoteFactory':
    |    function payOut() onlyOwner {
    |        // just in case we accumulate a balance here, we have to be able to retrieve it
  > |        owner.send(this.balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x0b6f6e073a08ab8fd458527c47ed83982ff26851.sol(33)

[31mViolation[0m for UnhandledException in contract 'VoteFactory':
    |    function payOut() onlyOwner {
    |        // just in case we accumulate a balance here, we have to be able to retrieve it
  > |        owner.send(this.balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x0b6f6e073a08ab8fd458527c47ed83982ff26851.sol(33)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'VoteFactory':
    |    function payOut() onlyOwner {
    |        // just in case we accumulate a balance here, we have to be able to retrieve it
  > |        owner.send(this.balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x0b6f6e073a08ab8fd458527c47ed83982ff26851.sol(33)

[31mViolation[0m for UnrestrictedWrite in contract 'VoteFactory':
    |pragma solidity ^0.4.10;
    |
  > |contract VoteFactory {
    |    address public owner;
    |    uint public numPolls;
  at /home/jiaming/mavs_srcs/contract@0x0b6f6e073a08ab8fd458527c47ed83982ff26851.sol(3)

[31mViolation[0m for UnrestrictedWrite in contract 'VoteFactory':
    |        nextEndTime = now + duration;
    |        voteDescription[numPolls] = description;
  > |        startedNewVote(msg.sender, duration, description, ++numPolls);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x0b6f6e073a08ab8fd458527c47ed83982ff26851.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'VoteFactory':
    |pragma solidity ^0.4.10;
    |
  > |contract VoteFactory {
    |    address public owner;
    |    uint public numPolls;
  at /home/jiaming/mavs_srcs/contract@0x0b6f6e073a08ab8fd458527c47ed83982ff26851.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'VoteFactory':
    |    
    |    function transferOwner(address newOwner) onlyOwner {
  > |        owner = newOwner;
    |        transferredOwner(newOwner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0b6f6e073a08ab8fd458527c47ed83982ff26851.sol(27)

[33mWarning[0m for UnrestrictedWrite in contract 'VoteFactory':
    |        if (now <= nextEndTime)
    |            throw;
  > |        nextEndTime = now + duration;
    |        voteDescription[numPolls] = description;
    |        startedNewVote(msg.sender, duration, description, ++numPolls);
  at /home/jiaming/mavs_srcs/contract@0x0b6f6e073a08ab8fd458527c47ed83982ff26851.sol(58)

[33mWarning[0m for UnrestrictedWrite in contract 'VoteFactory':
    |            throw;
    |        
  > |        hasVoted[voteSender][numPolls] = true;
    |        voter[numPolls][numVoters[numPolls]++] = voteSender;
    |        
  at /home/jiaming/mavs_srcs/contract@0x0b6f6e073a08ab8fd458527c47ed83982ff26851.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'VoteFactory':
    |        
    |        hasVoted[voteSender][numPolls] = true;
  > |        voter[numPolls][numVoters[numPolls]++] = voteSender;
    |        
    |        if (isYes)
  at /home/jiaming/mavs_srcs/contract@0x0b6f6e073a08ab8fd458527c47ed83982ff26851.sol(78)

[33mWarning[0m for UnrestrictedWrite in contract 'VoteFactory':
    |        
    |        if (isYes)
  > |            yesCount[numPolls]++;
    |        else
    |            noCount[numPolls]++;
  at /home/jiaming/mavs_srcs/contract@0x0b6f6e073a08ab8fd458527c47ed83982ff26851.sol(81)

[33mWarning[0m for UnrestrictedWrite in contract 'VoteFactory':
    |            yesCount[numPolls]++;
    |        else
  > |            noCount[numPolls]++;
    |
    |        voted(voteSender, isYes);
  at /home/jiaming/mavs_srcs/contract@0x0b6f6e073a08ab8fd458527c47ed83982ff26851.sol(83)


