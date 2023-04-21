Processing contract: /home/jiaming/mavs_srcs/contract@0x6324d9d0a23f5ddba165bf8cc61da455350895f2.sol:AddressLottery
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAO in contract 'AddressLottery':
    |        {
    |            participated[msg.sender] = true;
  > |            require(msg.sender.call.value(this.balance)());
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6324d9d0a23f5ddba165bf8cc61da455350895f2.sol(39)

[33mWarning[0m for LockedEther in contract 'AddressLottery':
    |pragma solidity ^0.4.0;
    |
  > |contract AddressLottery{
    |    struct SeedComponents{
    |        uint component1;
  at /home/jiaming/mavs_srcs/contract@0x6324d9d0a23f5ddba165bf8cc61da455350895f2.sol(3)

[31mViolation[0m for TODAmount in contract 'AddressLottery':
    |        {
    |            participated[msg.sender] = true;
  > |            require(msg.sender.call.value(this.balance)());
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6324d9d0a23f5ddba165bf8cc61da455350895f2.sol(39)

[33mWarning[0m for TODReceiver in contract 'AddressLottery':
    |        {
    |            participated[msg.sender] = true;
  > |            require(msg.sender.call.value(this.balance)());
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6324d9d0a23f5ddba165bf8cc61da455350895f2.sol(39)

[33mWarning[0m for UnhandledException in contract 'AddressLottery':
    |        {
    |            participated[msg.sender] = true;
  > |            require(msg.sender.call.value(this.balance)());
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6324d9d0a23f5ddba165bf8cc61da455350895f2.sol(39)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AddressLottery':
    |        {
    |            participated[msg.sender] = true;
  > |            require(msg.sender.call.value(this.balance)());
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6324d9d0a23f5ddba165bf8cc61da455350895f2.sol(39)

[33mWarning[0m for UnrestrictedWrite in contract 'AddressLottery':
    |        if ( luckyNumberOfAddress(msg.sender) == luckyNumber)
    |        {
  > |            participated[msg.sender] = true;
    |            require(msg.sender.call.value(this.balance)());
    |        }
  at /home/jiaming/mavs_srcs/contract@0x6324d9d0a23f5ddba165bf8cc61da455350895f2.sol(38)

[33mWarning[0m for UnrestrictedWrite in contract 'AddressLottery':
    |    
    |    function reseed(SeedComponents components) internal{
  > |        secretSeed = uint256(keccak256(
    |            components.component1,
    |            components.component2,
  at /home/jiaming/mavs_srcs/contract@0x6324d9d0a23f5ddba165bf8cc61da455350895f2.sol(49)

[33mWarning[0m for UnrestrictedWrite in contract 'AddressLottery':
    |            components.component4
    |        ));
  > |        lastReseed = block.number;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x6324d9d0a23f5ddba165bf8cc61da455350895f2.sol(55)

[33mWarning[0m for UnrestrictedWrite in contract 'AddressLottery':
    |    function forceReseed() onlyOwner{
    |        SeedComponents s;
  > |        s.component1 = uint(msg.sender);
    |        s.component2 = uint256(block.blockhash(block.number - 1));
    |        s.component3 = block.number * 1337;
  at /home/jiaming/mavs_srcs/contract@0x6324d9d0a23f5ddba165bf8cc61da455350895f2.sol(64)

[33mWarning[0m for UnrestrictedWrite in contract 'AddressLottery':
    |        SeedComponents s;
    |        s.component1 = uint(msg.sender);
  > |        s.component2 = uint256(block.blockhash(block.number - 1));
    |        s.component3 = block.number * 1337;
    |        s.component4 = tx.gasprice * 13;
  at /home/jiaming/mavs_srcs/contract@0x6324d9d0a23f5ddba165bf8cc61da455350895f2.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'AddressLottery':
    |        s.component1 = uint(msg.sender);
    |        s.component2 = uint256(block.blockhash(block.number - 1));
  > |        s.component3 = block.number * 1337;
    |        s.component4 = tx.gasprice * 13;
    |        reseed(s);
  at /home/jiaming/mavs_srcs/contract@0x6324d9d0a23f5ddba165bf8cc61da455350895f2.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'AddressLottery':
    |        s.component2 = uint256(block.blockhash(block.number - 1));
    |        s.component3 = block.number * 1337;
  > |        s.component4 = tx.gasprice * 13;
    |        reseed(s);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6324d9d0a23f5ddba165bf8cc61da455350895f2.sol(67)


