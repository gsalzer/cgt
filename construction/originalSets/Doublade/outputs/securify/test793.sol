Processing contract: /home/jiaming/mavs_srcs/contract@0x3268ecb4fcba1ca9f43da8ed05ffc80382cef1da.sol:AddressLottery
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3268ecb4fcba1ca9f43da8ed05ffc80382cef1da.sol:Ownable
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
  at /home/jiaming/mavs_srcs/contract@0x3268ecb4fcba1ca9f43da8ed05ffc80382cef1da.sol(41)

[33mWarning[0m for LockedEther in contract 'AddressLottery':
    |}
    |
  > |contract AddressLottery is Ownable{
    |    struct SeedComponents{
    |        address addr;
  at /home/jiaming/mavs_srcs/contract@0x3268ecb4fcba1ca9f43da8ed05ffc80382cef1da.sol(15)

[31mViolation[0m for TODAmount in contract 'AddressLottery':
    |        {
    |            participated[msg.sender] = true;
  > |            require(msg.sender.call.value(this.balance)());
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3268ecb4fcba1ca9f43da8ed05ffc80382cef1da.sol(41)

[33mWarning[0m for TODReceiver in contract 'AddressLottery':
    |        {
    |            participated[msg.sender] = true;
  > |            require(msg.sender.call.value(this.balance)());
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3268ecb4fcba1ca9f43da8ed05ffc80382cef1da.sol(41)

[33mWarning[0m for UnhandledException in contract 'AddressLottery':
    |        {
    |            participated[msg.sender] = true;
  > |            require(msg.sender.call.value(this.balance)());
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3268ecb4fcba1ca9f43da8ed05ffc80382cef1da.sol(41)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AddressLottery':
    |        {
    |            participated[msg.sender] = true;
  > |            require(msg.sender.call.value(this.balance)());
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3268ecb4fcba1ca9f43da8ed05ffc80382cef1da.sol(41)

[33mWarning[0m for UnrestrictedWrite in contract 'AddressLottery':
    |        if ( luckyNumberOfAddress(msg.sender) == luckyNumber)
    |        {
  > |            participated[msg.sender] = true;
    |            require(msg.sender.call.value(this.balance)());
    |        }
  at /home/jiaming/mavs_srcs/contract@0x3268ecb4fcba1ca9f43da8ed05ffc80382cef1da.sol(40)

[33mWarning[0m for UnrestrictedWrite in contract 'AddressLottery':
    |    
    |    function reseed(SeedComponents components) internal{
  > |        secretSeed = uint256(keccak256(components.addr, components.additionalSeed1, components.additionalSeed2, components.additionalSeed3));
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x3268ecb4fcba1ca9f43da8ed05ffc80382cef1da.sol(51)

[33mWarning[0m for UnrestrictedWrite in contract 'AddressLottery':
    |    function forceReseed() onlyOwner{
    |        SeedComponents s;
  > |        s.addr = msg.sender;
    |        s.additionalSeed1 = tx.gasprice * 13;
    |        s.additionalSeed2 = block.number * 7;
  at /home/jiaming/mavs_srcs/contract@0x3268ecb4fcba1ca9f43da8ed05ffc80382cef1da.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'AddressLottery':
    |        SeedComponents s;
    |        s.addr = msg.sender;
  > |        s.additionalSeed1 = tx.gasprice * 13;
    |        s.additionalSeed2 = block.number * 7;
    |        s.additionalSeed3 = uint256(block.blockhash(block.number - 1));
  at /home/jiaming/mavs_srcs/contract@0x3268ecb4fcba1ca9f43da8ed05ffc80382cef1da.sol(61)

[33mWarning[0m for UnrestrictedWrite in contract 'AddressLottery':
    |        s.addr = msg.sender;
    |        s.additionalSeed1 = tx.gasprice * 13;
  > |        s.additionalSeed2 = block.number * 7;
    |        s.additionalSeed3 = uint256(block.blockhash(block.number - 1));
    |        reseed(s);
  at /home/jiaming/mavs_srcs/contract@0x3268ecb4fcba1ca9f43da8ed05ffc80382cef1da.sol(62)

[33mWarning[0m for UnrestrictedWrite in contract 'AddressLottery':
    |        s.additionalSeed1 = tx.gasprice * 13;
    |        s.additionalSeed2 = block.number * 7;
  > |        s.additionalSeed3 = uint256(block.blockhash(block.number - 1));
    |        reseed(s);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3268ecb4fcba1ca9f43da8ed05ffc80382cef1da.sol(63)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |pragma solidity ^0.4.0;
    |
  > |contract Ownable {
    |  address owner;
    |  function Ownable() {
  at /home/jiaming/mavs_srcs/contract@0x3268ecb4fcba1ca9f43da8ed05ffc80382cef1da.sol(3)


