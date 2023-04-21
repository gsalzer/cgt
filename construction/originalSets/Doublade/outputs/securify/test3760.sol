Processing contract: /home/jiaming/mavs_srcs/contract@0xf6f2e7e8b934e14f811e133fafeed1b991e9f288.sol:C5PMCrowdsale
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf6f2e7e8b934e14f811e133fafeed1b991e9f288.sol:Token
[33mWarning[0m for LockedEther in contract 'C5PMCrowdsale':
    |}
    |
  > |contract C5PMCrowdsale {
    |    
    |    Token public tokenReward;
  at /home/jiaming/mavs_srcs/contract@0xf6f2e7e8b934e14f811e133fafeed1b991e9f288.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'C5PMCrowdsale':
    |contract C5PMCrowdsale {
    |    
  > |    Token public tokenReward;
    |    address owner = 0x1862154CEEF9c349d7b6D4040F2DB9b4864135b6;
    |    uint price = 10 ** 10;
  at /home/jiaming/mavs_srcs/contract@0xf6f2e7e8b934e14f811e133fafeed1b991e9f288.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'C5PMCrowdsale':
    |    uint price = 10 ** 10;
    |
  > |    uint256 public startDate;
    |    uint256 public endDate;
    |
  at /home/jiaming/mavs_srcs/contract@0xf6f2e7e8b934e14f811e133fafeed1b991e9f288.sol(13)

[33mWarning[0m for MissingInputValidation in contract 'C5PMCrowdsale':
    |
    |    uint256 public startDate;
  > |    uint256 public endDate;
    |
    |    event FundTransfer(address backer, uint amount, bool isContribution);
  at /home/jiaming/mavs_srcs/contract@0xf6f2e7e8b934e14f811e133fafeed1b991e9f288.sol(14)


