Processing contract: /home/jiaming/mavs_srcs/contract@0x24e3e510ad032eb5b6616f3e51c1656a668aa570.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x24e3e510ad032eb5b6616f3e51c1656a668aa570.sol:Claimable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x24e3e510ad032eb5b6616f3e51c1656a668aa570.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x24e3e510ad032eb5b6616f3e51c1656a668aa570.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x24e3e510ad032eb5b6616f3e51c1656a668aa570.sol:Ether
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x24e3e510ad032eb5b6616f3e51c1656a668aa570.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x24e3e510ad032eb5b6616f3e51c1656a668aa570.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x24e3e510ad032eb5b6616f3e51c1656a668aa570.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x24e3e510ad032eb5b6616f3e51c1656a668aa570.sol:StandardToken
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
  at /home/jiaming/mavs_srcs/contract@0x24e3e510ad032eb5b6616f3e51c1656a668aa570.sol(58)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x24e3e510ad032eb5b6616f3e51c1656a668aa570.sol(81)

[33mWarning[0m for LockedEther in contract 'Claimable':
    | * This allows the new owner to accept the transfer.
    | */
  > |contract Claimable is Ownable {
    |  address public pendingOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x24e3e510ad032eb5b6616f3e51c1656a668aa570.sol(257)

[31mViolation[0m for MissingInputValidation in contract 'Claimable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner public {
    |    pendingOwner = newOwner;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x24e3e510ad032eb5b6616f3e51c1656a668aa570.sol(272)

[33mWarning[0m for MissingInputValidation in contract 'Claimable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x24e3e510ad032eb5b6616f3e51c1656a668aa570.sol(196)

[33mWarning[0m for MissingInputValidation in contract 'Claimable':
    |   * modifier anymore.
    |   */
  > |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
    |    owner = address(0);
  at /home/jiaming/mavs_srcs/contract@0x24e3e510ad032eb5b6616f3e51c1656a668aa570.sol(228)

[33mWarning[0m for MissingInputValidation in contract 'Claimable':
    | */
    |contract Claimable is Ownable {
  > |  address public pendingOwner;
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x24e3e510ad032eb5b6616f3e51c1656a668aa570.sol(258)

[33mWarning[0m for MissingInputValidation in contract 'Claimable':
    |   * @dev Allows the pendingOwner address to finalize the transfer.
    |   */
  > |  function claimOwnership() onlyPendingOwner public {
    |    emit OwnershipTransferred(owner, pendingOwner);
    |    owner = pendingOwner;
  at /home/jiaming/mavs_srcs/contract@0x24e3e510ad032eb5b6616f3e51c1656a668aa570.sol(279)

[33mWarning[0m for UnrestrictedWrite in contract 'Claimable':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x24e3e510ad032eb5b6616f3e51c1656a668aa570.sol(230)

[33mWarning[0m for UnrestrictedWrite in contract 'Claimable':
    |   */
    |  function transferOwnership(address newOwner) onlyOwner public {
  > |    pendingOwner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x24e3e510ad032eb5b6616f3e51c1656a668aa570.sol(273)

[33mWarning[0m for UnrestrictedWrite in contract 'Claimable':
    |  function claimOwnership() onlyPendingOwner public {
    |    emit OwnershipTransferred(owner, pendingOwner);
  > |    owner = pendingOwner;
    |    pendingOwner = address(0);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x24e3e510ad032eb5b6616f3e51c1656a668aa570.sol(281)

[33mWarning[0m for UnrestrictedWrite in contract 'Claimable':
    |    emit OwnershipTransferred(owner, pendingOwner);
    |    owner = pendingOwner;
  > |    pendingOwner = address(0);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x24e3e510ad032eb5b6616f3e51c1656a668aa570.sol(282)

[33mWarning[0m for LockedEther in contract 'Ether':
    | * @dev The Ether ERC20 contract
    | */
  > |contract Ether is StandardToken, Pausable, Claimable {
    |
    |  string public constant name = "Ether"; // solium-disable-line uppercase
  at /home/jiaming/mavs_srcs/contract@0x24e3e510ad032eb5b6616f3e51c1656a668aa570.sol(334)

[33mWarning[0m for UnrestrictedWrite in contract 'Ether':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x24e3e510ad032eb5b6616f3e51c1656a668aa570.sol(81)

[33mWarning[0m for UnrestrictedWrite in contract 'Ether':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x24e3e510ad032eb5b6616f3e51c1656a668aa570.sol(123)

[33mWarning[0m for UnrestrictedWrite in contract 'Ether':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x24e3e510ad032eb5b6616f3e51c1656a668aa570.sol(138)

[33mWarning[0m for UnrestrictedWrite in contract 'Ether':
    |   */
    |  function increaseApproval(address _spender, uint256 _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = (allowed[msg.sender][_spender].add(_addedValue));
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x24e3e510ad032eb5b6616f3e51c1656a668aa570.sol(163)

[33mWarning[0m for UnrestrictedWrite in contract 'Ether':
    |    uint256 oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x24e3e510ad032eb5b6616f3e51c1656a668aa570.sol(180)

[33mWarning[0m for UnrestrictedWrite in contract 'Ether':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x24e3e510ad032eb5b6616f3e51c1656a668aa570.sol(182)

[33mWarning[0m for UnrestrictedWrite in contract 'Ether':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x24e3e510ad032eb5b6616f3e51c1656a668aa570.sol(230)

[33mWarning[0m for UnrestrictedWrite in contract 'Ether':
    |   */
    |  function transferOwnership(address newOwner) onlyOwner public {
  > |    pendingOwner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x24e3e510ad032eb5b6616f3e51c1656a668aa570.sol(273)

[33mWarning[0m for UnrestrictedWrite in contract 'Ether':
    |  function claimOwnership() onlyPendingOwner public {
    |    emit OwnershipTransferred(owner, pendingOwner);
  > |    owner = pendingOwner;
    |    pendingOwner = address(0);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x24e3e510ad032eb5b6616f3e51c1656a668aa570.sol(281)

[33mWarning[0m for UnrestrictedWrite in contract 'Ether':
    |    emit OwnershipTransferred(owner, pendingOwner);
    |    owner = pendingOwner;
  > |    pendingOwner = address(0);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x24e3e510ad032eb5b6616f3e51c1656a668aa570.sol(282)

[33mWarning[0m for UnrestrictedWrite in contract 'Ether':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x24e3e510ad032eb5b6616f3e51c1656a668aa570.sol(317)

[33mWarning[0m for UnrestrictedWrite in contract 'Ether':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x24e3e510ad032eb5b6616f3e51c1656a668aa570.sol(325)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x24e3e510ad032eb5b6616f3e51c1656a668aa570.sol(195)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x24e3e510ad032eb5b6616f3e51c1656a668aa570.sol(196)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * modifier anymore.
    |   */
  > |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
    |    owner = address(0);
  at /home/jiaming/mavs_srcs/contract@0x24e3e510ad032eb5b6616f3e51c1656a668aa570.sol(228)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address _newOwner) public onlyOwner {
    |    _transferOwnership(_newOwner);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x24e3e510ad032eb5b6616f3e51c1656a668aa570.sol(237)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function _transferOwnership(address _newOwner) internal {
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  at /home/jiaming/mavs_srcs/contract@0x24e3e510ad032eb5b6616f3e51c1656a668aa570.sol(245)

[31mViolation[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x24e3e510ad032eb5b6616f3e51c1656a668aa570.sol(248)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x24e3e510ad032eb5b6616f3e51c1656a668aa570.sol(230)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x24e3e510ad032eb5b6616f3e51c1656a668aa570.sol(248)

[33mWarning[0m for LockedEther in contract 'Pausable':
    | * @dev Base contract which allows children to implement an emergency stop mechanism.
    | */
  > |contract Pausable is Ownable {
    |  event Pause();
    |  event Unpause();
  at /home/jiaming/mavs_srcs/contract@0x24e3e510ad032eb5b6616f3e51c1656a668aa570.sol(291)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x24e3e510ad032eb5b6616f3e51c1656a668aa570.sol(196)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * modifier anymore.
    |   */
  > |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
    |    owner = address(0);
  at /home/jiaming/mavs_srcs/contract@0x24e3e510ad032eb5b6616f3e51c1656a668aa570.sol(228)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address _newOwner) public onlyOwner {
    |    _transferOwnership(_newOwner);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x24e3e510ad032eb5b6616f3e51c1656a668aa570.sol(237)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function _transferOwnership(address _newOwner) internal {
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  at /home/jiaming/mavs_srcs/contract@0x24e3e510ad032eb5b6616f3e51c1656a668aa570.sol(245)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  event Unpause();
    |
  > |  bool public paused = false;
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x24e3e510ad032eb5b6616f3e51c1656a668aa570.sol(295)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to pause, triggers stopped state
    |   */
  > |  function pause() onlyOwner whenNotPaused public {
    |    paused = true;
    |    emit Pause();
  at /home/jiaming/mavs_srcs/contract@0x24e3e510ad032eb5b6616f3e51c1656a668aa570.sol(316)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to unpause, returns to normal state
    |   */
  > |  function unpause() onlyOwner whenPaused public {
    |    paused = false;
    |    emit Unpause();
  at /home/jiaming/mavs_srcs/contract@0x24e3e510ad032eb5b6616f3e51c1656a668aa570.sol(324)

[31mViolation[0m for UnrestrictedWrite in contract 'Pausable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x24e3e510ad032eb5b6616f3e51c1656a668aa570.sol(248)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x24e3e510ad032eb5b6616f3e51c1656a668aa570.sol(230)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x24e3e510ad032eb5b6616f3e51c1656a668aa570.sol(248)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x24e3e510ad032eb5b6616f3e51c1656a668aa570.sol(317)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x24e3e510ad032eb5b6616f3e51c1656a668aa570.sol(325)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x24e3e510ad032eb5b6616f3e51c1656a668aa570.sol(34)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0x24e3e510ad032eb5b6616f3e51c1656a668aa570.sol(105)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x24e3e510ad032eb5b6616f3e51c1656a668aa570.sol(81)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x24e3e510ad032eb5b6616f3e51c1656a668aa570.sol(123)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x24e3e510ad032eb5b6616f3e51c1656a668aa570.sol(138)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function increaseApproval(address _spender, uint256 _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = (allowed[msg.sender][_spender].add(_addedValue));
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x24e3e510ad032eb5b6616f3e51c1656a668aa570.sol(163)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint256 oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x24e3e510ad032eb5b6616f3e51c1656a668aa570.sol(180)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x24e3e510ad032eb5b6616f3e51c1656a668aa570.sol(182)


