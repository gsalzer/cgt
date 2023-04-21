Processing contract: /home/jiaming/mavs_srcs/contract@0x2e1d3fcca59bd83b3499c92ff9c34de13287aab6.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2e1d3fcca59bd83b3499c92ff9c34de13287aab6.sol:BurnableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2e1d3fcca59bd83b3499c92ff9c34de13287aab6.sol:DetailedERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x2e1d3fcca59bd83b3499c92ff9c34de13287aab6.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x2e1d3fcca59bd83b3499c92ff9c34de13287aab6.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x2e1d3fcca59bd83b3499c92ff9c34de13287aab6.sol:MintableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2e1d3fcca59bd83b3499c92ff9c34de13287aab6.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2e1d3fcca59bd83b3499c92ff9c34de13287aab6.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2e1d3fcca59bd83b3499c92ff9c34de13287aab6.sol:PausableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2e1d3fcca59bd83b3499c92ff9c34de13287aab6.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2e1d3fcca59bd83b3499c92ff9c34de13287aab6.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2e1d3fcca59bd83b3499c92ff9c34de13287aab6.sol:christiancoin
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
  at /home/jiaming/mavs_srcs/contract@0x2e1d3fcca59bd83b3499c92ff9c34de13287aab6.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |    require(_to != address(0));
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x2e1d3fcca59bd83b3499c92ff9c34de13287aab6.sol(107)

