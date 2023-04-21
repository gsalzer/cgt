Processing contract: /home/jiaming/mavs_srcs/contract@0x3b2150afd63266f46fbebbea4964d3b8c69b27eb.sol:Crowdsale
Processing contract: /home/jiaming/mavs_srcs/contract@0x3b2150afd63266f46fbebbea4964d3b8c69b27eb.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x3b2150afd63266f46fbebbea4964d3b8c69b27eb.sol:FinalizeAgent
Processing contract: /home/jiaming/mavs_srcs/contract@0x3b2150afd63266f46fbebbea4964d3b8c69b27eb.sol:FractionalERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x3b2150afd63266f46fbebbea4964d3b8c69b27eb.sol:Haltable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3b2150afd63266f46fbebbea4964d3b8c69b27eb.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3b2150afd63266f46fbebbea4964d3b8c69b27eb.sol:PreICOProxyBuyer
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3b2150afd63266f46fbebbea4964d3b8c69b27eb.sol:PricingStrategy
Processing contract: /home/jiaming/mavs_srcs/contract@0x3b2150afd63266f46fbebbea4964d3b8c69b27eb.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3b2150afd63266f46fbebbea4964d3b8c69b27eb.sol:SafeMathLib
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3b2150afd63266f46fbebbea4964d3b8c69b27eb.sol:StandardToken
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
  at /home/jiaming/mavs_srcs/contract@0x3b2150afd63266f46fbebbea4964d3b8c69b27eb.sol(129)

