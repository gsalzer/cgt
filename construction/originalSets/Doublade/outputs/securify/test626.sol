Processing contract: /home/jiaming/mavs_srcs/contract@0x27f18be6ba2382291ecfd5ae558a5afece5cc49a.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x27f18be6ba2382291ecfd5ae558a5afece5cc49a.sol:CappedCrowdsale
Processing contract: /home/jiaming/mavs_srcs/contract@0x27f18be6ba2382291ecfd5ae558a5afece5cc49a.sol:Crowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x27f18be6ba2382291ecfd5ae558a5afece5cc49a.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x27f18be6ba2382291ecfd5ae558a5afece5cc49a.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x27f18be6ba2382291ecfd5ae558a5afece5cc49a.sol:MintableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x27f18be6ba2382291ecfd5ae558a5afece5cc49a.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x27f18be6ba2382291ecfd5ae558a5afece5cc49a.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x27f18be6ba2382291ecfd5ae558a5afece5cc49a.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x27f18be6ba2382291ecfd5ae558a5afece5cc49a.sol:Vend
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x27f18be6ba2382291ecfd5ae558a5afece5cc49a.sol:VendCrowdsale
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
  at /home/jiaming/mavs_srcs/contract@0x27f18be6ba2382291ecfd5ae558a5afece5cc49a.sol(64)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x27f18be6ba2382291ecfd5ae558a5afece5cc49a.sol(79)

