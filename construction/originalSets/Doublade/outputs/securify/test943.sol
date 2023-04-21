Processing contract: /home/jiaming/mavs_srcs/contract@0x3bc1ecefd267bde8ecf4b4f62304cce0abd9027a.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3bc1ecefd267bde8ecf4b4f62304cce0abd9027a.sol:BurnableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3bc1ecefd267bde8ecf4b4f62304cce0abd9027a.sol:DetailedERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x3bc1ecefd267bde8ecf4b4f62304cce0abd9027a.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x3bc1ecefd267bde8ecf4b4f62304cce0abd9027a.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x3bc1ecefd267bde8ecf4b4f62304cce0abd9027a.sol:ERC20Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3bc1ecefd267bde8ecf4b4f62304cce0abd9027a.sol:MintableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3bc1ecefd267bde8ecf4b4f62304cce0abd9027a.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3bc1ecefd267bde8ecf4b4f62304cce0abd9027a.sol:RBAC
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3bc1ecefd267bde8ecf4b4f62304cce0abd9027a.sol:RBACMintableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3bc1ecefd267bde8ecf4b4f62304cce0abd9027a.sol:Roles
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3bc1ecefd267bde8ecf4b4f62304cce0abd9027a.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3bc1ecefd267bde8ecf4b4f62304cce0abd9027a.sol:StandardToken
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
  at /home/jiaming/mavs_srcs/contract@0x3bc1ecefd267bde8ecf4b4f62304cce0abd9027a.sol(75)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x3bc1ecefd267bde8ecf4b4f62304cce0abd9027a.sol(98)

