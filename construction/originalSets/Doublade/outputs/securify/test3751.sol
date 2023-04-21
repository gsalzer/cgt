Processing contract: /home/jiaming/mavs_srcs/contract@0xf67986956e5aaa3adb2a9ddb8c99ab857b48df72.sol:Certification
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf67986956e5aaa3adb2a9ddb8c99ab857b48df72.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for LockedEther in contract 'Certification':
    |// File: contracts/Certification.sol
    |
  > |contract Certification is Ownable {
    |
    |  struct Certifier {
  at /home/jiaming/mavs_srcs/contract@0xf67986956e5aaa3adb2a9ddb8c99ab857b48df72.sol(49)

[31mViolation[0m for UnrestrictedWrite in contract 'Certification':
    |// File: contracts/Certification.sol
    |
  > |contract Certification is Ownable {
    |
    |  struct Certifier {
  at /home/jiaming/mavs_srcs/contract@0xf67986956e5aaa3adb2a9ddb8c99ab857b48df72.sol(49)

[33mWarning[0m for UnrestrictedWrite in contract 'Certification':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xf67986956e5aaa3adb2a9ddb8c99ab857b48df72.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'Certification':
    |// File: contracts/Certification.sol
    |
  > |contract Certification is Ownable {
    |
    |  struct Certifier {
  at /home/jiaming/mavs_srcs/contract@0xf67986956e5aaa3adb2a9ddb8c99ab857b48df72.sol(49)

[33mWarning[0m for UnrestrictedWrite in contract 'Certification':
    |  function setCertifierInfo(address certifier, bool valid, string id)
    |  onlyOwner public {
  > |    certifiers[certifier] = Certifier({
    |      valid: valid,
    |      id: id
  at /home/jiaming/mavs_srcs/contract@0xf67986956e5aaa3adb2a9ddb8c99ab857b48df72.sol(63)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xf67986956e5aaa3adb2a9ddb8c99ab857b48df72.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xf67986956e5aaa3adb2a9ddb8c99ab857b48df72.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xf67986956e5aaa3adb2a9ddb8c99ab857b48df72.sol(39)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xf67986956e5aaa3adb2a9ddb8c99ab857b48df72.sol(42)


