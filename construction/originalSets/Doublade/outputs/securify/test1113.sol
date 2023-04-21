Processing contract: /home/jiaming/mavs_srcs/contract@0x4648f996d538676a11870fbe52d53c4de0423609.sol:BankrollLending
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4648f996d538676a11870fbe52d53c4de0423609.sol:Casino
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4648f996d538676a11870fbe52d53c4de0423609.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4648f996d538676a11870fbe52d53c4de0423609.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4648f996d538676a11870fbe52d53c4de0423609.sol:Token
[31mViolation[0m for DAO in contract 'BankrollLending':
    |   * */
    |  function withdrawFor(address to, uint value, uint index, uint8 v, bytes32 r, bytes32 s) public onlyAuthorized withdrawPhase{
  > |    address from = ecrecover(keccak256(to, value, cycle), v, r, s);
    |    makeWithdrawal(from, to, value, index);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4648f996d538676a11870fbe52d53c4de0423609.sol(317)

[33mWarning[0m for DAO in contract 'BankrollLending':
    |    if(allowedMax > 0){//if allowedMax > 0 the caller is the user himself
    |      require(newStake <= allowedMax);
  > |      assert(token.transferFrom(to, address(this), value));
    |    }
    |    if(stakes[to] == 0){
  at /home/jiaming/mavs_srcs/contract@0x4648f996d538676a11870fbe52d53c4de0423609.sol(219)

[33mWarning[0m for DAO in contract 'BankrollLending':
    |    initialStakes[cycle] = totalStakes;
    |    totalStakes = 0; //withdrawals are unlocked until this value is > 0 again and the final stakes have been set
  > |    assert(token.transfer(address(casino), initialStakes[cycle]));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4648f996d538676a11870fbe52d53c4de0423609.sol(236)

[33mWarning[0m for DAO in contract 'BankrollLending':
    |    }
    |    totalStakes = safeSub(totalStakes, value);
  > |    assert(token.transfer(to, safeSub(value, withdrawGasCost)));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4648f996d538676a11870fbe52d53c4de0423609.sol(341)

[33mWarning[0m for DAO in contract 'BankrollLending':
    |  function withdrawExcess() public onlyAuthorized {
    |    uint value = safeSub(tokenBalance(), totalStakes);
  > |    token.transfer(owner, value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4648f996d538676a11870fbe52d53c4de0423609.sol(351)

[33mWarning[0m for DAO in contract 'BankrollLending':
    |   * */
    |  function tokenBalance() public view returns(uint) {
  > |    return token.balanceOf(address(this));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4648f996d538676a11870fbe52d53c4de0423609.sol(367)

[33mWarning[0m for DAO in contract 'BankrollLending':
    |   * */
    |  function verifySignature(address to, uint value, uint8 v, bytes32 r, bytes32 s) internal view returns(bool) {
  > |    address signer = ecrecover(keccak256(to, value, cycle), v, r, s);
    |    return casino.authorized(signer);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4648f996d538676a11870fbe52d53c4de0423609.sol(409)

[33mWarning[0m for DAO in contract 'BankrollLending':
    |  function verifySignature(address to, uint value, uint8 v, bytes32 r, bytes32 s) internal view returns(bool) {
    |    address signer = ecrecover(keccak256(to, value, cycle), v, r, s);
  > |    return casino.authorized(signer);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4648f996d538676a11870fbe52d53c4de0423609.sol(410)

[33mWarning[0m for LockedEther in contract 'BankrollLending':
    |}
    |
  > |contract BankrollLending is Owned, SafeMath {
    |  /** The set of lending contracts state phases **/
    |  enum StatePhases { deposit, bankroll, update, withdraw }
  at /home/jiaming/mavs_srcs/contract@0x4648f996d538676a11870fbe52d53c4de0423609.sol(59)

[31mViolation[0m for MissingInputValidation in contract 'BankrollLending':
    |  }
    |
  > |  function changeOwner(address newOwner) onlyOwner public {
    |    owner = newOwner;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4648f996d538676a11870fbe52d53c4de0423609.sol(34)

[31mViolation[0m for MissingInputValidation in contract 'BankrollLending':
    |  Token public token;
    |  /** The sum of the initial stakes per cycle **/
  > |  mapping(uint => uint) public initialStakes;
    |  /** The sum of the final stakes per cycle **/
    |  mapping(uint => uint) public finalStakes;
  at /home/jiaming/mavs_srcs/contract@0x4648f996d538676a11870fbe52d53c4de0423609.sol(69)

[31mViolation[0m for MissingInputValidation in contract 'BankrollLending':
    |  mapping(uint => uint) public initialStakes;
    |  /** The sum of the final stakes per cycle **/
  > |  mapping(uint => uint) public finalStakes;
    |  /** The sum of the user stakes currently on the contract **/
    |  uint public totalStakes; //note: uint is enough because the Edgeless Token Contract has 0 decimals and a total supply of 132,046,997 EDG
  at /home/jiaming/mavs_srcs/contract@0x4648f996d538676a11870fbe52d53c4de0423609.sol(71)

[31mViolation[0m for MissingInputValidation in contract 'BankrollLending':
    |  address[] public stakeholders;
    |  /** Stake per user address **/
  > |  mapping(address => uint) public stakes;
    |  /** the gas cost if the casino helps the user with the deposit in full EDG **/
    |  uint8 public depositGasCost;
  at /home/jiaming/mavs_srcs/contract@0x4648f996d538676a11870fbe52d53c4de0423609.sol(79)

[31mViolation[0m for MissingInputValidation in contract 'BankrollLending':
    |   * @param casinoAddr the new casino contract address
    |   * */
  > |  function setCasinoAddress(address casinoAddr) public onlyOwner {
    |    casino = Casino(casinoAddr);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4648f996d538676a11870fbe52d53c4de0423609.sol(116)

[31mViolation[0m for MissingInputValidation in contract 'BankrollLending':
    |   * @param gasCost the new deposit gas cost
    |   * */
  > |  function setDepositGasCost(uint8 gasCost) public onlyAuthorized {
    |    depositGasCost = gasCost;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4648f996d538676a11870fbe52d53c4de0423609.sol(124)

[31mViolation[0m for MissingInputValidation in contract 'BankrollLending':
    |   * @param gasCost the new withdraw gas cost
    |   * */
  > |  function setWithdrawGasCost(uint8 gasCost) public onlyAuthorized {
    |    withdrawGasCost = gasCost;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4648f996d538676a11870fbe52d53c4de0423609.sol(132)

[31mViolation[0m for MissingInputValidation in contract 'BankrollLending':
    |   * @param gasCost the new update gas cost
    |   * */
  > |  function setUpdateGasCost(uint gasCost) public onlyAuthorized {
    |    updateGasCost = gasCost;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4648f996d538676a11870fbe52d53c4de0423609.sol(140)

[31mViolation[0m for MissingInputValidation in contract 'BankrollLending':
    |   * @param newMax the new maximum
    |   * */
  > |  function setMaxUpdates(uint newMax) public onlyAuthorized{
    |    maxUpdates = newMax;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4648f996d538676a11870fbe52d53c4de0423609.sol(148)

[31mViolation[0m for MissingInputValidation in contract 'BankrollLending':
    |   * @param amount the new minimum
    |   * */
  > |  function setMinStakingAmount(uint amount) public onlyAuthorized {
    |    minStakingAmount = amount;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4648f996d538676a11870fbe52d53c4de0423609.sol(156)

[31mViolation[0m for MissingInputValidation in contract 'BankrollLending':
    |   * @param newMax the new maximum
    |   * */
  > |  function setMaxBatchAssignment(uint newMax) public onlyAuthorized {
    |    maxBatchAssignment = newMax;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4648f996d538676a11870fbe52d53c4de0423609.sol(164)

[33mWarning[0m for MissingInputValidation in contract 'BankrollLending':
    |
    |contract Owned {
  > |  address public owner;
    |  modifier onlyOwner {
    |    require(msg.sender == owner);
  at /home/jiaming/mavs_srcs/contract@0x4648f996d538676a11870fbe52d53c4de0423609.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'BankrollLending':
    |contract SafeMath {
    |
  > |	function safeSub(uint a, uint b) pure internal returns(uint) {
    |		assert(b <= a);
    |		return a - b;
  at /home/jiaming/mavs_srcs/contract@0x4648f996d538676a11870fbe52d53c4de0423609.sol(41)

[33mWarning[0m for MissingInputValidation in contract 'BankrollLending':
    |	}
    |
  > |	function safeAdd(uint a, uint b) pure internal returns(uint) {
    |		uint c = a + b;
    |		assert(c >= a && c >= b);
  at /home/jiaming/mavs_srcs/contract@0x4648f996d538676a11870fbe52d53c4de0423609.sol(46)

[33mWarning[0m for MissingInputValidation in contract 'BankrollLending':
    |	}
    |
  > |	function safeMul(uint a, uint b) pure internal returns (uint) {
    |    uint c = a * b;
    |    assert(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0x4648f996d538676a11870fbe52d53c4de0423609.sol(52)

[33mWarning[0m for MissingInputValidation in contract 'BankrollLending':
    |  enum StatePhases { deposit, bankroll, update, withdraw }
    |  /** The number of the current cycle. Increases by 1 each month.**/
  > |  uint public cycle;
    |  /** The address of the casino contract.**/
    |  Casino public casino;
  at /home/jiaming/mavs_srcs/contract@0x4648f996d538676a11870fbe52d53c4de0423609.sol(63)

[33mWarning[0m for MissingInputValidation in contract 'BankrollLending':
    |  uint public cycle;
    |  /** The address of the casino contract.**/
  > |  Casino public casino;
    |  /** The Edgeless casino token contract **/
    |  Token public token;
  at /home/jiaming/mavs_srcs/contract@0x4648f996d538676a11870fbe52d53c4de0423609.sol(65)

[33mWarning[0m for MissingInputValidation in contract 'BankrollLending':
    |  Casino public casino;
    |  /** The Edgeless casino token contract **/
  > |  Token public token;
    |  /** The sum of the initial stakes per cycle **/
    |  mapping(uint => uint) public initialStakes;
  at /home/jiaming/mavs_srcs/contract@0x4648f996d538676a11870fbe52d53c4de0423609.sol(67)

[33mWarning[0m for MissingInputValidation in contract 'BankrollLending':
    |  mapping(uint => uint) public finalStakes;
    |  /** The sum of the user stakes currently on the contract **/
  > |  uint public totalStakes; //note: uint is enough because the Edgeless Token Contract has 0 decimals and a total supply of 132,046,997 EDG
    |  /** the number of stake holders **/
    |  uint public numHolders;
  at /home/jiaming/mavs_srcs/contract@0x4648f996d538676a11870fbe52d53c4de0423609.sol(73)

[33mWarning[0m for MissingInputValidation in contract 'BankrollLending':
    |  uint public totalStakes; //note: uint is enough because the Edgeless Token Contract has 0 decimals and a total supply of 132,046,997 EDG
    |  /** the number of stake holders **/
  > |  uint public numHolders;
    |  /** List of all stakeholders **/
    |  address[] public stakeholders;
  at /home/jiaming/mavs_srcs/contract@0x4648f996d538676a11870fbe52d53c4de0423609.sol(75)

[33mWarning[0m for MissingInputValidation in contract 'BankrollLending':
    |  uint public numHolders;
    |  /** List of all stakeholders **/
  > |  address[] public stakeholders;
    |  /** Stake per user address **/
    |  mapping(address => uint) public stakes;
  at /home/jiaming/mavs_srcs/contract@0x4648f996d538676a11870fbe52d53c4de0423609.sol(77)

[33mWarning[0m for MissingInputValidation in contract 'BankrollLending':
    |  mapping(address => uint) public stakes;
    |  /** the gas cost if the casino helps the user with the deposit in full EDG **/
  > |  uint8 public depositGasCost;
    |  /** the gas cost if the casino helps the user with the withdrawal in full EDG **/
    |  uint8 public withdrawGasCost;
  at /home/jiaming/mavs_srcs/contract@0x4648f996d538676a11870fbe52d53c4de0423609.sol(81)

[33mWarning[0m for MissingInputValidation in contract 'BankrollLending':
    |  uint8 public depositGasCost;
    |  /** the gas cost if the casino helps the user with the withdrawal in full EDG **/
  > |  uint8 public withdrawGasCost;
    |  /** the gas cost for balance update at the end of the cycle per user in EDG with 2 decimals
    |  * (updates are made for all users at once, so it's possible to subtract all gas costs from the paid back tokens before
  at /home/jiaming/mavs_srcs/contract@0x4648f996d538676a11870fbe52d53c4de0423609.sol(83)

[33mWarning[0m for MissingInputValidation in contract 'BankrollLending':
    |  * (updates are made for all users at once, so it's possible to subtract all gas costs from the paid back tokens before
    |  * setting the final stakes of the cycle.) **/
  > |  uint public updateGasCost;
    |  /** The minimum staking amount required **/
    |  uint public minStakingAmount;
  at /home/jiaming/mavs_srcs/contract@0x4648f996d538676a11870fbe52d53c4de0423609.sol(87)

[33mWarning[0m for MissingInputValidation in contract 'BankrollLending':
    |  uint public updateGasCost;
    |  /** The minimum staking amount required **/
  > |  uint public minStakingAmount;
    |  /** The maximum number of addresses to process in one batch of stake updates **/
    |  uint public maxUpdates; 
  at /home/jiaming/mavs_srcs/contract@0x4648f996d538676a11870fbe52d53c4de0423609.sol(89)

[33mWarning[0m for MissingInputValidation in contract 'BankrollLending':
    |  uint public minStakingAmount;
    |  /** The maximum number of addresses to process in one batch of stake updates **/
  > |  uint public maxUpdates; 
    |  /** The maximum number of addresses that can be assigned in one batch **/
    |  uint public maxBatchAssignment;
  at /home/jiaming/mavs_srcs/contract@0x4648f996d538676a11870fbe52d53c4de0423609.sol(91)

[33mWarning[0m for MissingInputValidation in contract 'BankrollLending':
    |  uint public maxUpdates; 
    |  /** The maximum number of addresses that can be assigned in one batch **/
  > |  uint public maxBatchAssignment;
    |  /** remembers the last index updated per cycle **/
    |  mapping(uint => uint) lastUpdateIndex;
  at /home/jiaming/mavs_srcs/contract@0x4648f996d538676a11870fbe52d53c4de0423609.sol(93)

[33mWarning[0m for MissingInputValidation in contract 'BankrollLending':
    |   *        allowedMax the maximum amount a user may stake (0 in case the casino is making the assignment)
    |   * */
  > |  function addDeposit(address to, uint value, uint numSH, uint allowedMax) internal returns (bool newHolder) {
    |    require(value > 0);
    |    uint newStake = safeSub(safeAdd(stakes[to], value), depositGasCost);
  at /home/jiaming/mavs_srcs/contract@0x4648f996d538676a11870fbe52d53c4de0423609.sol(213)

[33mWarning[0m for MissingInputValidation in contract 'BankrollLending':
    |   * Callabe only once per cycle and only after a cycle was started.
    |   * */
  > |  function useAsBankroll() public onlyAuthorized depositPhase {
    |    initialStakes[cycle] = totalStakes;
    |    totalStakes = 0; //withdrawals are unlocked until this value is > 0 again and the final stakes have been set
  at /home/jiaming/mavs_srcs/contract@0x4648f996d538676a11870fbe52d53c4de0423609.sol(233)

[33mWarning[0m for MissingInputValidation in contract 'BankrollLending':
    |   * Initiates the next cycle. Callabe only once per cycle and only after the last one was closed.
    |   * */
  > |  function startNextCycle() public onlyAuthorized {
    |    // make sure the last cycle was closed, can be called in update or withdraw phase
    |    require(finalStakes[cycle] > 0);
  at /home/jiaming/mavs_srcs/contract@0x4648f996d538676a11870fbe52d53c4de0423609.sol(242)

[33mWarning[0m for MissingInputValidation in contract 'BankrollLending':
    |   * As soon as the last stake has been updated, withdrawals are unlocked by setting the totalStakes to the height of final stakes of the cycle.
    |   * */
  > |  function updateUserShares() public onlyAuthorized updatePhase {
    |    uint limit = safeAdd(lastUpdateIndex[cycle], maxUpdates);
    |    if(limit >= numHolders) {
  at /home/jiaming/mavs_srcs/contract@0x4648f996d538676a11870fbe52d53c4de0423609.sol(266)

[33mWarning[0m for MissingInputValidation in contract 'BankrollLending':
    |  * @param value the number of tokens to release
    |  **/
  > |  function unlockWithdrawals(uint value) public onlyOwner {
    |    require(value <= tokenBalance());
    |    totalStakes = value;
  at /home/jiaming/mavs_srcs/contract@0x4648f996d538676a11870fbe52d53c4de0423609.sol(291)

[33mWarning[0m for MissingInputValidation in contract 'BankrollLending':
    |   *        index the index of the message sender in the stakeholder array (save gas costs by not looking it up on the contract)
    |   * */
  > |  function makeWithdrawal(address from, address to, uint value, uint index) internal{
    |    if(value == stakes[from]){
    |      stakes[from] = 0;
  at /home/jiaming/mavs_srcs/contract@0x4648f996d538676a11870fbe52d53c4de0423609.sol(328)

[33mWarning[0m for MissingInputValidation in contract 'BankrollLending':
    |   * without the approval of the casino.
    |   * */
  > |  function withdrawExcess() public onlyAuthorized {
    |    uint value = safeSub(tokenBalance(), totalStakes);
    |    token.transfer(owner, value);
  at /home/jiaming/mavs_srcs/contract@0x4648f996d538676a11870fbe52d53c4de0423609.sol(349)

[33mWarning[0m for MissingInputValidation in contract 'BankrollLending':
    |   * @return the current token balance of the contract.
    |   * */
  > |  function tokenBalance() public view returns(uint) {
    |    return token.balanceOf(address(this));
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4648f996d538676a11870fbe52d53c4de0423609.sol(366)

[33mWarning[0m for MissingInputValidation in contract 'BankrollLending':
    |  *        numSH  the current number of stakeholders
    |  **/
  > |  function addHolder(address holder, uint numSH) internal{
    |    if(numSH < stakeholders.length)
    |      stakeholders[numSH] = holder;
  at /home/jiaming/mavs_srcs/contract@0x4648f996d538676a11870fbe52d53c4de0423609.sol(375)

[33mWarning[0m for MissingInputValidation in contract 'BankrollLending':
    |  *        index  the index of the holder
    |  **/
  > |  function removeHolder(address holder, uint index) internal{
    |    require(stakeholders[index] == holder);
    |    numHolders = safeSub(numHolders, 1);
  at /home/jiaming/mavs_srcs/contract@0x4648f996d538676a11870fbe52d53c4de0423609.sol(387)

[33mWarning[0m for MissingInputValidation in contract 'BankrollLending':
    |   * @return finalStake  the final number of tokens the user receives
    |   * */
  > |  function computeFinalStake(uint initialStake) internal view returns(uint) {
    |    return safeMul(initialStake, finalStakes[cycle]) / initialStakes[cycle];
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4648f996d538676a11870fbe52d53c4de0423609.sol(398)

[33mWarning[0m for MissingInputValidation in contract 'BankrollLending':
    |   *        v, r, s the signature of an authorized wallet
    |   * */
  > |  function verifySignature(address to, uint value, uint8 v, bytes32 r, bytes32 s) internal view returns(bool) {
    |    address signer = ecrecover(keccak256(to, value, cycle), v, r, s);
    |    return casino.authorized(signer);
  at /home/jiaming/mavs_srcs/contract@0x4648f996d538676a11870fbe52d53c4de0423609.sol(408)

[33mWarning[0m for MissingInputValidation in contract 'BankrollLending':
    |   * @return current state phase
    |   * */
  > |  function getPhase() internal view returns (StatePhases) {
    |    if (initialStakes[cycle] == 0) {
    |      return StatePhases.deposit;
  at /home/jiaming/mavs_srcs/contract@0x4648f996d538676a11870fbe52d53c4de0423609.sol(417)

[33mWarning[0m for UnhandledException in contract 'BankrollLending':
    |    if(allowedMax > 0){//if allowedMax > 0 the caller is the user himself
    |      require(newStake <= allowedMax);
  > |      assert(token.transferFrom(to, address(this), value));
    |    }
    |    if(stakes[to] == 0){
  at /home/jiaming/mavs_srcs/contract@0x4648f996d538676a11870fbe52d53c4de0423609.sol(219)

[33mWarning[0m for UnhandledException in contract 'BankrollLending':
    |    initialStakes[cycle] = totalStakes;
    |    totalStakes = 0; //withdrawals are unlocked until this value is > 0 again and the final stakes have been set
  > |    assert(token.transfer(address(casino), initialStakes[cycle]));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4648f996d538676a11870fbe52d53c4de0423609.sol(236)

[33mWarning[0m for UnhandledException in contract 'BankrollLending':
    |   * */
    |  function withdrawFor(address to, uint value, uint index, uint8 v, bytes32 r, bytes32 s) public onlyAuthorized withdrawPhase{
  > |    address from = ecrecover(keccak256(to, value, cycle), v, r, s);
    |    makeWithdrawal(from, to, value, index);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4648f996d538676a11870fbe52d53c4de0423609.sol(317)

[33mWarning[0m for UnhandledException in contract 'BankrollLending':
    |    }
    |    totalStakes = safeSub(totalStakes, value);
  > |    assert(token.transfer(to, safeSub(value, withdrawGasCost)));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4648f996d538676a11870fbe52d53c4de0423609.sol(341)

[33mWarning[0m for UnhandledException in contract 'BankrollLending':
    |  function withdrawExcess() public onlyAuthorized {
    |    uint value = safeSub(tokenBalance(), totalStakes);
  > |    token.transfer(owner, value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4648f996d538676a11870fbe52d53c4de0423609.sol(351)

[33mWarning[0m for UnhandledException in contract 'BankrollLending':
    |   * */
    |  function tokenBalance() public view returns(uint) {
  > |    return token.balanceOf(address(this));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4648f996d538676a11870fbe52d53c4de0423609.sol(367)

[33mWarning[0m for UnhandledException in contract 'BankrollLending':
    |   * */
    |  function verifySignature(address to, uint value, uint8 v, bytes32 r, bytes32 s) internal view returns(bool) {
  > |    address signer = ecrecover(keccak256(to, value, cycle), v, r, s);
    |    return casino.authorized(signer);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4648f996d538676a11870fbe52d53c4de0423609.sol(409)

[33mWarning[0m for UnhandledException in contract 'BankrollLending':
    |  function verifySignature(address to, uint value, uint8 v, bytes32 r, bytes32 s) internal view returns(bool) {
    |    address signer = ecrecover(keccak256(to, value, cycle), v, r, s);
  > |    return casino.authorized(signer);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4648f996d538676a11870fbe52d53c4de0423609.sol(410)

[33mWarning[0m for UnhandledException in contract 'BankrollLending':
    |  //check if the sender is an authorized casino wallet
    |  modifier onlyAuthorized {
  > |    require(casino.authorized(msg.sender));
    |    _;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4648f996d538676a11870fbe52d53c4de0423609.sol(430)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BankrollLending':
    |   * */
    |  function tokenBalance() public view returns(uint) {
  > |    return token.balanceOf(address(this));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4648f996d538676a11870fbe52d53c4de0423609.sol(367)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BankrollLending':
    |  //check if the sender is an authorized casino wallet
    |  modifier onlyAuthorized {
  > |    require(casino.authorized(msg.sender));
    |    _;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4648f996d538676a11870fbe52d53c4de0423609.sol(430)

[31mViolation[0m for UnrestrictedWrite in contract 'BankrollLending':
    |/**
  > | * Allows EDG token holders to lend the Edgeless Casino tokens for the bankroll.
    | * Users may pay in their tokens at any time, but they will only be used for the bankroll
    | * begining from the next cycle. When the cycle is closed (at the end of the month), they may
  at /home/jiaming/mavs_srcs/contract@0x4648f996d538676a11870fbe52d53c4de0423609.sol(2)

[31mViolation[0m for UnrestrictedWrite in contract 'BankrollLending':
    |   * */
    |  function setDepositGasCost(uint8 gasCost) public onlyAuthorized {
  > |    depositGasCost = gasCost;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4648f996d538676a11870fbe52d53c4de0423609.sol(125)

[31mViolation[0m for UnrestrictedWrite in contract 'BankrollLending':
    |   * */
    |  function setWithdrawGasCost(uint8 gasCost) public onlyAuthorized {
  > |    withdrawGasCost = gasCost;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4648f996d538676a11870fbe52d53c4de0423609.sol(133)

[31mViolation[0m for UnrestrictedWrite in contract 'BankrollLending':
    |   * */
    |  function setUpdateGasCost(uint gasCost) public onlyAuthorized {
  > |    updateGasCost = gasCost;
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0x4648f996d538676a11870fbe52d53c4de0423609.sol(141)

[31mViolation[0m for UnrestrictedWrite in contract 'BankrollLending':
    |   * */
    |  function setMaxUpdates(uint newMax) public onlyAuthorized{
  > |    maxUpdates = newMax;
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0x4648f996d538676a11870fbe52d53c4de0423609.sol(149)

[31mViolation[0m for UnrestrictedWrite in contract 'BankrollLending':
    |   * */
    |  function setMinStakingAmount(uint amount) public onlyAuthorized {
  > |    minStakingAmount = amount;
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0x4648f996d538676a11870fbe52d53c4de0423609.sol(157)

[31mViolation[0m for UnrestrictedWrite in contract 'BankrollLending':
    |   * */
    |  function setMaxBatchAssignment(uint newMax) public onlyAuthorized {
  > |    maxBatchAssignment = newMax;
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0x4648f996d538676a11870fbe52d53c4de0423609.sol(165)

[31mViolation[0m for UnrestrictedWrite in contract 'BankrollLending':
    |    require(verifySignature(msg.sender, allowedMax, v, r, s));
    |    if (addDeposit(msg.sender, value, numHolders, allowedMax))
  > |      numHolders = safeAdd(numHolders, 1);
    |    totalStakes = safeSub(safeAdd(totalStakes, value), depositGasCost);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4648f996d538676a11870fbe52d53c4de0423609.sol(179)

[31mViolation[0m for UnrestrictedWrite in contract 'BankrollLending':
    |    if (addDeposit(msg.sender, value, numHolders, allowedMax))
    |      numHolders = safeAdd(numHolders, 1);
  > |    totalStakes = safeSub(safeAdd(totalStakes, value), depositGasCost);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4648f996d538676a11870fbe52d53c4de0423609.sol(180)

[31mViolation[0m for UnrestrictedWrite in contract 'BankrollLending':
    |        numSH = safeAdd(numSH, 1);//save gas costs by increasing a memory variable instead of the storage variable per iteration
    |    }
  > |    numHolders = numSH;
    |    //rollback if more tokens have been assigned than the contract possesses
    |    assert(newTotalStakes < tokenBalance());
  at /home/jiaming/mavs_srcs/contract@0x4648f996d538676a11870fbe52d53c4de0423609.sol(200)

[31mViolation[0m for UnrestrictedWrite in contract 'BankrollLending':
    |    //rollback if more tokens have been assigned than the contract possesses
    |    assert(newTotalStakes < tokenBalance());
  > |    totalStakes = newTotalStakes;
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0x4648f996d538676a11870fbe52d53c4de0423609.sol(203)

[31mViolation[0m for UnrestrictedWrite in contract 'BankrollLending':
    |      newHolder = true;
    |    }
  > |    stakes[to] = newStake;
    |    emit StakeUpdate(to, newStake);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4648f996d538676a11870fbe52d53c4de0423609.sol(225)

[31mViolation[0m for UnrestrictedWrite in contract 'BankrollLending':
    |   * */
    |  function useAsBankroll() public onlyAuthorized depositPhase {
  > |    initialStakes[cycle] = totalStakes;
    |    totalStakes = 0; //withdrawals are unlocked until this value is > 0 again and the final stakes have been set
    |    assert(token.transfer(address(casino), initialStakes[cycle]));
  at /home/jiaming/mavs_srcs/contract@0x4648f996d538676a11870fbe52d53c4de0423609.sol(234)

[31mViolation[0m for UnrestrictedWrite in contract 'BankrollLending':
    |  function useAsBankroll() public onlyAuthorized depositPhase {
    |    initialStakes[cycle] = totalStakes;
  > |    totalStakes = 0; //withdrawals are unlocked until this value is > 0 again and the final stakes have been set
    |    assert(token.transfer(address(casino), initialStakes[cycle]));
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4648f996d538676a11870fbe52d53c4de0423609.sol(235)

[31mViolation[0m for UnrestrictedWrite in contract 'BankrollLending':
    |    // make sure the last cycle was closed, can be called in update or withdraw phase
    |    require(finalStakes[cycle] > 0);
  > |    cycle = safeAdd(cycle, 1);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4648f996d538676a11870fbe52d53c4de0423609.sol(245)

[31mViolation[0m for UnrestrictedWrite in contract 'BankrollLending':
    |  function closeCycle(uint value) public onlyAuthorized bankrollPhase {
    |    require(tokenBalance() >= value);
  > |    finalStakes[cycle] = safeSub(value, safeMul(updateGasCost, numHolders)/100);//updateGasCost is using 2 decimals
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4648f996d538676a11870fbe52d53c4de0423609.sol(255)

[31mViolation[0m for UnrestrictedWrite in contract 'BankrollLending':
    |    if(limit >= numHolders) {
    |      limit = numHolders;
  > |      totalStakes = finalStakes[cycle]; //enable withdrawals after this method call was processed
    |      if (cycle > 1) {
    |        lastUpdateIndex[cycle - 1] = 0;
  at /home/jiaming/mavs_srcs/contract@0x4648f996d538676a11870fbe52d53c4de0423609.sol(270)

[31mViolation[0m for UnrestrictedWrite in contract 'BankrollLending':
    |      totalStakes = finalStakes[cycle]; //enable withdrawals after this method call was processed
    |      if (cycle > 1) {
  > |        lastUpdateIndex[cycle - 1] = 0;
    |      }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4648f996d538676a11870fbe52d53c4de0423609.sol(272)

[31mViolation[0m for UnrestrictedWrite in contract 'BankrollLending':
    |      holder = stakeholders[i];
    |      newStake = computeFinalStake(stakes[holder]);
  > |      stakes[holder] = newStake;
    |      emit StakeUpdate(holder, newStake);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4648f996d538676a11870fbe52d53c4de0423609.sol(280)

[31mViolation[0m for UnrestrictedWrite in contract 'BankrollLending':
    |      emit StakeUpdate(holder, newStake);
    |    }
  > |    lastUpdateIndex[cycle] = limit;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4648f996d538676a11870fbe52d53c4de0423609.sol(283)

[31mViolation[0m for UnrestrictedWrite in contract 'BankrollLending':
    |  function unlockWithdrawals(uint value) public onlyOwner {
    |    require(value <= tokenBalance());
  > |    totalStakes = value;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4648f996d538676a11870fbe52d53c4de0423609.sol(293)

[31mViolation[0m for UnrestrictedWrite in contract 'BankrollLending':
    |  function makeWithdrawal(address from, address to, uint value, uint index) internal{
    |    if(value == stakes[from]){
  > |      stakes[from] = 0;
    |      removeHolder(from, index);
    |      emit StakeUpdate(from, 0);
  at /home/jiaming/mavs_srcs/contract@0x4648f996d538676a11870fbe52d53c4de0423609.sol(330)

[31mViolation[0m for UnrestrictedWrite in contract 'BankrollLending':
    |      uint newStake = safeSub(stakes[from], value);
    |      require(newStake >= minStakingAmount);
  > |      stakes[from] = newStake;
    |      emit StakeUpdate(from, newStake);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4648f996d538676a11870fbe52d53c4de0423609.sol(337)

[31mViolation[0m for UnrestrictedWrite in contract 'BankrollLending':
    |      emit StakeUpdate(from, newStake);
    |    }
  > |    totalStakes = safeSub(totalStakes, value);
    |    assert(token.transfer(to, safeSub(value, withdrawGasCost)));
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4648f996d538676a11870fbe52d53c4de0423609.sol(340)

[31mViolation[0m for UnrestrictedWrite in contract 'BankrollLending':
    |  function addHolder(address holder, uint numSH) internal{
    |    if(numSH < stakeholders.length)
  > |      stakeholders[numSH] = holder;
    |    else
    |      stakeholders.push(holder);
  at /home/jiaming/mavs_srcs/contract@0x4648f996d538676a11870fbe52d53c4de0423609.sol(377)

[31mViolation[0m for UnrestrictedWrite in contract 'BankrollLending':
    |      stakeholders[numSH] = holder;
    |    else
  > |      stakeholders.push(holder);
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0x4648f996d538676a11870fbe52d53c4de0423609.sol(379)

[31mViolation[0m for UnrestrictedWrite in contract 'BankrollLending':
    |  function removeHolder(address holder, uint index) internal{
    |    require(stakeholders[index] == holder);
  > |    numHolders = safeSub(numHolders, 1);
    |    stakeholders[index] = stakeholders[numHolders];
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4648f996d538676a11870fbe52d53c4de0423609.sol(389)

[31mViolation[0m for UnrestrictedWrite in contract 'BankrollLending':
    |    require(stakeholders[index] == holder);
    |    numHolders = safeSub(numHolders, 1);
  > |    stakeholders[index] = stakeholders[numHolders];
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4648f996d538676a11870fbe52d53c4de0423609.sol(390)

[33mWarning[0m for UnrestrictedWrite in contract 'BankrollLending':
    |
    |  function changeOwner(address newOwner) onlyOwner public {
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x4648f996d538676a11870fbe52d53c4de0423609.sol(35)

[33mWarning[0m for UnrestrictedWrite in contract 'BankrollLending':
    |   * */
    |  function setCasinoAddress(address casinoAddr) public onlyOwner {
  > |    casino = Casino(casinoAddr);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4648f996d538676a11870fbe52d53c4de0423609.sol(117)

[33mWarning[0m for LockedEther in contract 'Casino':
    |}
    |
  > |contract Casino {
    |  mapping(address => bool) public authorized;
    |}
  at /home/jiaming/mavs_srcs/contract@0x4648f996d538676a11870fbe52d53c4de0423609.sol(19)

[31mViolation[0m for MissingInputValidation in contract 'Casino':
    |
    |contract Casino {
  > |  mapping(address => bool) public authorized;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x4648f996d538676a11870fbe52d53c4de0423609.sol(20)

[33mWarning[0m for LockedEther in contract 'Owned':
    |}
    |
  > |contract Owned {
    |  address public owner;
    |  modifier onlyOwner {
  at /home/jiaming/mavs_srcs/contract@0x4648f996d538676a11870fbe52d53c4de0423609.sol(23)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |  }
    |
  > |  function changeOwner(address newOwner) onlyOwner public {
    |    owner = newOwner;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4648f996d538676a11870fbe52d53c4de0423609.sol(34)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |
    |contract Owned {
  > |  address public owner;
    |  modifier onlyOwner {
    |    require(msg.sender == owner);
  at /home/jiaming/mavs_srcs/contract@0x4648f996d538676a11870fbe52d53c4de0423609.sol(24)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |  function changeOwner(address newOwner) onlyOwner public {
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x4648f996d538676a11870fbe52d53c4de0423609.sol(35)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |}
    |
  > |contract SafeMath {
    |
    |	function safeSub(uint a, uint b) pure internal returns(uint) {
  at /home/jiaming/mavs_srcs/contract@0x4648f996d538676a11870fbe52d53c4de0423609.sol(39)


