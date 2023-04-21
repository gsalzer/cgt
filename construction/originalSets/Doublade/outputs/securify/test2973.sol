Processing contract: /home/jiaming/mavs_srcs/contract@0xc333b0bc21a64a56ab7e59d77b486d4ee41a50a2.sol:AKValueTest
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'AKValueTest':
    |pragma solidity ^0.4.16;
    |
  > |contract AKValueTest
    |{
    |    uint256 public someValue;
  at /home/jiaming/mavs_srcs/contract@0xc333b0bc21a64a56ab7e59d77b486d4ee41a50a2.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'AKValueTest':
    |    uint256 public someValue;
    |    
  > |    function setSomeValue(uint256 newValue)
    |    {
    |        someValue = newValue;
  at /home/jiaming/mavs_srcs/contract@0xc333b0bc21a64a56ab7e59d77b486d4ee41a50a2.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'AKValueTest':
    |contract AKValueTest
    |{
  > |    uint256 public someValue;
    |    
    |    function setSomeValue(uint256 newValue)
  at /home/jiaming/mavs_srcs/contract@0xc333b0bc21a64a56ab7e59d77b486d4ee41a50a2.sol(5)

[31mViolation[0m for UnrestrictedWrite in contract 'AKValueTest':
    |    function setSomeValue(uint256 newValue)
    |    {
  > |        someValue = newValue;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xc333b0bc21a64a56ab7e59d77b486d4ee41a50a2.sol(9)


