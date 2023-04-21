Processing contract: /home/jiaming/mavs_srcs/contract@0x41ff967f9f8ec58abf88ca1caa623b3fd6277191.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x41ff967f9f8ec58abf88ca1caa623b3fd6277191.sol:BurnableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x41ff967f9f8ec58abf88ca1caa623b3fd6277191.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x41ff967f9f8ec58abf88ca1caa623b3fd6277191.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x41ff967f9f8ec58abf88ca1caa623b3fd6277191.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x41ff967f9f8ec58abf88ca1caa623b3fd6277191.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x41ff967f9f8ec58abf88ca1caa623b3fd6277191.sol:SECToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x41ff967f9f8ec58abf88ca1caa623b3fd6277191.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x41ff967f9f8ec58abf88ca1caa623b3fd6277191.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    |}
    |
  > |contract BasicToken is ERC20Basic, Ownable {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x41ff967f9f8ec58abf88ca1caa623b3fd6277191.sol(114)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |  */
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x41ff967f9f8ec58abf88ca1caa623b3fd6277191.sol(125)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x41ff967f9f8ec58abf88ca1caa623b3fd6277191.sol(35)

[33mWarning[0m for LockedEther in contract 'BurnableToken':
    |}
    |
  > |contract BurnableToken is StandardToken, Pausable {
    |
    |    event Burn(address indexed burner, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0x41ff967f9f8ec58abf88ca1caa623b3fd6277191.sol(194)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |  */
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x41ff967f9f8ec58abf88ca1caa623b3fd6277191.sol(125)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x41ff967f9f8ec58abf88ca1caa623b3fd6277191.sol(159)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x41ff967f9f8ec58abf88ca1caa623b3fd6277191.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    function burn(uint256 _value) whenNotPaused public {
    |        require(_value > 0);
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        totalSupply = totalSupply.sub(_value);  // reduce total supply after burn
    |        Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x41ff967f9f8ec58abf88ca1caa623b3fd6277191.sol(212)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x41ff967f9f8ec58abf88ca1caa623b3fd6277191.sol(35)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |   */
    |  function pause() onlyOwner whenNotPaused returns (bool) {
  > |    paused = true;
    |    Pause();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x41ff967f9f8ec58abf88ca1caa623b3fd6277191.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |   */
    |  function unpause() onlyOwner whenPaused returns (bool) {
  > |    paused = false;
    |    Unpause();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x41ff967f9f8ec58abf88ca1caa623b3fd6277191.sol(75)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x41ff967f9f8ec58abf88ca1caa623b3fd6277191.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x41ff967f9f8ec58abf88ca1caa623b3fd6277191.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
    |      owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x41ff967f9f8ec58abf88ca1caa623b3fd6277191.sol(33)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x41ff967f9f8ec58abf88ca1caa623b3fd6277191.sol(35)

[33mWarning[0m for LockedEther in contract 'Pausable':
    |}
    |
  > |contract Pausable is Ownable {
    |  event Pause();
    |  event Unpause();
  at /home/jiaming/mavs_srcs/contract@0x41ff967f9f8ec58abf88ca1caa623b3fd6277191.sol(40)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x41ff967f9f8ec58abf88ca1caa623b3fd6277191.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
    |      owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x41ff967f9f8ec58abf88ca1caa623b3fd6277191.sol(33)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  event Unpause();
    |
  > |  bool public paused = false;
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x41ff967f9f8ec58abf88ca1caa623b3fd6277191.sol(44)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to pause, triggers stopped state
    |   */
  > |  function pause() onlyOwner whenNotPaused returns (bool) {
    |    paused = true;
    |    Pause();
  at /home/jiaming/mavs_srcs/contract@0x41ff967f9f8ec58abf88ca1caa623b3fd6277191.sol(65)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to unpause, returns to normal state
    |   */
  > |  function unpause() onlyOwner whenPaused returns (bool) {
    |    paused = false;
    |    Unpause();
  at /home/jiaming/mavs_srcs/contract@0x41ff967f9f8ec58abf88ca1caa623b3fd6277191.sol(74)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x41ff967f9f8ec58abf88ca1caa623b3fd6277191.sol(35)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function pause() onlyOwner whenNotPaused returns (bool) {
  > |    paused = true;
    |    Pause();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x41ff967f9f8ec58abf88ca1caa623b3fd6277191.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function unpause() onlyOwner whenPaused returns (bool) {
  > |    paused = false;
    |    Unpause();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x41ff967f9f8ec58abf88ca1caa623b3fd6277191.sol(75)

[31mViolation[0m for LockedEther in contract 'SECToken':
    |}
    |
  > |contract SECToken is BurnableToken {
    |
    |    string public constant symbol = "SEC";
  at /home/jiaming/mavs_srcs/contract@0x41ff967f9f8ec58abf88ca1caa623b3fd6277191.sol(218)

[31mViolation[0m for UnrestrictedWrite in contract 'SECToken':
    |}
    |
  > |contract SECToken is BurnableToken {
    |
    |    string public constant symbol = "SEC";
  at /home/jiaming/mavs_srcs/contract@0x41ff967f9f8ec58abf88ca1caa623b3fd6277191.sol(218)

[33mWarning[0m for UnrestrictedWrite in contract 'SECToken':
    |  */
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x41ff967f9f8ec58abf88ca1caa623b3fd6277191.sol(125)

[33mWarning[0m for UnrestrictedWrite in contract 'SECToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x41ff967f9f8ec58abf88ca1caa623b3fd6277191.sol(159)

[33mWarning[0m for UnrestrictedWrite in contract 'SECToken':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x41ff967f9f8ec58abf88ca1caa623b3fd6277191.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'SECToken':
    |    function burn(uint256 _value) whenNotPaused public {
    |        require(_value > 0);
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        totalSupply = totalSupply.sub(_value);  // reduce total supply after burn
    |        Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x41ff967f9f8ec58abf88ca1caa623b3fd6277191.sol(212)

[33mWarning[0m for UnrestrictedWrite in contract 'SECToken':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x41ff967f9f8ec58abf88ca1caa623b3fd6277191.sol(35)

[33mWarning[0m for UnrestrictedWrite in contract 'SECToken':
    |   */
    |  function pause() onlyOwner whenNotPaused returns (bool) {
  > |    paused = true;
    |    Pause();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x41ff967f9f8ec58abf88ca1caa623b3fd6277191.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'SECToken':
    |   */
    |  function unpause() onlyOwner whenPaused returns (bool) {
  > |    paused = false;
    |    Unpause();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x41ff967f9f8ec58abf88ca1caa623b3fd6277191.sol(75)

[33mWarning[0m for UnrestrictedWrite in contract 'SECToken':
    |}
    |
  > |contract SECToken is BurnableToken {
    |
    |    string public constant symbol = "SEC";
  at /home/jiaming/mavs_srcs/contract@0x41ff967f9f8ec58abf88ca1caa623b3fd6277191.sol(218)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |}
    |
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x41ff967f9f8ec58abf88ca1caa623b3fd6277191.sol(88)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) allowed;
  at /home/jiaming/mavs_srcs/contract@0x41ff967f9f8ec58abf88ca1caa623b3fd6277191.sol(141)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  */
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x41ff967f9f8ec58abf88ca1caa623b3fd6277191.sol(125)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x41ff967f9f8ec58abf88ca1caa623b3fd6277191.sol(159)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x41ff967f9f8ec58abf88ca1caa623b3fd6277191.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x41ff967f9f8ec58abf88ca1caa623b3fd6277191.sol(35)


