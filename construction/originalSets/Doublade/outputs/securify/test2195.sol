Processing contract: /home/jiaming/mavs_srcs/contract@0x8effd494eb698cc399af6231fccd39e08fd20b15.sol:PIXToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8effd494eb698cc399af6231fccd39e08fd20b15.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8effd494eb698cc399af6231fccd39e08fd20b15.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8effd494eb698cc399af6231fccd39e08fd20b15.sol:Token
[33mWarning[0m for DAOConstantGas in contract 'PIXToken':
    |        totalSupply = safeAdd(totalSupply, totalTokens);
    |
  > |        deposit.transfer(msg.value); // Send deposited Ether to the deposit address on file.
    |
    |        Buy(recipient, msg.value, totalTokens);
  at /home/jiaming/mavs_srcs/contract@0x8effd494eb698cc399af6231fccd39e08fd20b15.sol(330)

[31mViolation[0m for MissingInputValidation in contract 'PIXToken':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8effd494eb698cc399af6231fccd39e08fd20b15.sol(113)

[31mViolation[0m for MissingInputValidation in contract 'PIXToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x8effd494eb698cc399af6231fccd39e08fd20b15.sol(117)

[31mViolation[0m for MissingInputValidation in contract 'PIXToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |        return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8effd494eb698cc399af6231fccd39e08fd20b15.sol(123)

[31mViolation[0m for MissingInputValidation in contract 'PIXToken':
    |    }
    |
  > |    function setETHUSDRate(uint centsPerEthInput) public {
    |        /*
    |            Sets the current ETH/USD Exchange rate in cents.  This modifies the token price in Wei.
  at /home/jiaming/mavs_srcs/contract@0x8effd494eb698cc399af6231fccd39e08fd20b15.sol(234)

[31mViolation[0m for MissingInputValidation in contract 'PIXToken':
    |        Change founder address (Controlling address for contract)
    |    */
  > |    function changeFounder(address newFounder) {
    |        require(msg.sender==founder);
    |        founder = newFounder;
  at /home/jiaming/mavs_srcs/contract@0x8effd494eb698cc399af6231fccd39e08fd20b15.sol(403)

[31mViolation[0m for MissingInputValidation in contract 'PIXToken':
    |        Change deposit address (Address to which funds are deposited)
    |    */
  > |    function changeDeposit(address newDeposit) {
    |        require(msg.sender==founder);
    |        deposit = newDeposit;
  at /home/jiaming/mavs_srcs/contract@0x8effd494eb698cc399af6231fccd39e08fd20b15.sol(411)

[31mViolation[0m for MissingInputValidation in contract 'PIXToken':
    |        IE: 100 is $100 is 10000 cents.  The correct value to enter is 100
    |    */
  > |    function addPresaleWhitelist(address toWhitelist, uint256 amount){
    |        require(msg.sender==founder && amount > 0);
    |        presaleWhitelist[toWhitelist] = amount * 100;
  at /home/jiaming/mavs_srcs/contract@0x8effd494eb698cc399af6231fccd39e08fd20b15.sol(421)

[31mViolation[0m for MissingInputValidation in contract 'PIXToken':
    |     * Prevent transfers until freeze period is over.
    |     */
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        require(block.timestamp > coinTradeStart);
    |        return super.transferFrom(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x8effd494eb698cc399af6231fccd39e08fd20b15.sol(445)

[33mWarning[0m for MissingInputValidation in contract 'PIXToken':
    |    //internals
    |
  > |    function safeMul(uint a, uint b) internal returns (uint) {
    |        uint c = a * b;
    |        require(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0x8effd494eb698cc399af6231fccd39e08fd20b15.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'PIXToken':
    |    }
    |
  > |    function safeSub(uint a, uint b) internal returns (uint) {
    |        require(b <= a);
    |        return a - b;
  at /home/jiaming/mavs_srcs/contract@0x8effd494eb698cc399af6231fccd39e08fd20b15.sol(17)

[33mWarning[0m for MissingInputValidation in contract 'PIXToken':
    |    }
    |
  > |    function safeAdd(uint a, uint b) internal returns (uint) {
    |        uint c = a + b;
    |        require(c>=a && c>=b);
  at /home/jiaming/mavs_srcs/contract@0x8effd494eb698cc399af6231fccd39e08fd20b15.sol(22)

[33mWarning[0m for MissingInputValidation in contract 'PIXToken':
    |    }
    |
  > |    function safeDiv(uint a, uint b) internal returns (uint) {
    |        require(b > 0);
    |        uint c = a / b;
  at /home/jiaming/mavs_srcs/contract@0x8effd494eb698cc399af6231fccd39e08fd20b15.sol(28)

[33mWarning[0m for MissingInputValidation in contract 'PIXToken':
    |     * - Integer overflow = OK, checked
    |     */
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        //Default assumes totalSupply can't be over max (2^256 - 1).
    |        //If your token leaves out totalSupply and can issue more tokens as time goes on, you need to check if it doesn't wrap.
  at /home/jiaming/mavs_srcs/contract@0x8effd494eb698cc399af6231fccd39e08fd20b15.sol(88)

[33mWarning[0m for MissingInputValidation in contract 'PIXToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        //same as above. Replace this line with the following if you want to protect against wrapping uints.
    |        if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
  at /home/jiaming/mavs_srcs/contract@0x8effd494eb698cc399af6231fccd39e08fd20b15.sol(101)

[33mWarning[0m for MissingInputValidation in contract 'PIXToken':
    |    mapping (address => mapping (address => uint256)) allowed;
    |
  > |    uint256 public totalSupply;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x8effd494eb698cc399af6231fccd39e08fd20b15.sol(131)

[33mWarning[0m for MissingInputValidation in contract 'PIXToken':
    |contract PIXToken is StandardToken, SafeMath {
    |
  > |    string public name = "PIX Token";
    |    string public symbol = "PIX";
    |
  at /home/jiaming/mavs_srcs/contract@0x8effd494eb698cc399af6231fccd39e08fd20b15.sol(144)

[33mWarning[0m for MissingInputValidation in contract 'PIXToken':
    |
    |    string public name = "PIX Token";
  > |    string public symbol = "PIX";
    |
    |    // Initial founder address (set in constructor)
  at /home/jiaming/mavs_srcs/contract@0x8effd494eb698cc399af6231fccd39e08fd20b15.sol(145)

[33mWarning[0m for MissingInputValidation in contract 'PIXToken':
    |    // Initial founder address (set in constructor)
    |    // This address is used as a controller address, in order to properly handle administration of the token.
  > |    address public founder = 0x0;
    |
    |    // Deposit Address - The funds will be sent here immediately after payments are made to the contract
  at /home/jiaming/mavs_srcs/contract@0x8effd494eb698cc399af6231fccd39e08fd20b15.sol(149)

[33mWarning[0m for MissingInputValidation in contract 'PIXToken':
    |
    |    // Deposit Address - The funds will be sent here immediately after payments are made to the contract
  > |    address public deposit = 0x0;
    |
    |    /*
  at /home/jiaming/mavs_srcs/contract@0x8effd494eb698cc399af6231fccd39e08fd20b15.sol(152)

[33mWarning[0m for MissingInputValidation in contract 'PIXToken':
    |
    |    // Pricing for the pre-sale in US Cents.
  > |    uint public capPreSale = 15 * 10**8;  // 15M USD cap for pre-sale, this subtracts from day1 cap
    |    uint public capDay1 = 20 * 10**8;  // 20M USD cap for day 1
    |    uint public capDay2 = 20 * 10**8;  // 20M USD cap for day 2
  at /home/jiaming/mavs_srcs/contract@0x8effd494eb698cc399af6231fccd39e08fd20b15.sol(179)

[33mWarning[0m for MissingInputValidation in contract 'PIXToken':
    |    // Pricing for the pre-sale in US Cents.
    |    uint public capPreSale = 15 * 10**8;  // 15M USD cap for pre-sale, this subtracts from day1 cap
  > |    uint public capDay1 = 20 * 10**8;  // 20M USD cap for day 1
    |    uint public capDay2 = 20 * 10**8;  // 20M USD cap for day 2
    |    uint public capDay3 = 20 * 10**8;  // 20M USD cap for day 3 - 10
  at /home/jiaming/mavs_srcs/contract@0x8effd494eb698cc399af6231fccd39e08fd20b15.sol(180)

[33mWarning[0m for MissingInputValidation in contract 'PIXToken':
    |    uint public capPreSale = 15 * 10**8;  // 15M USD cap for pre-sale, this subtracts from day1 cap
    |    uint public capDay1 = 20 * 10**8;  // 20M USD cap for day 1
  > |    uint public capDay2 = 20 * 10**8;  // 20M USD cap for day 2
    |    uint public capDay3 = 20 * 10**8;  // 20M USD cap for day 3 - 10
    |
  at /home/jiaming/mavs_srcs/contract@0x8effd494eb698cc399af6231fccd39e08fd20b15.sol(181)

[33mWarning[0m for MissingInputValidation in contract 'PIXToken':
    |    uint public capDay1 = 20 * 10**8;  // 20M USD cap for day 1
    |    uint public capDay2 = 20 * 10**8;  // 20M USD cap for day 2
  > |    uint public capDay3 = 20 * 10**8;  // 20M USD cap for day 3 - 10
    |
    |    // Token pricing information
  at /home/jiaming/mavs_srcs/contract@0x8effd494eb698cc399af6231fccd39e08fd20b15.sol(182)

[33mWarning[0m for MissingInputValidation in contract 'PIXToken':
    |
    |    // Token pricing information
  > |    uint public weiPerEther = 10**18;
    |    uint public centsPerEth = 23000;
    |    uint public centsPerToken = 12;
  at /home/jiaming/mavs_srcs/contract@0x8effd494eb698cc399af6231fccd39e08fd20b15.sol(185)

[33mWarning[0m for MissingInputValidation in contract 'PIXToken':
    |    // Token pricing information
    |    uint public weiPerEther = 10**18;
  > |    uint public centsPerEth = 23000;
    |    uint public centsPerToken = 12;
    |
  at /home/jiaming/mavs_srcs/contract@0x8effd494eb698cc399af6231fccd39e08fd20b15.sol(186)

[33mWarning[0m for MissingInputValidation in contract 'PIXToken':
    |    uint public weiPerEther = 10**18;
    |    uint public centsPerEth = 23000;
  > |    uint public centsPerToken = 12;
    |
    |    // Amount of funds raised in stages of pre-sale
  at /home/jiaming/mavs_srcs/contract@0x8effd494eb698cc399af6231fccd39e08fd20b15.sol(187)

[33mWarning[0m for MissingInputValidation in contract 'PIXToken':
    |
    |    // Amount of funds raised in stages of pre-sale
  > |    uint public raisePreSale = 0;  // USD raise during the pre-sale period
    |    uint public raiseDay1 = 0;  // USD raised on Day 1
    |    uint public raiseDay2 = 0;  // USD raised on Day 2
  at /home/jiaming/mavs_srcs/contract@0x8effd494eb698cc399af6231fccd39e08fd20b15.sol(190)

[33mWarning[0m for MissingInputValidation in contract 'PIXToken':
    |    // Amount of funds raised in stages of pre-sale
    |    uint public raisePreSale = 0;  // USD raise during the pre-sale period
  > |    uint public raiseDay1 = 0;  // USD raised on Day 1
    |    uint public raiseDay2 = 0;  // USD raised on Day 2
    |    uint public raiseDay3 = 0;  // USD raised during days 3-10
  at /home/jiaming/mavs_srcs/contract@0x8effd494eb698cc399af6231fccd39e08fd20b15.sol(191)

[33mWarning[0m for MissingInputValidation in contract 'PIXToken':
    |    uint public raisePreSale = 0;  // USD raise during the pre-sale period
    |    uint public raiseDay1 = 0;  // USD raised on Day 1
  > |    uint public raiseDay2 = 0;  // USD raised on Day 2
    |    uint public raiseDay3 = 0;  // USD raised during days 3-10
    |
  at /home/jiaming/mavs_srcs/contract@0x8effd494eb698cc399af6231fccd39e08fd20b15.sol(192)

[33mWarning[0m for MissingInputValidation in contract 'PIXToken':
    |    uint public raiseDay1 = 0;  // USD raised on Day 1
    |    uint public raiseDay2 = 0;  // USD raised on Day 2
  > |    uint public raiseDay3 = 0;  // USD raised during days 3-10
    |
    |    // Block timing/contract unlocking information
  at /home/jiaming/mavs_srcs/contract@0x8effd494eb698cc399af6231fccd39e08fd20b15.sol(193)

[33mWarning[0m for MissingInputValidation in contract 'PIXToken':
    |
    |    // Block timing/contract unlocking information
  > |    uint public publicSaleStart = 1502280000; // Aug 9, 2017 Noon UTC
    |    uint public day2Start = 1502366400; // Aug 10, 2017 Noon UTC
    |    uint public day3Start = 1502452800; // Aug 11, 2017 Noon UTC
  at /home/jiaming/mavs_srcs/contract@0x8effd494eb698cc399af6231fccd39e08fd20b15.sol(196)

[33mWarning[0m for MissingInputValidation in contract 'PIXToken':
    |    // Block timing/contract unlocking information
    |    uint public publicSaleStart = 1502280000; // Aug 9, 2017 Noon UTC
  > |    uint public day2Start = 1502366400; // Aug 10, 2017 Noon UTC
    |    uint public day3Start = 1502452800; // Aug 11, 2017 Noon UTC
    |    uint public saleEnd = 1503144000; // Aug 19, 2017 Noon UTC
  at /home/jiaming/mavs_srcs/contract@0x8effd494eb698cc399af6231fccd39e08fd20b15.sol(197)

[33mWarning[0m for MissingInputValidation in contract 'PIXToken':
    |    uint public publicSaleStart = 1502280000; // Aug 9, 2017 Noon UTC
    |    uint public day2Start = 1502366400; // Aug 10, 2017 Noon UTC
  > |    uint public day3Start = 1502452800; // Aug 11, 2017 Noon UTC
    |    uint public saleEnd = 1503144000; // Aug 19, 2017 Noon UTC
    |    uint public coinTradeStart = 1505822400; // Sep 19, 2017 Noon UTC
  at /home/jiaming/mavs_srcs/contract@0x8effd494eb698cc399af6231fccd39e08fd20b15.sol(198)

[33mWarning[0m for MissingInputValidation in contract 'PIXToken':
    |    uint public day2Start = 1502366400; // Aug 10, 2017 Noon UTC
    |    uint public day3Start = 1502452800; // Aug 11, 2017 Noon UTC
  > |    uint public saleEnd = 1503144000; // Aug 19, 2017 Noon UTC
    |    uint public coinTradeStart = 1505822400; // Sep 19, 2017 Noon UTC
    |    uint public year1Unlock = 1534680000; // Aug 19, 2018 Noon UTC
  at /home/jiaming/mavs_srcs/contract@0x8effd494eb698cc399af6231fccd39e08fd20b15.sol(199)

[33mWarning[0m for MissingInputValidation in contract 'PIXToken':
    |    uint public day3Start = 1502452800; // Aug 11, 2017 Noon UTC
    |    uint public saleEnd = 1503144000; // Aug 19, 2017 Noon UTC
  > |    uint public coinTradeStart = 1505822400; // Sep 19, 2017 Noon UTC
    |    uint public year1Unlock = 1534680000; // Aug 19, 2018 Noon UTC
    |    uint public year2Unlock = 1566216000; // Aug 19, 2019 Noon UTC
  at /home/jiaming/mavs_srcs/contract@0x8effd494eb698cc399af6231fccd39e08fd20b15.sol(200)

[33mWarning[0m for MissingInputValidation in contract 'PIXToken':
    |    uint public saleEnd = 1503144000; // Aug 19, 2017 Noon UTC
    |    uint public coinTradeStart = 1505822400; // Sep 19, 2017 Noon UTC
  > |    uint public year1Unlock = 1534680000; // Aug 19, 2018 Noon UTC
    |    uint public year2Unlock = 1566216000; // Aug 19, 2019 Noon UTC
    |    uint public year3Unlock = 1597838400; // Aug 19, 2020 Noon UTC
  at /home/jiaming/mavs_srcs/contract@0x8effd494eb698cc399af6231fccd39e08fd20b15.sol(201)

[33mWarning[0m for MissingInputValidation in contract 'PIXToken':
    |    uint public coinTradeStart = 1505822400; // Sep 19, 2017 Noon UTC
    |    uint public year1Unlock = 1534680000; // Aug 19, 2018 Noon UTC
  > |    uint public year2Unlock = 1566216000; // Aug 19, 2019 Noon UTC
    |    uint public year3Unlock = 1597838400; // Aug 19, 2020 Noon UTC
    |    uint public year4Unlock = 1629374400; // Aug 19, 2021 Noon UTC
  at /home/jiaming/mavs_srcs/contract@0x8effd494eb698cc399af6231fccd39e08fd20b15.sol(202)

[33mWarning[0m for MissingInputValidation in contract 'PIXToken':
    |    uint public year1Unlock = 1534680000; // Aug 19, 2018 Noon UTC
    |    uint public year2Unlock = 1566216000; // Aug 19, 2019 Noon UTC
  > |    uint public year3Unlock = 1597838400; // Aug 19, 2020 Noon UTC
    |    uint public year4Unlock = 1629374400; // Aug 19, 2021 Noon UTC
    |
  at /home/jiaming/mavs_srcs/contract@0x8effd494eb698cc399af6231fccd39e08fd20b15.sol(203)

[33mWarning[0m for MissingInputValidation in contract 'PIXToken':
    |    uint public year2Unlock = 1566216000; // Aug 19, 2019 Noon UTC
    |    uint public year3Unlock = 1597838400; // Aug 19, 2020 Noon UTC
  > |    uint public year4Unlock = 1629374400; // Aug 19, 2021 Noon UTC
    |
    |    // Have the post-reward allocations been completed
  at /home/jiaming/mavs_srcs/contract@0x8effd494eb698cc399af6231fccd39e08fd20b15.sol(204)

[33mWarning[0m for MissingInputValidation in contract 'PIXToken':
    |
    |    // Have the post-reward allocations been completed
  > |    bool public allocatedFounders = false;
    |    bool public allocated1Year = false;
    |    bool public allocated2Year = false;
  at /home/jiaming/mavs_srcs/contract@0x8effd494eb698cc399af6231fccd39e08fd20b15.sol(207)

[33mWarning[0m for MissingInputValidation in contract 'PIXToken':
    |    // Have the post-reward allocations been completed
    |    bool public allocatedFounders = false;
  > |    bool public allocated1Year = false;
    |    bool public allocated2Year = false;
    |    bool public allocated3Year = false;
  at /home/jiaming/mavs_srcs/contract@0x8effd494eb698cc399af6231fccd39e08fd20b15.sol(208)

[33mWarning[0m for MissingInputValidation in contract 'PIXToken':
    |    bool public allocatedFounders = false;
    |    bool public allocated1Year = false;
  > |    bool public allocated2Year = false;
    |    bool public allocated3Year = false;
    |    bool public allocated4Year = false;
  at /home/jiaming/mavs_srcs/contract@0x8effd494eb698cc399af6231fccd39e08fd20b15.sol(209)

[33mWarning[0m for MissingInputValidation in contract 'PIXToken':
    |    bool public allocated1Year = false;
    |    bool public allocated2Year = false;
  > |    bool public allocated3Year = false;
    |    bool public allocated4Year = false;
    |
  at /home/jiaming/mavs_srcs/contract@0x8effd494eb698cc399af6231fccd39e08fd20b15.sol(210)

[33mWarning[0m for MissingInputValidation in contract 'PIXToken':
    |    bool public allocated2Year = false;
    |    bool public allocated3Year = false;
  > |    bool public allocated4Year = false;
    |
    |    // Token count information
  at /home/jiaming/mavs_srcs/contract@0x8effd494eb698cc399af6231fccd39e08fd20b15.sol(211)

[33mWarning[0m for MissingInputValidation in contract 'PIXToken':
    |
    |    // Token count information
  > |    uint public totalTokensSale = 500000000; //total number of tokens being sold in the ICO, excluding bonuses, reserve, and team distributions
    |    uint public totalTokensReserve = 330000000;
    |    uint public totalTokensCompany = 220000000;
  at /home/jiaming/mavs_srcs/contract@0x8effd494eb698cc399af6231fccd39e08fd20b15.sol(214)

[33mWarning[0m for MissingInputValidation in contract 'PIXToken':
    |    // Token count information
    |    uint public totalTokensSale = 500000000; //total number of tokens being sold in the ICO, excluding bonuses, reserve, and team distributions
  > |    uint public totalTokensReserve = 330000000;
    |    uint public totalTokensCompany = 220000000;
    |
  at /home/jiaming/mavs_srcs/contract@0x8effd494eb698cc399af6231fccd39e08fd20b15.sol(215)

[33mWarning[0m for MissingInputValidation in contract 'PIXToken':
    |    uint public totalTokensSale = 500000000; //total number of tokens being sold in the ICO, excluding bonuses, reserve, and team distributions
    |    uint public totalTokensReserve = 330000000;
  > |    uint public totalTokensCompany = 220000000;
    |
    |    bool public halted = false; //the founder address can set this to true to halt the crowdsale due to emergency.
  at /home/jiaming/mavs_srcs/contract@0x8effd494eb698cc399af6231fccd39e08fd20b15.sol(216)

[33mWarning[0m for MissingInputValidation in contract 'PIXToken':
    |    uint public totalTokensCompany = 220000000;
    |
  > |    bool public halted = false; //the founder address can set this to true to halt the crowdsale due to emergency.
    |
    |    mapping(address => uint256) presaleWhitelist; // Pre-sale Whitelist
  at /home/jiaming/mavs_srcs/contract@0x8effd494eb698cc399af6231fccd39e08fd20b15.sol(218)

[33mWarning[0m for MissingInputValidation in contract 'PIXToken':
    |        Gets the current state of the contract based on the block number involved in the current transaction.
    |    */
  > |    function getCurrentState() constant public returns (State) {
    |
    |        if(halted) return State.Halted;
  at /home/jiaming/mavs_srcs/contract@0x8effd494eb698cc399af6231fccd39e08fd20b15.sol(245)

[33mWarning[0m for MissingInputValidation in contract 'PIXToken':
    |        Gets the current amount of bonus per purchase in percent.
    |    */
  > |    function getCurrentBonusInPercent() constant public returns (uint) {
    |        State s = getCurrentState();
    |        if (s == State.Halted) revert();
  at /home/jiaming/mavs_srcs/contract@0x8effd494eb698cc399af6231fccd39e08fd20b15.sol(258)

[33mWarning[0m for MissingInputValidation in contract 'PIXToken':
    |        Get the current price of the token in WEI.  This should be the weiPerEther/centsPerEth * centsPerToken
    |    */
  > |    function getTokenPriceInWEI() constant public returns (uint){
    |        uint weiPerCent = safeDiv(weiPerEther, centsPerEth);
    |        return safeMul(weiPerCent, centsPerToken);
  at /home/jiaming/mavs_srcs/contract@0x8effd494eb698cc399af6231fccd39e08fd20b15.sol(271)

[33mWarning[0m for MissingInputValidation in contract 'PIXToken':
    |        Entry point for purchasing for one's self.
    |    */
  > |    function buy() payable public {
    |        buyRecipient(msg.sender);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8effd494eb698cc399af6231fccd39e08fd20b15.sol(279)

[33mWarning[0m for MissingInputValidation in contract 'PIXToken':
    |        Allocate reserved and founders tokens based on the running time and state of the contract.
    |     */
  > |    function allocateReserveAndFounderTokens() {
    |        require(msg.sender==founder);
    |        require(getCurrentState() == State.Running);
  at /home/jiaming/mavs_srcs/contract@0x8effd494eb698cc399af6231fccd39e08fd20b15.sol(338)

[33mWarning[0m for MissingInputValidation in contract 'PIXToken':
    |     * - Test unhalting, buying, and succeeding
    |     */
  > |    function halt() {
    |        require(msg.sender==founder);
    |        halted = true;
  at /home/jiaming/mavs_srcs/contract@0x8effd494eb698cc399af6231fccd39e08fd20b15.sol(390)

[33mWarning[0m for MissingInputValidation in contract 'PIXToken':
    |    }
    |
  > |    function unhalt() {
    |        require(msg.sender==founder);
    |        halted = false;
  at /home/jiaming/mavs_srcs/contract@0x8effd494eb698cc399af6231fccd39e08fd20b15.sol(395)

[33mWarning[0m for UnhandledException in contract 'PIXToken':
    |        totalSupply = safeAdd(totalSupply, totalTokens);
    |
  > |        deposit.transfer(msg.value); // Send deposited Ether to the deposit address on file.
    |
    |        Buy(recipient, msg.value, totalTokens);
  at /home/jiaming/mavs_srcs/contract@0x8effd494eb698cc399af6231fccd39e08fd20b15.sol(330)

[31mViolation[0m for UnrestrictedWrite in contract 'PIXToken':
    |        if (balances[msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
    |            //if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x8effd494eb698cc399af6231fccd39e08fd20b15.sol(94)

[31mViolation[0m for UnrestrictedWrite in contract 'PIXToken':
    |            //if (balances[msg.sender] >= _value && _value > 0) {
    |            balances[msg.sender] -= _value;
  > |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x8effd494eb698cc399af6231fccd39e08fd20b15.sol(95)

[31mViolation[0m for UnrestrictedWrite in contract 'PIXToken':
    |        if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
    |            //if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0) {
  > |            balances[_to] += _value;
    |            balances[_from] -= _value;
    |            allowed[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x8effd494eb698cc399af6231fccd39e08fd20b15.sol(105)

[31mViolation[0m for UnrestrictedWrite in contract 'PIXToken':
    |            //if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0) {
    |            balances[_to] += _value;
  > |            balances[_from] -= _value;
    |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x8effd494eb698cc399af6231fccd39e08fd20b15.sol(106)

[31mViolation[0m for UnrestrictedWrite in contract 'PIXToken':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x8effd494eb698cc399af6231fccd39e08fd20b15.sol(107)

[31mViolation[0m for UnrestrictedWrite in contract 'PIXToken':
    |        {
    |            require (presaleWhitelist[msg.sender] > 0);
  > |            raisePreSale = safeAdd(raisePreSale, usdCentsRaise); //add current raise to pre-sell amount
    |            require(raisePreSale < capPreSale && usdCentsRaise < presaleWhitelist[msg.sender]); //ensure pre-sale cap, 15m usd * 100 so we have cents
    |            presaleWhitelist[msg.sender] = presaleWhitelist[msg.sender] - usdCentsRaise; // Remove the amount purchased from the pre-sale permitted for that user
  at /home/jiaming/mavs_srcs/contract@0x8effd494eb698cc399af6231fccd39e08fd20b15.sol(296)

[31mViolation[0m for UnrestrictedWrite in contract 'PIXToken':
    |            raisePreSale = safeAdd(raisePreSale, usdCentsRaise); //add current raise to pre-sell amount
    |            require(raisePreSale < capPreSale && usdCentsRaise < presaleWhitelist[msg.sender]); //ensure pre-sale cap, 15m usd * 100 so we have cents
  > |            presaleWhitelist[msg.sender] = presaleWhitelist[msg.sender] - usdCentsRaise; // Remove the amount purchased from the pre-sale permitted for that user
    |        }
    |        else if (current_state == State.Day1)
  at /home/jiaming/mavs_srcs/contract@0x8effd494eb698cc399af6231fccd39e08fd20b15.sol(298)

[31mViolation[0m for UnrestrictedWrite in contract 'PIXToken':
    |        else if (current_state == State.Day1)
    |        {
  > |            raiseDay1 = safeAdd(raiseDay1, usdCentsRaise); //add current raise to pre-sell amount
    |            require(raiseDay1 < (capDay1 - raisePreSale)); //ensure day 1 cap, which is lower by the amount we pre-sold
    |        }
  at /home/jiaming/mavs_srcs/contract@0x8effd494eb698cc399af6231fccd39e08fd20b15.sol(302)

[31mViolation[0m for UnrestrictedWrite in contract 'PIXToken':
    |        else if (current_state == State.Day2)
    |        {
  > |            raiseDay2 = safeAdd(raiseDay2, usdCentsRaise); //add current raise to pre-sell amount
    |            require(raiseDay2 < capDay2); //ensure day 2 cap
    |        }
  at /home/jiaming/mavs_srcs/contract@0x8effd494eb698cc399af6231fccd39e08fd20b15.sol(307)

[31mViolation[0m for UnrestrictedWrite in contract 'PIXToken':
    |        else if (current_state == State.Day3)
    |        {
  > |            raiseDay3 = safeAdd(raiseDay3, usdCentsRaise); //add current raise to pre-sell amount
    |            require(raiseDay3 < capDay3); //ensure day 3 cap
    |        }
  at /home/jiaming/mavs_srcs/contract@0x8effd494eb698cc399af6231fccd39e08fd20b15.sol(312)

[31mViolation[0m for UnrestrictedWrite in contract 'PIXToken':
    |        if (current_state == State.PreSale) {
    |            // Remove the extra 5% from the totalTokensCompany, in order to keep the 550m on track.
  > |            totalTokensCompany = safeSub(totalTokensCompany, safeDiv(bonus, 4));
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x8effd494eb698cc399af6231fccd39e08fd20b15.sol(322)

[31mViolation[0m for UnrestrictedWrite in contract 'PIXToken':
    |        uint totalTokens = safeAdd(tokens, bonus);
    |
  > |        balances[recipient] = safeAdd(balances[recipient], totalTokens);
    |        totalSupply = safeAdd(totalSupply, totalTokens);
    |
  at /home/jiaming/mavs_srcs/contract@0x8effd494eb698cc399af6231fccd39e08fd20b15.sol(327)

[31mViolation[0m for UnrestrictedWrite in contract 'PIXToken':
    |
    |        balances[recipient] = safeAdd(balances[recipient], totalTokens);
  > |        totalSupply = safeAdd(totalSupply, totalTokens);
    |
    |        deposit.transfer(msg.value); // Send deposited Ether to the deposit address on file.
  at /home/jiaming/mavs_srcs/contract@0x8effd494eb698cc399af6231fccd39e08fd20b15.sol(328)

[31mViolation[0m for UnrestrictedWrite in contract 'PIXToken':
    |        if(block.timestamp > saleEnd && !allocatedFounders)
    |        {
  > |            allocatedFounders = true;
    |            tokens = totalTokensCompany;
    |            balances[founder] = safeAdd(balances[founder], tokens);
  at /home/jiaming/mavs_srcs/contract@0x8effd494eb698cc399af6231fccd39e08fd20b15.sol(345)

[31mViolation[0m for UnrestrictedWrite in contract 'PIXToken':
    |            allocatedFounders = true;
    |            tokens = totalTokensCompany;
  > |            balances[founder] = safeAdd(balances[founder], tokens);
    |            totalSupply = safeAdd(totalSupply, tokens);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x8effd494eb698cc399af6231fccd39e08fd20b15.sol(347)

[31mViolation[0m for UnrestrictedWrite in contract 'PIXToken':
    |            tokens = totalTokensCompany;
    |            balances[founder] = safeAdd(balances[founder], tokens);
  > |            totalSupply = safeAdd(totalSupply, tokens);
    |        }
    |        else if(block.timestamp > year1Unlock && !allocated1Year)
  at /home/jiaming/mavs_srcs/contract@0x8effd494eb698cc399af6231fccd39e08fd20b15.sol(348)

[31mViolation[0m for UnrestrictedWrite in contract 'PIXToken':
    |        else if(block.timestamp > year1Unlock && !allocated1Year)
    |        {
  > |            allocated1Year = true;
    |            tokens = safeDiv(totalTokensReserve, 4);
    |            balances[founder] = safeAdd(balances[founder], tokens);
  at /home/jiaming/mavs_srcs/contract@0x8effd494eb698cc399af6231fccd39e08fd20b15.sol(352)

[31mViolation[0m for UnrestrictedWrite in contract 'PIXToken':
    |            allocated1Year = true;
    |            tokens = safeDiv(totalTokensReserve, 4);
  > |            balances[founder] = safeAdd(balances[founder], tokens);
    |            totalSupply = safeAdd(totalSupply, tokens);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x8effd494eb698cc399af6231fccd39e08fd20b15.sol(354)

[31mViolation[0m for UnrestrictedWrite in contract 'PIXToken':
    |            tokens = safeDiv(totalTokensReserve, 4);
    |            balances[founder] = safeAdd(balances[founder], tokens);
  > |            totalSupply = safeAdd(totalSupply, tokens);
    |        }
    |        else if(block.timestamp > year2Unlock && !allocated2Year)
  at /home/jiaming/mavs_srcs/contract@0x8effd494eb698cc399af6231fccd39e08fd20b15.sol(355)

[31mViolation[0m for UnrestrictedWrite in contract 'PIXToken':
    |        else if(block.timestamp > year2Unlock && !allocated2Year)
    |        {
  > |            allocated2Year = true;
    |            tokens = safeDiv(totalTokensReserve, 4);
    |            balances[founder] = safeAdd(balances[founder], tokens);
  at /home/jiaming/mavs_srcs/contract@0x8effd494eb698cc399af6231fccd39e08fd20b15.sol(359)

[31mViolation[0m for UnrestrictedWrite in contract 'PIXToken':
    |            allocated2Year = true;
    |            tokens = safeDiv(totalTokensReserve, 4);
  > |            balances[founder] = safeAdd(balances[founder], tokens);
    |            totalSupply = safeAdd(totalSupply, tokens);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x8effd494eb698cc399af6231fccd39e08fd20b15.sol(361)

[31mViolation[0m for UnrestrictedWrite in contract 'PIXToken':
    |            tokens = safeDiv(totalTokensReserve, 4);
    |            balances[founder] = safeAdd(balances[founder], tokens);
  > |            totalSupply = safeAdd(totalSupply, tokens);
    |        }
    |        else if(block.timestamp > year3Unlock && !allocated3Year)
  at /home/jiaming/mavs_srcs/contract@0x8effd494eb698cc399af6231fccd39e08fd20b15.sol(362)

[31mViolation[0m for UnrestrictedWrite in contract 'PIXToken':
    |        else if(block.timestamp > year3Unlock && !allocated3Year)
    |        {
  > |            allocated3Year = true;
    |            tokens = safeDiv(totalTokensReserve, 4);
    |            balances[founder] = safeAdd(balances[founder], tokens);
  at /home/jiaming/mavs_srcs/contract@0x8effd494eb698cc399af6231fccd39e08fd20b15.sol(366)

[31mViolation[0m for UnrestrictedWrite in contract 'PIXToken':
    |            allocated3Year = true;
    |            tokens = safeDiv(totalTokensReserve, 4);
  > |            balances[founder] = safeAdd(balances[founder], tokens);
    |            totalSupply = safeAdd(totalSupply, tokens);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x8effd494eb698cc399af6231fccd39e08fd20b15.sol(368)

[31mViolation[0m for UnrestrictedWrite in contract 'PIXToken':
    |            tokens = safeDiv(totalTokensReserve, 4);
    |            balances[founder] = safeAdd(balances[founder], tokens);
  > |            totalSupply = safeAdd(totalSupply, tokens);
    |        }
    |        else if(block.timestamp > year4Unlock && !allocated4Year)
  at /home/jiaming/mavs_srcs/contract@0x8effd494eb698cc399af6231fccd39e08fd20b15.sol(369)

[31mViolation[0m for UnrestrictedWrite in contract 'PIXToken':
    |        else if(block.timestamp > year4Unlock && !allocated4Year)
    |        {
  > |            allocated4Year = true;
    |            tokens = safeDiv(totalTokensReserve, 4);
    |            balances[founder] = safeAdd(balances[founder], tokens);
  at /home/jiaming/mavs_srcs/contract@0x8effd494eb698cc399af6231fccd39e08fd20b15.sol(373)

[31mViolation[0m for UnrestrictedWrite in contract 'PIXToken':
    |            allocated4Year = true;
    |            tokens = safeDiv(totalTokensReserve, 4);
  > |            balances[founder] = safeAdd(balances[founder], tokens);
    |            totalSupply = safeAdd(totalSupply, tokens);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x8effd494eb698cc399af6231fccd39e08fd20b15.sol(375)

[31mViolation[0m for UnrestrictedWrite in contract 'PIXToken':
    |            tokens = safeDiv(totalTokensReserve, 4);
    |            balances[founder] = safeAdd(balances[founder], tokens);
  > |            totalSupply = safeAdd(totalSupply, tokens);
    |        }
    |        else revert();
  at /home/jiaming/mavs_srcs/contract@0x8effd494eb698cc399af6231fccd39e08fd20b15.sol(376)

[33mWarning[0m for UnrestrictedWrite in contract 'PIXToken':
    |        if (balances[msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
    |            //if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x8effd494eb698cc399af6231fccd39e08fd20b15.sol(94)

[33mWarning[0m for UnrestrictedWrite in contract 'PIXToken':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x8effd494eb698cc399af6231fccd39e08fd20b15.sol(107)

[33mWarning[0m for UnrestrictedWrite in contract 'PIXToken':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8effd494eb698cc399af6231fccd39e08fd20b15.sol(118)

[33mWarning[0m for UnrestrictedWrite in contract 'PIXToken':
    |        */
    |        require(msg.sender == founder);
  > |        centsPerEth = centsPerEthInput;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8effd494eb698cc399af6231fccd39e08fd20b15.sol(239)

[33mWarning[0m for UnrestrictedWrite in contract 'PIXToken':
    |    function halt() {
    |        require(msg.sender==founder);
  > |        halted = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8effd494eb698cc399af6231fccd39e08fd20b15.sol(392)

[33mWarning[0m for UnrestrictedWrite in contract 'PIXToken':
    |    function unhalt() {
    |        require(msg.sender==founder);
  > |        halted = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8effd494eb698cc399af6231fccd39e08fd20b15.sol(397)

[33mWarning[0m for UnrestrictedWrite in contract 'PIXToken':
    |    function changeFounder(address newFounder) {
    |        require(msg.sender==founder);
  > |        founder = newFounder;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8effd494eb698cc399af6231fccd39e08fd20b15.sol(405)

[33mWarning[0m for UnrestrictedWrite in contract 'PIXToken':
    |    function changeDeposit(address newDeposit) {
    |        require(msg.sender==founder);
  > |        deposit = newDeposit;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8effd494eb698cc399af6231fccd39e08fd20b15.sol(413)

[33mWarning[0m for UnrestrictedWrite in contract 'PIXToken':
    |    function addPresaleWhitelist(address toWhitelist, uint256 amount){
    |        require(msg.sender==founder && amount > 0);
  > |        presaleWhitelist[toWhitelist] = amount * 100;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8effd494eb698cc399af6231fccd39e08fd20b15.sol(423)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * Inspired by https://github.com/MakerDAO/maker-otc/blob/master/contracts/simple_market.sol
    | */
  > |contract SafeMath {
    |    //internals
    |
  at /home/jiaming/mavs_srcs/contract@0x8effd494eb698cc399af6231fccd39e08fd20b15.sol(8)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * https://github.com/ethereum/EIPs/issues/20
    | */
  > |contract StandardToken is Token {
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x8effd494eb698cc399af6231fccd39e08fd20b15.sol(82)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        //same as above. Replace this line with the following if you want to protect against wrapping uints.
    |        if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
  at /home/jiaming/mavs_srcs/contract@0x8effd494eb698cc399af6231fccd39e08fd20b15.sol(101)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8effd494eb698cc399af6231fccd39e08fd20b15.sol(113)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x8effd494eb698cc399af6231fccd39e08fd20b15.sol(117)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |        return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8effd494eb698cc399af6231fccd39e08fd20b15.sol(123)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |    mapping (address => mapping (address => uint256)) allowed;
    |
  > |    uint256 public totalSupply;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x8effd494eb698cc399af6231fccd39e08fd20b15.sol(131)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        if (balances[msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
    |            //if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x8effd494eb698cc399af6231fccd39e08fd20b15.sol(94)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x8effd494eb698cc399af6231fccd39e08fd20b15.sol(107)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8effd494eb698cc399af6231fccd39e08fd20b15.sol(118)


