Processing contract: /home/jiaming/mavs_srcs/contract@0xdf2c7238198ad8b389666574f2d8bc411a4b7428.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xdf2c7238198ad8b389666574f2d8bc411a4b7428.sol:Claimable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xdf2c7238198ad8b389666574f2d8bc411a4b7428.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xdf2c7238198ad8b389666574f2d8bc411a4b7428.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xdf2c7238198ad8b389666574f2d8bc411a4b7428.sol:MainframeToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xdf2c7238198ad8b389666574f2d8bc411a4b7428.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xdf2c7238198ad8b389666574f2d8bc411a4b7428.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xdf2c7238198ad8b389666574f2d8bc411a4b7428.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xdf2c7238198ad8b389666574f2d8bc411a4b7428.sol:StandardToken
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
  at /home/jiaming/mavs_srcs/contract@0xdf2c7238198ad8b389666574f2d8bc411a4b7428.sol(195)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xdf2c7238198ad8b389666574f2d8bc411a4b7428.sol(218)

[33mWarning[0m for LockedEther in contract 'Claimable':
    | * This allows the new owner to accept the transfer.
    | */
  > |contract Claimable is Ownable {
    |  address public pendingOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0xdf2c7238198ad8b389666574f2d8bc411a4b7428.sol(98)

[31mViolation[0m for MissingInputValidation in contract 'Claimable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner public {
    |    pendingOwner = newOwner;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xdf2c7238198ad8b389666574f2d8bc411a4b7428.sol(113)

[33mWarning[0m for MissingInputValidation in contract 'Claimable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xdf2c7238198ad8b389666574f2d8bc411a4b7428.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'Claimable':
    | */
    |contract Claimable is Ownable {
  > |  address public pendingOwner;
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xdf2c7238198ad8b389666574f2d8bc411a4b7428.sol(99)

[33mWarning[0m for MissingInputValidation in contract 'Claimable':
    |   * @dev Allows the pendingOwner address to finalize the transfer.
    |   */
  > |  function claimOwnership() onlyPendingOwner public {
    |    emit OwnershipTransferred(owner, pendingOwner);
    |    owner = pendingOwner;
  at /home/jiaming/mavs_srcs/contract@0xdf2c7238198ad8b389666574f2d8bc411a4b7428.sol(120)

[33mWarning[0m for UnrestrictedWrite in contract 'Claimable':
    |   */
    |  function transferOwnership(address newOwner) onlyOwner public {
  > |    pendingOwner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xdf2c7238198ad8b389666574f2d8bc411a4b7428.sol(114)

[33mWarning[0m for UnrestrictedWrite in contract 'Claimable':
    |  function claimOwnership() onlyPendingOwner public {
    |    emit OwnershipTransferred(owner, pendingOwner);
  > |    owner = pendingOwner;
    |    pendingOwner = address(0);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xdf2c7238198ad8b389666574f2d8bc411a4b7428.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'Claimable':
    |    emit OwnershipTransferred(owner, pendingOwner);
    |    owner = pendingOwner;
  > |    pendingOwner = address(0);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xdf2c7238198ad8b389666574f2d8bc411a4b7428.sol(123)

[33mWarning[0m for LockedEther in contract 'MainframeToken':
    |// File: contracts/MainframeToken.sol
    |
  > |contract MainframeToken is StandardToken, Pausable, Claimable {
    |  string public constant name = "Mainframe Token";
    |  string public constant symbol = "MFT";
  at /home/jiaming/mavs_srcs/contract@0xdf2c7238198ad8b389666574f2d8bc411a4b7428.sol(347)

[33mWarning[0m for UnhandledException in contract 'MainframeToken':
    |  function emergencyERC20Drain(ERC20 token, uint256 amount) external onlyOwner {
    |    // owner can drain tokens that are sent here by mistake
  > |    token.transfer(owner, amount);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xdf2c7238198ad8b389666574f2d8bc411a4b7428.sol(405)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MainframeToken':
    |  function emergencyERC20Drain(ERC20 token, uint256 amount) external onlyOwner {
    |    // owner can drain tokens that are sent here by mistake
  > |    token.transfer(owner, amount);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xdf2c7238198ad8b389666574f2d8bc411a4b7428.sol(405)

[33mWarning[0m for UnrestrictedWrite in contract 'MainframeToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xdf2c7238198ad8b389666574f2d8bc411a4b7428.sol(218)

[33mWarning[0m for UnrestrictedWrite in contract 'MainframeToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xdf2c7238198ad8b389666574f2d8bc411a4b7428.sol(275)

[33mWarning[0m for UnrestrictedWrite in contract 'MainframeToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xdf2c7238198ad8b389666574f2d8bc411a4b7428.sol(291)

[33mWarning[0m for UnrestrictedWrite in contract 'MainframeToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xdf2c7238198ad8b389666574f2d8bc411a4b7428.sol(317)

[33mWarning[0m for UnrestrictedWrite in contract 'MainframeToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xdf2c7238198ad8b389666574f2d8bc411a4b7428.sol(335)

[33mWarning[0m for UnrestrictedWrite in contract 'MainframeToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xdf2c7238198ad8b389666574f2d8bc411a4b7428.sol(337)

[33mWarning[0m for UnrestrictedWrite in contract 'MainframeToken':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xdf2c7238198ad8b389666574f2d8bc411a4b7428.sol(78)

[33mWarning[0m for UnrestrictedWrite in contract 'MainframeToken':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xdf2c7238198ad8b389666574f2d8bc411a4b7428.sol(86)

[33mWarning[0m for UnrestrictedWrite in contract 'MainframeToken':
    |   */
    |  function transferOwnership(address newOwner) onlyOwner public {
  > |    pendingOwner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xdf2c7238198ad8b389666574f2d8bc411a4b7428.sol(114)

[33mWarning[0m for UnrestrictedWrite in contract 'MainframeToken':
    |  function claimOwnership() onlyPendingOwner public {
    |    emit OwnershipTransferred(owner, pendingOwner);
  > |    owner = pendingOwner;
    |    pendingOwner = address(0);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xdf2c7238198ad8b389666574f2d8bc411a4b7428.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'MainframeToken':
    |    emit OwnershipTransferred(owner, pendingOwner);
    |    owner = pendingOwner;
  > |    pendingOwner = address(0);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xdf2c7238198ad8b389666574f2d8bc411a4b7428.sol(123)

[33mWarning[0m for UnrestrictedWrite in contract 'MainframeToken':
    |
    |  function setDistributor(address newDistributor) external onlyOwner {
  > |    distributor = newDistributor;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xdf2c7238198ad8b389666574f2d8bc411a4b7428.sol(398)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xdf2c7238198ad8b389666574f2d8bc411a4b7428.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xdf2c7238198ad8b389666574f2d8bc411a4b7428.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xdf2c7238198ad8b389666574f2d8bc411a4b7428.sol(37)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xdf2c7238198ad8b389666574f2d8bc411a4b7428.sol(40)

[33mWarning[0m for LockedEther in contract 'Pausable':
    | * @dev Base contract which allows children to implement an emergency stop mechanism.
    | */
  > |contract Pausable is Ownable {
    |  event Pause();
    |  event Unpause();
  at /home/jiaming/mavs_srcs/contract@0xdf2c7238198ad8b389666574f2d8bc411a4b7428.sol(51)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xdf2c7238198ad8b389666574f2d8bc411a4b7428.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xdf2c7238198ad8b389666574f2d8bc411a4b7428.sol(37)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  event Unpause();
    |
  > |  bool public paused = false;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xdf2c7238198ad8b389666574f2d8bc411a4b7428.sol(55)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to pause, triggers stopped state
    |   */
  > |  function pause() onlyOwner whenNotPaused public {
    |    paused = true;
    |    emit Pause();
  at /home/jiaming/mavs_srcs/contract@0xdf2c7238198ad8b389666574f2d8bc411a4b7428.sol(77)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to unpause, returns to normal state
    |   */
  > |  function unpause() onlyOwner whenPaused public {
    |    paused = false;
    |    emit Unpause();
  at /home/jiaming/mavs_srcs/contract@0xdf2c7238198ad8b389666574f2d8bc411a4b7428.sol(85)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xdf2c7238198ad8b389666574f2d8bc411a4b7428.sol(40)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xdf2c7238198ad8b389666574f2d8bc411a4b7428.sol(78)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xdf2c7238198ad8b389666574f2d8bc411a4b7428.sol(86)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xdf2c7238198ad8b389666574f2d8bc411a4b7428.sol(133)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0xdf2c7238198ad8b389666574f2d8bc411a4b7428.sol(257)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xdf2c7238198ad8b389666574f2d8bc411a4b7428.sol(218)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xdf2c7238198ad8b389666574f2d8bc411a4b7428.sol(275)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xdf2c7238198ad8b389666574f2d8bc411a4b7428.sol(291)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xdf2c7238198ad8b389666574f2d8bc411a4b7428.sol(317)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xdf2c7238198ad8b389666574f2d8bc411a4b7428.sol(335)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xdf2c7238198ad8b389666574f2d8bc411a4b7428.sol(337)


