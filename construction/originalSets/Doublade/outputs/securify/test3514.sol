Processing contract: /home/jiaming/mavs_srcs/contract@0xe6281184192a692c7f3dbf7bbf842460beb5f80d.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe6281184192a692c7f3dbf7bbf842460beb5f80d.sol:BurnableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe6281184192a692c7f3dbf7bbf842460beb5f80d.sol:DGAMEToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe6281184192a692c7f3dbf7bbf842460beb5f80d.sol:DetailedERC20
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe6281184192a692c7f3dbf7bbf842460beb5f80d.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xe6281184192a692c7f3dbf7bbf842460beb5f80d.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe6281184192a692c7f3dbf7bbf842460beb5f80d.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    | * @dev Basic version of StandardToken, with no allowances.
    | */
  > |contract BasicToken is ERC20Basic,Ownable {
    |  using SafeMath for uint256;
    |  bool public transfersEnabled;
  at /home/jiaming/mavs_srcs/contract@0xe6281184192a692c7f3dbf7bbf842460beb5f80d.sol(86)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe6281184192a692c7f3dbf7bbf842460beb5f80d.sol(103)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe6281184192a692c7f3dbf7bbf842460beb5f80d.sol(131)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe6281184192a692c7f3dbf7bbf842460beb5f80d.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xe6281184192a692c7f3dbf7bbf842460beb5f80d.sol(78)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |  function enableTransfers(bool _transfersEnabled) public onlyOwner {
  > |      transfersEnabled = _transfersEnabled;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xe6281184192a692c7f3dbf7bbf842460beb5f80d.sol(163)

[33mWarning[0m for LockedEther in contract 'BurnableToken':
    | * @dev Token that can be irreversibly burned (destroyed).
    | */
  > |contract BurnableToken is BasicToken {
    |
    |    event Burn(address indexed burner, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0xe6281184192a692c7f3dbf7bbf842460beb5f80d.sol(185)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe6281184192a692c7f3dbf7bbf842460beb5f80d.sol(103)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe6281184192a692c7f3dbf7bbf842460beb5f80d.sol(131)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe6281184192a692c7f3dbf7bbf842460beb5f80d.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |        address burner = msg.sender;
  > |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
    |        emit Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0xe6281184192a692c7f3dbf7bbf842460beb5f80d.sol(199)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xe6281184192a692c7f3dbf7bbf842460beb5f80d.sol(78)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |  function enableTransfers(bool _transfersEnabled) public onlyOwner {
  > |      transfersEnabled = _transfersEnabled;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xe6281184192a692c7f3dbf7bbf842460beb5f80d.sol(163)

[33mWarning[0m for LockedEther in contract 'DGAMEToken':
    |}
    |
  > |contract DGAMEToken is  BurnableToken, DetailedERC20 {
    |    uint8 constant DECIMALS = 18;
    |    string constant NAME = "DGAMEToken";
  at /home/jiaming/mavs_srcs/contract@0xe6281184192a692c7f3dbf7bbf842460beb5f80d.sol(205)

[33mWarning[0m for UnrestrictedWrite in contract 'DGAMEToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe6281184192a692c7f3dbf7bbf842460beb5f80d.sol(103)

[33mWarning[0m for UnrestrictedWrite in contract 'DGAMEToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe6281184192a692c7f3dbf7bbf842460beb5f80d.sol(131)

[33mWarning[0m for UnrestrictedWrite in contract 'DGAMEToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe6281184192a692c7f3dbf7bbf842460beb5f80d.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'DGAMEToken':
    |
    |        address burner = msg.sender;
  > |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
    |        emit Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0xe6281184192a692c7f3dbf7bbf842460beb5f80d.sol(199)

[33mWarning[0m for UnrestrictedWrite in contract 'DGAMEToken':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xe6281184192a692c7f3dbf7bbf842460beb5f80d.sol(78)

[33mWarning[0m for UnrestrictedWrite in contract 'DGAMEToken':
    |
    |  function enableTransfers(bool _transfersEnabled) public onlyOwner {
  > |      transfersEnabled = _transfersEnabled;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xe6281184192a692c7f3dbf7bbf842460beb5f80d.sol(163)

[33mWarning[0m for LockedEther in contract 'DetailedERC20':
    |}
    |
  > |contract DetailedERC20 is  BasicToken {
    |  string public name;
    |  string public symbol;
  at /home/jiaming/mavs_srcs/contract@0xe6281184192a692c7f3dbf7bbf842460beb5f80d.sol(167)

[33mWarning[0m for UnrestrictedWrite in contract 'DetailedERC20':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe6281184192a692c7f3dbf7bbf842460beb5f80d.sol(103)

[33mWarning[0m for UnrestrictedWrite in contract 'DetailedERC20':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe6281184192a692c7f3dbf7bbf842460beb5f80d.sol(131)

[33mWarning[0m for UnrestrictedWrite in contract 'DetailedERC20':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe6281184192a692c7f3dbf7bbf842460beb5f80d.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'DetailedERC20':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xe6281184192a692c7f3dbf7bbf842460beb5f80d.sol(78)

[33mWarning[0m for UnrestrictedWrite in contract 'DetailedERC20':
    |
    |  function enableTransfers(bool _transfersEnabled) public onlyOwner {
  > |      transfersEnabled = _transfersEnabled;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xe6281184192a692c7f3dbf7bbf842460beb5f80d.sol(163)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0xe6281184192a692c7f3dbf7bbf842460beb5f80d.sol(54)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xe6281184192a692c7f3dbf7bbf842460beb5f80d.sol(55)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xe6281184192a692c7f3dbf7bbf842460beb5f80d.sol(75)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xe6281184192a692c7f3dbf7bbf842460beb5f80d.sol(78)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0xe6281184192a692c7f3dbf7bbf842460beb5f80d.sol(21)


