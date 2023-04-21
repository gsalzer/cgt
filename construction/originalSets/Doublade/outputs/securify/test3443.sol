Processing contract: /home/jiaming/mavs_srcs/contract@0xe1d26f05edac447b752a4d6ba6d24fefebf79f4f.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe1d26f05edac447b752a4d6ba6d24fefebf79f4f.sol:BurnableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe1d26f05edac447b752a4d6ba6d24fefebf79f4f.sol:DAVToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe1d26f05edac447b752a4d6ba6d24fefebf79f4f.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xe1d26f05edac447b752a4d6ba6d24fefebf79f4f.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xe1d26f05edac447b752a4d6ba6d24fefebf79f4f.sol:IDAVToken
Processing contract: /home/jiaming/mavs_srcs/contract@0xe1d26f05edac447b752a4d6ba6d24fefebf79f4f.sol:Identity
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe1d26f05edac447b752a4d6ba6d24fefebf79f4f.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe1d26f05edac447b752a4d6ba6d24fefebf79f4f.sol:OwnedPausableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe1d26f05edac447b752a4d6ba6d24fefebf79f4f.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe1d26f05edac447b752a4d6ba6d24fefebf79f4f.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe1d26f05edac447b752a4d6ba6d24fefebf79f4f.sol:StandardToken
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
  at /home/jiaming/mavs_srcs/contract@0xe1d26f05edac447b752a4d6ba6d24fefebf79f4f.sol(159)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe1d26f05edac447b752a4d6ba6d24fefebf79f4f.sol(182)

