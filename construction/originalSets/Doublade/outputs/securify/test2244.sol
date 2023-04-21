Processing contract: /home/jiaming/mavs_srcs/contract@0x91a57b2f6fa86b373bce5716eb26c81cbb004223.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x91a57b2f6fa86b373bce5716eb26c81cbb004223.sol:OwnedByWinsome
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x91a57b2f6fa86b373bce5716eb26c81cbb004223.sol:Rouleth
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x91a57b2f6fa86b373bce5716eb26c81cbb004223.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x91a57b2f6fa86b373bce5716eb26c81cbb004223.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x91a57b2f6fa86b373bce5716eb26c81cbb004223.sol:WinToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    | * Basic version of StandardToken, with no allowances
    | */
  > |contract BasicToken {
    |  using SafeMath for uint;
    |  event Transfer(address indexed from, address indexed to, uint value);
  at /home/jiaming/mavs_srcs/contract@0x91a57b2f6fa86b373bce5716eb26c81cbb004223.sol(97)

[31mViolation[0m for UnrestrictedWrite in contract 'BasicToken':
    |  function transfer(address _to, uint _value) onlyPayloadSize(2 * 32) {
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x91a57b2f6fa86b373bce5716eb26c81cbb004223.sol(115)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |  function transfer(address _to, uint _value) onlyPayloadSize(2 * 32) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x91a57b2f6fa86b373bce5716eb26c81cbb004223.sol(114)

[33mWarning[0m for LockedEther in contract 'OwnedByWinsome':
    |pragma solidity ^0.4.8;
    |
  > |contract OwnedByWinsome {
    |
    |  address public owner;
  at /home/jiaming/mavs_srcs/contract@0x91a57b2f6fa86b373bce5716eb26c81cbb004223.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'OwnedByWinsome':
    |  }
    |
  > |  function allowWorker(address _new_worker) onlyOwner{
    |    allowedWorker[_new_worker] = true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x91a57b2f6fa86b373bce5716eb26c81cbb004223.sol(14)

[31mViolation[0m for MissingInputValidation in contract 'OwnedByWinsome':
    |    allowedWorker[_new_worker] = true;
    |  }
  > |  function removeWorker(address _old_worker) onlyOwner{
    |    allowedWorker[_old_worker] = false;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x91a57b2f6fa86b373bce5716eb26c81cbb004223.sol(17)

[31mViolation[0m for MissingInputValidation in contract 'OwnedByWinsome':
    |    allowedWorker[_old_worker] = false;
    |  }
  > |  function changeOwner(address _new_owner) onlyOwner{
    |    owner = _new_owner;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x91a57b2f6fa86b373bce5716eb26c81cbb004223.sol(20)

[33mWarning[0m for MissingInputValidation in contract 'OwnedByWinsome':
    |contract OwnedByWinsome {
    |
  > |  address public owner;
    |  mapping (address => bool) allowedWorker;
    |
  at /home/jiaming/mavs_srcs/contract@0x91a57b2f6fa86b373bce5716eb26c81cbb004223.sol(5)

[33mWarning[0m for UnrestrictedWrite in contract 'OwnedByWinsome':
    |
    |  function allowWorker(address _new_worker) onlyOwner{
  > |    allowedWorker[_new_worker] = true;
    |  }
    |  function removeWorker(address _old_worker) onlyOwner{
  at /home/jiaming/mavs_srcs/contract@0x91a57b2f6fa86b373bce5716eb26c81cbb004223.sol(15)

[33mWarning[0m for UnrestrictedWrite in contract 'OwnedByWinsome':
    |  }
    |  function removeWorker(address _old_worker) onlyOwner{
  > |    allowedWorker[_old_worker] = false;
    |  }
    |  function changeOwner(address _new_owner) onlyOwner{
  at /home/jiaming/mavs_srcs/contract@0x91a57b2f6fa86b373bce5716eb26c81cbb004223.sol(18)

[33mWarning[0m for UnrestrictedWrite in contract 'OwnedByWinsome':
    |  }
    |  function changeOwner(address _new_owner) onlyOwner{
  > |    owner = _new_owner;
    |  }
    |						    
  at /home/jiaming/mavs_srcs/contract@0x91a57b2f6fa86b373bce5716eb26c81cbb004223.sol(21)

[33mWarning[0m for DAOConstantGas in contract 'Rouleth':
    |    onlyDeveloper
    |  {
  > |    if (!developer.send(_amount_wei)) throw;
    |  }
    |    
  at /home/jiaming/mavs_srcs/contract@0x91a57b2f6fa86b373bce5716eb26c81cbb004223.sol(265)

[33mWarning[0m for DAOConstantGas in contract 'Rouleth':
    |    //refund excess bet (at last step vs re-entry)
    |    if (betValue < msg.value) {
  > |      if (msg.sender.send(msg.value-betValue)==false) throw;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x91a57b2f6fa86b373bce5716eb26c81cbb004223.sol(344)

[33mWarning[0m for DAOConstantGas in contract 'Rouleth':
    |	//send win!
    |	//safe send vs potential callstack overflowed spins
  > |	if (player.send(win_v+bet_v)==false) throw;
    |      }
    |    else
  at /home/jiaming/mavs_srcs/contract@0x91a57b2f6fa86b373bce5716eb26c81cbb004223.sol(540)

[33mWarning[0m for DAOConstantGas in contract 'Rouleth':
    |	Loss(player, result, bet_v-1, blockHash, shaPlayer, gambleIndex[player], bet_v);
    |	//send 1 wei to confirm spin if loss
  > |	if (player.send(1)==false) throw;
    |      }
    |
  at /home/jiaming/mavs_srcs/contract@0x91a57b2f6fa86b373bce5716eb26c81cbb004223.sol(546)

[33mWarning[0m for LockedEther in contract 'Rouleth':
    |}
    |
  > |contract Rouleth
    |{
    |  //Game and Global Variables, Structure of gambles
  at /home/jiaming/mavs_srcs/contract@0x91a57b2f6fa86b373bce5716eb26c81cbb004223.sol(196)

[31mViolation[0m for MissingInputValidation in contract 'Rouleth':
    |  }
    |
  > |  function removeBankroll(uint256 _amount_wei)
    |    onlyDeveloper
    |  {
  at /home/jiaming/mavs_srcs/contract@0x91a57b2f6fa86b373bce5716eb26c81cbb004223.sol(262)

[31mViolation[0m for MissingInputValidation in contract 'Rouleth':
    |  }
    |    
  > |  function changeDeveloper_only_Dev(address new_dev)
    |    onlyDeveloper
    |  {
  at /home/jiaming/mavs_srcs/contract@0x91a57b2f6fa86b373bce5716eb26c81cbb004223.sol(268)

[31mViolation[0m for MissingInputValidation in contract 'Rouleth':
    |
    |  //Change some settings within safety bounds
  > |  function changeSettings_only_Dev(uint256 newMinGamble, uint256 newMaxGamble, uint8 newBlockDelay, uint8 newBlockExpiration, uint newEmissionRate)
    |    onlyDeveloper
    |  {
  at /home/jiaming/mavs_srcs/contract@0x91a57b2f6fa86b373bce5716eb26c81cbb004223.sol(279)

[31mViolation[0m for MissingInputValidation in contract 'Rouleth':
    |  }
    |
  > |  function getPendingTokens(address account) constant returns (uint){
    |    return pendingTokens[account];
    |  }
  at /home/jiaming/mavs_srcs/contract@0x91a57b2f6fa86b373bce5716eb26c81cbb004223.sol(348)

[31mViolation[0m for MissingInputValidation in contract 'Rouleth':
    |
    |
  > |  function checkMyBet(address player) constant returns(Status player_status, BetTypes bettype, uint input, uint value, uint8 result, bool wheelspinned, bool win, uint blockNb, uint blockSpin, uint gambleID)
    |  {
    |    player_status=playerStatus[player];
  at /home/jiaming/mavs_srcs/contract@0x91a57b2f6fa86b373bce5716eb26c81cbb004223.sol(660)

[33mWarning[0m for MissingInputValidation in contract 'Rouleth':
    |{
    |  //Game and Global Variables, Structure of gambles
  > |  address public developer;
    |  uint8 public blockDelay; //nb of blocks to wait before spin
    |  uint8 public blockExpiration; //nb of blocks before bet expiration (due to hash storage limits)
  at /home/jiaming/mavs_srcs/contract@0x91a57b2f6fa86b373bce5716eb26c81cbb004223.sol(199)

[33mWarning[0m for MissingInputValidation in contract 'Rouleth':
    |  //Game and Global Variables, Structure of gambles
    |  address public developer;
  > |  uint8 public blockDelay; //nb of blocks to wait before spin
    |  uint8 public blockExpiration; //nb of blocks before bet expiration (due to hash storage limits)
    |  uint256 public maxGamble; //max gamble value manually set by config
  at /home/jiaming/mavs_srcs/contract@0x91a57b2f6fa86b373bce5716eb26c81cbb004223.sol(200)

[33mWarning[0m for MissingInputValidation in contract 'Rouleth':
    |  address public developer;
    |  uint8 public blockDelay; //nb of blocks to wait before spin
  > |  uint8 public blockExpiration; //nb of blocks before bet expiration (due to hash storage limits)
    |  uint256 public maxGamble; //max gamble value manually set by config
    |  uint256 public minGamble; //min gamble value manually set by config
  at /home/jiaming/mavs_srcs/contract@0x91a57b2f6fa86b373bce5716eb26c81cbb004223.sol(201)

[33mWarning[0m for MissingInputValidation in contract 'Rouleth':
    |  uint8 public blockDelay; //nb of blocks to wait before spin
    |  uint8 public blockExpiration; //nb of blocks before bet expiration (due to hash storage limits)
  > |  uint256 public maxGamble; //max gamble value manually set by config
    |  uint256 public minGamble; //min gamble value manually set by config
    |
  at /home/jiaming/mavs_srcs/contract@0x91a57b2f6fa86b373bce5716eb26c81cbb004223.sol(202)

[33mWarning[0m for MissingInputValidation in contract 'Rouleth':
    |  uint8 public blockExpiration; //nb of blocks before bet expiration (due to hash storage limits)
    |  uint256 public maxGamble; //max gamble value manually set by config
  > |  uint256 public minGamble; //min gamble value manually set by config
    |
    |  mapping (address => uint) pendingTokens;
  at /home/jiaming/mavs_srcs/contract@0x91a57b2f6fa86b373bce5716eb26c81cbb004223.sol(203)

[33mWarning[0m for MissingInputValidation in contract 'Rouleth':
    |  mapping (address => uint) pendingTokens;
    |  
  > |  address public WINTOKENADDRESS;
    |  WinToken winTokenInstance;
    |
  at /home/jiaming/mavs_srcs/contract@0x91a57b2f6fa86b373bce5716eb26c81cbb004223.sol(207)

[33mWarning[0m for MissingInputValidation in contract 'Rouleth':
    |  WinToken winTokenInstance;
    |
  > |  uint public emissionRate;
    |  
    |  //Gambles
  at /home/jiaming/mavs_srcs/contract@0x91a57b2f6fa86b373bce5716eb26c81cbb004223.sol(210)

[33mWarning[0m for MissingInputValidation in contract 'Rouleth':
    |  }
    |
  > |  function addBankroll()
    |    onlyDeveloper
    |    payable {
  at /home/jiaming/mavs_srcs/contract@0x91a57b2f6fa86b373bce5716eb26c81cbb004223.sol(257)

[33mWarning[0m for MissingInputValidation in contract 'Rouleth':
    |  //***//Guarantees that gamble is under max bet and above min.
    |  // returns bet value
  > |  function checkBetValue() private returns(uint256)
    |  {
    |    if (msg.value < minGamble) throw;
  at /home/jiaming/mavs_srcs/contract@0x91a57b2f6fa86b373bce5716eb26c81cbb004223.sol(310)

[33mWarning[0m for MissingInputValidation in contract 'Rouleth':
    |
    |  //Function record bet called by all others betting functions
  > |  function placeBet(BetTypes betType, uint input) private
    |  {
    |
  at /home/jiaming/mavs_srcs/contract@0x91a57b2f6fa86b373bce5716eb26c81cbb004223.sol(324)

[33mWarning[0m for MissingInputValidation in contract 'Rouleth':
    |  }
    |  
  > |  function redeemTokens(){
    |    uint totalTokens = pendingTokens[msg.sender];
    |    if (totalTokens == 0) return;
  at /home/jiaming/mavs_srcs/contract@0x91a57b2f6fa86b373bce5716eb26c81cbb004223.sol(352)

[33mWarning[0m for MissingInputValidation in contract 'Rouleth':
    |
    |
  > |  function SpinTheWheel(address playerSpinned) private returns(bool)
    |  {
    |    if (playerSpinned==0)
  at /home/jiaming/mavs_srcs/contract@0x91a57b2f6fa86b373bce5716eb26c81cbb004223.sol(470)

[33mWarning[0m for MissingInputValidation in contract 'Rouleth':
    |
    |  //CHECK BETS FUNCTIONS private
  > |  function checkBetResult(uint8 result, address player, bytes32 blockHash, bytes32 shaPlayer) private
    |  {
    |    BetTypes betType=gambles[gambleIndex[player]].betType;
  at /home/jiaming/mavs_srcs/contract@0x91a57b2f6fa86b373bce5716eb26c81cbb004223.sol(511)

[33mWarning[0m for MissingInputValidation in contract 'Rouleth':
    |
    |  // function solve Bet once result is determined : sends to winner, adds loss to profit
  > |  function solveBet(address player, uint8 result, bool win, uint8 multiplier, bytes32 blockHash, bytes32 shaPlayer) private
    |  {
    |    //Update status and record spinned
  at /home/jiaming/mavs_srcs/contract@0x91a57b2f6fa86b373bce5716eb26c81cbb004223.sol(524)

[33mWarning[0m for MissingInputValidation in contract 'Rouleth':
    |  // bet type : number
    |  // input : chosen number
  > |  function checkBetNumber(uint8 result, address player, bytes32 blockHash, bytes32 shaPlayer) private
    |  {
    |    bool win;
  at /home/jiaming/mavs_srcs/contract@0x91a57b2f6fa86b373bce5716eb26c81cbb004223.sol(554)

[33mWarning[0m for MissingInputValidation in contract 'Rouleth':
    |  // bet type : parity
    |  // input : 0 for even, 1 for odd
  > |  function checkBetParity(uint8 result, address player, bytes32 blockHash, bytes32 shaPlayer) private
    |  {
    |    bool win;
  at /home/jiaming/mavs_srcs/contract@0x91a57b2f6fa86b373bce5716eb26c81cbb004223.sol(569)

[33mWarning[0m for MissingInputValidation in contract 'Rouleth':
    |  // bet type : lowhigh
    |  // input : 0 low, 1 high
  > |  function checkBetLowhigh(uint8 result, address player, bytes32 blockHash, bytes32 shaPlayer) private
    |  {
    |    bool win;
  at /home/jiaming/mavs_srcs/contract@0x91a57b2f6fa86b373bce5716eb26c81cbb004223.sol(583)

[33mWarning[0m for MissingInputValidation in contract 'Rouleth':
    |  // input : 0 red, 1 black
    |  uint[18] red_list=[1,3,5,7,9,12,14,16,18,19,21,23,25,27,30,32,34,36];
  > |  function checkBetColor(uint8 result, address player, bytes32 blockHash, bytes32 shaPlayer) private
    |  {
    |    bool red;
  at /home/jiaming/mavs_srcs/contract@0x91a57b2f6fa86b373bce5716eb26c81cbb004223.sol(600)

[33mWarning[0m for MissingInputValidation in contract 'Rouleth':
    |  // bet type : dozen
    |  // input : 0 first, 1 second, 2 third
  > |  function checkBetDozen(uint8 result, address player, bytes32 blockHash, bytes32 shaPlayer) private
    |  { 
    |    bool win;
  at /home/jiaming/mavs_srcs/contract@0x91a57b2f6fa86b373bce5716eb26c81cbb004223.sol(626)

[33mWarning[0m for MissingInputValidation in contract 'Rouleth':
    |  // bet type : column
    |  // input : 0 first, 1 second, 2 third
  > |  function checkBetColumn(uint8 result, address player, bytes32 blockHash, bytes32 shaPlayer) private
    |  {
    |    bool win;
  at /home/jiaming/mavs_srcs/contract@0x91a57b2f6fa86b373bce5716eb26c81cbb004223.sol(645)

[33mWarning[0m for MissingInputValidation in contract 'Rouleth':
    |  }
    |
  > |  function getTotalGambles() constant returns(uint){
    |    return gambles.length;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x91a57b2f6fa86b373bce5716eb26c81cbb004223.sol(675)

[33mWarning[0m for MissingInputValidation in contract 'Rouleth':
    |
    |  
  > |  function getGamblesList(uint256 index) constant returns(address player, BetTypes bettype, uint input, uint value, uint8 result, bool wheelspinned, bool win, uint blockNb, uint blockSpin)
    |  {
    |    player=gambles[index].player;
  at /home/jiaming/mavs_srcs/contract@0x91a57b2f6fa86b373bce5716eb26c81cbb004223.sol(680)

[33mWarning[0m for TODAmount in contract 'Rouleth':
    |    onlyDeveloper
    |  {
  > |    if (!developer.send(_amount_wei)) throw;
    |  }
    |    
  at /home/jiaming/mavs_srcs/contract@0x91a57b2f6fa86b373bce5716eb26c81cbb004223.sol(265)

[31mViolation[0m for TODReceiver in contract 'Rouleth':
    |    onlyDeveloper
    |  {
  > |    if (!developer.send(_amount_wei)) throw;
    |  }
    |    
  at /home/jiaming/mavs_srcs/contract@0x91a57b2f6fa86b373bce5716eb26c81cbb004223.sol(265)

[33mWarning[0m for TODReceiver in contract 'Rouleth':
    |    //refund excess bet (at last step vs re-entry)
    |    if (betValue < msg.value) {
  > |      if (msg.sender.send(msg.value-betValue)==false) throw;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x91a57b2f6fa86b373bce5716eb26c81cbb004223.sol(344)

[33mWarning[0m for UnhandledException in contract 'Rouleth':
    |    onlyDeveloper
    |  {
  > |    if (!developer.send(_amount_wei)) throw;
    |  }
    |    
  at /home/jiaming/mavs_srcs/contract@0x91a57b2f6fa86b373bce5716eb26c81cbb004223.sol(265)

[33mWarning[0m for UnhandledException in contract 'Rouleth':
    |    //refund excess bet (at last step vs re-entry)
    |    if (betValue < msg.value) {
  > |      if (msg.sender.send(msg.value-betValue)==false) throw;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x91a57b2f6fa86b373bce5716eb26c81cbb004223.sol(344)

[33mWarning[0m for UnhandledException in contract 'Rouleth':
    |    
    |    //mint WIN Tokens
  > |    winTokenInstance.mintTokens(msg.sender, totalTokens);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x91a57b2f6fa86b373bce5716eb26c81cbb004223.sol(360)

[33mWarning[0m for UnhandledException in contract 'Rouleth':
    |	//send win!
    |	//safe send vs potential callstack overflowed spins
  > |	if (player.send(win_v+bet_v)==false) throw;
    |      }
    |    else
  at /home/jiaming/mavs_srcs/contract@0x91a57b2f6fa86b373bce5716eb26c81cbb004223.sol(540)

[33mWarning[0m for UnhandledException in contract 'Rouleth':
    |	Loss(player, result, bet_v-1, blockHash, shaPlayer, gambleIndex[player], bet_v);
    |	//send 1 wei to confirm spin if loss
  > |	if (player.send(1)==false) throw;
    |      }
    |
  at /home/jiaming/mavs_srcs/contract@0x91a57b2f6fa86b373bce5716eb26c81cbb004223.sol(546)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Rouleth':
    |    
    |    //mint WIN Tokens
  > |    winTokenInstance.mintTokens(msg.sender, totalTokens);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x91a57b2f6fa86b373bce5716eb26c81cbb004223.sol(360)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Rouleth':
    |    onlyDeveloper
    |  {
  > |    if (!developer.send(_amount_wei)) throw;
    |  }
    |    
  at /home/jiaming/mavs_srcs/contract@0x91a57b2f6fa86b373bce5716eb26c81cbb004223.sol(265)

[31mViolation[0m for UnrestrictedWrite in contract 'Rouleth':
    |pragma solidity ^0.4.8;
    |
  > |contract OwnedByWinsome {
    |
    |  address public owner;
  at /home/jiaming/mavs_srcs/contract@0x91a57b2f6fa86b373bce5716eb26c81cbb004223.sol(3)

[31mViolation[0m for UnrestrictedWrite in contract 'Rouleth':
    |
    |    //Once this is done, we can record the new bet
  > |    playerStatus[msg.sender] = Status.waitingForSpin;
    |    gambleIndex[msg.sender] = gambles.length;
    |    
  at /home/jiaming/mavs_srcs/contract@0x91a57b2f6fa86b373bce5716eb26c81cbb004223.sol(332)

[31mViolation[0m for UnrestrictedWrite in contract 'Rouleth':
    |    //Once this is done, we can record the new bet
    |    playerStatus[msg.sender] = Status.waitingForSpin;
  > |    gambleIndex[msg.sender] = gambles.length;
    |    
    |    //adapts wager to casino limits
  at /home/jiaming/mavs_srcs/contract@0x91a57b2f6fa86b373bce5716eb26c81cbb004223.sol(333)

[31mViolation[0m for UnrestrictedWrite in contract 'Rouleth':
    |    //adapts wager to casino limits
    |    uint256 betValue = checkBetValue();
  > |    pendingTokens[msg.sender] += betValue * emissionRate;
    |
    |    
  at /home/jiaming/mavs_srcs/contract@0x91a57b2f6fa86b373bce5716eb26c81cbb004223.sol(337)

[31mViolation[0m for UnrestrictedWrite in contract 'Rouleth':
    |
    |    
  > |    gambles.push(Gamble(msg.sender, false, false, betType, input, betValue, block.number, 0, 37)); //37 indicates not spinned yet
    |    
    |    //refund excess bet (at last step vs re-entry)
  at /home/jiaming/mavs_srcs/contract@0x91a57b2f6fa86b373bce5716eb26c81cbb004223.sol(340)

[31mViolation[0m for UnrestrictedWrite in contract 'Rouleth':
    |  {
    |    //Update status and record spinned
  > |    playerStatus[player]=Status.waitingForBet;
    |    gambles[gambleIndex[player]].wheelResult=result;
    |    gambles[gambleIndex[player]].spinned=true;
  at /home/jiaming/mavs_srcs/contract@0x91a57b2f6fa86b373bce5716eb26c81cbb004223.sol(527)

[31mViolation[0m for UnrestrictedWrite in contract 'Rouleth':
    |    //Update status and record spinned
    |    playerStatus[player]=Status.waitingForBet;
  > |    gambles[gambleIndex[player]].wheelResult=result;
    |    gambles[gambleIndex[player]].spinned=true;
    |    gambles[gambleIndex[player]].blockSpinned=block.number;
  at /home/jiaming/mavs_srcs/contract@0x91a57b2f6fa86b373bce5716eb26c81cbb004223.sol(528)

[31mViolation[0m for UnrestrictedWrite in contract 'Rouleth':
    |    playerStatus[player]=Status.waitingForBet;
    |    gambles[gambleIndex[player]].wheelResult=result;
  > |    gambles[gambleIndex[player]].spinned=true;
    |    gambles[gambleIndex[player]].blockSpinned=block.number;
    |    uint bet_v = gambles[gambleIndex[player]].wager;
  at /home/jiaming/mavs_srcs/contract@0x91a57b2f6fa86b373bce5716eb26c81cbb004223.sol(529)

[31mViolation[0m for UnrestrictedWrite in contract 'Rouleth':
    |    gambles[gambleIndex[player]].wheelResult=result;
    |    gambles[gambleIndex[player]].spinned=true;
  > |    gambles[gambleIndex[player]].blockSpinned=block.number;
    |    uint bet_v = gambles[gambleIndex[player]].wager;
    |	
  at /home/jiaming/mavs_srcs/contract@0x91a57b2f6fa86b373bce5716eb26c81cbb004223.sol(530)

[31mViolation[0m for UnrestrictedWrite in contract 'Rouleth':
    |    if (win)
    |      {
  > |	gambles[gambleIndex[player]].win=true;
    |	uint win_v = (multiplier-1)*bet_v;
    |	Win(player, result, win_v, blockHash, shaPlayer, gambleIndex[player], bet_v);
  at /home/jiaming/mavs_srcs/contract@0x91a57b2f6fa86b373bce5716eb26c81cbb004223.sol(535)

[33mWarning[0m for UnrestrictedWrite in contract 'Rouleth':
    |    uint totalTokens = pendingTokens[msg.sender];
    |    if (totalTokens == 0) return;
  > |    pendingTokens[msg.sender] = 0;
    |
    |    //ADD POTENTIAL BONUS BASED ON How long waited!
  at /home/jiaming/mavs_srcs/contract@0x91a57b2f6fa86b373bce5716eb26c81cbb004223.sol(355)

[33mWarning[0m for UnrestrictedWrite in contract 'Rouleth':
    |    onlyDeveloper
    |  {
  > |    developer=new_dev;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x91a57b2f6fa86b373bce5716eb26c81cbb004223.sol(271)

[33mWarning[0m for UnrestrictedWrite in contract 'Rouleth':
    |    onlyDeveloper
    |  {
  > |    emissionRate = newEmissionRate;
    |    //MAX BET : limited by payroll/(casinoStatisticalLimit*35)
    |    if (newMaxGamble<newMinGamble) throw;  
  at /home/jiaming/mavs_srcs/contract@0x91a57b2f6fa86b373bce5716eb26c81cbb004223.sol(282)

[33mWarning[0m for UnrestrictedWrite in contract 'Rouleth':
    |    //MAX BET : limited by payroll/(casinoStatisticalLimit*35)
    |    if (newMaxGamble<newMinGamble) throw;  
  > |    maxGamble=newMaxGamble; 
    |    minGamble=newMinGamble;
    |    //Delay before spin :
  at /home/jiaming/mavs_srcs/contract@0x91a57b2f6fa86b373bce5716eb26c81cbb004223.sol(285)

[33mWarning[0m for UnrestrictedWrite in contract 'Rouleth':
    |    if (newMaxGamble<newMinGamble) throw;  
    |    maxGamble=newMaxGamble; 
  > |    minGamble=newMinGamble;
    |    //Delay before spin :
    |    blockDelay=newBlockDelay;
  at /home/jiaming/mavs_srcs/contract@0x91a57b2f6fa86b373bce5716eb26c81cbb004223.sol(286)

[33mWarning[0m for UnrestrictedWrite in contract 'Rouleth':
    |    minGamble=newMinGamble;
    |    //Delay before spin :
  > |    blockDelay=newBlockDelay;
    |    if (newBlockExpiration < blockDelay + 250) throw;
    |    blockExpiration=newBlockExpiration;
  at /home/jiaming/mavs_srcs/contract@0x91a57b2f6fa86b373bce5716eb26c81cbb004223.sol(288)

[33mWarning[0m for UnrestrictedWrite in contract 'Rouleth':
    |    blockDelay=newBlockDelay;
    |    if (newBlockExpiration < blockDelay + 250) throw;
  > |    blockExpiration=newBlockExpiration;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x91a57b2f6fa86b373bce5716eb26c81cbb004223.sol(290)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * Math operations with safety checks
    | */
  > |library SafeMath {
    |  function mul(uint a, uint b) internal returns (uint) {
    |    uint c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x91a57b2f6fa86b373bce5716eb26c81cbb004223.sol(44)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |
    |
  > |contract StandardToken is BasicToken{
    |  
    |  event Approval(address indexed owner, address indexed spender, uint value);
  at /home/jiaming/mavs_srcs/contract@0x91a57b2f6fa86b373bce5716eb26c81cbb004223.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |  function transfer(address _to, uint _value) onlyPayloadSize(2 * 32) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x91a57b2f6fa86b373bce5716eb26c81cbb004223.sol(114)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x91a57b2f6fa86b373bce5716eb26c81cbb004223.sol(141)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |  function approve(address _spender, uint _value) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x91a57b2f6fa86b373bce5716eb26c81cbb004223.sol(146)

[33mWarning[0m for LockedEther in contract 'WinToken':
    |
    |
  > |contract WinToken is StandardToken, OwnedByWinsome{
    |
    |  string public   name =           "Winsome.io Token";
  at /home/jiaming/mavs_srcs/contract@0x91a57b2f6fa86b373bce5716eb26c81cbb004223.sol(157)

[33mWarning[0m for UnrestrictedWrite in contract 'WinToken':
    |
    |  function allowWorker(address _new_worker) onlyOwner{
  > |    allowedWorker[_new_worker] = true;
    |  }
    |  function removeWorker(address _old_worker) onlyOwner{
  at /home/jiaming/mavs_srcs/contract@0x91a57b2f6fa86b373bce5716eb26c81cbb004223.sol(15)

[33mWarning[0m for UnrestrictedWrite in contract 'WinToken':
    |  }
    |  function removeWorker(address _old_worker) onlyOwner{
  > |    allowedWorker[_old_worker] = false;
    |  }
    |  function changeOwner(address _new_owner) onlyOwner{
  at /home/jiaming/mavs_srcs/contract@0x91a57b2f6fa86b373bce5716eb26c81cbb004223.sol(18)

[33mWarning[0m for UnrestrictedWrite in contract 'WinToken':
    |  }
    |  function changeOwner(address _new_owner) onlyOwner{
  > |    owner = _new_owner;
    |  }
    |						    
  at /home/jiaming/mavs_srcs/contract@0x91a57b2f6fa86b373bce5716eb26c81cbb004223.sol(21)

[33mWarning[0m for UnrestrictedWrite in contract 'WinToken':
    |
    |  function transfer(address _to, uint _value) onlyPayloadSize(2 * 32) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x91a57b2f6fa86b373bce5716eb26c81cbb004223.sol(114)

[33mWarning[0m for UnrestrictedWrite in contract 'WinToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x91a57b2f6fa86b373bce5716eb26c81cbb004223.sol(141)

[33mWarning[0m for UnrestrictedWrite in contract 'WinToken':
    |
    |  function approve(address _spender, uint _value) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x91a57b2f6fa86b373bce5716eb26c81cbb004223.sol(146)

[33mWarning[0m for UnrestrictedWrite in contract 'WinToken':
    |
    |  function allowMinter(address _new_minter) onlyOwner{
  > |    allowedMinter[_new_minter] = true;
    |  }
    |  function removeMinter(address _old_minter) onlyOwner{
  at /home/jiaming/mavs_srcs/contract@0x91a57b2f6fa86b373bce5716eb26c81cbb004223.sol(171)

[33mWarning[0m for UnrestrictedWrite in contract 'WinToken':
    |  }
    |  function removeMinter(address _old_minter) onlyOwner{
  > |    allowedMinter[_old_minter] = false;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x91a57b2f6fa86b373bce5716eb26c81cbb004223.sol(174)


