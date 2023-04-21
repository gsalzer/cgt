Processing contract: /home/jiaming/mavs_srcs/contract@0x6f46893139386b22f76a9ac1f47c5aafbb6a2f62.sol:CKing
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6f46893139386b22f76a9ac1f47c5aafbb6a2f62.sol:CKingCal
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6f46893139386b22f76a9ac1f47c5aafbb6a2f62.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6f46893139386b22f76a9ac1f47c5aafbb6a2f62.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'CKingCal':
    |// File: contracts\CKingCal.sol
    |
  > |library CKingCal {
    |
    |  using SafeMath for *;
  at /home/jiaming/mavs_srcs/contract@0x6f46893139386b22f76a9ac1f47c5aafbb6a2f62.sol(101)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x6f46893139386b22f76a9ac1f47c5aafbb6a2f62.sol(168)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x6f46893139386b22f76a9ac1f47c5aafbb6a2f62.sol(169)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x6f46893139386b22f76a9ac1f47c5aafbb6a2f62.sol(195)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x6f46893139386b22f76a9ac1f47c5aafbb6a2f62.sol(198)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x6f46893139386b22f76a9ac1f47c5aafbb6a2f62.sol(9)


