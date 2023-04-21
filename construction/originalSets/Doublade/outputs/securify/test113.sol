Processing contract: /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol:ApproveAndCallFallBack
Processing contract: /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol:METADOLLAR
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol:Owned
Processing contract: /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'METADOLLAR':
    |		require(this.balance >= revenue);
    |		commission = msg.value/commissionRate; // % of wei tx
  > |        require(address(this).send(commission));
    |		msg.sender.transfer(revenue);                		// sends ether to the seller: it's important to do this last to prevent recursion attacks
    |	}
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(213)

[33mWarning[0m for DAOConstantGas in contract 'METADOLLAR':
    |		commission = msg.value/commissionRate; // % of wei tx
    |        require(address(this).send(commission));
  > |		msg.sender.transfer(revenue);                		// sends ether to the seller: it's important to do this last to prevent recursion attacks
    |	}
    |	
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(214)

[33mWarning[0m for DAOConstantGas in contract 'METADOLLAR':
    |        require(token.balanceOf(this) >= tokens);
    |        commission = msg.value/commissionRate; // % of wei tx
  > |       require(address(this).send(commission));
    |        token.transfer(msg.sender, tokens);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(224)

[33mWarning[0m for DAOConstantGas in contract 'METADOLLAR':
    |		_transfer(this, sender, amount);
    |		if(moneyBack > 0) {
  > |			sender.transfer(moneyBack);
    |		}
    |	}
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(308)

[33mWarning[0m for DAOConstantGas in contract 'METADOLLAR':
    |		require(contractbalance >= summeInWei);
    |		withdrawed(sender, summeInWei, "wei withdrawed");
  > |        sender.transfer(summeInWei);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(464)

[33mWarning[0m for LockedEther in contract 'METADOLLAR':
    | 
    |
  > |contract METADOLLAR is ERC20Interface, Owned, SafeMath {
    |    
    |    
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(71)

[31mViolation[0m for MissingInputValidation in contract 'METADOLLAR':
    |
    |	//Balances for each account
  > |	mapping (address => uint256) public tokenBalanceOf;
    |
    |	// Owner of account approves the transfer of an amount to another account
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(101)

[31mViolation[0m for MissingInputValidation in contract 'METADOLLAR':
    |
    |	/// @notice What is the balance of a particular account?
  > |	function balanceOf(address _owner) constant returns (uint256 balance) {
    |		return tokenBalanceOf[_owner];
    |	}
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(170)

[31mViolation[0m for MissingInputValidation in contract 'METADOLLAR':
    |
    |	/// @notice Shows how much tokens _spender can spend from _owner address
  > |	function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |		return allowed[_owner][_spender];
    |	}
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(175)

[31mViolation[0m for MissingInputValidation in contract 'METADOLLAR':
    |	/// @notice Shows if account is frozen
    |	/// @param account - Accountaddress to check
  > |	function checkFrozenAccounts(address account) constant returns (bool accountIsFrozen) {
    |		accountIsFrozen = frozenAccount[account];
    |	}
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(191)

[31mViolation[0m for MissingInputValidation in contract 'METADOLLAR':
    |	/// @param account - address to be frozen
    |	/// @param freeze - select is the account frozen or not
  > |	function freezeAccount(address account, bool freeze) isOwner {
    |		require(account != owner);
    |		require(account != supervisor);
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(400)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |
    |contract Owned{
  > |	address public owner;
    |	address constant supervisor  = 0x318B0f768f5c6c567227AA50B51B5b3078902f8C;
    |	
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(51)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	address constant supervisor  = 0x318B0f768f5c6c567227AA50B51B5b3078902f8C;
    |	
  > |	function owned(){
    |		owner = msg.sender;
    |	}
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(54)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |    
    |
  > |	string public constant name = "METADOLLAR";
    |	string public constant symbol = "DOL";
    |	uint public constant decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(75)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |
    |	string public constant name = "METADOLLAR";
  > |	string public constant symbol = "DOL";
    |	uint public constant decimals = 18;
    |	uint256 public _totalSupply = 1000000000000000000000000000000;
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(76)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	string public constant name = "METADOLLAR";
    |	string public constant symbol = "DOL";
  > |	uint public constant decimals = 18;
    |	uint256 public _totalSupply = 1000000000000000000000000000000;
    |	uint256 public icoMin = 1000000000000000;					
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(77)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	string public constant symbol = "DOL";
    |	uint public constant decimals = 18;
  > |	uint256 public _totalSupply = 1000000000000000000000000000000;
    |	uint256 public icoMin = 1000000000000000;					
    |	uint256 public preIcoLimit = 1000000000000000000;			
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(78)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	uint public constant decimals = 18;
    |	uint256 public _totalSupply = 1000000000000000000000000000000;
  > |	uint256 public icoMin = 1000000000000000;					
    |	uint256 public preIcoLimit = 1000000000000000000;			
    |	uint256 public countHolders = 0;				// count how many unique holders have tokens
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(79)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	uint256 public _totalSupply = 1000000000000000000000000000000;
    |	uint256 public icoMin = 1000000000000000;					
  > |	uint256 public preIcoLimit = 1000000000000000000;			
    |	uint256 public countHolders = 0;				// count how many unique holders have tokens
    |	uint256 public amountOfInvestments = 0;	// amount of collected wei
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(80)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	uint256 public icoMin = 1000000000000000;					
    |	uint256 public preIcoLimit = 1000000000000000000;			
  > |	uint256 public countHolders = 0;				// count how many unique holders have tokens
    |	uint256 public amountOfInvestments = 0;	// amount of collected wei
    |	
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(81)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	uint256 public preIcoLimit = 1000000000000000000;			
    |	uint256 public countHolders = 0;				// count how many unique holders have tokens
  > |	uint256 public amountOfInvestments = 0;	// amount of collected wei
    |	
    |	uint256 public preICOprice;
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(82)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	uint256 public amountOfInvestments = 0;	// amount of collected wei
    |	
  > |	uint256 public preICOprice;
    |	uint256 public ICOprice;	
    |    uint256 preMtdRate = 1000;
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(84)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	
    |	uint256 public preICOprice;
  > |	uint256 public ICOprice;	
    |    uint256 preMtdRate = 1000;
    |	uint256 mtdRate = 1000;
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(85)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	uint256 sellRate = 900;
    |	uint256 commissionRate = 900;
  > |	uint256 public sellPrice;
    |	uint256 public currentTokenPrice;				
    |	uint256 public commission;	
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(90)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	uint256 commissionRate = 900;
    |	uint256 public sellPrice;
  > |	uint256 public currentTokenPrice;				
    |	uint256 public commission;	
    |	
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(91)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	uint256 public sellPrice;
    |	uint256 public currentTokenPrice;				
  > |	uint256 public commission;	
    |	
    |	
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(92)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	
    |	
  > |	bool public preIcoIsRunning;
    |	bool public minimalGoalReached;
    |	bool public icoIsClosed;
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(95)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	
    |	bool public preIcoIsRunning;
  > |	bool public minimalGoalReached;
    |	bool public icoIsClosed;
    |	
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(96)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	bool public preIcoIsRunning;
    |	bool public minimalGoalReached;
  > |	bool public icoIsClosed;
    |	
    |
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(97)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |
    |	/// @notice Constructor of the contract
  > |	function STARTMETADOLLAR() {
    |		preIcoIsRunning = true;
    |		minimalGoalReached = false;
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(143)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |
    |	/// @notice Returns a whole amount of tokens
  > |	function totalSupply() constant returns (uint256 totalAmount) {
    |		totalAmount = _totalSupply;
    |	}
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(165)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	/// @notice Calculates amount of weis needed to buy more than one token
    |	/// @param howManyTokenToBuy - Amount of tokens to calculate
  > |	function calculateTheEndPrice(uint256 howManyTokenToBuy) constant returns (uint256 summarizedPriceInWeis) {
    |		if(howManyTokenToBuy > 0) {
    |			summarizedPriceInWeis = howManyTokenToBuy * currentTokenPrice;
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(181)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |
    |	/// @notice Buy tokens from contract by sending ether
  > |	function buy() payable public {
    |		require(!frozenAccount[msg.sender]);
    |		require(msg.value > 0);
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(196)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |   
    |
  > |    function sell2(address _tokenAddress) public payable{
    |        METADOLLAR token = METADOLLAR(_tokenAddress);
    |        uint tokens = msg.value * sellPrice;
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(219)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	/// @notice Allow _spender to withdraw from your account, multiple times, up to the _value amount.
    |	/// @notice If this function is called again it overwrites the current allowance with _value.
  > |	function approve(address _spender, uint256 _value) returns (bool success) {
    |		require(!frozenAccount[msg.sender]);
    |		assert(_spender != address(0));
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(269)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |
    |	/// @notice Check if preICO is ended
  > |	function checkPreIcoStatus() internal {
    |		if(tokenBalanceOf[this] <= _totalSupply - preIcoLimit) {
    |			preIcoIsRunning = false;
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(286)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |
    |	/// @notice Processing each buying
  > |	function buyToken() internal {
    |		uint256 value = msg.value;
    |		address sender = msg.sender;
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(294)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |
    |	/// @notice Internal transfer, can only be called by this contract
  > |	function _transfer(address _from, address _to, uint256 _value) internal {
    |		assert(_from != address(0));
    |		assert(_to != address(0));
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(313)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |
    |	/// @notice Set current ICO prices in wei for one token
  > |	function updatePrices() internal {
    |		uint256 oldPrice = currentTokenPrice;
    |		if(preIcoIsRunning) {
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(335)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	/// @notice Set the current sell price in wei for one token
    |	/// @param priceInWei - is the amount in wei for one token
  > |	function setSellPrice(uint256 priceInWei) isOwner {
    |		require(priceInWei >= 0);
    |		sellPrice = priceInWei;
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(383)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	/// @notice Set the current commission rate
    |	/// @param commissionRateInWei - commission rate
  > |	function setCommissionRate(uint256 commissionRateInWei) isOwner {
    |		require(commissionRateInWei >= 0);
    |		commissionRate = commissionRateInWei;
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(390)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	/// @notice Create an amount of token
    |	/// @param amount - token to create
  > |	function mintToken(uint256 amount) isOwner {
    |		require(amount > 0);
    |		require(tokenBalanceOf[this] <= icoMin);	// owner can create token only if the initial amount is strongly not enough to supply and demand ICO
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(413)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	/// @notice Destroy an amount of token
    |	/// @param amount - token to destroy
  > |	function destroyToken(uint256 amount) isOwner {
    |		require(amount > 0);
    |		require(tokenBalanceOf[this] >= amount);
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(427)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	/// @notice Transfer the ownership to another account
    |	/// @param newOwner - address who get the ownership
  > |	function transferOwnership(address newOwner) isOwner {
    |		assert(newOwner != address(0));
    |		address oldOwner = owner;
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(442)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |
    |	/// @notice Transfer all ether from smartcontract to owner
  > |	function collect() isOwner {
    |        require(this.balance > 0);
    |		withdraw(this.balance);
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(452)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |
    |	/// @notice Deposit an amount of ether
  > |	function deposit() payable isOwner {
    |		require(msg.value > 0);
    |		require(msg.sender.balance >= msg.value);
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(468)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	/// @notice Stop running ICO
    |	/// @param icoIsStopped - status if this ICO is stopped
  > |	function stopThisIco(bool icoIsStopped) isOwner {
    |		require(icoIsClosed != icoIsStopped);
    |		icoIsClosed = icoIsStopped;
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(477)

[31mViolation[0m for TODAmount in contract 'METADOLLAR':
    |        require(token.balanceOf(this) >= tokens);
    |        commission = msg.value/commissionRate; // % of wei tx
  > |       require(address(this).send(commission));
    |        token.transfer(msg.sender, tokens);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(224)

[31mViolation[0m for TODAmount in contract 'METADOLLAR':
    |		require(contractbalance >= summeInWei);
    |		withdrawed(sender, summeInWei, "wei withdrawed");
  > |        sender.transfer(summeInWei);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(464)

[33mWarning[0m for TODReceiver in contract 'METADOLLAR':
    |		require(this.balance >= revenue);
    |		commission = msg.value/commissionRate; // % of wei tx
  > |        require(address(this).send(commission));
    |		msg.sender.transfer(revenue);                		// sends ether to the seller: it's important to do this last to prevent recursion attacks
    |	}
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(213)

[33mWarning[0m for TODReceiver in contract 'METADOLLAR':
    |		commission = msg.value/commissionRate; // % of wei tx
    |        require(address(this).send(commission));
  > |		msg.sender.transfer(revenue);                		// sends ether to the seller: it's important to do this last to prevent recursion attacks
    |	}
    |	
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(214)

[33mWarning[0m for TODReceiver in contract 'METADOLLAR':
    |        require(token.balanceOf(this) >= tokens);
    |        commission = msg.value/commissionRate; // % of wei tx
  > |       require(address(this).send(commission));
    |        token.transfer(msg.sender, tokens);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(224)

[33mWarning[0m for TODReceiver in contract 'METADOLLAR':
    |		require(contractbalance >= summeInWei);
    |		withdrawed(sender, summeInWei, "wei withdrawed");
  > |        sender.transfer(summeInWei);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(464)

[33mWarning[0m for UnhandledException in contract 'METADOLLAR':
    |		require(this.balance >= revenue);
    |		commission = msg.value/commissionRate; // % of wei tx
  > |        require(address(this).send(commission));
    |		msg.sender.transfer(revenue);                		// sends ether to the seller: it's important to do this last to prevent recursion attacks
    |	}
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(213)

[33mWarning[0m for UnhandledException in contract 'METADOLLAR':
    |		commission = msg.value/commissionRate; // % of wei tx
    |        require(address(this).send(commission));
  > |		msg.sender.transfer(revenue);                		// sends ether to the seller: it's important to do this last to prevent recursion attacks
    |	}
    |	
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(214)

[33mWarning[0m for UnhandledException in contract 'METADOLLAR':
    |        METADOLLAR token = METADOLLAR(_tokenAddress);
    |        uint tokens = msg.value * sellPrice;
  > |        require(token.balanceOf(this) >= tokens);
    |        commission = msg.value/commissionRate; // % of wei tx
    |       require(address(this).send(commission));
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(222)

[33mWarning[0m for UnhandledException in contract 'METADOLLAR':
    |        require(token.balanceOf(this) >= tokens);
    |        commission = msg.value/commissionRate; // % of wei tx
  > |       require(address(this).send(commission));
    |        token.transfer(msg.sender, tokens);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(224)

[33mWarning[0m for UnhandledException in contract 'METADOLLAR':
    |        commission = msg.value/commissionRate; // % of wei tx
    |       require(address(this).send(commission));
  > |        token.transfer(msg.sender, tokens);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(225)

[33mWarning[0m for UnhandledException in contract 'METADOLLAR':
    |		_transfer(this, sender, amount);
    |		if(moneyBack > 0) {
  > |			sender.transfer(moneyBack);
    |		}
    |	}
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(308)

[33mWarning[0m for UnhandledException in contract 'METADOLLAR':
    |		require(contractbalance >= summeInWei);
    |		withdrawed(sender, summeInWei, "wei withdrawed");
  > |        sender.transfer(summeInWei);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(464)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'METADOLLAR':
    |        METADOLLAR token = METADOLLAR(_tokenAddress);
    |        uint tokens = msg.value * sellPrice;
  > |        require(token.balanceOf(this) >= tokens);
    |        commission = msg.value/commissionRate; // % of wei tx
    |       require(address(this).send(commission));
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(222)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'METADOLLAR':
    |        commission = msg.value/commissionRate; // % of wei tx
    |       require(address(this).send(commission));
  > |        token.transfer(msg.sender, tokens);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(225)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'METADOLLAR':
    |		require(contractbalance >= summeInWei);
    |		withdrawed(sender, summeInWei, "wei withdrawed");
  > |        sender.transfer(summeInWei);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(464)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |	
    |	function owned(){
  > |		owner = msg.sender;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(55)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |	/// @notice Constructor of the contract
    |	function STARTMETADOLLAR() {
  > |		preIcoIsRunning = true;
    |		minimalGoalReached = false;
    |		icoIsClosed = false;
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(144)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |	function STARTMETADOLLAR() {
    |		preIcoIsRunning = true;
  > |		minimalGoalReached = false;
    |		icoIsClosed = false;
    |		tokenBalanceOf[this] += _totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(145)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		preIcoIsRunning = true;
    |		minimalGoalReached = false;
  > |		icoIsClosed = false;
    |		tokenBalanceOf[this] += _totalSupply;
    |		allowed[this][owner] = _totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(146)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		minimalGoalReached = false;
    |		icoIsClosed = false;
  > |		tokenBalanceOf[this] += _totalSupply;
    |		allowed[this][owner] = _totalSupply;
    |		allowed[this][supervisor] = _totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(147)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		icoIsClosed = false;
    |		tokenBalanceOf[this] += _totalSupply;
  > |		allowed[this][owner] = _totalSupply;
    |		allowed[this][supervisor] = _totalSupply;
    |		currentTokenPrice = 1 * 1;	// initial price of 1 Token
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(148)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		tokenBalanceOf[this] += _totalSupply;
    |		allowed[this][owner] = _totalSupply;
  > |		allowed[this][supervisor] = _totalSupply;
    |		currentTokenPrice = 1 * 1;	// initial price of 1 Token
    |		preICOprice = (msg.value) * preMtdRate;		
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(149)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		allowed[this][owner] = _totalSupply;
    |		allowed[this][supervisor] = _totalSupply;
  > |		currentTokenPrice = 1 * 1;	// initial price of 1 Token
    |		preICOprice = (msg.value) * preMtdRate;		
    |		ICOprice = 	(msg.value) * mtdRate;	
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(150)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		allowed[this][supervisor] = _totalSupply;
    |		currentTokenPrice = 1 * 1;	// initial price of 1 Token
  > |		preICOprice = (msg.value) * preMtdRate;		
    |		ICOprice = 	(msg.value) * mtdRate;	
    |		sellPrice = (msg.value) * sellRate;
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(151)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		currentTokenPrice = 1 * 1;	// initial price of 1 Token
    |		preICOprice = (msg.value) * preMtdRate;		
  > |		ICOprice = 	(msg.value) * mtdRate;	
    |		sellPrice = (msg.value) * sellRate;
    |		updatePrices();
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(152)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		preICOprice = (msg.value) * preMtdRate;		
    |		ICOprice = 	(msg.value) * mtdRate;	
  > |		sellPrice = (msg.value) * sellRate;
    |		updatePrices();
    |	}
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(153)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		uint256 revenue = amount * sellPrice;
    |		require(this.balance >= revenue);
  > |		commission = msg.value/commissionRate; // % of wei tx
    |        require(address(this).send(commission));
    |		msg.sender.transfer(revenue);                		// sends ether to the seller: it's important to do this last to prevent recursion attacks
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(212)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |        uint tokens = msg.value * sellPrice;
    |        require(token.balanceOf(this) >= tokens);
  > |        commission = msg.value/commissionRate; // % of wei tx
    |       require(address(this).send(commission));
    |        token.transfer(msg.sender, tokens);
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(223)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		orderToTransfer(msg.sender, _from, _to, _value, "Order to transfer tokens from allowed account");
    |		_transfer(_from, _to, _value);
  > |		allowed[_from][msg.sender] -= _value;
    |		return true;
    |	}
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(263)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |	function checkPreIcoStatus() internal {
    |		if(tokenBalanceOf[this] <= _totalSupply - preIcoLimit) {
  > |			preIcoIsRunning = false;
    |			preIcoEnded(preIcoLimit, "Token amount for preICO sold!");
    |		}
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(288)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		uint256 moneyBack = value - (amount * sellPrice);
    |		require(tokenBalanceOf[this] >= amount);              		// checks if contract has enough to sell
  > |		amountOfInvestments = amountOfInvestments + (value - moneyBack);
    |		updatePrices();
    |		_transfer(this, sender, amount);
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(304)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		require(!frozenAccount[_to]);
    |		if(tokenBalanceOf[_to] == 0){
  > |			countHolders += 1;
    |		}
    |		tokenBalanceOf[_from] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(322)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |			countHolders += 1;
    |		}
  > |		tokenBalanceOf[_from] -= _value;
    |		if(tokenBalanceOf[_from] == 0){
    |			countHolders -= 1;
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(324)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		tokenBalanceOf[_from] -= _value;
    |		if(tokenBalanceOf[_from] == 0){
  > |			countHolders -= 1;
    |		}
    |		tokenBalanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(326)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |			countHolders -= 1;
    |		}
  > |		tokenBalanceOf[_to] += _value;
    |		allowed[this][owner] = tokenBalanceOf[this];
    |		allowed[this][supervisor] = tokenBalanceOf[this];
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(328)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		}
    |		tokenBalanceOf[_to] += _value;
  > |		allowed[this][owner] = tokenBalanceOf[this];
    |		allowed[this][supervisor] = tokenBalanceOf[this];
    |		Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(329)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		tokenBalanceOf[_to] += _value;
    |		allowed[this][owner] = tokenBalanceOf[this];
  > |		allowed[this][supervisor] = tokenBalanceOf[this];
    |		Transfer(_from, _to, _value);
    |	}
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(330)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		}
    |		if(preIcoIsRunning) {
  > |			currentTokenPrice = preICOprice;
    |		}else{
    |			currentTokenPrice = ICOprice;
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(341)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |			currentTokenPrice = preICOprice;
    |		}else{
  > |			currentTokenPrice = ICOprice;
    |		}
    |		
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(343)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		assert(_spender != address(0));
    |		require(_value >= 0);
  > |		allowed[msg.sender][_spender] = _value;
    |		return true;
    |	}
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(273)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |	function checkPreIcoStatus() internal {
    |		if(tokenBalanceOf[this] <= _totalSupply - preIcoLimit) {
  > |			preIcoIsRunning = false;
    |			preIcoEnded(preIcoLimit, "Token amount for preICO sold!");
    |		}
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(288)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		require(priceForPreIcoInWei > 0);
    |		require(preICOprice != priceForPreIcoInWei);
  > |		preICOprice = priceForPreIcoInWei;
    |		updatePrices();
    |	}
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(356)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		require(priceForIcoInWei > 0);
    |		require(ICOprice != priceForIcoInWei);
  > |		ICOprice = priceForIcoInWei;
    |		updatePrices();
    |	}
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(365)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		require(priceForPreIcoInWei > 0);
    |		require(priceForIcoInWei > 0);
  > |		preICOprice = priceForPreIcoInWei;
    |		ICOprice = priceForIcoInWei;
    |		updatePrices();
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(375)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		require(priceForIcoInWei > 0);
    |		preICOprice = priceForPreIcoInWei;
  > |		ICOprice = priceForIcoInWei;
    |		updatePrices();
    |	}
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(376)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |	function setSellPrice(uint256 priceInWei) isOwner {
    |		require(priceInWei >= 0);
  > |		sellPrice = priceInWei;
    |	}
    |	
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(385)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |	function setCommissionRate(uint256 commissionRateInWei) isOwner {
    |		require(commissionRateInWei >= 0);
  > |		commissionRate = commissionRateInWei;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(392)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		require(account != owner);
    |		require(account != supervisor);
  > |		frozenAccount[account] = freeze;
    |		if(freeze) {
    |			FrozenFunds(msg.sender, account, "Account set frozen!");
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(403)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		require(_totalSupply + amount > _totalSupply);
    |		require(tokenBalanceOf[this] + amount > tokenBalanceOf[this]);
  > |		_totalSupply += amount;
    |		tokenBalanceOf[this] += amount;
    |		allowed[this][owner] = tokenBalanceOf[this];
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(418)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		require(tokenBalanceOf[this] + amount > tokenBalanceOf[this]);
    |		_totalSupply += amount;
  > |		tokenBalanceOf[this] += amount;
    |		allowed[this][owner] = tokenBalanceOf[this];
    |		allowed[this][supervisor] = tokenBalanceOf[this];
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(419)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		_totalSupply += amount;
    |		tokenBalanceOf[this] += amount;
  > |		allowed[this][owner] = tokenBalanceOf[this];
    |		allowed[this][supervisor] = tokenBalanceOf[this];
    |		tokenCreated(msg.sender, amount, "Additional tokens created!");
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(420)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		tokenBalanceOf[this] += amount;
    |		allowed[this][owner] = tokenBalanceOf[this];
  > |		allowed[this][supervisor] = tokenBalanceOf[this];
    |		tokenCreated(msg.sender, amount, "Additional tokens created!");
    |	}
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(421)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		require(tokenBalanceOf[this] - amount >= 0);
    |		require(_totalSupply - amount >= 0);
  > |		tokenBalanceOf[this] -= amount;
    |		_totalSupply -= amount;
    |		allowed[this][owner] = tokenBalanceOf[this];
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(433)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		require(_totalSupply - amount >= 0);
    |		tokenBalanceOf[this] -= amount;
  > |		_totalSupply -= amount;
    |		allowed[this][owner] = tokenBalanceOf[this];
    |		allowed[this][supervisor] = tokenBalanceOf[this];
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(434)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		tokenBalanceOf[this] -= amount;
    |		_totalSupply -= amount;
  > |		allowed[this][owner] = tokenBalanceOf[this];
    |		allowed[this][supervisor] = tokenBalanceOf[this];
    |		tokenDestroyed(msg.sender, amount, "An amount of tokens destroyed!");
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(435)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		_totalSupply -= amount;
    |		allowed[this][owner] = tokenBalanceOf[this];
  > |		allowed[this][supervisor] = tokenBalanceOf[this];
    |		tokenDestroyed(msg.sender, amount, "An amount of tokens destroyed!");
    |	}
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(436)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		assert(newOwner != address(0));
    |		address oldOwner = owner;
  > |		owner = newOwner;
    |		ownerChanged(msg.sender, oldOwner, newOwner);
    |		allowed[this][oldOwner] = 0;
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(445)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		owner = newOwner;
    |		ownerChanged(msg.sender, oldOwner, newOwner);
  > |		allowed[this][oldOwner] = 0;
    |		allowed[this][newOwner] = tokenBalanceOf[this];
    |	}
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(447)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		ownerChanged(msg.sender, oldOwner, newOwner);
    |		allowed[this][oldOwner] = 0;
  > |		allowed[this][newOwner] = tokenBalanceOf[this];
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(448)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |	function stopThisIco(bool icoIsStopped) isOwner {
    |		require(icoIsClosed != icoIsStopped);
  > |		icoIsClosed = icoIsStopped;
    |		if(icoIsStopped) {
    |			icoStatusUpdated(msg.sender, "Coin offering was stopped!");
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(479)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |// ----------------------------------------------------------------------------
    |   
  > |   contract SafeMath {
    |    function safeAdd(uint a, uint b) internal pure returns (uint c) {
    |        c = a + b;
  at /home/jiaming/mavs_srcs/contract@0x07678e4c603a26e92962b6e547df99929b708baa.sol(12)


