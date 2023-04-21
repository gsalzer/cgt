Processing contract: /home/jiaming/mavs_srcs/contract@0xbc3678569b685b7ae7c37de97e8f30463083b394.sol:Registration
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbc3678569b685b7ae7c37de97e8f30463083b394.sol:owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'Registration':
    |        require(this.balance > 0);
    |        
  > |        msg.sender.transfer(this.balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xbc3678569b685b7ae7c37de97e8f30463083b394.sol(37)

[33mWarning[0m for LockedEther in contract 'Registration':
    |}
    |
  > |contract Registration is owned { 
    |    
    |    mapping (address => bool) public isRegistered;   
  at /home/jiaming/mavs_srcs/contract@0xbc3678569b685b7ae7c37de97e8f30463083b394.sol(20)

[31mViolation[0m for MissingInputValidation in contract 'Registration':
    |    }
    |
  > |    function transferOwnership(address newOwner) public onlyOwner {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbc3678569b685b7ae7c37de97e8f30463083b394.sol(15)

[31mViolation[0m for MissingInputValidation in contract 'Registration':
    |contract Registration is owned { 
    |    
  > |    mapping (address => bool) public isRegistered;   
    |      
    |    function () public payable {
  at /home/jiaming/mavs_srcs/contract@0xbc3678569b685b7ae7c37de97e8f30463083b394.sol(22)

[33mWarning[0m for MissingInputValidation in contract 'Registration':
    |
    |contract owned {
  > |    address public owner;
    |
    |    function owned() public {
  at /home/jiaming/mavs_srcs/contract@0xbc3678569b685b7ae7c37de97e8f30463083b394.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'Registration':
    |    }
    |    
  > |    function collectFees() onlyOwner public { 
    |        require(this.balance > 0);
    |        
  at /home/jiaming/mavs_srcs/contract@0xbc3678569b685b7ae7c37de97e8f30463083b394.sol(34)

[31mViolation[0m for TODAmount in contract 'Registration':
    |        require(this.balance > 0);
    |        
  > |        msg.sender.transfer(this.balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xbc3678569b685b7ae7c37de97e8f30463083b394.sol(37)

[33mWarning[0m for TODReceiver in contract 'Registration':
    |        require(this.balance > 0);
    |        
  > |        msg.sender.transfer(this.balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xbc3678569b685b7ae7c37de97e8f30463083b394.sol(37)

[33mWarning[0m for UnhandledException in contract 'Registration':
    |        require(this.balance > 0);
    |        
  > |        msg.sender.transfer(this.balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xbc3678569b685b7ae7c37de97e8f30463083b394.sol(37)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Registration':
    |        require(this.balance > 0);
    |        
  > |        msg.sender.transfer(this.balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xbc3678569b685b7ae7c37de97e8f30463083b394.sol(37)

[33mWarning[0m for UnrestrictedWrite in contract 'Registration':
    |
    |    function transferOwnership(address newOwner) public onlyOwner {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xbc3678569b685b7ae7c37de97e8f30463083b394.sol(16)

[33mWarning[0m for LockedEther in contract 'owned':
    |pragma solidity ^0.4.18;
    |
  > |contract owned {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xbc3678569b685b7ae7c37de97e8f30463083b394.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'owned':
    |    }
    |
  > |    function transferOwnership(address newOwner) public onlyOwner {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbc3678569b685b7ae7c37de97e8f30463083b394.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'owned':
    |
    |contract owned {
  > |    address public owner;
    |
    |    function owned() public {
  at /home/jiaming/mavs_srcs/contract@0xbc3678569b685b7ae7c37de97e8f30463083b394.sol(4)

[33mWarning[0m for UnrestrictedWrite in contract 'owned':
    |
    |    function transferOwnership(address newOwner) public onlyOwner {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xbc3678569b685b7ae7c37de97e8f30463083b394.sol(16)


