Processing contract: /home/jiaming/mavs_srcs/contract@0x99bab102c0a03438bcfd70119f07ee646db26ddf.sol:GIFT_CARD
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'GIFT_CARD':
    |        if(hashPass == keccak256(_pass) && now>unlockTime && msg.sender==tx.origin)
    |        {
  > |            msg.sender.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x99bab102c0a03438bcfd70119f07ee646db26ddf.sol(23)

[33mWarning[0m for LockedEther in contract 'GIFT_CARD':
    |pragma solidity ^0.4.19;
    |
  > |contract GIFT_CARD
    |{
    |    function Put(bytes32 _hash, uint _unlockTime)
  at /home/jiaming/mavs_srcs/contract@0x99bab102c0a03438bcfd70119f07ee646db26ddf.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'GIFT_CARD':
    |contract GIFT_CARD
    |{
  > |    function Put(bytes32 _hash, uint _unlockTime)
    |    public
    |    payable
  at /home/jiaming/mavs_srcs/contract@0x99bab102c0a03438bcfd70119f07ee646db26ddf.sol(5)

[31mViolation[0m for MissingInputValidation in contract 'GIFT_CARD':
    |    }
    |    
  > |    function Take(bytes _pass)
    |    external
    |    payable
  at /home/jiaming/mavs_srcs/contract@0x99bab102c0a03438bcfd70119f07ee646db26ddf.sol(16)

[31mViolation[0m for MissingInputValidation in contract 'GIFT_CARD':
    |    }
    |    
  > |    function Lock(bytes _pass)
    |    external
    |    payable
  at /home/jiaming/mavs_srcs/contract@0x99bab102c0a03438bcfd70119f07ee646db26ddf.sol(27)

[33mWarning[0m for MissingInputValidation in contract 'GIFT_CARD':
    |    }
    |    
  > |    bytes32 public hashPass;
    |    uint public unlockTime;
    |    bool public locked = false;
  at /home/jiaming/mavs_srcs/contract@0x99bab102c0a03438bcfd70119f07ee646db26ddf.sol(41)

[33mWarning[0m for MissingInputValidation in contract 'GIFT_CARD':
    |    
    |    bytes32 public hashPass;
  > |    uint public unlockTime;
    |    bool public locked = false;
    |    
  at /home/jiaming/mavs_srcs/contract@0x99bab102c0a03438bcfd70119f07ee646db26ddf.sol(42)

[33mWarning[0m for MissingInputValidation in contract 'GIFT_CARD':
    |    bytes32 public hashPass;
    |    uint public unlockTime;
  > |    bool public locked = false;
    |    
    |    function GetHash(bytes pass) public constant returns (bytes32) {return keccak256(pass);}
  at /home/jiaming/mavs_srcs/contract@0x99bab102c0a03438bcfd70119f07ee646db26ddf.sol(43)

[33mWarning[0m for MissingInputValidation in contract 'GIFT_CARD':
    |    bool public locked = false;
    |    
  > |    function GetHash(bytes pass) public constant returns (bytes32) {return keccak256(pass);}
    |    
    |    function() public payable{}
  at /home/jiaming/mavs_srcs/contract@0x99bab102c0a03438bcfd70119f07ee646db26ddf.sol(45)

[31mViolation[0m for TODAmount in contract 'GIFT_CARD':
    |        if(hashPass == keccak256(_pass) && now>unlockTime && msg.sender==tx.origin)
    |        {
  > |            msg.sender.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x99bab102c0a03438bcfd70119f07ee646db26ddf.sol(23)

[33mWarning[0m for TODReceiver in contract 'GIFT_CARD':
    |        if(hashPass == keccak256(_pass) && now>unlockTime && msg.sender==tx.origin)
    |        {
  > |            msg.sender.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x99bab102c0a03438bcfd70119f07ee646db26ddf.sol(23)

[33mWarning[0m for UnhandledException in contract 'GIFT_CARD':
    |        if(hashPass == keccak256(_pass) && now>unlockTime && msg.sender==tx.origin)
    |        {
  > |            msg.sender.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x99bab102c0a03438bcfd70119f07ee646db26ddf.sol(23)

[31mViolation[0m for UnrestrictedWrite in contract 'GIFT_CARD':
    |        if(!locked && msg.value > 200000000000000000)// 0.2 ETH
    |        {
  > |            unlockTime = now+_unlockTime;
    |            hashPass = _hash;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x99bab102c0a03438bcfd70119f07ee646db26ddf.sol(11)

[31mViolation[0m for UnrestrictedWrite in contract 'GIFT_CARD':
    |        {
    |            unlockTime = now+_unlockTime;
  > |            hashPass = _hash;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x99bab102c0a03438bcfd70119f07ee646db26ddf.sol(12)


