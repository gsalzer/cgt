Processing contract: /home/jiaming/mavs_srcs/contract@0xca4fd347d172e0123c6056dad5f6860b3ea9250a.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xca4fd347d172e0123c6056dad5f6860b3ea9250a.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xca4fd347d172e0123c6056dad5f6860b3ea9250a.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xca4fd347d172e0123c6056dad5f6860b3ea9250a.sol:OpportyToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xca4fd347d172e0123c6056dad5f6860b3ea9250a.sol:OpportyYearHold
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xca4fd347d172e0123c6056dad5f6860b3ea9250a.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xca4fd347d172e0123c6056dad5f6860b3ea9250a.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xca4fd347d172e0123c6056dad5f6860b3ea9250a.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xca4fd347d172e0123c6056dad5f6860b3ea9250a.sol:StandardToken
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
  at /home/jiaming/mavs_srcs/contract@0xca4fd347d172e0123c6056dad5f6860b3ea9250a.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xca4fd347d172e0123c6056dad5f6860b3ea9250a.sol(90)

[33mWarning[0m for LockedEther in contract 'OpportyToken':
    | * `StandardToken` functions.
    | */
  > |contract OpportyToken is StandardToken {
    |
    |  string public constant name = "OpportyToken";
  at /home/jiaming/mavs_srcs/contract@0xca4fd347d172e0123c6056dad5f6860b3ea9250a.sol(219)

[33mWarning[0m for UnrestrictedWrite in contract 'OpportyToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xca4fd347d172e0123c6056dad5f6860b3ea9250a.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'OpportyToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xca4fd347d172e0123c6056dad5f6860b3ea9250a.sol(143)

[33mWarning[0m for UnrestrictedWrite in contract 'OpportyToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xca4fd347d172e0123c6056dad5f6860b3ea9250a.sol(159)

[33mWarning[0m for UnrestrictedWrite in contract 'OpportyToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xca4fd347d172e0123c6056dad5f6860b3ea9250a.sol(185)

[33mWarning[0m for UnrestrictedWrite in contract 'OpportyToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xca4fd347d172e0123c6056dad5f6860b3ea9250a.sol(203)

[33mWarning[0m for UnrestrictedWrite in contract 'OpportyToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xca4fd347d172e0123c6056dad5f6860b3ea9250a.sol(205)

[33mWarning[0m for DAOConstantGas in contract 'OpportyYearHold':
    |    if (now > endDate) {
    |      state = SaleState.ENDED;
  > |      msg.sender.transfer(msg.value);
    |      SaleEnded();
    |      return ;
  at /home/jiaming/mavs_srcs/contract@0xca4fd347d172e0123c6056dad5f6860b3ea9250a.sol(442)

[33mWarning[0m for DAOConstantGas in contract 'OpportyYearHold':
    |  function forwardFunds() internal {
    |    ethRaised += msg.value;
  > |    multisig.transfer(msg.value);
    |    FundsTransferredToMultisig(multisig, msg.value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xca4fd347d172e0123c6056dad5f6860b3ea9250a.sol(482)

[33mWarning[0m for TODReceiver in contract 'OpportyYearHold':
    |    if (now > endDate) {
    |      state = SaleState.ENDED;
  > |      msg.sender.transfer(msg.value);
    |      SaleEnded();
    |      return ;
  at /home/jiaming/mavs_srcs/contract@0xca4fd347d172e0123c6056dad5f6860b3ea9250a.sol(442)

[33mWarning[0m for UnhandledException in contract 'OpportyYearHold':
    |    if (now > endDate) {
    |      state = SaleState.ENDED;
  > |      msg.sender.transfer(msg.value);
    |      SaleEnded();
    |      return ;
  at /home/jiaming/mavs_srcs/contract@0xca4fd347d172e0123c6056dad5f6860b3ea9250a.sol(442)

[33mWarning[0m for UnhandledException in contract 'OpportyYearHold':
    |  function forwardFunds() internal {
    |    ethRaised += msg.value;
  > |    multisig.transfer(msg.value);
    |    FundsTransferredToMultisig(multisig, msg.value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xca4fd347d172e0123c6056dad5f6860b3ea9250a.sol(482)

[33mWarning[0m for UnhandledException in contract 'OpportyYearHold':
    |
    |  function getBalance() public constant returns (uint) {
  > |    return token.balanceOf(this);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xca4fd347d172e0123c6056dad5f6860b3ea9250a.sol(519)

[33mWarning[0m for UnhandledException in contract 'OpportyYearHold':
    |  function returnTokens(uint nTokens) public onlyOwner returns (bool) {
    |    require(nTokens <= getBalance());
  > |    token.transfer(msg.sender, nTokens);
    |    TokensTransfered(msg.sender, nTokens);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xca4fd347d172e0123c6056dad5f6860b3ea9250a.sol(524)

[33mWarning[0m for UnhandledException in contract 'OpportyYearHold':
    |    require(now >= holderList[msg.sender].holdPeriodTimestamp);
    |
  > |    token.transfer(msg.sender, holderList[msg.sender].tokens);
    |    holderList[msg.sender].withdrawed = true;
    |    TokensTransfered(msg.sender, holderList[msg.sender].tokens);
  at /home/jiaming/mavs_srcs/contract@0xca4fd347d172e0123c6056dad5f6860b3ea9250a.sol(534)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'OpportyYearHold':
    |
    |  function getBalance() public constant returns (uint) {
  > |    return token.balanceOf(this);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xca4fd347d172e0123c6056dad5f6860b3ea9250a.sol(519)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'OpportyYearHold':
    |  function returnTokens(uint nTokens) public onlyOwner returns (bool) {
    |    require(nTokens <= getBalance());
  > |    token.transfer(msg.sender, nTokens);
    |    TokensTransfered(msg.sender, nTokens);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xca4fd347d172e0123c6056dad5f6860b3ea9250a.sol(524)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'OpportyYearHold':
    |    require(now >= holderList[msg.sender].holdPeriodTimestamp);
    |
  > |    token.transfer(msg.sender, holderList[msg.sender].tokens);
    |    holderList[msg.sender].withdrawed = true;
    |    TokensTransfered(msg.sender, holderList[msg.sender].tokens);
  at /home/jiaming/mavs_srcs/contract@0xca4fd347d172e0123c6056dad5f6860b3ea9250a.sol(534)

[31mViolation[0m for UnrestrictedWrite in contract 'OpportyYearHold':
    |
    |/**
  > | * @title SafeMath
    | * @dev Math operations with safety checks that throw on error
    | */
  at /home/jiaming/mavs_srcs/contract@0xca4fd347d172e0123c6056dad5f6860b3ea9250a.sol(4)

[31mViolation[0m for UnrestrictedWrite in contract 'OpportyYearHold':
    |    for (uint i = 0; i < bonuses.length; ++i) {
    |      if (bonuses[i].minAmount == minAmount && bonuses[i].maxAmount == maxAmount ) {
  > |        bonuses[i].bonus = newBonus;
    |        find = true;
    |        break;
  at /home/jiaming/mavs_srcs/contract@0xca4fd347d172e0123c6056dad5f6860b3ea9250a.sol(412)

[31mViolation[0m for UnrestrictedWrite in contract 'OpportyYearHold':
    |    }
    |    if (!find) {
  > |      bonuses.push(Bonus({minAmount:minAmount, maxAmount: maxAmount, bonus:newBonus}));
    |    }
    |    BonusChanged(minAmount, maxAmount, newBonus);
  at /home/jiaming/mavs_srcs/contract@0xca4fd347d172e0123c6056dad5f6860b3ea9250a.sol(418)

[31mViolation[0m for UnrestrictedWrite in contract 'OpportyYearHold':
    |
    |    if (now > endDate) {
  > |      state = SaleState.ENDED;
    |      msg.sender.transfer(msg.value);
    |      SaleEnded();
  at /home/jiaming/mavs_srcs/contract@0xca4fd347d172e0123c6056dad5f6860b3ea9250a.sol(441)

[31mViolation[0m for UnrestrictedWrite in contract 'OpportyYearHold':
    |  function changeHold(address holder, uint tokens, uint timest) onlyAssetsOwners public {
    |    if (holderList[holder].isActive == true) {
  > |      holderList[holder].tokens = tokens;
    |      holderList[holder].holdPeriodTimestamp = timest;
    |      HoldChanged(holder, tokens, timest);
  at /home/jiaming/mavs_srcs/contract@0xca4fd347d172e0123c6056dad5f6860b3ea9250a.sol(474)

[31mViolation[0m for UnrestrictedWrite in contract 'OpportyYearHold':
    |    if (holderList[holder].isActive == true) {
    |      holderList[holder].tokens = tokens;
  > |      holderList[holder].holdPeriodTimestamp = timest;
    |      HoldChanged(holder, tokens, timest);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xca4fd347d172e0123c6056dad5f6860b3ea9250a.sol(475)

[31mViolation[0m for UnrestrictedWrite in contract 'OpportyYearHold':
    |
    |  function forwardFunds() internal {
  > |    ethRaised += msg.value;
    |    multisig.transfer(msg.value);
    |    FundsTransferredToMultisig(multisig, msg.value);
  at /home/jiaming/mavs_srcs/contract@0xca4fd347d172e0123c6056dad5f6860b3ea9250a.sol(481)

[31mViolation[0m for UnrestrictedWrite in contract 'OpportyYearHold':
    |  function batchChangeHoldPeriod(uint holdedPeriod) public onlyAssetsOwners {
    |    for (uint i = 0; i < holderIndex; ++i) {
  > |      holderList[holderIndexes[i]].holdPeriodTimestamp = holdedPeriod;
    |      HoldChanged(holderIndexes[i], holderList[holderIndexes[i]].tokens, holdedPeriod);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xca4fd347d172e0123c6056dad5f6860b3ea9250a.sol(572)

[33mWarning[0m for UnrestrictedWrite in contract 'OpportyYearHold':
    |  function addHolder(address holder, uint tokens, uint timest) internal {
    |    if (holderList[holder].isActive == false) {
  > |      holderList[holder].isActive = true;
    |      holderList[holder].tokens = tokens;
    |      holderList[holder].holdPeriodTimestamp = timest;
  at /home/jiaming/mavs_srcs/contract@0xca4fd347d172e0123c6056dad5f6860b3ea9250a.sol(461)

[33mWarning[0m for UnrestrictedWrite in contract 'OpportyYearHold':
    |    if (holderList[holder].isActive == false) {
    |      holderList[holder].isActive = true;
  > |      holderList[holder].tokens = tokens;
    |      holderList[holder].holdPeriodTimestamp = timest;
    |      holderIndexes[holderIndex] = holder;
  at /home/jiaming/mavs_srcs/contract@0xca4fd347d172e0123c6056dad5f6860b3ea9250a.sol(462)

[33mWarning[0m for UnrestrictedWrite in contract 'OpportyYearHold':
    |      holderList[holder].isActive = true;
    |      holderList[holder].tokens = tokens;
  > |      holderList[holder].holdPeriodTimestamp = timest;
    |      holderIndexes[holderIndex] = holder;
    |      holderIndex++;
  at /home/jiaming/mavs_srcs/contract@0xca4fd347d172e0123c6056dad5f6860b3ea9250a.sol(463)

[33mWarning[0m for UnrestrictedWrite in contract 'OpportyYearHold':
    |      holderIndex++;
    |    } else {
  > |      holderList[holder].tokens += tokens;
    |      holderList[holder].holdPeriodTimestamp = timest;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xca4fd347d172e0123c6056dad5f6860b3ea9250a.sol(467)

[33mWarning[0m for UnrestrictedWrite in contract 'OpportyYearHold':
    |    } else {
    |      holderList[holder].tokens += tokens;
  > |      holderList[holder].holdPeriodTimestamp = timest;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xca4fd347d172e0123c6056dad5f6860b3ea9250a.sol(468)

[33mWarning[0m for UnrestrictedWrite in contract 'OpportyYearHold':
    |
    |    token.transfer(msg.sender, holderList[msg.sender].tokens);
  > |    holderList[msg.sender].withdrawed = true;
    |    TokensTransfered(msg.sender, holderList[msg.sender].tokens);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xca4fd347d172e0123c6056dad5f6860b3ea9250a.sol(535)

[33mWarning[0m for UnrestrictedWrite in contract 'OpportyYearHold':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xca4fd347d172e0123c6056dad5f6860b3ea9250a.sol(273)

[33mWarning[0m for UnrestrictedWrite in contract 'OpportyYearHold':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xca4fd347d172e0123c6056dad5f6860b3ea9250a.sol(309)

[33mWarning[0m for UnrestrictedWrite in contract 'OpportyYearHold':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xca4fd347d172e0123c6056dad5f6860b3ea9250a.sol(317)

[33mWarning[0m for UnrestrictedWrite in contract 'OpportyYearHold':
    |
    |  function newPresale() public onlyOwner {
  > |    state = SaleState.NEW;
    |    SaleNew();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xca4fd347d172e0123c6056dad5f6860b3ea9250a.sol(487)

[33mWarning[0m for UnrestrictedWrite in contract 'OpportyYearHold':
    |
    |  function startPresale() public onlyOwner {
  > |    state = SaleState.SALE;
    |    SaleStarted();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xca4fd347d172e0123c6056dad5f6860b3ea9250a.sol(492)

[33mWarning[0m for UnrestrictedWrite in contract 'OpportyYearHold':
    |
    |  function endPresale() public onlyOwner {
  > |    state = SaleState.ENDED;
    |    SaleEnded();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xca4fd347d172e0123c6056dad5f6860b3ea9250a.sol(497)

[33mWarning[0m for UnrestrictedWrite in contract 'OpportyYearHold':
    |
    |  function addAssetsOwner(address _owner) public onlyOwner {
  > |    assetOwnersIndexes++;
    |    assetOwners[assetOwnersIndexes] = _owner;
    |    assetOwnersIndex[_owner] = assetOwnersIndexes;
  at /home/jiaming/mavs_srcs/contract@0xca4fd347d172e0123c6056dad5f6860b3ea9250a.sol(502)

[33mWarning[0m for UnrestrictedWrite in contract 'OpportyYearHold':
    |  function addAssetsOwner(address _owner) public onlyOwner {
    |    assetOwnersIndexes++;
  > |    assetOwners[assetOwnersIndexes] = _owner;
    |    assetOwnersIndex[_owner] = assetOwnersIndexes;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xca4fd347d172e0123c6056dad5f6860b3ea9250a.sol(503)

[33mWarning[0m for UnrestrictedWrite in contract 'OpportyYearHold':
    |    assetOwnersIndexes++;
    |    assetOwners[assetOwnersIndexes] = _owner;
  > |    assetOwnersIndex[_owner] = assetOwnersIndexes;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xca4fd347d172e0123c6056dad5f6860b3ea9250a.sol(504)

[33mWarning[0m for UnrestrictedWrite in contract 'OpportyYearHold':
    |  function removeAssetsOwner(address _owner) public onlyOwner {
    |    uint index = assetOwnersIndex[_owner];
  > |    delete assetOwnersIndex[_owner];
    |    delete assetOwners[index];
    |    assetOwnersIndexes--;
  at /home/jiaming/mavs_srcs/contract@0xca4fd347d172e0123c6056dad5f6860b3ea9250a.sol(509)

[33mWarning[0m for UnrestrictedWrite in contract 'OpportyYearHold':
    |    uint index = assetOwnersIndex[_owner];
    |    delete assetOwnersIndex[_owner];
  > |    delete assetOwners[index];
    |    assetOwnersIndexes--;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xca4fd347d172e0123c6056dad5f6860b3ea9250a.sol(510)

[33mWarning[0m for UnrestrictedWrite in contract 'OpportyYearHold':
    |    delete assetOwnersIndex[_owner];
    |    delete assetOwners[index];
  > |    assetOwnersIndexes--;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xca4fd347d172e0123c6056dad5f6860b3ea9250a.sol(511)

[33mWarning[0m for UnrestrictedWrite in contract 'OpportyYearHold':
    |  function setStartDate(uint date) public onlyOwner {
    |    uint oldStartDate = startDate;
  > |    startDate = date;
    |    ManualChangeStartDate(oldStartDate, date);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xca4fd347d172e0123c6056dad5f6860b3ea9250a.sol(542)

[33mWarning[0m for UnrestrictedWrite in contract 'OpportyYearHold':
    |  function setEndSaleDate(uint date) public onlyOwner {
    |    uint oldEndDate = endSaleDate;
  > |    endSaleDate = date;
    |    ManualChangeEndDate(oldEndDate, date);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xca4fd347d172e0123c6056dad5f6860b3ea9250a.sol(548)

[33mWarning[0m for UnrestrictedWrite in contract 'OpportyYearHold':
    |  function setEndDate(uint date) public onlyOwner {
    |    uint oldEndDate = endDate;
  > |    endDate = date;
    |    ManualChangeEndDate(oldEndDate, date);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xca4fd347d172e0123c6056dad5f6860b3ea9250a.sol(554)

[33mWarning[0m for UnrestrictedWrite in contract 'OpportyYearHold':
    |  function setPrice(uint newPrice) public onlyOwner {
    |    uint oldPrice = price;
  > |    price = newPrice;
    |    ManualPriceChange(oldPrice, newPrice);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xca4fd347d172e0123c6056dad5f6860b3ea9250a.sol(560)

[33mWarning[0m for UnrestrictedWrite in contract 'OpportyYearHold':
    |  function setMinimalContribution(uint minimumAmount) public onlyOwner {
    |    uint oldMinAmount = minimalContribution;
  > |    minimalContribution = minimumAmount;
    |    ChangeMinAmount(oldMinAmount, minimalContribution);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xca4fd347d172e0123c6056dad5f6860b3ea9250a.sol(566)

[33mWarning[0m for UnrestrictedWrite in contract 'OpportyYearHold':
    |
    |  function setToken(address newToken) public onlyOwner {
  > |    token = OpportyToken(newToken);
    |    TokenChanged(token);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xca4fd347d172e0123c6056dad5f6860b3ea9250a.sol(578)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xca4fd347d172e0123c6056dad5f6860b3ea9250a.sol(243)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xca4fd347d172e0123c6056dad5f6860b3ea9250a.sol(244)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xca4fd347d172e0123c6056dad5f6860b3ea9250a.sol(270)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xca4fd347d172e0123c6056dad5f6860b3ea9250a.sol(273)

[33mWarning[0m for LockedEther in contract 'Pausable':
    | * @dev Base contract which allows children to implement an emergency stop mechanism.
    | */
  > |contract Pausable is Ownable {
    |  event Pause();
    |  event Unpause();
  at /home/jiaming/mavs_srcs/contract@0xca4fd347d172e0123c6056dad5f6860b3ea9250a.sol(282)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xca4fd347d172e0123c6056dad5f6860b3ea9250a.sol(244)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xca4fd347d172e0123c6056dad5f6860b3ea9250a.sol(270)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  event Unpause();
    |
  > |  bool public paused = false;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xca4fd347d172e0123c6056dad5f6860b3ea9250a.sol(286)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to pause, triggers stopped state
    |   */
  > |  function pause() onlyOwner whenNotPaused public {
    |    paused = true;
    |    Pause();
  at /home/jiaming/mavs_srcs/contract@0xca4fd347d172e0123c6056dad5f6860b3ea9250a.sol(308)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to unpause, returns to normal state
    |   */
  > |  function unpause() onlyOwner whenPaused public {
    |    paused = false;
    |    Unpause();
  at /home/jiaming/mavs_srcs/contract@0xca4fd347d172e0123c6056dad5f6860b3ea9250a.sol(316)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xca4fd347d172e0123c6056dad5f6860b3ea9250a.sol(273)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xca4fd347d172e0123c6056dad5f6860b3ea9250a.sol(309)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xca4fd347d172e0123c6056dad5f6860b3ea9250a.sol(317)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xca4fd347d172e0123c6056dad5f6860b3ea9250a.sol(7)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0xca4fd347d172e0123c6056dad5f6860b3ea9250a.sol(125)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xca4fd347d172e0123c6056dad5f6860b3ea9250a.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xca4fd347d172e0123c6056dad5f6860b3ea9250a.sol(143)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xca4fd347d172e0123c6056dad5f6860b3ea9250a.sol(159)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xca4fd347d172e0123c6056dad5f6860b3ea9250a.sol(185)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xca4fd347d172e0123c6056dad5f6860b3ea9250a.sol(203)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xca4fd347d172e0123c6056dad5f6860b3ea9250a.sol(205)