[33mWarning[0m for LockedEther in contract 'BurnableToken':
    | * @dev Token that can be irreversibly burned (destroyed).
    | */
  > |contract BurnableToken is BasicToken {
    |
    |  event Burn(address indexed burner, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0x3bc1ecefd267bde8ecf4b4f62304cce0abd9027a.sol(121)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x3bc1ecefd267bde8ecf4b4f62304cce0abd9027a.sol(98)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x3bc1ecefd267bde8ecf4b4f62304cce0abd9027a.sol(99)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    // sender's balance is greater than the totalSupply, which *should* be an assertion failure
    |
  > |    balances[_who] = balances[_who].sub(_value);
    |    totalSupply_ = totalSupply_.sub(_value);
    |    emit Burn(_who, _value);
  at /home/jiaming/mavs_srcs/contract@0x3bc1ecefd267bde8ecf4b4f62304cce0abd9027a.sol(138)

[31mViolation[0m for LockedEther in contract 'ERC20Token':
    |// File: contracts/ERC20Token.sol
    |
  > |contract ERC20Token is DetailedERC20, RBACMintableToken, BurnableToken {
    |
    |  string public builtOn = "https://vittominacori.github.io/erc20-generator";
  at /home/jiaming/mavs_srcs/contract@0x3bc1ecefd267bde8ecf4b4f62304cce0abd9027a.sol(630)

[33mWarning[0m for UnhandledException in contract 'ERC20Token':
    |
    |  function transferAnyERC20Token(address _tokenAddress, uint256 _tokens) onlyOwner public returns (bool success) {
  > |    return ERC20Basic(_tokenAddress).transfer(owner, _tokens);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x3bc1ecefd267bde8ecf4b4f62304cce0abd9027a.sol(652)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Token':
    |
    |  function transferAnyERC20Token(address _tokenAddress, uint256 _tokens) onlyOwner public returns (bool success) {
  > |    return ERC20Basic(_tokenAddress).transfer(owner, _tokens);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x3bc1ecefd267bde8ecf4b4f62304cce0abd9027a.sol(652)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x3bc1ecefd267bde8ecf4b4f62304cce0abd9027a.sol(98)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x3bc1ecefd267bde8ecf4b4f62304cce0abd9027a.sol(99)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |    // sender's balance is greater than the totalSupply, which *should* be an assertion failure
    |
  > |    balances[_who] = balances[_who].sub(_value);
    |    totalSupply_ = totalSupply_.sub(_value);
    |    emit Burn(_who, _value);
  at /home/jiaming/mavs_srcs/contract@0x3bc1ecefd267bde8ecf4b4f62304cce0abd9027a.sol(138)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |
    |    balances[_who] = balances[_who].sub(_value);
  > |    totalSupply_ = totalSupply_.sub(_value);
    |    emit Burn(_who, _value);
    |    emit Transfer(_who, address(0), _value);
  at /home/jiaming/mavs_srcs/contract@0x3bc1ecefd267bde8ecf4b4f62304cce0abd9027a.sol(139)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x3bc1ecefd267bde8ecf4b4f62304cce0abd9027a.sol(386)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x3bc1ecefd267bde8ecf4b4f62304cce0abd9027a.sol(404)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x3bc1ecefd267bde8ecf4b4f62304cce0abd9027a.sol(440)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x3bc1ecefd267bde8ecf4b4f62304cce0abd9027a.sol(441)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x3bc1ecefd267bde8ecf4b4f62304cce0abd9027a.sol(442)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x3bc1ecefd267bde8ecf4b4f62304cce0abd9027a.sol(458)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |    returns (bool)
    |  {
  > |    allowed[msg.sender][_spender] = (
    |      allowed[msg.sender][_spender].add(_addedValue));
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x3bc1ecefd267bde8ecf4b4f62304cce0abd9027a.sol(497)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x3bc1ecefd267bde8ecf4b4f62304cce0abd9027a.sol(522)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x3bc1ecefd267bde8ecf4b4f62304cce0abd9027a.sol(524)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |    returns (bool)
    |  {
  > |    totalSupply_ = totalSupply_.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    emit Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x3bc1ecefd267bde8ecf4b4f62304cce0abd9027a.sol(572)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |  {
    |    totalSupply_ = totalSupply_.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    emit Mint(_to, _amount);
    |    emit Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x3bc1ecefd267bde8ecf4b4f62304cce0abd9027a.sol(573)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |   */
    |  function finishMinting() onlyOwner canMint public returns (bool) {
  > |    mintingFinished = true;
    |    emit MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x3bc1ecefd267bde8ecf4b4f62304cce0abd9027a.sol(584)

[33mWarning[0m for LockedEther in contract 'MintableToken':
    | * Based on code by TokenMarketNet: https://github.com/TokenMarketNet/ico/blob/master/contracts/MintableToken.sol
    | */
  > |contract MintableToken is StandardToken, Ownable {
    |  event Mint(address indexed to, uint256 amount);
    |  event MintFinished();
  at /home/jiaming/mavs_srcs/contract@0x3bc1ecefd267bde8ecf4b4f62304cce0abd9027a.sol(540)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x3bc1ecefd267bde8ecf4b4f62304cce0abd9027a.sol(98)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x3bc1ecefd267bde8ecf4b4f62304cce0abd9027a.sol(99)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x3bc1ecefd267bde8ecf4b4f62304cce0abd9027a.sol(440)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x3bc1ecefd267bde8ecf4b4f62304cce0abd9027a.sol(441)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x3bc1ecefd267bde8ecf4b4f62304cce0abd9027a.sol(442)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x3bc1ecefd267bde8ecf4b4f62304cce0abd9027a.sol(458)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    returns (bool)
    |  {
  > |    allowed[msg.sender][_spender] = (
    |      allowed[msg.sender][_spender].add(_addedValue));
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x3bc1ecefd267bde8ecf4b4f62304cce0abd9027a.sol(497)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x3bc1ecefd267bde8ecf4b4f62304cce0abd9027a.sol(522)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x3bc1ecefd267bde8ecf4b4f62304cce0abd9027a.sol(524)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    returns (bool)
    |  {
  > |    totalSupply_ = totalSupply_.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    emit Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x3bc1ecefd267bde8ecf4b4f62304cce0abd9027a.sol(572)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  {
    |    totalSupply_ = totalSupply_.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    emit Mint(_to, _amount);
    |    emit Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x3bc1ecefd267bde8ecf4b4f62304cce0abd9027a.sol(573)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x3bc1ecefd267bde8ecf4b4f62304cce0abd9027a.sol(386)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x3bc1ecefd267bde8ecf4b4f62304cce0abd9027a.sol(404)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function finishMinting() onlyOwner canMint public returns (bool) {
  > |    mintingFinished = true;
    |    emit MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x3bc1ecefd267bde8ecf4b4f62304cce0abd9027a.sol(584)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x3bc1ecefd267bde8ecf4b4f62304cce0abd9027a.sol(354)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x3bc1ecefd267bde8ecf4b4f62304cce0abd9027a.sol(355)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @dev Allows the current owner to relinquish control of the contract.
    |   */
  > |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
    |    owner = address(0);
  at /home/jiaming/mavs_srcs/contract@0x3bc1ecefd267bde8ecf4b4f62304cce0abd9027a.sol(384)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address _newOwner) public onlyOwner {
    |    _transferOwnership(_newOwner);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x3bc1ecefd267bde8ecf4b4f62304cce0abd9027a.sol(393)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function _transferOwnership(address _newOwner) internal {
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  at /home/jiaming/mavs_srcs/contract@0x3bc1ecefd267bde8ecf4b4f62304cce0abd9027a.sol(401)

[31mViolation[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x3bc1ecefd267bde8ecf4b4f62304cce0abd9027a.sol(404)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x3bc1ecefd267bde8ecf4b4f62304cce0abd9027a.sol(386)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x3bc1ecefd267bde8ecf4b4f62304cce0abd9027a.sol(404)

[31mViolation[0m for LockedEther in contract 'RBAC':
    | *  to avoid typos.
    | */
  > |contract RBAC {
    |  using Roles for Roles.Role;
    |
  at /home/jiaming/mavs_srcs/contract@0x3bc1ecefd267bde8ecf4b4f62304cce0abd9027a.sol(254)

[31mViolation[0m for LockedEther in contract 'RBACMintableToken':
    | * @dev Mintable Token, with RBAC minter permissions
    | */
  > |contract RBACMintableToken is MintableToken, RBAC {
    |  /**
    |   * A constant role name for indicating minters.
  at /home/jiaming/mavs_srcs/contract@0x3bc1ecefd267bde8ecf4b4f62304cce0abd9027a.sol(597)

[31mViolation[0m for UnrestrictedWrite in contract 'RBACMintableToken':
    |    internal
    |  {
  > |    role.bearer[addr] = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x3bc1ecefd267bde8ecf4b4f62304cce0abd9027a.sol(205)

[31mViolation[0m for UnrestrictedWrite in contract 'RBACMintableToken':
    |    internal
    |  {
  > |    role.bearer[addr] = false;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x3bc1ecefd267bde8ecf4b4f62304cce0abd9027a.sol(214)

[33mWarning[0m for UnrestrictedWrite in contract 'RBACMintableToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x3bc1ecefd267bde8ecf4b4f62304cce0abd9027a.sol(98)

[33mWarning[0m for UnrestrictedWrite in contract 'RBACMintableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x3bc1ecefd267bde8ecf4b4f62304cce0abd9027a.sol(442)

[33mWarning[0m for UnrestrictedWrite in contract 'RBACMintableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x3bc1ecefd267bde8ecf4b4f62304cce0abd9027a.sol(458)

[33mWarning[0m for UnrestrictedWrite in contract 'RBACMintableToken':
    |    returns (bool)
    |  {
  > |    allowed[msg.sender][_spender] = (
    |      allowed[msg.sender][_spender].add(_addedValue));
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x3bc1ecefd267bde8ecf4b4f62304cce0abd9027a.sol(497)

[33mWarning[0m for UnrestrictedWrite in contract 'RBACMintableToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x3bc1ecefd267bde8ecf4b4f62304cce0abd9027a.sol(522)

[33mWarning[0m for UnrestrictedWrite in contract 'RBACMintableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x3bc1ecefd267bde8ecf4b4f62304cce0abd9027a.sol(524)

[33mWarning[0m for UnrestrictedWrite in contract 'RBACMintableToken':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x3bc1ecefd267bde8ecf4b4f62304cce0abd9027a.sol(386)

[33mWarning[0m for UnrestrictedWrite in contract 'RBACMintableToken':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x3bc1ecefd267bde8ecf4b4f62304cce0abd9027a.sol(404)

[33mWarning[0m for UnrestrictedWrite in contract 'RBACMintableToken':
    |   */
    |  function finishMinting() onlyOwner canMint public returns (bool) {
  > |    mintingFinished = true;
    |    emit MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x3bc1ecefd267bde8ecf4b4f62304cce0abd9027a.sol(584)

[33mWarning[0m for LockedEther in contract 'Roles':
    | *      See RBAC.sol for example usage.
    | */
  > |library Roles {
    |  struct Role {
    |    mapping (address => bool) bearer;
  at /home/jiaming/mavs_srcs/contract@0x3bc1ecefd267bde8ecf4b4f62304cce0abd9027a.sol(194)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x3bc1ecefd267bde8ecf4b4f62304cce0abd9027a.sol(9)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0x3bc1ecefd267bde8ecf4b4f62304cce0abd9027a.sol(417)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x3bc1ecefd267bde8ecf4b4f62304cce0abd9027a.sol(98)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x3bc1ecefd267bde8ecf4b4f62304cce0abd9027a.sol(442)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x3bc1ecefd267bde8ecf4b4f62304cce0abd9027a.sol(458)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    returns (bool)
    |  {
  > |    allowed[msg.sender][_spender] = (
    |      allowed[msg.sender][_spender].add(_addedValue));
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x3bc1ecefd267bde8ecf4b4f62304cce0abd9027a.sol(497)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x3bc1ecefd267bde8ecf4b4f62304cce0abd9027a.sol(522)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x3bc1ecefd267bde8ecf4b4f62304cce0abd9027a.sol(524)


