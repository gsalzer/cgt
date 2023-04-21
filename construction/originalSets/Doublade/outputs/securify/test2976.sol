Processing contract: /home/jiaming/mavs_srcs/contract@0xc3626b5f7f7fa8a864441b7ed9bfb1ccdd720286.sol:RtBCoin
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'RtBCoin':
    |    function getEther(){
    |        if(msg.sender!=owner)throw;
  > |        owner.transfer(this.balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xc3626b5f7f7fa8a864441b7ed9bfb1ccdd720286.sol(25)

[33mWarning[0m for LockedEther in contract 'RtBCoin':
    |pragma solidity ^0.4.0;
  > |contract RtBCoin {
    |    string public name;
    |    string public symbol;
  at /home/jiaming/mavs_srcs/contract@0xc3626b5f7f7fa8a864441b7ed9bfb1ccdd720286.sol(2)

[31mViolation[0m for MissingInputValidation in contract 'RtBCoin':
    |    address public owner;
    |    uint cost = 5 finney;
  > |    mapping (address => uint256) public balanceOf;
    |    
    |    function RtBCoin(){
  at /home/jiaming/mavs_srcs/contract@0xc3626b5f7f7fa8a864441b7ed9bfb1ccdd720286.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'RtBCoin':
    |pragma solidity ^0.4.0;
    |contract RtBCoin {
  > |    string public name;
    |    string public symbol;
    |    uint256 public totalSuplay;
  at /home/jiaming/mavs_srcs/contract@0xc3626b5f7f7fa8a864441b7ed9bfb1ccdd720286.sol(3)

[33mWarning[0m for MissingInputValidation in contract 'RtBCoin':
    |contract RtBCoin {
    |    string public name;
  > |    string public symbol;
    |    uint256 public totalSuplay;
    |    address public owner;
  at /home/jiaming/mavs_srcs/contract@0xc3626b5f7f7fa8a864441b7ed9bfb1ccdd720286.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'RtBCoin':
    |    string public name;
    |    string public symbol;
  > |    uint256 public totalSuplay;
    |    address public owner;
    |    uint cost = 5 finney;
  at /home/jiaming/mavs_srcs/contract@0xc3626b5f7f7fa8a864441b7ed9bfb1ccdd720286.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'RtBCoin':
    |    string public symbol;
    |    uint256 public totalSuplay;
  > |    address public owner;
    |    uint cost = 5 finney;
    |    mapping (address => uint256) public balanceOf;
  at /home/jiaming/mavs_srcs/contract@0xc3626b5f7f7fa8a864441b7ed9bfb1ccdd720286.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'RtBCoin':
    |        balanceOf[this] -= amount;
    |    }
  > |    function getEther(){
    |        if(msg.sender!=owner)throw;
    |        owner.transfer(this.balance);
  at /home/jiaming/mavs_srcs/contract@0xc3626b5f7f7fa8a864441b7ed9bfb1ccdd720286.sol(23)

[31mViolation[0m for TODAmount in contract 'RtBCoin':
    |    function getEther(){
    |        if(msg.sender!=owner)throw;
  > |        owner.transfer(this.balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xc3626b5f7f7fa8a864441b7ed9bfb1ccdd720286.sol(25)

[33mWarning[0m for TODReceiver in contract 'RtBCoin':
    |    function getEther(){
    |        if(msg.sender!=owner)throw;
  > |        owner.transfer(this.balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xc3626b5f7f7fa8a864441b7ed9bfb1ccdd720286.sol(25)

[33mWarning[0m for UnhandledException in contract 'RtBCoin':
    |    function getEther(){
    |        if(msg.sender!=owner)throw;
  > |        owner.transfer(this.balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xc3626b5f7f7fa8a864441b7ed9bfb1ccdd720286.sol(25)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RtBCoin':
    |    function getEther(){
    |        if(msg.sender!=owner)throw;
  > |        owner.transfer(this.balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xc3626b5f7f7fa8a864441b7ed9bfb1ccdd720286.sol(25)


