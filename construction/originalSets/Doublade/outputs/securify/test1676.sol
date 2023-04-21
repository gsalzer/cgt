Processing contract: /home/jiaming/mavs_srcs/contract@0x6b18b3808fd9c4401af4839b6aa2971aae7a8aad.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6b18b3808fd9c4401af4839b6aa2971aae7a8aad.sol:BurnableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6b18b3808fd9c4401af4839b6aa2971aae7a8aad.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x6b18b3808fd9c4401af4839b6aa2971aae7a8aad.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x6b18b3808fd9c4401af4839b6aa2971aae7a8aad.sol:ODEEPToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6b18b3808fd9c4401af4839b6aa2971aae7a8aad.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6b18b3808fd9c4401af4839b6aa2971aae7a8aad.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6b18b3808fd9c4401af4839b6aa2971aae7a8aad.sol:SafeERC20
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6b18b3808fd9c4401af4839b6aa2971aae7a8aad.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6b18b3808fd9c4401af4839b6aa2971aae7a8aad.sol:StandardToken
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
  at /home/jiaming/mavs_srcs/contract@0x6b18b3808fd9c4401af4839b6aa2971aae7a8aad.sol(124)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x6b18b3808fd9c4401af4839b6aa2971aae7a8aad.sol(147)

[33mWarning[0m for LockedEther in contract 'BurnableToken':
    | * @dev Token that can be irreversibly burned (destroyed).
    | */
  > |contract BurnableToken is StandardToken {
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x6b18b3808fd9c4401af4839b6aa2971aae7a8aad.sol(311)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |  function transfer(address _to, uint256 _value) public whenNotPaused returns (bool) {
    |    require(_to != address(0));
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x6b18b3808fd9c4401af4839b6aa2971aae7a8aad.sol(223)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    require(_to != address(0));
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x6b18b3808fd9c4401af4839b6aa2971aae7a8aad.sol(224)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x6b18b3808fd9c4401af4839b6aa2971aae7a8aad.sol(249)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x6b18b3808fd9c4401af4839b6aa2971aae7a8aad.sol(250)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x6b18b3808fd9c4401af4839b6aa2971aae7a8aad.sol(251)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x6b18b3808fd9c4401af4839b6aa2971aae7a8aad.sol(267)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |   */
    |  function increaseApproval (address _spender, uint _addedValue) public returns (bool success) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x6b18b3808fd9c4401af4839b6aa2971aae7a8aad.sol(289)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x6b18b3808fd9c4401af4839b6aa2971aae7a8aad.sol(297)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x6b18b3808fd9c4401af4839b6aa2971aae7a8aad.sol(299)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |		require(balances[msg.sender] >= _value);
    |        address burner = msg.sender;
  > |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply_ = totalSupply_.sub(_value);
    |        emit Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0x6b18b3808fd9c4401af4839b6aa2971aae7a8aad.sol(323)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |        address burner = msg.sender;
    |        balances[burner] = balances[burner].sub(_value);
  > |        totalSupply_ = totalSupply_.sub(_value);
    |        emit Burn(burner, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6b18b3808fd9c4401af4839b6aa2971aae7a8aad.sol(324)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x6b18b3808fd9c4401af4839b6aa2971aae7a8aad.sol(92)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x6b18b3808fd9c4401af4839b6aa2971aae7a8aad.sol(64)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x6b18b3808fd9c4401af4839b6aa2971aae7a8aad.sol(65)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x6b18b3808fd9c4401af4839b6aa2971aae7a8aad.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x6b18b3808fd9c4401af4839b6aa2971aae7a8aad.sol(92)

[33mWarning[0m for LockedEther in contract 'Pausable':
    | * @dev https://github.com/OpenZeppelin/openzeppelin-solidity
    | */
  > |contract Pausable is Ownable {
    |
    |  uint public endDate;
  at /home/jiaming/mavs_srcs/contract@0x6b18b3808fd9c4401af4839b6aa2971aae7a8aad.sol(196)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x6b18b3808fd9c4401af4839b6aa2971aae7a8aad.sol(65)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x6b18b3808fd9c4401af4839b6aa2971aae7a8aad.sol(89)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |contract Pausable is Ownable {
    |
  > |  uint public endDate;
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x6b18b3808fd9c4401af4839b6aa2971aae7a8aad.sol(198)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x6b18b3808fd9c4401af4839b6aa2971aae7a8aad.sol(92)

[33mWarning[0m for LockedEther in contract 'SafeERC20':
    | * which allows you to call the safe operations as `token.safeTransfer(...)`, etc.
    | */
  > |library SafeERC20 {
    |  function safeTransfer(ERC20Basic token, address to, uint256 value) internal {
    |    assert(token.transfer(to, value));
  at /home/jiaming/mavs_srcs/contract@0x6b18b3808fd9c4401af4839b6aa2971aae7a8aad.sol(169)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x6b18b3808fd9c4401af4839b6aa2971aae7a8aad.sol(17)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is ERC20, BasicToken, Pausable {
    |    using SafeMath for uint256;
    |    mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0x6b18b3808fd9c4401af4839b6aa2971aae7a8aad.sol(210)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  function transfer(address _to, uint256 _value) public whenNotPaused returns (bool) {
    |    require(_to != address(0));
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x6b18b3808fd9c4401af4839b6aa2971aae7a8aad.sol(223)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x6b18b3808fd9c4401af4839b6aa2971aae7a8aad.sol(251)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x6b18b3808fd9c4401af4839b6aa2971aae7a8aad.sol(267)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function increaseApproval (address _spender, uint _addedValue) public returns (bool success) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x6b18b3808fd9c4401af4839b6aa2971aae7a8aad.sol(289)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x6b18b3808fd9c4401af4839b6aa2971aae7a8aad.sol(297)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x6b18b3808fd9c4401af4839b6aa2971aae7a8aad.sol(299)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x6b18b3808fd9c4401af4839b6aa2971aae7a8aad.sol(92)


