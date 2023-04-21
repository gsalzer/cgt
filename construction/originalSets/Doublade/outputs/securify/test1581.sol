Processing contract: /home/jiaming/mavs_srcs/contract@0x64669148bca4f3d1216127a46380a67b37bbf63e.sol:GIFT_SENDER
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'GIFT_SENDER':
    |        if(hashPass == sha3(pass))
    |        {
  > |            msg.sender.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x64669148bca4f3d1216127a46380a67b37bbf63e.sol(32)

[33mWarning[0m for DAOConstantGas in contract 'GIFT_SENDER':
    |        if(msg.sender==sender)
    |        {
  > |            sender.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x64669148bca4f3d1216127a46380a67b37bbf63e.sol(42)

[33mWarning[0m for LockedEther in contract 'GIFT_SENDER':
    |pragma solidity ^0.4.19;
    |
  > |contract GIFT_SENDER
    |{
    |    bool passHasBeenSet = false;
  at /home/jiaming/mavs_srcs/contract@0x64669148bca4f3d1216127a46380a67b37bbf63e.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'GIFT_SENDER':
    |    function GetHash(bytes pass) public constant returns (bytes32) {return sha3(pass);}
    |    
  > |    function SetPass(bytes32 hash)
    |    public
    |    payable
  at /home/jiaming/mavs_srcs/contract@0x64669148bca4f3d1216127a46380a67b37bbf63e.sol(15)

[31mViolation[0m for MissingInputValidation in contract 'GIFT_SENDER':
    |    }
    |    
  > |    function GetGift(bytes pass)
    |    external
    |    payable
  at /home/jiaming/mavs_srcs/contract@0x64669148bca4f3d1216127a46380a67b37bbf63e.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'GIFT_SENDER':
    |    address sender;
    |    
  > |    bytes32 public hashPass;
    |	
    |	function() public payable{}
  at /home/jiaming/mavs_srcs/contract@0x64669148bca4f3d1216127a46380a67b37bbf63e.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'GIFT_SENDER':
    |	function() public payable{}
    |    
  > |    function GetHash(bytes pass) public constant returns (bytes32) {return sha3(pass);}
    |    
    |    function SetPass(bytes32 hash)
  at /home/jiaming/mavs_srcs/contract@0x64669148bca4f3d1216127a46380a67b37bbf63e.sol(13)

[33mWarning[0m for MissingInputValidation in contract 'GIFT_SENDER':
    |    }
    |    
  > |    function Revoce()
    |    public
    |    payable
  at /home/jiaming/mavs_srcs/contract@0x64669148bca4f3d1216127a46380a67b37bbf63e.sol(36)

[33mWarning[0m for MissingInputValidation in contract 'GIFT_SENDER':
    |    }
    |    
  > |    function PassHasBeenSet(bytes32 hash)
    |    public
    |    {
  at /home/jiaming/mavs_srcs/contract@0x64669148bca4f3d1216127a46380a67b37bbf63e.sol(46)

[31mViolation[0m for TODAmount in contract 'GIFT_SENDER':
    |        if(hashPass == sha3(pass))
    |        {
  > |            msg.sender.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x64669148bca4f3d1216127a46380a67b37bbf63e.sol(32)

[31mViolation[0m for TODAmount in contract 'GIFT_SENDER':
    |        if(msg.sender==sender)
    |        {
  > |            sender.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x64669148bca4f3d1216127a46380a67b37bbf63e.sol(42)

[31mViolation[0m for TODReceiver in contract 'GIFT_SENDER':
    |        if(msg.sender==sender)
    |        {
  > |            sender.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x64669148bca4f3d1216127a46380a67b37bbf63e.sol(42)

[33mWarning[0m for TODReceiver in contract 'GIFT_SENDER':
    |        if(hashPass == sha3(pass))
    |        {
  > |            msg.sender.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x64669148bca4f3d1216127a46380a67b37bbf63e.sol(32)

[33mWarning[0m for UnhandledException in contract 'GIFT_SENDER':
    |        if(hashPass == sha3(pass))
    |        {
  > |            msg.sender.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x64669148bca4f3d1216127a46380a67b37bbf63e.sol(32)

[33mWarning[0m for UnhandledException in contract 'GIFT_SENDER':
    |        if(msg.sender==sender)
    |        {
  > |            sender.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x64669148bca4f3d1216127a46380a67b37bbf63e.sol(42)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GIFT_SENDER':
    |        if(msg.sender==sender)
    |        {
  > |            sender.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x64669148bca4f3d1216127a46380a67b37bbf63e.sol(42)

[31mViolation[0m for UnrestrictedWrite in contract 'GIFT_SENDER':
    |        if(!passHasBeenSet&&(msg.value > 1 ether))
    |        {
  > |            hashPass = hash;
    |            sender = msg.sender;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x64669148bca4f3d1216127a46380a67b37bbf63e.sol(21)

[31mViolation[0m for UnrestrictedWrite in contract 'GIFT_SENDER':
    |        {
    |            hashPass = hash;
  > |            sender = msg.sender;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x64669148bca4f3d1216127a46380a67b37bbf63e.sol(22)

[31mViolation[0m for UnrestrictedWrite in contract 'GIFT_SENDER':
    |        if(hash==hashPass)
    |        {
  > |           passHasBeenSet=true;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x64669148bca4f3d1216127a46380a67b37bbf63e.sol(51)


