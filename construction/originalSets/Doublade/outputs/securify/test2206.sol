Processing contract: /home/jiaming/mavs_srcs/contract@0x8f923563a1760a82739a584736cb7a7fe6b67ae6.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8f923563a1760a82739a584736cb7a7fe6b67ae6.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x8f923563a1760a82739a584736cb7a7fe6b67ae6.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x8f923563a1760a82739a584736cb7a7fe6b67ae6.sol:IWToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8f923563a1760a82739a584736cb7a7fe6b67ae6.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8f923563a1760a82739a584736cb7a7fe6b67ae6.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8f923563a1760a82739a584736cb7a7fe6b67ae6.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    | * @dev Basic version of StandardToken, with no allowances.
    | */
  > |contract BasicToken is ERC20Basic {
    |  using SafeMath for uint256;
    |  mapping(address => uint256) balances;
  at /home/jiaming/mavs_srcs/contract@0x8f923563a1760a82739a584736cb7a7fe6b67ae6.sol(78)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |    require(_value <= balances[msg.sender]);
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x8f923563a1760a82739a584736cb7a7fe6b67ae6.sol(90)

[33mWarning[0m for LockedEther in contract 'IWToken':
    |  }
    |}
  > |contract IWToken is StandardToken, Ownable{
    |  string public name      = "InfinityWinCoin";
    |  string public symbol    = "IWC";
  at /home/jiaming/mavs_srcs/contract@0x8f923563a1760a82739a584736cb7a7fe6b67ae6.sol(185)

[33mWarning[0m for UnrestrictedWrite in contract 'IWToken':
    |    require(_value <= balances[msg.sender]);
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x8f923563a1760a82739a584736cb7a7fe6b67ae6.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'IWToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x8f923563a1760a82739a584736cb7a7fe6b67ae6.sol(91)

[33mWarning[0m for UnrestrictedWrite in contract 'IWToken':
    |    require(_value <= balances[_from]);
    |    require(_value <= allowed[_from][msg.sender]);
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x8f923563a1760a82739a584736cb7a7fe6b67ae6.sol(133)

[33mWarning[0m for UnrestrictedWrite in contract 'IWToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x8f923563a1760a82739a584736cb7a7fe6b67ae6.sol(134)

[33mWarning[0m for UnrestrictedWrite in contract 'IWToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x8f923563a1760a82739a584736cb7a7fe6b67ae6.sol(135)

[33mWarning[0m for UnrestrictedWrite in contract 'IWToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x8f923563a1760a82739a584736cb7a7fe6b67ae6.sol(150)

[33mWarning[0m for UnrestrictedWrite in contract 'IWToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x8f923563a1760a82739a584736cb7a7fe6b67ae6.sol(170)

[33mWarning[0m for UnrestrictedWrite in contract 'IWToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x8f923563a1760a82739a584736cb7a7fe6b67ae6.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'IWToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x8f923563a1760a82739a584736cb7a7fe6b67ae6.sol(179)

[33mWarning[0m for UnrestrictedWrite in contract 'IWToken':
    |   */
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
  > |    totalSupply = totalSupply.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x8f923563a1760a82739a584736cb7a7fe6b67ae6.sol(208)

[33mWarning[0m for UnrestrictedWrite in contract 'IWToken':
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
    |    totalSupply = totalSupply.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
    |    Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x8f923563a1760a82739a584736cb7a7fe6b67ae6.sol(209)

[33mWarning[0m for UnrestrictedWrite in contract 'IWToken':
    |  }
    |   function ICOmint(address _to, uint256 _amount) onlySales canMint public returns (bool) {
  > |    totalSupply = totalSupply.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x8f923563a1760a82739a584736cb7a7fe6b67ae6.sol(215)

[33mWarning[0m for UnrestrictedWrite in contract 'IWToken':
    |   function ICOmint(address _to, uint256 _amount) onlySales canMint public returns (bool) {
    |    totalSupply = totalSupply.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
    |    Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x8f923563a1760a82739a584736cb7a7fe6b67ae6.sol(216)

[33mWarning[0m for UnrestrictedWrite in contract 'IWToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x8f923563a1760a82739a584736cb7a7fe6b67ae6.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'IWToken':
    |   */
    |  function finishMinting() onlyOwner canMint public returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x8f923563a1760a82739a584736cb7a7fe6b67ae6.sol(226)

[33mWarning[0m for UnrestrictedWrite in contract 'IWToken':
    |  function setSalesContract(address _salesContract) public onlyOwner {
    |    require(_salesContract != address(0));
  > |    salesContract = _salesContract;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x8f923563a1760a82739a584736cb7a7fe6b67ae6.sol(232)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x8f923563a1760a82739a584736cb7a7fe6b67ae6.sol(18)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x8f923563a1760a82739a584736cb7a7fe6b67ae6.sol(19)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x8f923563a1760a82739a584736cb7a7fe6b67ae6.sol(39)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x8f923563a1760a82739a584736cb7a7fe6b67ae6.sol(42)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0x8f923563a1760a82739a584736cb7a7fe6b67ae6.sol(49)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |  mapping (address => mapping (address => uint256)) internal allowed;
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x8f923563a1760a82739a584736cb7a7fe6b67ae6.sol(121)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require(_value <= balances[msg.sender]);
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x8f923563a1760a82739a584736cb7a7fe6b67ae6.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x8f923563a1760a82739a584736cb7a7fe6b67ae6.sol(135)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x8f923563a1760a82739a584736cb7a7fe6b67ae6.sol(150)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x8f923563a1760a82739a584736cb7a7fe6b67ae6.sol(170)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x8f923563a1760a82739a584736cb7a7fe6b67ae6.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x8f923563a1760a82739a584736cb7a7fe6b67ae6.sol(179)


