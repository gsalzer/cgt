Processing contract: /home/jiaming/mavs_srcs/contract@0x3bafb3af16203c817ee9208c6b8a748398dae689.sol:Multiply
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'Multiply':
    |    {
    |        require(msg.sender == Owner);
  > |        Owner.transfer(this.balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x3bafb3af16203c817ee9208c6b8a748398dae689.sol(13)

[33mWarning[0m for DAOConstantGas in contract 'Multiply':
    |        if(msg.value>=this.balance)
    |        {        
  > |            adr.transfer(this.balance+msg.value);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3bafb3af16203c817ee9208c6b8a748398dae689.sol(22)

[33mWarning[0m for LockedEther in contract 'Multiply':
    |pragma solidity ^0.4.17;
  > |contract Multiply {
    |
    |    address public Owner = msg.sender;
  at /home/jiaming/mavs_srcs/contract@0x3bafb3af16203c817ee9208c6b8a748398dae689.sol(2)

[31mViolation[0m for MissingInputValidation in contract 'Multiply':
    |    }
    |    
  > |    function multiply(address adr)
    |    public
    |    payable
  at /home/jiaming/mavs_srcs/contract@0x3bafb3af16203c817ee9208c6b8a748398dae689.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'Multiply':
    |contract Multiply {
    |
  > |    address public Owner = msg.sender;
    |   
    |    function() public payable{}
  at /home/jiaming/mavs_srcs/contract@0x3bafb3af16203c817ee9208c6b8a748398dae689.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'Multiply':
    |    function() public payable{}
    |   
  > |    function withdraw()
    |    payable
    |    public
  at /home/jiaming/mavs_srcs/contract@0x3bafb3af16203c817ee9208c6b8a748398dae689.sol(8)

[31mViolation[0m for TODAmount in contract 'Multiply':
    |    {
    |        require(msg.sender == Owner);
  > |        Owner.transfer(this.balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x3bafb3af16203c817ee9208c6b8a748398dae689.sol(13)

[31mViolation[0m for TODAmount in contract 'Multiply':
    |        if(msg.value>=this.balance)
    |        {        
  > |            adr.transfer(this.balance+msg.value);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3bafb3af16203c817ee9208c6b8a748398dae689.sol(22)

[33mWarning[0m for TODReceiver in contract 'Multiply':
    |    {
    |        require(msg.sender == Owner);
  > |        Owner.transfer(this.balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x3bafb3af16203c817ee9208c6b8a748398dae689.sol(13)

[33mWarning[0m for TODReceiver in contract 'Multiply':
    |        if(msg.value>=this.balance)
    |        {        
  > |            adr.transfer(this.balance+msg.value);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3bafb3af16203c817ee9208c6b8a748398dae689.sol(22)

[33mWarning[0m for UnhandledException in contract 'Multiply':
    |    {
    |        require(msg.sender == Owner);
  > |        Owner.transfer(this.balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x3bafb3af16203c817ee9208c6b8a748398dae689.sol(13)

[33mWarning[0m for UnhandledException in contract 'Multiply':
    |        if(msg.value>=this.balance)
    |        {        
  > |            adr.transfer(this.balance+msg.value);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3bafb3af16203c817ee9208c6b8a748398dae689.sol(22)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Multiply':
    |    {
    |        require(msg.sender == Owner);
  > |        Owner.transfer(this.balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x3bafb3af16203c817ee9208c6b8a748398dae689.sol(13)


