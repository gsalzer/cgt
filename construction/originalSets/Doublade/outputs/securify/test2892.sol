Processing contract: /home/jiaming/mavs_srcs/contract@0xbe36496f1e6bfd74707794a8006f4cb022d41f59.sol:test
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'test':
    |    function a() public
    |    {
  > |        msg.sender.transfer(this.balance);    
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xbe36496f1e6bfd74707794a8006f4cb022d41f59.sol(5)

[33mWarning[0m for LockedEther in contract 'test':
  > |contract test {
    |    
    |    function a() public
  at /home/jiaming/mavs_srcs/contract@0xbe36496f1e6bfd74707794a8006f4cb022d41f59.sol(1)

[33mWarning[0m for MissingInputValidation in contract 'test':
    |contract test {
    |    
  > |    function a() public
    |    {
    |        msg.sender.transfer(this.balance);    
  at /home/jiaming/mavs_srcs/contract@0xbe36496f1e6bfd74707794a8006f4cb022d41f59.sol(3)

[31mViolation[0m for TODAmount in contract 'test':
    |    function a() public
    |    {
  > |        msg.sender.transfer(this.balance);    
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xbe36496f1e6bfd74707794a8006f4cb022d41f59.sol(5)

[33mWarning[0m for TODReceiver in contract 'test':
    |    function a() public
    |    {
  > |        msg.sender.transfer(this.balance);    
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xbe36496f1e6bfd74707794a8006f4cb022d41f59.sol(5)

[33mWarning[0m for UnhandledException in contract 'test':
    |    function a() public
    |    {
  > |        msg.sender.transfer(this.balance);    
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xbe36496f1e6bfd74707794a8006f4cb022d41f59.sol(5)


