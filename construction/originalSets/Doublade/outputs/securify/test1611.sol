Processing contract: /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol:BasicToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol:Manageable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol:Maths
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol:MintableToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol:XPToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    | * @dev Basic version of StandardToken, with no allowances.
    | */
  > |contract BasicToken is ERC20Basic {
    |  using Maths for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol(255)

[31mViolation[0m for MissingInputValidation in contract 'BasicToken':
    |  * @return An uint256 representing the amount owned by the passed address.
    |  */
  > |  function balanceOf(address _owner) public view returns (uint256) {
    |    return balances[_owner];
    |  }
  at /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol(289)

[33mWarning[0m for MissingInputValidation in contract 'BasicToken':
    |  * @dev total number of tokens in existence
    |  */
  > |  function totalSupply() public view returns (uint256) {
    |    return totalSupply_;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol(265)

[33mWarning[0m for MissingInputValidation in contract 'BasicToken':
    |  * @param _value The amount to be transferred.
    |  */
  > |  function transfer(address _to, uint256 _value) public returns (bool) {
    |    require(_to != address(0));
    |    require(_value <= balances[msg.sender]);
  at /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol(274)

[31mViolation[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    balances[msg.sender] = balances[msg.sender].minus(_value);
  > |    balances[_to] = balances[_to].plus(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol(279)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].minus(_value);
    |    balances[_to] = balances[_to].plus(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol(278)

[33mWarning[0m for LockedEther in contract 'Manageable':
    | * @title Manageable
    | */
  > |contract Manageable {
    |  address public owner;
    |  address public manager;
  at /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol(175)

[33mWarning[0m for MissingInputValidation in contract 'Manageable':
    | */
    |contract Manageable {
  > |  address public owner;
    |  address public manager;
    |
  at /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol(176)

[33mWarning[0m for MissingInputValidation in contract 'Manageable':
    |contract Manageable {
    |  address public owner;
  > |  address public manager;
    |
    |  event OwnershipChanged(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol(177)

[33mWarning[0m for MissingInputValidation in contract 'Manageable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    emit OwnershipChanged(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol(211)

[33mWarning[0m for MissingInputValidation in contract 'Manageable':
    |   * @param newManager The address to give contract management rights.
    |   */
  > |  function replaceManager(address newManager) public onlyManagement {
    |    require(newManager != address(0));
    |    emit ManagementChanged(manager, newManager);
  at /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol(221)

[33mWarning[0m for UnrestrictedWrite in contract 'Manageable':
    |    require(newOwner != address(0));
    |    emit OwnershipChanged(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol(214)

[33mWarning[0m for UnrestrictedWrite in contract 'Manageable':
    |    require(newManager != address(0));
    |    emit ManagementChanged(manager, newManager);
  > |    manager = newManager;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol(224)

[33mWarning[0m for LockedEther in contract 'Maths':
    | * A library to make working with numbers in Solidity hurt your brain less.
    | */
  > |library Maths {
    |  /**
    |   * @dev Adds two addends together, returns the sum
  at /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'Maths':
    |   * @return sum the sum of the equation (e.g. addendA + addendB)
    |   */
  > |  function plus(
    |    uint256 addendA,
    |    uint256 addendB
  at /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol(14)

[33mWarning[0m for MissingInputValidation in contract 'Maths':
    |   * @return difference the difference (e.g. minuend - subtrahend)
    |   */
  > |  function minus(
    |    uint256 minuend,
    |    uint256 subtrahend
  at /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol(27)

[33mWarning[0m for MissingInputValidation in contract 'Maths':
    |   * @return product the product of the equation (e.g. factorA * factorB)
    |   */
  > |  function mul(
    |    uint256 factorA,
    |    uint256 factorB
  at /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol(41)

[33mWarning[0m for MissingInputValidation in contract 'Maths':
    |   * @return product the product of the equation (e.g. factorA * factorB)
    |   */
  > |  function times(
    |    uint256 factorA,
    |    uint256 factorB
  at /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol(56)

[33mWarning[0m for MissingInputValidation in contract 'Maths':
    |   * @return quotient the quotient of the equation (e.g. dividend / divisor)
    |   */
  > |  function div(
    |    uint256 dividend,
    |    uint256 divisor
  at /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol(69)

[33mWarning[0m for MissingInputValidation in contract 'Maths':
    |   * @return quotient the quotient of the equation (e.g. dividend / divisor)
    |   */
  > |  function dividedBy(
    |    uint256 dividend,
    |    uint256 divisor
  at /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol(83)

[33mWarning[0m for MissingInputValidation in contract 'Maths':
    |   * @return remainder the remainder of the equation (e.g. dividend % divisor)
    |   */
  > |  function divideSafely(
    |    uint256 dividend,
    |    uint256 divisor
  at /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol(97)

[33mWarning[0m for MissingInputValidation in contract 'Maths':
    |   * @return result the lesser of the two values
    |   */
  > |  function min(
    |    uint256 a,
    |    uint256 b
  at /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol(111)

[33mWarning[0m for MissingInputValidation in contract 'Maths':
    |   * @return result the greater of the two values
    |   */
  > |  function max(
    |    uint256 a,
    |    uint256 b
  at /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol(124)

[33mWarning[0m for MissingInputValidation in contract 'Maths':
    |   * @return isTrue whether a is less than b
    |   */
  > |  function isLessThan(uint256 a, uint256 b) public pure returns (bool isTrue) {
    |    isTrue = a < b;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol(137)

[33mWarning[0m for MissingInputValidation in contract 'Maths':
    |   * @return isTrue whether a is less than or equal to b
    |   */
  > |  function isAtMost(uint256 a, uint256 b) public pure returns (bool isTrue) {
    |    isTrue = a <= b;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol(147)

[33mWarning[0m for MissingInputValidation in contract 'Maths':
    |   * @return isTrue whether a is greater than b
    |   */
  > |  function isGreaterThan(uint256 a, uint256 b) public pure returns (bool isTrue) {
    |    isTrue = a > b;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol(157)

[33mWarning[0m for MissingInputValidation in contract 'Maths':
    |   * @return isTrue whether a is less than b
    |   */
  > |  function isAtLeast(uint256 a, uint256 b) public pure returns (bool isTrue) {
    |    isTrue = a >= b;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol(167)

[33mWarning[0m for LockedEther in contract 'MintableToken':
    | * Based on code by TokenMarketNet: https://github.com/TokenMarketNet/ico/blob/master/contracts/MintableToken.sol
    | */
  > |contract MintableToken is StandardToken, Manageable {
    |  using Maths for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol(397)

[31mViolation[0m for MissingInputValidation in contract 'MintableToken':
    |  * @return An uint256 representing the amount owned by the passed address.
    |  */
  > |  function balanceOf(address _owner) public view returns (uint256) {
    |    return balances[_owner];
    |  }
  at /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol(289)

[31mViolation[0m for MissingInputValidation in contract 'MintableToken':
    |   * @param _value uint256 the amount of tokens to be transferred
    |   */
  > |  function transferFrom(address _from, address _to, uint256 _value) public returns (bool) {
    |    require(_to != address(0));
    |    require(_value <= balances[_from]);
  at /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol(314)

[31mViolation[0m for MissingInputValidation in contract 'MintableToken':
    |   * @param _value The amount of tokens to be spent.
    |   */
  > |  function approve(address _spender, uint256 _value) public returns (bool) {
    |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol(336)

[31mViolation[0m for MissingInputValidation in contract 'MintableToken':
    |   * @return A uint256 specifying the amount of tokens still available for the spender.
    |   */
  > |  function allowance(address _owner, address _spender) public view returns (uint256) {
    |    return allowed[_owner][_spender];
    |  }
  at /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol(348)

[31mViolation[0m for MissingInputValidation in contract 'MintableToken':
    |   * @param _addedValue The amount of tokens to increase the allowance by.
    |   */
  > |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
    |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].plus(_addedValue);
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol(362)

[31mViolation[0m for MissingInputValidation in contract 'MintableToken':
    |   * @param _subtractedValue The amount of tokens to decrease the allowance by.
    |   */
  > |  function decreaseApproval(address _spender, uint _subtractedValue) public returns (bool) {
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  at /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol(378)

[31mViolation[0m for MissingInputValidation in contract 'MintableToken':
    |   * @return A boolean that indicates if the operation was successful.
    |   */
  > |  function mint(address _to, uint256 _amount) onlyManagement canMint public returns (bool) {
    |    totalSupply_ = totalSupply_.plus(_amount);
    |    balances[_to] = balances[_to].plus(_amount);
  at /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol(417)

[33mWarning[0m for MissingInputValidation in contract 'MintableToken':
    | */
    |contract Manageable {
  > |  address public owner;
    |  address public manager;
    |
  at /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol(176)

[33mWarning[0m for MissingInputValidation in contract 'MintableToken':
    |contract Manageable {
    |  address public owner;
  > |  address public manager;
    |
    |  event OwnershipChanged(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol(177)

[33mWarning[0m for MissingInputValidation in contract 'MintableToken':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    emit OwnershipChanged(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol(211)

[33mWarning[0m for MissingInputValidation in contract 'MintableToken':
    |   * @param newManager The address to give contract management rights.
    |   */
  > |  function replaceManager(address newManager) public onlyManagement {
    |    require(newManager != address(0));
    |    emit ManagementChanged(manager, newManager);
  at /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol(221)

[33mWarning[0m for MissingInputValidation in contract 'MintableToken':
    |  * @dev total number of tokens in existence
    |  */
  > |  function totalSupply() public view returns (uint256) {
    |    return totalSupply_;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol(265)

[33mWarning[0m for MissingInputValidation in contract 'MintableToken':
    |  * @param _value The amount to be transferred.
    |  */
  > |  function transfer(address _to, uint256 _value) public returns (bool) {
    |    require(_to != address(0));
    |    require(_value <= balances[msg.sender]);
  at /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol(274)

[33mWarning[0m for MissingInputValidation in contract 'MintableToken':
    |  event MintFinished();
    |
  > |  bool public mintingFinished = false;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol(403)

[33mWarning[0m for MissingInputValidation in contract 'MintableToken':
    |   * @return True if the operation was successful.
    |   */
  > |  function finishMinting() onlyManagement canMint public returns (bool) {
    |    mintingFinished = true;
    |    emit MintFinished();
  at /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol(429)

[31mViolation[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    balances[msg.sender] = balances[msg.sender].minus(_value);
  > |    balances[_to] = balances[_to].plus(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol(279)

[31mViolation[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].minus(_value);
    |    balances[_to] = balances[_to].plus(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].minus(_value);
  at /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol(319)

[31mViolation[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    balances[_from] = balances[_from].minus(_value);
  > |    balances[_to] = balances[_to].plus(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].minus(_value);
    |    emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol(320)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].minus(_value);
    |    balances[_to] = balances[_to].plus(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol(278)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    balances[_from] = balances[_from].minus(_value);
    |    balances[_to] = balances[_to].plus(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].minus(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol(321)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol(337)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].plus(_addedValue);
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol(363)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.minus(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol(381)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.minus(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol(383)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(newOwner != address(0));
    |    emit OwnershipChanged(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol(214)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(newManager != address(0));
    |    emit ManagementChanged(manager, newManager);
  > |    manager = newManager;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol(224)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function mint(address _to, uint256 _amount) onlyManagement canMint public returns (bool) {
  > |    totalSupply_ = totalSupply_.plus(_amount);
    |    balances[_to] = balances[_to].plus(_amount);
    |    emit Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol(418)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function mint(address _to, uint256 _amount) onlyManagement canMint public returns (bool) {
    |    totalSupply_ = totalSupply_.plus(_amount);
  > |    balances[_to] = balances[_to].plus(_amount);
    |    emit Mint(_to, _amount);
    |    emit Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol(419)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function finishMinting() onlyManagement canMint public returns (bool) {
  > |    mintingFinished = true;
    |    emit MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol(430)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |  using Maths for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol(302)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |  * @return An uint256 representing the amount owned by the passed address.
    |  */
  > |  function balanceOf(address _owner) public view returns (uint256) {
    |    return balances[_owner];
    |  }
  at /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol(289)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |   * @param _value uint256 the amount of tokens to be transferred
    |   */
  > |  function transferFrom(address _from, address _to, uint256 _value) public returns (bool) {
    |    require(_to != address(0));
    |    require(_value <= balances[_from]);
  at /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol(314)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |   * @param _value The amount of tokens to be spent.
    |   */
  > |  function approve(address _spender, uint256 _value) public returns (bool) {
    |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol(336)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |   * @return A uint256 specifying the amount of tokens still available for the spender.
    |   */
  > |  function allowance(address _owner, address _spender) public view returns (uint256) {
    |    return allowed[_owner][_spender];
    |  }
  at /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol(348)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |   * @param _addedValue The amount of tokens to increase the allowance by.
    |   */
  > |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
    |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].plus(_addedValue);
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol(362)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |   * @param _subtractedValue The amount of tokens to decrease the allowance by.
    |   */
  > |  function decreaseApproval(address _spender, uint _subtractedValue) public returns (bool) {
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  at /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol(378)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |  * @dev total number of tokens in existence
    |  */
  > |  function totalSupply() public view returns (uint256) {
    |    return totalSupply_;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol(265)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |  * @param _value The amount to be transferred.
    |  */
  > |  function transfer(address _to, uint256 _value) public returns (bool) {
    |    require(_to != address(0));
    |    require(_value <= balances[msg.sender]);
  at /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol(274)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    balances[msg.sender] = balances[msg.sender].minus(_value);
  > |    balances[_to] = balances[_to].plus(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol(279)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].minus(_value);
    |    balances[_to] = balances[_to].plus(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].minus(_value);
  at /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol(319)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    balances[_from] = balances[_from].minus(_value);
  > |    balances[_to] = balances[_to].plus(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].minus(_value);
    |    emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol(320)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].minus(_value);
    |    balances[_to] = balances[_to].plus(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol(278)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].minus(_value);
    |    balances[_to] = balances[_to].plus(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].minus(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol(321)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol(337)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].plus(_addedValue);
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol(363)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.minus(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol(381)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.minus(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol(383)

[33mWarning[0m for LockedEther in contract 'XPToken':
    |}
    |
  > |contract XPToken is MintableToken {
    |  using Maths for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol(436)

[31mViolation[0m for MissingInputValidation in contract 'XPToken':
    |  * @return An uint256 representing the amount owned by the passed address.
    |  */
  > |  function balanceOf(address _owner) public view returns (uint256) {
    |    return balances[_owner];
    |  }
  at /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol(289)

[31mViolation[0m for MissingInputValidation in contract 'XPToken':
    |   * @param _value uint256 the amount of tokens to be transferred
    |   */
  > |  function transferFrom(address _from, address _to, uint256 _value) public returns (bool) {
    |    require(_to != address(0));
    |    require(_value <= balances[_from]);
  at /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol(314)

[31mViolation[0m for MissingInputValidation in contract 'XPToken':
    |   * @param _value The amount of tokens to be spent.
    |   */
  > |  function approve(address _spender, uint256 _value) public returns (bool) {
    |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol(336)

[31mViolation[0m for MissingInputValidation in contract 'XPToken':
    |   * @return A uint256 specifying the amount of tokens still available for the spender.
    |   */
  > |  function allowance(address _owner, address _spender) public view returns (uint256) {
    |    return allowed[_owner][_spender];
    |  }
  at /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol(348)

[31mViolation[0m for MissingInputValidation in contract 'XPToken':
    |   * @param _addedValue The amount of tokens to increase the allowance by.
    |   */
  > |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
    |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].plus(_addedValue);
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol(362)

[31mViolation[0m for MissingInputValidation in contract 'XPToken':
    |   * @param _subtractedValue The amount of tokens to decrease the allowance by.
    |   */
  > |  function decreaseApproval(address _spender, uint _subtractedValue) public returns (bool) {
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  at /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol(378)

[31mViolation[0m for MissingInputValidation in contract 'XPToken':
    |   * @return A boolean that indicates if the operation was successful.
    |   */
  > |  function mint(address _to, uint256 _amount) onlyManagement canMint public returns (bool) {
    |    totalSupply_ = totalSupply_.plus(_amount);
    |    balances[_to] = balances[_to].plus(_amount);
  at /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol(417)

[33mWarning[0m for MissingInputValidation in contract 'XPToken':
    | */
    |contract Manageable {
  > |  address public owner;
    |  address public manager;
    |
  at /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol(176)

[33mWarning[0m for MissingInputValidation in contract 'XPToken':
    |contract Manageable {
    |  address public owner;
  > |  address public manager;
    |
    |  event OwnershipChanged(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol(177)

[33mWarning[0m for MissingInputValidation in contract 'XPToken':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    emit OwnershipChanged(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol(211)

[33mWarning[0m for MissingInputValidation in contract 'XPToken':
    |   * @param newManager The address to give contract management rights.
    |   */
  > |  function replaceManager(address newManager) public onlyManagement {
    |    require(newManager != address(0));
    |    emit ManagementChanged(manager, newManager);
  at /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol(221)

[33mWarning[0m for MissingInputValidation in contract 'XPToken':
    |  * @dev total number of tokens in existence
    |  */
  > |  function totalSupply() public view returns (uint256) {
    |    return totalSupply_;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol(265)

[33mWarning[0m for MissingInputValidation in contract 'XPToken':
    |  * @param _value The amount to be transferred.
    |  */
  > |  function transfer(address _to, uint256 _value) public returns (bool) {
    |    require(_to != address(0));
    |    require(_value <= balances[msg.sender]);
  at /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol(274)

[33mWarning[0m for MissingInputValidation in contract 'XPToken':
    |  event MintFinished();
    |
  > |  bool public mintingFinished = false;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol(403)

[33mWarning[0m for MissingInputValidation in contract 'XPToken':
    |   * @return True if the operation was successful.
    |   */
  > |  function finishMinting() onlyManagement canMint public returns (bool) {
    |    mintingFinished = true;
    |    emit MintFinished();
  at /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol(429)

[33mWarning[0m for MissingInputValidation in contract 'XPToken':
    |  using Maths for uint256;
    |
  > |  string public constant name     = "Mythereum XP";
    |  string public constant symbol   = "XP";
    |  uint8  public constant decimals = 0;
  at /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol(439)

[33mWarning[0m for MissingInputValidation in contract 'XPToken':
    |
    |  string public constant name     = "Mythereum XP";
  > |  string public constant symbol   = "XP";
    |  uint8  public constant decimals = 0;
    |}
  at /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol(440)

[33mWarning[0m for MissingInputValidation in contract 'XPToken':
    |  string public constant name     = "Mythereum XP";
    |  string public constant symbol   = "XP";
  > |  uint8  public constant decimals = 0;
    |}
  at /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol(441)

[31mViolation[0m for UnrestrictedWrite in contract 'XPToken':
    |
    |    balances[msg.sender] = balances[msg.sender].minus(_value);
  > |    balances[_to] = balances[_to].plus(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol(279)

[31mViolation[0m for UnrestrictedWrite in contract 'XPToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].minus(_value);
    |    balances[_to] = balances[_to].plus(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].minus(_value);
  at /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol(319)

[31mViolation[0m for UnrestrictedWrite in contract 'XPToken':
    |
    |    balances[_from] = balances[_from].minus(_value);
  > |    balances[_to] = balances[_to].plus(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].minus(_value);
    |    emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol(320)

[33mWarning[0m for UnrestrictedWrite in contract 'XPToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].minus(_value);
    |    balances[_to] = balances[_to].plus(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol(278)

[33mWarning[0m for UnrestrictedWrite in contract 'XPToken':
    |    balances[_from] = balances[_from].minus(_value);
    |    balances[_to] = balances[_to].plus(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].minus(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol(321)

[33mWarning[0m for UnrestrictedWrite in contract 'XPToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol(337)

[33mWarning[0m for UnrestrictedWrite in contract 'XPToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].plus(_addedValue);
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol(363)

[33mWarning[0m for UnrestrictedWrite in contract 'XPToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.minus(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol(381)

[33mWarning[0m for UnrestrictedWrite in contract 'XPToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.minus(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol(383)

[33mWarning[0m for UnrestrictedWrite in contract 'XPToken':
    |    require(newOwner != address(0));
    |    emit OwnershipChanged(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol(214)

[33mWarning[0m for UnrestrictedWrite in contract 'XPToken':
    |    require(newManager != address(0));
    |    emit ManagementChanged(manager, newManager);
  > |    manager = newManager;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol(224)

[33mWarning[0m for UnrestrictedWrite in contract 'XPToken':
    |   */
    |  function mint(address _to, uint256 _amount) onlyManagement canMint public returns (bool) {
  > |    totalSupply_ = totalSupply_.plus(_amount);
    |    balances[_to] = balances[_to].plus(_amount);
    |    emit Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol(418)

[33mWarning[0m for UnrestrictedWrite in contract 'XPToken':
    |  function mint(address _to, uint256 _amount) onlyManagement canMint public returns (bool) {
    |    totalSupply_ = totalSupply_.plus(_amount);
  > |    balances[_to] = balances[_to].plus(_amount);
    |    emit Mint(_to, _amount);
    |    emit Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol(419)

[33mWarning[0m for UnrestrictedWrite in contract 'XPToken':
    |   */
    |  function finishMinting() onlyManagement canMint public returns (bool) {
  > |    mintingFinished = true;
    |    emit MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x664fb2cba871e42a7e86dba388c2e6dff68264b1.sol(430)


