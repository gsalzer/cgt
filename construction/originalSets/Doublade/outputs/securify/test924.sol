Processing contract: /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol:METADOLLAR
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol:owned
[33mWarning[0m for DAOConstantGas in contract 'METADOLLAR':
    |		uint256 revenue = amount * sellPrice;
    |		require(this.balance >= revenue);
  > |		msg.sender.transfer(revenue);                		// sends ether to the seller: it's important to do this last to prevent recursion attacks
    |	}
    |	
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(197)

[33mWarning[0m for DAOConstantGas in contract 'METADOLLAR':
    |		}
    |		if(moneyBack > 0) {
  > |			sender.transfer(moneyBack);
    |		}
    |	}
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(294)

[33mWarning[0m for DAOConstantGas in contract 'METADOLLAR':
    |		require(contractbalance >= summeInWei);
    |		withdrawed(sender, summeInWei, "wei withdrawed");
  > |        sender.transfer(summeInWei);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(469)

[33mWarning[0m for DAOConstantGas in contract 'METADOLLAR':
    |		require(this.balance >= revenue);
    |		_transfer(msg.sender, this, amount);
  > |		msg.sender.transfer(revenue);                	// sends ether to the seller: it's important to do this last to prevent recursion attacks
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(508)

[33mWarning[0m for DAOConstantGas in contract 'METADOLLAR':
    |		require(this.balance <= revenue);
    |		_transfer(msg.sender, this, amount);
  > |		msg.sender.transfer(this.balance); 
    |	}
    |}
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(521)

[33mWarning[0m for LockedEther in contract 'METADOLLAR':
    | }
    |
  > |contract METADOLLAR is ERC20Interface, owned{
    |
    |	string public constant name = "METADOLLAR";
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(54)

[31mViolation[0m for MissingInputValidation in contract 'METADOLLAR':
    |
    |	//Balances for each account
  > |	mapping (address => uint256) public tokenBalanceOf;
    |
    |	// Owner of account approves the transfer of an amount to another account
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(81)

[31mViolation[0m for MissingInputValidation in contract 'METADOLLAR':
    |
    |	/// @notice What is the balance of a particular account?
  > |	function balanceOf(address _owner) constant returns (uint256 balance) {
    |		return tokenBalanceOf[_owner];
    |	}
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(156)

[31mViolation[0m for MissingInputValidation in contract 'METADOLLAR':
    |
    |	/// @notice Shows how much tokens _spender can spend from _owner address
  > |	function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |		return allowed[_owner][_spender];
    |	}
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(161)

[31mViolation[0m for MissingInputValidation in contract 'METADOLLAR':
    |	/// @notice Shows if account is frozen
    |	/// @param account - Accountaddress to check
  > |	function checkFrozenAccounts(address account) constant returns (bool accountIsFrozen) {
    |		accountIsFrozen = frozenAccount[account];
    |	}
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(177)

[31mViolation[0m for MissingInputValidation in contract 'METADOLLAR':
    |	/// @param account - address to be frozen
    |	/// @param freeze - select is the account frozen or not
  > |	function freezeAccount(address account, bool freeze) isOwner {
    |		require(account != owner);
    |		require(account != supervisor);
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(405)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    | 
    | contract owned{
  > |	address public owner;
    |	address constant supervisor  = 0x2d6808bC989CbEB46cc6dd75a6C90deA50e3e504;
    |	
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(35)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |contract METADOLLAR is ERC20Interface, owned{
    |
  > |	string public constant name = "METADOLLAR";
    |	string public constant symbol = "DOL";
    |	uint public constant decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(56)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |
    |	string public constant name = "METADOLLAR";
  > |	string public constant symbol = "DOL";
    |	uint public constant decimals = 18;
    |	uint256 public _totalSupply = 1000000000000000000000000000000;
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(57)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	string public constant name = "METADOLLAR";
    |	string public constant symbol = "DOL";
  > |	uint public constant decimals = 18;
    |	uint256 public _totalSupply = 1000000000000000000000000000000;
    |	uint256 public icoMin = 1000000000000000000000000000000;					// = 300000; amount is in Tokens, 1.800.000
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(58)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	string public constant symbol = "DOL";
    |	uint public constant decimals = 18;
  > |	uint256 public _totalSupply = 1000000000000000000000000000000;
    |	uint256 public icoMin = 1000000000000000000000000000000;					// = 300000; amount is in Tokens, 1.800.000
    |	uint256 public preIcoLimit = 1000000000000000000;			// = 600000; amount is in tokens, 3.600.000
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(59)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	uint public constant decimals = 18;
    |	uint256 public _totalSupply = 1000000000000000000000000000000;
  > |	uint256 public icoMin = 1000000000000000000000000000000;					// = 300000; amount is in Tokens, 1.800.000
    |	uint256 public preIcoLimit = 1000000000000000000;			// = 600000; amount is in tokens, 3.600.000
    |	uint256 public countHolders = 0;				// count how many unique holders have tokens
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(60)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	uint256 public _totalSupply = 1000000000000000000000000000000;
    |	uint256 public icoMin = 1000000000000000000000000000000;					// = 300000; amount is in Tokens, 1.800.000
  > |	uint256 public preIcoLimit = 1000000000000000000;			// = 600000; amount is in tokens, 3.600.000
    |	uint256 public countHolders = 0;				// count how many unique holders have tokens
    |	uint256 public amountOfInvestments = 0;	// amount of collected wei
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(61)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	uint256 public icoMin = 1000000000000000000000000000000;					// = 300000; amount is in Tokens, 1.800.000
    |	uint256 public preIcoLimit = 1000000000000000000;			// = 600000; amount is in tokens, 3.600.000
  > |	uint256 public countHolders = 0;				// count how many unique holders have tokens
    |	uint256 public amountOfInvestments = 0;	// amount of collected wei
    |	
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(62)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	uint256 public preIcoLimit = 1000000000000000000;			// = 600000; amount is in tokens, 3.600.000
    |	uint256 public countHolders = 0;				// count how many unique holders have tokens
  > |	uint256 public amountOfInvestments = 0;	// amount of collected wei
    |	
    |	uint256 preICOprice;									// price of 1 token in weis for the preICO time
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(63)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	uint256 preICOprice;									// price of 1 token in weis for the preICO time
    |	uint256 ICOprice;										// price of 1 token in weis for the ICO time
  > |	uint256 public currentTokenPrice;				// current token price in weis
    |	uint256 public sellPrice;      // buyback price of one token in weis
    |	uint256 public mtdPreAmount;
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(67)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	uint256 ICOprice;										// price of 1 token in weis for the ICO time
    |	uint256 public currentTokenPrice;				// current token price in weis
  > |	uint256 public sellPrice;      // buyback price of one token in weis
    |	uint256 public mtdPreAmount;
    |	uint256 public ethPreAmount;
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(68)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	uint256 public currentTokenPrice;				// current token price in weis
    |	uint256 public sellPrice;      // buyback price of one token in weis
  > |	uint256 public mtdPreAmount;
    |	uint256 public ethPreAmount;
    |	uint256 public mtdAmount;
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(69)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	uint256 public sellPrice;      // buyback price of one token in weis
    |	uint256 public mtdPreAmount;
  > |	uint256 public ethPreAmount;
    |	uint256 public mtdAmount;
    |	uint256 public ethAmount;
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(70)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	uint256 public mtdPreAmount;
    |	uint256 public ethPreAmount;
  > |	uint256 public mtdAmount;
    |	uint256 public ethAmount;
    |	
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(71)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	uint256 public ethPreAmount;
    |	uint256 public mtdAmount;
  > |	uint256 public ethAmount;
    |	
    |	bool public preIcoIsRunning;
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(72)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	uint256 public ethAmount;
    |	
  > |	bool public preIcoIsRunning;
    |	bool public minimalGoalReached;
    |	bool public icoIsClosed;
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(74)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	
    |	bool public preIcoIsRunning;
  > |	bool public minimalGoalReached;
    |	bool public icoIsClosed;
    |	bool icoExitIsPossible;
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(75)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	bool public preIcoIsRunning;
    |	bool public minimalGoalReached;
  > |	bool public icoIsClosed;
    |	bool icoExitIsPossible;
    |	
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(76)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |
    |	/// @notice Constructor of the contract
  > |	function STARTMETADOLLAR() {
    |	    sellPrice = 900000000000000;
    |	    mtdAmount = 1000000000000000000;
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(123)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |
    |	/// @notice Returns a whole amount of tokens
  > |	function totalSupply() constant returns (uint256 totalAmount) {
    |		totalAmount = _totalSupply;
    |	}
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(151)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	/// @notice Calculates amount of weis needed to buy more than one token
    |	/// @param howManyTokenToBuy - Amount of tokens to calculate
  > |	function calculateTheEndPrice(uint256 howManyTokenToBuy) constant returns (uint256 summarizedPriceInWeis) {
    |		if(howManyTokenToBuy > 0) {
    |			summarizedPriceInWeis = howManyTokenToBuy * currentTokenPrice;
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(167)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |
    |	/// @notice Buy tokens from contract by sending ether
  > |	function buy() payable public {
    |		require(!frozenAccount[msg.sender]);
    |		require(msg.value > 0);
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(182)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	
    |	/// @notice Allow user to sell maximum possible amount of tokens, depend on ether amount on contract
  > |	function sellMaximumPossibleAmountOfTokens() {
    |		require(!frozenAccount[msg.sender]);
    |		require(tokenBalanceOf[msg.sender] > 0);
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(201)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	/// @notice Allow _spender to withdraw from your account, multiple times, up to the _value amount.
    |	/// @notice If this function is called again it overwrites the current allowance with _value.
  > |	function approve(address _spender, uint256 _value) returns (bool success) {
    |		require(!frozenAccount[msg.sender]);
    |		assert(_spender != address(0));
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(252)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |
    |	/// @notice Check if minimal goal of ICO is reached
  > |	function checkMinimalGoal() internal {
    |		if(tokenBalanceOf[this] <= _totalSupply - icoMin) {
    |			minimalGoalReached = true;
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(261)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |
    |	/// @notice Check if preICO is ended
  > |	function checkPreIcoStatus() internal {
    |		if(tokenBalanceOf[this] <= _totalSupply - preIcoLimit) {
    |			preIcoIsRunning = false;
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(269)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |
    |	/// @notice Processing each buying
  > |	function buyToken() internal {
    |		uint256 value = msg.value;
    |		address sender = msg.sender;
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(277)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |
    |	/// @notice Internal transfer, can only be called by this contract
  > |	function _transfer(address _from, address _to, uint256 _value) internal {
    |		assert(_from != address(0));
    |		assert(_to != address(0));
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(299)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |
    |	/// @notice Set current ICO prices in wei for one token
  > |	function updatePrices() internal {
    |		uint256 oldPrice = currentTokenPrice;
    |		if(preIcoIsRunning) {
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(321)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	/// @notice Set the current sell price in wei for one token
    |	/// @param priceInWei - is the amount in wei for one token
  > |	function setSellPrice(uint256 priceInWei) isOwner {
    |		require(priceInWei >= 0);
    |		sellPrice = priceInWei;
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(397)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	/// @notice Create an amount of token
    |	/// @param amount - token to create
  > |	function mintToken(uint256 amount) isOwner {
    |		require(amount > 0);
    |		require(tokenBalanceOf[this] <= icoMin);	// owner can create token only if the initial amount is strongly not enough to supply and demand ICO
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(418)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	/// @notice Destroy an amount of token
    |	/// @param amount - token to destroy
  > |	function destroyToken(uint256 amount) isOwner {
    |		require(amount > 0);
    |		require(tokenBalanceOf[this] >= amount);
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(432)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	/// @notice Transfer the ownership to another account
    |	/// @param newOwner - address who get the ownership
  > |	function transferOwnership(address newOwner) isOwner {
    |		assert(newOwner != address(0));
    |		address oldOwner = owner;
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(447)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |
    |	/// @notice Transfer ether from smartcontract to owner
  > |	function collect() isOwner {
    |        require(this.balance > 0);
    |		withdraw(this.balance);
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(457)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |
    |	/// @notice Deposit an amount of ether
  > |	function deposit() payable isOwner {
    |		require(msg.value > 0);
    |		require(msg.sender.balance >= msg.value);
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(473)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	/// @notice Allow user to exit ICO
    |	/// @param exitAllowed - status if the exit is allowed
  > |	function allowIcoExit(bool exitAllowed) isOwner {
    |		require(icoExitIsPossible != exitAllowed);
    |		icoExitIsPossible = exitAllowed;
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(481)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	/// @notice Stop running ICO
    |	/// @param icoIsStopped - status if this ICO is stopped
  > |	function stopThisIco(bool icoIsStopped) isOwner {
    |		require(icoIsClosed != icoIsStopped);
    |		icoIsClosed = icoIsStopped;
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(488)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |
    |	/// @notice Sell all tokens for half of a price and exit this ICO
  > |	function exitThisIcoForHalfOfTokenPrice() {
    |		require(icoExitIsPossible);
    |		require(!frozenAccount[msg.sender]);
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(499)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |
    |	/// @notice Sell all of tokens for all ether of this smartcontract
  > |	function getAllMyTokensForAllEtherOnContract() {
    |		require(icoExitIsPossible);
    |		require(!frozenAccount[msg.sender]);
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(512)

[31mViolation[0m for TODAmount in contract 'METADOLLAR':
    |		require(contractbalance >= summeInWei);
    |		withdrawed(sender, summeInWei, "wei withdrawed");
  > |        sender.transfer(summeInWei);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(469)

[31mViolation[0m for TODAmount in contract 'METADOLLAR':
    |		require(this.balance <= revenue);
    |		_transfer(msg.sender, this, amount);
  > |		msg.sender.transfer(this.balance); 
    |	}
    |}
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(521)

[33mWarning[0m for TODReceiver in contract 'METADOLLAR':
    |		uint256 revenue = amount * sellPrice;
    |		require(this.balance >= revenue);
  > |		msg.sender.transfer(revenue);                		// sends ether to the seller: it's important to do this last to prevent recursion attacks
    |	}
    |	
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(197)

[33mWarning[0m for TODReceiver in contract 'METADOLLAR':
    |		require(contractbalance >= summeInWei);
    |		withdrawed(sender, summeInWei, "wei withdrawed");
  > |        sender.transfer(summeInWei);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(469)

[33mWarning[0m for TODReceiver in contract 'METADOLLAR':
    |		require(this.balance >= revenue);
    |		_transfer(msg.sender, this, amount);
  > |		msg.sender.transfer(revenue);                	// sends ether to the seller: it's important to do this last to prevent recursion attacks
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(508)

[33mWarning[0m for TODReceiver in contract 'METADOLLAR':
    |		require(this.balance <= revenue);
    |		_transfer(msg.sender, this, amount);
  > |		msg.sender.transfer(this.balance); 
    |	}
    |}
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(521)

[33mWarning[0m for UnhandledException in contract 'METADOLLAR':
    |		uint256 revenue = amount * sellPrice;
    |		require(this.balance >= revenue);
  > |		msg.sender.transfer(revenue);                		// sends ether to the seller: it's important to do this last to prevent recursion attacks
    |	}
    |	
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(197)

[33mWarning[0m for UnhandledException in contract 'METADOLLAR':
    |		}
    |		if(moneyBack > 0) {
  > |			sender.transfer(moneyBack);
    |		}
    |	}
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(294)

[33mWarning[0m for UnhandledException in contract 'METADOLLAR':
    |		require(contractbalance >= summeInWei);
    |		withdrawed(sender, summeInWei, "wei withdrawed");
  > |        sender.transfer(summeInWei);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(469)

[33mWarning[0m for UnhandledException in contract 'METADOLLAR':
    |		require(this.balance >= revenue);
    |		_transfer(msg.sender, this, amount);
  > |		msg.sender.transfer(revenue);                	// sends ether to the seller: it's important to do this last to prevent recursion attacks
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(508)

[33mWarning[0m for UnhandledException in contract 'METADOLLAR':
    |		require(this.balance <= revenue);
    |		_transfer(msg.sender, this, amount);
  > |		msg.sender.transfer(this.balance); 
    |	}
    |}
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(521)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'METADOLLAR':
    |		require(contractbalance >= summeInWei);
    |		withdrawed(sender, summeInWei, "wei withdrawed");
  > |        sender.transfer(summeInWei);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(469)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |	/// @notice Constructor of the contract
    |	function STARTMETADOLLAR() {
  > |	    sellPrice = 900000000000000;
    |	    mtdAmount = 1000000000000000000;
    |	    ethAmount = 1000000000000000;
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(124)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |	function STARTMETADOLLAR() {
    |	    sellPrice = 900000000000000;
  > |	    mtdAmount = 1000000000000000000;
    |	    ethAmount = 1000000000000000;
    |	    mtdPreAmount = 1;
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(125)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |	    sellPrice = 900000000000000;
    |	    mtdAmount = 1000000000000000000;
  > |	    ethAmount = 1000000000000000;
    |	    mtdPreAmount = 1;
    |	    ethPreAmount = 1;
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(126)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |	    mtdAmount = 1000000000000000000;
    |	    ethAmount = 1000000000000000;
  > |	    mtdPreAmount = 1;
    |	    ethPreAmount = 1;
    |		preIcoIsRunning = true;
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(127)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |	    ethAmount = 1000000000000000;
    |	    mtdPreAmount = 1;
  > |	    ethPreAmount = 1;
    |		preIcoIsRunning = true;
    |		minimalGoalReached = false;
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(128)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |	    mtdPreAmount = 1;
    |	    ethPreAmount = 1;
  > |		preIcoIsRunning = true;
    |		minimalGoalReached = false;
    |		icoExitIsPossible = false;
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(129)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |	    ethPreAmount = 1;
    |		preIcoIsRunning = true;
  > |		minimalGoalReached = false;
    |		icoExitIsPossible = false;
    |		icoIsClosed = false;
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(130)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		preIcoIsRunning = true;
    |		minimalGoalReached = false;
  > |		icoExitIsPossible = false;
    |		icoIsClosed = false;
    |		tokenBalanceOf[this] += _totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(131)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		minimalGoalReached = false;
    |		icoExitIsPossible = false;
  > |		icoIsClosed = false;
    |		tokenBalanceOf[this] += _totalSupply;
    |		allowed[this][owner] = _totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(132)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		icoExitIsPossible = false;
    |		icoIsClosed = false;
  > |		tokenBalanceOf[this] += _totalSupply;
    |		allowed[this][owner] = _totalSupply;
    |		allowed[this][supervisor] = _totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(133)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		icoIsClosed = false;
    |		tokenBalanceOf[this] += _totalSupply;
  > |		allowed[this][owner] = _totalSupply;
    |		allowed[this][supervisor] = _totalSupply;
    |		currentTokenPrice = mtdAmount * ethAmount;	// initial price of 1 Token
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(134)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		tokenBalanceOf[this] += _totalSupply;
    |		allowed[this][owner] = _totalSupply;
  > |		allowed[this][supervisor] = _totalSupply;
    |		currentTokenPrice = mtdAmount * ethAmount;	// initial price of 1 Token
    |		preICOprice = mtdPreAmount * ethPreAmount; 			// price of 1 token in weis for the preICO time
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(135)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		allowed[this][owner] = _totalSupply;
    |		allowed[this][supervisor] = _totalSupply;
  > |		currentTokenPrice = mtdAmount * ethAmount;	// initial price of 1 Token
    |		preICOprice = mtdPreAmount * ethPreAmount; 			// price of 1 token in weis for the preICO time
    |		ICOprice = mtdAmount * ethAmount;				// price of 1 token in weis for the ICO time
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(136)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		allowed[this][supervisor] = _totalSupply;
    |		currentTokenPrice = mtdAmount * ethAmount;	// initial price of 1 Token
  > |		preICOprice = mtdPreAmount * ethPreAmount; 			// price of 1 token in weis for the preICO time
    |		ICOprice = mtdAmount * ethAmount;				// price of 1 token in weis for the ICO time
    |		sellPrice = 0;
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(137)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		currentTokenPrice = mtdAmount * ethAmount;	// initial price of 1 Token
    |		preICOprice = mtdPreAmount * ethPreAmount; 			// price of 1 token in weis for the preICO time
  > |		ICOprice = mtdAmount * ethAmount;				// price of 1 token in weis for the ICO time
    |		sellPrice = 0;
    |		updatePrices();
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(138)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		preICOprice = mtdPreAmount * ethPreAmount; 			// price of 1 token in weis for the preICO time
    |		ICOprice = mtdAmount * ethAmount;				// price of 1 token in weis for the ICO time
  > |		sellPrice = 0;
    |		updatePrices();
    |	}
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(139)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		orderToTransfer(msg.sender, _from, _to, _value, "Order to transfer tokens from allowed account");
    |		_transfer(_from, _to, _value);
  > |		allowed[_from][msg.sender] -= _value;
    |		return true;
    |	}
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(246)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |	function checkMinimalGoal() internal {
    |		if(tokenBalanceOf[this] <= _totalSupply - icoMin) {
  > |			minimalGoalReached = true;
    |			minGoalReached(icoMin, "Minimal goal of ICO is reached!");
    |		}
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(263)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |	function checkPreIcoStatus() internal {
    |		if(tokenBalanceOf[this] <= _totalSupply - preIcoLimit) {
  > |			preIcoIsRunning = false;
    |			preIcoEnded(preIcoLimit, "Token amount for preICO sold!");
    |		}
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(271)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		uint256 moneyBack = value - (amount * currentTokenPrice);
    |		require(tokenBalanceOf[this] >= amount);              		// checks if contract has enough to sell
  > |		amountOfInvestments = amountOfInvestments + (value - moneyBack);
    |		updatePrices();
    |		_transfer(this, sender, amount);
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(287)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		require(!frozenAccount[_to]);
    |		if(tokenBalanceOf[_to] == 0){
  > |			countHolders += 1;
    |		}
    |		tokenBalanceOf[_from] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(308)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |			countHolders += 1;
    |		}
  > |		tokenBalanceOf[_from] -= _value;
    |		if(tokenBalanceOf[_from] == 0){
    |			countHolders -= 1;
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(310)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		tokenBalanceOf[_from] -= _value;
    |		if(tokenBalanceOf[_from] == 0){
  > |			countHolders -= 1;
    |		}
    |		tokenBalanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(312)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |			countHolders -= 1;
    |		}
  > |		tokenBalanceOf[_to] += _value;
    |		allowed[this][owner] = tokenBalanceOf[this];
    |		allowed[this][supervisor] = tokenBalanceOf[this];
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(314)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		}
    |		tokenBalanceOf[_to] += _value;
  > |		allowed[this][owner] = tokenBalanceOf[this];
    |		allowed[this][supervisor] = tokenBalanceOf[this];
    |		Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(315)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		tokenBalanceOf[_to] += _value;
    |		allowed[this][owner] = tokenBalanceOf[this];
  > |		allowed[this][supervisor] = tokenBalanceOf[this];
    |		Transfer(_from, _to, _value);
    |	}
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(316)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		}
    |		if(preIcoIsRunning) {
  > |			currentTokenPrice = preICOprice;
    |		}else{
    |			currentTokenPrice = ICOprice;
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(327)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |			currentTokenPrice = preICOprice;
    |		}else{
  > |			currentTokenPrice = ICOprice;
    |		}
    |		
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(329)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		assert(_spender != address(0));
    |		require(_value >= 0);
  > |		allowed[msg.sender][_spender] = _value;
    |		return true;
    |	}
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(256)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |	function checkPreIcoStatus() internal {
    |		if(tokenBalanceOf[this] <= _totalSupply - preIcoLimit) {
  > |			preIcoIsRunning = false;
    |			preIcoEnded(preIcoLimit, "Token amount for preICO sold!");
    |		}
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(271)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		require(priceForPreIcoInWei > 0);
    |		require(preICOprice != priceForPreIcoInWei);
  > |		preICOprice = priceForPreIcoInWei;
    |		updatePrices();
    |	}
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(342)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		require(priceForIcoInWei > 0);
    |		require(ICOprice != priceForIcoInWei);
  > |		ICOprice = priceForIcoInWei;
    |		updatePrices();
    |	}
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(351)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		require(priceForPreIcoInWei > 0);
    |		require(priceForIcoInWei > 0);
  > |		preICOprice = priceForPreIcoInWei;
    |		ICOprice = priceForIcoInWei;
    |		updatePrices();
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(361)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		require(priceForIcoInWei > 0);
    |		preICOprice = priceForPreIcoInWei;
  > |		ICOprice = priceForIcoInWei;
    |		updatePrices();
    |	}
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(362)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		require(mtdAmountInWei > 0);
    |		require(mtdAmount != mtdAmountInWei);
  > |		mtdAmount = mtdAmountInWei;
    |		updatePrices();
    |	}
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(371)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		require(ethAmountInWei > 0);
    |		require(ethAmount != ethAmountInWei);
  > |		ethAmount = ethAmountInWei;
    |		updatePrices();
    |	}
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(380)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		require(mtdAmountInWei > 0);
    |		require(ethAmountInWei > 0);
  > |		mtdAmount = mtdAmountInWei;
    |		ethAmount = ethAmountInWei;
    |		updatePrices();
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(390)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		require(ethAmountInWei > 0);
    |		mtdAmount = mtdAmountInWei;
  > |		ethAmount = ethAmountInWei;
    |		updatePrices();
    |	}
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(391)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |	function setSellPrice(uint256 priceInWei) isOwner {
    |		require(priceInWei >= 0);
  > |		sellPrice = priceInWei;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(399)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		require(account != owner);
    |		require(account != supervisor);
  > |		frozenAccount[account] = freeze;
    |		if(freeze) {
    |			FrozenFunds(msg.sender, account, "Account set frozen!");
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(408)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		require(_totalSupply + amount > _totalSupply);
    |		require(tokenBalanceOf[this] + amount > tokenBalanceOf[this]);
  > |		_totalSupply += amount;
    |		tokenBalanceOf[this] += amount;
    |		allowed[this][owner] = tokenBalanceOf[this];
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(423)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		require(tokenBalanceOf[this] + amount > tokenBalanceOf[this]);
    |		_totalSupply += amount;
  > |		tokenBalanceOf[this] += amount;
    |		allowed[this][owner] = tokenBalanceOf[this];
    |		allowed[this][supervisor] = tokenBalanceOf[this];
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(424)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		_totalSupply += amount;
    |		tokenBalanceOf[this] += amount;
  > |		allowed[this][owner] = tokenBalanceOf[this];
    |		allowed[this][supervisor] = tokenBalanceOf[this];
    |		tokenCreated(msg.sender, amount, "Additional tokens created!");
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(425)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		tokenBalanceOf[this] += amount;
    |		allowed[this][owner] = tokenBalanceOf[this];
  > |		allowed[this][supervisor] = tokenBalanceOf[this];
    |		tokenCreated(msg.sender, amount, "Additional tokens created!");
    |	}
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(426)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		require(tokenBalanceOf[this] - amount >= 0);
    |		require(_totalSupply - amount >= 0);
  > |		tokenBalanceOf[this] -= amount;
    |		_totalSupply -= amount;
    |		allowed[this][owner] = tokenBalanceOf[this];
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(438)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		require(_totalSupply - amount >= 0);
    |		tokenBalanceOf[this] -= amount;
  > |		_totalSupply -= amount;
    |		allowed[this][owner] = tokenBalanceOf[this];
    |		allowed[this][supervisor] = tokenBalanceOf[this];
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(439)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		tokenBalanceOf[this] -= amount;
    |		_totalSupply -= amount;
  > |		allowed[this][owner] = tokenBalanceOf[this];
    |		allowed[this][supervisor] = tokenBalanceOf[this];
    |		tokenDestroyed(msg.sender, amount, "An amount of tokens destroyed!");
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(440)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		_totalSupply -= amount;
    |		allowed[this][owner] = tokenBalanceOf[this];
  > |		allowed[this][supervisor] = tokenBalanceOf[this];
    |		tokenDestroyed(msg.sender, amount, "An amount of tokens destroyed!");
    |	}
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(441)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		assert(newOwner != address(0));
    |		address oldOwner = owner;
  > |		owner = newOwner;
    |		ownerChanged(msg.sender, oldOwner, newOwner);
    |		allowed[this][oldOwner] = 0;
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(450)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		owner = newOwner;
    |		ownerChanged(msg.sender, oldOwner, newOwner);
  > |		allowed[this][oldOwner] = 0;
    |		allowed[this][newOwner] = tokenBalanceOf[this];
    |	}
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(452)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		ownerChanged(msg.sender, oldOwner, newOwner);
    |		allowed[this][oldOwner] = 0;
  > |		allowed[this][newOwner] = tokenBalanceOf[this];
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(453)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |	function allowIcoExit(bool exitAllowed) isOwner {
    |		require(icoExitIsPossible != exitAllowed);
  > |		icoExitIsPossible = exitAllowed;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(483)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |	function stopThisIco(bool icoIsStopped) isOwner {
    |		require(icoIsClosed != icoIsStopped);
  > |		icoIsClosed = icoIsStopped;
    |		if(icoIsStopped) {
    |			icoStatusUpdated(msg.sender, "Coin offering was stopped!");
  at /home/jiaming/mavs_srcs/contract@0x3af803136acf303075bf7374e0e5f5b500b6162b.sol(490)


