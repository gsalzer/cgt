Processing contract: /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol:CrowdsaleTokenExt
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol:MintableTokenExt
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol:ReleasableToken
Processing contract: /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol:SafeMathLibExt
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol:UpgradeAgent
Processing contract: /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol:UpgradeableToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for LockedEther in contract 'CrowdsaleTokenExt':
    | *
    | */
  > |contract CrowdsaleTokenExt is ReleasableToken, MintableTokenExt, UpgradeableToken {
    |
    |  /** Name and symbol were updated. */
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(670)

[33mWarning[0m for UnhandledException in contract 'CrowdsaleTokenExt':
    |
    |      // Upgrade agent reissues the tokens
  > |      upgradeAgent.upgradeFrom(msg.sender, value);
    |      Upgrade(msg.sender, upgradeAgent, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(312)

[33mWarning[0m for UnhandledException in contract 'CrowdsaleTokenExt':
    |
    |      // Bad interface
  > |      if(!upgradeAgent.isUpgradeAgent()) throw;
    |      // Make sure that token supplies match in source and target
    |      if (upgradeAgent.originalSupply() != totalSupply) throw;
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(335)

[33mWarning[0m for UnhandledException in contract 'CrowdsaleTokenExt':
    |      if(!upgradeAgent.isUpgradeAgent()) throw;
    |      // Make sure that token supplies match in source and target
  > |      if (upgradeAgent.originalSupply() != totalSupply) throw;
    |
    |      UpgradeAgentSet(upgradeAgent);
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(337)

[33mWarning[0m for UnhandledException in contract 'CrowdsaleTokenExt':
    |
    |    ERC20 token = ERC20(_token);
  > |    uint balance = token.balanceOf(this);
    |    token.transfer(owner, balance);
    |
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(770)

[33mWarning[0m for UnhandledException in contract 'CrowdsaleTokenExt':
    |    ERC20 token = ERC20(_token);
    |    uint balance = token.balanceOf(this);
  > |    token.transfer(owner, balance);
    |
    |    ClaimedTokens(_token, owner, balance);
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(771)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CrowdsaleTokenExt':
    |
    |      // Upgrade agent reissues the tokens
  > |      upgradeAgent.upgradeFrom(msg.sender, value);
    |      Upgrade(msg.sender, upgradeAgent, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(312)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CrowdsaleTokenExt':
    |
    |      // Bad interface
  > |      if(!upgradeAgent.isUpgradeAgent()) throw;
    |      // Make sure that token supplies match in source and target
    |      if (upgradeAgent.originalSupply() != totalSupply) throw;
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(335)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CrowdsaleTokenExt':
    |      if(!upgradeAgent.isUpgradeAgent()) throw;
    |      // Make sure that token supplies match in source and target
  > |      if (upgradeAgent.originalSupply() != totalSupply) throw;
    |
    |      UpgradeAgentSet(upgradeAgent);
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(337)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CrowdsaleTokenExt':
    |
    |    ERC20 token = ERC20(_token);
  > |    uint balance = token.balanceOf(this);
    |    token.transfer(owner, balance);
    |
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(770)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CrowdsaleTokenExt':
    |    ERC20 token = ERC20(_token);
    |    uint balance = token.balanceOf(this);
  > |    token.transfer(owner, balance);
    |
    |    ClaimedTokens(_token, owner, balance);
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(771)

[31mViolation[0m for UnrestrictedWrite in contract 'CrowdsaleTokenExt':
    |  function finalizeReservedAddress(address addr) public onlyMintAgent canMint {
    |    ReservedTokensData storage reservedTokensData = reservedTokensList[addr];
  > |    reservedTokensData.isDistributed = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(578)

[31mViolation[0m for UnrestrictedWrite in contract 'CrowdsaleTokenExt':
    |      }
    |    }
  > |    reservedTokensDestinationsAreSet = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(616)

[31mViolation[0m for UnrestrictedWrite in contract 'CrowdsaleTokenExt':
    |   */
    |  function mint(address receiver, uint amount) onlyMintAgent canMint public {
  > |    totalSupply = totalSupply.plus(amount);
    |    balances[receiver] = balances[receiver].plus(amount);
    |
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(625)

[31mViolation[0m for UnrestrictedWrite in contract 'CrowdsaleTokenExt':
    |  function mint(address receiver, uint amount) onlyMintAgent canMint public {
    |    totalSupply = totalSupply.plus(amount);
  > |    balances[receiver] = balances[receiver].plus(amount);
    |
    |    // This will make the mint transaction apper in EtherScan.io
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(626)

[31mViolation[0m for UnrestrictedWrite in contract 'CrowdsaleTokenExt':
    | *
    | */
  > |contract CrowdsaleTokenExt is ReleasableToken, MintableTokenExt, UpgradeableToken {
    |
    |  /** Name and symbol were updated. */
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(670)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleTokenExt':
    |
    |  function transfer(address _to, uint _value) returns (bool success) {
  > |    balances[msg.sender] = safeSub(balances[msg.sender], _value);
    |    balances[_to] = safeAdd(balances[_to], _value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(170)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleTokenExt':
    |  function transfer(address _to, uint _value) returns (bool success) {
    |    balances[msg.sender] = safeSub(balances[msg.sender], _value);
  > |    balances[_to] = safeAdd(balances[_to], _value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(171)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleTokenExt':
    |    uint _allowance = allowed[_from][msg.sender];
    |
  > |    balances[_to] = safeAdd(balances[_to], _value);
    |    balances[_from] = safeSub(balances[_from], _value);
    |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(179)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleTokenExt':
    |
    |    balances[_to] = safeAdd(balances[_to], _value);
  > |    balances[_from] = safeSub(balances[_from], _value);
    |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(180)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleTokenExt':
    |    balances[_to] = safeAdd(balances[_to], _value);
    |    balances[_from] = safeSub(balances[_from], _value);
  > |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(181)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleTokenExt':
    |    if ((_value != 0) && (allowed[msg.sender][_spender] != 0)) throw;
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(198)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleTokenExt':
    |      if (value == 0) throw;
    |
  > |      balances[msg.sender] = safeSub(balances[msg.sender], value);
    |
    |      // Take tokens out from circulation
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(305)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleTokenExt':
    |
    |      // Take tokens out from circulation
  > |      totalSupply = safeSub(totalSupply, value);
    |      totalUpgraded = safeAdd(totalUpgraded, value);
    |
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(308)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleTokenExt':
    |      // Take tokens out from circulation
    |      totalSupply = safeSub(totalSupply, value);
  > |      totalUpgraded = safeAdd(totalUpgraded, value);
    |
    |      // Upgrade agent reissues the tokens
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(309)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleTokenExt':
  > |// Created using Token Wizard https://github.com/poanetwork/token-wizard by POA Network 
    |pragma solidity ^0.4.11;
    |
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(1)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleTokenExt':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(56)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleTokenExt':
    |      if (getUpgradeState() == UpgradeState.Upgrading) throw;
    |
  > |      upgradeAgent = UpgradeAgent(agent);
    |
    |      // Bad interface
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(332)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleTokenExt':
    |      if (master == 0x0) throw;
    |      if (msg.sender != upgradeMaster) throw;
  > |      upgradeMaster = master;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(360)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleTokenExt':
    |
    |    // We don't do interface check here as we might want to a normal wallet address to act as a release agent
  > |    releaseAgent = addr;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(421)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleTokenExt':
    |   */
    |  function setTransferAgent(address addr, bool state) onlyOwner inReleaseState(false) public {
  > |    transferAgents[addr] = state;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(428)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleTokenExt':
    |   */
    |  function releaseTokenTransfer() public onlyReleaseAgent {
  > |    released = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(437)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleTokenExt':
    |   */
    |  function setMintAgent(address addr, bool state) onlyOwner canMint public {
  > |    mintAgents[addr] = state;
    |    MintingAgentChanged(addr, state);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(637)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleTokenExt':
    |    assert(addr != address(0));
    |    if (!isAddressReserved(addr)) {
  > |      reservedTokensDestinations.push(addr);
    |      reservedTokensDestinationsLen++;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(644)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleTokenExt':
    |    if (!isAddressReserved(addr)) {
    |      reservedTokensDestinations.push(addr);
  > |      reservedTokensDestinationsLen++;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(645)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleTokenExt':
    |    }
    |
  > |    reservedTokensList[addr] = ReservedTokensData({
    |      inTokens: inTokens, 
    |      inPercentageUnit: inPercentageUnit, 
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(648)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleTokenExt':
    | *
    | */
  > |contract CrowdsaleTokenExt is ReleasableToken, MintableTokenExt, UpgradeableToken {
    |
    |  /** Name and symbol were updated. */
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(670)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleTokenExt':
    |   */
    |  function releaseTokenTransfer() public onlyReleaseAgent {
  > |    mintingFinished = true;
    |    super.releaseTokenTransfer();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(734)

[33mWarning[0m for LockedEther in contract 'MintableTokenExt':
    | *
    | */
  > |contract MintableTokenExt is StandardToken, Ownable {
    |
    |  using SafeMathLibExt for uint;
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(533)

[31mViolation[0m for MissingInputValidation in contract 'MintableTokenExt':
    |  }
    |
  > |  function transferFrom(address _from, address _to, uint _value) returns (bool success) {
    |    uint _allowance = allowed[_from][msg.sender];
    |
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(176)

[31mViolation[0m for MissingInputValidation in contract 'MintableTokenExt':
    |  }
    |
  > |  function balanceOf(address _owner) constant returns (uint balance) {
    |    return balances[_owner];
    |  }
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(186)

[31mViolation[0m for MissingInputValidation in contract 'MintableTokenExt':
    |  }
    |
  > |  function allowance(address _owner, address _spender) constant returns (uint remaining) {
    |    return allowed[_owner][_spender];
    |  }
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(203)

[31mViolation[0m for MissingInputValidation in contract 'MintableTokenExt':
    |
    |  /** List of agents that are allowed to create new tokens */
  > |  mapping (address => bool) public mintAgents;
    |
    |  event MintingAgentChanged(address addr, bool state  );
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(540)

[31mViolation[0m for MissingInputValidation in contract 'MintableTokenExt':
    |  }
    |
  > |  mapping (address => ReservedTokensData) public reservedTokensList;
    |  address[] public reservedTokensDestinations;
    |  uint public reservedTokensDestinationsLen = 0;
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(557)

[31mViolation[0m for MissingInputValidation in contract 'MintableTokenExt':
    |  }
    |
  > |  function finalizeReservedAddress(address addr) public onlyMintAgent canMint {
    |    ReservedTokensData storage reservedTokensData = reservedTokensList[addr];
    |    reservedTokensData.isDistributed = true;
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(576)

[31mViolation[0m for MissingInputValidation in contract 'MintableTokenExt':
    |  }
    |
  > |  function isAddressReserved(address addr) public constant returns (bool isReserved) {
    |    return reservedTokensList[addr].isReserved;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(581)

[31mViolation[0m for MissingInputValidation in contract 'MintableTokenExt':
    |  }
    |
  > |  function areTokensDistributedForAddress(address addr) public constant returns (bool isDistributed) {
    |    return reservedTokensList[addr].isDistributed;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(585)

[31mViolation[0m for MissingInputValidation in contract 'MintableTokenExt':
    |  }
    |
  > |  function getReservedTokens(address addr) public constant returns (uint inTokens) {
    |    return reservedTokensList[addr].inTokens;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(589)

[31mViolation[0m for MissingInputValidation in contract 'MintableTokenExt':
    |  }
    |
  > |  function getReservedPercentageUnit(address addr) public constant returns (uint inPercentageUnit) {
    |    return reservedTokensList[addr].inPercentageUnit;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(593)

[31mViolation[0m for MissingInputValidation in contract 'MintableTokenExt':
    |  }
    |
  > |  function getReservedPercentageDecimals(address addr) public constant returns (uint inPercentageDecimals) {
    |    return reservedTokensList[addr].inPercentageDecimals;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(597)

[31mViolation[0m for MissingInputValidation in contract 'MintableTokenExt':
    |  }
    |
  > |  function setReservedTokensListMultiple(
    |    address[] addrs, 
    |    uint[] inTokens, 
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(601)

[31mViolation[0m for MissingInputValidation in contract 'MintableTokenExt':
    |   * Only callably by a crowdsale contract (mint agent).
    |   */
  > |  function mint(address receiver, uint amount) onlyMintAgent canMint public {
    |    totalSupply = totalSupply.plus(amount);
    |    balances[receiver] = balances[receiver].plus(amount);
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(624)

[31mViolation[0m for MissingInputValidation in contract 'MintableTokenExt':
    |   * Owner can allow a crowdsale contract to mint new tokens.
    |   */
  > |  function setMintAgent(address addr, bool state) onlyOwner canMint public {
    |    mintAgents[addr] = state;
    |    MintingAgentChanged(addr, state);
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(636)

[33mWarning[0m for MissingInputValidation in contract 'MintableTokenExt':
    | */
    |contract ERC20Basic {
  > |  uint256 public totalSupply;
    |  function balanceOf(address who) public constant returns (uint256);
    |  function transfer(address to, uint256 value) public returns (bool);
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'MintableTokenExt':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'MintableTokenExt':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(53)

[33mWarning[0m for MissingInputValidation in contract 'MintableTokenExt':
    |  }
    |
  > |  function safeSub(uint a, uint b) internal returns (uint) {
    |    assert(b <= a);
    |    return a - b;
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(82)

[33mWarning[0m for MissingInputValidation in contract 'MintableTokenExt':
    |  }
    |
  > |  function safeAdd(uint a, uint b) internal returns (uint) {
    |    uint c = a + b;
    |    assert(c>=a && c>=b);
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(87)

[33mWarning[0m for MissingInputValidation in contract 'MintableTokenExt':
    |
    |  /* Interface declaration */
  > |  function isToken() public constant returns (bool weAre) {
    |    return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(165)

[33mWarning[0m for MissingInputValidation in contract 'MintableTokenExt':
    |  using SafeMathLibExt for uint;
    |
  > |  bool public mintingFinished = false;
    |
    |  /** List of agents that are allowed to create new tokens */
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(537)

[33mWarning[0m for MissingInputValidation in contract 'MintableTokenExt':
    |
    |  mapping (address => ReservedTokensData) public reservedTokensList;
  > |  address[] public reservedTokensDestinations;
    |  uint public reservedTokensDestinationsLen = 0;
    |  bool reservedTokensDestinationsAreSet = false;
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(558)

[33mWarning[0m for MissingInputValidation in contract 'MintableTokenExt':
    |  mapping (address => ReservedTokensData) public reservedTokensList;
    |  address[] public reservedTokensDestinations;
  > |  uint public reservedTokensDestinationsLen = 0;
    |  bool reservedTokensDestinationsAreSet = false;
    |
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(559)

[33mWarning[0m for MissingInputValidation in contract 'MintableTokenExt':
    |  }
    |
  > |  function setReservedTokensList(address addr, uint inTokens, uint inPercentageUnit, uint inPercentageDecimals) private canMint onlyOwner {
    |    assert(addr != address(0));
    |    if (!isAddressReserved(addr)) {
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(641)

[31mViolation[0m for UnrestrictedWrite in contract 'MintableTokenExt':
  > |// Created using Token Wizard https://github.com/poanetwork/token-wizard by POA Network 
    |pragma solidity ^0.4.11;
    |
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(1)

[31mViolation[0m for UnrestrictedWrite in contract 'MintableTokenExt':
    |
    |  function transfer(address _to, uint _value) returns (bool success) {
  > |    balances[msg.sender] = safeSub(balances[msg.sender], _value);
    |    balances[_to] = safeAdd(balances[_to], _value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(170)

[31mViolation[0m for UnrestrictedWrite in contract 'MintableTokenExt':
    |  function transfer(address _to, uint _value) returns (bool success) {
    |    balances[msg.sender] = safeSub(balances[msg.sender], _value);
  > |    balances[_to] = safeAdd(balances[_to], _value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(171)

[31mViolation[0m for UnrestrictedWrite in contract 'MintableTokenExt':
    |    uint _allowance = allowed[_from][msg.sender];
    |
  > |    balances[_to] = safeAdd(balances[_to], _value);
    |    balances[_from] = safeSub(balances[_from], _value);
    |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(179)

[31mViolation[0m for UnrestrictedWrite in contract 'MintableTokenExt':
    |
    |    balances[_to] = safeAdd(balances[_to], _value);
  > |    balances[_from] = safeSub(balances[_from], _value);
    |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(180)

[31mViolation[0m for UnrestrictedWrite in contract 'MintableTokenExt':
    |    balances[_to] = safeAdd(balances[_to], _value);
    |    balances[_from] = safeSub(balances[_from], _value);
  > |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(181)

[31mViolation[0m for UnrestrictedWrite in contract 'MintableTokenExt':
    |  function finalizeReservedAddress(address addr) public onlyMintAgent canMint {
    |    ReservedTokensData storage reservedTokensData = reservedTokensList[addr];
  > |    reservedTokensData.isDistributed = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(578)

[31mViolation[0m for UnrestrictedWrite in contract 'MintableTokenExt':
    |      }
    |    }
  > |    reservedTokensDestinationsAreSet = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(616)

[31mViolation[0m for UnrestrictedWrite in contract 'MintableTokenExt':
    |   */
    |  function mint(address receiver, uint amount) onlyMintAgent canMint public {
  > |    totalSupply = totalSupply.plus(amount);
    |    balances[receiver] = balances[receiver].plus(amount);
    |
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(625)

[31mViolation[0m for UnrestrictedWrite in contract 'MintableTokenExt':
    |  function mint(address receiver, uint amount) onlyMintAgent canMint public {
    |    totalSupply = totalSupply.plus(amount);
  > |    balances[receiver] = balances[receiver].plus(amount);
    |
    |    // This will make the mint transaction apper in EtherScan.io
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(626)

[31mViolation[0m for UnrestrictedWrite in contract 'MintableTokenExt':
    |    assert(addr != address(0));
    |    if (!isAddressReserved(addr)) {
  > |      reservedTokensDestinations.push(addr);
    |      reservedTokensDestinationsLen++;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(644)

[31mViolation[0m for UnrestrictedWrite in contract 'MintableTokenExt':
    |    if (!isAddressReserved(addr)) {
    |      reservedTokensDestinations.push(addr);
  > |      reservedTokensDestinationsLen++;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(645)

[31mViolation[0m for UnrestrictedWrite in contract 'MintableTokenExt':
    |    }
    |
  > |    reservedTokensList[addr] = ReservedTokensData({
    |      inTokens: inTokens, 
    |      inPercentageUnit: inPercentageUnit, 
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(648)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableTokenExt':
    |    if ((_value != 0) && (allowed[msg.sender][_spender] != 0)) throw;
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(198)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableTokenExt':
  > |// Created using Token Wizard https://github.com/poanetwork/token-wizard by POA Network 
    |pragma solidity ^0.4.11;
    |
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(1)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableTokenExt':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(56)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableTokenExt':
    |   */
    |  function setMintAgent(address addr, bool state) onlyOwner canMint public {
  > |    mintAgents[addr] = state;
    |    MintingAgentChanged(addr, state);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(637)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableTokenExt':
    |    assert(addr != address(0));
    |    if (!isAddressReserved(addr)) {
  > |      reservedTokensDestinations.push(addr);
    |      reservedTokensDestinationsLen++;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(644)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableTokenExt':
    |    if (!isAddressReserved(addr)) {
    |      reservedTokensDestinations.push(addr);
  > |      reservedTokensDestinationsLen++;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(645)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableTokenExt':
    |    }
    |
  > |    reservedTokensList[addr] = ReservedTokensData({
    |      inTokens: inTokens, 
    |      inPercentageUnit: inPercentageUnit, 
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(648)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(53)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(56)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * Math operations with safety checks
    | */
  > |contract SafeMath {
    |  function safeMul(uint a, uint b) internal returns (uint) {
    |    uint c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(68)

[33mWarning[0m for LockedEther in contract 'SafeMathLibExt':
    | *
    | */
  > |library SafeMathLibExt {
    |
    |  function times(uint a, uint b) returns (uint) {
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(495)

[33mWarning[0m for MissingInputValidation in contract 'SafeMathLibExt':
    |library SafeMathLibExt {
    |
  > |  function times(uint a, uint b) returns (uint) {
    |    uint c = a * b;
    |    assert(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(497)

[33mWarning[0m for MissingInputValidation in contract 'SafeMathLibExt':
    |  }
    |
  > |  function divides(uint a, uint b) returns (uint) {
    |    assert(b > 0);
    |    uint c = a / b;
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(503)

[33mWarning[0m for MissingInputValidation in contract 'SafeMathLibExt':
    |  }
    |
  > |  function minus(uint a, uint b) returns (uint) {
    |    assert(b <= a);
    |    return a - b;
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(510)

[33mWarning[0m for MissingInputValidation in contract 'SafeMathLibExt':
    |  }
    |
  > |  function plus(uint a, uint b) returns (uint) {
    |    uint c = a + b;
    |    assert(c>=a);
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(515)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, SafeMath {
    |
    |  /* Token supply got increased and a new owner received these tokens */
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(153)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |  }
    |
  > |  function transferFrom(address _from, address _to, uint _value) returns (bool success) {
    |    uint _allowance = allowed[_from][msg.sender];
    |
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(176)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |  }
    |
  > |  function balanceOf(address _owner) constant returns (uint balance) {
    |    return balances[_owner];
    |  }
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(186)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |  }
    |
  > |  function allowance(address _owner, address _spender) constant returns (uint remaining) {
    |    return allowed[_owner][_spender];
    |  }
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(203)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    | */
    |contract ERC20Basic {
  > |  uint256 public totalSupply;
    |  function balanceOf(address who) public constant returns (uint256);
    |  function transfer(address to, uint256 value) public returns (bool);
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |  }
    |
  > |  function safeSub(uint a, uint b) internal returns (uint) {
    |    assert(b <= a);
    |    return a - b;
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(82)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |  }
    |
  > |  function safeAdd(uint a, uint b) internal returns (uint) {
    |    uint c = a + b;
    |    assert(c>=a && c>=b);
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(87)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |
    |  /* Interface declaration */
  > |  function isToken() public constant returns (bool weAre) {
    |    return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(165)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |  function transfer(address _to, uint _value) returns (bool success) {
  > |    balances[msg.sender] = safeSub(balances[msg.sender], _value);
    |    balances[_to] = safeAdd(balances[_to], _value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(170)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |  function transfer(address _to, uint _value) returns (bool success) {
    |    balances[msg.sender] = safeSub(balances[msg.sender], _value);
  > |    balances[_to] = safeAdd(balances[_to], _value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(171)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint _allowance = allowed[_from][msg.sender];
    |
  > |    balances[_to] = safeAdd(balances[_to], _value);
    |    balances[_from] = safeSub(balances[_from], _value);
    |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(179)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    balances[_to] = safeAdd(balances[_to], _value);
  > |    balances[_from] = safeSub(balances[_from], _value);
    |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(180)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_to] = safeAdd(balances[_to], _value);
    |    balances[_from] = safeSub(balances[_from], _value);
  > |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(181)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    if ((_value != 0) && (allowed[msg.sender][_spender] != 0)) throw;
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(198)

[33mWarning[0m for DAO in contract 'UpgradeableToken':
    |
    |      // Upgrade agent reissues the tokens
  > |      upgradeAgent.upgradeFrom(msg.sender, value);
    |      Upgrade(msg.sender, upgradeAgent, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(312)

[33mWarning[0m for DAO in contract 'UpgradeableToken':
    |
    |      // Bad interface
  > |      if(!upgradeAgent.isUpgradeAgent()) throw;
    |      // Make sure that token supplies match in source and target
    |      if (upgradeAgent.originalSupply() != totalSupply) throw;
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(335)

[33mWarning[0m for DAO in contract 'UpgradeableToken':
    |      if(!upgradeAgent.isUpgradeAgent()) throw;
    |      // Make sure that token supplies match in source and target
  > |      if (upgradeAgent.originalSupply() != totalSupply) throw;
    |
    |      UpgradeAgentSet(upgradeAgent);
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(337)

[33mWarning[0m for LockedEther in contract 'UpgradeableToken':
    | * First envisioned by Golem and Lunyr projects.
    | */
  > |contract UpgradeableToken is StandardToken {
    |
    |  /** Contract / person who can set the upgrade path. This can be the same as team multisig wallet, as what it is with its default value. */
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(252)

[31mViolation[0m for MissingInputValidation in contract 'UpgradeableToken':
    |  }
    |
  > |  function transferFrom(address _from, address _to, uint _value) returns (bool success) {
    |    uint _allowance = allowed[_from][msg.sender];
    |
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(176)

[31mViolation[0m for MissingInputValidation in contract 'UpgradeableToken':
    |  }
    |
  > |  function balanceOf(address _owner) constant returns (uint balance) {
    |    return balances[_owner];
    |  }
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(186)

[31mViolation[0m for MissingInputValidation in contract 'UpgradeableToken':
    |  }
    |
  > |  function allowance(address _owner, address _spender) constant returns (uint remaining) {
    |    return allowed[_owner][_spender];
    |  }
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(203)

[33mWarning[0m for MissingInputValidation in contract 'UpgradeableToken':
    | */
    |contract ERC20Basic {
  > |  uint256 public totalSupply;
    |  function balanceOf(address who) public constant returns (uint256);
    |  function transfer(address to, uint256 value) public returns (bool);
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'UpgradeableToken':
    |  }
    |
  > |  function safeSub(uint a, uint b) internal returns (uint) {
    |    assert(b <= a);
    |    return a - b;
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(82)

[33mWarning[0m for MissingInputValidation in contract 'UpgradeableToken':
    |  }
    |
  > |  function safeAdd(uint a, uint b) internal returns (uint) {
    |    uint c = a + b;
    |    assert(c>=a && c>=b);
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(87)

[33mWarning[0m for MissingInputValidation in contract 'UpgradeableToken':
    |
    |  /* Interface declaration */
  > |  function isToken() public constant returns (bool weAre) {
    |    return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(165)

[33mWarning[0m for MissingInputValidation in contract 'UpgradeableToken':
    |
    |  /** Contract / person who can set the upgrade path. This can be the same as team multisig wallet, as what it is with its default value. */
  > |  address public upgradeMaster;
    |
    |  /** The next contract where the tokens will be migrated. */
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(255)

[33mWarning[0m for MissingInputValidation in contract 'UpgradeableToken':
    |
    |  /** The next contract where the tokens will be migrated. */
  > |  UpgradeAgent public upgradeAgent;
    |
    |  /** How many tokens we have upgraded by now. */
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(258)

[33mWarning[0m for MissingInputValidation in contract 'UpgradeableToken':
    |
    |  /** How many tokens we have upgraded by now. */
  > |  uint256 public totalUpgraded;
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(261)

[33mWarning[0m for MissingInputValidation in contract 'UpgradeableToken':
    |   * Get the state of the token upgrade.
    |   */
  > |  function getUpgradeState() public constant returns(UpgradeState) {
    |    if(!canUpgrade()) return UpgradeState.NotAllowed;
    |    else if(address(upgradeAgent) == 0x00) return UpgradeState.WaitingForAgent;
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(345)

[33mWarning[0m for MissingInputValidation in contract 'UpgradeableToken':
    |   * This allows us to set a new owner for the upgrade mechanism.
    |   */
  > |  function setUpgradeMaster(address master) public {
    |      if (master == 0x0) throw;
    |      if (msg.sender != upgradeMaster) throw;
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(357)

[33mWarning[0m for MissingInputValidation in contract 'UpgradeableToken':
    |   * Child contract can enable to provide the condition when the upgrade can begun.
    |   */
  > |  function canUpgrade() public constant returns(bool) {
    |     return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(366)

[33mWarning[0m for UnhandledException in contract 'UpgradeableToken':
    |
    |      // Upgrade agent reissues the tokens
  > |      upgradeAgent.upgradeFrom(msg.sender, value);
    |      Upgrade(msg.sender, upgradeAgent, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(312)

[33mWarning[0m for UnhandledException in contract 'UpgradeableToken':
    |
    |      // Bad interface
  > |      if(!upgradeAgent.isUpgradeAgent()) throw;
    |      // Make sure that token supplies match in source and target
    |      if (upgradeAgent.originalSupply() != totalSupply) throw;
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(335)

[33mWarning[0m for UnhandledException in contract 'UpgradeableToken':
    |      if(!upgradeAgent.isUpgradeAgent()) throw;
    |      // Make sure that token supplies match in source and target
  > |      if (upgradeAgent.originalSupply() != totalSupply) throw;
    |
    |      UpgradeAgentSet(upgradeAgent);
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(337)

[31mViolation[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |
    |  function transfer(address _to, uint _value) returns (bool success) {
  > |    balances[msg.sender] = safeSub(balances[msg.sender], _value);
    |    balances[_to] = safeAdd(balances[_to], _value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(170)

[31mViolation[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |  function transfer(address _to, uint _value) returns (bool success) {
    |    balances[msg.sender] = safeSub(balances[msg.sender], _value);
  > |    balances[_to] = safeAdd(balances[_to], _value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(171)

[31mViolation[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |    uint _allowance = allowed[_from][msg.sender];
    |
  > |    balances[_to] = safeAdd(balances[_to], _value);
    |    balances[_from] = safeSub(balances[_from], _value);
    |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(179)

[31mViolation[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |
    |    balances[_to] = safeAdd(balances[_to], _value);
  > |    balances[_from] = safeSub(balances[_from], _value);
    |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(180)

[31mViolation[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |    balances[_to] = safeAdd(balances[_to], _value);
    |    balances[_from] = safeSub(balances[_from], _value);
  > |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(181)

[31mViolation[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |      if (value == 0) throw;
    |
  > |      balances[msg.sender] = safeSub(balances[msg.sender], value);
    |
    |      // Take tokens out from circulation
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(305)

[31mViolation[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |
    |      // Take tokens out from circulation
  > |      totalSupply = safeSub(totalSupply, value);
    |      totalUpgraded = safeAdd(totalUpgraded, value);
    |
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(308)

[31mViolation[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |      // Take tokens out from circulation
    |      totalSupply = safeSub(totalSupply, value);
  > |      totalUpgraded = safeAdd(totalUpgraded, value);
    |
    |      // Upgrade agent reissues the tokens
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(309)

[31mViolation[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |      if (getUpgradeState() == UpgradeState.Upgrading) throw;
    |
  > |      upgradeAgent = UpgradeAgent(agent);
    |
    |      // Bad interface
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(332)

[33mWarning[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |    if ((_value != 0) && (allowed[msg.sender][_spender] != 0)) throw;
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(198)

[33mWarning[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |      if (master == 0x0) throw;
    |      if (msg.sender != upgradeMaster) throw;
  > |      upgradeMaster = master;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xca049af7e60caf1cbf41c0d14b4dd648c3af24dc.sol(360)


