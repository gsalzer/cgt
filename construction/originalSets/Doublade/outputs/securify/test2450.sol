Processing contract: /home/jiaming/mavs_srcs/contract@0x9fbf5d3b362558553e8fde4693717c6f72aa19de.sol:GCOClaim
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'GCOClaim':
    |    function assign() public payable {
    |        if (msg.value >= address(this).balance)
  > |            msg.sender.transfer(address(this).balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x9fbf5d3b362558553e8fde4693717c6f72aa19de.sol(16)

[33mWarning[0m for LockedEther in contract 'GCOClaim':
    |pragma solidity ^0.4.25;
    |
  > |contract GCOClaim
    |{
    |    constructor() public payable {
  at /home/jiaming/mavs_srcs/contract@0x9fbf5d3b362558553e8fde4693717c6f72aa19de.sol(3)

[33mWarning[0m for MissingInputValidation in contract 'GCOClaim':
    |    function() external payable {}
    |    address org;
  > |    function close() public {
    |        if (msg.sender==org)
    |            selfdestruct(msg.sender);
  at /home/jiaming/mavs_srcs/contract@0x9fbf5d3b362558553e8fde4693717c6f72aa19de.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'GCOClaim':
    |            selfdestruct(msg.sender);
    |    }
  > |    function assign() public payable {
    |        if (msg.value >= address(this).balance)
    |            msg.sender.transfer(address(this).balance);
  at /home/jiaming/mavs_srcs/contract@0x9fbf5d3b362558553e8fde4693717c6f72aa19de.sol(14)

[31mViolation[0m for TODAmount in contract 'GCOClaim':
    |    function assign() public payable {
    |        if (msg.value >= address(this).balance)
  > |            msg.sender.transfer(address(this).balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x9fbf5d3b362558553e8fde4693717c6f72aa19de.sol(16)

[33mWarning[0m for TODReceiver in contract 'GCOClaim':
    |    function assign() public payable {
    |        if (msg.value >= address(this).balance)
  > |            msg.sender.transfer(address(this).balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x9fbf5d3b362558553e8fde4693717c6f72aa19de.sol(16)

[33mWarning[0m for UnhandledException in contract 'GCOClaim':
    |    function assign() public payable {
    |        if (msg.value >= address(this).balance)
  > |            msg.sender.transfer(address(this).balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x9fbf5d3b362558553e8fde4693717c6f72aa19de.sol(16)