[33mWarning[0m for LockedEther in contract 'BurnableToken':
    | * @dev Token that can be irreversibly burned (destroyed).
    | */
  > |contract BurnableToken is BasicToken {
    |
    |  event Burn(address indexed burner, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0x2e1d3fcca59bd83b3499c92ff9c34de13287aab6.sol(438)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    require(_to != address(0));
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x2e1d3fcca59bd83b3499c92ff9c34de13287aab6.sol(107)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2e1d3fcca59bd83b3499c92ff9c34de13287aab6.sol(108)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    // sender's balance is greater than the totalSupply, which *should* be an assertion failure
    |
  > |    balances[_who] = balances[_who].sub(_value);
    |    totalSupply_ = totalSupply_.sub(_value);
    |    emit Burn(_who, _value);
  at /home/jiaming/mavs_srcs/contract@0x2e1d3fcca59bd83b3499c92ff9c34de13287aab6.sol(455)

[33mWarning[0m for LockedEther in contract 'MintableToken':
    | * Based on code by TokenMarketNet: https://github.com/TokenMarketNet/ico/blob/master/contracts/MintableToken.sol
    | */
  > |contract MintableToken is StandardToken, Ownable {
    |  event Mint(address indexed to, uint256 amount);
    |  event MintFinished();
  at /home/jiaming/mavs_srcs/contract@0x2e1d3fcca59bd83b3499c92ff9c34de13287aab6.sol(354)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(_to != address(0));
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x2e1d3fcca59bd83b3499c92ff9c34de13287aab6.sol(107)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2e1d3fcca59bd83b3499c92ff9c34de13287aab6.sol(108)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(_to != address(0));
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x2e1d3fcca59bd83b3499c92ff9c34de13287aab6.sol(186)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x2e1d3fcca59bd83b3499c92ff9c34de13287aab6.sol(187)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2e1d3fcca59bd83b3499c92ff9c34de13287aab6.sol(188)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2e1d3fcca59bd83b3499c92ff9c34de13287aab6.sol(203)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    returns (bool)
    |  {
  > |    allowed[msg.sender][_spender] = (
    |      allowed[msg.sender][_spender].add(_addedValue));
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x2e1d3fcca59bd83b3499c92ff9c34de13287aab6.sol(241)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    uint256 oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue >= oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x2e1d3fcca59bd83b3499c92ff9c34de13287aab6.sol(265)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x2e1d3fcca59bd83b3499c92ff9c34de13287aab6.sol(267)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    returns (bool)
    |  {
  > |    totalSupply_ = totalSupply_.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    emit Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x2e1d3fcca59bd83b3499c92ff9c34de13287aab6.sol(386)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  {
    |    totalSupply_ = totalSupply_.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    emit Mint(_to, _amount);
    |    emit Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x2e1d3fcca59bd83b3499c92ff9c34de13287aab6.sol(387)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2e1d3fcca59bd83b3499c92ff9c34de13287aab6.sol(320)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x2e1d3fcca59bd83b3499c92ff9c34de13287aab6.sol(338)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function finishMinting() public onlyOwner canMint returns (bool) {
  > |    mintingFinished = true;
    |    emit MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2e1d3fcca59bd83b3499c92ff9c34de13287aab6.sol(398)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x2e1d3fcca59bd83b3499c92ff9c34de13287aab6.sol(285)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x2e1d3fcca59bd83b3499c92ff9c34de13287aab6.sol(286)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * modifier anymore.
    |   */
  > |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
    |    owner = address(0);
  at /home/jiaming/mavs_srcs/contract@0x2e1d3fcca59bd83b3499c92ff9c34de13287aab6.sol(318)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address _newOwner) public onlyOwner {
    |    _transferOwnership(_newOwner);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x2e1d3fcca59bd83b3499c92ff9c34de13287aab6.sol(327)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function _transferOwnership(address _newOwner) internal {
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  at /home/jiaming/mavs_srcs/contract@0x2e1d3fcca59bd83b3499c92ff9c34de13287aab6.sol(335)

[31mViolation[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x2e1d3fcca59bd83b3499c92ff9c34de13287aab6.sol(338)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2e1d3fcca59bd83b3499c92ff9c34de13287aab6.sol(320)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x2e1d3fcca59bd83b3499c92ff9c34de13287aab6.sol(338)

[33mWarning[0m for LockedEther in contract 'Pausable':
    | * @dev Base contract which allows children to implement an emergency stop mechanism.
    | */
  > |contract Pausable is Ownable {
    |  event Pause();
    |  event Unpause();
  at /home/jiaming/mavs_srcs/contract@0x2e1d3fcca59bd83b3499c92ff9c34de13287aab6.sol(472)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x2e1d3fcca59bd83b3499c92ff9c34de13287aab6.sol(286)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * modifier anymore.
    |   */
  > |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
    |    owner = address(0);
  at /home/jiaming/mavs_srcs/contract@0x2e1d3fcca59bd83b3499c92ff9c34de13287aab6.sol(318)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address _newOwner) public onlyOwner {
    |    _transferOwnership(_newOwner);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x2e1d3fcca59bd83b3499c92ff9c34de13287aab6.sol(327)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function _transferOwnership(address _newOwner) internal {
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  at /home/jiaming/mavs_srcs/contract@0x2e1d3fcca59bd83b3499c92ff9c34de13287aab6.sol(335)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  event Unpause();
    |
  > |  bool public paused = false;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x2e1d3fcca59bd83b3499c92ff9c34de13287aab6.sol(476)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to pause, triggers stopped state
    |   */
  > |  function pause() public onlyOwner whenNotPaused {
    |    paused = true;
    |    emit Pause();
  at /home/jiaming/mavs_srcs/contract@0x2e1d3fcca59bd83b3499c92ff9c34de13287aab6.sol(498)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to unpause, returns to normal state
    |   */
  > |  function unpause() public onlyOwner whenPaused {
    |    paused = false;
    |    emit Unpause();
  at /home/jiaming/mavs_srcs/contract@0x2e1d3fcca59bd83b3499c92ff9c34de13287aab6.sol(506)

[31mViolation[0m for UnrestrictedWrite in contract 'Pausable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x2e1d3fcca59bd83b3499c92ff9c34de13287aab6.sol(338)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2e1d3fcca59bd83b3499c92ff9c34de13287aab6.sol(320)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x2e1d3fcca59bd83b3499c92ff9c34de13287aab6.sol(338)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function pause() public onlyOwner whenNotPaused {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x2e1d3fcca59bd83b3499c92ff9c34de13287aab6.sol(499)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function unpause() public onlyOwner whenPaused {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x2e1d3fcca59bd83b3499c92ff9c34de13287aab6.sol(507)

[33mWarning[0m for LockedEther in contract 'PausableToken':
    | * @dev StandardToken modified with pausable transfers.
    | **/
  > |contract PausableToken is StandardToken, Pausable {
    |
    |  function transfer(
  at /home/jiaming/mavs_srcs/contract@0x2e1d3fcca59bd83b3499c92ff9c34de13287aab6.sol(523)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    require(_to != address(0));
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x2e1d3fcca59bd83b3499c92ff9c34de13287aab6.sol(107)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2e1d3fcca59bd83b3499c92ff9c34de13287aab6.sol(188)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2e1d3fcca59bd83b3499c92ff9c34de13287aab6.sol(203)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    returns (bool)
    |  {
  > |    allowed[msg.sender][_spender] = (
    |      allowed[msg.sender][_spender].add(_addedValue));
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x2e1d3fcca59bd83b3499c92ff9c34de13287aab6.sol(241)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    uint256 oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue >= oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x2e1d3fcca59bd83b3499c92ff9c34de13287aab6.sol(265)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x2e1d3fcca59bd83b3499c92ff9c34de13287aab6.sol(267)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2e1d3fcca59bd83b3499c92ff9c34de13287aab6.sol(320)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x2e1d3fcca59bd83b3499c92ff9c34de13287aab6.sol(338)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |   */
    |  function pause() public onlyOwner whenNotPaused {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x2e1d3fcca59bd83b3499c92ff9c34de13287aab6.sol(499)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |   */
    |  function unpause() public onlyOwner whenPaused {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x2e1d3fcca59bd83b3499c92ff9c34de13287aab6.sol(507)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x2e1d3fcca59bd83b3499c92ff9c34de13287aab6.sol(27)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0x2e1d3fcca59bd83b3499c92ff9c34de13287aab6.sol(163)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require(_to != address(0));
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x2e1d3fcca59bd83b3499c92ff9c34de13287aab6.sol(107)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2e1d3fcca59bd83b3499c92ff9c34de13287aab6.sol(188)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2e1d3fcca59bd83b3499c92ff9c34de13287aab6.sol(203)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    returns (bool)
    |  {
  > |    allowed[msg.sender][_spender] = (
    |      allowed[msg.sender][_spender].add(_addedValue));
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x2e1d3fcca59bd83b3499c92ff9c34de13287aab6.sol(241)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint256 oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue >= oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x2e1d3fcca59bd83b3499c92ff9c34de13287aab6.sol(265)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x2e1d3fcca59bd83b3499c92ff9c34de13287aab6.sol(267)

[33mWarning[0m for LockedEther in contract 'christiancoin':
    |
    |
  > |contract christiancoin is DetailedERC20, MintableToken, BurnableToken, PausableToken {
    |
    |    uint256 public INITIAL_SUPPLY;
  at /home/jiaming/mavs_srcs/contract@0x2e1d3fcca59bd83b3499c92ff9c34de13287aab6.sol(590)

[33mWarning[0m for UnrestrictedWrite in contract 'christiancoin':
    |    require(_to != address(0));
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x2e1d3fcca59bd83b3499c92ff9c34de13287aab6.sol(107)

[33mWarning[0m for UnrestrictedWrite in contract 'christiancoin':
    |
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2e1d3fcca59bd83b3499c92ff9c34de13287aab6.sol(108)

[33mWarning[0m for UnrestrictedWrite in contract 'christiancoin':
    |    require(_to != address(0));
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x2e1d3fcca59bd83b3499c92ff9c34de13287aab6.sol(186)

[33mWarning[0m for UnrestrictedWrite in contract 'christiancoin':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x2e1d3fcca59bd83b3499c92ff9c34de13287aab6.sol(187)

[33mWarning[0m for UnrestrictedWrite in contract 'christiancoin':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2e1d3fcca59bd83b3499c92ff9c34de13287aab6.sol(188)

[33mWarning[0m for UnrestrictedWrite in contract 'christiancoin':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2e1d3fcca59bd83b3499c92ff9c34de13287aab6.sol(203)

[33mWarning[0m for UnrestrictedWrite in contract 'christiancoin':
    |    returns (bool)
    |  {
  > |    allowed[msg.sender][_spender] = (
    |      allowed[msg.sender][_spender].add(_addedValue));
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x2e1d3fcca59bd83b3499c92ff9c34de13287aab6.sol(241)

[33mWarning[0m for UnrestrictedWrite in contract 'christiancoin':
    |    uint256 oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue >= oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x2e1d3fcca59bd83b3499c92ff9c34de13287aab6.sol(265)

[33mWarning[0m for UnrestrictedWrite in contract 'christiancoin':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x2e1d3fcca59bd83b3499c92ff9c34de13287aab6.sol(267)

[33mWarning[0m for UnrestrictedWrite in contract 'christiancoin':
    |    returns (bool)
    |  {
  > |    totalSupply_ = totalSupply_.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    emit Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x2e1d3fcca59bd83b3499c92ff9c34de13287aab6.sol(386)

[33mWarning[0m for UnrestrictedWrite in contract 'christiancoin':
    |  {
    |    totalSupply_ = totalSupply_.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    emit Mint(_to, _amount);
    |    emit Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x2e1d3fcca59bd83b3499c92ff9c34de13287aab6.sol(387)

[33mWarning[0m for UnrestrictedWrite in contract 'christiancoin':
    |    // sender's balance is greater than the totalSupply, which *should* be an assertion failure
    |
  > |    balances[_who] = balances[_who].sub(_value);
    |    totalSupply_ = totalSupply_.sub(_value);
    |    emit Burn(_who, _value);
  at /home/jiaming/mavs_srcs/contract@0x2e1d3fcca59bd83b3499c92ff9c34de13287aab6.sol(455)

[33mWarning[0m for UnrestrictedWrite in contract 'christiancoin':
    |
    |    balances[_who] = balances[_who].sub(_value);
  > |    totalSupply_ = totalSupply_.sub(_value);
    |    emit Burn(_who, _value);
    |    emit Transfer(_who, address(0), _value);
  at /home/jiaming/mavs_srcs/contract@0x2e1d3fcca59bd83b3499c92ff9c34de13287aab6.sol(456)

[33mWarning[0m for UnrestrictedWrite in contract 'christiancoin':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2e1d3fcca59bd83b3499c92ff9c34de13287aab6.sol(320)

[33mWarning[0m for UnrestrictedWrite in contract 'christiancoin':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x2e1d3fcca59bd83b3499c92ff9c34de13287aab6.sol(338)

[33mWarning[0m for UnrestrictedWrite in contract 'christiancoin':
    |   */
    |  function finishMinting() public onlyOwner canMint returns (bool) {
  > |    mintingFinished = true;
    |    emit MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2e1d3fcca59bd83b3499c92ff9c34de13287aab6.sol(398)

[33mWarning[0m for UnrestrictedWrite in contract 'christiancoin':
    |   */
    |  function pause() public onlyOwner whenNotPaused {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x2e1d3fcca59bd83b3499c92ff9c34de13287aab6.sol(499)

[33mWarning[0m for UnrestrictedWrite in contract 'christiancoin':
    |   */
    |  function unpause() public onlyOwner whenPaused {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x2e1d3fcca59bd83b3499c92ff9c34de13287aab6.sol(507)


