Processing contract: /home/jiaming/mavs_srcs/contract@0x2d3a6cf3172f967834b59709a12d8b415465bb4c.sol:Crowdsale
Processing contract: /home/jiaming/mavs_srcs/contract@0x2d3a6cf3172f967834b59709a12d8b415465bb4c.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x2d3a6cf3172f967834b59709a12d8b415465bb4c.sol:FinalizeAgent
Processing contract: /home/jiaming/mavs_srcs/contract@0x2d3a6cf3172f967834b59709a12d8b415465bb4c.sol:FractionalERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x2d3a6cf3172f967834b59709a12d8b415465bb4c.sol:Haltable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2d3a6cf3172f967834b59709a12d8b415465bb4c.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2d3a6cf3172f967834b59709a12d8b415465bb4c.sol:PresaleFundCollector
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2d3a6cf3172f967834b59709a12d8b415465bb4c.sol:PricingStrategy
Processing contract: /home/jiaming/mavs_srcs/contract@0x2d3a6cf3172f967834b59709a12d8b415465bb4c.sol:SafeMathLib
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
  at /home/jiaming/mavs_srcs/contract@0x2d3a6cf3172f967834b59709a12d8b415465bb4c.sol(76)

[33mWarning[0m for MissingInputValidation in contract 'Haltable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |  function Ownable() {
  at /home/jiaming/mavs_srcs/contract@0x2d3a6cf3172f967834b59709a12d8b415465bb4c.sol(45)

[33mWarning[0m for MissingInputValidation in contract 'Haltable':
    |  }
    |
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
    |      owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x2d3a6cf3172f967834b59709a12d8b415465bb4c.sol(58)

[33mWarning[0m for MissingInputValidation in contract 'Haltable':
    | */
    |contract Haltable is Ownable {
  > |  bool public halted;
    |
    |  modifier stopInEmergency {
  at /home/jiaming/mavs_srcs/contract@0x2d3a6cf3172f967834b59709a12d8b415465bb4c.sol(77)

[33mWarning[0m for MissingInputValidation in contract 'Haltable':
    |
    |  // called by the owner on emergency, triggers stopped state
  > |  function halt() external onlyOwner {
    |    halted = true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x2d3a6cf3172f967834b59709a12d8b415465bb4c.sol(90)

[33mWarning[0m for MissingInputValidation in contract 'Haltable':
    |
    |  // called by the owner on end of emergency, returns to normal state
  > |  function unhalt() external onlyOwner onlyInEmergency {
    |    halted = false;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x2d3a6cf3172f967834b59709a12d8b415465bb4c.sol(95)

[33mWarning[0m for UnrestrictedWrite in contract 'Haltable':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x2d3a6cf3172f967834b59709a12d8b415465bb4c.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'Haltable':
    |  // called by the owner on emergency, triggers stopped state
    |  function halt() external onlyOwner {
  > |    halted = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2d3a6cf3172f967834b59709a12d8b415465bb4c.sol(91)

[33mWarning[0m for UnrestrictedWrite in contract 'Haltable':
    |  // called by the owner on end of emergency, returns to normal state
    |  function unhalt() external onlyOwner onlyInEmergency {
  > |    halted = false;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2d3a6cf3172f967834b59709a12d8b415465bb4c.sol(96)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * Provides onlyOwner modifier, which prevents function from running if it is called by anyone other than the owner.
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x2d3a6cf3172f967834b59709a12d8b415465bb4c.sol(44)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |  function Ownable() {
  at /home/jiaming/mavs_srcs/contract@0x2d3a6cf3172f967834b59709a12d8b415465bb4c.sol(45)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |  }
    |
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
    |      owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x2d3a6cf3172f967834b59709a12d8b415465bb4c.sol(58)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x2d3a6cf3172f967834b59709a12d8b415465bb4c.sol(60)

[33mWarning[0m for DAO in contract 'PresaleFundCollector':
    |      uint amount = balances[investor];
    |      delete balances[investor];
  > |      crowdsale.invest.value(amount)(investor);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x2d3a6cf3172f967834b59709a12d8b415465bb4c.sol(804)

[33mWarning[0m for DAOConstantGas in contract 'PresaleFundCollector':
    |    uint amount = balances[investor];
    |    delete balances[investor];
  > |    if(!investor.send(amount)) throw;
    |    Refunded(investor, amount);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x2d3a6cf3172f967834b59709a12d8b415465bb4c.sol(836)

[33mWarning[0m for LockedEther in contract 'PresaleFundCollector':
    | *
    | */
  > |contract PresaleFundCollector is Ownable {
    |
    |  using SafeMathLib for uint;
  at /home/jiaming/mavs_srcs/contract@0x2d3a6cf3172f967834b59709a12d8b415465bb4c.sol(707)

[31mViolation[0m for MissingInputValidation in contract 'PresaleFundCollector':
    |
    |  /** How much they have invested */
  > |  mapping(address => uint) public balances;
    |
    |  /** When our refund freeze is over (UNIT timestamp) */
  at /home/jiaming/mavs_srcs/contract@0x2d3a6cf3172f967834b59709a12d8b415465bb4c.sol(721)

[31mViolation[0m for MissingInputValidation in contract 'PresaleFundCollector':
    |   * Set the target crowdsale where we will move presale funds when the crowdsale opens.
    |   */
  > |  function setCrowdsale(Crowdsale _crowdsale) public onlyOwner {
    |     crowdsale = _crowdsale;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x2d3a6cf3172f967834b59709a12d8b415465bb4c.sol(843)

[33mWarning[0m for MissingInputValidation in contract 'PresaleFundCollector':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |  function Ownable() {
  at /home/jiaming/mavs_srcs/contract@0x2d3a6cf3172f967834b59709a12d8b415465bb4c.sol(45)

[33mWarning[0m for MissingInputValidation in contract 'PresaleFundCollector':
    |  }
    |
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
    |      owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x2d3a6cf3172f967834b59709a12d8b415465bb4c.sol(58)

[33mWarning[0m for MissingInputValidation in contract 'PresaleFundCollector':
    |
    |  /** How many investors when can carry per a single contract */
  > |  uint public MAX_INVESTORS = 32;
    |
    |  /** How many investors we have now */
  at /home/jiaming/mavs_srcs/contract@0x2d3a6cf3172f967834b59709a12d8b415465bb4c.sol(712)

[33mWarning[0m for MissingInputValidation in contract 'PresaleFundCollector':
    |
    |  /** How many investors we have now */
  > |  uint public investorCount;
    |
    |  /** Who are our investors (iterable) */
  at /home/jiaming/mavs_srcs/contract@0x2d3a6cf3172f967834b59709a12d8b415465bb4c.sol(715)

[33mWarning[0m for MissingInputValidation in contract 'PresaleFundCollector':
    |
    |  /** Who are our investors (iterable) */
  > |  address[] public investors;
    |
    |  /** How much they have invested */
  at /home/jiaming/mavs_srcs/contract@0x2d3a6cf3172f967834b59709a12d8b415465bb4c.sol(718)

[33mWarning[0m for MissingInputValidation in contract 'PresaleFundCollector':
    |
    |  /** When our refund freeze is over (UNIT timestamp) */
  > |  uint public freezeEndsAt;
    |
    |  /** What is the minimum buy in */
  at /home/jiaming/mavs_srcs/contract@0x2d3a6cf3172f967834b59709a12d8b415465bb4c.sol(724)

[33mWarning[0m for MissingInputValidation in contract 'PresaleFundCollector':
    |
    |  /** What is the minimum buy in */
  > |  uint public weiMinimumLimit;
    |
    |  /** Have we begun to move funds */
  at /home/jiaming/mavs_srcs/contract@0x2d3a6cf3172f967834b59709a12d8b415465bb4c.sol(727)

[33mWarning[0m for MissingInputValidation in contract 'PresaleFundCollector':
    |
    |  /** Have we begun to move funds */
  > |  bool public moving;
    |
    |  /** Our ICO contract where we will move the funds */
  at /home/jiaming/mavs_srcs/contract@0x2d3a6cf3172f967834b59709a12d8b415465bb4c.sol(730)

[33mWarning[0m for MissingInputValidation in contract 'PresaleFundCollector':
    |
    |  /** Our ICO contract where we will move the funds */
  > |  Crowdsale public crowdsale;
    |
    |  event Invested(address investor, uint value);
  at /home/jiaming/mavs_srcs/contract@0x2d3a6cf3172f967834b59709a12d8b415465bb4c.sol(733)

[33mWarning[0m for MissingInputValidation in contract 'PresaleFundCollector':
    |   * Participate to a presale.
    |   */
  > |  function invest() public payable {
    |
    |    // Cannot invest anymore through crowdsale when moving has begun
  at /home/jiaming/mavs_srcs/contract@0x2d3a6cf3172f967834b59709a12d8b415465bb4c.sol(762)

[33mWarning[0m for MissingInputValidation in contract 'PresaleFundCollector':
    |   *
    |   */
  > |  function parcipateCrowdsaleAll() public {
    |
    |    // We might hit a max gas limit in this loop,
  at /home/jiaming/mavs_srcs/contract@0x2d3a6cf3172f967834b59709a12d8b415465bb4c.sol(812)

[33mWarning[0m for MissingInputValidation in contract 'PresaleFundCollector':
    |   * ICO never happened. Allow refund.
    |   */
  > |  function refund() {
    |
    |    // Trying to ask refund too soon
  at /home/jiaming/mavs_srcs/contract@0x2d3a6cf3172f967834b59709a12d8b415465bb4c.sol(824)

[31mViolation[0m for TODReceiver in contract 'PresaleFundCollector':
    |      uint amount = balances[investor];
    |      delete balances[investor];
  > |      crowdsale.invest.value(amount)(investor);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x2d3a6cf3172f967834b59709a12d8b415465bb4c.sol(804)

[33mWarning[0m for TODReceiver in contract 'PresaleFundCollector':
    |    uint amount = balances[investor];
    |    delete balances[investor];
  > |    if(!investor.send(amount)) throw;
    |    Refunded(investor, amount);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x2d3a6cf3172f967834b59709a12d8b415465bb4c.sol(836)

[33mWarning[0m for UnhandledException in contract 'PresaleFundCollector':
    |      uint amount = balances[investor];
    |      delete balances[investor];
  > |      crowdsale.invest.value(amount)(investor);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x2d3a6cf3172f967834b59709a12d8b415465bb4c.sol(804)

[33mWarning[0m for UnhandledException in contract 'PresaleFundCollector':
    |    uint amount = balances[investor];
    |    delete balances[investor];
  > |    if(!investor.send(amount)) throw;
    |    Refunded(investor, amount);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x2d3a6cf3172f967834b59709a12d8b415465bb4c.sol(836)

[31mViolation[0m for UnrestrictedWrite in contract 'PresaleFundCollector':
    |    if(address(crowdsale) == 0) throw;
    |
  > |    moving = true;
    |
    |    if(balances[investor] > 0) {
  at /home/jiaming/mavs_srcs/contract@0x2d3a6cf3172f967834b59709a12d8b415465bb4c.sol(799)

[31mViolation[0m for UnrestrictedWrite in contract 'PresaleFundCollector':
    |    if(balances[investor] > 0) {
    |      uint amount = balances[investor];
  > |      delete balances[investor];
    |      crowdsale.invest.value(amount)(investor);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2d3a6cf3172f967834b59709a12d8b415465bb4c.sol(803)

[31mViolation[0m for UnrestrictedWrite in contract 'PresaleFundCollector':
    |
    |    // We have started to move funds
  > |    moving = true;
    |
    |    address investor = msg.sender;
  at /home/jiaming/mavs_srcs/contract@0x2d3a6cf3172f967834b59709a12d8b415465bb4c.sol(830)

[33mWarning[0m for UnrestrictedWrite in contract 'PresaleFundCollector':
    |    bool existing = balances[investor] > 0;
    |
  > |    balances[investor] = balances[investor].plus(msg.value);
    |
    |    // Need to fulfill minimum limit
  at /home/jiaming/mavs_srcs/contract@0x2d3a6cf3172f967834b59709a12d8b415465bb4c.sol(771)

[33mWarning[0m for UnrestrictedWrite in contract 'PresaleFundCollector':
    |    if(balances[investor] == 0) throw;
    |    uint amount = balances[investor];
  > |    delete balances[investor];
    |    if(!investor.send(amount)) throw;
    |    Refunded(investor, amount);
  at /home/jiaming/mavs_srcs/contract@0x2d3a6cf3172f967834b59709a12d8b415465bb4c.sol(835)

[33mWarning[0m for UnrestrictedWrite in contract 'PresaleFundCollector':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x2d3a6cf3172f967834b59709a12d8b415465bb4c.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'PresaleFundCollector':
    |   */
    |  function setCrowdsale(Crowdsale _crowdsale) public onlyOwner {
  > |     crowdsale = _crowdsale;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2d3a6cf3172f967834b59709a12d8b415465bb4c.sol(844)

[33mWarning[0m for LockedEther in contract 'SafeMathLib':
    | *
    | */
  > |library SafeMathLib {
    |
    |  function times(uint a, uint b) returns (uint) {
  at /home/jiaming/mavs_srcs/contract@0x2d3a6cf3172f967834b59709a12d8b415465bb4c.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'SafeMathLib':
    |library SafeMathLib {
    |
  > |  function times(uint a, uint b) returns (uint) {
    |    uint c = a * b;
    |    assert(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0x2d3a6cf3172f967834b59709a12d8b415465bb4c.sol(13)

[33mWarning[0m for MissingInputValidation in contract 'SafeMathLib':
    |  }
    |
  > |  function minus(uint a, uint b) returns (uint) {
    |    assert(b <= a);
    |    return a - b;
  at /home/jiaming/mavs_srcs/contract@0x2d3a6cf3172f967834b59709a12d8b415465bb4c.sol(19)

[33mWarning[0m for MissingInputValidation in contract 'SafeMathLib':
    |  }
    |
  > |  function plus(uint a, uint b) returns (uint) {
    |    uint c = a + b;
    |    assert(c>=a && c>=b);
  at /home/jiaming/mavs_srcs/contract@0x2d3a6cf3172f967834b59709a12d8b415465bb4c.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'SafeMathLib':
    |  }
    |
  > |  function assert(bool assertion) private {
    |    if (!assertion) throw;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x2d3a6cf3172f967834b59709a12d8b415465bb4c.sol(30)


