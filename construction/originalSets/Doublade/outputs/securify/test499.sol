Processing contract: /home/jiaming/mavs_srcs/contract@0x20a8e076d5d537c3a4b2e2750a7fa06f9f845d8a.sol:BTML
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x20a8e076d5d537c3a4b2e2750a7fa06f9f845d8a.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x20a8e076d5d537c3a4b2e2750a7fa06f9f845d8a.sol:Burnable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x20a8e076d5d537c3a4b2e2750a7fa06f9f845d8a.sol:BurnableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x20a8e076d5d537c3a4b2e2750a7fa06f9f845d8a.sol:CrowdsaleToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x20a8e076d5d537c3a4b2e2750a7fa06f9f845d8a.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x20a8e076d5d537c3a4b2e2750a7fa06f9f845d8a.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x20a8e076d5d537c3a4b2e2750a7fa06f9f845d8a.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x20a8e076d5d537c3a4b2e2750a7fa06f9f845d8a.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x20a8e076d5d537c3a4b2e2750a7fa06f9f845d8a.sol:PausableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x20a8e076d5d537c3a4b2e2750a7fa06f9f845d8a.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x20a8e076d5d537c3a4b2e2750a7fa06f9f845d8a.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'BTML':
    |
    |  function () public payable {
  > |    owner.transfer(msg.value);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x20a8e076d5d537c3a4b2e2750a7fa06f9f845d8a.sol(345)

[33mWarning[0m for LockedEther in contract 'BTML':
    |} 
    |
  > |contract BTML is CrowdsaleToken {
    |  string public constant name = "BTML";
    |  string public constant symbol = "BTML";
  at /home/jiaming/mavs_srcs/contract@0x20a8e076d5d537c3a4b2e2750a7fa06f9f845d8a.sol(335)

[31mViolation[0m for TODReceiver in contract 'BTML':
    |
    |  function () public payable {
  > |    owner.transfer(msg.value);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x20a8e076d5d537c3a4b2e2750a7fa06f9f845d8a.sol(345)

[33mWarning[0m for UnhandledException in contract 'BTML':
    |
    |  function () public payable {
  > |    owner.transfer(msg.value);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x20a8e076d5d537c3a4b2e2750a7fa06f9f845d8a.sol(345)

[33mWarning[0m for UnrestrictedWrite in contract 'BTML':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x20a8e076d5d537c3a4b2e2750a7fa06f9f845d8a.sol(85)

[33mWarning[0m for UnrestrictedWrite in contract 'BTML':
    |
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x20a8e076d5d537c3a4b2e2750a7fa06f9f845d8a.sol(86)

[33mWarning[0m for UnrestrictedWrite in contract 'BTML':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x20a8e076d5d537c3a4b2e2750a7fa06f9f845d8a.sol(113)

[33mWarning[0m for UnrestrictedWrite in contract 'BTML':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x20a8e076d5d537c3a4b2e2750a7fa06f9f845d8a.sol(114)

[33mWarning[0m for UnrestrictedWrite in contract 'BTML':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x20a8e076d5d537c3a4b2e2750a7fa06f9f845d8a.sol(115)

[33mWarning[0m for UnrestrictedWrite in contract 'BTML':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x20a8e076d5d537c3a4b2e2750a7fa06f9f845d8a.sol(131)

[33mWarning[0m for UnrestrictedWrite in contract 'BTML':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x20a8e076d5d537c3a4b2e2750a7fa06f9f845d8a.sol(157)

[33mWarning[0m for UnrestrictedWrite in contract 'BTML':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x20a8e076d5d537c3a4b2e2750a7fa06f9f845d8a.sol(175)

[33mWarning[0m for UnrestrictedWrite in contract 'BTML':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x20a8e076d5d537c3a4b2e2750a7fa06f9f845d8a.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'BTML':
    |  function burn() public whenNotBurnt returns (bool) {
    |    if (balances[address(this)] > 0) {
  > |      totalSupply_ = totalSupply_.sub(balances[address(this)]);
    |      balances[address(this)] = 0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x20a8e076d5d537c3a4b2e2750a7fa06f9f845d8a.sol(310)

[33mWarning[0m for UnrestrictedWrite in contract 'BTML':
    |    if (balances[address(this)] > 0) {
    |      totalSupply_ = totalSupply_.sub(balances[address(this)]);
  > |      balances[address(this)] = 0;
    |    }
    |    burnt = true;
  at /home/jiaming/mavs_srcs/contract@0x20a8e076d5d537c3a4b2e2750a7fa06f9f845d8a.sol(311)

[33mWarning[0m for UnrestrictedWrite in contract 'BTML':
    |    _value = _value.mul(1 ether);
    |    require(_value <=  balances[address(this)]);
  > |    balances[address(this)] = balances[address(this)].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(address(this), _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x20a8e076d5d537c3a4b2e2750a7fa06f9f845d8a.sol(329)

[33mWarning[0m for UnrestrictedWrite in contract 'BTML':
    |    require(_value <=  balances[address(this)]);
    |    balances[address(this)] = balances[address(this)].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(address(this), _to, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x20a8e076d5d537c3a4b2e2750a7fa06f9f845d8a.sol(330)

[33mWarning[0m for UnrestrictedWrite in contract 'BTML':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x20a8e076d5d537c3a4b2e2750a7fa06f9f845d8a.sol(216)

[33mWarning[0m for UnrestrictedWrite in contract 'BTML':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x20a8e076d5d537c3a4b2e2750a7fa06f9f845d8a.sol(247)

[33mWarning[0m for UnrestrictedWrite in contract 'BTML':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x20a8e076d5d537c3a4b2e2750a7fa06f9f845d8a.sol(255)

[33mWarning[0m for LockedEther in contract 'BasicToken':
    | * @dev Basic version of StandardToken, with no allowances.
    | */
  > |contract BasicToken is ERC20Basic {
    |  using SafeMath for uint256;
    |  mapping(address => uint256) balances;
  at /home/jiaming/mavs_srcs/contract@0x20a8e076d5d537c3a4b2e2750a7fa06f9f845d8a.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x20a8e076d5d537c3a4b2e2750a7fa06f9f845d8a.sol(85)

[33mWarning[0m for LockedEther in contract 'Burnable':
    |}
    |
  > |contract Burnable is Ownable {
    |  event Burn();
    |
  at /home/jiaming/mavs_srcs/contract@0x20a8e076d5d537c3a4b2e2750a7fa06f9f845d8a.sol(287)

[33mWarning[0m for MissingInputValidation in contract 'Burnable':
    | */
    |contract Ownable {
  > |  address public owner;
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
    |
  at /home/jiaming/mavs_srcs/contract@0x20a8e076d5d537c3a4b2e2750a7fa06f9f845d8a.sol(190)

[33mWarning[0m for MissingInputValidation in contract 'Burnable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x20a8e076d5d537c3a4b2e2750a7fa06f9f845d8a.sol(213)

[33mWarning[0m for MissingInputValidation in contract 'Burnable':
    |  event Burn();
    |
  > |  bool public burnt = false;
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x20a8e076d5d537c3a4b2e2750a7fa06f9f845d8a.sol(290)

[33mWarning[0m for UnrestrictedWrite in contract 'Burnable':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x20a8e076d5d537c3a4b2e2750a7fa06f9f845d8a.sol(216)

[33mWarning[0m for LockedEther in contract 'BurnableToken':
    |}
    |
  > |contract BurnableToken is StandardToken, Burnable {
    |
    |  function burn() public whenNotBurnt returns (bool) {
  at /home/jiaming/mavs_srcs/contract@0x20a8e076d5d537c3a4b2e2750a7fa06f9f845d8a.sol(306)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x20a8e076d5d537c3a4b2e2750a7fa06f9f845d8a.sol(85)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x20a8e076d5d537c3a4b2e2750a7fa06f9f845d8a.sol(115)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x20a8e076d5d537c3a4b2e2750a7fa06f9f845d8a.sol(131)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x20a8e076d5d537c3a4b2e2750a7fa06f9f845d8a.sol(157)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x20a8e076d5d537c3a4b2e2750a7fa06f9f845d8a.sol(175)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x20a8e076d5d537c3a4b2e2750a7fa06f9f845d8a.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x20a8e076d5d537c3a4b2e2750a7fa06f9f845d8a.sol(216)

[33mWarning[0m for LockedEther in contract 'CrowdsaleToken':
    |}
    |
  > |contract CrowdsaleToken is PausableToken, BurnableToken {
    |  uint256 public cap = 75000000;
    |  function CrowdsaleToken () public {
  at /home/jiaming/mavs_srcs/contract@0x20a8e076d5d537c3a4b2e2750a7fa06f9f845d8a.sol(318)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x20a8e076d5d537c3a4b2e2750a7fa06f9f845d8a.sol(85)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x20a8e076d5d537c3a4b2e2750a7fa06f9f845d8a.sol(86)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x20a8e076d5d537c3a4b2e2750a7fa06f9f845d8a.sol(113)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x20a8e076d5d537c3a4b2e2750a7fa06f9f845d8a.sol(114)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x20a8e076d5d537c3a4b2e2750a7fa06f9f845d8a.sol(115)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x20a8e076d5d537c3a4b2e2750a7fa06f9f845d8a.sol(131)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x20a8e076d5d537c3a4b2e2750a7fa06f9f845d8a.sol(157)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x20a8e076d5d537c3a4b2e2750a7fa06f9f845d8a.sol(175)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x20a8e076d5d537c3a4b2e2750a7fa06f9f845d8a.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |  function burn() public whenNotBurnt returns (bool) {
    |    if (balances[address(this)] > 0) {
  > |      totalSupply_ = totalSupply_.sub(balances[address(this)]);
    |      balances[address(this)] = 0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x20a8e076d5d537c3a4b2e2750a7fa06f9f845d8a.sol(310)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |    if (balances[address(this)] > 0) {
    |      totalSupply_ = totalSupply_.sub(balances[address(this)]);
  > |      balances[address(this)] = 0;
    |    }
    |    burnt = true;
  at /home/jiaming/mavs_srcs/contract@0x20a8e076d5d537c3a4b2e2750a7fa06f9f845d8a.sol(311)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |    _value = _value.mul(1 ether);
    |    require(_value <=  balances[address(this)]);
  > |    balances[address(this)] = balances[address(this)].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(address(this), _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x20a8e076d5d537c3a4b2e2750a7fa06f9f845d8a.sol(329)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |    require(_value <=  balances[address(this)]);
    |    balances[address(this)] = balances[address(this)].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(address(this), _to, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x20a8e076d5d537c3a4b2e2750a7fa06f9f845d8a.sol(330)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x20a8e076d5d537c3a4b2e2750a7fa06f9f845d8a.sol(216)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x20a8e076d5d537c3a4b2e2750a7fa06f9f845d8a.sol(247)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x20a8e076d5d537c3a4b2e2750a7fa06f9f845d8a.sol(255)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x20a8e076d5d537c3a4b2e2750a7fa06f9f845d8a.sol(189)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
    |
  at /home/jiaming/mavs_srcs/contract@0x20a8e076d5d537c3a4b2e2750a7fa06f9f845d8a.sol(190)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x20a8e076d5d537c3a4b2e2750a7fa06f9f845d8a.sol(213)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x20a8e076d5d537c3a4b2e2750a7fa06f9f845d8a.sol(216)

[33mWarning[0m for LockedEther in contract 'Pausable':
    |}
    |
  > |contract Pausable is Ownable {
    |  event Pause();
    |  event Unpause();
  at /home/jiaming/mavs_srcs/contract@0x20a8e076d5d537c3a4b2e2750a7fa06f9f845d8a.sol(220)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    | */
    |contract Ownable {
  > |  address public owner;
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
    |
  at /home/jiaming/mavs_srcs/contract@0x20a8e076d5d537c3a4b2e2750a7fa06f9f845d8a.sol(190)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x20a8e076d5d537c3a4b2e2750a7fa06f9f845d8a.sol(213)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  event Unpause();
    |
  > |  bool public paused = false;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x20a8e076d5d537c3a4b2e2750a7fa06f9f845d8a.sol(224)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to pause, triggers stopped state
    |   */
  > |  function pause() onlyOwner whenNotPaused public {
    |    paused = true;
    |    emit Pause();
  at /home/jiaming/mavs_srcs/contract@0x20a8e076d5d537c3a4b2e2750a7fa06f9f845d8a.sol(246)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to unpause, returns to normal state
    |   */
  > |  function unpause() onlyOwner whenPaused public {
    |    paused = false;
    |    emit Unpause();
  at /home/jiaming/mavs_srcs/contract@0x20a8e076d5d537c3a4b2e2750a7fa06f9f845d8a.sol(254)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x20a8e076d5d537c3a4b2e2750a7fa06f9f845d8a.sol(216)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x20a8e076d5d537c3a4b2e2750a7fa06f9f845d8a.sol(247)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x20a8e076d5d537c3a4b2e2750a7fa06f9f845d8a.sol(255)

[33mWarning[0m for LockedEther in contract 'PausableToken':
    | * @dev StandardToken modified with pausable transfers.
    | **/
  > |contract PausableToken is StandardToken, Pausable {
    |
    |  function transfer(address _to, uint256 _value) public whenNotPaused returns (bool) {
  at /home/jiaming/mavs_srcs/contract@0x20a8e076d5d537c3a4b2e2750a7fa06f9f845d8a.sol(264)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x20a8e076d5d537c3a4b2e2750a7fa06f9f845d8a.sol(85)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x20a8e076d5d537c3a4b2e2750a7fa06f9f845d8a.sol(115)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x20a8e076d5d537c3a4b2e2750a7fa06f9f845d8a.sol(131)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x20a8e076d5d537c3a4b2e2750a7fa06f9f845d8a.sol(157)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x20a8e076d5d537c3a4b2e2750a7fa06f9f845d8a.sol(175)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x20a8e076d5d537c3a4b2e2750a7fa06f9f845d8a.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x20a8e076d5d537c3a4b2e2750a7fa06f9f845d8a.sol(216)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x20a8e076d5d537c3a4b2e2750a7fa06f9f845d8a.sol(247)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x20a8e076d5d537c3a4b2e2750a7fa06f9f845d8a.sol(255)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  /**
    |  * @dev Multiplies two numbers, throws on overflow.
  at /home/jiaming/mavs_srcs/contract@0x20a8e076d5d537c3a4b2e2750a7fa06f9f845d8a.sol(7)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is ERC20, BasicToken {
    |  mapping (address => mapping (address => uint256)) internal allowed;
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x20a8e076d5d537c3a4b2e2750a7fa06f9f845d8a.sol(100)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x20a8e076d5d537c3a4b2e2750a7fa06f9f845d8a.sol(85)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x20a8e076d5d537c3a4b2e2750a7fa06f9f845d8a.sol(115)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x20a8e076d5d537c3a4b2e2750a7fa06f9f845d8a.sol(131)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x20a8e076d5d537c3a4b2e2750a7fa06f9f845d8a.sol(157)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x20a8e076d5d537c3a4b2e2750a7fa06f9f845d8a.sol(175)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x20a8e076d5d537c3a4b2e2750a7fa06f9f845d8a.sol(177)


