Processing contract: /home/jiaming/mavs_srcs/contract@0xf491fb89ec484d9569c68e91e14d3939b1044de7.sol:SimpleStorageCleide
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'SimpleStorageCleide':
    |
    |//Declares a new contract
  > |contract SimpleStorageCleide {
    |    //Storage. Persists in between transactions
    |    uint price;
  at /home/jiaming/mavs_srcs/contract@0xf491fb89ec484d9569c68e91e14d3939b1044de7.sol(5)

[31mViolation[0m for MissingInputValidation in contract 'SimpleStorageCleide':
    |
    |    //Allows the unsigned integer stored to be changed
  > |    function setCleide (uint newValue) 
    |    public
    |    {
  at /home/jiaming/mavs_srcs/contract@0xf491fb89ec484d9569c68e91e14d3939b1044de7.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'SimpleStorageCleide':
    |    
    |    //Returns the currently stored unsigned integer
  > |    function getCleide() 
    |    public 
    |    view
  at /home/jiaming/mavs_srcs/contract@0xf491fb89ec484d9569c68e91e14d3939b1044de7.sol(17)

[31mViolation[0m for UnrestrictedWrite in contract 'SimpleStorageCleide':
    |    public
    |    {
  > |        price = newValue;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xf491fb89ec484d9569c68e91e14d3939b1044de7.sol(13)


