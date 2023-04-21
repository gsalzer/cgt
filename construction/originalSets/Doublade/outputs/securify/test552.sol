Processing contract: /home/jiaming/mavs_srcs/contract@0x238f29b3e5f5d199d37444e7118cc49f8e1bf58c.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x238f29b3e5f5d199d37444e7118cc49f8e1bf58c.sol:METADOLLAR
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x238f29b3e5f5d199d37444e7118cc49f8e1bf58c.sol:owned
[33mWarning[0m for DAOConstantGas in contract 'METADOLLAR':
    |		_transfer(msg.sender, this, amount);
    |		uint256 revenue = amount * sellPrice;
  > |		msg.sender.transfer(revenue);         // sends ether to the seller: it's important to do this last to prevent recursion attacks
    |	}
    |	
  at /home/jiaming/mavs_srcs/contract@0x238f29b3e5f5d199d37444e7118cc49f8e1bf58c.sol(187)

[33mWarning[0m for DAOConstantGas in contract 'METADOLLAR':
    |		}
    |		if(moneyBack > 0) {
  > |			sender.transfer(moneyBack);
    |		}
    |	}
  at /home/jiaming/mavs_srcs/contract@0x238f29b3e5f5d199d37444e7118cc49f8e1bf58c.sol(284)

[33mWarning[0m for DAOConstantGas in contract 'METADOLLAR':
    |		require(contractbalance >= summeInWei);
    |		withdrawed(sender, summeInWei, "wei withdrawed");
  > |        sender.transfer(summeInWei);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x238f29b3e5f5d199d37444e7118cc49f8e1bf58c.sol(435)

[33mWarning[0m for DAOConstantGas in contract 'METADOLLAR':
    |		require(this.balance >= revenue);
    |		_transfer(msg.sender, this, amount);
  > |		msg.sender.transfer(revenue);                	// sends ether to the seller: it's important to do this last to prevent recursion attacks
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x238f29b3e5f5d199d37444e7118cc49f8e1bf58c.sol(474)

[33mWarning[0m for DAOConstantGas in contract 'METADOLLAR':
    |		require(this.balance <= revenue);
    |		_transfer(msg.sender, this, amount);
  > |		msg.sender.transfer(this.balance); 
    |	}
    |}
  at /home/jiaming/mavs_srcs/contract@0x238f29b3e5f5d199d37444e7118cc49f8e1bf58c.sol(487)

[33mWarning[0m for LockedEther in contract 'METADOLLAR':
    | }
    |
  > |contract METADOLLAR is ERC20Interface, owned{
    |
    |	string public constant name = "METADOLLAR";
  at /home/jiaming/mavs_srcs/contract@0x238f29b3e5f5d199d37444e7118cc49f8e1bf58c.sol(54)

[31mViolation[0m for MissingInputValidation in contract 'METADOLLAR':
    |
    |	//Balances for each account
  > |	mapping (address => uint256) public tokenBalanceOf;
    |
    |	// Owner of account approves the transfer of an amount to another account
  at /home/jiaming/mavs_srcs/contract@0x238f29b3e5f5d199d37444e7118cc49f8e1bf58c.sol(77)

[31mViolation[0m for MissingInputValidation in contract 'METADOLLAR':
    |
    |	/// @notice What is the balance of a particular account?
  > |	function balanceOf(address _owner) constant returns (uint256 balance) {
    |		return tokenBalanceOf[_owner];
    |	}
  at /home/jiaming/mavs_srcs/contract@0x238f29b3e5f5d199d37444e7118cc49f8e1bf58c.sol(147)

[31mViolation[0m for MissingInputValidation in contract 'METADOLLAR':
    |
    |	/// @notice Shows how much metadollars _spender can spend from _owner address
  > |	function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |		return allowed[_owner][_spender];
    |	}
  at /home/jiaming/mavs_srcs/contract@0x238f29b3e5f5d199d37444e7118cc49f8e1bf58c.sol(152)

[31mViolation[0m for MissingInputValidation in contract 'METADOLLAR':
    |	/// @notice Shows if account is frozen
    |	/// @param account - Accountaddress to check
  > |	function checkFrozenAccounts(address account) constant returns (bool accountIsFrozen) {
    |		accountIsFrozen = frozenAccount[account];
    |	}
  at /home/jiaming/mavs_srcs/contract@0x238f29b3e5f5d199d37444e7118cc49f8e1bf58c.sol(168)

[31mViolation[0m for MissingInputValidation in contract 'METADOLLAR':
    |	/// @param account - address to be frozen
    |	/// @param freeze - select is the account frozen or not
  > |	function freezeAccount(address account, bool freeze) isOwner {
    |		require(account != owner);
    |		require(account != supervisor);
  at /home/jiaming/mavs_srcs/contract@0x238f29b3e5f5d199d37444e7118cc49f8e1bf58c.sol(371)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    | 
    | contract owned{
  > |	address public owner;
    |	address constant supervisor  = 0x2d6808bC989CbEB46cc6dd75a6C90deA50e3e504;
    |	
  at /home/jiaming/mavs_srcs/contract@0x238f29b3e5f5d199d37444e7118cc49f8e1bf58c.sol(35)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |contract METADOLLAR is ERC20Interface, owned{
    |
  > |	string public constant name = "METADOLLAR";
    |	string public constant symbol = "DOL";
    |	uint public constant decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0x238f29b3e5f5d199d37444e7118cc49f8e1bf58c.sol(56)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |
    |	string public constant name = "METADOLLAR";
  > |	string public constant symbol = "DOL";
    |	uint public constant decimals = 18;
    |	uint256 public _totalSupply = 1000000000000000000000000000000;  // Total Supply 100,000,000,000
  at /home/jiaming/mavs_srcs/contract@0x238f29b3e5f5d199d37444e7118cc49f8e1bf58c.sol(57)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	string public constant name = "METADOLLAR";
    |	string public constant symbol = "DOL";
  > |	uint public constant decimals = 18;
    |	uint256 public _totalSupply = 1000000000000000000000000000000;  // Total Supply 100,000,000,000
    |	uint256 public icoMin = 1000000000000000000000000000000;				 //  Min ICO 100,000,000	
  at /home/jiaming/mavs_srcs/contract@0x238f29b3e5f5d199d37444e7118cc49f8e1bf58c.sol(58)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	string public constant symbol = "DOL";
    |	uint public constant decimals = 18;
  > |	uint256 public _totalSupply = 1000000000000000000000000000000;  // Total Supply 100,000,000,000
    |	uint256 public icoMin = 1000000000000000000000000000000;				 //  Min ICO 100,000,000	
    |	uint256 public preIcoLimit = 1000000000000000000;		 // Pre Ico Limit 1
  at /home/jiaming/mavs_srcs/contract@0x238f29b3e5f5d199d37444e7118cc49f8e1bf58c.sol(59)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	uint public constant decimals = 18;
    |	uint256 public _totalSupply = 1000000000000000000000000000000;  // Total Supply 100,000,000,000
  > |	uint256 public icoMin = 1000000000000000000000000000000;				 //  Min ICO 100,000,000	
    |	uint256 public preIcoLimit = 1000000000000000000;		 // Pre Ico Limit 1
    |	uint256 public countHolders = 0;				// count how many unique holders have metadollars
  at /home/jiaming/mavs_srcs/contract@0x238f29b3e5f5d199d37444e7118cc49f8e1bf58c.sol(60)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	uint256 public _totalSupply = 1000000000000000000000000000000;  // Total Supply 100,000,000,000
    |	uint256 public icoMin = 1000000000000000000000000000000;				 //  Min ICO 100,000,000	
  > |	uint256 public preIcoLimit = 1000000000000000000;		 // Pre Ico Limit 1
    |	uint256 public countHolders = 0;				// count how many unique holders have metadollars
    |	uint256 public amountOfInvestments = 0;	// amount of collected wei
  at /home/jiaming/mavs_srcs/contract@0x238f29b3e5f5d199d37444e7118cc49f8e1bf58c.sol(61)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	uint256 public icoMin = 1000000000000000000000000000000;				 //  Min ICO 100,000,000	
    |	uint256 public preIcoLimit = 1000000000000000000;		 // Pre Ico Limit 1
  > |	uint256 public countHolders = 0;				// count how many unique holders have metadollars
    |	uint256 public amountOfInvestments = 0;	// amount of collected wei
    |	
  at /home/jiaming/mavs_srcs/contract@0x238f29b3e5f5d199d37444e7118cc49f8e1bf58c.sol(62)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	uint256 public preIcoLimit = 1000000000000000000;		 // Pre Ico Limit 1
    |	uint256 public countHolders = 0;				// count how many unique holders have metadollars
  > |	uint256 public amountOfInvestments = 0;	// amount of collected wei
    |	
    |	uint256 preICOprice;									// price of 1 metadollar in weis for the preICO time
  at /home/jiaming/mavs_srcs/contract@0x238f29b3e5f5d199d37444e7118cc49f8e1bf58c.sol(63)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	uint256 preICOprice;									// price of 1 metadollar in weis for the preICO time
    |	uint256 ICOprice;										// price of 1 metadollar in weis for the ICO time
  > |	uint256 public currentTokenPrice;				// current metadollar price in weis
    |	uint256 public sellPrice;								// buyback price of one metadollar in weis
    |	
  at /home/jiaming/mavs_srcs/contract@0x238f29b3e5f5d199d37444e7118cc49f8e1bf58c.sol(67)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	uint256 ICOprice;										// price of 1 metadollar in weis for the ICO time
    |	uint256 public currentTokenPrice;				// current metadollar price in weis
  > |	uint256 public sellPrice;								// buyback price of one metadollar in weis
    |	
    |	bool public preIcoIsRunning;
  at /home/jiaming/mavs_srcs/contract@0x238f29b3e5f5d199d37444e7118cc49f8e1bf58c.sol(68)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	uint256 public sellPrice;								// buyback price of one metadollar in weis
    |	
  > |	bool public preIcoIsRunning;
    |	bool public minimalGoalReached;
    |	bool public icoIsClosed;
  at /home/jiaming/mavs_srcs/contract@0x238f29b3e5f5d199d37444e7118cc49f8e1bf58c.sol(70)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	
    |	bool public preIcoIsRunning;
  > |	bool public minimalGoalReached;
    |	bool public icoIsClosed;
    |	bool icoExitIsPossible;
  at /home/jiaming/mavs_srcs/contract@0x238f29b3e5f5d199d37444e7118cc49f8e1bf58c.sol(71)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	bool public preIcoIsRunning;
    |	bool public minimalGoalReached;
  > |	bool public icoIsClosed;
    |	bool icoExitIsPossible;
    |
  at /home/jiaming/mavs_srcs/contract@0x238f29b3e5f5d199d37444e7118cc49f8e1bf58c.sol(72)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |
    |	/// @notice Constructor of the contract
  > |	function STARTMETADOLLAR() {
    |		preIcoIsRunning = true;
    |		minimalGoalReached = false;
  at /home/jiaming/mavs_srcs/contract@0x238f29b3e5f5d199d37444e7118cc49f8e1bf58c.sol(119)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |
    |	/// @notice Returns a whole amount of metadollars
  > |	function totalSupply() constant returns (uint256 totalAmount) {
    |		totalAmount = _totalSupply;
    |	}
  at /home/jiaming/mavs_srcs/contract@0x238f29b3e5f5d199d37444e7118cc49f8e1bf58c.sol(142)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	/// @notice Calculates amount of weis needed to buy more than one metadollar
    |	/// @param howManyTokenToBuy - Amount of metadollars to calculate
  > |	function calculateTheEndPrice(uint256 howManyTokenToBuy) constant returns (uint256 summarizedPriceInWeis) {
    |		if(howManyTokenToBuy > 0) {
    |			summarizedPriceInWeis = howManyTokenToBuy * currentTokenPrice;
  at /home/jiaming/mavs_srcs/contract@0x238f29b3e5f5d199d37444e7118cc49f8e1bf58c.sol(158)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |
    |	/// @notice Buy metadollars from contract by sending ether
  > |	function buy() payable public {
    |		require(!frozenAccount[msg.sender]);
    |		require(msg.value > 0);
  at /home/jiaming/mavs_srcs/contract@0x238f29b3e5f5d199d37444e7118cc49f8e1bf58c.sol(173)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	
    |	/// @notice Allow user to sell maximum possible amount of metadollars, depend on ether amount on contract
  > |	function sellMaximumPossibleAmountOfTokens() {
    |		require(!frozenAccount[msg.sender]);
    |		require(tokenBalanceOf[msg.sender] > 0);
  at /home/jiaming/mavs_srcs/contract@0x238f29b3e5f5d199d37444e7118cc49f8e1bf58c.sol(191)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	/// @notice Allow _spender to withdraw from your account, multiple times, up to the _value amount.
    |	/// @notice If this function is called again it overwrites the current allowance with _value.
  > |	function approve(address _spender, uint256 _value) returns (bool success) {
    |		require(!frozenAccount[msg.sender]);
    |		assert(_spender != address(0));
  at /home/jiaming/mavs_srcs/contract@0x238f29b3e5f5d199d37444e7118cc49f8e1bf58c.sol(242)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |
    |	/// @notice Check if minimal goal of ICO is reached
  > |	function checkMinimalGoal() internal {
    |		if(tokenBalanceOf[this] <= _totalSupply - icoMin) {
    |			minimalGoalReached = true;
  at /home/jiaming/mavs_srcs/contract@0x238f29b3e5f5d199d37444e7118cc49f8e1bf58c.sol(251)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |
    |	/// @notice Check if preICO is ended
  > |	function checkPreIcoStatus() internal {
    |		if(tokenBalanceOf[this] <= _totalSupply - preIcoLimit) {
    |			preIcoIsRunning = false;
  at /home/jiaming/mavs_srcs/contract@0x238f29b3e5f5d199d37444e7118cc49f8e1bf58c.sol(259)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |
    |	/// @notice Processing each buying
  > |	function buyToken() internal {
    |		uint256 value = msg.value;
    |		address sender = msg.sender;
  at /home/jiaming/mavs_srcs/contract@0x238f29b3e5f5d199d37444e7118cc49f8e1bf58c.sol(267)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |
    |	/// @notice Internal transfer, can only be called by this contract
  > |	function _transfer(address _from, address _to, uint256 _value) internal {
    |		assert(_from != address(0));
    |		assert(_to != address(0));
  at /home/jiaming/mavs_srcs/contract@0x238f29b3e5f5d199d37444e7118cc49f8e1bf58c.sol(289)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |
    |	/// @notice Set current ICO prices in wei for one metadollar
  > |	function updatePrices() internal {
    |		uint256 oldPrice = currentTokenPrice;
    |		if(preIcoIsRunning) {
  at /home/jiaming/mavs_srcs/contract@0x238f29b3e5f5d199d37444e7118cc49f8e1bf58c.sol(311)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	/// @notice Set the current sell price in wei for one metadollar
    |	/// @param priceInWei - is the amount in wei for one metadollar
  > |	function setSellPrice(uint256 priceInWei) isOwner {
    |		require(priceInWei >= 0);
    |		sellPrice = priceInWei;
  at /home/jiaming/mavs_srcs/contract@0x238f29b3e5f5d199d37444e7118cc49f8e1bf58c.sol(363)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	/// @notice Create an amount of metadollars
    |	/// @param amount - metadollars to create
  > |	function mintToken(uint256 amount) isOwner {
    |		require(amount > 0);
    |		require(tokenBalanceOf[this] <= icoMin);	// owner can create metadollars only if the initial amount is strongly not enough to supply and demand ICO
  at /home/jiaming/mavs_srcs/contract@0x238f29b3e5f5d199d37444e7118cc49f8e1bf58c.sol(384)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	/// @notice Destroy an amount of metadollars
    |	/// @param amount - token to destroy
  > |	function destroyToken(uint256 amount) isOwner {
    |		require(amount > 0);
    |		require(tokenBalanceOf[this] >= amount);
  at /home/jiaming/mavs_srcs/contract@0x238f29b3e5f5d199d37444e7118cc49f8e1bf58c.sol(398)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	/// @notice Transfer the ownership to another account
    |	/// @param newOwner - address who get the ownership
  > |	function transferOwnership(address newOwner) isOwner {
    |		assert(newOwner != address(0));
    |		address oldOwner = owner;
  at /home/jiaming/mavs_srcs/contract@0x238f29b3e5f5d199d37444e7118cc49f8e1bf58c.sol(413)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |
    |	/// @notice Transfer ether from smartcontract to owner
  > |	function collect() isOwner {
    |        require(this.balance > 0);
    |		withdraw(this.balance);
  at /home/jiaming/mavs_srcs/contract@0x238f29b3e5f5d199d37444e7118cc49f8e1bf58c.sol(423)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |
    |	/// @notice Deposit an amount of ether
  > |	function deposit() payable isOwner {
    |		require(msg.value > 0);
    |		require(msg.sender.balance >= msg.value);
  at /home/jiaming/mavs_srcs/contract@0x238f29b3e5f5d199d37444e7118cc49f8e1bf58c.sol(439)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	/// @notice Allow user to exit ICO
    |	/// @param exitAllowed - status if the exit is allowed
  > |	function allowIcoExit(bool exitAllowed) isOwner {
    |		require(icoExitIsPossible != exitAllowed);
    |		icoExitIsPossible = exitAllowed;
  at /home/jiaming/mavs_srcs/contract@0x238f29b3e5f5d199d37444e7118cc49f8e1bf58c.sol(447)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	/// @notice Stop running ICO
    |	/// @param icoIsStopped - status if this ICO is stopped
  > |	function stopThisIco(bool icoIsStopped) isOwner {
    |		require(icoIsClosed != icoIsStopped);
    |		icoIsClosed = icoIsStopped;
  at /home/jiaming/mavs_srcs/contract@0x238f29b3e5f5d199d37444e7118cc49f8e1bf58c.sol(454)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |
    |	/// @notice Sell all metadollars for half of a price and exit this ICO
  > |	function exitThisIcoForHalfOfTokenPrice() {
    |		require(icoExitIsPossible);
    |		require(!frozenAccount[msg.sender]);
  at /home/jiaming/mavs_srcs/contract@0x238f29b3e5f5d199d37444e7118cc49f8e1bf58c.sol(465)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |
    |	/// @notice Sell all of metadollars for all ether of this smartcontract
  > |	function getAllMyTokensForAllEtherOnContract() {
    |		require(icoExitIsPossible);
    |		require(!frozenAccount[msg.sender]);
  at /home/jiaming/mavs_srcs/contract@0x238f29b3e5f5d199d37444e7118cc49f8e1bf58c.sol(478)

[31mViolation[0m for TODAmount in contract 'METADOLLAR':
    |		require(contractbalance >= summeInWei);
    |		withdrawed(sender, summeInWei, "wei withdrawed");
  > |        sender.transfer(summeInWei);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x238f29b3e5f5d199d37444e7118cc49f8e1bf58c.sol(435)

[31mViolation[0m for TODAmount in contract 'METADOLLAR':
    |		require(this.balance <= revenue);
    |		_transfer(msg.sender, this, amount);
  > |		msg.sender.transfer(this.balance); 
    |	}
    |}
  at /home/jiaming/mavs_srcs/contract@0x238f29b3e5f5d199d37444e7118cc49f8e1bf58c.sol(487)

[33mWarning[0m for TODReceiver in contract 'METADOLLAR':
    |		_transfer(msg.sender, this, amount);
    |		uint256 revenue = amount * sellPrice;
  > |		msg.sender.transfer(revenue);         // sends ether to the seller: it's important to do this last to prevent recursion attacks
    |	}
    |	
  at /home/jiaming/mavs_srcs/contract@0x238f29b3e5f5d199d37444e7118cc49f8e1bf58c.sol(187)

[33mWarning[0m for TODReceiver in contract 'METADOLLAR':
    |		require(contractbalance >= summeInWei);
    |		withdrawed(sender, summeInWei, "wei withdrawed");
  > |        sender.transfer(summeInWei);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x238f29b3e5f5d199d37444e7118cc49f8e1bf58c.sol(435)

[33mWarning[0m for TODReceiver in contract 'METADOLLAR':
    |		require(this.balance >= revenue);
    |		_transfer(msg.sender, this, amount);
  > |		msg.sender.transfer(revenue);                	// sends ether to the seller: it's important to do this last to prevent recursion attacks
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x238f29b3e5f5d199d37444e7118cc49f8e1bf58c.sol(474)

[33mWarning[0m for TODReceiver in contract 'METADOLLAR':
    |		require(this.balance <= revenue);
    |		_transfer(msg.sender, this, amount);
  > |		msg.sender.transfer(this.balance); 
    |	}
    |}
  at /home/jiaming/mavs_srcs/contract@0x238f29b3e5f5d199d37444e7118cc49f8e1bf58c.sol(487)

[33mWarning[0m for UnhandledException in contract 'METADOLLAR':
    |		_transfer(msg.sender, this, amount);
    |		uint256 revenue = amount * sellPrice;
  > |		msg.sender.transfer(revenue);         // sends ether to the seller: it's important to do this last to prevent recursion attacks
    |	}
    |	
  at /home/jiaming/mavs_srcs/contract@0x238f29b3e5f5d199d37444e7118cc49f8e1bf58c.sol(187)

[33mWarning[0m for UnhandledException in contract 'METADOLLAR':
    |		}
    |		if(moneyBack > 0) {
  > |			sender.transfer(moneyBack);
    |		}
    |	}
  at /home/jiaming/mavs_srcs/contract@0x238f29b3e5f5d199d37444e7118cc49f8e1bf58c.sol(284)

[33mWarning[0m for UnhandledException in contract 'METADOLLAR':
    |		require(contractbalance >= summeInWei);
    |		withdrawed(sender, summeInWei, "wei withdrawed");
  > |        sender.transfer(summeInWei);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x238f29b3e5f5d199d37444e7118cc49f8e1bf58c.sol(435)

[33mWarning[0m for UnhandledException in contract 'METADOLLAR':
    |		require(this.balance >= revenue);
    |		_transfer(msg.sender, this, amount);
  > |		msg.sender.transfer(revenue);                	// sends ether to the seller: it's important to do this last to prevent recursion attacks
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x238f29b3e5f5d199d37444e7118cc49f8e1bf58c.sol(474)

[33mWarning[0m for UnhandledException in contract 'METADOLLAR':
    |		require(this.balance <= revenue);
    |		_transfer(msg.sender, this, amount);
  > |		msg.sender.transfer(this.balance); 
    |	}
    |}
  at /home/jiaming/mavs_srcs/contract@0x238f29b3e5f5d199d37444e7118cc49f8e1bf58c.sol(487)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'METADOLLAR':
    |		require(contractbalance >= summeInWei);
    |		withdrawed(sender, summeInWei, "wei withdrawed");
  > |        sender.transfer(summeInWei);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x238f29b3e5f5d199d37444e7118cc49f8e1bf58c.sol(435)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |	/// @notice Constructor of the contract
    |	function STARTMETADOLLAR() {
  > |		preIcoIsRunning = true;
    |		minimalGoalReached = false;
    |		icoExitIsPossible = false;
  at /home/jiaming/mavs_srcs/contract@0x238f29b3e5f5d199d37444e7118cc49f8e1bf58c.sol(120)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |	function STARTMETADOLLAR() {
    |		preIcoIsRunning = true;
  > |		minimalGoalReached = false;
    |		icoExitIsPossible = false;
    |		icoIsClosed = false;
  at /home/jiaming/mavs_srcs/contract@0x238f29b3e5f5d199d37444e7118cc49f8e1bf58c.sol(121)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		preIcoIsRunning = true;
    |		minimalGoalReached = false;
  > |		icoExitIsPossible = false;
    |		icoIsClosed = false;
    |		tokenBalanceOf[this] += _totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x238f29b3e5f5d199d37444e7118cc49f8e1bf58c.sol(122)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		minimalGoalReached = false;
    |		icoExitIsPossible = false;
  > |		icoIsClosed = false;
    |		tokenBalanceOf[this] += _totalSupply;
    |		allowed[this][owner] = _totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x238f29b3e5f5d199d37444e7118cc49f8e1bf58c.sol(123)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		icoExitIsPossible = false;
    |		icoIsClosed = false;
  > |		tokenBalanceOf[this] += _totalSupply;
    |		allowed[this][owner] = _totalSupply;
    |		allowed[this][supervisor] = _totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x238f29b3e5f5d199d37444e7118cc49f8e1bf58c.sol(124)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		icoIsClosed = false;
    |		tokenBalanceOf[this] += _totalSupply;
  > |		allowed[this][owner] = _totalSupply;
    |		allowed[this][supervisor] = _totalSupply;
    |		currentTokenPrice = 1 * 1000 ether;	// initial price of 1 metadollar
  at /home/jiaming/mavs_srcs/contract@0x238f29b3e5f5d199d37444e7118cc49f8e1bf58c.sol(125)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		tokenBalanceOf[this] += _totalSupply;
    |		allowed[this][owner] = _totalSupply;
  > |		allowed[this][supervisor] = _totalSupply;
    |		currentTokenPrice = 1 * 1000 ether;	// initial price of 1 metadollar
    |		preICOprice = 1 * 1000 ether; 			// price of 1 metadollar in weis for the preICO time 
  at /home/jiaming/mavs_srcs/contract@0x238f29b3e5f5d199d37444e7118cc49f8e1bf58c.sol(126)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		allowed[this][owner] = _totalSupply;
    |		allowed[this][supervisor] = _totalSupply;
  > |		currentTokenPrice = 1 * 1000 ether;	// initial price of 1 metadollar
    |		preICOprice = 1 * 1000 ether; 			// price of 1 metadollar in weis for the preICO time 
    |		ICOprice = 1 * 1000 ether;				// price of 1 metadollar in weis for the ICO time
  at /home/jiaming/mavs_srcs/contract@0x238f29b3e5f5d199d37444e7118cc49f8e1bf58c.sol(127)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		allowed[this][supervisor] = _totalSupply;
    |		currentTokenPrice = 1 * 1000 ether;	// initial price of 1 metadollar
  > |		preICOprice = 1 * 1000 ether; 			// price of 1 metadollar in weis for the preICO time 
    |		ICOprice = 1 * 1000 ether;				// price of 1 metadollar in weis for the ICO time
    |		sellPrice = 1 * 950 ether;
  at /home/jiaming/mavs_srcs/contract@0x238f29b3e5f5d199d37444e7118cc49f8e1bf58c.sol(128)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		currentTokenPrice = 1 * 1000 ether;	// initial price of 1 metadollar
    |		preICOprice = 1 * 1000 ether; 			// price of 1 metadollar in weis for the preICO time 
  > |		ICOprice = 1 * 1000 ether;				// price of 1 metadollar in weis for the ICO time
    |		sellPrice = 1 * 950 ether;
    |		updatePrices();
  at /home/jiaming/mavs_srcs/contract@0x238f29b3e5f5d199d37444e7118cc49f8e1bf58c.sol(129)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		preICOprice = 1 * 1000 ether; 			// price of 1 metadollar in weis for the preICO time 
    |		ICOprice = 1 * 1000 ether;				// price of 1 metadollar in weis for the ICO time
  > |		sellPrice = 1 * 950 ether;
    |		updatePrices();
    |	}
  at /home/jiaming/mavs_srcs/contract@0x238f29b3e5f5d199d37444e7118cc49f8e1bf58c.sol(130)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		orderToTransfer(msg.sender, _from, _to, _value, "Order to transfer metadollars from allowed account");
    |		_transfer(_from, _to, _value);
  > |		allowed[_from][msg.sender] -= _value;
    |		return true;
    |	}
  at /home/jiaming/mavs_srcs/contract@0x238f29b3e5f5d199d37444e7118cc49f8e1bf58c.sol(236)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |	function checkMinimalGoal() internal {
    |		if(tokenBalanceOf[this] <= _totalSupply - icoMin) {
  > |			minimalGoalReached = true;
    |			minGoalReached(icoMin, "Minimal goal of ICO is reached!");
    |		}
  at /home/jiaming/mavs_srcs/contract@0x238f29b3e5f5d199d37444e7118cc49f8e1bf58c.sol(253)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |	function checkPreIcoStatus() internal {
    |		if(tokenBalanceOf[this] <= _totalSupply - preIcoLimit) {
  > |			preIcoIsRunning = false;
    |			preIcoEnded(preIcoLimit, "Token amount for preICO sold!");
    |		}
  at /home/jiaming/mavs_srcs/contract@0x238f29b3e5f5d199d37444e7118cc49f8e1bf58c.sol(261)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		uint256 moneyBack = value - (amount * currentTokenPrice);
    |		require(tokenBalanceOf[this] >= amount);              		// checks if contract has enough to sell
  > |		amountOfInvestments = amountOfInvestments + (value - moneyBack);
    |		updatePrices();
    |		_transfer(this, sender, amount);
  at /home/jiaming/mavs_srcs/contract@0x238f29b3e5f5d199d37444e7118cc49f8e1bf58c.sol(277)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		require(!frozenAccount[_to]);
    |		if(tokenBalanceOf[_to] == 0){
  > |			countHolders += 1;
    |		}
    |		tokenBalanceOf[_from] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x238f29b3e5f5d199d37444e7118cc49f8e1bf58c.sol(298)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |			countHolders += 1;
    |		}
  > |		tokenBalanceOf[_from] -= _value;
    |		if(tokenBalanceOf[_from] == 0){
    |			countHolders -= 1;
  at /home/jiaming/mavs_srcs/contract@0x238f29b3e5f5d199d37444e7118cc49f8e1bf58c.sol(300)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		tokenBalanceOf[_from] -= _value;
    |		if(tokenBalanceOf[_from] == 0){
  > |			countHolders -= 1;
    |		}
    |		tokenBalanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x238f29b3e5f5d199d37444e7118cc49f8e1bf58c.sol(302)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |			countHolders -= 1;
    |		}
  > |		tokenBalanceOf[_to] += _value;
    |		allowed[this][owner] = tokenBalanceOf[this];
    |		allowed[this][supervisor] = tokenBalanceOf[this];
  at /home/jiaming/mavs_srcs/contract@0x238f29b3e5f5d199d37444e7118cc49f8e1bf58c.sol(304)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		}
    |		tokenBalanceOf[_to] += _value;
  > |		allowed[this][owner] = tokenBalanceOf[this];
    |		allowed[this][supervisor] = tokenBalanceOf[this];
    |		Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x238f29b3e5f5d199d37444e7118cc49f8e1bf58c.sol(305)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		tokenBalanceOf[_to] += _value;
    |		allowed[this][owner] = tokenBalanceOf[this];
  > |		allowed[this][supervisor] = tokenBalanceOf[this];
    |		Transfer(_from, _to, _value);
    |	}
  at /home/jiaming/mavs_srcs/contract@0x238f29b3e5f5d199d37444e7118cc49f8e1bf58c.sol(306)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		}
    |		if(preIcoIsRunning) {
  > |			currentTokenPrice = preICOprice;
    |		}else{
    |			currentTokenPrice = ICOprice;
  at /home/jiaming/mavs_srcs/contract@0x238f29b3e5f5d199d37444e7118cc49f8e1bf58c.sol(317)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |			currentTokenPrice = preICOprice;
    |		}else{
  > |			currentTokenPrice = ICOprice;
    |		}
    |		
  at /home/jiaming/mavs_srcs/contract@0x238f29b3e5f5d199d37444e7118cc49f8e1bf58c.sol(319)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		assert(_spender != address(0));
    |		require(_value >= 0);
  > |		allowed[msg.sender][_spender] = _value;
    |		return true;
    |	}
  at /home/jiaming/mavs_srcs/contract@0x238f29b3e5f5d199d37444e7118cc49f8e1bf58c.sol(246)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |	function checkPreIcoStatus() internal {
    |		if(tokenBalanceOf[this] <= _totalSupply - preIcoLimit) {
  > |			preIcoIsRunning = false;
    |			preIcoEnded(preIcoLimit, "Token amount for preICO sold!");
    |		}
  at /home/jiaming/mavs_srcs/contract@0x238f29b3e5f5d199d37444e7118cc49f8e1bf58c.sol(261)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		require(priceForPreIcoInWei > 0);
    |		require(preICOprice != priceForPreIcoInWei);
  > |		preICOprice = priceForPreIcoInWei;
    |		updatePrices();
    |	}
  at /home/jiaming/mavs_srcs/contract@0x238f29b3e5f5d199d37444e7118cc49f8e1bf58c.sol(332)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		require(priceForIcoInWei > 0);
    |		require(ICOprice != priceForIcoInWei);
  > |		ICOprice = priceForIcoInWei;
    |		updatePrices();
    |	}
  at /home/jiaming/mavs_srcs/contract@0x238f29b3e5f5d199d37444e7118cc49f8e1bf58c.sol(342)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		require(priceForPreIcoInWei > 0);
    |		require(priceForIcoInWei > 0);
  > |		preICOprice = priceForPreIcoInWei;
    |		ICOprice = priceForIcoInWei;
    |		updatePrices();
  at /home/jiaming/mavs_srcs/contract@0x238f29b3e5f5d199d37444e7118cc49f8e1bf58c.sol(354)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		require(priceForIcoInWei > 0);
    |		preICOprice = priceForPreIcoInWei;
  > |		ICOprice = priceForIcoInWei;
    |		updatePrices();
    |	}
  at /home/jiaming/mavs_srcs/contract@0x238f29b3e5f5d199d37444e7118cc49f8e1bf58c.sol(355)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |	function setSellPrice(uint256 priceInWei) isOwner {
    |		require(priceInWei >= 0);
  > |		sellPrice = priceInWei;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x238f29b3e5f5d199d37444e7118cc49f8e1bf58c.sol(365)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		require(account != owner);
    |		require(account != supervisor);
  > |		frozenAccount[account] = freeze;
    |		if(freeze) {
    |			FrozenFunds(msg.sender, account, "Account set frozen!");
  at /home/jiaming/mavs_srcs/contract@0x238f29b3e5f5d199d37444e7118cc49f8e1bf58c.sol(374)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		require(_totalSupply + amount > _totalSupply);
    |		require(tokenBalanceOf[this] + amount > tokenBalanceOf[this]);
  > |		_totalSupply += amount;
    |		tokenBalanceOf[this] += amount;
    |		allowed[this][owner] = tokenBalanceOf[this];
  at /home/jiaming/mavs_srcs/contract@0x238f29b3e5f5d199d37444e7118cc49f8e1bf58c.sol(389)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		require(tokenBalanceOf[this] + amount > tokenBalanceOf[this]);
    |		_totalSupply += amount;
  > |		tokenBalanceOf[this] += amount;
    |		allowed[this][owner] = tokenBalanceOf[this];
    |		allowed[this][supervisor] = tokenBalanceOf[this];
  at /home/jiaming/mavs_srcs/contract@0x238f29b3e5f5d199d37444e7118cc49f8e1bf58c.sol(390)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		_totalSupply += amount;
    |		tokenBalanceOf[this] += amount;
  > |		allowed[this][owner] = tokenBalanceOf[this];
    |		allowed[this][supervisor] = tokenBalanceOf[this];
    |		tokenCreated(msg.sender, amount, "Additional metadollars created!");
  at /home/jiaming/mavs_srcs/contract@0x238f29b3e5f5d199d37444e7118cc49f8e1bf58c.sol(391)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		tokenBalanceOf[this] += amount;
    |		allowed[this][owner] = tokenBalanceOf[this];
  > |		allowed[this][supervisor] = tokenBalanceOf[this];
    |		tokenCreated(msg.sender, amount, "Additional metadollars created!");
    |	}
  at /home/jiaming/mavs_srcs/contract@0x238f29b3e5f5d199d37444e7118cc49f8e1bf58c.sol(392)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		require(tokenBalanceOf[this] - amount >= 0);
    |		require(_totalSupply - amount >= 0);
  > |		tokenBalanceOf[this] -= amount;
    |		_totalSupply -= amount;
    |		allowed[this][owner] = tokenBalanceOf[this];
  at /home/jiaming/mavs_srcs/contract@0x238f29b3e5f5d199d37444e7118cc49f8e1bf58c.sol(404)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		require(_totalSupply - amount >= 0);
    |		tokenBalanceOf[this] -= amount;
  > |		_totalSupply -= amount;
    |		allowed[this][owner] = tokenBalanceOf[this];
    |		allowed[this][supervisor] = tokenBalanceOf[this];
  at /home/jiaming/mavs_srcs/contract@0x238f29b3e5f5d199d37444e7118cc49f8e1bf58c.sol(405)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		tokenBalanceOf[this] -= amount;
    |		_totalSupply -= amount;
  > |		allowed[this][owner] = tokenBalanceOf[this];
    |		allowed[this][supervisor] = tokenBalanceOf[this];
    |		tokenDestroyed(msg.sender, amount, "An amount of metadollars destroyed!");
  at /home/jiaming/mavs_srcs/contract@0x238f29b3e5f5d199d37444e7118cc49f8e1bf58c.sol(406)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		_totalSupply -= amount;
    |		allowed[this][owner] = tokenBalanceOf[this];
  > |		allowed[this][supervisor] = tokenBalanceOf[this];
    |		tokenDestroyed(msg.sender, amount, "An amount of metadollars destroyed!");
    |	}
  at /home/jiaming/mavs_srcs/contract@0x238f29b3e5f5d199d37444e7118cc49f8e1bf58c.sol(407)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		assert(newOwner != address(0));
    |		address oldOwner = owner;
  > |		owner = newOwner;
    |		ownerChanged(msg.sender, oldOwner, newOwner);
    |		allowed[this][oldOwner] = 0;
  at /home/jiaming/mavs_srcs/contract@0x238f29b3e5f5d199d37444e7118cc49f8e1bf58c.sol(416)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		owner = newOwner;
    |		ownerChanged(msg.sender, oldOwner, newOwner);
  > |		allowed[this][oldOwner] = 0;
    |		allowed[this][newOwner] = tokenBalanceOf[this];
    |	}
  at /home/jiaming/mavs_srcs/contract@0x238f29b3e5f5d199d37444e7118cc49f8e1bf58c.sol(418)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		ownerChanged(msg.sender, oldOwner, newOwner);
    |		allowed[this][oldOwner] = 0;
  > |		allowed[this][newOwner] = tokenBalanceOf[this];
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x238f29b3e5f5d199d37444e7118cc49f8e1bf58c.sol(419)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |	function allowIcoExit(bool exitAllowed) isOwner {
    |		require(icoExitIsPossible != exitAllowed);
  > |		icoExitIsPossible = exitAllowed;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x238f29b3e5f5d199d37444e7118cc49f8e1bf58c.sol(449)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |	function stopThisIco(bool icoIsStopped) isOwner {
    |		require(icoIsClosed != icoIsStopped);
  > |		icoIsClosed = icoIsStopped;
    |		if(icoIsStopped) {
    |			icoStatusUpdated(msg.sender, "Coin offering was stopped!");
  at /home/jiaming/mavs_srcs/contract@0x238f29b3e5f5d199d37444e7118cc49f8e1bf58c.sol(456)


