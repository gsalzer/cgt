Processing contract: /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol:BurnableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol:CappedCrowdsale
Processing contract: /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol:Crowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol:DisableSelfTransfer
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol:FinalizableCrowdsale
Processing contract: /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol:MensariiCoin
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol:MensariiCrowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol:MintableContractOwnerToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol:MintableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol:MintedCrowdsale
Processing contract: /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol:OwnerContract
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol:PausableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol:RefundVault
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol:RefundableCrowdsale
Processing contract: /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol:TimedCrowdsale
[33mWarning[0m for LockedEther in contract 'BasicToken':
    | * @dev Basic version of StandardToken, with no allowances.
    | */
  > |contract BasicToken is ERC20Basic {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(71)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(94)

[33mWarning[0m for LockedEther in contract 'BurnableToken':
    | * @dev Token that can be irreversibly burned (destroyed).
    | */
  > |contract BurnableToken is BasicToken {
    |
    |  event Burn(address indexed burner, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(340)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(94)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(95)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    // sender's balance is greater than the totalSupply, which *should* be an assertion failure
    |
  > |    balances[_who] = balances[_who].sub(_value);
    |    totalSupply_ = totalSupply_.sub(_value);
    |    emit Burn(_who, _value);
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(357)

[33mWarning[0m for DAOConstantGas in contract 'Crowdsale':
    |   */
    |  function _forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(734)

[33mWarning[0m for LockedEther in contract 'Crowdsale':
    | * behavior.
    | */
  > |contract Crowdsale {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(592)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |   */
    |  function _deliverTokens(address _beneficiary, uint256 _tokenAmount) internal {
  > |    token.transfer(_beneficiary, _tokenAmount);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(700)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |   */
    |  function _forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(734)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |   */
    |  function _deliverTokens(address _beneficiary, uint256 _tokenAmount) internal {
  > |    token.transfer(_beneficiary, _tokenAmount);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(700)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |   */
    |  function _forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(734)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |
    |    // update state
  > |    weiRaised = weiRaised.add(weiAmount);
    |
    |    _processPurchase(_beneficiary, tokens);
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(655)

[33mWarning[0m for LockedEther in contract 'DisableSelfTransfer':
    |// File: contracts/DisableSelfTransfer.sol
    |
  > |contract DisableSelfTransfer is StandardToken {
    |    
    |  function transfer(address _to, uint256 _value) public returns (bool) {
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(223)

[33mWarning[0m for UnrestrictedWrite in contract 'DisableSelfTransfer':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(94)

[33mWarning[0m for UnrestrictedWrite in contract 'DisableSelfTransfer':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(151)

[33mWarning[0m for UnrestrictedWrite in contract 'DisableSelfTransfer':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(167)

[33mWarning[0m for UnrestrictedWrite in contract 'DisableSelfTransfer':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(193)

[33mWarning[0m for UnrestrictedWrite in contract 'DisableSelfTransfer':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(211)

[33mWarning[0m for UnrestrictedWrite in contract 'DisableSelfTransfer':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(213)

[33mWarning[0m for LockedEther in contract 'MensariiCoin':
    |// File: contracts/MensariiCoin.sol
    |
  > |contract MensariiCoin is MintableContractOwnerToken {
    |  string public name = "Mensarii Coin";
    |  string public symbol = "MII";
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(568)

[33mWarning[0m for UnrestrictedWrite in contract 'MensariiCoin':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(94)

[33mWarning[0m for UnrestrictedWrite in contract 'MensariiCoin':
    |
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(95)

[33mWarning[0m for UnrestrictedWrite in contract 'MensariiCoin':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(149)

[33mWarning[0m for UnrestrictedWrite in contract 'MensariiCoin':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(150)

[33mWarning[0m for UnrestrictedWrite in contract 'MensariiCoin':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(151)

[33mWarning[0m for UnrestrictedWrite in contract 'MensariiCoin':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(167)

[33mWarning[0m for UnrestrictedWrite in contract 'MensariiCoin':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(193)

[33mWarning[0m for UnrestrictedWrite in contract 'MensariiCoin':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(211)

[33mWarning[0m for UnrestrictedWrite in contract 'MensariiCoin':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(213)

[33mWarning[0m for UnrestrictedWrite in contract 'MensariiCoin':
    |    // sender's balance is greater than the totalSupply, which *should* be an assertion failure
    |
  > |    balances[_who] = balances[_who].sub(_value);
    |    totalSupply_ = totalSupply_.sub(_value);
    |    emit Burn(_who, _value);
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(357)

[33mWarning[0m for UnrestrictedWrite in contract 'MensariiCoin':
    |
    |    balances[_who] = balances[_who].sub(_value);
  > |    totalSupply_ = totalSupply_.sub(_value);
    |    emit Burn(_who, _value);
    |    emit Transfer(_who, address(0), _value);
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(358)

[33mWarning[0m for UnrestrictedWrite in contract 'MensariiCoin':
    |   */
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
  > |    totalSupply_ = totalSupply_.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    emit Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(391)

[33mWarning[0m for UnrestrictedWrite in contract 'MensariiCoin':
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
    |    totalSupply_ = totalSupply_.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    emit Mint(_to, _amount);
    |    emit Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(392)

[33mWarning[0m for UnrestrictedWrite in contract 'MensariiCoin':
    |    require(_value <= balances[_from]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    ContractTransfer(_from, _to, _value); // Notify blockchain the following transaction was contract initiated
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(557)

[33mWarning[0m for UnrestrictedWrite in contract 'MensariiCoin':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    ContractTransfer(_from, _to, _value); // Notify blockchain the following transaction was contract initiated
    |    Transfer(_from, _to, _value); // Call original transfer event to maintain compatibility with stardard transaction systems
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(558)

[33mWarning[0m for UnrestrictedWrite in contract 'MensariiCoin':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(274)

[33mWarning[0m for UnrestrictedWrite in contract 'MensariiCoin':
    |  function removeController(address controllerToRemove) public justOwner {
    |    require(contracts[controllerToRemove]);
  > |    contracts[controllerToRemove] = false;
    |    emit ContractControllerRemoved(controllerToRemove);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(317)

[33mWarning[0m for UnrestrictedWrite in contract 'MensariiCoin':
    |  function addController(address newController) public justOwner {
    |    require(contracts[newController] != true);
  > |    contracts[newController] = true;
    |    emit ContractControllerAdded(newController);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(324)

[33mWarning[0m for UnrestrictedWrite in contract 'MensariiCoin':
    |   */
    |  function finishMinting() onlyOwner canMint public returns (bool) {
  > |    mintingFinished = true;
    |    emit MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(403)

[33mWarning[0m for UnrestrictedWrite in contract 'MensariiCoin':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(442)

[33mWarning[0m for UnrestrictedWrite in contract 'MensariiCoin':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(450)

[33mWarning[0m for UnrestrictedWrite in contract 'MensariiCoin':
    |  // Enable Burning Only if Burning is Off
    |  function enableBurning() public onlyContract cantBurn {
  > |    burnAllowed = true;
    |    BurningStateChange(burnAllowed);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(518)

[33mWarning[0m for UnrestrictedWrite in contract 'MensariiCoin':
    |  // Disable Burning Only if Burning is On
    |  function disableBurning() public onlyContract canBurn {
  > |    burnAllowed = false;
    |    BurningStateChange(burnAllowed);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(524)

[33mWarning[0m for UnrestrictedWrite in contract 'MensariiCoin':
    |  // (Voting will be essential in these actions)
    |  function restartMinting() onlyContract cantMint public returns (bool) {
  > |    mintingFinished = false;
    |    MintRestarted(); // Notify the blockchain that the coin minting was restarted
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(537)

[33mWarning[0m for DAO in contract 'MensariiCrowdsale':
    |   */
    |  function _forwardFunds() internal {
  > |    vault.deposit.value(msg.value)(msg.sender);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(956)

[33mWarning[0m for LockedEther in contract 'MensariiCrowdsale':
    |// File: contracts/MensariiCrowdsale.sol
    |
  > |contract MensariiCrowdsale is CappedCrowdsale, TimedCrowdsale, RefundableCrowdsale, MintedCrowdsale {
    |
    |  function MensariiCrowdsale(uint256 _startTime, uint256 _endTime, uint256 _rate, uint256 _goal, uint256 _cap, address _wallet, MintableToken _token) public
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(1022)

[33mWarning[0m for UnhandledException in contract 'MensariiCrowdsale':
    |    require(!goalReached());
    |
  > |    vault.refund(msg.sender);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(928)

[33mWarning[0m for UnhandledException in contract 'MensariiCrowdsale':
    |  function finalization() internal {
    |    if (goalReached()) {
  > |      vault.close();
    |    } else {
    |      vault.enableRefunds();
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(944)

[33mWarning[0m for UnhandledException in contract 'MensariiCrowdsale':
    |      vault.close();
    |    } else {
  > |      vault.enableRefunds();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(946)

[33mWarning[0m for UnhandledException in contract 'MensariiCrowdsale':
    |   */
    |  function _forwardFunds() internal {
  > |    vault.deposit.value(msg.value)(msg.sender);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(956)

[33mWarning[0m for UnhandledException in contract 'MensariiCrowdsale':
    |   */
    |  function _deliverTokens(address _beneficiary, uint256 _tokenAmount) internal {
  > |    require(MintableToken(token).mint(_beneficiary, _tokenAmount));
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(976)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MensariiCrowdsale':
    |    require(!goalReached());
    |
  > |    vault.refund(msg.sender);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(928)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MensariiCrowdsale':
    |  function finalization() internal {
    |    if (goalReached()) {
  > |      vault.close();
    |    } else {
    |      vault.enableRefunds();
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(944)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MensariiCrowdsale':
    |      vault.close();
    |    } else {
  > |      vault.enableRefunds();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(946)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MensariiCrowdsale':
    |   */
    |  function _forwardFunds() internal {
  > |    vault.deposit.value(msg.value)(msg.sender);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(956)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MensariiCrowdsale':
    |   */
    |  function _deliverTokens(address _beneficiary, uint256 _tokenAmount) internal {
  > |    require(MintableToken(token).mint(_beneficiary, _tokenAmount));
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(976)

[33mWarning[0m for UnrestrictedWrite in contract 'MensariiCrowdsale':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(274)

[33mWarning[0m for UnrestrictedWrite in contract 'MensariiCrowdsale':
    |
    |    // update state
  > |    weiRaised = weiRaised.add(weiAmount);
    |
    |    _processPurchase(_beneficiary, tokens);
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(655)

[33mWarning[0m for UnrestrictedWrite in contract 'MensariiCrowdsale':
    |    emit Finalized();
    |
  > |    isFinalized = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(818)

[33mWarning[0m for LockedEther in contract 'MintableContractOwnerToken':
    |// File: contracts/MintableContractOwnerToken.sol
    |
  > |contract MintableContractOwnerToken is PausableToken, MintableToken, BurnableToken, OwnerContract, DisableSelfTransfer {
    |
    |  bool burnAllowed = false;
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(486)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableContractOwnerToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(94)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableContractOwnerToken':
    |
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(95)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableContractOwnerToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(149)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableContractOwnerToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(150)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableContractOwnerToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(151)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableContractOwnerToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(167)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableContractOwnerToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(193)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableContractOwnerToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(211)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableContractOwnerToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(213)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableContractOwnerToken':
    |    // sender's balance is greater than the totalSupply, which *should* be an assertion failure
    |
  > |    balances[_who] = balances[_who].sub(_value);
    |    totalSupply_ = totalSupply_.sub(_value);
    |    emit Burn(_who, _value);
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(357)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableContractOwnerToken':
    |
    |    balances[_who] = balances[_who].sub(_value);
  > |    totalSupply_ = totalSupply_.sub(_value);
    |    emit Burn(_who, _value);
    |    emit Transfer(_who, address(0), _value);
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(358)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableContractOwnerToken':
    |   */
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
  > |    totalSupply_ = totalSupply_.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    emit Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(391)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableContractOwnerToken':
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
    |    totalSupply_ = totalSupply_.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    emit Mint(_to, _amount);
    |    emit Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(392)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableContractOwnerToken':
    |    require(_value <= balances[_from]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    ContractTransfer(_from, _to, _value); // Notify blockchain the following transaction was contract initiated
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(557)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableContractOwnerToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    ContractTransfer(_from, _to, _value); // Notify blockchain the following transaction was contract initiated
    |    Transfer(_from, _to, _value); // Call original transfer event to maintain compatibility with stardard transaction systems
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(558)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableContractOwnerToken':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(274)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableContractOwnerToken':
    |  function removeController(address controllerToRemove) public justOwner {
    |    require(contracts[controllerToRemove]);
  > |    contracts[controllerToRemove] = false;
    |    emit ContractControllerRemoved(controllerToRemove);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(317)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableContractOwnerToken':
    |  function addController(address newController) public justOwner {
    |    require(contracts[newController] != true);
  > |    contracts[newController] = true;
    |    emit ContractControllerAdded(newController);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(324)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableContractOwnerToken':
    |   */
    |  function finishMinting() onlyOwner canMint public returns (bool) {
  > |    mintingFinished = true;
    |    emit MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(403)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableContractOwnerToken':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(442)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableContractOwnerToken':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(450)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableContractOwnerToken':
    |  // Enable Burning Only if Burning is Off
    |  function enableBurning() public onlyContract cantBurn {
  > |    burnAllowed = true;
    |    BurningStateChange(burnAllowed);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(518)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableContractOwnerToken':
    |  // Disable Burning Only if Burning is On
    |  function disableBurning() public onlyContract canBurn {
  > |    burnAllowed = false;
    |    BurningStateChange(burnAllowed);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(524)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableContractOwnerToken':
    |  // (Voting will be essential in these actions)
    |  function restartMinting() onlyContract cantMint public returns (bool) {
  > |    mintingFinished = false;
    |    MintRestarted(); // Notify the blockchain that the coin minting was restarted
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(537)

[33mWarning[0m for LockedEther in contract 'MintableToken':
    | * Based on code by TokenMarketNet: https://github.com/TokenMarketNet/ico/blob/master/contracts/MintableToken.sol
    | */
  > |contract MintableToken is StandardToken, Ownable {
    |  event Mint(address indexed to, uint256 amount);
    |  event MintFinished();
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(372)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(94)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(95)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(149)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(150)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(151)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(167)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(193)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(211)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(213)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
  > |    totalSupply_ = totalSupply_.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    emit Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(391)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
    |    totalSupply_ = totalSupply_.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    emit Mint(_to, _amount);
    |    emit Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(392)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(274)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function finishMinting() onlyOwner canMint public returns (bool) {
  > |    mintingFinished = true;
    |    emit MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(403)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(244)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(245)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(271)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(274)

[33mWarning[0m for LockedEther in contract 'OwnerContract':
    |// File: contracts/OwnerContract.sol
    |
  > |contract OwnerContract is Ownable {
    |
    |  event ContractControllerAdded(address contractAddress);
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(281)

[31mViolation[0m for MissingInputValidation in contract 'OwnerContract':
    |  // new owner only activity. 
    |  // (Voting to be implemented for owner replacement)
  > |  function removeController(address controllerToRemove) public justOwner {
    |    require(contracts[controllerToRemove]);
    |    contracts[controllerToRemove] = false;
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(315)

[31mViolation[0m for MissingInputValidation in contract 'OwnerContract':
    |  // new owner only activity.
    |  // (Voting to be implemented for owner replacement)
  > |  function addController(address newController) public justOwner {
    |    require(contracts[newController] != true);
    |    contracts[newController] = true;
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(322)

[31mViolation[0m for MissingInputValidation in contract 'OwnerContract':
    |  }
    |
  > |  function isController(address _address) public view returns(bool) {
    |    return contracts[_address];
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(328)

[33mWarning[0m for MissingInputValidation in contract 'OwnerContract':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(245)

[33mWarning[0m for MissingInputValidation in contract 'OwnerContract':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(271)

[33mWarning[0m for UnrestrictedWrite in contract 'OwnerContract':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(274)

[33mWarning[0m for UnrestrictedWrite in contract 'OwnerContract':
    |  function removeController(address controllerToRemove) public justOwner {
    |    require(contracts[controllerToRemove]);
  > |    contracts[controllerToRemove] = false;
    |    emit ContractControllerRemoved(controllerToRemove);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(317)

[33mWarning[0m for UnrestrictedWrite in contract 'OwnerContract':
    |  function addController(address newController) public justOwner {
    |    require(contracts[newController] != true);
  > |    contracts[newController] = true;
    |    emit ContractControllerAdded(newController);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(324)

[33mWarning[0m for LockedEther in contract 'Pausable':
    | * @dev Base contract which allows children to implement an emergency stop mechanism.
    | */
  > |contract Pausable is Ownable {
    |  event Pause();
    |  event Unpause();
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(415)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(245)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(271)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  event Unpause();
    |
  > |  bool public paused = false;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(419)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to pause, triggers stopped state
    |   */
  > |  function pause() onlyOwner whenNotPaused public {
    |    paused = true;
    |    emit Pause();
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(441)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to unpause, returns to normal state
    |   */
  > |  function unpause() onlyOwner whenPaused public {
    |    paused = false;
    |    emit Unpause();
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(449)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(274)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(442)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(450)

[33mWarning[0m for LockedEther in contract 'PausableToken':
    | * @dev StandardToken modified with pausable transfers.
    | **/
  > |contract PausableToken is StandardToken, Pausable {
    |
    |  function transfer(address _to, uint256 _value) public whenNotPaused returns (bool) {
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(461)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(94)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(151)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(167)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(193)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(211)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(213)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(274)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(442)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(450)

[33mWarning[0m for DAOConstantGas in contract 'RefundVault':
    |    state = State.Closed;
    |    emit Closed();
  > |    wallet.transfer(address(this).balance);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(873)

[33mWarning[0m for DAOConstantGas in contract 'RefundVault':
    |    uint256 depositedValue = deposited[investor];
    |    deposited[investor] = 0;
  > |    investor.transfer(depositedValue);
    |    emit Refunded(investor, depositedValue);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(889)

[33mWarning[0m for LockedEther in contract 'RefundVault':
    | * and forwarding it if crowdsale is successful.
    | */
  > |contract RefundVault is Ownable {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(839)

[31mViolation[0m for TODAmount in contract 'RefundVault':
    |    state = State.Closed;
    |    emit Closed();
  > |    wallet.transfer(address(this).balance);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(873)

[31mViolation[0m for TODReceiver in contract 'RefundVault':
    |    state = State.Closed;
    |    emit Closed();
  > |    wallet.transfer(address(this).balance);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(873)

[33mWarning[0m for TODReceiver in contract 'RefundVault':
    |    uint256 depositedValue = deposited[investor];
    |    deposited[investor] = 0;
  > |    investor.transfer(depositedValue);
    |    emit Refunded(investor, depositedValue);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(889)

[33mWarning[0m for UnhandledException in contract 'RefundVault':
    |    state = State.Closed;
    |    emit Closed();
  > |    wallet.transfer(address(this).balance);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(873)

[33mWarning[0m for UnhandledException in contract 'RefundVault':
    |    uint256 depositedValue = deposited[investor];
    |    deposited[investor] = 0;
  > |    investor.transfer(depositedValue);
    |    emit Refunded(investor, depositedValue);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(889)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RefundVault':
    |    state = State.Closed;
    |    emit Closed();
  > |    wallet.transfer(address(this).balance);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(873)

[31mViolation[0m for UnrestrictedWrite in contract 'RefundVault':
    |    require(state == State.Refunding);
    |    uint256 depositedValue = deposited[investor];
  > |    deposited[investor] = 0;
    |    investor.transfer(depositedValue);
    |    emit Refunded(investor, depositedValue);
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(888)

[33mWarning[0m for UnrestrictedWrite in contract 'RefundVault':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(274)

[33mWarning[0m for UnrestrictedWrite in contract 'RefundVault':
    |  function deposit(address investor) onlyOwner public payable {
    |    require(state == State.Active);
  > |    deposited[investor] = deposited[investor].add(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(866)

[33mWarning[0m for UnrestrictedWrite in contract 'RefundVault':
    |  function close() onlyOwner public {
    |    require(state == State.Active);
  > |    state = State.Closed;
    |    emit Closed();
    |    wallet.transfer(address(this).balance);
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(871)

[33mWarning[0m for UnrestrictedWrite in contract 'RefundVault':
    |  function enableRefunds() onlyOwner public {
    |    require(state == State.Active);
  > |    state = State.Refunding;
    |    emit RefundsEnabled();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(878)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(9)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(133)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(94)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(151)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(167)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(193)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(211)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xc36570ca84c6585e36c4aacfe6385a885f35ebb6.sol(213)


