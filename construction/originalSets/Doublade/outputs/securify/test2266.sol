Processing contract: /home/jiaming/mavs_srcs/contract@0x934a5e149b57d5f8eb5962732a861406926ba45b.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x934a5e149b57d5f8eb5962732a861406926ba45b.sol:PermissionManager
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
  at /home/jiaming/mavs_srcs/contract@0x934a5e149b57d5f8eb5962732a861406926ba45b.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x934a5e149b57d5f8eb5962732a861406926ba45b.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x934a5e149b57d5f8eb5962732a861406926ba45b.sol(36)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x934a5e149b57d5f8eb5962732a861406926ba45b.sol(39)

[33mWarning[0m for LockedEther in contract 'PermissionManager':
    | * Manager that stores permitted addresses 
    | */
  > |contract PermissionManager is Ownable {
    |    mapping (address => bool) permittedAddresses;
    |
  at /home/jiaming/mavs_srcs/contract@0x934a5e149b57d5f8eb5962732a861406926ba45b.sol(47)

[31mViolation[0m for MissingInputValidation in contract 'PermissionManager':
    |    mapping (address => bool) permittedAddresses;
    |
  > |    function addAddress(address newAddress) public onlyOwner {
    |        permittedAddresses[newAddress] = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x934a5e149b57d5f8eb5962732a861406926ba45b.sol(50)

[31mViolation[0m for MissingInputValidation in contract 'PermissionManager':
    |    }
    |
  > |    function removeAddress(address remAddress) public onlyOwner {
    |        permittedAddresses[remAddress] = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x934a5e149b57d5f8eb5962732a861406926ba45b.sol(54)

[31mViolation[0m for MissingInputValidation in contract 'PermissionManager':
    |    }
    |
  > |    function isPermitted(address pAddress) public view returns(bool) {
    |        if (permittedAddresses[pAddress]) {
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x934a5e149b57d5f8eb5962732a861406926ba45b.sol(58)

[33mWarning[0m for MissingInputValidation in contract 'PermissionManager':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x934a5e149b57d5f8eb5962732a861406926ba45b.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'PermissionManager':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x934a5e149b57d5f8eb5962732a861406926ba45b.sol(36)

[33mWarning[0m for UnrestrictedWrite in contract 'PermissionManager':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x934a5e149b57d5f8eb5962732a861406926ba45b.sol(39)

[33mWarning[0m for UnrestrictedWrite in contract 'PermissionManager':
    |
    |    function addAddress(address newAddress) public onlyOwner {
  > |        permittedAddresses[newAddress] = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x934a5e149b57d5f8eb5962732a861406926ba45b.sol(51)

[33mWarning[0m for UnrestrictedWrite in contract 'PermissionManager':
    |
    |    function removeAddress(address remAddress) public onlyOwner {
  > |        permittedAddresses[remAddress] = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x934a5e149b57d5f8eb5962732a861406926ba45b.sol(55)


