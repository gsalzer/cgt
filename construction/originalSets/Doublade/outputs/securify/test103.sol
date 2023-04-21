Processing contract: /home/jiaming/mavs_srcs/contract@0x06cdfdc446705b7fd627f2f38bd9b1514e1fd776.sol:VerificationStorage
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'VerificationStorage':
    |pragma solidity ^0.4.24;
    |
  > |contract VerificationStorage {
    |    event Verification(bytes ipfsHash);
    |
  at /home/jiaming/mavs_srcs/contract@0x06cdfdc446705b7fd627f2f38bd9b1514e1fd776.sol(3)

[33mWarning[0m for MissingInputValidation in contract 'VerificationStorage':
    |    event Verification(bytes ipfsHash);
    |
  > |    function verify(bytes _ipfsHash) public {
    |        emit Verification(_ipfsHash);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x06cdfdc446705b7fd627f2f38bd9b1514e1fd776.sol(6)


