Processing contract: /home/jiaming/mavs_srcs/contract@0x762788f4f1c0ab1f2b5c13604f377f51cc1942ee.sol:OneInFive
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'OneInFive':
    |        uint256 amount = balance[msg.sender];
    |        balance[msg.sender] = 0;
  > |        msg.sender.transfer(amount);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x762788f4f1c0ab1f2b5c13604f377f51cc1942ee.sol(41)

[33mWarning[0m for DAOConstantGas in contract 'OneInFive':
    |    function withdrawOwner() public{
    |        if(msg.sender==owner){
  > |            owner.transfer(address(this).balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x762788f4f1c0ab1f2b5c13604f377f51cc1942ee.sol(46)

[33mWarning[0m for LockedEther in contract 'OneInFive':
    |pragma solidity ^0.4.0;
    |
  > |contract OneInFive{
    |    
    |    event SpiceUpPot();
  at /home/jiaming/mavs_srcs/contract@0x762788f4f1c0ab1f2b5c13604f377f51cc1942ee.sol(3)

[33mWarning[0m for MissingInputValidation in contract 'OneInFive':
    |    }
    |    
  > |    function gamble() public payable{
    |        require(msg.value >= .01 ether);
    |        if(msg.sender!=owner || rollIt()){
  at /home/jiaming/mavs_srcs/contract@0x762788f4f1c0ab1f2b5c13604f377f51cc1942ee.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'OneInFive':
    |    }
    |    
  > |    function rollIt() private returns(bool){
    |        bytes32 hash = keccak256(blockhash(block.number-1));
    |        uint256 random = uint256(hash);
  at /home/jiaming/mavs_srcs/contract@0x762788f4f1c0ab1f2b5c13604f377f51cc1942ee.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'OneInFive':
    |    }
    |    
  > |    function withdrawPlayer() internal{
    |        uint256 amount = balance[msg.sender];
    |        balance[msg.sender] = 0;
  at /home/jiaming/mavs_srcs/contract@0x762788f4f1c0ab1f2b5c13604f377f51cc1942ee.sol(38)

[33mWarning[0m for MissingInputValidation in contract 'OneInFive':
    |    }
    |    
  > |    function withdrawOwner() public{
    |        if(msg.sender==owner){
    |            owner.transfer(address(this).balance);
  at /home/jiaming/mavs_srcs/contract@0x762788f4f1c0ab1f2b5c13604f377f51cc1942ee.sol(44)

[31mViolation[0m for TODAmount in contract 'OneInFive':
    |    function withdrawOwner() public{
    |        if(msg.sender==owner){
  > |            owner.transfer(address(this).balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x762788f4f1c0ab1f2b5c13604f377f51cc1942ee.sol(46)

[33mWarning[0m for TODReceiver in contract 'OneInFive':
    |        uint256 amount = balance[msg.sender];
    |        balance[msg.sender] = 0;
  > |        msg.sender.transfer(amount);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x762788f4f1c0ab1f2b5c13604f377f51cc1942ee.sol(41)

[33mWarning[0m for TODReceiver in contract 'OneInFive':
    |    function withdrawOwner() public{
    |        if(msg.sender==owner){
  > |            owner.transfer(address(this).balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x762788f4f1c0ab1f2b5c13604f377f51cc1942ee.sol(46)

[33mWarning[0m for UnhandledException in contract 'OneInFive':
    |        uint256 amount = balance[msg.sender];
    |        balance[msg.sender] = 0;
  > |        msg.sender.transfer(amount);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x762788f4f1c0ab1f2b5c13604f377f51cc1942ee.sol(41)

[33mWarning[0m for UnhandledException in contract 'OneInFive':
    |    function withdrawOwner() public{
    |        if(msg.sender==owner){
  > |            owner.transfer(address(this).balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x762788f4f1c0ab1f2b5c13604f377f51cc1942ee.sol(46)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'OneInFive':
    |        uint256 amount = balance[msg.sender];
    |        balance[msg.sender] = 0;
  > |        msg.sender.transfer(amount);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x762788f4f1c0ab1f2b5c13604f377f51cc1942ee.sol(41)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'OneInFive':
    |    function withdrawOwner() public{
    |        if(msg.sender==owner){
  > |            owner.transfer(address(this).balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x762788f4f1c0ab1f2b5c13604f377f51cc1942ee.sol(46)

[31mViolation[0m for UnrestrictedWrite in contract 'OneInFive':
    |        uint256 random = uint256(hash);
    |        if(random%5==0){
  > |            balance[msg.sender] = address(this).balance;
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x762788f4f1c0ab1f2b5c13604f377f51cc1942ee.sol(30)

[31mViolation[0m for UnrestrictedWrite in contract 'OneInFive':
    |    function withdrawPlayer() internal{
    |        uint256 amount = balance[msg.sender];
  > |        balance[msg.sender] = 0;
    |        msg.sender.transfer(amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x762788f4f1c0ab1f2b5c13604f377f51cc1942ee.sol(40)

[33mWarning[0m for UnrestrictedWrite in contract 'OneInFive':
    |        uint256 random = uint256(hash);
    |        if(random%5==0){
  > |            balance[msg.sender] = address(this).balance;
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x762788f4f1c0ab1f2b5c13604f377f51cc1942ee.sol(30)

[33mWarning[0m for UnrestrictedWrite in contract 'OneInFive':
    |    function withdrawPlayer() internal{
    |        uint256 amount = balance[msg.sender];
  > |        balance[msg.sender] = 0;
    |        msg.sender.transfer(amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x762788f4f1c0ab1f2b5c13604f377f51cc1942ee.sol(40)


