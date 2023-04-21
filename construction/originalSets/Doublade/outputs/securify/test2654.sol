Processing contract: /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol:BurnableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol:DetailedERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol:MintableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol:PausableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol:QWER
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol:SafeERC20
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol:StandardBurnableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol:TokenTimelock
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
  at /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol(116)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol(147)

[33mWarning[0m for LockedEther in contract 'BurnableToken':
    | * @dev Token that can be irreversibly burned (destroyed).
    | */
  > |contract BurnableToken is BasicToken {
    |
    |  event Burn(address indexed burner, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol(170)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    // sender's balance is greater than the totalSupply, which *should* be an assertion failure
    |
  > |    balances[_who] = balances[_who].sub(_value);
    |    totalSupply_ = totalSupply_.sub(_value);
    |    emit Burn(_who, _value);
  at /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol(187)

[33mWarning[0m for LockedEther in contract 'MintableToken':
    | * Based on code by TokenMarketNet: https://github.com/TokenMarketNet/ico/blob/master/contracts/MintableToken.sol
    | */
  > |contract MintableToken is StandardToken, Ownable {
    |  event Mint(address indexed to, uint256 amount);
    |  event MintFinished();
  at /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol(408)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol(148)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol(226)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol(227)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol(228)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol(243)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    returns (bool)
    |  {
  > |    allowed[msg.sender][_spender] = (
    |      allowed[msg.sender][_spender].add(_addedValue));
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol(281)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    uint256 oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol(305)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol(307)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    returns (bool)
    |  {
  > |    totalSupply_ = totalSupply_.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    emit Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol(440)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  {
    |    totalSupply_ = totalSupply_.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    emit Mint(_to, _amount);
    |    emit Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol(441)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol(379)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol(397)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function finishMinting() onlyOwner canMint public returns (bool) {
  > |    mintingFinished = true;
    |    emit MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol(452)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol(344)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol(345)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * modifier anymore.
    |   */
  > |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
    |    owner = address(0);
  at /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol(377)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address _newOwner) public onlyOwner {
    |    _transferOwnership(_newOwner);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol(386)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function _transferOwnership(address _newOwner) internal {
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  at /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol(394)

[31mViolation[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol(397)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol(379)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol(397)

[33mWarning[0m for LockedEther in contract 'Pausable':
    | * @dev Base contract which allows children to implement an emergency stop mechanism.
    | */
  > |contract Pausable is Ownable {
    |  event Pause();
    |  event Unpause();
  at /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol(464)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol(345)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * modifier anymore.
    |   */
  > |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
    |    owner = address(0);
  at /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol(377)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address _newOwner) public onlyOwner {
    |    _transferOwnership(_newOwner);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol(386)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function _transferOwnership(address _newOwner) internal {
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  at /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol(394)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  event Unpause();
    |
  > |  bool public paused = false;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol(468)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to pause, triggers stopped state
    |   */
  > |  function pause() onlyOwner whenNotPaused public {
    |    paused = true;
    |    emit Pause();
  at /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol(490)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to unpause, returns to normal state
    |   */
  > |  function unpause() onlyOwner whenPaused public {
    |    paused = false;
    |    emit Unpause();
  at /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol(498)

[31mViolation[0m for UnrestrictedWrite in contract 'Pausable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol(397)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol(379)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol(397)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol(491)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol(499)

[33mWarning[0m for LockedEther in contract 'PausableToken':
    | * @dev StandardToken modified with pausable transfers.
    | **/
  > |contract PausableToken is StandardToken, Pausable {
    |
    |  function transfer(
  at /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol(510)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol(228)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol(243)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    returns (bool)
    |  {
  > |    allowed[msg.sender][_spender] = (
    |      allowed[msg.sender][_spender].add(_addedValue));
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol(281)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    uint256 oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol(305)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol(307)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol(379)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol(397)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol(491)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol(499)

[33mWarning[0m for LockedEther in contract 'QWER':
    |// File: contracts/SmartFarm.sol
    |
  > |contract QWER is PausableToken, DetailedERC20, StandardBurnableToken, MintableToken {	
    |  using SafeMath for uint256;
    |  
  at /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol(647)

[33mWarning[0m for UnrestrictedWrite in contract 'QWER':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'QWER':
    |
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol(148)

[33mWarning[0m for UnrestrictedWrite in contract 'QWER':
    |    // sender's balance is greater than the totalSupply, which *should* be an assertion failure
    |
  > |    balances[_who] = balances[_who].sub(_value);
    |    totalSupply_ = totalSupply_.sub(_value);
    |    emit Burn(_who, _value);
  at /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol(187)

[33mWarning[0m for UnrestrictedWrite in contract 'QWER':
    |
    |    balances[_who] = balances[_who].sub(_value);
  > |    totalSupply_ = totalSupply_.sub(_value);
    |    emit Burn(_who, _value);
    |    emit Transfer(_who, address(0), _value);
  at /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol(188)

[33mWarning[0m for UnrestrictedWrite in contract 'QWER':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol(226)

[33mWarning[0m for UnrestrictedWrite in contract 'QWER':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol(227)

[33mWarning[0m for UnrestrictedWrite in contract 'QWER':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol(228)

[33mWarning[0m for UnrestrictedWrite in contract 'QWER':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol(243)

[33mWarning[0m for UnrestrictedWrite in contract 'QWER':
    |    returns (bool)
    |  {
  > |    allowed[msg.sender][_spender] = (
    |      allowed[msg.sender][_spender].add(_addedValue));
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol(281)

[33mWarning[0m for UnrestrictedWrite in contract 'QWER':
    |    uint256 oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol(305)

[33mWarning[0m for UnrestrictedWrite in contract 'QWER':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol(307)

[33mWarning[0m for UnrestrictedWrite in contract 'QWER':
    |    // Should https://github.com/OpenZeppelin/zeppelin-solidity/issues/707 be accepted,
    |    // this function needs to emit an event with the updated approval.
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    _burn(_from, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol(332)

[33mWarning[0m for UnrestrictedWrite in contract 'QWER':
    |    returns (bool)
    |  {
  > |    totalSupply_ = totalSupply_.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    emit Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol(440)

[33mWarning[0m for UnrestrictedWrite in contract 'QWER':
    |  {
    |    totalSupply_ = totalSupply_.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    emit Mint(_to, _amount);
    |    emit Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol(441)

[33mWarning[0m for UnrestrictedWrite in contract 'QWER':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol(379)

[33mWarning[0m for UnrestrictedWrite in contract 'QWER':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol(397)

[33mWarning[0m for UnrestrictedWrite in contract 'QWER':
    |   */
    |  function finishMinting() onlyOwner canMint public returns (bool) {
  > |    mintingFinished = true;
    |    emit MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol(452)

[33mWarning[0m for UnrestrictedWrite in contract 'QWER':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol(491)

[33mWarning[0m for UnrestrictedWrite in contract 'QWER':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol(499)

[33mWarning[0m for LockedEther in contract 'SafeERC20':
    | * which allows you to call the safe operations as `token.safeTransfer(...)`, etc.
    | */
  > |library SafeERC20 {
    |  function safeTransfer(ERC20Basic token, address to, uint256 value) internal {
    |    require(token.transfer(to, value));
  at /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol(577)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol(64)

[33mWarning[0m for LockedEther in contract 'StandardBurnableToken':
    | * @dev Adds burnFrom method to ERC20 implementations
    | */
  > |contract StandardBurnableToken is BurnableToken, StandardToken {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol(321)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardBurnableToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardBurnableToken':
    |    // sender's balance is greater than the totalSupply, which *should* be an assertion failure
    |
  > |    balances[_who] = balances[_who].sub(_value);
    |    totalSupply_ = totalSupply_.sub(_value);
    |    emit Burn(_who, _value);
  at /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol(187)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardBurnableToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol(226)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardBurnableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol(228)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardBurnableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol(243)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardBurnableToken':
    |    returns (bool)
    |  {
  > |    allowed[msg.sender][_spender] = (
    |      allowed[msg.sender][_spender].add(_addedValue));
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol(281)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardBurnableToken':
    |    uint256 oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol(305)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardBurnableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol(307)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardBurnableToken':
    |    // Should https://github.com/OpenZeppelin/zeppelin-solidity/issues/707 be accepted,
    |    // this function needs to emit an event with the updated approval.
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    _burn(_from, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol(332)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol(203)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol(228)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol(243)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    returns (bool)
    |  {
  > |    allowed[msg.sender][_spender] = (
    |      allowed[msg.sender][_spender].add(_addedValue));
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol(281)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint256 oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol(305)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol(307)

[33mWarning[0m for LockedEther in contract 'TokenTimelock':
    | * beneficiary to extract the tokens after a given release time
    | */
  > |contract TokenTimelock {
    |  using SafeERC20 for ERC20Basic;
    |
  at /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol(605)

[33mWarning[0m for UnhandledException in contract 'TokenTimelock':
    |library SafeERC20 {
    |  function safeTransfer(ERC20Basic token, address to, uint256 value) internal {
  > |    require(token.transfer(to, value));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol(579)

[33mWarning[0m for UnhandledException in contract 'TokenTimelock':
    |    require(block.timestamp >= releaseTime);
    |
  > |    uint256 amount = token.balanceOf(this);
    |    require(amount > 0);
    |
  at /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol(638)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenTimelock':
    |library SafeERC20 {
    |  function safeTransfer(ERC20Basic token, address to, uint256 value) internal {
  > |    require(token.transfer(to, value));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol(579)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenTimelock':
    |    require(block.timestamp >= releaseTime);
    |
  > |    uint256 amount = token.balanceOf(this);
    |    require(amount > 0);
    |
  at /home/jiaming/mavs_srcs/contract@0xad7cd1241591ccb6a7a310fffeedba3a708f62f0.sol(638)


