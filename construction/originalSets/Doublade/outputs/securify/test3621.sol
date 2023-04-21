Processing contract: /home/jiaming/mavs_srcs/contract@0xed42398a3df99e482039c2aec8000dba75296ee9.sol:enigma
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'enigma':
    |        if(responseHash == keccak256(_response) && msg.value > 3 ether)
    |        {
  > |            msg.sender.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xed42398a3df99e482039c2aec8000dba75296ee9.sol(10)

[33mWarning[0m for DAOConstantGas in contract 'enigma':
    |    function StopGame() public payable {
    |        require(msg.sender==questionSender);
  > |        msg.sender.transfer(this.balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xed42398a3df99e482039c2aec8000dba75296ee9.sol(34)

[33mWarning[0m for LockedEther in contract 'enigma':
    |pragma solidity ^0.4.25;
    |
  > |contract enigma
    |{
    |    function Try(string _response) external payable {
  at /home/jiaming/mavs_srcs/contract@0xed42398a3df99e482039c2aec8000dba75296ee9.sol(3)

[31mViolation[0m for TODAmount in contract 'enigma':
    |        if(responseHash == keccak256(_response) && msg.value > 3 ether)
    |        {
  > |            msg.sender.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xed42398a3df99e482039c2aec8000dba75296ee9.sol(10)

[31mViolation[0m for TODAmount in contract 'enigma':
    |    function StopGame() public payable {
    |        require(msg.sender==questionSender);
  > |        msg.sender.transfer(this.balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xed42398a3df99e482039c2aec8000dba75296ee9.sol(34)

[33mWarning[0m for TODReceiver in contract 'enigma':
    |        if(responseHash == keccak256(_response) && msg.value > 3 ether)
    |        {
  > |            msg.sender.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xed42398a3df99e482039c2aec8000dba75296ee9.sol(10)

[33mWarning[0m for TODReceiver in contract 'enigma':
    |    function StopGame() public payable {
    |        require(msg.sender==questionSender);
  > |        msg.sender.transfer(this.balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xed42398a3df99e482039c2aec8000dba75296ee9.sol(34)

[33mWarning[0m for UnhandledException in contract 'enigma':
    |        if(responseHash == keccak256(_response) && msg.value > 3 ether)
    |        {
  > |            msg.sender.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xed42398a3df99e482039c2aec8000dba75296ee9.sol(10)

[33mWarning[0m for UnhandledException in contract 'enigma':
    |    function StopGame() public payable {
    |        require(msg.sender==questionSender);
  > |        msg.sender.transfer(this.balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xed42398a3df99e482039c2aec8000dba75296ee9.sol(34)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'enigma':
    |        if(responseHash == keccak256(_response) && msg.value > 3 ether)
    |        {
  > |            msg.sender.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xed42398a3df99e482039c2aec8000dba75296ee9.sol(10)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'enigma':
    |    function StopGame() public payable {
    |        require(msg.sender==questionSender);
  > |        msg.sender.transfer(this.balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xed42398a3df99e482039c2aec8000dba75296ee9.sol(34)

[31mViolation[0m for UnrestrictedWrite in contract 'enigma':
    |        if(keccak256(_questionerPin)==questionerPin) 
    |        {
  > |            responseHash = keccak256(_response);
    |            question = _question;
    |            questionSender = msg.sender;
  at /home/jiaming/mavs_srcs/contract@0xed42398a3df99e482039c2aec8000dba75296ee9.sol(25)

[33mWarning[0m for UnrestrictedWrite in contract 'enigma':
    |pragma solidity ^0.4.25;
    |
  > |contract enigma
    |{
    |    function Try(string _response) external payable {
  at /home/jiaming/mavs_srcs/contract@0xed42398a3df99e482039c2aec8000dba75296ee9.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'enigma':
    |    
    |    function newQuestioner(address newAddress) public {
  > |        if(msg.sender==questionSender)questionSender = newAddress;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xed42398a3df99e482039c2aec8000dba75296ee9.sol(45)