[33mWarning[0m for DAOConstantGas in contract 'Crowdsale':
    |  // override to create custom fund forwarding mechanisms
    |  function forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x27f18be6ba2382291ecfd5ae558a5afece5cc49a.sol(366)

[33mWarning[0m for LockedEther in contract 'Crowdsale':
    | * as they arrive.
    | */
  > |contract Crowdsale {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x27f18be6ba2382291ecfd5ae558a5afece5cc49a.sol(290)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |    weiRaised = weiRaised.add(weiAmount);
    |
  > |    token.mint(beneficiary, tokens);
    |    TokenPurchase(msg.sender, beneficiary, weiAmount, tokens);
    |
  at /home/jiaming/mavs_srcs/contract@0x27f18be6ba2382291ecfd5ae558a5afece5cc49a.sol(357)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |  // override to create custom fund forwarding mechanisms
    |  function forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x27f18be6ba2382291ecfd5ae558a5afece5cc49a.sol(366)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |    weiRaised = weiRaised.add(weiAmount);
    |
  > |    token.mint(beneficiary, tokens);
    |    TokenPurchase(msg.sender, beneficiary, weiAmount, tokens);
    |
  at /home/jiaming/mavs_srcs/contract@0x27f18be6ba2382291ecfd5ae558a5afece5cc49a.sol(357)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |  // override to create custom fund forwarding mechanisms
    |  function forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x27f18be6ba2382291ecfd5ae558a5afece5cc49a.sol(366)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |
    |    // update state
  > |    weiRaised = weiRaised.add(weiAmount);
    |
    |    token.mint(beneficiary, tokens);
  at /home/jiaming/mavs_srcs/contract@0x27f18be6ba2382291ecfd5ae558a5afece5cc49a.sol(355)

[33mWarning[0m for LockedEther in contract 'MintableToken':
    | */
    |
  > |contract MintableToken is StandardToken, Ownable {
    |  event Mint(address indexed to, uint256 amount);
    |  event MintFinished();
  at /home/jiaming/mavs_srcs/contract@0x27f18be6ba2382291ecfd5ae558a5afece5cc49a.sol(211)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x27f18be6ba2382291ecfd5ae558a5afece5cc49a.sol(79)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x27f18be6ba2382291ecfd5ae558a5afece5cc49a.sol(80)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x27f18be6ba2382291ecfd5ae558a5afece5cc49a.sol(132)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x27f18be6ba2382291ecfd5ae558a5afece5cc49a.sol(133)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x27f18be6ba2382291ecfd5ae558a5afece5cc49a.sol(134)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x27f18be6ba2382291ecfd5ae558a5afece5cc49a.sol(150)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x27f18be6ba2382291ecfd5ae558a5afece5cc49a.sol(176)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x27f18be6ba2382291ecfd5ae558a5afece5cc49a.sol(194)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x27f18be6ba2382291ecfd5ae558a5afece5cc49a.sol(196)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
  > |    totalSupply = totalSupply.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x27f18be6ba2382291ecfd5ae558a5afece5cc49a.sol(230)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
    |    totalSupply = totalSupply.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
    |    Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x27f18be6ba2382291ecfd5ae558a5afece5cc49a.sol(231)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x27f18be6ba2382291ecfd5ae558a5afece5cc49a.sol(55)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function finishMinting() onlyOwner canMint public returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x27f18be6ba2382291ecfd5ae558a5afece5cc49a.sol(242)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x27f18be6ba2382291ecfd5ae558a5afece5cc49a.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x27f18be6ba2382291ecfd5ae558a5afece5cc49a.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x27f18be6ba2382291ecfd5ae558a5afece5cc49a.sol(52)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x27f18be6ba2382291ecfd5ae558a5afece5cc49a.sol(55)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0x27f18be6ba2382291ecfd5ae558a5afece5cc49a.sol(252)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0x27f18be6ba2382291ecfd5ae558a5afece5cc49a.sol(116)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x27f18be6ba2382291ecfd5ae558a5afece5cc49a.sol(79)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x27f18be6ba2382291ecfd5ae558a5afece5cc49a.sol(134)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x27f18be6ba2382291ecfd5ae558a5afece5cc49a.sol(150)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x27f18be6ba2382291ecfd5ae558a5afece5cc49a.sol(176)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x27f18be6ba2382291ecfd5ae558a5afece5cc49a.sol(194)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x27f18be6ba2382291ecfd5ae558a5afece5cc49a.sol(196)

[33mWarning[0m for LockedEther in contract 'Vend':
    |}
    |
  > |contract Vend is MintableToken {
    |  	string public constant name = "VEND";
    |  	string public constant symbol = "VEND";
  at /home/jiaming/mavs_srcs/contract@0x27f18be6ba2382291ecfd5ae558a5afece5cc49a.sol(414)

[33mWarning[0m for UnrestrictedWrite in contract 'Vend':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x27f18be6ba2382291ecfd5ae558a5afece5cc49a.sol(79)

[33mWarning[0m for UnrestrictedWrite in contract 'Vend':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x27f18be6ba2382291ecfd5ae558a5afece5cc49a.sol(80)

[33mWarning[0m for UnrestrictedWrite in contract 'Vend':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x27f18be6ba2382291ecfd5ae558a5afece5cc49a.sol(132)

[33mWarning[0m for UnrestrictedWrite in contract 'Vend':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x27f18be6ba2382291ecfd5ae558a5afece5cc49a.sol(133)

[33mWarning[0m for UnrestrictedWrite in contract 'Vend':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x27f18be6ba2382291ecfd5ae558a5afece5cc49a.sol(134)

[33mWarning[0m for UnrestrictedWrite in contract 'Vend':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x27f18be6ba2382291ecfd5ae558a5afece5cc49a.sol(150)

[33mWarning[0m for UnrestrictedWrite in contract 'Vend':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x27f18be6ba2382291ecfd5ae558a5afece5cc49a.sol(176)

[33mWarning[0m for UnrestrictedWrite in contract 'Vend':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x27f18be6ba2382291ecfd5ae558a5afece5cc49a.sol(194)

[33mWarning[0m for UnrestrictedWrite in contract 'Vend':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x27f18be6ba2382291ecfd5ae558a5afece5cc49a.sol(196)

[33mWarning[0m for UnrestrictedWrite in contract 'Vend':
    |   */
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
  > |    totalSupply = totalSupply.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x27f18be6ba2382291ecfd5ae558a5afece5cc49a.sol(230)

[33mWarning[0m for UnrestrictedWrite in contract 'Vend':
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
    |    totalSupply = totalSupply.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
    |    Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x27f18be6ba2382291ecfd5ae558a5afece5cc49a.sol(231)

[33mWarning[0m for UnrestrictedWrite in contract 'Vend':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x27f18be6ba2382291ecfd5ae558a5afece5cc49a.sol(55)

[33mWarning[0m for UnrestrictedWrite in contract 'Vend':
    |    */
    |    function finishMinting() onlyOwner canMint public returns (bool) {
  > |      mintingFinished = true;
    |      MintFinished();
    |      return true;
  at /home/jiaming/mavs_srcs/contract@0x27f18be6ba2382291ecfd5ae558a5afece5cc49a.sol(424)

[31mViolation[0m for DAOConstantGas in contract 'VendCrowdsale':
    |  // override to create custom fund forwarding mechanisms
    |  function forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x27f18be6ba2382291ecfd5ae558a5afece5cc49a.sol(366)

[33mWarning[0m for LockedEther in contract 'VendCrowdsale':
    |
    |
  > |contract VendCrowdsale is Crowdsale , Ownable, CappedCrowdsale {
    |
    |	//stage presale or crowdsale
  at /home/jiaming/mavs_srcs/contract@0x27f18be6ba2382291ecfd5ae558a5afece5cc49a.sol(433)

[33mWarning[0m for UnhandledException in contract 'VendCrowdsale':
    |  // override to create custom fund forwarding mechanisms
    |  function forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x27f18be6ba2382291ecfd5ae558a5afece5cc49a.sol(366)

[33mWarning[0m for UnhandledException in contract 'VendCrowdsale':
    |       forwardFunds();
    |       weiRaised = weiRaised.add(weiAmount);
  > |       token.mint(beneficiary, tokens);
    |       TokenPurchase(msg.sender, beneficiary, weiAmount, tokens);
    |       if (!isGoalReached && weiRaised >= softCap) {
  at /home/jiaming/mavs_srcs/contract@0x27f18be6ba2382291ecfd5ae558a5afece5cc49a.sol(514)

[33mWarning[0m for UnhandledException in contract 'VendCrowdsale':
    |           _to != 0x0 && _value > 0 && advisorsAllocation >= _value
    |        );
  > |        token.mint(_to, _value);
    |        advisorsAllocation = advisorsAllocation.sub(_value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x27f18be6ba2382291ecfd5ae558a5afece5cc49a.sol(618)

[33mWarning[0m for UnhandledException in contract 'VendCrowdsale':
    |           _to != 0x0 && _value > 0 && marketAllocation >= _value
    |        );
  > |        token.mint(_to, _value);
    |        marketAllocation = marketAllocation.sub(_value);
    |	}
  at /home/jiaming/mavs_srcs/contract@0x27f18be6ba2382291ecfd5ae558a5afece5cc49a.sol(633)

[33mWarning[0m for UnhandledException in contract 'VendCrowdsale':
    |           _to != 0x0 && _value > 0 && founderAllocation >= _value
    |        );
  > |        token.mint(_to, _value);
    |        founderAllocation = founderAllocation.sub(_value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x27f18be6ba2382291ecfd5ae558a5afece5cc49a.sol(649)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'VendCrowdsale':
    |  // override to create custom fund forwarding mechanisms
    |  function forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x27f18be6ba2382291ecfd5ae558a5afece5cc49a.sol(366)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'VendCrowdsale':
    |       forwardFunds();
    |       weiRaised = weiRaised.add(weiAmount);
  > |       token.mint(beneficiary, tokens);
    |       TokenPurchase(msg.sender, beneficiary, weiAmount, tokens);
    |       if (!isGoalReached && weiRaised >= softCap) {
  at /home/jiaming/mavs_srcs/contract@0x27f18be6ba2382291ecfd5ae558a5afece5cc49a.sol(514)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'VendCrowdsale':
    |           _to != 0x0 && _value > 0 && advisorsAllocation >= _value
    |        );
  > |        token.mint(_to, _value);
    |        advisorsAllocation = advisorsAllocation.sub(_value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x27f18be6ba2382291ecfd5ae558a5afece5cc49a.sol(618)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'VendCrowdsale':
    |           _to != 0x0 && _value > 0 && marketAllocation >= _value
    |        );
  > |        token.mint(_to, _value);
    |        marketAllocation = marketAllocation.sub(_value);
    |	}
  at /home/jiaming/mavs_srcs/contract@0x27f18be6ba2382291ecfd5ae558a5afece5cc49a.sol(633)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'VendCrowdsale':
    |           _to != 0x0 && _value > 0 && founderAllocation >= _value
    |        );
  > |        token.mint(_to, _value);
    |        founderAllocation = founderAllocation.sub(_value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x27f18be6ba2382291ecfd5ae558a5afece5cc49a.sol(649)

[33mWarning[0m for UnrestrictedWrite in contract 'VendCrowdsale':
    |       	if(investedAmountOf[beneficiary] == 0) {
    |           // A new investor
  > |           	investorCount++;
    |        }
    |        // Update investor
  at /home/jiaming/mavs_srcs/contract@0x27f18be6ba2382291ecfd5ae558a5afece5cc49a.sol(500)

[33mWarning[0m for UnrestrictedWrite in contract 'VendCrowdsale':
    |        }
    |        // Update investor
  > |        investedAmountOf[beneficiary] = investedAmountOf[beneficiary].add(weiAmount);
    |        if (stage == Stage.PRESALE) {
    |            assert (tokens <= publicAllocation);
  at /home/jiaming/mavs_srcs/contract@0x27f18be6ba2382291ecfd5ae558a5afece5cc49a.sol(503)

[33mWarning[0m for UnrestrictedWrite in contract 'VendCrowdsale':
    |        if (stage == Stage.PRESALE) {
    |            assert (tokens <= publicAllocation);
  > |            publicAllocation = publicAllocation.sub(tokens);
    |        } else {
    |            assert (tokens <= publicAllocation);
  at /home/jiaming/mavs_srcs/contract@0x27f18be6ba2382291ecfd5ae558a5afece5cc49a.sol(506)

[33mWarning[0m for UnrestrictedWrite in contract 'VendCrowdsale':
    |        } else {
    |            assert (tokens <= publicAllocation);
  > |            publicAllocation = publicAllocation.sub(tokens);
    |
    |        }
  at /home/jiaming/mavs_srcs/contract@0x27f18be6ba2382291ecfd5ae558a5afece5cc49a.sol(509)

[33mWarning[0m for UnrestrictedWrite in contract 'VendCrowdsale':
    |        }
    |       forwardFunds();
  > |       weiRaised = weiRaised.add(weiAmount);
    |       token.mint(beneficiary, tokens);
    |       TokenPurchase(msg.sender, beneficiary, weiAmount, tokens);
  at /home/jiaming/mavs_srcs/contract@0x27f18be6ba2382291ecfd5ae558a5afece5cc49a.sol(513)

[33mWarning[0m for UnrestrictedWrite in contract 'VendCrowdsale':
    |       TokenPurchase(msg.sender, beneficiary, weiAmount, tokens);
    |       if (!isGoalReached && weiRaised >= softCap) {
  > |             isGoalReached = true;
    |             MinimumGoalReached();
    |         }
  at /home/jiaming/mavs_srcs/contract@0x27f18be6ba2382291ecfd5ae558a5afece5cc49a.sol(517)

[33mWarning[0m for UnrestrictedWrite in contract 'VendCrowdsale':
    |        );
    |        token.mint(_to, _value);
  > |        advisorsAllocation = advisorsAllocation.sub(_value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x27f18be6ba2382291ecfd5ae558a5afece5cc49a.sol(619)

[33mWarning[0m for UnrestrictedWrite in contract 'VendCrowdsale':
    |        );
    |        token.mint(_to, _value);
  > |        marketAllocation = marketAllocation.sub(_value);
    |	}
    |	
  at /home/jiaming/mavs_srcs/contract@0x27f18be6ba2382291ecfd5ae558a5afece5cc49a.sol(634)

[33mWarning[0m for UnrestrictedWrite in contract 'VendCrowdsale':
    |        );
    |        token.mint(_to, _value);
  > |        founderAllocation = founderAllocation.sub(_value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x27f18be6ba2382291ecfd5ae558a5afece5cc49a.sol(650)

[33mWarning[0m for UnrestrictedWrite in contract 'VendCrowdsale':
    |	function burnToken(uint256 _value) onlyOwner {
    |    	require(_value > 0);
  > |     	publicAllocation = publicAllocation.sub(_value);
    |
    |    	Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x27f18be6ba2382291ecfd5ae558a5afece5cc49a.sol(660)

[33mWarning[0m for UnrestrictedWrite in contract 'VendCrowdsale':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x27f18be6ba2382291ecfd5ae558a5afece5cc49a.sol(55)

[33mWarning[0m for UnrestrictedWrite in contract 'VendCrowdsale':
    |  	function startPublicsale(uint256 _startTime, uint256 _endTime) public onlyOwner {
    |      	require(_endTime >= _startTime);
  > |      	stage = Stage.PUBLICSALE;
    |      	//Start Time endTime and price for PUBLICSALE
    |      	startTime = _startTime;
  at /home/jiaming/mavs_srcs/contract@0x27f18be6ba2382291ecfd5ae558a5afece5cc49a.sol(577)

[33mWarning[0m for UnrestrictedWrite in contract 'VendCrowdsale':
    |      	stage = Stage.PUBLICSALE;
    |      	//Start Time endTime and price for PUBLICSALE
  > |      	startTime = _startTime;
    |      	endTime = _endTime;
    |   }
  at /home/jiaming/mavs_srcs/contract@0x27f18be6ba2382291ecfd5ae558a5afece5cc49a.sol(579)

[33mWarning[0m for UnrestrictedWrite in contract 'VendCrowdsale':
    |      	//Start Time endTime and price for PUBLICSALE
    |      	startTime = _startTime;
  > |      	endTime = _endTime;
    |   }
    |
  at /home/jiaming/mavs_srcs/contract@0x27f18be6ba2382291ecfd5ae558a5afece5cc49a.sol(580)

[33mWarning[0m for UnrestrictedWrite in contract 'VendCrowdsale':
    |    function changeEnd(uint256 _endTime) public onlyOwner {
    |    	require(_endTime!=0);
  > |        endTime = _endTime;
    |        
    |    }
  at /home/jiaming/mavs_srcs/contract@0x27f18be6ba2382291ecfd5ae558a5afece5cc49a.sol(591)

[33mWarning[0m for UnrestrictedWrite in contract 'VendCrowdsale':
    |   	function changeRate(uint256 _rate) public onlyOwner {
    |     	require(_rate != 0);
  > |      	rate = _rate;
    |
    |   }
  at /home/jiaming/mavs_srcs/contract@0x27f18be6ba2382291ecfd5ae558a5afece5cc49a.sol(601)


