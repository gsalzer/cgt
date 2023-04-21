Processing contract: /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol:ApproveAndCallFallBack
Processing contract: /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol:METADOLLAR
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol:Owned
Processing contract: /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for DAOConstantGas in contract 'METADOLLAR':
    |		require(msg.value > 0);
    |		commission = msg.value/commissionRate; // % of wei tx
  > |        require(address(this).send(commission));
    |		buyToken();
    |	}
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(198)

[33mWarning[0m for DAOConstantGas in contract 'METADOLLAR':
    |		require(this.balance >= revenue);
    |		commission = msg.value/commissionRate; // % of wei tx
  > |        require(address(this).send(commission));
    |		msg.sender.transfer(revenue);                		// sends ether to the seller: it's important to do this last to prevent recursion attacks
    |	}
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(213)

[33mWarning[0m for DAOConstantGas in contract 'METADOLLAR':
    |		commission = msg.value/commissionRate; // % of wei tx
    |        require(address(this).send(commission));
  > |		msg.sender.transfer(revenue);                		// sends ether to the seller: it's important to do this last to prevent recursion attacks
    |	}
    |	
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(214)

[33mWarning[0m for DAOConstantGas in contract 'METADOLLAR':
    |        require(token.balanceOf(this) >= tokens);
    |        commission = msg.value/commissionRate; // % of wei tx
  > |       require(address(this).send(commission));
    |        token.transfer(msg.sender, tokens);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(224)

[33mWarning[0m for DAOConstantGas in contract 'METADOLLAR':
    |		_transfer(this, sender, amount);
    |		if(moneyBack > 0) {
  > |			sender.transfer(moneyBack);
    |		}
    |	}
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(307)

[33mWarning[0m for DAOConstantGas in contract 'METADOLLAR':
    |		require(contractbalance >= summeInWei);
    |		withdrawed(sender, summeInWei, "wei withdrawed");
  > |        sender.transfer(summeInWei);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(458)

[33mWarning[0m for LockedEther in contract 'METADOLLAR':
    | 
    |
  > |contract METADOLLAR is ERC20Interface, Owned, SafeMath {
    |    
    |    
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(71)

[31mViolation[0m for MissingInputValidation in contract 'METADOLLAR':
    |
    |	//Balances for each account
  > |	mapping (address => uint256) public tokenBalanceOf;
    |
    |	// Owner of account approves the transfer of an amount to another account
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(100)

[31mViolation[0m for MissingInputValidation in contract 'METADOLLAR':
    |
    |	/// @notice What is the balance of a particular account?
  > |	function balanceOf(address _owner) constant returns (uint256 balance) {
    |		return tokenBalanceOf[_owner];
    |	}
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(168)

[31mViolation[0m for MissingInputValidation in contract 'METADOLLAR':
    |
    |	/// @notice Shows how much tokens _spender can spend from _owner address
  > |	function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |		return allowed[_owner][_spender];
    |	}
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(173)

[31mViolation[0m for MissingInputValidation in contract 'METADOLLAR':
    |	/// @notice Shows if account is frozen
    |	/// @param account - Accountaddress to check
  > |	function checkFrozenAccounts(address account) constant returns (bool accountIsFrozen) {
    |		accountIsFrozen = frozenAccount[account];
    |	}
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(189)

[31mViolation[0m for MissingInputValidation in contract 'METADOLLAR':
    |	/// @param account - address to be frozen
    |	/// @param freeze - select is the account frozen or not
  > |	function freezeAccount(address account, bool freeze) isOwner {
    |		require(account != owner);
    |		require(account != supervisor);
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(394)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |
    |contract Owned{
  > |	address public owner;
    |	address constant supervisor  = 0x318B0f768f5c6c567227AA50B51B5b3078902f8C;
    |	
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(51)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	address constant supervisor  = 0x318B0f768f5c6c567227AA50B51B5b3078902f8C;
    |	
  > |	function owned(){
    |		owner = msg.sender;
    |	}
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(54)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |    
    |
  > |	string public constant name = "METADOLLAR";
    |	string public constant symbol = "DOL";
    |	uint public constant decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(75)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |
    |	string public constant name = "METADOLLAR";
  > |	string public constant symbol = "DOL";
    |	uint public constant decimals = 18;
    |	uint256 public _totalSupply = 1000000000000000000000000000000;
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(76)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	string public constant name = "METADOLLAR";
    |	string public constant symbol = "DOL";
  > |	uint public constant decimals = 18;
    |	uint256 public _totalSupply = 1000000000000000000000000000000;
    |	uint256 public icoMin = 1000000000000000;					
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(77)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	string public constant symbol = "DOL";
    |	uint public constant decimals = 18;
  > |	uint256 public _totalSupply = 1000000000000000000000000000000;
    |	uint256 public icoMin = 1000000000000000;					
    |	uint256 public icoLimit = 1000000000000000000000000000000;			
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(78)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	uint public constant decimals = 18;
    |	uint256 public _totalSupply = 1000000000000000000000000000000;
  > |	uint256 public icoMin = 1000000000000000;					
    |	uint256 public icoLimit = 1000000000000000000000000000000;			
    |	uint256 public countHolders = 0;				// count how many unique holders have tokens
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(79)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	uint256 public _totalSupply = 1000000000000000000000000000000;
    |	uint256 public icoMin = 1000000000000000;					
  > |	uint256 public icoLimit = 1000000000000000000000000000000;			
    |	uint256 public countHolders = 0;				// count how many unique holders have tokens
    |	uint256 public amountOfInvestments = 0;	// amount of collected wei
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(80)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	uint256 public icoMin = 1000000000000000;					
    |	uint256 public icoLimit = 1000000000000000000000000000000;			
  > |	uint256 public countHolders = 0;				// count how many unique holders have tokens
    |	uint256 public amountOfInvestments = 0;	// amount of collected wei
    |	
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(81)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	uint256 public icoLimit = 1000000000000000000000000000000;			
    |	uint256 public countHolders = 0;				// count how many unique holders have tokens
  > |	uint256 public amountOfInvestments = 0;	// amount of collected wei
    |	
    |	
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(82)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	
    |	
  > |	uint256 public icoPrice;	
    |	uint256 public dolRate = 1000;
    |	uint256 public ethRate = 1;
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(85)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	
    |	uint256 public icoPrice;	
  > |	uint256 public dolRate = 1000;
    |	uint256 public ethRate = 1;
    |	uint256 public sellRate = 900;
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(86)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	uint256 public icoPrice;	
    |	uint256 public dolRate = 1000;
  > |	uint256 public ethRate = 1;
    |	uint256 public sellRate = 900;
    |	uint256 public commissionRate = 1000;
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(87)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	uint256 public dolRate = 1000;
    |	uint256 public ethRate = 1;
  > |	uint256 public sellRate = 900;
    |	uint256 public commissionRate = 1000;
    |	uint256 public sellPrice;
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(88)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	uint256 public ethRate = 1;
    |	uint256 public sellRate = 900;
  > |	uint256 public commissionRate = 1000;
    |	uint256 public sellPrice;
    |	uint256 public currentTokenPrice;				
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(89)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	uint256 public sellRate = 900;
    |	uint256 public commissionRate = 1000;
  > |	uint256 public sellPrice;
    |	uint256 public currentTokenPrice;				
    |	uint256 public commission;	
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(90)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	uint256 public commissionRate = 1000;
    |	uint256 public sellPrice;
  > |	uint256 public currentTokenPrice;				
    |	uint256 public commission;	
    |	
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(91)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	uint256 public sellPrice;
    |	uint256 public currentTokenPrice;				
  > |	uint256 public commission;	
    |	
    |	
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(92)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	
    |	
  > |	bool public icoIsRunning;
    |	bool public minimalGoalReached;
    |	bool public icoIsClosed;
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(95)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	
    |	bool public icoIsRunning;
  > |	bool public minimalGoalReached;
    |	bool public icoIsClosed;
    |
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(96)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	bool public icoIsRunning;
    |	bool public minimalGoalReached;
  > |	bool public icoIsClosed;
    |
    |	//Balances for each account
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(97)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |
    |	/// @notice Constructor of the contract
  > |	function STARTMETADOLLAR() {
    |		icoIsRunning = true;
    |		minimalGoalReached = false;
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(142)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |
    |	/// @notice Returns a whole amount of tokens
  > |	function totalSupply() constant returns (uint256 totalAmount) {
    |		totalAmount = _totalSupply;
    |	}
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(163)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	/// @notice Calculates amount of weis needed to buy more than one token
    |	/// @param howManyTokenToBuy - Amount of tokens to calculate
  > |	function calculateTheEndPrice(uint256 howManyTokenToBuy) constant returns (uint256 summarizedPriceInWeis) {
    |		if(howManyTokenToBuy > 0) {
    |			summarizedPriceInWeis = howManyTokenToBuy * currentTokenPrice;
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(179)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |
    |	/// @notice Buy tokens from contract by sending ether
  > |	function buy() payable public {
    |		require(!frozenAccount[msg.sender]);
    |		require(msg.value > 0);
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(194)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |   
    |
  > |    function sell2(address _tokenAddress) public payable{
    |        METADOLLAR token = METADOLLAR(_tokenAddress);
    |        uint tokens = msg.value * sellPrice;
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(219)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	/// @notice Allow _spender to withdraw from your account, multiple times, up to the _value amount.
    |	/// @notice If this function is called again it overwrites the current allowance with _value.
  > |	function approve(address _spender, uint256 _value) returns (bool success) {
    |		require(!frozenAccount[msg.sender]);
    |		assert(_spender != address(0));
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(269)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |
    |	/// @notice Check if ICO is ended
  > |	function checkIcoStatus() internal {
    |		if(tokenBalanceOf[this] <= _totalSupply - icoLimit) {
    |			icoIsRunning = false;
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(286)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |
    |	/// @notice Processing each buying
  > |	function buyToken() internal {
    |		uint256 value = msg.value;
    |		address sender = msg.sender;
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(293)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |
    |	/// @notice Internal transfer, can only be called by this contract
  > |	function _transfer(address _from, address _to, uint256 _value) internal {
    |		assert(_from != address(0));
    |		assert(_to != address(0));
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(312)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |
    |	/// @notice Set current ICO prices in wei for one token
  > |	function updatePrices() internal {
    |		uint256 oldPrice = currentTokenPrice;
    |		if(icoIsRunning) {
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(334)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	/// @notice Set the current sell price in wei for one token
    |	/// @param priceInWei - is the amount in wei for one token
  > |	function setSellRate(uint256 priceInWei) isOwner {
    |		require(priceInWei >= 0);
    |		sellRate = priceInWei;
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(363)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	/// @notice Set the current commission rate
    |	/// @param commissionRateInWei - commission rate
  > |	function setCommissionRate(uint256 commissionRateInWei) isOwner {
    |		require(commissionRateInWei >= 0);
    |		commissionRate = commissionRateInWei;
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(370)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	/// @notice Set the current DOL rate in wei for one eth
    |	/// @param dolInWei - is the amount in wei for one ETH
  > |	function setDolRate(uint256 dolInWei) isOwner {
    |		require(dolInWei >= 0);
    |		dolRate = dolInWei;
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(377)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	/// @notice Set the current ETH rate in wei for one DOL
    |	/// @param ethInWei - is the amount in wei for one DOL
  > |	function setEthRate(uint256 ethInWei) isOwner {
    |		require(ethInWei >= 0);
    |		ethRate = ethInWei;
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(384)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	/// @notice Create an amount of token
    |	/// @param amount - token to create
  > |	function mintToken(uint256 amount) isOwner {
    |		require(amount > 0);
    |		require(tokenBalanceOf[this] <= icoMin);	// owner can create token only if the initial amount is strongly not enough to supply and demand ICO
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(407)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	/// @notice Destroy an amount of token
    |	/// @param amount - token to destroy
  > |	function destroyToken(uint256 amount) isOwner {
    |		require(amount > 0);
    |		require(tokenBalanceOf[this] >= amount);
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(421)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	/// @notice Transfer the ownership to another account
    |	/// @param newOwner - address who get the ownership
  > |	function transferOwnership(address newOwner) isOwner {
    |		assert(newOwner != address(0));
    |		address oldOwner = owner;
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(436)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |
    |	/// @notice Transfer all ether from smartcontract to owner
  > |	function collect() isOwner {
    |        require(this.balance > 0);
    |		withdraw(this.balance);
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(446)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |
    |	/// @notice Deposit an amount of ether
  > |	function deposit() payable isOwner {
    |		require(msg.value > 0);
    |		require(msg.sender.balance >= msg.value);
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(462)

[33mWarning[0m for MissingInputValidation in contract 'METADOLLAR':
    |	/// @notice Stop running ICO
    |	/// @param icoIsStopped - status if this ICO is stopped
  > |	function stopThisIco(bool icoIsStopped) isOwner {
    |		require(icoIsClosed != icoIsStopped);
    |		icoIsClosed = icoIsStopped;
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(471)

[31mViolation[0m for TODAmount in contract 'METADOLLAR':
    |		require(msg.value > 0);
    |		commission = msg.value/commissionRate; // % of wei tx
  > |        require(address(this).send(commission));
    |		buyToken();
    |	}
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(198)

[31mViolation[0m for TODAmount in contract 'METADOLLAR':
    |        require(token.balanceOf(this) >= tokens);
    |        commission = msg.value/commissionRate; // % of wei tx
  > |       require(address(this).send(commission));
    |        token.transfer(msg.sender, tokens);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(224)

[31mViolation[0m for TODAmount in contract 'METADOLLAR':
    |		require(contractbalance >= summeInWei);
    |		withdrawed(sender, summeInWei, "wei withdrawed");
  > |        sender.transfer(summeInWei);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(458)

[33mWarning[0m for TODReceiver in contract 'METADOLLAR':
    |		require(msg.value > 0);
    |		commission = msg.value/commissionRate; // % of wei tx
  > |        require(address(this).send(commission));
    |		buyToken();
    |	}
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(198)

[33mWarning[0m for TODReceiver in contract 'METADOLLAR':
    |		require(this.balance >= revenue);
    |		commission = msg.value/commissionRate; // % of wei tx
  > |        require(address(this).send(commission));
    |		msg.sender.transfer(revenue);                		// sends ether to the seller: it's important to do this last to prevent recursion attacks
    |	}
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(213)

[33mWarning[0m for TODReceiver in contract 'METADOLLAR':
    |		commission = msg.value/commissionRate; // % of wei tx
    |        require(address(this).send(commission));
  > |		msg.sender.transfer(revenue);                		// sends ether to the seller: it's important to do this last to prevent recursion attacks
    |	}
    |	
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(214)

[33mWarning[0m for TODReceiver in contract 'METADOLLAR':
    |        require(token.balanceOf(this) >= tokens);
    |        commission = msg.value/commissionRate; // % of wei tx
  > |       require(address(this).send(commission));
    |        token.transfer(msg.sender, tokens);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(224)

[33mWarning[0m for TODReceiver in contract 'METADOLLAR':
    |		require(contractbalance >= summeInWei);
    |		withdrawed(sender, summeInWei, "wei withdrawed");
  > |        sender.transfer(summeInWei);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(458)

[33mWarning[0m for UnhandledException in contract 'METADOLLAR':
    |		require(msg.value > 0);
    |		commission = msg.value/commissionRate; // % of wei tx
  > |        require(address(this).send(commission));
    |		buyToken();
    |	}
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(198)

[33mWarning[0m for UnhandledException in contract 'METADOLLAR':
    |		require(this.balance >= revenue);
    |		commission = msg.value/commissionRate; // % of wei tx
  > |        require(address(this).send(commission));
    |		msg.sender.transfer(revenue);                		// sends ether to the seller: it's important to do this last to prevent recursion attacks
    |	}
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(213)

[33mWarning[0m for UnhandledException in contract 'METADOLLAR':
    |		commission = msg.value/commissionRate; // % of wei tx
    |        require(address(this).send(commission));
  > |		msg.sender.transfer(revenue);                		// sends ether to the seller: it's important to do this last to prevent recursion attacks
    |	}
    |	
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(214)

[33mWarning[0m for UnhandledException in contract 'METADOLLAR':
    |        METADOLLAR token = METADOLLAR(_tokenAddress);
    |        uint tokens = msg.value * sellPrice;
  > |        require(token.balanceOf(this) >= tokens);
    |        commission = msg.value/commissionRate; // % of wei tx
    |       require(address(this).send(commission));
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(222)

[33mWarning[0m for UnhandledException in contract 'METADOLLAR':
    |        require(token.balanceOf(this) >= tokens);
    |        commission = msg.value/commissionRate; // % of wei tx
  > |       require(address(this).send(commission));
    |        token.transfer(msg.sender, tokens);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(224)

[33mWarning[0m for UnhandledException in contract 'METADOLLAR':
    |        commission = msg.value/commissionRate; // % of wei tx
    |       require(address(this).send(commission));
  > |        token.transfer(msg.sender, tokens);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(225)

[33mWarning[0m for UnhandledException in contract 'METADOLLAR':
    |		_transfer(this, sender, amount);
    |		if(moneyBack > 0) {
  > |			sender.transfer(moneyBack);
    |		}
    |	}
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(307)

[33mWarning[0m for UnhandledException in contract 'METADOLLAR':
    |		require(contractbalance >= summeInWei);
    |		withdrawed(sender, summeInWei, "wei withdrawed");
  > |        sender.transfer(summeInWei);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(458)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'METADOLLAR':
    |        METADOLLAR token = METADOLLAR(_tokenAddress);
    |        uint tokens = msg.value * sellPrice;
  > |        require(token.balanceOf(this) >= tokens);
    |        commission = msg.value/commissionRate; // % of wei tx
    |       require(address(this).send(commission));
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(222)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'METADOLLAR':
    |        commission = msg.value/commissionRate; // % of wei tx
    |       require(address(this).send(commission));
  > |        token.transfer(msg.sender, tokens);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(225)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'METADOLLAR':
    |		require(contractbalance >= summeInWei);
    |		withdrawed(sender, summeInWei, "wei withdrawed");
  > |        sender.transfer(summeInWei);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(458)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |	
    |	function owned(){
  > |		owner = msg.sender;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(55)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |	/// @notice Constructor of the contract
    |	function STARTMETADOLLAR() {
  > |		icoIsRunning = true;
    |		minimalGoalReached = false;
    |		icoIsClosed = false;
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(143)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |	function STARTMETADOLLAR() {
    |		icoIsRunning = true;
  > |		minimalGoalReached = false;
    |		icoIsClosed = false;
    |		tokenBalanceOf[this] += _totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(144)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		icoIsRunning = true;
    |		minimalGoalReached = false;
  > |		icoIsClosed = false;
    |		tokenBalanceOf[this] += _totalSupply;
    |		allowed[this][owner] = _totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(145)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		minimalGoalReached = false;
    |		icoIsClosed = false;
  > |		tokenBalanceOf[this] += _totalSupply;
    |		allowed[this][owner] = _totalSupply;
    |		allowed[this][supervisor] = _totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(146)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		icoIsClosed = false;
    |		tokenBalanceOf[this] += _totalSupply;
  > |		allowed[this][owner] = _totalSupply;
    |		allowed[this][supervisor] = _totalSupply;
    |		currentTokenPrice = 1 * 1;	// initial price of 1 Token
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(147)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		tokenBalanceOf[this] += _totalSupply;
    |		allowed[this][owner] = _totalSupply;
  > |		allowed[this][supervisor] = _totalSupply;
    |		currentTokenPrice = 1 * 1;	// initial price of 1 Token
    |		icoPrice = ethRate * dolRate;		
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(148)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		allowed[this][owner] = _totalSupply;
    |		allowed[this][supervisor] = _totalSupply;
  > |		currentTokenPrice = 1 * 1;	// initial price of 1 Token
    |		icoPrice = ethRate * dolRate;		
    |		sellPrice = sellRate * ethRate;
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(149)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		allowed[this][supervisor] = _totalSupply;
    |		currentTokenPrice = 1 * 1;	// initial price of 1 Token
  > |		icoPrice = ethRate * dolRate;		
    |		sellPrice = sellRate * ethRate;
    |		updatePrices();
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(150)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		currentTokenPrice = 1 * 1;	// initial price of 1 Token
    |		icoPrice = ethRate * dolRate;		
  > |		sellPrice = sellRate * ethRate;
    |		updatePrices();
    |	}
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(151)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		require(!frozenAccount[msg.sender]);
    |		require(msg.value > 0);
  > |		commission = msg.value/commissionRate; // % of wei tx
    |        require(address(this).send(commission));
    |		buyToken();
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(197)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		uint256 revenue = amount * sellPrice;
    |		require(this.balance >= revenue);
  > |		commission = msg.value/commissionRate; // % of wei tx
    |        require(address(this).send(commission));
    |		msg.sender.transfer(revenue);                		// sends ether to the seller: it's important to do this last to prevent recursion attacks
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(212)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |        uint tokens = msg.value * sellPrice;
    |        require(token.balanceOf(this) >= tokens);
  > |        commission = msg.value/commissionRate; // % of wei tx
    |       require(address(this).send(commission));
    |        token.transfer(msg.sender, tokens);
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(223)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		orderToTransfer(msg.sender, _from, _to, _value, "Order to transfer tokens from allowed account");
    |		_transfer(_from, _to, _value);
  > |		allowed[_from][msg.sender] -= _value;
    |		return true;
    |	}
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(263)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |	function checkIcoStatus() internal {
    |		if(tokenBalanceOf[this] <= _totalSupply - icoLimit) {
  > |			icoIsRunning = false;
    |		}
    |	}
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(288)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		uint256 moneyBack = value - (amount * sellPrice);
    |		require(tokenBalanceOf[this] >= amount);              		// checks if contract has enough to sell
  > |		amountOfInvestments = amountOfInvestments + (value - moneyBack);
    |		updatePrices();
    |		_transfer(this, sender, amount);
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(303)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		require(!frozenAccount[_to]);
    |		if(tokenBalanceOf[_to] == 0){
  > |			countHolders += 1;
    |		}
    |		tokenBalanceOf[_from] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(321)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |			countHolders += 1;
    |		}
  > |		tokenBalanceOf[_from] -= _value;
    |		if(tokenBalanceOf[_from] == 0){
    |			countHolders -= 1;
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(323)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		tokenBalanceOf[_from] -= _value;
    |		if(tokenBalanceOf[_from] == 0){
  > |			countHolders -= 1;
    |		}
    |		tokenBalanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(325)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |			countHolders -= 1;
    |		}
  > |		tokenBalanceOf[_to] += _value;
    |		allowed[this][owner] = tokenBalanceOf[this];
    |		allowed[this][supervisor] = tokenBalanceOf[this];
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(327)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		}
    |		tokenBalanceOf[_to] += _value;
  > |		allowed[this][owner] = tokenBalanceOf[this];
    |		allowed[this][supervisor] = tokenBalanceOf[this];
    |		Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(328)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		tokenBalanceOf[_to] += _value;
    |		allowed[this][owner] = tokenBalanceOf[this];
  > |		allowed[this][supervisor] = tokenBalanceOf[this];
    |		Transfer(_from, _to, _value);
    |	}
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(329)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		}
    |		if(icoIsRunning) {
  > |			currentTokenPrice = icoPrice;
    |		}else{
    |			currentTokenPrice = icoPrice;
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(340)

[31mViolation[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |			currentTokenPrice = icoPrice;
    |		}else{
  > |			currentTokenPrice = icoPrice;
    |		}
    |		
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(342)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		assert(_spender != address(0));
    |		require(_value >= 0);
  > |		allowed[msg.sender][_spender] = _value;
    |		return true;
    |	}
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(273)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |	function checkIcoStatus() internal {
    |		if(tokenBalanceOf[this] <= _totalSupply - icoLimit) {
  > |			icoIsRunning = false;
    |		}
    |	}
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(288)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		require(priceForIcoInWei > 0);
    |		require(icoPrice != priceForIcoInWei);
  > |		icoPrice = priceForIcoInWei;
    |		updatePrices();
    |	}
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(355)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |	function setSellRate(uint256 priceInWei) isOwner {
    |		require(priceInWei >= 0);
  > |		sellRate = priceInWei;
    |	}
    |	
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(365)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |	function setCommissionRate(uint256 commissionRateInWei) isOwner {
    |		require(commissionRateInWei >= 0);
  > |		commissionRate = commissionRateInWei;
    |	}
    |	
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(372)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |	function setDolRate(uint256 dolInWei) isOwner {
    |		require(dolInWei >= 0);
  > |		dolRate = dolInWei;
    |	}
    |	
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(379)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |	function setEthRate(uint256 ethInWei) isOwner {
    |		require(ethInWei >= 0);
  > |		ethRate = ethInWei;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(386)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		require(account != owner);
    |		require(account != supervisor);
  > |		frozenAccount[account] = freeze;
    |		if(freeze) {
    |			FrozenFunds(msg.sender, account, "Account set frozen!");
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(397)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		require(_totalSupply + amount > _totalSupply);
    |		require(tokenBalanceOf[this] + amount > tokenBalanceOf[this]);
  > |		_totalSupply += amount;
    |		tokenBalanceOf[this] += amount;
    |		allowed[this][owner] = tokenBalanceOf[this];
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(412)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		require(tokenBalanceOf[this] + amount > tokenBalanceOf[this]);
    |		_totalSupply += amount;
  > |		tokenBalanceOf[this] += amount;
    |		allowed[this][owner] = tokenBalanceOf[this];
    |		allowed[this][supervisor] = tokenBalanceOf[this];
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(413)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		_totalSupply += amount;
    |		tokenBalanceOf[this] += amount;
  > |		allowed[this][owner] = tokenBalanceOf[this];
    |		allowed[this][supervisor] = tokenBalanceOf[this];
    |		tokenCreated(msg.sender, amount, "Additional tokens created!");
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(414)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		tokenBalanceOf[this] += amount;
    |		allowed[this][owner] = tokenBalanceOf[this];
  > |		allowed[this][supervisor] = tokenBalanceOf[this];
    |		tokenCreated(msg.sender, amount, "Additional tokens created!");
    |	}
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(415)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		require(tokenBalanceOf[this] - amount >= 0);
    |		require(_totalSupply - amount >= 0);
  > |		tokenBalanceOf[this] -= amount;
    |		_totalSupply -= amount;
    |		allowed[this][owner] = tokenBalanceOf[this];
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(427)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		require(_totalSupply - amount >= 0);
    |		tokenBalanceOf[this] -= amount;
  > |		_totalSupply -= amount;
    |		allowed[this][owner] = tokenBalanceOf[this];
    |		allowed[this][supervisor] = tokenBalanceOf[this];
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(428)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		tokenBalanceOf[this] -= amount;
    |		_totalSupply -= amount;
  > |		allowed[this][owner] = tokenBalanceOf[this];
    |		allowed[this][supervisor] = tokenBalanceOf[this];
    |		tokenDestroyed(msg.sender, amount, "An amount of tokens destroyed!");
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(429)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		_totalSupply -= amount;
    |		allowed[this][owner] = tokenBalanceOf[this];
  > |		allowed[this][supervisor] = tokenBalanceOf[this];
    |		tokenDestroyed(msg.sender, amount, "An amount of tokens destroyed!");
    |	}
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(430)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		assert(newOwner != address(0));
    |		address oldOwner = owner;
  > |		owner = newOwner;
    |		ownerChanged(msg.sender, oldOwner, newOwner);
    |		allowed[this][oldOwner] = 0;
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(439)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		owner = newOwner;
    |		ownerChanged(msg.sender, oldOwner, newOwner);
  > |		allowed[this][oldOwner] = 0;
    |		allowed[this][newOwner] = tokenBalanceOf[this];
    |	}
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(441)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |		ownerChanged(msg.sender, oldOwner, newOwner);
    |		allowed[this][oldOwner] = 0;
  > |		allowed[this][newOwner] = tokenBalanceOf[this];
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(442)

[33mWarning[0m for UnrestrictedWrite in contract 'METADOLLAR':
    |	function stopThisIco(bool icoIsStopped) isOwner {
    |		require(icoIsClosed != icoIsStopped);
  > |		icoIsClosed = icoIsStopped;
    |		if(icoIsStopped) {
    |			icoStatusUpdated(msg.sender, "Coin offering was stopped!");
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(473)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |// ----------------------------------------------------------------------------
    |   
  > |   contract SafeMath {
    |    function safeAdd(uint a, uint b) internal pure returns (uint c) {
    |        c = a + b;
  at /home/jiaming/mavs_srcs/contract@0x24a7de87b3bd7298bbf8966fdf170c558d69ecc4.sol(12)


