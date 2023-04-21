Processing contract: /home/jiaming/mavs_srcs/contract@0x851374d83d0a38ecd1a682979fbe48fcccb82470.sol:Crowdsale
Processing contract: /home/jiaming/mavs_srcs/contract@0x851374d83d0a38ecd1a682979fbe48fcccb82470.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x851374d83d0a38ecd1a682979fbe48fcccb82470.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x851374d83d0a38ecd1a682979fbe48fcccb82470.sol:FinalizeAgent
Processing contract: /home/jiaming/mavs_srcs/contract@0x851374d83d0a38ecd1a682979fbe48fcccb82470.sol:FractionalERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x851374d83d0a38ecd1a682979fbe48fcccb82470.sol:Haltable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x851374d83d0a38ecd1a682979fbe48fcccb82470.sol:NullFinalizeAgent
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x851374d83d0a38ecd1a682979fbe48fcccb82470.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x851374d83d0a38ecd1a682979fbe48fcccb82470.sol:PricingStrategy
Processing contract: /home/jiaming/mavs_srcs/contract@0x851374d83d0a38ecd1a682979fbe48fcccb82470.sol:ReleasableToken
Processing contract: /home/jiaming/mavs_srcs/contract@0x851374d83d0a38ecd1a682979fbe48fcccb82470.sol:SafeMathLib
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Haltable':
    | * Originally envisioned in FirstBlood ICO contract.
    | */
  > |contract Haltable is Ownable {
    |  bool public halted;
    |
  at /home/jiaming/mavs_srcs/contract@0x851374d83d0a38ecd1a682979fbe48fcccb82470.sol(110)

[33mWarning[0m for MissingInputValidation in contract 'Haltable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x851374d83d0a38ecd1a682979fbe48fcccb82470.sol(68)

[33mWarning[0m for MissingInputValidation in contract 'Haltable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));      
    |    owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x851374d83d0a38ecd1a682979fbe48fcccb82470.sol(93)

[33mWarning[0m for MissingInputValidation in contract 'Haltable':
    | */
    |contract Haltable is Ownable {
  > |  bool public halted;
    |
    |  modifier stopInEmergency {
  at /home/jiaming/mavs_srcs/contract@0x851374d83d0a38ecd1a682979fbe48fcccb82470.sol(111)

[33mWarning[0m for MissingInputValidation in contract 'Haltable':
    |
    |  // called by the owner on emergency, triggers stopped state
  > |  function halt() external onlyOwner {
    |    halted = true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x851374d83d0a38ecd1a682979fbe48fcccb82470.sol(129)

[33mWarning[0m for MissingInputValidation in contract 'Haltable':
    |
    |  // called by the owner on end of emergency, returns to normal state
  > |  function unhalt() external onlyOwner onlyInEmergency {
    |    halted = false;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x851374d83d0a38ecd1a682979fbe48fcccb82470.sol(134)

[33mWarning[0m for UnrestrictedWrite in contract 'Haltable':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));      
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x851374d83d0a38ecd1a682979fbe48fcccb82470.sol(95)

[33mWarning[0m for UnrestrictedWrite in contract 'Haltable':
    |  // called by the owner on emergency, triggers stopped state
    |  function halt() external onlyOwner {
  > |    halted = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x851374d83d0a38ecd1a682979fbe48fcccb82470.sol(130)

[33mWarning[0m for UnrestrictedWrite in contract 'Haltable':
    |  // called by the owner on end of emergency, returns to normal state
    |  function unhalt() external onlyOwner onlyInEmergency {
  > |    halted = false;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x851374d83d0a38ecd1a682979fbe48fcccb82470.sol(135)

[33mWarning[0m for LockedEther in contract 'NullFinalizeAgent':
    | * - Token transfer must be manually released by the owner
    | */
  > |contract NullFinalizeAgent is FinalizeAgent {
    |
    |  Crowdsale public crowdsale;
  at /home/jiaming/mavs_srcs/contract@0x851374d83d0a38ecd1a682979fbe48fcccb82470.sol(906)

[33mWarning[0m for MissingInputValidation in contract 'NullFinalizeAgent':
    |contract FinalizeAgent {
    |
  > |  function isFinalizeAgent() public constant returns(bool) {
    |    return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x851374d83d0a38ecd1a682979fbe48fcccb82470.sol(204)

[33mWarning[0m for MissingInputValidation in contract 'NullFinalizeAgent':
    |contract NullFinalizeAgent is FinalizeAgent {
    |
  > |  Crowdsale public crowdsale;
    |
    |  function NullFinalizeAgent(Crowdsale _crowdsale) {
  at /home/jiaming/mavs_srcs/contract@0x851374d83d0a38ecd1a682979fbe48fcccb82470.sol(908)

[33mWarning[0m for MissingInputValidation in contract 'NullFinalizeAgent':
    |
    |  /** Check that we can release the token */
  > |  function isSane() public constant returns (bool) {
    |    return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x851374d83d0a38ecd1a682979fbe48fcccb82470.sol(915)

[33mWarning[0m for MissingInputValidation in contract 'NullFinalizeAgent':
    |
    |  /** Called once by crowdsale finalize() if the sale was success. */
  > |  function finalizeCrowdsale() public {
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x851374d83d0a38ecd1a682979fbe48fcccb82470.sol(920)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x851374d83d0a38ecd1a682979fbe48fcccb82470.sol(67)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x851374d83d0a38ecd1a682979fbe48fcccb82470.sol(68)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));      
    |    owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x851374d83d0a38ecd1a682979fbe48fcccb82470.sol(93)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));      
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x851374d83d0a38ecd1a682979fbe48fcccb82470.sol(95)

[33mWarning[0m for LockedEther in contract 'SafeMathLib':
    | *
    | */
  > |library SafeMathLib {
    |
    |  function times(uint a, uint b) returns (uint) {
  at /home/jiaming/mavs_srcs/contract@0x851374d83d0a38ecd1a682979fbe48fcccb82470.sol(32)

[33mWarning[0m for MissingInputValidation in contract 'SafeMathLib':
    |library SafeMathLib {
    |
  > |  function times(uint a, uint b) returns (uint) {
    |    uint c = a * b;
    |    assert(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0x851374d83d0a38ecd1a682979fbe48fcccb82470.sol(34)

[33mWarning[0m for MissingInputValidation in contract 'SafeMathLib':
    |  }
    |
  > |  function minus(uint a, uint b) returns (uint) {
    |    assert(b <= a);
    |    return a - b;
  at /home/jiaming/mavs_srcs/contract@0x851374d83d0a38ecd1a682979fbe48fcccb82470.sol(40)

[33mWarning[0m for MissingInputValidation in contract 'SafeMathLib':
    |  }
    |
  > |  function plus(uint a, uint b) returns (uint) {
    |    uint c = a + b;
    |    assert(c>=a);
  at /home/jiaming/mavs_srcs/contract@0x851374d83d0a38ecd1a682979fbe48fcccb82470.sol(45)


