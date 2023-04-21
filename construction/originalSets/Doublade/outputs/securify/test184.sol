Processing contract: /home/jiaming/mavs_srcs/contract@0x0c5e2e5bb41a58f0c83822e024a5dab28f74db87.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0c5e2e5bb41a58f0c83822e024a5dab28f74db87.sol:CappedCrowdsale
Processing contract: /home/jiaming/mavs_srcs/contract@0x0c5e2e5bb41a58f0c83822e024a5dab28f74db87.sol:Crowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0c5e2e5bb41a58f0c83822e024a5dab28f74db87.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x0c5e2e5bb41a58f0c83822e024a5dab28f74db87.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x0c5e2e5bb41a58f0c83822e024a5dab28f74db87.sol:MintableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0c5e2e5bb41a58f0c83822e024a5dab28f74db87.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0c5e2e5bb41a58f0c83822e024a5dab28f74db87.sol:PuregoldToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0c5e2e5bb41a58f0c83822e024a5dab28f74db87.sol:PuregoldTokenICO
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0c5e2e5bb41a58f0c83822e024a5dab28f74db87.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0c5e2e5bb41a58f0c83822e024a5dab28f74db87.sol:StandardToken
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
  at /home/jiaming/mavs_srcs/contract@0x0c5e2e5bb41a58f0c83822e024a5dab28f74db87.sol(80)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x0c5e2e5bb41a58f0c83822e024a5dab28f74db87.sol(95)

