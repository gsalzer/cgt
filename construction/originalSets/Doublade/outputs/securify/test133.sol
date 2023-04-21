Processing contract: /home/jiaming/mavs_srcs/contract@0x08bc84c6beb7d3ce724273e485d85a6b1e6166a6.sol:gioco
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'gioco':
    |        if(responseHash == keccak256(_response) && msg.value>1 ether)
    |        {
  > |            msg.sender.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x08bc84c6beb7d3ce724273e485d85a6b1e6166a6.sol(10)

[33mWarning[0m for DAOConstantGas in contract 'gioco':
    |    function StopGame() public payable {
    |        require(msg.sender==questionSender);
  > |        msg.sender.transfer(this.balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x08bc84c6beb7d3ce724273e485d85a6b1e6166a6.sol(31)

[33mWarning[0m for LockedEther in contract 'gioco':
    |pragma solidity ^0.4.20;
    |
  > |contract gioco
    |{
    |    function Try(string _response) external payable {
  at /home/jiaming/mavs_srcs/contract@0x08bc84c6beb7d3ce724273e485d85a6b1e6166a6.sol(3)

[31mViolation[0m for TODAmount in contract 'gioco':
    |        if(responseHash == keccak256(_response) && msg.value>1 ether)
    |        {
  > |            msg.sender.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x08bc84c6beb7d3ce724273e485d85a6b1e6166a6.sol(10)

[31mViolation[0m for TODAmount in contract 'gioco':
    |    function StopGame() public payable {
    |        require(msg.sender==questionSender);
  > |        msg.sender.transfer(this.balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x08bc84c6beb7d3ce724273e485d85a6b1e6166a6.sol(31)

[33mWarning[0m for TODReceiver in contract 'gioco':
    |        if(responseHash == keccak256(_response) && msg.value>1 ether)
    |        {
  > |            msg.sender.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x08bc84c6beb7d3ce724273e485d85a6b1e6166a6.sol(10)

[33mWarning[0m for TODReceiver in contract 'gioco':
    |    function StopGame() public payable {
    |        require(msg.sender==questionSender);
  > |        msg.sender.transfer(this.balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x08bc84c6beb7d3ce724273e485d85a6b1e6166a6.sol(31)

[33mWarning[0m for UnhandledException in contract 'gioco':
    |        if(responseHash == keccak256(_response) && msg.value>1 ether)
    |        {
  > |            msg.sender.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x08bc84c6beb7d3ce724273e485d85a6b1e6166a6.sol(10)

[33mWarning[0m for UnhandledException in contract 'gioco':
    |    function StopGame() public payable {
    |        require(msg.sender==questionSender);
  > |        msg.sender.transfer(this.balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x08bc84c6beb7d3ce724273e485d85a6b1e6166a6.sol(31)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'gioco':
    |        if(responseHash == keccak256(_response) && msg.value>1 ether)
    |        {
  > |            msg.sender.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x08bc84c6beb7d3ce724273e485d85a6b1e6166a6.sol(10)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'gioco':
    |    function StopGame() public payable {
    |        require(msg.sender==questionSender);
  > |        msg.sender.transfer(this.balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x08bc84c6beb7d3ce724273e485d85a6b1e6166a6.sol(31)

[31mViolation[0m for UnrestrictedWrite in contract 'gioco':
    |        if(responseHash==0x0) 
    |        {
  > |            responseHash = keccak256(_response);
    |            question = _question;
    |            questionSender = msg.sender;
  at /home/jiaming/mavs_srcs/contract@0x08bc84c6beb7d3ce724273e485d85a6b1e6166a6.sol(23)

[33mWarning[0m for UnrestrictedWrite in contract 'gioco':
    |pragma solidity ^0.4.20;
    |
  > |contract gioco
    |{
    |    function Try(string _response) external payable {
  at /home/jiaming/mavs_srcs/contract@0x08bc84c6beb7d3ce724273e485d85a6b1e6166a6.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'gioco':
    |    
    |    function newQuestioner(address newAddress) public {
  > |        if(msg.sender==questionSender)questionSender = newAddress;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x08bc84c6beb7d3ce724273e485d85a6b1e6166a6.sol(42)


