Processing contract: /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol:BurnableCrowdsaleToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol:BurnableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol:CrowdsaleToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol:MintableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol:ReleasableToken
Processing contract: /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol:SafeMathLib
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol:StandardTokenExt
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol:UpgradeAgent
Processing contract: /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol:UpgradeableToken
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
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(78)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |  */
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(89)

[31mViolation[0m for LockedEther in contract 'BurnableCrowdsaleToken':
    | *
    | */
  > |contract BurnableCrowdsaleToken is BurnableToken, CrowdsaleToken {
    |
    |  function BurnableCrowdsaleToken(string _name, string _symbol, uint _initialSupply, uint _decimals, bool _mintable)
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(738)

[33mWarning[0m for UnhandledException in contract 'BurnableCrowdsaleToken':
    |
    |      // Upgrade agent reissues the tokens
  > |      upgradeAgent.upgradeFrom(msg.sender, value);
    |      Upgrade(msg.sender, upgradeAgent, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(335)

[33mWarning[0m for UnhandledException in contract 'BurnableCrowdsaleToken':
    |
    |      // Bad interface
  > |      if(!upgradeAgent.isUpgradeAgent()) throw;
    |      // Make sure that token supplies match in source and target
    |      if (upgradeAgent.originalSupply() != totalSupply) throw;
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(358)

[33mWarning[0m for UnhandledException in contract 'BurnableCrowdsaleToken':
    |      if(!upgradeAgent.isUpgradeAgent()) throw;
    |      // Make sure that token supplies match in source and target
  > |      if (upgradeAgent.originalSupply() != totalSupply) throw;
    |
    |      UpgradeAgentSet(upgradeAgent);
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(360)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BurnableCrowdsaleToken':
    |
    |      // Upgrade agent reissues the tokens
  > |      upgradeAgent.upgradeFrom(msg.sender, value);
    |      Upgrade(msg.sender, upgradeAgent, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(335)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BurnableCrowdsaleToken':
    |
    |      // Bad interface
  > |      if(!upgradeAgent.isUpgradeAgent()) throw;
    |      // Make sure that token supplies match in source and target
    |      if (upgradeAgent.originalSupply() != totalSupply) throw;
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(358)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BurnableCrowdsaleToken':
    |      if(!upgradeAgent.isUpgradeAgent()) throw;
    |      // Make sure that token supplies match in source and target
  > |      if (upgradeAgent.originalSupply() != totalSupply) throw;
    |
    |      UpgradeAgentSet(upgradeAgent);
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(360)

[31mViolation[0m for UnrestrictedWrite in contract 'BurnableCrowdsaleToken':
    |   */
    |  function mint(address receiver, uint amount) onlyMintAgent canMint public {
  > |    totalSupply = totalSupply.plus(amount);
    |    balances[receiver] = balances[receiver].plus(amount);
    |
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(603)

[31mViolation[0m for UnrestrictedWrite in contract 'BurnableCrowdsaleToken':
    |  function mint(address receiver, uint amount) onlyMintAgent canMint public {
    |    totalSupply = totalSupply.plus(amount);
  > |    balances[receiver] = balances[receiver].plus(amount);
    |
    |    // This will make the mint transaction apper in EtherScan.io
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(604)

[31mViolation[0m for UnrestrictedWrite in contract 'BurnableCrowdsaleToken':
    | *
    | */
  > |contract BurnableCrowdsaleToken is BurnableToken, CrowdsaleToken {
    |
    |  function BurnableCrowdsaleToken(string _name, string _symbol, uint _initialSupply, uint _decimals, bool _mintable)
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(738)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableCrowdsaleToken':
    |  */
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableCrowdsaleToken':
    |  function transfer(address _to, uint256 _value) returns (bool) {
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableCrowdsaleToken':
    |    // require (_value <= _allowance);
    |
  > |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(148)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableCrowdsaleToken':
    |
    |    balances[_to] = balances[_to].add(_value);
  > |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(149)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableCrowdsaleToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(150)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableCrowdsaleToken':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(168)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableCrowdsaleToken':
    |  function burn(uint burnAmount) {
    |    address burner = msg.sender;
  > |    balances[burner] = balances[burner].sub(burnAmount);
    |    totalSupply = totalSupply.sub(burnAmount);
    |    Burned(burner, burnAmount);
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(216)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableCrowdsaleToken':
    |    address burner = msg.sender;
    |    balances[burner] = balances[burner].sub(burnAmount);
  > |    totalSupply = totalSupply.sub(burnAmount);
    |    Burned(burner, burnAmount);
    |
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(217)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableCrowdsaleToken':
    |      if (value == 0) throw;
    |
  > |      balances[msg.sender] = balances[msg.sender].sub(value);
    |
    |      // Take tokens out from circulation
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(328)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableCrowdsaleToken':
    |
    |      // Take tokens out from circulation
  > |      totalSupply = totalSupply.sub(value);
    |      totalUpgraded = totalUpgraded.add(value);
    |
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(331)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableCrowdsaleToken':
    |      // Take tokens out from circulation
    |      totalSupply = totalSupply.sub(value);
  > |      totalUpgraded = totalUpgraded.add(value);
    |
    |      // Upgrade agent reissues the tokens
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(332)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableCrowdsaleToken':
    |      if (getUpgradeState() == UpgradeState.Upgrading) throw;
    |
  > |      upgradeAgent = UpgradeAgent(agent);
    |
    |      // Bad interface
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(355)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableCrowdsaleToken':
    |      if (master == 0x0) throw;
    |      if (msg.sender != upgradeMaster) throw;
  > |      upgradeMaster = master;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(383)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableCrowdsaleToken':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));      
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(437)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableCrowdsaleToken':
    |
    |    // We don't do interface check here as we might want to a normal wallet address to act as a release agent
  > |    releaseAgent = addr;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(482)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableCrowdsaleToken':
    |   */
    |  function setTransferAgent(address addr, bool state) onlyOwner inReleaseState(false) public {
  > |    transferAgents[addr] = state;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(489)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableCrowdsaleToken':
    |   */
    |  function releaseTokenTransfer() public onlyReleaseAgent {
  > |    released = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(498)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableCrowdsaleToken':
    |   */
    |  function setMintAgent(address addr, bool state) onlyOwner canMint public {
  > |    mintAgents[addr] = state;
    |    MintingAgentChanged(addr, state);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(615)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableCrowdsaleToken':
    |   */
    |  function releaseTokenTransfer() public onlyReleaseAgent {
  > |    mintingFinished = true;
    |    super.releaseTokenTransfer();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(704)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableCrowdsaleToken':
    | *
    | */
  > |contract BurnableCrowdsaleToken is BurnableToken, CrowdsaleToken {
    |
    |  function BurnableCrowdsaleToken(string _name, string _symbol, uint _initialSupply, uint _decimals, bool _mintable)
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(738)

[33mWarning[0m for LockedEther in contract 'BurnableToken':
    |
    |
  > |contract BurnableToken is StandardTokenExt {
    |
    |  // @notice An address for the transfer event where the burned tokens are transferred in a faux Transfer event
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(202)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |  */
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |  function transfer(address _to, uint256 _value) returns (bool) {
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    // require (_value <= _allowance);
    |
  > |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(148)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |    balances[_to] = balances[_to].add(_value);
  > |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(149)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(150)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(168)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |  function burn(uint burnAmount) {
    |    address burner = msg.sender;
  > |    balances[burner] = balances[burner].sub(burnAmount);
    |    totalSupply = totalSupply.sub(burnAmount);
    |    Burned(burner, burnAmount);
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(216)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    address burner = msg.sender;
    |    balances[burner] = balances[burner].sub(burnAmount);
  > |    totalSupply = totalSupply.sub(burnAmount);
    |    Burned(burner, burnAmount);
    |
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(217)

[31mViolation[0m for LockedEther in contract 'CrowdsaleToken':
    | *
    | */
  > |contract CrowdsaleToken is ReleasableToken, MintableToken, UpgradeableToken {
    |
    |  /** Name and symbol were updated. */
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(647)

[33mWarning[0m for UnhandledException in contract 'CrowdsaleToken':
    |
    |      // Upgrade agent reissues the tokens
  > |      upgradeAgent.upgradeFrom(msg.sender, value);
    |      Upgrade(msg.sender, upgradeAgent, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(335)

[33mWarning[0m for UnhandledException in contract 'CrowdsaleToken':
    |
    |      // Bad interface
  > |      if(!upgradeAgent.isUpgradeAgent()) throw;
    |      // Make sure that token supplies match in source and target
    |      if (upgradeAgent.originalSupply() != totalSupply) throw;
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(358)

[33mWarning[0m for UnhandledException in contract 'CrowdsaleToken':
    |      if(!upgradeAgent.isUpgradeAgent()) throw;
    |      // Make sure that token supplies match in source and target
  > |      if (upgradeAgent.originalSupply() != totalSupply) throw;
    |
    |      UpgradeAgentSet(upgradeAgent);
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(360)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CrowdsaleToken':
    |
    |      // Upgrade agent reissues the tokens
  > |      upgradeAgent.upgradeFrom(msg.sender, value);
    |      Upgrade(msg.sender, upgradeAgent, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(335)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CrowdsaleToken':
    |
    |      // Bad interface
  > |      if(!upgradeAgent.isUpgradeAgent()) throw;
    |      // Make sure that token supplies match in source and target
    |      if (upgradeAgent.originalSupply() != totalSupply) throw;
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(358)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CrowdsaleToken':
    |      if(!upgradeAgent.isUpgradeAgent()) throw;
    |      // Make sure that token supplies match in source and target
  > |      if (upgradeAgent.originalSupply() != totalSupply) throw;
    |
    |      UpgradeAgentSet(upgradeAgent);
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(360)

[31mViolation[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |   */
    |  function mint(address receiver, uint amount) onlyMintAgent canMint public {
  > |    totalSupply = totalSupply.plus(amount);
    |    balances[receiver] = balances[receiver].plus(amount);
    |
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(603)

[31mViolation[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |  function mint(address receiver, uint amount) onlyMintAgent canMint public {
    |    totalSupply = totalSupply.plus(amount);
  > |    balances[receiver] = balances[receiver].plus(amount);
    |
    |    // This will make the mint transaction apper in EtherScan.io
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(604)

[31mViolation[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    | *
    | */
  > |contract CrowdsaleToken is ReleasableToken, MintableToken, UpgradeableToken {
    |
    |  /** Name and symbol were updated. */
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(647)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |  */
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |  function transfer(address _to, uint256 _value) returns (bool) {
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |    // require (_value <= _allowance);
    |
  > |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(148)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |
    |    balances[_to] = balances[_to].add(_value);
  > |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(149)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(150)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(168)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |      if (value == 0) throw;
    |
  > |      balances[msg.sender] = balances[msg.sender].sub(value);
    |
    |      // Take tokens out from circulation
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(328)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |
    |      // Take tokens out from circulation
  > |      totalSupply = totalSupply.sub(value);
    |      totalUpgraded = totalUpgraded.add(value);
    |
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(331)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |      // Take tokens out from circulation
    |      totalSupply = totalSupply.sub(value);
  > |      totalUpgraded = totalUpgraded.add(value);
    |
    |      // Upgrade agent reissues the tokens
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(332)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |      if (getUpgradeState() == UpgradeState.Upgrading) throw;
    |
  > |      upgradeAgent = UpgradeAgent(agent);
    |
    |      // Bad interface
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(355)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |      if (master == 0x0) throw;
    |      if (msg.sender != upgradeMaster) throw;
  > |      upgradeMaster = master;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(383)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));      
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(437)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |
    |    // We don't do interface check here as we might want to a normal wallet address to act as a release agent
  > |    releaseAgent = addr;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(482)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |   */
    |  function setTransferAgent(address addr, bool state) onlyOwner inReleaseState(false) public {
  > |    transferAgents[addr] = state;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(489)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |   */
    |  function releaseTokenTransfer() public onlyReleaseAgent {
  > |    released = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(498)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |   */
    |  function setMintAgent(address addr, bool state) onlyOwner canMint public {
  > |    mintAgents[addr] = state;
    |    MintingAgentChanged(addr, state);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(615)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    | *
    | */
  > |contract CrowdsaleToken is ReleasableToken, MintableToken, UpgradeableToken {
    |
    |  /** Name and symbol were updated. */
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(647)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |   */
    |  function releaseTokenTransfer() public onlyReleaseAgent {
  > |    mintingFinished = true;
    |    super.releaseTokenTransfer();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(704)

[33mWarning[0m for LockedEther in contract 'MintableToken':
    | *
    | */
  > |contract MintableToken is StandardTokenExt, Ownable {
    |
    |  using SafeMathLib for uint;
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(585)

[31mViolation[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function mint(address receiver, uint amount) onlyMintAgent canMint public {
  > |    totalSupply = totalSupply.plus(amount);
    |    balances[receiver] = balances[receiver].plus(amount);
    |
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(603)

[31mViolation[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function mint(address receiver, uint amount) onlyMintAgent canMint public {
    |    totalSupply = totalSupply.plus(amount);
  > |    balances[receiver] = balances[receiver].plus(amount);
    |
    |    // This will make the mint transaction apper in EtherScan.io
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(604)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  */
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(150)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(168)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));      
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(437)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function setMintAgent(address addr, bool state) onlyOwner canMint public {
  > |    mintAgents[addr] = state;
    |    MintingAgentChanged(addr, state);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(615)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(409)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(410)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));      
    |    owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(435)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));      
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(437)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(46)

[33mWarning[0m for LockedEther in contract 'SafeMathLib':
    | *
    | */
  > |library SafeMathLib {
    |
    |  function times(uint a, uint b) returns (uint) {
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(555)

[33mWarning[0m for MissingInputValidation in contract 'SafeMathLib':
    |library SafeMathLib {
    |
  > |  function times(uint a, uint b) returns (uint) {
    |    uint c = a * b;
    |    assert(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(557)

[33mWarning[0m for MissingInputValidation in contract 'SafeMathLib':
    |  }
    |
  > |  function minus(uint a, uint b) returns (uint) {
    |    assert(b <= a);
    |    return a - b;
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(563)

[33mWarning[0m for MissingInputValidation in contract 'SafeMathLib':
    |  }
    |
  > |  function plus(uint a, uint b) returns (uint) {
    |    uint c = a + b;
    |    assert(c>=a);
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(568)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) allowed;
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(131)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  */
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(150)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(168)

[33mWarning[0m for LockedEther in contract 'StandardTokenExt':
    | *
    | */
  > |contract StandardTokenExt is StandardToken {
    |
    |  /* Interface declaration */
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(193)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardTokenExt':
    |  */
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardTokenExt':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(150)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardTokenExt':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(168)

[33mWarning[0m for LockedEther in contract 'UpgradeableToken':
    | * First envisioned by Golem and Lunyr projects.
    | */
  > |contract UpgradeableToken is StandardTokenExt {
    |
    |  /** Contract / person who can set the upgrade path. This can be the same as team multisig wallet, as what it is with its default value. */
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(275)

[33mWarning[0m for UnhandledException in contract 'UpgradeableToken':
    |
    |      // Upgrade agent reissues the tokens
  > |      upgradeAgent.upgradeFrom(msg.sender, value);
    |      Upgrade(msg.sender, upgradeAgent, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(335)

[33mWarning[0m for UnhandledException in contract 'UpgradeableToken':
    |
    |      // Bad interface
  > |      if(!upgradeAgent.isUpgradeAgent()) throw;
    |      // Make sure that token supplies match in source and target
    |      if (upgradeAgent.originalSupply() != totalSupply) throw;
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(358)

[33mWarning[0m for UnhandledException in contract 'UpgradeableToken':
    |      if(!upgradeAgent.isUpgradeAgent()) throw;
    |      // Make sure that token supplies match in source and target
  > |      if (upgradeAgent.originalSupply() != totalSupply) throw;
    |
    |      UpgradeAgentSet(upgradeAgent);
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(360)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UpgradeableToken':
    |
    |      // Upgrade agent reissues the tokens
  > |      upgradeAgent.upgradeFrom(msg.sender, value);
    |      Upgrade(msg.sender, upgradeAgent, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(335)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UpgradeableToken':
    |
    |      // Bad interface
  > |      if(!upgradeAgent.isUpgradeAgent()) throw;
    |      // Make sure that token supplies match in source and target
    |      if (upgradeAgent.originalSupply() != totalSupply) throw;
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(358)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UpgradeableToken':
    |      if(!upgradeAgent.isUpgradeAgent()) throw;
    |      // Make sure that token supplies match in source and target
  > |      if (upgradeAgent.originalSupply() != totalSupply) throw;
    |
    |      UpgradeAgentSet(upgradeAgent);
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(360)

[33mWarning[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |  */
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |  function transfer(address _to, uint256 _value) returns (bool) {
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |    // require (_value <= _allowance);
    |
  > |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(148)

[33mWarning[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |
    |    balances[_to] = balances[_to].add(_value);
  > |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(149)

[33mWarning[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(150)

[33mWarning[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(168)

[33mWarning[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |      if (value == 0) throw;
    |
  > |      balances[msg.sender] = balances[msg.sender].sub(value);
    |
    |      // Take tokens out from circulation
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(328)

[33mWarning[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |
    |      // Take tokens out from circulation
  > |      totalSupply = totalSupply.sub(value);
    |      totalUpgraded = totalUpgraded.add(value);
    |
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(331)

[33mWarning[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |      // Take tokens out from circulation
    |      totalSupply = totalSupply.sub(value);
  > |      totalUpgraded = totalUpgraded.add(value);
    |
    |      // Upgrade agent reissues the tokens
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(332)

[33mWarning[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |      if (getUpgradeState() == UpgradeState.Upgrading) throw;
    |
  > |      upgradeAgent = UpgradeAgent(agent);
    |
    |      // Bad interface
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(355)

[33mWarning[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |      if (master == 0x0) throw;
    |      if (msg.sender != upgradeMaster) throw;
  > |      upgradeMaster = master;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa10da6ff4102e07bda38df1cecb5d806387655f8.sol(383)