[33mWarning[0m for LockedEther in contract 'BurnableToken':
    | * @dev Token that can be irreversibly burned (destroyed).
    | */
  > |contract BurnableToken is BasicToken {
    |
    |  event Burn(address indexed burner, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0xe1d26f05edac447b752a4d6ba6d24fefebf79f4f.sol(375)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe1d26f05edac447b752a4d6ba6d24fefebf79f4f.sol(182)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe1d26f05edac447b752a4d6ba6d24fefebf79f4f.sol(183)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    // sender's balance is greater than the totalSupply, which *should* be an assertion failure
    |
  > |    balances[_who] = balances[_who].sub(_value);
    |    totalSupply_ = totalSupply_.sub(_value);
    |    emit Burn(_who, _value);
  at /home/jiaming/mavs_srcs/contract@0xe1d26f05edac447b752a4d6ba6d24fefebf79f4f.sol(392)

[33mWarning[0m for LockedEther in contract 'DAVToken':
    | * @dev ERC20 token
    | */
  > |contract DAVToken is IDAVToken, BurnableToken, OwnedPausableToken {
    |
    |  // Token constants
  at /home/jiaming/mavs_srcs/contract@0xe1d26f05edac447b752a4d6ba6d24fefebf79f4f.sol(405)

[33mWarning[0m for UnrestrictedWrite in contract 'DAVToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe1d26f05edac447b752a4d6ba6d24fefebf79f4f.sol(182)

[33mWarning[0m for UnrestrictedWrite in contract 'DAVToken':
    |
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe1d26f05edac447b752a4d6ba6d24fefebf79f4f.sol(183)

[33mWarning[0m for UnrestrictedWrite in contract 'DAVToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xe1d26f05edac447b752a4d6ba6d24fefebf79f4f.sol(237)

[33mWarning[0m for UnrestrictedWrite in contract 'DAVToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe1d26f05edac447b752a4d6ba6d24fefebf79f4f.sol(238)

[33mWarning[0m for UnrestrictedWrite in contract 'DAVToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe1d26f05edac447b752a4d6ba6d24fefebf79f4f.sol(239)

[33mWarning[0m for UnrestrictedWrite in contract 'DAVToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe1d26f05edac447b752a4d6ba6d24fefebf79f4f.sol(255)

[33mWarning[0m for UnrestrictedWrite in contract 'DAVToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe1d26f05edac447b752a4d6ba6d24fefebf79f4f.sol(281)

[33mWarning[0m for UnrestrictedWrite in contract 'DAVToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xe1d26f05edac447b752a4d6ba6d24fefebf79f4f.sol(299)

[33mWarning[0m for UnrestrictedWrite in contract 'DAVToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xe1d26f05edac447b752a4d6ba6d24fefebf79f4f.sol(301)

[33mWarning[0m for UnrestrictedWrite in contract 'DAVToken':
    |    // sender's balance is greater than the totalSupply, which *should* be an assertion failure
    |
  > |    balances[_who] = balances[_who].sub(_value);
    |    totalSupply_ = totalSupply_.sub(_value);
    |    emit Burn(_who, _value);
  at /home/jiaming/mavs_srcs/contract@0xe1d26f05edac447b752a4d6ba6d24fefebf79f4f.sol(392)

[33mWarning[0m for UnrestrictedWrite in contract 'DAVToken':
    |
    |    balances[_who] = balances[_who].sub(_value);
  > |    totalSupply_ = totalSupply_.sub(_value);
    |    emit Burn(_who, _value);
    |    emit Transfer(_who, address(0), _value);
  at /home/jiaming/mavs_srcs/contract@0xe1d26f05edac447b752a4d6ba6d24fefebf79f4f.sol(393)

[33mWarning[0m for UnrestrictedWrite in contract 'DAVToken':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe1d26f05edac447b752a4d6ba6d24fefebf79f4f.sol(40)

[33mWarning[0m for UnrestrictedWrite in contract 'DAVToken':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe1d26f05edac447b752a4d6ba6d24fefebf79f4f.sol(86)

[33mWarning[0m for UnrestrictedWrite in contract 'DAVToken':
    |    require(pauseCutoffTime == 0);
    |    // Set the cutoff time
  > |    pauseCutoffTime = _pauseCutoffTime;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe1d26f05edac447b752a4d6ba6d24fefebf79f4f.sol(437)

[33mWarning[0m for UnrestrictedWrite in contract 'DAVToken':
    |    // solium-disable-next-line security/no-block-members
    |    require(pauseCutoffTime == 0 || pauseCutoffTime >= block.timestamp);
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe1d26f05edac447b752a4d6ba6d24fefebf79f4f.sol(447)

[33mWarning[0m for LockedEther in contract 'Identity':
    | * @title Identity
    | */
  > |contract Identity {
    |
    |  struct DAVIdentity {
  at /home/jiaming/mavs_srcs/contract@0xe1d26f05edac447b752a4d6ba6d24fefebf79f4f.sol(458)

[31mViolation[0m for MissingInputValidation in contract 'Identity':
    |  }
    |
  > |  function register(address _id, uint8 _v, bytes32 _r, bytes32 _s) public {
    |    // Make sure id isn't registered already
    |    require(
  at /home/jiaming/mavs_srcs/contract@0xe1d26f05edac447b752a4d6ba6d24fefebf79f4f.sol(481)

[31mViolation[0m for MissingInputValidation in contract 'Identity':
    |  }
    |
  > |  function getBalance(address _id) public view returns (uint256 balance) {
    |    return token.balanceOf(identities[_id].wallet);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe1d26f05edac447b752a4d6ba6d24fefebf79f4f.sol(511)

[31mViolation[0m for MissingInputValidation in contract 'Identity':
    |  }
    |
  > |  function verifyOwnership(address _id, address _wallet) public view returns (bool verified) {
    |    return identities[_id].wallet == _wallet;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe1d26f05edac447b752a4d6ba6d24fefebf79f4f.sol(515)

[31mViolation[0m for MissingInputValidation in contract 'Identity':
    |
    |  // Check identity registration status
  > |  function isRegistered(address _id) public view returns (bool) {
    |    return identities[_id].wallet != 0x0;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe1d26f05edac447b752a4d6ba6d24fefebf79f4f.sol(520)

[31mViolation[0m for MissingInputValidation in contract 'Identity':
    |
    |  // Get identity wallet
  > |  function getIdentityWallet(address _id) public view returns (address) {
    |    return identities[_id].wallet;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe1d26f05edac447b752a4d6ba6d24fefebf79f4f.sol(525)

[33mWarning[0m for MissingInputValidation in contract 'Identity':
    |  }
    |
  > |  function registerSimple() public {
    |    // Make sure id isn't registered already
    |    require(
  at /home/jiaming/mavs_srcs/contract@0xe1d26f05edac447b752a4d6ba6d24fefebf79f4f.sol(499)

[33mWarning[0m for UnhandledException in contract 'Identity':
    |    // Verify message signature
    |    require(
  > |      ecrecover(prefixedHash, _v, _r, _s) == _id
    |    );
    |
  at /home/jiaming/mavs_srcs/contract@0xe1d26f05edac447b752a4d6ba6d24fefebf79f4f.sol(490)

[33mWarning[0m for UnhandledException in contract 'Identity':
    |
    |  function getBalance(address _id) public view returns (uint256 balance) {
  > |    return token.balanceOf(identities[_id].wallet);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe1d26f05edac447b752a4d6ba6d24fefebf79f4f.sol(512)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Identity':
    |    // Verify message signature
    |    require(
  > |      ecrecover(prefixedHash, _v, _r, _s) == _id
    |    );
    |
  at /home/jiaming/mavs_srcs/contract@0xe1d26f05edac447b752a4d6ba6d24fefebf79f4f.sol(490)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Identity':
    |
    |  function getBalance(address _id) public view returns (uint256 balance) {
  > |    return token.balanceOf(identities[_id].wallet);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe1d26f05edac447b752a4d6ba6d24fefebf79f4f.sol(512)

[31mViolation[0m for UnrestrictedWrite in contract 'Identity':
    |
    |    // Register in identities mapping
  > |    identities[_id] = DAVIdentity({
    |      wallet: msg.sender
    |    });
  at /home/jiaming/mavs_srcs/contract@0xe1d26f05edac447b752a4d6ba6d24fefebf79f4f.sol(494)

[33mWarning[0m for UnrestrictedWrite in contract 'Identity':
    |
    |    // Register in identities mapping
  > |    identities[msg.sender] = DAVIdentity({
    |      wallet: msg.sender
    |    });
  at /home/jiaming/mavs_srcs/contract@0xe1d26f05edac447b752a4d6ba6d24fefebf79f4f.sol(506)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xe1d26f05edac447b752a4d6ba6d24fefebf79f4f.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xe1d26f05edac447b752a4d6ba6d24fefebf79f4f.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xe1d26f05edac447b752a4d6ba6d24fefebf79f4f.sol(37)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe1d26f05edac447b752a4d6ba6d24fefebf79f4f.sol(40)

[33mWarning[0m for LockedEther in contract 'OwnedPausableToken':
    | * @dev StandardToken modified with pausable transfers.
    | **/
  > |contract OwnedPausableToken is StandardToken, Pausable {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xe1d26f05edac447b752a4d6ba6d24fefebf79f4f.sol(315)

[33mWarning[0m for UnrestrictedWrite in contract 'OwnedPausableToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe1d26f05edac447b752a4d6ba6d24fefebf79f4f.sol(182)

[33mWarning[0m for UnrestrictedWrite in contract 'OwnedPausableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe1d26f05edac447b752a4d6ba6d24fefebf79f4f.sol(239)

[33mWarning[0m for UnrestrictedWrite in contract 'OwnedPausableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe1d26f05edac447b752a4d6ba6d24fefebf79f4f.sol(255)

[33mWarning[0m for UnrestrictedWrite in contract 'OwnedPausableToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe1d26f05edac447b752a4d6ba6d24fefebf79f4f.sol(281)

[33mWarning[0m for UnrestrictedWrite in contract 'OwnedPausableToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xe1d26f05edac447b752a4d6ba6d24fefebf79f4f.sol(299)

[33mWarning[0m for UnrestrictedWrite in contract 'OwnedPausableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xe1d26f05edac447b752a4d6ba6d24fefebf79f4f.sol(301)

[33mWarning[0m for UnrestrictedWrite in contract 'OwnedPausableToken':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe1d26f05edac447b752a4d6ba6d24fefebf79f4f.sol(40)

[33mWarning[0m for UnrestrictedWrite in contract 'OwnedPausableToken':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe1d26f05edac447b752a4d6ba6d24fefebf79f4f.sol(78)

[33mWarning[0m for UnrestrictedWrite in contract 'OwnedPausableToken':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe1d26f05edac447b752a4d6ba6d24fefebf79f4f.sol(86)

[33mWarning[0m for LockedEther in contract 'Pausable':
    | * @dev Base contract which allows children to implement an emergency stop mechanism.
    | */
  > |contract Pausable is Ownable {
    |  event Pause();
    |  event Unpause();
  at /home/jiaming/mavs_srcs/contract@0xe1d26f05edac447b752a4d6ba6d24fefebf79f4f.sol(51)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xe1d26f05edac447b752a4d6ba6d24fefebf79f4f.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xe1d26f05edac447b752a4d6ba6d24fefebf79f4f.sol(37)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  event Unpause();
    |
  > |  bool public paused = false;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xe1d26f05edac447b752a4d6ba6d24fefebf79f4f.sol(55)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to pause, triggers stopped state
    |   */
  > |  function pause() onlyOwner whenNotPaused public {
    |    paused = true;
    |    emit Pause();
  at /home/jiaming/mavs_srcs/contract@0xe1d26f05edac447b752a4d6ba6d24fefebf79f4f.sol(77)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to unpause, returns to normal state
    |   */
  > |  function unpause() onlyOwner whenPaused public {
    |    paused = false;
    |    emit Unpause();
  at /home/jiaming/mavs_srcs/contract@0xe1d26f05edac447b752a4d6ba6d24fefebf79f4f.sol(85)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe1d26f05edac447b752a4d6ba6d24fefebf79f4f.sol(40)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe1d26f05edac447b752a4d6ba6d24fefebf79f4f.sol(78)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe1d26f05edac447b752a4d6ba6d24fefebf79f4f.sol(86)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xe1d26f05edac447b752a4d6ba6d24fefebf79f4f.sol(97)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0xe1d26f05edac447b752a4d6ba6d24fefebf79f4f.sol(221)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe1d26f05edac447b752a4d6ba6d24fefebf79f4f.sol(182)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe1d26f05edac447b752a4d6ba6d24fefebf79f4f.sol(239)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe1d26f05edac447b752a4d6ba6d24fefebf79f4f.sol(255)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe1d26f05edac447b752a4d6ba6d24fefebf79f4f.sol(281)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xe1d26f05edac447b752a4d6ba6d24fefebf79f4f.sol(299)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xe1d26f05edac447b752a4d6ba6d24fefebf79f4f.sol(301)


