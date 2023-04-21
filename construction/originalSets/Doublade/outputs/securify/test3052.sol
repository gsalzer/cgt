Processing contract: /home/jiaming/mavs_srcs/contract@0xc77081641129a028d622f85671ea172ac5595938.sol:QUESTQUESTION
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'QUESTQUESTION':
    |        if(responseHash == keccak256(_response) && msg.value>1 ether)
    |        {
  > |            msg.sender.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc77081641129a028d622f85671ea172ac5595938.sol(12)

[33mWarning[0m for DAOConstantGas in contract 'QUESTQUESTION':
    |    {
    |       require(msg.sender==questionSender);
  > |       msg.sender.transfer(this.balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xc77081641129a028d622f85671ea172ac5595938.sol(39)

[33mWarning[0m for LockedEther in contract 'QUESTQUESTION':
    |pragma solidity ^0.4.20;
    |
  > |contract QUESTQUESTION
    |{
    |    function Play(string _response)
  at /home/jiaming/mavs_srcs/contract@0xc77081641129a028d622f85671ea172ac5595938.sol(3)

[31mViolation[0m for TODAmount in contract 'QUESTQUESTION':
    |        if(responseHash == keccak256(_response) && msg.value>1 ether)
    |        {
  > |            msg.sender.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc77081641129a028d622f85671ea172ac5595938.sol(12)

[31mViolation[0m for TODAmount in contract 'QUESTQUESTION':
    |    {
    |       require(msg.sender==questionSender);
  > |       msg.sender.transfer(this.balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xc77081641129a028d622f85671ea172ac5595938.sol(39)

[33mWarning[0m for TODReceiver in contract 'QUESTQUESTION':
    |        if(responseHash == keccak256(_response) && msg.value>1 ether)
    |        {
  > |            msg.sender.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc77081641129a028d622f85671ea172ac5595938.sol(12)

[33mWarning[0m for TODReceiver in contract 'QUESTQUESTION':
    |    {
    |       require(msg.sender==questionSender);
  > |       msg.sender.transfer(this.balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xc77081641129a028d622f85671ea172ac5595938.sol(39)

[33mWarning[0m for UnhandledException in contract 'QUESTQUESTION':
    |        if(responseHash == keccak256(_response) && msg.value>1 ether)
    |        {
  > |            msg.sender.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc77081641129a028d622f85671ea172ac5595938.sol(12)

[33mWarning[0m for UnhandledException in contract 'QUESTQUESTION':
    |    {
    |       require(msg.sender==questionSender);
  > |       msg.sender.transfer(this.balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xc77081641129a028d622f85671ea172ac5595938.sol(39)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'QUESTQUESTION':
    |        if(responseHash == keccak256(_response) && msg.value>1 ether)
    |        {
  > |            msg.sender.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc77081641129a028d622f85671ea172ac5595938.sol(12)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'QUESTQUESTION':
    |    {
    |       require(msg.sender==questionSender);
  > |       msg.sender.transfer(this.balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xc77081641129a028d622f85671ea172ac5595938.sol(39)

[31mViolation[0m for UnrestrictedWrite in contract 'QUESTQUESTION':
    |pragma solidity ^0.4.20;
    |
  > |contract QUESTQUESTION
    |{
    |    function Play(string _response)
  at /home/jiaming/mavs_srcs/contract@0xc77081641129a028d622f85671ea172ac5595938.sol(3)

[31mViolation[0m for UnrestrictedWrite in contract 'QUESTQUESTION':
    |        if(responseHash==0x0)
    |        {
  > |            responseHash = keccak256(_response);
    |            question = _question;
    |            questionSender = msg.sender;
  at /home/jiaming/mavs_srcs/contract@0xc77081641129a028d622f85671ea172ac5595938.sol(28)

[31mViolation[0m for UnrestrictedWrite in contract 'QUESTQUESTION':
    |            responseHash = keccak256(_response);
    |            question = _question;
  > |            questionSender = msg.sender;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc77081641129a028d622f85671ea172ac5595938.sol(30)

[31mViolation[0m for UnrestrictedWrite in contract 'QUESTQUESTION':
    |        require(msg.sender==questionSender);
    |        question = _question;
  > |        responseHash = _responseHash;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xc77081641129a028d622f85671ea172ac5595938.sol(48)

[33mWarning[0m for UnrestrictedWrite in contract 'QUESTQUESTION':
    |pragma solidity ^0.4.20;
    |
  > |contract QUESTQUESTION
    |{
    |    function Play(string _response)
  at /home/jiaming/mavs_srcs/contract@0xc77081641129a028d622f85671ea172ac5595938.sol(3)


