Processing contract: /home/jiaming/mavs_srcs/contract@0x9295ede03f6eab5c8f215d3ddcf7dca3a26ca087.sol:SimpleStorage
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'SimpleStorage':
    |pragma solidity ^0.4.0;
    |
  > |contract SimpleStorage {
    |    uint storedData;
    |
  at /home/jiaming/mavs_srcs/contract@0x9295ede03f6eab5c8f215d3ddcf7dca3a26ca087.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'SimpleStorage':
    |    uint storedData;
    |
  > |    function set(uint x) {
    |        storedData = x;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9295ede03f6eab5c8f215d3ddcf7dca3a26ca087.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'SimpleStorage':
    |    }
    |
  > |    function get() constant returns (uint storedData) {
    |        return storedData;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9295ede03f6eab5c8f215d3ddcf7dca3a26ca087.sol(10)

[31mViolation[0m for UnrestrictedWrite in contract 'SimpleStorage':
    |
    |    function set(uint x) {
  > |        storedData = x;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9295ede03f6eab5c8f215d3ddcf7dca3a26ca087.sol(7)


