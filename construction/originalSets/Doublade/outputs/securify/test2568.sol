Processing contract: /home/jiaming/mavs_srcs/contract@0xa82b0ee3daeac02a5f63df48db34bd474c5f8af7.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa82b0ee3daeac02a5f63df48db34bd474c5f8af7.sol:BurnableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa82b0ee3daeac02a5f63df48db34bd474c5f8af7.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xa82b0ee3daeac02a5f63df48db34bd474c5f8af7.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xa82b0ee3daeac02a5f63df48db34bd474c5f8af7.sol:HasNoEther
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa82b0ee3daeac02a5f63df48db34bd474c5f8af7.sol:MintableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa82b0ee3daeac02a5f63df48db34bd474c5f8af7.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa82b0ee3daeac02a5f63df48db34bd474c5f8af7.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa82b0ee3daeac02a5f63df48db34bd474c5f8af7.sol:Scale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa82b0ee3daeac02a5f63df48db34bd474c5f8af7.sol:StandardToken
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
  at /home/jiaming/mavs_srcs/contract@0xa82b0ee3daeac02a5f63df48db34bd474c5f8af7.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xa82b0ee3daeac02a5f63df48db34bd474c5f8af7.sol(125)

[33mWarning[0m for LockedEther in contract 'BurnableToken':
    | * @dev Token that can be irreversibly burned (destroyed).
    | */
  > |contract BurnableToken is BasicToken {
    |
    |  event Burn(address indexed burner, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0xa82b0ee3daeac02a5f63df48db34bd474c5f8af7.sol(316)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xa82b0ee3daeac02a5f63df48db34bd474c5f8af7.sol(125)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa82b0ee3daeac02a5f63df48db34bd474c5f8af7.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    // sender's balance is greater than the totalSupply, which *should* be an assertion failure
    |
  > |    balances[_who] = balances[_who].sub(_value);
    |    totalSupply = totalSupply.sub(_value);
    |    emit Burn(_who, _value);
  at /home/jiaming/mavs_srcs/contract@0xa82b0ee3daeac02a5f63df48db34bd474c5f8af7.sol(333)

[33mWarning[0m for DAOConstantGas in contract 'HasNoEther':
    |   */
    |  function reclaimEther() external onlyOwner {
  > |    assert(owner.send(address(this).balance));
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xa82b0ee3daeac02a5f63df48db34bd474c5f8af7.sol(307)

[33mWarning[0m for LockedEther in contract 'HasNoEther':
    | * mining directly to the contract address
    |*/
  > |contract HasNoEther is Ownable {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xa82b0ee3daeac02a5f63df48db34bd474c5f8af7.sol(284)

[33mWarning[0m for MissingInputValidation in contract 'HasNoEther':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xa82b0ee3daeac02a5f63df48db34bd474c5f8af7.sol(21)

[33mWarning[0m for MissingInputValidation in contract 'HasNoEther':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xa82b0ee3daeac02a5f63df48db34bd474c5f8af7.sol(49)

[33mWarning[0m for MissingInputValidation in contract 'HasNoEther':
    |   * @dev Transfer all Ether held by the contract to the owner.
    |   */
  > |  function reclaimEther() external onlyOwner {
    |    assert(owner.send(address(this).balance));
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa82b0ee3daeac02a5f63df48db34bd474c5f8af7.sol(306)

[31mViolation[0m for TODAmount in contract 'HasNoEther':
    |   */
    |  function reclaimEther() external onlyOwner {
  > |    assert(owner.send(address(this).balance));
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xa82b0ee3daeac02a5f63df48db34bd474c5f8af7.sol(307)

[31mViolation[0m for TODReceiver in contract 'HasNoEther':
    |   */
    |  function reclaimEther() external onlyOwner {
  > |    assert(owner.send(address(this).balance));
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xa82b0ee3daeac02a5f63df48db34bd474c5f8af7.sol(307)

[33mWarning[0m for UnhandledException in contract 'HasNoEther':
    |   */
    |  function reclaimEther() external onlyOwner {
  > |    assert(owner.send(address(this).balance));
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xa82b0ee3daeac02a5f63df48db34bd474c5f8af7.sol(307)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HasNoEther':
    |   */
    |  function reclaimEther() external onlyOwner {
  > |    assert(owner.send(address(this).balance));
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xa82b0ee3daeac02a5f63df48db34bd474c5f8af7.sol(307)

[33mWarning[0m for UnrestrictedWrite in contract 'HasNoEther':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa82b0ee3daeac02a5f63df48db34bd474c5f8af7.sol(52)

[33mWarning[0m for LockedEther in contract 'MintableToken':
    | */
    |
  > |contract MintableToken is StandardToken, Ownable {
    |  event Mint(address indexed to, uint256 amount);
    |
  at /home/jiaming/mavs_srcs/contract@0xa82b0ee3daeac02a5f63df48db34bd474c5f8af7.sol(255)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xa82b0ee3daeac02a5f63df48db34bd474c5f8af7.sol(125)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa82b0ee3daeac02a5f63df48db34bd474c5f8af7.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa82b0ee3daeac02a5f63df48db34bd474c5f8af7.sol(193)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa82b0ee3daeac02a5f63df48db34bd474c5f8af7.sol(219)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xa82b0ee3daeac02a5f63df48db34bd474c5f8af7.sol(237)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xa82b0ee3daeac02a5f63df48db34bd474c5f8af7.sol(239)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa82b0ee3daeac02a5f63df48db34bd474c5f8af7.sol(52)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xa82b0ee3daeac02a5f63df48db34bd474c5f8af7.sol(20)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xa82b0ee3daeac02a5f63df48db34bd474c5f8af7.sol(21)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xa82b0ee3daeac02a5f63df48db34bd474c5f8af7.sol(49)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa82b0ee3daeac02a5f63df48db34bd474c5f8af7.sol(52)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0xa82b0ee3daeac02a5f63df48db34bd474c5f8af7.sol(77)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0xa82b0ee3daeac02a5f63df48db34bd474c5f8af7.sol(160)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xa82b0ee3daeac02a5f63df48db34bd474c5f8af7.sol(125)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa82b0ee3daeac02a5f63df48db34bd474c5f8af7.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa82b0ee3daeac02a5f63df48db34bd474c5f8af7.sol(193)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa82b0ee3daeac02a5f63df48db34bd474c5f8af7.sol(219)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xa82b0ee3daeac02a5f63df48db34bd474c5f8af7.sol(237)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xa82b0ee3daeac02a5f63df48db34bd474c5f8af7.sol(239)


