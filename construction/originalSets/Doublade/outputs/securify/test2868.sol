Processing contract: /home/jiaming/mavs_srcs/contract@0xbcc1aa3bfc13c45df272ef2b99ca87248b0da952.sol:Crowdsale
Processing contract: /home/jiaming/mavs_srcs/contract@0xbcc1aa3bfc13c45df272ef2b99ca87248b0da952.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xbcc1aa3bfc13c45df272ef2b99ca87248b0da952.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xbcc1aa3bfc13c45df272ef2b99ca87248b0da952.sol:EthTranchePricing
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbcc1aa3bfc13c45df272ef2b99ca87248b0da952.sol:FinalizeAgent
Processing contract: /home/jiaming/mavs_srcs/contract@0xbcc1aa3bfc13c45df272ef2b99ca87248b0da952.sol:FractionalERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xbcc1aa3bfc13c45df272ef2b99ca87248b0da952.sol:Haltable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbcc1aa3bfc13c45df272ef2b99ca87248b0da952.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbcc1aa3bfc13c45df272ef2b99ca87248b0da952.sol:PricingStrategy
Processing contract: /home/jiaming/mavs_srcs/contract@0xbcc1aa3bfc13c45df272ef2b99ca87248b0da952.sol:SafeMathLib
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'EthTranchePricing':
    |///      covering more than one tranche, the price of the lowest tranche will apply
    |///      to the whole order.
  > |contract EthTranchePricing is PricingStrategy, Ownable {
    |
    |  using SafeMathLib for uint;
  at /home/jiaming/mavs_srcs/contract@0xbcc1aa3bfc13c45df272ef2b99ca87248b0da952.sol(813)

[33mWarning[0m for UnrestrictedWrite in contract 'EthTranchePricing':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));      
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xbcc1aa3bfc13c45df272ef2b99ca87248b0da952.sol(143)

[33mWarning[0m for UnrestrictedWrite in contract 'EthTranchePricing':
    |    onlyOwner
    |  {
  > |    preicoAddresses[preicoAddress] = pricePerToken;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xbcc1aa3bfc13c45df272ef2b99ca87248b0da952.sol(885)

[33mWarning[0m for LockedEther in contract 'Haltable':
    | * Originally envisioned in FirstBlood ICO contract.
    | */
  > |contract Haltable is Ownable {
    |  bool public halted;
    |
  at /home/jiaming/mavs_srcs/contract@0xbcc1aa3bfc13c45df272ef2b99ca87248b0da952.sol(158)

[33mWarning[0m for MissingInputValidation in contract 'Haltable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xbcc1aa3bfc13c45df272ef2b99ca87248b0da952.sol(116)

[33mWarning[0m for MissingInputValidation in contract 'Haltable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));      
    |    owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0xbcc1aa3bfc13c45df272ef2b99ca87248b0da952.sol(141)

[33mWarning[0m for MissingInputValidation in contract 'Haltable':
    | */
    |contract Haltable is Ownable {
  > |  bool public halted;
    |
    |  modifier stopInEmergency {
  at /home/jiaming/mavs_srcs/contract@0xbcc1aa3bfc13c45df272ef2b99ca87248b0da952.sol(159)

[33mWarning[0m for MissingInputValidation in contract 'Haltable':
    |
    |  // called by the owner on emergency, triggers stopped state
  > |  function halt() external onlyOwner {
    |    halted = true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xbcc1aa3bfc13c45df272ef2b99ca87248b0da952.sol(177)

[33mWarning[0m for MissingInputValidation in contract 'Haltable':
    |
    |  // called by the owner on end of emergency, returns to normal state
  > |  function unhalt() external onlyOwner onlyInEmergency {
    |    halted = false;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xbcc1aa3bfc13c45df272ef2b99ca87248b0da952.sol(182)

[33mWarning[0m for UnrestrictedWrite in contract 'Haltable':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));      
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xbcc1aa3bfc13c45df272ef2b99ca87248b0da952.sol(143)

[33mWarning[0m for UnrestrictedWrite in contract 'Haltable':
    |  // called by the owner on emergency, triggers stopped state
    |  function halt() external onlyOwner {
  > |    halted = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xbcc1aa3bfc13c45df272ef2b99ca87248b0da952.sol(178)

[33mWarning[0m for UnrestrictedWrite in contract 'Haltable':
    |  // called by the owner on end of emergency, returns to normal state
    |  function unhalt() external onlyOwner onlyInEmergency {
  > |    halted = false;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xbcc1aa3bfc13c45df272ef2b99ca87248b0da952.sol(183)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xbcc1aa3bfc13c45df272ef2b99ca87248b0da952.sol(115)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xbcc1aa3bfc13c45df272ef2b99ca87248b0da952.sol(116)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));      
    |    owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0xbcc1aa3bfc13c45df272ef2b99ca87248b0da952.sol(141)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));      
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xbcc1aa3bfc13c45df272ef2b99ca87248b0da952.sol(143)

[33mWarning[0m for LockedEther in contract 'SafeMathLib':
    | *
    | */
  > |library SafeMathLib {
    |
    |  function times(uint a, uint b) returns (uint) {
  at /home/jiaming/mavs_srcs/contract@0xbcc1aa3bfc13c45df272ef2b99ca87248b0da952.sol(80)

[33mWarning[0m for MissingInputValidation in contract 'SafeMathLib':
    |library SafeMathLib {
    |
  > |  function times(uint a, uint b) returns (uint) {
    |    uint c = a * b;
    |    assert(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0xbcc1aa3bfc13c45df272ef2b99ca87248b0da952.sol(82)

[33mWarning[0m for MissingInputValidation in contract 'SafeMathLib':
    |  }
    |
  > |  function minus(uint a, uint b) returns (uint) {
    |    assert(b <= a);
    |    return a - b;
  at /home/jiaming/mavs_srcs/contract@0xbcc1aa3bfc13c45df272ef2b99ca87248b0da952.sol(88)

[33mWarning[0m for MissingInputValidation in contract 'SafeMathLib':
    |  }
    |
  > |  function plus(uint a, uint b) returns (uint) {
    |    uint c = a + b;
    |    assert(c>=a);
  at /home/jiaming/mavs_srcs/contract@0xbcc1aa3bfc13c45df272ef2b99ca87248b0da952.sol(93)


