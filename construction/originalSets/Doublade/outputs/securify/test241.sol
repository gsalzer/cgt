Processing contract: /home/jiaming/mavs_srcs/contract@0x10c96243ece921bcd2481767f14e4910ef7494a4.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x10c96243ece921bcd2481767f14e4910ef7494a4.sol:CNYTokenPlus
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x10c96243ece921bcd2481767f14e4910ef7494a4.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x10c96243ece921bcd2481767f14e4910ef7494a4.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x10c96243ece921bcd2481767f14e4910ef7494a4.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x10c96243ece921bcd2481767f14e4910ef7494a4.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x10c96243ece921bcd2481767f14e4910ef7494a4.sol:PausableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x10c96243ece921bcd2481767f14e4910ef7494a4.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x10c96243ece921bcd2481767f14e4910ef7494a4.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x10c96243ece921bcd2481767f14e4910ef7494a4.sol:TokenTimelock
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    | * @dev Basic version of StandardToken, with no allowances.
    | */
  > |contract BasicToken is ERC20Basic {
    |  using SafeMath for uint;
    |
  at /home/jiaming/mavs_srcs/contract@0x10c96243ece921bcd2481767f14e4910ef7494a4.sol(68)

[31mViolation[0m for UnrestrictedWrite in contract 'BasicToken':
    |    require(_to != 0x0);
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x10c96243ece921bcd2481767f14e4910ef7494a4.sol(91)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |  function transfer(address _to, uint _value) onlyPayloadSize(2 * 32) {
    |    require(_to != 0x0);
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x10c96243ece921bcd2481767f14e4910ef7494a4.sol(90)

[33mWarning[0m for LockedEther in contract 'CNYTokenPlus':
    | * @dev CNY Token Plus contract
    | */
  > |contract CNYTokenPlus is PausableToken {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x10c96243ece921bcd2481767f14e4910ef7494a4.sol(314)

[33mWarning[0m for UnhandledException in contract 'CNYTokenPlus':
    |      bytes memory prefix = "\x19Ethereum Signed Message:\n32";
    |      bytes32 prefixedHash = keccak256(prefix, hash);
  > |      require(_from == ecrecover(prefixedHash,_v,_r,_s));
    |
    |      balances[_from] = balances[_from].sub(_value.add(_fee));
  at /home/jiaming/mavs_srcs/contract@0x10c96243ece921bcd2481767f14e4910ef7494a4.sol(392)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CNYTokenPlus':
    |      bytes memory prefix = "\x19Ethereum Signed Message:\n32";
    |      bytes32 prefixedHash = keccak256(prefix, hash);
  > |      require(_from == ecrecover(prefixedHash,_v,_r,_s));
    |
    |      balances[_from] = balances[_from].sub(_value.add(_fee));
  at /home/jiaming/mavs_srcs/contract@0x10c96243ece921bcd2481767f14e4910ef7494a4.sol(392)

[33mWarning[0m for UnrestrictedWrite in contract 'CNYTokenPlus':
    |  function transfer(address _to, uint _value) onlyPayloadSize(2 * 32) {
    |    require(_to != 0x0);
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x10c96243ece921bcd2481767f14e4910ef7494a4.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'CNYTokenPlus':
    |    require(_to != 0x0);
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x10c96243ece921bcd2481767f14e4910ef7494a4.sol(91)

[33mWarning[0m for UnrestrictedWrite in contract 'CNYTokenPlus':
    |    // if (_value > _allowance) revert();
    |
  > |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x10c96243ece921bcd2481767f14e4910ef7494a4.sol(140)

[33mWarning[0m for UnrestrictedWrite in contract 'CNYTokenPlus':
    |
    |    balances[_to] = balances[_to].add(_value);
  > |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x10c96243ece921bcd2481767f14e4910ef7494a4.sol(141)

[33mWarning[0m for UnrestrictedWrite in contract 'CNYTokenPlus':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    emit Transfer(_from, _to, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x10c96243ece921bcd2481767f14e4910ef7494a4.sol(142)

[33mWarning[0m for UnrestrictedWrite in contract 'CNYTokenPlus':
    |    if ((_value != 0) && (allowed[msg.sender][_spender] != 0)) revert();
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x10c96243ece921bcd2481767f14e4910ef7494a4.sol(159)

[33mWarning[0m for UnrestrictedWrite in contract 'CNYTokenPlus':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x10c96243ece921bcd2481767f14e4910ef7494a4.sol(205)

[33mWarning[0m for UnrestrictedWrite in contract 'CNYTokenPlus':
    |   */
    |  function pause() onlyOwner whenNotPaused returns (bool) {
  > |    paused = true;
    |    emit Pause();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x10c96243ece921bcd2481767f14e4910ef7494a4.sol(240)

[33mWarning[0m for UnrestrictedWrite in contract 'CNYTokenPlus':
    |   */
    |  function unpause() onlyOwner whenPaused returns (bool) {
  > |    paused = false;
    |    emit Unpause();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x10c96243ece921bcd2481767f14e4910ef7494a4.sol(249)

[33mWarning[0m for UnrestrictedWrite in contract 'CNYTokenPlus':
    |    // sender's balance is greater than the totalSupply, which *should* be an assertion failure
    |
  > |    balances[_who] = balances[_who].sub(_value);
    |    totalSupply = totalSupply.sub(_value);
    |    emit Burn(_who, _value);
  at /home/jiaming/mavs_srcs/contract@0x10c96243ece921bcd2481767f14e4910ef7494a4.sol(363)

[33mWarning[0m for UnrestrictedWrite in contract 'CNYTokenPlus':
    |
    |    balances[_who] = balances[_who].sub(_value);
  > |    totalSupply = totalSupply.sub(_value);
    |    emit Burn(_who, _value);
    |    emit Transfer(_who, address(0), _value);
  at /home/jiaming/mavs_srcs/contract@0x10c96243ece921bcd2481767f14e4910ef7494a4.sol(364)

[33mWarning[0m for UnrestrictedWrite in contract 'CNYTokenPlus':
    |      require(_from == ecrecover(prefixedHash,_v,_r,_s));
    |
  > |      balances[_from] = balances[_from].sub(_value.add(_fee));
    |      balances[_to] = balances[_to].add(_value);
    |      balances[msg.sender] = balances[msg.sender].add(_fee);
  at /home/jiaming/mavs_srcs/contract@0x10c96243ece921bcd2481767f14e4910ef7494a4.sol(394)

[33mWarning[0m for UnrestrictedWrite in contract 'CNYTokenPlus':
    |
    |      balances[_from] = balances[_from].sub(_value.add(_fee));
  > |      balances[_to] = balances[_to].add(_value);
    |      balances[msg.sender] = balances[msg.sender].add(_fee);
    |      nonces[_from] = nonce.add(1);
  at /home/jiaming/mavs_srcs/contract@0x10c96243ece921bcd2481767f14e4910ef7494a4.sol(395)

[33mWarning[0m for UnrestrictedWrite in contract 'CNYTokenPlus':
    |      balances[_from] = balances[_from].sub(_value.add(_fee));
    |      balances[_to] = balances[_to].add(_value);
  > |      balances[msg.sender] = balances[msg.sender].add(_fee);
    |      nonces[_from] = nonce.add(1);
    |
  at /home/jiaming/mavs_srcs/contract@0x10c96243ece921bcd2481767f14e4910ef7494a4.sol(396)

[33mWarning[0m for UnrestrictedWrite in contract 'CNYTokenPlus':
    |      balances[_to] = balances[_to].add(_value);
    |      balances[msg.sender] = balances[msg.sender].add(_fee);
  > |      nonces[_from] = nonce.add(1);
    |
    |      emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x10c96243ece921bcd2481767f14e4910ef7494a4.sol(397)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x10c96243ece921bcd2481767f14e4910ef7494a4.sol(179)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |  /**
    |   * @dev The Ownable constructor sets the original `owner` of the contract to the sender
  at /home/jiaming/mavs_srcs/contract@0x10c96243ece921bcd2481767f14e4910ef7494a4.sol(180)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
    |      owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x10c96243ece921bcd2481767f14e4910ef7494a4.sol(203)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x10c96243ece921bcd2481767f14e4910ef7494a4.sol(205)

[33mWarning[0m for LockedEther in contract 'Pausable':
    | * @dev Base contract which allows children to implement an emergency stop mechanism.
    | */
  > |contract Pausable is Ownable {
    |  event Pause();
    |  event Unpause();
  at /home/jiaming/mavs_srcs/contract@0x10c96243ece921bcd2481767f14e4910ef7494a4.sol(214)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    | */
    |contract Ownable {
  > |  address public owner;
    |  /**
    |   * @dev The Ownable constructor sets the original `owner` of the contract to the sender
  at /home/jiaming/mavs_srcs/contract@0x10c96243ece921bcd2481767f14e4910ef7494a4.sol(180)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
    |      owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x10c96243ece921bcd2481767f14e4910ef7494a4.sol(203)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  event Unpause();
    |
  > |  bool public paused = false;
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x10c96243ece921bcd2481767f14e4910ef7494a4.sol(218)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to pause, triggers stopped state
    |   */
  > |  function pause() onlyOwner whenNotPaused returns (bool) {
    |    paused = true;
    |    emit Pause();
  at /home/jiaming/mavs_srcs/contract@0x10c96243ece921bcd2481767f14e4910ef7494a4.sol(239)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to unpause, returns to normal state
    |   */
  > |  function unpause() onlyOwner whenPaused returns (bool) {
    |    paused = false;
    |    emit Unpause();
  at /home/jiaming/mavs_srcs/contract@0x10c96243ece921bcd2481767f14e4910ef7494a4.sol(248)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x10c96243ece921bcd2481767f14e4910ef7494a4.sol(205)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function pause() onlyOwner whenNotPaused returns (bool) {
  > |    paused = true;
    |    emit Pause();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x10c96243ece921bcd2481767f14e4910ef7494a4.sol(240)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function unpause() onlyOwner whenPaused returns (bool) {
  > |    paused = false;
    |    emit Unpause();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x10c96243ece921bcd2481767f14e4910ef7494a4.sol(249)

[33mWarning[0m for LockedEther in contract 'PausableToken':
    | **/
    |
  > |contract PausableToken is StandardToken, Pausable {
    |
    |  function transfer(address _to, uint _value) whenNotPaused {
  at /home/jiaming/mavs_srcs/contract@0x10c96243ece921bcd2481767f14e4910ef7494a4.sol(262)

[31mViolation[0m for UnrestrictedWrite in contract 'PausableToken':
    |    require(_to != 0x0);
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x10c96243ece921bcd2481767f14e4910ef7494a4.sol(91)

[31mViolation[0m for UnrestrictedWrite in contract 'PausableToken':
    |    // if (_value > _allowance) revert();
    |
  > |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x10c96243ece921bcd2481767f14e4910ef7494a4.sol(140)

[31mViolation[0m for UnrestrictedWrite in contract 'PausableToken':
    |
    |    balances[_to] = balances[_to].add(_value);
  > |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x10c96243ece921bcd2481767f14e4910ef7494a4.sol(141)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |  function transfer(address _to, uint _value) onlyPayloadSize(2 * 32) {
    |    require(_to != 0x0);
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x10c96243ece921bcd2481767f14e4910ef7494a4.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    emit Transfer(_from, _to, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x10c96243ece921bcd2481767f14e4910ef7494a4.sol(142)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    if ((_value != 0) && (allowed[msg.sender][_spender] != 0)) revert();
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x10c96243ece921bcd2481767f14e4910ef7494a4.sol(159)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x10c96243ece921bcd2481767f14e4910ef7494a4.sol(205)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |   */
    |  function pause() onlyOwner whenNotPaused returns (bool) {
  > |    paused = true;
    |    emit Pause();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x10c96243ece921bcd2481767f14e4910ef7494a4.sol(240)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |   */
    |  function unpause() onlyOwner whenPaused returns (bool) {
  > |    paused = false;
    |    emit Unpause();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x10c96243ece921bcd2481767f14e4910ef7494a4.sol(249)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * Math operations with safety checks
    | */
  > | library SafeMath {
    |   /**
    |   * @dev Multiplies two numbers, revert()s on overflow.
  at /home/jiaming/mavs_srcs/contract@0x10c96243ece921bcd2481767f14e4910ef7494a4.sol(6)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is BasicToken, ERC20 {
    |
    |  mapping (address => mapping (address => uint)) allowed;
  at /home/jiaming/mavs_srcs/contract@0x10c96243ece921bcd2481767f14e4910ef7494a4.sol(123)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require(_to != 0x0);
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x10c96243ece921bcd2481767f14e4910ef7494a4.sol(91)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |    // if (_value > _allowance) revert();
    |
  > |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x10c96243ece921bcd2481767f14e4910ef7494a4.sol(140)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    balances[_to] = balances[_to].add(_value);
  > |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x10c96243ece921bcd2481767f14e4910ef7494a4.sol(141)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  function transfer(address _to, uint _value) onlyPayloadSize(2 * 32) {
    |    require(_to != 0x0);
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x10c96243ece921bcd2481767f14e4910ef7494a4.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    emit Transfer(_from, _to, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x10c96243ece921bcd2481767f14e4910ef7494a4.sol(142)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    if ((_value != 0) && (allowed[msg.sender][_spender] != 0)) revert();
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x10c96243ece921bcd2481767f14e4910ef7494a4.sol(159)

[33mWarning[0m for LockedEther in contract 'TokenTimelock':
    | * beneficiary to extract the tokens after a time has passed
    | */
  > |contract TokenTimelock {
    |
    |  // ERC20 basic token contract being held
  at /home/jiaming/mavs_srcs/contract@0x10c96243ece921bcd2481767f14e4910ef7494a4.sol(278)

[33mWarning[0m for MissingInputValidation in contract 'TokenTimelock':
    |   * @dev beneficiary claims tokens held by time lock
    |   */
  > |  function claim() {
    |    require(msg.sender == beneficiary);
    |    require(now >= releaseTime);
  at /home/jiaming/mavs_srcs/contract@0x10c96243ece921bcd2481767f14e4910ef7494a4.sol(299)

[33mWarning[0m for UnhandledException in contract 'TokenTimelock':
    |    require(now >= releaseTime);
    |
  > |    uint amount = token.balanceOf(this);
    |    require(amount > 0);
    |
  at /home/jiaming/mavs_srcs/contract@0x10c96243ece921bcd2481767f14e4910ef7494a4.sol(303)

[33mWarning[0m for UnhandledException in contract 'TokenTimelock':
    |    require(amount > 0);
    |
  > |    token.transfer(beneficiary, amount);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x10c96243ece921bcd2481767f14e4910ef7494a4.sol(306)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenTimelock':
    |    require(now >= releaseTime);
    |
  > |    uint amount = token.balanceOf(this);
    |    require(amount > 0);
    |
  at /home/jiaming/mavs_srcs/contract@0x10c96243ece921bcd2481767f14e4910ef7494a4.sol(303)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenTimelock':
    |    require(amount > 0);
    |
  > |    token.transfer(beneficiary, amount);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x10c96243ece921bcd2481767f14e4910ef7494a4.sol(306)


