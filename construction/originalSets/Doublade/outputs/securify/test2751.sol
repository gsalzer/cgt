Processing contract: /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol:CasinoBank
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol:EdgelessCasino
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol:Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol:chargingGas
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol:mortal
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol:owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for DAO in contract 'CasinoBank':
    |		uint newBalance = safeAdd(balanceOf[receiver], value);
    |		require(newBalance <= maxDeposit);
  > |		assert(edg.transferFrom(msg.sender, address(this), numTokens));
    |		balanceOf[receiver] = newBalance;
    |		playerBalance = safeAdd(playerBalance, value);
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(189)

[33mWarning[0m for DAO in contract 'CasinoBank':
    |		balanceOf[msg.sender]=safeSub(balanceOf[msg.sender],value);
    |		playerBalance = safeSub(playerBalance, value);
  > |		assert(edg.transfer(msg.sender, amount));
    |		Withdrawal(msg.sender, msg.sender, amount);
    |	}
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(222)

[33mWarning[0m for DAO in contract 'CasinoBank':
    |	function withdrawBankroll(uint numTokens) public onlyOwner {
    |		require(numTokens <= bankroll());
  > |		assert(edg.transfer(owner, numTokens));
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(232)

[33mWarning[0m for LockedEther in contract 'CasinoBank':
    |}
    |
  > |contract CasinoBank is chargingGas{
    |	/** the total balance of all players with 5 virtual decimals **/
    |	uint public playerBalance;
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(150)

[31mViolation[0m for MissingInputValidation in contract 'CasinoBank':
    |  }
    |
  > |  function changeOwner(address newOwner) onlyOwner public{
    |    owner = newOwner;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(47)

[31mViolation[0m for MissingInputValidation in contract 'CasinoBank':
    |	uint public gasPrice;
    |	/** the amount of gas used per transaction in kGas */
  > |	mapping(bytes4 => uint) public gasPerTx;
    |	
    |	/**
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(94)

[31mViolation[0m for MissingInputValidation in contract 'CasinoBank':
    |	* @param price the new gas price (4 decimals, max 0.0256 EDG)
    |	**/
  > |	function setGasPrice(uint8 price) public onlyOwner{
    |		gasPrice = price;
    |	}
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(129)

[31mViolation[0m for MissingInputValidation in contract 'CasinoBank':
    |	uint public playerBalance;
    |	/** the balance per player in edgeless tokens with 5 virtual decimals */
  > |	mapping(address=>uint) public balanceOf;
    |	/** in case the user wants/needs to call the withdraw function from his own wallet, he first needs to request a withdrawal */
    |	mapping(address=>uint) public withdrawAfter;
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(154)

[31mViolation[0m for MissingInputValidation in contract 'CasinoBank':
    |	mapping(address=>uint) public balanceOf;
    |	/** in case the user wants/needs to call the withdraw function from his own wallet, he first needs to request a withdrawal */
  > |	mapping(address=>uint) public withdrawAfter;
    |	/** the edgeless token contract */
    |	Token edg;
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(156)

[31mViolation[0m for MissingInputValidation in contract 'CasinoBank':
    |	* @param newMax the new maximum deposit (5 decimals)
    |	**/
  > |	function setMaxDeposit(uint newMax) public onlyOwner{
    |		maxDeposit = newMax;
    |	}
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(247)

[33mWarning[0m for MissingInputValidation in contract 'CasinoBank':
    |contract SafeMath {
    |
  > |	function safeSub(uint a, uint b) pure internal returns(uint) {
    |		assert(b <= a);
    |		return a - b;
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(12)

[33mWarning[0m for MissingInputValidation in contract 'CasinoBank':
    |	}
    |
  > |	function safeAdd(uint a, uint b) pure internal returns(uint) {
    |		uint c = a + b;
    |		assert(c >= a && c >= b);
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'CasinoBank':
    |	}
    |
  > |	function safeMul(uint a, uint b) pure internal returns (uint) {
    |    uint c = a * b;
    |    assert(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(29)

[33mWarning[0m for MissingInputValidation in contract 'CasinoBank':
    |
    |contract owned {
  > |  address public owner;
    |  modifier onlyOwner {
    |    require(msg.sender == owner);
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(37)

[33mWarning[0m for MissingInputValidation in contract 'CasinoBank':
    |contract mortal is owned {
    |	/** contract can be closed by the owner anytime after this timestamp if non-zero */
  > |	uint public closeAt;
    |	/**
    |	* lets the owner close the contract if there are no player funds on it or if nobody has been using it for at least 30 days
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(55)

[33mWarning[0m for MissingInputValidation in contract 'CasinoBank':
    |	* lets the owner close the contract if there are no player funds on it or if nobody has been using it for at least 30 days
    |	*/
  > |  function closeContract(uint playerBalance) internal{
    |		if(playerBalance == 0) selfdestruct(owner);
    |		if(closeAt == 0) closeAt = now + 30 days;
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(59)

[33mWarning[0m for MissingInputValidation in contract 'CasinoBank':
    |	* in case close has been called accidentally.
    |	**/
  > |	function open() onlyOwner public{
    |		closeAt = 0;
    |	}
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(68)

[33mWarning[0m for MissingInputValidation in contract 'CasinoBank':
    |contract chargingGas is mortal, SafeMath{
    |  /** the price per kgas and GWei in tokens (5 decimals) */
  > |	uint public gasPrice;
    |	/** the amount of gas used per transaction in kGas */
    |	mapping(bytes4 => uint) public gasPerTx;
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(92)

[33mWarning[0m for MissingInputValidation in contract 'CasinoBank':
    |	 * @param value the value to subtract the gas cost from
    |	 * */
  > |	function subtractGas(uint value) internal constant returns(uint){
    |  	return safeSub(value,getGasCost());
    |	}
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(120)

[33mWarning[0m for MissingInputValidation in contract 'CasinoBank':
    |	 * returns the gas cost of the called function.
    |	 * */
  > |	function getGasCost() internal constant returns(uint){
    |	  return safeMul(safeMul(gasPerTx[msg.sig], gasPrice), tx.gasprice)/1000000000;
    |	}
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(136)

[33mWarning[0m for MissingInputValidation in contract 'CasinoBank':
    |contract CasinoBank is chargingGas{
    |	/** the total balance of all players with 5 virtual decimals **/
  > |	uint public playerBalance;
    |	/** the balance per player in edgeless tokens with 5 virtual decimals */
    |	mapping(address=>uint) public balanceOf;
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(152)

[33mWarning[0m for MissingInputValidation in contract 'CasinoBank':
    |	Token edg;
    |	/** the maximum amount of tokens the user is allowed to deposit (5 decimals) */
  > |	uint public maxDeposit;
    |	/** waiting time for withdrawal if not requested via the server **/
    |	uint public waitingTime;
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(160)

[33mWarning[0m for MissingInputValidation in contract 'CasinoBank':
    |	uint public maxDeposit;
    |	/** waiting time for withdrawal if not requested via the server **/
  > |	uint public waitingTime;
    |	
    |	/** informs listeners how many tokens were deposited for a player */
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(162)

[33mWarning[0m for MissingInputValidation in contract 'CasinoBank':
    |	* Reason: The user should not be able to withdraw his funds, while the the last game methods have not yet been mined.
    |	**/
  > |	function requestWithdrawal() public{
    |		withdrawAfter[msg.sender] = now + waitingTime;
    |	}
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(200)

[33mWarning[0m for MissingInputValidation in contract 'CasinoBank':
    |	* Necessary to be able to continue playing.
    |	**/
  > |	function cancelWithdrawalRequest() public{
    |		withdrawAfter[msg.sender] = 0;
    |	}
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(208)

[33mWarning[0m for MissingInputValidation in contract 'CasinoBank':
    |	* returns the current bankroll in tokens with 0 decimals
    |	**/
  > |	function bankroll() constant public returns(uint){
    |		return safeSub(edg.balanceOf(address(this)), playerBalance/100000);
    |	}
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(238)

[33mWarning[0m for MissingInputValidation in contract 'CasinoBank':
    |	 * @param newWaitingTime the new waiting time in seconds
    |	 * */
  > |	function setWaitingTime(uint newWaitingTime) public onlyOwner{
    |		require(newWaitingTime <= 24 hours);
    |		waitingTime = newWaitingTime;
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(256)

[33mWarning[0m for MissingInputValidation in contract 'CasinoBank':
    |	 * lets the owner close the contract if there are no player funds on it or if nobody has been using it for at least 30 days
    |	 * */
  > |	function close() public onlyOwner{
    |		closeContract(playerBalance);
    |	}
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(264)

[33mWarning[0m for UnhandledException in contract 'CasinoBank':
    |		uint newBalance = safeAdd(balanceOf[receiver], value);
    |		require(newBalance <= maxDeposit);
  > |		assert(edg.transferFrom(msg.sender, address(this), numTokens));
    |		balanceOf[receiver] = newBalance;
    |		playerBalance = safeAdd(playerBalance, value);
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(189)

[33mWarning[0m for UnhandledException in contract 'CasinoBank':
    |		balanceOf[msg.sender]=safeSub(balanceOf[msg.sender],value);
    |		playerBalance = safeSub(playerBalance, value);
  > |		assert(edg.transfer(msg.sender, amount));
    |		Withdrawal(msg.sender, msg.sender, amount);
    |	}
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(222)

[33mWarning[0m for UnhandledException in contract 'CasinoBank':
    |	function withdrawBankroll(uint numTokens) public onlyOwner {
    |		require(numTokens <= bankroll());
  > |		assert(edg.transfer(owner, numTokens));
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(232)

[33mWarning[0m for UnhandledException in contract 'CasinoBank':
    |	**/
    |	function bankroll() constant public returns(uint){
  > |		return safeSub(edg.balanceOf(address(this)), playerBalance/100000);
    |	}
    |	
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(239)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CasinoBank':
    |	**/
    |	function bankroll() constant public returns(uint){
  > |		return safeSub(edg.balanceOf(address(this)), playerBalance/100000);
    |	}
    |	
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(239)

[31mViolation[0m for UnrestrictedWrite in contract 'CasinoBank':
    |  function closeContract(uint playerBalance) internal{
    |		if(playerBalance == 0) selfdestruct(owner);
  > |		if(closeAt == 0) closeAt = now + 30 days;
    |		else if(closeAt < now) selfdestruct(owner);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(61)

[31mViolation[0m for UnrestrictedWrite in contract 'CasinoBank':
    |	**/
    |	modifier keepAlive {
  > |		if(closeAt > 0) closeAt = now + 30 days;
    |		_;
    |	}
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(84)

[31mViolation[0m for UnrestrictedWrite in contract 'CasinoBank':
    |		assert(edg.transferFrom(msg.sender, address(this), numTokens));
    |		balanceOf[receiver] = newBalance;
  > |		playerBalance = safeAdd(playerBalance, value);
    |		Deposit(receiver, numTokens, chargeGas);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(191)

[31mViolation[0m for UnrestrictedWrite in contract 'CasinoBank':
    |		withdrawAfter[msg.sender] = 0;
    |		uint value = safeMul(amount,100000);
  > |		balanceOf[msg.sender]=safeSub(balanceOf[msg.sender],value);
    |		playerBalance = safeSub(playerBalance, value);
    |		assert(edg.transfer(msg.sender, amount));
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(220)

[31mViolation[0m for UnrestrictedWrite in contract 'CasinoBank':
    |		uint value = safeMul(amount,100000);
    |		balanceOf[msg.sender]=safeSub(balanceOf[msg.sender],value);
  > |		playerBalance = safeSub(playerBalance, value);
    |		assert(edg.transfer(msg.sender, amount));
    |		Withdrawal(msg.sender, msg.sender, amount);
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(221)

[33mWarning[0m for UnrestrictedWrite in contract 'CasinoBank':
    |	**/
    |	function requestWithdrawal() public{
  > |		withdrawAfter[msg.sender] = now + waitingTime;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(201)

[33mWarning[0m for UnrestrictedWrite in contract 'CasinoBank':
    |	**/
    |	function cancelWithdrawalRequest() public{
  > |		withdrawAfter[msg.sender] = 0;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(209)

[33mWarning[0m for UnrestrictedWrite in contract 'CasinoBank':
    |	function withdraw(uint amount) public keepAlive{
    |		require(withdrawAfter[msg.sender]>0 && now>withdrawAfter[msg.sender]);
  > |		withdrawAfter[msg.sender] = 0;
    |		uint value = safeMul(amount,100000);
    |		balanceOf[msg.sender]=safeSub(balanceOf[msg.sender],value);
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(218)

[33mWarning[0m for UnrestrictedWrite in contract 'CasinoBank':
    |
    |  function changeOwner(address newOwner) onlyOwner public{
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(48)

[33mWarning[0m for UnrestrictedWrite in contract 'CasinoBank':
    |  function closeContract(uint playerBalance) internal{
    |		if(playerBalance == 0) selfdestruct(owner);
  > |		if(closeAt == 0) closeAt = now + 30 days;
    |		else if(closeAt < now) selfdestruct(owner);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(61)

[33mWarning[0m for UnrestrictedWrite in contract 'CasinoBank':
    |	**/
    |	function open() onlyOwner public{
  > |		closeAt = 0;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(69)

[33mWarning[0m for UnrestrictedWrite in contract 'CasinoBank':
    |	**/
    |	function setGasPrice(uint8 price) public onlyOwner{
  > |		gasPrice = price;
    |	}
    |	
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(130)

[33mWarning[0m for UnrestrictedWrite in contract 'CasinoBank':
    |	**/
    |	function setMaxDeposit(uint newMax) public onlyOwner{
  > |		maxDeposit = newMax;
    |	}
    |	
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(248)

[33mWarning[0m for UnrestrictedWrite in contract 'CasinoBank':
    |	function setWaitingTime(uint newWaitingTime) public onlyOwner{
    |		require(newWaitingTime <= 24 hours);
  > |		waitingTime = newWaitingTime;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(258)

[31mViolation[0m for LockedEther in contract 'EdgelessCasino':
    |}
    |
  > |contract EdgelessCasino is CasinoBank{
    |	/** indicates if an address is authorized to act in the casino's name  */
    |    mapping(address => bool) public authorized;
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(269)

[33mWarning[0m for UnhandledException in contract 'EdgelessCasino':
    |		uint newBalance = safeAdd(balanceOf[receiver], value);
    |		require(newBalance <= maxDeposit);
  > |		assert(edg.transferFrom(msg.sender, address(this), numTokens));
    |		balanceOf[receiver] = newBalance;
    |		playerBalance = safeAdd(playerBalance, value);
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(189)

[33mWarning[0m for UnhandledException in contract 'EdgelessCasino':
    |		balanceOf[msg.sender]=safeSub(balanceOf[msg.sender],value);
    |		playerBalance = safeSub(playerBalance, value);
  > |		assert(edg.transfer(msg.sender, amount));
    |		Withdrawal(msg.sender, msg.sender, amount);
    |	}
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(222)

[33mWarning[0m for UnhandledException in contract 'EdgelessCasino':
    |	function withdrawBankroll(uint numTokens) public onlyOwner {
    |		require(numTokens <= bankroll());
  > |		assert(edg.transfer(owner, numTokens));
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(232)

[33mWarning[0m for UnhandledException in contract 'EdgelessCasino':
    |	**/
    |	function bankroll() constant public returns(uint){
  > |		return safeSub(edg.balanceOf(address(this)), playerBalance/100000);
    |	}
    |	
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(239)

[33mWarning[0m for UnhandledException in contract 'EdgelessCasino':
    |  **/
    |  function withdrawFor(address receiver, uint amount, uint8 v, bytes32 r, bytes32 s) public onlyAuthorized keepAlive{
  > |	var player = ecrecover(keccak256(receiver, amount, withdrawCount[receiver]), v, r, s);
    |	withdrawCount[receiver]++;
    |	uint value = addGas(safeMul(amount,100000));
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(317)

[33mWarning[0m for UnhandledException in contract 'EdgelessCasino':
    |    balanceOf[player] = safeSub(balanceOf[player], value);
    |	playerBalance = safeSub(playerBalance, value);
  > |    assert(edg.transfer(receiver, amount));
    |	Withdrawal(player, receiver, amount);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(322)

[33mWarning[0m for UnhandledException in contract 'EdgelessCasino':
    |  	uint gasCost = 0;
    |  	if(player == msg.sender)//if the player closes the state channel himself, make sure the signer is a casino wallet
  > |  		require(authorized[ecrecover(keccak256(player, winBalance, gameCount), v, r, s)]);
    |  	else//if the casino wallet is the sender, subtract the gas costs from the player balance
    |  		gasCost = getGasCost();
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(356)

[33mWarning[0m for UnhandledException in contract 'EdgelessCasino':
    |  function determinePlayer(int128 winBalance, uint128 gameCount, uint8 v, bytes32 r, bytes32 s) constant internal returns(address){
    |  	if (authorized[msg.sender])//casino is the sender -> player is the signer
  > |  		return ecrecover(keccak256(winBalance, gameCount), v, r, s);
    |  	else
    |  		return msg.sender;
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(374)

[33mWarning[0m for UnhandledException in contract 'EdgelessCasino':
    |  function determinePlayer(bytes32[] serverSeeds, bytes32[] clientSeeds, int[] results, uint8 v, bytes32 r, bytes32 s) constant internal returns(address){
    |  	if (authorized[msg.sender])//casino is the sender -> player is the signer
  > |  		return ecrecover(keccak256(serverSeeds, clientSeeds, results), v, r, s);
    |  	else
    |  		return msg.sender;
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(430)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EdgelessCasino':
    |		uint newBalance = safeAdd(balanceOf[receiver], value);
    |		require(newBalance <= maxDeposit);
  > |		assert(edg.transferFrom(msg.sender, address(this), numTokens));
    |		balanceOf[receiver] = newBalance;
    |		playerBalance = safeAdd(playerBalance, value);
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(189)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EdgelessCasino':
    |		balanceOf[msg.sender]=safeSub(balanceOf[msg.sender],value);
    |		playerBalance = safeSub(playerBalance, value);
  > |		assert(edg.transfer(msg.sender, amount));
    |		Withdrawal(msg.sender, msg.sender, amount);
    |	}
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(222)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EdgelessCasino':
    |	function withdrawBankroll(uint numTokens) public onlyOwner {
    |		require(numTokens <= bankroll());
  > |		assert(edg.transfer(owner, numTokens));
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(232)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EdgelessCasino':
    |	**/
    |	function bankroll() constant public returns(uint){
  > |		return safeSub(edg.balanceOf(address(this)), playerBalance/100000);
    |	}
    |	
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(239)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EdgelessCasino':
    |  **/
    |  function withdrawFor(address receiver, uint amount, uint8 v, bytes32 r, bytes32 s) public onlyAuthorized keepAlive{
  > |	var player = ecrecover(keccak256(receiver, amount, withdrawCount[receiver]), v, r, s);
    |	withdrawCount[receiver]++;
    |	uint value = addGas(safeMul(amount,100000));
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(317)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EdgelessCasino':
    |    balanceOf[player] = safeSub(balanceOf[player], value);
    |	playerBalance = safeSub(playerBalance, value);
  > |    assert(edg.transfer(receiver, amount));
    |	Withdrawal(player, receiver, amount);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(322)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EdgelessCasino':
    |  	uint gasCost = 0;
    |  	if(player == msg.sender)//if the player closes the state channel himself, make sure the signer is a casino wallet
  > |  		require(authorized[ecrecover(keccak256(player, winBalance, gameCount), v, r, s)]);
    |  	else//if the casino wallet is the sender, subtract the gas costs from the player balance
    |  		gasCost = getGasCost();
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(356)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EdgelessCasino':
    |  function determinePlayer(int128 winBalance, uint128 gameCount, uint8 v, bytes32 r, bytes32 s) constant internal returns(address){
    |  	if (authorized[msg.sender])//casino is the sender -> player is the signer
  > |  		return ecrecover(keccak256(winBalance, gameCount), v, r, s);
    |  	else
    |  		return msg.sender;
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(374)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EdgelessCasino':
    |  function determinePlayer(bytes32[] serverSeeds, bytes32[] clientSeeds, int[] results, uint8 v, bytes32 r, bytes32 s) constant internal returns(address){
    |  	if (authorized[msg.sender])//casino is the sender -> player is the signer
  > |  		return ecrecover(keccak256(serverSeeds, clientSeeds, results), v, r, s);
    |  	else
    |  		return msg.sender;
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(430)

[33mWarning[0m for UnrestrictedWrite in contract 'EdgelessCasino':
    |
    |  function changeOwner(address newOwner) onlyOwner public{
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(48)

[33mWarning[0m for UnrestrictedWrite in contract 'EdgelessCasino':
    |  function closeContract(uint playerBalance) internal{
    |		if(playerBalance == 0) selfdestruct(owner);
  > |		if(closeAt == 0) closeAt = now + 30 days;
    |		else if(closeAt < now) selfdestruct(owner);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(61)

[33mWarning[0m for UnrestrictedWrite in contract 'EdgelessCasino':
    |	**/
    |	function open() onlyOwner public{
  > |		closeAt = 0;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(69)

[33mWarning[0m for UnrestrictedWrite in contract 'EdgelessCasino':
    |	**/
    |	function setGasPrice(uint8 price) public onlyOwner{
  > |		gasPrice = price;
    |	}
    |	
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(130)

[33mWarning[0m for UnrestrictedWrite in contract 'EdgelessCasino':
    |		require(newBalance <= maxDeposit);
    |		assert(edg.transferFrom(msg.sender, address(this), numTokens));
  > |		balanceOf[receiver] = newBalance;
    |		playerBalance = safeAdd(playerBalance, value);
    |		Deposit(receiver, numTokens, chargeGas);
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(190)

[33mWarning[0m for UnrestrictedWrite in contract 'EdgelessCasino':
    |		assert(edg.transferFrom(msg.sender, address(this), numTokens));
    |		balanceOf[receiver] = newBalance;
  > |		playerBalance = safeAdd(playerBalance, value);
    |		Deposit(receiver, numTokens, chargeGas);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(191)

[33mWarning[0m for UnrestrictedWrite in contract 'EdgelessCasino':
    |	**/
    |	function requestWithdrawal() public{
  > |		withdrawAfter[msg.sender] = now + waitingTime;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(201)

[33mWarning[0m for UnrestrictedWrite in contract 'EdgelessCasino':
    |	**/
    |	function cancelWithdrawalRequest() public{
  > |		withdrawAfter[msg.sender] = 0;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(209)

[33mWarning[0m for UnrestrictedWrite in contract 'EdgelessCasino':
    |	function withdraw(uint amount) public keepAlive{
    |		require(withdrawAfter[msg.sender]>0 && now>withdrawAfter[msg.sender]);
  > |		withdrawAfter[msg.sender] = 0;
    |		uint value = safeMul(amount,100000);
    |		balanceOf[msg.sender]=safeSub(balanceOf[msg.sender],value);
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(218)

[33mWarning[0m for UnrestrictedWrite in contract 'EdgelessCasino':
    |		withdrawAfter[msg.sender] = 0;
    |		uint value = safeMul(amount,100000);
  > |		balanceOf[msg.sender]=safeSub(balanceOf[msg.sender],value);
    |		playerBalance = safeSub(playerBalance, value);
    |		assert(edg.transfer(msg.sender, amount));
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(220)

[33mWarning[0m for UnrestrictedWrite in contract 'EdgelessCasino':
    |		uint value = safeMul(amount,100000);
    |		balanceOf[msg.sender]=safeSub(balanceOf[msg.sender],value);
  > |		playerBalance = safeSub(playerBalance, value);
    |		assert(edg.transfer(msg.sender, amount));
    |		Withdrawal(msg.sender, msg.sender, amount);
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(221)

[33mWarning[0m for UnrestrictedWrite in contract 'EdgelessCasino':
    |	**/
    |	function setMaxDeposit(uint newMax) public onlyOwner{
  > |		maxDeposit = newMax;
    |	}
    |	
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(248)

[33mWarning[0m for UnrestrictedWrite in contract 'EdgelessCasino':
    |	function setWaitingTime(uint newWaitingTime) public onlyOwner{
    |		require(newWaitingTime <= 24 hours);
  > |		waitingTime = newWaitingTime;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(258)

[33mWarning[0m for UnrestrictedWrite in contract 'EdgelessCasino':
    |	withdrawCount[receiver]++;
    |	uint value = addGas(safeMul(amount,100000));
  > |    balanceOf[player] = safeSub(balanceOf[player], value);
    |	playerBalance = safeSub(playerBalance, value);
    |    assert(edg.transfer(receiver, amount));
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(320)

[33mWarning[0m for UnrestrictedWrite in contract 'EdgelessCasino':
    |	uint value = addGas(safeMul(amount,100000));
    |    balanceOf[player] = safeSub(balanceOf[player], value);
  > |	playerBalance = safeSub(playerBalance, value);
    |    assert(edg.transfer(receiver, amount));
    |	Withdrawal(player, receiver, amount);
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(321)

[33mWarning[0m for UnrestrictedWrite in contract 'EdgelessCasino':
    |  **/
    |  function authorize(address addr) public onlyOwner{
  > |    authorized[addr] = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(331)

[33mWarning[0m for UnrestrictedWrite in contract 'EdgelessCasino':
    |  **/
    |  function deauthorize(address addr) public onlyOwner{
  > |    authorized[addr] = false;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(339)

[33mWarning[0m for UnrestrictedWrite in contract 'EdgelessCasino':
    |  	require(gameCount > last.count);
    |  	int difference = updatePlayerBalance(player, winBalance, last.winBalance, gasCost);
  > |  	lastState[player] = State(gameCount, winBalance);
    |  	StateUpdate(gameCount, winBalance, difference, gasCost, player, last.count);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(362)

[33mWarning[0m for UnrestrictedWrite in contract 'EdgelessCasino':
    |  	if(outstanding < 0){
    |  		outs = uint256(outstanding * (-1));
  > |  		playerBalance = safeSub(playerBalance, outs);
    |  		balanceOf[player] = safeSub(balanceOf[player], outs);
    |  	}
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(393)

[33mWarning[0m for UnrestrictedWrite in contract 'EdgelessCasino':
    |  		outs = uint256(outstanding * (-1));
    |  		playerBalance = safeSub(playerBalance, outs);
  > |  		balanceOf[player] = safeSub(balanceOf[player], outs);
    |  	}
    |  	else{
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(394)

[33mWarning[0m for UnrestrictedWrite in contract 'EdgelessCasino':
    |  	else{
    |  		outs = uint256(outstanding);
  > |  	  playerBalance = safeAdd(playerBalance, outs);
    |  	  balanceOf[player] = safeAdd(balanceOf[player], outs);
    |  	}
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(398)

[33mWarning[0m for UnrestrictedWrite in contract 'EdgelessCasino':
    |  		outs = uint256(outstanding);
    |  	  playerBalance = safeAdd(playerBalance, outs);
  > |  	  balanceOf[player] = safeAdd(balanceOf[player], outs);
    |  	}
    |  }
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(399)

[33mWarning[0m for UnrestrictedWrite in contract 'EdgelessCasino':
    |    if(player != msg.sender){
    |      uint gasCost = (57 + 768 * serverSeeds.length / 1000)*gasPrice;
  > |      balanceOf[player] = safeSub(balanceOf[player], gasCost);
    |      playerBalance = safeSub(playerBalance, gasCost);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(416)

[33mWarning[0m for UnrestrictedWrite in contract 'EdgelessCasino':
    |      uint gasCost = (57 + 768 * serverSeeds.length / 1000)*gasPrice;
    |      balanceOf[player] = safeSub(balanceOf[player], gasCost);
  > |      playerBalance = safeSub(playerBalance, gasCost);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(417)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.17;
    |
  > |contract SafeMath {
    |
    |	function safeSub(uint a, uint b) pure internal returns(uint) {
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(10)

[33mWarning[0m for LockedEther in contract 'Token':
    |}
    |
  > |contract Token {
    |	function transferFrom(address sender, address receiver, uint amount) public returns(bool success) {}
    |
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(142)

[33mWarning[0m for LockedEther in contract 'chargingGas':
    |
    |
  > |contract chargingGas is mortal, SafeMath{
    |  /** the price per kgas and GWei in tokens (5 decimals) */
    |	uint public gasPrice;
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(90)

[31mViolation[0m for MissingInputValidation in contract 'chargingGas':
    |  }
    |
  > |  function changeOwner(address newOwner) onlyOwner public{
    |    owner = newOwner;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(47)

[31mViolation[0m for MissingInputValidation in contract 'chargingGas':
    |	uint public gasPrice;
    |	/** the amount of gas used per transaction in kGas */
  > |	mapping(bytes4 => uint) public gasPerTx;
    |	
    |	/**
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(94)

[31mViolation[0m for MissingInputValidation in contract 'chargingGas':
    |	* @param price the new gas price (4 decimals, max 0.0256 EDG)
    |	**/
  > |	function setGasPrice(uint8 price) public onlyOwner{
    |		gasPrice = price;
    |	}
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(129)

[33mWarning[0m for MissingInputValidation in contract 'chargingGas':
    |
    |contract owned {
  > |  address public owner;
    |  modifier onlyOwner {
    |    require(msg.sender == owner);
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(37)

[33mWarning[0m for MissingInputValidation in contract 'chargingGas':
    |contract mortal is owned {
    |	/** contract can be closed by the owner anytime after this timestamp if non-zero */
  > |	uint public closeAt;
    |	/**
    |	* lets the owner close the contract if there are no player funds on it or if nobody has been using it for at least 30 days
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(55)

[33mWarning[0m for MissingInputValidation in contract 'chargingGas':
    |	* in case close has been called accidentally.
    |	**/
  > |	function open() onlyOwner public{
    |		closeAt = 0;
    |	}
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(68)

[33mWarning[0m for MissingInputValidation in contract 'chargingGas':
    |contract chargingGas is mortal, SafeMath{
    |  /** the price per kgas and GWei in tokens (5 decimals) */
  > |	uint public gasPrice;
    |	/** the amount of gas used per transaction in kGas */
    |	mapping(bytes4 => uint) public gasPerTx;
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(92)

[33mWarning[0m for UnrestrictedWrite in contract 'chargingGas':
    |
    |  function changeOwner(address newOwner) onlyOwner public{
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(48)

[33mWarning[0m for UnrestrictedWrite in contract 'chargingGas':
    |	**/
    |	function open() onlyOwner public{
  > |		closeAt = 0;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(69)

[33mWarning[0m for UnrestrictedWrite in contract 'chargingGas':
    |	**/
    |	function setGasPrice(uint8 price) public onlyOwner{
  > |		gasPrice = price;
    |	}
    |	
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(130)

[33mWarning[0m for LockedEther in contract 'mortal':
    |
    |/** owner should be able to close the contract is nobody has been using it for at least 30 days */
  > |contract mortal is owned {
    |	/** contract can be closed by the owner anytime after this timestamp if non-zero */
    |	uint public closeAt;
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(53)

[31mViolation[0m for MissingInputValidation in contract 'mortal':
    |  }
    |
  > |  function changeOwner(address newOwner) onlyOwner public{
    |    owner = newOwner;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(47)

[33mWarning[0m for MissingInputValidation in contract 'mortal':
    |
    |contract owned {
  > |  address public owner;
    |  modifier onlyOwner {
    |    require(msg.sender == owner);
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(37)

[33mWarning[0m for MissingInputValidation in contract 'mortal':
    |contract mortal is owned {
    |	/** contract can be closed by the owner anytime after this timestamp if non-zero */
  > |	uint public closeAt;
    |	/**
    |	* lets the owner close the contract if there are no player funds on it or if nobody has been using it for at least 30 days
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(55)

[33mWarning[0m for MissingInputValidation in contract 'mortal':
    |	* in case close has been called accidentally.
    |	**/
  > |	function open() onlyOwner public{
    |		closeAt = 0;
    |	}
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(68)

[33mWarning[0m for UnrestrictedWrite in contract 'mortal':
    |
    |  function changeOwner(address newOwner) onlyOwner public{
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(48)

[33mWarning[0m for UnrestrictedWrite in contract 'mortal':
    |	**/
    |	function open() onlyOwner public{
  > |		closeAt = 0;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(69)

[33mWarning[0m for LockedEther in contract 'owned':
    |}
    |
  > |contract owned {
    |  address public owner;
    |  modifier onlyOwner {
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(36)

[31mViolation[0m for MissingInputValidation in contract 'owned':
    |  }
    |
  > |  function changeOwner(address newOwner) onlyOwner public{
    |    owner = newOwner;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(47)

[33mWarning[0m for MissingInputValidation in contract 'owned':
    |
    |contract owned {
  > |  address public owner;
    |  modifier onlyOwner {
    |    require(msg.sender == owner);
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(37)

[33mWarning[0m for UnrestrictedWrite in contract 'owned':
    |
    |  function changeOwner(address newOwner) onlyOwner public{
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xb442e7315d24bb120ddfc778612116dd5c90dc46.sol(48)


