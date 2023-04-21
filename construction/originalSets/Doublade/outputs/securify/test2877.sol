Processing contract: /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol:BurnableCrowdsaleToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol:BurnableToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol:CrowdsaleToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol:MintableToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol:ReleasableToken
Processing contract: /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol:SafeMathLib
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol:UpgradeAgent
Processing contract: /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol:UpgradeableToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for LockedEther in contract 'BurnableCrowdsaleToken':
    | *
    | */
  > |contract BurnableCrowdsaleToken is BurnableToken, CrowdsaleToken {
    |
    |  function BurnableCrowdsaleToken(string _name, string _symbol, uint _initialSupply, uint _decimals, bool _mintable)
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(698)

[33mWarning[0m for UnhandledException in contract 'BurnableCrowdsaleToken':
    |
    |      // Upgrade agent reissues the tokens
  > |      upgradeAgent.upgradeFrom(msg.sender, value);
    |      Upgrade(msg.sender, upgradeAgent, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(296)

[33mWarning[0m for UnhandledException in contract 'BurnableCrowdsaleToken':
    |
    |      // Bad interface
  > |      if(!upgradeAgent.isUpgradeAgent()) throw;
    |      // Make sure that token supplies match in source and target
    |      if (upgradeAgent.originalSupply() != totalSupply) throw;
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(319)

[33mWarning[0m for UnhandledException in contract 'BurnableCrowdsaleToken':
    |      if(!upgradeAgent.isUpgradeAgent()) throw;
    |      // Make sure that token supplies match in source and target
  > |      if (upgradeAgent.originalSupply() != totalSupply) throw;
    |
    |      UpgradeAgentSet(upgradeAgent);
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(321)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BurnableCrowdsaleToken':
    |
    |      // Upgrade agent reissues the tokens
  > |      upgradeAgent.upgradeFrom(msg.sender, value);
    |      Upgrade(msg.sender, upgradeAgent, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(296)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BurnableCrowdsaleToken':
    |
    |      // Bad interface
  > |      if(!upgradeAgent.isUpgradeAgent()) throw;
    |      // Make sure that token supplies match in source and target
    |      if (upgradeAgent.originalSupply() != totalSupply) throw;
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(319)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BurnableCrowdsaleToken':
    |      if(!upgradeAgent.isUpgradeAgent()) throw;
    |      // Make sure that token supplies match in source and target
  > |      if (upgradeAgent.originalSupply() != totalSupply) throw;
    |
    |      UpgradeAgentSet(upgradeAgent);
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(321)

[31mViolation[0m for UnrestrictedWrite in contract 'BurnableCrowdsaleToken':
    |   */
    |  function mint(address receiver, uint amount) onlyMintAgent canMint public {
  > |    totalSupply = totalSupply.plus(amount);
    |    balances[receiver] = balances[receiver].plus(amount);
    |
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(563)

[31mViolation[0m for UnrestrictedWrite in contract 'BurnableCrowdsaleToken':
    |  function mint(address receiver, uint amount) onlyMintAgent canMint public {
    |    totalSupply = totalSupply.plus(amount);
  > |    balances[receiver] = balances[receiver].plus(amount);
    |
    |    // This will make the mint transaction apper in EtherScan.io
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(564)

[31mViolation[0m for UnrestrictedWrite in contract 'BurnableCrowdsaleToken':
    | *
    | */
  > |contract BurnableCrowdsaleToken is BurnableToken, CrowdsaleToken {
    |
    |  function BurnableCrowdsaleToken(string _name, string _symbol, uint _initialSupply, uint _decimals, bool _mintable)
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(698)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableCrowdsaleToken':
    |
    |  function transfer(address _to, uint _value) returns (bool success) {
  > |    balances[msg.sender] = safeSub(balances[msg.sender], _value);
    |    balances[_to] = safeAdd(balances[_to], _value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(127)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableCrowdsaleToken':
    |  function transfer(address _to, uint _value) returns (bool success) {
    |    balances[msg.sender] = safeSub(balances[msg.sender], _value);
  > |    balances[_to] = safeAdd(balances[_to], _value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(128)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableCrowdsaleToken':
    |    uint _allowance = allowed[_from][msg.sender];
    |
  > |    balances[_to] = safeAdd(balances[_to], _value);
    |    balances[_from] = safeSub(balances[_from], _value);
    |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableCrowdsaleToken':
    |
    |    balances[_to] = safeAdd(balances[_to], _value);
  > |    balances[_from] = safeSub(balances[_from], _value);
    |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(137)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableCrowdsaleToken':
    |    balances[_to] = safeAdd(balances[_to], _value);
    |    balances[_from] = safeSub(balances[_from], _value);
  > |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(138)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableCrowdsaleToken':
    |    if ((_value != 0) && (allowed[msg.sender][_spender] != 0)) throw;
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(155)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableCrowdsaleToken':
    |  function burn(uint burnAmount) {
    |    address burner = msg.sender;
  > |    balances[burner] = safeSub(balances[burner], burnAmount);
    |    totalSupply = safeSub(totalSupply, burnAmount);
    |    Burned(burner, burnAmount);
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(181)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableCrowdsaleToken':
    |    address burner = msg.sender;
    |    balances[burner] = safeSub(balances[burner], burnAmount);
  > |    totalSupply = safeSub(totalSupply, burnAmount);
    |    Burned(burner, burnAmount);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(182)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableCrowdsaleToken':
    |      if (value == 0) throw;
    |
  > |      balances[msg.sender] = safeSub(balances[msg.sender], value);
    |
    |      // Take tokens out from circulation
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(289)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableCrowdsaleToken':
    |
    |      // Take tokens out from circulation
  > |      totalSupply = safeSub(totalSupply, value);
    |      totalUpgraded = safeAdd(totalUpgraded, value);
    |
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(292)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableCrowdsaleToken':
    |      // Take tokens out from circulation
    |      totalSupply = safeSub(totalSupply, value);
  > |      totalUpgraded = safeAdd(totalUpgraded, value);
    |
    |      // Upgrade agent reissues the tokens
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(293)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableCrowdsaleToken':
    |      if (getUpgradeState() == UpgradeState.Upgrading) throw;
    |
  > |      upgradeAgent = UpgradeAgent(agent);
    |
    |      // Bad interface
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(316)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableCrowdsaleToken':
    |      if (master == 0x0) throw;
    |      if (msg.sender != upgradeMaster) throw;
  > |      upgradeMaster = master;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(344)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableCrowdsaleToken':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));      
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(398)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableCrowdsaleToken':
    |
    |    // We don't do interface check here as we might want to a normal wallet address to act as a release agent
  > |    releaseAgent = addr;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(443)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableCrowdsaleToken':
    |   */
    |  function setTransferAgent(address addr, bool state) onlyOwner inReleaseState(false) public {
  > |    transferAgents[addr] = state;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(450)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableCrowdsaleToken':
    |   */
    |  function releaseTokenTransfer() public onlyReleaseAgent {
  > |    released = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(459)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableCrowdsaleToken':
    |   */
    |  function setMintAgent(address addr, bool state) onlyOwner canMint public {
  > |    mintAgents[addr] = state;
    |    MintingAgentChanged(addr, state);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(575)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableCrowdsaleToken':
    |   */
    |  function releaseTokenTransfer() public onlyReleaseAgent {
  > |    mintingFinished = true;
    |    super.releaseTokenTransfer();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(664)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableCrowdsaleToken':
    | *
    | */
  > |contract BurnableCrowdsaleToken is BurnableToken, CrowdsaleToken {
    |
    |  function BurnableCrowdsaleToken(string _name, string _symbol, uint _initialSupply, uint _decimals, bool _mintable)
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(698)

[33mWarning[0m for LockedEther in contract 'BurnableToken':
    |
    |
  > |contract BurnableToken is StandardToken {
    |
    |  address public constant BURN_ADDRESS = 0;
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(168)

[31mViolation[0m for MissingInputValidation in contract 'BurnableToken':
    |  }
    |
  > |  function transferFrom(address _from, address _to, uint _value) returns (bool success) {
    |    uint _allowance = allowed[_from][msg.sender];
    |
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(133)

[31mViolation[0m for MissingInputValidation in contract 'BurnableToken':
    |  }
    |
  > |  function balanceOf(address _owner) constant returns (uint balance) {
    |    return balances[_owner];
    |  }
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(143)

[31mViolation[0m for MissingInputValidation in contract 'BurnableToken':
    |  }
    |
  > |  function allowance(address _owner, address _spender) constant returns (uint remaining) {
    |    return allowed[_owner][_spender];
    |  }
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(160)

[33mWarning[0m for MissingInputValidation in contract 'BurnableToken':
    | */
    |contract ERC20Basic {
  > |  uint256 public totalSupply;
    |  function balanceOf(address who) constant returns (uint256);
    |  function transfer(address to, uint256 value) returns (bool);
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(33)

[33mWarning[0m for MissingInputValidation in contract 'BurnableToken':
    |  }
    |
  > |  function safeSub(uint a, uint b) internal returns (uint) {
    |    assert(b <= a);
    |    return a - b;
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(73)

[33mWarning[0m for MissingInputValidation in contract 'BurnableToken':
    |  }
    |
  > |  function safeAdd(uint a, uint b) internal returns (uint) {
    |    uint c = a + b;
    |    assert(c>=a && c>=b);
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(78)

[33mWarning[0m for MissingInputValidation in contract 'BurnableToken':
    |
    |  /* Interface declaration */
  > |  function isToken() public constant returns (bool weAre) {
    |    return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(122)

[33mWarning[0m for MissingInputValidation in contract 'BurnableToken':
    |contract BurnableToken is StandardToken {
    |
  > |  address public constant BURN_ADDRESS = 0;
    |
    |  /** How many tokens we burned */
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(170)

[31mViolation[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |  function transfer(address _to, uint _value) returns (bool success) {
  > |    balances[msg.sender] = safeSub(balances[msg.sender], _value);
    |    balances[_to] = safeAdd(balances[_to], _value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(127)

[31mViolation[0m for UnrestrictedWrite in contract 'BurnableToken':
    |  function transfer(address _to, uint _value) returns (bool success) {
    |    balances[msg.sender] = safeSub(balances[msg.sender], _value);
  > |    balances[_to] = safeAdd(balances[_to], _value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(128)

[31mViolation[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    uint _allowance = allowed[_from][msg.sender];
    |
  > |    balances[_to] = safeAdd(balances[_to], _value);
    |    balances[_from] = safeSub(balances[_from], _value);
    |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(136)

[31mViolation[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |    balances[_to] = safeAdd(balances[_to], _value);
  > |    balances[_from] = safeSub(balances[_from], _value);
    |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(137)

[31mViolation[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    balances[_to] = safeAdd(balances[_to], _value);
    |    balances[_from] = safeSub(balances[_from], _value);
  > |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(138)

[31mViolation[0m for UnrestrictedWrite in contract 'BurnableToken':
    |  function burn(uint burnAmount) {
    |    address burner = msg.sender;
  > |    balances[burner] = safeSub(balances[burner], burnAmount);
    |    totalSupply = safeSub(totalSupply, burnAmount);
    |    Burned(burner, burnAmount);
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(181)

[31mViolation[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    address burner = msg.sender;
    |    balances[burner] = safeSub(balances[burner], burnAmount);
  > |    totalSupply = safeSub(totalSupply, burnAmount);
    |    Burned(burner, burnAmount);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(182)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    if ((_value != 0) && (allowed[msg.sender][_spender] != 0)) throw;
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(155)

[31mViolation[0m for LockedEther in contract 'CrowdsaleToken':
    | *
    | */
  > |contract CrowdsaleToken is ReleasableToken, MintableToken, UpgradeableToken {
    |
    |  /** Name and symbol were updated. */
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(607)

[33mWarning[0m for UnhandledException in contract 'CrowdsaleToken':
    |
    |      // Upgrade agent reissues the tokens
  > |      upgradeAgent.upgradeFrom(msg.sender, value);
    |      Upgrade(msg.sender, upgradeAgent, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(296)

[33mWarning[0m for UnhandledException in contract 'CrowdsaleToken':
    |
    |      // Bad interface
  > |      if(!upgradeAgent.isUpgradeAgent()) throw;
    |      // Make sure that token supplies match in source and target
    |      if (upgradeAgent.originalSupply() != totalSupply) throw;
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(319)

[33mWarning[0m for UnhandledException in contract 'CrowdsaleToken':
    |      if(!upgradeAgent.isUpgradeAgent()) throw;
    |      // Make sure that token supplies match in source and target
  > |      if (upgradeAgent.originalSupply() != totalSupply) throw;
    |
    |      UpgradeAgentSet(upgradeAgent);
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(321)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CrowdsaleToken':
    |
    |      // Upgrade agent reissues the tokens
  > |      upgradeAgent.upgradeFrom(msg.sender, value);
    |      Upgrade(msg.sender, upgradeAgent, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(296)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CrowdsaleToken':
    |
    |      // Bad interface
  > |      if(!upgradeAgent.isUpgradeAgent()) throw;
    |      // Make sure that token supplies match in source and target
    |      if (upgradeAgent.originalSupply() != totalSupply) throw;
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(319)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CrowdsaleToken':
    |      if(!upgradeAgent.isUpgradeAgent()) throw;
    |      // Make sure that token supplies match in source and target
  > |      if (upgradeAgent.originalSupply() != totalSupply) throw;
    |
    |      UpgradeAgentSet(upgradeAgent);
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(321)

[31mViolation[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |   */
    |  function mint(address receiver, uint amount) onlyMintAgent canMint public {
  > |    totalSupply = totalSupply.plus(amount);
    |    balances[receiver] = balances[receiver].plus(amount);
    |
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(563)

[31mViolation[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |  function mint(address receiver, uint amount) onlyMintAgent canMint public {
    |    totalSupply = totalSupply.plus(amount);
  > |    balances[receiver] = balances[receiver].plus(amount);
    |
    |    // This will make the mint transaction apper in EtherScan.io
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(564)

[31mViolation[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    | *
    | */
  > |contract CrowdsaleToken is ReleasableToken, MintableToken, UpgradeableToken {
    |
    |  /** Name and symbol were updated. */
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(607)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |
    |  function transfer(address _to, uint _value) returns (bool success) {
  > |    balances[msg.sender] = safeSub(balances[msg.sender], _value);
    |    balances[_to] = safeAdd(balances[_to], _value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(127)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |  function transfer(address _to, uint _value) returns (bool success) {
    |    balances[msg.sender] = safeSub(balances[msg.sender], _value);
  > |    balances[_to] = safeAdd(balances[_to], _value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(128)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |    uint _allowance = allowed[_from][msg.sender];
    |
  > |    balances[_to] = safeAdd(balances[_to], _value);
    |    balances[_from] = safeSub(balances[_from], _value);
    |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |
    |    balances[_to] = safeAdd(balances[_to], _value);
  > |    balances[_from] = safeSub(balances[_from], _value);
    |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(137)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |    balances[_to] = safeAdd(balances[_to], _value);
    |    balances[_from] = safeSub(balances[_from], _value);
  > |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(138)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |    if ((_value != 0) && (allowed[msg.sender][_spender] != 0)) throw;
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(155)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |      if (value == 0) throw;
    |
  > |      balances[msg.sender] = safeSub(balances[msg.sender], value);
    |
    |      // Take tokens out from circulation
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(289)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |
    |      // Take tokens out from circulation
  > |      totalSupply = safeSub(totalSupply, value);
    |      totalUpgraded = safeAdd(totalUpgraded, value);
    |
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(292)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |      // Take tokens out from circulation
    |      totalSupply = safeSub(totalSupply, value);
  > |      totalUpgraded = safeAdd(totalUpgraded, value);
    |
    |      // Upgrade agent reissues the tokens
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(293)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |      if (getUpgradeState() == UpgradeState.Upgrading) throw;
    |
  > |      upgradeAgent = UpgradeAgent(agent);
    |
    |      // Bad interface
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(316)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |      if (master == 0x0) throw;
    |      if (msg.sender != upgradeMaster) throw;
  > |      upgradeMaster = master;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(344)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));      
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(398)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |
    |    // We don't do interface check here as we might want to a normal wallet address to act as a release agent
  > |    releaseAgent = addr;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(443)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |   */
    |  function setTransferAgent(address addr, bool state) onlyOwner inReleaseState(false) public {
  > |    transferAgents[addr] = state;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(450)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |   */
    |  function releaseTokenTransfer() public onlyReleaseAgent {
  > |    released = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(459)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |   */
    |  function setMintAgent(address addr, bool state) onlyOwner canMint public {
  > |    mintAgents[addr] = state;
    |    MintingAgentChanged(addr, state);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(575)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    | *
    | */
  > |contract CrowdsaleToken is ReleasableToken, MintableToken, UpgradeableToken {
    |
    |  /** Name and symbol were updated. */
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(607)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |   */
    |  function releaseTokenTransfer() public onlyReleaseAgent {
  > |    mintingFinished = true;
    |    super.releaseTokenTransfer();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(664)

[33mWarning[0m for LockedEther in contract 'MintableToken':
    | *
    | */
  > |contract MintableToken is StandardToken, Ownable {
    |
    |  using SafeMathLib for uint;
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(546)

[31mViolation[0m for MissingInputValidation in contract 'MintableToken':
    |  }
    |
  > |  function transferFrom(address _from, address _to, uint _value) returns (bool success) {
    |    uint _allowance = allowed[_from][msg.sender];
    |
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(133)

[31mViolation[0m for MissingInputValidation in contract 'MintableToken':
    |  }
    |
  > |  function balanceOf(address _owner) constant returns (uint balance) {
    |    return balances[_owner];
    |  }
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(143)

[31mViolation[0m for MissingInputValidation in contract 'MintableToken':
    |  }
    |
  > |  function allowance(address _owner, address _spender) constant returns (uint remaining) {
    |    return allowed[_owner][_spender];
    |  }
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(160)

[31mViolation[0m for MissingInputValidation in contract 'MintableToken':
    |
    |  /** List of agents that are allowed to create new tokens */
  > |  mapping (address => bool) public mintAgents;
    |
    |  event MintingAgentChanged(address addr, bool state  );
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(553)

[31mViolation[0m for MissingInputValidation in contract 'MintableToken':
    |   * Only callably by a crowdsale contract (mint agent).
    |   */
  > |  function mint(address receiver, uint amount) onlyMintAgent canMint public {
    |    totalSupply = totalSupply.plus(amount);
    |    balances[receiver] = balances[receiver].plus(amount);
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(562)

[31mViolation[0m for MissingInputValidation in contract 'MintableToken':
    |   * Owner can allow a crowdsale contract to mint new tokens.
    |   */
  > |  function setMintAgent(address addr, bool state) onlyOwner canMint public {
    |    mintAgents[addr] = state;
    |    MintingAgentChanged(addr, state);
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(574)

[33mWarning[0m for MissingInputValidation in contract 'MintableToken':
    | */
    |contract ERC20Basic {
  > |  uint256 public totalSupply;
    |  function balanceOf(address who) constant returns (uint256);
    |  function transfer(address to, uint256 value) returns (bool);
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(33)

[33mWarning[0m for MissingInputValidation in contract 'MintableToken':
    |  }
    |
  > |  function safeSub(uint a, uint b) internal returns (uint) {
    |    assert(b <= a);
    |    return a - b;
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(73)

[33mWarning[0m for MissingInputValidation in contract 'MintableToken':
    |  }
    |
  > |  function safeAdd(uint a, uint b) internal returns (uint) {
    |    uint c = a + b;
    |    assert(c>=a && c>=b);
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(78)

[33mWarning[0m for MissingInputValidation in contract 'MintableToken':
    |
    |  /* Interface declaration */
  > |  function isToken() public constant returns (bool weAre) {
    |    return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(122)

[33mWarning[0m for MissingInputValidation in contract 'MintableToken':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(371)

[33mWarning[0m for MissingInputValidation in contract 'MintableToken':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));      
    |    owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(396)

[33mWarning[0m for MissingInputValidation in contract 'MintableToken':
    |  using SafeMathLib for uint;
    |
  > |  bool public mintingFinished = false;
    |
    |  /** List of agents that are allowed to create new tokens */
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(550)

[31mViolation[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |  function transfer(address _to, uint _value) returns (bool success) {
  > |    balances[msg.sender] = safeSub(balances[msg.sender], _value);
    |    balances[_to] = safeAdd(balances[_to], _value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(127)

[31mViolation[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function transfer(address _to, uint _value) returns (bool success) {
    |    balances[msg.sender] = safeSub(balances[msg.sender], _value);
  > |    balances[_to] = safeAdd(balances[_to], _value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(128)

[31mViolation[0m for UnrestrictedWrite in contract 'MintableToken':
    |    uint _allowance = allowed[_from][msg.sender];
    |
  > |    balances[_to] = safeAdd(balances[_to], _value);
    |    balances[_from] = safeSub(balances[_from], _value);
    |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(136)

[31mViolation[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    balances[_to] = safeAdd(balances[_to], _value);
  > |    balances[_from] = safeSub(balances[_from], _value);
    |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(137)

[31mViolation[0m for UnrestrictedWrite in contract 'MintableToken':
    |    balances[_to] = safeAdd(balances[_to], _value);
    |    balances[_from] = safeSub(balances[_from], _value);
  > |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(138)

[31mViolation[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function mint(address receiver, uint amount) onlyMintAgent canMint public {
  > |    totalSupply = totalSupply.plus(amount);
    |    balances[receiver] = balances[receiver].plus(amount);
    |
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(563)

[31mViolation[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function mint(address receiver, uint amount) onlyMintAgent canMint public {
    |    totalSupply = totalSupply.plus(amount);
  > |    balances[receiver] = balances[receiver].plus(amount);
    |
    |    // This will make the mint transaction apper in EtherScan.io
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(564)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    if ((_value != 0) && (allowed[msg.sender][_spender] != 0)) throw;
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(155)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));      
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(398)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function setMintAgent(address addr, bool state) onlyOwner canMint public {
  > |    mintAgents[addr] = state;
    |    MintingAgentChanged(addr, state);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(575)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(370)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(371)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));      
    |    owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(396)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));      
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(398)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * Math operations with safety checks
    | */
  > |contract SafeMath {
    |  function safeMul(uint a, uint b) internal returns (uint) {
    |    uint c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(59)

[33mWarning[0m for LockedEther in contract 'SafeMathLib':
    | *
    | */
  > |library SafeMathLib {
    |
    |  function times(uint a, uint b) returns (uint) {
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(516)

[33mWarning[0m for MissingInputValidation in contract 'SafeMathLib':
    |library SafeMathLib {
    |
  > |  function times(uint a, uint b) returns (uint) {
    |    uint c = a * b;
    |    assert(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(518)

[33mWarning[0m for MissingInputValidation in contract 'SafeMathLib':
    |  }
    |
  > |  function minus(uint a, uint b) returns (uint) {
    |    assert(b <= a);
    |    return a - b;
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(524)

[33mWarning[0m for MissingInputValidation in contract 'SafeMathLib':
    |  }
    |
  > |  function plus(uint a, uint b) returns (uint) {
    |    uint c = a + b;
    |    assert(c>=a);
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(529)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, SafeMath {
    |
    |  /* Token supply got increased and a new owner received these tokens */
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(110)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |  }
    |
  > |  function transferFrom(address _from, address _to, uint _value) returns (bool success) {
    |    uint _allowance = allowed[_from][msg.sender];
    |
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(133)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |  }
    |
  > |  function balanceOf(address _owner) constant returns (uint balance) {
    |    return balances[_owner];
    |  }
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(143)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |  }
    |
  > |  function allowance(address _owner, address _spender) constant returns (uint remaining) {
    |    return allowed[_owner][_spender];
    |  }
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(160)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    | */
    |contract ERC20Basic {
  > |  uint256 public totalSupply;
    |  function balanceOf(address who) constant returns (uint256);
    |  function transfer(address to, uint256 value) returns (bool);
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(33)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |  }
    |
  > |  function safeSub(uint a, uint b) internal returns (uint) {
    |    assert(b <= a);
    |    return a - b;
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(73)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |  }
    |
  > |  function safeAdd(uint a, uint b) internal returns (uint) {
    |    uint c = a + b;
    |    assert(c>=a && c>=b);
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(78)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |
    |  /* Interface declaration */
  > |  function isToken() public constant returns (bool weAre) {
    |    return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(122)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |  function transfer(address _to, uint _value) returns (bool success) {
  > |    balances[msg.sender] = safeSub(balances[msg.sender], _value);
    |    balances[_to] = safeAdd(balances[_to], _value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(127)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |  function transfer(address _to, uint _value) returns (bool success) {
    |    balances[msg.sender] = safeSub(balances[msg.sender], _value);
  > |    balances[_to] = safeAdd(balances[_to], _value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(128)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint _allowance = allowed[_from][msg.sender];
    |
  > |    balances[_to] = safeAdd(balances[_to], _value);
    |    balances[_from] = safeSub(balances[_from], _value);
    |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(136)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    balances[_to] = safeAdd(balances[_to], _value);
  > |    balances[_from] = safeSub(balances[_from], _value);
    |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(137)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_to] = safeAdd(balances[_to], _value);
    |    balances[_from] = safeSub(balances[_from], _value);
  > |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(138)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    if ((_value != 0) && (allowed[msg.sender][_spender] != 0)) throw;
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(155)

[33mWarning[0m for DAO in contract 'UpgradeableToken':
    |
    |      // Upgrade agent reissues the tokens
  > |      upgradeAgent.upgradeFrom(msg.sender, value);
    |      Upgrade(msg.sender, upgradeAgent, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(296)

[33mWarning[0m for DAO in contract 'UpgradeableToken':
    |
    |      // Bad interface
  > |      if(!upgradeAgent.isUpgradeAgent()) throw;
    |      // Make sure that token supplies match in source and target
    |      if (upgradeAgent.originalSupply() != totalSupply) throw;
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(319)

[33mWarning[0m for DAO in contract 'UpgradeableToken':
    |      if(!upgradeAgent.isUpgradeAgent()) throw;
    |      // Make sure that token supplies match in source and target
  > |      if (upgradeAgent.originalSupply() != totalSupply) throw;
    |
    |      UpgradeAgentSet(upgradeAgent);
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(321)

[33mWarning[0m for LockedEther in contract 'UpgradeableToken':
    | * First envisioned by Golem and Lunyr projects.
    | */
  > |contract UpgradeableToken is StandardToken {
    |
    |  /** Contract / person who can set the upgrade path. This can be the same as team multisig wallet, as what it is with its default value. */
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(236)

[31mViolation[0m for MissingInputValidation in contract 'UpgradeableToken':
    |  }
    |
  > |  function transferFrom(address _from, address _to, uint _value) returns (bool success) {
    |    uint _allowance = allowed[_from][msg.sender];
    |
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(133)

[31mViolation[0m for MissingInputValidation in contract 'UpgradeableToken':
    |  }
    |
  > |  function balanceOf(address _owner) constant returns (uint balance) {
    |    return balances[_owner];
    |  }
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(143)

[31mViolation[0m for MissingInputValidation in contract 'UpgradeableToken':
    |  }
    |
  > |  function allowance(address _owner, address _spender) constant returns (uint remaining) {
    |    return allowed[_owner][_spender];
    |  }
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(160)

[33mWarning[0m for MissingInputValidation in contract 'UpgradeableToken':
    | */
    |contract ERC20Basic {
  > |  uint256 public totalSupply;
    |  function balanceOf(address who) constant returns (uint256);
    |  function transfer(address to, uint256 value) returns (bool);
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(33)

[33mWarning[0m for MissingInputValidation in contract 'UpgradeableToken':
    |  }
    |
  > |  function safeSub(uint a, uint b) internal returns (uint) {
    |    assert(b <= a);
    |    return a - b;
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(73)

[33mWarning[0m for MissingInputValidation in contract 'UpgradeableToken':
    |  }
    |
  > |  function safeAdd(uint a, uint b) internal returns (uint) {
    |    uint c = a + b;
    |    assert(c>=a && c>=b);
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(78)

[33mWarning[0m for MissingInputValidation in contract 'UpgradeableToken':
    |
    |  /* Interface declaration */
  > |  function isToken() public constant returns (bool weAre) {
    |    return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(122)

[33mWarning[0m for MissingInputValidation in contract 'UpgradeableToken':
    |
    |  /** Contract / person who can set the upgrade path. This can be the same as team multisig wallet, as what it is with its default value. */
  > |  address public upgradeMaster;
    |
    |  /** The next contract where the tokens will be migrated. */
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(239)

[33mWarning[0m for MissingInputValidation in contract 'UpgradeableToken':
    |
    |  /** The next contract where the tokens will be migrated. */
  > |  UpgradeAgent public upgradeAgent;
    |
    |  /** How many tokens we have upgraded by now. */
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(242)

[33mWarning[0m for MissingInputValidation in contract 'UpgradeableToken':
    |
    |  /** How many tokens we have upgraded by now. */
  > |  uint256 public totalUpgraded;
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(245)

[33mWarning[0m for MissingInputValidation in contract 'UpgradeableToken':
    |   * Get the state of the token upgrade.
    |   */
  > |  function getUpgradeState() public constant returns(UpgradeState) {
    |    if(!canUpgrade()) return UpgradeState.NotAllowed;
    |    else if(address(upgradeAgent) == 0x00) return UpgradeState.WaitingForAgent;
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(329)

[33mWarning[0m for MissingInputValidation in contract 'UpgradeableToken':
    |   * This allows us to set a new owner for the upgrade mechanism.
    |   */
  > |  function setUpgradeMaster(address master) public {
    |      if (master == 0x0) throw;
    |      if (msg.sender != upgradeMaster) throw;
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(341)

[33mWarning[0m for MissingInputValidation in contract 'UpgradeableToken':
    |   * Child contract can enable to provide the condition when the upgrade can begun.
    |   */
  > |  function canUpgrade() public constant returns(bool) {
    |     return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(350)

[33mWarning[0m for UnhandledException in contract 'UpgradeableToken':
    |
    |      // Upgrade agent reissues the tokens
  > |      upgradeAgent.upgradeFrom(msg.sender, value);
    |      Upgrade(msg.sender, upgradeAgent, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(296)

[33mWarning[0m for UnhandledException in contract 'UpgradeableToken':
    |
    |      // Bad interface
  > |      if(!upgradeAgent.isUpgradeAgent()) throw;
    |      // Make sure that token supplies match in source and target
    |      if (upgradeAgent.originalSupply() != totalSupply) throw;
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(319)

[33mWarning[0m for UnhandledException in contract 'UpgradeableToken':
    |      if(!upgradeAgent.isUpgradeAgent()) throw;
    |      // Make sure that token supplies match in source and target
  > |      if (upgradeAgent.originalSupply() != totalSupply) throw;
    |
    |      UpgradeAgentSet(upgradeAgent);
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(321)

[31mViolation[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |
    |  function transfer(address _to, uint _value) returns (bool success) {
  > |    balances[msg.sender] = safeSub(balances[msg.sender], _value);
    |    balances[_to] = safeAdd(balances[_to], _value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(127)

[31mViolation[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |  function transfer(address _to, uint _value) returns (bool success) {
    |    balances[msg.sender] = safeSub(balances[msg.sender], _value);
  > |    balances[_to] = safeAdd(balances[_to], _value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(128)

[31mViolation[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |    uint _allowance = allowed[_from][msg.sender];
    |
  > |    balances[_to] = safeAdd(balances[_to], _value);
    |    balances[_from] = safeSub(balances[_from], _value);
    |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(136)

[31mViolation[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |
    |    balances[_to] = safeAdd(balances[_to], _value);
  > |    balances[_from] = safeSub(balances[_from], _value);
    |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(137)

[31mViolation[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |    balances[_to] = safeAdd(balances[_to], _value);
    |    balances[_from] = safeSub(balances[_from], _value);
  > |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(138)

[31mViolation[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |      if (value == 0) throw;
    |
  > |      balances[msg.sender] = safeSub(balances[msg.sender], value);
    |
    |      // Take tokens out from circulation
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(289)

[31mViolation[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |
    |      // Take tokens out from circulation
  > |      totalSupply = safeSub(totalSupply, value);
    |      totalUpgraded = safeAdd(totalUpgraded, value);
    |
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(292)

[31mViolation[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |      // Take tokens out from circulation
    |      totalSupply = safeSub(totalSupply, value);
  > |      totalUpgraded = safeAdd(totalUpgraded, value);
    |
    |      // Upgrade agent reissues the tokens
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(293)

[31mViolation[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |      if (getUpgradeState() == UpgradeState.Upgrading) throw;
    |
  > |      upgradeAgent = UpgradeAgent(agent);
    |
    |      // Bad interface
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(316)

[33mWarning[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |    if ((_value != 0) && (allowed[msg.sender][_spender] != 0)) throw;
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(155)

[33mWarning[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |      if (master == 0x0) throw;
    |      if (msg.sender != upgradeMaster) throw;
  > |      upgradeMaster = master;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xbd2738803174bb4e53307bb87f11d2f6aec6a96d.sol(344)


