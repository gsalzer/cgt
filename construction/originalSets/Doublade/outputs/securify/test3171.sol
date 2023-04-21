Processing contract: /home/jiaming/mavs_srcs/contract@0xcfe25c078abc12025e418b1203498bbe6ced28ce.sol:AmpleCoinCrowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xcfe25c078abc12025e418b1203498bbe6ced28ce.sol:AmpleCoinToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xcfe25c078abc12025e418b1203498bbe6ced28ce.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xcfe25c078abc12025e418b1203498bbe6ced28ce.sol:BurnableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xcfe25c078abc12025e418b1203498bbe6ced28ce.sol:CappedCrowdsale
Processing contract: /home/jiaming/mavs_srcs/contract@0xcfe25c078abc12025e418b1203498bbe6ced28ce.sol:Crowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xcfe25c078abc12025e418b1203498bbe6ced28ce.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xcfe25c078abc12025e418b1203498bbe6ced28ce.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xcfe25c078abc12025e418b1203498bbe6ced28ce.sol:FinalizableCrowdsale
Processing contract: /home/jiaming/mavs_srcs/contract@0xcfe25c078abc12025e418b1203498bbe6ced28ce.sol:MintableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xcfe25c078abc12025e418b1203498bbe6ced28ce.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xcfe25c078abc12025e418b1203498bbe6ced28ce.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xcfe25c078abc12025e418b1203498bbe6ced28ce.sol:RefundVault
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xcfe25c078abc12025e418b1203498bbe6ced28ce.sol:RefundableCrowdsale
Processing contract: /home/jiaming/mavs_srcs/contract@0xcfe25c078abc12025e418b1203498bbe6ced28ce.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xcfe25c078abc12025e418b1203498bbe6ced28ce.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'AmpleCoinToken':
    |}
    |
  > |contract AmpleCoinToken is BasicToken, BurnableToken, MintableToken {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xcfe25c078abc12025e418b1203498bbe6ced28ce.sol(653)

[33mWarning[0m for UnrestrictedWrite in contract 'AmpleCoinToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xcfe25c078abc12025e418b1203498bbe6ced28ce.sol(502)

[33mWarning[0m for UnrestrictedWrite in contract 'AmpleCoinToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xcfe25c078abc12025e418b1203498bbe6ced28ce.sol(503)

[33mWarning[0m for UnrestrictedWrite in contract 'AmpleCoinToken':
    |    // require (_value <= _allowance);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xcfe25c078abc12025e418b1203498bbe6ced28ce.sol(538)

[33mWarning[0m for UnrestrictedWrite in contract 'AmpleCoinToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xcfe25c078abc12025e418b1203498bbe6ced28ce.sol(539)

[33mWarning[0m for UnrestrictedWrite in contract 'AmpleCoinToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xcfe25c078abc12025e418b1203498bbe6ced28ce.sol(540)

[33mWarning[0m for UnrestrictedWrite in contract 'AmpleCoinToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xcfe25c078abc12025e418b1203498bbe6ced28ce.sol(556)

[33mWarning[0m for UnrestrictedWrite in contract 'AmpleCoinToken':
    |  function increaseApproval (address _spender, uint _addedValue)
    |    returns (bool success) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xcfe25c078abc12025e418b1203498bbe6ced28ce.sol(579)

[33mWarning[0m for UnrestrictedWrite in contract 'AmpleCoinToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xcfe25c078abc12025e418b1203498bbe6ced28ce.sol(588)

[33mWarning[0m for UnrestrictedWrite in contract 'AmpleCoinToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xcfe25c078abc12025e418b1203498bbe6ced28ce.sol(590)

[33mWarning[0m for UnrestrictedWrite in contract 'AmpleCoinToken':
    |
    |        address burner = msg.sender;
  > |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
    |        Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0xcfe25c078abc12025e418b1203498bbe6ced28ce.sol(610)

[33mWarning[0m for UnrestrictedWrite in contract 'AmpleCoinToken':
    |        address burner = msg.sender;
    |        balances[burner] = balances[burner].sub(_value);
  > |        totalSupply = totalSupply.sub(_value);
    |        Burn(burner, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xcfe25c078abc12025e418b1203498bbe6ced28ce.sol(611)

[33mWarning[0m for UnrestrictedWrite in contract 'AmpleCoinToken':
    |   */
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
  > |    totalSupply = totalSupply.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xcfe25c078abc12025e418b1203498bbe6ced28ce.sol(635)

[33mWarning[0m for UnrestrictedWrite in contract 'AmpleCoinToken':
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
    |    totalSupply = totalSupply.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
    |    Transfer(0x0, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xcfe25c078abc12025e418b1203498bbe6ced28ce.sol(636)

[33mWarning[0m for UnrestrictedWrite in contract 'AmpleCoinToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xcfe25c078abc12025e418b1203498bbe6ced28ce.sol(35)

[33mWarning[0m for UnrestrictedWrite in contract 'AmpleCoinToken':
    |   */
    |  function finishMinting() onlyOwner public returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xcfe25c078abc12025e418b1203498bbe6ced28ce.sol(647)

[33mWarning[0m for LockedEther in contract 'BasicToken':
    |}
    |
  > |contract BasicToken is ERC20Basic {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xcfe25c078abc12025e418b1203498bbe6ced28ce.sol(488)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xcfe25c078abc12025e418b1203498bbe6ced28ce.sol(502)

[33mWarning[0m for LockedEther in contract 'BurnableToken':
    |}
    |
  > |contract BurnableToken is StandardToken {
    |
    |    event Burn(address indexed burner, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0xcfe25c078abc12025e418b1203498bbe6ced28ce.sol(598)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xcfe25c078abc12025e418b1203498bbe6ced28ce.sol(502)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xcfe25c078abc12025e418b1203498bbe6ced28ce.sol(503)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    // require (_value <= _allowance);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xcfe25c078abc12025e418b1203498bbe6ced28ce.sol(538)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xcfe25c078abc12025e418b1203498bbe6ced28ce.sol(539)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xcfe25c078abc12025e418b1203498bbe6ced28ce.sol(540)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xcfe25c078abc12025e418b1203498bbe6ced28ce.sol(556)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |  function increaseApproval (address _spender, uint _addedValue)
    |    returns (bool success) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xcfe25c078abc12025e418b1203498bbe6ced28ce.sol(579)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xcfe25c078abc12025e418b1203498bbe6ced28ce.sol(588)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xcfe25c078abc12025e418b1203498bbe6ced28ce.sol(590)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |        address burner = msg.sender;
  > |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
    |        Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0xcfe25c078abc12025e418b1203498bbe6ced28ce.sol(610)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |        address burner = msg.sender;
    |        balances[burner] = balances[burner].sub(_value);
  > |        totalSupply = totalSupply.sub(_value);
    |        Burn(burner, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xcfe25c078abc12025e418b1203498bbe6ced28ce.sol(611)

[33mWarning[0m for DAOConstantGas in contract 'Crowdsale':
    |  // override to create custom fund forwarding mechanisms
    |  function forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xcfe25c078abc12025e418b1203498bbe6ced28ce.sol(182)

[33mWarning[0m for LockedEther in contract 'Crowdsale':
    |}
    |
  > |contract Crowdsale {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xcfe25c078abc12025e418b1203498bbe6ced28ce.sol(106)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |    weiRaised = weiRaised.add(weiAmount);
    |
  > |    token.mint(beneficiary, tokens);
    |    TokenPurchase(msg.sender, beneficiary, weiAmount, tokens);
    |
  at /home/jiaming/mavs_srcs/contract@0xcfe25c078abc12025e418b1203498bbe6ced28ce.sol(173)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |  // override to create custom fund forwarding mechanisms
    |  function forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xcfe25c078abc12025e418b1203498bbe6ced28ce.sol(182)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |    weiRaised = weiRaised.add(weiAmount);
    |
  > |    token.mint(beneficiary, tokens);
    |    TokenPurchase(msg.sender, beneficiary, weiAmount, tokens);
    |
  at /home/jiaming/mavs_srcs/contract@0xcfe25c078abc12025e418b1203498bbe6ced28ce.sol(173)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |  // override to create custom fund forwarding mechanisms
    |  function forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xcfe25c078abc12025e418b1203498bbe6ced28ce.sol(182)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |
    |    // update state
  > |    weiRaised = weiRaised.add(weiAmount);
    |
    |    token.mint(beneficiary, tokens);
  at /home/jiaming/mavs_srcs/contract@0xcfe25c078abc12025e418b1203498bbe6ced28ce.sol(171)

[33mWarning[0m for LockedEther in contract 'MintableToken':
    |}
    |
  > |contract MintableToken is StandardToken, Ownable {
    |  event Mint(address indexed to, uint256 amount);
    |  event MintFinished();
  at /home/jiaming/mavs_srcs/contract@0xcfe25c078abc12025e418b1203498bbe6ced28ce.sol(616)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xcfe25c078abc12025e418b1203498bbe6ced28ce.sol(502)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xcfe25c078abc12025e418b1203498bbe6ced28ce.sol(503)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    // require (_value <= _allowance);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xcfe25c078abc12025e418b1203498bbe6ced28ce.sol(538)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xcfe25c078abc12025e418b1203498bbe6ced28ce.sol(539)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xcfe25c078abc12025e418b1203498bbe6ced28ce.sol(540)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xcfe25c078abc12025e418b1203498bbe6ced28ce.sol(556)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function increaseApproval (address _spender, uint _addedValue)
    |    returns (bool success) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xcfe25c078abc12025e418b1203498bbe6ced28ce.sol(579)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xcfe25c078abc12025e418b1203498bbe6ced28ce.sol(588)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xcfe25c078abc12025e418b1203498bbe6ced28ce.sol(590)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
  > |    totalSupply = totalSupply.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xcfe25c078abc12025e418b1203498bbe6ced28ce.sol(635)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
    |    totalSupply = totalSupply.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
    |    Transfer(0x0, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xcfe25c078abc12025e418b1203498bbe6ced28ce.sol(636)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xcfe25c078abc12025e418b1203498bbe6ced28ce.sol(35)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function finishMinting() onlyOwner public returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xcfe25c078abc12025e418b1203498bbe6ced28ce.sol(647)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |pragma solidity ^0.4.13;
    |
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xcfe25c078abc12025e418b1203498bbe6ced28ce.sol(3)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xcfe25c078abc12025e418b1203498bbe6ced28ce.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xcfe25c078abc12025e418b1203498bbe6ced28ce.sol(32)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xcfe25c078abc12025e418b1203498bbe6ced28ce.sol(35)

[33mWarning[0m for LockedEther in contract 'Pausable':
    |}
    |
  > |contract Pausable is Ownable {
    |  event Pause();
    |  event Unpause();
  at /home/jiaming/mavs_srcs/contract@0xcfe25c078abc12025e418b1203498bbe6ced28ce.sol(40)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xcfe25c078abc12025e418b1203498bbe6ced28ce.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xcfe25c078abc12025e418b1203498bbe6ced28ce.sol(32)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  event Unpause();
    |
  > |  bool public paused = false;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xcfe25c078abc12025e418b1203498bbe6ced28ce.sol(44)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to pause, triggers stopped state
    |   */
  > |  function pause() onlyOwner whenNotPaused public {
    |    paused = true;
    |    Pause();
  at /home/jiaming/mavs_srcs/contract@0xcfe25c078abc12025e418b1203498bbe6ced28ce.sol(66)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to unpause, returns to normal state
    |   */
  > |  function unpause() onlyOwner whenPaused public {
    |    paused = false;
    |    Unpause();
  at /home/jiaming/mavs_srcs/contract@0xcfe25c078abc12025e418b1203498bbe6ced28ce.sol(74)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xcfe25c078abc12025e418b1203498bbe6ced28ce.sol(35)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xcfe25c078abc12025e418b1203498bbe6ced28ce.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xcfe25c078abc12025e418b1203498bbe6ced28ce.sol(75)

[33mWarning[0m for DAOConstantGas in contract 'RefundVault':
    |    state = State.Closed;
    |    Closed();
  > |    wallet.transfer(this.balance);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xcfe25c078abc12025e418b1203498bbe6ced28ce.sol(268)

[33mWarning[0m for DAOConstantGas in contract 'RefundVault':
    |    uint256 depositedValue = deposited[investor];
    |    deposited[investor] = 0;
  > |    investor.transfer(depositedValue);
    |    Refunded(investor, depositedValue);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xcfe25c078abc12025e418b1203498bbe6ced28ce.sol(281)

[33mWarning[0m for LockedEther in contract 'RefundVault':
    |}
    |
  > |contract RefundVault is Ownable {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xcfe25c078abc12025e418b1203498bbe6ced28ce.sol(240)

[31mViolation[0m for TODAmount in contract 'RefundVault':
    |    state = State.Closed;
    |    Closed();
  > |    wallet.transfer(this.balance);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xcfe25c078abc12025e418b1203498bbe6ced28ce.sol(268)

[31mViolation[0m for TODReceiver in contract 'RefundVault':
    |    state = State.Closed;
    |    Closed();
  > |    wallet.transfer(this.balance);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xcfe25c078abc12025e418b1203498bbe6ced28ce.sol(268)

[33mWarning[0m for TODReceiver in contract 'RefundVault':
    |    uint256 depositedValue = deposited[investor];
    |    deposited[investor] = 0;
  > |    investor.transfer(depositedValue);
    |    Refunded(investor, depositedValue);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xcfe25c078abc12025e418b1203498bbe6ced28ce.sol(281)

[33mWarning[0m for UnhandledException in contract 'RefundVault':
    |    state = State.Closed;
    |    Closed();
  > |    wallet.transfer(this.balance);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xcfe25c078abc12025e418b1203498bbe6ced28ce.sol(268)

[33mWarning[0m for UnhandledException in contract 'RefundVault':
    |    uint256 depositedValue = deposited[investor];
    |    deposited[investor] = 0;
  > |    investor.transfer(depositedValue);
    |    Refunded(investor, depositedValue);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xcfe25c078abc12025e418b1203498bbe6ced28ce.sol(281)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RefundVault':
    |    state = State.Closed;
    |    Closed();
  > |    wallet.transfer(this.balance);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xcfe25c078abc12025e418b1203498bbe6ced28ce.sol(268)

[31mViolation[0m for UnrestrictedWrite in contract 'RefundVault':
    |    require(state == State.Refunding);
    |    uint256 depositedValue = deposited[investor];
  > |    deposited[investor] = 0;
    |    investor.transfer(depositedValue);
    |    Refunded(investor, depositedValue);
  at /home/jiaming/mavs_srcs/contract@0xcfe25c078abc12025e418b1203498bbe6ced28ce.sol(280)

[33mWarning[0m for UnrestrictedWrite in contract 'RefundVault':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xcfe25c078abc12025e418b1203498bbe6ced28ce.sol(35)

[33mWarning[0m for UnrestrictedWrite in contract 'RefundVault':
    |  function deposit(address investor) onlyOwner public payable {
    |    require(state == State.Active);
  > |    deposited[investor] = deposited[investor].add(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xcfe25c078abc12025e418b1203498bbe6ced28ce.sol(261)

[33mWarning[0m for UnrestrictedWrite in contract 'RefundVault':
    |  function close() onlyOwner public {
    |    require(state == State.Active);
  > |    state = State.Closed;
    |    Closed();
    |    wallet.transfer(this.balance);
  at /home/jiaming/mavs_srcs/contract@0xcfe25c078abc12025e418b1203498bbe6ced28ce.sol(266)

[33mWarning[0m for UnrestrictedWrite in contract 'RefundVault':
    |  function enableRefunds() onlyOwner public {
    |    require(state == State.Active);
  > |    state = State.Refunding;
    |    RefundsEnabled();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xcfe25c078abc12025e418b1203498bbe6ced28ce.sol(273)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |}
    |
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xcfe25c078abc12025e418b1203498bbe6ced28ce.sol(80)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) allowed;
  at /home/jiaming/mavs_srcs/contract@0xcfe25c078abc12025e418b1203498bbe6ced28ce.sol(519)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xcfe25c078abc12025e418b1203498bbe6ced28ce.sol(502)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xcfe25c078abc12025e418b1203498bbe6ced28ce.sol(540)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xcfe25c078abc12025e418b1203498bbe6ced28ce.sol(556)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  function increaseApproval (address _spender, uint _addedValue)
    |    returns (bool success) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xcfe25c078abc12025e418b1203498bbe6ced28ce.sol(579)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xcfe25c078abc12025e418b1203498bbe6ced28ce.sol(588)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xcfe25c078abc12025e418b1203498bbe6ced28ce.sol(590)


