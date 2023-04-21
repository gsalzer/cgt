Processing contract: /home/jiaming/mavs_srcs/contract@0x00539863217abd04b374a422c855e4c71ed1019a.sol:Storage
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'Storage':
    |  onlyOwner{
    |    storedAmount = 0;
  > |    owner.transfer(this.balance);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x00539863217abd04b374a422c855e4c71ed1019a.sol(32)

[33mWarning[0m for DAOConstantGas in contract 'Storage':
    |  onlyOwner{
    |    storedAmount = 0;
  > |    to.transfer(this.balance);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x00539863217abd04b374a422c855e4c71ed1019a.sol(39)

[33mWarning[0m for LockedEther in contract 'Storage':
    |pragma solidity ^0.4.18;
    |
  > |contract Storage {
    |  address public owner;
    |  uint256 public storedAmount;
  at /home/jiaming/mavs_srcs/contract@0x00539863217abd04b374a422c855e4c71ed1019a.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'Storage':
    |  }
    |
  > |  function sendEthTo(address to)
    |  public
    |  onlyOwner{
  at /home/jiaming/mavs_srcs/contract@0x00539863217abd04b374a422c855e4c71ed1019a.sol(35)

[33mWarning[0m for MissingInputValidation in contract 'Storage':
    |
    |contract Storage {
  > |  address public owner;
    |  uint256 public storedAmount;
    |
  at /home/jiaming/mavs_srcs/contract@0x00539863217abd04b374a422c855e4c71ed1019a.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'Storage':
    |contract Storage {
    |  address public owner;
  > |  uint256 public storedAmount;
    |
    |  function Storage() public {
  at /home/jiaming/mavs_srcs/contract@0x00539863217abd04b374a422c855e4c71ed1019a.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'Storage':
    |  }
    |
  > |  function storeEth()
    |  public
    |  payable {
  at /home/jiaming/mavs_srcs/contract@0x00539863217abd04b374a422c855e4c71ed1019a.sol(22)

[33mWarning[0m for MissingInputValidation in contract 'Storage':
    |  }
    |
  > |  function getEth()
    |  public
    |  onlyOwner{
  at /home/jiaming/mavs_srcs/contract@0x00539863217abd04b374a422c855e4c71ed1019a.sol(28)

[31mViolation[0m for TODAmount in contract 'Storage':
    |  onlyOwner{
    |    storedAmount = 0;
  > |    owner.transfer(this.balance);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x00539863217abd04b374a422c855e4c71ed1019a.sol(32)

[31mViolation[0m for TODAmount in contract 'Storage':
    |  onlyOwner{
    |    storedAmount = 0;
  > |    to.transfer(this.balance);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x00539863217abd04b374a422c855e4c71ed1019a.sol(39)

[33mWarning[0m for TODReceiver in contract 'Storage':
    |  onlyOwner{
    |    storedAmount = 0;
  > |    owner.transfer(this.balance);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x00539863217abd04b374a422c855e4c71ed1019a.sol(32)

[33mWarning[0m for TODReceiver in contract 'Storage':
    |  onlyOwner{
    |    storedAmount = 0;
  > |    to.transfer(this.balance);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x00539863217abd04b374a422c855e4c71ed1019a.sol(39)

[33mWarning[0m for UnhandledException in contract 'Storage':
    |  onlyOwner{
    |    storedAmount = 0;
  > |    owner.transfer(this.balance);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x00539863217abd04b374a422c855e4c71ed1019a.sol(32)

[33mWarning[0m for UnhandledException in contract 'Storage':
    |  onlyOwner{
    |    storedAmount = 0;
  > |    to.transfer(this.balance);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x00539863217abd04b374a422c855e4c71ed1019a.sol(39)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Storage':
    |  onlyOwner{
    |    storedAmount = 0;
  > |    owner.transfer(this.balance);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x00539863217abd04b374a422c855e4c71ed1019a.sol(32)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Storage':
    |  onlyOwner{
    |    storedAmount = 0;
  > |    to.transfer(this.balance);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x00539863217abd04b374a422c855e4c71ed1019a.sol(39)

[31mViolation[0m for UnrestrictedWrite in contract 'Storage':
    |  public
    |  payable {
  > |    storedAmount += msg.value;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x00539863217abd04b374a422c855e4c71ed1019a.sol(25)

[33mWarning[0m for UnrestrictedWrite in contract 'Storage':
    |  public
    |  onlyOwner{
  > |    storedAmount = 0;
    |    owner.transfer(this.balance);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x00539863217abd04b374a422c855e4c71ed1019a.sol(31)

[33mWarning[0m for UnrestrictedWrite in contract 'Storage':
    |  public
    |  onlyOwner{
  > |    storedAmount = 0;
    |    to.transfer(this.balance);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x00539863217abd04b374a422c855e4c71ed1019a.sol(38)


