Processing contract: /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol:CrowdsaleToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol:MintableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol:ReleasableToken
Processing contract: /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol:SafeMathLib
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol:StandardTokenExt
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol:TokenVault
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol:UpgradeAgent
Processing contract: /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol:UpgradeableToken
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
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(101)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(115)

[31mViolation[0m for LockedEther in contract 'CrowdsaleToken':
    | *
    | */
  > |contract CrowdsaleToken is ReleasableToken, MintableToken, UpgradeableToken {
    |
    |  /** Name and symbol were updated. */
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(645)

[33mWarning[0m for UnhandledException in contract 'CrowdsaleToken':
    |
    |      // Upgrade agent reissues the tokens
  > |      upgradeAgent.upgradeFrom(msg.sender, value);
    |      Upgrade(msg.sender, upgradeAgent, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(329)

[33mWarning[0m for UnhandledException in contract 'CrowdsaleToken':
    |
    |      // Bad interface
  > |      if(!upgradeAgent.isUpgradeAgent()) throw;
    |      // Make sure that token supplies match in source and target
    |      if (upgradeAgent.originalSupply() != totalSupply) throw;
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(352)

[33mWarning[0m for UnhandledException in contract 'CrowdsaleToken':
    |      if(!upgradeAgent.isUpgradeAgent()) throw;
    |      // Make sure that token supplies match in source and target
  > |      if (upgradeAgent.originalSupply() != totalSupply) throw;
    |
    |      UpgradeAgentSet(upgradeAgent);
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(354)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CrowdsaleToken':
    |
    |      // Upgrade agent reissues the tokens
  > |      upgradeAgent.upgradeFrom(msg.sender, value);
    |      Upgrade(msg.sender, upgradeAgent, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(329)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CrowdsaleToken':
    |
    |      // Bad interface
  > |      if(!upgradeAgent.isUpgradeAgent()) throw;
    |      // Make sure that token supplies match in source and target
    |      if (upgradeAgent.originalSupply() != totalSupply) throw;
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(352)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CrowdsaleToken':
    |      if(!upgradeAgent.isUpgradeAgent()) throw;
    |      // Make sure that token supplies match in source and target
  > |      if (upgradeAgent.originalSupply() != totalSupply) throw;
    |
    |      UpgradeAgentSet(upgradeAgent);
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(354)

[31mViolation[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |   */
    |  function mint(address receiver, uint amount) onlyMintAgent canMint public {
  > |    totalSupply = totalSupply.plus(amount);
    |    balances[receiver] = balances[receiver].plus(amount);
    |
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(601)

[31mViolation[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |  function mint(address receiver, uint amount) onlyMintAgent canMint public {
    |    totalSupply = totalSupply.plus(amount);
  > |    balances[receiver] = balances[receiver].plus(amount);
    |
    |    // This will make the mint transaction apper in EtherScan.io
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(602)

[31mViolation[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    | *
    | */
  > |contract CrowdsaleToken is ReleasableToken, MintableToken, UpgradeableToken {
    |
    |  /** Name and symbol were updated. */
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(645)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(115)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(116)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |    // require (_value <= _allowance);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(161)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(162)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(163)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(179)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |  function increaseApproval (address _spender, uint _addedValue)
    |    returns (bool success) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(202)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(211)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(213)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |      if (value == 0) throw;
    |
  > |      balances[msg.sender] = balances[msg.sender].sub(value);
    |
    |      // Take tokens out from circulation
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(322)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |
    |      // Take tokens out from circulation
  > |      totalSupply = totalSupply.sub(value);
    |      totalUpgraded = totalUpgraded.add(value);
    |
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(325)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |      // Take tokens out from circulation
    |      totalSupply = totalSupply.sub(value);
  > |      totalUpgraded = totalUpgraded.add(value);
    |
    |      // Upgrade agent reissues the tokens
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(326)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |      if (getUpgradeState() == UpgradeState.Upgrading) throw;
    |
  > |      upgradeAgent = UpgradeAgent(agent);
    |
    |      // Bad interface
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(349)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |      if (master == 0x0) throw;
    |      if (msg.sender != upgradeMaster) throw;
  > |      upgradeMaster = master;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(377)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(435)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |
    |    // We don't do interface check here as we might want to a normal wallet address to act as a release agent
  > |    releaseAgent = addr;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(480)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |   */
    |  function setTransferAgent(address addr, bool state) onlyOwner inReleaseState(false) public {
  > |    transferAgents[addr] = state;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(487)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |   */
    |  function releaseTokenTransfer() public onlyReleaseAgent {
  > |    released = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(496)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |   */
    |  function setMintAgent(address addr, bool state) onlyOwner canMint public {
  > |    mintAgents[addr] = state;
    |    MintingAgentChanged(addr, state);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(613)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    | *
    | */
  > |contract CrowdsaleToken is ReleasableToken, MintableToken, UpgradeableToken {
    |
    |  /** Name and symbol were updated. */
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(645)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |   */
    |  function releaseTokenTransfer() public onlyReleaseAgent {
  > |    mintingFinished = true;
    |    super.releaseTokenTransfer();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(702)

[33mWarning[0m for LockedEther in contract 'MintableToken':
    | *
    | */
  > |contract MintableToken is StandardTokenExt, Ownable {
    |
    |  using SafeMathLib for uint;
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(583)

[31mViolation[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function mint(address receiver, uint amount) onlyMintAgent canMint public {
  > |    totalSupply = totalSupply.plus(amount);
    |    balances[receiver] = balances[receiver].plus(amount);
    |
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(601)

[31mViolation[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function mint(address receiver, uint amount) onlyMintAgent canMint public {
    |    totalSupply = totalSupply.plus(amount);
  > |    balances[receiver] = balances[receiver].plus(amount);
    |
    |    // This will make the mint transaction apper in EtherScan.io
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(602)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(115)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(163)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(179)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function increaseApproval (address _spender, uint _addedValue)
    |    returns (bool success) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(202)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(211)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(213)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(435)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function setMintAgent(address addr, bool state) onlyOwner canMint public {
  > |    mintAgents[addr] = state;
    |    MintingAgentChanged(addr, state);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(613)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(403)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(404)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(432)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(435)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(69)

[33mWarning[0m for LockedEther in contract 'SafeMathLib':
    | *
    | */
  > |library SafeMathLib {
    |
    |  function times(uint a, uint b) returns (uint) {
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(553)

[33mWarning[0m for MissingInputValidation in contract 'SafeMathLib':
    |library SafeMathLib {
    |
  > |  function times(uint a, uint b) returns (uint) {
    |    uint c = a * b;
    |    assert(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(555)

[33mWarning[0m for MissingInputValidation in contract 'SafeMathLib':
    |  }
    |
  > |  function minus(uint a, uint b) returns (uint) {
    |    assert(b <= a);
    |    return a - b;
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(561)

[33mWarning[0m for MissingInputValidation in contract 'SafeMathLib':
    |  }
    |
  > |  function plus(uint a, uint b) returns (uint) {
    |    uint c = a + b;
    |    assert(c>=a);
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(566)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) allowed;
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(142)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(115)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(163)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(179)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  function increaseApproval (address _spender, uint _addedValue)
    |    returns (bool success) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(202)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(211)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(213)

[33mWarning[0m for LockedEther in contract 'StandardTokenExt':
    | *
    | */
  > |contract StandardTokenExt is StandardToken {
    |
    |  /* Interface declaration */
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(229)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardTokenExt':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(115)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardTokenExt':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(163)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardTokenExt':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(179)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardTokenExt':
    |  function increaseApproval (address _spender, uint _addedValue)
    |    returns (bool success) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(202)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardTokenExt':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(211)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardTokenExt':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(213)

[33mWarning[0m for LockedEther in contract 'TokenVault':
    | *
    | */
  > |contract TokenVault is Ownable {
    |
    |  /** How many investors we have now */
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(749)

[31mViolation[0m for MissingInputValidation in contract 'TokenVault':
    |
    |  /** How much we have allocated to the investors invested */
  > |  mapping(address => uint) public balances;
    |
    |  /** How many tokens investors have claimed */
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(764)

[31mViolation[0m for MissingInputValidation in contract 'TokenVault':
    |
    |  /** How many tokens investors have claimed */
  > |  mapping(address => uint) public claimed;
    |
    |  /** When our claim freeze is over (UNIX timestamp) */
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(767)

[31mViolation[0m for MissingInputValidation in contract 'TokenVault':
    |
    |  /// @dev Add a presale participating allocation
  > |  function setInvestor(address investor, uint amount) public onlyOwner {
    |
    |    if(lockedAt > 0) {
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(834)

[33mWarning[0m for MissingInputValidation in contract 'TokenVault':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(404)

[33mWarning[0m for MissingInputValidation in contract 'TokenVault':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(432)

[33mWarning[0m for MissingInputValidation in contract 'TokenVault':
    |
    |  /** How many investors we have now */
  > |  uint public investorCount;
    |
    |  /** Sum from the spreadsheet how much tokens we should get on the contract. If the sum does not match at the time of the lock the vault is faulty and must be recreated.*/
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(752)

[33mWarning[0m for MissingInputValidation in contract 'TokenVault':
    |
    |  /** Sum from the spreadsheet how much tokens we should get on the contract. If the sum does not match at the time of the lock the vault is faulty and must be recreated.*/
  > |  uint public tokensToBeAllocated;
    |
    |  /** How many tokens investors have claimed so far */
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(755)

[33mWarning[0m for MissingInputValidation in contract 'TokenVault':
    |
    |  /** How many tokens investors have claimed so far */
  > |  uint public totalClaimed;
    |
    |  /** How many tokens our internal book keeping tells us to have at the time of lock() when all investor data has been loaded */
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(758)

[33mWarning[0m for MissingInputValidation in contract 'TokenVault':
    |
    |  /** How many tokens our internal book keeping tells us to have at the time of lock() when all investor data has been loaded */
  > |  uint public tokensAllocatedTotal;
    |
    |  /** How much we have allocated to the investors invested */
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(761)

[33mWarning[0m for MissingInputValidation in contract 'TokenVault':
    |
    |  /** When our claim freeze is over (UNIX timestamp) */
  > |  uint public freezeEndsAt;
    |
    |  /** When this vault was locked (UNIX timestamp) */
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(770)

[33mWarning[0m for MissingInputValidation in contract 'TokenVault':
    |
    |  /** When this vault was locked (UNIX timestamp) */
  > |  uint public lockedAt;
    |
    |  /** We can also define our own token, which will override the ICO one ***/
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(773)

[33mWarning[0m for MissingInputValidation in contract 'TokenVault':
    |
    |  /** We can also define our own token, which will override the ICO one ***/
  > |  CrowdsaleToken public token;
    |
    |  /** What is our current state.
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(776)

[33mWarning[0m for MissingInputValidation in contract 'TokenVault':
    |  ///      - Tokens are transferred on this vault correctly
    |  ///      - Checks are in place to prevent creating a vault that is locked with incorrect token balances.
  > |  function lock() onlyOwner {
    |
    |    if(lockedAt > 0) {
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(861)

[33mWarning[0m for MissingInputValidation in contract 'TokenVault':
    |
    |  /// @dev In the case locking failed, then allow the owner to reclaim the tokens on the contract.
  > |  function recoverFailedLock() onlyOwner {
    |    if(lockedAt > 0) {
    |      throw;
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(883)

[33mWarning[0m for MissingInputValidation in contract 'TokenVault':
    |  /// @dev Get the current balance of tokens in the vault
    |  /// @return uint How many tokens there are currently in vault
  > |  function getBalance() public constant returns (uint howManyTokensCurrentlyInVault) {
    |    return token.balanceOf(address(this));
    |  }
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(894)

[33mWarning[0m for MissingInputValidation in contract 'TokenVault':
    |
    |  /// @dev Claim N bought tokens to the investor as the msg sender
  > |  function claim() {
    |
    |    address investor = msg.sender;
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(899)

[33mWarning[0m for MissingInputValidation in contract 'TokenVault':
    |
    |  /// @dev Resolve the contract umambigious state
  > |  function getState() public constant returns(State) {
    |    if(lockedAt == 0) {
    |      return State.Loading;
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(932)

[33mWarning[0m for UnhandledException in contract 'TokenVault':
    |
    |    // Do not lock the vault if the given tokens are not on this contract
  > |    if(token.balanceOf(address(this)) != tokensAllocatedTotal) {
    |      throw;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(873)

[33mWarning[0m for UnhandledException in contract 'TokenVault':
    |
    |    // Transfer all tokens on this contract back to the owner
  > |    token.transfer(owner, token.balanceOf(address(this)));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(889)

[33mWarning[0m for UnhandledException in contract 'TokenVault':
    |  /// @return uint How many tokens there are currently in vault
    |  function getBalance() public constant returns (uint howManyTokensCurrentlyInVault) {
  > |    return token.balanceOf(address(this));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(895)

[33mWarning[0m for UnhandledException in contract 'TokenVault':
    |    totalClaimed += amount;
    |
  > |    token.transfer(investor, amount);
    |
    |    Distributed(investor, amount);
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(926)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenVault':
    |
    |    // Do not lock the vault if the given tokens are not on this contract
  > |    if(token.balanceOf(address(this)) != tokensAllocatedTotal) {
    |      throw;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(873)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenVault':
    |
    |    // Transfer all tokens on this contract back to the owner
  > |    token.transfer(owner, token.balanceOf(address(this)));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(889)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenVault':
    |  /// @return uint How many tokens there are currently in vault
    |  function getBalance() public constant returns (uint howManyTokensCurrentlyInVault) {
  > |    return token.balanceOf(address(this));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(895)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenVault':
    |    totalClaimed += amount;
    |
  > |    token.transfer(investor, amount);
    |
    |    Distributed(investor, amount);
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(926)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenVault':
    |    claimed[investor] = amount;
    |
  > |    totalClaimed += amount;
    |
    |    token.transfer(investor, amount);
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(924)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenVault':
    |    uint amount = balances[investor];
    |
  > |    claimed[investor] = amount;
    |
    |    totalClaimed += amount;
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(922)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenVault':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(435)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenVault':
    |    }
    |
  > |    balances[investor] = amount;
    |
    |    investorCount++;
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(848)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenVault':
    |    balances[investor] = amount;
    |
  > |    investorCount++;
    |
    |    tokensAllocatedTotal += amount;
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(850)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenVault':
    |    investorCount++;
    |
  > |    tokensAllocatedTotal += amount;
    |
    |    Allocated(investor, amount);
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(852)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenVault':
    |    }
    |
  > |    lockedAt = now;
    |
    |    Locked();
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(877)

[33mWarning[0m for LockedEther in contract 'UpgradeableToken':
    | * First envisioned by Golem and Lunyr projects.
    | */
  > |contract UpgradeableToken is StandardTokenExt {
    |
    |  /** Contract / person who can set the upgrade path. This can be the same as team multisig wallet, as what it is with its default value. */
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(269)

[33mWarning[0m for UnhandledException in contract 'UpgradeableToken':
    |
    |      // Upgrade agent reissues the tokens
  > |      upgradeAgent.upgradeFrom(msg.sender, value);
    |      Upgrade(msg.sender, upgradeAgent, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(329)

[33mWarning[0m for UnhandledException in contract 'UpgradeableToken':
    |
    |      // Bad interface
  > |      if(!upgradeAgent.isUpgradeAgent()) throw;
    |      // Make sure that token supplies match in source and target
    |      if (upgradeAgent.originalSupply() != totalSupply) throw;
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(352)

[33mWarning[0m for UnhandledException in contract 'UpgradeableToken':
    |      if(!upgradeAgent.isUpgradeAgent()) throw;
    |      // Make sure that token supplies match in source and target
  > |      if (upgradeAgent.originalSupply() != totalSupply) throw;
    |
    |      UpgradeAgentSet(upgradeAgent);
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(354)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UpgradeableToken':
    |
    |      // Upgrade agent reissues the tokens
  > |      upgradeAgent.upgradeFrom(msg.sender, value);
    |      Upgrade(msg.sender, upgradeAgent, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(329)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UpgradeableToken':
    |
    |      // Bad interface
  > |      if(!upgradeAgent.isUpgradeAgent()) throw;
    |      // Make sure that token supplies match in source and target
    |      if (upgradeAgent.originalSupply() != totalSupply) throw;
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(352)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UpgradeableToken':
    |      if(!upgradeAgent.isUpgradeAgent()) throw;
    |      // Make sure that token supplies match in source and target
  > |      if (upgradeAgent.originalSupply() != totalSupply) throw;
    |
    |      UpgradeAgentSet(upgradeAgent);
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(354)

[33mWarning[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(115)

[33mWarning[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(116)

[33mWarning[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |    // require (_value <= _allowance);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(161)

[33mWarning[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(162)

[33mWarning[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(163)

[33mWarning[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(179)

[33mWarning[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |  function increaseApproval (address _spender, uint _addedValue)
    |    returns (bool success) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(202)

[33mWarning[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(211)

[33mWarning[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(213)

[33mWarning[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |      if (value == 0) throw;
    |
  > |      balances[msg.sender] = balances[msg.sender].sub(value);
    |
    |      // Take tokens out from circulation
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(322)

[33mWarning[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |
    |      // Take tokens out from circulation
  > |      totalSupply = totalSupply.sub(value);
    |      totalUpgraded = totalUpgraded.add(value);
    |
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(325)

[33mWarning[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |      // Take tokens out from circulation
    |      totalSupply = totalSupply.sub(value);
  > |      totalUpgraded = totalUpgraded.add(value);
    |
    |      // Upgrade agent reissues the tokens
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(326)

[33mWarning[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |      if (getUpgradeState() == UpgradeState.Upgrading) throw;
    |
  > |      upgradeAgent = UpgradeAgent(agent);
    |
    |      // Bad interface
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(349)

[33mWarning[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |      if (master == 0x0) throw;
    |      if (msg.sender != upgradeMaster) throw;
  > |      upgradeMaster = master;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x371223de556a1274de44c3e07debfc1653e9d2a7.sol(377)


