Processing contract: /home/jiaming/mavs_srcs/contract@0x63d3d0215922b924c782c7b2a351ef8604e18da7.sol:Ether_Quiz
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'Ether_Quiz':
    |        if(responseHash == keccak256(_response) && msg.value > 3 ether)
    |        {
  > |            msg.sender.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x63d3d0215922b924c782c7b2a351ef8604e18da7.sol(13)

[33mWarning[0m for DAOConstantGas in contract 'Ether_Quiz':
    |       require(msg.sender==questionSender);
    |       
  > |       msg.sender.transfer(this.balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x63d3d0215922b924c782c7b2a351ef8604e18da7.sol(43)

[33mWarning[0m for LockedEther in contract 'Ether_Quiz':
    |pragma solidity ^0.4.20;
    |
  > |contract Ether_Quiz
    |{
    |    function Try(string _response)
  at /home/jiaming/mavs_srcs/contract@0x63d3d0215922b924c782c7b2a351ef8604e18da7.sol(3)

[31mViolation[0m for TODAmount in contract 'Ether_Quiz':
    |        if(responseHash == keccak256(_response) && msg.value > 3 ether)
    |        {
  > |            msg.sender.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x63d3d0215922b924c782c7b2a351ef8604e18da7.sol(13)

[31mViolation[0m for TODAmount in contract 'Ether_Quiz':
    |       require(msg.sender==questionSender);
    |       
  > |       msg.sender.transfer(this.balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x63d3d0215922b924c782c7b2a351ef8604e18da7.sol(43)

[33mWarning[0m for TODReceiver in contract 'Ether_Quiz':
    |        if(responseHash == keccak256(_response) && msg.value > 3 ether)
    |        {
  > |            msg.sender.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x63d3d0215922b924c782c7b2a351ef8604e18da7.sol(13)

[33mWarning[0m for TODReceiver in contract 'Ether_Quiz':
    |       require(msg.sender==questionSender);
    |       
  > |       msg.sender.transfer(this.balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x63d3d0215922b924c782c7b2a351ef8604e18da7.sol(43)

[33mWarning[0m for UnhandledException in contract 'Ether_Quiz':
    |        if(responseHash == keccak256(_response) && msg.value > 3 ether)
    |        {
  > |            msg.sender.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x63d3d0215922b924c782c7b2a351ef8604e18da7.sol(13)

[33mWarning[0m for UnhandledException in contract 'Ether_Quiz':
    |       require(msg.sender==questionSender);
    |       
  > |       msg.sender.transfer(this.balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x63d3d0215922b924c782c7b2a351ef8604e18da7.sol(43)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Ether_Quiz':
    |        if(responseHash == keccak256(_response) && msg.value > 3 ether)
    |        {
  > |            msg.sender.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x63d3d0215922b924c782c7b2a351ef8604e18da7.sol(13)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Ether_Quiz':
    |       require(msg.sender==questionSender);
    |       
  > |       msg.sender.transfer(this.balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x63d3d0215922b924c782c7b2a351ef8604e18da7.sol(43)

[31mViolation[0m for UnrestrictedWrite in contract 'Ether_Quiz':
    |pragma solidity ^0.4.20;
    |
  > |contract Ether_Quiz
    |{
    |    function Try(string _response)
  at /home/jiaming/mavs_srcs/contract@0x63d3d0215922b924c782c7b2a351ef8604e18da7.sol(3)

[31mViolation[0m for UnrestrictedWrite in contract 'Ether_Quiz':
    |        if(responseHash==0x0)
    |        {
  > |            responseHash = keccak256(_response);
    |            
    |            question = _question;
  at /home/jiaming/mavs_srcs/contract@0x63d3d0215922b924c782c7b2a351ef8604e18da7.sol(29)

[31mViolation[0m for UnrestrictedWrite in contract 'Ether_Quiz':
    |            question = _question;
    |            
  > |            questionSender = msg.sender;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x63d3d0215922b924c782c7b2a351ef8604e18da7.sol(33)

[31mViolation[0m for UnrestrictedWrite in contract 'Ether_Quiz':
    |        question = _question;
    |        
  > |        responseHash = _responseHash;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x63d3d0215922b924c782c7b2a351ef8604e18da7.sol(54)

[33mWarning[0m for UnrestrictedWrite in contract 'Ether_Quiz':
    |pragma solidity ^0.4.20;
    |
  > |contract Ether_Quiz
    |{
    |    function Try(string _response)
  at /home/jiaming/mavs_srcs/contract@0x63d3d0215922b924c782c7b2a351ef8604e18da7.sol(3)


