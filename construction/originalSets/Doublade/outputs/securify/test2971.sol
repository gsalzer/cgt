Processing contract: /home/jiaming/mavs_srcs/contract@0xc304349d7cc07407b7844d54218d29d1a449b854.sol:GIFT_FOR_MIKLE
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'GIFT_FOR_MIKLE':
    |        if(reciver==msg.sender&&now>unlockTime)
    |        {
  > |            msg.sender.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc304349d7cc07407b7844d54218d29d1a449b854.sol(40)

[33mWarning[0m for LockedEther in contract 'GIFT_FOR_MIKLE':
    |pragma solidity ^0.4.20;
    |
  > |contract GIFT_FOR_MIKLE
    |{
    |    address sender;
  at /home/jiaming/mavs_srcs/contract@0xc304349d7cc07407b7844d54218d29d1a449b854.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'GIFT_FOR_MIKLE':
    |    uint unlockTime;
    | 
  > |    function PutGift(address _reciver)
    |    public
    |    payable
  at /home/jiaming/mavs_srcs/contract@0xc304349d7cc07407b7844d54218d29d1a449b854.sol(13)

[31mViolation[0m for MissingInputValidation in contract 'GIFT_FOR_MIKLE':
    |    }
    |    
  > |    function SetGiftTime(uint _unixTime)
    |    public
    |    {
  at /home/jiaming/mavs_srcs/contract@0xc304349d7cc07407b7844d54218d29d1a449b854.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'GIFT_FOR_MIKLE':
    |    }
    |    
  > |    function GetGift()
    |    public
    |    payable
  at /home/jiaming/mavs_srcs/contract@0xc304349d7cc07407b7844d54218d29d1a449b854.sol(34)

[33mWarning[0m for MissingInputValidation in contract 'GIFT_FOR_MIKLE':
    |    }
    |    
  > |    function CloseGift()
    |    public
    |    {
  at /home/jiaming/mavs_srcs/contract@0xc304349d7cc07407b7844d54218d29d1a449b854.sol(44)

[31mViolation[0m for TODAmount in contract 'GIFT_FOR_MIKLE':
    |        if(reciver==msg.sender&&now>unlockTime)
    |        {
  > |            msg.sender.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc304349d7cc07407b7844d54218d29d1a449b854.sol(40)

[33mWarning[0m for TODReceiver in contract 'GIFT_FOR_MIKLE':
    |        if(reciver==msg.sender&&now>unlockTime)
    |        {
  > |            msg.sender.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc304349d7cc07407b7844d54218d29d1a449b854.sol(40)

[33mWarning[0m for UnhandledException in contract 'GIFT_FOR_MIKLE':
    |        if(reciver==msg.sender&&now>unlockTime)
    |        {
  > |            msg.sender.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc304349d7cc07407b7844d54218d29d1a449b854.sol(40)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GIFT_FOR_MIKLE':
    |        if(reciver==msg.sender&&now>unlockTime)
    |        {
  > |            msg.sender.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc304349d7cc07407b7844d54218d29d1a449b854.sol(40)

[31mViolation[0m for UnrestrictedWrite in contract 'GIFT_FOR_MIKLE':
    |        if( (!closed&&(msg.value > 1 ether)) || sender==0x00 )
    |        {
  > |            sender = msg.sender;
    |            reciver = _reciver;
    |            unlockTime = now;
  at /home/jiaming/mavs_srcs/contract@0xc304349d7cc07407b7844d54218d29d1a449b854.sol(19)

[31mViolation[0m for UnrestrictedWrite in contract 'GIFT_FOR_MIKLE':
    |        {
    |            sender = msg.sender;
  > |            reciver = _reciver;
    |            unlockTime = now;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xc304349d7cc07407b7844d54218d29d1a449b854.sol(20)

[31mViolation[0m for UnrestrictedWrite in contract 'GIFT_FOR_MIKLE':
    |            sender = msg.sender;
    |            reciver = _reciver;
  > |            unlockTime = now;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc304349d7cc07407b7844d54218d29d1a449b854.sol(21)

[33mWarning[0m for UnrestrictedWrite in contract 'GIFT_FOR_MIKLE':
    |        if(msg.sender==sender)
    |        {
  > |            unlockTime = _unixTime;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc304349d7cc07407b7844d54218d29d1a449b854.sol(30)

[33mWarning[0m for UnrestrictedWrite in contract 'GIFT_FOR_MIKLE':
    |        if(sender == msg.sender && reciver != 0x0 )
    |        {
  > |           closed=true;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc304349d7cc07407b7844d54218d29d1a449b854.sol(49)


