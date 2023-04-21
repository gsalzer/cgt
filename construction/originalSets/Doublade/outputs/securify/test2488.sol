Processing contract: /home/jiaming/mavs_srcs/contract@0xa2b9bb1a44c05560399df4779de7cdacf10185e1.sol:Crowdsale
Processing contract: /home/jiaming/mavs_srcs/contract@0xa2b9bb1a44c05560399df4779de7cdacf10185e1.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xa2b9bb1a44c05560399df4779de7cdacf10185e1.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xa2b9bb1a44c05560399df4779de7cdacf10185e1.sol:FinalizeAgent
Processing contract: /home/jiaming/mavs_srcs/contract@0xa2b9bb1a44c05560399df4779de7cdacf10185e1.sol:FractionalERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xa2b9bb1a44c05560399df4779de7cdacf10185e1.sol:Haltable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa2b9bb1a44c05560399df4779de7cdacf10185e1.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa2b9bb1a44c05560399df4779de7cdacf10185e1.sol:PreICOProxyBuyer
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa2b9bb1a44c05560399df4779de7cdacf10185e1.sol:PricingStrategy
Processing contract: /home/jiaming/mavs_srcs/contract@0xa2b9bb1a44c05560399df4779de7cdacf10185e1.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa2b9bb1a44c05560399df4779de7cdacf10185e1.sol:SafeMathLib
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa2b9bb1a44c05560399df4779de7cdacf10185e1.sol:StandardToken
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
  at /home/jiaming/mavs_srcs/contract@0xa2b9bb1a44c05560399df4779de7cdacf10185e1.sol(160)

