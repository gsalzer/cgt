Processing contract: /home/jiaming/mavs_srcs/contract@0xc034cf94f7ced9c968cc75210d1b5ddaccacfbf4.sol:ANSWER_AND_RECIVE
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'ANSWER_AND_RECIVE':
    |        if(responseHash == keccak256(_response) && msg.value>1 ether)
    |        {
  > |            msg.sender.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc034cf94f7ced9c968cc75210d1b5ddaccacfbf4.sol(30)

[33mWarning[0m for DAOConstantGas in contract 'ANSWER_AND_RECIVE':
    |    {
    |       require(msg.sender==questionSender);
  > |       msg.sender.transfer(this.balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xc034cf94f7ced9c968cc75210d1b5ddaccacfbf4.sol(39)

[33mWarning[0m for LockedEther in contract 'ANSWER_AND_RECIVE':
    |pragma solidity ^0.4.20;
    |
  > |contract ANSWER_AND_RECIVE
    |{
    |    string public question;
  at /home/jiaming/mavs_srcs/contract@0xc034cf94f7ced9c968cc75210d1b5ddaccacfbf4.sol(3)

[31mViolation[0m for TODAmount in contract 'ANSWER_AND_RECIVE':
    |        if(responseHash == keccak256(_response) && msg.value>1 ether)
    |        {
  > |            msg.sender.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc034cf94f7ced9c968cc75210d1b5ddaccacfbf4.sol(30)

[31mViolation[0m for TODAmount in contract 'ANSWER_AND_RECIVE':
    |    {
    |       require(msg.sender==questionSender);
  > |       msg.sender.transfer(this.balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xc034cf94f7ced9c968cc75210d1b5ddaccacfbf4.sol(39)

[33mWarning[0m for TODReceiver in contract 'ANSWER_AND_RECIVE':
    |        if(responseHash == keccak256(_response) && msg.value>1 ether)
    |        {
  > |            msg.sender.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc034cf94f7ced9c968cc75210d1b5ddaccacfbf4.sol(30)

[33mWarning[0m for TODReceiver in contract 'ANSWER_AND_RECIVE':
    |    {
    |       require(msg.sender==questionSender);
  > |       msg.sender.transfer(this.balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xc034cf94f7ced9c968cc75210d1b5ddaccacfbf4.sol(39)

[33mWarning[0m for UnhandledException in contract 'ANSWER_AND_RECIVE':
    |        if(responseHash == keccak256(_response) && msg.value>1 ether)
    |        {
  > |            msg.sender.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc034cf94f7ced9c968cc75210d1b5ddaccacfbf4.sol(30)

[33mWarning[0m for UnhandledException in contract 'ANSWER_AND_RECIVE':
    |    {
    |       require(msg.sender==questionSender);
  > |       msg.sender.transfer(this.balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xc034cf94f7ced9c968cc75210d1b5ddaccacfbf4.sol(39)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ANSWER_AND_RECIVE':
    |        if(responseHash == keccak256(_response) && msg.value>1 ether)
    |        {
  > |            msg.sender.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc034cf94f7ced9c968cc75210d1b5ddaccacfbf4.sol(30)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ANSWER_AND_RECIVE':
    |    {
    |       require(msg.sender==questionSender);
  > |       msg.sender.transfer(this.balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xc034cf94f7ced9c968cc75210d1b5ddaccacfbf4.sol(39)

[31mViolation[0m for UnrestrictedWrite in contract 'ANSWER_AND_RECIVE':
    |pragma solidity ^0.4.20;
    |
  > |contract ANSWER_AND_RECIVE
    |{
    |    string public question;
  at /home/jiaming/mavs_srcs/contract@0xc034cf94f7ced9c968cc75210d1b5ddaccacfbf4.sol(3)

[31mViolation[0m for UnrestrictedWrite in contract 'ANSWER_AND_RECIVE':
    |        if(responseHash==0x0)
    |        {
  > |            responseHash = keccak256(_response);
    |            question = _question;
    |            questionSender = msg.sender;
  at /home/jiaming/mavs_srcs/contract@0xc034cf94f7ced9c968cc75210d1b5ddaccacfbf4.sol(17)

[31mViolation[0m for UnrestrictedWrite in contract 'ANSWER_AND_RECIVE':
    |            responseHash = keccak256(_response);
    |            question = _question;
  > |            questionSender = msg.sender;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc034cf94f7ced9c968cc75210d1b5ddaccacfbf4.sol(19)

[31mViolation[0m for UnrestrictedWrite in contract 'ANSWER_AND_RECIVE':
    |        require(msg.sender==questionSender);
    |        question = _question;
  > |        responseHash = _responseHash;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xc034cf94f7ced9c968cc75210d1b5ddaccacfbf4.sol(48)

[33mWarning[0m for UnrestrictedWrite in contract 'ANSWER_AND_RECIVE':
    |pragma solidity ^0.4.20;
    |
  > |contract ANSWER_AND_RECIVE
    |{
    |    string public question;
  at /home/jiaming/mavs_srcs/contract@0xc034cf94f7ced9c968cc75210d1b5ddaccacfbf4.sol(3)


