Processing contract: /home/jiaming/mavs_srcs/contract@0x905e337c6c8645263d3521205aa37bf4d034e745.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x905e337c6c8645263d3521205aa37bf4d034e745.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x905e337c6c8645263d3521205aa37bf4d034e745.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x905e337c6c8645263d3521205aa37bf4d034e745.sol:MTC
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x905e337c6c8645263d3521205aa37bf4d034e745.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x905e337c6c8645263d3521205aa37bf4d034e745.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x905e337c6c8645263d3521205aa37bf4d034e745.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    |  event Approval(address indexed owner, address indexed spender, uint256 value);
    |}
  > |contract BasicToken is ERC20Basic {
    |  using SafeMath for uint256;
    |  mapping(address => uint256) balances;
  at /home/jiaming/mavs_srcs/contract@0x905e337c6c8645263d3521205aa37bf4d034e745.sol(46)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |    require(_value <= balances[msg.sender]);
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x905e337c6c8645263d3521205aa37bf4d034e745.sol(58)

[33mWarning[0m for LockedEther in contract 'MTC':
    |  }
    |}
  > |contract MTC is StandardToken, Ownable {
    |  event WalletFunded(address wallet, uint256 amount);
    |  
  at /home/jiaming/mavs_srcs/contract@0x905e337c6c8645263d3521205aa37bf4d034e745.sol(163)

[33mWarning[0m for UnrestrictedWrite in contract 'MTC':
    |    require(_value <= balances[msg.sender]);
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x905e337c6c8645263d3521205aa37bf4d034e745.sol(58)

[33mWarning[0m for UnrestrictedWrite in contract 'MTC':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x905e337c6c8645263d3521205aa37bf4d034e745.sol(86)

[33mWarning[0m for UnrestrictedWrite in contract 'MTC':
    |  function approve(address _spender, uint256 _value) public returns (bool) {
    |    require (_value == 0 || allowed[msg.sender][_spender] == 0);
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x905e337c6c8645263d3521205aa37bf4d034e745.sol(102)

[33mWarning[0m for UnrestrictedWrite in contract 'MTC':
    |   */
    |  function increaseApproval(address _spender, uint256 _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x905e337c6c8645263d3521205aa37bf4d034e745.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'MTC':
    |  function decreaseApproval(address _spender, uint256 _subtractedValue) public returns (bool) {
    |    if (_subtractedValue > allowed[msg.sender][_spender]) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = allowed[msg.sender][_spender].sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x905e337c6c8645263d3521205aa37bf4d034e745.sol(128)

[33mWarning[0m for UnrestrictedWrite in contract 'MTC':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = allowed[msg.sender][_spender].sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x905e337c6c8645263d3521205aa37bf4d034e745.sol(130)

[33mWarning[0m for UnrestrictedWrite in contract 'MTC':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x905e337c6c8645263d3521205aa37bf4d034e745.sol(160)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |  }
    |}
  > |contract Ownable {
    |  address public owner;
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x905e337c6c8645263d3521205aa37bf4d034e745.sol(136)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |}
    |contract Ownable {
  > |  address public owner;
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x905e337c6c8645263d3521205aa37bf4d034e745.sol(137)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x905e337c6c8645263d3521205aa37bf4d034e745.sol(157)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x905e337c6c8645263d3521205aa37bf4d034e745.sol(160)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0x905e337c6c8645263d3521205aa37bf4d034e745.sol(9)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |  }
    |}
  > |contract StandardToken is ERC20, BasicToken {
    |  mapping (address => mapping (address => uint256)) internal allowed;
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x905e337c6c8645263d3521205aa37bf4d034e745.sol(72)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require(_value <= balances[msg.sender]);
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x905e337c6c8645263d3521205aa37bf4d034e745.sol(58)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x905e337c6c8645263d3521205aa37bf4d034e745.sol(86)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  function approve(address _spender, uint256 _value) public returns (bool) {
    |    require (_value == 0 || allowed[msg.sender][_spender] == 0);
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x905e337c6c8645263d3521205aa37bf4d034e745.sol(102)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function increaseApproval(address _spender, uint256 _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x905e337c6c8645263d3521205aa37bf4d034e745.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  function decreaseApproval(address _spender, uint256 _subtractedValue) public returns (bool) {
    |    if (_subtractedValue > allowed[msg.sender][_spender]) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = allowed[msg.sender][_spender].sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x905e337c6c8645263d3521205aa37bf4d034e745.sol(128)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = allowed[msg.sender][_spender].sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x905e337c6c8645263d3521205aa37bf4d034e745.sol(130)


