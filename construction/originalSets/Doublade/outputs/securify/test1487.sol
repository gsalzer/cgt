Processing contract: /home/jiaming/mavs_srcs/contract@0x5eb87caa0105a63aa87a36c7bd2573bd13e84fae.sol:BQT
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5eb87caa0105a63aa87a36c7bd2573bd13e84fae.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x5eb87caa0105a63aa87a36c7bd2573bd13e84fae.sol:ERC20Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5eb87caa0105a63aa87a36c7bd2573bd13e84fae.sol:ERC827
Processing contract: /home/jiaming/mavs_srcs/contract@0x5eb87caa0105a63aa87a36c7bd2573bd13e84fae.sol:ERC827Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5eb87caa0105a63aa87a36c7bd2573bd13e84fae.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5eb87caa0105a63aa87a36c7bd2573bd13e84fae.sol:PauseBurnableERC827Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5eb87caa0105a63aa87a36c7bd2573bd13e84fae.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAO in contract 'BQT':
    |
    |    // solium-disable-next-line security/no-call-value
  > |    require(_spender.call.value(msg.value)(_data));
    |
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x5eb87caa0105a63aa87a36c7bd2573bd13e84fae.sol(358)

[33mWarning[0m for DAO in contract 'BQT':
    |    super.transfer(_to, _value);
    |
  > |    require(_to.call.value(msg.value)(_data));
    |    return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x5eb87caa0105a63aa87a36c7bd2573bd13e84fae.sol(386)

[33mWarning[0m for DAO in contract 'BQT':
    |    super.transferFrom(_from, _to, _value);
    |
  > |    require(_to.call.value(msg.value)(_data));
    |    return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x5eb87caa0105a63aa87a36c7bd2573bd13e84fae.sol(413)

[33mWarning[0m for DAO in contract 'BQT':
    |    super.increaseApproval(_spender, _addedValue);
    |
  > |    require(_spender.call.value(msg.value)(_data));
    |
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x5eb87caa0105a63aa87a36c7bd2573bd13e84fae.sol(443)

[33mWarning[0m for DAO in contract 'BQT':
    |    super.decreaseApproval(_spender, _subtractedValue);
    |
  > |    require(_spender.call.value(msg.value)(_data));
    |
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x5eb87caa0105a63aa87a36c7bd2573bd13e84fae.sol(474)

[33mWarning[0m for LockedEther in contract 'BQT':
    | * @dev Uses OpenZeppelin Lib.
    | */
  > |contract BQT is PauseBurnableERC827Token {  
    |        string  public constant name     = "BQT";
    |        string  public constant symbol   = "BQT"; 
  at /home/jiaming/mavs_srcs/contract@0x5eb87caa0105a63aa87a36c7bd2573bd13e84fae.sol(639)

[33mWarning[0m for UnhandledException in contract 'BQT':
    |
    |    // solium-disable-next-line security/no-call-value
  > |    require(_spender.call.value(msg.value)(_data));
    |
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x5eb87caa0105a63aa87a36c7bd2573bd13e84fae.sol(358)

[33mWarning[0m for UnhandledException in contract 'BQT':
    |    super.transfer(_to, _value);
    |
  > |    require(_to.call.value(msg.value)(_data));
    |    return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x5eb87caa0105a63aa87a36c7bd2573bd13e84fae.sol(386)

[33mWarning[0m for UnhandledException in contract 'BQT':
    |    super.transferFrom(_from, _to, _value);
    |
  > |    require(_to.call.value(msg.value)(_data));
    |    return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x5eb87caa0105a63aa87a36c7bd2573bd13e84fae.sol(413)

[33mWarning[0m for UnhandledException in contract 'BQT':
    |    super.increaseApproval(_spender, _addedValue);
    |
  > |    require(_spender.call.value(msg.value)(_data));
    |
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x5eb87caa0105a63aa87a36c7bd2573bd13e84fae.sol(443)

[33mWarning[0m for UnhandledException in contract 'BQT':
    |    super.decreaseApproval(_spender, _subtractedValue);
    |
  > |    require(_spender.call.value(msg.value)(_data));
    |
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x5eb87caa0105a63aa87a36c7bd2573bd13e84fae.sol(474)

[33mWarning[0m for UnrestrictedWrite in contract 'BQT':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x5eb87caa0105a63aa87a36c7bd2573bd13e84fae.sol(195)

[33mWarning[0m for UnrestrictedWrite in contract 'BQT':
    |
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x5eb87caa0105a63aa87a36c7bd2573bd13e84fae.sol(196)

[33mWarning[0m for UnrestrictedWrite in contract 'BQT':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x5eb87caa0105a63aa87a36c7bd2573bd13e84fae.sol(229)

[33mWarning[0m for UnrestrictedWrite in contract 'BQT':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x5eb87caa0105a63aa87a36c7bd2573bd13e84fae.sol(230)

[33mWarning[0m for UnrestrictedWrite in contract 'BQT':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x5eb87caa0105a63aa87a36c7bd2573bd13e84fae.sol(231)

[33mWarning[0m for UnrestrictedWrite in contract 'BQT':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x5eb87caa0105a63aa87a36c7bd2573bd13e84fae.sol(240)

[33mWarning[0m for UnrestrictedWrite in contract 'BQT':
    |    returns (bool)
    |  {
  > |    allowed[msg.sender][_spender] = (
    |      allowed[msg.sender][_spender].add(_addedValue));
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x5eb87caa0105a63aa87a36c7bd2573bd13e84fae.sol(279)

[33mWarning[0m for UnrestrictedWrite in contract 'BQT':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x5eb87caa0105a63aa87a36c7bd2573bd13e84fae.sol(304)

[33mWarning[0m for UnrestrictedWrite in contract 'BQT':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x5eb87caa0105a63aa87a36c7bd2573bd13e84fae.sol(306)

[33mWarning[0m for UnrestrictedWrite in contract 'BQT':
    |      // sender's balance is greater than the totalSupply, which *should* be an assertion failure
    |
  > |      balances[_who] = balances[_who].sub(_value);                      // Subtract from the sender
    |      totalSupply_ = totalSupply_.sub(_value);     
    |      
  at /home/jiaming/mavs_srcs/contract@0x5eb87caa0105a63aa87a36c7bd2573bd13e84fae.sol(612)

[33mWarning[0m for UnrestrictedWrite in contract 'BQT':
    |
    |      balances[_who] = balances[_who].sub(_value);                      // Subtract from the sender
  > |      totalSupply_ = totalSupply_.sub(_value);     
    |      
    |      emit Burn(_who, _value);
  at /home/jiaming/mavs_srcs/contract@0x5eb87caa0105a63aa87a36c7bd2573bd13e84fae.sol(613)

[33mWarning[0m for UnrestrictedWrite in contract 'BQT':
    |  {
    |      require(_value <= allowed[_from][msg.sender]);
  > |      allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |      _burn(_from, _value);
    |  }  
  at /home/jiaming/mavs_srcs/contract@0x5eb87caa0105a63aa87a36c7bd2573bd13e84fae.sol(628)

[33mWarning[0m for UnrestrictedWrite in contract 'BQT':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x5eb87caa0105a63aa87a36c7bd2573bd13e84fae.sol(76)

[33mWarning[0m for UnrestrictedWrite in contract 'BQT':
    |    require(newPauseOperator != address(0));
    |    emit PauseOperatorTransferred(pauseOperator, newPauseOperator);
  > |    pauseOperator = newPauseOperator;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x5eb87caa0105a63aa87a36c7bd2573bd13e84fae.sol(538)

[33mWarning[0m for UnrestrictedWrite in contract 'BQT':
    |   */
    |  function pause() onlyPauseOperator whenNotPaused public {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x5eb87caa0105a63aa87a36c7bd2573bd13e84fae.sol(545)

[33mWarning[0m for UnrestrictedWrite in contract 'BQT':
    |   */
    |  function unpause() onlyPauseOperator whenPaused public {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x5eb87caa0105a63aa87a36c7bd2573bd13e84fae.sol(553)

[33mWarning[0m for LockedEther in contract 'ERC20Token':
    | *
    | */
  > |contract ERC20Token is ERC20{
    |
    |  using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0x5eb87caa0105a63aa87a36c7bd2573bd13e84fae.sol(169)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x5eb87caa0105a63aa87a36c7bd2573bd13e84fae.sol(195)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x5eb87caa0105a63aa87a36c7bd2573bd13e84fae.sol(231)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x5eb87caa0105a63aa87a36c7bd2573bd13e84fae.sol(240)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |    returns (bool)
    |  {
  > |    allowed[msg.sender][_spender] = (
    |      allowed[msg.sender][_spender].add(_addedValue));
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x5eb87caa0105a63aa87a36c7bd2573bd13e84fae.sol(279)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x5eb87caa0105a63aa87a36c7bd2573bd13e84fae.sol(304)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x5eb87caa0105a63aa87a36c7bd2573bd13e84fae.sol(306)

[33mWarning[0m for DAO in contract 'ERC827Token':
    |
    |    // solium-disable-next-line security/no-call-value
  > |    require(_spender.call.value(msg.value)(_data));
    |
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x5eb87caa0105a63aa87a36c7bd2573bd13e84fae.sol(358)

[33mWarning[0m for DAO in contract 'ERC827Token':
    |    super.transfer(_to, _value);
    |
  > |    require(_to.call.value(msg.value)(_data));
    |    return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x5eb87caa0105a63aa87a36c7bd2573bd13e84fae.sol(386)

[33mWarning[0m for DAO in contract 'ERC827Token':
    |    super.transferFrom(_from, _to, _value);
    |
  > |    require(_to.call.value(msg.value)(_data));
    |    return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x5eb87caa0105a63aa87a36c7bd2573bd13e84fae.sol(413)

[33mWarning[0m for DAO in contract 'ERC827Token':
    |    super.increaseApproval(_spender, _addedValue);
    |
  > |    require(_spender.call.value(msg.value)(_data));
    |
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x5eb87caa0105a63aa87a36c7bd2573bd13e84fae.sol(443)

[33mWarning[0m for DAO in contract 'ERC827Token':
    |    super.decreaseApproval(_spender, _subtractedValue);
    |
  > |    require(_spender.call.value(msg.value)(_data));
    |
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x5eb87caa0105a63aa87a36c7bd2573bd13e84fae.sol(474)

[33mWarning[0m for LockedEther in contract 'ERC827Token':
    | * @dev Uses OpenZeppelin StandardToken.
    | */
  > |contract ERC827Token is ERC827, ERC20Token {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x5eb87caa0105a63aa87a36c7bd2573bd13e84fae.sol(325)

[33mWarning[0m for UnhandledException in contract 'ERC827Token':
    |
    |    // solium-disable-next-line security/no-call-value
  > |    require(_spender.call.value(msg.value)(_data));
    |
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x5eb87caa0105a63aa87a36c7bd2573bd13e84fae.sol(358)

[33mWarning[0m for UnhandledException in contract 'ERC827Token':
    |    super.transfer(_to, _value);
    |
  > |    require(_to.call.value(msg.value)(_data));
    |    return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x5eb87caa0105a63aa87a36c7bd2573bd13e84fae.sol(386)

[33mWarning[0m for UnhandledException in contract 'ERC827Token':
    |    super.transferFrom(_from, _to, _value);
    |
  > |    require(_to.call.value(msg.value)(_data));
    |    return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x5eb87caa0105a63aa87a36c7bd2573bd13e84fae.sol(413)

[33mWarning[0m for UnhandledException in contract 'ERC827Token':
    |    super.increaseApproval(_spender, _addedValue);
    |
  > |    require(_spender.call.value(msg.value)(_data));
    |
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x5eb87caa0105a63aa87a36c7bd2573bd13e84fae.sol(443)

[33mWarning[0m for UnhandledException in contract 'ERC827Token':
    |    super.decreaseApproval(_spender, _subtractedValue);
    |
  > |    require(_spender.call.value(msg.value)(_data));
    |
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x5eb87caa0105a63aa87a36c7bd2573bd13e84fae.sol(474)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC827Token':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x5eb87caa0105a63aa87a36c7bd2573bd13e84fae.sol(195)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC827Token':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x5eb87caa0105a63aa87a36c7bd2573bd13e84fae.sol(231)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC827Token':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x5eb87caa0105a63aa87a36c7bd2573bd13e84fae.sol(240)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC827Token':
    |    returns (bool)
    |  {
  > |    allowed[msg.sender][_spender] = (
    |      allowed[msg.sender][_spender].add(_addedValue));
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x5eb87caa0105a63aa87a36c7bd2573bd13e84fae.sol(279)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC827Token':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x5eb87caa0105a63aa87a36c7bd2573bd13e84fae.sol(304)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC827Token':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x5eb87caa0105a63aa87a36c7bd2573bd13e84fae.sol(306)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x5eb87caa0105a63aa87a36c7bd2573bd13e84fae.sol(44)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |  event OwnershipTransferred(
  at /home/jiaming/mavs_srcs/contract@0x5eb87caa0105a63aa87a36c7bd2573bd13e84fae.sol(45)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x5eb87caa0105a63aa87a36c7bd2573bd13e84fae.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x5eb87caa0105a63aa87a36c7bd2573bd13e84fae.sol(76)

[33mWarning[0m for DAO in contract 'PauseBurnableERC827Token':
    |
    |    // solium-disable-next-line security/no-call-value
  > |    require(_spender.call.value(msg.value)(_data));
    |
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x5eb87caa0105a63aa87a36c7bd2573bd13e84fae.sol(358)

[33mWarning[0m for DAO in contract 'PauseBurnableERC827Token':
    |    super.transfer(_to, _value);
    |
  > |    require(_to.call.value(msg.value)(_data));
    |    return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x5eb87caa0105a63aa87a36c7bd2573bd13e84fae.sol(386)

[33mWarning[0m for DAO in contract 'PauseBurnableERC827Token':
    |    super.transferFrom(_from, _to, _value);
    |
  > |    require(_to.call.value(msg.value)(_data));
    |    return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x5eb87caa0105a63aa87a36c7bd2573bd13e84fae.sol(413)

[33mWarning[0m for DAO in contract 'PauseBurnableERC827Token':
    |    super.increaseApproval(_spender, _addedValue);
    |
  > |    require(_spender.call.value(msg.value)(_data));
    |
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x5eb87caa0105a63aa87a36c7bd2573bd13e84fae.sol(443)

[33mWarning[0m for DAO in contract 'PauseBurnableERC827Token':
    |    super.decreaseApproval(_spender, _subtractedValue);
    |
  > |    require(_spender.call.value(msg.value)(_data));
    |
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x5eb87caa0105a63aa87a36c7bd2573bd13e84fae.sol(474)

[33mWarning[0m for LockedEther in contract 'PauseBurnableERC827Token':
    | * @dev    StandardToken modified with pausable transfers.
    | **/
  > |contract PauseBurnableERC827Token is ERC827Token, Ownable{
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x5eb87caa0105a63aa87a36c7bd2573bd13e84fae.sol(487)

[33mWarning[0m for UnhandledException in contract 'PauseBurnableERC827Token':
    |
    |    // solium-disable-next-line security/no-call-value
  > |    require(_spender.call.value(msg.value)(_data));
    |
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x5eb87caa0105a63aa87a36c7bd2573bd13e84fae.sol(358)

[33mWarning[0m for UnhandledException in contract 'PauseBurnableERC827Token':
    |    super.transfer(_to, _value);
    |
  > |    require(_to.call.value(msg.value)(_data));
    |    return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x5eb87caa0105a63aa87a36c7bd2573bd13e84fae.sol(386)

[33mWarning[0m for UnhandledException in contract 'PauseBurnableERC827Token':
    |    super.transferFrom(_from, _to, _value);
    |
  > |    require(_to.call.value(msg.value)(_data));
    |    return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x5eb87caa0105a63aa87a36c7bd2573bd13e84fae.sol(413)

[33mWarning[0m for UnhandledException in contract 'PauseBurnableERC827Token':
    |    super.increaseApproval(_spender, _addedValue);
    |
  > |    require(_spender.call.value(msg.value)(_data));
    |
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x5eb87caa0105a63aa87a36c7bd2573bd13e84fae.sol(443)

[33mWarning[0m for UnhandledException in contract 'PauseBurnableERC827Token':
    |    super.decreaseApproval(_spender, _subtractedValue);
    |
  > |    require(_spender.call.value(msg.value)(_data));
    |
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x5eb87caa0105a63aa87a36c7bd2573bd13e84fae.sol(474)

[33mWarning[0m for UnrestrictedWrite in contract 'PauseBurnableERC827Token':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x5eb87caa0105a63aa87a36c7bd2573bd13e84fae.sol(195)

[33mWarning[0m for UnrestrictedWrite in contract 'PauseBurnableERC827Token':
    |
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x5eb87caa0105a63aa87a36c7bd2573bd13e84fae.sol(196)

[33mWarning[0m for UnrestrictedWrite in contract 'PauseBurnableERC827Token':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x5eb87caa0105a63aa87a36c7bd2573bd13e84fae.sol(229)

[33mWarning[0m for UnrestrictedWrite in contract 'PauseBurnableERC827Token':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x5eb87caa0105a63aa87a36c7bd2573bd13e84fae.sol(230)

[33mWarning[0m for UnrestrictedWrite in contract 'PauseBurnableERC827Token':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x5eb87caa0105a63aa87a36c7bd2573bd13e84fae.sol(231)

[33mWarning[0m for UnrestrictedWrite in contract 'PauseBurnableERC827Token':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x5eb87caa0105a63aa87a36c7bd2573bd13e84fae.sol(240)

[33mWarning[0m for UnrestrictedWrite in contract 'PauseBurnableERC827Token':
    |    returns (bool)
    |  {
  > |    allowed[msg.sender][_spender] = (
    |      allowed[msg.sender][_spender].add(_addedValue));
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x5eb87caa0105a63aa87a36c7bd2573bd13e84fae.sol(279)

[33mWarning[0m for UnrestrictedWrite in contract 'PauseBurnableERC827Token':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x5eb87caa0105a63aa87a36c7bd2573bd13e84fae.sol(304)

[33mWarning[0m for UnrestrictedWrite in contract 'PauseBurnableERC827Token':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x5eb87caa0105a63aa87a36c7bd2573bd13e84fae.sol(306)

[33mWarning[0m for UnrestrictedWrite in contract 'PauseBurnableERC827Token':
    |      // sender's balance is greater than the totalSupply, which *should* be an assertion failure
    |
  > |      balances[_who] = balances[_who].sub(_value);                      // Subtract from the sender
    |      totalSupply_ = totalSupply_.sub(_value);     
    |      
  at /home/jiaming/mavs_srcs/contract@0x5eb87caa0105a63aa87a36c7bd2573bd13e84fae.sol(612)

[33mWarning[0m for UnrestrictedWrite in contract 'PauseBurnableERC827Token':
    |
    |      balances[_who] = balances[_who].sub(_value);                      // Subtract from the sender
  > |      totalSupply_ = totalSupply_.sub(_value);     
    |      
    |      emit Burn(_who, _value);
  at /home/jiaming/mavs_srcs/contract@0x5eb87caa0105a63aa87a36c7bd2573bd13e84fae.sol(613)

[33mWarning[0m for UnrestrictedWrite in contract 'PauseBurnableERC827Token':
    |  {
    |      require(_value <= allowed[_from][msg.sender]);
  > |      allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |      _burn(_from, _value);
    |  }  
  at /home/jiaming/mavs_srcs/contract@0x5eb87caa0105a63aa87a36c7bd2573bd13e84fae.sol(628)

[33mWarning[0m for UnrestrictedWrite in contract 'PauseBurnableERC827Token':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x5eb87caa0105a63aa87a36c7bd2573bd13e84fae.sol(76)

[33mWarning[0m for UnrestrictedWrite in contract 'PauseBurnableERC827Token':
    |    require(newPauseOperator != address(0));
    |    emit PauseOperatorTransferred(pauseOperator, newPauseOperator);
  > |    pauseOperator = newPauseOperator;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x5eb87caa0105a63aa87a36c7bd2573bd13e84fae.sol(538)

[33mWarning[0m for UnrestrictedWrite in contract 'PauseBurnableERC827Token':
    |   */
    |  function pause() onlyPauseOperator whenNotPaused public {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x5eb87caa0105a63aa87a36c7bd2573bd13e84fae.sol(545)

[33mWarning[0m for UnrestrictedWrite in contract 'PauseBurnableERC827Token':
    |   */
    |  function unpause() onlyPauseOperator whenPaused public {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x5eb87caa0105a63aa87a36c7bd2573bd13e84fae.sol(553)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x5eb87caa0105a63aa87a36c7bd2573bd13e84fae.sol(122)


