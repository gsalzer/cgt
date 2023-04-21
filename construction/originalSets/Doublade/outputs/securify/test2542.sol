Processing contract: /home/jiaming/mavs_srcs/contract@0xa692c7c1820ec7fb46c17bbd5ab605f4b945d4be.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa692c7c1820ec7fb46c17bbd5ab605f4b945d4be.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xa692c7c1820ec7fb46c17bbd5ab605f4b945d4be.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xa692c7c1820ec7fb46c17bbd5ab605f4b945d4be.sol:OslavToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa692c7c1820ec7fb46c17bbd5ab605f4b945d4be.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa692c7c1820ec7fb46c17bbd5ab605f4b945d4be.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa692c7c1820ec7fb46c17bbd5ab605f4b945d4be.sol:StandardToken
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
  at /home/jiaming/mavs_srcs/contract@0xa692c7c1820ec7fb46c17bbd5ab605f4b945d4be.sol(128)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xa692c7c1820ec7fb46c17bbd5ab605f4b945d4be.sol(151)

[33mWarning[0m for DAOConstantGas in contract 'OslavToken':
    |    require(state == State.Active); // Reject the donations after TDE ended
    |
  > |    contractWallet.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa692c7c1820ec7fb46c17bbd5ab605f4b945d4be.sol(362)

[33mWarning[0m for LockedEther in contract 'OslavToken':
    |}
    | 
  > |contract OslavToken is StandardToken, Ownable {
    |
    |  using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0xa692c7c1820ec7fb46c17bbd5ab605f4b945d4be.sol(264)

[33mWarning[0m for UnhandledException in contract 'OslavToken':
    |    require(state == State.Active); // Reject the donations after TDE ended
    |
  > |    contractWallet.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa692c7c1820ec7fb46c17bbd5ab605f4b945d4be.sol(362)

[33mWarning[0m for UnrestrictedWrite in contract 'OslavToken':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa692c7c1820ec7fb46c17bbd5ab605f4b945d4be.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'OslavToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xa692c7c1820ec7fb46c17bbd5ab605f4b945d4be.sol(151)

[33mWarning[0m for UnrestrictedWrite in contract 'OslavToken':
    |
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa692c7c1820ec7fb46c17bbd5ab605f4b945d4be.sol(152)

[33mWarning[0m for UnrestrictedWrite in contract 'OslavToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xa692c7c1820ec7fb46c17bbd5ab605f4b945d4be.sol(190)

[33mWarning[0m for UnrestrictedWrite in contract 'OslavToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xa692c7c1820ec7fb46c17bbd5ab605f4b945d4be.sol(191)

[33mWarning[0m for UnrestrictedWrite in contract 'OslavToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa692c7c1820ec7fb46c17bbd5ab605f4b945d4be.sol(192)

[33mWarning[0m for UnrestrictedWrite in contract 'OslavToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa692c7c1820ec7fb46c17bbd5ab605f4b945d4be.sol(208)

[33mWarning[0m for UnrestrictedWrite in contract 'OslavToken':
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool)
    |  {
  > |    allowed[msg.sender][_spender] = (allowed[msg.sender][_spender].add(_addedValue));
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa692c7c1820ec7fb46c17bbd5ab605f4b945d4be.sol(236)

[33mWarning[0m for UnrestrictedWrite in contract 'OslavToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue >= oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xa692c7c1820ec7fb46c17bbd5ab605f4b945d4be.sol(255)

[33mWarning[0m for UnrestrictedWrite in contract 'OslavToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xa692c7c1820ec7fb46c17bbd5ab605f4b945d4be.sol(257)

[33mWarning[0m for UnrestrictedWrite in contract 'OslavToken':
    |   */
    |  function transferOwnership(address newOwner) public onlyOwner {
  > |    balances[newOwner] = balances[newOwner].add(balances[owner]);
    |    emit Transfer(owner, newOwner, balances[owner]);
    |    balances[owner] = 0;
  at /home/jiaming/mavs_srcs/contract@0xa692c7c1820ec7fb46c17bbd5ab605f4b945d4be.sol(348)

[33mWarning[0m for UnrestrictedWrite in contract 'OslavToken':
    |    balances[newOwner] = balances[newOwner].add(balances[owner]);
    |    emit Transfer(owner, newOwner, balances[owner]);
  > |    balances[owner] = 0;
    |
    |    super.transferOwnership(newOwner);
  at /home/jiaming/mavs_srcs/contract@0xa692c7c1820ec7fb46c17bbd5ab605f4b945d4be.sol(350)

[33mWarning[0m for UnrestrictedWrite in contract 'OslavToken':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xa692c7c1820ec7fb46c17bbd5ab605f4b945d4be.sol(97)

[33mWarning[0m for UnrestrictedWrite in contract 'OslavToken':
    |  function close() onlyOwner public {
    |    require(state == State.Active);
  > |    state = State.Closed;
    |
    |    //The team locked period are 2 years
  at /home/jiaming/mavs_srcs/contract@0xa692c7c1820ec7fb46c17bbd5ab605f4b945d4be.sol(370)

[33mWarning[0m for UnrestrictedWrite in contract 'OslavToken':
    |
    |    //The team locked period are 2 years
  > |    teamLockUpPeriod = now + 730 days;
    |
    |    emit Closed();
  at /home/jiaming/mavs_srcs/contract@0xa692c7c1820ec7fb46c17bbd5ab605f4b945d4be.sol(373)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xa692c7c1820ec7fb46c17bbd5ab605f4b945d4be.sol(55)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xa692c7c1820ec7fb46c17bbd5ab605f4b945d4be.sol(56)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xa692c7c1820ec7fb46c17bbd5ab605f4b945d4be.sol(86)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @dev Allows the current owner to relinquish control of the contract.
    |   */
  > |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
    |    owner = address(0);
  at /home/jiaming/mavs_srcs/contract@0xa692c7c1820ec7fb46c17bbd5ab605f4b945d4be.sol(95)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa692c7c1820ec7fb46c17bbd5ab605f4b945d4be.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xa692c7c1820ec7fb46c17bbd5ab605f4b945d4be.sol(97)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xa692c7c1820ec7fb46c17bbd5ab605f4b945d4be.sol(7)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev https://github.com/ethereum/EIPs/issues/20
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0xa692c7c1820ec7fb46c17bbd5ab605f4b945d4be.sol(174)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xa692c7c1820ec7fb46c17bbd5ab605f4b945d4be.sol(151)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa692c7c1820ec7fb46c17bbd5ab605f4b945d4be.sol(192)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa692c7c1820ec7fb46c17bbd5ab605f4b945d4be.sol(208)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool)
    |  {
  > |    allowed[msg.sender][_spender] = (allowed[msg.sender][_spender].add(_addedValue));
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa692c7c1820ec7fb46c17bbd5ab605f4b945d4be.sol(236)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue >= oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xa692c7c1820ec7fb46c17bbd5ab605f4b945d4be.sol(255)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xa692c7c1820ec7fb46c17bbd5ab605f4b945d4be.sol(257)


