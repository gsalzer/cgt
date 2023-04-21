Processing contract: /home/jiaming/mavs_srcs/contract@0x63065b3d5211a527bd0622250410d7f251a8148c.sol:QUICK_GAME
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'QUICK_GAME':
    |        if(responseHash == keccak256(_response) && msg.value > 1 ether)
    |        {
  > |            msg.sender.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x63065b3d5211a527bd0622250410d7f251a8148c.sol(11)

[33mWarning[0m for DAOConstantGas in contract 'QUICK_GAME':
    |
    |    function Stop() public payable isAdmin {
  > |        msg.sender.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x63065b3d5211a527bd0622250410d7f251a8148c.sol(29)

[33mWarning[0m for LockedEther in contract 'QUICK_GAME':
    |pragma solidity ^0.4.25;
    |
  > |contract QUICK_GAME
    |{
    |    function Try(string _response) external payable 
  at /home/jiaming/mavs_srcs/contract@0x63065b3d5211a527bd0622250410d7f251a8148c.sol(3)

[31mViolation[0m for TODAmount in contract 'QUICK_GAME':
    |        if(responseHash == keccak256(_response) && msg.value > 1 ether)
    |        {
  > |            msg.sender.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x63065b3d5211a527bd0622250410d7f251a8148c.sol(11)

[31mViolation[0m for TODAmount in contract 'QUICK_GAME':
    |
    |    function Stop() public payable isAdmin {
  > |        msg.sender.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x63065b3d5211a527bd0622250410d7f251a8148c.sol(29)

[33mWarning[0m for TODReceiver in contract 'QUICK_GAME':
    |        if(responseHash == keccak256(_response) && msg.value > 1 ether)
    |        {
  > |            msg.sender.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x63065b3d5211a527bd0622250410d7f251a8148c.sol(11)

[33mWarning[0m for TODReceiver in contract 'QUICK_GAME':
    |
    |    function Stop() public payable isAdmin {
  > |        msg.sender.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x63065b3d5211a527bd0622250410d7f251a8148c.sol(29)

[33mWarning[0m for UnhandledException in contract 'QUICK_GAME':
    |        if(responseHash == keccak256(_response) && msg.value > 1 ether)
    |        {
  > |            msg.sender.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x63065b3d5211a527bd0622250410d7f251a8148c.sol(11)

[33mWarning[0m for UnhandledException in contract 'QUICK_GAME':
    |
    |    function Stop() public payable isAdmin {
  > |        msg.sender.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x63065b3d5211a527bd0622250410d7f251a8148c.sol(29)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'QUICK_GAME':
    |        if(responseHash == keccak256(_response) && msg.value > 1 ether)
    |        {
  > |            msg.sender.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x63065b3d5211a527bd0622250410d7f251a8148c.sol(11)

[31mViolation[0m for UnrestrictedWrite in contract 'QUICK_GAME':
    |pragma solidity ^0.4.25;
    |
  > |contract QUICK_GAME
    |{
    |    function Try(string _response) external payable 
  at /home/jiaming/mavs_srcs/contract@0x63065b3d5211a527bd0622250410d7f251a8148c.sol(3)

[31mViolation[0m for UnrestrictedWrite in contract 'QUICK_GAME':
    |    function Start(string _question, string _response) public payable isAdmin{
    |        if(responseHash==0x0){
  > |            responseHash = keccak256(_response);
    |            question = _question;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x63065b3d5211a527bd0622250410d7f251a8148c.sol(23)

[31mViolation[0m for UnrestrictedWrite in contract 'QUICK_GAME':
    |    function New(string _question, bytes32 _responseHash) public payable isAdmin {
    |        question = _question;
  > |        responseHash = _responseHash;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x63065b3d5211a527bd0622250410d7f251a8148c.sol(34)


