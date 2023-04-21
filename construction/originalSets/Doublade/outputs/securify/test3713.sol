Processing contract: /home/jiaming/mavs_srcs/contract@0xf34a0e6b54df071d1efdf96396b9c17f7a0c1e00.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf34a0e6b54df071d1efdf96396b9c17f7a0c1e00.sol:CICoin
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf34a0e6b54df071d1efdf96396b9c17f7a0c1e00.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xf34a0e6b54df071d1efdf96396b9c17f7a0c1e00.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xf34a0e6b54df071d1efdf96396b9c17f7a0c1e00.sol:Math
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf34a0e6b54df071d1efdf96396b9c17f7a0c1e00.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf34a0e6b54df071d1efdf96396b9c17f7a0c1e00.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf34a0e6b54df071d1efdf96396b9c17f7a0c1e00.sol:PausableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf34a0e6b54df071d1efdf96396b9c17f7a0c1e00.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf34a0e6b54df071d1efdf96396b9c17f7a0c1e00.sol:StandardToken
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
  at /home/jiaming/mavs_srcs/contract@0xf34a0e6b54df071d1efdf96396b9c17f7a0c1e00.sol(184)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xf34a0e6b54df071d1efdf96396b9c17f7a0c1e00.sol(208)

[33mWarning[0m for DAOConstantGas in contract 'CICoin':
    |
    |  function() payable {
  > |      owner.transfer(msg.value);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xf34a0e6b54df071d1efdf96396b9c17f7a0c1e00.sol(376)

[33mWarning[0m for LockedEther in contract 'CICoin':
    |}
    |
  > |contract CICoin is Ownable, PausableToken {
    |
    |  string public constant name = "CICoin";
  at /home/jiaming/mavs_srcs/contract@0xf34a0e6b54df071d1efdf96396b9c17f7a0c1e00.sol(344)

[31mViolation[0m for TODReceiver in contract 'CICoin':
    |
    |  function() payable {
  > |      owner.transfer(msg.value);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xf34a0e6b54df071d1efdf96396b9c17f7a0c1e00.sol(376)

[33mWarning[0m for UnhandledException in contract 'CICoin':
    |
    |  function() payable {
  > |      owner.transfer(msg.value);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xf34a0e6b54df071d1efdf96396b9c17f7a0c1e00.sol(376)

[33mWarning[0m for UnrestrictedWrite in contract 'CICoin':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xf34a0e6b54df071d1efdf96396b9c17f7a0c1e00.sol(208)

[33mWarning[0m for UnrestrictedWrite in contract 'CICoin':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xf34a0e6b54df071d1efdf96396b9c17f7a0c1e00.sol(209)

[33mWarning[0m for UnrestrictedWrite in contract 'CICoin':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xf34a0e6b54df071d1efdf96396b9c17f7a0c1e00.sol(248)

[33mWarning[0m for UnrestrictedWrite in contract 'CICoin':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xf34a0e6b54df071d1efdf96396b9c17f7a0c1e00.sol(249)

[33mWarning[0m for UnrestrictedWrite in contract 'CICoin':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xf34a0e6b54df071d1efdf96396b9c17f7a0c1e00.sol(250)

[33mWarning[0m for UnrestrictedWrite in contract 'CICoin':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xf34a0e6b54df071d1efdf96396b9c17f7a0c1e00.sol(266)

[33mWarning[0m for UnrestrictedWrite in contract 'CICoin':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xf34a0e6b54df071d1efdf96396b9c17f7a0c1e00.sol(292)

[33mWarning[0m for UnrestrictedWrite in contract 'CICoin':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xf34a0e6b54df071d1efdf96396b9c17f7a0c1e00.sol(310)

[33mWarning[0m for UnrestrictedWrite in contract 'CICoin':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xf34a0e6b54df071d1efdf96396b9c17f7a0c1e00.sol(312)

[33mWarning[0m for UnrestrictedWrite in contract 'CICoin':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xf34a0e6b54df071d1efdf96396b9c17f7a0c1e00.sol(369)

[33mWarning[0m for UnrestrictedWrite in contract 'CICoin':
    |
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xf34a0e6b54df071d1efdf96396b9c17f7a0c1e00.sol(370)

[33mWarning[0m for UnrestrictedWrite in contract 'CICoin':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xf34a0e6b54df071d1efdf96396b9c17f7a0c1e00.sol(107)

[33mWarning[0m for UnrestrictedWrite in contract 'CICoin':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xf34a0e6b54df071d1efdf96396b9c17f7a0c1e00.sol(143)

[33mWarning[0m for UnrestrictedWrite in contract 'CICoin':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xf34a0e6b54df071d1efdf96396b9c17f7a0c1e00.sol(151)

[33mWarning[0m for LockedEther in contract 'Math':
    | * @dev Assorted math operations
    | */
  > |library Math {
    |  function max64(uint64 a, uint64 b) internal pure returns (uint64) {
    |    return a >= b ? a : b;
  at /home/jiaming/mavs_srcs/contract@0xf34a0e6b54df071d1efdf96396b9c17f7a0c1e00.sol(7)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xf34a0e6b54df071d1efdf96396b9c17f7a0c1e00.sol(77)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xf34a0e6b54df071d1efdf96396b9c17f7a0c1e00.sol(78)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xf34a0e6b54df071d1efdf96396b9c17f7a0c1e00.sol(104)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xf34a0e6b54df071d1efdf96396b9c17f7a0c1e00.sol(107)

[33mWarning[0m for LockedEther in contract 'Pausable':
    | * @dev Base contract which allows children to implement an emergency stop mechanism.
    | */
  > |contract Pausable is Ownable {
    |  event Pause();
    |  event Unpause();
  at /home/jiaming/mavs_srcs/contract@0xf34a0e6b54df071d1efdf96396b9c17f7a0c1e00.sol(116)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xf34a0e6b54df071d1efdf96396b9c17f7a0c1e00.sol(78)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xf34a0e6b54df071d1efdf96396b9c17f7a0c1e00.sol(104)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  event Unpause();
    |
  > |  bool public paused = false;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xf34a0e6b54df071d1efdf96396b9c17f7a0c1e00.sol(120)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to pause, triggers stopped state
    |   */
  > |  function pause() onlyOwner whenNotPaused public {
    |    paused = true;
    |    Pause();
  at /home/jiaming/mavs_srcs/contract@0xf34a0e6b54df071d1efdf96396b9c17f7a0c1e00.sol(142)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to unpause, returns to normal state
    |   */
  > |  function unpause() onlyOwner whenPaused public {
    |    paused = false;
    |    Unpause();
  at /home/jiaming/mavs_srcs/contract@0xf34a0e6b54df071d1efdf96396b9c17f7a0c1e00.sol(150)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xf34a0e6b54df071d1efdf96396b9c17f7a0c1e00.sol(107)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xf34a0e6b54df071d1efdf96396b9c17f7a0c1e00.sol(143)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xf34a0e6b54df071d1efdf96396b9c17f7a0c1e00.sol(151)

[33mWarning[0m for LockedEther in contract 'PausableToken':
    |
    |
  > |contract PausableToken is StandardToken, Pausable {
    |
    |  function transfer(address _to, uint256 _value) public whenNotPaused returns (bool) {
  at /home/jiaming/mavs_srcs/contract@0xf34a0e6b54df071d1efdf96396b9c17f7a0c1e00.sol(321)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xf34a0e6b54df071d1efdf96396b9c17f7a0c1e00.sol(208)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xf34a0e6b54df071d1efdf96396b9c17f7a0c1e00.sol(250)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xf34a0e6b54df071d1efdf96396b9c17f7a0c1e00.sol(266)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xf34a0e6b54df071d1efdf96396b9c17f7a0c1e00.sol(292)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xf34a0e6b54df071d1efdf96396b9c17f7a0c1e00.sol(310)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xf34a0e6b54df071d1efdf96396b9c17f7a0c1e00.sol(312)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xf34a0e6b54df071d1efdf96396b9c17f7a0c1e00.sol(107)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xf34a0e6b54df071d1efdf96396b9c17f7a0c1e00.sol(143)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xf34a0e6b54df071d1efdf96396b9c17f7a0c1e00.sol(151)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xf34a0e6b54df071d1efdf96396b9c17f7a0c1e00.sol(30)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0xf34a0e6b54df071d1efdf96396b9c17f7a0c1e00.sol(232)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xf34a0e6b54df071d1efdf96396b9c17f7a0c1e00.sol(208)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xf34a0e6b54df071d1efdf96396b9c17f7a0c1e00.sol(250)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xf34a0e6b54df071d1efdf96396b9c17f7a0c1e00.sol(266)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xf34a0e6b54df071d1efdf96396b9c17f7a0c1e00.sol(292)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xf34a0e6b54df071d1efdf96396b9c17f7a0c1e00.sol(310)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xf34a0e6b54df071d1efdf96396b9c17f7a0c1e00.sol(312)


