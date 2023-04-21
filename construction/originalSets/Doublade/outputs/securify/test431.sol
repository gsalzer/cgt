Processing contract: /home/jiaming/mavs_srcs/contract@0x1bb28e79f2482df6bf60efc7a33365703bcf1536.sol:hodlEthereum
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'hodlEthereum':
    |        uint value = hodlers[msg.sender];
    |        hodlers[msg.sender] = 0;
  > |        msg.sender.transfer(value);
    |        Party(msg.sender, value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1bb28e79f2482df6bf60efc7a33365703bcf1536.sol(15)

[33mWarning[0m for LockedEther in contract 'hodlEthereum':
    |pragma solidity ^0.4.11;
  > |contract hodlEthereum {
    |    event Hodl(address indexed hodler, uint indexed amount);
    |    event Party(address indexed hodler, uint indexed amount);
  at /home/jiaming/mavs_srcs/contract@0x1bb28e79f2482df6bf60efc7a33365703bcf1536.sol(2)

[31mViolation[0m for MissingInputValidation in contract 'hodlEthereum':
    |    event Hodl(address indexed hodler, uint indexed amount);
    |    event Party(address indexed hodler, uint indexed amount);
  > |    mapping (address => uint) public hodlers;
    |    uint constant partyTime = 1596067200; // 30th July 2020
    |    function() payable {
  at /home/jiaming/mavs_srcs/contract@0x1bb28e79f2482df6bf60efc7a33365703bcf1536.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'hodlEthereum':
    |        Hodl(msg.sender, msg.value);
    |    }
  > |    function party() {
    |        require (block.timestamp > partyTime && hodlers[msg.sender] > 0);
    |        uint value = hodlers[msg.sender];
  at /home/jiaming/mavs_srcs/contract@0x1bb28e79f2482df6bf60efc7a33365703bcf1536.sol(11)

[33mWarning[0m for TODReceiver in contract 'hodlEthereum':
    |        uint value = hodlers[msg.sender];
    |        hodlers[msg.sender] = 0;
  > |        msg.sender.transfer(value);
    |        Party(msg.sender, value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1bb28e79f2482df6bf60efc7a33365703bcf1536.sol(15)

[33mWarning[0m for UnhandledException in contract 'hodlEthereum':
    |        uint value = hodlers[msg.sender];
    |        hodlers[msg.sender] = 0;
  > |        msg.sender.transfer(value);
    |        Party(msg.sender, value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1bb28e79f2482df6bf60efc7a33365703bcf1536.sol(15)

[33mWarning[0m for UnrestrictedWrite in contract 'hodlEthereum':
    |        require (block.timestamp > partyTime && hodlers[msg.sender] > 0);
    |        uint value = hodlers[msg.sender];
  > |        hodlers[msg.sender] = 0;
    |        msg.sender.transfer(value);
    |        Party(msg.sender, value);
  at /home/jiaming/mavs_srcs/contract@0x1bb28e79f2482df6bf60efc7a33365703bcf1536.sol(14)


