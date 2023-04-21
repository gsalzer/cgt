Processing contract: /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol:METADOLLAR
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol:owned
[31mViolation[0m for DAOConstantGas in contract 'METADOLLAR':
    |		require(msg.value > 0);
    |		uint commission = msg.value/buyRate; // Buy Commission x1000 of wei tx
  > |        require(address(this).send(commission));
    |		buyToken();
    |	}
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(183)

[33mWarning[0m for DAOConstantGas in contract 'METADOLLAR':
    |		uint256 revenue = amount * sellPrice;
    |		uint commission = msg.value/sellRate; // Sell Commission x1000 of wei tx
  > |        require(address(this).send(commission));
    |		msg.sender.transfer(revenue);         // sends ether to the seller: it's important to do this last to prevent recursion attacks
    |	}
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(196)

[33mWarning[0m for DAOConstantGas in contract 'METADOLLAR':
    |		uint commission = msg.value/sellRate; // Sell Commission x1000 of wei tx
    |        require(address(this).send(commission));
  > |		msg.sender.transfer(revenue);         // sends ether to the seller: it's important to do this last to prevent recursion attacks
    |	}
    |	
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(197)

[33mWarning[0m for DAOConstantGas in contract 'METADOLLAR':
    |		}
    |		if(moneyBack > 0) {
  > |			sender.transfer(moneyBack);
    |		}
    |	}
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(294)

[33mWarning[0m for DAOConstantGas in contract 'METADOLLAR':
    |		require(contractbalance >= summeInWei);
    |		withdrawed(sender, summeInWei, "wei withdrawed");
  > |        sender.transfer(summeInWei);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(478)

[33mWarning[0m for LockedEther in contract 'METADOLLAR':
    | }
    |
  > |contract METADOLLAR is ERC20Interface, owned{
    |
    |	string public constant name = "METADOLLAR";
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(54)

[31mViolation[0m for MissingInputValidation in contract 'METADOLLAR':
    |
    |	//Balances for each account
  > |	mapping (address => uint256) public tokenBalanceOf;
    |
    |	// Owner of account approves the transfer of an amount to another account
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(80)

[31mViolation[0m for MissingInputValidation in contract 'METADOLLAR':
    |
    |	/// @notice What is the balance of a particular account?
  > |	function balanceOf(address _owner) constant returns (uint256 balance) {
    |		return tokenBalanceOf[_owner];
    |	}
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(153)

[31mViolation[0m for MissingInputValidation in contract 'METADOLLAR':
    |
    |	/// @notice Shows how much metadollars _spender can spend from _owner address
  > |	function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |		return allowed[_owner][_spender];
    |	}
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(158)

[31mViolation[0m for MissingInputValidation in contract 'METADOLLAR':
    |	/// @notice Shows if account is frozen
    |	/// @param account - Accountaddress to check
  > |	function checkFrozenAccounts(address account) constant returns (bool accountIsFrozen) {
    |		accountIsFrozen = frozenAccount[account];
    |	}
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(174)

[31mViolation[0m for MissingInputValidation in contract 'METADOLLAR':
    |	/// @param account - address to be frozen
    |	/// @param freeze - select is the account frozen or not
  > |	function freezeAccount(address account, bool freeze) isOwner {
    |		require(account != owner);
    |		require(account != supervisor);
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(414)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    | 
    | contract owned{
  > |	address public owner;
    |	address constant supervisor  = 0x2d6808bC989CbEB46cc6dd75a6C90deA50e3e504;
    |	
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(35)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |contract METADOLLAR is ERC20Interface, owned{
    |
  > |	string public constant name = "METADOLLAR";
    |	string public constant symbol = "DOL";
    |	uint public constant decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(56)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |
    |	string public constant name = "METADOLLAR";
  > |	string public constant symbol = "DOL";
    |	uint public constant decimals = 18;
    |	uint256 public _totalSupply = 1000000000000000000000000000000;  // Total Supply 1000,000,000,000
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(57)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	string public constant name = "METADOLLAR";
    |	string public constant symbol = "DOL";
  > |	uint public constant decimals = 18;
    |	uint256 public _totalSupply = 1000000000000000000000000000000;  // Total Supply 1000,000,000,000
    |	uint256 public icoMin = 1000000000000000000000000000000;				 //  Min ICO 1000,000,000,000	
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(58)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	string public constant symbol = "DOL";
    |	uint public constant decimals = 18;
  > |	uint256 public _totalSupply = 1000000000000000000000000000000;  // Total Supply 1000,000,000,000
    |	uint256 public icoMin = 1000000000000000000000000000000;				 //  Min ICO 1000,000,000,000	
    |	uint256 public preIcoLimit = 1000000000000000000;		 // Pre Ico Limit 1
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(59)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	uint public constant decimals = 18;
    |	uint256 public _totalSupply = 1000000000000000000000000000000;  // Total Supply 1000,000,000,000
  > |	uint256 public icoMin = 1000000000000000000000000000000;				 //  Min ICO 1000,000,000,000	
    |	uint256 public preIcoLimit = 1000000000000000000;		 // Pre Ico Limit 1
    |	uint256 public countHolders = 0;				// count how many unique holders have metadollars
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(60)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	uint256 public _totalSupply = 1000000000000000000000000000000;  // Total Supply 1000,000,000,000
    |	uint256 public icoMin = 1000000000000000000000000000000;				 //  Min ICO 1000,000,000,000	
  > |	uint256 public preIcoLimit = 1000000000000000000;		 // Pre Ico Limit 1
    |	uint256 public countHolders = 0;				// count how many unique holders have metadollars
    |	uint256 public amountOfInvestments = 0;	// amount of collected wei
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(61)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	uint256 public icoMin = 1000000000000000000000000000000;				 //  Min ICO 1000,000,000,000	
    |	uint256 public preIcoLimit = 1000000000000000000;		 // Pre Ico Limit 1
  > |	uint256 public countHolders = 0;				// count how many unique holders have metadollars
    |	uint256 public amountOfInvestments = 0;	// amount of collected wei
    |	
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(62)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	uint256 public preIcoLimit = 1000000000000000000;		 // Pre Ico Limit 1
    |	uint256 public countHolders = 0;				// count how many unique holders have metadollars
  > |	uint256 public amountOfInvestments = 0;	// amount of collected wei
    |	
    |	
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(63)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	
    |	
  > |	uint256 public preICOprice;			// price of 1 metadollar in weis for the preICO time
    |	uint256 public ICOprice;				// price of 1 metadollar in weis for the ICO time
    |	uint256 public currentTokenPrice;			// current metadollar price in weis
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(66)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	
    |	uint256 public preICOprice;			// price of 1 metadollar in weis for the preICO time
  > |	uint256 public ICOprice;				// price of 1 metadollar in weis for the ICO time
    |	uint256 public currentTokenPrice;			// current metadollar price in weis
    |	uint256 public sellPrice;					// buyback price of one metadollar in weis
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(67)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	uint256 public preICOprice;			// price of 1 metadollar in weis for the preICO time
    |	uint256 public ICOprice;				// price of 1 metadollar in weis for the ICO time
  > |	uint256 public currentTokenPrice;			// current metadollar price in weis
    |	uint256 public sellPrice;					// buyback price of one metadollar in weis
    |	uint256 public buyRate;								// Commission on buy
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(68)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	uint256 public ICOprice;				// price of 1 metadollar in weis for the ICO time
    |	uint256 public currentTokenPrice;			// current metadollar price in weis
  > |	uint256 public sellPrice;					// buyback price of one metadollar in weis
    |	uint256 public buyRate;								// Commission on buy
    |	uint256 public sellRate;								// Commission on sell
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(69)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	uint256 public currentTokenPrice;			// current metadollar price in weis
    |	uint256 public sellPrice;					// buyback price of one metadollar in weis
  > |	uint256 public buyRate;								// Commission on buy
    |	uint256 public sellRate;								// Commission on sell
    |	
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(70)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	uint256 public sellPrice;					// buyback price of one metadollar in weis
    |	uint256 public buyRate;								// Commission on buy
  > |	uint256 public sellRate;								// Commission on sell
    |	
    |	bool public preIcoIsRunning;
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(71)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	uint256 public sellRate;								// Commission on sell
    |	
  > |	bool public preIcoIsRunning;
    |	bool public minimalGoalReached;
    |	bool public icoIsClosed;
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(73)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	
    |	bool public preIcoIsRunning;
  > |	bool public minimalGoalReached;
    |	bool public icoIsClosed;
    |	bool icoExitIsPossible;
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(74)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	bool public preIcoIsRunning;
    |	bool public minimalGoalReached;
  > |	bool public icoIsClosed;
    |	bool icoExitIsPossible;
    |
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(75)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |
    |	/// @notice Constructor of the contract
  > |	function STARTMETADOLLAR() {
    |		preIcoIsRunning = true;
    |		minimalGoalReached = false;
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(122)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |
    |	/// @notice Returns a whole amount of metadollars
  > |	function totalSupply() constant returns (uint256 totalAmount) {
    |		totalAmount = _totalSupply;
    |	}
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(148)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	/// @notice Calculates amount of weis needed to buy more than one metadollar
    |	/// @param howManyTokenToBuy - Amount of metadollars to calculate
  > |	function calculateTheEndPrice(uint256 howManyTokenToBuy) constant returns (uint256 summarizedPriceInWeis) {
    |		if(howManyTokenToBuy > 0) {
    |			summarizedPriceInWeis = howManyTokenToBuy * currentTokenPrice;
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(164)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |
    |	/// @notice Buy metadollars from contract by sending ether
  > |	function buy() payable public {
    |		require(!frozenAccount[msg.sender]);
    |		require(msg.value > 0);
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(179)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	
    |	/// @notice Allow user to sell all amount of metadollars at once , depend on ether amount on contract
  > |	function sellAllDolAtOnce() {
    |		require(!frozenAccount[msg.sender]);
    |		require(tokenBalanceOf[msg.sender] > 0);
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(201)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	/// @notice Allow _spender to withdraw from your account, multiple times, up to the _value amount.
    |	/// @notice If this function is called again it overwrites the current allowance with _value.
  > |	function approve(address _spender, uint256 _value) returns (bool success) {
    |		require(!frozenAccount[msg.sender]);
    |		assert(_spender != address(0));
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(252)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |
    |	/// @notice Check if minimal goal of ICO is reached
  > |	function checkMinimalGoal() internal {
    |		if(tokenBalanceOf[this] <= _totalSupply - icoMin) {
    |			minimalGoalReached = true;
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(261)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |
    |	/// @notice Check if preICO is ended
  > |	function checkPreIcoStatus() internal {
    |		if(tokenBalanceOf[this] <= _totalSupply - preIcoLimit) {
    |			preIcoIsRunning = false;
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(269)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |
    |	/// @notice Processing each buying
  > |	function buyToken() internal {
    |		uint256 value = msg.value;
    |		address sender = msg.sender;
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(277)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |
    |	/// @notice Internal transfer, can only be called by this contract
  > |	function _transfer(address _from, address _to, uint256 _value) internal {
    |		assert(_from != address(0));
    |		assert(_to != address(0));
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(299)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |
    |	/// @notice Set current ICO prices in wei for one metadollar
  > |	function updatePrices() internal {
    |		uint256 oldPrice = currentTokenPrice;
    |		if(preIcoIsRunning) {
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(321)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	/// @notice Set the current sell price in wei for one metadollar
    |	/// @param priceInWei - is the amount in wei for one metadollar
  > |	function setSellPrice(uint256 priceInWei) isOwner {
    |		require(priceInWei >= 0);
    |		sellPrice = priceInWei;
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(372)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	/// @notice Create an amount of metadollars
    |	/// @param amount - metadollars to create
  > |	function mintToken(uint256 amount) isOwner {
    |		require(amount > 0);
    |		require(tokenBalanceOf[this] <= icoMin);	// owner can create metadollars only if the initial amount is strongly not enough to supply and demand ICO
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(427)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	/// @notice Destroy an amount of metadollars
    |	/// @param amount - token to destroy
  > |	function destroyToken(uint256 amount) isOwner {
    |		require(amount > 0);
    |		require(tokenBalanceOf[this] >= amount);
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(441)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	/// @notice Transfer the ownership to another account
    |	/// @param newOwner - address who get the ownership
  > |	function transferOwnership(address newOwner) isOwner {
    |		assert(newOwner != address(0));
    |		address oldOwner = owner;
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(456)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |
    |	/// @notice Transfer ether from smartcontract to owner
  > |	function collect() isOwner {
    |        require(this.balance > 0);
    |		withdraw(this.balance);
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(466)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |
    |	/// @notice Deposit an amount of ether
  > |	function deposit() payable isOwner {
    |		require(msg.value > 0);
    |		require(msg.sender.balance >= msg.value);
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(482)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	/// @notice Allow user to exit ICO
    |	/// @param exitAllowed - status if the exit is allowed
  > |	function allowIcoExit(bool exitAllowed) isOwner {
    |		require(icoExitIsPossible != exitAllowed);
    |		icoExitIsPossible = exitAllowed;
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(490)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	/// @notice Stop running ICO
    |	/// @param icoIsStopped - status if this ICO is stopped
  > |	function stopThisIco(bool icoIsStopped) isOwner {
    |		require(icoIsClosed != icoIsStopped);
    |		icoIsClosed = icoIsStopped;
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(497)

[31mViolation[0m for TODAmount in contract 'METADOLLAR':
    |		require(msg.value > 0);
    |		uint commission = msg.value/buyRate; // Buy Commission x1000 of wei tx
  > |        require(address(this).send(commission));
    |		buyToken();
    |	}
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(183)

[31mViolation[0m for TODAmount in contract 'METADOLLAR':
    |		require(contractbalance >= summeInWei);
    |		withdrawed(sender, summeInWei, "wei withdrawed");
  > |        sender.transfer(summeInWei);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(478)

[33mWarning[0m for TODReceiver in contract 'METADOLLAR':
    |		require(msg.value > 0);
    |		uint commission = msg.value/buyRate; // Buy Commission x1000 of wei tx
  > |        require(address(this).send(commission));
    |		buyToken();
    |	}
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(183)

[33mWarning[0m for TODReceiver in contract 'METADOLLAR':
    |		uint256 revenue = amount * sellPrice;
    |		uint commission = msg.value/sellRate; // Sell Commission x1000 of wei tx
  > |        require(address(this).send(commission));
    |		msg.sender.transfer(revenue);         // sends ether to the seller: it's important to do this last to prevent recursion attacks
    |	}
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(196)

[33mWarning[0m for TODReceiver in contract 'METADOLLAR':
    |		uint commission = msg.value/sellRate; // Sell Commission x1000 of wei tx
    |        require(address(this).send(commission));
  > |		msg.sender.transfer(revenue);         // sends ether to the seller: it's important to do this last to prevent recursion attacks
    |	}
    |	
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(197)

[33mWarning[0m for TODReceiver in contract 'METADOLLAR':
    |		require(contractbalance >= summeInWei);
    |		withdrawed(sender, summeInWei, "wei withdrawed");
  > |        sender.transfer(summeInWei);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(478)

[33mWarning[0m for UnhandledException in contract 'METADOLLAR':
    |		require(msg.value > 0);
    |		uint commission = msg.value/buyRate; // Buy Commission x1000 of wei tx
  > |        require(address(this).send(commission));
    |		buyToken();
    |	}
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(183)

[33mWarning[0m for UnhandledException in contract 'METADOLLAR':
    |		uint256 revenue = amount * sellPrice;
    |		uint commission = msg.value/sellRate; // Sell Commission x1000 of wei tx
  > |        require(address(this).send(commission));
    |		msg.sender.transfer(revenue);         // sends ether to the seller: it's important to do this last to prevent recursion attacks
    |	}
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(196)

[33mWarning[0m for UnhandledException in contract 'METADOLLAR':
    |		uint commission = msg.value/sellRate; // Sell Commission x1000 of wei tx
    |        require(address(this).send(commission));
  > |		msg.sender.transfer(revenue);         // sends ether to the seller: it's important to do this last to prevent recursion attacks
    |	}
    |	
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(197)

[33mWarning[0m for UnhandledException in contract 'METADOLLAR':
    |		}
    |		if(moneyBack > 0) {
  > |			sender.transfer(moneyBack);
    |		}
    |	}
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(294)

[33mWarning[0m for UnhandledException in contract 'METADOLLAR':
    |		require(contractbalance >= summeInWei);
    |		withdrawed(sender, summeInWei, "wei withdrawed");
  > |        sender.transfer(summeInWei);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(478)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'METADOLLAR':
    |		require(contractbalance >= summeInWei);
    |		withdrawed(sender, summeInWei, "wei withdrawed");
  > |        sender.transfer(summeInWei);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(478)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |	/// @notice Constructor of the contract
    |	function STARTMETADOLLAR() {
  > |		preIcoIsRunning = true;
    |		minimalGoalReached = false;
    |		icoExitIsPossible = false;
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(123)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |	function STARTMETADOLLAR() {
    |		preIcoIsRunning = true;
  > |		minimalGoalReached = false;
    |		icoExitIsPossible = false;
    |		icoIsClosed = false;
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(124)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		preIcoIsRunning = true;
    |		minimalGoalReached = false;
  > |		icoExitIsPossible = false;
    |		icoIsClosed = false;
    |		tokenBalanceOf[this] += _totalSupply;
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(125)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		minimalGoalReached = false;
    |		icoExitIsPossible = false;
  > |		icoIsClosed = false;
    |		tokenBalanceOf[this] += _totalSupply;
    |		allowed[this][owner] = _totalSupply;
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(126)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		icoExitIsPossible = false;
    |		icoIsClosed = false;
  > |		tokenBalanceOf[this] += _totalSupply;
    |		allowed[this][owner] = _totalSupply;
    |		allowed[this][supervisor] = _totalSupply;
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(127)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		icoIsClosed = false;
    |		tokenBalanceOf[this] += _totalSupply;
  > |		allowed[this][owner] = _totalSupply;
    |		allowed[this][supervisor] = _totalSupply;
    |		currentTokenPrice = 1 * 1 ether;	// initial price of 1 metadollar
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(128)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		tokenBalanceOf[this] += _totalSupply;
    |		allowed[this][owner] = _totalSupply;
  > |		allowed[this][supervisor] = _totalSupply;
    |		currentTokenPrice = 1 * 1 ether;	// initial price of 1 metadollar
    |		preICOprice = 1000000000000000000 * 1000000000000000000 wei; 			// price of 1 token in weis for the preICO time, ca.6,- Euro
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(129)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		allowed[this][owner] = _totalSupply;
    |		allowed[this][supervisor] = _totalSupply;
  > |		currentTokenPrice = 1 * 1 ether;	// initial price of 1 metadollar
    |		preICOprice = 1000000000000000000 * 1000000000000000000 wei; 			// price of 1 token in weis for the preICO time, ca.6,- Euro
    |		ICOprice =  1000000000000000000 *  1000000000000000000 wei;   // price of 1 token in weis for the ICO time, ca.10,- Euro
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(130)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		allowed[this][supervisor] = _totalSupply;
    |		currentTokenPrice = 1 * 1 ether;	// initial price of 1 metadollar
  > |		preICOprice = 1000000000000000000 * 1000000000000000000 wei; 			// price of 1 token in weis for the preICO time, ca.6,- Euro
    |		ICOprice =  1000000000000000000 *  1000000000000000000 wei;   // price of 1 token in weis for the ICO time, ca.10,- Euro
    |		sellPrice = 1000000000000000000 * 1000000000000000000 wei;
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(131)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		currentTokenPrice = 1 * 1 ether;	// initial price of 1 metadollar
    |		preICOprice = 1000000000000000000 * 1000000000000000000 wei; 			// price of 1 token in weis for the preICO time, ca.6,- Euro
  > |		ICOprice =  1000000000000000000 *  1000000000000000000 wei;   // price of 1 token in weis for the ICO time, ca.10,- Euro
    |		sellPrice = 1000000000000000000 * 1000000000000000000 wei;
    |		buyRate = 0;   // set 100 for 1% or 1000 for 0.1%
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(132)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		preICOprice = 1000000000000000000 * 1000000000000000000 wei; 			// price of 1 token in weis for the preICO time, ca.6,- Euro
    |		ICOprice =  1000000000000000000 *  1000000000000000000 wei;   // price of 1 token in weis for the ICO time, ca.10,- Euro
  > |		sellPrice = 1000000000000000000 * 1000000000000000000 wei;
    |		buyRate = 0;   // set 100 for 1% or 1000 for 0.1%
    |		sellRate = 0;   // set 100 for 1% or 1000 for 0.1%
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(133)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		ICOprice =  1000000000000000000 *  1000000000000000000 wei;   // price of 1 token in weis for the ICO time, ca.10,- Euro
    |		sellPrice = 1000000000000000000 * 1000000000000000000 wei;
  > |		buyRate = 0;   // set 100 for 1% or 1000 for 0.1%
    |		sellRate = 0;   // set 100 for 1% or 1000 for 0.1%
    |		updatePrices();
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(134)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		sellPrice = 1000000000000000000 * 1000000000000000000 wei;
    |		buyRate = 0;   // set 100 for 1% or 1000 for 0.1%
  > |		sellRate = 0;   // set 100 for 1% or 1000 for 0.1%
    |		updatePrices();
    |		
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(135)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		orderToTransfer(msg.sender, _from, _to, _value, "Order to transfer metadollars from allowed account");
    |		_transfer(_from, _to, _value);
  > |		allowed[_from][msg.sender] -= _value;
    |		return true;
    |	}
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(246)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |	function checkMinimalGoal() internal {
    |		if(tokenBalanceOf[this] <= _totalSupply - icoMin) {
  > |			minimalGoalReached = true;
    |			minGoalReached(icoMin, "Minimal goal of ICO is reached!");
    |		}
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(263)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |	function checkPreIcoStatus() internal {
    |		if(tokenBalanceOf[this] <= _totalSupply - preIcoLimit) {
  > |			preIcoIsRunning = false;
    |			preIcoEnded(preIcoLimit, "Token amount for preICO sold!");
    |		}
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(271)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		uint256 moneyBack = value - (amount * currentTokenPrice);
    |		require(tokenBalanceOf[this] >= amount);              		// checks if contract has enough to sell
  > |		amountOfInvestments = amountOfInvestments + (value - moneyBack);
    |		updatePrices();
    |		_transfer(this, sender, amount);
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(287)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		require(!frozenAccount[_to]);
    |		if(tokenBalanceOf[_to] == 0){
  > |			countHolders += 1;
    |		}
    |		tokenBalanceOf[_from] -= _value;
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(308)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |			countHolders += 1;
    |		}
  > |		tokenBalanceOf[_from] -= _value;
    |		if(tokenBalanceOf[_from] == 0){
    |			countHolders -= 1;
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(310)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		tokenBalanceOf[_from] -= _value;
    |		if(tokenBalanceOf[_from] == 0){
  > |			countHolders -= 1;
    |		}
    |		tokenBalanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(312)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |			countHolders -= 1;
    |		}
  > |		tokenBalanceOf[_to] += _value;
    |		allowed[this][owner] = tokenBalanceOf[this];
    |		allowed[this][supervisor] = tokenBalanceOf[this];
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(314)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		}
    |		tokenBalanceOf[_to] += _value;
  > |		allowed[this][owner] = tokenBalanceOf[this];
    |		allowed[this][supervisor] = tokenBalanceOf[this];
    |		Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(315)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		tokenBalanceOf[_to] += _value;
    |		allowed[this][owner] = tokenBalanceOf[this];
  > |		allowed[this][supervisor] = tokenBalanceOf[this];
    |		Transfer(_from, _to, _value);
    |	}
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(316)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		}
    |		if(preIcoIsRunning) {
  > |			currentTokenPrice = preICOprice;
    |		}else{
    |			currentTokenPrice = ICOprice;
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(327)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |			currentTokenPrice = preICOprice;
    |		}else{
  > |			currentTokenPrice = ICOprice;
    |		}
    |		
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(329)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		assert(_spender != address(0));
    |		require(_value >= 0);
  > |		allowed[msg.sender][_spender] = _value;
    |		return true;
    |	}
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(256)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |	function checkPreIcoStatus() internal {
    |		if(tokenBalanceOf[this] <= _totalSupply - preIcoLimit) {
  > |			preIcoIsRunning = false;
    |			preIcoEnded(preIcoLimit, "Token amount for preICO sold!");
    |		}
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(271)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		require(priceForPreIcoInWei > 0);
    |		require(preICOprice != priceForPreIcoInWei);
  > |		preICOprice = priceForPreIcoInWei;
    |		updatePrices();
    |	}
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(342)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		require(priceForIcoInWei > 0);
    |		require(ICOprice != priceForIcoInWei);
  > |		ICOprice = priceForIcoInWei;
    |		updatePrices();
    |	}
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(352)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		require(priceForPreIcoInWei > 0);
    |		require(priceForIcoInWei > 0);
  > |		preICOprice = priceForPreIcoInWei;
    |		ICOprice = priceForIcoInWei;
    |		updatePrices();
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(364)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		require(priceForIcoInWei > 0);
    |		preICOprice = priceForPreIcoInWei;
  > |		ICOprice = priceForIcoInWei;
    |		updatePrices();
    |	}
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(365)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |	function setSellPrice(uint256 priceInWei) isOwner {
    |		require(priceInWei >= 0);
  > |		sellPrice = priceInWei;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(374)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		require(buyRateInWei > 0);
    |		require(buyRate != buyRateInWei);
  > |		buyRate = buyRateInWei;
    |		updatePrices();
    |	}
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(382)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		require(sellRateInWei > 0);
    |		require(sellRate != sellRateInWei);
  > |		buyRate = sellRateInWei;
    |		updatePrices();
    |	}
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(391)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		require( buyRateInWei> 0);
    |		require(sellRateInWei > 0);
  > |		buyRate = buyRateInWei;
    |		sellRate = buyRateInWei;
    |		updatePrices();
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(403)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		require(sellRateInWei > 0);
    |		buyRate = buyRateInWei;
  > |		sellRate = buyRateInWei;
    |		updatePrices();
    |	}
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(404)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		require(account != owner);
    |		require(account != supervisor);
  > |		frozenAccount[account] = freeze;
    |		if(freeze) {
    |			FrozenFunds(msg.sender, account, "Account set frozen!");
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(417)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		require(_totalSupply + amount > _totalSupply);
    |		require(tokenBalanceOf[this] + amount > tokenBalanceOf[this]);
  > |		_totalSupply += amount;
    |		tokenBalanceOf[this] += amount;
    |		allowed[this][owner] = tokenBalanceOf[this];
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(432)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		require(tokenBalanceOf[this] + amount > tokenBalanceOf[this]);
    |		_totalSupply += amount;
  > |		tokenBalanceOf[this] += amount;
    |		allowed[this][owner] = tokenBalanceOf[this];
    |		allowed[this][supervisor] = tokenBalanceOf[this];
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(433)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		_totalSupply += amount;
    |		tokenBalanceOf[this] += amount;
  > |		allowed[this][owner] = tokenBalanceOf[this];
    |		allowed[this][supervisor] = tokenBalanceOf[this];
    |		tokenCreated(msg.sender, amount, "Additional metadollars created!");
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(434)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		tokenBalanceOf[this] += amount;
    |		allowed[this][owner] = tokenBalanceOf[this];
  > |		allowed[this][supervisor] = tokenBalanceOf[this];
    |		tokenCreated(msg.sender, amount, "Additional metadollars created!");
    |	}
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(435)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		require(tokenBalanceOf[this] - amount >= 0);
    |		require(_totalSupply - amount >= 0);
  > |		tokenBalanceOf[this] -= amount;
    |		_totalSupply -= amount;
    |		allowed[this][owner] = tokenBalanceOf[this];
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(447)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		require(_totalSupply - amount >= 0);
    |		tokenBalanceOf[this] -= amount;
  > |		_totalSupply -= amount;
    |		allowed[this][owner] = tokenBalanceOf[this];
    |		allowed[this][supervisor] = tokenBalanceOf[this];
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(448)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		tokenBalanceOf[this] -= amount;
    |		_totalSupply -= amount;
  > |		allowed[this][owner] = tokenBalanceOf[this];
    |		allowed[this][supervisor] = tokenBalanceOf[this];
    |		tokenDestroyed(msg.sender, amount, "An amount of metadollars destroyed!");
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(449)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		_totalSupply -= amount;
    |		allowed[this][owner] = tokenBalanceOf[this];
  > |		allowed[this][supervisor] = tokenBalanceOf[this];
    |		tokenDestroyed(msg.sender, amount, "An amount of metadollars destroyed!");
    |	}
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(450)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		assert(newOwner != address(0));
    |		address oldOwner = owner;
  > |		owner = newOwner;
    |		ownerChanged(msg.sender, oldOwner, newOwner);
    |		allowed[this][oldOwner] = 0;
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(459)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		owner = newOwner;
    |		ownerChanged(msg.sender, oldOwner, newOwner);
  > |		allowed[this][oldOwner] = 0;
    |		allowed[this][newOwner] = tokenBalanceOf[this];
    |	}
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(461)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		ownerChanged(msg.sender, oldOwner, newOwner);
    |		allowed[this][oldOwner] = 0;
  > |		allowed[this][newOwner] = tokenBalanceOf[this];
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(462)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |	function allowIcoExit(bool exitAllowed) isOwner {
    |		require(icoExitIsPossible != exitAllowed);
  > |		icoExitIsPossible = exitAllowed;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(492)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |	function stopThisIco(bool icoIsStopped) isOwner {
    |		require(icoIsClosed != icoIsStopped);
  > |		icoIsClosed = icoIsStopped;
    |		if(icoIsStopped) {
    |			icoStatusUpdated(msg.sender, "Coin offering was stopped!");
  at /home/jiaming/mavs_srcs/contract@0xd15c99163799f81c4a585c50ed79a78e06c0b6ae.sol(499)


