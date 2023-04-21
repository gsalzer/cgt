Processing contract: /home/jiaming/mavs_srcs/contract@0xfa35645dd7d666f7f8743db98245518cdf348667.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xfa35645dd7d666f7f8743db98245518cdf348667.sol:TempleInterface
Processing contract: /home/jiaming/mavs_srcs/contract@0xfa35645dd7d666f7f8743db98245518cdf348667.sol:TribalWarfare
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0xfa35645dd7d666f7f8743db98245518cdf348667.sol(375)

[31mViolation[0m for DAO in contract 'TribalWarfare':
    |    currentDevFee = currentDevFee + devFeeAmount;
    |
  > |    templeContract.purchaseFor.value(exchangeTokensAmount)(_referredBy, msg.sender);
    |
    |    // do the sale
  at /home/jiaming/mavs_srcs/contract@0xfa35645dd7d666f7f8743db98245518cdf348667.sol(303)

[31mViolation[0m for DAOConstantGas in contract 'TribalWarfare':
    |   // round is over
    |   // distribute the winnings
  > |    tokenIndexToOwner[lastFlip].transfer(currentPot);
    |   // some event
    |   emit onRoundEnded(roundNumber, lastFlip, tokenIndexToOwner[lastFlip], currentPot);
  at /home/jiaming/mavs_srcs/contract@0xfa35645dd7d666f7f8743db98245518cdf348667.sol(247)

[33mWarning[0m for DAOConstantGas in contract 'TribalWarfare':
    |   // round is over
    |   // distribute the winnings
  > |    tokenIndexToOwner[lastFlip].transfer(currentPot);
    |   // some event
    |   emit onRoundEnded(roundNumber, lastFlip, tokenIndexToOwner[lastFlip], currentPot);
  at /home/jiaming/mavs_srcs/contract@0xfa35645dd7d666f7f8743db98245518cdf348667.sol(247)

[33mWarning[0m for DAOConstantGas in contract 'TribalWarfare':
    |    // Pay previous tokenOwner if owner is not contract
    |    if (oldOwner != address(this)) {
  > |      if (oldOwner.send(previousOwnerGets)){}
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xfa35645dd7d666f7f8743db98245518cdf348667.sol(316)

[33mWarning[0m for DAOConstantGas in contract 'TribalWarfare':
    |         uint256 amount = currentDevFee;
    |         currentDevFee = 0;
  > |         contractOwner.transfer(amount);
    |      }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xfa35645dd7d666f7f8743db98245518cdf348667.sol(364)

[33mWarning[0m for LockedEther in contract 'TribalWarfare':
    |}
    |
  > |contract TribalWarfare {
    |
    |  /*=================================
  at /home/jiaming/mavs_srcs/contract@0xfa35645dd7d666f7f8743db98245518cdf348667.sol(26)

[31mViolation[0m for MissingInputValidation in contract 'TribalWarfare':
    |
    |  /// @dev A mapping from token IDs to the address that owns them.
  > |  mapping (uint256 => address) public tokenIndexToOwner;
    |
    |  // @dev A mapping from owner address to count of tokens that address owns.
  at /home/jiaming/mavs_srcs/contract@0xfa35645dd7d666f7f8743db98245518cdf348667.sol(92)

[31mViolation[0m for MissingInputValidation in contract 'TribalWarfare':
    |  /// For querying owner of token
    |  /// @param _tokenId The tokenID for owner inquiry
  > |  function ownerOf(uint256 _tokenId)
    |    public
    |    view
  at /home/jiaming/mavs_srcs/contract@0xfa35645dd7d666f7f8743db98245518cdf348667.sol(217)

[33mWarning[0m for MissingInputValidation in contract 'TribalWarfare':
    |
    |  // @dev The address of the owner
  > |  address public contractOwner;
    |
    |  // @dev Current dev fee
  at /home/jiaming/mavs_srcs/contract@0xfa35645dd7d666f7f8743db98245518cdf348667.sol(98)

[33mWarning[0m for MissingInputValidation in contract 'TribalWarfare':
    |
    |  // @dev Current dev fee
  > |  uint256 public currentDevFee = 0;
    |
    |  // @dev The address of the temple contract
  at /home/jiaming/mavs_srcs/contract@0xfa35645dd7d666f7f8743db98245518cdf348667.sol(101)

[33mWarning[0m for MissingInputValidation in contract 'TribalWarfare':
    |
    |  // @dev The address of the temple contract
  > |  address public templeOfEthaddress = 0x0e21902d93573c18fd0acbadac4a5464e9732f54; // MAINNET
    |
    |  /// @dev Interface to exchange
  at /home/jiaming/mavs_srcs/contract@0xfa35645dd7d666f7f8743db98245518cdf348667.sol(104)

[33mWarning[0m for MissingInputValidation in contract 'TribalWarfare':
    |
    |  /// @dev Interface to exchange
  > |  TempleInterface public templeContract;
    |
    |  // @dev paused
  at /home/jiaming/mavs_srcs/contract@0xfa35645dd7d666f7f8743db98245518cdf348667.sol(107)

[33mWarning[0m for MissingInputValidation in contract 'TribalWarfare':
    |
    |  // @dev paused
  > |  bool public paused = false;
    |
    |  uint256 public currentPot =  0;
  at /home/jiaming/mavs_srcs/contract@0xfa35645dd7d666f7f8743db98245518cdf348667.sol(110)

[33mWarning[0m for MissingInputValidation in contract 'TribalWarfare':
    |  bool public paused = false;
    |
  > |  uint256 public currentPot =  0;
    |  uint256 public nextPot =  0;
    |  uint256 public roundNumber =  0;
  at /home/jiaming/mavs_srcs/contract@0xfa35645dd7d666f7f8743db98245518cdf348667.sol(112)

[33mWarning[0m for MissingInputValidation in contract 'TribalWarfare':
    |
    |  uint256 public currentPot =  0;
  > |  uint256 public nextPot =  0;
    |  uint256 public roundNumber =  0;
    |  uint256 public roundEndingTime =  0;
  at /home/jiaming/mavs_srcs/contract@0xfa35645dd7d666f7f8743db98245518cdf348667.sol(113)

[33mWarning[0m for MissingInputValidation in contract 'TribalWarfare':
    |  uint256 public currentPot =  0;
    |  uint256 public nextPot =  0;
  > |  uint256 public roundNumber =  0;
    |  uint256 public roundEndingTime =  0;
    |  uint256 public lastFlip =  0; // the last token to flip
  at /home/jiaming/mavs_srcs/contract@0xfa35645dd7d666f7f8743db98245518cdf348667.sol(114)

[33mWarning[0m for MissingInputValidation in contract 'TribalWarfare':
    |  uint256 public nextPot =  0;
    |  uint256 public roundNumber =  0;
  > |  uint256 public roundEndingTime =  0;
    |  uint256 public lastFlip =  0; // the last token to flip
    |
  at /home/jiaming/mavs_srcs/contract@0xfa35645dd7d666f7f8743db98245518cdf348667.sol(115)

[33mWarning[0m for MissingInputValidation in contract 'TribalWarfare':
    |  uint256 public roundNumber =  0;
    |  uint256 public roundEndingTime =  0;
  > |  uint256 public lastFlip =  0; // the last token to flip
    |
    |  /*==============================
  at /home/jiaming/mavs_srcs/contract@0xfa35645dd7d666f7f8743db98245518cdf348667.sol(116)

[33mWarning[0m for MissingInputValidation in contract 'TribalWarfare':
    |  }
    |
  > | function start() public payable onlyOwner {
    |   roundNumber = 1;
    |   roundEndingTime = now + initialRoundDuration;
  at /home/jiaming/mavs_srcs/contract@0xfa35645dd7d666f7f8743db98245518cdf348667.sol(232)

[33mWarning[0m for MissingInputValidation in contract 'TribalWarfare':
    | }
    |
  > | function isRoundEnd() public view returns (bool){
    |     return (now>roundEndingTime);
    | }
  at /home/jiaming/mavs_srcs/contract@0xfa35645dd7d666f7f8743db98245518cdf348667.sol(240)

[33mWarning[0m for MissingInputValidation in contract 'TribalWarfare':
    | }
    |
  > | function newRound() internal {
    |   // round is over
    |   // distribute the winnings
  at /home/jiaming/mavs_srcs/contract@0xfa35645dd7d666f7f8743db98245518cdf348667.sol(244)

[33mWarning[0m for MissingInputValidation in contract 'TribalWarfare':
    |  /*** PRIVATE FUNCTIONS ***/
    |  /// Safety check on _to address to prevent against an unexpected 0x0 default.
  > |  function _addressNotNull(address _to) private pure returns (bool) {
    |    return _to != address(0);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xfa35645dd7d666f7f8743db98245518cdf348667.sol(332)

[33mWarning[0m for MissingInputValidation in contract 'TribalWarfare':
    |
    |  /// @dev Assigns ownership of a specific token to an address.
  > |  function _transfer(address _from, address _to, uint256 _tokenId) private {
    |
    |    // no transfer to contract
  at /home/jiaming/mavs_srcs/contract@0xfa35645dd7d666f7f8743db98245518cdf348667.sol(342)

[33mWarning[0m for MissingInputValidation in contract 'TribalWarfare':
    |
    |  /// @dev Not a charity
  > |  function collectDevFees() public onlyOwner {
    |      if (currentDevFee < address(this).balance){
    |         uint256 amount = currentDevFee;
  at /home/jiaming/mavs_srcs/contract@0xfa35645dd7d666f7f8743db98245518cdf348667.sol(360)

[33mWarning[0m for MissingInputValidation in contract 'TribalWarfare':
    |    * @dev Multiplies two numbers, throws on overflow.
    |    */
  > |    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |        if (a == 0) {
    |            return 0;
  at /home/jiaming/mavs_srcs/contract@0xfa35645dd7d666f7f8743db98245518cdf348667.sol(380)

[33mWarning[0m for MissingInputValidation in contract 'TribalWarfare':
    |    * @dev Integer division of two numbers, truncating the quotient.
    |    */
  > |    function div(uint256 a, uint256 b) internal pure returns (uint256) {
    |        // assert(b > 0); // Solidity automatically throws when dividing by 0
    |        uint256 c = a / b;
  at /home/jiaming/mavs_srcs/contract@0xfa35645dd7d666f7f8743db98245518cdf348667.sol(392)

[31mViolation[0m for TODAmount in contract 'TribalWarfare':
    |   // round is over
    |   // distribute the winnings
  > |    tokenIndexToOwner[lastFlip].transfer(currentPot);
    |   // some event
    |   emit onRoundEnded(roundNumber, lastFlip, tokenIndexToOwner[lastFlip], currentPot);
  at /home/jiaming/mavs_srcs/contract@0xfa35645dd7d666f7f8743db98245518cdf348667.sol(247)

[31mViolation[0m for TODAmount in contract 'TribalWarfare':
    |         uint256 amount = currentDevFee;
    |         currentDevFee = 0;
  > |         contractOwner.transfer(amount);
    |      }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xfa35645dd7d666f7f8743db98245518cdf348667.sol(364)

[33mWarning[0m for TODReceiver in contract 'TribalWarfare':
    |      }else{
    |        // hardly fair to punish round ender
  > |        msg.sender.transfer(msg.value - currentPrice);
    |      }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfa35645dd7d666f7f8743db98245518cdf348667.sol(297)

[31mViolation[0m for UnhandledException in contract 'TribalWarfare':
    |    // Pay previous tokenOwner if owner is not contract
    |    if (oldOwner != address(this)) {
  > |      if (oldOwner.send(previousOwnerGets)){}
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xfa35645dd7d666f7f8743db98245518cdf348667.sol(316)

[33mWarning[0m for UnhandledException in contract 'TribalWarfare':
    |   // round is over
    |   // distribute the winnings
  > |    tokenIndexToOwner[lastFlip].transfer(currentPot);
    |   // some event
    |   emit onRoundEnded(roundNumber, lastFlip, tokenIndexToOwner[lastFlip], currentPot);
  at /home/jiaming/mavs_srcs/contract@0xfa35645dd7d666f7f8743db98245518cdf348667.sol(247)

[33mWarning[0m for UnhandledException in contract 'TribalWarfare':
    |      }else{
    |        // hardly fair to punish round ender
  > |        msg.sender.transfer(msg.value - currentPrice);
    |      }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfa35645dd7d666f7f8743db98245518cdf348667.sol(297)

[33mWarning[0m for UnhandledException in contract 'TribalWarfare':
    |    currentDevFee = currentDevFee + devFeeAmount;
    |
  > |    templeContract.purchaseFor.value(exchangeTokensAmount)(_referredBy, msg.sender);
    |
    |    // do the sale
  at /home/jiaming/mavs_srcs/contract@0xfa35645dd7d666f7f8743db98245518cdf348667.sol(303)

[33mWarning[0m for UnhandledException in contract 'TribalWarfare':
    |         uint256 amount = currentDevFee;
    |         currentDevFee = 0;
  > |         contractOwner.transfer(amount);
    |      }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xfa35645dd7d666f7f8743db98245518cdf348667.sol(364)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TribalWarfare':
    |   // round is over
    |   // distribute the winnings
  > |    tokenIndexToOwner[lastFlip].transfer(currentPot);
    |   // some event
    |   emit onRoundEnded(roundNumber, lastFlip, tokenIndexToOwner[lastFlip], currentPot);
  at /home/jiaming/mavs_srcs/contract@0xfa35645dd7d666f7f8743db98245518cdf348667.sol(247)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TribalWarfare':
    |         uint256 amount = currentDevFee;
    |         currentDevFee = 0;
  > |         contractOwner.transfer(amount);
    |      }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xfa35645dd7d666f7f8743db98245518cdf348667.sol(364)

[31mViolation[0m for UnrestrictedWrite in contract 'TribalWarfare':
    |   roundNumber = 1;
    |   roundEndingTime = now + initialRoundDuration;
  > |   currentPot = currentPot + SafeMath.div(msg.value,2);
    |   nextPot = nextPot + SafeMath.div(msg.value,2);
    |   paused = false;
  at /home/jiaming/mavs_srcs/contract@0xfa35645dd7d666f7f8743db98245518cdf348667.sol(235)

[31mViolation[0m for UnrestrictedWrite in contract 'TribalWarfare':
    |   roundEndingTime = now + initialRoundDuration;
    |   currentPot = currentPot + SafeMath.div(msg.value,2);
  > |   nextPot = nextPot + SafeMath.div(msg.value,2);
    |   paused = false;
    | }
  at /home/jiaming/mavs_srcs/contract@0xfa35645dd7d666f7f8743db98245518cdf348667.sol(236)

[31mViolation[0m for UnrestrictedWrite in contract 'TribalWarfare':
    |   currentPot = currentPot + SafeMath.div(msg.value,2);
    |   nextPot = nextPot + SafeMath.div(msg.value,2);
  > |   paused = false;
    | }
    |
  at /home/jiaming/mavs_srcs/contract@0xfa35645dd7d666f7f8743db98245518cdf348667.sol(237)

[31mViolation[0m for UnrestrictedWrite in contract 'TribalWarfare':
    |
    |   // reset prices
  > |   tribalMasks[0].currentPrice=tribalMasks[0].basePrice;
    |   tribalMasks[1].currentPrice=tribalMasks[1].basePrice;
    |   tribalMasks[2].currentPrice=tribalMasks[2].basePrice;
  at /home/jiaming/mavs_srcs/contract@0xfa35645dd7d666f7f8743db98245518cdf348667.sol(252)

[31mViolation[0m for UnrestrictedWrite in contract 'TribalWarfare':
    |   // reset prices
    |   tribalMasks[0].currentPrice=tribalMasks[0].basePrice;
  > |   tribalMasks[1].currentPrice=tribalMasks[1].basePrice;
    |   tribalMasks[2].currentPrice=tribalMasks[2].basePrice;
    |   tribalMasks[3].currentPrice=tribalMasks[3].basePrice;
  at /home/jiaming/mavs_srcs/contract@0xfa35645dd7d666f7f8743db98245518cdf348667.sol(253)

[31mViolation[0m for UnrestrictedWrite in contract 'TribalWarfare':
    |   tribalMasks[0].currentPrice=tribalMasks[0].basePrice;
    |   tribalMasks[1].currentPrice=tribalMasks[1].basePrice;
  > |   tribalMasks[2].currentPrice=tribalMasks[2].basePrice;
    |   tribalMasks[3].currentPrice=tribalMasks[3].basePrice;
    |   tribalMasks[4].currentPrice=tribalMasks[4].basePrice;
  at /home/jiaming/mavs_srcs/contract@0xfa35645dd7d666f7f8743db98245518cdf348667.sol(254)

[31mViolation[0m for UnrestrictedWrite in contract 'TribalWarfare':
    |   tribalMasks[1].currentPrice=tribalMasks[1].basePrice;
    |   tribalMasks[2].currentPrice=tribalMasks[2].basePrice;
  > |   tribalMasks[3].currentPrice=tribalMasks[3].basePrice;
    |   tribalMasks[4].currentPrice=tribalMasks[4].basePrice;
    |   tribalMasks[5].currentPrice=tribalMasks[5].basePrice;
  at /home/jiaming/mavs_srcs/contract@0xfa35645dd7d666f7f8743db98245518cdf348667.sol(255)

[31mViolation[0m for UnrestrictedWrite in contract 'TribalWarfare':
    |   tribalMasks[2].currentPrice=tribalMasks[2].basePrice;
    |   tribalMasks[3].currentPrice=tribalMasks[3].basePrice;
  > |   tribalMasks[4].currentPrice=tribalMasks[4].basePrice;
    |   tribalMasks[5].currentPrice=tribalMasks[5].basePrice;
    |   roundNumber++;
  at /home/jiaming/mavs_srcs/contract@0xfa35645dd7d666f7f8743db98245518cdf348667.sol(256)

[31mViolation[0m for UnrestrictedWrite in contract 'TribalWarfare':
    |   tribalMasks[3].currentPrice=tribalMasks[3].basePrice;
    |   tribalMasks[4].currentPrice=tribalMasks[4].basePrice;
  > |   tribalMasks[5].currentPrice=tribalMasks[5].basePrice;
    |   roundNumber++;
    |   roundEndingTime = now + initialRoundDuration;
  at /home/jiaming/mavs_srcs/contract@0xfa35645dd7d666f7f8743db98245518cdf348667.sol(257)

[31mViolation[0m for UnrestrictedWrite in contract 'TribalWarfare':
    |   tribalMasks[4].currentPrice=tribalMasks[4].basePrice;
    |   tribalMasks[5].currentPrice=tribalMasks[5].basePrice;
  > |   roundNumber++;
    |   roundEndingTime = now + initialRoundDuration;
    |   currentPot = nextPot;
  at /home/jiaming/mavs_srcs/contract@0xfa35645dd7d666f7f8743db98245518cdf348667.sol(258)

[31mViolation[0m for UnrestrictedWrite in contract 'TribalWarfare':
    |   tribalMasks[5].currentPrice=tribalMasks[5].basePrice;
    |   roundNumber++;
  > |   roundEndingTime = now + initialRoundDuration;
    |   currentPot = nextPot;
    |   nextPot = 0;
  at /home/jiaming/mavs_srcs/contract@0xfa35645dd7d666f7f8743db98245518cdf348667.sol(259)

[31mViolation[0m for UnrestrictedWrite in contract 'TribalWarfare':
    |   roundNumber++;
    |   roundEndingTime = now + initialRoundDuration;
  > |   currentPot = nextPot;
    |   nextPot = 0;
    | }
  at /home/jiaming/mavs_srcs/contract@0xfa35645dd7d666f7f8743db98245518cdf348667.sol(260)

[31mViolation[0m for UnrestrictedWrite in contract 'TribalWarfare':
    |   roundEndingTime = now + initialRoundDuration;
    |   currentPot = nextPot;
  > |   nextPot = 0;
    | }
    |
  at /home/jiaming/mavs_srcs/contract@0xfa35645dd7d666f7f8743db98245518cdf348667.sol(261)

[31mViolation[0m for UnrestrictedWrite in contract 'TribalWarfare':
    |    uint256 exchangeTokensAmount = SafeMath.mul(SafeMath.div(currentPrice,increaseRatePercent),exchangeTokenPercent);
    |    uint256 devFeeAmount = SafeMath.mul(SafeMath.div(currentPrice,increaseRatePercent),devFeePercent);
  > |    currentPot = currentPot + SafeMath.mul(SafeMath.div(currentPrice,increaseRatePercent),currentPotPercent);
    |    nextPot = nextPot + SafeMath.mul(SafeMath.div(currentPrice,increaseRatePercent),nextPotPercent);
    |
  at /home/jiaming/mavs_srcs/contract@0xfa35645dd7d666f7f8743db98245518cdf348667.sol(288)

[31mViolation[0m for UnrestrictedWrite in contract 'TribalWarfare':
    |    uint256 devFeeAmount = SafeMath.mul(SafeMath.div(currentPrice,increaseRatePercent),devFeePercent);
    |    currentPot = currentPot + SafeMath.mul(SafeMath.div(currentPrice,increaseRatePercent),currentPotPercent);
  > |    nextPot = nextPot + SafeMath.mul(SafeMath.div(currentPrice,increaseRatePercent),nextPotPercent);
    |
    |    // ovebid should be discouraged but not punished at round end.
  at /home/jiaming/mavs_srcs/contract@0xfa35645dd7d666f7f8743db98245518cdf348667.sol(289)

[31mViolation[0m for UnrestrictedWrite in contract 'TribalWarfare':
    |    if (msg.value > currentPrice){
    |      if (now < roundEndingTime){
  > |        nextPot = nextPot + (msg.value - currentPrice);
    |      }else{
    |        // hardly fair to punish round ender
  at /home/jiaming/mavs_srcs/contract@0xfa35645dd7d666f7f8743db98245518cdf348667.sol(294)

[31mViolation[0m for UnrestrictedWrite in contract 'TribalWarfare':
    |    }
    |
  > |    currentDevFee = currentDevFee + devFeeAmount;
    |
    |    templeContract.purchaseFor.value(exchangeTokensAmount)(_referredBy, msg.sender);
  at /home/jiaming/mavs_srcs/contract@0xfa35645dd7d666f7f8743db98245518cdf348667.sol(301)

[31mViolation[0m for UnrestrictedWrite in contract 'TribalWarfare':
    |
    |    // set new price
  > |    tribalMasks[_tokenId].currentPrice = SafeMath.mul(SafeMath.div(currentPrice,100),increaseRatePercent);
    |    // extend the time
    |    roundEndingTime = roundEndingTime + tribalMasks[_tokenId].timePowerMinutes;
  at /home/jiaming/mavs_srcs/contract@0xfa35645dd7d666f7f8743db98245518cdf348667.sol(309)

[31mViolation[0m for UnrestrictedWrite in contract 'TribalWarfare':
    |    tribalMasks[_tokenId].currentPrice = SafeMath.mul(SafeMath.div(currentPrice,100),increaseRatePercent);
    |    // extend the time
  > |    roundEndingTime = roundEndingTime + tribalMasks[_tokenId].timePowerMinutes;
    |
    |    lastFlip = _tokenId;
  at /home/jiaming/mavs_srcs/contract@0xfa35645dd7d666f7f8743db98245518cdf348667.sol(311)

[31mViolation[0m for UnrestrictedWrite in contract 'TribalWarfare':
    |    roundEndingTime = roundEndingTime + tribalMasks[_tokenId].timePowerMinutes;
    |
  > |    lastFlip = _tokenId;
    |    // Pay previous tokenOwner if owner is not contract
    |    if (oldOwner != address(this)) {
  at /home/jiaming/mavs_srcs/contract@0xfa35645dd7d666f7f8743db98245518cdf348667.sol(313)

[31mViolation[0m for UnrestrictedWrite in contract 'TribalWarfare':
    |    require (length == 0);
    |
  > |    ownershipTokenCount[_to]++;
    |    //transfer ownership
    |    tokenIndexToOwner[_tokenId] = _to;
  at /home/jiaming/mavs_srcs/contract@0xfa35645dd7d666f7f8743db98245518cdf348667.sol(349)

[31mViolation[0m for UnrestrictedWrite in contract 'TribalWarfare':
    |    ownershipTokenCount[_to]++;
    |    //transfer ownership
  > |    tokenIndexToOwner[_tokenId] = _to;
    |
    |    if (_from != address(0)) {
  at /home/jiaming/mavs_srcs/contract@0xfa35645dd7d666f7f8743db98245518cdf348667.sol(351)

[31mViolation[0m for UnrestrictedWrite in contract 'TribalWarfare':
    |
    |    if (_from != address(0)) {
  > |      ownershipTokenCount[_from]--;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xfa35645dd7d666f7f8743db98245518cdf348667.sol(354)

[33mWarning[0m for UnrestrictedWrite in contract 'TribalWarfare':
    |
    | function start() public payable onlyOwner {
  > |   roundNumber = 1;
    |   roundEndingTime = now + initialRoundDuration;
    |   currentPot = currentPot + SafeMath.div(msg.value,2);
  at /home/jiaming/mavs_srcs/contract@0xfa35645dd7d666f7f8743db98245518cdf348667.sol(233)

[33mWarning[0m for UnrestrictedWrite in contract 'TribalWarfare':
    | function start() public payable onlyOwner {
    |   roundNumber = 1;
  > |   roundEndingTime = now + initialRoundDuration;
    |   currentPot = currentPot + SafeMath.div(msg.value,2);
    |   nextPot = nextPot + SafeMath.div(msg.value,2);
  at /home/jiaming/mavs_srcs/contract@0xfa35645dd7d666f7f8743db98245518cdf348667.sol(234)

[33mWarning[0m for UnrestrictedWrite in contract 'TribalWarfare':
    |
    |   // reset prices
  > |   tribalMasks[0].currentPrice=tribalMasks[0].basePrice;
    |   tribalMasks[1].currentPrice=tribalMasks[1].basePrice;
    |   tribalMasks[2].currentPrice=tribalMasks[2].basePrice;
  at /home/jiaming/mavs_srcs/contract@0xfa35645dd7d666f7f8743db98245518cdf348667.sol(252)

[33mWarning[0m for UnrestrictedWrite in contract 'TribalWarfare':
    |   // reset prices
    |   tribalMasks[0].currentPrice=tribalMasks[0].basePrice;
  > |   tribalMasks[1].currentPrice=tribalMasks[1].basePrice;
    |   tribalMasks[2].currentPrice=tribalMasks[2].basePrice;
    |   tribalMasks[3].currentPrice=tribalMasks[3].basePrice;
  at /home/jiaming/mavs_srcs/contract@0xfa35645dd7d666f7f8743db98245518cdf348667.sol(253)

[33mWarning[0m for UnrestrictedWrite in contract 'TribalWarfare':
    |   tribalMasks[0].currentPrice=tribalMasks[0].basePrice;
    |   tribalMasks[1].currentPrice=tribalMasks[1].basePrice;
  > |   tribalMasks[2].currentPrice=tribalMasks[2].basePrice;
    |   tribalMasks[3].currentPrice=tribalMasks[3].basePrice;
    |   tribalMasks[4].currentPrice=tribalMasks[4].basePrice;
  at /home/jiaming/mavs_srcs/contract@0xfa35645dd7d666f7f8743db98245518cdf348667.sol(254)

[33mWarning[0m for UnrestrictedWrite in contract 'TribalWarfare':
    |   tribalMasks[1].currentPrice=tribalMasks[1].basePrice;
    |   tribalMasks[2].currentPrice=tribalMasks[2].basePrice;
  > |   tribalMasks[3].currentPrice=tribalMasks[3].basePrice;
    |   tribalMasks[4].currentPrice=tribalMasks[4].basePrice;
    |   tribalMasks[5].currentPrice=tribalMasks[5].basePrice;
  at /home/jiaming/mavs_srcs/contract@0xfa35645dd7d666f7f8743db98245518cdf348667.sol(255)

[33mWarning[0m for UnrestrictedWrite in contract 'TribalWarfare':
    |   tribalMasks[2].currentPrice=tribalMasks[2].basePrice;
    |   tribalMasks[3].currentPrice=tribalMasks[3].basePrice;
  > |   tribalMasks[4].currentPrice=tribalMasks[4].basePrice;
    |   tribalMasks[5].currentPrice=tribalMasks[5].basePrice;
    |   roundNumber++;
  at /home/jiaming/mavs_srcs/contract@0xfa35645dd7d666f7f8743db98245518cdf348667.sol(256)

[33mWarning[0m for UnrestrictedWrite in contract 'TribalWarfare':
    |   tribalMasks[3].currentPrice=tribalMasks[3].basePrice;
    |   tribalMasks[4].currentPrice=tribalMasks[4].basePrice;
  > |   tribalMasks[5].currentPrice=tribalMasks[5].basePrice;
    |   roundNumber++;
    |   roundEndingTime = now + initialRoundDuration;
  at /home/jiaming/mavs_srcs/contract@0xfa35645dd7d666f7f8743db98245518cdf348667.sol(257)

[33mWarning[0m for UnrestrictedWrite in contract 'TribalWarfare':
    |   tribalMasks[4].currentPrice=tribalMasks[4].basePrice;
    |   tribalMasks[5].currentPrice=tribalMasks[5].basePrice;
  > |   roundNumber++;
    |   roundEndingTime = now + initialRoundDuration;
    |   currentPot = nextPot;
  at /home/jiaming/mavs_srcs/contract@0xfa35645dd7d666f7f8743db98245518cdf348667.sol(258)

[33mWarning[0m for UnrestrictedWrite in contract 'TribalWarfare':
    |   tribalMasks[5].currentPrice=tribalMasks[5].basePrice;
    |   roundNumber++;
  > |   roundEndingTime = now + initialRoundDuration;
    |   currentPot = nextPot;
    |   nextPot = 0;
  at /home/jiaming/mavs_srcs/contract@0xfa35645dd7d666f7f8743db98245518cdf348667.sol(259)

[33mWarning[0m for UnrestrictedWrite in contract 'TribalWarfare':
    |   roundNumber++;
    |   roundEndingTime = now + initialRoundDuration;
  > |   currentPot = nextPot;
    |   nextPot = 0;
    | }
  at /home/jiaming/mavs_srcs/contract@0xfa35645dd7d666f7f8743db98245518cdf348667.sol(260)

[33mWarning[0m for UnrestrictedWrite in contract 'TribalWarfare':
    |   roundEndingTime = now + initialRoundDuration;
    |   currentPot = nextPot;
  > |   nextPot = 0;
    | }
    |
  at /home/jiaming/mavs_srcs/contract@0xfa35645dd7d666f7f8743db98245518cdf348667.sol(261)

[33mWarning[0m for UnrestrictedWrite in contract 'TribalWarfare':
    |      if (currentDevFee < address(this).balance){
    |         uint256 amount = currentDevFee;
  > |         currentDevFee = 0;
    |         contractOwner.transfer(amount);
    |      }
  at /home/jiaming/mavs_srcs/contract@0xfa35645dd7d666f7f8743db98245518cdf348667.sol(363)


