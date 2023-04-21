Processing contract: /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol:OpportyToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol:OpportyWhiteList
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol:OpportyWhiteListHold
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    | * @dev Basic version of StandardToken, with no allowances.
    | */
  > |contract BasicToken is ERC20Basic {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(90)

[33mWarning[0m for LockedEther in contract 'OpportyToken':
    | * `StandardToken` functions.
    | */
  > |contract OpportyToken is StandardToken {
    |
    |  string public constant name = "OpportyToken";
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(219)

[33mWarning[0m for UnrestrictedWrite in contract 'OpportyToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'OpportyToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(143)

[33mWarning[0m for UnrestrictedWrite in contract 'OpportyToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(159)

[33mWarning[0m for UnrestrictedWrite in contract 'OpportyToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(185)

[33mWarning[0m for UnrestrictedWrite in contract 'OpportyToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(203)

[33mWarning[0m for UnrestrictedWrite in contract 'OpportyToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(205)

[33mWarning[0m for DAOConstantGas in contract 'OpportyWhiteList':
    |    if (now > endDate) {
    |      state = SaleState.ENDED;
  > |      msg.sender.transfer(msg.value);
    |      return;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(552)

[33mWarning[0m for DAOConstantGas in contract 'OpportyWhiteList':
    |     */
    |  function forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(584)

[33mWarning[0m for DAOConstantGas in contract 'OpportyWhiteList':
    |    require(tokensTransferredToHold == true);
    |    uint bal = this.balance;
  > |    wallet.transfer(bal);
    |    WithdrawedEthToWallet(bal);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(617)

[33mWarning[0m for LockedEther in contract 'OpportyWhiteList':
    |}
    |
  > |contract OpportyWhiteList is Pausable {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(428)

[31mViolation[0m for TODAmount in contract 'OpportyWhiteList':
    |    require(tokensTransferredToHold == true);
    |    uint bal = this.balance;
  > |    wallet.transfer(bal);
    |    WithdrawedEthToWallet(bal);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(617)

[33mWarning[0m for TODReceiver in contract 'OpportyWhiteList':
    |    if (now > endDate) {
    |      state = SaleState.ENDED;
  > |      msg.sender.transfer(msg.value);
    |      return;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(552)

[33mWarning[0m for UnhandledException in contract 'OpportyWhiteList':
    |    if (now > endDate) {
    |      state = SaleState.ENDED;
  > |      msg.sender.transfer(msg.value);
    |      return;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(552)

[33mWarning[0m for UnhandledException in contract 'OpportyWhiteList':
    |    tokenRaised += tokenAmount;
    |
  > |    holdContract.addHolder(msg.sender, tokenAmount, contrib.holdPeriod, contrib.holdTimestamp);
    |    AddedToHolder(msg.sender, tokenAmount, contrib.holdPeriod, contrib.holdTimestamp);
    |    FundTransfered(msg.sender, msg.value);
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(571)

[33mWarning[0m for UnhandledException in contract 'OpportyWhiteList':
    |     */
    |  function forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(584)

[33mWarning[0m for UnhandledException in contract 'OpportyWhiteList':
    |
    |  function getBalanceContract() view internal returns (uint) {
  > |    return token.balanceOf(this);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(589)

[33mWarning[0m for UnhandledException in contract 'OpportyWhiteList':
    |    require(getBalanceContract() >= tokenRaised);
    |
  > |    if (token.transfer(holdContract, tokenRaised)) {
    |      tokensTransferredToHold = true;
    |      TokensTransferedToHold(holdContract, tokenRaised);
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(597)

[33mWarning[0m for UnhandledException in contract 'OpportyWhiteList':
    |    uint balance;
    |    balance = getBalanceContract() ;
  > |    token.transfer(msg.sender, balance);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(608)

[33mWarning[0m for UnhandledException in contract 'OpportyWhiteList':
    |    require(tokensTransferredToHold == true);
    |    uint bal = this.balance;
  > |    wallet.transfer(bal);
    |    WithdrawedEthToWallet(bal);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(617)

[33mWarning[0m for UnhandledException in contract 'OpportyWhiteList':
    |
    |  function getTokenBalance() public constant returns (uint) {
  > |    return token.balanceOf(this);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(646)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'OpportyWhiteList':
    |    tokenRaised += tokenAmount;
    |
  > |    holdContract.addHolder(msg.sender, tokenAmount, contrib.holdPeriod, contrib.holdTimestamp);
    |    AddedToHolder(msg.sender, tokenAmount, contrib.holdPeriod, contrib.holdTimestamp);
    |    FundTransfered(msg.sender, msg.value);
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(571)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'OpportyWhiteList':
    |
    |  function getBalanceContract() view internal returns (uint) {
  > |    return token.balanceOf(this);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(589)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'OpportyWhiteList':
    |    require(getBalanceContract() >= tokenRaised);
    |
  > |    if (token.transfer(holdContract, tokenRaised)) {
    |      tokensTransferredToHold = true;
    |      TokensTransferedToHold(holdContract, tokenRaised);
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(597)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'OpportyWhiteList':
    |    uint balance;
    |    balance = getBalanceContract() ;
  > |    token.transfer(msg.sender, balance);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(608)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'OpportyWhiteList':
    |    require(tokensTransferredToHold == true);
    |    uint bal = this.balance;
  > |    wallet.transfer(bal);
    |    WithdrawedEthToWallet(bal);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(617)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'OpportyWhiteList':
    |
    |  function getTokenBalance() public constant returns (uint) {
  > |    return token.balanceOf(this);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(646)

[31mViolation[0m for UnrestrictedWrite in contract 'OpportyWhiteList':
    |
    |    if (whiteList[inv].isActive == false) {
  > |      whiteList[inv].isActive = true;
    |      whiteList[inv].payed = false;
    |      whitelistIndexes[whitelistIndex] = inv;
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(530)

[31mViolation[0m for UnrestrictedWrite in contract 'OpportyWhiteList':
    |    if (whiteList[inv].isActive == false) {
    |      whiteList[inv].isActive = true;
  > |      whiteList[inv].payed = false;
    |      whitelistIndexes[whitelistIndex] = inv;
    |      whitelistIndex++;
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(531)

[31mViolation[0m for UnrestrictedWrite in contract 'OpportyWhiteList':
    |      whiteList[inv].isActive = true;
    |      whiteList[inv].payed = false;
  > |      whitelistIndexes[whitelistIndex] = inv;
    |      whitelistIndex++;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(532)

[31mViolation[0m for UnrestrictedWrite in contract 'OpportyWhiteList':
    |      whiteList[inv].payed = false;
    |      whitelistIndexes[whitelistIndex] = inv;
  > |      whitelistIndex++;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(533)

[31mViolation[0m for UnrestrictedWrite in contract 'OpportyWhiteList':
    |    }
    |
  > |    whiteList[inv].invAmount = amount;
    |    whiteList[inv].holdPeriod = holdPeriod;
    |    whiteList[inv].bonus = bonus;
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(536)

[31mViolation[0m for UnrestrictedWrite in contract 'OpportyWhiteList':
    |
    |    whiteList[inv].invAmount = amount;
  > |    whiteList[inv].holdPeriod = holdPeriod;
    |    whiteList[inv].bonus = bonus;
    |
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(537)

[31mViolation[0m for UnrestrictedWrite in contract 'OpportyWhiteList':
    |    whiteList[inv].invAmount = amount;
    |    whiteList[inv].holdPeriod = holdPeriod;
  > |    whiteList[inv].bonus = bonus;
    |
    |    whiteList[inv].holdTimestamp = endSaleDate.add(whiteList[inv].holdPeriod * 30 days); 
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(538)

[31mViolation[0m for UnrestrictedWrite in contract 'OpportyWhiteList':
    |    whiteList[inv].bonus = bonus;
    |
  > |    whiteList[inv].holdTimestamp = endSaleDate.add(whiteList[inv].holdPeriod * 30 days); 
    |    
    |    AddedToWhiteList(inv, whiteList[inv].invAmount, whiteList[inv].holdPeriod,  whiteList[inv].bonus);
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(540)

[31mViolation[0m for UnrestrictedWrite in contract 'OpportyWhiteList':
    |
    |    if (now > endDate) {
  > |      state = SaleState.ENDED;
    |      msg.sender.transfer(msg.value);
    |      return;
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(551)

[31mViolation[0m for UnrestrictedWrite in contract 'OpportyWhiteList':
    |    }
    |
  > |    ethRaised += msg.value;
    |
    |    uint tokenAmount = msg.value.div(price);
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(563)

[33mWarning[0m for UnrestrictedWrite in contract 'OpportyWhiteList':
    |
    |    if (whiteList[msg.sender].payed == false) {
  > |      whiteList[msg.sender].payed = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(560)

[33mWarning[0m for UnrestrictedWrite in contract 'OpportyWhiteList':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(273)

[33mWarning[0m for UnrestrictedWrite in contract 'OpportyWhiteList':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(415)

[33mWarning[0m for UnrestrictedWrite in contract 'OpportyWhiteList':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(423)

[33mWarning[0m for UnrestrictedWrite in contract 'OpportyWhiteList':
    |
    |  function setToken(address newToken) public onlyOwner {
  > |    token = OpportyToken(newToken);
    |    TokenChanged(token);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(510)

[33mWarning[0m for UnrestrictedWrite in contract 'OpportyWhiteList':
    |
    |  function startPresale() public onlyOwner {
  > |    state = SaleState.SALE;
    |    SaleStarted(block.number);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(515)

[33mWarning[0m for UnrestrictedWrite in contract 'OpportyWhiteList':
    |
    |  function endPresale() public onlyOwner {
  > |    state = SaleState.ENDED;
    |    SaleEnded(block.number);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(520)

[33mWarning[0m for UnrestrictedWrite in contract 'OpportyWhiteList':
    |
    |    if (token.transfer(holdContract, tokenRaised)) {
  > |      tokensTransferredToHold = true;
    |      TokensTransferedToHold(holdContract, tokenRaised);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(598)

[33mWarning[0m for UnrestrictedWrite in contract 'OpportyWhiteList':
    |  function setPrice(uint newPrice) public onlyOwner {
    |    uint oldPrice = price;
  > |    price = newPrice;
    |    ManualPriceChange(oldPrice, newPrice);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(623)

[33mWarning[0m for UnrestrictedWrite in contract 'OpportyWhiteList':
    |  function setEndSaleDate(uint date) public onlyOwner {
    |    uint oldEndDate = endSaleDate;
  > |    endSaleDate = date;
    |    ManualChangeEndDate(oldEndDate, date);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(629)

[33mWarning[0m for UnrestrictedWrite in contract 'OpportyWhiteList':
    |  function setEndDate(uint date) public onlyOwner {
    |    uint oldEndDate = endDate;
  > |    endDate = date;
    |    ManualChangeEndDate(oldEndDate, date);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(635)

[33mWarning[0m for UnrestrictedWrite in contract 'OpportyWhiteList':
    |  function setMinimalContribution(uint minimumAmount) public onlyOwner {
    |    uint oldMinAmount = minimalContribution;
  > |    minimalContribution = minimumAmount;
    |    ChangeMinAmount(oldMinAmount, minimalContribution);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(641)

[33mWarning[0m for UnrestrictedWrite in contract 'OpportyWhiteList':
    |
    |  function addAssetsOwner(address _owner) public onlyOwner {
  > |    assetOwnersIndexes++;
    |    assetOwners[assetOwnersIndexes] = _owner;
    |    assetOwnersIndex[_owner] = assetOwnersIndexes;
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(654)

[33mWarning[0m for UnrestrictedWrite in contract 'OpportyWhiteList':
    |  function addAssetsOwner(address _owner) public onlyOwner {
    |    assetOwnersIndexes++;
  > |    assetOwners[assetOwnersIndexes] = _owner;
    |    assetOwnersIndex[_owner] = assetOwnersIndexes;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(655)

[33mWarning[0m for UnrestrictedWrite in contract 'OpportyWhiteList':
    |    assetOwnersIndexes++;
    |    assetOwners[assetOwnersIndexes] = _owner;
  > |    assetOwnersIndex[_owner] = assetOwnersIndexes;
    |  }
    |  function removeAssetsOwner(address _owner) public onlyOwner {
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(656)

[33mWarning[0m for UnrestrictedWrite in contract 'OpportyWhiteList':
    |  function removeAssetsOwner(address _owner) public onlyOwner {
    |    uint index = assetOwnersIndex[_owner];
  > |    delete assetOwnersIndex[_owner];
    |    delete assetOwners[index];
    |    assetOwnersIndexes--;
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(660)

[33mWarning[0m for UnrestrictedWrite in contract 'OpportyWhiteList':
    |    uint index = assetOwnersIndex[_owner];
    |    delete assetOwnersIndex[_owner];
  > |    delete assetOwners[index];
    |    assetOwnersIndexes--;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(661)

[33mWarning[0m for UnrestrictedWrite in contract 'OpportyWhiteList':
    |    delete assetOwnersIndex[_owner];
    |    delete assetOwners[index];
  > |    assetOwnersIndexes--;
    |  }
    |  function getAssetsOwners(uint _index) onlyOwner public constant returns (address) {
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(662)

[33mWarning[0m for LockedEther in contract 'OpportyWhiteListHold':
    |}
    |
  > |contract OpportyWhiteListHold is Ownable {
    |  using SafeMath for uint256;
    |  // Addresses and contracts
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(278)

[31mViolation[0m for MissingInputValidation in contract 'OpportyWhiteListHold':
    |  }
    |
  > |  mapping(address => Holder) public holderList;
    |  mapping(uint => address) private holderIndexes;
    |
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(291)

[31mViolation[0m for MissingInputValidation in contract 'OpportyWhiteListHold':
    |  }
    |
  > |  function setToken(address newToken) public onlyOwner {
    |    OppToken = OpportyToken(newToken);
    |    TokenChanged(newToken);
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(315)

[31mViolation[0m for MissingInputValidation in contract 'OpportyWhiteListHold':
    |  }
    |
  > |  function changeHold(address holder, uint tokens, uint8 period, uint holdTimestamp, bool withdrawed ) public onlyAssetsOwners {
    |    if (holderList[holder].isActive == true) {
    |      holderList[holder].tokens = tokens;
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(320)

[31mViolation[0m for MissingInputValidation in contract 'OpportyWhiteListHold':
    |  }
    |
  > |  function addHolder(address holder, uint tokens, uint8 timed, uint timest) onlyAssetsOwners external {
    |    if (holderList[holder].isActive == false) {
    |      holderList[holder].isActive = true;
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(330)

[31mViolation[0m for MissingInputValidation in contract 'OpportyWhiteListHold':
    |  }
    |
  > |  function addAssetsOwner(address _owner) public onlyOwner {
    |    assetOwnersIndexes++;
    |    assetOwners[assetOwnersIndexes] = _owner;
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(368)

[31mViolation[0m for MissingInputValidation in contract 'OpportyWhiteListHold':
    |    assetOwnersIndex[_owner] = assetOwnersIndexes;
    |  }
  > |  function removeAssetsOwner(address _owner) public onlyOwner {
    |    uint index = assetOwnersIndex[_owner];
    |    delete assetOwnersIndex[_owner];
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(373)

[31mViolation[0m for MissingInputValidation in contract 'OpportyWhiteListHold':
    |    assetOwnersIndexes--;
    |  }
  > |  function getAssetsOwners(uint _index) onlyOwner public constant returns (address) {
    |    return assetOwners[_index];
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(379)

[33mWarning[0m for MissingInputValidation in contract 'OpportyWhiteListHold':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(244)

[33mWarning[0m for MissingInputValidation in contract 'OpportyWhiteListHold':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(270)

[33mWarning[0m for MissingInputValidation in contract 'OpportyWhiteListHold':
    |  using SafeMath for uint256;
    |  // Addresses and contracts
  > |  OpportyToken public OppToken;
    |
    |  struct Holder {
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(281)

[33mWarning[0m for MissingInputValidation in contract 'OpportyWhiteListHold':
    |  mapping (uint => address) private assetOwners;
    |  mapping (address => uint) private assetOwnersIndex;
  > |  uint public assetOwnersIndexes;
    |
    |  uint private holderIndex;
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(296)

[33mWarning[0m for MissingInputValidation in contract 'OpportyWhiteListHold':
    |  }
    |
  > |  function getBalance() public constant returns (uint) {
    |    return OppToken.balanceOf(this);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(346)

[33mWarning[0m for MissingInputValidation in contract 'OpportyWhiteListHold':
    |  }
    |
  > |  function returnTokens(uint nTokens) public onlyOwner returns (bool) {
    |    require(nTokens <= getBalance());
    |    OppToken.transfer(msg.sender, nTokens);
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(350)

[33mWarning[0m for MissingInputValidation in contract 'OpportyWhiteListHold':
    |  }
    |
  > |  function unlockTokens() public returns (bool) {
    |    require(holderList[msg.sender].isActive);
    |    require(!holderList[msg.sender].withdrawed);
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(357)

[33mWarning[0m for UnhandledException in contract 'OpportyWhiteListHold':
    |
    |  function getBalance() public constant returns (uint) {
  > |    return OppToken.balanceOf(this);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(347)

[33mWarning[0m for UnhandledException in contract 'OpportyWhiteListHold':
    |  function returnTokens(uint nTokens) public onlyOwner returns (bool) {
    |    require(nTokens <= getBalance());
  > |    OppToken.transfer(msg.sender, nTokens);
    |    TokensTransfered(msg.sender, nTokens);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(352)

[33mWarning[0m for UnhandledException in contract 'OpportyWhiteListHold':
    |    require(now >= holderList[msg.sender].holdPeriodTimestamp);
    |
  > |    OppToken.transfer(msg.sender, holderList[msg.sender].tokens);
    |    holderList[msg.sender].withdrawed = true;
    |    TokensTransfered(msg.sender, holderList[msg.sender].tokens);
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(362)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'OpportyWhiteListHold':
    |
    |  function getBalance() public constant returns (uint) {
  > |    return OppToken.balanceOf(this);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(347)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'OpportyWhiteListHold':
    |  function returnTokens(uint nTokens) public onlyOwner returns (bool) {
    |    require(nTokens <= getBalance());
  > |    OppToken.transfer(msg.sender, nTokens);
    |    TokensTransfered(msg.sender, nTokens);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(352)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'OpportyWhiteListHold':
    |    require(now >= holderList[msg.sender].holdPeriodTimestamp);
    |
  > |    OppToken.transfer(msg.sender, holderList[msg.sender].tokens);
    |    holderList[msg.sender].withdrawed = true;
    |    TokensTransfered(msg.sender, holderList[msg.sender].tokens);
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(362)

[31mViolation[0m for UnrestrictedWrite in contract 'OpportyWhiteListHold':
    |  function changeHold(address holder, uint tokens, uint8 period, uint holdTimestamp, bool withdrawed ) public onlyAssetsOwners {
    |    if (holderList[holder].isActive == true) {
  > |      holderList[holder].tokens = tokens;
    |      holderList[holder].holdPeriod = period;
    |      holderList[holder].holdPeriodTimestamp = holdTimestamp;
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(322)

[31mViolation[0m for UnrestrictedWrite in contract 'OpportyWhiteListHold':
    |    if (holderList[holder].isActive == true) {
    |      holderList[holder].tokens = tokens;
  > |      holderList[holder].holdPeriod = period;
    |      holderList[holder].holdPeriodTimestamp = holdTimestamp;
    |      holderList[holder].withdrawed = withdrawed;
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(323)

[31mViolation[0m for UnrestrictedWrite in contract 'OpportyWhiteListHold':
    |      holderList[holder].tokens = tokens;
    |      holderList[holder].holdPeriod = period;
  > |      holderList[holder].holdPeriodTimestamp = holdTimestamp;
    |      holderList[holder].withdrawed = withdrawed;
    |      ChangeHold(msg.sender, holder, tokens, period);
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(324)

[31mViolation[0m for UnrestrictedWrite in contract 'OpportyWhiteListHold':
    |      holderList[holder].holdPeriod = period;
    |      holderList[holder].holdPeriodTimestamp = holdTimestamp;
  > |      holderList[holder].withdrawed = withdrawed;
    |      ChangeHold(msg.sender, holder, tokens, period);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(325)

[31mViolation[0m for UnrestrictedWrite in contract 'OpportyWhiteListHold':
    |  function addHolder(address holder, uint tokens, uint8 timed, uint timest) onlyAssetsOwners external {
    |    if (holderList[holder].isActive == false) {
  > |      holderList[holder].isActive = true;
    |      holderList[holder].tokens = tokens;
    |      holderList[holder].holdPeriod = timed;
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(332)

[31mViolation[0m for UnrestrictedWrite in contract 'OpportyWhiteListHold':
    |    if (holderList[holder].isActive == false) {
    |      holderList[holder].isActive = true;
  > |      holderList[holder].tokens = tokens;
    |      holderList[holder].holdPeriod = timed;
    |      holderList[holder].holdPeriodTimestamp = timest;
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(333)

[31mViolation[0m for UnrestrictedWrite in contract 'OpportyWhiteListHold':
    |      holderList[holder].isActive = true;
    |      holderList[holder].tokens = tokens;
  > |      holderList[holder].holdPeriod = timed;
    |      holderList[holder].holdPeriodTimestamp = timest;
    |      holderIndexes[holderIndex] = holder;
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(334)

[31mViolation[0m for UnrestrictedWrite in contract 'OpportyWhiteListHold':
    |      holderList[holder].tokens = tokens;
    |      holderList[holder].holdPeriod = timed;
  > |      holderList[holder].holdPeriodTimestamp = timest;
    |      holderIndexes[holderIndex] = holder;
    |      holderIndex++;
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(335)

[31mViolation[0m for UnrestrictedWrite in contract 'OpportyWhiteListHold':
    |      holderList[holder].holdPeriod = timed;
    |      holderList[holder].holdPeriodTimestamp = timest;
  > |      holderIndexes[holderIndex] = holder;
    |      holderIndex++;
    |    } else {
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(336)

[31mViolation[0m for UnrestrictedWrite in contract 'OpportyWhiteListHold':
    |      holderList[holder].holdPeriodTimestamp = timest;
    |      holderIndexes[holderIndex] = holder;
  > |      holderIndex++;
    |    } else {
    |      holderList[holder].tokens += tokens;
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(337)

[31mViolation[0m for UnrestrictedWrite in contract 'OpportyWhiteListHold':
    |      holderIndex++;
    |    } else {
  > |      holderList[holder].tokens += tokens;
    |      holderList[holder].holdPeriod = timed;
    |      holderList[holder].holdPeriodTimestamp = timest;
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(339)

[31mViolation[0m for UnrestrictedWrite in contract 'OpportyWhiteListHold':
    |    } else {
    |      holderList[holder].tokens += tokens;
  > |      holderList[holder].holdPeriod = timed;
    |      holderList[holder].holdPeriodTimestamp = timest;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(340)

[31mViolation[0m for UnrestrictedWrite in contract 'OpportyWhiteListHold':
    |      holderList[holder].tokens += tokens;
    |      holderList[holder].holdPeriod = timed;
  > |      holderList[holder].holdPeriodTimestamp = timest;
    |    }
    |    Hold(msg.sender, holder, tokens, timed);
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(341)

[33mWarning[0m for UnrestrictedWrite in contract 'OpportyWhiteListHold':
    |
    |    OppToken.transfer(msg.sender, holderList[msg.sender].tokens);
  > |    holderList[msg.sender].withdrawed = true;
    |    TokensTransfered(msg.sender, holderList[msg.sender].tokens);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(363)

[33mWarning[0m for UnrestrictedWrite in contract 'OpportyWhiteListHold':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(273)

[33mWarning[0m for UnrestrictedWrite in contract 'OpportyWhiteListHold':
    |
    |  function setToken(address newToken) public onlyOwner {
  > |    OppToken = OpportyToken(newToken);
    |    TokenChanged(newToken);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(316)

[33mWarning[0m for UnrestrictedWrite in contract 'OpportyWhiteListHold':
    |
    |  function addAssetsOwner(address _owner) public onlyOwner {
  > |    assetOwnersIndexes++;
    |    assetOwners[assetOwnersIndexes] = _owner;
    |    assetOwnersIndex[_owner] = assetOwnersIndexes;
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(369)

[33mWarning[0m for UnrestrictedWrite in contract 'OpportyWhiteListHold':
    |  function addAssetsOwner(address _owner) public onlyOwner {
    |    assetOwnersIndexes++;
  > |    assetOwners[assetOwnersIndexes] = _owner;
    |    assetOwnersIndex[_owner] = assetOwnersIndexes;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(370)

[33mWarning[0m for UnrestrictedWrite in contract 'OpportyWhiteListHold':
    |    assetOwnersIndexes++;
    |    assetOwners[assetOwnersIndexes] = _owner;
  > |    assetOwnersIndex[_owner] = assetOwnersIndexes;
    |  }
    |  function removeAssetsOwner(address _owner) public onlyOwner {
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(371)

[33mWarning[0m for UnrestrictedWrite in contract 'OpportyWhiteListHold':
    |  function removeAssetsOwner(address _owner) public onlyOwner {
    |    uint index = assetOwnersIndex[_owner];
  > |    delete assetOwnersIndex[_owner];
    |    delete assetOwners[index];
    |    assetOwnersIndexes--;
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(375)

[33mWarning[0m for UnrestrictedWrite in contract 'OpportyWhiteListHold':
    |    uint index = assetOwnersIndex[_owner];
    |    delete assetOwnersIndex[_owner];
  > |    delete assetOwners[index];
    |    assetOwnersIndexes--;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(376)

[33mWarning[0m for UnrestrictedWrite in contract 'OpportyWhiteListHold':
    |    delete assetOwnersIndex[_owner];
    |    delete assetOwners[index];
  > |    assetOwnersIndexes--;
    |  }
    |  function getAssetsOwners(uint _index) onlyOwner public constant returns (address) {
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(377)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(243)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(244)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(270)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(273)

[33mWarning[0m for LockedEther in contract 'Pausable':
    | * @dev Base contract which allows children to implement an emergency stop mechanism.
    | */
  > |contract Pausable is Ownable {
    |  event Pause();
    |  event Unpause();
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(388)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(244)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(270)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  event Unpause();
    |
  > |  bool public paused = false;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(392)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to pause, triggers stopped state
    |   */
  > |  function pause() onlyOwner whenNotPaused public {
    |    paused = true;
    |    Pause();
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(414)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to unpause, returns to normal state
    |   */
  > |  function unpause() onlyOwner whenPaused public {
    |    paused = false;
    |    Unpause();
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(422)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(273)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(415)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(423)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(7)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(125)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(143)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(159)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(185)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(203)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xe85083dec29ca5287a00a29f667a8c5489cdf297.sol(205)


