Processing contract: /home/jiaming/mavs_srcs/contract@0x600fa06479e92164a1fe2929653d766b12e727c7.sol:enigma_games
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'enigma_games':
    |        if(responseHash == keccak256(_response) && msg.value > 2 ether)
    |        {
  > |            msg.sender.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x600fa06479e92164a1fe2929653d766b12e727c7.sol(11)

[33mWarning[0m for DAOConstantGas in contract 'enigma_games':
    |
    |    function Stop() public payable isAdmin {
  > |        msg.sender.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x600fa06479e92164a1fe2929653d766b12e727c7.sol(29)

[33mWarning[0m for LockedEther in contract 'enigma_games':
    |pragma solidity ^0.4.25;
    |
  > |contract enigma_games
    |{
    |    function Try(string _response) external payable 
  at /home/jiaming/mavs_srcs/contract@0x600fa06479e92164a1fe2929653d766b12e727c7.sol(3)

[31mViolation[0m for TODAmount in contract 'enigma_games':
    |        if(responseHash == keccak256(_response) && msg.value > 2 ether)
    |        {
  > |            msg.sender.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x600fa06479e92164a1fe2929653d766b12e727c7.sol(11)

[31mViolation[0m for TODAmount in contract 'enigma_games':
    |
    |    function Stop() public payable isAdmin {
  > |        msg.sender.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x600fa06479e92164a1fe2929653d766b12e727c7.sol(29)

[33mWarning[0m for TODReceiver in contract 'enigma_games':
    |        if(responseHash == keccak256(_response) && msg.value > 2 ether)
    |        {
  > |            msg.sender.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x600fa06479e92164a1fe2929653d766b12e727c7.sol(11)

[33mWarning[0m for TODReceiver in contract 'enigma_games':
    |
    |    function Stop() public payable isAdmin {
  > |        msg.sender.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x600fa06479e92164a1fe2929653d766b12e727c7.sol(29)

[33mWarning[0m for UnhandledException in contract 'enigma_games':
    |        if(responseHash == keccak256(_response) && msg.value > 2 ether)
    |        {
  > |            msg.sender.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x600fa06479e92164a1fe2929653d766b12e727c7.sol(11)

[33mWarning[0m for UnhandledException in contract 'enigma_games':
    |
    |    function Stop() public payable isAdmin {
  > |        msg.sender.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x600fa06479e92164a1fe2929653d766b12e727c7.sol(29)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'enigma_games':
    |        if(responseHash == keccak256(_response) && msg.value > 2 ether)
    |        {
  > |            msg.sender.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x600fa06479e92164a1fe2929653d766b12e727c7.sol(11)

[31mViolation[0m for UnrestrictedWrite in contract 'enigma_games':
    |pragma solidity ^0.4.25;
    |
  > |contract enigma_games
    |{
    |    function Try(string _response) external payable 
  at /home/jiaming/mavs_srcs/contract@0x600fa06479e92164a1fe2929653d766b12e727c7.sol(3)

[31mViolation[0m for UnrestrictedWrite in contract 'enigma_games':
    |    function Start(string _question, string _response) public payable isAdmin{
    |        if(responseHash==0x0){
  > |            responseHash = keccak256(_response);
    |            question = _question;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x600fa06479e92164a1fe2929653d766b12e727c7.sol(23)

[31mViolation[0m for UnrestrictedWrite in contract 'enigma_games':
    |    function New(string _question, bytes32 _responseHash) public payable isAdmin {
    |        question = _question;
  > |        responseHash = _responseHash;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x600fa06479e92164a1fe2929653d766b12e727c7.sol(34)


