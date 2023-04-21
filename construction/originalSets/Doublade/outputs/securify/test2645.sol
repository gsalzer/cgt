Processing contract: /home/jiaming/mavs_srcs/contract@0xacc7b96cc84e52a864c0b53c56a29e5ef0b340c9.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xacc7b96cc84e52a864c0b53c56a29e5ef0b340c9.sol:BurnableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xacc7b96cc84e52a864c0b53c56a29e5ef0b340c9.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xacc7b96cc84e52a864c0b53c56a29e5ef0b340c9.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xacc7b96cc84e52a864c0b53c56a29e5ef0b340c9.sol:MintableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xacc7b96cc84e52a864c0b53c56a29e5ef0b340c9.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xacc7b96cc84e52a864c0b53c56a29e5ef0b340c9.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xacc7b96cc84e52a864c0b53c56a29e5ef0b340c9.sol:SaleToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xacc7b96cc84e52a864c0b53c56a29e5ef0b340c9.sol:StandardToken
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
  at /home/jiaming/mavs_srcs/contract@0xacc7b96cc84e52a864c0b53c56a29e5ef0b340c9.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xacc7b96cc84e52a864c0b53c56a29e5ef0b340c9.sol(80)

[33mWarning[0m for LockedEther in contract 'BurnableToken':
    | * @dev Token that can be irreversibly burned (destroyed).
    | */
  > |contract BurnableToken is StandardToken {
    |
    |    event Burn(address indexed burner, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0xacc7b96cc84e52a864c0b53c56a29e5ef0b340c9.sol(269)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xacc7b96cc84e52a864c0b53c56a29e5ef0b340c9.sol(80)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xacc7b96cc84e52a864c0b53c56a29e5ef0b340c9.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xacc7b96cc84e52a864c0b53c56a29e5ef0b340c9.sol(138)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |   */
    |  function increaseApproval (address _spender, uint _addedValue) public returns (bool success) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xacc7b96cc84e52a864c0b53c56a29e5ef0b340c9.sol(160)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xacc7b96cc84e52a864c0b53c56a29e5ef0b340c9.sol(168)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xacc7b96cc84e52a864c0b53c56a29e5ef0b340c9.sol(170)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |        address burner = msg.sender;
  > |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
    |        Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0xacc7b96cc84e52a864c0b53c56a29e5ef0b340c9.sol(284)

[33mWarning[0m for LockedEther in contract 'MintableToken':
    | */
    |
  > |contract MintableToken is StandardToken, Ownable {
    |  event Mint(address indexed to, uint256 amount);
    |  event MintFinished();
  at /home/jiaming/mavs_srcs/contract@0xacc7b96cc84e52a864c0b53c56a29e5ef0b340c9.sol(228)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xacc7b96cc84e52a864c0b53c56a29e5ef0b340c9.sol(80)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xacc7b96cc84e52a864c0b53c56a29e5ef0b340c9.sol(81)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xacc7b96cc84e52a864c0b53c56a29e5ef0b340c9.sol(120)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xacc7b96cc84e52a864c0b53c56a29e5ef0b340c9.sol(121)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xacc7b96cc84e52a864c0b53c56a29e5ef0b340c9.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xacc7b96cc84e52a864c0b53c56a29e5ef0b340c9.sol(138)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function increaseApproval (address _spender, uint _addedValue) public returns (bool success) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xacc7b96cc84e52a864c0b53c56a29e5ef0b340c9.sol(160)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xacc7b96cc84e52a864c0b53c56a29e5ef0b340c9.sol(168)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xacc7b96cc84e52a864c0b53c56a29e5ef0b340c9.sol(170)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
  > |    totalSupply = totalSupply.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xacc7b96cc84e52a864c0b53c56a29e5ef0b340c9.sol(247)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
    |    totalSupply = totalSupply.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
    |    Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xacc7b96cc84e52a864c0b53c56a29e5ef0b340c9.sol(248)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xacc7b96cc84e52a864c0b53c56a29e5ef0b340c9.sol(216)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function finishMinting() onlyOwner canMint public returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xacc7b96cc84e52a864c0b53c56a29e5ef0b340c9.sol(259)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xacc7b96cc84e52a864c0b53c56a29e5ef0b340c9.sol(184)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xacc7b96cc84e52a864c0b53c56a29e5ef0b340c9.sol(185)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xacc7b96cc84e52a864c0b53c56a29e5ef0b340c9.sol(213)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xacc7b96cc84e52a864c0b53c56a29e5ef0b340c9.sol(216)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0xacc7b96cc84e52a864c0b53c56a29e5ef0b340c9.sol(8)

[33mWarning[0m for DAOConstantGas in contract 'SaleToken':
    |
    |        Transfer(owner, _to, tokenGet);
  > |        owner.transfer(etherGive);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xacc7b96cc84e52a864c0b53c56a29e5ef0b340c9.sol(331)

[33mWarning[0m for LockedEther in contract 'SaleToken':
    |}
    |
  > |contract SaleToken is MintableToken, BurnableToken {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xacc7b96cc84e52a864c0b53c56a29e5ef0b340c9.sol(290)

[33mWarning[0m for TODAmount in contract 'SaleToken':
    |
    |        Transfer(owner, _to, tokenGet);
  > |        owner.transfer(etherGive);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xacc7b96cc84e52a864c0b53c56a29e5ef0b340c9.sol(331)

[31mViolation[0m for TODReceiver in contract 'SaleToken':
    |
    |        Transfer(owner, _to, tokenGet);
  > |        owner.transfer(etherGive);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xacc7b96cc84e52a864c0b53c56a29e5ef0b340c9.sol(331)

[33mWarning[0m for UnhandledException in contract 'SaleToken':
    |
    |        Transfer(owner, _to, tokenGet);
  > |        owner.transfer(etherGive);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xacc7b96cc84e52a864c0b53c56a29e5ef0b340c9.sol(331)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SaleToken':
    |
    |        Transfer(owner, _to, tokenGet);
  > |        owner.transfer(etherGive);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xacc7b96cc84e52a864c0b53c56a29e5ef0b340c9.sol(331)

[33mWarning[0m for UnrestrictedWrite in contract 'SaleToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xacc7b96cc84e52a864c0b53c56a29e5ef0b340c9.sol(80)

[33mWarning[0m for UnrestrictedWrite in contract 'SaleToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xacc7b96cc84e52a864c0b53c56a29e5ef0b340c9.sol(81)

[33mWarning[0m for UnrestrictedWrite in contract 'SaleToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xacc7b96cc84e52a864c0b53c56a29e5ef0b340c9.sol(120)

[33mWarning[0m for UnrestrictedWrite in contract 'SaleToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xacc7b96cc84e52a864c0b53c56a29e5ef0b340c9.sol(121)

[33mWarning[0m for UnrestrictedWrite in contract 'SaleToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xacc7b96cc84e52a864c0b53c56a29e5ef0b340c9.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'SaleToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xacc7b96cc84e52a864c0b53c56a29e5ef0b340c9.sol(138)

[33mWarning[0m for UnrestrictedWrite in contract 'SaleToken':
    |   */
    |  function increaseApproval (address _spender, uint _addedValue) public returns (bool success) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xacc7b96cc84e52a864c0b53c56a29e5ef0b340c9.sol(160)

[33mWarning[0m for UnrestrictedWrite in contract 'SaleToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xacc7b96cc84e52a864c0b53c56a29e5ef0b340c9.sol(168)

[33mWarning[0m for UnrestrictedWrite in contract 'SaleToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xacc7b96cc84e52a864c0b53c56a29e5ef0b340c9.sol(170)

[33mWarning[0m for UnrestrictedWrite in contract 'SaleToken':
    |   */
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
  > |    totalSupply = totalSupply.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xacc7b96cc84e52a864c0b53c56a29e5ef0b340c9.sol(247)

[33mWarning[0m for UnrestrictedWrite in contract 'SaleToken':
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
    |    totalSupply = totalSupply.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
    |    Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xacc7b96cc84e52a864c0b53c56a29e5ef0b340c9.sol(248)

[33mWarning[0m for UnrestrictedWrite in contract 'SaleToken':
    |
    |        address burner = msg.sender;
  > |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
    |        Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0xacc7b96cc84e52a864c0b53c56a29e5ef0b340c9.sol(284)

[33mWarning[0m for UnrestrictedWrite in contract 'SaleToken':
    |        address burner = msg.sender;
    |        balances[burner] = balances[burner].sub(_value);
  > |        totalSupply = totalSupply.sub(_value);
    |        Burn(burner, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xacc7b96cc84e52a864c0b53c56a29e5ef0b340c9.sol(285)

[33mWarning[0m for UnrestrictedWrite in contract 'SaleToken':
    |        }
    |
  > |        balances[owner] = balances[owner].sub(tokenGet);
    |        balances[_to] = balances[_to].add(tokenGet);
    |
  at /home/jiaming/mavs_srcs/contract@0xacc7b96cc84e52a864c0b53c56a29e5ef0b340c9.sol(327)

[33mWarning[0m for UnrestrictedWrite in contract 'SaleToken':
    |
    |        balances[owner] = balances[owner].sub(tokenGet);
  > |        balances[_to] = balances[_to].add(tokenGet);
    |
    |        Transfer(owner, _to, tokenGet);
  at /home/jiaming/mavs_srcs/contract@0xacc7b96cc84e52a864c0b53c56a29e5ef0b340c9.sol(328)

[33mWarning[0m for UnrestrictedWrite in contract 'SaleToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xacc7b96cc84e52a864c0b53c56a29e5ef0b340c9.sol(216)

[33mWarning[0m for UnrestrictedWrite in contract 'SaleToken':
    |   */
    |  function finishMinting() onlyOwner canMint public returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xacc7b96cc84e52a864c0b53c56a29e5ef0b340c9.sol(259)

[33mWarning[0m for UnrestrictedWrite in contract 'SaleToken':
    |
    |    function setPrice(uint256 newPrice) public onlyOwner {
  > |        price = newPrice;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xacc7b96cc84e52a864c0b53c56a29e5ef0b340c9.sol(301)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0xacc7b96cc84e52a864c0b53c56a29e5ef0b340c9.sol(104)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xacc7b96cc84e52a864c0b53c56a29e5ef0b340c9.sol(80)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xacc7b96cc84e52a864c0b53c56a29e5ef0b340c9.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xacc7b96cc84e52a864c0b53c56a29e5ef0b340c9.sol(138)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function increaseApproval (address _spender, uint _addedValue) public returns (bool success) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xacc7b96cc84e52a864c0b53c56a29e5ef0b340c9.sol(160)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xacc7b96cc84e52a864c0b53c56a29e5ef0b340c9.sol(168)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xacc7b96cc84e52a864c0b53c56a29e5ef0b340c9.sol(170)


