Processing contract: /home/jiaming/mavs_srcs/contract@0xc58492b3b14f658adff566c988029308505f81b5.sol:PonziScheme
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'PonziScheme':
    |pragma solidity ^0.4.11;
    |
  > |contract PonziScheme {
    |  uint public round;
    |  address public lastDepositor;
  at /home/jiaming/mavs_srcs/contract@0xc58492b3b14f658adff566c988029308505f81b5.sol(3)

[33mWarning[0m for MissingInputValidation in contract 'PonziScheme':
    |
    |contract PonziScheme {
  > |  uint public round;
    |  address public lastDepositor;
    |  uint public lastDepositorAmount;
  at /home/jiaming/mavs_srcs/contract@0xc58492b3b14f658adff566c988029308505f81b5.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'PonziScheme':
    |contract PonziScheme {
    |  uint public round;
  > |  address public lastDepositor;
    |  uint public lastDepositorAmount;
    |  uint public startingAmount;
  at /home/jiaming/mavs_srcs/contract@0xc58492b3b14f658adff566c988029308505f81b5.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'PonziScheme':
    |  uint public round;
    |  address public lastDepositor;
  > |  uint public lastDepositorAmount;
    |  uint public startingAmount;
    |  uint public nextAmount;
  at /home/jiaming/mavs_srcs/contract@0xc58492b3b14f658adff566c988029308505f81b5.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'PonziScheme':
    |  address public lastDepositor;
    |  uint public lastDepositorAmount;
  > |  uint public startingAmount;
    |  uint public nextAmount;
    |
  at /home/jiaming/mavs_srcs/contract@0xc58492b3b14f658adff566c988029308505f81b5.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'PonziScheme':
    |  uint public lastDepositorAmount;
    |  uint public startingAmount;
  > |  uint public nextAmount;
    |
    |  function PonziScheme(uint _startingAmount) {
  at /home/jiaming/mavs_srcs/contract@0xc58492b3b14f658adff566c988029308505f81b5.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'PonziScheme':
    |  }
    |
  > |  function checkAmount(uint amount) private {
    |    if(amount != lastDepositorAmount * 2) {
    |      throw;
  at /home/jiaming/mavs_srcs/contract@0xc58492b3b14f658adff566c988029308505f81b5.sol(34)

[33mWarning[0m for MissingInputValidation in contract 'PonziScheme':
    |  }
    |
  > |  function increaseRound() private {
    |    round = round + 1;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc58492b3b14f658adff566c988029308505f81b5.sol(40)

[31mViolation[0m for UnrestrictedWrite in contract 'PonziScheme':
    |
    |  function increaseRound() private {
  > |    round = round + 1;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xc58492b3b14f658adff566c988029308505f81b5.sol(41)


