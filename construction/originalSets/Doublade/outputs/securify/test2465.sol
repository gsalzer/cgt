Processing contract: /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol:CrowdsaleTokenExt
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol:MintableTokenExt
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol:ReleasableToken
Processing contract: /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol:SafeMathLibExt
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol:UpgradeAgent
Processing contract: /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol:UpgradeableToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for LockedEther in contract 'CrowdsaleTokenExt':
    | *
    | */
  > |contract CrowdsaleTokenExt is ReleasableToken, MintableTokenExt, UpgradeableToken {
    |  /** Name and symbol were updated. */
    |  event UpdatedTokenInformation(string newName, string newSymbol);
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(471)

[33mWarning[0m for UnhandledException in contract 'CrowdsaleTokenExt':
    |      totalUpgraded = safeAdd(totalUpgraded, value);
    |      // Upgrade agent reissues the tokens
  > |      upgradeAgent.upgradeFrom(msg.sender, value);
    |      Upgrade(msg.sender, upgradeAgent, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(228)

[33mWarning[0m for UnhandledException in contract 'CrowdsaleTokenExt':
    |      upgradeAgent = UpgradeAgent(agent);
    |      // Bad interface
  > |      if(!upgradeAgent.isUpgradeAgent()) throw;
    |      // Make sure that token supplies match in source and target
    |      if (upgradeAgent.originalSupply() != totalSupply) throw;
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(246)

[33mWarning[0m for UnhandledException in contract 'CrowdsaleTokenExt':
    |      if(!upgradeAgent.isUpgradeAgent()) throw;
    |      // Make sure that token supplies match in source and target
  > |      if (upgradeAgent.originalSupply() != totalSupply) throw;
    |      UpgradeAgentSet(upgradeAgent);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(248)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CrowdsaleTokenExt':
    |      totalUpgraded = safeAdd(totalUpgraded, value);
    |      // Upgrade agent reissues the tokens
  > |      upgradeAgent.upgradeFrom(msg.sender, value);
    |      Upgrade(msg.sender, upgradeAgent, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(228)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CrowdsaleTokenExt':
    |      upgradeAgent = UpgradeAgent(agent);
    |      // Bad interface
  > |      if(!upgradeAgent.isUpgradeAgent()) throw;
    |      // Make sure that token supplies match in source and target
    |      if (upgradeAgent.originalSupply() != totalSupply) throw;
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(246)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CrowdsaleTokenExt':
    |      if(!upgradeAgent.isUpgradeAgent()) throw;
    |      // Make sure that token supplies match in source and target
  > |      if (upgradeAgent.originalSupply() != totalSupply) throw;
    |      UpgradeAgentSet(upgradeAgent);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(248)

[31mViolation[0m for UnrestrictedWrite in contract 'CrowdsaleTokenExt':
    |   */
    |  function mint(address receiver, uint amount) onlyMintAgent canMint public {
  > |    totalSupply = totalSupply.plus(amount);
    |    balances[receiver] = balances[receiver].plus(amount);
    |    // This will make the mint transaction apper in EtherScan.io
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(434)

[31mViolation[0m for UnrestrictedWrite in contract 'CrowdsaleTokenExt':
    |  function mint(address receiver, uint amount) onlyMintAgent canMint public {
    |    totalSupply = totalSupply.plus(amount);
  > |    balances[receiver] = balances[receiver].plus(amount);
    |    // This will make the mint transaction apper in EtherScan.io
    |    // We can remove this after there is a standardized minting event
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(435)

[31mViolation[0m for UnrestrictedWrite in contract 'CrowdsaleTokenExt':
    | *
    | */
  > |contract CrowdsaleTokenExt is ReleasableToken, MintableTokenExt, UpgradeableToken {
    |  /** Name and symbol were updated. */
    |  event UpdatedTokenInformation(string newName, string newSymbol);
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(471)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleTokenExt':
    |  }
    |  function transfer(address _to, uint _value) returns (bool success) {
  > |    balances[msg.sender] = safeSub(balances[msg.sender], _value);
    |    balances[_to] = safeAdd(balances[_to], _value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleTokenExt':
    |  function transfer(address _to, uint _value) returns (bool success) {
    |    balances[msg.sender] = safeSub(balances[msg.sender], _value);
  > |    balances[_to] = safeAdd(balances[_to], _value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(123)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleTokenExt':
    |  function transferFrom(address _from, address _to, uint _value) returns (bool success) {
    |    uint _allowance = allowed[_from][msg.sender];
  > |    balances[_to] = safeAdd(balances[_to], _value);
    |    balances[_from] = safeSub(balances[_from], _value);
    |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(129)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleTokenExt':
    |    uint _allowance = allowed[_from][msg.sender];
    |    balances[_to] = safeAdd(balances[_to], _value);
  > |    balances[_from] = safeSub(balances[_from], _value);
    |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(130)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleTokenExt':
    |    balances[_to] = safeAdd(balances[_to], _value);
    |    balances[_from] = safeSub(balances[_from], _value);
  > |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(131)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleTokenExt':
    |    //  https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
    |    if ((_value != 0) && (allowed[msg.sender][_spender] != 0)) throw;
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(144)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleTokenExt':
    |      // Validate input value.
    |      if (value == 0) throw;
  > |      balances[msg.sender] = safeSub(balances[msg.sender], value);
    |      // Take tokens out from circulation
    |      totalSupply = safeSub(totalSupply, value);
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(223)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleTokenExt':
    |      balances[msg.sender] = safeSub(balances[msg.sender], value);
    |      // Take tokens out from circulation
  > |      totalSupply = safeSub(totalSupply, value);
    |      totalUpgraded = safeAdd(totalUpgraded, value);
    |      // Upgrade agent reissues the tokens
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(225)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleTokenExt':
    |      // Take tokens out from circulation
    |      totalSupply = safeSub(totalSupply, value);
  > |      totalUpgraded = safeAdd(totalUpgraded, value);
    |      // Upgrade agent reissues the tokens
    |      upgradeAgent.upgradeFrom(msg.sender, value);
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(226)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleTokenExt':
  > |// Created using ICO Wizard https://github.com/oraclesorg/ico-wizard by Oracles Network 
    |pragma solidity ^0.4.11;
    |/**
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(1)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleTokenExt':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(43)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleTokenExt':
    |      // Upgrade has already begun for an agent
    |      if (getUpgradeState() == UpgradeState.Upgrading) throw;
  > |      upgradeAgent = UpgradeAgent(agent);
    |      // Bad interface
    |      if(!upgradeAgent.isUpgradeAgent()) throw;
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(244)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleTokenExt':
    |      if (master == 0x0) throw;
    |      if (msg.sender != upgradeMaster) throw;
  > |      upgradeMaster = master;
    |  }
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(268)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleTokenExt':
    |  function setReleaseAgent(address addr) onlyOwner inReleaseState(false) public {
    |    // We don't do interface check here as we might want to a normal wallet address to act as a release agent
  > |    releaseAgent = addr;
    |  }
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(311)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleTokenExt':
    |   */
    |  function setTransferAgent(address addr, bool state) onlyOwner inReleaseState(false) public {
  > |    transferAgents[addr] = state;
    |  }
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(317)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleTokenExt':
    |   */
    |  function releaseTokenTransfer() public onlyReleaseAgent {
  > |    released = true;
    |  }
    |  /** The function can be called only before or after the tokens have been releasesd */
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(325)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleTokenExt':
    |  uint public reservedTokensDestinationsLen = 0;
    |  function setReservedTokensList(address addr, uint inTokens, uint inPercentage) onlyOwner {
  > |    reservedTokensDestinations.push(addr);
    |    reservedTokensDestinationsLen++;
    |    reservedTokensList[addr] = ReservedTokensData({inTokens:inTokens, inPercentage:inPercentage});
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(413)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleTokenExt':
    |  function setReservedTokensList(address addr, uint inTokens, uint inPercentage) onlyOwner {
    |    reservedTokensDestinations.push(addr);
  > |    reservedTokensDestinationsLen++;
    |    reservedTokensList[addr] = ReservedTokensData({inTokens:inTokens, inPercentage:inPercentage});
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(414)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleTokenExt':
    |    reservedTokensDestinations.push(addr);
    |    reservedTokensDestinationsLen++;
  > |    reservedTokensList[addr] = ReservedTokensData({inTokens:inTokens, inPercentage:inPercentage});
    |  }
    |  function getReservedTokensListValInTokens(address addr) constant returns (uint inTokens) {
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(415)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleTokenExt':
    |   */
    |  function setMintAgent(address addr, bool state) onlyOwner canMint public {
  > |    mintAgents[addr] = state;
    |    MintingAgentChanged(addr, state);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(444)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleTokenExt':
    | *
    | */
  > |contract CrowdsaleTokenExt is ReleasableToken, MintableTokenExt, UpgradeableToken {
    |  /** Name and symbol were updated. */
    |  event UpdatedTokenInformation(string newName, string newSymbol);
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(471)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleTokenExt':
    |   */
    |  function releaseTokenTransfer() public onlyReleaseAgent {
  > |    mintingFinished = true;
    |    super.releaseTokenTransfer();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(518)

[33mWarning[0m for LockedEther in contract 'MintableTokenExt':
    | *
    | */
  > |contract MintableTokenExt is StandardToken, Ownable {
    |  using SafeMathLibExt for uint;
    |  bool public mintingFinished = false;
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(399)

[31mViolation[0m for MissingInputValidation in contract 'MintableTokenExt':
    |    return true;
    |  }
  > |  function transferFrom(address _from, address _to, uint _value) returns (bool success) {
    |    uint _allowance = allowed[_from][msg.sender];
    |    balances[_to] = safeAdd(balances[_to], _value);
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(127)

[31mViolation[0m for MissingInputValidation in contract 'MintableTokenExt':
    |    return true;
    |  }
  > |  function balanceOf(address _owner) constant returns (uint balance) {
    |    return balances[_owner];
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(135)

[31mViolation[0m for MissingInputValidation in contract 'MintableTokenExt':
    |    return true;
    |  }
  > |  function allowance(address _owner, address _spender) constant returns (uint remaining) {
    |    return allowed[_owner][_spender];
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(148)

[31mViolation[0m for MissingInputValidation in contract 'MintableTokenExt':
    |  bool public mintingFinished = false;
    |  /** List of agents that are allowed to create new tokens */
  > |  mapping (address => bool) public mintAgents;
    |  event MintingAgentChanged(address addr, bool state  );
    |  struct ReservedTokensData {
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(403)

[31mViolation[0m for MissingInputValidation in contract 'MintableTokenExt':
    |    uint inPercentage;
    |  }
  > |  mapping (address => ReservedTokensData) public reservedTokensList;
    |  address[] public reservedTokensDestinations;
    |  uint public reservedTokensDestinationsLen = 0;
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(409)

[31mViolation[0m for MissingInputValidation in contract 'MintableTokenExt':
    |    reservedTokensList[addr] = ReservedTokensData({inTokens:inTokens, inPercentage:inPercentage});
    |  }
  > |  function getReservedTokensListValInTokens(address addr) constant returns (uint inTokens) {
    |    return reservedTokensList[addr].inTokens;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(417)

[31mViolation[0m for MissingInputValidation in contract 'MintableTokenExt':
    |    return reservedTokensList[addr].inTokens;
    |  }
  > |  function getReservedTokensListValInPercentage(address addr) constant returns (uint inPercentage) {
    |    return reservedTokensList[addr].inPercentage;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(420)

[31mViolation[0m for MissingInputValidation in contract 'MintableTokenExt':
    |   * Only callably by a crowdsale contract (mint agent).
    |   */
  > |  function mint(address receiver, uint amount) onlyMintAgent canMint public {
    |    totalSupply = totalSupply.plus(amount);
    |    balances[receiver] = balances[receiver].plus(amount);
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(433)

[31mViolation[0m for MissingInputValidation in contract 'MintableTokenExt':
    |   * Owner can allow a crowdsale contract to mint new tokens.
    |   */
  > |  function setMintAgent(address addr, bool state) onlyOwner canMint public {
    |    mintAgents[addr] = state;
    |    MintingAgentChanged(addr, state);
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(443)

[33mWarning[0m for MissingInputValidation in contract 'MintableTokenExt':
    | */
    |contract ERC20Basic {
  > |  uint256 public totalSupply;
    |  function balanceOf(address who) public constant returns (uint256);
    |  function transfer(address to, uint256 value) public returns (bool);
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'MintableTokenExt':
    | */
    |contract Ownable {
  > |  address public owner;
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(20)

[33mWarning[0m for MissingInputValidation in contract 'MintableTokenExt':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(40)

[33mWarning[0m for MissingInputValidation in contract 'MintableTokenExt':
    |    return c;
    |  }
  > |  function safeSub(uint a, uint b) internal returns (uint) {
    |    assert(b <= a);
    |    return a - b;
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(62)

[33mWarning[0m for MissingInputValidation in contract 'MintableTokenExt':
    |    return a - b;
    |  }
  > |  function safeAdd(uint a, uint b) internal returns (uint) {
    |    uint c = a + b;
    |    assert(c>=a && c>=b);
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(66)

[33mWarning[0m for MissingInputValidation in contract 'MintableTokenExt':
    |  mapping (address => mapping (address => uint)) allowed;
    |  /* Interface declaration */
  > |  function isToken() public constant returns (bool weAre) {
    |    return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(118)

[33mWarning[0m for MissingInputValidation in contract 'MintableTokenExt':
    |contract MintableTokenExt is StandardToken, Ownable {
    |  using SafeMathLibExt for uint;
  > |  bool public mintingFinished = false;
    |  /** List of agents that are allowed to create new tokens */
    |  mapping (address => bool) public mintAgents;
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(401)

[33mWarning[0m for MissingInputValidation in contract 'MintableTokenExt':
    |  }
    |  mapping (address => ReservedTokensData) public reservedTokensList;
  > |  address[] public reservedTokensDestinations;
    |  uint public reservedTokensDestinationsLen = 0;
    |  function setReservedTokensList(address addr, uint inTokens, uint inPercentage) onlyOwner {
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(410)

[33mWarning[0m for MissingInputValidation in contract 'MintableTokenExt':
    |  mapping (address => ReservedTokensData) public reservedTokensList;
    |  address[] public reservedTokensDestinations;
  > |  uint public reservedTokensDestinationsLen = 0;
    |  function setReservedTokensList(address addr, uint inTokens, uint inPercentage) onlyOwner {
    |    reservedTokensDestinations.push(addr);
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(411)

[31mViolation[0m for UnrestrictedWrite in contract 'MintableTokenExt':
    |  }
    |  function transfer(address _to, uint _value) returns (bool success) {
  > |    balances[msg.sender] = safeSub(balances[msg.sender], _value);
    |    balances[_to] = safeAdd(balances[_to], _value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(122)

[31mViolation[0m for UnrestrictedWrite in contract 'MintableTokenExt':
    |  function transfer(address _to, uint _value) returns (bool success) {
    |    balances[msg.sender] = safeSub(balances[msg.sender], _value);
  > |    balances[_to] = safeAdd(balances[_to], _value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(123)

[31mViolation[0m for UnrestrictedWrite in contract 'MintableTokenExt':
    |  function transferFrom(address _from, address _to, uint _value) returns (bool success) {
    |    uint _allowance = allowed[_from][msg.sender];
  > |    balances[_to] = safeAdd(balances[_to], _value);
    |    balances[_from] = safeSub(balances[_from], _value);
    |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(129)

[31mViolation[0m for UnrestrictedWrite in contract 'MintableTokenExt':
    |    uint _allowance = allowed[_from][msg.sender];
    |    balances[_to] = safeAdd(balances[_to], _value);
  > |    balances[_from] = safeSub(balances[_from], _value);
    |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(130)

[31mViolation[0m for UnrestrictedWrite in contract 'MintableTokenExt':
    |    balances[_to] = safeAdd(balances[_to], _value);
    |    balances[_from] = safeSub(balances[_from], _value);
  > |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(131)

[31mViolation[0m for UnrestrictedWrite in contract 'MintableTokenExt':
    |   */
    |  function mint(address receiver, uint amount) onlyMintAgent canMint public {
  > |    totalSupply = totalSupply.plus(amount);
    |    balances[receiver] = balances[receiver].plus(amount);
    |    // This will make the mint transaction apper in EtherScan.io
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(434)

[31mViolation[0m for UnrestrictedWrite in contract 'MintableTokenExt':
    |  function mint(address receiver, uint amount) onlyMintAgent canMint public {
    |    totalSupply = totalSupply.plus(amount);
  > |    balances[receiver] = balances[receiver].plus(amount);
    |    // This will make the mint transaction apper in EtherScan.io
    |    // We can remove this after there is a standardized minting event
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(435)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableTokenExt':
    |    //  https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
    |    if ((_value != 0) && (allowed[msg.sender][_spender] != 0)) throw;
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(144)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableTokenExt':
  > |// Created using ICO Wizard https://github.com/oraclesorg/ico-wizard by Oracles Network 
    |pragma solidity ^0.4.11;
    |/**
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(1)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableTokenExt':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(43)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableTokenExt':
    |  uint public reservedTokensDestinationsLen = 0;
    |  function setReservedTokensList(address addr, uint inTokens, uint inPercentage) onlyOwner {
  > |    reservedTokensDestinations.push(addr);
    |    reservedTokensDestinationsLen++;
    |    reservedTokensList[addr] = ReservedTokensData({inTokens:inTokens, inPercentage:inPercentage});
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(413)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableTokenExt':
    |  function setReservedTokensList(address addr, uint inTokens, uint inPercentage) onlyOwner {
    |    reservedTokensDestinations.push(addr);
  > |    reservedTokensDestinationsLen++;
    |    reservedTokensList[addr] = ReservedTokensData({inTokens:inTokens, inPercentage:inPercentage});
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(414)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableTokenExt':
    |    reservedTokensDestinations.push(addr);
    |    reservedTokensDestinationsLen++;
  > |    reservedTokensList[addr] = ReservedTokensData({inTokens:inTokens, inPercentage:inPercentage});
    |  }
    |  function getReservedTokensListValInTokens(address addr) constant returns (uint inTokens) {
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(415)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableTokenExt':
    |   */
    |  function setMintAgent(address addr, bool state) onlyOwner canMint public {
  > |    mintAgents[addr] = state;
    |    MintingAgentChanged(addr, state);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(444)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(19)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(20)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(40)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(43)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * Math operations with safety checks
    | */
  > |contract SafeMath {
    |  function safeMul(uint a, uint b) internal returns (uint) {
    |    uint c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(50)

[33mWarning[0m for LockedEther in contract 'SafeMathLibExt':
    | *
    | */
  > |library SafeMathLibExt {
    |  function times(uint a, uint b) returns (uint) {
    |    uint c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(370)

[33mWarning[0m for MissingInputValidation in contract 'SafeMathLibExt':
    | */
    |library SafeMathLibExt {
  > |  function times(uint a, uint b) returns (uint) {
    |    uint c = a * b;
    |    assert(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(371)

[33mWarning[0m for MissingInputValidation in contract 'SafeMathLibExt':
    |    return c;
    |  }
  > |  function divides(uint a, uint b) returns (uint) {
    |    assert(b > 0);
    |    uint c = a / b;
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(376)

[33mWarning[0m for MissingInputValidation in contract 'SafeMathLibExt':
    |    return c;
    |  }
  > |  function minus(uint a, uint b) returns (uint) {
    |    assert(b <= a);
    |    return a - b;
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(382)

[33mWarning[0m for MissingInputValidation in contract 'SafeMathLibExt':
    |    return a - b;
    |  }
  > |  function plus(uint a, uint b) returns (uint) {
    |    uint c = a + b;
    |    assert(c>=a);
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(386)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, SafeMath {
    |  /* Token supply got increased and a new owner received these tokens */
    |  event Minted(address receiver, uint amount);
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(110)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    return true;
    |  }
  > |  function transferFrom(address _from, address _to, uint _value) returns (bool success) {
    |    uint _allowance = allowed[_from][msg.sender];
    |    balances[_to] = safeAdd(balances[_to], _value);
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(127)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    return true;
    |  }
  > |  function balanceOf(address _owner) constant returns (uint balance) {
    |    return balances[_owner];
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(135)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    return true;
    |  }
  > |  function allowance(address _owner, address _spender) constant returns (uint remaining) {
    |    return allowed[_owner][_spender];
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(148)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    | */
    |contract ERC20Basic {
  > |  uint256 public totalSupply;
    |  function balanceOf(address who) public constant returns (uint256);
    |  function transfer(address to, uint256 value) public returns (bool);
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |    return c;
    |  }
  > |  function safeSub(uint a, uint b) internal returns (uint) {
    |    assert(b <= a);
    |    return a - b;
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(62)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |    return a - b;
    |  }
  > |  function safeAdd(uint a, uint b) internal returns (uint) {
    |    uint c = a + b;
    |    assert(c>=a && c>=b);
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(66)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |  mapping (address => mapping (address => uint)) allowed;
    |  /* Interface declaration */
  > |  function isToken() public constant returns (bool weAre) {
    |    return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(118)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |  }
    |  function transfer(address _to, uint _value) returns (bool success) {
  > |    balances[msg.sender] = safeSub(balances[msg.sender], _value);
    |    balances[_to] = safeAdd(balances[_to], _value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(122)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |  function transfer(address _to, uint _value) returns (bool success) {
    |    balances[msg.sender] = safeSub(balances[msg.sender], _value);
  > |    balances[_to] = safeAdd(balances[_to], _value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(123)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |  function transferFrom(address _from, address _to, uint _value) returns (bool success) {
    |    uint _allowance = allowed[_from][msg.sender];
  > |    balances[_to] = safeAdd(balances[_to], _value);
    |    balances[_from] = safeSub(balances[_from], _value);
    |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(129)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint _allowance = allowed[_from][msg.sender];
    |    balances[_to] = safeAdd(balances[_to], _value);
  > |    balances[_from] = safeSub(balances[_from], _value);
    |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(130)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_to] = safeAdd(balances[_to], _value);
    |    balances[_from] = safeSub(balances[_from], _value);
  > |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(131)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    //  https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
    |    if ((_value != 0) && (allowed[msg.sender][_spender] != 0)) throw;
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(144)

[33mWarning[0m for DAO in contract 'UpgradeableToken':
    |      totalUpgraded = safeAdd(totalUpgraded, value);
    |      // Upgrade agent reissues the tokens
  > |      upgradeAgent.upgradeFrom(msg.sender, value);
    |      Upgrade(msg.sender, upgradeAgent, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(228)

[33mWarning[0m for DAO in contract 'UpgradeableToken':
    |      upgradeAgent = UpgradeAgent(agent);
    |      // Bad interface
  > |      if(!upgradeAgent.isUpgradeAgent()) throw;
    |      // Make sure that token supplies match in source and target
    |      if (upgradeAgent.originalSupply() != totalSupply) throw;
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(246)

[33mWarning[0m for DAO in contract 'UpgradeableToken':
    |      if(!upgradeAgent.isUpgradeAgent()) throw;
    |      // Make sure that token supplies match in source and target
  > |      if (upgradeAgent.originalSupply() != totalSupply) throw;
    |      UpgradeAgentSet(upgradeAgent);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(248)

[33mWarning[0m for LockedEther in contract 'UpgradeableToken':
    | * First envisioned by Golem and Lunyr projects.
    | */
  > |contract UpgradeableToken is StandardToken {
    |  /** Contract / person who can set the upgrade path. This can be the same as team multisig wallet, as what it is with its default value. */
    |  address public upgradeMaster;
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(181)

[31mViolation[0m for MissingInputValidation in contract 'UpgradeableToken':
    |    return true;
    |  }
  > |  function transferFrom(address _from, address _to, uint _value) returns (bool success) {
    |    uint _allowance = allowed[_from][msg.sender];
    |    balances[_to] = safeAdd(balances[_to], _value);
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(127)

[31mViolation[0m for MissingInputValidation in contract 'UpgradeableToken':
    |    return true;
    |  }
  > |  function balanceOf(address _owner) constant returns (uint balance) {
    |    return balances[_owner];
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(135)

[31mViolation[0m for MissingInputValidation in contract 'UpgradeableToken':
    |    return true;
    |  }
  > |  function allowance(address _owner, address _spender) constant returns (uint remaining) {
    |    return allowed[_owner][_spender];
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(148)

[33mWarning[0m for MissingInputValidation in contract 'UpgradeableToken':
    | */
    |contract ERC20Basic {
  > |  uint256 public totalSupply;
    |  function balanceOf(address who) public constant returns (uint256);
    |  function transfer(address to, uint256 value) public returns (bool);
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'UpgradeableToken':
    |    return c;
    |  }
  > |  function safeSub(uint a, uint b) internal returns (uint) {
    |    assert(b <= a);
    |    return a - b;
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(62)

[33mWarning[0m for MissingInputValidation in contract 'UpgradeableToken':
    |    return a - b;
    |  }
  > |  function safeAdd(uint a, uint b) internal returns (uint) {
    |    uint c = a + b;
    |    assert(c>=a && c>=b);
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(66)

[33mWarning[0m for MissingInputValidation in contract 'UpgradeableToken':
    |  mapping (address => mapping (address => uint)) allowed;
    |  /* Interface declaration */
  > |  function isToken() public constant returns (bool weAre) {
    |    return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(118)

[33mWarning[0m for MissingInputValidation in contract 'UpgradeableToken':
    |contract UpgradeableToken is StandardToken {
    |  /** Contract / person who can set the upgrade path. This can be the same as team multisig wallet, as what it is with its default value. */
  > |  address public upgradeMaster;
    |  /** The next contract where the tokens will be migrated. */
    |  UpgradeAgent public upgradeAgent;
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(183)

[33mWarning[0m for MissingInputValidation in contract 'UpgradeableToken':
    |  address public upgradeMaster;
    |  /** The next contract where the tokens will be migrated. */
  > |  UpgradeAgent public upgradeAgent;
    |  /** How many tokens we have upgraded by now. */
    |  uint256 public totalUpgraded;
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(185)

[33mWarning[0m for MissingInputValidation in contract 'UpgradeableToken':
    |  UpgradeAgent public upgradeAgent;
    |  /** How many tokens we have upgraded by now. */
  > |  uint256 public totalUpgraded;
    |  /**
    |   * Upgrade states.
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(187)

[33mWarning[0m for MissingInputValidation in contract 'UpgradeableToken':
    |   * Get the state of the token upgrade.
    |   */
  > |  function getUpgradeState() public constant returns(UpgradeState) {
    |    if(!canUpgrade()) return UpgradeState.NotAllowed;
    |    else if(address(upgradeAgent) == 0x00) return UpgradeState.WaitingForAgent;
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(254)

[33mWarning[0m for MissingInputValidation in contract 'UpgradeableToken':
    |   * This allows us to set a new owner for the upgrade mechanism.
    |   */
  > |  function setUpgradeMaster(address master) public {
    |      if (master == 0x0) throw;
    |      if (msg.sender != upgradeMaster) throw;
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(265)

[33mWarning[0m for MissingInputValidation in contract 'UpgradeableToken':
    |   * Child contract can enable to provide the condition when the upgrade can begun.
    |   */
  > |  function canUpgrade() public constant returns(bool) {
    |     return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(273)

[33mWarning[0m for UnhandledException in contract 'UpgradeableToken':
    |      totalUpgraded = safeAdd(totalUpgraded, value);
    |      // Upgrade agent reissues the tokens
  > |      upgradeAgent.upgradeFrom(msg.sender, value);
    |      Upgrade(msg.sender, upgradeAgent, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(228)

[33mWarning[0m for UnhandledException in contract 'UpgradeableToken':
    |      upgradeAgent = UpgradeAgent(agent);
    |      // Bad interface
  > |      if(!upgradeAgent.isUpgradeAgent()) throw;
    |      // Make sure that token supplies match in source and target
    |      if (upgradeAgent.originalSupply() != totalSupply) throw;
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(246)

[33mWarning[0m for UnhandledException in contract 'UpgradeableToken':
    |      if(!upgradeAgent.isUpgradeAgent()) throw;
    |      // Make sure that token supplies match in source and target
  > |      if (upgradeAgent.originalSupply() != totalSupply) throw;
    |      UpgradeAgentSet(upgradeAgent);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(248)

[31mViolation[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |  }
    |  function transfer(address _to, uint _value) returns (bool success) {
  > |    balances[msg.sender] = safeSub(balances[msg.sender], _value);
    |    balances[_to] = safeAdd(balances[_to], _value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(122)

[31mViolation[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |  function transfer(address _to, uint _value) returns (bool success) {
    |    balances[msg.sender] = safeSub(balances[msg.sender], _value);
  > |    balances[_to] = safeAdd(balances[_to], _value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(123)

[31mViolation[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |  function transferFrom(address _from, address _to, uint _value) returns (bool success) {
    |    uint _allowance = allowed[_from][msg.sender];
  > |    balances[_to] = safeAdd(balances[_to], _value);
    |    balances[_from] = safeSub(balances[_from], _value);
    |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(129)

[31mViolation[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |    uint _allowance = allowed[_from][msg.sender];
    |    balances[_to] = safeAdd(balances[_to], _value);
  > |    balances[_from] = safeSub(balances[_from], _value);
    |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(130)

[31mViolation[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |    balances[_to] = safeAdd(balances[_to], _value);
    |    balances[_from] = safeSub(balances[_from], _value);
  > |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(131)

[31mViolation[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |      // Validate input value.
    |      if (value == 0) throw;
  > |      balances[msg.sender] = safeSub(balances[msg.sender], value);
    |      // Take tokens out from circulation
    |      totalSupply = safeSub(totalSupply, value);
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(223)

[31mViolation[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |      balances[msg.sender] = safeSub(balances[msg.sender], value);
    |      // Take tokens out from circulation
  > |      totalSupply = safeSub(totalSupply, value);
    |      totalUpgraded = safeAdd(totalUpgraded, value);
    |      // Upgrade agent reissues the tokens
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(225)

[31mViolation[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |      // Take tokens out from circulation
    |      totalSupply = safeSub(totalSupply, value);
  > |      totalUpgraded = safeAdd(totalUpgraded, value);
    |      // Upgrade agent reissues the tokens
    |      upgradeAgent.upgradeFrom(msg.sender, value);
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(226)

[31mViolation[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |      // Upgrade has already begun for an agent
    |      if (getUpgradeState() == UpgradeState.Upgrading) throw;
  > |      upgradeAgent = UpgradeAgent(agent);
    |      // Bad interface
    |      if(!upgradeAgent.isUpgradeAgent()) throw;
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(244)

[33mWarning[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |    //  https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
    |    if ((_value != 0) && (allowed[msg.sender][_spender] != 0)) throw;
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(144)

[33mWarning[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |      if (master == 0x0) throw;
    |      if (msg.sender != upgradeMaster) throw;
  > |      upgradeMaster = master;
    |  }
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xa0a2684e93ff3b100d766f7a8af515b20568d69e.sol(268)


