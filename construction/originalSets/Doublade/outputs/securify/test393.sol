Processing contract: /home/jiaming/mavs_srcs/contract@0x19bcf5962a8e85180d95efee47b5401d517d63cd.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x19bcf5962a8e85180d95efee47b5401d517d63cd.sol:ELIX
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x19bcf5962a8e85180d95efee47b5401d517d63cd.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x19bcf5962a8e85180d95efee47b5401d517d63cd.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x19bcf5962a8e85180d95efee47b5401d517d63cd.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x19bcf5962a8e85180d95efee47b5401d517d63cd.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x19bcf5962a8e85180d95efee47b5401d517d63cd.sol:PausableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x19bcf5962a8e85180d95efee47b5401d517d63cd.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x19bcf5962a8e85180d95efee47b5401d517d63cd.sol:StandardToken
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
  at /home/jiaming/mavs_srcs/contract@0x19bcf5962a8e85180d95efee47b5401d517d63cd.sol(49)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x19bcf5962a8e85180d95efee47b5401d517d63cd.sol(64)

[31mViolation[0m for LockedEther in contract 'ELIX':
    | * @dev Implementation of Elixer Token based on the basic standard token.
    | */
  > |contract ELIX is PausableToken {
    |    /**
    |    * Public variables of the token
  at /home/jiaming/mavs_srcs/contract@0x19bcf5962a8e85180d95efee47b5401d517d63cd.sol(291)

[31mViolation[0m for UnrestrictedWrite in contract 'ELIX':
    |  function batchFreeze(address[] addresses, bool freeze) onlyOwner public {
    |    for (uint i = 0; i < addresses.length; i++) {
  > |        frozenAccount[addresses[i]] = freeze;
    |        FrozenFunds(addresses[i], freeze);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x19bcf5962a8e85180d95efee47b5401d517d63cd.sol(280)

[31mViolation[0m for UnrestrictedWrite in contract 'ELIX':
    |     */
    |    function Elixer() {
  > |      totalSupply = 10000000000 * (10**(uint256(decimals)));
    |      balances[msg.sender] = totalSupply;    // Give the creator all initial tokens
    |    }
  at /home/jiaming/mavs_srcs/contract@0x19bcf5962a8e85180d95efee47b5401d517d63cd.sol(306)

[33mWarning[0m for UnrestrictedWrite in contract 'ELIX':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x19bcf5962a8e85180d95efee47b5401d517d63cd.sol(64)

[33mWarning[0m for UnrestrictedWrite in contract 'ELIX':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x19bcf5962a8e85180d95efee47b5401d517d63cd.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'ELIX':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x19bcf5962a8e85180d95efee47b5401d517d63cd.sol(133)

[33mWarning[0m for UnrestrictedWrite in contract 'ELIX':
    |    require(_value > 0 && balances[msg.sender] >= amount);
    |    
  > |    balances[msg.sender] = balances[msg.sender].sub(amount);
    |    for (uint i = 0; i < cnt; i++) {
    |        balances[_receivers[i]] = balances[_receivers[i]].add(_value);
  at /home/jiaming/mavs_srcs/contract@0x19bcf5962a8e85180d95efee47b5401d517d63cd.sol(265)

[33mWarning[0m for UnrestrictedWrite in contract 'ELIX':
    |    function Elixer() {
    |      totalSupply = 10000000000 * (10**(uint256(decimals)));
  > |      balances[msg.sender] = totalSupply;    // Give the creator all initial tokens
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x19bcf5962a8e85180d95efee47b5401d517d63cd.sol(307)

[33mWarning[0m for UnrestrictedWrite in contract 'ELIX':
    |        require(balances[msg.sender] >= amount);
    |
  > |        balances[msg.sender] = balances[msg.sender].sub(amount);
    |        for (uint i = 0; i < cnt; i++) {
    |            Transfer(msg.sender, _receivers[i], 1 ether);
  at /home/jiaming/mavs_srcs/contract@0x19bcf5962a8e85180d95efee47b5401d517d63cd.sol(316)

[33mWarning[0m for UnrestrictedWrite in contract 'ELIX':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x19bcf5962a8e85180d95efee47b5401d517d63cd.sol(186)

[33mWarning[0m for UnrestrictedWrite in contract 'ELIX':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x19bcf5962a8e85180d95efee47b5401d517d63cd.sol(222)

[33mWarning[0m for UnrestrictedWrite in contract 'ELIX':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x19bcf5962a8e85180d95efee47b5401d517d63cd.sol(230)

[33mWarning[0m for UnrestrictedWrite in contract 'ELIX':
    |  
    |  function freezeAccount(address target, bool freeze) onlyOwner public {
  > |    frozenAccount[target] = freeze;
    |    FrozenFunds(target, freeze);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x19bcf5962a8e85180d95efee47b5401d517d63cd.sol(274)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x19bcf5962a8e85180d95efee47b5401d517d63cd.sol(154)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x19bcf5962a8e85180d95efee47b5401d517d63cd.sol(155)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x19bcf5962a8e85180d95efee47b5401d517d63cd.sol(183)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x19bcf5962a8e85180d95efee47b5401d517d63cd.sol(186)

[33mWarning[0m for LockedEther in contract 'Pausable':
    | * @dev Base contract which allows children to implement an emergency stop mechanism.
    | */
  > |contract Pausable is Ownable {
    |  event Pause();
    |  event Unpause();
  at /home/jiaming/mavs_srcs/contract@0x19bcf5962a8e85180d95efee47b5401d517d63cd.sol(195)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x19bcf5962a8e85180d95efee47b5401d517d63cd.sol(155)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x19bcf5962a8e85180d95efee47b5401d517d63cd.sol(183)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  event Unpause();
    |
  > |  bool public paused = false;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x19bcf5962a8e85180d95efee47b5401d517d63cd.sol(199)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to pause, triggers stopped state
    |   */
  > |  function pause() onlyOwner whenNotPaused public {
    |    paused = true;
    |    Pause();
  at /home/jiaming/mavs_srcs/contract@0x19bcf5962a8e85180d95efee47b5401d517d63cd.sol(221)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to unpause, returns to normal state
    |   */
  > |  function unpause() onlyOwner whenPaused public {
    |    paused = false;
    |    Unpause();
  at /home/jiaming/mavs_srcs/contract@0x19bcf5962a8e85180d95efee47b5401d517d63cd.sol(229)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x19bcf5962a8e85180d95efee47b5401d517d63cd.sol(186)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x19bcf5962a8e85180d95efee47b5401d517d63cd.sol(222)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x19bcf5962a8e85180d95efee47b5401d517d63cd.sol(230)

[31mViolation[0m for LockedEther in contract 'PausableToken':
    | **/
    |
  > |contract PausableToken is StandardToken, Pausable {
    |  mapping (address => bool) public frozenAccount;
    |  event FrozenFunds(address target, bool frozen);
  at /home/jiaming/mavs_srcs/contract@0x19bcf5962a8e85180d95efee47b5401d517d63cd.sol(241)

[31mViolation[0m for UnrestrictedWrite in contract 'PausableToken':
    |  function batchFreeze(address[] addresses, bool freeze) onlyOwner public {
    |    for (uint i = 0; i < addresses.length; i++) {
  > |        frozenAccount[addresses[i]] = freeze;
    |        FrozenFunds(addresses[i], freeze);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x19bcf5962a8e85180d95efee47b5401d517d63cd.sol(280)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x19bcf5962a8e85180d95efee47b5401d517d63cd.sol(64)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x19bcf5962a8e85180d95efee47b5401d517d63cd.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x19bcf5962a8e85180d95efee47b5401d517d63cd.sol(133)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    require(_value > 0 && balances[msg.sender] >= amount);
    |    
  > |    balances[msg.sender] = balances[msg.sender].sub(amount);
    |    for (uint i = 0; i < cnt; i++) {
    |        balances[_receivers[i]] = balances[_receivers[i]].add(_value);
  at /home/jiaming/mavs_srcs/contract@0x19bcf5962a8e85180d95efee47b5401d517d63cd.sol(265)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x19bcf5962a8e85180d95efee47b5401d517d63cd.sol(186)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x19bcf5962a8e85180d95efee47b5401d517d63cd.sol(222)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x19bcf5962a8e85180d95efee47b5401d517d63cd.sol(230)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |  
    |  function freezeAccount(address target, bool freeze) onlyOwner public {
  > |    frozenAccount[target] = freeze;
    |    FrozenFunds(target, freeze);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x19bcf5962a8e85180d95efee47b5401d517d63cd.sol(274)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x19bcf5962a8e85180d95efee47b5401d517d63cd.sol(7)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0x19bcf5962a8e85180d95efee47b5401d517d63cd.sol(99)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x19bcf5962a8e85180d95efee47b5401d517d63cd.sol(64)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x19bcf5962a8e85180d95efee47b5401d517d63cd.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x19bcf5962a8e85180d95efee47b5401d517d63cd.sol(133)


