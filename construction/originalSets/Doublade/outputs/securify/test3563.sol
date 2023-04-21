Processing contract: /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol:CrowdsaleToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol:MintableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol:PPNToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol:ReleasableToken
Processing contract: /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol:SafeMathLib
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol:StandardTokenExt
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol:UpgradeAgent
Processing contract: /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol:UpgradeableToken
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
  at /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol(135)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |   */
    |  function transfer(address _to, uint256 _value) public returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol(146)

[31mViolation[0m for LockedEther in contract 'CrowdsaleToken':
    | *
    | */
  > |contract CrowdsaleToken is ReleasableToken, MintableToken, UpgradeableToken {
    |
    |  /** Name and symbol were updated. */
  at /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol(528)

[33mWarning[0m for UnhandledException in contract 'CrowdsaleToken':
    |
    |    // Upgrade agent reissues the tokens
  > |    upgradeAgent.upgradeFrom(msg.sender, value);
    |    Upgrade(msg.sender, upgradeAgent, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol(458)

[33mWarning[0m for UnhandledException in contract 'CrowdsaleToken':
    |
    |    // Bad interface
  > |    require(upgradeAgent.isUpgradeAgent());
    |    // Make sure that token supplies match in source and target
    |    require(upgradeAgent.originalSupply() == totalSupply);
  at /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol(612)

[33mWarning[0m for UnhandledException in contract 'CrowdsaleToken':
    |    require(upgradeAgent.isUpgradeAgent());
    |    // Make sure that token supplies match in source and target
  > |    require(upgradeAgent.originalSupply() == totalSupply);
    |
    |    UpgradeAgentSet(upgradeAgent);
  at /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol(614)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CrowdsaleToken':
    |
    |    // Upgrade agent reissues the tokens
  > |    upgradeAgent.upgradeFrom(msg.sender, value);
    |    Upgrade(msg.sender, upgradeAgent, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol(458)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CrowdsaleToken':
    |
    |    // Bad interface
  > |    require(upgradeAgent.isUpgradeAgent());
    |    // Make sure that token supplies match in source and target
    |    require(upgradeAgent.originalSupply() == totalSupply);
  at /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol(612)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CrowdsaleToken':
    |    require(upgradeAgent.isUpgradeAgent());
    |    // Make sure that token supplies match in source and target
  > |    require(upgradeAgent.originalSupply() == totalSupply);
    |
    |    UpgradeAgentSet(upgradeAgent);
  at /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol(614)

[31mViolation[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |   */
    |  function mint(address receiver, uint amount) onlyMintAgent canMint public {
  > |    totalSupply = totalSupply.plus(amount);
    |    balances[receiver] = balances[receiver].plus(amount);
    |
  at /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol(345)

[31mViolation[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |  function mint(address receiver, uint amount) onlyMintAgent canMint public {
    |    totalSupply = totalSupply.plus(amount);
  > |    balances[receiver] = balances[receiver].plus(amount);
    |
    |    // This will make the mint transaction apper in EtherScan.io
  at /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol(346)

[31mViolation[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    | *
    | */
  > |contract CrowdsaleToken is ReleasableToken, MintableToken, UpgradeableToken {
    |
    |  /** Name and symbol were updated. */
  at /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol(528)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |   */
    |  function transfer(address _to, uint256 _value) public returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol(146)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |  function transfer(address _to, uint256 _value) public returns (bool) {
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |    require(_value <= _allowance);
    |
  > |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol(188)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |
    |    balances[_to] = balances[_to].add(_value);
  > |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol(189)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol(190)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol(208)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |    require(value != 0);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(value);
    |
    |    // Take tokens out from circulation
  at /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol(451)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |
    |    // Take tokens out from circulation
  > |    totalSupply = totalSupply.sub(value);
    |    totalUpgraded = totalUpgraded.add(value);
    |
  at /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol(454)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |    // Take tokens out from circulation
    |    totalSupply = totalSupply.sub(value);
  > |    totalUpgraded = totalUpgraded.add(value);
    |
    |    // Upgrade agent reissues the tokens
  at /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol(455)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol(100)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |
    |    // We don't do interface check here as we might want to a normal wallet address to act as a release agent
  > |    releaseAgent = addr;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol(276)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |   */
    |  function setTransferAgent(address addr, bool state) onlyOwner inReleaseState(false) public {
  > |    transferAgents[addr] = state;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol(283)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |   */
    |  function releaseTokenTransfer() public onlyReleaseAgent {
  > |    released = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol(292)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |   */
    |  function setMintAgent(address addr, bool state) onlyOwner canMint public {
  > |    mintAgents[addr] = state;
    |    MintingAgentChanged(addr, state);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol(357)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |    require(master != 0x0);
    |    require(msg.sender == upgradeMaster);
  > |    upgradeMaster = master;
    |  }
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol(504)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    | *
    | */
  > |contract CrowdsaleToken is ReleasableToken, MintableToken, UpgradeableToken {
    |
    |  /** Name and symbol were updated. */
  at /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol(528)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |   */
    |  function releaseTokenTransfer() public onlyReleaseAgent {
  > |    mintingFinished = true;
    |    super.releaseTokenTransfer();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol(583)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |    require(getUpgradeState() != UpgradeState.Upgrading);
    |
  > |    upgradeAgent = UpgradeAgent(agent);
    |
    |    // Bad interface
  at /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol(609)

[33mWarning[0m for LockedEther in contract 'MintableToken':
    | *
    | */
  > |contract MintableToken is StandardTokenExt, Ownable {
    |
    |  using SafeMathLib for uint;
  at /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol(327)

[31mViolation[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function mint(address receiver, uint amount) onlyMintAgent canMint public {
  > |    totalSupply = totalSupply.plus(amount);
    |    balances[receiver] = balances[receiver].plus(amount);
    |
  at /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol(345)

[31mViolation[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function mint(address receiver, uint amount) onlyMintAgent canMint public {
    |    totalSupply = totalSupply.plus(amount);
  > |    balances[receiver] = balances[receiver].plus(amount);
    |
    |    // This will make the mint transaction apper in EtherScan.io
  at /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol(346)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function transfer(address _to, uint256 _value) public returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol(146)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol(190)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol(208)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol(100)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function setMintAgent(address addr, bool state) onlyOwner canMint public {
  > |    mintAgents[addr] = state;
    |    MintingAgentChanged(addr, state);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol(357)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol(72)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol(73)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol(98)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol(100)

[31mViolation[0m for LockedEther in contract 'PPNToken':
    |}
    |
  > |contract PPNToken is CrowdsaleToken {
    |  uint public maximumSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol(637)

[33mWarning[0m for UnhandledException in contract 'PPNToken':
    |
    |    // Upgrade agent reissues the tokens
  > |    upgradeAgent.upgradeFrom(msg.sender, value);
    |    Upgrade(msg.sender, upgradeAgent, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol(458)

[33mWarning[0m for UnhandledException in contract 'PPNToken':
    |
    |    // Bad interface
  > |    require(upgradeAgent.isUpgradeAgent());
    |    // Make sure that token supplies match in source and target
    |    require(upgradeAgent.originalSupply() == totalSupply);
  at /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol(612)

[33mWarning[0m for UnhandledException in contract 'PPNToken':
    |    require(upgradeAgent.isUpgradeAgent());
    |    // Make sure that token supplies match in source and target
  > |    require(upgradeAgent.originalSupply() == totalSupply);
    |
    |    UpgradeAgentSet(upgradeAgent);
  at /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol(614)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PPNToken':
    |
    |    // Upgrade agent reissues the tokens
  > |    upgradeAgent.upgradeFrom(msg.sender, value);
    |    Upgrade(msg.sender, upgradeAgent, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol(458)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PPNToken':
    |
    |    // Bad interface
  > |    require(upgradeAgent.isUpgradeAgent());
    |    // Make sure that token supplies match in source and target
    |    require(upgradeAgent.originalSupply() == totalSupply);
  at /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol(612)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PPNToken':
    |    require(upgradeAgent.isUpgradeAgent());
    |    // Make sure that token supplies match in source and target
  > |    require(upgradeAgent.originalSupply() == totalSupply);
    |
    |    UpgradeAgentSet(upgradeAgent);
  at /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol(614)

[31mViolation[0m for UnrestrictedWrite in contract 'PPNToken':
    |   */
    |  function mint(address receiver, uint amount) onlyMintAgent canMint public {
  > |    totalSupply = totalSupply.plus(amount);
    |    balances[receiver] = balances[receiver].plus(amount);
    |
  at /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol(345)

[31mViolation[0m for UnrestrictedWrite in contract 'PPNToken':
    |  function mint(address receiver, uint amount) onlyMintAgent canMint public {
    |    totalSupply = totalSupply.plus(amount);
  > |    balances[receiver] = balances[receiver].plus(amount);
    |
    |    // This will make the mint transaction apper in EtherScan.io
  at /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol(346)

[31mViolation[0m for UnrestrictedWrite in contract 'PPNToken':
    |}
    |
  > |contract PPNToken is CrowdsaleToken {
    |  uint public maximumSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol(637)

[33mWarning[0m for UnrestrictedWrite in contract 'PPNToken':
    |   */
    |  function transfer(address _to, uint256 _value) public returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol(146)

[33mWarning[0m for UnrestrictedWrite in contract 'PPNToken':
    |  function transfer(address _to, uint256 _value) public returns (bool) {
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'PPNToken':
    |    require(_value <= _allowance);
    |
  > |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol(188)

[33mWarning[0m for UnrestrictedWrite in contract 'PPNToken':
    |
    |    balances[_to] = balances[_to].add(_value);
  > |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol(189)

[33mWarning[0m for UnrestrictedWrite in contract 'PPNToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol(190)

[33mWarning[0m for UnrestrictedWrite in contract 'PPNToken':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol(208)

[33mWarning[0m for UnrestrictedWrite in contract 'PPNToken':
    |    require(value != 0);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(value);
    |
    |    // Take tokens out from circulation
  at /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol(451)

[33mWarning[0m for UnrestrictedWrite in contract 'PPNToken':
    |
    |    // Take tokens out from circulation
  > |    totalSupply = totalSupply.sub(value);
    |    totalUpgraded = totalUpgraded.add(value);
    |
  at /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol(454)

[33mWarning[0m for UnrestrictedWrite in contract 'PPNToken':
    |    // Take tokens out from circulation
    |    totalSupply = totalSupply.sub(value);
  > |    totalUpgraded = totalUpgraded.add(value);
    |
    |    // Upgrade agent reissues the tokens
  at /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol(455)

[33mWarning[0m for UnrestrictedWrite in contract 'PPNToken':
    |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol(100)

[33mWarning[0m for UnrestrictedWrite in contract 'PPNToken':
    |
    |    // We don't do interface check here as we might want to a normal wallet address to act as a release agent
  > |    releaseAgent = addr;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol(276)

[33mWarning[0m for UnrestrictedWrite in contract 'PPNToken':
    |   */
    |  function setTransferAgent(address addr, bool state) onlyOwner inReleaseState(false) public {
  > |    transferAgents[addr] = state;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol(283)

[33mWarning[0m for UnrestrictedWrite in contract 'PPNToken':
    |   */
    |  function releaseTokenTransfer() public onlyReleaseAgent {
  > |    released = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol(292)

[33mWarning[0m for UnrestrictedWrite in contract 'PPNToken':
    |   */
    |  function setMintAgent(address addr, bool state) onlyOwner canMint public {
  > |    mintAgents[addr] = state;
    |    MintingAgentChanged(addr, state);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol(357)

[33mWarning[0m for UnrestrictedWrite in contract 'PPNToken':
    |    require(master != 0x0);
    |    require(msg.sender == upgradeMaster);
  > |    upgradeMaster = master;
    |  }
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol(504)

[33mWarning[0m for UnrestrictedWrite in contract 'PPNToken':
    |   */
    |  function releaseTokenTransfer() public onlyReleaseAgent {
  > |    mintingFinished = true;
    |    super.releaseTokenTransfer();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol(583)

[33mWarning[0m for UnrestrictedWrite in contract 'PPNToken':
    |    require(getUpgradeState() != UpgradeState.Upgrading);
    |
  > |    upgradeAgent = UpgradeAgent(agent);
    |
    |    // Bad interface
  at /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol(609)

[33mWarning[0m for UnrestrictedWrite in contract 'PPNToken':
    |}
    |
  > |contract PPNToken is CrowdsaleToken {
    |  uint public maximumSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol(637)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol(8)

[33mWarning[0m for LockedEther in contract 'SafeMathLib':
    | *
    | */
  > |library SafeMathLib {
    |
    |  function times(uint a, uint b) internal pure returns (uint) {
  at /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol(45)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) allowed;
  at /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol(171)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function transfer(address _to, uint256 _value) public returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol(146)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol(190)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol(208)

[33mWarning[0m for LockedEther in contract 'StandardTokenExt':
    | *
    | */
  > |contract StandardTokenExt is StandardToken {
    |
    |  /* Interface declaration */
  at /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol(232)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardTokenExt':
    |   */
    |  function transfer(address _to, uint256 _value) public returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol(146)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardTokenExt':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol(190)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardTokenExt':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol(208)

[33mWarning[0m for LockedEther in contract 'UpgradeableToken':
    | * First envisioned by Golem and Lunyr projects.
    | */
  > |contract UpgradeableToken is StandardTokenExt {
    |
    |  /** Contract / person who can set the upgrade path. This can be the same as team multisig wallet, as what it is with its default value. */
  at /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol(400)

[33mWarning[0m for UnhandledException in contract 'UpgradeableToken':
    |
    |    // Upgrade agent reissues the tokens
  > |    upgradeAgent.upgradeFrom(msg.sender, value);
    |    Upgrade(msg.sender, upgradeAgent, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol(458)

[33mWarning[0m for UnhandledException in contract 'UpgradeableToken':
    |
    |    // Bad interface
  > |    require(upgradeAgent.isUpgradeAgent());
    |    // Make sure that token supplies match in source and target
    |    require(upgradeAgent.originalSupply() == totalSupply);
  at /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol(479)

[33mWarning[0m for UnhandledException in contract 'UpgradeableToken':
    |    require(upgradeAgent.isUpgradeAgent());
    |    // Make sure that token supplies match in source and target
  > |    require(upgradeAgent.originalSupply() == totalSupply);
    |
    |    UpgradeAgentSet(upgradeAgent);
  at /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol(481)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UpgradeableToken':
    |
    |    // Upgrade agent reissues the tokens
  > |    upgradeAgent.upgradeFrom(msg.sender, value);
    |    Upgrade(msg.sender, upgradeAgent, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol(458)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UpgradeableToken':
    |
    |    // Bad interface
  > |    require(upgradeAgent.isUpgradeAgent());
    |    // Make sure that token supplies match in source and target
    |    require(upgradeAgent.originalSupply() == totalSupply);
  at /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol(479)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UpgradeableToken':
    |    require(upgradeAgent.isUpgradeAgent());
    |    // Make sure that token supplies match in source and target
  > |    require(upgradeAgent.originalSupply() == totalSupply);
    |
    |    UpgradeAgentSet(upgradeAgent);
  at /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol(481)

[33mWarning[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |   */
    |  function transfer(address _to, uint256 _value) public returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol(146)

[33mWarning[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |  function transfer(address _to, uint256 _value) public returns (bool) {
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |    require(_value <= _allowance);
    |
  > |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol(188)

[33mWarning[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |
    |    balances[_to] = balances[_to].add(_value);
  > |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol(189)

[33mWarning[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol(190)

[33mWarning[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol(208)

[33mWarning[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |    require(value != 0);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(value);
    |
    |    // Take tokens out from circulation
  at /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol(451)

[33mWarning[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |
    |    // Take tokens out from circulation
  > |    totalSupply = totalSupply.sub(value);
    |    totalUpgraded = totalUpgraded.add(value);
    |
  at /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol(454)

[33mWarning[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |    // Take tokens out from circulation
    |    totalSupply = totalSupply.sub(value);
  > |    totalUpgraded = totalUpgraded.add(value);
    |
    |    // Upgrade agent reissues the tokens
  at /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol(455)

[33mWarning[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |    require(getUpgradeState() != UpgradeState.Upgrading);
    |
  > |    upgradeAgent = UpgradeAgent(agent);
    |
    |    // Bad interface
  at /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol(476)

[33mWarning[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |    require(master != 0x0);
    |    require(msg.sender == upgradeMaster);
  > |    upgradeMaster = master;
    |  }
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xe97d24ff34b98c70a18ffd62012eaae932fffa02.sol(504)


