Processing contract: /home/jiaming/mavs_srcs/contract@0xdd4d4ba0d626ba02a3a66eb227f97e4271efb4ee.sol:MyGame
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'MyGame':
    |    function() external payable {
    |        if (address(this).balance > 0 && msg.value == (0))
  > |          msg.sender.transfer(address(this).balance);
    |        }
    |}
  at /home/jiaming/mavs_srcs/contract@0xdd4d4ba0d626ba02a3a66eb227f97e4271efb4ee.sol(6)

[33mWarning[0m for LockedEther in contract 'MyGame':
    |pragma solidity >=0.4.22 <0.6.0;
    |
  > |contract MyGame {
    |    function() external payable {
    |        if (address(this).balance > 0 && msg.value == (0))
  at /home/jiaming/mavs_srcs/contract@0xdd4d4ba0d626ba02a3a66eb227f97e4271efb4ee.sol(3)

[31mViolation[0m for TODAmount in contract 'MyGame':
    |    function() external payable {
    |        if (address(this).balance > 0 && msg.value == (0))
  > |          msg.sender.transfer(address(this).balance);
    |        }
    |}
  at /home/jiaming/mavs_srcs/contract@0xdd4d4ba0d626ba02a3a66eb227f97e4271efb4ee.sol(6)

[33mWarning[0m for TODReceiver in contract 'MyGame':
    |    function() external payable {
    |        if (address(this).balance > 0 && msg.value == (0))
  > |          msg.sender.transfer(address(this).balance);
    |        }
    |}
  at /home/jiaming/mavs_srcs/contract@0xdd4d4ba0d626ba02a3a66eb227f97e4271efb4ee.sol(6)

[33mWarning[0m for UnhandledException in contract 'MyGame':
    |    function() external payable {
    |        if (address(this).balance > 0 && msg.value == (0))
  > |          msg.sender.transfer(address(this).balance);
    |        }
    |}
  at /home/jiaming/mavs_srcs/contract@0xdd4d4ba0d626ba02a3a66eb227f97e4271efb4ee.sol(6)


