Processing contract: /home/jiaming/mavs_srcs/contract@0x82e91b7967ca55eb1c4cb3d58aa5c91cb8df436b.sol:ECRecovery
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
  at /home/jiaming/mavs_srcs/contract@0x82e91b7967ca55eb1c4cb3d58aa5c91cb8df436b.sol(3)

[33mWarning[0m for UnhandledException in contract 'ECRecovery':
    |      return (address(0));
    |    } else {
  > |      return ecrecover(hash, v, r, s);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x82e91b7967ca55eb1c4cb3d58aa5c91cb8df436b.sol(36)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ECRecovery':
    |      return (address(0));
    |    } else {
  > |      return ecrecover(hash, v, r, s);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x82e91b7967ca55eb1c4cb3d58aa5c91cb8df436b.sol(36)


