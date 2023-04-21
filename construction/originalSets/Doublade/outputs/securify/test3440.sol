Processing contract: /home/jiaming/mavs_srcs/contract@0xe16068dd81dba6f5f809e7b34a6b8322b7a5c887.sol:Deposit
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe16068dd81dba6f5f809e7b34a6b8322b7a5c887.sol:Withdraw
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Deposit':
    |pragma solidity ^0.4.23;
    |
  > |contract Deposit {
    |
    |    address public owner;
  at /home/jiaming/mavs_srcs/contract@0xe16068dd81dba6f5f809e7b34a6b8322b7a5c887.sol(3)

[33mWarning[0m for MissingInputValidation in contract 'Deposit':
    |pragma solidity ^0.4.23;
    |
  > |contract Deposit {
    |
    |    address public owner;
  at /home/jiaming/mavs_srcs/contract@0xe16068dd81dba6f5f809e7b34a6b8322b7a5c887.sol(3)

[33mWarning[0m for MissingInputValidation in contract 'Deposit':
    |contract Deposit {
    |
  > |    address public owner;
    |    Withdraw[] public withdraws;
    |
  at /home/jiaming/mavs_srcs/contract@0xe16068dd81dba6f5f809e7b34a6b8322b7a5c887.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'Deposit':
    |
    |    address public owner;
  > |    Withdraw[] public withdraws;
    |
    |    // constructor
  at /home/jiaming/mavs_srcs/contract@0xe16068dd81dba6f5f809e7b34a6b8322b7a5c887.sol(6)

[33mWarning[0m for LockedEther in contract 'Withdraw':
    |}
    |
  > |contract Withdraw {
    |
    |    address public owner;
  at /home/jiaming/mavs_srcs/contract@0xe16068dd81dba6f5f809e7b34a6b8322b7a5c887.sol(22)

[33mWarning[0m for MissingInputValidation in contract 'Withdraw':
    |contract Withdraw {
    |
  > |    address public owner;
    |
    |    // constructor
  at /home/jiaming/mavs_srcs/contract@0xe16068dd81dba6f5f809e7b34a6b8322b7a5c887.sol(24)


