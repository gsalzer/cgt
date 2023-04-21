Processing contract: /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol:CrowdsaleExt
Processing contract: /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol:CrowdsaleTokenExt
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol:FinalizeAgent
Processing contract: /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol:FractionalERC20Ext
Processing contract: /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol:Haltable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol:MintableTokenExt
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol:PricingStrategy
Processing contract: /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol:ReleasableToken
Processing contract: /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol:ReservedTokensFinalizeAgent
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol:SafeMathLibExt
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol:UpgradeAgent
Processing contract: /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol:UpgradeableToken
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
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1442)

[33mWarning[0m for UnhandledException in contract 'CrowdsaleTokenExt':
    |
    |      // Upgrade agent reissues the tokens
  > |      upgradeAgent.upgradeFrom(msg.sender, value);
    |      Upgrade(msg.sender, upgradeAgent, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1129)

[33mWarning[0m for UnhandledException in contract 'CrowdsaleTokenExt':
    |
    |      // Bad interface
  > |      if(!upgradeAgent.isUpgradeAgent()) throw;
    |      // Make sure that token supplies match in source and target
    |      if (upgradeAgent.originalSupply() != totalSupply) throw;
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1152)

[33mWarning[0m for UnhandledException in contract 'CrowdsaleTokenExt':
    |      if(!upgradeAgent.isUpgradeAgent()) throw;
    |      // Make sure that token supplies match in source and target
  > |      if (upgradeAgent.originalSupply() != totalSupply) throw;
    |
    |      UpgradeAgentSet(upgradeAgent);
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1154)

[33mWarning[0m for UnhandledException in contract 'CrowdsaleTokenExt':
    |
    |    ERC20 token = ERC20(_token);
  > |    uint balance = token.balanceOf(this);
    |    token.transfer(owner, balance);
    |
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1542)

[33mWarning[0m for UnhandledException in contract 'CrowdsaleTokenExt':
    |    ERC20 token = ERC20(_token);
    |    uint balance = token.balanceOf(this);
  > |    token.transfer(owner, balance);
    |
    |    ClaimedTokens(_token, owner, balance);
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1543)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CrowdsaleTokenExt':
    |
    |      // Upgrade agent reissues the tokens
  > |      upgradeAgent.upgradeFrom(msg.sender, value);
    |      Upgrade(msg.sender, upgradeAgent, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1129)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CrowdsaleTokenExt':
    |
    |      // Bad interface
  > |      if(!upgradeAgent.isUpgradeAgent()) throw;
    |      // Make sure that token supplies match in source and target
    |      if (upgradeAgent.originalSupply() != totalSupply) throw;
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1152)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CrowdsaleTokenExt':
    |      if(!upgradeAgent.isUpgradeAgent()) throw;
    |      // Make sure that token supplies match in source and target
  > |      if (upgradeAgent.originalSupply() != totalSupply) throw;
    |
    |      UpgradeAgentSet(upgradeAgent);
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1154)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CrowdsaleTokenExt':
    |
    |    ERC20 token = ERC20(_token);
  > |    uint balance = token.balanceOf(this);
    |    token.transfer(owner, balance);
    |
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1542)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CrowdsaleTokenExt':
    |    ERC20 token = ERC20(_token);
    |    uint balance = token.balanceOf(this);
  > |    token.transfer(owner, balance);
    |
    |    ClaimedTokens(_token, owner, balance);
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1543)

[31mViolation[0m for UnrestrictedWrite in contract 'CrowdsaleTokenExt':
    |  function finalizeReservedAddress(address addr) public onlyMintAgent canMint {
    |    ReservedTokensData storage reservedTokensData = reservedTokensList[addr];
  > |    reservedTokensData.isDistributed = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1350)

[31mViolation[0m for UnrestrictedWrite in contract 'CrowdsaleTokenExt':
    |      }
    |    }
  > |    reservedTokensDestinationsAreSet = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1388)

[31mViolation[0m for UnrestrictedWrite in contract 'CrowdsaleTokenExt':
    |   */
    |  function mint(address receiver, uint amount) onlyMintAgent canMint public {
  > |    totalSupply = totalSupply.plus(amount);
    |    balances[receiver] = balances[receiver].plus(amount);
    |
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1397)

[31mViolation[0m for UnrestrictedWrite in contract 'CrowdsaleTokenExt':
    |  function mint(address receiver, uint amount) onlyMintAgent canMint public {
    |    totalSupply = totalSupply.plus(amount);
  > |    balances[receiver] = balances[receiver].plus(amount);
    |
    |    // This will make the mint transaction apper in EtherScan.io
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1398)

[31mViolation[0m for UnrestrictedWrite in contract 'CrowdsaleTokenExt':
    | *
    | */
  > |contract CrowdsaleTokenExt is ReleasableToken, MintableTokenExt, UpgradeableToken {
    |
    |  /** Name and symbol were updated. */
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1442)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleTokenExt':
    |
    |  function transfer(address _to, uint _value) returns (bool success) {
  > |    balances[msg.sender] = safeSub(balances[msg.sender], _value);
    |    balances[_to] = safeAdd(balances[_to], _value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(987)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleTokenExt':
    |  function transfer(address _to, uint _value) returns (bool success) {
    |    balances[msg.sender] = safeSub(balances[msg.sender], _value);
  > |    balances[_to] = safeAdd(balances[_to], _value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(988)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleTokenExt':
    |    uint _allowance = allowed[_from][msg.sender];
    |
  > |    balances[_to] = safeAdd(balances[_to], _value);
    |    balances[_from] = safeSub(balances[_from], _value);
    |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(996)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleTokenExt':
    |
    |    balances[_to] = safeAdd(balances[_to], _value);
  > |    balances[_from] = safeSub(balances[_from], _value);
    |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(997)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleTokenExt':
    |    balances[_to] = safeAdd(balances[_to], _value);
    |    balances[_from] = safeSub(balances[_from], _value);
  > |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(998)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleTokenExt':
    |    if ((_value != 0) && (allowed[msg.sender][_spender] != 0)) throw;
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1015)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleTokenExt':
    |      if (value == 0) throw;
    |
  > |      balances[msg.sender] = safeSub(balances[msg.sender], value);
    |
    |      // Take tokens out from circulation
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1122)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleTokenExt':
    |
    |      // Take tokens out from circulation
  > |      totalSupply = safeSub(totalSupply, value);
    |      totalUpgraded = safeAdd(totalUpgraded, value);
    |
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1125)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleTokenExt':
    |      // Take tokens out from circulation
    |      totalSupply = safeSub(totalSupply, value);
  > |      totalUpgraded = safeAdd(totalUpgraded, value);
    |
    |      // Upgrade agent reissues the tokens
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1126)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleTokenExt':
  > |// Created using Token Wizard https://github.com/poanetwork/token-wizard by POA Network 
    |pragma solidity ^0.4.11;
    |
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleTokenExt':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(151)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleTokenExt':
    |      if (getUpgradeState() == UpgradeState.Upgrading) throw;
    |
  > |      upgradeAgent = UpgradeAgent(agent);
    |
    |      // Bad interface
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1149)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleTokenExt':
    |      if (master == 0x0) throw;
    |      if (msg.sender != upgradeMaster) throw;
  > |      upgradeMaster = master;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1177)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleTokenExt':
    |
    |    // We don't do interface check here as we might want to a normal wallet address to act as a release agent
  > |    releaseAgent = addr;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1238)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleTokenExt':
    |   */
    |  function setTransferAgent(address addr, bool state) onlyOwner inReleaseState(false) public {
  > |    transferAgents[addr] = state;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1245)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleTokenExt':
    |   */
    |  function releaseTokenTransfer() public onlyReleaseAgent {
  > |    released = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1254)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleTokenExt':
    |   */
    |  function setMintAgent(address addr, bool state) onlyOwner canMint public {
  > |    mintAgents[addr] = state;
    |    MintingAgentChanged(addr, state);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1409)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleTokenExt':
    |    assert(addr != address(0));
    |    if (!isAddressReserved(addr)) {
  > |      reservedTokensDestinations.push(addr);
    |      reservedTokensDestinationsLen++;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1416)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleTokenExt':
    |    if (!isAddressReserved(addr)) {
    |      reservedTokensDestinations.push(addr);
  > |      reservedTokensDestinationsLen++;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1417)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleTokenExt':
    |    }
    |
  > |    reservedTokensList[addr] = ReservedTokensData({
    |      inTokens: inTokens, 
    |      inPercentageUnit: inPercentageUnit, 
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1420)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleTokenExt':
    | *
    | */
  > |contract CrowdsaleTokenExt is ReleasableToken, MintableTokenExt, UpgradeableToken {
    |
    |  /** Name and symbol were updated. */
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1442)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleTokenExt':
    |   */
    |  function releaseTokenTransfer() public onlyReleaseAgent {
  > |    mintingFinished = true;
    |    super.releaseTokenTransfer();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1506)

[33mWarning[0m for LockedEther in contract 'Haltable':
    | * Originally envisioned in FirstBlood ICO contract.
    | */
  > |contract Haltable is Ownable {
    |  bool public halted;
    |
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(186)

[33mWarning[0m for MissingInputValidation in contract 'Haltable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(120)

[33mWarning[0m for MissingInputValidation in contract 'Haltable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(148)

[33mWarning[0m for MissingInputValidation in contract 'Haltable':
    | */
    |contract Haltable is Ownable {
  > |  bool public halted;
    |
    |  modifier stopInEmergency {
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(187)

[33mWarning[0m for MissingInputValidation in contract 'Haltable':
    |
    |  // called by the owner on emergency, triggers stopped state
  > |  function halt() external onlyOwner {
    |    halted = true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(205)

[33mWarning[0m for MissingInputValidation in contract 'Haltable':
    |
    |  // called by the owner on end of emergency, returns to normal state
  > |  function unhalt() external onlyOwner onlyInEmergency {
    |    halted = false;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(210)

[33mWarning[0m for UnrestrictedWrite in contract 'Haltable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(151)

[33mWarning[0m for UnrestrictedWrite in contract 'Haltable':
    |  // called by the owner on emergency, triggers stopped state
    |  function halt() external onlyOwner {
  > |    halted = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(206)

[33mWarning[0m for UnrestrictedWrite in contract 'Haltable':
    |  // called by the owner on end of emergency, returns to normal state
    |  function unhalt() external onlyOwner onlyInEmergency {
  > |    halted = false;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(211)

[33mWarning[0m for LockedEther in contract 'MintableTokenExt':
    | *
    | */
  > |contract MintableTokenExt is StandardToken, Ownable {
    |
    |  using SafeMathLibExt for uint;
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1305)

[31mViolation[0m for MissingInputValidation in contract 'MintableTokenExt':
    |  }
    |
  > |  function transferFrom(address _from, address _to, uint _value) returns (bool success) {
    |    uint _allowance = allowed[_from][msg.sender];
    |
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(993)

[31mViolation[0m for MissingInputValidation in contract 'MintableTokenExt':
    |  }
    |
  > |  function balanceOf(address _owner) constant returns (uint balance) {
    |    return balances[_owner];
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1003)

[31mViolation[0m for MissingInputValidation in contract 'MintableTokenExt':
    |  }
    |
  > |  function allowance(address _owner, address _spender) constant returns (uint remaining) {
    |    return allowed[_owner][_spender];
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1020)

[31mViolation[0m for MissingInputValidation in contract 'MintableTokenExt':
    |
    |  /** List of agents that are allowed to create new tokens */
  > |  mapping (address => bool) public mintAgents;
    |
    |  event MintingAgentChanged(address addr, bool state  );
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1312)

[31mViolation[0m for MissingInputValidation in contract 'MintableTokenExt':
    |  }
    |
  > |  mapping (address => ReservedTokensData) public reservedTokensList;
    |  address[] public reservedTokensDestinations;
    |  uint public reservedTokensDestinationsLen = 0;
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1329)

[31mViolation[0m for MissingInputValidation in contract 'MintableTokenExt':
    |  }
    |
  > |  function finalizeReservedAddress(address addr) public onlyMintAgent canMint {
    |    ReservedTokensData storage reservedTokensData = reservedTokensList[addr];
    |    reservedTokensData.isDistributed = true;
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1348)

[31mViolation[0m for MissingInputValidation in contract 'MintableTokenExt':
    |  }
    |
  > |  function isAddressReserved(address addr) public constant returns (bool isReserved) {
    |    return reservedTokensList[addr].isReserved;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1353)

[31mViolation[0m for MissingInputValidation in contract 'MintableTokenExt':
    |  }
    |
  > |  function areTokensDistributedForAddress(address addr) public constant returns (bool isDistributed) {
    |    return reservedTokensList[addr].isDistributed;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1357)

[31mViolation[0m for MissingInputValidation in contract 'MintableTokenExt':
    |  }
    |
  > |  function getReservedTokens(address addr) public constant returns (uint inTokens) {
    |    return reservedTokensList[addr].inTokens;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1361)

[31mViolation[0m for MissingInputValidation in contract 'MintableTokenExt':
    |  }
    |
  > |  function getReservedPercentageUnit(address addr) public constant returns (uint inPercentageUnit) {
    |    return reservedTokensList[addr].inPercentageUnit;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1365)

[31mViolation[0m for MissingInputValidation in contract 'MintableTokenExt':
    |  }
    |
  > |  function getReservedPercentageDecimals(address addr) public constant returns (uint inPercentageDecimals) {
    |    return reservedTokensList[addr].inPercentageDecimals;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1369)

[31mViolation[0m for MissingInputValidation in contract 'MintableTokenExt':
    |  }
    |
  > |  function setReservedTokensListMultiple(
    |    address[] addrs, 
    |    uint[] inTokens, 
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1373)

[31mViolation[0m for MissingInputValidation in contract 'MintableTokenExt':
    |   * Only callably by a crowdsale contract (mint agent).
    |   */
  > |  function mint(address receiver, uint amount) onlyMintAgent canMint public {
    |    totalSupply = totalSupply.plus(amount);
    |    balances[receiver] = balances[receiver].plus(amount);
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1396)

[31mViolation[0m for MissingInputValidation in contract 'MintableTokenExt':
    |   * Owner can allow a crowdsale contract to mint new tokens.
    |   */
  > |  function setMintAgent(address addr, bool state) onlyOwner canMint public {
    |    mintAgents[addr] = state;
    |    MintingAgentChanged(addr, state);
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1408)

[33mWarning[0m for MissingInputValidation in contract 'MintableTokenExt':
    | */
    |contract ERC20Basic {
  > |  uint256 public totalSupply;
    |  function balanceOf(address who) public constant returns (uint256);
    |  function transfer(address to, uint256 value) public returns (bool);
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'MintableTokenExt':
    |  }
    |
  > |  function safeSub(uint a, uint b) internal returns (uint) {
    |    assert(b <= a);
    |    return a - b;
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(83)

[33mWarning[0m for MissingInputValidation in contract 'MintableTokenExt':
    |  }
    |
  > |  function safeAdd(uint a, uint b) internal returns (uint) {
    |    uint c = a + b;
    |    assert(c>=a && c>=b);
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(88)

[33mWarning[0m for MissingInputValidation in contract 'MintableTokenExt':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(120)

[33mWarning[0m for MissingInputValidation in contract 'MintableTokenExt':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(148)

[33mWarning[0m for MissingInputValidation in contract 'MintableTokenExt':
    |
    |  /* Interface declaration */
  > |  function isToken() public constant returns (bool weAre) {
    |    return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(982)

[33mWarning[0m for MissingInputValidation in contract 'MintableTokenExt':
    |  using SafeMathLibExt for uint;
    |
  > |  bool public mintingFinished = false;
    |
    |  /** List of agents that are allowed to create new tokens */
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1309)

[33mWarning[0m for MissingInputValidation in contract 'MintableTokenExt':
    |
    |  mapping (address => ReservedTokensData) public reservedTokensList;
  > |  address[] public reservedTokensDestinations;
    |  uint public reservedTokensDestinationsLen = 0;
    |  bool reservedTokensDestinationsAreSet = false;
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1330)

[33mWarning[0m for MissingInputValidation in contract 'MintableTokenExt':
    |  mapping (address => ReservedTokensData) public reservedTokensList;
    |  address[] public reservedTokensDestinations;
  > |  uint public reservedTokensDestinationsLen = 0;
    |  bool reservedTokensDestinationsAreSet = false;
    |
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1331)

[33mWarning[0m for MissingInputValidation in contract 'MintableTokenExt':
    |  }
    |
  > |  function setReservedTokensList(address addr, uint inTokens, uint inPercentageUnit, uint inPercentageDecimals) private canMint onlyOwner {
    |    assert(addr != address(0));
    |    if (!isAddressReserved(addr)) {
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1413)

[31mViolation[0m for UnrestrictedWrite in contract 'MintableTokenExt':
  > |// Created using Token Wizard https://github.com/poanetwork/token-wizard by POA Network 
    |pragma solidity ^0.4.11;
    |
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1)

[31mViolation[0m for UnrestrictedWrite in contract 'MintableTokenExt':
    |
    |  function transfer(address _to, uint _value) returns (bool success) {
  > |    balances[msg.sender] = safeSub(balances[msg.sender], _value);
    |    balances[_to] = safeAdd(balances[_to], _value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(987)

[31mViolation[0m for UnrestrictedWrite in contract 'MintableTokenExt':
    |  function transfer(address _to, uint _value) returns (bool success) {
    |    balances[msg.sender] = safeSub(balances[msg.sender], _value);
  > |    balances[_to] = safeAdd(balances[_to], _value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(988)

[31mViolation[0m for UnrestrictedWrite in contract 'MintableTokenExt':
    |    uint _allowance = allowed[_from][msg.sender];
    |
  > |    balances[_to] = safeAdd(balances[_to], _value);
    |    balances[_from] = safeSub(balances[_from], _value);
    |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(996)

[31mViolation[0m for UnrestrictedWrite in contract 'MintableTokenExt':
    |
    |    balances[_to] = safeAdd(balances[_to], _value);
  > |    balances[_from] = safeSub(balances[_from], _value);
    |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(997)

[31mViolation[0m for UnrestrictedWrite in contract 'MintableTokenExt':
    |    balances[_to] = safeAdd(balances[_to], _value);
    |    balances[_from] = safeSub(balances[_from], _value);
  > |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(998)

[31mViolation[0m for UnrestrictedWrite in contract 'MintableTokenExt':
    |  function finalizeReservedAddress(address addr) public onlyMintAgent canMint {
    |    ReservedTokensData storage reservedTokensData = reservedTokensList[addr];
  > |    reservedTokensData.isDistributed = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1350)

[31mViolation[0m for UnrestrictedWrite in contract 'MintableTokenExt':
    |      }
    |    }
  > |    reservedTokensDestinationsAreSet = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1388)

[31mViolation[0m for UnrestrictedWrite in contract 'MintableTokenExt':
    |   */
    |  function mint(address receiver, uint amount) onlyMintAgent canMint public {
  > |    totalSupply = totalSupply.plus(amount);
    |    balances[receiver] = balances[receiver].plus(amount);
    |
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1397)

[31mViolation[0m for UnrestrictedWrite in contract 'MintableTokenExt':
    |  function mint(address receiver, uint amount) onlyMintAgent canMint public {
    |    totalSupply = totalSupply.plus(amount);
  > |    balances[receiver] = balances[receiver].plus(amount);
    |
    |    // This will make the mint transaction apper in EtherScan.io
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1398)

[31mViolation[0m for UnrestrictedWrite in contract 'MintableTokenExt':
    |    assert(addr != address(0));
    |    if (!isAddressReserved(addr)) {
  > |      reservedTokensDestinations.push(addr);
    |      reservedTokensDestinationsLen++;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1416)

[31mViolation[0m for UnrestrictedWrite in contract 'MintableTokenExt':
    |    if (!isAddressReserved(addr)) {
    |      reservedTokensDestinations.push(addr);
  > |      reservedTokensDestinationsLen++;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1417)

[31mViolation[0m for UnrestrictedWrite in contract 'MintableTokenExt':
    |    }
    |
  > |    reservedTokensList[addr] = ReservedTokensData({
    |      inTokens: inTokens, 
    |      inPercentageUnit: inPercentageUnit, 
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1420)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableTokenExt':
    |    if ((_value != 0) && (allowed[msg.sender][_spender] != 0)) throw;
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1015)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableTokenExt':
  > |// Created using Token Wizard https://github.com/poanetwork/token-wizard by POA Network 
    |pragma solidity ^0.4.11;
    |
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableTokenExt':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(151)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableTokenExt':
    |   */
    |  function setMintAgent(address addr, bool state) onlyOwner canMint public {
  > |    mintAgents[addr] = state;
    |    MintingAgentChanged(addr, state);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1409)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableTokenExt':
    |    assert(addr != address(0));
    |    if (!isAddressReserved(addr)) {
  > |      reservedTokensDestinations.push(addr);
    |      reservedTokensDestinationsLen++;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1416)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableTokenExt':
    |    if (!isAddressReserved(addr)) {
    |      reservedTokensDestinations.push(addr);
  > |      reservedTokensDestinationsLen++;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1417)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableTokenExt':
    |    }
    |
  > |    reservedTokensList[addr] = ReservedTokensData({
    |      inTokens: inTokens, 
    |      inPercentageUnit: inPercentageUnit, 
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1420)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(119)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(120)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(148)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(151)

[33mWarning[0m for LockedEther in contract 'ReservedTokensFinalizeAgent':
    | * Unlock tokens.
    | */
  > |contract ReservedTokensFinalizeAgent is FinalizeAgent {
    |  using SafeMathLibExt for uint;
    |  CrowdsaleTokenExt public token;
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1556)

[33mWarning[0m for MissingInputValidation in contract 'ReservedTokensFinalizeAgent':
    |contract FinalizeAgent {
    |
  > |  bool public reservedTokensAreDistributed = false;
    |
    |  function isFinalizeAgent() public constant returns(bool) {
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(287)

[33mWarning[0m for MissingInputValidation in contract 'ReservedTokensFinalizeAgent':
    |  bool public reservedTokensAreDistributed = false;
    |
  > |  function isFinalizeAgent() public constant returns(bool) {
    |    return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(289)

[33mWarning[0m for MissingInputValidation in contract 'ReservedTokensFinalizeAgent':
    |contract ReservedTokensFinalizeAgent is FinalizeAgent {
    |  using SafeMathLibExt for uint;
  > |  CrowdsaleTokenExt public token;
    |  CrowdsaleExt public crowdsale;
    |
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1558)

[33mWarning[0m for MissingInputValidation in contract 'ReservedTokensFinalizeAgent':
    |  using SafeMathLibExt for uint;
    |  CrowdsaleTokenExt public token;
  > |  CrowdsaleExt public crowdsale;
    |
    |  uint public distributedReservedTokensDestinationsLen = 0;
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1559)

[33mWarning[0m for MissingInputValidation in contract 'ReservedTokensFinalizeAgent':
    |  CrowdsaleExt public crowdsale;
    |
  > |  uint public distributedReservedTokensDestinationsLen = 0;
    |
    |  function ReservedTokensFinalizeAgent(CrowdsaleTokenExt _token, CrowdsaleExt _crowdsale) public {
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1561)

[33mWarning[0m for MissingInputValidation in contract 'ReservedTokensFinalizeAgent':
    |
    |  /** Check that we can release the token */
  > |  function isSane() public constant returns (bool) {
    |    return (token.releaseAgent() == address(this));
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1569)

[33mWarning[0m for MissingInputValidation in contract 'ReservedTokensFinalizeAgent':
    |
    |  /** Called once by crowdsale finalize() if the sale was success. */
  > |  function finalizeCrowdsale() public {
    |    assert(msg.sender == address(crowdsale));
    |
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1625)

[33mWarning[0m for UnhandledException in contract 'ReservedTokensFinalizeAgent':
    |  /** Check that we can release the token */
    |  function isSane() public constant returns (bool) {
  > |    return (token.releaseAgent() == address(this));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1570)

[33mWarning[0m for UnhandledException in contract 'ReservedTokensFinalizeAgent':
    |    assert(reservedTokensDistributionBatch > 0);
    |    assert(!reservedTokensAreDistributed);
  > |    assert(distributedReservedTokensDestinationsLen < token.reservedTokensDestinationsLen());
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1579)

[33mWarning[0m for UnhandledException in contract 'ReservedTokensFinalizeAgent':
    |    // How many % of tokens the founders and others get
    |    uint tokensSold = 0;
  > |    for (uint8 i = 0; i < crowdsale.joinedCrowdsalesLen(); i++) {
    |      CrowdsaleExt tier = CrowdsaleExt(crowdsale.joinedCrowdsales(i));
    |      tokensSold = tokensSold.plus(tier.tokensSold());
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1584)

[33mWarning[0m for UnhandledException in contract 'ReservedTokensFinalizeAgent':
    |    uint tokensSold = 0;
    |    for (uint8 i = 0; i < crowdsale.joinedCrowdsalesLen(); i++) {
  > |      CrowdsaleExt tier = CrowdsaleExt(crowdsale.joinedCrowdsales(i));
    |      tokensSold = tokensSold.plus(tier.tokensSold());
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1585)

[33mWarning[0m for UnhandledException in contract 'ReservedTokensFinalizeAgent':
    |    for (uint8 i = 0; i < crowdsale.joinedCrowdsalesLen(); i++) {
    |      CrowdsaleExt tier = CrowdsaleExt(crowdsale.joinedCrowdsales(i));
  > |      tokensSold = tokensSold.plus(tier.tokensSold());
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1586)

[33mWarning[0m for UnhandledException in contract 'ReservedTokensFinalizeAgent':
    |
    |    uint startLooping = distributedReservedTokensDestinationsLen;
  > |    uint batch = token.reservedTokensDestinationsLen().minus(distributedReservedTokensDestinationsLen);
    |    if (batch >= reservedTokensDistributionBatch) {
    |      batch = reservedTokensDistributionBatch;
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1590)

[33mWarning[0m for UnhandledException in contract 'ReservedTokensFinalizeAgent':
    |    // move reserved tokens
    |    for (uint j = startLooping; j < endLooping; j++) {
  > |      address reservedAddr = token.reservedTokensDestinations(j);
    |      if (!token.areTokensDistributedForAddress(reservedAddr)) {
    |        uint allocatedBonusInPercentage;
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1598)

[33mWarning[0m for UnhandledException in contract 'ReservedTokensFinalizeAgent':
    |    for (uint j = startLooping; j < endLooping; j++) {
    |      address reservedAddr = token.reservedTokensDestinations(j);
  > |      if (!token.areTokensDistributedForAddress(reservedAddr)) {
    |        uint allocatedBonusInPercentage;
    |        uint allocatedBonusInTokens = token.getReservedTokens(reservedAddr);
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1599)

[33mWarning[0m for UnhandledException in contract 'ReservedTokensFinalizeAgent':
    |      if (!token.areTokensDistributedForAddress(reservedAddr)) {
    |        uint allocatedBonusInPercentage;
  > |        uint allocatedBonusInTokens = token.getReservedTokens(reservedAddr);
    |        uint percentsOfTokensUnit = token.getReservedPercentageUnit(reservedAddr);
    |        uint percentsOfTokensDecimals = token.getReservedPercentageDecimals(reservedAddr);
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1601)

[33mWarning[0m for UnhandledException in contract 'ReservedTokensFinalizeAgent':
    |        uint allocatedBonusInPercentage;
    |        uint allocatedBonusInTokens = token.getReservedTokens(reservedAddr);
  > |        uint percentsOfTokensUnit = token.getReservedPercentageUnit(reservedAddr);
    |        uint percentsOfTokensDecimals = token.getReservedPercentageDecimals(reservedAddr);
    |
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1602)

[33mWarning[0m for UnhandledException in contract 'ReservedTokensFinalizeAgent':
    |        uint allocatedBonusInTokens = token.getReservedTokens(reservedAddr);
    |        uint percentsOfTokensUnit = token.getReservedPercentageUnit(reservedAddr);
  > |        uint percentsOfTokensDecimals = token.getReservedPercentageDecimals(reservedAddr);
    |
    |        if (percentsOfTokensUnit > 0) {
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1603)

[33mWarning[0m for UnhandledException in contract 'ReservedTokensFinalizeAgent':
    |        if (percentsOfTokensUnit > 0) {
    |          allocatedBonusInPercentage = tokensSold * percentsOfTokensUnit / 10**percentsOfTokensDecimals / 100;
  > |          token.mint(reservedAddr, allocatedBonusInPercentage);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1607)

[33mWarning[0m for UnhandledException in contract 'ReservedTokensFinalizeAgent':
    |
    |        if (allocatedBonusInTokens > 0) {
  > |          token.mint(reservedAddr, allocatedBonusInTokens);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1611)

[33mWarning[0m for UnhandledException in contract 'ReservedTokensFinalizeAgent':
    |        }
    |
  > |        token.finalizeReservedAddress(reservedAddr);
    |        distributedReservedTokensDestinationsLen++;
    |      }
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1614)

[33mWarning[0m for UnhandledException in contract 'ReservedTokensFinalizeAgent':
    |    }
    |
  > |    if (distributedReservedTokensDestinationsLen == token.reservedTokensDestinationsLen()) {
    |      reservedTokensAreDistributed = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1619)

[33mWarning[0m for UnhandledException in contract 'ReservedTokensFinalizeAgent':
    |    assert(msg.sender == address(crowdsale));
    |
  > |    if (token.reservedTokensDestinationsLen() > 0) {
    |      assert(reservedTokensAreDistributed);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1628)

[33mWarning[0m for UnhandledException in contract 'ReservedTokensFinalizeAgent':
    |    }
    |
  > |    token.releaseTokenTransfer();
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1632)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ReservedTokensFinalizeAgent':
    |  /** Check that we can release the token */
    |  function isSane() public constant returns (bool) {
  > |    return (token.releaseAgent() == address(this));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1570)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ReservedTokensFinalizeAgent':
    |    assert(reservedTokensDistributionBatch > 0);
    |    assert(!reservedTokensAreDistributed);
  > |    assert(distributedReservedTokensDestinationsLen < token.reservedTokensDestinationsLen());
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1579)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ReservedTokensFinalizeAgent':
    |    // How many % of tokens the founders and others get
    |    uint tokensSold = 0;
  > |    for (uint8 i = 0; i < crowdsale.joinedCrowdsalesLen(); i++) {
    |      CrowdsaleExt tier = CrowdsaleExt(crowdsale.joinedCrowdsales(i));
    |      tokensSold = tokensSold.plus(tier.tokensSold());
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1584)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ReservedTokensFinalizeAgent':
    |    uint tokensSold = 0;
    |    for (uint8 i = 0; i < crowdsale.joinedCrowdsalesLen(); i++) {
  > |      CrowdsaleExt tier = CrowdsaleExt(crowdsale.joinedCrowdsales(i));
    |      tokensSold = tokensSold.plus(tier.tokensSold());
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1585)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ReservedTokensFinalizeAgent':
    |    for (uint8 i = 0; i < crowdsale.joinedCrowdsalesLen(); i++) {
    |      CrowdsaleExt tier = CrowdsaleExt(crowdsale.joinedCrowdsales(i));
  > |      tokensSold = tokensSold.plus(tier.tokensSold());
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1586)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ReservedTokensFinalizeAgent':
    |
    |    uint startLooping = distributedReservedTokensDestinationsLen;
  > |    uint batch = token.reservedTokensDestinationsLen().minus(distributedReservedTokensDestinationsLen);
    |    if (batch >= reservedTokensDistributionBatch) {
    |      batch = reservedTokensDistributionBatch;
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1590)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ReservedTokensFinalizeAgent':
    |    // move reserved tokens
    |    for (uint j = startLooping; j < endLooping; j++) {
  > |      address reservedAddr = token.reservedTokensDestinations(j);
    |      if (!token.areTokensDistributedForAddress(reservedAddr)) {
    |        uint allocatedBonusInPercentage;
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1598)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ReservedTokensFinalizeAgent':
    |    for (uint j = startLooping; j < endLooping; j++) {
    |      address reservedAddr = token.reservedTokensDestinations(j);
  > |      if (!token.areTokensDistributedForAddress(reservedAddr)) {
    |        uint allocatedBonusInPercentage;
    |        uint allocatedBonusInTokens = token.getReservedTokens(reservedAddr);
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1599)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ReservedTokensFinalizeAgent':
    |      if (!token.areTokensDistributedForAddress(reservedAddr)) {
    |        uint allocatedBonusInPercentage;
  > |        uint allocatedBonusInTokens = token.getReservedTokens(reservedAddr);
    |        uint percentsOfTokensUnit = token.getReservedPercentageUnit(reservedAddr);
    |        uint percentsOfTokensDecimals = token.getReservedPercentageDecimals(reservedAddr);
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1601)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ReservedTokensFinalizeAgent':
    |        uint allocatedBonusInPercentage;
    |        uint allocatedBonusInTokens = token.getReservedTokens(reservedAddr);
  > |        uint percentsOfTokensUnit = token.getReservedPercentageUnit(reservedAddr);
    |        uint percentsOfTokensDecimals = token.getReservedPercentageDecimals(reservedAddr);
    |
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1602)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ReservedTokensFinalizeAgent':
    |        uint allocatedBonusInTokens = token.getReservedTokens(reservedAddr);
    |        uint percentsOfTokensUnit = token.getReservedPercentageUnit(reservedAddr);
  > |        uint percentsOfTokensDecimals = token.getReservedPercentageDecimals(reservedAddr);
    |
    |        if (percentsOfTokensUnit > 0) {
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1603)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ReservedTokensFinalizeAgent':
    |        if (percentsOfTokensUnit > 0) {
    |          allocatedBonusInPercentage = tokensSold * percentsOfTokensUnit / 10**percentsOfTokensDecimals / 100;
  > |          token.mint(reservedAddr, allocatedBonusInPercentage);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1607)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ReservedTokensFinalizeAgent':
    |
    |        if (allocatedBonusInTokens > 0) {
  > |          token.mint(reservedAddr, allocatedBonusInTokens);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1611)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ReservedTokensFinalizeAgent':
    |        }
    |
  > |        token.finalizeReservedAddress(reservedAddr);
    |        distributedReservedTokensDestinationsLen++;
    |      }
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1614)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ReservedTokensFinalizeAgent':
    |    }
    |
  > |    if (distributedReservedTokensDestinationsLen == token.reservedTokensDestinationsLen()) {
    |      reservedTokensAreDistributed = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1619)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ReservedTokensFinalizeAgent':
    |    assert(msg.sender == address(crowdsale));
    |
  > |    if (token.reservedTokensDestinationsLen() > 0) {
    |      assert(reservedTokensAreDistributed);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1628)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ReservedTokensFinalizeAgent':
    |    }
    |
  > |    token.releaseTokenTransfer();
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1632)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * Math operations with safety checks
    | */
  > |contract SafeMath {
    |  function safeMul(uint a, uint b) internal returns (uint) {
    |    uint c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(69)

[33mWarning[0m for LockedEther in contract 'SafeMathLibExt':
    | *
    | */
  > |library SafeMathLibExt {
    |
    |  function times(uint a, uint b) returns (uint) {
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(34)

[33mWarning[0m for MissingInputValidation in contract 'SafeMathLibExt':
    |library SafeMathLibExt {
    |
  > |  function times(uint a, uint b) returns (uint) {
    |    uint c = a * b;
    |    assert(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(36)

[33mWarning[0m for MissingInputValidation in contract 'SafeMathLibExt':
    |  }
    |
  > |  function divides(uint a, uint b) returns (uint) {
    |    assert(b > 0);
    |    uint c = a / b;
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(42)

[33mWarning[0m for MissingInputValidation in contract 'SafeMathLibExt':
    |  }
    |
  > |  function minus(uint a, uint b) returns (uint) {
    |    assert(b <= a);
    |    return a - b;
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(49)

[33mWarning[0m for MissingInputValidation in contract 'SafeMathLibExt':
    |  }
    |
  > |  function plus(uint a, uint b) returns (uint) {
    |    uint c = a + b;
    |    assert(c>=a);
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(54)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, SafeMath {
    |
    |  /* Token supply got increased and a new owner received these tokens */
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(970)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |  }
    |
  > |  function transferFrom(address _from, address _to, uint _value) returns (bool success) {
    |    uint _allowance = allowed[_from][msg.sender];
    |
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(993)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |  }
    |
  > |  function balanceOf(address _owner) constant returns (uint balance) {
    |    return balances[_owner];
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1003)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |  }
    |
  > |  function allowance(address _owner, address _spender) constant returns (uint remaining) {
    |    return allowed[_owner][_spender];
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1020)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    | */
    |contract ERC20Basic {
  > |  uint256 public totalSupply;
    |  function balanceOf(address who) public constant returns (uint256);
    |  function transfer(address to, uint256 value) public returns (bool);
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |  }
    |
  > |  function safeSub(uint a, uint b) internal returns (uint) {
    |    assert(b <= a);
    |    return a - b;
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(83)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |  }
    |
  > |  function safeAdd(uint a, uint b) internal returns (uint) {
    |    uint c = a + b;
    |    assert(c>=a && c>=b);
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(88)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |
    |  /* Interface declaration */
  > |  function isToken() public constant returns (bool weAre) {
    |    return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(982)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |  function transfer(address _to, uint _value) returns (bool success) {
  > |    balances[msg.sender] = safeSub(balances[msg.sender], _value);
    |    balances[_to] = safeAdd(balances[_to], _value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(987)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |  function transfer(address _to, uint _value) returns (bool success) {
    |    balances[msg.sender] = safeSub(balances[msg.sender], _value);
  > |    balances[_to] = safeAdd(balances[_to], _value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(988)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint _allowance = allowed[_from][msg.sender];
    |
  > |    balances[_to] = safeAdd(balances[_to], _value);
    |    balances[_from] = safeSub(balances[_from], _value);
    |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(996)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    balances[_to] = safeAdd(balances[_to], _value);
  > |    balances[_from] = safeSub(balances[_from], _value);
    |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(997)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_to] = safeAdd(balances[_to], _value);
    |    balances[_from] = safeSub(balances[_from], _value);
  > |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(998)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    if ((_value != 0) && (allowed[msg.sender][_spender] != 0)) throw;
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1015)

[33mWarning[0m for DAO in contract 'UpgradeableToken':
    |
    |      // Upgrade agent reissues the tokens
  > |      upgradeAgent.upgradeFrom(msg.sender, value);
    |      Upgrade(msg.sender, upgradeAgent, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1129)

[33mWarning[0m for DAO in contract 'UpgradeableToken':
    |
    |      // Bad interface
  > |      if(!upgradeAgent.isUpgradeAgent()) throw;
    |      // Make sure that token supplies match in source and target
    |      if (upgradeAgent.originalSupply() != totalSupply) throw;
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1152)

[33mWarning[0m for DAO in contract 'UpgradeableToken':
    |      if(!upgradeAgent.isUpgradeAgent()) throw;
    |      // Make sure that token supplies match in source and target
  > |      if (upgradeAgent.originalSupply() != totalSupply) throw;
    |
    |      UpgradeAgentSet(upgradeAgent);
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1154)

[33mWarning[0m for LockedEther in contract 'UpgradeableToken':
    | * First envisioned by Golem and Lunyr projects.
    | */
  > |contract UpgradeableToken is StandardToken {
    |
    |  /** Contract / person who can set the upgrade path. This can be the same as team multisig wallet, as what it is with its default value. */
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1069)

[31mViolation[0m for MissingInputValidation in contract 'UpgradeableToken':
    |  }
    |
  > |  function transferFrom(address _from, address _to, uint _value) returns (bool success) {
    |    uint _allowance = allowed[_from][msg.sender];
    |
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(993)

[31mViolation[0m for MissingInputValidation in contract 'UpgradeableToken':
    |  }
    |
  > |  function balanceOf(address _owner) constant returns (uint balance) {
    |    return balances[_owner];
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1003)

[31mViolation[0m for MissingInputValidation in contract 'UpgradeableToken':
    |  }
    |
  > |  function allowance(address _owner, address _spender) constant returns (uint remaining) {
    |    return allowed[_owner][_spender];
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1020)

[33mWarning[0m for MissingInputValidation in contract 'UpgradeableToken':
    | */
    |contract ERC20Basic {
  > |  uint256 public totalSupply;
    |  function balanceOf(address who) public constant returns (uint256);
    |  function transfer(address to, uint256 value) public returns (bool);
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'UpgradeableToken':
    |  }
    |
  > |  function safeSub(uint a, uint b) internal returns (uint) {
    |    assert(b <= a);
    |    return a - b;
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(83)

[33mWarning[0m for MissingInputValidation in contract 'UpgradeableToken':
    |  }
    |
  > |  function safeAdd(uint a, uint b) internal returns (uint) {
    |    uint c = a + b;
    |    assert(c>=a && c>=b);
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(88)

[33mWarning[0m for MissingInputValidation in contract 'UpgradeableToken':
    |
    |  /* Interface declaration */
  > |  function isToken() public constant returns (bool weAre) {
    |    return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(982)

[33mWarning[0m for MissingInputValidation in contract 'UpgradeableToken':
    |
    |  /** Contract / person who can set the upgrade path. This can be the same as team multisig wallet, as what it is with its default value. */
  > |  address public upgradeMaster;
    |
    |  /** The next contract where the tokens will be migrated. */
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1072)

[33mWarning[0m for MissingInputValidation in contract 'UpgradeableToken':
    |
    |  /** The next contract where the tokens will be migrated. */
  > |  UpgradeAgent public upgradeAgent;
    |
    |  /** How many tokens we have upgraded by now. */
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1075)

[33mWarning[0m for MissingInputValidation in contract 'UpgradeableToken':
    |
    |  /** How many tokens we have upgraded by now. */
  > |  uint256 public totalUpgraded;
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1078)

[33mWarning[0m for MissingInputValidation in contract 'UpgradeableToken':
    |   * Get the state of the token upgrade.
    |   */
  > |  function getUpgradeState() public constant returns(UpgradeState) {
    |    if(!canUpgrade()) return UpgradeState.NotAllowed;
    |    else if(address(upgradeAgent) == 0x00) return UpgradeState.WaitingForAgent;
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1162)

[33mWarning[0m for MissingInputValidation in contract 'UpgradeableToken':
    |   * This allows us to set a new owner for the upgrade mechanism.
    |   */
  > |  function setUpgradeMaster(address master) public {
    |      if (master == 0x0) throw;
    |      if (msg.sender != upgradeMaster) throw;
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1174)

[33mWarning[0m for MissingInputValidation in contract 'UpgradeableToken':
    |   * Child contract can enable to provide the condition when the upgrade can begun.
    |   */
  > |  function canUpgrade() public constant returns(bool) {
    |     return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1183)

[33mWarning[0m for UnhandledException in contract 'UpgradeableToken':
    |
    |      // Upgrade agent reissues the tokens
  > |      upgradeAgent.upgradeFrom(msg.sender, value);
    |      Upgrade(msg.sender, upgradeAgent, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1129)

[33mWarning[0m for UnhandledException in contract 'UpgradeableToken':
    |
    |      // Bad interface
  > |      if(!upgradeAgent.isUpgradeAgent()) throw;
    |      // Make sure that token supplies match in source and target
    |      if (upgradeAgent.originalSupply() != totalSupply) throw;
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1152)

[33mWarning[0m for UnhandledException in contract 'UpgradeableToken':
    |      if(!upgradeAgent.isUpgradeAgent()) throw;
    |      // Make sure that token supplies match in source and target
  > |      if (upgradeAgent.originalSupply() != totalSupply) throw;
    |
    |      UpgradeAgentSet(upgradeAgent);
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1154)

[31mViolation[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |
    |  function transfer(address _to, uint _value) returns (bool success) {
  > |    balances[msg.sender] = safeSub(balances[msg.sender], _value);
    |    balances[_to] = safeAdd(balances[_to], _value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(987)

[31mViolation[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |  function transfer(address _to, uint _value) returns (bool success) {
    |    balances[msg.sender] = safeSub(balances[msg.sender], _value);
  > |    balances[_to] = safeAdd(balances[_to], _value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(988)

[31mViolation[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |    uint _allowance = allowed[_from][msg.sender];
    |
  > |    balances[_to] = safeAdd(balances[_to], _value);
    |    balances[_from] = safeSub(balances[_from], _value);
    |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(996)

[31mViolation[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |
    |    balances[_to] = safeAdd(balances[_to], _value);
  > |    balances[_from] = safeSub(balances[_from], _value);
    |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(997)

[31mViolation[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |    balances[_to] = safeAdd(balances[_to], _value);
    |    balances[_from] = safeSub(balances[_from], _value);
  > |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(998)

[31mViolation[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |      if (value == 0) throw;
    |
  > |      balances[msg.sender] = safeSub(balances[msg.sender], value);
    |
    |      // Take tokens out from circulation
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1122)

[31mViolation[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |
    |      // Take tokens out from circulation
  > |      totalSupply = safeSub(totalSupply, value);
    |      totalUpgraded = safeAdd(totalUpgraded, value);
    |
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1125)

[31mViolation[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |      // Take tokens out from circulation
    |      totalSupply = safeSub(totalSupply, value);
  > |      totalUpgraded = safeAdd(totalUpgraded, value);
    |
    |      // Upgrade agent reissues the tokens
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1126)

[31mViolation[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |      if (getUpgradeState() == UpgradeState.Upgrading) throw;
    |
  > |      upgradeAgent = UpgradeAgent(agent);
    |
    |      // Bad interface
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1149)

[33mWarning[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |    if ((_value != 0) && (allowed[msg.sender][_spender] != 0)) throw;
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1015)

[33mWarning[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |      if (master == 0x0) throw;
    |      if (msg.sender != upgradeMaster) throw;
  > |      upgradeMaster = master;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4e2433107e121075138e89e588671f617a95ea98.sol(1177)


