Processing contract: /home/jiaming/mavs_srcs/contract@0x9a62d3825e07342568a34aa31aad38bb04250806.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9a62d3825e07342568a34aa31aad38bb04250806.sol:CanReclaimToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9a62d3825e07342568a34aa31aad38bb04250806.sol:Cubik
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9a62d3825e07342568a34aa31aad38bb04250806.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x9a62d3825e07342568a34aa31aad38bb04250806.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x9a62d3825e07342568a34aa31aad38bb04250806.sol:HasNoTokens
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9a62d3825e07342568a34aa31aad38bb04250806.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9a62d3825e07342568a34aa31aad38bb04250806.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9a62d3825e07342568a34aa31aad38bb04250806.sol:PausableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9a62d3825e07342568a34aa31aad38bb04250806.sol:SafeERC20
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9a62d3825e07342568a34aa31aad38bb04250806.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9a62d3825e07342568a34aa31aad38bb04250806.sol:StandardToken
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
  at /home/jiaming/mavs_srcs/contract@0x9a62d3825e07342568a34aa31aad38bb04250806.sol(280)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x9a62d3825e07342568a34aa31aad38bb04250806.sol(303)

[33mWarning[0m for LockedEther in contract 'CanReclaimToken':
    | * This will prevent any accidental loss of tokens.
    | */
  > |contract CanReclaimToken is Ownable {
    |  using SafeERC20 for ERC20Basic;
    |
  at /home/jiaming/mavs_srcs/contract@0x9a62d3825e07342568a34aa31aad38bb04250806.sol(136)

[33mWarning[0m for UnhandledException in contract 'CanReclaimToken':
    |library SafeERC20 {
    |  function safeTransfer(ERC20Basic token, address to, uint256 value) internal {
  > |    require(token.transfer(to, value));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x9a62d3825e07342568a34aa31aad38bb04250806.sol(48)

[33mWarning[0m for UnhandledException in contract 'CanReclaimToken':
    |   */
    |  function reclaimToken(ERC20Basic token) external onlyOwner {
  > |    uint256 balance = token.balanceOf(this);
    |    token.safeTransfer(owner, balance);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x9a62d3825e07342568a34aa31aad38bb04250806.sol(144)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CanReclaimToken':
    |library SafeERC20 {
    |  function safeTransfer(ERC20Basic token, address to, uint256 value) internal {
  > |    require(token.transfer(to, value));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x9a62d3825e07342568a34aa31aad38bb04250806.sol(48)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CanReclaimToken':
    |   */
    |  function reclaimToken(ERC20Basic token) external onlyOwner {
  > |    uint256 balance = token.balanceOf(this);
    |    token.safeTransfer(owner, balance);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x9a62d3825e07342568a34aa31aad38bb04250806.sol(144)

[33mWarning[0m for UnrestrictedWrite in contract 'CanReclaimToken':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x9a62d3825e07342568a34aa31aad38bb04250806.sol(106)

[33mWarning[0m for UnrestrictedWrite in contract 'CanReclaimToken':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x9a62d3825e07342568a34aa31aad38bb04250806.sol(124)

[33mWarning[0m for LockedEther in contract 'Cubik':
    | */
    |
  > |contract Cubik is PausableToken, HasNoTokens {
    |
    |  string public constant name = 'Cubik';                              // Set the token name for display
  at /home/jiaming/mavs_srcs/contract@0x9a62d3825e07342568a34aa31aad38bb04250806.sol(527)

[33mWarning[0m for UnhandledException in contract 'Cubik':
    |library SafeERC20 {
    |  function safeTransfer(ERC20Basic token, address to, uint256 value) internal {
  > |    require(token.transfer(to, value));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x9a62d3825e07342568a34aa31aad38bb04250806.sol(48)

[33mWarning[0m for UnhandledException in contract 'Cubik':
    |   */
    |  function reclaimToken(ERC20Basic token) external onlyOwner {
  > |    uint256 balance = token.balanceOf(this);
    |    token.safeTransfer(owner, balance);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x9a62d3825e07342568a34aa31aad38bb04250806.sol(144)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Cubik':
    |library SafeERC20 {
    |  function safeTransfer(ERC20Basic token, address to, uint256 value) internal {
  > |    require(token.transfer(to, value));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x9a62d3825e07342568a34aa31aad38bb04250806.sol(48)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Cubik':
    |   */
    |  function reclaimToken(ERC20Basic token) external onlyOwner {
  > |    uint256 balance = token.balanceOf(this);
    |    token.safeTransfer(owner, balance);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x9a62d3825e07342568a34aa31aad38bb04250806.sol(144)

[33mWarning[0m for UnrestrictedWrite in contract 'Cubik':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x9a62d3825e07342568a34aa31aad38bb04250806.sol(303)

[33mWarning[0m for UnrestrictedWrite in contract 'Cubik':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x9a62d3825e07342568a34aa31aad38bb04250806.sol(354)

[33mWarning[0m for UnrestrictedWrite in contract 'Cubik':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x9a62d3825e07342568a34aa31aad38bb04250806.sol(370)

[33mWarning[0m for UnrestrictedWrite in contract 'Cubik':
    |    returns (bool)
    |  {
  > |    allowed[msg.sender][_spender] = (
    |      allowed[msg.sender][_spender].add(_addedValue));
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x9a62d3825e07342568a34aa31aad38bb04250806.sol(409)

[33mWarning[0m for UnrestrictedWrite in contract 'Cubik':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x9a62d3825e07342568a34aa31aad38bb04250806.sol(434)

[33mWarning[0m for UnrestrictedWrite in contract 'Cubik':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x9a62d3825e07342568a34aa31aad38bb04250806.sol(436)

[33mWarning[0m for UnrestrictedWrite in contract 'Cubik':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x9a62d3825e07342568a34aa31aad38bb04250806.sol(106)

[33mWarning[0m for UnrestrictedWrite in contract 'Cubik':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x9a62d3825e07342568a34aa31aad38bb04250806.sol(124)

[33mWarning[0m for UnrestrictedWrite in contract 'Cubik':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x9a62d3825e07342568a34aa31aad38bb04250806.sol(209)

[33mWarning[0m for UnrestrictedWrite in contract 'Cubik':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x9a62d3825e07342568a34aa31aad38bb04250806.sol(217)

[33mWarning[0m for LockedEther in contract 'HasNoTokens':
    | * owner to reclaim the tokens.
    | */
  > |contract HasNoTokens is CanReclaimToken {
    |
    | /**
  at /home/jiaming/mavs_srcs/contract@0x9a62d3825e07342568a34aa31aad38bb04250806.sol(159)

[33mWarning[0m for UnhandledException in contract 'HasNoTokens':
    |library SafeERC20 {
    |  function safeTransfer(ERC20Basic token, address to, uint256 value) internal {
  > |    require(token.transfer(to, value));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x9a62d3825e07342568a34aa31aad38bb04250806.sol(48)

[33mWarning[0m for UnhandledException in contract 'HasNoTokens':
    |   */
    |  function reclaimToken(ERC20Basic token) external onlyOwner {
  > |    uint256 balance = token.balanceOf(this);
    |    token.safeTransfer(owner, balance);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x9a62d3825e07342568a34aa31aad38bb04250806.sol(144)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HasNoTokens':
    |library SafeERC20 {
    |  function safeTransfer(ERC20Basic token, address to, uint256 value) internal {
  > |    require(token.transfer(to, value));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x9a62d3825e07342568a34aa31aad38bb04250806.sol(48)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HasNoTokens':
    |   */
    |  function reclaimToken(ERC20Basic token) external onlyOwner {
  > |    uint256 balance = token.balanceOf(this);
    |    token.safeTransfer(owner, balance);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x9a62d3825e07342568a34aa31aad38bb04250806.sol(144)

[33mWarning[0m for UnrestrictedWrite in contract 'HasNoTokens':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x9a62d3825e07342568a34aa31aad38bb04250806.sol(106)

[33mWarning[0m for UnrestrictedWrite in contract 'HasNoTokens':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x9a62d3825e07342568a34aa31aad38bb04250806.sol(124)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x9a62d3825e07342568a34aa31aad38bb04250806.sol(74)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x9a62d3825e07342568a34aa31aad38bb04250806.sol(75)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @dev Allows the current owner to relinquish control of the contract.
    |   */
  > |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
    |    owner = address(0);
  at /home/jiaming/mavs_srcs/contract@0x9a62d3825e07342568a34aa31aad38bb04250806.sol(104)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address _newOwner) public onlyOwner {
    |    _transferOwnership(_newOwner);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x9a62d3825e07342568a34aa31aad38bb04250806.sol(113)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function _transferOwnership(address _newOwner) internal {
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  at /home/jiaming/mavs_srcs/contract@0x9a62d3825e07342568a34aa31aad38bb04250806.sol(121)

[31mViolation[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x9a62d3825e07342568a34aa31aad38bb04250806.sol(124)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x9a62d3825e07342568a34aa31aad38bb04250806.sol(106)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x9a62d3825e07342568a34aa31aad38bb04250806.sol(124)

[33mWarning[0m for LockedEther in contract 'Pausable':
    | * @dev Base contract which allows children to implement an emergency stop mechanism.
    | */
  > |contract Pausable is Ownable {
    |  event Pause();
    |  event Unpause();
  at /home/jiaming/mavs_srcs/contract@0x9a62d3825e07342568a34aa31aad38bb04250806.sol(182)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x9a62d3825e07342568a34aa31aad38bb04250806.sol(75)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev Allows the current owner to relinquish control of the contract.
    |   */
  > |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
    |    owner = address(0);
  at /home/jiaming/mavs_srcs/contract@0x9a62d3825e07342568a34aa31aad38bb04250806.sol(104)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address _newOwner) public onlyOwner {
    |    _transferOwnership(_newOwner);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x9a62d3825e07342568a34aa31aad38bb04250806.sol(113)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function _transferOwnership(address _newOwner) internal {
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  at /home/jiaming/mavs_srcs/contract@0x9a62d3825e07342568a34aa31aad38bb04250806.sol(121)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  event Unpause();
    |
  > |  bool public paused = false;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x9a62d3825e07342568a34aa31aad38bb04250806.sol(186)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to pause, triggers stopped state
    |   */
  > |  function pause() onlyOwner whenNotPaused public {
    |    paused = true;
    |    emit Pause();
  at /home/jiaming/mavs_srcs/contract@0x9a62d3825e07342568a34aa31aad38bb04250806.sol(208)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to unpause, returns to normal state
    |   */
  > |  function unpause() onlyOwner whenPaused public {
    |    paused = false;
    |    emit Unpause();
  at /home/jiaming/mavs_srcs/contract@0x9a62d3825e07342568a34aa31aad38bb04250806.sol(216)

[31mViolation[0m for UnrestrictedWrite in contract 'Pausable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x9a62d3825e07342568a34aa31aad38bb04250806.sol(124)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x9a62d3825e07342568a34aa31aad38bb04250806.sol(106)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x9a62d3825e07342568a34aa31aad38bb04250806.sol(124)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x9a62d3825e07342568a34aa31aad38bb04250806.sol(209)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x9a62d3825e07342568a34aa31aad38bb04250806.sol(217)

[33mWarning[0m for LockedEther in contract 'PausableToken':
    | * @dev StandardToken modified with pausable transfers.
    | **/
  > |contract PausableToken is StandardToken, Pausable {
    |
    |  function transfer(
  at /home/jiaming/mavs_srcs/contract@0x9a62d3825e07342568a34aa31aad38bb04250806.sol(450)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x9a62d3825e07342568a34aa31aad38bb04250806.sol(303)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x9a62d3825e07342568a34aa31aad38bb04250806.sol(354)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x9a62d3825e07342568a34aa31aad38bb04250806.sol(370)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    returns (bool)
    |  {
  > |    allowed[msg.sender][_spender] = (
    |      allowed[msg.sender][_spender].add(_addedValue));
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x9a62d3825e07342568a34aa31aad38bb04250806.sol(409)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x9a62d3825e07342568a34aa31aad38bb04250806.sol(434)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x9a62d3825e07342568a34aa31aad38bb04250806.sol(436)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x9a62d3825e07342568a34aa31aad38bb04250806.sol(106)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x9a62d3825e07342568a34aa31aad38bb04250806.sol(124)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x9a62d3825e07342568a34aa31aad38bb04250806.sol(209)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x9a62d3825e07342568a34aa31aad38bb04250806.sol(217)

[33mWarning[0m for LockedEther in contract 'SafeERC20':
    | * which allows you to call the safe operations as `token.safeTransfer(...)`, etc.
    | */
  > |library SafeERC20 {
    |  function safeTransfer(ERC20Basic token, address to, uint256 value) internal {
    |    require(token.transfer(to, value));
  at /home/jiaming/mavs_srcs/contract@0x9a62d3825e07342568a34aa31aad38bb04250806.sol(46)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x9a62d3825e07342568a34aa31aad38bb04250806.sol(228)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0x9a62d3825e07342568a34aa31aad38bb04250806.sol(329)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x9a62d3825e07342568a34aa31aad38bb04250806.sol(303)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x9a62d3825e07342568a34aa31aad38bb04250806.sol(354)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x9a62d3825e07342568a34aa31aad38bb04250806.sol(370)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    returns (bool)
    |  {
  > |    allowed[msg.sender][_spender] = (
    |      allowed[msg.sender][_spender].add(_addedValue));
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x9a62d3825e07342568a34aa31aad38bb04250806.sol(409)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x9a62d3825e07342568a34aa31aad38bb04250806.sol(434)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x9a62d3825e07342568a34aa31aad38bb04250806.sol(436)


