Processing contract: /home/jiaming/mavs_srcs/contract@0x7a0ec191d8f44f3bc3cbb4d1105ced31c30ff492.sol:PiggyBank
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for LockedEther in contract 'PiggyBank':
    |pragma solidity ^0.4.24;
    |
  > |contract PiggyBank  {
    |  string public name;
    |  string public symbol = '%';
  at /home/jiaming/mavs_srcs/contract@0x7a0ec191d8f44f3bc3cbb4d1105ced31c30ff492.sol(3)

[33mWarning[0m for MissingInputValidation in contract 'PiggyBank':
    |
    |contract PiggyBank  {
  > |  string public name;
    |  string public symbol = '%';
    |  uint8 constant public decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0x7a0ec191d8f44f3bc3cbb4d1105ced31c30ff492.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'PiggyBank':
    |contract PiggyBank  {
    |  string public name;
  > |  string public symbol = '%';
    |  uint8 constant public decimals = 18;
    |  uint256 constant internal denominator = 10 ** uint256(decimals);
  at /home/jiaming/mavs_srcs/contract@0x7a0ec191d8f44f3bc3cbb4d1105ced31c30ff492.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'PiggyBank':
    |  string public name;
    |  string public symbol = '%';
  > |  uint8 constant public decimals = 18;
    |  uint256 constant internal denominator = 10 ** uint256(decimals);
    |  uint256 public targetAmount;
  at /home/jiaming/mavs_srcs/contract@0x7a0ec191d8f44f3bc3cbb4d1105ced31c30ff492.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'PiggyBank':
    |  uint8 constant public decimals = 18;
    |  uint256 constant internal denominator = 10 ** uint256(decimals);
  > |  uint256 public targetAmount;
    |
    |  bool public complete = false;
  at /home/jiaming/mavs_srcs/contract@0x7a0ec191d8f44f3bc3cbb4d1105ced31c30ff492.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'PiggyBank':
    |  uint256 public targetAmount;
    |
  > |  bool public complete = false;
    |
    |  address internal targetAddress;
  at /home/jiaming/mavs_srcs/contract@0x7a0ec191d8f44f3bc3cbb4d1105ced31c30ff492.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'PiggyBank':
    |  }
    |
  > |  function balanceOf(address target) view public returns(uint256)
    |  {
    |    if (target != targetAddress)
  at /home/jiaming/mavs_srcs/contract@0x7a0ec191d8f44f3bc3cbb4d1105ced31c30ff492.sol(25)


