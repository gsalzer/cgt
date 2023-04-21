Processing contract: /home/jiaming/mavs_srcs/contract@0xc767bb2ab72358eb140b6a66b51a6afb833775dc.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc767bb2ab72358eb140b6a66b51a6afb833775dc.sol:CappedToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc767bb2ab72358eb140b6a66b51a6afb833775dc.sol:Crowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc767bb2ab72358eb140b6a66b51a6afb833775dc.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xc767bb2ab72358eb140b6a66b51a6afb833775dc.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xc767bb2ab72358eb140b6a66b51a6afb833775dc.sol:JcnCrowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc767bb2ab72358eb140b6a66b51a6afb833775dc.sol:JcnToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc767bb2ab72358eb140b6a66b51a6afb833775dc.sol:MintableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc767bb2ab72358eb140b6a66b51a6afb833775dc.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc767bb2ab72358eb140b6a66b51a6afb833775dc.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc767bb2ab72358eb140b6a66b51a6afb833775dc.sol:StandardToken
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
  at /home/jiaming/mavs_srcs/contract@0xc767bb2ab72358eb140b6a66b51a6afb833775dc.sol(102)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc767bb2ab72358eb140b6a66b51a6afb833775dc.sol(117)

[33mWarning[0m for LockedEther in contract 'CappedToken':
    | */
    |
  > |contract CappedToken is MintableToken {
    |
    |  uint256 public cap;
  at /home/jiaming/mavs_srcs/contract@0xc767bb2ab72358eb140b6a66b51a6afb833775dc.sol(297)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc767bb2ab72358eb140b6a66b51a6afb833775dc.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc767bb2ab72358eb140b6a66b51a6afb833775dc.sol(118)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xc767bb2ab72358eb140b6a66b51a6afb833775dc.sol(172)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc767bb2ab72358eb140b6a66b51a6afb833775dc.sol(173)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc767bb2ab72358eb140b6a66b51a6afb833775dc.sol(174)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc767bb2ab72358eb140b6a66b51a6afb833775dc.sol(190)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc767bb2ab72358eb140b6a66b51a6afb833775dc.sol(216)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xc767bb2ab72358eb140b6a66b51a6afb833775dc.sol(234)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xc767bb2ab72358eb140b6a66b51a6afb833775dc.sol(236)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |   */
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
  > |    totalSupply = totalSupply.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xc767bb2ab72358eb140b6a66b51a6afb833775dc.sol(272)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
    |    totalSupply = totalSupply.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
    |    Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xc767bb2ab72358eb140b6a66b51a6afb833775dc.sol(273)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc767bb2ab72358eb140b6a66b51a6afb833775dc.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |   */
    |  function finishMinting() onlyOwner canMint public returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc767bb2ab72358eb140b6a66b51a6afb833775dc.sol(284)

[33mWarning[0m for DAOConstantGas in contract 'Crowdsale':
    |  // override to create custom fund forwarding mechanisms
    |  function forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc767bb2ab72358eb140b6a66b51a6afb833775dc.sol(425)

[33mWarning[0m for LockedEther in contract 'Crowdsale':
    | * as they arrive.
    | */
  > |contract Crowdsale {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xc767bb2ab72358eb140b6a66b51a6afb833775dc.sol(349)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |    weiRaised = weiRaised.add(weiAmount);
    |
  > |    token.mint(beneficiary, tokens);
    |    TokenPurchase(msg.sender, beneficiary, weiAmount, tokens);
    |
  at /home/jiaming/mavs_srcs/contract@0xc767bb2ab72358eb140b6a66b51a6afb833775dc.sol(416)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |  // override to create custom fund forwarding mechanisms
    |  function forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc767bb2ab72358eb140b6a66b51a6afb833775dc.sol(425)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |    weiRaised = weiRaised.add(weiAmount);
    |
  > |    token.mint(beneficiary, tokens);
    |    TokenPurchase(msg.sender, beneficiary, weiAmount, tokens);
    |
  at /home/jiaming/mavs_srcs/contract@0xc767bb2ab72358eb140b6a66b51a6afb833775dc.sol(416)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |  // override to create custom fund forwarding mechanisms
    |  function forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc767bb2ab72358eb140b6a66b51a6afb833775dc.sol(425)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |
    |    // update state
  > |    weiRaised = weiRaised.add(weiAmount);
    |
    |    token.mint(beneficiary, tokens);
  at /home/jiaming/mavs_srcs/contract@0xc767bb2ab72358eb140b6a66b51a6afb833775dc.sol(414)

[33mWarning[0m for DAOConstantGas in contract 'JcnCrowdsale':
    |  // override to create custom fund forwarding mechanisms
    |  function forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc767bb2ab72358eb140b6a66b51a6afb833775dc.sol(425)

[33mWarning[0m for LockedEther in contract 'JcnCrowdsale':
    |// File: contracts/JcnCrowdsale.sol
    |
  > |contract JcnCrowdsale is Crowdsale {
    |
    |	uint256 public constant FOUNDERS_SHARE = 30000000 * (10 ** uint256(18));	//30 Million
  at /home/jiaming/mavs_srcs/contract@0xc767bb2ab72358eb140b6a66b51a6afb833775dc.sol(445)

[33mWarning[0m for UnhandledException in contract 'JcnCrowdsale':
    |  // override to create custom fund forwarding mechanisms
    |  function forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc767bb2ab72358eb140b6a66b51a6afb833775dc.sol(425)

[33mWarning[0m for UnhandledException in contract 'JcnCrowdsale':
    |		weiRaised = weiRaised.add(weiAmount);
    |
  > |		token.mint(beneficiary, tokens);
    |		TokenPurchase(msg.sender, beneficiary, weiAmount, tokens);
    |
  at /home/jiaming/mavs_srcs/contract@0xc767bb2ab72358eb140b6a66b51a6afb833775dc.sol(522)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'JcnCrowdsale':
    |  // override to create custom fund forwarding mechanisms
    |  function forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc767bb2ab72358eb140b6a66b51a6afb833775dc.sol(425)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'JcnCrowdsale':
    |		weiRaised = weiRaised.add(weiAmount);
    |
  > |		token.mint(beneficiary, tokens);
    |		TokenPurchase(msg.sender, beneficiary, weiAmount, tokens);
    |
  at /home/jiaming/mavs_srcs/contract@0xc767bb2ab72358eb140b6a66b51a6afb833775dc.sol(522)

[33mWarning[0m for UnrestrictedWrite in contract 'JcnCrowdsale':
    |
    |		// update state
  > |		weiRaised = weiRaised.add(weiAmount);
    |
    |		token.mint(beneficiary, tokens);
  at /home/jiaming/mavs_srcs/contract@0xc767bb2ab72358eb140b6a66b51a6afb833775dc.sol(520)

[33mWarning[0m for LockedEther in contract 'JcnToken':
    |// File: contracts/JcnToken.sol
    |
  > |contract JcnToken is CappedToken {
    |
    |	string public name = "JizzCoins";
  at /home/jiaming/mavs_srcs/contract@0xc767bb2ab72358eb140b6a66b51a6afb833775dc.sol(322)

[33mWarning[0m for UnrestrictedWrite in contract 'JcnToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc767bb2ab72358eb140b6a66b51a6afb833775dc.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'JcnToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc767bb2ab72358eb140b6a66b51a6afb833775dc.sol(118)

[33mWarning[0m for UnrestrictedWrite in contract 'JcnToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xc767bb2ab72358eb140b6a66b51a6afb833775dc.sol(172)

[33mWarning[0m for UnrestrictedWrite in contract 'JcnToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc767bb2ab72358eb140b6a66b51a6afb833775dc.sol(173)

[33mWarning[0m for UnrestrictedWrite in contract 'JcnToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc767bb2ab72358eb140b6a66b51a6afb833775dc.sol(174)

[33mWarning[0m for UnrestrictedWrite in contract 'JcnToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc767bb2ab72358eb140b6a66b51a6afb833775dc.sol(190)

[33mWarning[0m for UnrestrictedWrite in contract 'JcnToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc767bb2ab72358eb140b6a66b51a6afb833775dc.sol(216)

[33mWarning[0m for UnrestrictedWrite in contract 'JcnToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xc767bb2ab72358eb140b6a66b51a6afb833775dc.sol(234)

[33mWarning[0m for UnrestrictedWrite in contract 'JcnToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xc767bb2ab72358eb140b6a66b51a6afb833775dc.sol(236)

[33mWarning[0m for UnrestrictedWrite in contract 'JcnToken':
    |   */
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
  > |    totalSupply = totalSupply.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xc767bb2ab72358eb140b6a66b51a6afb833775dc.sol(272)

[33mWarning[0m for UnrestrictedWrite in contract 'JcnToken':
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
    |    totalSupply = totalSupply.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
    |    Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xc767bb2ab72358eb140b6a66b51a6afb833775dc.sol(273)

[33mWarning[0m for UnrestrictedWrite in contract 'JcnToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc767bb2ab72358eb140b6a66b51a6afb833775dc.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'JcnToken':
    |   */
    |  function finishMinting() onlyOwner canMint public returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc767bb2ab72358eb140b6a66b51a6afb833775dc.sol(284)

[33mWarning[0m for LockedEther in contract 'MintableToken':
    | */
    |
  > |contract MintableToken is StandardToken, Ownable {
    |  event Mint(address indexed to, uint256 amount);
    |  event MintFinished();
  at /home/jiaming/mavs_srcs/contract@0xc767bb2ab72358eb140b6a66b51a6afb833775dc.sol(253)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc767bb2ab72358eb140b6a66b51a6afb833775dc.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc767bb2ab72358eb140b6a66b51a6afb833775dc.sol(118)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xc767bb2ab72358eb140b6a66b51a6afb833775dc.sol(172)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc767bb2ab72358eb140b6a66b51a6afb833775dc.sol(173)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc767bb2ab72358eb140b6a66b51a6afb833775dc.sol(174)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc767bb2ab72358eb140b6a66b51a6afb833775dc.sol(190)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc767bb2ab72358eb140b6a66b51a6afb833775dc.sol(216)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xc767bb2ab72358eb140b6a66b51a6afb833775dc.sol(234)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xc767bb2ab72358eb140b6a66b51a6afb833775dc.sol(236)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
  > |    totalSupply = totalSupply.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xc767bb2ab72358eb140b6a66b51a6afb833775dc.sol(272)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
    |    totalSupply = totalSupply.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
    |    Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xc767bb2ab72358eb140b6a66b51a6afb833775dc.sol(273)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc767bb2ab72358eb140b6a66b51a6afb833775dc.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function finishMinting() onlyOwner canMint public returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc767bb2ab72358eb140b6a66b51a6afb833775dc.sol(284)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xc767bb2ab72358eb140b6a66b51a6afb833775dc.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xc767bb2ab72358eb140b6a66b51a6afb833775dc.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xc767bb2ab72358eb140b6a66b51a6afb833775dc.sol(39)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc767bb2ab72358eb140b6a66b51a6afb833775dc.sol(42)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0xc767bb2ab72358eb140b6a66b51a6afb833775dc.sol(53)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0xc767bb2ab72358eb140b6a66b51a6afb833775dc.sol(156)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc767bb2ab72358eb140b6a66b51a6afb833775dc.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc767bb2ab72358eb140b6a66b51a6afb833775dc.sol(174)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc767bb2ab72358eb140b6a66b51a6afb833775dc.sol(190)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc767bb2ab72358eb140b6a66b51a6afb833775dc.sol(216)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xc767bb2ab72358eb140b6a66b51a6afb833775dc.sol(234)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xc767bb2ab72358eb140b6a66b51a6afb833775dc.sol(236)


