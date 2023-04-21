Processing contract: /home/jiaming/mavs_srcs/contract@0x4ff7a2c476b1e775725bbbbd432ed2b523a203c8.sol:BurnableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4ff7a2c476b1e775725bbbbd432ed2b523a203c8.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x4ff7a2c476b1e775725bbbbd432ed2b523a203c8.sol:MintableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4ff7a2c476b1e775725bbbbd432ed2b523a203c8.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4ff7a2c476b1e775725bbbbd432ed2b523a203c8.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4ff7a2c476b1e775725bbbbd432ed2b523a203c8.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4ff7a2c476b1e775725bbbbd432ed2b523a203c8.sol:StemToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4ff7a2c476b1e775725bbbbd432ed2b523a203c8.sol:TokenBase
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BurnableToken':
    |
    |
  > |contract BurnableToken is MintableToken {
    |  event Burn(address indexed burner, uint256 value);
    |
  at /home/jiaming/mavs_srcs/contract@0x4ff7a2c476b1e775725bbbbd432ed2b523a203c8.sol(224)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x4ff7a2c476b1e775725bbbbd432ed2b523a203c8.sol(150)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x4ff7a2c476b1e775725bbbbd432ed2b523a203c8.sol(151)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x4ff7a2c476b1e775725bbbbd432ed2b523a203c8.sol(161)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x4ff7a2c476b1e775725bbbbd432ed2b523a203c8.sol(162)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x4ff7a2c476b1e775725bbbbd432ed2b523a203c8.sol(163)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |  function approve(address _spender, uint256 _value) public whenNotPaused returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x4ff7a2c476b1e775725bbbbd432ed2b523a203c8.sol(169)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |  function increaseApproval(address _spender, uint256 _addedValue) public whenNotPaused returns (bool) {
  > |    allowed[msg.sender][_spender] = (allowed[msg.sender][_spender].add(_addedValue));
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x4ff7a2c476b1e775725bbbbd432ed2b523a203c8.sol(175)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    uint256 oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x4ff7a2c476b1e775725bbbbd432ed2b523a203c8.sol(183)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x4ff7a2c476b1e775725bbbbd432ed2b523a203c8.sol(185)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
  > |    totalSupply_ = totalSupply_.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    emit Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x4ff7a2c476b1e775725bbbbd432ed2b523a203c8.sol(208)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
    |    totalSupply_ = totalSupply_.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    emit Mint(_to, _amount);
    |    emit Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x4ff7a2c476b1e775725bbbbd432ed2b523a203c8.sol(209)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    totalSupply_ = totalSupply_.sub(_value);
    |    emit Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x4ff7a2c476b1e775725bbbbd432ed2b523a203c8.sol(231)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    totalSupply_ = totalSupply_.sub(_value);
    |    emit Burn(msg.sender, _value);
    |    emit Transfer(msg.sender, address(0), _value);
  at /home/jiaming/mavs_srcs/contract@0x4ff7a2c476b1e775725bbbbd432ed2b523a203c8.sol(232)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |  function transferOwnership(address newOwner) onlyOwner external {
  > |    pendingOwner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4ff7a2c476b1e775725bbbbd432ed2b523a203c8.sol(62)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    require(msg.sender == pendingOwner);
    |    emit OwnershipTransferred(owner, pendingOwner);
  > |    owner = pendingOwner;
    |    pendingOwner = address(0);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4ff7a2c476b1e775725bbbbd432ed2b523a203c8.sol(68)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    emit OwnershipTransferred(owner, pendingOwner);
    |    owner = pendingOwner;
  > |    pendingOwner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4ff7a2c476b1e775725bbbbd432ed2b523a203c8.sol(69)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |  function pause() onlyOwner whenNotPaused external {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4ff7a2c476b1e775725bbbbd432ed2b523a203c8.sol(93)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |  function unpause() onlyOwner whenPaused external {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4ff7a2c476b1e775725bbbbd432ed2b523a203c8.sol(98)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |  function finishMinting() onlyOwner canMint external returns (bool) {
  > |    mintingFinished = true;
    |    emit MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x4ff7a2c476b1e775725bbbbd432ed2b523a203c8.sol(216)

[33mWarning[0m for LockedEther in contract 'MintableToken':
    |
    |
  > |contract MintableToken is TokenBase {
    |  event Mint(address indexed to, uint256 amount);
    |  event MintFinished();
  at /home/jiaming/mavs_srcs/contract@0x4ff7a2c476b1e775725bbbbd432ed2b523a203c8.sol(194)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x4ff7a2c476b1e775725bbbbd432ed2b523a203c8.sol(150)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x4ff7a2c476b1e775725bbbbd432ed2b523a203c8.sol(151)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x4ff7a2c476b1e775725bbbbd432ed2b523a203c8.sol(161)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x4ff7a2c476b1e775725bbbbd432ed2b523a203c8.sol(162)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x4ff7a2c476b1e775725bbbbd432ed2b523a203c8.sol(163)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |  function approve(address _spender, uint256 _value) public whenNotPaused returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x4ff7a2c476b1e775725bbbbd432ed2b523a203c8.sol(169)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |  function increaseApproval(address _spender, uint256 _addedValue) public whenNotPaused returns (bool) {
  > |    allowed[msg.sender][_spender] = (allowed[msg.sender][_spender].add(_addedValue));
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x4ff7a2c476b1e775725bbbbd432ed2b523a203c8.sol(175)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    uint256 oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x4ff7a2c476b1e775725bbbbd432ed2b523a203c8.sol(183)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x4ff7a2c476b1e775725bbbbd432ed2b523a203c8.sol(185)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
  > |    totalSupply_ = totalSupply_.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    emit Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x4ff7a2c476b1e775725bbbbd432ed2b523a203c8.sol(208)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
    |    totalSupply_ = totalSupply_.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    emit Mint(_to, _amount);
    |    emit Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x4ff7a2c476b1e775725bbbbd432ed2b523a203c8.sol(209)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |  function transferOwnership(address newOwner) onlyOwner external {
  > |    pendingOwner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4ff7a2c476b1e775725bbbbd432ed2b523a203c8.sol(62)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(msg.sender == pendingOwner);
    |    emit OwnershipTransferred(owner, pendingOwner);
  > |    owner = pendingOwner;
    |    pendingOwner = address(0);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4ff7a2c476b1e775725bbbbd432ed2b523a203c8.sol(68)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    emit OwnershipTransferred(owner, pendingOwner);
    |    owner = pendingOwner;
  > |    pendingOwner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4ff7a2c476b1e775725bbbbd432ed2b523a203c8.sol(69)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |  function pause() onlyOwner whenNotPaused external {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4ff7a2c476b1e775725bbbbd432ed2b523a203c8.sol(93)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |  function unpause() onlyOwner whenPaused external {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4ff7a2c476b1e775725bbbbd432ed2b523a203c8.sol(98)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |  function finishMinting() onlyOwner canMint external returns (bool) {
  > |    mintingFinished = true;
    |    emit MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x4ff7a2c476b1e775725bbbbd432ed2b523a203c8.sol(216)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |
    |
  > |contract Ownable {
    |  address public owner;
    |  address public pendingOwner;
  at /home/jiaming/mavs_srcs/contract@0x4ff7a2c476b1e775725bbbbd432ed2b523a203c8.sol(41)

[31mViolation[0m for MissingInputValidation in contract 'Ownable':
    |
    |
  > |  function transferOwnership(address newOwner) onlyOwner external {
    |    pendingOwner = newOwner;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4ff7a2c476b1e775725bbbbd432ed2b523a203c8.sol(61)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |  address public owner;
    |  address public pendingOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x4ff7a2c476b1e775725bbbbd432ed2b523a203c8.sol(42)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |contract Ownable {
    |  address public owner;
  > |  address public pendingOwner;
    |
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x4ff7a2c476b1e775725bbbbd432ed2b523a203c8.sol(43)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |  }
    |
  > |  function claimOwnership() external {
    |    require(msg.sender == pendingOwner);
    |    emit OwnershipTransferred(owner, pendingOwner);
  at /home/jiaming/mavs_srcs/contract@0x4ff7a2c476b1e775725bbbbd432ed2b523a203c8.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |
    |  function transferOwnership(address newOwner) onlyOwner external {
  > |    pendingOwner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4ff7a2c476b1e775725bbbbd432ed2b523a203c8.sol(62)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(msg.sender == pendingOwner);
    |    emit OwnershipTransferred(owner, pendingOwner);
  > |    owner = pendingOwner;
    |    pendingOwner = address(0);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4ff7a2c476b1e775725bbbbd432ed2b523a203c8.sol(68)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    emit OwnershipTransferred(owner, pendingOwner);
    |    owner = pendingOwner;
  > |    pendingOwner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4ff7a2c476b1e775725bbbbd432ed2b523a203c8.sol(69)

[33mWarning[0m for LockedEther in contract 'Pausable':
    |
    |
  > |contract Pausable is Ownable {
    |  event Pause();
    |  event Unpause();
  at /home/jiaming/mavs_srcs/contract@0x4ff7a2c476b1e775725bbbbd432ed2b523a203c8.sol(75)

[31mViolation[0m for MissingInputValidation in contract 'Pausable':
    |
    |
  > |  function transferOwnership(address newOwner) onlyOwner external {
    |    pendingOwner = newOwner;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4ff7a2c476b1e775725bbbbd432ed2b523a203c8.sol(61)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |
    |contract Ownable {
  > |  address public owner;
    |  address public pendingOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x4ff7a2c476b1e775725bbbbd432ed2b523a203c8.sol(42)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |contract Ownable {
    |  address public owner;
  > |  address public pendingOwner;
    |
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x4ff7a2c476b1e775725bbbbd432ed2b523a203c8.sol(43)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  }
    |
  > |  function claimOwnership() external {
    |    require(msg.sender == pendingOwner);
    |    emit OwnershipTransferred(owner, pendingOwner);
  at /home/jiaming/mavs_srcs/contract@0x4ff7a2c476b1e775725bbbbd432ed2b523a203c8.sol(65)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  event Unpause();
    |
  > |  bool public paused = false;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x4ff7a2c476b1e775725bbbbd432ed2b523a203c8.sol(79)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  }
    |
  > |  function pause() onlyOwner whenNotPaused external {
    |    paused = true;
    |    emit Pause();
  at /home/jiaming/mavs_srcs/contract@0x4ff7a2c476b1e775725bbbbd432ed2b523a203c8.sol(92)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  }
    |
  > |  function unpause() onlyOwner whenPaused external {
    |    paused = false;
    |    emit Unpause();
  at /home/jiaming/mavs_srcs/contract@0x4ff7a2c476b1e775725bbbbd432ed2b523a203c8.sol(97)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |
    |  function transferOwnership(address newOwner) onlyOwner external {
  > |    pendingOwner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4ff7a2c476b1e775725bbbbd432ed2b523a203c8.sol(62)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    require(msg.sender == pendingOwner);
    |    emit OwnershipTransferred(owner, pendingOwner);
  > |    owner = pendingOwner;
    |    pendingOwner = address(0);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4ff7a2c476b1e775725bbbbd432ed2b523a203c8.sol(68)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    emit OwnershipTransferred(owner, pendingOwner);
    |    owner = pendingOwner;
  > |    pendingOwner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4ff7a2c476b1e775725bbbbd432ed2b523a203c8.sol(69)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |
    |  function pause() onlyOwner whenNotPaused external {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4ff7a2c476b1e775725bbbbd432ed2b523a203c8.sol(93)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |
    |  function unpause() onlyOwner whenPaused external {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4ff7a2c476b1e775725bbbbd432ed2b523a203c8.sol(98)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |
    |
  > |library SafeMath {
    |
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256 c) {
  at /home/jiaming/mavs_srcs/contract@0x4ff7a2c476b1e775725bbbbd432ed2b523a203c8.sol(14)

[33mWarning[0m for LockedEther in contract 'StemToken':
    |
    |
  > |contract StemToken is BurnableToken {
    |  string public constant name = "Stem Cell Innovations Token";
    |  string public constant symbol = "STEM";
  at /home/jiaming/mavs_srcs/contract@0x4ff7a2c476b1e775725bbbbd432ed2b523a203c8.sol(240)

[33mWarning[0m for UnhandledException in contract 'StemToken':
    |  */
    |  function pullOut(ERC20 _token, uint256 _amount) external onlyOwner {
  > |    _token.transfer(owner, _amount);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4ff7a2c476b1e775725bbbbd432ed2b523a203c8.sol(252)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StemToken':
    |  */
    |  function pullOut(ERC20 _token, uint256 _amount) external onlyOwner {
  > |    _token.transfer(owner, _amount);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4ff7a2c476b1e775725bbbbd432ed2b523a203c8.sol(252)

[33mWarning[0m for UnrestrictedWrite in contract 'StemToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x4ff7a2c476b1e775725bbbbd432ed2b523a203c8.sol(150)

[33mWarning[0m for UnrestrictedWrite in contract 'StemToken':
    |
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x4ff7a2c476b1e775725bbbbd432ed2b523a203c8.sol(151)

[33mWarning[0m for UnrestrictedWrite in contract 'StemToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x4ff7a2c476b1e775725bbbbd432ed2b523a203c8.sol(161)

[33mWarning[0m for UnrestrictedWrite in contract 'StemToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x4ff7a2c476b1e775725bbbbd432ed2b523a203c8.sol(162)

[33mWarning[0m for UnrestrictedWrite in contract 'StemToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x4ff7a2c476b1e775725bbbbd432ed2b523a203c8.sol(163)

[33mWarning[0m for UnrestrictedWrite in contract 'StemToken':
    |
    |  function approve(address _spender, uint256 _value) public whenNotPaused returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x4ff7a2c476b1e775725bbbbd432ed2b523a203c8.sol(169)

[33mWarning[0m for UnrestrictedWrite in contract 'StemToken':
    |
    |  function increaseApproval(address _spender, uint256 _addedValue) public whenNotPaused returns (bool) {
  > |    allowed[msg.sender][_spender] = (allowed[msg.sender][_spender].add(_addedValue));
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x4ff7a2c476b1e775725bbbbd432ed2b523a203c8.sol(175)

[33mWarning[0m for UnrestrictedWrite in contract 'StemToken':
    |    uint256 oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x4ff7a2c476b1e775725bbbbd432ed2b523a203c8.sol(183)

[33mWarning[0m for UnrestrictedWrite in contract 'StemToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x4ff7a2c476b1e775725bbbbd432ed2b523a203c8.sol(185)

[33mWarning[0m for UnrestrictedWrite in contract 'StemToken':
    |
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
  > |    totalSupply_ = totalSupply_.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    emit Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x4ff7a2c476b1e775725bbbbd432ed2b523a203c8.sol(208)

[33mWarning[0m for UnrestrictedWrite in contract 'StemToken':
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
    |    totalSupply_ = totalSupply_.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    emit Mint(_to, _amount);
    |    emit Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x4ff7a2c476b1e775725bbbbd432ed2b523a203c8.sol(209)

[33mWarning[0m for UnrestrictedWrite in contract 'StemToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    totalSupply_ = totalSupply_.sub(_value);
    |    emit Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x4ff7a2c476b1e775725bbbbd432ed2b523a203c8.sol(231)

[33mWarning[0m for UnrestrictedWrite in contract 'StemToken':
    |
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    totalSupply_ = totalSupply_.sub(_value);
    |    emit Burn(msg.sender, _value);
    |    emit Transfer(msg.sender, address(0), _value);
  at /home/jiaming/mavs_srcs/contract@0x4ff7a2c476b1e775725bbbbd432ed2b523a203c8.sol(232)

[33mWarning[0m for UnrestrictedWrite in contract 'StemToken':
    |
    |  function transferOwnership(address newOwner) onlyOwner external {
  > |    pendingOwner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4ff7a2c476b1e775725bbbbd432ed2b523a203c8.sol(62)

[33mWarning[0m for UnrestrictedWrite in contract 'StemToken':
    |    require(msg.sender == pendingOwner);
    |    emit OwnershipTransferred(owner, pendingOwner);
  > |    owner = pendingOwner;
    |    pendingOwner = address(0);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4ff7a2c476b1e775725bbbbd432ed2b523a203c8.sol(68)

[33mWarning[0m for UnrestrictedWrite in contract 'StemToken':
    |    emit OwnershipTransferred(owner, pendingOwner);
    |    owner = pendingOwner;
  > |    pendingOwner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4ff7a2c476b1e775725bbbbd432ed2b523a203c8.sol(69)

[33mWarning[0m for UnrestrictedWrite in contract 'StemToken':
    |
    |  function pause() onlyOwner whenNotPaused external {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4ff7a2c476b1e775725bbbbd432ed2b523a203c8.sol(93)

[33mWarning[0m for UnrestrictedWrite in contract 'StemToken':
    |
    |  function unpause() onlyOwner whenPaused external {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4ff7a2c476b1e775725bbbbd432ed2b523a203c8.sol(98)

[33mWarning[0m for UnrestrictedWrite in contract 'StemToken':
    |
    |  function finishMinting() onlyOwner canMint external returns (bool) {
  > |    mintingFinished = true;
    |    emit MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x4ff7a2c476b1e775725bbbbd432ed2b523a203c8.sol(216)

[33mWarning[0m for LockedEther in contract 'TokenBase':
    |
    |
  > |contract TokenBase is ERC20, Pausable {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x4ff7a2c476b1e775725bbbbd432ed2b523a203c8.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenBase':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x4ff7a2c476b1e775725bbbbd432ed2b523a203c8.sol(150)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenBase':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x4ff7a2c476b1e775725bbbbd432ed2b523a203c8.sol(163)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenBase':
    |
    |  function approve(address _spender, uint256 _value) public whenNotPaused returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x4ff7a2c476b1e775725bbbbd432ed2b523a203c8.sol(169)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenBase':
    |
    |  function increaseApproval(address _spender, uint256 _addedValue) public whenNotPaused returns (bool) {
  > |    allowed[msg.sender][_spender] = (allowed[msg.sender][_spender].add(_addedValue));
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x4ff7a2c476b1e775725bbbbd432ed2b523a203c8.sol(175)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenBase':
    |    uint256 oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x4ff7a2c476b1e775725bbbbd432ed2b523a203c8.sol(183)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenBase':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x4ff7a2c476b1e775725bbbbd432ed2b523a203c8.sol(185)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenBase':
    |
    |  function transferOwnership(address newOwner) onlyOwner external {
  > |    pendingOwner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4ff7a2c476b1e775725bbbbd432ed2b523a203c8.sol(62)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenBase':
    |    require(msg.sender == pendingOwner);
    |    emit OwnershipTransferred(owner, pendingOwner);
  > |    owner = pendingOwner;
    |    pendingOwner = address(0);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4ff7a2c476b1e775725bbbbd432ed2b523a203c8.sol(68)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenBase':
    |    emit OwnershipTransferred(owner, pendingOwner);
    |    owner = pendingOwner;
  > |    pendingOwner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4ff7a2c476b1e775725bbbbd432ed2b523a203c8.sol(69)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenBase':
    |
    |  function pause() onlyOwner whenNotPaused external {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4ff7a2c476b1e775725bbbbd432ed2b523a203c8.sol(93)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenBase':
    |
    |  function unpause() onlyOwner whenPaused external {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4ff7a2c476b1e775725bbbbd432ed2b523a203c8.sol(98)


