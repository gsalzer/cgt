Processing contract: /home/jiaming/mavs_srcs/contract@0xc16bc517fe6b15903d6cbf02ffc447291477a43a.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc16bc517fe6b15903d6cbf02ffc447291477a43a.sol:Blacklisted
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc16bc517fe6b15903d6cbf02ffc447291477a43a.sol:BurnableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc16bc517fe6b15903d6cbf02ffc447291477a43a.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xc16bc517fe6b15903d6cbf02ffc447291477a43a.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xc16bc517fe6b15903d6cbf02ffc447291477a43a.sol:HUMToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc16bc517fe6b15903d6cbf02ffc447291477a43a.sol:MintableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc16bc517fe6b15903d6cbf02ffc447291477a43a.sol:MultiOwnable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc16bc517fe6b15903d6cbf02ffc447291477a43a.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc16bc517fe6b15903d6cbf02ffc447291477a43a.sol:StandardToken
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
  at /home/jiaming/mavs_srcs/contract@0xc16bc517fe6b15903d6cbf02ffc447291477a43a.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc16bc517fe6b15903d6cbf02ffc447291477a43a.sol(89)

[33mWarning[0m for LockedEther in contract 'Blacklisted':
    | * @dev Basic version of StandardToken, with no allowances.
    | */
  > |contract Blacklisted is MultiOwnable {
    |
    |  mapping(address => bool) public blacklist;
  at /home/jiaming/mavs_srcs/contract@0xc16bc517fe6b15903d6cbf02ffc447291477a43a.sol(288)

[31mViolation[0m for MissingInputValidation in contract 'Blacklisted':
    |contract MultiOwnable {
    |  address public root;
  > |  mapping (address => address) public owners; // owner => parent of owner
    |  
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xc16bc517fe6b15903d6cbf02ffc447291477a43a.sol(216)

[31mViolation[0m for MissingInputValidation in contract 'Blacklisted':
    |    * @dev Deleting owners
    |    */
  > |  function deleteOwner(address _owner) onlyOwner external returns (bool) {
    |    require(owners[_owner] == msg.sender || (owners[_owner] != 0 && msg.sender == root));
    |    owners[_owner] = 0;
  at /home/jiaming/mavs_srcs/contract@0xc16bc517fe6b15903d6cbf02ffc447291477a43a.sol(247)

[31mViolation[0m for MissingInputValidation in contract 'Blacklisted':
    |contract Blacklisted is MultiOwnable {
    |
  > |  mapping(address => bool) public blacklist;
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xc16bc517fe6b15903d6cbf02ffc447291477a43a.sol(290)

[31mViolation[0m for MissingInputValidation in contract 'Blacklisted':
    |   * @param _villain Address to be added to the blacklist
    |   */
  > |  function addToBlacklist(address _villain) external onlyOwner {
    |    blacklist[_villain] = true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc16bc517fe6b15903d6cbf02ffc447291477a43a.sol(304)

[31mViolation[0m for MissingInputValidation in contract 'Blacklisted':
    |   * @param _villain Address to be removed to the blacklist
    |   */
  > |  function removeFromBlacklist(address _villain) external onlyOwner {
    |    blacklist[_villain] = false;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc16bc517fe6b15903d6cbf02ffc447291477a43a.sol(322)

[33mWarning[0m for MissingInputValidation in contract 'Blacklisted':
    | */
    |contract MultiOwnable {
  > |  address public root;
    |  mapping (address => address) public owners; // owner => parent of owner
    |  
  at /home/jiaming/mavs_srcs/contract@0xc16bc517fe6b15903d6cbf02ffc447291477a43a.sol(215)

[33mWarning[0m for MissingInputValidation in contract 'Blacklisted':
    |  * @dev Adding new owners
    |  */
  > |  function newOwner(address _owner) onlyOwner external returns (bool) {
    |    require(_owner != 0);
    |    owners[_owner] = msg.sender;
  at /home/jiaming/mavs_srcs/contract@0xc16bc517fe6b15903d6cbf02ffc447291477a43a.sol(238)

[31mViolation[0m for UnrestrictedWrite in contract 'Blacklisted':
    |  function newOwner(address _owner) onlyOwner external returns (bool) {
    |    require(_owner != 0);
  > |    owners[_owner] = msg.sender;
    |    return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc16bc517fe6b15903d6cbf02ffc447291477a43a.sol(240)

[31mViolation[0m for UnrestrictedWrite in contract 'Blacklisted':
    |   */
    |  function addToBlacklist(address _villain) external onlyOwner {
  > |    blacklist[_villain] = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc16bc517fe6b15903d6cbf02ffc447291477a43a.sol(305)

[31mViolation[0m for UnrestrictedWrite in contract 'Blacklisted':
    |  function addManyToBlacklist(address[] _villains) external onlyOwner {
    |    for (uint256 i = 0; i < _villains.length; i++) {
  > |      blacklist[_villains[i]] = true;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc16bc517fe6b15903d6cbf02ffc447291477a43a.sol(314)

[31mViolation[0m for UnrestrictedWrite in contract 'Blacklisted':
    |   */
    |  function removeFromBlacklist(address _villain) external onlyOwner {
  > |    blacklist[_villain] = false;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xc16bc517fe6b15903d6cbf02ffc447291477a43a.sol(323)

[33mWarning[0m for UnrestrictedWrite in contract 'Blacklisted':
    |  function deleteOwner(address _owner) onlyOwner external returns (bool) {
    |    require(owners[_owner] == msg.sender || (owners[_owner] != 0 && msg.sender == root));
  > |    owners[_owner] = 0;
    |    return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc16bc517fe6b15903d6cbf02ffc447291477a43a.sol(249)

[33mWarning[0m for LockedEther in contract 'BurnableToken':
    | * @dev Token that can be irreversibly burned (destroyed).
    | */
  > |contract BurnableToken is BasicToken {
    |
    |  event Burn(address indexed burner, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0xc16bc517fe6b15903d6cbf02ffc447291477a43a.sol(259)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc16bc517fe6b15903d6cbf02ffc447291477a43a.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc16bc517fe6b15903d6cbf02ffc447291477a43a.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    // sender's balance is greater than the totalSupply, which *should* be an assertion failure
    |
  > |    balances[_who] = balances[_who].sub(_value);
    |    totalSupply_ = totalSupply_.sub(_value);
    |    emit Burn(_who, _value);
  at /home/jiaming/mavs_srcs/contract@0xc16bc517fe6b15903d6cbf02ffc447291477a43a.sol(276)

[31mViolation[0m for LockedEther in contract 'HUMToken':
    | * `StandardToken` functions.
    | */
  > |contract HUMToken is MintableToken, BurnableToken, Blacklisted {
    |
    |  string public constant name = "HUMToken"; // solium-disable-line uppercase
  at /home/jiaming/mavs_srcs/contract@0xc16bc517fe6b15903d6cbf02ffc447291477a43a.sol(378)

[31mViolation[0m for UnrestrictedWrite in contract 'HUMToken':
    |  function newOwner(address _owner) onlyOwner external returns (bool) {
    |    require(_owner != 0);
  > |    owners[_owner] = msg.sender;
    |    return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc16bc517fe6b15903d6cbf02ffc447291477a43a.sol(240)

[31mViolation[0m for UnrestrictedWrite in contract 'HUMToken':
    |   */
    |  function addToBlacklist(address _villain) external onlyOwner {
  > |    blacklist[_villain] = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc16bc517fe6b15903d6cbf02ffc447291477a43a.sol(305)

[31mViolation[0m for UnrestrictedWrite in contract 'HUMToken':
    |  function addManyToBlacklist(address[] _villains) external onlyOwner {
    |    for (uint256 i = 0; i < _villains.length; i++) {
  > |      blacklist[_villains[i]] = true;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc16bc517fe6b15903d6cbf02ffc447291477a43a.sol(314)

[31mViolation[0m for UnrestrictedWrite in contract 'HUMToken':
    |   */
    |  function removeFromBlacklist(address _villain) external onlyOwner {
  > |    blacklist[_villain] = false;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xc16bc517fe6b15903d6cbf02ffc447291477a43a.sol(323)

[31mViolation[0m for UnrestrictedWrite in contract 'HUMToken':
    |   */
    |  function finishMinting() onlyOwner canMint public returns (bool) {
  > |    mintingFinished = true;
    |    emit MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc16bc517fe6b15903d6cbf02ffc447291477a43a.sol(365)

[31mViolation[0m for UnrestrictedWrite in contract 'HUMToken':
    |  
    |  function unlockTransfer() public onlyOwner {
  > |      isUnlocked = true;
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0xc16bc517fe6b15903d6cbf02ffc447291477a43a.sol(411)

[31mViolation[0m for UnrestrictedWrite in contract 'HUMToken':
    |  
    |  function lockTransfer() public onlyOwner {
  > |      isUnlocked = false;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc16bc517fe6b15903d6cbf02ffc447291477a43a.sol(415)

[33mWarning[0m for UnrestrictedWrite in contract 'HUMToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc16bc517fe6b15903d6cbf02ffc447291477a43a.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'HUMToken':
    |
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc16bc517fe6b15903d6cbf02ffc447291477a43a.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'HUMToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xc16bc517fe6b15903d6cbf02ffc447291477a43a.sol(139)

[33mWarning[0m for UnrestrictedWrite in contract 'HUMToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc16bc517fe6b15903d6cbf02ffc447291477a43a.sol(140)

[33mWarning[0m for UnrestrictedWrite in contract 'HUMToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc16bc517fe6b15903d6cbf02ffc447291477a43a.sol(141)

[33mWarning[0m for UnrestrictedWrite in contract 'HUMToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc16bc517fe6b15903d6cbf02ffc447291477a43a.sol(157)

[33mWarning[0m for UnrestrictedWrite in contract 'HUMToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc16bc517fe6b15903d6cbf02ffc447291477a43a.sol(183)

[33mWarning[0m for UnrestrictedWrite in contract 'HUMToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xc16bc517fe6b15903d6cbf02ffc447291477a43a.sol(201)

[33mWarning[0m for UnrestrictedWrite in contract 'HUMToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xc16bc517fe6b15903d6cbf02ffc447291477a43a.sol(203)

[33mWarning[0m for UnrestrictedWrite in contract 'HUMToken':
    |    // sender's balance is greater than the totalSupply, which *should* be an assertion failure
    |
  > |    balances[_who] = balances[_who].sub(_value);
    |    totalSupply_ = totalSupply_.sub(_value);
    |    emit Burn(_who, _value);
  at /home/jiaming/mavs_srcs/contract@0xc16bc517fe6b15903d6cbf02ffc447291477a43a.sol(276)

[33mWarning[0m for UnrestrictedWrite in contract 'HUMToken':
    |
    |    balances[_who] = balances[_who].sub(_value);
  > |    totalSupply_ = totalSupply_.sub(_value);
    |    emit Burn(_who, _value);
    |    emit Transfer(_who, address(0), _value);
  at /home/jiaming/mavs_srcs/contract@0xc16bc517fe6b15903d6cbf02ffc447291477a43a.sol(277)

[33mWarning[0m for UnrestrictedWrite in contract 'HUMToken':
    |   */
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
  > |    totalSupply_ = totalSupply_.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    emit Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xc16bc517fe6b15903d6cbf02ffc447291477a43a.sol(353)

[33mWarning[0m for UnrestrictedWrite in contract 'HUMToken':
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
    |    totalSupply_ = totalSupply_.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    emit Mint(_to, _amount);
    |    emit Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xc16bc517fe6b15903d6cbf02ffc447291477a43a.sol(354)

[33mWarning[0m for UnrestrictedWrite in contract 'HUMToken':
    |  function deleteOwner(address _owner) onlyOwner external returns (bool) {
    |    require(owners[_owner] == msg.sender || (owners[_owner] != 0 && msg.sender == root));
  > |    owners[_owner] = 0;
    |    return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc16bc517fe6b15903d6cbf02ffc447291477a43a.sol(249)

[33mWarning[0m for LockedEther in contract 'MintableToken':
    | * Based on code by TokenMarketNet: https://github.com/TokenMarketNet/ico/blob/master/contracts/MintableToken.sol
    | */
  > |contract MintableToken is StandardToken, MultiOwnable {
    |  event Mint(address indexed to, uint256 amount);
    |  event MintFinished();
  at /home/jiaming/mavs_srcs/contract@0xc16bc517fe6b15903d6cbf02ffc447291477a43a.sol(334)

[31mViolation[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function newOwner(address _owner) onlyOwner external returns (bool) {
    |    require(_owner != 0);
  > |    owners[_owner] = msg.sender;
    |    return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc16bc517fe6b15903d6cbf02ffc447291477a43a.sol(240)

[31mViolation[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function finishMinting() onlyOwner canMint public returns (bool) {
  > |    mintingFinished = true;
    |    emit MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc16bc517fe6b15903d6cbf02ffc447291477a43a.sol(365)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc16bc517fe6b15903d6cbf02ffc447291477a43a.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc16bc517fe6b15903d6cbf02ffc447291477a43a.sol(141)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc16bc517fe6b15903d6cbf02ffc447291477a43a.sol(157)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc16bc517fe6b15903d6cbf02ffc447291477a43a.sol(183)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xc16bc517fe6b15903d6cbf02ffc447291477a43a.sol(201)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xc16bc517fe6b15903d6cbf02ffc447291477a43a.sol(203)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function deleteOwner(address _owner) onlyOwner external returns (bool) {
    |    require(owners[_owner] == msg.sender || (owners[_owner] != 0 && msg.sender == root));
  > |    owners[_owner] = 0;
    |    return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc16bc517fe6b15903d6cbf02ffc447291477a43a.sol(249)

[33mWarning[0m for LockedEther in contract 'MultiOwnable':
    | * @title MultiOwnable
    | */
  > |contract MultiOwnable {
    |  address public root;
    |  mapping (address => address) public owners; // owner => parent of owner
  at /home/jiaming/mavs_srcs/contract@0xc16bc517fe6b15903d6cbf02ffc447291477a43a.sol(214)

[31mViolation[0m for MissingInputValidation in contract 'MultiOwnable':
    |contract MultiOwnable {
    |  address public root;
  > |  mapping (address => address) public owners; // owner => parent of owner
    |  
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xc16bc517fe6b15903d6cbf02ffc447291477a43a.sol(216)

[31mViolation[0m for MissingInputValidation in contract 'MultiOwnable':
    |    * @dev Deleting owners
    |    */
  > |  function deleteOwner(address _owner) onlyOwner external returns (bool) {
    |    require(owners[_owner] == msg.sender || (owners[_owner] != 0 && msg.sender == root));
    |    owners[_owner] = 0;
  at /home/jiaming/mavs_srcs/contract@0xc16bc517fe6b15903d6cbf02ffc447291477a43a.sol(247)

[33mWarning[0m for MissingInputValidation in contract 'MultiOwnable':
    | */
    |contract MultiOwnable {
  > |  address public root;
    |  mapping (address => address) public owners; // owner => parent of owner
    |  
  at /home/jiaming/mavs_srcs/contract@0xc16bc517fe6b15903d6cbf02ffc447291477a43a.sol(215)

[33mWarning[0m for MissingInputValidation in contract 'MultiOwnable':
    |  * @dev Adding new owners
    |  */
  > |  function newOwner(address _owner) onlyOwner external returns (bool) {
    |    require(_owner != 0);
    |    owners[_owner] = msg.sender;
  at /home/jiaming/mavs_srcs/contract@0xc16bc517fe6b15903d6cbf02ffc447291477a43a.sol(238)

[31mViolation[0m for UnrestrictedWrite in contract 'MultiOwnable':
    |  function newOwner(address _owner) onlyOwner external returns (bool) {
    |    require(_owner != 0);
  > |    owners[_owner] = msg.sender;
    |    return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc16bc517fe6b15903d6cbf02ffc447291477a43a.sol(240)

[33mWarning[0m for UnrestrictedWrite in contract 'MultiOwnable':
    |  function deleteOwner(address _owner) onlyOwner external returns (bool) {
    |    require(owners[_owner] == msg.sender || (owners[_owner] != 0 && msg.sender == root));
  > |    owners[_owner] = 0;
    |    return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc16bc517fe6b15903d6cbf02ffc447291477a43a.sol(249)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xc16bc517fe6b15903d6cbf02ffc447291477a43a.sol(7)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0xc16bc517fe6b15903d6cbf02ffc447291477a43a.sol(123)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc16bc517fe6b15903d6cbf02ffc447291477a43a.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc16bc517fe6b15903d6cbf02ffc447291477a43a.sol(141)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc16bc517fe6b15903d6cbf02ffc447291477a43a.sol(157)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc16bc517fe6b15903d6cbf02ffc447291477a43a.sol(183)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xc16bc517fe6b15903d6cbf02ffc447291477a43a.sol(201)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xc16bc517fe6b15903d6cbf02ffc447291477a43a.sol(203)


