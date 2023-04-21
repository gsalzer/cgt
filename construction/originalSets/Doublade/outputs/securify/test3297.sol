Processing contract: /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol:METADOLLAR
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol:owned
[33mWarning[0m for DAOConstantGas in contract 'METADOLLAR':
    |		uint256 revenue = amount * sellPrice;
    |		require(this.balance >= revenue);
  > |		msg.sender.transfer(revenue);                		// sends ether to the seller: it's important to do this last to prevent recursion attacks
    |	}
    |	
  at /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol(194)

[33mWarning[0m for DAOConstantGas in contract 'METADOLLAR':
    |		}
    |		if(moneyBack > 0) {
  > |			sender.transfer(moneyBack);
    |		}
    |	}
  at /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol(291)

[33mWarning[0m for DAOConstantGas in contract 'METADOLLAR':
    |		require(contractbalance >= summeInWei);
    |		withdrawed(sender, summeInWei, "wei withdrawed");
  > |        sender.transfer(summeInWei);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol(495)

[33mWarning[0m for LockedEther in contract 'METADOLLAR':
    | }
    |
  > |contract METADOLLAR is ERC20Interface, owned{
    |
    |	string public constant name = "METADOLLAR";
  at /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol(54)

[31mViolation[0m for MissingInputValidation in contract 'METADOLLAR':
    |
    |	//Balances for each account
  > |	mapping (address => uint256) public tokenBalanceOf;
    |
    |	// Owner of account approves the transfer of an amount to another account
  at /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol(80)

[31mViolation[0m for MissingInputValidation in contract 'METADOLLAR':
    |
    |	/// @notice What is the balance of a particular account?
  > |	function balanceOf(address _owner) constant returns (uint256 balance) {
    |		return tokenBalanceOf[_owner];
    |	}
  at /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol(153)

[31mViolation[0m for MissingInputValidation in contract 'METADOLLAR':
    |
    |	/// @notice Shows how much tokens _spender can spend from _owner address
  > |	function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |		return allowed[_owner][_spender];
    |	}
  at /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol(158)

[31mViolation[0m for MissingInputValidation in contract 'METADOLLAR':
    |	/// @notice Shows if account is frozen
    |	/// @param account - Accountaddress to check
  > |	function checkFrozenAccounts(address account) constant returns (bool accountIsFrozen) {
    |		accountIsFrozen = frozenAccount[account];
    |	}
  at /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol(174)

[31mViolation[0m for MissingInputValidation in contract 'METADOLLAR':
    |	/// @param account - address to be frozen
    |	/// @param freeze - select is the account frozen or not
  > |	function freezeAccount(address account, bool freeze) isOwner {
    |		require(account != owner);
    |		require(account != supervisor);
  at /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol(431)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    | 
    | contract owned{
  > |	address public owner;
    |	address constant supervisor  = 0x2d6808bC989CbEB46cc6dd75a6C90deA50e3e504;
    |	
  at /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol(35)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |contract METADOLLAR is ERC20Interface, owned{
    |
  > |	string public constant name = "METADOLLAR";
    |	string public constant symbol = "DOL";
    |	uint public constant decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol(56)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |
    |	string public constant name = "METADOLLAR";
  > |	string public constant symbol = "DOL";
    |	uint public constant decimals = 18;
    |	uint256 public _totalSupply = 1000000000000000000000000000000;
  at /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol(57)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	string public constant name = "METADOLLAR";
    |	string public constant symbol = "DOL";
  > |	uint public constant decimals = 18;
    |	uint256 public _totalSupply = 1000000000000000000000000000000;
    |	uint256 public icoMin = 1000000000000000;					
  at /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol(58)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	string public constant symbol = "DOL";
    |	uint public constant decimals = 18;
  > |	uint256 public _totalSupply = 1000000000000000000000000000000;
    |	uint256 public icoMin = 1000000000000000;					
    |	uint256 public preIcoLimit = 1000000000000000000;			
  at /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol(59)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	uint public constant decimals = 18;
    |	uint256 public _totalSupply = 1000000000000000000000000000000;
  > |	uint256 public icoMin = 1000000000000000;					
    |	uint256 public preIcoLimit = 1000000000000000000;			
    |	uint256 public countHolders = 0;				// count how many unique holders have tokens
  at /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol(60)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	uint256 public _totalSupply = 1000000000000000000000000000000;
    |	uint256 public icoMin = 1000000000000000;					
  > |	uint256 public preIcoLimit = 1000000000000000000;			
    |	uint256 public countHolders = 0;				// count how many unique holders have tokens
    |	uint256 public amountOfInvestments = 0;	// amount of collected wei
  at /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol(61)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	uint256 public icoMin = 1000000000000000;					
    |	uint256 public preIcoLimit = 1000000000000000000;			
  > |	uint256 public countHolders = 0;				// count how many unique holders have tokens
    |	uint256 public amountOfInvestments = 0;	// amount of collected wei
    |	
  at /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol(62)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	uint256 public preIcoLimit = 1000000000000000000;			
    |	uint256 public countHolders = 0;				// count how many unique holders have tokens
  > |	uint256 public amountOfInvestments = 0;	// amount of collected wei
    |	
    |	uint256 preICOprice;								
  at /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol(63)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	uint256 preICOprice;								
    |	uint256 ICOprice;										
  > |	uint256 public currentTokenPrice;				
    |	uint256 public sellPrice;      
    |	uint256 public mtdPreAmount;
  at /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol(67)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	uint256 ICOprice;										
    |	uint256 public currentTokenPrice;				
  > |	uint256 public sellPrice;      
    |	uint256 public mtdPreAmount;
    |	uint256 public ethPreAmount;
  at /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol(68)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	uint256 public currentTokenPrice;				
    |	uint256 public sellPrice;      
  > |	uint256 public mtdPreAmount;
    |	uint256 public ethPreAmount;
    |	uint256 public mtdAmount;
  at /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol(69)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	uint256 public sellPrice;      
    |	uint256 public mtdPreAmount;
  > |	uint256 public ethPreAmount;
    |	uint256 public mtdAmount;
    |	uint256 public ethAmount;
  at /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol(70)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	uint256 public mtdPreAmount;
    |	uint256 public ethPreAmount;
  > |	uint256 public mtdAmount;
    |	uint256 public ethAmount;
    |	
  at /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol(71)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	uint256 public ethPreAmount;
    |	uint256 public mtdAmount;
  > |	uint256 public ethAmount;
    |	
    |	bool public preIcoIsRunning;
  at /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol(72)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	uint256 public ethAmount;
    |	
  > |	bool public preIcoIsRunning;
    |	bool public minimalGoalReached;
    |	bool public icoIsClosed;
  at /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol(74)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	
    |	bool public preIcoIsRunning;
  > |	bool public minimalGoalReached;
    |	bool public icoIsClosed;
    |	
  at /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol(75)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	bool public preIcoIsRunning;
    |	bool public minimalGoalReached;
  > |	bool public icoIsClosed;
    |	
    |
  at /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol(76)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |
    |	/// @notice Constructor of the contract
  > |	function STARTMETADOLLAR() {
    |	    mtdAmount = 1000000000000000000;
    |	    ethAmount = 1000000000000000;
  at /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol(122)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |
    |	/// @notice Returns a whole amount of tokens
  > |	function totalSupply() constant returns (uint256 totalAmount) {
    |		totalAmount = _totalSupply;
    |	}
  at /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol(148)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	/// @notice Calculates amount of weis needed to buy more than one token
    |	/// @param howManyTokenToBuy - Amount of tokens to calculate
  > |	function calculateTheEndPrice(uint256 howManyTokenToBuy) constant returns (uint256 summarizedPriceInWeis) {
    |		if(howManyTokenToBuy > 0) {
    |			summarizedPriceInWeis = howManyTokenToBuy * currentTokenPrice;
  at /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol(164)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |
    |	/// @notice Buy tokens from contract by sending ether
  > |	function buy() payable public {
    |		require(!frozenAccount[msg.sender]);
    |		require(msg.value > 0);
  at /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol(179)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	
    |	/// @notice Allow user to sell maximum possible amount of tokens, depend on ether amount on contract
  > |	function sellMaximumPossibleAmountOfTokens() {
    |		require(!frozenAccount[msg.sender]);
    |		require(tokenBalanceOf[msg.sender] > 0);
  at /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol(198)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	/// @notice Allow _spender to withdraw from your account, multiple times, up to the _value amount.
    |	/// @notice If this function is called again it overwrites the current allowance with _value.
  > |	function approve(address _spender, uint256 _value) returns (bool success) {
    |		require(!frozenAccount[msg.sender]);
    |		assert(_spender != address(0));
  at /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol(249)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |
    |	/// @notice Check if minimal goal of ICO is reached
  > |	function checkMinimalGoal() internal {
    |		if(tokenBalanceOf[this] <= _totalSupply - icoMin) {
    |			minimalGoalReached = true;
  at /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol(258)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |
    |	/// @notice Check if preICO is ended
  > |	function checkPreIcoStatus() internal {
    |		if(tokenBalanceOf[this] <= _totalSupply - preIcoLimit) {
    |			preIcoIsRunning = false;
  at /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol(266)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |
    |	/// @notice Processing each buying
  > |	function buyToken() internal {
    |		uint256 value = msg.value;
    |		address sender = msg.sender;
  at /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol(274)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |
    |	/// @notice Internal transfer, can only be called by this contract
  > |	function _transfer(address _from, address _to, uint256 _value) internal {
    |		assert(_from != address(0));
    |		assert(_to != address(0));
  at /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol(296)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |
    |	/// @notice Set current ICO prices in wei for one token
  > |	function updatePrices() internal {
    |		uint256 oldPrice = currentTokenPrice;
    |		if(preIcoIsRunning) {
  at /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol(318)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	/// @notice Set the current sell price in wei for one token
    |	/// @param priceInWei - is the amount in wei for one token
  > |	function setSellPrice(uint256 priceInWei) isOwner {
    |		require(priceInWei >= 0);
    |		sellPrice = priceInWei;
  at /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol(423)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	/// @notice Create an amount of token
    |	/// @param amount - token to create
  > |	function mintToken(uint256 amount) isOwner {
    |		require(amount > 0);
    |		require(tokenBalanceOf[this] <= icoMin);	// owner can create token only if the initial amount is strongly not enough to supply and demand ICO
  at /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol(444)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	/// @notice Destroy an amount of token
    |	/// @param amount - token to destroy
  > |	function destroyToken(uint256 amount) isOwner {
    |		require(amount > 0);
    |		require(tokenBalanceOf[this] >= amount);
  at /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol(458)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	/// @notice Transfer the ownership to another account
    |	/// @param newOwner - address who get the ownership
  > |	function transferOwnership(address newOwner) isOwner {
    |		assert(newOwner != address(0));
    |		address oldOwner = owner;
  at /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol(473)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |
    |	/// @notice Transfer ether from smartcontract to owner
  > |	function collect() isOwner {
    |        require(this.balance > 0);
    |		withdraw(this.balance);
  at /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol(483)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |
    |	/// @notice Deposit an amount of ether
  > |	function deposit() payable isOwner {
    |		require(msg.value > 0);
    |		require(msg.sender.balance >= msg.value);
  at /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol(499)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	/// @notice Stop running ICO
    |	/// @param icoIsStopped - status if this ICO is stopped
  > |	function stopThisIco(bool icoIsStopped) isOwner {
    |		require(icoIsClosed != icoIsStopped);
    |		icoIsClosed = icoIsStopped;
  at /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol(508)

[31mViolation[0m for TODAmount in contract 'METADOLLAR':
    |		require(contractbalance >= summeInWei);
    |		withdrawed(sender, summeInWei, "wei withdrawed");
  > |        sender.transfer(summeInWei);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol(495)

[33mWarning[0m for TODReceiver in contract 'METADOLLAR':
    |		uint256 revenue = amount * sellPrice;
    |		require(this.balance >= revenue);
  > |		msg.sender.transfer(revenue);                		// sends ether to the seller: it's important to do this last to prevent recursion attacks
    |	}
    |	
  at /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol(194)

[33mWarning[0m for TODReceiver in contract 'METADOLLAR':
    |		require(contractbalance >= summeInWei);
    |		withdrawed(sender, summeInWei, "wei withdrawed");
  > |        sender.transfer(summeInWei);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol(495)

[33mWarning[0m for UnhandledException in contract 'METADOLLAR':
    |		uint256 revenue = amount * sellPrice;
    |		require(this.balance >= revenue);
  > |		msg.sender.transfer(revenue);                		// sends ether to the seller: it's important to do this last to prevent recursion attacks
    |	}
    |	
  at /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol(194)

[33mWarning[0m for UnhandledException in contract 'METADOLLAR':
    |		}
    |		if(moneyBack > 0) {
  > |			sender.transfer(moneyBack);
    |		}
    |	}
  at /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol(291)

[33mWarning[0m for UnhandledException in contract 'METADOLLAR':
    |		require(contractbalance >= summeInWei);
    |		withdrawed(sender, summeInWei, "wei withdrawed");
  > |        sender.transfer(summeInWei);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol(495)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'METADOLLAR':
    |		require(contractbalance >= summeInWei);
    |		withdrawed(sender, summeInWei, "wei withdrawed");
  > |        sender.transfer(summeInWei);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol(495)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |	/// @notice Constructor of the contract
    |	function STARTMETADOLLAR() {
  > |	    mtdAmount = 1000000000000000000;
    |	    ethAmount = 1000000000000000;
    |	    mtdPreAmount = 1000000000000000000;
  at /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol(123)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |	function STARTMETADOLLAR() {
    |	    mtdAmount = 1000000000000000000;
  > |	    ethAmount = 1000000000000000;
    |	    mtdPreAmount = 1000000000000000000;
    |	    ethPreAmount = 1000000000000000;
  at /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol(124)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |	    mtdAmount = 1000000000000000000;
    |	    ethAmount = 1000000000000000;
  > |	    mtdPreAmount = 1000000000000000000;
    |	    ethPreAmount = 1000000000000000;
    |		preIcoIsRunning = true;
  at /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol(125)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |	    ethAmount = 1000000000000000;
    |	    mtdPreAmount = 1000000000000000000;
  > |	    ethPreAmount = 1000000000000000;
    |		preIcoIsRunning = true;
    |		minimalGoalReached = false;
  at /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol(126)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |	    mtdPreAmount = 1000000000000000000;
    |	    ethPreAmount = 1000000000000000;
  > |		preIcoIsRunning = true;
    |		minimalGoalReached = false;
    |		icoIsClosed = false;
  at /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol(127)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |	    ethPreAmount = 1000000000000000;
    |		preIcoIsRunning = true;
  > |		minimalGoalReached = false;
    |		icoIsClosed = false;
    |		tokenBalanceOf[this] += _totalSupply;
  at /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol(128)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		preIcoIsRunning = true;
    |		minimalGoalReached = false;
  > |		icoIsClosed = false;
    |		tokenBalanceOf[this] += _totalSupply;
    |		allowed[this][owner] = _totalSupply;
  at /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol(129)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		minimalGoalReached = false;
    |		icoIsClosed = false;
  > |		tokenBalanceOf[this] += _totalSupply;
    |		allowed[this][owner] = _totalSupply;
    |		allowed[this][supervisor] = _totalSupply;
  at /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol(130)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		icoIsClosed = false;
    |		tokenBalanceOf[this] += _totalSupply;
  > |		allowed[this][owner] = _totalSupply;
    |		allowed[this][supervisor] = _totalSupply;
    |		currentTokenPrice = mtdAmount * ethAmount;	// initial price of 1 Token
  at /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol(131)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		tokenBalanceOf[this] += _totalSupply;
    |		allowed[this][owner] = _totalSupply;
  > |		allowed[this][supervisor] = _totalSupply;
    |		currentTokenPrice = mtdAmount * ethAmount;	// initial price of 1 Token
    |		preICOprice = mtdPreAmount * ethPreAmount; 			
  at /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol(132)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		allowed[this][owner] = _totalSupply;
    |		allowed[this][supervisor] = _totalSupply;
  > |		currentTokenPrice = mtdAmount * ethAmount;	// initial price of 1 Token
    |		preICOprice = mtdPreAmount * ethPreAmount; 			
    |		ICOprice = mtdAmount * ethAmount;			
  at /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol(133)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		allowed[this][supervisor] = _totalSupply;
    |		currentTokenPrice = mtdAmount * ethAmount;	// initial price of 1 Token
  > |		preICOprice = mtdPreAmount * ethPreAmount; 			
    |		ICOprice = mtdAmount * ethAmount;			
    |		sellPrice = 900000000000000;
  at /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol(134)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		currentTokenPrice = mtdAmount * ethAmount;	// initial price of 1 Token
    |		preICOprice = mtdPreAmount * ethPreAmount; 			
  > |		ICOprice = mtdAmount * ethAmount;			
    |		sellPrice = 900000000000000;
    |		updatePrices();
  at /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol(135)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		preICOprice = mtdPreAmount * ethPreAmount; 			
    |		ICOprice = mtdAmount * ethAmount;			
  > |		sellPrice = 900000000000000;
    |		updatePrices();
    |	}
  at /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol(136)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		orderToTransfer(msg.sender, _from, _to, _value, "Order to transfer tokens from allowed account");
    |		_transfer(_from, _to, _value);
  > |		allowed[_from][msg.sender] -= _value;
    |		return true;
    |	}
  at /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol(243)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |	function checkMinimalGoal() internal {
    |		if(tokenBalanceOf[this] <= _totalSupply - icoMin) {
  > |			minimalGoalReached = true;
    |			minGoalReached(icoMin, "Minimal goal of ICO is reached!");
    |		}
  at /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol(260)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |	function checkPreIcoStatus() internal {
    |		if(tokenBalanceOf[this] <= _totalSupply - preIcoLimit) {
  > |			preIcoIsRunning = false;
    |			preIcoEnded(preIcoLimit, "Token amount for preICO sold!");
    |		}
  at /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol(268)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		uint256 moneyBack = value - (amount * currentTokenPrice);
    |		require(tokenBalanceOf[this] >= amount);              		// checks if contract has enough to sell
  > |		amountOfInvestments = amountOfInvestments + (value - moneyBack);
    |		updatePrices();
    |		_transfer(this, sender, amount);
  at /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol(284)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		require(!frozenAccount[_to]);
    |		if(tokenBalanceOf[_to] == 0){
  > |			countHolders += 1;
    |		}
    |		tokenBalanceOf[_from] -= _value;
  at /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol(305)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |			countHolders += 1;
    |		}
  > |		tokenBalanceOf[_from] -= _value;
    |		if(tokenBalanceOf[_from] == 0){
    |			countHolders -= 1;
  at /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol(307)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		tokenBalanceOf[_from] -= _value;
    |		if(tokenBalanceOf[_from] == 0){
  > |			countHolders -= 1;
    |		}
    |		tokenBalanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol(309)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |			countHolders -= 1;
    |		}
  > |		tokenBalanceOf[_to] += _value;
    |		allowed[this][owner] = tokenBalanceOf[this];
    |		allowed[this][supervisor] = tokenBalanceOf[this];
  at /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol(311)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		}
    |		tokenBalanceOf[_to] += _value;
  > |		allowed[this][owner] = tokenBalanceOf[this];
    |		allowed[this][supervisor] = tokenBalanceOf[this];
    |		Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol(312)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		tokenBalanceOf[_to] += _value;
    |		allowed[this][owner] = tokenBalanceOf[this];
  > |		allowed[this][supervisor] = tokenBalanceOf[this];
    |		Transfer(_from, _to, _value);
    |	}
  at /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol(313)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		}
    |		if(preIcoIsRunning) {
  > |			currentTokenPrice = preICOprice;
    |		}else{
    |			currentTokenPrice = ICOprice;
  at /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol(324)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |			currentTokenPrice = preICOprice;
    |		}else{
  > |			currentTokenPrice = ICOprice;
    |		}
    |		
  at /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol(326)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		assert(_spender != address(0));
    |		require(_value >= 0);
  > |		allowed[msg.sender][_spender] = _value;
    |		return true;
    |	}
  at /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol(253)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |	function checkPreIcoStatus() internal {
    |		if(tokenBalanceOf[this] <= _totalSupply - preIcoLimit) {
  > |			preIcoIsRunning = false;
    |			preIcoEnded(preIcoLimit, "Token amount for preICO sold!");
    |		}
  at /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol(268)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		require(priceForPreIcoInWei > 0);
    |		require(preICOprice != priceForPreIcoInWei);
  > |		preICOprice = priceForPreIcoInWei;
    |		updatePrices();
    |	}
  at /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol(339)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		require(priceForIcoInWei > 0);
    |		require(ICOprice != priceForIcoInWei);
  > |		ICOprice = priceForIcoInWei;
    |		updatePrices();
    |	}
  at /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol(348)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		require(priceForPreIcoInWei > 0);
    |		require(priceForIcoInWei > 0);
  > |		preICOprice = priceForPreIcoInWei;
    |		ICOprice = priceForIcoInWei;
    |		updatePrices();
  at /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol(358)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		require(priceForIcoInWei > 0);
    |		preICOprice = priceForPreIcoInWei;
  > |		ICOprice = priceForIcoInWei;
    |		updatePrices();
    |	}
  at /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol(359)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		require(mtdAmountInWei > 0);
    |		require(mtdAmount != mtdAmountInWei);
  > |		mtdAmount = mtdAmountInWei;
    |		updatePrices();
    |	}
  at /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol(368)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		require(ethAmountInWei > 0);
    |		require(ethAmount != ethAmountInWei);
  > |		ethAmount = ethAmountInWei;
    |		updatePrices();
    |	}
  at /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol(377)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		require(mtdAmountInWei > 0);
    |		require(ethAmountInWei > 0);
  > |		mtdAmount = mtdAmountInWei;
    |		ethAmount = ethAmountInWei;
    |		updatePrices();
  at /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol(387)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		require(ethAmountInWei > 0);
    |		mtdAmount = mtdAmountInWei;
  > |		ethAmount = ethAmountInWei;
    |		updatePrices();
    |	}
  at /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol(388)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		require(mtdPreAmountInWei > 0);
    |		require(mtdPreAmount != mtdPreAmountInWei);
  > |		mtdPreAmount = mtdPreAmountInWei;
    |		updatePrices();
    |	}
  at /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol(397)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		require(ethPreAmountInWei > 0);
    |		require(ethPreAmount != ethPreAmountInWei);
  > |		ethPreAmount = ethPreAmountInWei;
    |		updatePrices();
    |	}
  at /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol(406)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		require(mtdPreAmountInWei > 0);
    |		require(ethPreAmountInWei > 0);
  > |		mtdPreAmount = mtdPreAmountInWei;
    |		ethPreAmount = ethPreAmountInWei;
    |		updatePrices();
  at /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol(416)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		require(ethPreAmountInWei > 0);
    |		mtdPreAmount = mtdPreAmountInWei;
  > |		ethPreAmount = ethPreAmountInWei;
    |		updatePrices();
    |	}
  at /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol(417)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |	function setSellPrice(uint256 priceInWei) isOwner {
    |		require(priceInWei >= 0);
  > |		sellPrice = priceInWei;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol(425)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		require(account != owner);
    |		require(account != supervisor);
  > |		frozenAccount[account] = freeze;
    |		if(freeze) {
    |			FrozenFunds(msg.sender, account, "Account set frozen!");
  at /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol(434)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		require(_totalSupply + amount > _totalSupply);
    |		require(tokenBalanceOf[this] + amount > tokenBalanceOf[this]);
  > |		_totalSupply += amount;
    |		tokenBalanceOf[this] += amount;
    |		allowed[this][owner] = tokenBalanceOf[this];
  at /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol(449)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		require(tokenBalanceOf[this] + amount > tokenBalanceOf[this]);
    |		_totalSupply += amount;
  > |		tokenBalanceOf[this] += amount;
    |		allowed[this][owner] = tokenBalanceOf[this];
    |		allowed[this][supervisor] = tokenBalanceOf[this];
  at /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol(450)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		_totalSupply += amount;
    |		tokenBalanceOf[this] += amount;
  > |		allowed[this][owner] = tokenBalanceOf[this];
    |		allowed[this][supervisor] = tokenBalanceOf[this];
    |		tokenCreated(msg.sender, amount, "Additional tokens created!");
  at /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol(451)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		tokenBalanceOf[this] += amount;
    |		allowed[this][owner] = tokenBalanceOf[this];
  > |		allowed[this][supervisor] = tokenBalanceOf[this];
    |		tokenCreated(msg.sender, amount, "Additional tokens created!");
    |	}
  at /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol(452)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		require(tokenBalanceOf[this] - amount >= 0);
    |		require(_totalSupply - amount >= 0);
  > |		tokenBalanceOf[this] -= amount;
    |		_totalSupply -= amount;
    |		allowed[this][owner] = tokenBalanceOf[this];
  at /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol(464)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		require(_totalSupply - amount >= 0);
    |		tokenBalanceOf[this] -= amount;
  > |		_totalSupply -= amount;
    |		allowed[this][owner] = tokenBalanceOf[this];
    |		allowed[this][supervisor] = tokenBalanceOf[this];
  at /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol(465)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		tokenBalanceOf[this] -= amount;
    |		_totalSupply -= amount;
  > |		allowed[this][owner] = tokenBalanceOf[this];
    |		allowed[this][supervisor] = tokenBalanceOf[this];
    |		tokenDestroyed(msg.sender, amount, "An amount of tokens destroyed!");
  at /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol(466)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		_totalSupply -= amount;
    |		allowed[this][owner] = tokenBalanceOf[this];
  > |		allowed[this][supervisor] = tokenBalanceOf[this];
    |		tokenDestroyed(msg.sender, amount, "An amount of tokens destroyed!");
    |	}
  at /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol(467)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		assert(newOwner != address(0));
    |		address oldOwner = owner;
  > |		owner = newOwner;
    |		ownerChanged(msg.sender, oldOwner, newOwner);
    |		allowed[this][oldOwner] = 0;
  at /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol(476)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		owner = newOwner;
    |		ownerChanged(msg.sender, oldOwner, newOwner);
  > |		allowed[this][oldOwner] = 0;
    |		allowed[this][newOwner] = tokenBalanceOf[this];
    |	}
  at /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol(478)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		ownerChanged(msg.sender, oldOwner, newOwner);
    |		allowed[this][oldOwner] = 0;
  > |		allowed[this][newOwner] = tokenBalanceOf[this];
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol(479)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |	function stopThisIco(bool icoIsStopped) isOwner {
    |		require(icoIsClosed != icoIsStopped);
  > |		icoIsClosed = icoIsStopped;
    |		if(icoIsStopped) {
    |			icoStatusUpdated(msg.sender, "Coin offering was stopped!");
  at /home/jiaming/mavs_srcs/contract@0xd8325fb1a8f37e339926ed784965ab92e5b03f40.sol(510)


