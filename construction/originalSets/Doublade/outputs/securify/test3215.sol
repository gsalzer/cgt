Processing contract: /home/jiaming/mavs_srcs/contract@0xd2b0f13a721232199751314b7af32b4034d7c705.sol:Deposit
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'Deposit':
    |    // transfer
    |    function _transter(uint balance) internal {
  > |        owner.transfer(balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xd2b0f13a721232199751314b7af32b4034d7c705.sol(19)

[33mWarning[0m for LockedEther in contract 'Deposit':
    |pragma solidity ^0.4.4;
    |
  > |contract Deposit {
    |
    |    address public owner;
  at /home/jiaming/mavs_srcs/contract@0xd2b0f13a721232199751314b7af32b4034d7c705.sol(3)

[33mWarning[0m for MissingInputValidation in contract 'Deposit':
    |contract Deposit {
    |
  > |    address public owner;
    |
    |    // constructor
  at /home/jiaming/mavs_srcs/contract@0xd2b0f13a721232199751314b7af32b4034d7c705.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'Deposit':
    |
    |    // transfer
  > |    function _transter(uint balance) internal {
    |        owner.transfer(balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd2b0f13a721232199751314b7af32b4034d7c705.sol(18)

[33mWarning[0m for TODAmount in contract 'Deposit':
    |    // transfer
    |    function _transter(uint balance) internal {
  > |        owner.transfer(balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xd2b0f13a721232199751314b7af32b4034d7c705.sol(19)

[33mWarning[0m for TODReceiver in contract 'Deposit':
    |    // transfer
    |    function _transter(uint balance) internal {
  > |        owner.transfer(balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xd2b0f13a721232199751314b7af32b4034d7c705.sol(19)

[33mWarning[0m for UnhandledException in contract 'Deposit':
    |    // transfer
    |    function _transter(uint balance) internal {
  > |        owner.transfer(balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xd2b0f13a721232199751314b7af32b4034d7c705.sol(19)

[31mViolation[0m for UnrestrictedEtherFlow in contract 'Deposit':
    |    // transfer
    |    function _transter(uint balance) internal {
  > |        owner.transfer(balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xd2b0f13a721232199751314b7af32b4034d7c705.sol(19)


