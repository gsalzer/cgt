Processing contract: /home/jiaming/mavs_srcs/contract@0x644d2e3b4a49fdb85535c8bdb0d4342114c6f723.sol:HundredPercentDivs
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'HundredPercentDivs':
    |pragma solidity ^0.4.24;
    |
  > |contract HundredPercentDivs {
    |  
    |  address public contractOwner;
  at /home/jiaming/mavs_srcs/contract@0x644d2e3b4a49fdb85535c8bdb0d4342114c6f723.sol(3)

[33mWarning[0m for MissingInputValidation in contract 'HundredPercentDivs':
    |contract HundredPercentDivs {
    |  
  > |  address public contractOwner;
    |
    |  constructor () public {
  at /home/jiaming/mavs_srcs/contract@0x644d2e3b4a49fdb85535c8bdb0d4342114c6f723.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'HundredPercentDivs':
    |  }
    |
  > |  function isMoron(address _candidate) public pure returns (bool){
    |      return (_candidate==0x41FE3738B503cBaFD01C1Fd8DD66b7fE6Ec11b01);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x644d2e3b4a49fdb85535c8bdb0d4342114c6f723.sol(11)


