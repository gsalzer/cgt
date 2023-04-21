Processing contract: /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol:BurnableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol:Crowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol:DetailedERC20
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol:FinalizableCrowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol:MintableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol:MonsterBitToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol:MonsterTokenCrowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol:PausableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol:TimedCrowdsale
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
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(145)

[33mWarning[0m for LockedEther in contract 'BurnableToken':
    | * @dev Token that can be irreversibly burned (destroyed).
    | */
  > |contract BurnableToken is StandardToken {
    |
    |  event Burn(address indexed burner, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(266)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(145)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(190)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(206)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(232)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(250)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(252)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |    address burner = msg.sender;
  > |    balances[burner] = balances[burner].sub(_value);
    |    totalSupply_ = totalSupply_.sub(_value);
    |    Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(280)

[33mWarning[0m for DAOConstantGas in contract 'Crowdsale':
    |   */
    |  function _forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(600)

[33mWarning[0m for LockedEther in contract 'Crowdsale':
    | * behavior.
    | */
  > |contract Crowdsale {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(461)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |   */
    |  function _deliverTokens(address _beneficiary, uint256 _tokenAmount) internal {
  > |    token.transfer(_beneficiary, _tokenAmount);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(566)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |   */
    |  function _forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(600)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |   */
    |  function _deliverTokens(address _beneficiary, uint256 _tokenAmount) internal {
  > |    token.transfer(_beneficiary, _tokenAmount);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(566)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |   */
    |  function _forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(600)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |
    |    // update state
  > |    weiRaised = weiRaised.add(weiAmount);
    |
    |    _processPurchase(_beneficiary, tokens);
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(526)

[33mWarning[0m for LockedEther in contract 'DetailedERC20':
    |
    |
  > |contract DetailedERC20 {
    |  string public name;
    |  string public symbol;
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(427)

[33mWarning[0m for MissingInputValidation in contract 'DetailedERC20':
    |
    |contract DetailedERC20 {
  > |  string public name;
    |  string public symbol;
    |  uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(428)

[33mWarning[0m for MissingInputValidation in contract 'DetailedERC20':
    |contract DetailedERC20 {
    |  string public name;
  > |  string public symbol;
    |  uint8 public decimals;
    |
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(429)

[33mWarning[0m for MissingInputValidation in contract 'DetailedERC20':
    |  string public name;
    |  string public symbol;
  > |  uint8 public decimals;
    |
    |  function DetailedERC20(string _name, string _symbol, uint8 _decimals) public {
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(430)

[33mWarning[0m for DAOConstantGas in contract 'FinalizableCrowdsale':
    |   */
    |  function _forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(600)

[33mWarning[0m for LockedEther in contract 'FinalizableCrowdsale':
    | * after finishing.
    | */
  > |contract FinalizableCrowdsale is TimedCrowdsale, Ownable {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(665)

[33mWarning[0m for UnhandledException in contract 'FinalizableCrowdsale':
    |   */
    |  function _deliverTokens(address _beneficiary, uint256 _tokenAmount) internal {
  > |    token.transfer(_beneficiary, _tokenAmount);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(566)

[33mWarning[0m for UnhandledException in contract 'FinalizableCrowdsale':
    |   */
    |  function _forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(600)

[33mWarning[0m for UnhandledException in contract 'FinalizableCrowdsale':
    |   */
    |  function finalization() internal {
  > |      token.burn(tokenBalance());
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(697)

[33mWarning[0m for UnhandledException in contract 'FinalizableCrowdsale':
    |  
    |  function tokenBalance() public view returns (uint256) {
  > |      return token.balanceOf(this);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(701)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FinalizableCrowdsale':
    |   */
    |  function _deliverTokens(address _beneficiary, uint256 _tokenAmount) internal {
  > |    token.transfer(_beneficiary, _tokenAmount);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(566)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FinalizableCrowdsale':
    |   */
    |  function _forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(600)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FinalizableCrowdsale':
    |   */
    |  function finalization() internal {
  > |      token.burn(tokenBalance());
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(697)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FinalizableCrowdsale':
    |  
    |  function tokenBalance() public view returns (uint256) {
  > |      return token.balanceOf(this);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(701)

[33mWarning[0m for UnrestrictedWrite in contract 'FinalizableCrowdsale':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(88)

[33mWarning[0m for UnrestrictedWrite in contract 'FinalizableCrowdsale':
    |
    |    // update state
  > |    weiRaised = weiRaised.add(weiAmount);
    |
    |    _processPurchase(_beneficiary, tokens);
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(526)

[33mWarning[0m for UnrestrictedWrite in contract 'FinalizableCrowdsale':
    |    Finalized();
    |
  > |    isFinalized = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(688)

[33mWarning[0m for LockedEther in contract 'MintableToken':
    | * Based on code by TokenMarketNet: https://github.com/TokenMarketNet/ico/blob/master/contracts/MintableToken.sol
    | */
  > |contract MintableToken is PausableToken {
    |  event Mint(address indexed to, uint256 amount);
    |  event MintFinished();
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(388)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(145)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(146)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(188)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(189)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(190)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(206)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(232)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(250)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(252)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    address burner = msg.sender;
  > |    balances[burner] = balances[burner].sub(_value);
    |    totalSupply_ = totalSupply_.sub(_value);
    |    Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(280)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    address burner = msg.sender;
    |    balances[burner] = balances[burner].sub(_value);
  > |    totalSupply_ = totalSupply_.sub(_value);
    |    Burn(burner, _value);
    |    Transfer(burner, address(0), _value);
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(281)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
  > |    totalSupply_ = totalSupply_.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(407)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
    |    totalSupply_ = totalSupply_.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
    |    Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(408)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(88)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(324)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(332)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function setIcoContract(address _icoContract) public onlyOwner {
    |    require(_icoContract != address(0));
  > |    icoContract = _icoContract;
    |  }
    |  function removeIcoContract() public onlyOwner {
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(349)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  }
    |  function removeIcoContract() public onlyOwner {
  > |    icoContract = address(0);
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(352)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function finishMinting() onlyOwner canMint public returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(419)

[33mWarning[0m for LockedEther in contract 'MonsterBitToken':
    |
    |
  > |contract MonsterBitToken is MintableToken, DetailedERC20 {
    |    
    |  function MonsterBitToken() public DetailedERC20("MonsterBit", "MB", 18) {
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(441)

[33mWarning[0m for UnrestrictedWrite in contract 'MonsterBitToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(145)

[33mWarning[0m for UnrestrictedWrite in contract 'MonsterBitToken':
    |
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(146)

[33mWarning[0m for UnrestrictedWrite in contract 'MonsterBitToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(188)

[33mWarning[0m for UnrestrictedWrite in contract 'MonsterBitToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(189)

[33mWarning[0m for UnrestrictedWrite in contract 'MonsterBitToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(190)

[33mWarning[0m for UnrestrictedWrite in contract 'MonsterBitToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(206)

[33mWarning[0m for UnrestrictedWrite in contract 'MonsterBitToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(232)

[33mWarning[0m for UnrestrictedWrite in contract 'MonsterBitToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(250)

[33mWarning[0m for UnrestrictedWrite in contract 'MonsterBitToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(252)

[33mWarning[0m for UnrestrictedWrite in contract 'MonsterBitToken':
    |
    |    address burner = msg.sender;
  > |    balances[burner] = balances[burner].sub(_value);
    |    totalSupply_ = totalSupply_.sub(_value);
    |    Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(280)

[33mWarning[0m for UnrestrictedWrite in contract 'MonsterBitToken':
    |    address burner = msg.sender;
    |    balances[burner] = balances[burner].sub(_value);
  > |    totalSupply_ = totalSupply_.sub(_value);
    |    Burn(burner, _value);
    |    Transfer(burner, address(0), _value);
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(281)

[33mWarning[0m for UnrestrictedWrite in contract 'MonsterBitToken':
    |   */
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
  > |    totalSupply_ = totalSupply_.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(407)

[33mWarning[0m for UnrestrictedWrite in contract 'MonsterBitToken':
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
    |    totalSupply_ = totalSupply_.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
    |    Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(408)

[33mWarning[0m for UnrestrictedWrite in contract 'MonsterBitToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(88)

[33mWarning[0m for UnrestrictedWrite in contract 'MonsterBitToken':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(324)

[33mWarning[0m for UnrestrictedWrite in contract 'MonsterBitToken':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(332)

[33mWarning[0m for UnrestrictedWrite in contract 'MonsterBitToken':
    |  function setIcoContract(address _icoContract) public onlyOwner {
    |    require(_icoContract != address(0));
  > |    icoContract = _icoContract;
    |  }
    |  function removeIcoContract() public onlyOwner {
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(349)

[33mWarning[0m for UnrestrictedWrite in contract 'MonsterBitToken':
    |  }
    |  function removeIcoContract() public onlyOwner {
  > |    icoContract = address(0);
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(352)

[33mWarning[0m for UnrestrictedWrite in contract 'MonsterBitToken':
    |   */
    |  function finishMinting() onlyOwner canMint public returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(419)

[33mWarning[0m for DAOConstantGas in contract 'MonsterTokenCrowdsale':
    |   */
    |  function _forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(600)

[33mWarning[0m for LockedEther in contract 'MonsterTokenCrowdsale':
    |
    |
  > |contract MonsterTokenCrowdsale is FinalizableCrowdsale {
    |    
    |  function MonsterTokenCrowdsale(uint256 _rate, address _wallet, address _token, uint256 _openingTime, uint256 _closingTime) public
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(706)

[33mWarning[0m for UnhandledException in contract 'MonsterTokenCrowdsale':
    |   */
    |  function _deliverTokens(address _beneficiary, uint256 _tokenAmount) internal {
  > |    token.transfer(_beneficiary, _tokenAmount);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(566)

[33mWarning[0m for UnhandledException in contract 'MonsterTokenCrowdsale':
    |   */
    |  function _forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(600)

[33mWarning[0m for UnhandledException in contract 'MonsterTokenCrowdsale':
    |   */
    |  function finalization() internal {
  > |      token.burn(tokenBalance());
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(697)

[33mWarning[0m for UnhandledException in contract 'MonsterTokenCrowdsale':
    |  
    |  function tokenBalance() public view returns (uint256) {
  > |      return token.balanceOf(this);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(701)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MonsterTokenCrowdsale':
    |   */
    |  function _deliverTokens(address _beneficiary, uint256 _tokenAmount) internal {
  > |    token.transfer(_beneficiary, _tokenAmount);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(566)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MonsterTokenCrowdsale':
    |   */
    |  function _forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(600)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MonsterTokenCrowdsale':
    |   */
    |  function finalization() internal {
  > |      token.burn(tokenBalance());
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(697)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MonsterTokenCrowdsale':
    |  
    |  function tokenBalance() public view returns (uint256) {
  > |      return token.balanceOf(this);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(701)

[33mWarning[0m for UnrestrictedWrite in contract 'MonsterTokenCrowdsale':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(88)

[33mWarning[0m for UnrestrictedWrite in contract 'MonsterTokenCrowdsale':
    |
    |    // update state
  > |    weiRaised = weiRaised.add(weiAmount);
    |
    |    _processPurchase(_beneficiary, tokens);
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(526)

[33mWarning[0m for UnrestrictedWrite in contract 'MonsterTokenCrowdsale':
    |    Finalized();
    |
  > |    isFinalized = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(688)

[33mWarning[0m for UnrestrictedWrite in contract 'MonsterTokenCrowdsale':
    |  
    |  function setRate(uint256 newRate) public onlyOwner {
  > |      rate = newRate;
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(713)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(59)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(60)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(85)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(88)

[33mWarning[0m for LockedEther in contract 'Pausable':
    | * @dev Base contract which allows children to implement an emergency stop mechanism.
    | */
  > |contract Pausable is Ownable {
    |  
    |  event Pause();
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(295)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(60)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(85)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  event Unpause();
    |
  > |  bool public paused = false;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(300)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to pause, triggers stopped state
    |   */
  > |  function pause() onlyOwner whenNotPaused public {
    |    paused = true;
    |    Pause();
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(323)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to unpause, returns to normal state
    |   */
  > |  function unpause() onlyOwner whenPaused public {
    |    paused = false;
    |    Unpause();
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(331)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(88)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(324)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(332)

[33mWarning[0m for LockedEther in contract 'PausableToken':
    | * @dev StandardToken modified with pausable transfers.
    | **/
  > |contract PausableToken is BurnableToken, Pausable {
    |    
    |  address public icoContract;
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(343)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(145)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(146)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(188)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(189)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(190)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(206)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(232)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(250)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(252)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |
    |    address burner = msg.sender;
  > |    balances[burner] = balances[burner].sub(_value);
    |    totalSupply_ = totalSupply_.sub(_value);
    |    Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(280)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    address burner = msg.sender;
    |    balances[burner] = balances[burner].sub(_value);
  > |    totalSupply_ = totalSupply_.sub(_value);
    |    Burn(burner, _value);
    |    Transfer(burner, address(0), _value);
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(281)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(88)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(324)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(332)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |  function setIcoContract(address _icoContract) public onlyOwner {
    |    require(_icoContract != address(0));
  > |    icoContract = _icoContract;
    |  }
    |  function removeIcoContract() public onlyOwner {
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(349)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |  }
    |  function removeIcoContract() public onlyOwner {
  > |    icoContract = address(0);
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(352)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(10)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(172)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(145)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(190)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(206)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(232)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(250)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(252)

[33mWarning[0m for DAOConstantGas in contract 'TimedCrowdsale':
    |   */
    |  function _forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(600)

[33mWarning[0m for LockedEther in contract 'TimedCrowdsale':
    | * @dev Crowdsale accepting contributions only within a time frame.
    | */
  > |contract TimedCrowdsale is Crowdsale {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(610)

[33mWarning[0m for UnhandledException in contract 'TimedCrowdsale':
    |   */
    |  function _deliverTokens(address _beneficiary, uint256 _tokenAmount) internal {
  > |    token.transfer(_beneficiary, _tokenAmount);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(566)

[33mWarning[0m for UnhandledException in contract 'TimedCrowdsale':
    |   */
    |  function _forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(600)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TimedCrowdsale':
    |   */
    |  function _deliverTokens(address _beneficiary, uint256 _tokenAmount) internal {
  > |    token.transfer(_beneficiary, _tokenAmount);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(566)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TimedCrowdsale':
    |   */
    |  function _forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(600)

[33mWarning[0m for UnrestrictedWrite in contract 'TimedCrowdsale':
    |
    |    // update state
  > |    weiRaised = weiRaised.add(weiAmount);
    |
    |    _processPurchase(_beneficiary, tokens);
  at /home/jiaming/mavs_srcs/contract@0xc08e742b32338344a54329ad25c3d702769abd6d.sol(526)


