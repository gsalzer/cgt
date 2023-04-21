Processing contract: /home/jiaming/mavs_srcs/contract@0xc446b5b0a696b6735bf95888a896253a1a5d25f5.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc446b5b0a696b6735bf95888a896253a1a5d25f5.sol:TwoXJackpot
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xc446b5b0a696b6735bf95888a896253a1a5d25f5.sol(195)

[31mViolation[0m for DAOConstantGas in contract 'TwoXJackpot':
    |
    |      if (valueAfterTax < buyIn.value) {
  > |        buyIn.owner.transfer(valueAfterTax);
    |        totalPaidOut[buyIn.owner] += valueAfterTax;
    |        totalValue[buyIn.owner] -= valueAfterTax;
  at /home/jiaming/mavs_srcs/contract@0xc446b5b0a696b6735bf95888a896253a1a5d25f5.sol(132)

[31mViolation[0m for DAOConstantGas in contract 'TwoXJackpot':
    |        valueAfterTax = 0;
    |      } else {
  > |        buyIn.owner.transfer(buyIn.value);
    |        totalPaidOut[buyIn.owner] += buyIn.value;
    |        totalValue[buyIn.owner] -= buyIn.value;
  at /home/jiaming/mavs_srcs/contract@0xc446b5b0a696b6735bf95888a896253a1a5d25f5.sol(138)

[31mViolation[0m for DAOConstantGas in contract 'TwoXJackpot':
    |    // funds back to the investor
    |    if (valueAfterTax > 0) {
  > |      msg.sender.transfer(valueAfterTax);
    |      valueMultiplied -= valueAfterTax;
    |      totalPaidOut[msg.sender] += valueAfterTax;
  at /home/jiaming/mavs_srcs/contract@0xc446b5b0a696b6735bf95888a896253a1a5d25f5.sol(150)

[31mViolation[0m for DAOConstantGas in contract 'TwoXJackpot':
    |
    |    seedAmount = 0;
  > |    contractOwner.transfer(seedPay); // Return the initial seed to owner.
    |
    |    jackpotBalance = 0;
  at /home/jiaming/mavs_srcs/contract@0xc446b5b0a696b6735bf95888a896253a1a5d25f5.sol(173)

[33mWarning[0m for DAOConstantGas in contract 'TwoXJackpot':
    |
    |    jackpotBalance = 0;
  > |	msg.sender.transfer(jpotPay); // payout entire jackpot minus seed.
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc446b5b0a696b6735bf95888a896253a1a5d25f5.sol(176)

[33mWarning[0m for LockedEther in contract 'TwoXJackpot':
    |*/
    |
  > |contract TwoXJackpot {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xc446b5b0a696b6735bf95888a896253a1a5d25f5.sol(12)

[31mViolation[0m for MissingInputValidation in contract 'TwoXJackpot':
    |
    |  // Total invested for a given address
  > |  mapping (address => uint256) public totalInvested;
    |
    |  // Total value for a given address
  at /home/jiaming/mavs_srcs/contract@0xc446b5b0a696b6735bf95888a896253a1a5d25f5.sol(46)

[31mViolation[0m for MissingInputValidation in contract 'TwoXJackpot':
    |
    |  // Total value for a given address
  > |  mapping (address => uint256) public totalValue;
    |
    |  // Total paid out for a given address
  at /home/jiaming/mavs_srcs/contract@0xc446b5b0a696b6735bf95888a896253a1a5d25f5.sol(49)

[31mViolation[0m for MissingInputValidation in contract 'TwoXJackpot':
    |
    |  // Total paid out for a given address
  > |  mapping (address => uint256) public totalPaidOut;
    |
    |  struct BuyIn {
  at /home/jiaming/mavs_srcs/contract@0xc446b5b0a696b6735bf95888a896253a1a5d25f5.sol(52)

[33mWarning[0m for MissingInputValidation in contract 'TwoXJackpot':
    |
    |  // Address of the contract creator
  > |  address public contractOwner;
    |
    |  // FIFO queue
  at /home/jiaming/mavs_srcs/contract@0xc446b5b0a696b6735bf95888a896253a1a5d25f5.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'TwoXJackpot':
    |
    |  // FIFO queue
  > |  BuyIn[] public buyIns;
    |
    |  // The current BuyIn queue index
  at /home/jiaming/mavs_srcs/contract@0xc446b5b0a696b6735bf95888a896253a1a5d25f5.sol(19)

[33mWarning[0m for MissingInputValidation in contract 'TwoXJackpot':
    |
    |  // The current BuyIn queue index
  > |  uint256 public index;
    |
    |  // Total invested for entire contract
  at /home/jiaming/mavs_srcs/contract@0xc446b5b0a696b6735bf95888a896253a1a5d25f5.sol(22)

[33mWarning[0m for MissingInputValidation in contract 'TwoXJackpot':
    |
    |  // Total invested for entire contract
  > |  uint256 public contractTotalInvested;
    |
    |  // Dev Fee (1%)
  at /home/jiaming/mavs_srcs/contract@0xc446b5b0a696b6735bf95888a896253a1a5d25f5.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'TwoXJackpot':
    |
    |  // Dev Fee (1%)
  > |  uint256 public devFeeBalance;
    |
    |  // Total of Jackpot
  at /home/jiaming/mavs_srcs/contract@0xc446b5b0a696b6735bf95888a896253a1a5d25f5.sol(28)

[33mWarning[0m for MissingInputValidation in contract 'TwoXJackpot':
    |
    |  // Total of Jackpot
  > |  uint256 public jackpotBalance;
    |
    |  // Track amount of seed money put into jackpot.
  at /home/jiaming/mavs_srcs/contract@0xc446b5b0a696b6735bf95888a896253a1a5d25f5.sol(31)

[33mWarning[0m for MissingInputValidation in contract 'TwoXJackpot':
    |
    |  // Track amount of seed money put into jackpot.
  > |  uint256 public seedAmount;
    |
    |  // The last qualified address to get into the jackpot.
  at /home/jiaming/mavs_srcs/contract@0xc446b5b0a696b6735bf95888a896253a1a5d25f5.sol(34)

[33mWarning[0m for MissingInputValidation in contract 'TwoXJackpot':
    |
    |  // The last qualified address to get into the jackpot.
  > |  address public jackpotLastQualified;
    |
    |  // Timestamp of the last action.
  at /home/jiaming/mavs_srcs/contract@0xc446b5b0a696b6735bf95888a896253a1a5d25f5.sol(37)

[33mWarning[0m for MissingInputValidation in contract 'TwoXJackpot':
    |
    |  // Timestamp of the last action.
  > |  uint256 public lastAction;
    |
    |  // Timestamp of Game Start
  at /home/jiaming/mavs_srcs/contract@0xc446b5b0a696b6735bf95888a896253a1a5d25f5.sol(40)

[33mWarning[0m for MissingInputValidation in contract 'TwoXJackpot':
    |
    |  // Timestamp of Game Start
  > |  uint256 public gameStartTime;
    |
    |  // Total invested for a given address
  at /home/jiaming/mavs_srcs/contract@0xc446b5b0a696b6735bf95888a896253a1a5d25f5.sol(43)

[33mWarning[0m for MissingInputValidation in contract 'TwoXJackpot':
    |
    |  // return jackpot to contract creator if no purchases or claims in 30 days.
  > |  function killme() public payable onlyContractOwner {
    |    require(now > lastAction + 30 days);
    |    seedAmount = 0;
  at /home/jiaming/mavs_srcs/contract@0xc446b5b0a696b6735bf95888a896253a1a5d25f5.sol(79)

[33mWarning[0m for MissingInputValidation in contract 'TwoXJackpot':
    |
    |  // Contract owner can seed the Jackpot, and get it back whenever Jackpot is paid. See claim() function
  > |  function seed() public payable onlyContractOwner {
    |    seedAmount += msg.value;     // Amount owner gets back on payout.
    |    jackpotBalance += msg.value; // Increase the value of the jackpot by this much.
  at /home/jiaming/mavs_srcs/contract@0xc446b5b0a696b6735bf95888a896253a1a5d25f5.sol(87)

[33mWarning[0m for MissingInputValidation in contract 'TwoXJackpot':
    |
    |  // Change the start time.
  > |  function changeStartTime(uint256 _time) public payable onlyContractOwner {
    |    require(now < _time); // only allow changing it to something in the future.
    |    require(now < gameStartTime); // Only change a game that has not started, prevent abuse.
  at /home/jiaming/mavs_srcs/contract@0xc446b5b0a696b6735bf95888a896253a1a5d25f5.sol(93)

[33mWarning[0m for MissingInputValidation in contract 'TwoXJackpot':
    |  //                //
    |
  > |  function purchase() public payable isStarted {
    |
    |    uint256 purchaseMin = SafeMath.mul(msg.value, 20); // 5% Jackpot Min Purchase
  at /home/jiaming/mavs_srcs/contract@0xc446b5b0a696b6735bf95888a896253a1a5d25f5.sol(103)

[33mWarning[0m for MissingInputValidation in contract 'TwoXJackpot':
    |
    |  // Send the jackpot if no activity in 24 hours and claimant was the last person to generate activity.
  > |  function claim() public payable isStarted {
    |    require(now > lastAction + 6 hours);
    |	require(jackpotLastQualified == msg.sender);
  at /home/jiaming/mavs_srcs/contract@0xc446b5b0a696b6735bf95888a896253a1a5d25f5.sol(165)

[33mWarning[0m for MissingInputValidation in contract 'TwoXJackpot':
    |  * @dev Multiplies two numbers, throws on overflow.
    |  */
  > |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    if (a == 0) {
    |      return 0;
  at /home/jiaming/mavs_srcs/contract@0xc446b5b0a696b6735bf95888a896253a1a5d25f5.sol(200)

[33mWarning[0m for MissingInputValidation in contract 'TwoXJackpot':
    |  * @dev Integer division of two numbers, truncating the quotient.
    |  */
  > |  function div(uint256 a, uint256 b) internal pure returns (uint256) {
    |    // assert(b > 0); // Solidity automatically throws when dividing by 0
    |    uint256 c = a / b;
  at /home/jiaming/mavs_srcs/contract@0xc446b5b0a696b6735bf95888a896253a1a5d25f5.sol(212)

[33mWarning[0m for MissingInputValidation in contract 'TwoXJackpot':
    |  * @dev Substracts two numbers, throws on overflow (i.e. if subtrahend is greater than minuend).
    |  */
  > |  function sub(uint256 a, uint256 b) internal pure returns (uint256) {
    |    assert(b <= a);
    |    return a - b;
  at /home/jiaming/mavs_srcs/contract@0xc446b5b0a696b6735bf95888a896253a1a5d25f5.sol(222)

[31mViolation[0m for TODAmount in contract 'TwoXJackpot':
    |
    |    seedAmount = 0;
  > |    contractOwner.transfer(seedPay); // Return the initial seed to owner.
    |
    |    jackpotBalance = 0;
  at /home/jiaming/mavs_srcs/contract@0xc446b5b0a696b6735bf95888a896253a1a5d25f5.sol(173)

[31mViolation[0m for TODAmount in contract 'TwoXJackpot':
    |
    |    jackpotBalance = 0;
  > |	msg.sender.transfer(jpotPay); // payout entire jackpot minus seed.
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc446b5b0a696b6735bf95888a896253a1a5d25f5.sol(176)

[33mWarning[0m for TODReceiver in contract 'TwoXJackpot':
    |    // funds back to the investor
    |    if (valueAfterTax > 0) {
  > |      msg.sender.transfer(valueAfterTax);
    |      valueMultiplied -= valueAfterTax;
    |      totalPaidOut[msg.sender] += valueAfterTax;
  at /home/jiaming/mavs_srcs/contract@0xc446b5b0a696b6735bf95888a896253a1a5d25f5.sol(150)

[33mWarning[0m for TODReceiver in contract 'TwoXJackpot':
    |
    |    seedAmount = 0;
  > |    contractOwner.transfer(seedPay); // Return the initial seed to owner.
    |
    |    jackpotBalance = 0;
  at /home/jiaming/mavs_srcs/contract@0xc446b5b0a696b6735bf95888a896253a1a5d25f5.sol(173)

[33mWarning[0m for TODReceiver in contract 'TwoXJackpot':
    |
    |    jackpotBalance = 0;
  > |	msg.sender.transfer(jpotPay); // payout entire jackpot minus seed.
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc446b5b0a696b6735bf95888a896253a1a5d25f5.sol(176)

[33mWarning[0m for UnhandledException in contract 'TwoXJackpot':
    |    seedAmount = 0;
    |    jackpotBalance = 0;
  > |    contractOwner.transfer(jackpotBalance);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc446b5b0a696b6735bf95888a896253a1a5d25f5.sol(83)

[33mWarning[0m for UnhandledException in contract 'TwoXJackpot':
    |
    |      if (valueAfterTax < buyIn.value) {
  > |        buyIn.owner.transfer(valueAfterTax);
    |        totalPaidOut[buyIn.owner] += valueAfterTax;
    |        totalValue[buyIn.owner] -= valueAfterTax;
  at /home/jiaming/mavs_srcs/contract@0xc446b5b0a696b6735bf95888a896253a1a5d25f5.sol(132)

[33mWarning[0m for UnhandledException in contract 'TwoXJackpot':
    |        valueAfterTax = 0;
    |      } else {
  > |        buyIn.owner.transfer(buyIn.value);
    |        totalPaidOut[buyIn.owner] += buyIn.value;
    |        totalValue[buyIn.owner] -= buyIn.value;
  at /home/jiaming/mavs_srcs/contract@0xc446b5b0a696b6735bf95888a896253a1a5d25f5.sol(138)

[33mWarning[0m for UnhandledException in contract 'TwoXJackpot':
    |    // funds back to the investor
    |    if (valueAfterTax > 0) {
  > |      msg.sender.transfer(valueAfterTax);
    |      valueMultiplied -= valueAfterTax;
    |      totalPaidOut[msg.sender] += valueAfterTax;
  at /home/jiaming/mavs_srcs/contract@0xc446b5b0a696b6735bf95888a896253a1a5d25f5.sol(150)

[33mWarning[0m for UnhandledException in contract 'TwoXJackpot':
    |
    |    seedAmount = 0;
  > |    contractOwner.transfer(seedPay); // Return the initial seed to owner.
    |
    |    jackpotBalance = 0;
  at /home/jiaming/mavs_srcs/contract@0xc446b5b0a696b6735bf95888a896253a1a5d25f5.sol(173)

[33mWarning[0m for UnhandledException in contract 'TwoXJackpot':
    |
    |    jackpotBalance = 0;
  > |	msg.sender.transfer(jpotPay); // payout entire jackpot minus seed.
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc446b5b0a696b6735bf95888a896253a1a5d25f5.sol(176)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TwoXJackpot':
    |    seedAmount = 0;
    |    jackpotBalance = 0;
  > |    contractOwner.transfer(jackpotBalance);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc446b5b0a696b6735bf95888a896253a1a5d25f5.sol(83)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TwoXJackpot':
    |
    |    seedAmount = 0;
  > |    contractOwner.transfer(seedPay); // Return the initial seed to owner.
    |
    |    jackpotBalance = 0;
  at /home/jiaming/mavs_srcs/contract@0xc446b5b0a696b6735bf95888a896253a1a5d25f5.sol(173)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TwoXJackpot':
    |
    |    jackpotBalance = 0;
  > |	msg.sender.transfer(jpotPay); // payout entire jackpot minus seed.
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc446b5b0a696b6735bf95888a896253a1a5d25f5.sol(176)

[31mViolation[0m for UnrestrictedWrite in contract 'TwoXJackpot':
    |pragma solidity ^0.4.18;
    |/*
  > |TwoXJackpot - A modification to TwoX that turns the 5% developer fee into a jackpot!
    |- Double your ether.
    |- 5% of purchase goes towards a jackpot.
  at /home/jiaming/mavs_srcs/contract@0xc446b5b0a696b6735bf95888a896253a1a5d25f5.sol(3)

[31mViolation[0m for UnrestrictedWrite in contract 'TwoXJackpot':
    |
    |    // Add it to the jackpot
  > |    jackpotBalance += potFee;
    |    jackpotLastQualified = msg.sender;
    |    lastAction = now;
  at /home/jiaming/mavs_srcs/contract@0xc446b5b0a696b6735bf95888a896253a1a5d25f5.sol(118)

[31mViolation[0m for UnrestrictedWrite in contract 'TwoXJackpot':
    |    // Add it to the jackpot
    |    jackpotBalance += potFee;
  > |    jackpotLastQualified = msg.sender;
    |    lastAction = now;
    |
  at /home/jiaming/mavs_srcs/contract@0xc446b5b0a696b6735bf95888a896253a1a5d25f5.sol(119)

[31mViolation[0m for UnrestrictedWrite in contract 'TwoXJackpot':
    |    jackpotBalance += potFee;
    |    jackpotLastQualified = msg.sender;
  > |    lastAction = now;
    |
    |    // HNNNNNNGGGGGG
  at /home/jiaming/mavs_srcs/contract@0xc446b5b0a696b6735bf95888a896253a1a5d25f5.sol(120)

[31mViolation[0m for UnrestrictedWrite in contract 'TwoXJackpot':
    |    uint256 valueMultiplied = SafeMath.mul(msg.value, 2);
    |
  > |    contractTotalInvested += msg.value;
    |    totalInvested[msg.sender] += msg.value;
    |
  at /home/jiaming/mavs_srcs/contract@0xc446b5b0a696b6735bf95888a896253a1a5d25f5.sol(125)

[31mViolation[0m for UnrestrictedWrite in contract 'TwoXJackpot':
    |
    |    contractTotalInvested += msg.value;
  > |    totalInvested[msg.sender] += msg.value;
    |
    |    while (index < buyIns.length && valueAfterTax > 0) {
  at /home/jiaming/mavs_srcs/contract@0xc446b5b0a696b6735bf95888a896253a1a5d25f5.sol(126)

[31mViolation[0m for UnrestrictedWrite in contract 'TwoXJackpot':
    |      if (valueAfterTax < buyIn.value) {
    |        buyIn.owner.transfer(valueAfterTax);
  > |        totalPaidOut[buyIn.owner] += valueAfterTax;
    |        totalValue[buyIn.owner] -= valueAfterTax;
    |        buyIn.value -= valueAfterTax;
  at /home/jiaming/mavs_srcs/contract@0xc446b5b0a696b6735bf95888a896253a1a5d25f5.sol(133)

[31mViolation[0m for UnrestrictedWrite in contract 'TwoXJackpot':
    |        buyIn.owner.transfer(valueAfterTax);
    |        totalPaidOut[buyIn.owner] += valueAfterTax;
  > |        totalValue[buyIn.owner] -= valueAfterTax;
    |        buyIn.value -= valueAfterTax;
    |        valueAfterTax = 0;
  at /home/jiaming/mavs_srcs/contract@0xc446b5b0a696b6735bf95888a896253a1a5d25f5.sol(134)

[31mViolation[0m for UnrestrictedWrite in contract 'TwoXJackpot':
    |        totalPaidOut[buyIn.owner] += valueAfterTax;
    |        totalValue[buyIn.owner] -= valueAfterTax;
  > |        buyIn.value -= valueAfterTax;
    |        valueAfterTax = 0;
    |      } else {
  at /home/jiaming/mavs_srcs/contract@0xc446b5b0a696b6735bf95888a896253a1a5d25f5.sol(135)

[31mViolation[0m for UnrestrictedWrite in contract 'TwoXJackpot':
    |      } else {
    |        buyIn.owner.transfer(buyIn.value);
  > |        totalPaidOut[buyIn.owner] += buyIn.value;
    |        totalValue[buyIn.owner] -= buyIn.value;
    |        valueAfterTax -= buyIn.value;
  at /home/jiaming/mavs_srcs/contract@0xc446b5b0a696b6735bf95888a896253a1a5d25f5.sol(139)

[31mViolation[0m for UnrestrictedWrite in contract 'TwoXJackpot':
    |        buyIn.owner.transfer(buyIn.value);
    |        totalPaidOut[buyIn.owner] += buyIn.value;
  > |        totalValue[buyIn.owner] -= buyIn.value;
    |        valueAfterTax -= buyIn.value;
    |        buyIn.value = 0;
  at /home/jiaming/mavs_srcs/contract@0xc446b5b0a696b6735bf95888a896253a1a5d25f5.sol(140)

[31mViolation[0m for UnrestrictedWrite in contract 'TwoXJackpot':
    |        totalValue[buyIn.owner] -= buyIn.value;
    |        valueAfterTax -= buyIn.value;
  > |        buyIn.value = 0;
    |        index++;
    |      }
  at /home/jiaming/mavs_srcs/contract@0xc446b5b0a696b6735bf95888a896253a1a5d25f5.sol(142)

[31mViolation[0m for UnrestrictedWrite in contract 'TwoXJackpot':
    |        valueAfterTax -= buyIn.value;
    |        buyIn.value = 0;
  > |        index++;
    |      }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc446b5b0a696b6735bf95888a896253a1a5d25f5.sol(143)

[31mViolation[0m for UnrestrictedWrite in contract 'TwoXJackpot':
    |      msg.sender.transfer(valueAfterTax);
    |      valueMultiplied -= valueAfterTax;
  > |      totalPaidOut[msg.sender] += valueAfterTax;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc446b5b0a696b6735bf95888a896253a1a5d25f5.sol(152)

[31mViolation[0m for UnrestrictedWrite in contract 'TwoXJackpot':
    |    }
    |
  > |    totalValue[msg.sender] += valueMultiplied;
    |
    |    buyIns.push(BuyIn({
  at /home/jiaming/mavs_srcs/contract@0xc446b5b0a696b6735bf95888a896253a1a5d25f5.sol(155)

[31mViolation[0m for UnrestrictedWrite in contract 'TwoXJackpot':
    |    totalValue[msg.sender] += valueMultiplied;
    |
  > |    buyIns.push(BuyIn({
    |      value: valueMultiplied,
    |      owner: msg.sender
  at /home/jiaming/mavs_srcs/contract@0xc446b5b0a696b6735bf95888a896253a1a5d25f5.sol(157)

[33mWarning[0m for UnrestrictedWrite in contract 'TwoXJackpot':
    |  function killme() public payable onlyContractOwner {
    |    require(now > lastAction + 30 days);
  > |    seedAmount = 0;
    |    jackpotBalance = 0;
    |    contractOwner.transfer(jackpotBalance);
  at /home/jiaming/mavs_srcs/contract@0xc446b5b0a696b6735bf95888a896253a1a5d25f5.sol(81)

[33mWarning[0m for UnrestrictedWrite in contract 'TwoXJackpot':
    |    require(now > lastAction + 30 days);
    |    seedAmount = 0;
  > |    jackpotBalance = 0;
    |    contractOwner.transfer(jackpotBalance);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc446b5b0a696b6735bf95888a896253a1a5d25f5.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'TwoXJackpot':
    |  // Contract owner can seed the Jackpot, and get it back whenever Jackpot is paid. See claim() function
    |  function seed() public payable onlyContractOwner {
  > |    seedAmount += msg.value;     // Amount owner gets back on payout.
    |    jackpotBalance += msg.value; // Increase the value of the jackpot by this much.
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc446b5b0a696b6735bf95888a896253a1a5d25f5.sol(88)

[33mWarning[0m for UnrestrictedWrite in contract 'TwoXJackpot':
    |  function seed() public payable onlyContractOwner {
    |    seedAmount += msg.value;     // Amount owner gets back on payout.
  > |    jackpotBalance += msg.value; // Increase the value of the jackpot by this much.
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc446b5b0a696b6735bf95888a896253a1a5d25f5.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'TwoXJackpot':
    |    require(now < _time); // only allow changing it to something in the future.
    |    require(now < gameStartTime); // Only change a game that has not started, prevent abuse.
  > |    gameStartTime = _time;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc446b5b0a696b6735bf95888a896253a1a5d25f5.sol(96)

[33mWarning[0m for UnrestrictedWrite in contract 'TwoXJackpot':
    |    uint256 jpotPay = jackpotBalance - seedAmount;
    |
  > |    seedAmount = 0;
    |    contractOwner.transfer(seedPay); // Return the initial seed to owner.
    |
  at /home/jiaming/mavs_srcs/contract@0xc446b5b0a696b6735bf95888a896253a1a5d25f5.sol(172)

[33mWarning[0m for UnrestrictedWrite in contract 'TwoXJackpot':
    |    contractOwner.transfer(seedPay); // Return the initial seed to owner.
    |
  > |    jackpotBalance = 0;
    |	msg.sender.transfer(jpotPay); // payout entire jackpot minus seed.
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc446b5b0a696b6735bf95888a896253a1a5d25f5.sol(175)


