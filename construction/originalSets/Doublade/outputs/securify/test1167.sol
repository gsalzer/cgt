Processing contract: /home/jiaming/mavs_srcs/contract@0x49f67fd47f0873ba8b349ce7e58a813b2d2eae92.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x49f67fd47f0873ba8b349ce7e58a813b2d2eae92.sol:TestorToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x49f67fd47f0873ba8b349ce7e58a813b2d2eae92.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x49f67fd47f0873ba8b349ce7e58a813b2d2eae92.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x49f67fd47f0873ba8b349ce7e58a813b2d2eae92.sol(38)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x49f67fd47f0873ba8b349ce7e58a813b2d2eae92.sol(41)

[33mWarning[0m for LockedEther in contract 'TestorToken':
    |}
    |
  > |contract TestorToken is Ownable {
    |    
    |
  at /home/jiaming/mavs_srcs/contract@0x49f67fd47f0873ba8b349ce7e58a813b2d2eae92.sol(46)

[33mWarning[0m for MissingInputValidation in contract 'TestorToken':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x49f67fd47f0873ba8b349ce7e58a813b2d2eae92.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'TestorToken':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x49f67fd47f0873ba8b349ce7e58a813b2d2eae92.sol(38)

[33mWarning[0m for UnrestrictedWrite in contract 'TestorToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x49f67fd47f0873ba8b349ce7e58a813b2d2eae92.sol(41)