[33mWarning[0m for MissingInputValidation in contract 'Haltable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xa2b9bb1a44c05560399df4779de7cdacf10185e1.sol(118)

[33mWarning[0m for MissingInputValidation in contract 'Haltable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));      
    |    owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0xa2b9bb1a44c05560399df4779de7cdacf10185e1.sol(143)

[33mWarning[0m for MissingInputValidation in contract 'Haltable':
    | */
    |contract Haltable is Ownable {
  > |  bool public halted;
    |
    |  modifier stopInEmergency {
  at /home/jiaming/mavs_srcs/contract@0xa2b9bb1a44c05560399df4779de7cdacf10185e1.sol(161)

[33mWarning[0m for MissingInputValidation in contract 'Haltable':
    |
    |  // called by the owner on emergency, triggers stopped state
  > |  function halt() external onlyOwner {
    |    halted = true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa2b9bb1a44c05560399df4779de7cdacf10185e1.sol(179)

[33mWarning[0m for MissingInputValidation in contract 'Haltable':
    |
    |  // called by the owner on end of emergency, returns to normal state
  > |  function unhalt() external onlyOwner onlyInEmergency {
    |    halted = false;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa2b9bb1a44c05560399df4779de7cdacf10185e1.sol(184)

[33mWarning[0m for UnrestrictedWrite in contract 'Haltable':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));      
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa2b9bb1a44c05560399df4779de7cdacf10185e1.sol(145)

[33mWarning[0m for UnrestrictedWrite in contract 'Haltable':
    |  // called by the owner on emergency, triggers stopped state
    |  function halt() external onlyOwner {
  > |    halted = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa2b9bb1a44c05560399df4779de7cdacf10185e1.sol(180)

[33mWarning[0m for UnrestrictedWrite in contract 'Haltable':
    |  // called by the owner on end of emergency, returns to normal state
    |  function unhalt() external onlyOwner onlyInEmergency {
  > |    halted = false;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa2b9bb1a44c05560399df4779de7cdacf10185e1.sol(185)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xa2b9bb1a44c05560399df4779de7cdacf10185e1.sol(117)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xa2b9bb1a44c05560399df4779de7cdacf10185e1.sol(118)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));      
    |    owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0xa2b9bb1a44c05560399df4779de7cdacf10185e1.sol(143)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));      
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa2b9bb1a44c05560399df4779de7cdacf10185e1.sol(145)

[31mViolation[0m for DAO in contract 'PreICOProxyBuyer':
    |
    |    // Record how many tokens we got
  > |    tokensBought = getToken().balanceOf(address(this));
    |
    |    if(tokensBought == 0) {
  at /home/jiaming/mavs_srcs/contract@0xa2b9bb1a44c05560399df4779de7cdacf10185e1.sol(1105)

[33mWarning[0m for DAO in contract 'PreICOProxyBuyer':
    |    }
    |
  > |    return crowdsale.token();
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa2b9bb1a44c05560399df4779de7cdacf10185e1.sol(1037)

[33mWarning[0m for DAO in contract 'PreICOProxyBuyer':
    |    claimed[investor] = safeAdd(claimed[investor], amount);
    |    totalClaimed = safeAdd(totalClaimed, amount);
  > |    getToken().transfer(investor, amount);
    |
    |    Distributed(investor, amount);
  at /home/jiaming/mavs_srcs/contract@0xa2b9bb1a44c05560399df4779de7cdacf10185e1.sol(1164)

[33mWarning[0m for DAO in contract 'PreICOProxyBuyer':
    |    uint amount = balances[investor];
    |    delete balances[investor];
  > |    if(!(investor.call.value(amount)())) throw;
    |    Refunded(investor, amount);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa2b9bb1a44c05560399df4779de7cdacf10185e1.sol(1181)

[33mWarning[0m for LockedEther in contract 'PreICOProxyBuyer':
    | *
    | */
  > |contract PreICOProxyBuyer is Ownable, Haltable, SafeMath {
    |
    |  /** How many investors we have now */
  at /home/jiaming/mavs_srcs/contract@0xa2b9bb1a44c05560399df4779de7cdacf10185e1.sol(944)

[31mViolation[0m for MissingInputValidation in contract 'PreICOProxyBuyer':
    |
    |  /** How much they have invested */
  > |  mapping(address => uint) public balances;
    |
    |  /** How many tokens investors have claimed */
  at /home/jiaming/mavs_srcs/contract@0xa2b9bb1a44c05560399df4779de7cdacf10185e1.sol(956)

[31mViolation[0m for MissingInputValidation in contract 'PreICOProxyBuyer':
    |
    |  /** How many tokens investors have claimed */
  > |  mapping(address => uint) public claimed;
    |
    |  /** When our refund freeze is over (UNIT timestamp) */
  at /home/jiaming/mavs_srcs/contract@0xa2b9bb1a44c05560399df4779de7cdacf10185e1.sol(959)

[31mViolation[0m for MissingInputValidation in contract 'PreICOProxyBuyer':
    |   * Set the target crowdsale where we will move presale funds when the crowdsale opens.
    |   */
  > |  function setCrowdsale(Crowdsale _crowdsale) public onlyOwner {
    |    crowdsale = _crowdsale;
    |
  at /home/jiaming/mavs_srcs/contract@0xa2b9bb1a44c05560399df4779de7cdacf10185e1.sol(1188)

[33mWarning[0m for MissingInputValidation in contract 'PreICOProxyBuyer':
    | */
    |contract SafeMath {
  > |  function safeMul(uint a, uint b) internal returns (uint) {
    |    uint c = a * b;
    |    assert(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0xa2b9bb1a44c05560399df4779de7cdacf10185e1.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'PreICOProxyBuyer':
    |  }
    |
  > |  function safeSub(uint a, uint b) internal returns (uint) {
    |    assert(b <= a);
    |    return a - b;
  at /home/jiaming/mavs_srcs/contract@0xa2b9bb1a44c05560399df4779de7cdacf10185e1.sol(29)

[33mWarning[0m for MissingInputValidation in contract 'PreICOProxyBuyer':
    |  }
    |
  > |  function safeAdd(uint a, uint b) internal returns (uint) {
    |    uint c = a + b;
    |    assert(c>=a && c>=b);
  at /home/jiaming/mavs_srcs/contract@0xa2b9bb1a44c05560399df4779de7cdacf10185e1.sol(34)

[33mWarning[0m for MissingInputValidation in contract 'PreICOProxyBuyer':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xa2b9bb1a44c05560399df4779de7cdacf10185e1.sol(118)

[33mWarning[0m for MissingInputValidation in contract 'PreICOProxyBuyer':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));      
    |    owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0xa2b9bb1a44c05560399df4779de7cdacf10185e1.sol(143)

[33mWarning[0m for MissingInputValidation in contract 'PreICOProxyBuyer':
    | */
    |contract Haltable is Ownable {
  > |  bool public halted;
    |
    |  modifier stopInEmergency {
  at /home/jiaming/mavs_srcs/contract@0xa2b9bb1a44c05560399df4779de7cdacf10185e1.sol(161)

[33mWarning[0m for MissingInputValidation in contract 'PreICOProxyBuyer':
    |
    |  // called by the owner on emergency, triggers stopped state
  > |  function halt() external onlyOwner {
    |    halted = true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa2b9bb1a44c05560399df4779de7cdacf10185e1.sol(179)

[33mWarning[0m for MissingInputValidation in contract 'PreICOProxyBuyer':
    |
    |  // called by the owner on end of emergency, returns to normal state
  > |  function unhalt() external onlyOwner onlyInEmergency {
    |    halted = false;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa2b9bb1a44c05560399df4779de7cdacf10185e1.sol(184)

[33mWarning[0m for MissingInputValidation in contract 'PreICOProxyBuyer':
    |
    |  /** How many investors we have now */
  > |  uint public investorCount;
    |
    |  /** How many wei we have raised totla. */
  at /home/jiaming/mavs_srcs/contract@0xa2b9bb1a44c05560399df4779de7cdacf10185e1.sol(947)

[33mWarning[0m for MissingInputValidation in contract 'PreICOProxyBuyer':
    |
    |  /** How many wei we have raised totla. */
  > |  uint public weiRaised;
    |
    |  /** Who are our investors (iterable) */
  at /home/jiaming/mavs_srcs/contract@0xa2b9bb1a44c05560399df4779de7cdacf10185e1.sol(950)

[33mWarning[0m for MissingInputValidation in contract 'PreICOProxyBuyer':
    |
    |  /** Who are our investors (iterable) */
  > |  address[] public investors;
    |
    |  /** How much they have invested */
  at /home/jiaming/mavs_srcs/contract@0xa2b9bb1a44c05560399df4779de7cdacf10185e1.sol(953)

[33mWarning[0m for MissingInputValidation in contract 'PreICOProxyBuyer':
    |
    |  /** When our refund freeze is over (UNIT timestamp) */
  > |  uint public freezeEndsAt;
    |
    |  /** What is the minimum buy in */
  at /home/jiaming/mavs_srcs/contract@0xa2b9bb1a44c05560399df4779de7cdacf10185e1.sol(962)

[33mWarning[0m for MissingInputValidation in contract 'PreICOProxyBuyer':
    |
    |  /** What is the minimum buy in */
  > |  uint public weiMinimumLimit;
    |
    |  /** What is the maximum buy in */
  at /home/jiaming/mavs_srcs/contract@0xa2b9bb1a44c05560399df4779de7cdacf10185e1.sol(965)

[33mWarning[0m for MissingInputValidation in contract 'PreICOProxyBuyer':
    |
    |  /** What is the maximum buy in */
  > |  uint public weiMaximumLimit;
    |
    |  /** How many weis total we are allowed to collect. */
  at /home/jiaming/mavs_srcs/contract@0xa2b9bb1a44c05560399df4779de7cdacf10185e1.sol(968)

[33mWarning[0m for MissingInputValidation in contract 'PreICOProxyBuyer':
    |
    |  /** How many weis total we are allowed to collect. */
  > |  uint public weiCap;
    |
    |  /** How many tokens were bought */
  at /home/jiaming/mavs_srcs/contract@0xa2b9bb1a44c05560399df4779de7cdacf10185e1.sol(971)

[33mWarning[0m for MissingInputValidation in contract 'PreICOProxyBuyer':
    |
    |  /** How many tokens were bought */
  > |  uint public tokensBought;
    |
    |   /** How many investors have claimed their tokens */
  at /home/jiaming/mavs_srcs/contract@0xa2b9bb1a44c05560399df4779de7cdacf10185e1.sol(974)

[33mWarning[0m for MissingInputValidation in contract 'PreICOProxyBuyer':
    |
    |   /** How many investors have claimed their tokens */
  > |  uint public claimCount;
    |
    |  uint public totalClaimed;
  at /home/jiaming/mavs_srcs/contract@0xa2b9bb1a44c05560399df4779de7cdacf10185e1.sol(977)

[33mWarning[0m for MissingInputValidation in contract 'PreICOProxyBuyer':
    |  uint public claimCount;
    |
  > |  uint public totalClaimed;
    |
    |  /** This is used to signal that we want the refund **/
  at /home/jiaming/mavs_srcs/contract@0xa2b9bb1a44c05560399df4779de7cdacf10185e1.sol(979)

[33mWarning[0m for MissingInputValidation in contract 'PreICOProxyBuyer':
    |
    |  /** This is used to signal that we want the refund **/
  > |  bool public forcedRefund;
    |
    |  /** Our ICO contract where we will move the funds */
  at /home/jiaming/mavs_srcs/contract@0xa2b9bb1a44c05560399df4779de7cdacf10185e1.sol(982)

[33mWarning[0m for MissingInputValidation in contract 'PreICOProxyBuyer':
    |
    |  /** Our ICO contract where we will move the funds */
  > |  Crowdsale public crowdsale;
    |
    |  /** What is our current state. */
  at /home/jiaming/mavs_srcs/contract@0xa2b9bb1a44c05560399df4779de7cdacf10185e1.sol(985)

[33mWarning[0m for MissingInputValidation in contract 'PreICOProxyBuyer':
    |   * Get the token we are distributing.
    |   */
  > |  function getToken() public constant returns(FractionalERC20) {
    |    if(address(crowdsale) == 0)  {
    |      throw;
  at /home/jiaming/mavs_srcs/contract@0xa2b9bb1a44c05560399df4779de7cdacf10185e1.sol(1032)

[33mWarning[0m for MissingInputValidation in contract 'PreICOProxyBuyer':
    |   * Participate to a presale.
    |   */
  > |  function invest(uint128 customerId) private {
    |
    |    // Cannot invest anymore through crowdsale when moving has begun
  at /home/jiaming/mavs_srcs/contract@0xa2b9bb1a44c05560399df4779de7cdacf10185e1.sol(1043)

[33mWarning[0m for MissingInputValidation in contract 'PreICOProxyBuyer':
    |  }
    |
  > |  function buy() public stopInEmergency payable {
    |    invest(0x0);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa2b9bb1a44c05560399df4779de7cdacf10185e1.sol(1081)

[33mWarning[0m for MissingInputValidation in contract 'PreICOProxyBuyer':
    |   *
    |   */
  > |  function buyForEverybody() stopNonOwnersInEmergency public {
    |
    |    if(getState() != State.Funding) {
  at /home/jiaming/mavs_srcs/contract@0xa2b9bb1a44c05560399df4779de7cdacf10185e1.sol(1091)

[33mWarning[0m for MissingInputValidation in contract 'PreICOProxyBuyer':
    |   * Claim all remaining tokens for this investor.
    |   */
  > |  function claimAll() {
    |    claim(getClaimLeft(msg.sender));
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa2b9bb1a44c05560399df4779de7cdacf10185e1.sol(1137)

[33mWarning[0m for MissingInputValidation in contract 'PreICOProxyBuyer':
    |   * ICO never happened. Allow refund.
    |   */
  > |  function refund() stopInEmergency {
    |
    |    // Trying to ask refund too soon
  at /home/jiaming/mavs_srcs/contract@0xa2b9bb1a44c05560399df4779de7cdacf10185e1.sol(1172)

[33mWarning[0m for MissingInputValidation in contract 'PreICOProxyBuyer':
    |  /// @dev This is used in the first case scenario, this will force the state
    |  ///      to refunding. This can be also used when the ICO fails to meet the cap.
  > |  function forceRefund() public onlyOwner {
    |    forcedRefund = true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa2b9bb1a44c05560399df4779de7cdacf10185e1.sol(1197)

[33mWarning[0m for MissingInputValidation in contract 'PreICOProxyBuyer':
    |  ///      we can't use Crowdsale's refund, since our default function does not
    |  ///      accept money in.
  > |  function loadRefund() public payable {
    |    if(getState() != State.Refunding) throw;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa2b9bb1a44c05560399df4779de7cdacf10185e1.sol(1204)

[33mWarning[0m for MissingInputValidation in contract 'PreICOProxyBuyer':
    |   * Resolve the contract umambigious state.
    |   */
  > |  function getState() public returns(State) {
    |    if (forcedRefund)
    |      return State.Refunding;
  at /home/jiaming/mavs_srcs/contract@0xa2b9bb1a44c05560399df4779de7cdacf10185e1.sol(1211)

[33mWarning[0m for MissingInputValidation in contract 'PreICOProxyBuyer':
    |
    |  /** Interface marker. */
  > |  function isPresale() public constant returns (bool) {
    |    return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa2b9bb1a44c05560399df4779de7cdacf10185e1.sol(1227)

[33mWarning[0m for TODReceiver in contract 'PreICOProxyBuyer':
    |    uint amount = balances[investor];
    |    delete balances[investor];
  > |    if(!(investor.call.value(amount)())) throw;
    |    Refunded(investor, amount);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa2b9bb1a44c05560399df4779de7cdacf10185e1.sol(1181)

[33mWarning[0m for UnhandledException in contract 'PreICOProxyBuyer':
    |    }
    |
  > |    return crowdsale.token();
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa2b9bb1a44c05560399df4779de7cdacf10185e1.sol(1037)

[33mWarning[0m for UnhandledException in contract 'PreICOProxyBuyer':
    |
    |    // Buy tokens on the contract
  > |    crowdsale.invest.value(weiRaised)(address(this));
    |
    |    // Record how many tokens we got
  at /home/jiaming/mavs_srcs/contract@0xa2b9bb1a44c05560399df4779de7cdacf10185e1.sol(1102)

[33mWarning[0m for UnhandledException in contract 'PreICOProxyBuyer':
    |
    |    // Record how many tokens we got
  > |    tokensBought = getToken().balanceOf(address(this));
    |
    |    if(tokensBought == 0) {
  at /home/jiaming/mavs_srcs/contract@0xa2b9bb1a44c05560399df4779de7cdacf10185e1.sol(1105)

[33mWarning[0m for UnhandledException in contract 'PreICOProxyBuyer':
    |    claimed[investor] = safeAdd(claimed[investor], amount);
    |    totalClaimed = safeAdd(totalClaimed, amount);
  > |    getToken().transfer(investor, amount);
    |
    |    Distributed(investor, amount);
  at /home/jiaming/mavs_srcs/contract@0xa2b9bb1a44c05560399df4779de7cdacf10185e1.sol(1164)

[33mWarning[0m for UnhandledException in contract 'PreICOProxyBuyer':
    |    uint amount = balances[investor];
    |    delete balances[investor];
  > |    if(!(investor.call.value(amount)())) throw;
    |    Refunded(investor, amount);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa2b9bb1a44c05560399df4779de7cdacf10185e1.sol(1181)

[33mWarning[0m for UnhandledException in contract 'PreICOProxyBuyer':
    |
    |    // Check interface
  > |    if(!crowdsale.isCrowdsale()) true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa2b9bb1a44c05560399df4779de7cdacf10185e1.sol(1192)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PreICOProxyBuyer':
    |    }
    |
  > |    return crowdsale.token();
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa2b9bb1a44c05560399df4779de7cdacf10185e1.sol(1037)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PreICOProxyBuyer':
    |
    |    // Check interface
  > |    if(!crowdsale.isCrowdsale()) true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa2b9bb1a44c05560399df4779de7cdacf10185e1.sol(1192)

[31mViolation[0m for UnrestrictedWrite in contract 'PreICOProxyBuyer':
    |/**
  > | * This smart contract code is Copyright 2017 TokenMarket Ltd. For more information see https://tokenmarket.net
    | *
    | * Licensed under the Apache License, version 2.0: https://github.com/TokenMarketNet/ico/blob/master/LICENSE.txt
  at /home/jiaming/mavs_srcs/contract@0xa2b9bb1a44c05560399df4779de7cdacf10185e1.sol(2)

[31mViolation[0m for UnrestrictedWrite in contract 'PreICOProxyBuyer':
    |    bool existing = balances[investor] > 0;
    |
  > |    balances[investor] = safeAdd(balances[investor], msg.value);
    |
    |    // Need to satisfy minimum and maximum limits
  at /home/jiaming/mavs_srcs/contract@0xa2b9bb1a44c05560399df4779de7cdacf10185e1.sol(1054)

[31mViolation[0m for UnrestrictedWrite in contract 'PreICOProxyBuyer':
    |    // This is a new investor
    |    if(!existing) {
  > |      investors.push(investor);
    |      investorCount++;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa2b9bb1a44c05560399df4779de7cdacf10185e1.sol(1063)

[31mViolation[0m for UnrestrictedWrite in contract 'PreICOProxyBuyer':
    |    if(!existing) {
    |      investors.push(investor);
  > |      investorCount++;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xa2b9bb1a44c05560399df4779de7cdacf10185e1.sol(1064)

[31mViolation[0m for UnrestrictedWrite in contract 'PreICOProxyBuyer':
    |    }
    |
  > |    weiRaised = safeAdd(weiRaised, msg.value);
    |    if(weiRaised > weiCap) {
    |      throw;
  at /home/jiaming/mavs_srcs/contract@0xa2b9bb1a44c05560399df4779de7cdacf10185e1.sol(1067)

[31mViolation[0m for UnrestrictedWrite in contract 'PreICOProxyBuyer':
    |
    |    // Record how many tokens we got
  > |    tokensBought = getToken().balanceOf(address(this));
    |
    |    if(tokensBought == 0) {
  at /home/jiaming/mavs_srcs/contract@0xa2b9bb1a44c05560399df4779de7cdacf10185e1.sol(1105)

[31mViolation[0m for UnrestrictedWrite in contract 'PreICOProxyBuyer':
    |    // We track who many investor have (partially) claimed their tokens
    |    if(claimed[investor] == 0) {
  > |      claimCount++;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xa2b9bb1a44c05560399df4779de7cdacf10185e1.sol(1159)

[31mViolation[0m for UnrestrictedWrite in contract 'PreICOProxyBuyer':
    |    }
    |
  > |    claimed[investor] = safeAdd(claimed[investor], amount);
    |    totalClaimed = safeAdd(totalClaimed, amount);
    |    getToken().transfer(investor, amount);
  at /home/jiaming/mavs_srcs/contract@0xa2b9bb1a44c05560399df4779de7cdacf10185e1.sol(1162)

[31mViolation[0m for UnrestrictedWrite in contract 'PreICOProxyBuyer':
    |
    |    claimed[investor] = safeAdd(claimed[investor], amount);
  > |    totalClaimed = safeAdd(totalClaimed, amount);
    |    getToken().transfer(investor, amount);
    |
  at /home/jiaming/mavs_srcs/contract@0xa2b9bb1a44c05560399df4779de7cdacf10185e1.sol(1163)

[31mViolation[0m for UnrestrictedWrite in contract 'PreICOProxyBuyer':
    |    if(balances[investor] == 0) throw;
    |    uint amount = balances[investor];
  > |    delete balances[investor];
    |    if(!(investor.call.value(amount)())) throw;
    |    Refunded(investor, amount);
  at /home/jiaming/mavs_srcs/contract@0xa2b9bb1a44c05560399df4779de7cdacf10185e1.sol(1180)

[33mWarning[0m for UnrestrictedWrite in contract 'PreICOProxyBuyer':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));      
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa2b9bb1a44c05560399df4779de7cdacf10185e1.sol(145)

[33mWarning[0m for UnrestrictedWrite in contract 'PreICOProxyBuyer':
    |  // called by the owner on emergency, triggers stopped state
    |  function halt() external onlyOwner {
  > |    halted = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa2b9bb1a44c05560399df4779de7cdacf10185e1.sol(180)

[33mWarning[0m for UnrestrictedWrite in contract 'PreICOProxyBuyer':
    |  // called by the owner on end of emergency, returns to normal state
    |  function unhalt() external onlyOwner onlyInEmergency {
  > |    halted = false;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa2b9bb1a44c05560399df4779de7cdacf10185e1.sol(185)

[33mWarning[0m for UnrestrictedWrite in contract 'PreICOProxyBuyer':
    |   */
    |  function setCrowdsale(Crowdsale _crowdsale) public onlyOwner {
  > |    crowdsale = _crowdsale;
    |
    |    // Check interface
  at /home/jiaming/mavs_srcs/contract@0xa2b9bb1a44c05560399df4779de7cdacf10185e1.sol(1189)

[33mWarning[0m for UnrestrictedWrite in contract 'PreICOProxyBuyer':
    |  ///      to refunding. This can be also used when the ICO fails to meet the cap.
    |  function forceRefund() public onlyOwner {
  > |    forcedRefund = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa2b9bb1a44c05560399df4779de7cdacf10185e1.sol(1198)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * Math operations with safety checks
    | */
  > |contract SafeMath {
    |  function safeMul(uint a, uint b) internal returns (uint) {
    |    uint c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xa2b9bb1a44c05560399df4779de7cdacf10185e1.sol(15)

[33mWarning[0m for LockedEther in contract 'SafeMathLib':
    | *
    | */
  > |library SafeMathLib {
    |
    |  function times(uint a, uint b) returns (uint) {
  at /home/jiaming/mavs_srcs/contract@0xa2b9bb1a44c05560399df4779de7cdacf10185e1.sol(82)

[33mWarning[0m for MissingInputValidation in contract 'SafeMathLib':
    |library SafeMathLib {
    |
  > |  function times(uint a, uint b) returns (uint) {
    |    uint c = a * b;
    |    assert(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0xa2b9bb1a44c05560399df4779de7cdacf10185e1.sol(84)

[33mWarning[0m for MissingInputValidation in contract 'SafeMathLib':
    |  }
    |
  > |  function minus(uint a, uint b) returns (uint) {
    |    assert(b <= a);
    |    return a - b;
  at /home/jiaming/mavs_srcs/contract@0xa2b9bb1a44c05560399df4779de7cdacf10185e1.sol(90)

[33mWarning[0m for MissingInputValidation in contract 'SafeMathLib':
    |  }
    |
  > |  function plus(uint a, uint b) returns (uint) {
    |    uint c = a + b;
    |    assert(c>=a);
  at /home/jiaming/mavs_srcs/contract@0xa2b9bb1a44c05560399df4779de7cdacf10185e1.sol(95)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, SafeMath {
    |
    |  /* Token supply got increased and a new owner received these tokens */
  at /home/jiaming/mavs_srcs/contract@0xa2b9bb1a44c05560399df4779de7cdacf10185e1.sol(873)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |  }
    |
  > |  function transferFrom(address _from, address _to, uint _value) returns (bool success) {
    |    uint _allowance = allowed[_from][msg.sender];
    |
  at /home/jiaming/mavs_srcs/contract@0xa2b9bb1a44c05560399df4779de7cdacf10185e1.sol(896)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |  }
    |
  > |  function balanceOf(address _owner) constant returns (uint balance) {
    |    return balances[_owner];
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa2b9bb1a44c05560399df4779de7cdacf10185e1.sol(906)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |  }
    |
  > |  function allowance(address _owner, address _spender) constant returns (uint remaining) {
    |    return allowed[_owner][_spender];
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa2b9bb1a44c05560399df4779de7cdacf10185e1.sol(923)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |  }
    |
  > |  function safeSub(uint a, uint b) internal returns (uint) {
    |    assert(b <= a);
    |    return a - b;
  at /home/jiaming/mavs_srcs/contract@0xa2b9bb1a44c05560399df4779de7cdacf10185e1.sol(29)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |  }
    |
  > |  function safeAdd(uint a, uint b) internal returns (uint) {
    |    uint c = a + b;
    |    assert(c>=a && c>=b);
  at /home/jiaming/mavs_srcs/contract@0xa2b9bb1a44c05560399df4779de7cdacf10185e1.sol(34)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    | */
    |contract ERC20Basic {
  > |  uint256 public totalSupply;
    |  function balanceOf(address who) constant returns (uint256);
    |  function transfer(address to, uint256 value) returns (bool);
  at /home/jiaming/mavs_srcs/contract@0xa2b9bb1a44c05560399df4779de7cdacf10185e1.sol(287)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |
    |  /* Interface declaration */
  > |  function isToken() public constant returns (bool weAre) {
    |    return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa2b9bb1a44c05560399df4779de7cdacf10185e1.sol(885)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |  function transfer(address _to, uint _value) returns (bool success) {
  > |    balances[msg.sender] = safeSub(balances[msg.sender], _value);
    |    balances[_to] = safeAdd(balances[_to], _value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xa2b9bb1a44c05560399df4779de7cdacf10185e1.sol(890)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |  function transfer(address _to, uint _value) returns (bool success) {
    |    balances[msg.sender] = safeSub(balances[msg.sender], _value);
  > |    balances[_to] = safeAdd(balances[_to], _value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa2b9bb1a44c05560399df4779de7cdacf10185e1.sol(891)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint _allowance = allowed[_from][msg.sender];
    |
  > |    balances[_to] = safeAdd(balances[_to], _value);
    |    balances[_from] = safeSub(balances[_from], _value);
    |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
  at /home/jiaming/mavs_srcs/contract@0xa2b9bb1a44c05560399df4779de7cdacf10185e1.sol(899)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    balances[_to] = safeAdd(balances[_to], _value);
  > |    balances[_from] = safeSub(balances[_from], _value);
    |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xa2b9bb1a44c05560399df4779de7cdacf10185e1.sol(900)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_to] = safeAdd(balances[_to], _value);
    |    balances[_from] = safeSub(balances[_from], _value);
  > |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa2b9bb1a44c05560399df4779de7cdacf10185e1.sol(901)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    if ((_value != 0) && (allowed[msg.sender][_spender] != 0)) throw;
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa2b9bb1a44c05560399df4779de7cdacf10185e1.sol(918)


