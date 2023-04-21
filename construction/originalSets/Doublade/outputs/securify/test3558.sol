Processing contract: /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol:BurnableCrowdsaleToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol:BurnableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol:CrowdsaleToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol:MintableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol:Recoverable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol:ReleasableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol:SafeMathLib
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol:StandardTokenExt
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol:UpgradeAgent
Processing contract: /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol:UpgradeableToken
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
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(93)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(117)

[31mViolation[0m for LockedEther in contract 'BurnableCrowdsaleToken':
    | *
    | */
  > |contract BurnableCrowdsaleToken is BurnableToken, CrowdsaleToken {
    |
    |  function BurnableCrowdsaleToken(string _name, string _symbol, uint _initialSupply, uint _decimals, bool _mintable)
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(829)

[33mWarning[0m for UnhandledException in contract 'BurnableCrowdsaleToken':
    |  /// @param token Token which will we rescue to the owner from the contract
    |  function recoverTokens(ERC20Basic token) onlyOwner public {
  > |    token.transfer(owner, tokensToBeReturned(token));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(306)

[33mWarning[0m for UnhandledException in contract 'BurnableCrowdsaleToken':
    |  /// @return The amount of tokens (in smallest denominator) the contract owns
    |  function tokensToBeReturned(ERC20Basic token) public returns (uint) {
  > |    return token.balanceOf(this);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(313)

[33mWarning[0m for UnhandledException in contract 'BurnableCrowdsaleToken':
    |
    |      // Upgrade agent reissues the tokens
  > |      upgradeAgent.upgradeFrom(msg.sender, value);
    |      Upgrade(msg.sender, upgradeAgent, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(467)

[33mWarning[0m for UnhandledException in contract 'BurnableCrowdsaleToken':
    |
    |      // Bad interface
  > |      if(!upgradeAgent.isUpgradeAgent()) throw;
    |      // Make sure that token supplies match in source and target
    |      if (upgradeAgent.originalSupply() != totalSupply_) throw;
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(490)

[33mWarning[0m for UnhandledException in contract 'BurnableCrowdsaleToken':
    |      if(!upgradeAgent.isUpgradeAgent()) throw;
    |      // Make sure that token supplies match in source and target
  > |      if (upgradeAgent.originalSupply() != totalSupply_) throw;
    |
    |      UpgradeAgentSet(upgradeAgent);
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(492)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BurnableCrowdsaleToken':
    |  /// @param token Token which will we rescue to the owner from the contract
    |  function recoverTokens(ERC20Basic token) onlyOwner public {
  > |    token.transfer(owner, tokensToBeReturned(token));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(306)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BurnableCrowdsaleToken':
    |  /// @return The amount of tokens (in smallest denominator) the contract owns
    |  function tokensToBeReturned(ERC20Basic token) public returns (uint) {
  > |    return token.balanceOf(this);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(313)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BurnableCrowdsaleToken':
    |
    |      // Upgrade agent reissues the tokens
  > |      upgradeAgent.upgradeFrom(msg.sender, value);
    |      Upgrade(msg.sender, upgradeAgent, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(467)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BurnableCrowdsaleToken':
    |
    |      // Bad interface
  > |      if(!upgradeAgent.isUpgradeAgent()) throw;
    |      // Make sure that token supplies match in source and target
    |      if (upgradeAgent.originalSupply() != totalSupply_) throw;
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(490)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BurnableCrowdsaleToken':
    |      if(!upgradeAgent.isUpgradeAgent()) throw;
    |      // Make sure that token supplies match in source and target
  > |      if (upgradeAgent.originalSupply() != totalSupply_) throw;
    |
    |      UpgradeAgentSet(upgradeAgent);
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(492)

[31mViolation[0m for UnrestrictedWrite in contract 'BurnableCrowdsaleToken':
    |   */
    |  function mint(address receiver, uint amount) onlyMintAgent canMint public {
  > |    totalSupply_ = totalSupply_.plus(amount);
    |    balances[receiver] = balances[receiver].plus(amount);
    |
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(694)

[31mViolation[0m for UnrestrictedWrite in contract 'BurnableCrowdsaleToken':
    |  function mint(address receiver, uint amount) onlyMintAgent canMint public {
    |    totalSupply_ = totalSupply_.plus(amount);
  > |    balances[receiver] = balances[receiver].plus(amount);
    |
    |    // This will make the mint transaction apper in EtherScan.io
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(695)

[31mViolation[0m for UnrestrictedWrite in contract 'BurnableCrowdsaleToken':
    | *
    | */
  > |contract BurnableCrowdsaleToken is BurnableToken, CrowdsaleToken {
    |
    |  function BurnableCrowdsaleToken(string _name, string _symbol, uint _initialSupply, uint _decimals, bool _mintable)
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(829)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableCrowdsaleToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableCrowdsaleToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(118)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableCrowdsaleToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(174)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableCrowdsaleToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(175)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableCrowdsaleToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(176)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableCrowdsaleToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(192)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableCrowdsaleToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(218)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableCrowdsaleToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(236)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableCrowdsaleToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(238)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableCrowdsaleToken':
    |  function burn(uint burnAmount) {
    |    address burner = msg.sender;
  > |    balances[burner] = balances[burner].sub(burnAmount);
    |    totalSupply_ = totalSupply_.sub(burnAmount);
    |    Burned(burner, burnAmount);
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(348)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableCrowdsaleToken':
    |    address burner = msg.sender;
    |    balances[burner] = balances[burner].sub(burnAmount);
  > |    totalSupply_ = totalSupply_.sub(burnAmount);
    |    Burned(burner, burnAmount);
    |
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(349)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableCrowdsaleToken':
    |      if (value == 0) throw;
    |
  > |      balances[msg.sender] = balances[msg.sender].sub(value);
    |
    |      // Take tokens out from circulation
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(460)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableCrowdsaleToken':
    |
    |      // Take tokens out from circulation
  > |      totalSupply_ = totalSupply_.sub(value);
    |      totalUpgraded = totalUpgraded.add(value);
    |
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(463)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableCrowdsaleToken':
    |      // Take tokens out from circulation
    |      totalSupply_ = totalSupply_.sub(value);
  > |      totalUpgraded = totalUpgraded.add(value);
    |
    |      // Upgrade agent reissues the tokens
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(464)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableCrowdsaleToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(290)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableCrowdsaleToken':
    |      if (getUpgradeState() == UpgradeState.Upgrading) throw;
    |
  > |      upgradeAgent = UpgradeAgent(agent);
    |
    |      // Bad interface
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(487)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableCrowdsaleToken':
    |      if (master == 0x0) throw;
    |      if (msg.sender != upgradeMaster) throw;
  > |      upgradeMaster = master;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(515)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableCrowdsaleToken':
    |
    |    // We don't do interface check here as we might want to a normal wallet address to act as a release agent
  > |    releaseAgent = addr;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(574)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableCrowdsaleToken':
    |   */
    |  function setTransferAgent(address addr, bool state) onlyOwner inReleaseState(false) public {
  > |    transferAgents[addr] = state;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(581)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableCrowdsaleToken':
    |   */
    |  function releaseTokenTransfer() public onlyReleaseAgent {
  > |    released = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(590)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableCrowdsaleToken':
    |   */
    |  function setMintAgent(address addr, bool state) onlyOwner canMint public {
  > |    mintAgents[addr] = state;
    |    MintingAgentChanged(addr, state);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(706)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableCrowdsaleToken':
    |   */
    |  function releaseTokenTransfer() public onlyReleaseAgent {
  > |    mintingFinished = true;
    |    super.releaseTokenTransfer();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(795)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableCrowdsaleToken':
    | *
    | */
  > |contract BurnableCrowdsaleToken is BurnableToken, CrowdsaleToken {
    |
    |  function BurnableCrowdsaleToken(string _name, string _symbol, uint _initialSupply, uint _decimals, bool _mintable)
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(829)

[33mWarning[0m for LockedEther in contract 'BurnableToken':
    |
    |
  > |contract BurnableToken is StandardTokenExt {
    |
    |  // @notice An address for the transfer event where the burned tokens are transferred in a faux Transfer event
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(334)

[33mWarning[0m for UnhandledException in contract 'BurnableToken':
    |  /// @param token Token which will we rescue to the owner from the contract
    |  function recoverTokens(ERC20Basic token) onlyOwner public {
  > |    token.transfer(owner, tokensToBeReturned(token));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(306)

[33mWarning[0m for UnhandledException in contract 'BurnableToken':
    |  /// @return The amount of tokens (in smallest denominator) the contract owns
    |  function tokensToBeReturned(ERC20Basic token) public returns (uint) {
  > |    return token.balanceOf(this);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(313)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BurnableToken':
    |  /// @param token Token which will we rescue to the owner from the contract
    |  function recoverTokens(ERC20Basic token) onlyOwner public {
  > |    token.transfer(owner, tokensToBeReturned(token));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(306)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BurnableToken':
    |  /// @return The amount of tokens (in smallest denominator) the contract owns
    |  function tokensToBeReturned(ERC20Basic token) public returns (uint) {
  > |    return token.balanceOf(this);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(313)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(176)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(192)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(218)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(236)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(238)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |  function burn(uint burnAmount) {
    |    address burner = msg.sender;
  > |    balances[burner] = balances[burner].sub(burnAmount);
    |    totalSupply_ = totalSupply_.sub(burnAmount);
    |    Burned(burner, burnAmount);
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(348)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(290)

[31mViolation[0m for LockedEther in contract 'CrowdsaleToken':
    | *
    | */
  > |contract CrowdsaleToken is ReleasableToken, MintableToken, UpgradeableToken {
    |
    |  /** Name and symbol were updated. */
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(738)

[33mWarning[0m for UnhandledException in contract 'CrowdsaleToken':
    |  /// @param token Token which will we rescue to the owner from the contract
    |  function recoverTokens(ERC20Basic token) onlyOwner public {
  > |    token.transfer(owner, tokensToBeReturned(token));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(306)

[33mWarning[0m for UnhandledException in contract 'CrowdsaleToken':
    |  /// @return The amount of tokens (in smallest denominator) the contract owns
    |  function tokensToBeReturned(ERC20Basic token) public returns (uint) {
  > |    return token.balanceOf(this);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(313)

[33mWarning[0m for UnhandledException in contract 'CrowdsaleToken':
    |
    |      // Upgrade agent reissues the tokens
  > |      upgradeAgent.upgradeFrom(msg.sender, value);
    |      Upgrade(msg.sender, upgradeAgent, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(467)

[33mWarning[0m for UnhandledException in contract 'CrowdsaleToken':
    |
    |      // Bad interface
  > |      if(!upgradeAgent.isUpgradeAgent()) throw;
    |      // Make sure that token supplies match in source and target
    |      if (upgradeAgent.originalSupply() != totalSupply_) throw;
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(490)

[33mWarning[0m for UnhandledException in contract 'CrowdsaleToken':
    |      if(!upgradeAgent.isUpgradeAgent()) throw;
    |      // Make sure that token supplies match in source and target
  > |      if (upgradeAgent.originalSupply() != totalSupply_) throw;
    |
    |      UpgradeAgentSet(upgradeAgent);
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(492)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CrowdsaleToken':
    |  /// @param token Token which will we rescue to the owner from the contract
    |  function recoverTokens(ERC20Basic token) onlyOwner public {
  > |    token.transfer(owner, tokensToBeReturned(token));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(306)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CrowdsaleToken':
    |  /// @return The amount of tokens (in smallest denominator) the contract owns
    |  function tokensToBeReturned(ERC20Basic token) public returns (uint) {
  > |    return token.balanceOf(this);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(313)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CrowdsaleToken':
    |
    |      // Upgrade agent reissues the tokens
  > |      upgradeAgent.upgradeFrom(msg.sender, value);
    |      Upgrade(msg.sender, upgradeAgent, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(467)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CrowdsaleToken':
    |
    |      // Bad interface
  > |      if(!upgradeAgent.isUpgradeAgent()) throw;
    |      // Make sure that token supplies match in source and target
    |      if (upgradeAgent.originalSupply() != totalSupply_) throw;
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(490)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CrowdsaleToken':
    |      if(!upgradeAgent.isUpgradeAgent()) throw;
    |      // Make sure that token supplies match in source and target
  > |      if (upgradeAgent.originalSupply() != totalSupply_) throw;
    |
    |      UpgradeAgentSet(upgradeAgent);
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(492)

[31mViolation[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |   */
    |  function mint(address receiver, uint amount) onlyMintAgent canMint public {
  > |    totalSupply_ = totalSupply_.plus(amount);
    |    balances[receiver] = balances[receiver].plus(amount);
    |
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(694)

[31mViolation[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |  function mint(address receiver, uint amount) onlyMintAgent canMint public {
    |    totalSupply_ = totalSupply_.plus(amount);
  > |    balances[receiver] = balances[receiver].plus(amount);
    |
    |    // This will make the mint transaction apper in EtherScan.io
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(695)

[31mViolation[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    | *
    | */
  > |contract CrowdsaleToken is ReleasableToken, MintableToken, UpgradeableToken {
    |
    |  /** Name and symbol were updated. */
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(738)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(118)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(174)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(175)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(176)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(192)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(218)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(236)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(238)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |      if (value == 0) throw;
    |
  > |      balances[msg.sender] = balances[msg.sender].sub(value);
    |
    |      // Take tokens out from circulation
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(460)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |
    |      // Take tokens out from circulation
  > |      totalSupply_ = totalSupply_.sub(value);
    |      totalUpgraded = totalUpgraded.add(value);
    |
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(463)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |      // Take tokens out from circulation
    |      totalSupply_ = totalSupply_.sub(value);
  > |      totalUpgraded = totalUpgraded.add(value);
    |
    |      // Upgrade agent reissues the tokens
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(464)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(290)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |      if (getUpgradeState() == UpgradeState.Upgrading) throw;
    |
  > |      upgradeAgent = UpgradeAgent(agent);
    |
    |      // Bad interface
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(487)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |      if (master == 0x0) throw;
    |      if (msg.sender != upgradeMaster) throw;
  > |      upgradeMaster = master;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(515)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |
    |    // We don't do interface check here as we might want to a normal wallet address to act as a release agent
  > |    releaseAgent = addr;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(574)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |   */
    |  function setTransferAgent(address addr, bool state) onlyOwner inReleaseState(false) public {
  > |    transferAgents[addr] = state;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(581)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |   */
    |  function releaseTokenTransfer() public onlyReleaseAgent {
  > |    released = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(590)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |   */
    |  function setMintAgent(address addr, bool state) onlyOwner canMint public {
  > |    mintAgents[addr] = state;
    |    MintingAgentChanged(addr, state);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(706)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    | *
    | */
  > |contract CrowdsaleToken is ReleasableToken, MintableToken, UpgradeableToken {
    |
    |  /** Name and symbol were updated. */
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(738)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |   */
    |  function releaseTokenTransfer() public onlyReleaseAgent {
  > |    mintingFinished = true;
    |    super.releaseTokenTransfer();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(795)

[33mWarning[0m for LockedEther in contract 'MintableToken':
    | *
    | */
  > |contract MintableToken is StandardTokenExt {
    |
    |  using SafeMathLib for uint;
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(676)

[33mWarning[0m for UnhandledException in contract 'MintableToken':
    |  /// @param token Token which will we rescue to the owner from the contract
    |  function recoverTokens(ERC20Basic token) onlyOwner public {
  > |    token.transfer(owner, tokensToBeReturned(token));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(306)

[33mWarning[0m for UnhandledException in contract 'MintableToken':
    |  /// @return The amount of tokens (in smallest denominator) the contract owns
    |  function tokensToBeReturned(ERC20Basic token) public returns (uint) {
  > |    return token.balanceOf(this);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(313)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MintableToken':
    |  /// @param token Token which will we rescue to the owner from the contract
    |  function recoverTokens(ERC20Basic token) onlyOwner public {
  > |    token.transfer(owner, tokensToBeReturned(token));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(306)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MintableToken':
    |  /// @return The amount of tokens (in smallest denominator) the contract owns
    |  function tokensToBeReturned(ERC20Basic token) public returns (uint) {
  > |    return token.balanceOf(this);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(313)

[31mViolation[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function mint(address receiver, uint amount) onlyMintAgent canMint public {
  > |    totalSupply_ = totalSupply_.plus(amount);
    |    balances[receiver] = balances[receiver].plus(amount);
    |
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(694)

[31mViolation[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function mint(address receiver, uint amount) onlyMintAgent canMint public {
    |    totalSupply_ = totalSupply_.plus(amount);
  > |    balances[receiver] = balances[receiver].plus(amount);
    |
    |    // This will make the mint transaction apper in EtherScan.io
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(695)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(176)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(192)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(218)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(236)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(238)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(290)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function setMintAgent(address addr, bool state) onlyOwner canMint public {
  > |    mintAgents[addr] = state;
    |    MintingAgentChanged(addr, state);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(706)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(260)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(261)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(287)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(290)

[33mWarning[0m for LockedEther in contract 'Recoverable':
    |
    |
  > |contract Recoverable is Ownable {
    |
    |  /// @dev Empty constructor (for now)
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(297)

[33mWarning[0m for MissingInputValidation in contract 'Recoverable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(261)

[33mWarning[0m for MissingInputValidation in contract 'Recoverable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(287)

[33mWarning[0m for MissingInputValidation in contract 'Recoverable':
    |  /// @dev This will be invoked by the owner, when owner wants to rescue tokens
    |  /// @param token Token which will we rescue to the owner from the contract
  > |  function recoverTokens(ERC20Basic token) onlyOwner public {
    |    token.transfer(owner, tokensToBeReturned(token));
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(305)

[33mWarning[0m for UnhandledException in contract 'Recoverable':
    |  /// @param token Token which will we rescue to the owner from the contract
    |  function recoverTokens(ERC20Basic token) onlyOwner public {
  > |    token.transfer(owner, tokensToBeReturned(token));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(306)

[33mWarning[0m for UnhandledException in contract 'Recoverable':
    |  /// @return The amount of tokens (in smallest denominator) the contract owns
    |  function tokensToBeReturned(ERC20Basic token) public returns (uint) {
  > |    return token.balanceOf(this);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(313)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Recoverable':
    |  /// @param token Token which will we rescue to the owner from the contract
    |  function recoverTokens(ERC20Basic token) onlyOwner public {
  > |    token.transfer(owner, tokensToBeReturned(token));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(306)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Recoverable':
    |  /// @return The amount of tokens (in smallest denominator) the contract owns
    |  function tokensToBeReturned(ERC20Basic token) public returns (uint) {
  > |    return token.balanceOf(this);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(313)

[33mWarning[0m for UnrestrictedWrite in contract 'Recoverable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(290)

[33mWarning[0m for LockedEther in contract 'ReleasableToken':
    | * Define interface for releasing the token transfer after a successful crowdsale.
    | */
  > |contract ReleasableToken is StandardTokenExt {
    |
    |  /* The finalizer contract that allows unlift the transfer limits on this token */
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(540)

[33mWarning[0m for UnhandledException in contract 'ReleasableToken':
    |  /// @param token Token which will we rescue to the owner from the contract
    |  function recoverTokens(ERC20Basic token) onlyOwner public {
  > |    token.transfer(owner, tokensToBeReturned(token));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(306)

[33mWarning[0m for UnhandledException in contract 'ReleasableToken':
    |  /// @return The amount of tokens (in smallest denominator) the contract owns
    |  function tokensToBeReturned(ERC20Basic token) public returns (uint) {
  > |    return token.balanceOf(this);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(313)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ReleasableToken':
    |  /// @param token Token which will we rescue to the owner from the contract
    |  function recoverTokens(ERC20Basic token) onlyOwner public {
  > |    token.transfer(owner, tokensToBeReturned(token));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(306)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ReleasableToken':
    |  /// @return The amount of tokens (in smallest denominator) the contract owns
    |  function tokensToBeReturned(ERC20Basic token) public returns (uint) {
  > |    return token.balanceOf(this);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(313)

[33mWarning[0m for UnrestrictedWrite in contract 'ReleasableToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'ReleasableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(176)

[33mWarning[0m for UnrestrictedWrite in contract 'ReleasableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(192)

[33mWarning[0m for UnrestrictedWrite in contract 'ReleasableToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(218)

[33mWarning[0m for UnrestrictedWrite in contract 'ReleasableToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(236)

[33mWarning[0m for UnrestrictedWrite in contract 'ReleasableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(238)

[33mWarning[0m for UnrestrictedWrite in contract 'ReleasableToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(290)

[33mWarning[0m for UnrestrictedWrite in contract 'ReleasableToken':
    |
    |    // We don't do interface check here as we might want to a normal wallet address to act as a release agent
  > |    releaseAgent = addr;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(574)

[33mWarning[0m for UnrestrictedWrite in contract 'ReleasableToken':
    |   */
    |  function setTransferAgent(address addr, bool state) onlyOwner inReleaseState(false) public {
  > |    transferAgents[addr] = state;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(581)

[33mWarning[0m for UnrestrictedWrite in contract 'ReleasableToken':
    |   */
    |  function releaseTokenTransfer() public onlyReleaseAgent {
  > |    released = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(590)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(45)

[33mWarning[0m for LockedEther in contract 'SafeMathLib':
    | *
    | */
  > |library SafeMathLib {
    |
    |  function times(uint a, uint b) returns (uint) {
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(646)

[33mWarning[0m for MissingInputValidation in contract 'SafeMathLib':
    |library SafeMathLib {
    |
  > |  function times(uint a, uint b) returns (uint) {
    |    uint c = a * b;
    |    assert(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(648)

[33mWarning[0m for MissingInputValidation in contract 'SafeMathLib':
    |  }
    |
  > |  function minus(uint a, uint b) returns (uint) {
    |    assert(b <= a);
    |    return a - b;
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(654)

[33mWarning[0m for MissingInputValidation in contract 'SafeMathLib':
    |  }
    |
  > |  function plus(uint a, uint b) returns (uint) {
    |    uint c = a + b;
    |    assert(c>=a);
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(659)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(158)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(176)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(192)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(218)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(236)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(238)

[33mWarning[0m for LockedEther in contract 'StandardTokenExt':
    | *
    | */
  > |contract StandardTokenExt is StandardToken, Recoverable {
    |
    |  /* Interface declaration */
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(325)

[33mWarning[0m for UnhandledException in contract 'StandardTokenExt':
    |  /// @param token Token which will we rescue to the owner from the contract
    |  function recoverTokens(ERC20Basic token) onlyOwner public {
  > |    token.transfer(owner, tokensToBeReturned(token));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(306)

[33mWarning[0m for UnhandledException in contract 'StandardTokenExt':
    |  /// @return The amount of tokens (in smallest denominator) the contract owns
    |  function tokensToBeReturned(ERC20Basic token) public returns (uint) {
  > |    return token.balanceOf(this);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(313)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StandardTokenExt':
    |  /// @param token Token which will we rescue to the owner from the contract
    |  function recoverTokens(ERC20Basic token) onlyOwner public {
  > |    token.transfer(owner, tokensToBeReturned(token));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(306)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StandardTokenExt':
    |  /// @return The amount of tokens (in smallest denominator) the contract owns
    |  function tokensToBeReturned(ERC20Basic token) public returns (uint) {
  > |    return token.balanceOf(this);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(313)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardTokenExt':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardTokenExt':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(176)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardTokenExt':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(192)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardTokenExt':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(218)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardTokenExt':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(236)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardTokenExt':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(238)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardTokenExt':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(290)

[33mWarning[0m for LockedEther in contract 'UpgradeableToken':
    | * First envisioned by Golem and Lunyr projects.
    | */
  > |contract UpgradeableToken is StandardTokenExt {
    |
    |  /** Contract / person who can set the upgrade path. This can be the same as team multisig wallet, as what it is with its default value. */
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(407)

[33mWarning[0m for UnhandledException in contract 'UpgradeableToken':
    |  /// @param token Token which will we rescue to the owner from the contract
    |  function recoverTokens(ERC20Basic token) onlyOwner public {
  > |    token.transfer(owner, tokensToBeReturned(token));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(306)

[33mWarning[0m for UnhandledException in contract 'UpgradeableToken':
    |  /// @return The amount of tokens (in smallest denominator) the contract owns
    |  function tokensToBeReturned(ERC20Basic token) public returns (uint) {
  > |    return token.balanceOf(this);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(313)

[33mWarning[0m for UnhandledException in contract 'UpgradeableToken':
    |
    |      // Upgrade agent reissues the tokens
  > |      upgradeAgent.upgradeFrom(msg.sender, value);
    |      Upgrade(msg.sender, upgradeAgent, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(467)

[33mWarning[0m for UnhandledException in contract 'UpgradeableToken':
    |
    |      // Bad interface
  > |      if(!upgradeAgent.isUpgradeAgent()) throw;
    |      // Make sure that token supplies match in source and target
    |      if (upgradeAgent.originalSupply() != totalSupply_) throw;
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(490)

[33mWarning[0m for UnhandledException in contract 'UpgradeableToken':
    |      if(!upgradeAgent.isUpgradeAgent()) throw;
    |      // Make sure that token supplies match in source and target
  > |      if (upgradeAgent.originalSupply() != totalSupply_) throw;
    |
    |      UpgradeAgentSet(upgradeAgent);
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(492)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UpgradeableToken':
    |  /// @param token Token which will we rescue to the owner from the contract
    |  function recoverTokens(ERC20Basic token) onlyOwner public {
  > |    token.transfer(owner, tokensToBeReturned(token));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(306)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UpgradeableToken':
    |  /// @return The amount of tokens (in smallest denominator) the contract owns
    |  function tokensToBeReturned(ERC20Basic token) public returns (uint) {
  > |    return token.balanceOf(this);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(313)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UpgradeableToken':
    |
    |      // Upgrade agent reissues the tokens
  > |      upgradeAgent.upgradeFrom(msg.sender, value);
    |      Upgrade(msg.sender, upgradeAgent, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(467)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UpgradeableToken':
    |
    |      // Bad interface
  > |      if(!upgradeAgent.isUpgradeAgent()) throw;
    |      // Make sure that token supplies match in source and target
    |      if (upgradeAgent.originalSupply() != totalSupply_) throw;
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(490)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UpgradeableToken':
    |      if(!upgradeAgent.isUpgradeAgent()) throw;
    |      // Make sure that token supplies match in source and target
  > |      if (upgradeAgent.originalSupply() != totalSupply_) throw;
    |
    |      UpgradeAgentSet(upgradeAgent);
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(492)

[33mWarning[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(118)

[33mWarning[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(174)

[33mWarning[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(175)

[33mWarning[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(176)

[33mWarning[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(192)

[33mWarning[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(218)

[33mWarning[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(236)

[33mWarning[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(238)

[33mWarning[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |      if (value == 0) throw;
    |
  > |      balances[msg.sender] = balances[msg.sender].sub(value);
    |
    |      // Take tokens out from circulation
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(460)

[33mWarning[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |
    |      // Take tokens out from circulation
  > |      totalSupply_ = totalSupply_.sub(value);
    |      totalUpgraded = totalUpgraded.add(value);
    |
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(463)

[33mWarning[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |      // Take tokens out from circulation
    |      totalSupply_ = totalSupply_.sub(value);
  > |      totalUpgraded = totalUpgraded.add(value);
    |
    |      // Upgrade agent reissues the tokens
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(464)

[33mWarning[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(290)

[33mWarning[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |      if (getUpgradeState() == UpgradeState.Upgrading) throw;
    |
  > |      upgradeAgent = UpgradeAgent(agent);
    |
    |      // Bad interface
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(487)

[33mWarning[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |      if (master == 0x0) throw;
    |      if (msg.sender != upgradeMaster) throw;
  > |      upgradeMaster = master;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe91df2bb9bccd18c45f01843cab88768d64f2d32.sol(515)


