Processing contract: /home/jiaming/mavs_srcs/contract@0xc399a8814e1fbb3095df330f8ff7f4916247ef94.sol:think_and_get_rich
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'think_and_get_rich':
    |        if(responseHash == keccak256(_response) && msg.value>2 ether)
    |        {
  > |            msg.sender.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc399a8814e1fbb3095df330f8ff7f4916247ef94.sol(10)

[33mWarning[0m for DAOConstantGas in contract 'think_and_get_rich':
    |    function StopGame() public payable {
    |        require(msg.sender==questionSender);
  > |        msg.sender.transfer(this.balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xc399a8814e1fbb3095df330f8ff7f4916247ef94.sol(31)

[33mWarning[0m for LockedEther in contract 'think_and_get_rich':
    |pragma solidity ^0.4.20;
    |
  > |contract think_and_get_rich
    |{
    |    function Try(string _response) external payable {
  at /home/jiaming/mavs_srcs/contract@0xc399a8814e1fbb3095df330f8ff7f4916247ef94.sol(3)

[31mViolation[0m for TODAmount in contract 'think_and_get_rich':
    |        if(responseHash == keccak256(_response) && msg.value>2 ether)
    |        {
  > |            msg.sender.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc399a8814e1fbb3095df330f8ff7f4916247ef94.sol(10)

[31mViolation[0m for TODAmount in contract 'think_and_get_rich':
    |    function StopGame() public payable {
    |        require(msg.sender==questionSender);
  > |        msg.sender.transfer(this.balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xc399a8814e1fbb3095df330f8ff7f4916247ef94.sol(31)

[33mWarning[0m for TODReceiver in contract 'think_and_get_rich':
    |        if(responseHash == keccak256(_response) && msg.value>2 ether)
    |        {
  > |            msg.sender.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc399a8814e1fbb3095df330f8ff7f4916247ef94.sol(10)

[33mWarning[0m for TODReceiver in contract 'think_and_get_rich':
    |    function StopGame() public payable {
    |        require(msg.sender==questionSender);
  > |        msg.sender.transfer(this.balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xc399a8814e1fbb3095df330f8ff7f4916247ef94.sol(31)

[33mWarning[0m for UnhandledException in contract 'think_and_get_rich':
    |        if(responseHash == keccak256(_response) && msg.value>2 ether)
    |        {
  > |            msg.sender.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc399a8814e1fbb3095df330f8ff7f4916247ef94.sol(10)

[33mWarning[0m for UnhandledException in contract 'think_and_get_rich':
    |    function StopGame() public payable {
    |        require(msg.sender==questionSender);
  > |        msg.sender.transfer(this.balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xc399a8814e1fbb3095df330f8ff7f4916247ef94.sol(31)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'think_and_get_rich':
    |        if(responseHash == keccak256(_response) && msg.value>2 ether)
    |        {
  > |            msg.sender.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc399a8814e1fbb3095df330f8ff7f4916247ef94.sol(10)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'think_and_get_rich':
    |    function StopGame() public payable {
    |        require(msg.sender==questionSender);
  > |        msg.sender.transfer(this.balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xc399a8814e1fbb3095df330f8ff7f4916247ef94.sol(31)

[31mViolation[0m for UnrestrictedWrite in contract 'think_and_get_rich':
    |        if(responseHash==0x0) 
    |        {
  > |            responseHash = keccak256(_response);
    |            question = _question;
    |            questionSender = msg.sender;
  at /home/jiaming/mavs_srcs/contract@0xc399a8814e1fbb3095df330f8ff7f4916247ef94.sol(23)

[33mWarning[0m for UnrestrictedWrite in contract 'think_and_get_rich':
    |pragma solidity ^0.4.20;
    |
  > |contract think_and_get_rich
    |{
    |    function Try(string _response) external payable {
  at /home/jiaming/mavs_srcs/contract@0xc399a8814e1fbb3095df330f8ff7f4916247ef94.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'think_and_get_rich':
    |    
    |    function newQuestioner(address newAddress) public {
  > |        if(msg.sender==questionSender)questionSender = newAddress;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xc399a8814e1fbb3095df330f8ff7f4916247ef94.sol(42)


