Processing contract: /home/jiaming/mavs_srcs/contract@0x6f905e47d3e6a9cc286b8250181ee5a0441acc81.sol:PRESENT_1_ETH
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'PRESENT_1_ETH':
    |        if(reciver==msg.sender&&now>unlockTime)
    |        {
  > |            msg.sender.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6f905e47d3e6a9cc286b8250181ee5a0441acc81.sol(40)

[33mWarning[0m for LockedEther in contract 'PRESENT_1_ETH':
    |pragma solidity ^0.4.19;
    |
  > |contract PRESENT_1_ETH
    |{
    |    address sender;
  at /home/jiaming/mavs_srcs/contract@0x6f905e47d3e6a9cc286b8250181ee5a0441acc81.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'PRESENT_1_ETH':
    |    uint unlockTime;
    | 
  > |    function PutGift(address _reciver)
    |    public
    |    payable
  at /home/jiaming/mavs_srcs/contract@0x6f905e47d3e6a9cc286b8250181ee5a0441acc81.sol(13)

[31mViolation[0m for MissingInputValidation in contract 'PRESENT_1_ETH':
    |    }
    |    
  > |    function SetGiftTime(uint _unixTime)
    |    public
    |    {
  at /home/jiaming/mavs_srcs/contract@0x6f905e47d3e6a9cc286b8250181ee5a0441acc81.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'PRESENT_1_ETH':
    |    }
    |    
  > |    function GetGift()
    |    public
    |    payable
  at /home/jiaming/mavs_srcs/contract@0x6f905e47d3e6a9cc286b8250181ee5a0441acc81.sol(34)

[33mWarning[0m for MissingInputValidation in contract 'PRESENT_1_ETH':
    |    }
    |    
  > |    function CloseGift()
    |    public
    |    {
  at /home/jiaming/mavs_srcs/contract@0x6f905e47d3e6a9cc286b8250181ee5a0441acc81.sol(44)

[31mViolation[0m for TODAmount in contract 'PRESENT_1_ETH':
    |        if(reciver==msg.sender&&now>unlockTime)
    |        {
  > |            msg.sender.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6f905e47d3e6a9cc286b8250181ee5a0441acc81.sol(40)

[33mWarning[0m for TODReceiver in contract 'PRESENT_1_ETH':
    |        if(reciver==msg.sender&&now>unlockTime)
    |        {
  > |            msg.sender.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6f905e47d3e6a9cc286b8250181ee5a0441acc81.sol(40)

[33mWarning[0m for UnhandledException in contract 'PRESENT_1_ETH':
    |        if(reciver==msg.sender&&now>unlockTime)
    |        {
  > |            msg.sender.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6f905e47d3e6a9cc286b8250181ee5a0441acc81.sol(40)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PRESENT_1_ETH':
    |        if(reciver==msg.sender&&now>unlockTime)
    |        {
  > |            msg.sender.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6f905e47d3e6a9cc286b8250181ee5a0441acc81.sol(40)

[31mViolation[0m for UnrestrictedWrite in contract 'PRESENT_1_ETH':
    |        if( (!closed&&(msg.value > 1 ether)) || sender==0x00 )
    |        {
  > |            sender = msg.sender;
    |            reciver = _reciver;
    |            unlockTime = now;
  at /home/jiaming/mavs_srcs/contract@0x6f905e47d3e6a9cc286b8250181ee5a0441acc81.sol(19)

[31mViolation[0m for UnrestrictedWrite in contract 'PRESENT_1_ETH':
    |        {
    |            sender = msg.sender;
  > |            reciver = _reciver;
    |            unlockTime = now;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x6f905e47d3e6a9cc286b8250181ee5a0441acc81.sol(20)

[31mViolation[0m for UnrestrictedWrite in contract 'PRESENT_1_ETH':
    |            sender = msg.sender;
    |            reciver = _reciver;
  > |            unlockTime = now;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6f905e47d3e6a9cc286b8250181ee5a0441acc81.sol(21)

[33mWarning[0m for UnrestrictedWrite in contract 'PRESENT_1_ETH':
    |        if(msg.sender==sender)
    |        {
  > |            unlockTime = _unixTime;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6f905e47d3e6a9cc286b8250181ee5a0441acc81.sol(30)

[33mWarning[0m for UnrestrictedWrite in contract 'PRESENT_1_ETH':
    |        if(sender == msg.sender && reciver != 0x0 )
    |        {
  > |           closed=true;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6f905e47d3e6a9cc286b8250181ee5a0441acc81.sol(49)


