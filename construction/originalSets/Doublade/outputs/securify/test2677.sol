Processing contract: /home/jiaming/mavs_srcs/contract@0xaec8162438b83646518f3bf3a70b048979f81fab.sol:DEDICATED
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'DEDICATED':
    |        if(reciver==msg.sender&&now>unlockTime)
    |        {
  > |            msg.sender.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xaec8162438b83646518f3bf3a70b048979f81fab.sol(40)

[33mWarning[0m for LockedEther in contract 'DEDICATED':
    |pragma solidity ^0.4.19;
    |
  > |contract DEDICATED
    |{
    |    address sender;
  at /home/jiaming/mavs_srcs/contract@0xaec8162438b83646518f3bf3a70b048979f81fab.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'DEDICATED':
    |    uint unlockTime;
    | 
  > |    function PutGift(address _reciver)
    |    public
    |    payable
  at /home/jiaming/mavs_srcs/contract@0xaec8162438b83646518f3bf3a70b048979f81fab.sol(13)

[31mViolation[0m for MissingInputValidation in contract 'DEDICATED':
    |    }
    |    
  > |    function SetGiftTime(uint _unixTime)
    |    public
    |    {
  at /home/jiaming/mavs_srcs/contract@0xaec8162438b83646518f3bf3a70b048979f81fab.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'DEDICATED':
    |    }
    |    
  > |    function GetGift()
    |    public
    |    payable
  at /home/jiaming/mavs_srcs/contract@0xaec8162438b83646518f3bf3a70b048979f81fab.sol(34)

[33mWarning[0m for MissingInputValidation in contract 'DEDICATED':
    |    }
    |    
  > |    function CloseGift()
    |    public
    |    {
  at /home/jiaming/mavs_srcs/contract@0xaec8162438b83646518f3bf3a70b048979f81fab.sol(44)

[31mViolation[0m for TODAmount in contract 'DEDICATED':
    |        if(reciver==msg.sender&&now>unlockTime)
    |        {
  > |            msg.sender.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xaec8162438b83646518f3bf3a70b048979f81fab.sol(40)

[33mWarning[0m for TODReceiver in contract 'DEDICATED':
    |        if(reciver==msg.sender&&now>unlockTime)
    |        {
  > |            msg.sender.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xaec8162438b83646518f3bf3a70b048979f81fab.sol(40)

[33mWarning[0m for UnhandledException in contract 'DEDICATED':
    |        if(reciver==msg.sender&&now>unlockTime)
    |        {
  > |            msg.sender.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xaec8162438b83646518f3bf3a70b048979f81fab.sol(40)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DEDICATED':
    |        if(reciver==msg.sender&&now>unlockTime)
    |        {
  > |            msg.sender.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xaec8162438b83646518f3bf3a70b048979f81fab.sol(40)

[31mViolation[0m for UnrestrictedWrite in contract 'DEDICATED':
    |        if( (!closed&&(msg.value > 1 ether)) || sender==0x00 )
    |        {
  > |            sender = msg.sender;
    |            reciver = _reciver;
    |            unlockTime = now;
  at /home/jiaming/mavs_srcs/contract@0xaec8162438b83646518f3bf3a70b048979f81fab.sol(19)

[31mViolation[0m for UnrestrictedWrite in contract 'DEDICATED':
    |        {
    |            sender = msg.sender;
  > |            reciver = _reciver;
    |            unlockTime = now;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xaec8162438b83646518f3bf3a70b048979f81fab.sol(20)

[31mViolation[0m for UnrestrictedWrite in contract 'DEDICATED':
    |            sender = msg.sender;
    |            reciver = _reciver;
  > |            unlockTime = now;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xaec8162438b83646518f3bf3a70b048979f81fab.sol(21)

[33mWarning[0m for UnrestrictedWrite in contract 'DEDICATED':
    |        if(msg.sender==sender)
    |        {
  > |            unlockTime = _unixTime;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xaec8162438b83646518f3bf3a70b048979f81fab.sol(30)

[33mWarning[0m for UnrestrictedWrite in contract 'DEDICATED':
    |        if(sender == msg.sender && reciver != 0x0 )
    |        {
  > |           closed=true;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xaec8162438b83646518f3bf3a70b048979f81fab.sol(49)


