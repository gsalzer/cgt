Processing contract: /home/jiaming/mavs_srcs/contract@0x3df616ee25ba3fa146544ab595f106bff5ac4397.sol:Daily12
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Daily12':
    | *
    | */
  > |contract Daily12 {
    |    // records amounts invested
    |    mapping (address => uint256) public invested;
  at /home/jiaming/mavs_srcs/contract@0x3df616ee25ba3fa146544ab595f106bff5ac4397.sol(22)

[31mViolation[0m for MissingInputValidation in contract 'Daily12':
    |contract Daily12 {
    |    // records amounts invested
  > |    mapping (address => uint256) public invested;
    |    // records blocks at which investments were made
    |    mapping (address => uint256) public atBlock;
  at /home/jiaming/mavs_srcs/contract@0x3df616ee25ba3fa146544ab595f106bff5ac4397.sol(24)

[31mViolation[0m for MissingInputValidation in contract 'Daily12':
    |    mapping (address => uint256) public invested;
    |    // records blocks at which investments were made
  > |    mapping (address => uint256) public atBlock;
    |
    |    // this function called every time anyone sends a transaction to this contract
  at /home/jiaming/mavs_srcs/contract@0x3df616ee25ba3fa146544ab595f106bff5ac4397.sol(26)


