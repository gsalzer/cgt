Processing contract: /home/jiaming/mavs_srcs/contract@0x6d14421da39b403baab1cb0eac158ee658590798.sol:Agencies
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for LockedEther in contract 'Agencies':
    |pragma solidity ^0.4.18;
    |
  > |contract Agencies {
    |  mapping (address => string) private agencyOfOwner;
    |  mapping (string => address) private ownerOfAgency;
  at /home/jiaming/mavs_srcs/contract@0x6d14421da39b403baab1cb0eac158ee658590798.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'Agencies':
    |pragma solidity ^0.4.18;
    |
  > |contract Agencies {
    |  mapping (address => string) private agencyOfOwner;
    |  mapping (string => address) private ownerOfAgency;
  at /home/jiaming/mavs_srcs/contract@0x6d14421da39b403baab1cb0eac158ee658590798.sol(3)


