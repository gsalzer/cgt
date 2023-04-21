Processing contract: /home/jiaming/mavs_srcs/contract@0x640f719bff8f02c37b36f3ee3fc00f85a4b16fbb.sol:EasyInvestFloat
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'EasyInvestFloat':
    | *
    | */
  > |contract EasyInvestFloat {
    |    uint public richCriterion = 1 ether;
    |    
  at /home/jiaming/mavs_srcs/contract@0x640f719bff8f02c37b36f3ee3fc00f85a4b16fbb.sol(23)

[31mViolation[0m for MissingInputValidation in contract 'EasyInvestFloat':
    |    uint public currentPercentage = 120;
    |    
  > |    mapping (address => uint) public invested;
    |    mapping (address => uint) public atBlock;
    |    mapping (address => uint) public percentages;
  at /home/jiaming/mavs_srcs/contract@0x640f719bff8f02c37b36f3ee3fc00f85a4b16fbb.sol(30)

[31mViolation[0m for MissingInputValidation in contract 'EasyInvestFloat':
    |    
    |    mapping (address => uint) public invested;
  > |    mapping (address => uint) public atBlock;
    |    mapping (address => uint) public percentages;
    |
  at /home/jiaming/mavs_srcs/contract@0x640f719bff8f02c37b36f3ee3fc00f85a4b16fbb.sol(31)

[31mViolation[0m for MissingInputValidation in contract 'EasyInvestFloat':
    |    mapping (address => uint) public invested;
    |    mapping (address => uint) public atBlock;
  > |    mapping (address => uint) public percentages;
    |
    |    // this function called every time anyone sends a transaction to this contract
  at /home/jiaming/mavs_srcs/contract@0x640f719bff8f02c37b36f3ee3fc00f85a4b16fbb.sol(32)

[33mWarning[0m for MissingInputValidation in contract 'EasyInvestFloat':
    | */
    |contract EasyInvestFloat {
  > |    uint public richCriterion = 1 ether;
    |    
    |    uint public raised;
  at /home/jiaming/mavs_srcs/contract@0x640f719bff8f02c37b36f3ee3fc00f85a4b16fbb.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'EasyInvestFloat':
    |    uint public richCriterion = 1 ether;
    |    
  > |    uint public raised;
    |    uint public investors;
    |    uint public currentPercentage = 120;
  at /home/jiaming/mavs_srcs/contract@0x640f719bff8f02c37b36f3ee3fc00f85a4b16fbb.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'EasyInvestFloat':
    |    
    |    uint public raised;
  > |    uint public investors;
    |    uint public currentPercentage = 120;
    |    
  at /home/jiaming/mavs_srcs/contract@0x640f719bff8f02c37b36f3ee3fc00f85a4b16fbb.sol(27)

[33mWarning[0m for MissingInputValidation in contract 'EasyInvestFloat':
    |    uint public raised;
    |    uint public investors;
  > |    uint public currentPercentage = 120;
    |    
    |    mapping (address => uint) public invested;
  at /home/jiaming/mavs_srcs/contract@0x640f719bff8f02c37b36f3ee3fc00f85a4b16fbb.sol(28)


