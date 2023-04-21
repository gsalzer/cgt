Processing contract: /home/jiaming/mavs_srcs/contract@0x2cc8e271f11934f5fa15942dfda2b59432c2e0f3.sol:privateTransfer
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'privateTransfer':
    |        if(reciver==msg.sender&&now>unlockTime)
    |        {
  > |            msg.sender.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2cc8e271f11934f5fa15942dfda2b59432c2e0f3.sol(40)

[33mWarning[0m for LockedEther in contract 'privateTransfer':
    |pragma solidity ^0.4.19;
    |
  > |contract privateTransfer
    |{
    |    address sender;
  at /home/jiaming/mavs_srcs/contract@0x2cc8e271f11934f5fa15942dfda2b59432c2e0f3.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'privateTransfer':
    |    uint unlockTime;
    | 
  > |    function PutGift(address _reciver)
    |    public
    |    payable
  at /home/jiaming/mavs_srcs/contract@0x2cc8e271f11934f5fa15942dfda2b59432c2e0f3.sol(13)

[31mViolation[0m for MissingInputValidation in contract 'privateTransfer':
    |    }
    |    
  > |    function SetGiftTime(uint _unixTime)
    |    public
    |    {
  at /home/jiaming/mavs_srcs/contract@0x2cc8e271f11934f5fa15942dfda2b59432c2e0f3.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'privateTransfer':
    |    }
    |    
  > |    function GetGift()
    |    public
    |    payable
  at /home/jiaming/mavs_srcs/contract@0x2cc8e271f11934f5fa15942dfda2b59432c2e0f3.sol(34)

[33mWarning[0m for MissingInputValidation in contract 'privateTransfer':
    |    }
    |    
  > |    function CloseGift()
    |    public
    |    {
  at /home/jiaming/mavs_srcs/contract@0x2cc8e271f11934f5fa15942dfda2b59432c2e0f3.sol(44)

[31mViolation[0m for TODAmount in contract 'privateTransfer':
    |        if(reciver==msg.sender&&now>unlockTime)
    |        {
  > |            msg.sender.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2cc8e271f11934f5fa15942dfda2b59432c2e0f3.sol(40)

[33mWarning[0m for TODReceiver in contract 'privateTransfer':
    |        if(reciver==msg.sender&&now>unlockTime)
    |        {
  > |            msg.sender.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2cc8e271f11934f5fa15942dfda2b59432c2e0f3.sol(40)

[33mWarning[0m for UnhandledException in contract 'privateTransfer':
    |        if(reciver==msg.sender&&now>unlockTime)
    |        {
  > |            msg.sender.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2cc8e271f11934f5fa15942dfda2b59432c2e0f3.sol(40)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'privateTransfer':
    |        if(reciver==msg.sender&&now>unlockTime)
    |        {
  > |            msg.sender.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2cc8e271f11934f5fa15942dfda2b59432c2e0f3.sol(40)

[31mViolation[0m for UnrestrictedWrite in contract 'privateTransfer':
    |        if( (!closed&&(msg.value > 1 ether)) || sender==0x00 )
    |        {
  > |            sender = msg.sender;
    |            reciver = _reciver;
    |            unlockTime = now;
  at /home/jiaming/mavs_srcs/contract@0x2cc8e271f11934f5fa15942dfda2b59432c2e0f3.sol(19)

[31mViolation[0m for UnrestrictedWrite in contract 'privateTransfer':
    |        {
    |            sender = msg.sender;
  > |            reciver = _reciver;
    |            unlockTime = now;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x2cc8e271f11934f5fa15942dfda2b59432c2e0f3.sol(20)

[31mViolation[0m for UnrestrictedWrite in contract 'privateTransfer':
    |            sender = msg.sender;
    |            reciver = _reciver;
  > |            unlockTime = now;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2cc8e271f11934f5fa15942dfda2b59432c2e0f3.sol(21)

[33mWarning[0m for UnrestrictedWrite in contract 'privateTransfer':
    |        if(msg.sender==sender)
    |        {
  > |            unlockTime = _unixTime;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2cc8e271f11934f5fa15942dfda2b59432c2e0f3.sol(30)

[33mWarning[0m for UnrestrictedWrite in contract 'privateTransfer':
    |        if(sender == msg.sender && reciver != 0x0 )
    |        {
  > |           closed=true;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2cc8e271f11934f5fa15942dfda2b59432c2e0f3.sol(49)


