Processing contract: /home/jiaming/mavs_srcs/contract@0xfd0790011ff9b80df5f22cc21b988eeeaf151645.sol:FlatPricingExt
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xfd0790011ff9b80df5f22cc21b988eeeaf151645.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xfd0790011ff9b80df5f22cc21b988eeeaf151645.sol:PricingStrategy
Processing contract: /home/jiaming/mavs_srcs/contract@0xfd0790011ff9b80df5f22cc21b988eeeaf151645.sol:SafeMathLibExt
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'FlatPricingExt':
    | * Fixed crowdsale pricing - everybody gets the same price.
    | */
  > |contract FlatPricingExt is PricingStrategy, Ownable {
    |  using SafeMathLibExt for uint;
    |
  at /home/jiaming/mavs_srcs/contract@0xfd0790011ff9b80df5f22cc21b988eeeaf151645.sol(160)

[33mWarning[0m for UnrestrictedWrite in contract 'FlatPricingExt':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xfd0790011ff9b80df5f22cc21b988eeeaf151645.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'FlatPricingExt':
    |    assert(_tier != address(0));
    |    assert(tier == address(0));
  > |    tier = _tier;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xfd0790011ff9b80df5f22cc21b988eeeaf151645.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'FlatPricingExt':
    |
    |  function updateRate(uint newOneTokenInWei) onlyTier {
  > |    oneTokenInWei = newOneTokenInWei;
    |    RateChanged(newOneTokenInWei);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xfd0790011ff9b80df5f22cc21b988eeeaf151645.sol(186)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xfd0790011ff9b80df5f22cc21b988eeeaf151645.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xfd0790011ff9b80df5f22cc21b988eeeaf151645.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xfd0790011ff9b80df5f22cc21b988eeeaf151645.sol(39)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xfd0790011ff9b80df5f22cc21b988eeeaf151645.sol(42)

[33mWarning[0m for LockedEther in contract 'SafeMathLibExt':
    | *
    | */
  > |library SafeMathLibExt {
    |
    |  function times(uint a, uint b) returns (uint) {
  at /home/jiaming/mavs_srcs/contract@0xfd0790011ff9b80df5f22cc21b988eeeaf151645.sol(127)

[33mWarning[0m for MissingInputValidation in contract 'SafeMathLibExt':
    |library SafeMathLibExt {
    |
  > |  function times(uint a, uint b) returns (uint) {
    |    uint c = a * b;
    |    assert(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0xfd0790011ff9b80df5f22cc21b988eeeaf151645.sol(129)

[33mWarning[0m for MissingInputValidation in contract 'SafeMathLibExt':
    |  }
    |
  > |  function divides(uint a, uint b) returns (uint) {
    |    assert(b > 0);
    |    uint c = a / b;
  at /home/jiaming/mavs_srcs/contract@0xfd0790011ff9b80df5f22cc21b988eeeaf151645.sol(135)

[33mWarning[0m for MissingInputValidation in contract 'SafeMathLibExt':
    |  }
    |
  > |  function minus(uint a, uint b) returns (uint) {
    |    assert(b <= a);
    |    return a - b;
  at /home/jiaming/mavs_srcs/contract@0xfd0790011ff9b80df5f22cc21b988eeeaf151645.sol(142)

[33mWarning[0m for MissingInputValidation in contract 'SafeMathLibExt':
    |  }
    |
  > |  function plus(uint a, uint b) returns (uint) {
    |    uint c = a + b;
    |    assert(c>=a);
  at /home/jiaming/mavs_srcs/contract@0xfd0790011ff9b80df5f22cc21b988eeeaf151645.sol(147)


