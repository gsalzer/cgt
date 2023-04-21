Processing contract: /home/jiaming/mavs_srcs/contract@0x37ff5b142a2a33814138fe6af15c15b43b3b798a.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x37ff5b142a2a33814138fe6af15c15b43b3b798a.sol:BurnableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x37ff5b142a2a33814138fe6af15c15b43b3b798a.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x37ff5b142a2a33814138fe6af15c15b43b3b798a.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x37ff5b142a2a33814138fe6af15c15b43b3b798a.sol:OBSToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x37ff5b142a2a33814138fe6af15c15b43b3b798a.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x37ff5b142a2a33814138fe6af15c15b43b3b798a.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x37ff5b142a2a33814138fe6af15c15b43b3b798a.sol:StandardToken
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
  at /home/jiaming/mavs_srcs/contract@0x37ff5b142a2a33814138fe6af15c15b43b3b798a.sol(128)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x37ff5b142a2a33814138fe6af15c15b43b3b798a.sol(152)

[33mWarning[0m for LockedEther in contract 'BurnableToken':
    | * @dev Token that can be irreversibly burned (destroyed).
    | */
  > |contract BurnableToken is BasicToken {
    |
    |  event Burn(address indexed burner, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0x37ff5b142a2a33814138fe6af15c15b43b3b798a.sol(173)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x37ff5b142a2a33814138fe6af15c15b43b3b798a.sol(152)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |    address burner = msg.sender;
  > |    balances[burner] = balances[burner].sub(_value);
    |    totalSupply_ = totalSupply_.sub(_value);
    |    emit Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0x37ff5b142a2a33814138fe6af15c15b43b3b798a.sol(187)

[33mWarning[0m for LockedEther in contract 'OBSToken':
    |}
    |
  > |contract OBSToken is BurnableToken, StandardToken, Ownable {
    |  // Public variables of the token
    |  string public constant name = "Operation Business System";
  at /home/jiaming/mavs_srcs/contract@0x37ff5b142a2a33814138fe6af15c15b43b3b798a.sol(291)

[33mWarning[0m for UnrestrictedWrite in contract 'OBSToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x37ff5b142a2a33814138fe6af15c15b43b3b798a.sol(152)

[33mWarning[0m for UnrestrictedWrite in contract 'OBSToken':
    |
    |    address burner = msg.sender;
  > |    balances[burner] = balances[burner].sub(_value);
    |    totalSupply_ = totalSupply_.sub(_value);
    |    emit Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0x37ff5b142a2a33814138fe6af15c15b43b3b798a.sol(187)

[33mWarning[0m for UnrestrictedWrite in contract 'OBSToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x37ff5b142a2a33814138fe6af15c15b43b3b798a.sol(221)

[33mWarning[0m for UnrestrictedWrite in contract 'OBSToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x37ff5b142a2a33814138fe6af15c15b43b3b798a.sol(237)

[33mWarning[0m for UnrestrictedWrite in contract 'OBSToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x37ff5b142a2a33814138fe6af15c15b43b3b798a.sol(263)

[33mWarning[0m for UnrestrictedWrite in contract 'OBSToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x37ff5b142a2a33814138fe6af15c15b43b3b798a.sol(281)

[33mWarning[0m for UnrestrictedWrite in contract 'OBSToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x37ff5b142a2a33814138fe6af15c15b43b3b798a.sol(283)

[33mWarning[0m for UnrestrictedWrite in contract 'OBSToken':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x37ff5b142a2a33814138fe6af15c15b43b3b798a.sol(88)

[33mWarning[0m for UnrestrictedWrite in contract 'OBSToken':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x37ff5b142a2a33814138fe6af15c15b43b3b798a.sol(96)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x37ff5b142a2a33814138fe6af15c15b43b3b798a.sol(54)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x37ff5b142a2a33814138fe6af15c15b43b3b798a.sol(55)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x37ff5b142a2a33814138fe6af15c15b43b3b798a.sol(85)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @dev Allows the current owner to relinquish control of the contract.
    |   */
  > |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
    |    owner = address(0);
  at /home/jiaming/mavs_srcs/contract@0x37ff5b142a2a33814138fe6af15c15b43b3b798a.sol(94)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x37ff5b142a2a33814138fe6af15c15b43b3b798a.sol(88)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x37ff5b142a2a33814138fe6af15c15b43b3b798a.sol(96)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x37ff5b142a2a33814138fe6af15c15b43b3b798a.sol(7)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0x37ff5b142a2a33814138fe6af15c15b43b3b798a.sol(203)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x37ff5b142a2a33814138fe6af15c15b43b3b798a.sol(152)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x37ff5b142a2a33814138fe6af15c15b43b3b798a.sol(221)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x37ff5b142a2a33814138fe6af15c15b43b3b798a.sol(237)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x37ff5b142a2a33814138fe6af15c15b43b3b798a.sol(263)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x37ff5b142a2a33814138fe6af15c15b43b3b798a.sol(281)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x37ff5b142a2a33814138fe6af15c15b43b3b798a.sol(283)


