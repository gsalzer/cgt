Processing contract: /home/jiaming/mavs_srcs/contract@0x4ab2e8b268ae0d5daca0bfe8dccfe674c07c7b9d.sol:QUIZ
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'QUIZ':
    |        if(responseHash == keccak256(_response) && msg.value > 0.4 ether)
    |        {
  > |            msg.sender.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4ab2e8b268ae0d5daca0bfe8dccfe674c07c7b9d.sol(11)

[33mWarning[0m for DAOConstantGas in contract 'QUIZ':
    |
    |    function Stop() public payable isAdmin {
  > |        msg.sender.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4ab2e8b268ae0d5daca0bfe8dccfe674c07c7b9d.sol(29)

[33mWarning[0m for LockedEther in contract 'QUIZ':
    |pragma solidity ^0.4.25;
    |
  > |contract QUIZ
    |{
    |    function Try(string _response) external payable 
  at /home/jiaming/mavs_srcs/contract@0x4ab2e8b268ae0d5daca0bfe8dccfe674c07c7b9d.sol(3)

[31mViolation[0m for TODAmount in contract 'QUIZ':
    |        if(responseHash == keccak256(_response) && msg.value > 0.4 ether)
    |        {
  > |            msg.sender.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4ab2e8b268ae0d5daca0bfe8dccfe674c07c7b9d.sol(11)

[31mViolation[0m for TODAmount in contract 'QUIZ':
    |
    |    function Stop() public payable isAdmin {
  > |        msg.sender.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4ab2e8b268ae0d5daca0bfe8dccfe674c07c7b9d.sol(29)

[33mWarning[0m for TODReceiver in contract 'QUIZ':
    |        if(responseHash == keccak256(_response) && msg.value > 0.4 ether)
    |        {
  > |            msg.sender.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4ab2e8b268ae0d5daca0bfe8dccfe674c07c7b9d.sol(11)

[33mWarning[0m for TODReceiver in contract 'QUIZ':
    |
    |    function Stop() public payable isAdmin {
  > |        msg.sender.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4ab2e8b268ae0d5daca0bfe8dccfe674c07c7b9d.sol(29)

[33mWarning[0m for UnhandledException in contract 'QUIZ':
    |        if(responseHash == keccak256(_response) && msg.value > 0.4 ether)
    |        {
  > |            msg.sender.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4ab2e8b268ae0d5daca0bfe8dccfe674c07c7b9d.sol(11)

[33mWarning[0m for UnhandledException in contract 'QUIZ':
    |
    |    function Stop() public payable isAdmin {
  > |        msg.sender.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4ab2e8b268ae0d5daca0bfe8dccfe674c07c7b9d.sol(29)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'QUIZ':
    |        if(responseHash == keccak256(_response) && msg.value > 0.4 ether)
    |        {
  > |            msg.sender.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4ab2e8b268ae0d5daca0bfe8dccfe674c07c7b9d.sol(11)

[31mViolation[0m for UnrestrictedWrite in contract 'QUIZ':
    |pragma solidity ^0.4.25;
    |
  > |contract QUIZ
    |{
    |    function Try(string _response) external payable 
  at /home/jiaming/mavs_srcs/contract@0x4ab2e8b268ae0d5daca0bfe8dccfe674c07c7b9d.sol(3)

[31mViolation[0m for UnrestrictedWrite in contract 'QUIZ':
    |    function Start(string _question, string _response) public payable isAdmin{
    |        if(responseHash==0x0){
  > |            responseHash = keccak256(_response);
    |            question = _question;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x4ab2e8b268ae0d5daca0bfe8dccfe674c07c7b9d.sol(23)

[31mViolation[0m for UnrestrictedWrite in contract 'QUIZ':
    |    function New(string _question, bytes32 _responseHash) public payable isAdmin {
    |        question = _question;
  > |        responseHash = _responseHash;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4ab2e8b268ae0d5daca0bfe8dccfe674c07c7b9d.sol(34)


