Processing contract: /home/jiaming/mavs_srcs/contract@0x80002ac729a5651da4db3b9dca8dc79044dafedc.sol:CrowdsaleExt
Processing contract: /home/jiaming/mavs_srcs/contract@0x80002ac729a5651da4db3b9dca8dc79044dafedc.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x80002ac729a5651da4db3b9dca8dc79044dafedc.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x80002ac729a5651da4db3b9dca8dc79044dafedc.sol:FinalizeAgent
Processing contract: /home/jiaming/mavs_srcs/contract@0x80002ac729a5651da4db3b9dca8dc79044dafedc.sol:FlatPricingExt
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x80002ac729a5651da4db3b9dca8dc79044dafedc.sol:FractionalERC20Ext
Processing contract: /home/jiaming/mavs_srcs/contract@0x80002ac729a5651da4db3b9dca8dc79044dafedc.sol:Haltable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x80002ac729a5651da4db3b9dca8dc79044dafedc.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x80002ac729a5651da4db3b9dca8dc79044dafedc.sol:PricingStrategy
Processing contract: /home/jiaming/mavs_srcs/contract@0x80002ac729a5651da4db3b9dca8dc79044dafedc.sol:SafeMathLibExt
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'FlatPricingExt':
    | * Fixed crowdsale pricing - everybody gets the same price.
    | */
  > |contract FlatPricingExt is PricingStrategy, Ownable {
    |  using SafeMathLibExt for uint;
    |  /* How many weis one token costs */
  at /home/jiaming/mavs_srcs/contract@0x80002ac729a5651da4db3b9dca8dc79044dafedc.sol(776)

[33mWarning[0m for UnhandledException in contract 'FlatPricingExt':
    |    if (!isUpdatable) throw;
    |    CrowdsaleExt lastCrowdsaleCntrct = CrowdsaleExt(lastCrowdsale);
  > |    if (lastCrowdsaleCntrct.finalized()) throw;
    |    oneTokenInWei = newOneTokenInWei;
    |    RateChanged(newOneTokenInWei);
  at /home/jiaming/mavs_srcs/contract@0x80002ac729a5651da4db3b9dca8dc79044dafedc.sol(795)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FlatPricingExt':
    |    if (!isUpdatable) throw;
    |    CrowdsaleExt lastCrowdsaleCntrct = CrowdsaleExt(lastCrowdsale);
  > |    if (lastCrowdsaleCntrct.finalized()) throw;
    |    oneTokenInWei = newOneTokenInWei;
    |    RateChanged(newOneTokenInWei);
  at /home/jiaming/mavs_srcs/contract@0x80002ac729a5651da4db3b9dca8dc79044dafedc.sol(795)

[33mWarning[0m for UnrestrictedWrite in contract 'FlatPricingExt':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x80002ac729a5651da4db3b9dca8dc79044dafedc.sol(43)

[33mWarning[0m for UnrestrictedWrite in contract 'FlatPricingExt':
    |  }
    |  function setLastCrowdsale(address addr) onlyOwner {
  > |    lastCrowdsale = addr;
    |  }
    |  function updateRate(uint newOneTokenInWei) onlyOwner {
  at /home/jiaming/mavs_srcs/contract@0x80002ac729a5651da4db3b9dca8dc79044dafedc.sol(790)

[33mWarning[0m for UnrestrictedWrite in contract 'FlatPricingExt':
    |    CrowdsaleExt lastCrowdsaleCntrct = CrowdsaleExt(lastCrowdsale);
    |    if (lastCrowdsaleCntrct.finalized()) throw;
  > |    oneTokenInWei = newOneTokenInWei;
    |    RateChanged(newOneTokenInWei);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x80002ac729a5651da4db3b9dca8dc79044dafedc.sol(796)

[33mWarning[0m for LockedEther in contract 'Haltable':
    | * Originally envisioned in FirstBlood ICO contract.
    | */
  > |contract Haltable is Ownable {
    |  bool public halted;
    |  modifier stopInEmergency {
  at /home/jiaming/mavs_srcs/contract@0x80002ac729a5651da4db3b9dca8dc79044dafedc.sol(107)

[33mWarning[0m for MissingInputValidation in contract 'Haltable':
    | */
    |contract Ownable {
  > |  address public owner;
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x80002ac729a5651da4db3b9dca8dc79044dafedc.sol(20)

[33mWarning[0m for MissingInputValidation in contract 'Haltable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x80002ac729a5651da4db3b9dca8dc79044dafedc.sol(40)

[33mWarning[0m for MissingInputValidation in contract 'Haltable':
    | */
    |contract Haltable is Ownable {
  > |  bool public halted;
    |  modifier stopInEmergency {
    |    if (halted) throw;
  at /home/jiaming/mavs_srcs/contract@0x80002ac729a5651da4db3b9dca8dc79044dafedc.sol(108)

[33mWarning[0m for MissingInputValidation in contract 'Haltable':
    |  }
    |  // called by the owner on emergency, triggers stopped state
  > |  function halt() external onlyOwner {
    |    halted = true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x80002ac729a5651da4db3b9dca8dc79044dafedc.sol(122)

[33mWarning[0m for MissingInputValidation in contract 'Haltable':
    |  }
    |  // called by the owner on end of emergency, returns to normal state
  > |  function unhalt() external onlyOwner onlyInEmergency {
    |    halted = false;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x80002ac729a5651da4db3b9dca8dc79044dafedc.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'Haltable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x80002ac729a5651da4db3b9dca8dc79044dafedc.sol(43)

[33mWarning[0m for UnrestrictedWrite in contract 'Haltable':
    |  // called by the owner on emergency, triggers stopped state
    |  function halt() external onlyOwner {
  > |    halted = true;
    |  }
    |  // called by the owner on end of emergency, returns to normal state
  at /home/jiaming/mavs_srcs/contract@0x80002ac729a5651da4db3b9dca8dc79044dafedc.sol(123)

[33mWarning[0m for UnrestrictedWrite in contract 'Haltable':
    |  // called by the owner on end of emergency, returns to normal state
    |  function unhalt() external onlyOwner onlyInEmergency {
  > |    halted = false;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x80002ac729a5651da4db3b9dca8dc79044dafedc.sol(127)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x80002ac729a5651da4db3b9dca8dc79044dafedc.sol(19)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x80002ac729a5651da4db3b9dca8dc79044dafedc.sol(20)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x80002ac729a5651da4db3b9dca8dc79044dafedc.sol(40)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x80002ac729a5651da4db3b9dca8dc79044dafedc.sol(43)

[33mWarning[0m for LockedEther in contract 'SafeMathLibExt':
    | *
    | */
  > |library SafeMathLibExt {
    |  function times(uint a, uint b) returns (uint) {
    |    uint c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x80002ac729a5651da4db3b9dca8dc79044dafedc.sol(61)

[33mWarning[0m for MissingInputValidation in contract 'SafeMathLibExt':
    | */
    |library SafeMathLibExt {
  > |  function times(uint a, uint b) returns (uint) {
    |    uint c = a * b;
    |    assert(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0x80002ac729a5651da4db3b9dca8dc79044dafedc.sol(62)

[33mWarning[0m for MissingInputValidation in contract 'SafeMathLibExt':
    |    return c;
    |  }
  > |  function divides(uint a, uint b) returns (uint) {
    |    assert(b > 0);
    |    uint c = a / b;
  at /home/jiaming/mavs_srcs/contract@0x80002ac729a5651da4db3b9dca8dc79044dafedc.sol(67)

[33mWarning[0m for MissingInputValidation in contract 'SafeMathLibExt':
    |    return c;
    |  }
  > |  function minus(uint a, uint b) returns (uint) {
    |    assert(b <= a);
    |    return a - b;
  at /home/jiaming/mavs_srcs/contract@0x80002ac729a5651da4db3b9dca8dc79044dafedc.sol(73)

[33mWarning[0m for MissingInputValidation in contract 'SafeMathLibExt':
    |    return a - b;
    |  }
  > |  function plus(uint a, uint b) returns (uint) {
    |    uint c = a + b;
    |    assert(c>=a);
  at /home/jiaming/mavs_srcs/contract@0x80002ac729a5651da4db3b9dca8dc79044dafedc.sol(77)


