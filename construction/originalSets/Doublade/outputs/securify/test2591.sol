Processing contract: /home/jiaming/mavs_srcs/contract@0xa9aa4f570c2e7e446ab17faadfc972e7ef206e33.sol:BSWCValueCirculateAssets
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa9aa4f570c2e7e446ab17faadfc972e7ef206e33.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa9aa4f570c2e7e446ab17faadfc972e7ef206e33.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xa9aa4f570c2e7e446ab17faadfc972e7ef206e33.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xa9aa4f570c2e7e446ab17faadfc972e7ef206e33.sol:MyToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa9aa4f570c2e7e446ab17faadfc972e7ef206e33.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa9aa4f570c2e7e446ab17faadfc972e7ef206e33.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BSWCValueCirculateAssets':
    |}
    |
  > |contract BSWCValueCirculateAssets is StandardToken {
    |  string public symbol;
    |  string public  name;
  at /home/jiaming/mavs_srcs/contract@0xa9aa4f570c2e7e446ab17faadfc972e7ef206e33.sol(259)

[33mWarning[0m for UnrestrictedWrite in contract 'BSWCValueCirculateAssets':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender].amount = balances[msg.sender].amount.sub(_value);
    |    balances[_to].amount = balances[_to].amount.add(_value);
    |    if(!isExist(_to) && _to != owner){
  at /home/jiaming/mavs_srcs/contract@0xa9aa4f570c2e7e446ab17faadfc972e7ef206e33.sol(138)

[33mWarning[0m for UnrestrictedWrite in contract 'BSWCValueCirculateAssets':
    |    balances[_from].amount = balances[_from].amount.sub(_value);
    |    balances[_to].amount = balances[_to].amount.add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa9aa4f570c2e7e446ab17faadfc972e7ef206e33.sol(194)

[33mWarning[0m for UnrestrictedWrite in contract 'BSWCValueCirculateAssets':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa9aa4f570c2e7e446ab17faadfc972e7ef206e33.sol(206)

[33mWarning[0m for UnrestrictedWrite in contract 'BSWCValueCirculateAssets':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa9aa4f570c2e7e446ab17faadfc972e7ef206e33.sol(232)

[33mWarning[0m for UnrestrictedWrite in contract 'BSWCValueCirculateAssets':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xa9aa4f570c2e7e446ab17faadfc972e7ef206e33.sol(249)

[33mWarning[0m for UnrestrictedWrite in contract 'BSWCValueCirculateAssets':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xa9aa4f570c2e7e446ab17faadfc972e7ef206e33.sol(251)

[33mWarning[0m for UnrestrictedWrite in contract 'BSWCValueCirculateAssets':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa9aa4f570c2e7e446ab17faadfc972e7ef206e33.sol(38)

[33mWarning[0m for LockedEther in contract 'BasicToken':
    | * @dev Basic version of StandardToken, with no allowances.
    | */
  > |contract BasicToken is ERC20Basic, MyToken {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xa9aa4f570c2e7e446ab17faadfc972e7ef206e33.sol(105)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender].amount = balances[msg.sender].amount.sub(_value);
    |    balances[_to].amount = balances[_to].amount.add(_value);
    |    if(!isExist(_to) && _to != owner){
  at /home/jiaming/mavs_srcs/contract@0xa9aa4f570c2e7e446ab17faadfc972e7ef206e33.sol(138)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa9aa4f570c2e7e446ab17faadfc972e7ef206e33.sol(38)

[33mWarning[0m for LockedEther in contract 'MyToken':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract MyToken {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xa9aa4f570c2e7e446ab17faadfc972e7ef206e33.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'MyToken':
    | */
    |contract MyToken {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xa9aa4f570c2e7e446ab17faadfc972e7ef206e33.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'MyToken':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xa9aa4f570c2e7e446ab17faadfc972e7ef206e33.sol(35)

[33mWarning[0m for UnrestrictedWrite in contract 'MyToken':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa9aa4f570c2e7e446ab17faadfc972e7ef206e33.sol(38)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xa9aa4f570c2e7e446ab17faadfc972e7ef206e33.sol(47)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev https://github.com/ethereum/EIPs/issues/20
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0xa9aa4f570c2e7e446ab17faadfc972e7ef206e33.sol(176)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender].amount = balances[msg.sender].amount.sub(_value);
    |    balances[_to].amount = balances[_to].amount.add(_value);
    |    if(!isExist(_to) && _to != owner){
  at /home/jiaming/mavs_srcs/contract@0xa9aa4f570c2e7e446ab17faadfc972e7ef206e33.sol(138)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from].amount = balances[_from].amount.sub(_value);
    |    balances[_to].amount = balances[_to].amount.add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa9aa4f570c2e7e446ab17faadfc972e7ef206e33.sol(194)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa9aa4f570c2e7e446ab17faadfc972e7ef206e33.sol(206)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa9aa4f570c2e7e446ab17faadfc972e7ef206e33.sol(232)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xa9aa4f570c2e7e446ab17faadfc972e7ef206e33.sol(249)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xa9aa4f570c2e7e446ab17faadfc972e7ef206e33.sol(251)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa9aa4f570c2e7e446ab17faadfc972e7ef206e33.sol(38)


