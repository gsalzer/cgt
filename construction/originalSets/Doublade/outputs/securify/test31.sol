Processing contract: /home/jiaming/mavs_srcs/contract@0x021fd9ba5b56855a9ab250247fd676e04d040616.sol:SimpleStorageKevin
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'SimpleStorageKevin':
    |
    |//Declares a new contract
  > |contract SimpleStorageKevin {
    |    
    |    //Storage. Persists in between transactions
  at /home/jiaming/mavs_srcs/contract@0x021fd9ba5b56855a9ab250247fd676e04d040616.sol(5)

[31mViolation[0m for MissingInputValidation in contract 'SimpleStorageKevin':
    |
    |    //Allows the unsigned integer stored to be changed
  > |    function setKevin(uint newValue)
    |        public
    |    {
  at /home/jiaming/mavs_srcs/contract@0x021fd9ba5b56855a9ab250247fd676e04d040616.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'SimpleStorageKevin':
    |    
    |    //Returns the currently stored unsigned integer
  > |    function getKevin()
    |        public
    |        view
  at /home/jiaming/mavs_srcs/contract@0x021fd9ba5b56855a9ab250247fd676e04d040616.sol(18)

[31mViolation[0m for UnrestrictedWrite in contract 'SimpleStorageKevin':
    |        public
    |    {
  > |        x = newValue;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x021fd9ba5b56855a9ab250247fd676e04d040616.sol(14)


