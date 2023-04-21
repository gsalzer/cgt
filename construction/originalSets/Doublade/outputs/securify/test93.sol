Processing contract: /home/jiaming/mavs_srcs/contract@0x062e41d1037745dc203e8c1aaca651b8d157da96.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x062e41d1037745dc203e8c1aaca651b8d157da96.sol:Whitelist
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
  at /home/jiaming/mavs_srcs/contract@0x062e41d1037745dc203e8c1aaca651b8d157da96.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x062e41d1037745dc203e8c1aaca651b8d157da96.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x062e41d1037745dc203e8c1aaca651b8d157da96.sol(36)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x062e41d1037745dc203e8c1aaca651b8d157da96.sol(39)

[33mWarning[0m for LockedEther in contract 'Whitelist':
    | * @dev This simplifies the implementation of "user permissions".
    | */
  > |contract Whitelist is Ownable {
    |  mapping(address => bool) public whitelist;
    |  
  at /home/jiaming/mavs_srcs/contract@0x062e41d1037745dc203e8c1aaca651b8d157da96.sol(49)

[31mViolation[0m for MissingInputValidation in contract 'Whitelist':
    | */
    |contract Whitelist is Ownable {
  > |  mapping(address => bool) public whitelist;
    |  
    |  event WhitelistedAddressAdded(address addr);
  at /home/jiaming/mavs_srcs/contract@0x062e41d1037745dc203e8c1aaca651b8d157da96.sol(50)

[33mWarning[0m for MissingInputValidation in contract 'Whitelist':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x062e41d1037745dc203e8c1aaca651b8d157da96.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'Whitelist':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x062e41d1037745dc203e8c1aaca651b8d157da96.sol(36)

[33mWarning[0m for MissingInputValidation in contract 'Whitelist':
    |   * false if all addresses were already in the whitelist  
    |   */
  > |  function addAddressesToWhitelist(address[] addrs) onlyOwner public returns(bool success) {
    |    for (uint256 i = 0; i < addrs.length; i++) {
    |      if (addAddressToWhitelist(addrs[i])) {
  at /home/jiaming/mavs_srcs/contract@0x062e41d1037745dc203e8c1aaca651b8d157da96.sol(82)

[33mWarning[0m for MissingInputValidation in contract 'Whitelist':
    |   * false if all addresses weren't in the whitelist in the first place
    |   */
  > |  function removeAddressesFromWhitelist(address[] addrs) onlyOwner public returns(bool success) {
    |    for (uint256 i = 0; i < addrs.length; i++) {
    |      if (removeAddressFromWhitelist(addrs[i])) {
  at /home/jiaming/mavs_srcs/contract@0x062e41d1037745dc203e8c1aaca651b8d157da96.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'Whitelist':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x062e41d1037745dc203e8c1aaca651b8d157da96.sol(39)

[33mWarning[0m for UnrestrictedWrite in contract 'Whitelist':
    |  function addAddressToWhitelist(address addr) onlyOwner public returns(bool success) {
    |    if (!whitelist[addr]) {
  > |      whitelist[addr] = true;
    |      WhitelistedAddressAdded(addr);
    |      success = true; 
  at /home/jiaming/mavs_srcs/contract@0x062e41d1037745dc203e8c1aaca651b8d157da96.sol(70)

[33mWarning[0m for UnrestrictedWrite in contract 'Whitelist':
    |  function removeAddressFromWhitelist(address addr) onlyOwner public returns(bool success) {
    |    if (whitelist[addr]) {
  > |      whitelist[addr] = false;
    |      WhitelistedAddressRemoved(addr);
    |      success = true;
  at /home/jiaming/mavs_srcs/contract@0x062e41d1037745dc203e8c1aaca651b8d157da96.sol(98)


