Processing contract: /home/jiaming/mavs_srcs/contract@0x9d81adbad5dc8c4d474e080466d4741bec89df62.sol:RIDDLE_GAME
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'RIDDLE_GAME':
    |        if(responseHash == keccak256(_response) && msg.value > 3 ether)
    |        {
  > |            msg.sender.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9d81adbad5dc8c4d474e080466d4741bec89df62.sol(10)

[33mWarning[0m for DAOConstantGas in contract 'RIDDLE_GAME':
    |    function StopGame() public payable {
    |        require(msg.sender==questionSender);
  > |        msg.sender.transfer(this.balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x9d81adbad5dc8c4d474e080466d4741bec89df62.sol(31)

[33mWarning[0m for LockedEther in contract 'RIDDLE_GAME':
    |pragma solidity ^0.4.20;
    |
  > |contract RIDDLE_GAME
    |{
    |    function Try(string _response) external payable {
  at /home/jiaming/mavs_srcs/contract@0x9d81adbad5dc8c4d474e080466d4741bec89df62.sol(3)

[31mViolation[0m for TODAmount in contract 'RIDDLE_GAME':
    |        if(responseHash == keccak256(_response) && msg.value > 3 ether)
    |        {
  > |            msg.sender.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9d81adbad5dc8c4d474e080466d4741bec89df62.sol(10)

[31mViolation[0m for TODAmount in contract 'RIDDLE_GAME':
    |    function StopGame() public payable {
    |        require(msg.sender==questionSender);
  > |        msg.sender.transfer(this.balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x9d81adbad5dc8c4d474e080466d4741bec89df62.sol(31)

[33mWarning[0m for TODReceiver in contract 'RIDDLE_GAME':
    |        if(responseHash == keccak256(_response) && msg.value > 3 ether)
    |        {
  > |            msg.sender.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9d81adbad5dc8c4d474e080466d4741bec89df62.sol(10)

[33mWarning[0m for TODReceiver in contract 'RIDDLE_GAME':
    |    function StopGame() public payable {
    |        require(msg.sender==questionSender);
  > |        msg.sender.transfer(this.balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x9d81adbad5dc8c4d474e080466d4741bec89df62.sol(31)

[33mWarning[0m for UnhandledException in contract 'RIDDLE_GAME':
    |        if(responseHash == keccak256(_response) && msg.value > 3 ether)
    |        {
  > |            msg.sender.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9d81adbad5dc8c4d474e080466d4741bec89df62.sol(10)

[33mWarning[0m for UnhandledException in contract 'RIDDLE_GAME':
    |    function StopGame() public payable {
    |        require(msg.sender==questionSender);
  > |        msg.sender.transfer(this.balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x9d81adbad5dc8c4d474e080466d4741bec89df62.sol(31)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RIDDLE_GAME':
    |        if(responseHash == keccak256(_response) && msg.value > 3 ether)
    |        {
  > |            msg.sender.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9d81adbad5dc8c4d474e080466d4741bec89df62.sol(10)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RIDDLE_GAME':
    |    function StopGame() public payable {
    |        require(msg.sender==questionSender);
  > |        msg.sender.transfer(this.balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x9d81adbad5dc8c4d474e080466d4741bec89df62.sol(31)

[31mViolation[0m for UnrestrictedWrite in contract 'RIDDLE_GAME':
    |        if(responseHash==0x0) 
    |        {
  > |            responseHash = keccak256(_response);
    |            question = _question;
    |            questionSender = msg.sender;
  at /home/jiaming/mavs_srcs/contract@0x9d81adbad5dc8c4d474e080466d4741bec89df62.sol(23)

[33mWarning[0m for UnrestrictedWrite in contract 'RIDDLE_GAME':
    |pragma solidity ^0.4.20;
    |
  > |contract RIDDLE_GAME
    |{
    |    function Try(string _response) external payable {
  at /home/jiaming/mavs_srcs/contract@0x9d81adbad5dc8c4d474e080466d4741bec89df62.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'RIDDLE_GAME':
    |    
    |    function newQuestioner(address newAddress) public {
  > |        if(msg.sender==questionSender)questionSender = newAddress;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x9d81adbad5dc8c4d474e080466d4741bec89df62.sol(42)


