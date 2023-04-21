Processing contract: /home/jiaming/mavs_srcs/contract@0x61635325731f138a9546020848a97790d248e98d.sol:Migrations
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Migrations':
    |// File: contracts/Migrations.sol
    |
  > |contract Migrations {
    |  address public owner;
    |  uint public last_completed_migration;
  at /home/jiaming/mavs_srcs/contract@0x61635325731f138a9546020848a97790d248e98d.sol(5)

[31mViolation[0m for MissingInputValidation in contract 'Migrations':
    |  }
    |
  > |  function setCompleted(uint completed) public restricted {
    |    last_completed_migration = completed;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x61635325731f138a9546020848a97790d248e98d.sol(17)

[33mWarning[0m for MissingInputValidation in contract 'Migrations':
    |
    |contract Migrations {
  > |  address public owner;
    |  uint public last_completed_migration;
    |
  at /home/jiaming/mavs_srcs/contract@0x61635325731f138a9546020848a97790d248e98d.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'Migrations':
    |contract Migrations {
    |  address public owner;
  > |  uint public last_completed_migration;
    |
    |  modifier restricted() {
  at /home/jiaming/mavs_srcs/contract@0x61635325731f138a9546020848a97790d248e98d.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'Migrations':
    |  }
    |
  > |  function upgrade(address new_address) public restricted {
    |    Migrations upgraded = Migrations(new_address);
    |    upgraded.setCompleted(last_completed_migration);
  at /home/jiaming/mavs_srcs/contract@0x61635325731f138a9546020848a97790d248e98d.sol(21)

[33mWarning[0m for UnhandledException in contract 'Migrations':
    |  function upgrade(address new_address) public restricted {
    |    Migrations upgraded = Migrations(new_address);
  > |    upgraded.setCompleted(last_completed_migration);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x61635325731f138a9546020848a97790d248e98d.sol(23)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Migrations':
    |  function upgrade(address new_address) public restricted {
    |    Migrations upgraded = Migrations(new_address);
  > |    upgraded.setCompleted(last_completed_migration);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x61635325731f138a9546020848a97790d248e98d.sol(23)

[33mWarning[0m for UnrestrictedWrite in contract 'Migrations':
    |
    |  function setCompleted(uint completed) public restricted {
  > |    last_completed_migration = completed;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x61635325731f138a9546020848a97790d248e98d.sol(18)


