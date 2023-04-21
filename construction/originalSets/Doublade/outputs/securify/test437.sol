Processing contract: /home/jiaming/mavs_srcs/contract@0x1c36318a0b2a36636a32f9a712f5a709b4016f77.sol:CreationContract
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1c36318a0b2a36636a32f9a712f5a709b4016f77.sol:IToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'CreationContract':
    |}
    |
  > |contract CreationContract{
    |    
    |    address public curator;
  at /home/jiaming/mavs_srcs/contract@0x1c36318a0b2a36636a32f9a712f5a709b4016f77.sol(14)

[33mWarning[0m for UnhandledException in contract 'CreationContract':
    |        if (msg.sender != curator){ return 1; }
    |
  > |        return tokenContract.issueNewCoins(_destination, _amount, _details);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x1c36318a0b2a36636a32f9a712f5a709b4016f77.sol(30)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CreationContract':
    |        if (msg.sender != curator){ return 1; }
    |
  > |        return tokenContract.issueNewCoins(_destination, _amount, _details);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x1c36318a0b2a36636a32f9a712f5a709b4016f77.sol(30)

[33mWarning[0m for UnrestrictedWrite in contract 'CreationContract':
    |        if (msg.sender != dev){ return 1; }
    |
  > |        curator = _curatorAdress;
    |        return 0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1c36318a0b2a36636a32f9a712f5a709b4016f77.sol(36)

[33mWarning[0m for UnrestrictedWrite in contract 'CreationContract':
    |        if (msg.sender != curator){ return 1; }
    |
  > |        tokenContract = IToken(_contractAddress);
    |        return 0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1c36318a0b2a36636a32f9a712f5a709b4016f77.sol(43)

[33mWarning[0m for LockedEther in contract 'IToken':
    |pragma solidity ^0.4.8;
    |
  > |contract IToken {
    |    function totalSupply() constant returns (uint256 supply) {}
    |    function balanceOf(address _owner) constant returns (uint256 balance) {}
  at /home/jiaming/mavs_srcs/contract@0x1c36318a0b2a36636a32f9a712f5a709b4016f77.sol(3)


