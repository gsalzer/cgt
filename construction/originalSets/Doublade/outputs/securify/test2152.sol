Processing contract: /home/jiaming/mavs_srcs/contract@0x8c5c3b13b832f46ed681dcd0e201d7cb1538e95b.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8c5c3b13b832f46ed681dcd0e201d7cb1538e95b.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8c5c3b13b832f46ed681dcd0e201d7cb1538e95b.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8c5c3b13b832f46ed681dcd0e201d7cb1538e95b.sol:TheAbyssCrowdsale
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |    address public owner;
    |    address public newOwner;
  at /home/jiaming/mavs_srcs/contract@0x8c5c3b13b832f46ed681dcd0e201d7cb1538e95b.sol(43)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x8c5c3b13b832f46ed681dcd0e201d7cb1538e95b.sol(44)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |contract Ownable {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x8c5c3b13b832f46ed681dcd0e201d7cb1538e95b.sol(45)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    * @param _newOwner The address to transfer ownership to.
    |    */
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        require(_newOwner != owner);
    |        newOwner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0x8c5c3b13b832f46ed681dcd0e201d7cb1538e95b.sol(69)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    * @dev confirm ownership by a new owner
    |    */
  > |    function confirmOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x8c5c3b13b832f46ed681dcd0e201d7cb1538e95b.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    function transferOwnership(address _newOwner) public onlyOwner {
    |        require(_newOwner != owner);
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8c5c3b13b832f46ed681dcd0e201d7cb1538e95b.sol(71)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = 0x0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8c5c3b13b832f46ed681dcd0e201d7cb1538e95b.sol(80)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |        OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = 0x0;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x8c5c3b13b832f46ed681dcd0e201d7cb1538e95b.sol(81)

[33mWarning[0m for LockedEther in contract 'Pausable':
    | * @dev Base contract which allows children to implement an emergency stop mechanism.
    | */
  > |contract Pausable is Ownable {
    |    event Pause();
    |    event Unpause();
  at /home/jiaming/mavs_srcs/contract@0x8c5c3b13b832f46ed681dcd0e201d7cb1538e95b.sol(89)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    | */
    |contract Ownable {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x8c5c3b13b832f46ed681dcd0e201d7cb1538e95b.sol(44)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |contract Ownable {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x8c5c3b13b832f46ed681dcd0e201d7cb1538e95b.sol(45)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |    * @param _newOwner The address to transfer ownership to.
    |    */
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        require(_newOwner != owner);
    |        newOwner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0x8c5c3b13b832f46ed681dcd0e201d7cb1538e95b.sol(69)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |    * @dev confirm ownership by a new owner
    |    */
  > |    function confirmOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x8c5c3b13b832f46ed681dcd0e201d7cb1538e95b.sol(77)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |    event Unpause();
    |
  > |    bool public paused = false;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x8c5c3b13b832f46ed681dcd0e201d7cb1538e95b.sol(93)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |     * @dev called by the owner to pause, triggers stopped state
    |     */
  > |    function pause() onlyOwner whenNotPaused public {
    |        paused = true;
    |        Pause();
  at /home/jiaming/mavs_srcs/contract@0x8c5c3b13b832f46ed681dcd0e201d7cb1538e95b.sol(115)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |     * @dev called by the owner to unpause, returns to normal state
    |     */
  > |    function unpause() onlyOwner whenPaused public {
    |        paused = false;
    |        Unpause();
  at /home/jiaming/mavs_srcs/contract@0x8c5c3b13b832f46ed681dcd0e201d7cb1538e95b.sol(123)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    function transferOwnership(address _newOwner) public onlyOwner {
    |        require(_newOwner != owner);
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8c5c3b13b832f46ed681dcd0e201d7cb1538e95b.sol(71)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = 0x0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8c5c3b13b832f46ed681dcd0e201d7cb1538e95b.sol(80)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |        OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = 0x0;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x8c5c3b13b832f46ed681dcd0e201d7cb1538e95b.sol(81)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |     */
    |    function pause() onlyOwner whenNotPaused public {
  > |        paused = true;
    |        Pause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8c5c3b13b832f46ed681dcd0e201d7cb1538e95b.sol(116)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |     */
    |    function unpause() onlyOwner whenPaused public {
  > |        paused = false;
    |        Unpause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8c5c3b13b832f46ed681dcd0e201d7cb1538e95b.sol(124)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |contract SafeMath {
    |    /**
    |    * @dev constructor
  at /home/jiaming/mavs_srcs/contract@0x8c5c3b13b832f46ed681dcd0e201d7cb1538e95b.sol(7)

[33mWarning[0m for DAOConstantGas in contract 'TheAbyssCrowdsale':
    |
    |    function transferFunds() public onlyOwner {
  > |        wallet.transfer(this.balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x8c5c3b13b832f46ed681dcd0e201d7cb1538e95b.sol(227)

[33mWarning[0m for LockedEther in contract 'TheAbyssCrowdsale':
    |}
    |
  > |contract TheAbyssCrowdsale is Ownable, SafeMath, Pausable {
    |    mapping (address => uint256) public balances;
    |
  at /home/jiaming/mavs_srcs/contract@0x8c5c3b13b832f46ed681dcd0e201d7cb1538e95b.sol(129)

[31mViolation[0m for MissingInputValidation in contract 'TheAbyssCrowdsale':
    |
    |contract TheAbyssCrowdsale is Ownable, SafeMath, Pausable {
  > |    mapping (address => uint256) public balances;
    |
    |    uint256 public constant TOKEN_PRICE_NUM = 2500;
  at /home/jiaming/mavs_srcs/contract@0x8c5c3b13b832f46ed681dcd0e201d7cb1538e95b.sol(130)

[33mWarning[0m for MissingInputValidation in contract 'TheAbyssCrowdsale':
    |    }
    |
  > |    function safeMul(uint256 a, uint256 b) internal pure returns (uint256) {
    |        uint256 c = a * b;
    |        assert(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0x8c5c3b13b832f46ed681dcd0e201d7cb1538e95b.sol(14)

[33mWarning[0m for MissingInputValidation in contract 'TheAbyssCrowdsale':
    |    }
    |
  > |    function safeDiv(uint256 a, uint256 b) internal pure returns (uint256) {
    |        uint256 c = a / b;
    |        return c;
  at /home/jiaming/mavs_srcs/contract@0x8c5c3b13b832f46ed681dcd0e201d7cb1538e95b.sol(20)

[33mWarning[0m for MissingInputValidation in contract 'TheAbyssCrowdsale':
    |    }
    |
  > |    function safeAdd(uint256 a, uint256 b) internal pure returns (uint256) {
    |        uint256 c = a + b;
    |        assert(c >= a);
  at /home/jiaming/mavs_srcs/contract@0x8c5c3b13b832f46ed681dcd0e201d7cb1538e95b.sol(30)

[33mWarning[0m for MissingInputValidation in contract 'TheAbyssCrowdsale':
    | */
    |contract Ownable {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x8c5c3b13b832f46ed681dcd0e201d7cb1538e95b.sol(44)

[33mWarning[0m for MissingInputValidation in contract 'TheAbyssCrowdsale':
    |contract Ownable {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x8c5c3b13b832f46ed681dcd0e201d7cb1538e95b.sol(45)

[33mWarning[0m for MissingInputValidation in contract 'TheAbyssCrowdsale':
    |    * @param _newOwner The address to transfer ownership to.
    |    */
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        require(_newOwner != owner);
    |        newOwner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0x8c5c3b13b832f46ed681dcd0e201d7cb1538e95b.sol(69)

[33mWarning[0m for MissingInputValidation in contract 'TheAbyssCrowdsale':
    |    * @dev confirm ownership by a new owner
    |    */
  > |    function confirmOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x8c5c3b13b832f46ed681dcd0e201d7cb1538e95b.sol(77)

[33mWarning[0m for MissingInputValidation in contract 'TheAbyssCrowdsale':
    |    event Unpause();
    |
  > |    bool public paused = false;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x8c5c3b13b832f46ed681dcd0e201d7cb1538e95b.sol(93)

[33mWarning[0m for MissingInputValidation in contract 'TheAbyssCrowdsale':
    |     * @dev called by the owner to pause, triggers stopped state
    |     */
  > |    function pause() onlyOwner whenNotPaused public {
    |        paused = true;
    |        Pause();
  at /home/jiaming/mavs_srcs/contract@0x8c5c3b13b832f46ed681dcd0e201d7cb1538e95b.sol(115)

[33mWarning[0m for MissingInputValidation in contract 'TheAbyssCrowdsale':
    |     * @dev called by the owner to unpause, returns to normal state
    |     */
  > |    function unpause() onlyOwner whenPaused public {
    |        paused = false;
    |        Unpause();
  at /home/jiaming/mavs_srcs/contract@0x8c5c3b13b832f46ed681dcd0e201d7cb1538e95b.sol(123)

[33mWarning[0m for MissingInputValidation in contract 'TheAbyssCrowdsale':
    |    mapping (address => uint256) public balances;
    |
  > |    uint256 public constant TOKEN_PRICE_NUM = 2500;
    |    uint256 public constant TOKEN_PRICE_DENOM = 1;
    |
  at /home/jiaming/mavs_srcs/contract@0x8c5c3b13b832f46ed681dcd0e201d7cb1538e95b.sol(132)

[33mWarning[0m for MissingInputValidation in contract 'TheAbyssCrowdsale':
    |
    |    uint256 public constant TOKEN_PRICE_NUM = 2500;
  > |    uint256 public constant TOKEN_PRICE_DENOM = 1;
    |
    |    uint256 public constant PRESALE_ETHER_MIN_CONTRIB = 1 ether;
  at /home/jiaming/mavs_srcs/contract@0x8c5c3b13b832f46ed681dcd0e201d7cb1538e95b.sol(133)

[33mWarning[0m for MissingInputValidation in contract 'TheAbyssCrowdsale':
    |    uint256 public constant TOKEN_PRICE_DENOM = 1;
    |
  > |    uint256 public constant PRESALE_ETHER_MIN_CONTRIB = 1 ether;
    |    uint256 public constant SALE_ETHER_MIN_CONTRIB = 0.1 ether;
    |
  at /home/jiaming/mavs_srcs/contract@0x8c5c3b13b832f46ed681dcd0e201d7cb1538e95b.sol(135)

[33mWarning[0m for MissingInputValidation in contract 'TheAbyssCrowdsale':
    |
    |    uint256 public constant PRESALE_ETHER_MIN_CONTRIB = 1 ether;
  > |    uint256 public constant SALE_ETHER_MIN_CONTRIB = 0.1 ether;
    |
    |    uint256 public constant PRESALE_CAP = 10000 ether;
  at /home/jiaming/mavs_srcs/contract@0x8c5c3b13b832f46ed681dcd0e201d7cb1538e95b.sol(136)

[33mWarning[0m for MissingInputValidation in contract 'TheAbyssCrowdsale':
    |    uint256 public constant SALE_ETHER_MIN_CONTRIB = 0.1 ether;
    |
  > |    uint256 public constant PRESALE_CAP = 10000 ether;
    |    uint256 public constant HARD_CAP = 100000 ether;
    |
  at /home/jiaming/mavs_srcs/contract@0x8c5c3b13b832f46ed681dcd0e201d7cb1538e95b.sol(138)

[33mWarning[0m for MissingInputValidation in contract 'TheAbyssCrowdsale':
    |
    |    uint256 public constant PRESALE_CAP = 10000 ether;
  > |    uint256 public constant HARD_CAP = 100000 ether;
    |
    |    uint256 public constant PRESALE_START_TIME = 1513609200;
  at /home/jiaming/mavs_srcs/contract@0x8c5c3b13b832f46ed681dcd0e201d7cb1538e95b.sol(139)

[33mWarning[0m for MissingInputValidation in contract 'TheAbyssCrowdsale':
    |    uint256 public constant HARD_CAP = 100000 ether;
    |
  > |    uint256 public constant PRESALE_START_TIME = 1513609200;
    |    uint256 public constant PRESALE_END_TIME = 1514764740;
    |
  at /home/jiaming/mavs_srcs/contract@0x8c5c3b13b832f46ed681dcd0e201d7cb1538e95b.sol(141)

[33mWarning[0m for MissingInputValidation in contract 'TheAbyssCrowdsale':
    |
    |    uint256 public constant PRESALE_START_TIME = 1513609200;
  > |    uint256 public constant PRESALE_END_TIME = 1514764740;
    |
    |    uint256 public constant SALE_START_TIME = 1515510000;
  at /home/jiaming/mavs_srcs/contract@0x8c5c3b13b832f46ed681dcd0e201d7cb1538e95b.sol(142)

[33mWarning[0m for MissingInputValidation in contract 'TheAbyssCrowdsale':
    |    uint256 public constant PRESALE_END_TIME = 1514764740;
    |
  > |    uint256 public constant SALE_START_TIME = 1515510000;
    |    uint256 public constant SALE_END_TIME = 1518739140;
    |
  at /home/jiaming/mavs_srcs/contract@0x8c5c3b13b832f46ed681dcd0e201d7cb1538e95b.sol(144)

[33mWarning[0m for MissingInputValidation in contract 'TheAbyssCrowdsale':
    |
    |    uint256 public constant SALE_START_TIME = 1515510000;
  > |    uint256 public constant SALE_END_TIME = 1518739140;
    |
    |    uint256 public totalEtherContributed = 0;
  at /home/jiaming/mavs_srcs/contract@0x8c5c3b13b832f46ed681dcd0e201d7cb1538e95b.sol(145)

[33mWarning[0m for MissingInputValidation in contract 'TheAbyssCrowdsale':
    |    uint256 public constant SALE_END_TIME = 1518739140;
    |
  > |    uint256 public totalEtherContributed = 0;
    |    uint256 public totalTokensToSupply = 0;
    |    address public wallet = 0x0;
  at /home/jiaming/mavs_srcs/contract@0x8c5c3b13b832f46ed681dcd0e201d7cb1538e95b.sol(147)

[33mWarning[0m for MissingInputValidation in contract 'TheAbyssCrowdsale':
    |
    |    uint256 public totalEtherContributed = 0;
  > |    uint256 public totalTokensToSupply = 0;
    |    address public wallet = 0x0;
    |
  at /home/jiaming/mavs_srcs/contract@0x8c5c3b13b832f46ed681dcd0e201d7cb1538e95b.sol(148)

[33mWarning[0m for MissingInputValidation in contract 'TheAbyssCrowdsale':
    |    uint256 public totalEtherContributed = 0;
    |    uint256 public totalTokensToSupply = 0;
  > |    address public wallet = 0x0;
    |
    |    uint256 public bonusWindow1EndTime = 0;
  at /home/jiaming/mavs_srcs/contract@0x8c5c3b13b832f46ed681dcd0e201d7cb1538e95b.sol(149)

[33mWarning[0m for MissingInputValidation in contract 'TheAbyssCrowdsale':
    |    address public wallet = 0x0;
    |
  > |    uint256 public bonusWindow1EndTime = 0;
    |    uint256 public bonusWindow2EndTime = 0;
    |    uint256 public bonusWindow3EndTime = 0;  
  at /home/jiaming/mavs_srcs/contract@0x8c5c3b13b832f46ed681dcd0e201d7cb1538e95b.sol(151)

[33mWarning[0m for MissingInputValidation in contract 'TheAbyssCrowdsale':
    |
    |    uint256 public bonusWindow1EndTime = 0;
  > |    uint256 public bonusWindow2EndTime = 0;
    |    uint256 public bonusWindow3EndTime = 0;  
    |
  at /home/jiaming/mavs_srcs/contract@0x8c5c3b13b832f46ed681dcd0e201d7cb1538e95b.sol(152)

[33mWarning[0m for MissingInputValidation in contract 'TheAbyssCrowdsale':
    |    uint256 public bonusWindow1EndTime = 0;
    |    uint256 public bonusWindow2EndTime = 0;
  > |    uint256 public bonusWindow3EndTime = 0;  
    |
    |    event LogContribution(address indexed contributor, uint256 amountWei, uint256 tokenAmount, uint256 tokenBonus, uint256 timestamp);
  at /home/jiaming/mavs_srcs/contract@0x8c5c3b13b832f46ed681dcd0e201d7cb1538e95b.sol(153)

[33mWarning[0m for MissingInputValidation in contract 'TheAbyssCrowdsale':
    |    }
    |
  > |    function getBonus() internal constant returns (uint256, uint256) {
    |        uint256 numerator = 0;
    |        uint256 denominator = 100;
  at /home/jiaming/mavs_srcs/contract@0x8c5c3b13b832f46ed681dcd0e201d7cb1538e95b.sol(183)

[33mWarning[0m for MissingInputValidation in contract 'TheAbyssCrowdsale':
    |    }
    |
  > |    function processContribution() private whenNotPaused checkContribution checkCap {
    |        uint256 bonusNum = 0;
    |        uint256 bonusDenom = 100;
  at /home/jiaming/mavs_srcs/contract@0x8c5c3b13b832f46ed681dcd0e201d7cb1538e95b.sol(207)

[33mWarning[0m for MissingInputValidation in contract 'TheAbyssCrowdsale':
    |    }
    |
  > |    function transferFunds() public onlyOwner {
    |        wallet.transfer(this.balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8c5c3b13b832f46ed681dcd0e201d7cb1538e95b.sol(226)

[31mViolation[0m for TODAmount in contract 'TheAbyssCrowdsale':
    |
    |    function transferFunds() public onlyOwner {
  > |        wallet.transfer(this.balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x8c5c3b13b832f46ed681dcd0e201d7cb1538e95b.sol(227)

[33mWarning[0m for TODReceiver in contract 'TheAbyssCrowdsale':
    |
    |    function transferFunds() public onlyOwner {
  > |        wallet.transfer(this.balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x8c5c3b13b832f46ed681dcd0e201d7cb1538e95b.sol(227)

[33mWarning[0m for UnhandledException in contract 'TheAbyssCrowdsale':
    |
    |    function transferFunds() public onlyOwner {
  > |        wallet.transfer(this.balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x8c5c3b13b832f46ed681dcd0e201d7cb1538e95b.sol(227)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TheAbyssCrowdsale':
    |
    |    function transferFunds() public onlyOwner {
  > |        wallet.transfer(this.balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x8c5c3b13b832f46ed681dcd0e201d7cb1538e95b.sol(227)

[31mViolation[0m for UnrestrictedWrite in contract 'TheAbyssCrowdsale':
    |
    |        uint256 tokenTotalAmount = safeAdd(tokenAmount, tokenBonusAmount);
  > |        balances[msg.sender] = safeAdd(balances[msg.sender], tokenTotalAmount);
    |
    |        totalEtherContributed = safeAdd(totalEtherContributed, msg.value);
  at /home/jiaming/mavs_srcs/contract@0x8c5c3b13b832f46ed681dcd0e201d7cb1538e95b.sol(219)

[31mViolation[0m for UnrestrictedWrite in contract 'TheAbyssCrowdsale':
    |        balances[msg.sender] = safeAdd(balances[msg.sender], tokenTotalAmount);
    |
  > |        totalEtherContributed = safeAdd(totalEtherContributed, msg.value);
    |        totalTokensToSupply = safeAdd(totalTokensToSupply, tokenTotalAmount);
    |        LogContribution(msg.sender, msg.value, tokenAmount, tokenBonusAmount, now);
  at /home/jiaming/mavs_srcs/contract@0x8c5c3b13b832f46ed681dcd0e201d7cb1538e95b.sol(221)

[31mViolation[0m for UnrestrictedWrite in contract 'TheAbyssCrowdsale':
    |
    |        totalEtherContributed = safeAdd(totalEtherContributed, msg.value);
  > |        totalTokensToSupply = safeAdd(totalTokensToSupply, tokenTotalAmount);
    |        LogContribution(msg.sender, msg.value, tokenAmount, tokenBonusAmount, now);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8c5c3b13b832f46ed681dcd0e201d7cb1538e95b.sol(222)

[33mWarning[0m for UnrestrictedWrite in contract 'TheAbyssCrowdsale':
    |    function transferOwnership(address _newOwner) public onlyOwner {
    |        require(_newOwner != owner);
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8c5c3b13b832f46ed681dcd0e201d7cb1538e95b.sol(71)

[33mWarning[0m for UnrestrictedWrite in contract 'TheAbyssCrowdsale':
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = 0x0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8c5c3b13b832f46ed681dcd0e201d7cb1538e95b.sol(80)

[33mWarning[0m for UnrestrictedWrite in contract 'TheAbyssCrowdsale':
    |        OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = 0x0;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x8c5c3b13b832f46ed681dcd0e201d7cb1538e95b.sol(81)

[33mWarning[0m for UnrestrictedWrite in contract 'TheAbyssCrowdsale':
    |     */
    |    function pause() onlyOwner whenNotPaused public {
  > |        paused = true;
    |        Pause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8c5c3b13b832f46ed681dcd0e201d7cb1538e95b.sol(116)

[33mWarning[0m for UnrestrictedWrite in contract 'TheAbyssCrowdsale':
    |     */
    |    function unpause() onlyOwner whenPaused public {
  > |        paused = false;
    |        Unpause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8c5c3b13b832f46ed681dcd0e201d7cb1538e95b.sol(124)


