Processing contract: /home/jiaming/mavs_srcs/contract@0x34364bee11607b1963d66bca665fde93fca666a8.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x34364bee11607b1963d66bca665fde93fca666a8.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x34364bee11607b1963d66bca665fde93fca666a8.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x34364bee11607b1963d66bca665fde93fca666a8.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x34364bee11607b1963d66bca665fde93fca666a8.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x34364bee11607b1963d66bca665fde93fca666a8.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x34364bee11607b1963d66bca665fde93fca666a8.sol:YOUToken
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
  at /home/jiaming/mavs_srcs/contract@0x34364bee11607b1963d66bca665fde93fca666a8.sol(63)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x34364bee11607b1963d66bca665fde93fca666a8.sol(78)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x34364bee11607b1963d66bca665fde93fca666a8.sol(194)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x34364bee11607b1963d66bca665fde93fca666a8.sol(195)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x34364bee11607b1963d66bca665fde93fca666a8.sol(219)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x34364bee11607b1963d66bca665fde93fca666a8.sol(222)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0x34364bee11607b1963d66bca665fde93fca666a8.sol(7)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0x34364bee11607b1963d66bca665fde93fca666a8.sol(102)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x34364bee11607b1963d66bca665fde93fca666a8.sol(78)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x34364bee11607b1963d66bca665fde93fca666a8.sol(119)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x34364bee11607b1963d66bca665fde93fca666a8.sol(135)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x34364bee11607b1963d66bca665fde93fca666a8.sol(161)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x34364bee11607b1963d66bca665fde93fca666a8.sol(179)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x34364bee11607b1963d66bca665fde93fca666a8.sol(181)

[33mWarning[0m for LockedEther in contract 'YOUToken':
    | * @dev YOUChain.
    | */
  > |contract YOUToken is StandardToken, Ownable {
    |
    |  string public constant name = "YOU Chain";
  at /home/jiaming/mavs_srcs/contract@0x34364bee11607b1963d66bca665fde93fca666a8.sol(230)

[33mWarning[0m for UnrestrictedWrite in contract 'YOUToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x34364bee11607b1963d66bca665fde93fca666a8.sol(78)

[33mWarning[0m for UnrestrictedWrite in contract 'YOUToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x34364bee11607b1963d66bca665fde93fca666a8.sol(79)

[33mWarning[0m for UnrestrictedWrite in contract 'YOUToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x34364bee11607b1963d66bca665fde93fca666a8.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'YOUToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x34364bee11607b1963d66bca665fde93fca666a8.sol(118)

[33mWarning[0m for UnrestrictedWrite in contract 'YOUToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x34364bee11607b1963d66bca665fde93fca666a8.sol(119)

[33mWarning[0m for UnrestrictedWrite in contract 'YOUToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x34364bee11607b1963d66bca665fde93fca666a8.sol(135)

[33mWarning[0m for UnrestrictedWrite in contract 'YOUToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x34364bee11607b1963d66bca665fde93fca666a8.sol(161)

[33mWarning[0m for UnrestrictedWrite in contract 'YOUToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x34364bee11607b1963d66bca665fde93fca666a8.sol(179)

[33mWarning[0m for UnrestrictedWrite in contract 'YOUToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x34364bee11607b1963d66bca665fde93fca666a8.sol(181)

[33mWarning[0m for UnrestrictedWrite in contract 'YOUToken':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x34364bee11607b1963d66bca665fde93fca666a8.sol(222)

[33mWarning[0m for UnrestrictedWrite in contract 'YOUToken':
    |    require(!angelFirstVested && now >= angelVestingGrant.start);
    |    uint256 angelFirstSupplyBalance = ANGEL_SUPPLY.sub(ANGEL_SUPPLY_VESTING);
  > |    totalSupply = totalSupply.add(angelFirstSupplyBalance);
    |    balances[angelVestingGrant.beneficiary] = angelFirstSupplyBalance;
    |    angelFirstVested = true;
  at /home/jiaming/mavs_srcs/contract@0x34364bee11607b1963d66bca665fde93fca666a8.sol(279)

[33mWarning[0m for UnrestrictedWrite in contract 'YOUToken':
    |    uint256 angelFirstSupplyBalance = ANGEL_SUPPLY.sub(ANGEL_SUPPLY_VESTING);
    |    totalSupply = totalSupply.add(angelFirstSupplyBalance);
  > |    balances[angelVestingGrant.beneficiary] = angelFirstSupplyBalance;
    |    angelFirstVested = true;
    |    emit Transfer(address(0), angelVestingGrant.beneficiary, angelFirstSupplyBalance);
  at /home/jiaming/mavs_srcs/contract@0x34364bee11607b1963d66bca665fde93fca666a8.sol(280)

[33mWarning[0m for UnrestrictedWrite in contract 'YOUToken':
    |    totalSupply = totalSupply.add(angelFirstSupplyBalance);
    |    balances[angelVestingGrant.beneficiary] = angelFirstSupplyBalance;
  > |    angelFirstVested = true;
    |    emit Transfer(address(0), angelVestingGrant.beneficiary, angelFirstSupplyBalance);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x34364bee11607b1963d66bca665fde93fca666a8.sol(281)

[33mWarning[0m for UnrestrictedWrite in contract 'YOUToken':
    |    require(amount > 0);
    |
  > |    grant.transfered = grant.transfered.add(amount);
    |    totalSupply = totalSupply.add(amount);
    |    balances[grant.beneficiary] = balances[grant.beneficiary].add(amount);
  at /home/jiaming/mavs_srcs/contract@0x34364bee11607b1963d66bca665fde93fca666a8.sol(316)

[33mWarning[0m for UnrestrictedWrite in contract 'YOUToken':
    |
    |    grant.transfered = grant.transfered.add(amount);
  > |    totalSupply = totalSupply.add(amount);
    |    balances[grant.beneficiary] = balances[grant.beneficiary].add(amount);
    |    emit Transfer(address(0), grant.beneficiary, amount);
  at /home/jiaming/mavs_srcs/contract@0x34364bee11607b1963d66bca665fde93fca666a8.sol(317)

[33mWarning[0m for UnrestrictedWrite in contract 'YOUToken':
    |    grant.transfered = grant.transfered.add(amount);
    |    totalSupply = totalSupply.add(amount);
  > |    balances[grant.beneficiary] = balances[grant.beneficiary].add(amount);
    |    emit Transfer(address(0), grant.beneficiary, amount);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x34364bee11607b1963d66bca665fde93fca666a8.sol(318)


