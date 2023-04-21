Processing contract: /home/jiaming/mavs_srcs/contract@0x3db9f293b2e992f8c339a543561a615559c375dd.sol:Countdown
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'Countdown':
    |        // And the game continues !
    |        if(this.balance < 0.0005 ether)
  > |            msg.sender.transfer(this.balance);
    |        else
    |            msg.sender.transfer(this.balance /  10);
  at /home/jiaming/mavs_srcs/contract@0x3db9f293b2e992f8c339a543561a615559c375dd.sol(39)

[33mWarning[0m for DAOConstantGas in contract 'Countdown':
    |            msg.sender.transfer(this.balance);
    |        else
  > |            msg.sender.transfer(this.balance /  10);
    |
    |        // The only fee I will take
  at /home/jiaming/mavs_srcs/contract@0x3db9f293b2e992f8c339a543561a615559c375dd.sol(41)

[33mWarning[0m for DAOConstantGas in contract 'Countdown':
    |        // The only fee I will take
    |        if(this.balance > 0.0005 ether)
  > |            owner.transfer(0.0005 ether);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x3db9f293b2e992f8c339a543561a615559c375dd.sol(45)

[33mWarning[0m for LockedEther in contract 'Countdown':
    |// I will refill it
    |
  > |contract Countdown {
    |    uint public deadline = now;
    |    uint private constant waittime = 12 hours;
  at /home/jiaming/mavs_srcs/contract@0x3db9f293b2e992f8c339a543561a615559c375dd.sol(13)

[33mWarning[0m for MissingInputValidation in contract 'Countdown':
    |
    |contract Countdown {
  > |    uint public deadline = now;
    |    uint private constant waittime = 12 hours;
    |    
  at /home/jiaming/mavs_srcs/contract@0x3db9f293b2e992f8c339a543561a615559c375dd.sol(14)

[33mWarning[0m for MissingInputValidation in contract 'Countdown':
    |    
    |    address private owner = msg.sender;
  > |    address public winner;
    |    
    |    function () public payable {
  at /home/jiaming/mavs_srcs/contract@0x3db9f293b2e992f8c339a543561a615559c375dd.sol(18)

[33mWarning[0m for MissingInputValidation in contract 'Countdown':
    |    }
    |    
  > |    function click() public payable {
    |        require(msg.value >= 0.0001 ether);
    |        deadline = now + waittime;
  at /home/jiaming/mavs_srcs/contract@0x3db9f293b2e992f8c339a543561a615559c375dd.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'Countdown':
    |    }
    |    
  > |    function withdraw() public {
    |        require(now > deadline);
    |        require(msg.sender == winner);
  at /home/jiaming/mavs_srcs/contract@0x3db9f293b2e992f8c339a543561a615559c375dd.sol(30)

[31mViolation[0m for TODAmount in contract 'Countdown':
    |        // And the game continues !
    |        if(this.balance < 0.0005 ether)
  > |            msg.sender.transfer(this.balance);
    |        else
    |            msg.sender.transfer(this.balance /  10);
  at /home/jiaming/mavs_srcs/contract@0x3db9f293b2e992f8c339a543561a615559c375dd.sol(39)

[31mViolation[0m for TODAmount in contract 'Countdown':
    |            msg.sender.transfer(this.balance);
    |        else
  > |            msg.sender.transfer(this.balance /  10);
    |
    |        // The only fee I will take
  at /home/jiaming/mavs_srcs/contract@0x3db9f293b2e992f8c339a543561a615559c375dd.sol(41)

[33mWarning[0m for TODAmount in contract 'Countdown':
    |        // The only fee I will take
    |        if(this.balance > 0.0005 ether)
  > |            owner.transfer(0.0005 ether);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x3db9f293b2e992f8c339a543561a615559c375dd.sol(45)

[33mWarning[0m for TODReceiver in contract 'Countdown':
    |        // And the game continues !
    |        if(this.balance < 0.0005 ether)
  > |            msg.sender.transfer(this.balance);
    |        else
    |            msg.sender.transfer(this.balance /  10);
  at /home/jiaming/mavs_srcs/contract@0x3db9f293b2e992f8c339a543561a615559c375dd.sol(39)

[33mWarning[0m for TODReceiver in contract 'Countdown':
    |            msg.sender.transfer(this.balance);
    |        else
  > |            msg.sender.transfer(this.balance /  10);
    |
    |        // The only fee I will take
  at /home/jiaming/mavs_srcs/contract@0x3db9f293b2e992f8c339a543561a615559c375dd.sol(41)

[33mWarning[0m for TODReceiver in contract 'Countdown':
    |        // The only fee I will take
    |        if(this.balance > 0.0005 ether)
  > |            owner.transfer(0.0005 ether);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x3db9f293b2e992f8c339a543561a615559c375dd.sol(45)

[33mWarning[0m for UnhandledException in contract 'Countdown':
    |        // And the game continues !
    |        if(this.balance < 0.0005 ether)
  > |            msg.sender.transfer(this.balance);
    |        else
    |            msg.sender.transfer(this.balance /  10);
  at /home/jiaming/mavs_srcs/contract@0x3db9f293b2e992f8c339a543561a615559c375dd.sol(39)

[33mWarning[0m for UnhandledException in contract 'Countdown':
    |            msg.sender.transfer(this.balance);
    |        else
  > |            msg.sender.transfer(this.balance /  10);
    |
    |        // The only fee I will take
  at /home/jiaming/mavs_srcs/contract@0x3db9f293b2e992f8c339a543561a615559c375dd.sol(41)

[33mWarning[0m for UnhandledException in contract 'Countdown':
    |        // The only fee I will take
    |        if(this.balance > 0.0005 ether)
  > |            owner.transfer(0.0005 ether);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x3db9f293b2e992f8c339a543561a615559c375dd.sol(45)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Countdown':
    |        // And the game continues !
    |        if(this.balance < 0.0005 ether)
  > |            msg.sender.transfer(this.balance);
    |        else
    |            msg.sender.transfer(this.balance /  10);
  at /home/jiaming/mavs_srcs/contract@0x3db9f293b2e992f8c339a543561a615559c375dd.sol(39)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Countdown':
    |            msg.sender.transfer(this.balance);
    |        else
  > |            msg.sender.transfer(this.balance /  10);
    |
    |        // The only fee I will take
  at /home/jiaming/mavs_srcs/contract@0x3db9f293b2e992f8c339a543561a615559c375dd.sol(41)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Countdown':
    |        // The only fee I will take
    |        if(this.balance > 0.0005 ether)
  > |            owner.transfer(0.0005 ether);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x3db9f293b2e992f8c339a543561a615559c375dd.sol(45)

[31mViolation[0m for UnrestrictedWrite in contract 'Countdown':
    |    function click() public payable {
    |        require(msg.value >= 0.0001 ether);
  > |        deadline = now + waittime;
    |        winner = msg.sender;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3db9f293b2e992f8c339a543561a615559c375dd.sol(26)

[31mViolation[0m for UnrestrictedWrite in contract 'Countdown':
    |        require(msg.value >= 0.0001 ether);
    |        deadline = now + waittime;
  > |        winner = msg.sender;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x3db9f293b2e992f8c339a543561a615559c375dd.sol(27)

[33mWarning[0m for UnrestrictedWrite in contract 'Countdown':
    |        require(msg.sender == winner);
    |        
  > |        deadline = now + waittime;
    |
    |        // Winner take 10% of the funds
  at /home/jiaming/mavs_srcs/contract@0x3db9f293b2e992f8c339a543561a615559c375dd.sol(34)


