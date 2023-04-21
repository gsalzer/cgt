Processing contract: /home/jiaming/mavs_srcs/contract@0xdcadd661d53c6def90e5ea3cec0a9feb7c0b08ce.sol:DestructionContract
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xdcadd661d53c6def90e5ea3cec0a9feb7c0b08ce.sol:IToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'DestructionContract':
    |}
    |
  > |contract DestructionContract{
    |    
    |    address public curator;
  at /home/jiaming/mavs_srcs/contract@0xdcadd661d53c6def90e5ea3cec0a9feb7c0b08ce.sol(14)

[33mWarning[0m for UnhandledException in contract 'DestructionContract':
    |        if (msg.sender != curator){ return 1; }
    |        
  > |        return tokenContract.destroyOldCoins(msg.sender, _amount, _details);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xdcadd661d53c6def90e5ea3cec0a9feb7c0b08ce.sol(29)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DestructionContract':
    |        if (msg.sender != curator){ return 1; }
    |        
  > |        return tokenContract.destroyOldCoins(msg.sender, _amount, _details);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xdcadd661d53c6def90e5ea3cec0a9feb7c0b08ce.sol(29)

[33mWarning[0m for UnrestrictedWrite in contract 'DestructionContract':
    |        if (msg.sender != dev){ return 1; }
    |
  > |        curator = _curatorAdress;
    |        return 0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdcadd661d53c6def90e5ea3cec0a9feb7c0b08ce.sol(35)

[33mWarning[0m for UnrestrictedWrite in contract 'DestructionContract':
    |        if (msg.sender != curator){ return 1; }
    |
  > |        tokenContract = IToken(_contractAddress);
    |        return 0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdcadd661d53c6def90e5ea3cec0a9feb7c0b08ce.sol(42)

[33mWarning[0m for LockedEther in contract 'IToken':
    |pragma solidity ^0.4.8;
    |
  > |contract IToken {
    |    function totalSupply() constant returns (uint256 supply) {}
    |    function balanceOf(address _owner) constant returns (uint256 balance) {}
  at /home/jiaming/mavs_srcs/contract@0xdcadd661d53c6def90e5ea3cec0a9feb7c0b08ce.sol(3)


