Processing contract: /home/jiaming/mavs_srcs/contract@0x61388904afac03beb15173340dfe3e634fcd7c16.sol:ECRecovery
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'ECRecovery':
    |pragma solidity ^0.4.18;
    |
  > |library ECRecovery {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x61388904afac03beb15173340dfe3e634fcd7c16.sol(3)

[33mWarning[0m for UnhandledException in contract 'ECRecovery':
    |      return (address(0));
    |    } else {
  > |      return ecrecover(hash, v, r, s);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x61388904afac03beb15173340dfe3e634fcd7c16.sol(36)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ECRecovery':
    |      return (address(0));
    |    } else {
  > |      return ecrecover(hash, v, r, s);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x61388904afac03beb15173340dfe3e634fcd7c16.sol(36)


