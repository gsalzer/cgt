Processing contract: /home/jiaming/mavs_srcs/contract@0x2f90a5202ec023fc5015d063dae1e64d18063506.sol:TowncrierTest
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'TowncrierTest':
    |pragma solidity ^0.4.0;
  > |contract TowncrierTest {
    |    event LogTowncrierCallback(uint64 requestId, uint64 error, bytes32 respData);
    |    
  at /home/jiaming/mavs_srcs/contract@0x2f90a5202ec023fc5015d063dae1e64d18063506.sol(2)

[31mViolation[0m for MissingInputValidation in contract 'TowncrierTest':
    |    event LogTowncrierCallback(uint64 requestId, uint64 error, bytes32 respData);
    |    
  > |    function towncrierCallback(uint64 requestId, uint64 error, bytes32 respData) public {
    |        LogTowncrierCallback(requestId, error, respData);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2f90a5202ec023fc5015d063dae1e64d18063506.sol(5)


