Processing contract: /home/jiaming/mavs_srcs/contract@0x532a32c0383aa63a06513d0aae4b652c6788101a.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x532a32c0383aa63a06513d0aae4b652c6788101a.sol:BlockEslip
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x532a32c0383aa63a06513d0aae4b652c6788101a.sol:BurnableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x532a32c0383aa63a06513d0aae4b652c6788101a.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x532a32c0383aa63a06513d0aae4b652c6788101a.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x532a32c0383aa63a06513d0aae4b652c6788101a.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x532a32c0383aa63a06513d0aae4b652c6788101a.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x532a32c0383aa63a06513d0aae4b652c6788101a.sol:StandardToken
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
  at /home/jiaming/mavs_srcs/contract@0x532a32c0383aa63a06513d0aae4b652c6788101a.sol(101)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x532a32c0383aa63a06513d0aae4b652c6788101a.sol(124)

[33mWarning[0m for DAOConstantGas in contract 'BlockEslip':
    |        amountRaised = amountRaised.add(amount);
    |        _transfer(owner, msg.sender, amount.mul(buyPrice)); 
  > |        owner.transfer(amount);
    |    }
    | 
  at /home/jiaming/mavs_srcs/contract@0x532a32c0383aa63a06513d0aae4b652c6788101a.sol(327)

[33mWarning[0m for LockedEther in contract 'BlockEslip':
    |}
    | 
  > |contract BlockEslip is StandardToken, BurnableToken, Ownable {
    |    // Constants
    |    string  public constant name = "Block Eslip";
  at /home/jiaming/mavs_srcs/contract@0x532a32c0383aa63a06513d0aae4b652c6788101a.sol(281)

[33mWarning[0m for TODAmount in contract 'BlockEslip':
    |        amountRaised = amountRaised.add(amount);
    |        _transfer(owner, msg.sender, amount.mul(buyPrice)); 
  > |        owner.transfer(amount);
    |    }
    | 
  at /home/jiaming/mavs_srcs/contract@0x532a32c0383aa63a06513d0aae4b652c6788101a.sol(327)

[33mWarning[0m for UnhandledException in contract 'BlockEslip':
    |        amountRaised = amountRaised.add(amount);
    |        _transfer(owner, msg.sender, amount.mul(buyPrice)); 
  > |        owner.transfer(amount);
    |    }
    | 
  at /home/jiaming/mavs_srcs/contract@0x532a32c0383aa63a06513d0aae4b652c6788101a.sol(327)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BlockEslip':
    |        amountRaised = amountRaised.add(amount);
    |        _transfer(owner, msg.sender, amount.mul(buyPrice)); 
  > |        owner.transfer(amount);
    |    }
    | 
  at /home/jiaming/mavs_srcs/contract@0x532a32c0383aa63a06513d0aae4b652c6788101a.sol(327)

[31mViolation[0m for UnrestrictedWrite in contract 'BlockEslip':
    |    function lock ( address[] _addr ) onlyOwner external  {
    |        for (uint i = 0; i < _addr.length; i++) {
  > |          balanceLocked[_addr[i]] =  true;  
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x532a32c0383aa63a06513d0aae4b652c6788101a.sol(350)

[31mViolation[0m for UnrestrictedWrite in contract 'BlockEslip':
    |    function unlock ( address[] _addr ) onlyOwner external  {
    |        for (uint i = 0; i < _addr.length; i++) {
  > |          balanceLocked[_addr[i]] =  false;  
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x532a32c0383aa63a06513d0aae4b652c6788101a.sol(357)

[33mWarning[0m for UnrestrictedWrite in contract 'BlockEslip':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x532a32c0383aa63a06513d0aae4b652c6788101a.sol(124)

[33mWarning[0m for UnrestrictedWrite in contract 'BlockEslip':
    |
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x532a32c0383aa63a06513d0aae4b652c6788101a.sol(125)

[33mWarning[0m for UnrestrictedWrite in contract 'BlockEslip':
    |    // sender's balance is greater than the totalSupply, which *should* be an assertion failure
    |
  > |    balances[_who] = balances[_who].sub(_value);
    |    totalSupply_ = totalSupply_.sub(_value);
    |    emit Burn(_who, _value);
  at /home/jiaming/mavs_srcs/contract@0x532a32c0383aa63a06513d0aae4b652c6788101a.sol(164)

[33mWarning[0m for UnrestrictedWrite in contract 'BlockEslip':
    |
    |    balances[_who] = balances[_who].sub(_value);
  > |    totalSupply_ = totalSupply_.sub(_value);
    |    emit Burn(_who, _value);
    |    emit Transfer(_who, address(0), _value);
  at /home/jiaming/mavs_srcs/contract@0x532a32c0383aa63a06513d0aae4b652c6788101a.sol(165)

[33mWarning[0m for UnrestrictedWrite in contract 'BlockEslip':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x532a32c0383aa63a06513d0aae4b652c6788101a.sol(209)

[33mWarning[0m for UnrestrictedWrite in contract 'BlockEslip':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x532a32c0383aa63a06513d0aae4b652c6788101a.sol(210)

[33mWarning[0m for UnrestrictedWrite in contract 'BlockEslip':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x532a32c0383aa63a06513d0aae4b652c6788101a.sol(211)

[33mWarning[0m for UnrestrictedWrite in contract 'BlockEslip':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x532a32c0383aa63a06513d0aae4b652c6788101a.sol(227)

[33mWarning[0m for UnrestrictedWrite in contract 'BlockEslip':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x532a32c0383aa63a06513d0aae4b652c6788101a.sol(253)

[33mWarning[0m for UnrestrictedWrite in contract 'BlockEslip':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x532a32c0383aa63a06513d0aae4b652c6788101a.sol(271)

[33mWarning[0m for UnrestrictedWrite in contract 'BlockEslip':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x532a32c0383aa63a06513d0aae4b652c6788101a.sol(273)

[33mWarning[0m for UnrestrictedWrite in contract 'BlockEslip':
    |        require (balances[_to] + _value > balances[_to]); // Check for overflows
    |   
  > |        balances[_from] = balances[_from].sub(_value);                         // Subtract from the sender
    |        balances[_to] = balances[_to].add(_value);                            // Add the same to the recipient
    | 
  at /home/jiaming/mavs_srcs/contract@0x532a32c0383aa63a06513d0aae4b652c6788101a.sol(308)

[33mWarning[0m for UnrestrictedWrite in contract 'BlockEslip':
    |   
    |        balances[_from] = balances[_from].sub(_value);                         // Subtract from the sender
  > |        balances[_to] = balances[_to].add(_value);                            // Add the same to the recipient
    | 
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x532a32c0383aa63a06513d0aae4b652c6788101a.sol(309)

[33mWarning[0m for UnrestrictedWrite in contract 'BlockEslip':
    |        require(!crowdsaleClosed);
    |        uint amount = msg.value ;               // calculates the amount
  > |        amountRaised = amountRaised.add(amount);
    |        _transfer(owner, msg.sender, amount.mul(buyPrice)); 
    |        owner.transfer(amount);
  at /home/jiaming/mavs_srcs/contract@0x532a32c0383aa63a06513d0aae4b652c6788101a.sol(325)

[33mWarning[0m for UnrestrictedWrite in contract 'BlockEslip':
    |
    |    function setPrice( uint256 newBuyPrice) onlyOwner public {
  > |        buyPrice = newBuyPrice;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x532a32c0383aa63a06513d0aae4b652c6788101a.sol(315)

[33mWarning[0m for UnrestrictedWrite in contract 'BlockEslip':
    |
    |    function closeBuy(bool closebuy) onlyOwner public {
  > |        crowdsaleClosed = closebuy;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x532a32c0383aa63a06513d0aae4b652c6788101a.sol(319)

[33mWarning[0m for UnrestrictedWrite in contract 'BlockEslip':
    | 
    |    function enableTransfer(bool _enable) onlyOwner external {
  > |        transferEnabled = _enable;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x532a32c0383aa63a06513d0aae4b652c6788101a.sol(331)

[33mWarning[0m for LockedEther in contract 'BurnableToken':
    | * @dev Token that can be irreversibly burned (destroyed).
    | */
  > |contract BurnableToken is BasicToken {
    |
    |  event Burn(address indexed burner, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0x532a32c0383aa63a06513d0aae4b652c6788101a.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x532a32c0383aa63a06513d0aae4b652c6788101a.sol(124)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x532a32c0383aa63a06513d0aae4b652c6788101a.sol(125)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    // sender's balance is greater than the totalSupply, which *should* be an assertion failure
    |
  > |    balances[_who] = balances[_who].sub(_value);
    |    totalSupply_ = totalSupply_.sub(_value);
    |    emit Burn(_who, _value);
  at /home/jiaming/mavs_srcs/contract@0x532a32c0383aa63a06513d0aae4b652c6788101a.sol(164)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    | 
  at /home/jiaming/mavs_srcs/contract@0x532a32c0383aa63a06513d0aae4b652c6788101a.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    | 
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x532a32c0383aa63a06513d0aae4b652c6788101a.sol(12)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x532a32c0383aa63a06513d0aae4b652c6788101a.sol(39)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0x532a32c0383aa63a06513d0aae4b652c6788101a.sol(193)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x532a32c0383aa63a06513d0aae4b652c6788101a.sol(124)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x532a32c0383aa63a06513d0aae4b652c6788101a.sol(211)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x532a32c0383aa63a06513d0aae4b652c6788101a.sol(227)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x532a32c0383aa63a06513d0aae4b652c6788101a.sol(253)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x532a32c0383aa63a06513d0aae4b652c6788101a.sol(271)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x532a32c0383aa63a06513d0aae4b652c6788101a.sol(273)


