Processing contract: /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol:AMLToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol:BurnableCrowdsaleToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol:BurnableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol:CrowdsaleToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol:MintableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol:ReleasableToken
Processing contract: /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol:SafeMathLib
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol:StandardTokenExt
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol:UpgradeAgent
Processing contract: /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol:UpgradeableToken
[31mViolation[0m for LockedEther in contract 'AMLToken':
    | * caused by rejected purchases.
    | */
  > |contract AMLToken is BurnableCrowdsaleToken {
    |
    |  // An event when the owner has reclaimed non-released tokens
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(781)

[33mWarning[0m for UnhandledException in contract 'AMLToken':
    |
    |      // Upgrade agent reissues the tokens
  > |      upgradeAgent.upgradeFrom(msg.sender, value);
    |      emit Upgrade(msg.sender, upgradeAgent, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(359)

[33mWarning[0m for UnhandledException in contract 'AMLToken':
    |
    |      // Bad interface
  > |      if(!upgradeAgent.isUpgradeAgent()) revert();
    |      // Make sure that token supplies match in source and target
    |      if (upgradeAgent.originalSupply() != totalSupply_) revert();
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(382)

[33mWarning[0m for UnhandledException in contract 'AMLToken':
    |      if(!upgradeAgent.isUpgradeAgent()) revert();
    |      // Make sure that token supplies match in source and target
  > |      if (upgradeAgent.originalSupply() != totalSupply_) revert();
    |
    |      emit UpgradeAgentSet(upgradeAgent);
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(384)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AMLToken':
    |
    |      // Upgrade agent reissues the tokens
  > |      upgradeAgent.upgradeFrom(msg.sender, value);
    |      emit Upgrade(msg.sender, upgradeAgent, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(359)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AMLToken':
    |
    |      // Bad interface
  > |      if(!upgradeAgent.isUpgradeAgent()) revert();
    |      // Make sure that token supplies match in source and target
    |      if (upgradeAgent.originalSupply() != totalSupply_) revert();
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(382)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AMLToken':
    |      if(!upgradeAgent.isUpgradeAgent()) revert();
    |      // Make sure that token supplies match in source and target
  > |      if (upgradeAgent.originalSupply() != totalSupply_) revert();
    |
    |      emit UpgradeAgentSet(upgradeAgent);
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(384)

[31mViolation[0m for UnrestrictedWrite in contract 'AMLToken':
    |   */
    |  function mint(address receiver, uint amount) onlyMintAgent canMint public {
  > |    totalSupply_ = totalSupply_.plus(amount);
    |    balances[receiver] = balances[receiver].plus(amount);
    |
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(623)

[31mViolation[0m for UnrestrictedWrite in contract 'AMLToken':
    |  function mint(address receiver, uint amount) onlyMintAgent canMint public {
    |    totalSupply_ = totalSupply_.plus(amount);
  > |    balances[receiver] = balances[receiver].plus(amount);
    |
    |    // This will make the mint transaction apper in EtherScan.io
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(624)

[31mViolation[0m for UnrestrictedWrite in contract 'AMLToken':
    | * caused by rejected purchases.
    | */
  > |contract AMLToken is BurnableCrowdsaleToken {
    |
    |  // An event when the owner has reclaimed non-released tokens
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(781)

[33mWarning[0m for UnrestrictedWrite in contract 'AMLToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(103)

[33mWarning[0m for UnrestrictedWrite in contract 'AMLToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(104)

[33mWarning[0m for UnrestrictedWrite in contract 'AMLToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(160)

[33mWarning[0m for UnrestrictedWrite in contract 'AMLToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(161)

[33mWarning[0m for UnrestrictedWrite in contract 'AMLToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(162)

[33mWarning[0m for UnrestrictedWrite in contract 'AMLToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(178)

[33mWarning[0m for UnrestrictedWrite in contract 'AMLToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(204)

[33mWarning[0m for UnrestrictedWrite in contract 'AMLToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(222)

[33mWarning[0m for UnrestrictedWrite in contract 'AMLToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(224)

[33mWarning[0m for UnrestrictedWrite in contract 'AMLToken':
    |  function burn(uint burnAmount) public {
    |    address burner = msg.sender;
  > |    balances[burner] = balances[burner].sub(burnAmount);
    |    totalSupply_ = totalSupply_.sub(burnAmount);
    |    emit Burned(burner, burnAmount);
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(263)

[33mWarning[0m for UnrestrictedWrite in contract 'AMLToken':
    |    address burner = msg.sender;
    |    balances[burner] = balances[burner].sub(burnAmount);
  > |    totalSupply_ = totalSupply_.sub(burnAmount);
    |    emit Burned(burner, burnAmount);
    |
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(264)

[33mWarning[0m for UnrestrictedWrite in contract 'AMLToken':
    |      if (value == 0) revert();
    |
  > |      balances[msg.sender] = balances[msg.sender].sub(value);
    |
    |      // Take tokens out from circulation
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(352)

[33mWarning[0m for UnrestrictedWrite in contract 'AMLToken':
    |
    |      // Take tokens out from circulation
  > |      totalSupply_ = totalSupply_.sub(value);
    |      totalUpgraded = totalUpgraded.add(value);
    |
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(355)

[33mWarning[0m for UnrestrictedWrite in contract 'AMLToken':
    |      // Take tokens out from circulation
    |      totalSupply_ = totalSupply_.sub(value);
  > |      totalUpgraded = totalUpgraded.add(value);
    |
    |      // Upgrade agent reissues the tokens
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(356)

[33mWarning[0m for UnrestrictedWrite in contract 'AMLToken':
    |
    |    uint amount = balanceOf(fromWhom);
  > |    balances[fromWhom] = balances[fromWhom].sub(amount);
    |    balances[owner] = balances[owner].add(amount);
    |    emit Transfer(fromWhom, owner, amount);
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(798)

[33mWarning[0m for UnrestrictedWrite in contract 'AMLToken':
    |    uint amount = balanceOf(fromWhom);
    |    balances[fromWhom] = balances[fromWhom].sub(amount);
  > |    balances[owner] = balances[owner].add(amount);
    |    emit Transfer(fromWhom, owner, amount);
    |    emit OwnerReclaim(fromWhom, amount);
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(799)

[33mWarning[0m for UnrestrictedWrite in contract 'AMLToken':
    |      if (getUpgradeState() == UpgradeState.Upgrading) revert();
    |
  > |      upgradeAgent = UpgradeAgent(agent);
    |
    |      // Bad interface
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(379)

[33mWarning[0m for UnrestrictedWrite in contract 'AMLToken':
    |      if (master == 0x0) revert();
    |      if (msg.sender != upgradeMaster) revert();
  > |      upgradeMaster = master;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(407)

[33mWarning[0m for UnrestrictedWrite in contract 'AMLToken':
    |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(450)

[33mWarning[0m for UnrestrictedWrite in contract 'AMLToken':
    |
    |    // We don't do interface check here as we might want to a normal wallet address to act as a release agent
  > |    releaseAgent = addr;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(500)

[33mWarning[0m for UnrestrictedWrite in contract 'AMLToken':
    |   */
    |  function setTransferAgent(address addr, bool state) onlyOwner /* inReleaseState(false) */ public {
  > |    transferAgents[addr] = state;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(508)

[33mWarning[0m for UnrestrictedWrite in contract 'AMLToken':
    |   */
    |  function setLockAddress(address addr, bool state) onlyOwner /*inReleaseState(false)*/ public {
  > |    lockAddresses[addr] = state;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(516)

[33mWarning[0m for UnrestrictedWrite in contract 'AMLToken':
    |   */
    |  function releaseTokenTransfer() public onlyReleaseAgent {
  > |    released = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(525)

[33mWarning[0m for UnrestrictedWrite in contract 'AMLToken':
    |   */
    |  function lockTokenTransfer() public onlyOwner {
  > |    released = false;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(532)

[33mWarning[0m for UnrestrictedWrite in contract 'AMLToken':
    |   */
    |  function setMintAgent(address addr, bool state) onlyOwner canMint public {
  > |    mintAgents[addr] = state;
    |    emit MintingAgentChanged(addr, state);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(635)

[33mWarning[0m for UnrestrictedWrite in contract 'AMLToken':
    |   */
    |  function releaseTokenTransfer() public onlyReleaseAgent {
  > |    mintingFinished = true;
    |    super.releaseTokenTransfer();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(723)

[33mWarning[0m for UnrestrictedWrite in contract 'AMLToken':
    | * caused by rejected purchases.
    | */
  > |contract AMLToken is BurnableCrowdsaleToken {
    |
    |  // An event when the owner has reclaimed non-released tokens
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(781)

[33mWarning[0m for LockedEther in contract 'BasicToken':
    | * @dev Basic version of StandardToken, with no allowances.
    | */
  > |contract BasicToken is ERC20Basic {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(79)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(103)

[31mViolation[0m for LockedEther in contract 'BurnableCrowdsaleToken':
    | *
    | */
  > |contract BurnableCrowdsaleToken is BurnableToken, CrowdsaleToken {
    |
    |  constructor(string _name, string _symbol, uint _initialSupply, uint _decimals, bool _mintable) public
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(757)

[33mWarning[0m for UnhandledException in contract 'BurnableCrowdsaleToken':
    |
    |      // Upgrade agent reissues the tokens
  > |      upgradeAgent.upgradeFrom(msg.sender, value);
    |      emit Upgrade(msg.sender, upgradeAgent, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(359)

[33mWarning[0m for UnhandledException in contract 'BurnableCrowdsaleToken':
    |
    |      // Bad interface
  > |      if(!upgradeAgent.isUpgradeAgent()) revert();
    |      // Make sure that token supplies match in source and target
    |      if (upgradeAgent.originalSupply() != totalSupply_) revert();
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(382)

[33mWarning[0m for UnhandledException in contract 'BurnableCrowdsaleToken':
    |      if(!upgradeAgent.isUpgradeAgent()) revert();
    |      // Make sure that token supplies match in source and target
  > |      if (upgradeAgent.originalSupply() != totalSupply_) revert();
    |
    |      emit UpgradeAgentSet(upgradeAgent);
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(384)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BurnableCrowdsaleToken':
    |
    |      // Upgrade agent reissues the tokens
  > |      upgradeAgent.upgradeFrom(msg.sender, value);
    |      emit Upgrade(msg.sender, upgradeAgent, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(359)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BurnableCrowdsaleToken':
    |
    |      // Bad interface
  > |      if(!upgradeAgent.isUpgradeAgent()) revert();
    |      // Make sure that token supplies match in source and target
    |      if (upgradeAgent.originalSupply() != totalSupply_) revert();
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(382)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BurnableCrowdsaleToken':
    |      if(!upgradeAgent.isUpgradeAgent()) revert();
    |      // Make sure that token supplies match in source and target
  > |      if (upgradeAgent.originalSupply() != totalSupply_) revert();
    |
    |      emit UpgradeAgentSet(upgradeAgent);
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(384)

[31mViolation[0m for UnrestrictedWrite in contract 'BurnableCrowdsaleToken':
    |   */
    |  function mint(address receiver, uint amount) onlyMintAgent canMint public {
  > |    totalSupply_ = totalSupply_.plus(amount);
    |    balances[receiver] = balances[receiver].plus(amount);
    |
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(623)

[31mViolation[0m for UnrestrictedWrite in contract 'BurnableCrowdsaleToken':
    |  function mint(address receiver, uint amount) onlyMintAgent canMint public {
    |    totalSupply_ = totalSupply_.plus(amount);
  > |    balances[receiver] = balances[receiver].plus(amount);
    |
    |    // This will make the mint transaction apper in EtherScan.io
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(624)

[31mViolation[0m for UnrestrictedWrite in contract 'BurnableCrowdsaleToken':
    | *
    | */
  > |contract BurnableCrowdsaleToken is BurnableToken, CrowdsaleToken {
    |
    |  constructor(string _name, string _symbol, uint _initialSupply, uint _decimals, bool _mintable) public
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(757)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableCrowdsaleToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(103)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableCrowdsaleToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(104)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableCrowdsaleToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(160)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableCrowdsaleToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(161)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableCrowdsaleToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(162)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableCrowdsaleToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(178)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableCrowdsaleToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(204)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableCrowdsaleToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(222)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableCrowdsaleToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(224)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableCrowdsaleToken':
    |  function burn(uint burnAmount) public {
    |    address burner = msg.sender;
  > |    balances[burner] = balances[burner].sub(burnAmount);
    |    totalSupply_ = totalSupply_.sub(burnAmount);
    |    emit Burned(burner, burnAmount);
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(263)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableCrowdsaleToken':
    |    address burner = msg.sender;
    |    balances[burner] = balances[burner].sub(burnAmount);
  > |    totalSupply_ = totalSupply_.sub(burnAmount);
    |    emit Burned(burner, burnAmount);
    |
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(264)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableCrowdsaleToken':
    |      if (value == 0) revert();
    |
  > |      balances[msg.sender] = balances[msg.sender].sub(value);
    |
    |      // Take tokens out from circulation
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(352)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableCrowdsaleToken':
    |
    |      // Take tokens out from circulation
  > |      totalSupply_ = totalSupply_.sub(value);
    |      totalUpgraded = totalUpgraded.add(value);
    |
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(355)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableCrowdsaleToken':
    |      // Take tokens out from circulation
    |      totalSupply_ = totalSupply_.sub(value);
  > |      totalUpgraded = totalUpgraded.add(value);
    |
    |      // Upgrade agent reissues the tokens
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(356)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableCrowdsaleToken':
    |      if (getUpgradeState() == UpgradeState.Upgrading) revert();
    |
  > |      upgradeAgent = UpgradeAgent(agent);
    |
    |      // Bad interface
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(379)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableCrowdsaleToken':
    |      if (master == 0x0) revert();
    |      if (msg.sender != upgradeMaster) revert();
  > |      upgradeMaster = master;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(407)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableCrowdsaleToken':
    |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(450)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableCrowdsaleToken':
    |
    |    // We don't do interface check here as we might want to a normal wallet address to act as a release agent
  > |    releaseAgent = addr;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(500)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableCrowdsaleToken':
    |   */
    |  function setTransferAgent(address addr, bool state) onlyOwner /* inReleaseState(false) */ public {
  > |    transferAgents[addr] = state;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(508)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableCrowdsaleToken':
    |   */
    |  function setLockAddress(address addr, bool state) onlyOwner /*inReleaseState(false)*/ public {
  > |    lockAddresses[addr] = state;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(516)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableCrowdsaleToken':
    |   */
    |  function releaseTokenTransfer() public onlyReleaseAgent {
  > |    released = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(525)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableCrowdsaleToken':
    |   */
    |  function lockTokenTransfer() public onlyOwner {
  > |    released = false;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(532)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableCrowdsaleToken':
    |   */
    |  function setMintAgent(address addr, bool state) onlyOwner canMint public {
  > |    mintAgents[addr] = state;
    |    emit MintingAgentChanged(addr, state);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(635)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableCrowdsaleToken':
    |   */
    |  function releaseTokenTransfer() public onlyReleaseAgent {
  > |    mintingFinished = true;
    |    super.releaseTokenTransfer();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(723)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableCrowdsaleToken':
    | *
    | */
  > |contract BurnableCrowdsaleToken is BurnableToken, CrowdsaleToken {
    |
    |  constructor(string _name, string _symbol, uint _initialSupply, uint _decimals, bool _mintable) public
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(757)

[33mWarning[0m for LockedEther in contract 'BurnableToken':
    |
    |
  > |contract BurnableToken is StandardTokenExt {
    |
    |  // @notice An address for the transfer event where the burned tokens are transferred in a faux Transfer event
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(249)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(103)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(162)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(178)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(204)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(222)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(224)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |  function burn(uint burnAmount) public {
    |    address burner = msg.sender;
  > |    balances[burner] = balances[burner].sub(burnAmount);
    |    totalSupply_ = totalSupply_.sub(burnAmount);
    |    emit Burned(burner, burnAmount);
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(263)

[31mViolation[0m for LockedEther in contract 'CrowdsaleToken':
    | *
    | */
  > |contract CrowdsaleToken is ReleasableToken, MintableToken, UpgradeableToken {
    |
    |  /** Name and symbol were updated. */
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(666)

[33mWarning[0m for UnhandledException in contract 'CrowdsaleToken':
    |
    |      // Upgrade agent reissues the tokens
  > |      upgradeAgent.upgradeFrom(msg.sender, value);
    |      emit Upgrade(msg.sender, upgradeAgent, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(359)

[33mWarning[0m for UnhandledException in contract 'CrowdsaleToken':
    |
    |      // Bad interface
  > |      if(!upgradeAgent.isUpgradeAgent()) revert();
    |      // Make sure that token supplies match in source and target
    |      if (upgradeAgent.originalSupply() != totalSupply_) revert();
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(382)

[33mWarning[0m for UnhandledException in contract 'CrowdsaleToken':
    |      if(!upgradeAgent.isUpgradeAgent()) revert();
    |      // Make sure that token supplies match in source and target
  > |      if (upgradeAgent.originalSupply() != totalSupply_) revert();
    |
    |      emit UpgradeAgentSet(upgradeAgent);
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(384)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CrowdsaleToken':
    |
    |      // Upgrade agent reissues the tokens
  > |      upgradeAgent.upgradeFrom(msg.sender, value);
    |      emit Upgrade(msg.sender, upgradeAgent, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(359)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CrowdsaleToken':
    |
    |      // Bad interface
  > |      if(!upgradeAgent.isUpgradeAgent()) revert();
    |      // Make sure that token supplies match in source and target
    |      if (upgradeAgent.originalSupply() != totalSupply_) revert();
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(382)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CrowdsaleToken':
    |      if(!upgradeAgent.isUpgradeAgent()) revert();
    |      // Make sure that token supplies match in source and target
  > |      if (upgradeAgent.originalSupply() != totalSupply_) revert();
    |
    |      emit UpgradeAgentSet(upgradeAgent);
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(384)

[31mViolation[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |   */
    |  function mint(address receiver, uint amount) onlyMintAgent canMint public {
  > |    totalSupply_ = totalSupply_.plus(amount);
    |    balances[receiver] = balances[receiver].plus(amount);
    |
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(623)

[31mViolation[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |  function mint(address receiver, uint amount) onlyMintAgent canMint public {
    |    totalSupply_ = totalSupply_.plus(amount);
  > |    balances[receiver] = balances[receiver].plus(amount);
    |
    |    // This will make the mint transaction apper in EtherScan.io
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(624)

[31mViolation[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    | *
    | */
  > |contract CrowdsaleToken is ReleasableToken, MintableToken, UpgradeableToken {
    |
    |  /** Name and symbol were updated. */
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(666)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(103)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(104)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(160)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(161)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(162)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(178)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(204)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(222)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(224)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |      if (value == 0) revert();
    |
  > |      balances[msg.sender] = balances[msg.sender].sub(value);
    |
    |      // Take tokens out from circulation
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(352)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |
    |      // Take tokens out from circulation
  > |      totalSupply_ = totalSupply_.sub(value);
    |      totalUpgraded = totalUpgraded.add(value);
    |
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(355)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |      // Take tokens out from circulation
    |      totalSupply_ = totalSupply_.sub(value);
  > |      totalUpgraded = totalUpgraded.add(value);
    |
    |      // Upgrade agent reissues the tokens
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(356)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |      if (getUpgradeState() == UpgradeState.Upgrading) revert();
    |
  > |      upgradeAgent = UpgradeAgent(agent);
    |
    |      // Bad interface
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(379)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |      if (master == 0x0) revert();
    |      if (msg.sender != upgradeMaster) revert();
  > |      upgradeMaster = master;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(407)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(450)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |
    |    // We don't do interface check here as we might want to a normal wallet address to act as a release agent
  > |    releaseAgent = addr;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(500)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |   */
    |  function setTransferAgent(address addr, bool state) onlyOwner /* inReleaseState(false) */ public {
  > |    transferAgents[addr] = state;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(508)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |   */
    |  function setLockAddress(address addr, bool state) onlyOwner /*inReleaseState(false)*/ public {
  > |    lockAddresses[addr] = state;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(516)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |   */
    |  function releaseTokenTransfer() public onlyReleaseAgent {
  > |    released = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(525)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |   */
    |  function lockTokenTransfer() public onlyOwner {
  > |    released = false;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(532)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |   */
    |  function setMintAgent(address addr, bool state) onlyOwner canMint public {
  > |    mintAgents[addr] = state;
    |    emit MintingAgentChanged(addr, state);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(635)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    | *
    | */
  > |contract CrowdsaleToken is ReleasableToken, MintableToken, UpgradeableToken {
    |
    |  /** Name and symbol were updated. */
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(666)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |   */
    |  function releaseTokenTransfer() public onlyReleaseAgent {
  > |    mintingFinished = true;
    |    super.releaseTokenTransfer();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(723)

[33mWarning[0m for LockedEther in contract 'MintableToken':
    | *
    | */
  > |contract MintableToken is StandardTokenExt, Ownable {
    |
    |  using SafeMathLib for uint;
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(605)

[31mViolation[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function mint(address receiver, uint amount) onlyMintAgent canMint public {
  > |    totalSupply_ = totalSupply_.plus(amount);
    |    balances[receiver] = balances[receiver].plus(amount);
    |
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(623)

[31mViolation[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function mint(address receiver, uint amount) onlyMintAgent canMint public {
    |    totalSupply_ = totalSupply_.plus(amount);
  > |    balances[receiver] = balances[receiver].plus(amount);
    |
    |    // This will make the mint transaction apper in EtherScan.io
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(624)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(103)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(162)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(178)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(204)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(222)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(224)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(450)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function setMintAgent(address addr, bool state) onlyOwner canMint public {
  > |    mintAgents[addr] = state;
    |    emit MintingAgentChanged(addr, state);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(635)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(422)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(423)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(448)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(450)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(32)

[33mWarning[0m for LockedEther in contract 'SafeMathLib':
    | *
    | */
  > |library SafeMathLib {
    |
    |  function times(uint a, uint b) internal pure returns (uint) {
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(575)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(144)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(103)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(162)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(178)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(204)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(222)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(224)

[33mWarning[0m for LockedEther in contract 'StandardTokenExt':
    | *
    | */
  > |contract StandardTokenExt is StandardToken {
    |
    |  /* Interface declaration */
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(240)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardTokenExt':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(103)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardTokenExt':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(162)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardTokenExt':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(178)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardTokenExt':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(204)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardTokenExt':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(222)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardTokenExt':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xd4a293ae8bb9e0be12e99eb19d48239e8c83a136.sol(224)


