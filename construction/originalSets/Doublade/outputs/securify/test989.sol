Processing contract: /home/jiaming/mavs_srcs/contract@0x3e013fc32a54c4c5b6991ba539dcd0ec4355c859.sol:MultiplicatorX4
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAO in contract 'MultiplicatorX4':
    |    {
    |        require(msg.sender == Owner);
  > |        adr.call.value(msg.value)(data);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x3e013fc32a54c4c5b6991ba539dcd0ec4355c859.sol(22)

[33mWarning[0m for DAOConstantGas in contract 'MultiplicatorX4':
    |    {
    |        require(msg.sender == Owner);
  > |        Owner.transfer(this.balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x3e013fc32a54c4c5b6991ba539dcd0ec4355c859.sol(14)

[33mWarning[0m for DAOConstantGas in contract 'MultiplicatorX4':
    |        if(msg.value>=this.balance)
    |        {        
  > |            adr.transfer(this.balance+msg.value);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3e013fc32a54c4c5b6991ba539dcd0ec4355c859.sol(31)

[33mWarning[0m for LockedEther in contract 'MultiplicatorX4':
    |pragma solidity ^0.4.18;
    |
  > |contract MultiplicatorX4
    |{
    |    address public Owner = msg.sender;
  at /home/jiaming/mavs_srcs/contract@0x3e013fc32a54c4c5b6991ba539dcd0ec4355c859.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'MultiplicatorX4':
    |    }
    |    
  > |    function multiplicate(address adr)
    |    public
    |    payable
  at /home/jiaming/mavs_srcs/contract@0x3e013fc32a54c4c5b6991ba539dcd0ec4355c859.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'MultiplicatorX4':
    |contract MultiplicatorX4
    |{
  > |    address public Owner = msg.sender;
    |   
    |    function() public payable{}
  at /home/jiaming/mavs_srcs/contract@0x3e013fc32a54c4c5b6991ba539dcd0ec4355c859.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'MultiplicatorX4':
    |    function() public payable{}
    |   
  > |    function withdraw()
    |    payable
    |    public
  at /home/jiaming/mavs_srcs/contract@0x3e013fc32a54c4c5b6991ba539dcd0ec4355c859.sol(9)

[31mViolation[0m for TODAmount in contract 'MultiplicatorX4':
    |    {
    |        require(msg.sender == Owner);
  > |        Owner.transfer(this.balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x3e013fc32a54c4c5b6991ba539dcd0ec4355c859.sol(14)

[31mViolation[0m for TODAmount in contract 'MultiplicatorX4':
    |        if(msg.value>=this.balance)
    |        {        
  > |            adr.transfer(this.balance+msg.value);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3e013fc32a54c4c5b6991ba539dcd0ec4355c859.sol(31)

[33mWarning[0m for TODReceiver in contract 'MultiplicatorX4':
    |    {
    |        require(msg.sender == Owner);
  > |        Owner.transfer(this.balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x3e013fc32a54c4c5b6991ba539dcd0ec4355c859.sol(14)

[33mWarning[0m for TODReceiver in contract 'MultiplicatorX4':
    |        if(msg.value>=this.balance)
    |        {        
  > |            adr.transfer(this.balance+msg.value);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3e013fc32a54c4c5b6991ba539dcd0ec4355c859.sol(31)

[31mViolation[0m for UnhandledException in contract 'MultiplicatorX4':
    |    {
    |        require(msg.sender == Owner);
  > |        adr.call.value(msg.value)(data);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x3e013fc32a54c4c5b6991ba539dcd0ec4355c859.sol(22)

[33mWarning[0m for UnhandledException in contract 'MultiplicatorX4':
    |    {
    |        require(msg.sender == Owner);
  > |        Owner.transfer(this.balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x3e013fc32a54c4c5b6991ba539dcd0ec4355c859.sol(14)

[33mWarning[0m for UnhandledException in contract 'MultiplicatorX4':
    |        if(msg.value>=this.balance)
    |        {        
  > |            adr.transfer(this.balance+msg.value);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3e013fc32a54c4c5b6991ba539dcd0ec4355c859.sol(31)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MultiplicatorX4':
    |    {
    |        require(msg.sender == Owner);
  > |        Owner.transfer(this.balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x3e013fc32a54c4c5b6991ba539dcd0ec4355c859.sol(14)


