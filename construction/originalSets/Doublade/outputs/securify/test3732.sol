Processing contract: /home/jiaming/mavs_srcs/contract@0xf4c07b1865bc326a3c01339492ca7538fd038cc0.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf4c07b1865bc326a3c01339492ca7538fd038cc0.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xf4c07b1865bc326a3c01339492ca7538fd038cc0.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xf4c07b1865bc326a3c01339492ca7538fd038cc0.sol:HasNoEther
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf4c07b1865bc326a3c01339492ca7538fd038cc0.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf4c07b1865bc326a3c01339492ca7538fd038cc0.sol:PBToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf4c07b1865bc326a3c01339492ca7538fd038cc0.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf4c07b1865bc326a3c01339492ca7538fd038cc0.sol:PausableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf4c07b1865bc326a3c01339492ca7538fd038cc0.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf4c07b1865bc326a3c01339492ca7538fd038cc0.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    |}
    |
  > |contract BasicToken is ERC20Basic {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xf4c07b1865bc326a3c01339492ca7538fd038cc0.sol(154)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xf4c07b1865bc326a3c01339492ca7538fd038cc0.sol(178)

[33mWarning[0m for DAOConstantGas in contract 'HasNoEther':
    |   */
    |  function reclaimEther() external onlyOwner {
  > |    assert(owner.send(this.balance));
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xf4c07b1865bc326a3c01339492ca7538fd038cc0.sol(143)

[33mWarning[0m for LockedEther in contract 'HasNoEther':
    |}
    |
  > |contract HasNoEther is Ownable {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xf4c07b1865bc326a3c01339492ca7538fd038cc0.sol(120)

[33mWarning[0m for MissingInputValidation in contract 'HasNoEther':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xf4c07b1865bc326a3c01339492ca7538fd038cc0.sol(46)

[33mWarning[0m for MissingInputValidation in contract 'HasNoEther':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xf4c07b1865bc326a3c01339492ca7538fd038cc0.sol(72)

[33mWarning[0m for MissingInputValidation in contract 'HasNoEther':
    |   * @dev Transfer all Ether held by the contract to the owner.
    |   */
  > |  function reclaimEther() external onlyOwner {
    |    assert(owner.send(this.balance));
    |  }
  at /home/jiaming/mavs_srcs/contract@0xf4c07b1865bc326a3c01339492ca7538fd038cc0.sol(142)

[31mViolation[0m for TODAmount in contract 'HasNoEther':
    |   */
    |  function reclaimEther() external onlyOwner {
  > |    assert(owner.send(this.balance));
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xf4c07b1865bc326a3c01339492ca7538fd038cc0.sol(143)

[31mViolation[0m for TODReceiver in contract 'HasNoEther':
    |   */
    |  function reclaimEther() external onlyOwner {
  > |    assert(owner.send(this.balance));
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xf4c07b1865bc326a3c01339492ca7538fd038cc0.sol(143)

[33mWarning[0m for UnhandledException in contract 'HasNoEther':
    |   */
    |  function reclaimEther() external onlyOwner {
  > |    assert(owner.send(this.balance));
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xf4c07b1865bc326a3c01339492ca7538fd038cc0.sol(143)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HasNoEther':
    |   */
    |  function reclaimEther() external onlyOwner {
  > |    assert(owner.send(this.balance));
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xf4c07b1865bc326a3c01339492ca7538fd038cc0.sol(143)

[33mWarning[0m for UnrestrictedWrite in contract 'HasNoEther':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xf4c07b1865bc326a3c01339492ca7538fd038cc0.sol(75)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xf4c07b1865bc326a3c01339492ca7538fd038cc0.sol(45)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xf4c07b1865bc326a3c01339492ca7538fd038cc0.sol(46)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xf4c07b1865bc326a3c01339492ca7538fd038cc0.sol(72)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xf4c07b1865bc326a3c01339492ca7538fd038cc0.sol(75)

[33mWarning[0m for DAOConstantGas in contract 'PBToken':
    |   */
    |  function reclaimEther() external onlyOwner {
  > |    assert(owner.send(this.balance));
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xf4c07b1865bc326a3c01339492ca7538fd038cc0.sol(143)

[33mWarning[0m for LockedEther in contract 'PBToken':
    |}
    |
  > |contract PBToken is PausableToken, HasNoEther {
    |  string public name = "Primalbase Token";
    |  string public symbol = "PBT";
  at /home/jiaming/mavs_srcs/contract@0xf4c07b1865bc326a3c01339492ca7538fd038cc0.sol(313)

[31mViolation[0m for TODAmount in contract 'PBToken':
    |   */
    |  function reclaimEther() external onlyOwner {
  > |    assert(owner.send(this.balance));
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xf4c07b1865bc326a3c01339492ca7538fd038cc0.sol(143)

[31mViolation[0m for TODReceiver in contract 'PBToken':
    |   */
    |  function reclaimEther() external onlyOwner {
  > |    assert(owner.send(this.balance));
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xf4c07b1865bc326a3c01339492ca7538fd038cc0.sol(143)

[33mWarning[0m for UnhandledException in contract 'PBToken':
    |   */
    |  function reclaimEther() external onlyOwner {
  > |    assert(owner.send(this.balance));
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xf4c07b1865bc326a3c01339492ca7538fd038cc0.sol(143)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PBToken':
    |   */
    |  function reclaimEther() external onlyOwner {
  > |    assert(owner.send(this.balance));
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xf4c07b1865bc326a3c01339492ca7538fd038cc0.sol(143)

[33mWarning[0m for UnrestrictedWrite in contract 'PBToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xf4c07b1865bc326a3c01339492ca7538fd038cc0.sol(178)

[33mWarning[0m for UnrestrictedWrite in contract 'PBToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xf4c07b1865bc326a3c01339492ca7538fd038cc0.sol(220)

[33mWarning[0m for UnrestrictedWrite in contract 'PBToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xf4c07b1865bc326a3c01339492ca7538fd038cc0.sol(236)

[33mWarning[0m for UnrestrictedWrite in contract 'PBToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xf4c07b1865bc326a3c01339492ca7538fd038cc0.sol(262)

[33mWarning[0m for UnrestrictedWrite in contract 'PBToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xf4c07b1865bc326a3c01339492ca7538fd038cc0.sol(280)

[33mWarning[0m for UnrestrictedWrite in contract 'PBToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xf4c07b1865bc326a3c01339492ca7538fd038cc0.sol(282)

[33mWarning[0m for UnrestrictedWrite in contract 'PBToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xf4c07b1865bc326a3c01339492ca7538fd038cc0.sol(75)

[33mWarning[0m for UnrestrictedWrite in contract 'PBToken':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xf4c07b1865bc326a3c01339492ca7538fd038cc0.sol(107)

[33mWarning[0m for UnrestrictedWrite in contract 'PBToken':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xf4c07b1865bc326a3c01339492ca7538fd038cc0.sol(115)

[33mWarning[0m for LockedEther in contract 'Pausable':
    |}
    |
  > |contract Pausable is Ownable {
    |  event Pause();
    |  event Unpause();
  at /home/jiaming/mavs_srcs/contract@0xf4c07b1865bc326a3c01339492ca7538fd038cc0.sol(80)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xf4c07b1865bc326a3c01339492ca7538fd038cc0.sol(46)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xf4c07b1865bc326a3c01339492ca7538fd038cc0.sol(72)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  event Unpause();
    |
  > |  bool public paused = false;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xf4c07b1865bc326a3c01339492ca7538fd038cc0.sol(84)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to pause, triggers stopped state
    |   */
  > |  function pause() onlyOwner whenNotPaused public {
    |    paused = true;
    |    Pause();
  at /home/jiaming/mavs_srcs/contract@0xf4c07b1865bc326a3c01339492ca7538fd038cc0.sol(106)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to unpause, returns to normal state
    |   */
  > |  function unpause() onlyOwner whenPaused public {
    |    paused = false;
    |    Unpause();
  at /home/jiaming/mavs_srcs/contract@0xf4c07b1865bc326a3c01339492ca7538fd038cc0.sol(114)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xf4c07b1865bc326a3c01339492ca7538fd038cc0.sol(75)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xf4c07b1865bc326a3c01339492ca7538fd038cc0.sol(107)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xf4c07b1865bc326a3c01339492ca7538fd038cc0.sol(115)

[33mWarning[0m for LockedEther in contract 'PausableToken':
    |}
    |
  > |contract PausableToken is StandardToken, Pausable {
    |
    |  function transfer(address _to, uint256 _value) public whenNotPaused returns (bool) {
  at /home/jiaming/mavs_srcs/contract@0xf4c07b1865bc326a3c01339492ca7538fd038cc0.sol(290)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xf4c07b1865bc326a3c01339492ca7538fd038cc0.sol(178)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xf4c07b1865bc326a3c01339492ca7538fd038cc0.sol(220)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xf4c07b1865bc326a3c01339492ca7538fd038cc0.sol(236)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xf4c07b1865bc326a3c01339492ca7538fd038cc0.sol(262)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xf4c07b1865bc326a3c01339492ca7538fd038cc0.sol(280)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xf4c07b1865bc326a3c01339492ca7538fd038cc0.sol(282)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xf4c07b1865bc326a3c01339492ca7538fd038cc0.sol(75)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xf4c07b1865bc326a3c01339492ca7538fd038cc0.sol(107)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xf4c07b1865bc326a3c01339492ca7538fd038cc0.sol(115)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.13;
    |
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xf4c07b1865bc326a3c01339492ca7538fd038cc0.sol(3)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0xf4c07b1865bc326a3c01339492ca7538fd038cc0.sol(202)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xf4c07b1865bc326a3c01339492ca7538fd038cc0.sol(178)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xf4c07b1865bc326a3c01339492ca7538fd038cc0.sol(220)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xf4c07b1865bc326a3c01339492ca7538fd038cc0.sol(236)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xf4c07b1865bc326a3c01339492ca7538fd038cc0.sol(262)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xf4c07b1865bc326a3c01339492ca7538fd038cc0.sol(280)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xf4c07b1865bc326a3c01339492ca7538fd038cc0.sol(282)


