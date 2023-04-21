Processing contract: /home/jiaming/mavs_srcs/contract@0x85e4cd785887cad7c6be93f2f34d5fa683f9bfcd.sol:ERC721
Processing contract: /home/jiaming/mavs_srcs/contract@0x85e4cd785887cad7c6be93f2f34d5fa683f9bfcd.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x85e4cd785887cad7c6be93f2f34d5fa683f9bfcd.sol:apexONEInterface
Processing contract: /home/jiaming/mavs_srcs/contract@0x85e4cd785887cad7c6be93f2f34d5fa683f9bfcd.sol:apexSolids
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
  at /home/jiaming/mavs_srcs/contract@0x85e4cd785887cad7c6be93f2f34d5fa683f9bfcd.sol(505)

[33mWarning[0m for DAOConstantGas in contract 'apexSolids':
    |    // Pay previous tokenOwner if owner is not contract
    |    if (oldOwner != address(this)) {
  > |      if (oldOwner.send(previousOwnerGets)){}
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x85e4cd785887cad7c6be93f2f34d5fa683f9bfcd.sol(316)

[33mWarning[0m for DAOConstantGas in contract 'apexSolids':
    |        uint256 amount = bagHolderFund;
    |        solids[_tokenId].bagHolderFund = 0;
  > |        msg.sender.transfer(amount);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x85e4cd785887cad7c6be93f2f34d5fa683f9bfcd.sol(353)

[33mWarning[0m for DAOConstantGas in contract 'apexSolids':
    |         uint256 amount = currentDevFee;
    |         currentDevFee = 0;
  > |         contractOwner.transfer(amount);
    |      }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x85e4cd785887cad7c6be93f2f34d5fa683f9bfcd.sol(481)

[33mWarning[0m for LockedEther in contract 'apexSolids':
    |}
    |
  > |contract apexSolids is ERC721 {
    |
    |  /*=================================
  at /home/jiaming/mavs_srcs/contract@0x85e4cd785887cad7c6be93f2f34d5fa683f9bfcd.sol(40)

[31mViolation[0m for MissingInputValidation in contract 'apexSolids':
    |
    |  /// @dev A mapping from solid IDs to the address that owns them.
  > |  mapping (uint256 => address) public solidIndexToOwner;
    |
    |  // @dev A mapping from owner address to count of tokens that address owns.
  at /home/jiaming/mavs_srcs/contract@0x85e4cd785887cad7c6be93f2f34d5fa683f9bfcd.sol(109)

[31mViolation[0m for MissingInputValidation in contract 'apexSolids':
    |
    |  /// @dev A mapping from SolidID to an address that has been approved to call
  > |  mapping (uint256 => address) public solidIndexToApproved;
    |
    |  // @dev The address of the owner
  at /home/jiaming/mavs_srcs/contract@0x85e4cd785887cad7c6be93f2f34d5fa683f9bfcd.sol(115)

[31mViolation[0m for MissingInputValidation in contract 'apexSolids':
    |  /// @param _tokenId The ID of the Token that can be transferred if this call succeeds.
    |  /// @dev Required for ERC-721 compliance.
  > |  function approve(
    |    address _to,
    |    uint256 _tokenId
  at /home/jiaming/mavs_srcs/contract@0x85e4cd785887cad7c6be93f2f34d5fa683f9bfcd.sol(218)

[31mViolation[0m for MissingInputValidation in contract 'apexSolids':
    |  /// @param _owner The address for balance query
    |  /// @dev Required for ERC-721 compliance.
  > |  function balanceOf(address _owner) public view returns (uint256 balance) {
    |    return ownershipTokenCount[_owner];
    |  }
  at /home/jiaming/mavs_srcs/contract@0x85e4cd785887cad7c6be93f2f34d5fa683f9bfcd.sol(233)

[31mViolation[0m for MissingInputValidation in contract 'apexSolids':
    |  /// @param _tokenId The tokenID for owner inquiry
    |  /// @dev Required for ERC-721 compliance.
  > |  function ownerOf(uint256 _tokenId)
    |    public
    |    view
  at /home/jiaming/mavs_srcs/contract@0x85e4cd785887cad7c6be93f2f34d5fa683f9bfcd.sol(266)

[31mViolation[0m for MissingInputValidation in contract 'apexSolids':
    |
    |  // Allows someone to send ether and obtain the token
  > |  function purchase(uint256 _tokenId , address _referredBy) public payable notContract notPaused notGasbag /*notMoron*/ {
    |
    |    address oldOwner = solidIndexToOwner[_tokenId];
  at /home/jiaming/mavs_srcs/contract@0x85e4cd785887cad7c6be93f2f34d5fa683f9bfcd.sol(276)

[31mViolation[0m for MissingInputValidation in contract 'apexSolids':
    |  }
    |
  > |  function collectBagHolderFund(uint256 _tokenId) public notPaused {
    |      require(msg.sender == solidIndexToOwner[_tokenId]);
    |      uint256 bagHolderFund;
  at /home/jiaming/mavs_srcs/contract@0x85e4cd785887cad7c6be93f2f34d5fa683f9bfcd.sol(339)

[31mViolation[0m for MissingInputValidation in contract 'apexSolids':
    |  /// @param _tokenId The ID of the Token that can be transferred if this call succeeds.
    |  /// @dev Required for ERC-721 compliance.
  > |  function takeOwnership(uint256 _tokenId) public {
    |    address newOwner = msg.sender;
    |    address oldOwner = solidIndexToOwner[_tokenId];
  at /home/jiaming/mavs_srcs/contract@0x85e4cd785887cad7c6be93f2f34d5fa683f9bfcd.sol(365)

[31mViolation[0m for MissingInputValidation in contract 'apexSolids':
    |  /// @param _owner The owner whose tokens we are interested in.
    |  /// @dev This method MUST NEVER be called by smart contract code.
  > |  function tokensOfOwner(address _owner) public view returns(uint256[] ownerTokens) {
    |    uint256 tokenCount = balanceOf(_owner);
    |    if (tokenCount == 0) {
  at /home/jiaming/mavs_srcs/contract@0x85e4cd785887cad7c6be93f2f34d5fa683f9bfcd.sol(380)

[31mViolation[0m for MissingInputValidation in contract 'apexSolids':
    |  /// @param _tokenId The ID of the Token that can be transferred if this call succeeds.
    |  /// @dev Required for ERC-721 compliance.
  > |  function transfer(
    |    address _to,
    |    uint256 _tokenId
  at /home/jiaming/mavs_srcs/contract@0x85e4cd785887cad7c6be93f2f34d5fa683f9bfcd.sol(411)

[31mViolation[0m for MissingInputValidation in contract 'apexSolids':
    |  /// @param _tokenId The ID of the Token that can be transferred if this call succeeds.
    |  /// @dev Required for ERC-721 compliance.
  > |  function transferFrom(
    |    address _from,
    |    address _to,
  at /home/jiaming/mavs_srcs/contract@0x85e4cd785887cad7c6be93f2f34d5fa683f9bfcd.sol(426)

[31mViolation[0m for MissingInputValidation in contract 'apexSolids':
    |   apexONEInterface public exchangeContract;
    |
  > |  function setExchangeAddresss(address _address) public onlyOwner {
    |    exchangeContract = apexONEInterface(_address);
    |    apexONEaddress = _address;
  at /home/jiaming/mavs_srcs/contract@0x85e4cd785887cad7c6be93f2f34d5fa683f9bfcd.sol(488)

[31mViolation[0m for MissingInputValidation in contract 'apexSolids':
    |
    |   /// @dev stop and start
  > |   function setPaused(bool _paused) public onlyOwner {
    |     paused = _paused;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x85e4cd785887cad7c6be93f2f34d5fa683f9bfcd.sol(494)

[33mWarning[0m for MissingInputValidation in contract 'apexSolids':
    |  ==============================*/
    |
  > |  string public constant NAME = "apex Solids";
    |  string public constant SYMBOL = "APXS";
    |
  at /home/jiaming/mavs_srcs/contract@0x85e4cd785887cad7c6be93f2f34d5fa683f9bfcd.sol(94)

[33mWarning[0m for MissingInputValidation in contract 'apexSolids':
    |
    |  string public constant NAME = "apex Solids";
  > |  string public constant SYMBOL = "APXS";
    |
    |  uint256 private increaseRatePercent =  130;
  at /home/jiaming/mavs_srcs/contract@0x85e4cd785887cad7c6be93f2f34d5fa683f9bfcd.sol(95)

[33mWarning[0m for MissingInputValidation in contract 'apexSolids':
    |
    |  // @dev The address of the owner
  > |  address public contractOwner;
    |
    |  // @dev Current dev fee
  at /home/jiaming/mavs_srcs/contract@0x85e4cd785887cad7c6be93f2f34d5fa683f9bfcd.sol(118)

[33mWarning[0m for MissingInputValidation in contract 'apexSolids':
    |
    |  // @dev Current dev fee
  > |  uint256 public currentDevFee = 0;
    |
    |  // @dev The address of the exchange contract
  at /home/jiaming/mavs_srcs/contract@0x85e4cd785887cad7c6be93f2f34d5fa683f9bfcd.sol(121)

[33mWarning[0m for MissingInputValidation in contract 'apexSolids':
    |
    |  // @dev The address of the exchange contract
  > |  address public apexONEaddress;
    |
    |  // @dev paused
  at /home/jiaming/mavs_srcs/contract@0x85e4cd785887cad7c6be93f2f34d5fa683f9bfcd.sol(124)

[33mWarning[0m for MissingInputValidation in contract 'apexSolids':
    |
    |  // @dev paused
  > |  bool public paused;
    |
    |  /*==============================
  at /home/jiaming/mavs_srcs/contract@0x85e4cd785887cad7c6be93f2f34d5fa683f9bfcd.sol(127)

[33mWarning[0m for MissingInputValidation in contract 'apexSolids':
    |  }
    |
  > |  function implementsERC721() public pure returns (bool) {
    |    return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x85e4cd785887cad7c6be93f2f34d5fa683f9bfcd.sol(254)

[33mWarning[0m for MissingInputValidation in contract 'apexSolids':
    |
    |  /// @dev Required for ERC-721 compliance.
  > |  function name() public pure returns (string) {
    |    return NAME;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x85e4cd785887cad7c6be93f2f34d5fa683f9bfcd.sol(259)

[33mWarning[0m for MissingInputValidation in contract 'apexSolids':
    |
    |  /// @dev Required for ERC-721 compliance.
  > |  function symbol() public pure returns (string) {
    |    return SYMBOL;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x85e4cd785887cad7c6be93f2f34d5fa683f9bfcd.sol(358)

[33mWarning[0m for MissingInputValidation in contract 'apexSolids':
    |  /// For querying totalSupply of token
    |  /// @dev Required for ERC-721 compliance.
  > |  function totalSupply() public view returns (uint256 total) {
    |    return 5;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x85e4cd785887cad7c6be93f2f34d5fa683f9bfcd.sol(403)

[33mWarning[0m for MissingInputValidation in contract 'apexSolids':
    |  /*** PRIVATE FUNCTIONS ***/
    |  /// Safety check on _to address to prevent against an unexpected 0x0 default.
  > |  function _addressNotNull(address _to) private pure returns (bool) {
    |    return _to != address(0);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x85e4cd785887cad7c6be93f2f34d5fa683f9bfcd.sol(440)

[33mWarning[0m for MissingInputValidation in contract 'apexSolids':
    |
    |  /// For checking approval of transfer for address _to
  > |  function _approved(address _to, uint256 _tokenId) private view returns (bool) {
    |    return solidIndexToApproved[_tokenId] == _to;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x85e4cd785887cad7c6be93f2f34d5fa683f9bfcd.sol(445)

[33mWarning[0m for MissingInputValidation in contract 'apexSolids':
    |
    |  /// Check for token ownership
  > |  function _owns(address claimant, uint256 _tokenId) private view returns (bool) {
    |    return claimant == solidIndexToOwner[_tokenId];
    |  }
  at /home/jiaming/mavs_srcs/contract@0x85e4cd785887cad7c6be93f2f34d5fa683f9bfcd.sol(450)

[33mWarning[0m for MissingInputValidation in contract 'apexSolids':
    |
    |  /// @dev Assigns ownership of a specific token to an address.
  > |  function _transfer(address _from, address _to, uint256 _tokenId) private {
    |
    |    // no transfer to contract
  at /home/jiaming/mavs_srcs/contract@0x85e4cd785887cad7c6be93f2f34d5fa683f9bfcd.sol(455)

[33mWarning[0m for MissingInputValidation in contract 'apexSolids':
    |
    |  /// @dev Not a charity
  > |  function collectDevFees() public onlyOwner {
    |      if (currentDevFee < address(this).balance){
    |         uint256 amount = currentDevFee;
  at /home/jiaming/mavs_srcs/contract@0x85e4cd785887cad7c6be93f2f34d5fa683f9bfcd.sol(477)

[33mWarning[0m for MissingInputValidation in contract 'apexSolids':
    |
    |  /// @dev Interface to exchange
  > |   apexONEInterface public exchangeContract;
    |
    |  function setExchangeAddresss(address _address) public onlyOwner {
  at /home/jiaming/mavs_srcs/contract@0x85e4cd785887cad7c6be93f2f34d5fa683f9bfcd.sol(486)

[33mWarning[0m for MissingInputValidation in contract 'apexSolids':
    |    * @dev Multiplies two numbers, throws on overflow.
    |    */
  > |    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |        if (a == 0) {
    |            return 0;
  at /home/jiaming/mavs_srcs/contract@0x85e4cd785887cad7c6be93f2f34d5fa683f9bfcd.sol(510)

[33mWarning[0m for MissingInputValidation in contract 'apexSolids':
    |    * @dev Integer division of two numbers, truncating the quotient.
    |    */
  > |    function div(uint256 a, uint256 b) internal pure returns (uint256) {
    |        // assert(b > 0); // Solidity automatically throws when dividing by 0
    |        uint256 c = a / b;
  at /home/jiaming/mavs_srcs/contract@0x85e4cd785887cad7c6be93f2f34d5fa683f9bfcd.sol(522)

[31mViolation[0m for TODAmount in contract 'apexSolids':
    |         uint256 amount = currentDevFee;
    |         currentDevFee = 0;
  > |         contractOwner.transfer(amount);
    |      }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x85e4cd785887cad7c6be93f2f34d5fa683f9bfcd.sol(481)

[33mWarning[0m for TODReceiver in contract 'apexSolids':
    |    }else{
    |        // send excess back because exchange is not ready
  > |        msg.sender.transfer(exchangeTokensAmount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x85e4cd785887cad7c6be93f2f34d5fa683f9bfcd.sol(303)

[33mWarning[0m for TODReceiver in contract 'apexSolids':
    |        uint256 amount = bagHolderFund;
    |        solids[_tokenId].bagHolderFund = 0;
  > |        msg.sender.transfer(amount);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x85e4cd785887cad7c6be93f2f34d5fa683f9bfcd.sol(353)

[31mViolation[0m for UnhandledException in contract 'apexSolids':
    |    // Pay previous tokenOwner if owner is not contract
    |    if (oldOwner != address(this)) {
  > |      if (oldOwner.send(previousOwnerGets)){}
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x85e4cd785887cad7c6be93f2f34d5fa683f9bfcd.sol(316)

[33mWarning[0m for UnhandledException in contract 'apexSolids':
    |    currentDevFee = currentDevFee + devFeeAmount;
    |
  > |    if (exchangeContract.isStarted()) {
    |        exchangeContract.buyFor.value(exchangeTokensAmount)(_referredBy, msg.sender);
    |    }else{
  at /home/jiaming/mavs_srcs/contract@0x85e4cd785887cad7c6be93f2f34d5fa683f9bfcd.sol(299)

[33mWarning[0m for UnhandledException in contract 'apexSolids':
    |
    |    if (exchangeContract.isStarted()) {
  > |        exchangeContract.buyFor.value(exchangeTokensAmount)(_referredBy, msg.sender);
    |    }else{
    |        // send excess back because exchange is not ready
  at /home/jiaming/mavs_srcs/contract@0x85e4cd785887cad7c6be93f2f34d5fa683f9bfcd.sol(300)

[33mWarning[0m for UnhandledException in contract 'apexSolids':
    |    }else{
    |        // send excess back because exchange is not ready
  > |        msg.sender.transfer(exchangeTokensAmount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x85e4cd785887cad7c6be93f2f34d5fa683f9bfcd.sol(303)

[33mWarning[0m for UnhandledException in contract 'apexSolids':
    |        uint256 amount = bagHolderFund;
    |        solids[_tokenId].bagHolderFund = 0;
  > |        msg.sender.transfer(amount);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x85e4cd785887cad7c6be93f2f34d5fa683f9bfcd.sol(353)

[33mWarning[0m for UnhandledException in contract 'apexSolids':
    |         uint256 amount = currentDevFee;
    |         currentDevFee = 0;
  > |         contractOwner.transfer(amount);
    |      }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x85e4cd785887cad7c6be93f2f34d5fa683f9bfcd.sol(481)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'apexSolids':
    |         uint256 amount = currentDevFee;
    |         currentDevFee = 0;
  > |         contractOwner.transfer(amount);
    |      }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x85e4cd785887cad7c6be93f2f34d5fa683f9bfcd.sol(481)

[31mViolation[0m for UnrestrictedWrite in contract 'apexSolids':
    |    uint256 bagHolderFundAmount = SafeMath.mul(SafeMath.div(currentPrice,increaseRatePercent),bagHolderFundPercent);
    |
  > |    currentDevFee = currentDevFee + devFeeAmount;
    |
    |    if (exchangeContract.isStarted()) {
  at /home/jiaming/mavs_srcs/contract@0x85e4cd785887cad7c6be93f2f34d5fa683f9bfcd.sol(297)

[31mViolation[0m for UnrestrictedWrite in contract 'apexSolids':
    |
    |    // set new price and saleTime
  > |    solids[_tokenId].highPrice = SafeMath.mul(SafeMath.div(currentPrice,100),increaseRatePercent);
    |    solids[_tokenId].saleTime = now;
    |    solids[_tokenId].bagHolderFund+=bagHolderFundAmount;
  at /home/jiaming/mavs_srcs/contract@0x85e4cd785887cad7c6be93f2f34d5fa683f9bfcd.sol(310)

[31mViolation[0m for UnrestrictedWrite in contract 'apexSolids':
    |    // set new price and saleTime
    |    solids[_tokenId].highPrice = SafeMath.mul(SafeMath.div(currentPrice,100),increaseRatePercent);
  > |    solids[_tokenId].saleTime = now;
    |    solids[_tokenId].bagHolderFund+=bagHolderFundAmount;
    |
  at /home/jiaming/mavs_srcs/contract@0x85e4cd785887cad7c6be93f2f34d5fa683f9bfcd.sol(311)

[31mViolation[0m for UnrestrictedWrite in contract 'apexSolids':
    |    solids[_tokenId].highPrice = SafeMath.mul(SafeMath.div(currentPrice,100),increaseRatePercent);
    |    solids[_tokenId].saleTime = now;
  > |    solids[_tokenId].bagHolderFund+=bagHolderFundAmount;
    |
    |    // Pay previous tokenOwner if owner is not contract
  at /home/jiaming/mavs_srcs/contract@0x85e4cd785887cad7c6be93f2f34d5fa683f9bfcd.sol(312)

[31mViolation[0m for UnrestrictedWrite in contract 'apexSolids':
    |        require(isBagFundAvailable && bagHolderFund > 0);
    |        uint256 amount = bagHolderFund;
  > |        solids[_tokenId].bagHolderFund = 0;
    |        msg.sender.transfer(amount);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x85e4cd785887cad7c6be93f2f34d5fa683f9bfcd.sol(352)

[31mViolation[0m for UnrestrictedWrite in contract 'apexSolids':
    |    require (length == 0);
    |
  > |    ownershipTokenCount[_to]++;
    |    //transfer ownership
    |    solidIndexToOwner[_tokenId] = _to;
  at /home/jiaming/mavs_srcs/contract@0x85e4cd785887cad7c6be93f2f34d5fa683f9bfcd.sol(462)

[31mViolation[0m for UnrestrictedWrite in contract 'apexSolids':
    |    ownershipTokenCount[_to]++;
    |    //transfer ownership
  > |    solidIndexToOwner[_tokenId] = _to;
    |
    |    if (_from != address(0)) {
  at /home/jiaming/mavs_srcs/contract@0x85e4cd785887cad7c6be93f2f34d5fa683f9bfcd.sol(464)

[31mViolation[0m for UnrestrictedWrite in contract 'apexSolids':
    |
    |    if (_from != address(0)) {
  > |      ownershipTokenCount[_from]--;
    |      // clear any previously approved ownership exchange
    |      delete solidIndexToApproved[_tokenId];
  at /home/jiaming/mavs_srcs/contract@0x85e4cd785887cad7c6be93f2f34d5fa683f9bfcd.sol(467)

[31mViolation[0m for UnrestrictedWrite in contract 'apexSolids':
    |      ownershipTokenCount[_from]--;
    |      // clear any previously approved ownership exchange
  > |      delete solidIndexToApproved[_tokenId];
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x85e4cd785887cad7c6be93f2f34d5fa683f9bfcd.sol(469)

[33mWarning[0m for UnrestrictedWrite in contract 'apexSolids':
    |    require (length == 0);
    |
  > |    ownershipTokenCount[_to]++;
    |    //transfer ownership
    |    solidIndexToOwner[_tokenId] = _to;
  at /home/jiaming/mavs_srcs/contract@0x85e4cd785887cad7c6be93f2f34d5fa683f9bfcd.sol(462)

[33mWarning[0m for UnrestrictedWrite in contract 'apexSolids':
    |
    |    if (_from != address(0)) {
  > |      ownershipTokenCount[_from]--;
    |      // clear any previously approved ownership exchange
    |      delete solidIndexToApproved[_tokenId];
  at /home/jiaming/mavs_srcs/contract@0x85e4cd785887cad7c6be93f2f34d5fa683f9bfcd.sol(467)

[33mWarning[0m for UnrestrictedWrite in contract 'apexSolids':
    |      ownershipTokenCount[_from]--;
    |      // clear any previously approved ownership exchange
  > |      delete solidIndexToApproved[_tokenId];
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x85e4cd785887cad7c6be93f2f34d5fa683f9bfcd.sol(469)

[33mWarning[0m for UnrestrictedWrite in contract 'apexSolids':
    |    require(_owns(msg.sender, _tokenId));
    |
  > |    solidIndexToApproved[_tokenId] = _to;
    |
    |    emit Approval(msg.sender, _to, _tokenId);
  at /home/jiaming/mavs_srcs/contract@0x85e4cd785887cad7c6be93f2f34d5fa683f9bfcd.sol(225)

[33mWarning[0m for UnrestrictedWrite in contract 'apexSolids':
    |      if (currentDevFee < address(this).balance){
    |         uint256 amount = currentDevFee;
  > |         currentDevFee = 0;
    |         contractOwner.transfer(amount);
    |      }
  at /home/jiaming/mavs_srcs/contract@0x85e4cd785887cad7c6be93f2f34d5fa683f9bfcd.sol(480)

[33mWarning[0m for UnrestrictedWrite in contract 'apexSolids':
    |
    |  function setExchangeAddresss(address _address) public onlyOwner {
  > |    exchangeContract = apexONEInterface(_address);
    |    apexONEaddress = _address;
    |   }
  at /home/jiaming/mavs_srcs/contract@0x85e4cd785887cad7c6be93f2f34d5fa683f9bfcd.sol(489)

[33mWarning[0m for UnrestrictedWrite in contract 'apexSolids':
    |  function setExchangeAddresss(address _address) public onlyOwner {
    |    exchangeContract = apexONEInterface(_address);
  > |    apexONEaddress = _address;
    |   }
    |
  at /home/jiaming/mavs_srcs/contract@0x85e4cd785887cad7c6be93f2f34d5fa683f9bfcd.sol(490)

[33mWarning[0m for UnrestrictedWrite in contract 'apexSolids':
    |   /// @dev stop and start
    |   function setPaused(bool _paused) public onlyOwner {
  > |     paused = _paused;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x85e4cd785887cad7c6be93f2f34d5fa683f9bfcd.sol(495)


