Processing contract: /home/jiaming/mavs_srcs/contract@0x6617f3373638de93d119f35c97acb774154fce92.sol:TgeProxy
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'TgeProxy':
    |
    |// TGE (ICO) Proxy
  > |contract TgeProxy {
    |
    |  address[] public managers;
  at /home/jiaming/mavs_srcs/contract@0x6617f3373638de93d119f35c97acb774154fce92.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'TgeProxy':
    |contract TgeProxy {
    |
  > |  address[] public managers;
    |  mapping (address => address) votesAddr;
    |
  at /home/jiaming/mavs_srcs/contract@0x6617f3373638de93d119f35c97acb774154fce92.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'TgeProxy':
    |  }
    |  
  > |  function lockAttemp() private {
    |    address addr = votesAddr[managers[0]];
    |    bool lock = true;
  at /home/jiaming/mavs_srcs/contract@0x6617f3373638de93d119f35c97acb774154fce92.sol(32)

[31mViolation[0m for UnrestrictedWrite in contract 'TgeProxy':
    |    }
    |    if (lock) {
  > |      locked = true;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x6617f3373638de93d119f35c97acb774154fce92.sol(46)

[33mWarning[0m for UnrestrictedWrite in contract 'TgeProxy':
    |  // it can be overwritten until contract address is locked
    |  function setTgeAddr(address addr) isManager isUnlocked {
  > |    votesAddr[msg.sender] = addr;
    |    lockAttemp();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x6617f3373638de93d119f35c97acb774154fce92.sol(28)


