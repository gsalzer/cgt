Processing contract: /home/jiaming/mavs_srcs/contract@0x6cc3de7ad4c5643dde1a96a7d7d55e6d014952c1.sol:Migrations
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Migrations':
    |pragma solidity >=0.4.21 <0.6.0;
    |
  > |contract Migrations {
    |  address public owner;
    |  uint public last_completed_migration;
  at /home/jiaming/mavs_srcs/contract@0x6cc3de7ad4c5643dde1a96a7d7d55e6d014952c1.sol(6)

[31mViolation[0m for MissingInputValidation in contract 'Migrations':
    |  }
    |
  > |  function setCompleted(uint completed) public restricted {
    |    last_completed_migration = completed;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x6cc3de7ad4c5643dde1a96a7d7d55e6d014952c1.sol(18)

[33mWarning[0m for MissingInputValidation in contract 'Migrations':
    |
    |contract Migrations {
  > |  address public owner;
    |  uint public last_completed_migration;
    |
  at /home/jiaming/mavs_srcs/contract@0x6cc3de7ad4c5643dde1a96a7d7d55e6d014952c1.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'Migrations':
    |contract Migrations {
    |  address public owner;
  > |  uint public last_completed_migration;
    |
    |  constructor() public {
  at /home/jiaming/mavs_srcs/contract@0x6cc3de7ad4c5643dde1a96a7d7d55e6d014952c1.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'Migrations':
    |  }
    |
  > |  function upgrade(address new_address) public restricted {
    |    Migrations upgraded = Migrations(new_address);
    |    upgraded.setCompleted(last_completed_migration);
  at /home/jiaming/mavs_srcs/contract@0x6cc3de7ad4c5643dde1a96a7d7d55e6d014952c1.sol(22)

[33mWarning[0m for UnhandledException in contract 'Migrations':
    |  function upgrade(address new_address) public restricted {
    |    Migrations upgraded = Migrations(new_address);
  > |    upgraded.setCompleted(last_completed_migration);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x6cc3de7ad4c5643dde1a96a7d7d55e6d014952c1.sol(24)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Migrations':
    |  function upgrade(address new_address) public restricted {
    |    Migrations upgraded = Migrations(new_address);
  > |    upgraded.setCompleted(last_completed_migration);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x6cc3de7ad4c5643dde1a96a7d7d55e6d014952c1.sol(24)

[33mWarning[0m for UnrestrictedWrite in contract 'Migrations':
    |
    |  function setCompleted(uint completed) public restricted {
  > |    last_completed_migration = completed;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x6cc3de7ad4c5643dde1a96a7d7d55e6d014952c1.sol(19)