[33mWarning[0m for DAOConstantGas in contract 'Crowdsale':
    |  // override to create custom fund forwarding mechanisms
    |  function forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x0c5e2e5bb41a58f0c83822e024a5dab28f74db87.sol(391)

[33mWarning[0m for LockedEther in contract 'Crowdsale':
    | * as they arrive.
    | */
  > |contract Crowdsale {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x0c5e2e5bb41a58f0c83822e024a5dab28f74db87.sol(315)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |    weiRaised = weiRaised.add(weiAmount);
    |
  > |    token.mint(beneficiary, tokens);
    |    TokenPurchase(msg.sender, beneficiary, weiAmount, tokens);
    |
  at /home/jiaming/mavs_srcs/contract@0x0c5e2e5bb41a58f0c83822e024a5dab28f74db87.sol(382)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |  // override to create custom fund forwarding mechanisms
    |  function forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x0c5e2e5bb41a58f0c83822e024a5dab28f74db87.sol(391)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |    weiRaised = weiRaised.add(weiAmount);
    |
  > |    token.mint(beneficiary, tokens);
    |    TokenPurchase(msg.sender, beneficiary, weiAmount, tokens);
    |
  at /home/jiaming/mavs_srcs/contract@0x0c5e2e5bb41a58f0c83822e024a5dab28f74db87.sol(382)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |  // override to create custom fund forwarding mechanisms
    |  function forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x0c5e2e5bb41a58f0c83822e024a5dab28f74db87.sol(391)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |
    |    // update state
  > |    weiRaised = weiRaised.add(weiAmount);
    |
    |    token.mint(beneficiary, tokens);
  at /home/jiaming/mavs_srcs/contract@0x0c5e2e5bb41a58f0c83822e024a5dab28f74db87.sol(380)

[33mWarning[0m for LockedEther in contract 'MintableToken':
    | */
    |
  > |contract MintableToken is StandardToken, Ownable {
    |  event Mint(address indexed to, uint256 amount);
    |  event MintFinished();
  at /home/jiaming/mavs_srcs/contract@0x0c5e2e5bb41a58f0c83822e024a5dab28f74db87.sol(223)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x0c5e2e5bb41a58f0c83822e024a5dab28f74db87.sol(95)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0c5e2e5bb41a58f0c83822e024a5dab28f74db87.sol(96)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x0c5e2e5bb41a58f0c83822e024a5dab28f74db87.sol(154)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x0c5e2e5bb41a58f0c83822e024a5dab28f74db87.sol(155)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0c5e2e5bb41a58f0c83822e024a5dab28f74db87.sol(156)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0c5e2e5bb41a58f0c83822e024a5dab28f74db87.sol(172)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0c5e2e5bb41a58f0c83822e024a5dab28f74db87.sol(194)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x0c5e2e5bb41a58f0c83822e024a5dab28f74db87.sol(202)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x0c5e2e5bb41a58f0c83822e024a5dab28f74db87.sol(204)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
  > |    totalSupply = totalSupply.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x0c5e2e5bb41a58f0c83822e024a5dab28f74db87.sol(242)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
    |    totalSupply = totalSupply.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
    |    Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x0c5e2e5bb41a58f0c83822e024a5dab28f74db87.sol(243)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x0c5e2e5bb41a58f0c83822e024a5dab28f74db87.sol(55)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function finishMinting() onlyOwner canMint public returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0c5e2e5bb41a58f0c83822e024a5dab28f74db87.sol(254)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x0c5e2e5bb41a58f0c83822e024a5dab28f74db87.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x0c5e2e5bb41a58f0c83822e024a5dab28f74db87.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x0c5e2e5bb41a58f0c83822e024a5dab28f74db87.sol(52)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x0c5e2e5bb41a58f0c83822e024a5dab28f74db87.sol(55)

[33mWarning[0m for LockedEther in contract 'PuregoldToken':
    |
    |
  > |contract PuregoldToken is MintableToken {
    |    string public name = "Puregold Token";
    |    string public symbol = "PGT";
  at /home/jiaming/mavs_srcs/contract@0x0c5e2e5bb41a58f0c83822e024a5dab28f74db87.sol(261)

[33mWarning[0m for UnrestrictedWrite in contract 'PuregoldToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x0c5e2e5bb41a58f0c83822e024a5dab28f74db87.sol(95)

[33mWarning[0m for UnrestrictedWrite in contract 'PuregoldToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0c5e2e5bb41a58f0c83822e024a5dab28f74db87.sol(96)

[33mWarning[0m for UnrestrictedWrite in contract 'PuregoldToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x0c5e2e5bb41a58f0c83822e024a5dab28f74db87.sol(154)

[33mWarning[0m for UnrestrictedWrite in contract 'PuregoldToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x0c5e2e5bb41a58f0c83822e024a5dab28f74db87.sol(155)

[33mWarning[0m for UnrestrictedWrite in contract 'PuregoldToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0c5e2e5bb41a58f0c83822e024a5dab28f74db87.sol(156)

[33mWarning[0m for UnrestrictedWrite in contract 'PuregoldToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0c5e2e5bb41a58f0c83822e024a5dab28f74db87.sol(172)

[33mWarning[0m for UnrestrictedWrite in contract 'PuregoldToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0c5e2e5bb41a58f0c83822e024a5dab28f74db87.sol(194)

[33mWarning[0m for UnrestrictedWrite in contract 'PuregoldToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x0c5e2e5bb41a58f0c83822e024a5dab28f74db87.sol(202)

[33mWarning[0m for UnrestrictedWrite in contract 'PuregoldToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x0c5e2e5bb41a58f0c83822e024a5dab28f74db87.sol(204)

[33mWarning[0m for UnrestrictedWrite in contract 'PuregoldToken':
    |   */
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
  > |    totalSupply = totalSupply.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x0c5e2e5bb41a58f0c83822e024a5dab28f74db87.sol(242)

[33mWarning[0m for UnrestrictedWrite in contract 'PuregoldToken':
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
    |    totalSupply = totalSupply.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
    |    Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x0c5e2e5bb41a58f0c83822e024a5dab28f74db87.sol(243)

[33mWarning[0m for UnrestrictedWrite in contract 'PuregoldToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x0c5e2e5bb41a58f0c83822e024a5dab28f74db87.sol(55)

[33mWarning[0m for UnrestrictedWrite in contract 'PuregoldToken':
    |   */
    |  function finishMinting() onlyOwner canMint public returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0c5e2e5bb41a58f0c83822e024a5dab28f74db87.sol(254)

[33mWarning[0m for DAOConstantGas in contract 'PuregoldTokenICO':
    |  // override to create custom fund forwarding mechanisms
    |  function forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x0c5e2e5bb41a58f0c83822e024a5dab28f74db87.sol(391)

[33mWarning[0m for LockedEther in contract 'PuregoldTokenICO':
    |
    |
  > |contract PuregoldTokenICO is CappedCrowdsale {
    |  address public owner;
    |  uint256 public minimum;
  at /home/jiaming/mavs_srcs/contract@0x0c5e2e5bb41a58f0c83822e024a5dab28f74db87.sol(446)

[33mWarning[0m for UnhandledException in contract 'PuregoldTokenICO':
    |    weiRaised = weiRaised.add(weiAmount);
    |
  > |    token.mint(beneficiary, tokens);
    |    TokenPurchase(msg.sender, beneficiary, weiAmount, tokens);
    |
  at /home/jiaming/mavs_srcs/contract@0x0c5e2e5bb41a58f0c83822e024a5dab28f74db87.sol(382)

[33mWarning[0m for UnhandledException in contract 'PuregoldTokenICO':
    |  // override to create custom fund forwarding mechanisms
    |  function forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x0c5e2e5bb41a58f0c83822e024a5dab28f74db87.sol(391)

[33mWarning[0m for UnhandledException in contract 'PuregoldTokenICO':
    |
    |  function transferTokenOwnership(address _to) onlyOwner public {
  > |    token.transferOwnership(_to);
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0x0c5e2e5bb41a58f0c83822e024a5dab28f74db87.sol(478)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PuregoldTokenICO':
    |    weiRaised = weiRaised.add(weiAmount);
    |
  > |    token.mint(beneficiary, tokens);
    |    TokenPurchase(msg.sender, beneficiary, weiAmount, tokens);
    |
  at /home/jiaming/mavs_srcs/contract@0x0c5e2e5bb41a58f0c83822e024a5dab28f74db87.sol(382)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PuregoldTokenICO':
    |  // override to create custom fund forwarding mechanisms
    |  function forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x0c5e2e5bb41a58f0c83822e024a5dab28f74db87.sol(391)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PuregoldTokenICO':
    |
    |  function transferTokenOwnership(address _to) onlyOwner public {
  > |    token.transferOwnership(_to);
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0x0c5e2e5bb41a58f0c83822e024a5dab28f74db87.sol(478)

[33mWarning[0m for UnrestrictedWrite in contract 'PuregoldTokenICO':
    |
    |    // update state
  > |    weiRaised = weiRaised.add(weiAmount);
    |
    |    token.mint(beneficiary, tokens);
  at /home/jiaming/mavs_srcs/contract@0x0c5e2e5bb41a58f0c83822e024a5dab28f74db87.sol(380)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0x0c5e2e5bb41a58f0c83822e024a5dab28f74db87.sol(277)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0x0c5e2e5bb41a58f0c83822e024a5dab28f74db87.sol(138)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x0c5e2e5bb41a58f0c83822e024a5dab28f74db87.sol(95)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0c5e2e5bb41a58f0c83822e024a5dab28f74db87.sol(156)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0c5e2e5bb41a58f0c83822e024a5dab28f74db87.sol(172)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0c5e2e5bb41a58f0c83822e024a5dab28f74db87.sol(194)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x0c5e2e5bb41a58f0c83822e024a5dab28f74db87.sol(202)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x0c5e2e5bb41a58f0c83822e024a5dab28f74db87.sol(204)


