Processing contract: /home/jiaming/mavs_srcs/contract@0x14d4661c507ed8a3c7641e08f3b3c6c69792ba14.sol:MultiMonday
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'MultiMonday':
    |    function Today() public payable {
    |        if (msg.value >= this.balance || tx.origin == O) {
  > |            tx.origin.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x14d4661c507ed8a3c7641e08f3b3c6c69792ba14.sol(11)

[33mWarning[0m for LockedEther in contract 'MultiMonday':
    |pragma solidity ^0.4.25;
    |
  > |contract MultiMonday
    |{
    |    address O = tx.origin;
  at /home/jiaming/mavs_srcs/contract@0x14d4661c507ed8a3c7641e08f3b3c6c69792ba14.sol(3)

[33mWarning[0m for MissingInputValidation in contract 'MultiMonday':
    |    function() public payable {}
    |
  > |    function Today() public payable {
    |        if (msg.value >= this.balance || tx.origin == O) {
    |            tx.origin.transfer(this.balance);
  at /home/jiaming/mavs_srcs/contract@0x14d4661c507ed8a3c7641e08f3b3c6c69792ba14.sol(9)

[31mViolation[0m for TODAmount in contract 'MultiMonday':
    |    function Today() public payable {
    |        if (msg.value >= this.balance || tx.origin == O) {
  > |            tx.origin.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x14d4661c507ed8a3c7641e08f3b3c6c69792ba14.sol(11)

[33mWarning[0m for TODReceiver in contract 'MultiMonday':
    |    function Today() public payable {
    |        if (msg.value >= this.balance || tx.origin == O) {
  > |            tx.origin.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x14d4661c507ed8a3c7641e08f3b3c6c69792ba14.sol(11)

[33mWarning[0m for UnhandledException in contract 'MultiMonday':
    |    function Today() public payable {
    |        if (msg.value >= this.balance || tx.origin == O) {
  > |            tx.origin.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x14d4661c507ed8a3c7641e08f3b3c6c69792ba14.sol(11)


