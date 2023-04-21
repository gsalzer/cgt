Processing contract: /home/jiaming/mavs_srcs/contract@0xa395480a4a90c7066c8ddb5db83e2718e750641c.sol:PreSaleFund
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAO in contract 'PreSaleFund':
    |    {
    |       if(msg.sender != address(this))throw;
  > |       if(target.call.value(amount)())
    |       {
    |          CashMove(amount, logMsg, target, currentOwner);
  at /home/jiaming/mavs_srcs/contract@0xa395480a4a90c7066c8ddb5db83e2718e750641c.sol(16)

[33mWarning[0m for LockedEther in contract 'PreSaleFund':
    |
    |
  > |contract PreSaleFund
    |{
    |    address owner = msg.sender;
  at /home/jiaming/mavs_srcs/contract@0xa395480a4a90c7066c8ddb5db83e2718e750641c.sol(4)

[31mViolation[0m for MissingInputValidation in contract 'PreSaleFund':
    |    mapping(address => uint) investors;
    |   
  > |    function loggedTransfer(uint amount, bytes32 logMsg, address target, address currentOwner) 
    |    payable
    |    {
  at /home/jiaming/mavs_srcs/contract@0xa395480a4a90c7066c8ddb5db83e2718e750641c.sol(12)

[33mWarning[0m for MissingInputValidation in contract 'PreSaleFund':
    |    }
    |    
  > |    function Invest() 
    |    public 
    |    payable 
  at /home/jiaming/mavs_srcs/contract@0xa395480a4a90c7066c8ddb5db83e2718e750641c.sol(22)

[33mWarning[0m for MissingInputValidation in contract 'PreSaleFund':
    |    }
    |
  > |    function GetInvestedAmount() 
    |    constant 
    |    public 
  at /home/jiaming/mavs_srcs/contract@0xa395480a4a90c7066c8ddb5db83e2718e750641c.sol(42)

[33mWarning[0m for MissingInputValidation in contract 'PreSaleFund':
    |    }
    |
  > |    function withdraw() 
    |    public 
    |    {
  at /home/jiaming/mavs_srcs/contract@0xa395480a4a90c7066c8ddb5db83e2718e750641c.sol(50)

[33mWarning[0m for TODAmount in contract 'PreSaleFund':
    |    {
    |       if(msg.sender != address(this))throw;
  > |       if(target.call.value(amount)())
    |       {
    |          CashMove(amount, logMsg, target, currentOwner);
  at /home/jiaming/mavs_srcs/contract@0xa395480a4a90c7066c8ddb5db83e2718e750641c.sol(16)

[33mWarning[0m for TODReceiver in contract 'PreSaleFund':
    |    {
    |       if(msg.sender != address(this))throw;
  > |       if(target.call.value(amount)())
    |       {
    |          CashMove(amount, logMsg, target, currentOwner);
  at /home/jiaming/mavs_srcs/contract@0xa395480a4a90c7066c8ddb5db83e2718e750641c.sol(16)

[33mWarning[0m for UnhandledException in contract 'PreSaleFund':
    |    {
    |       if(msg.sender != address(this))throw;
  > |       if(target.call.value(amount)())
    |       {
    |          CashMove(amount, logMsg, target, currentOwner);
  at /home/jiaming/mavs_srcs/contract@0xa395480a4a90c7066c8ddb5db83e2718e750641c.sol(16)

[33mWarning[0m for UnhandledException in contract 'PreSaleFund':
    |        if ( investors[msg.sender] > 0 && amount > 0)
    |        {
  > |            this.loggedTransfer(amount, "", msg.sender, owner);
    |            investors[msg.sender] -= amount;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xa395480a4a90c7066c8ddb5db83e2718e750641c.sol(37)

[33mWarning[0m for UnhandledException in contract 'PreSaleFund':
    |        if(msg.sender==owner)
    |        {
  > |            this.loggedTransfer(this.balance, "", msg.sender, owner);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa395480a4a90c7066c8ddb5db83e2718e750641c.sol(55)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PreSaleFund':
    |        if ( investors[msg.sender] > 0 && amount > 0)
    |        {
  > |            this.loggedTransfer(amount, "", msg.sender, owner);
    |            investors[msg.sender] -= amount;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xa395480a4a90c7066c8ddb5db83e2718e750641c.sol(37)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PreSaleFund':
    |        if(msg.sender==owner)
    |        {
  > |            this.loggedTransfer(this.balance, "", msg.sender, owner);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa395480a4a90c7066c8ddb5db83e2718e750641c.sol(55)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PreSaleFund':
    |    {
    |       if(msg.sender != address(this))throw;
  > |       if(target.call.value(amount)())
    |       {
    |          CashMove(amount, logMsg, target, currentOwner);
  at /home/jiaming/mavs_srcs/contract@0xa395480a4a90c7066c8ddb5db83e2718e750641c.sol(16)

[33mWarning[0m for UnrestrictedWrite in contract 'PreSaleFund':
    |        if (msg.value > 1 ether)
    |        {
  > |            investors[msg.sender] += msg.value;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa395480a4a90c7066c8ddb5db83e2718e750641c.sol(28)

[33mWarning[0m for UnrestrictedWrite in contract 'PreSaleFund':
    |        {
    |            this.loggedTransfer(amount, "", msg.sender, owner);
  > |            investors[msg.sender] -= amount;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa395480a4a90c7066c8ddb5db83e2718e750641c.sol(38)