[33mWarning[0m for MissingInputValidation in contract 'Haltable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |  function Ownable() {
  at /home/jiaming/mavs_srcs/contract@0x3b2150afd63266f46fbebbea4964d3b8c69b27eb.sol(98)

[33mWarning[0m for MissingInputValidation in contract 'Haltable':
    |  }
    |
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
    |      owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x3b2150afd63266f46fbebbea4964d3b8c69b27eb.sol(111)

[33mWarning[0m for MissingInputValidation in contract 'Haltable':
    | */
    |contract Haltable is Ownable {
  > |  bool public halted;
    |
    |  modifier stopInEmergency {
  at /home/jiaming/mavs_srcs/contract@0x3b2150afd63266f46fbebbea4964d3b8c69b27eb.sol(130)

[33mWarning[0m for MissingInputValidation in contract 'Haltable':
    |
    |  // called by the owner on emergency, triggers stopped state
  > |  function halt() external onlyOwner {
    |    halted = true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x3b2150afd63266f46fbebbea4964d3b8c69b27eb.sol(143)

[33mWarning[0m for MissingInputValidation in contract 'Haltable':
    |
    |  // called by the owner on end of emergency, returns to normal state
  > |  function unhalt() external onlyOwner onlyInEmergency {
    |    halted = false;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x3b2150afd63266f46fbebbea4964d3b8c69b27eb.sol(148)

[33mWarning[0m for UnrestrictedWrite in contract 'Haltable':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x3b2150afd63266f46fbebbea4964d3b8c69b27eb.sol(113)

[33mWarning[0m for UnrestrictedWrite in contract 'Haltable':
    |  // called by the owner on emergency, triggers stopped state
    |  function halt() external onlyOwner {
  > |    halted = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x3b2150afd63266f46fbebbea4964d3b8c69b27eb.sol(144)

[33mWarning[0m for UnrestrictedWrite in contract 'Haltable':
    |  // called by the owner on end of emergency, returns to normal state
    |  function unhalt() external onlyOwner onlyInEmergency {
  > |    halted = false;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x3b2150afd63266f46fbebbea4964d3b8c69b27eb.sol(149)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * Provides onlyOwner modifier, which prevents function from running if it is called by anyone other than the owner.
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x3b2150afd63266f46fbebbea4964d3b8c69b27eb.sol(97)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |  function Ownable() {
  at /home/jiaming/mavs_srcs/contract@0x3b2150afd63266f46fbebbea4964d3b8c69b27eb.sol(98)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |  }
    |
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
    |      owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x3b2150afd63266f46fbebbea4964d3b8c69b27eb.sol(111)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x3b2150afd63266f46fbebbea4964d3b8c69b27eb.sol(113)

[31mViolation[0m for DAO in contract 'PreICOProxyBuyer':
    |
    |    // Record how many tokens we got
  > |    tokensBought = getToken().balanceOf(address(this));
    |
    |    if(tokensBought == 0) {
  at /home/jiaming/mavs_srcs/contract@0x3b2150afd63266f46fbebbea4964d3b8c69b27eb.sol(1017)

[33mWarning[0m for DAO in contract 'PreICOProxyBuyer':
    |    }
    |
  > |    return crowdsale.token();
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x3b2150afd63266f46fbebbea4964d3b8c69b27eb.sol(960)

[33mWarning[0m for DAO in contract 'PreICOProxyBuyer':
    |    claimed[investor] = safeAdd(claimed[investor], amount);
    |    totalClaimed = safeAdd(totalClaimed, amount);
  > |    getToken().transfer(investor, amount);
    |
    |    Distributed(investor, amount);
  at /home/jiaming/mavs_srcs/contract@0x3b2150afd63266f46fbebbea4964d3b8c69b27eb.sol(1076)

[33mWarning[0m for DAOConstantGas in contract 'PreICOProxyBuyer':
    |    uint amount = balances[investor];
    |    delete balances[investor];
  > |    if(!investor.send(amount)) throw;
    |    Refunded(investor, amount);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x3b2150afd63266f46fbebbea4964d3b8c69b27eb.sol(1093)

[33mWarning[0m for LockedEther in contract 'PreICOProxyBuyer':
    | *
    | */
  > |contract PreICOProxyBuyer is Ownable, Haltable, SafeMath {
    |
    |  /** How many investors we have now */
  at /home/jiaming/mavs_srcs/contract@0x3b2150afd63266f46fbebbea4964d3b8c69b27eb.sol(878)

[31mViolation[0m for MissingInputValidation in contract 'PreICOProxyBuyer':
    |
    |  /** How much they have invested */
  > |  mapping(address => uint) public balances;
    |
    |  /** How many tokens investors have claimed */
  at /home/jiaming/mavs_srcs/contract@0x3b2150afd63266f46fbebbea4964d3b8c69b27eb.sol(890)

[31mViolation[0m for MissingInputValidation in contract 'PreICOProxyBuyer':
    |
    |  /** How many tokens investors have claimed */
  > |  mapping(address => uint) public claimed;
    |
    |  /** When our refund freeze is over (UNIT timestamp) */
  at /home/jiaming/mavs_srcs/contract@0x3b2150afd63266f46fbebbea4964d3b8c69b27eb.sol(893)

[31mViolation[0m for MissingInputValidation in contract 'PreICOProxyBuyer':
    |   * Set the target crowdsale where we will move presale funds when the crowdsale opens.
    |   */
  > |  function setCrowdsale(Crowdsale _crowdsale) public onlyOwner {
    |    crowdsale = _crowdsale;
    |
  at /home/jiaming/mavs_srcs/contract@0x3b2150afd63266f46fbebbea4964d3b8c69b27eb.sol(1100)

[33mWarning[0m for MissingInputValidation in contract 'PreICOProxyBuyer':
    | */
    |contract SafeMath {
  > |  function safeMul(uint a, uint b) internal returns (uint) {
    |    uint c = a * b;
    |    assert(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0x3b2150afd63266f46fbebbea4964d3b8c69b27eb.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'PreICOProxyBuyer':
    |  }
    |
  > |  function safeSub(uint a, uint b) internal returns (uint) {
    |    assert(b <= a);
    |    return a - b;
  at /home/jiaming/mavs_srcs/contract@0x3b2150afd63266f46fbebbea4964d3b8c69b27eb.sol(18)

[33mWarning[0m for MissingInputValidation in contract 'PreICOProxyBuyer':
    |  }
    |
  > |  function safeAdd(uint a, uint b) internal returns (uint) {
    |    uint c = a + b;
    |    assert(c>=a && c>=b);
  at /home/jiaming/mavs_srcs/contract@0x3b2150afd63266f46fbebbea4964d3b8c69b27eb.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'PreICOProxyBuyer':
    |  }
    |
  > |  function assert(bool assertion) internal {
    |    if (!assertion) {
    |      throw;
  at /home/jiaming/mavs_srcs/contract@0x3b2150afd63266f46fbebbea4964d3b8c69b27eb.sol(45)

[33mWarning[0m for MissingInputValidation in contract 'PreICOProxyBuyer':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |  function Ownable() {
  at /home/jiaming/mavs_srcs/contract@0x3b2150afd63266f46fbebbea4964d3b8c69b27eb.sol(98)

[33mWarning[0m for MissingInputValidation in contract 'PreICOProxyBuyer':
    |  }
    |
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
    |      owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x3b2150afd63266f46fbebbea4964d3b8c69b27eb.sol(111)

[33mWarning[0m for MissingInputValidation in contract 'PreICOProxyBuyer':
    | */
    |contract Haltable is Ownable {
  > |  bool public halted;
    |
    |  modifier stopInEmergency {
  at /home/jiaming/mavs_srcs/contract@0x3b2150afd63266f46fbebbea4964d3b8c69b27eb.sol(130)

[33mWarning[0m for MissingInputValidation in contract 'PreICOProxyBuyer':
    |
    |  // called by the owner on emergency, triggers stopped state
  > |  function halt() external onlyOwner {
    |    halted = true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x3b2150afd63266f46fbebbea4964d3b8c69b27eb.sol(143)

[33mWarning[0m for MissingInputValidation in contract 'PreICOProxyBuyer':
    |
    |  // called by the owner on end of emergency, returns to normal state
  > |  function unhalt() external onlyOwner onlyInEmergency {
    |    halted = false;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x3b2150afd63266f46fbebbea4964d3b8c69b27eb.sol(148)

[33mWarning[0m for MissingInputValidation in contract 'PreICOProxyBuyer':
    |
    |  /** How many investors we have now */
  > |  uint public investorCount;
    |
    |  /** How many wei we have raised totla. */
  at /home/jiaming/mavs_srcs/contract@0x3b2150afd63266f46fbebbea4964d3b8c69b27eb.sol(881)

[33mWarning[0m for MissingInputValidation in contract 'PreICOProxyBuyer':
    |
    |  /** How many wei we have raised totla. */
  > |  uint public weiRaisedTotal;
    |
    |  /** Who are our investors (iterable) */
  at /home/jiaming/mavs_srcs/contract@0x3b2150afd63266f46fbebbea4964d3b8c69b27eb.sol(884)

[33mWarning[0m for MissingInputValidation in contract 'PreICOProxyBuyer':
    |
    |  /** Who are our investors (iterable) */
  > |  address[] public investors;
    |
    |  /** How much they have invested */
  at /home/jiaming/mavs_srcs/contract@0x3b2150afd63266f46fbebbea4964d3b8c69b27eb.sol(887)

[33mWarning[0m for MissingInputValidation in contract 'PreICOProxyBuyer':
    |
    |  /** When our refund freeze is over (UNIT timestamp) */
  > |  uint public freezeEndsAt;
    |
    |  /** What is the minimum buy in */
  at /home/jiaming/mavs_srcs/contract@0x3b2150afd63266f46fbebbea4964d3b8c69b27eb.sol(896)

[33mWarning[0m for MissingInputValidation in contract 'PreICOProxyBuyer':
    |
    |  /** What is the minimum buy in */
  > |  uint public weiMinimumLimit;
    |
    |  /** How many weis total we are allowed to collect. */
  at /home/jiaming/mavs_srcs/contract@0x3b2150afd63266f46fbebbea4964d3b8c69b27eb.sol(899)

[33mWarning[0m for MissingInputValidation in contract 'PreICOProxyBuyer':
    |
    |  /** How many weis total we are allowed to collect. */
  > |  uint public weiCap;
    |
    |  /** How many tokens were bought */
  at /home/jiaming/mavs_srcs/contract@0x3b2150afd63266f46fbebbea4964d3b8c69b27eb.sol(902)

[33mWarning[0m for MissingInputValidation in contract 'PreICOProxyBuyer':
    |
    |  /** How many tokens were bought */
  > |  uint public tokensBought;
    |
    |   /** How many investors have claimed their tokens */
  at /home/jiaming/mavs_srcs/contract@0x3b2150afd63266f46fbebbea4964d3b8c69b27eb.sol(905)

[33mWarning[0m for MissingInputValidation in contract 'PreICOProxyBuyer':
    |
    |   /** How many investors have claimed their tokens */
  > |  uint public claimCount;
    |
    |  uint public totalClaimed;
  at /home/jiaming/mavs_srcs/contract@0x3b2150afd63266f46fbebbea4964d3b8c69b27eb.sol(908)

[33mWarning[0m for MissingInputValidation in contract 'PreICOProxyBuyer':
    |  uint public claimCount;
    |
  > |  uint public totalClaimed;
    |
    |  /** Our ICO contract where we will move the funds */
  at /home/jiaming/mavs_srcs/contract@0x3b2150afd63266f46fbebbea4964d3b8c69b27eb.sol(910)

[33mWarning[0m for MissingInputValidation in contract 'PreICOProxyBuyer':
    |
    |  /** Our ICO contract where we will move the funds */
  > |  Crowdsale public crowdsale;
    |
    |  /** What is our current state. */
  at /home/jiaming/mavs_srcs/contract@0x3b2150afd63266f46fbebbea4964d3b8c69b27eb.sol(913)

[33mWarning[0m for MissingInputValidation in contract 'PreICOProxyBuyer':
    |   * Get the token we are distributing.
    |   */
  > |  function getToken() public constant returns(FractionalERC20) {
    |    if(address(crowdsale) == 0)  {
    |      throw;
  at /home/jiaming/mavs_srcs/contract@0x3b2150afd63266f46fbebbea4964d3b8c69b27eb.sol(955)

[33mWarning[0m for MissingInputValidation in contract 'PreICOProxyBuyer':
    |   * Participate to a presale.
    |   */
  > |  function invest() public stopInEmergency payable {
    |
    |    // Cannot invest anymore through crowdsale when moving has begun
  at /home/jiaming/mavs_srcs/contract@0x3b2150afd63266f46fbebbea4964d3b8c69b27eb.sol(966)

[33mWarning[0m for MissingInputValidation in contract 'PreICOProxyBuyer':
    |   *
    |   */
  > |  function buyForEverybody() stopInEmergency public {
    |
    |    if(getState() != State.Funding) {
  at /home/jiaming/mavs_srcs/contract@0x3b2150afd63266f46fbebbea4964d3b8c69b27eb.sol(1003)

[33mWarning[0m for MissingInputValidation in contract 'PreICOProxyBuyer':
    |   * Claim all remaining tokens for this investor.
    |   */
  > |  function claimAll() {
    |    claim(getClaimLeft(msg.sender));
    |  }
  at /home/jiaming/mavs_srcs/contract@0x3b2150afd63266f46fbebbea4964d3b8c69b27eb.sol(1049)

[33mWarning[0m for MissingInputValidation in contract 'PreICOProxyBuyer':
    |   * ICO never happened. Allow refund.
    |   */
  > |  function refund() stopInEmergency {
    |
    |    // Trying to ask refund too soon
  at /home/jiaming/mavs_srcs/contract@0x3b2150afd63266f46fbebbea4964d3b8c69b27eb.sol(1084)

[33mWarning[0m for MissingInputValidation in contract 'PreICOProxyBuyer':
    |   * Resolve the contract umambigious state.
    |   */
  > |  function getState() public returns(State) {
    |    if(tokensBought == 0) {
    |      if(now >= freezeEndsAt) {
  at /home/jiaming/mavs_srcs/contract@0x3b2150afd63266f46fbebbea4964d3b8c69b27eb.sol(1110)

[33mWarning[0m for TODReceiver in contract 'PreICOProxyBuyer':
    |    uint amount = balances[investor];
    |    delete balances[investor];
  > |    if(!investor.send(amount)) throw;
    |    Refunded(investor, amount);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x3b2150afd63266f46fbebbea4964d3b8c69b27eb.sol(1093)

[33mWarning[0m for UnhandledException in contract 'PreICOProxyBuyer':
    |    }
    |
  > |    return crowdsale.token();
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x3b2150afd63266f46fbebbea4964d3b8c69b27eb.sol(960)

[33mWarning[0m for UnhandledException in contract 'PreICOProxyBuyer':
    |
    |    // Buy tokens on the contract
  > |    crowdsale.invest.value(weiRaisedTotal)(address(this));
    |
    |    // Record how many tokens we got
  at /home/jiaming/mavs_srcs/contract@0x3b2150afd63266f46fbebbea4964d3b8c69b27eb.sol(1014)

[33mWarning[0m for UnhandledException in contract 'PreICOProxyBuyer':
    |
    |    // Record how many tokens we got
  > |    tokensBought = getToken().balanceOf(address(this));
    |
    |    if(tokensBought == 0) {
  at /home/jiaming/mavs_srcs/contract@0x3b2150afd63266f46fbebbea4964d3b8c69b27eb.sol(1017)

[33mWarning[0m for UnhandledException in contract 'PreICOProxyBuyer':
    |    claimed[investor] = safeAdd(claimed[investor], amount);
    |    totalClaimed = safeAdd(totalClaimed, amount);
  > |    getToken().transfer(investor, amount);
    |
    |    Distributed(investor, amount);
  at /home/jiaming/mavs_srcs/contract@0x3b2150afd63266f46fbebbea4964d3b8c69b27eb.sol(1076)

[33mWarning[0m for UnhandledException in contract 'PreICOProxyBuyer':
    |    uint amount = balances[investor];
    |    delete balances[investor];
  > |    if(!investor.send(amount)) throw;
    |    Refunded(investor, amount);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x3b2150afd63266f46fbebbea4964d3b8c69b27eb.sol(1093)

[33mWarning[0m for UnhandledException in contract 'PreICOProxyBuyer':
    |
    |    // Check interface
  > |    if(!crowdsale.isCrowdsale()) true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x3b2150afd63266f46fbebbea4964d3b8c69b27eb.sol(1104)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PreICOProxyBuyer':
    |    }
    |
  > |    return crowdsale.token();
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x3b2150afd63266f46fbebbea4964d3b8c69b27eb.sol(960)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PreICOProxyBuyer':
    |
    |    // Check interface
  > |    if(!crowdsale.isCrowdsale()) true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x3b2150afd63266f46fbebbea4964d3b8c69b27eb.sol(1104)

[31mViolation[0m for UnrestrictedWrite in contract 'PreICOProxyBuyer':
    |/**
    | * Math operations with safety checks
  > | */
    |contract SafeMath {
    |  function safeMul(uint a, uint b) internal returns (uint) {
  at /home/jiaming/mavs_srcs/contract@0x3b2150afd63266f46fbebbea4964d3b8c69b27eb.sol(3)

[31mViolation[0m for UnrestrictedWrite in contract 'PreICOProxyBuyer':
    |    bool existing = balances[investor] > 0;
    |
  > |    balances[investor] = safeAdd(balances[investor], msg.value);
    |
    |    // Need to fulfill minimum limit
  at /home/jiaming/mavs_srcs/contract@0x3b2150afd63266f46fbebbea4964d3b8c69b27eb.sol(977)

[31mViolation[0m for UnrestrictedWrite in contract 'PreICOProxyBuyer':
    |    // This is a new investor
    |    if(!existing) {
  > |      investors.push(investor);
    |      investorCount++;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3b2150afd63266f46fbebbea4964d3b8c69b27eb.sol(986)

[31mViolation[0m for UnrestrictedWrite in contract 'PreICOProxyBuyer':
    |    if(!existing) {
    |      investors.push(investor);
  > |      investorCount++;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x3b2150afd63266f46fbebbea4964d3b8c69b27eb.sol(987)

[31mViolation[0m for UnrestrictedWrite in contract 'PreICOProxyBuyer':
    |
    |    // Record how many tokens we got
  > |    tokensBought = getToken().balanceOf(address(this));
    |
    |    if(tokensBought == 0) {
  at /home/jiaming/mavs_srcs/contract@0x3b2150afd63266f46fbebbea4964d3b8c69b27eb.sol(1017)

[31mViolation[0m for UnrestrictedWrite in contract 'PreICOProxyBuyer':
    |    // We track who many investor have (partially) claimed their tokens
    |    if(claimed[investor] == 0) {
  > |      claimCount++;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x3b2150afd63266f46fbebbea4964d3b8c69b27eb.sol(1071)

[31mViolation[0m for UnrestrictedWrite in contract 'PreICOProxyBuyer':
    |    }
    |
  > |    claimed[investor] = safeAdd(claimed[investor], amount);
    |    totalClaimed = safeAdd(totalClaimed, amount);
    |    getToken().transfer(investor, amount);
  at /home/jiaming/mavs_srcs/contract@0x3b2150afd63266f46fbebbea4964d3b8c69b27eb.sol(1074)

[31mViolation[0m for UnrestrictedWrite in contract 'PreICOProxyBuyer':
    |
    |    claimed[investor] = safeAdd(claimed[investor], amount);
  > |    totalClaimed = safeAdd(totalClaimed, amount);
    |    getToken().transfer(investor, amount);
    |
  at /home/jiaming/mavs_srcs/contract@0x3b2150afd63266f46fbebbea4964d3b8c69b27eb.sol(1075)

[31mViolation[0m for UnrestrictedWrite in contract 'PreICOProxyBuyer':
    |    if(balances[investor] == 0) throw;
    |    uint amount = balances[investor];
  > |    delete balances[investor];
    |    if(!investor.send(amount)) throw;
    |    Refunded(investor, amount);
  at /home/jiaming/mavs_srcs/contract@0x3b2150afd63266f46fbebbea4964d3b8c69b27eb.sol(1092)

[33mWarning[0m for UnrestrictedWrite in contract 'PreICOProxyBuyer':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x3b2150afd63266f46fbebbea4964d3b8c69b27eb.sol(113)

[33mWarning[0m for UnrestrictedWrite in contract 'PreICOProxyBuyer':
    |  // called by the owner on emergency, triggers stopped state
    |  function halt() external onlyOwner {
  > |    halted = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x3b2150afd63266f46fbebbea4964d3b8c69b27eb.sol(144)

[33mWarning[0m for UnrestrictedWrite in contract 'PreICOProxyBuyer':
    |  // called by the owner on end of emergency, returns to normal state
    |  function unhalt() external onlyOwner onlyInEmergency {
  > |    halted = false;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x3b2150afd63266f46fbebbea4964d3b8c69b27eb.sol(149)

[33mWarning[0m for UnrestrictedWrite in contract 'PreICOProxyBuyer':
    |   */
    |  function setCrowdsale(Crowdsale _crowdsale) public onlyOwner {
  > |    crowdsale = _crowdsale;
    |
    |    // Check interface
  at /home/jiaming/mavs_srcs/contract@0x3b2150afd63266f46fbebbea4964d3b8c69b27eb.sol(1101)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * Math operations with safety checks
    | */
  > |contract SafeMath {
    |  function safeMul(uint a, uint b) internal returns (uint) {
    |    uint c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x3b2150afd63266f46fbebbea4964d3b8c69b27eb.sol(4)

[33mWarning[0m for LockedEther in contract 'SafeMathLib':
    | *
    | */
  > |library SafeMathLib {
    |
    |  function times(uint a, uint b) returns (uint) {
  at /home/jiaming/mavs_srcs/contract@0x3b2150afd63266f46fbebbea4964d3b8c69b27eb.sol(64)

[33mWarning[0m for MissingInputValidation in contract 'SafeMathLib':
    |library SafeMathLib {
    |
  > |  function times(uint a, uint b) returns (uint) {
    |    uint c = a * b;
    |    assert(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0x3b2150afd63266f46fbebbea4964d3b8c69b27eb.sol(66)

[33mWarning[0m for MissingInputValidation in contract 'SafeMathLib':
    |  }
    |
  > |  function minus(uint a, uint b) returns (uint) {
    |    assert(b <= a);
    |    return a - b;
  at /home/jiaming/mavs_srcs/contract@0x3b2150afd63266f46fbebbea4964d3b8c69b27eb.sol(72)

[33mWarning[0m for MissingInputValidation in contract 'SafeMathLib':
    |  }
    |
  > |  function plus(uint a, uint b) returns (uint) {
    |    uint c = a + b;
    |    assert(c>=a);
  at /home/jiaming/mavs_srcs/contract@0x3b2150afd63266f46fbebbea4964d3b8c69b27eb.sol(77)

[33mWarning[0m for MissingInputValidation in contract 'SafeMathLib':
    |  }
    |
  > |  function assert(bool assertion) private {
    |    if (!assertion) throw;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x3b2150afd63266f46fbebbea4964d3b8c69b27eb.sol(83)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, SafeMath {
    |
    |  /* Token supply got increased and a new owner received these tokens */
  at /home/jiaming/mavs_srcs/contract@0x3b2150afd63266f46fbebbea4964d3b8c69b27eb.sol(761)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |  }
    |
  > |  function transfer(address _to, uint _value) onlyPayloadSize(2 * 32) returns (bool success) {
    |    balances[msg.sender] = safeSub(balances[msg.sender], _value);
    |    balances[_to] = safeAdd(balances[_to], _value);
  at /home/jiaming/mavs_srcs/contract@0x3b2150afd63266f46fbebbea4964d3b8c69b27eb.sol(785)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |  }
    |
  > |  function transferFrom(address _from, address _to, uint _value) returns (bool success) {
    |    uint _allowance = allowed[_from][msg.sender];
    |
  at /home/jiaming/mavs_srcs/contract@0x3b2150afd63266f46fbebbea4964d3b8c69b27eb.sol(792)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |  }
    |
  > |  function balanceOf(address _owner) constant returns (uint balance) {
    |    return balances[_owner];
    |  }
  at /home/jiaming/mavs_srcs/contract@0x3b2150afd63266f46fbebbea4964d3b8c69b27eb.sol(805)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |  }
    |
  > |  function allowance(address _owner, address _spender) constant returns (uint remaining) {
    |    return allowed[_owner][_spender];
    |  }
  at /home/jiaming/mavs_srcs/contract@0x3b2150afd63266f46fbebbea4964d3b8c69b27eb.sol(822)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |   *
    |   */
  > |  function addApproval(address _spender, uint _addedValue)
    |  onlyPayloadSize(2 * 32)
    |  returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x3b2150afd63266f46fbebbea4964d3b8c69b27eb.sol(832)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |   * Works around https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
    |   */
  > |  function subApproval(address _spender, uint _subtractedValue)
    |  onlyPayloadSize(2 * 32)
    |  returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x3b2150afd63266f46fbebbea4964d3b8c69b27eb.sol(846)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |  }
    |
  > |  function safeSub(uint a, uint b) internal returns (uint) {
    |    assert(b <= a);
    |    return a - b;
  at /home/jiaming/mavs_srcs/contract@0x3b2150afd63266f46fbebbea4964d3b8c69b27eb.sol(18)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |  }
    |
  > |  function safeAdd(uint a, uint b) internal returns (uint) {
    |    uint c = a + b;
    |    assert(c>=a && c>=b);
  at /home/jiaming/mavs_srcs/contract@0x3b2150afd63266f46fbebbea4964d3b8c69b27eb.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |  }
    |
  > |  function assert(bool assertion) internal {
    |    if (!assertion) {
    |      throw;
  at /home/jiaming/mavs_srcs/contract@0x3b2150afd63266f46fbebbea4964d3b8c69b27eb.sol(45)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    | */
    |contract ERC20 {
  > |  uint public totalSupply;
    |  function balanceOf(address who) constant returns (uint);
    |  function allowance(address owner, address spender) constant returns (uint);
  at /home/jiaming/mavs_srcs/contract@0x3b2150afd63266f46fbebbea4964d3b8c69b27eb.sol(221)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |    // if (_value > _allowance) throw;
    |
  > |    balances[_to] = safeAdd(balances[_to], _value);
    |    balances[_from] = safeSub(balances[_from], _value);
    |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
  at /home/jiaming/mavs_srcs/contract@0x3b2150afd63266f46fbebbea4964d3b8c69b27eb.sol(798)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    balances[_to] = safeAdd(balances[_to], _value);
  > |    balances[_from] = safeSub(balances[_from], _value);
    |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x3b2150afd63266f46fbebbea4964d3b8c69b27eb.sol(799)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |  function transfer(address _to, uint _value) onlyPayloadSize(2 * 32) returns (bool success) {
  > |    balances[msg.sender] = safeSub(balances[msg.sender], _value);
    |    balances[_to] = safeAdd(balances[_to], _value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x3b2150afd63266f46fbebbea4964d3b8c69b27eb.sol(786)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_to] = safeAdd(balances[_to], _value);
    |    balances[_from] = safeSub(balances[_from], _value);
  > |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x3b2150afd63266f46fbebbea4964d3b8c69b27eb.sol(800)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    if ((_value != 0) && (allowed[msg.sender][_spender] != 0)) throw;
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x3b2150afd63266f46fbebbea4964d3b8c69b27eb.sol(817)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  returns (bool success) {
    |      uint oldValue = allowed[msg.sender][_spender];
  > |      allowed[msg.sender][_spender] = safeAdd(oldValue, _addedValue);
    |      Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |      return true;
  at /home/jiaming/mavs_srcs/contract@0x3b2150afd63266f46fbebbea4964d3b8c69b27eb.sol(836)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |      if (_subtractedValue > oldVal) {
  > |          allowed[msg.sender][_spender] = 0;
    |      } else {
    |          allowed[msg.sender][_spender] = safeSub(oldVal, _subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x3b2150afd63266f46fbebbea4964d3b8c69b27eb.sol(853)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |          allowed[msg.sender][_spender] = 0;
    |      } else {
  > |          allowed[msg.sender][_spender] = safeSub(oldVal, _subtractedValue);
    |      }
    |      Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x3b2150afd63266f46fbebbea4964d3b8c69b27eb.sol(855)


