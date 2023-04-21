Processing contract: /home/jiaming/mavs_srcs/contract@0x8b90e3937a5db939f15da38af99579b3c213d02a.sol:BasicMathLib
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8b90e3937a5db939f15da38af99579b3c213d02a.sol:CrowdsaleLib
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8b90e3937a5db939f15da38af99579b3c213d02a.sol:CrowdsaleToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8b90e3937a5db939f15da38af99579b3c213d02a.sol:TokenLib
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicMathLib':
    |}
    |
  > |library BasicMathLib {
    |  event Err(string typeErr);
    |
  at /home/jiaming/mavs_srcs/contract@0x8b90e3937a5db939f15da38af99579b3c213d02a.sol(327)

[33mWarning[0m for DAOConstantGas in contract 'CrowdsaleLib':
    |    var total = self.leftoverWei[msg.sender];
    |    self.leftoverWei[msg.sender] = 0;
  > |    msg.sender.transfer(total);
    |    LogWeiWithdrawn(msg.sender, total);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x8b90e3937a5db939f15da38af99579b3c213d02a.sol(205)

[33mWarning[0m for DAOConstantGas in contract 'CrowdsaleLib':
    |    uint256 amount = self.ownerBalance;
    |    self.ownerBalance = 0;
  > |    self.owner.transfer(amount);
    |    LogOwnerEthWithdrawn(msg.sender,amount,"Crowdsale owner has withdrawn all funds!");
    |
  at /home/jiaming/mavs_srcs/contract@0x8b90e3937a5db939f15da38af99579b3c213d02a.sol(224)

[33mWarning[0m for LockedEther in contract 'CrowdsaleLib':
    | */
    |
  > |library CrowdsaleLib {
    |  using BasicMathLib for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x8b90e3937a5db939f15da38af99579b3c213d02a.sol(31)

[31mViolation[0m for MissingInputValidation in contract 'CrowdsaleLib':
    |  /// @param _percentBurn Percentage of extra tokens to burn
    |  /// @param _token Token being sold
  > |  function init(CrowdsaleStorage storage self,
    |                address _owner,
    |                uint256[] _saleData,
  at /home/jiaming/mavs_srcs/contract@0x8b90e3937a5db939f15da38af99579b3c213d02a.sol(92)

[31mViolation[0m for MissingInputValidation in contract 'CrowdsaleLib':
    |  /// @param self Stored crowdsale from crowdsale contract
    |  /// @return success
  > |  function crowdsaleActive(CrowdsaleStorage storage self) constant returns (bool) {
    |  	return (now >= self.startTime && now <= self.endTime);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8b90e3937a5db939f15da38af99579b3c213d02a.sol(136)

[31mViolation[0m for MissingInputValidation in contract 'CrowdsaleLib':
    |  /// @param self Stored crowdsale from crowdsale contract
    |  /// @return success
  > |  function crowdsaleEnded(CrowdsaleStorage storage self) constant returns (bool) {
    |  	return now > self.endTime;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8b90e3937a5db939f15da38af99579b3c213d02a.sol(143)

[31mViolation[0m for MissingInputValidation in contract 'CrowdsaleLib':
    |  /// @param self Stored crowdsale from crowdsale contract
    |  /// @return true if tokens were withdrawn
  > |  function withdrawTokens(CrowdsaleStorage storage self) returns (bool) {
    |    bool ok;
    |
  at /home/jiaming/mavs_srcs/contract@0x8b90e3937a5db939f15da38af99579b3c213d02a.sol(163)

[31mViolation[0m for MissingInputValidation in contract 'CrowdsaleLib':
    |  /// @param self Stored crowdsale from crowdsale contract
    |  /// @return true if wei was withdrawn
  > |  function withdrawLeftoverWei(CrowdsaleStorage storage self) returns (bool) {
    |    require(self.hasContributed[msg.sender] > 0);
    |    if (self.leftoverWei[msg.sender] == 0) {
  at /home/jiaming/mavs_srcs/contract@0x8b90e3937a5db939f15da38af99579b3c213d02a.sol(196)

[31mViolation[0m for MissingInputValidation in contract 'CrowdsaleLib':
    |  /// @param self Stored crowdsale from crowdsale contract
    |  /// @return true if owner withdrew eth
  > |  function withdrawOwnerEth(CrowdsaleStorage storage self) returns (bool) {
    |    if ((!crowdsaleEnded(self)) && (self.token.balanceOf(this)>0)) {
    |      LogErrorMsg("Cannot withdraw owner ether until after the sale!");
  at /home/jiaming/mavs_srcs/contract@0x8b90e3937a5db939f15da38af99579b3c213d02a.sol(213)

[31mViolation[0m for MissingInputValidation in contract 'CrowdsaleLib':
    |  /// @param _exchangeRate  ETH exchange rate expressed in cents/ETH
    |  /// @return true if the exchange rate has been set
  > |  function setTokenExchangeRate(CrowdsaleStorage storage self, uint256 _exchangeRate) returns (bool) {
    |    require(msg.sender == self.owner);
    |    require((now > (self.startTime - 3 days)) && (now < (self.startTime)));
  at /home/jiaming/mavs_srcs/contract@0x8b90e3937a5db939f15da38af99579b3c213d02a.sol(254)

[31mViolation[0m for MissingInputValidation in contract 'CrowdsaleLib':
    |  /// @param self Stored Crowdsale from crowdsale contract
    |  /// @return true if tokens set successfully
  > |  function setTokens(CrowdsaleStorage storage self) returns (bool) {
    |    require(msg.sender == self.owner);
    |    require(!self.tokensSet);
  at /home/jiaming/mavs_srcs/contract@0x8b90e3937a5db939f15da38af99579b3c213d02a.sol(285)

[31mViolation[0m for MissingInputValidation in contract 'CrowdsaleLib':
    |  /// @param self Stored Crowdsale from crowdsale contract
    |  /// @return Number of tokens sold
  > |  function getTokensSold(CrowdsaleStorage storage self) constant returns (uint256) {
    |    return self.startingTokenBalance - self.token.balanceOf(this);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8b90e3937a5db939f15da38af99579b3c213d02a.sol(322)

[33mWarning[0m for MissingInputValidation in contract 'CrowdsaleLib':
    | */
    |
  > |library CrowdsaleLib {
    |  using BasicMathLib for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x8b90e3937a5db939f15da38af99579b3c213d02a.sol(31)

[33mWarning[0m for MissingInputValidation in contract 'CrowdsaleLib':
    |  /// @param _newPrice new token price (amount of tokens per ether)
    |  /// @return true if the token price changed successfully
  > |  function changeTokenPrice(CrowdsaleStorage storage self,uint256 _newPrice) internal returns (bool) {
    |  	require(_newPrice > 0);
    |
  at /home/jiaming/mavs_srcs/contract@0x8b90e3937a5db939f15da38af99579b3c213d02a.sol(234)

[33mWarning[0m for TODReceiver in contract 'CrowdsaleLib':
    |    var total = self.leftoverWei[msg.sender];
    |    self.leftoverWei[msg.sender] = 0;
  > |    msg.sender.transfer(total);
    |    LogWeiWithdrawn(msg.sender, total);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x8b90e3937a5db939f15da38af99579b3c213d02a.sol(205)

[33mWarning[0m for UnhandledException in contract 'CrowdsaleLib':
    |    self.endTime = _endTime;
    |    self.token = _token;
  > |    self.tokenDecimals = _token.decimals();
    |    self.percentBurn = _percentBurn;
    |    self.exchangeRate = _fallbackExchangeRate;
  at /home/jiaming/mavs_srcs/contract@0x8b90e3937a5db939f15da38af99579b3c213d02a.sol(116)

[33mWarning[0m for UnhandledException in contract 'CrowdsaleLib':
    |          uint256 _burnAmount = (self.withdrawTokensMap[msg.sender] * self.percentBurn)/100;
    |          self.withdrawTokensMap[msg.sender] = self.withdrawTokensMap[msg.sender] - _burnAmount;
  > |          ok = self.token.burnToken(_burnAmount);
    |          require(ok);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x8b90e3937a5db939f15da38af99579b3c213d02a.sol(179)

[33mWarning[0m for UnhandledException in contract 'CrowdsaleLib':
    |    var total = self.withdrawTokensMap[msg.sender];
    |    self.withdrawTokensMap[msg.sender] = 0;
  > |    ok = self.token.transfer(msg.sender, total);
    |    require(ok);
    |    LogTokensWithdrawn(msg.sender, total);
  at /home/jiaming/mavs_srcs/contract@0x8b90e3937a5db939f15da38af99579b3c213d02a.sol(187)

[33mWarning[0m for UnhandledException in contract 'CrowdsaleLib':
    |    var total = self.leftoverWei[msg.sender];
    |    self.leftoverWei[msg.sender] = 0;
  > |    msg.sender.transfer(total);
    |    LogWeiWithdrawn(msg.sender, total);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x8b90e3937a5db939f15da38af99579b3c213d02a.sol(205)

[33mWarning[0m for UnhandledException in contract 'CrowdsaleLib':
    |  /// @return true if owner withdrew eth
    |  function withdrawOwnerEth(CrowdsaleStorage storage self) returns (bool) {
  > |    if ((!crowdsaleEnded(self)) && (self.token.balanceOf(this)>0)) {
    |      LogErrorMsg("Cannot withdraw owner ether until after the sale!");
    |      return false;
  at /home/jiaming/mavs_srcs/contract@0x8b90e3937a5db939f15da38af99579b3c213d02a.sol(214)

[33mWarning[0m for UnhandledException in contract 'CrowdsaleLib':
    |    uint256 amount = self.ownerBalance;
    |    self.ownerBalance = 0;
  > |    self.owner.transfer(amount);
    |    LogOwnerEthWithdrawn(msg.sender,amount,"Crowdsale owner has withdrawn all funds!");
    |
  at /home/jiaming/mavs_srcs/contract@0x8b90e3937a5db939f15da38af99579b3c213d02a.sol(224)

[33mWarning[0m for UnhandledException in contract 'CrowdsaleLib':
    |    require((now > (self.startTime - 3 days)) && (now < (self.startTime)));
    |    require(!self.rateSet);   // the exchange rate can only be set once!
  > |    require(self.token.balanceOf(this) > 0);
    |    require(_exchangeRate > 0);
    |
  at /home/jiaming/mavs_srcs/contract@0x8b90e3937a5db939f15da38af99579b3c213d02a.sol(258)

[33mWarning[0m for UnhandledException in contract 'CrowdsaleLib':
    |    require(!err);
    |
  > |    _tokenBalance = self.token.balanceOf(this);
    |    self.withdrawTokensMap[msg.sender] = _tokenBalance;
    |    self.startingTokenBalance = _tokenBalance;
  at /home/jiaming/mavs_srcs/contract@0x8b90e3937a5db939f15da38af99579b3c213d02a.sol(268)

[33mWarning[0m for UnhandledException in contract 'CrowdsaleLib':
    |    uint256 _tokenBalance;
    |
  > |    _tokenBalance = self.token.balanceOf(this);
    |    self.withdrawTokensMap[msg.sender] = _tokenBalance;
    |    self.startingTokenBalance = _tokenBalance;
  at /home/jiaming/mavs_srcs/contract@0x8b90e3937a5db939f15da38af99579b3c213d02a.sol(291)

[33mWarning[0m for UnhandledException in contract 'CrowdsaleLib':
    |  /// @return Number of tokens sold
    |  function getTokensSold(CrowdsaleStorage storage self) constant returns (uint256) {
  > |    return self.startingTokenBalance - self.token.balanceOf(this);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x8b90e3937a5db939f15da38af99579b3c213d02a.sol(323)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CrowdsaleLib':
    |    self.endTime = _endTime;
    |    self.token = _token;
  > |    self.tokenDecimals = _token.decimals();
    |    self.percentBurn = _percentBurn;
    |    self.exchangeRate = _fallbackExchangeRate;
  at /home/jiaming/mavs_srcs/contract@0x8b90e3937a5db939f15da38af99579b3c213d02a.sol(116)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CrowdsaleLib':
    |          uint256 _burnAmount = (self.withdrawTokensMap[msg.sender] * self.percentBurn)/100;
    |          self.withdrawTokensMap[msg.sender] = self.withdrawTokensMap[msg.sender] - _burnAmount;
  > |          ok = self.token.burnToken(_burnAmount);
    |          require(ok);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x8b90e3937a5db939f15da38af99579b3c213d02a.sol(179)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CrowdsaleLib':
    |    var total = self.withdrawTokensMap[msg.sender];
    |    self.withdrawTokensMap[msg.sender] = 0;
  > |    ok = self.token.transfer(msg.sender, total);
    |    require(ok);
    |    LogTokensWithdrawn(msg.sender, total);
  at /home/jiaming/mavs_srcs/contract@0x8b90e3937a5db939f15da38af99579b3c213d02a.sol(187)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CrowdsaleLib':
    |  /// @return true if owner withdrew eth
    |  function withdrawOwnerEth(CrowdsaleStorage storage self) returns (bool) {
  > |    if ((!crowdsaleEnded(self)) && (self.token.balanceOf(this)>0)) {
    |      LogErrorMsg("Cannot withdraw owner ether until after the sale!");
    |      return false;
  at /home/jiaming/mavs_srcs/contract@0x8b90e3937a5db939f15da38af99579b3c213d02a.sol(214)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CrowdsaleLib':
    |    uint256 amount = self.ownerBalance;
    |    self.ownerBalance = 0;
  > |    self.owner.transfer(amount);
    |    LogOwnerEthWithdrawn(msg.sender,amount,"Crowdsale owner has withdrawn all funds!");
    |
  at /home/jiaming/mavs_srcs/contract@0x8b90e3937a5db939f15da38af99579b3c213d02a.sol(224)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CrowdsaleLib':
    |    require((now > (self.startTime - 3 days)) && (now < (self.startTime)));
    |    require(!self.rateSet);   // the exchange rate can only be set once!
  > |    require(self.token.balanceOf(this) > 0);
    |    require(_exchangeRate > 0);
    |
  at /home/jiaming/mavs_srcs/contract@0x8b90e3937a5db939f15da38af99579b3c213d02a.sol(258)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CrowdsaleLib':
    |    require(!err);
    |
  > |    _tokenBalance = self.token.balanceOf(this);
    |    self.withdrawTokensMap[msg.sender] = _tokenBalance;
    |    self.startingTokenBalance = _tokenBalance;
  at /home/jiaming/mavs_srcs/contract@0x8b90e3937a5db939f15da38af99579b3c213d02a.sol(268)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CrowdsaleLib':
    |    uint256 _tokenBalance;
    |
  > |    _tokenBalance = self.token.balanceOf(this);
    |    self.withdrawTokensMap[msg.sender] = _tokenBalance;
    |    self.startingTokenBalance = _tokenBalance;
  at /home/jiaming/mavs_srcs/contract@0x8b90e3937a5db939f15da38af99579b3c213d02a.sol(291)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CrowdsaleLib':
    |  /// @return Number of tokens sold
    |  function getTokensSold(CrowdsaleStorage storage self) constant returns (uint256) {
  > |    return self.startingTokenBalance - self.token.balanceOf(this);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x8b90e3937a5db939f15da38af99579b3c213d02a.sol(323)

[31mViolation[0m for UnrestrictedWrite in contract 'CrowdsaleLib':
    |
    |/**
  > | * @title CrowdsaleLib
    | * @author Majoolr.io
    | *
  at /home/jiaming/mavs_srcs/contract@0x8b90e3937a5db939f15da38af99579b3c213d02a.sol(4)

[31mViolation[0m for UnrestrictedWrite in contract 'CrowdsaleLib':
    |    require(_fallbackExchangeRate > 0);
    |    require(_percentBurn <= 100);
  > |    self.owner = _owner;
    |    self.capAmount = ((_capAmountInCents/_fallbackExchangeRate) + 1)*(10**18);
    |    self.startTime = _saleData[0];
  at /home/jiaming/mavs_srcs/contract@0x8b90e3937a5db939f15da38af99579b3c213d02a.sol(111)

[31mViolation[0m for UnrestrictedWrite in contract 'CrowdsaleLib':
    |    require(_percentBurn <= 100);
    |    self.owner = _owner;
  > |    self.capAmount = ((_capAmountInCents/_fallbackExchangeRate) + 1)*(10**18);
    |    self.startTime = _saleData[0];
    |    self.endTime = _endTime;
  at /home/jiaming/mavs_srcs/contract@0x8b90e3937a5db939f15da38af99579b3c213d02a.sol(112)

[31mViolation[0m for UnrestrictedWrite in contract 'CrowdsaleLib':
    |    self.owner = _owner;
    |    self.capAmount = ((_capAmountInCents/_fallbackExchangeRate) + 1)*(10**18);
  > |    self.startTime = _saleData[0];
    |    self.endTime = _endTime;
    |    self.token = _token;
  at /home/jiaming/mavs_srcs/contract@0x8b90e3937a5db939f15da38af99579b3c213d02a.sol(113)

[31mViolation[0m for UnrestrictedWrite in contract 'CrowdsaleLib':
    |    self.capAmount = ((_capAmountInCents/_fallbackExchangeRate) + 1)*(10**18);
    |    self.startTime = _saleData[0];
  > |    self.endTime = _endTime;
    |    self.token = _token;
    |    self.tokenDecimals = _token.decimals();
  at /home/jiaming/mavs_srcs/contract@0x8b90e3937a5db939f15da38af99579b3c213d02a.sol(114)

[31mViolation[0m for UnrestrictedWrite in contract 'CrowdsaleLib':
    |    self.startTime = _saleData[0];
    |    self.endTime = _endTime;
  > |    self.token = _token;
    |    self.tokenDecimals = _token.decimals();
    |    self.percentBurn = _percentBurn;
  at /home/jiaming/mavs_srcs/contract@0x8b90e3937a5db939f15da38af99579b3c213d02a.sol(115)

[31mViolation[0m for UnrestrictedWrite in contract 'CrowdsaleLib':
    |    self.endTime = _endTime;
    |    self.token = _token;
  > |    self.tokenDecimals = _token.decimals();
    |    self.percentBurn = _percentBurn;
    |    self.exchangeRate = _fallbackExchangeRate;
  at /home/jiaming/mavs_srcs/contract@0x8b90e3937a5db939f15da38af99579b3c213d02a.sol(116)

[31mViolation[0m for UnrestrictedWrite in contract 'CrowdsaleLib':
    |    self.token = _token;
    |    self.tokenDecimals = _token.decimals();
  > |    self.percentBurn = _percentBurn;
    |    self.exchangeRate = _fallbackExchangeRate;
    |
  at /home/jiaming/mavs_srcs/contract@0x8b90e3937a5db939f15da38af99579b3c213d02a.sol(117)

[31mViolation[0m for UnrestrictedWrite in contract 'CrowdsaleLib':
    |    self.tokenDecimals = _token.decimals();
    |    self.percentBurn = _percentBurn;
  > |    self.exchangeRate = _fallbackExchangeRate;
    |
    |    uint256 _tempTime;
  at /home/jiaming/mavs_srcs/contract@0x8b90e3937a5db939f15da38af99579b3c213d02a.sol(118)

[31mViolation[0m for UnrestrictedWrite in contract 'CrowdsaleLib':
    |      require(_saleData[i + 1] > 0);
    |      require((_saleData[i + 2] == 0) || (_saleData[i + 2] >= 100));
  > |      self.milestoneTimes.push(_saleData[i]);
    |      self.saleData[_saleData[i]][0] = _saleData[i + 1];
    |      self.saleData[_saleData[i]][1] = _saleData[i + 2];
  at /home/jiaming/mavs_srcs/contract@0x8b90e3937a5db939f15da38af99579b3c213d02a.sol(125)

[31mViolation[0m for UnrestrictedWrite in contract 'CrowdsaleLib':
    |      require((_saleData[i + 2] == 0) || (_saleData[i + 2] >= 100));
    |      self.milestoneTimes.push(_saleData[i]);
  > |      self.saleData[_saleData[i]][0] = _saleData[i + 1];
    |      self.saleData[_saleData[i]][1] = _saleData[i + 2];
    |      _tempTime = _saleData[i];
  at /home/jiaming/mavs_srcs/contract@0x8b90e3937a5db939f15da38af99579b3c213d02a.sol(126)

[31mViolation[0m for UnrestrictedWrite in contract 'CrowdsaleLib':
    |      self.milestoneTimes.push(_saleData[i]);
    |      self.saleData[_saleData[i]][0] = _saleData[i + 1];
  > |      self.saleData[_saleData[i]][1] = _saleData[i + 2];
    |      _tempTime = _saleData[i];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8b90e3937a5db939f15da38af99579b3c213d02a.sol(127)

[31mViolation[0m for UnrestrictedWrite in contract 'CrowdsaleLib':
    |    remainder = self.exchangeRate % _newPrice;
    |    if(remainder > 0) {
  > |      self.tokensPerEth = result + 1;
    |    } else {
    |      self.tokensPerEth = result;
  at /home/jiaming/mavs_srcs/contract@0x8b90e3937a5db939f15da38af99579b3c213d02a.sol(243)

[31mViolation[0m for UnrestrictedWrite in contract 'CrowdsaleLib':
    |      self.tokensPerEth = result + 1;
    |    } else {
  > |      self.tokensPerEth = result;
    |    }
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x8b90e3937a5db939f15da38af99579b3c213d02a.sol(245)

[31mViolation[0m for UnrestrictedWrite in contract 'CrowdsaleLib':
    |    self.capAmount = (_capAmountInCents/_exchangeRate) + 1;
    |    changeTokenPrice(self,self.saleData[self.milestoneTimes[0]][0]);
  > |    self.rateSet = true;
    |
    |    LogNoticeMsg(msg.sender,self.tokensPerEth,"Owner has sent the exchange Rate and tokens bought per ETH!");
  at /home/jiaming/mavs_srcs/contract@0x8b90e3937a5db939f15da38af99579b3c213d02a.sol(276)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleLib':
    |        if(self.percentBurn > 0){
    |          uint256 _burnAmount = (self.withdrawTokensMap[msg.sender] * self.percentBurn)/100;
  > |          self.withdrawTokensMap[msg.sender] = self.withdrawTokensMap[msg.sender] - _burnAmount;
    |          ok = self.token.burnToken(_burnAmount);
    |          require(ok);
  at /home/jiaming/mavs_srcs/contract@0x8b90e3937a5db939f15da38af99579b3c213d02a.sol(178)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleLib':
    |
    |    var total = self.withdrawTokensMap[msg.sender];
  > |    self.withdrawTokensMap[msg.sender] = 0;
    |    ok = self.token.transfer(msg.sender, total);
    |    require(ok);
  at /home/jiaming/mavs_srcs/contract@0x8b90e3937a5db939f15da38af99579b3c213d02a.sol(186)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleLib':
    |
    |    var total = self.leftoverWei[msg.sender];
  > |    self.leftoverWei[msg.sender] = 0;
    |    msg.sender.transfer(total);
    |    LogWeiWithdrawn(msg.sender, total);
  at /home/jiaming/mavs_srcs/contract@0x8b90e3937a5db939f15da38af99579b3c213d02a.sol(204)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleLib':
    |
    |    _tokenBalance = self.token.balanceOf(this);
  > |    self.withdrawTokensMap[msg.sender] = _tokenBalance;
    |    self.startingTokenBalance = _tokenBalance;
    |    self.tokensSet = true;
  at /home/jiaming/mavs_srcs/contract@0x8b90e3937a5db939f15da38af99579b3c213d02a.sol(269)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleLib':
    |
    |    _tokenBalance = self.token.balanceOf(this);
  > |    self.withdrawTokensMap[msg.sender] = _tokenBalance;
    |    self.startingTokenBalance = _tokenBalance;
    |    self.tokensSet = true;
  at /home/jiaming/mavs_srcs/contract@0x8b90e3937a5db939f15da38af99579b3c213d02a.sol(292)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleLib':
    |
    |    uint256 amount = self.ownerBalance;
  > |    self.ownerBalance = 0;
    |    self.owner.transfer(amount);
    |    LogOwnerEthWithdrawn(msg.sender,amount,"Crowdsale owner has withdrawn all funds!");
  at /home/jiaming/mavs_srcs/contract@0x8b90e3937a5db939f15da38af99579b3c213d02a.sol(223)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleLib':
    |    _tokenBalance = self.token.balanceOf(this);
    |    self.withdrawTokensMap[msg.sender] = _tokenBalance;
  > |    self.startingTokenBalance = _tokenBalance;
    |    self.tokensSet = true;
    |
  at /home/jiaming/mavs_srcs/contract@0x8b90e3937a5db939f15da38af99579b3c213d02a.sol(270)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleLib':
    |    self.withdrawTokensMap[msg.sender] = _tokenBalance;
    |    self.startingTokenBalance = _tokenBalance;
  > |    self.tokensSet = true;
    |
    |    self.exchangeRate = _exchangeRate;
  at /home/jiaming/mavs_srcs/contract@0x8b90e3937a5db939f15da38af99579b3c213d02a.sol(271)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleLib':
    |    self.tokensSet = true;
    |
  > |    self.exchangeRate = _exchangeRate;
    |    self.capAmount = (_capAmountInCents/_exchangeRate) + 1;
    |    changeTokenPrice(self,self.saleData[self.milestoneTimes[0]][0]);
  at /home/jiaming/mavs_srcs/contract@0x8b90e3937a5db939f15da38af99579b3c213d02a.sol(273)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleLib':
    |
    |    self.exchangeRate = _exchangeRate;
  > |    self.capAmount = (_capAmountInCents/_exchangeRate) + 1;
    |    changeTokenPrice(self,self.saleData[self.milestoneTimes[0]][0]);
    |    self.rateSet = true;
  at /home/jiaming/mavs_srcs/contract@0x8b90e3937a5db939f15da38af99579b3c213d02a.sol(274)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleLib':
    |    _tokenBalance = self.token.balanceOf(this);
    |    self.withdrawTokensMap[msg.sender] = _tokenBalance;
  > |    self.startingTokenBalance = _tokenBalance;
    |    self.tokensSet = true;
    |
  at /home/jiaming/mavs_srcs/contract@0x8b90e3937a5db939f15da38af99579b3c213d02a.sol(293)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleLib':
    |    self.withdrawTokensMap[msg.sender] = _tokenBalance;
    |    self.startingTokenBalance = _tokenBalance;
  > |    self.tokensSet = true;
    |
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x8b90e3937a5db939f15da38af99579b3c213d02a.sol(294)

[33mWarning[0m for LockedEther in contract 'CrowdsaleToken':
    |}
    |
  > |contract CrowdsaleToken {
    |  using TokenLib for TokenLib.TokenStorage;
    |
  at /home/jiaming/mavs_srcs/contract@0x8b90e3937a5db939f15da38af99579b3c213d02a.sol(622)

[31mViolation[0m for MissingInputValidation in contract 'CrowdsaleToken':
    |  }
    |
  > |  function balanceOf(address who) constant returns (uint256) {
    |    return token.balanceOf(who);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8b90e3937a5db939f15da38af99579b3c213d02a.sol(657)

[31mViolation[0m for MissingInputValidation in contract 'CrowdsaleToken':
    |  }
    |
  > |  function allowance(address owner, address spender) constant returns (uint256) {
    |    return token.allowance(owner, spender);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8b90e3937a5db939f15da38af99579b3c213d02a.sol(661)

[31mViolation[0m for MissingInputValidation in contract 'CrowdsaleToken':
    |  }
    |
  > |  function transfer(address to, uint value) returns (bool ok) {
    |    return token.transfer(to, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8b90e3937a5db939f15da38af99579b3c213d02a.sol(665)

[31mViolation[0m for MissingInputValidation in contract 'CrowdsaleToken':
    |  }
    |
  > |  function transferFrom(address from, address to, uint value) returns (bool ok) {
    |    return token.transferFrom(from, to, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8b90e3937a5db939f15da38af99579b3c213d02a.sol(669)

[31mViolation[0m for MissingInputValidation in contract 'CrowdsaleToken':
    |  }
    |
  > |  function approve(address spender, uint value) returns (bool ok) {
    |    return token.approve(spender, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8b90e3937a5db939f15da38af99579b3c213d02a.sol(673)

[31mViolation[0m for MissingInputValidation in contract 'CrowdsaleToken':
    |  }
    |
  > |  function changeOwner(address newOwner) returns (bool ok) {
    |    return token.changeOwner(newOwner);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8b90e3937a5db939f15da38af99579b3c213d02a.sol(677)

[31mViolation[0m for MissingInputValidation in contract 'CrowdsaleToken':
    |  }
    |
  > |  function burnToken(uint256 amount) returns (bool ok) {
    |    return token.burnToken(amount);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8b90e3937a5db939f15da38af99579b3c213d02a.sol(681)

[33mWarning[0m for MissingInputValidation in contract 'CrowdsaleToken':
    |  using TokenLib for TokenLib.TokenStorage;
    |
  > |  TokenLib.TokenStorage public token;
    |
    |  function CrowdsaleToken(address owner,
  at /home/jiaming/mavs_srcs/contract@0x8b90e3937a5db939f15da38af99579b3c213d02a.sol(625)

[33mWarning[0m for MissingInputValidation in contract 'CrowdsaleToken':
    |  }
    |
  > |  function name() constant returns (string) {
    |    return token.name;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8b90e3937a5db939f15da38af99579b3c213d02a.sol(637)

[33mWarning[0m for MissingInputValidation in contract 'CrowdsaleToken':
    |  }
    |
  > |  function symbol() constant returns (string) {
    |    return token.symbol;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8b90e3937a5db939f15da38af99579b3c213d02a.sol(641)

[33mWarning[0m for MissingInputValidation in contract 'CrowdsaleToken':
    |  }
    |
  > |  function decimals() constant returns (uint8) {
    |    return token.decimals;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8b90e3937a5db939f15da38af99579b3c213d02a.sol(645)

[33mWarning[0m for MissingInputValidation in contract 'CrowdsaleToken':
    |  }
    |
  > |  function totalSupply() constant returns (uint256) {
    |    return token.totalSupply;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8b90e3937a5db939f15da38af99579b3c213d02a.sol(649)

[33mWarning[0m for MissingInputValidation in contract 'CrowdsaleToken':
    |  }
    |
  > |  function initialSupply() constant returns (uint256) {
    |    return token.INITIAL_SUPPLY;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8b90e3937a5db939f15da38af99579b3c213d02a.sol(653)

[31mViolation[0m for LockedEther in contract 'TokenLib':
    |}
    |
  > |library TokenLib {
    |  using BasicMathLib for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x8b90e3937a5db939f15da38af99579b3c213d02a.sol(407)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenLib':
    |}
    |
  > |library TokenLib {
    |  using BasicMathLib for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x8b90e3937a5db939f15da38af99579b3c213d02a.sol(407)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenLib':
    |    self.name = _name;
    |    self.symbol = _symbol;
  > |    self.totalSupply = _initial_supply;
    |    self.INITIAL_SUPPLY = _initial_supply;
    |    self.decimals = _decimals;
  at /home/jiaming/mavs_srcs/contract@0x8b90e3937a5db939f15da38af99579b3c213d02a.sol(447)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenLib':
    |    self.symbol = _symbol;
    |    self.totalSupply = _initial_supply;
  > |    self.INITIAL_SUPPLY = _initial_supply;
    |    self.decimals = _decimals;
    |    self.owner = _owner;
  at /home/jiaming/mavs_srcs/contract@0x8b90e3937a5db939f15da38af99579b3c213d02a.sol(448)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenLib':
    |    self.totalSupply = _initial_supply;
    |    self.INITIAL_SUPPLY = _initial_supply;
  > |    self.decimals = _decimals;
    |    self.owner = _owner;
    |    self.stillMinting = _allowMinting;
  at /home/jiaming/mavs_srcs/contract@0x8b90e3937a5db939f15da38af99579b3c213d02a.sol(449)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenLib':
    |    self.INITIAL_SUPPLY = _initial_supply;
    |    self.decimals = _decimals;
  > |    self.owner = _owner;
    |    self.stillMinting = _allowMinting;
    |    self.balances[_owner] = _initial_supply;
  at /home/jiaming/mavs_srcs/contract@0x8b90e3937a5db939f15da38af99579b3c213d02a.sol(450)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenLib':
    |    self.decimals = _decimals;
    |    self.owner = _owner;
  > |    self.stillMinting = _allowMinting;
    |    self.balances[_owner] = _initial_supply;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8b90e3937a5db939f15da38af99579b3c213d02a.sol(451)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenLib':
    |    self.owner = _owner;
    |    self.stillMinting = _allowMinting;
  > |    self.balances[_owner] = _initial_supply;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x8b90e3937a5db939f15da38af99579b3c213d02a.sol(452)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenLib':
    |    self.balances[msg.sender] = balance;
    |    //It's not possible to overflow token supply
  > |    self.balances[_to] = self.balances[_to] + _value;
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x8b90e3937a5db939f15da38af99579b3c213d02a.sol(468)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenLib':
    |    require(!err);
    |
  > |    self.balances[_from] = balanceOwner;
    |    self.allowed[_from][msg.sender] = balanceSpender;
    |    self.balances[_to] = self.balances[_to] + _value;
  at /home/jiaming/mavs_srcs/contract@0x8b90e3937a5db939f15da38af99579b3c213d02a.sol(496)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenLib':
    |    self.balances[_from] = balanceOwner;
    |    self.allowed[_from][msg.sender] = balanceSpender;
  > |    self.balances[_to] = self.balances[_to] + _value;
    |
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x8b90e3937a5db939f15da38af99579b3c213d02a.sol(498)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenLib':
    |
    |      self.balances[msg.sender] = _newBalance;
  > |      self.totalSupply = self.totalSupply - _amount;
    |      Burn(msg.sender, _amount);
    |      Transfer(msg.sender, 0x0, _amount);
  at /home/jiaming/mavs_srcs/contract@0x8b90e3937a5db939f15da38af99579b3c213d02a.sol(615)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenLib':
    |    (err,balance) = self.balances[msg.sender].minus(_value);
    |    require(!err);
  > |    self.balances[msg.sender] = balance;
    |    //It's not possible to overflow token supply
    |    self.balances[_to] = self.balances[_to] + _value;
  at /home/jiaming/mavs_srcs/contract@0x8b90e3937a5db939f15da38af99579b3c213d02a.sol(466)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenLib':
    |
    |    self.balances[_from] = balanceOwner;
  > |    self.allowed[_from][msg.sender] = balanceSpender;
    |    self.balances[_to] = self.balances[_to] + _value;
    |
  at /home/jiaming/mavs_srcs/contract@0x8b90e3937a5db939f15da38af99579b3c213d02a.sol(497)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenLib':
    |  /// @return True if completed
    |  function approve(TokenStorage storage self, address _spender, uint256 _value) returns (bool) {
  > |    self.allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x8b90e3937a5db939f15da38af99579b3c213d02a.sol(518)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenLib':
    |      require(!err);
    |
  > |      self.allowed[msg.sender][_spender] = _newAllowed;
    |    } else {
    |      if (_valueChange > self.allowed[msg.sender][_spender]) {
  at /home/jiaming/mavs_srcs/contract@0x8b90e3937a5db939f15da38af99579b3c213d02a.sol(548)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenLib':
    |    } else {
    |      if (_valueChange > self.allowed[msg.sender][_spender]) {
  > |        self.allowed[msg.sender][_spender] = 0;
    |      } else {
    |        _newAllowed = self.allowed[msg.sender][_spender] - _valueChange;
  at /home/jiaming/mavs_srcs/contract@0x8b90e3937a5db939f15da38af99579b3c213d02a.sol(551)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenLib':
    |      } else {
    |        _newAllowed = self.allowed[msg.sender][_spender] - _valueChange;
  > |        self.allowed[msg.sender][_spender] = _newAllowed;
    |      }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8b90e3937a5db939f15da38af99579b3c213d02a.sol(554)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenLib':
    |      require(!err);
    |
  > |      self.balances[msg.sender] = _newBalance;
    |      self.totalSupply = self.totalSupply - _amount;
    |      Burn(msg.sender, _amount);
  at /home/jiaming/mavs_srcs/contract@0x8b90e3937a5db939f15da38af99579b3c213d02a.sol(614)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenLib':
    |    require((self.owner == msg.sender) && (_newOwner > 0));
    |
  > |    self.owner = _newOwner;
    |    OwnerChange(msg.sender, _newOwner);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x8b90e3937a5db939f15da38af99579b3c213d02a.sol(569)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenLib':
    |    require(!err);
    |
  > |    self.totalSupply =  _newAmount;
    |    self.balances[self.owner] = self.balances[self.owner] + _amount;
    |    Transfer(0x0, self.owner, _amount);
  at /home/jiaming/mavs_srcs/contract@0x8b90e3937a5db939f15da38af99579b3c213d02a.sol(586)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenLib':
    |
    |    self.totalSupply =  _newAmount;
  > |    self.balances[self.owner] = self.balances[self.owner] + _amount;
    |    Transfer(0x0, self.owner, _amount);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x8b90e3937a5db939f15da38af99579b3c213d02a.sol(587)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenLib':
    |    require(self.owner == msg.sender);
    |
  > |    self.stillMinting = false;
    |    MintingClosed(true);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x8b90e3937a5db939f15da38af99579b3c213d02a.sol(598)


