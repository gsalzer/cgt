Processing contract: /home/jiaming/mavs_srcs/contract@0x3463292dce7e92a3f5d9f135687aad8e4600c8f2.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3463292dce7e92a3f5d9f135687aad8e4600c8f2.sol:BurnableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3463292dce7e92a3f5d9f135687aad8e4600c8f2.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x3463292dce7e92a3f5d9f135687aad8e4600c8f2.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x3463292dce7e92a3f5d9f135687aad8e4600c8f2.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3463292dce7e92a3f5d9f135687aad8e4600c8f2.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3463292dce7e92a3f5d9f135687aad8e4600c8f2.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3463292dce7e92a3f5d9f135687aad8e4600c8f2.sol:TileToken
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
  at /home/jiaming/mavs_srcs/contract@0x3463292dce7e92a3f5d9f135687aad8e4600c8f2.sol(68)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x3463292dce7e92a3f5d9f135687aad8e4600c8f2.sol(92)

[33mWarning[0m for LockedEther in contract 'BurnableToken':
    | * @dev Token that can be irreversibly burned (destroyed).
    | */
  > |contract BurnableToken is BasicToken {
    |
    |  event Burn(address indexed burner, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0x3463292dce7e92a3f5d9f135687aad8e4600c8f2.sol(222)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x3463292dce7e92a3f5d9f135687aad8e4600c8f2.sol(92)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |    address burner = msg.sender;
  > |    balances[burner] = balances[burner].sub(_value);
    |    totalSupply_ = totalSupply_.sub(_value);
    |    Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0x3463292dce7e92a3f5d9f135687aad8e4600c8f2.sol(236)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x3463292dce7e92a3f5d9f135687aad8e4600c8f2.sol(249)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x3463292dce7e92a3f5d9f135687aad8e4600c8f2.sol(250)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x3463292dce7e92a3f5d9f135687aad8e4600c8f2.sol(276)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x3463292dce7e92a3f5d9f135687aad8e4600c8f2.sol(279)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x3463292dce7e92a3f5d9f135687aad8e4600c8f2.sol(21)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0x3463292dce7e92a3f5d9f135687aad8e4600c8f2.sol(129)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x3463292dce7e92a3f5d9f135687aad8e4600c8f2.sol(92)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x3463292dce7e92a3f5d9f135687aad8e4600c8f2.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x3463292dce7e92a3f5d9f135687aad8e4600c8f2.sol(163)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x3463292dce7e92a3f5d9f135687aad8e4600c8f2.sol(189)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x3463292dce7e92a3f5d9f135687aad8e4600c8f2.sol(207)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x3463292dce7e92a3f5d9f135687aad8e4600c8f2.sol(209)

[33mWarning[0m for LockedEther in contract 'TileToken':
    | * @title TileToken
    | */
  > |contract TileToken is StandardToken, BurnableToken, Ownable {
    |
    |  string public constant NAME = "Tile"; // solium-disable-line uppercase
  at /home/jiaming/mavs_srcs/contract@0x3463292dce7e92a3f5d9f135687aad8e4600c8f2.sol(288)

[31mViolation[0m for UnrestrictedWrite in contract 'TileToken':
    |   */
    |  function Tile() public {
  > |    totalSupply_ = INITIAL_SUPPLY;
    |    balances[msg.sender] = INITIAL_SUPPLY;
    |    Transfer(0x0, msg.sender, INITIAL_SUPPLY);
  at /home/jiaming/mavs_srcs/contract@0x3463292dce7e92a3f5d9f135687aad8e4600c8f2.sol(300)

[33mWarning[0m for UnrestrictedWrite in contract 'TileToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x3463292dce7e92a3f5d9f135687aad8e4600c8f2.sol(92)

[33mWarning[0m for UnrestrictedWrite in contract 'TileToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x3463292dce7e92a3f5d9f135687aad8e4600c8f2.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'TileToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x3463292dce7e92a3f5d9f135687aad8e4600c8f2.sol(163)

[33mWarning[0m for UnrestrictedWrite in contract 'TileToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x3463292dce7e92a3f5d9f135687aad8e4600c8f2.sol(189)

[33mWarning[0m for UnrestrictedWrite in contract 'TileToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x3463292dce7e92a3f5d9f135687aad8e4600c8f2.sol(207)

[33mWarning[0m for UnrestrictedWrite in contract 'TileToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x3463292dce7e92a3f5d9f135687aad8e4600c8f2.sol(209)

[33mWarning[0m for UnrestrictedWrite in contract 'TileToken':
    |
    |    address burner = msg.sender;
  > |    balances[burner] = balances[burner].sub(_value);
    |    totalSupply_ = totalSupply_.sub(_value);
    |    Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0x3463292dce7e92a3f5d9f135687aad8e4600c8f2.sol(236)

[33mWarning[0m for UnrestrictedWrite in contract 'TileToken':
    |  function Tile() public {
    |    totalSupply_ = INITIAL_SUPPLY;
  > |    balances[msg.sender] = INITIAL_SUPPLY;
    |    Transfer(0x0, msg.sender, INITIAL_SUPPLY);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x3463292dce7e92a3f5d9f135687aad8e4600c8f2.sol(301)

[33mWarning[0m for UnrestrictedWrite in contract 'TileToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x3463292dce7e92a3f5d9f135687aad8e4600c8f2.sol(279)


