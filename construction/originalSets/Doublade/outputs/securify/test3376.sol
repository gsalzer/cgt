Processing contract: /home/jiaming/mavs_srcs/contract@0xdd92a257d279c99579aad35b544285fa42d563bd.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xdd92a257d279c99579aad35b544285fa42d563bd.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xdd92a257d279c99579aad35b544285fa42d563bd.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xdd92a257d279c99579aad35b544285fa42d563bd.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xdd92a257d279c99579aad35b544285fa42d563bd.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xdd92a257d279c99579aad35b544285fa42d563bd.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xdd92a257d279c99579aad35b544285fa42d563bd.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xdd92a257d279c99579aad35b544285fa42d563bd.sol:Stars
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xdd92a257d279c99579aad35b544285fa42d563bd.sol:StarsICO
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    |
    |
  > |contract BasicToken is ERC20Basic {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xdd92a257d279c99579aad35b544285fa42d563bd.sol(39)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |  */
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xdd92a257d279c99579aad35b544285fa42d563bd.sol(50)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |
    |
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xdd92a257d279c99579aad35b544285fa42d563bd.sol(148)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xdd92a257d279c99579aad35b544285fa42d563bd.sol(149)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
    |      owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0xdd92a257d279c99579aad35b544285fa42d563bd.sol(174)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xdd92a257d279c99579aad35b544285fa42d563bd.sol(176)

[33mWarning[0m for LockedEther in contract 'Pausable':
    |
    |
  > |contract Pausable is Ownable {
    |  event Pause();
    |  event Unpause();
  at /home/jiaming/mavs_srcs/contract@0xdd92a257d279c99579aad35b544285fa42d563bd.sol(183)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xdd92a257d279c99579aad35b544285fa42d563bd.sol(149)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
    |      owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0xdd92a257d279c99579aad35b544285fa42d563bd.sol(174)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  event Unpause();
    |
  > |  bool public paused = false;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xdd92a257d279c99579aad35b544285fa42d563bd.sol(187)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to pause, triggers stopped state
    |   */
  > |  function pause() onlyOwner whenNotPaused returns (bool) {
    |    paused = true;
    |    Pause();
  at /home/jiaming/mavs_srcs/contract@0xdd92a257d279c99579aad35b544285fa42d563bd.sol(209)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to unpause, returns to normal state
    |   */
  > |  function unpause() onlyOwner whenPaused returns (bool) {
    |    paused = false;
    |    Unpause();
  at /home/jiaming/mavs_srcs/contract@0xdd92a257d279c99579aad35b544285fa42d563bd.sol(218)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xdd92a257d279c99579aad35b544285fa42d563bd.sol(176)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function pause() onlyOwner whenNotPaused returns (bool) {
  > |    paused = true;
    |    Pause();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xdd92a257d279c99579aad35b544285fa42d563bd.sol(210)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function unpause() onlyOwner whenPaused returns (bool) {
  > |    paused = false;
    |    Unpause();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xdd92a257d279c99579aad35b544285fa42d563bd.sol(219)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |
    |
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xdd92a257d279c99579aad35b544285fa42d563bd.sol(4)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |
    |
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) allowed;
  at /home/jiaming/mavs_srcs/contract@0xdd92a257d279c99579aad35b544285fa42d563bd.sol(76)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  */
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xdd92a257d279c99579aad35b544285fa42d563bd.sol(50)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xdd92a257d279c99579aad35b544285fa42d563bd.sol(95)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xdd92a257d279c99579aad35b544285fa42d563bd.sol(113)

[33mWarning[0m for LockedEther in contract 'Stars':
    |
    |
  > |contract Stars is StandardToken {
    |
    |  string public name = "Stars";
  at /home/jiaming/mavs_srcs/contract@0xdd92a257d279c99579aad35b544285fa42d563bd.sol(131)

[33mWarning[0m for UnrestrictedWrite in contract 'Stars':
    |  */
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xdd92a257d279c99579aad35b544285fa42d563bd.sol(50)

[33mWarning[0m for UnrestrictedWrite in contract 'Stars':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xdd92a257d279c99579aad35b544285fa42d563bd.sol(95)

[33mWarning[0m for UnrestrictedWrite in contract 'Stars':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xdd92a257d279c99579aad35b544285fa42d563bd.sol(113)

[31mViolation[0m for DAOConstantGas in contract 'StarsICO':
    |    uint256 tokens = convertWeiToTokens(weiAmount);
    |
  > |    wallet_address.transfer(msg.value);
    |    Stars tok = Stars(token_address);
    |    if (tok.transferFrom(wallet_address, beneficiary, tokens)) {
  at /home/jiaming/mavs_srcs/contract@0xdd92a257d279c99579aad35b544285fa42d563bd.sol(295)

[33mWarning[0m for LockedEther in contract 'StarsICO':
    |
    |
  > |contract StarsICO is Pausable {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xdd92a257d279c99579aad35b544285fa42d563bd.sol(226)

[33mWarning[0m for UnhandledException in contract 'StarsICO':
    |    uint256 tokens = convertWeiToTokens(weiAmount);
    |
  > |    wallet_address.transfer(msg.value);
    |    Stars tok = Stars(token_address);
    |    if (tok.transferFrom(wallet_address, beneficiary, tokens)) {
  at /home/jiaming/mavs_srcs/contract@0xdd92a257d279c99579aad35b544285fa42d563bd.sol(295)

[33mWarning[0m for UnhandledException in contract 'StarsICO':
    |    wallet_address.transfer(msg.value);
    |    Stars tok = Stars(token_address);
  > |    if (tok.transferFrom(wallet_address, beneficiary, tokens)) {
    |      // update state
    |      weiRaised = weiRaised.add(weiAmount);
  at /home/jiaming/mavs_srcs/contract@0xdd92a257d279c99579aad35b544285fa42d563bd.sol(297)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StarsICO':
    |    uint256 tokens = convertWeiToTokens(weiAmount);
    |
  > |    wallet_address.transfer(msg.value);
    |    Stars tok = Stars(token_address);
    |    if (tok.transferFrom(wallet_address, beneficiary, tokens)) {
  at /home/jiaming/mavs_srcs/contract@0xdd92a257d279c99579aad35b544285fa42d563bd.sol(295)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StarsICO':
    |    wallet_address.transfer(msg.value);
    |    Stars tok = Stars(token_address);
  > |    if (tok.transferFrom(wallet_address, beneficiary, tokens)) {
    |      // update state
    |      weiRaised = weiRaised.add(weiAmount);
  at /home/jiaming/mavs_srcs/contract@0xdd92a257d279c99579aad35b544285fa42d563bd.sol(297)

[33mWarning[0m for UnrestrictedWrite in contract 'StarsICO':
    |    if (tok.transferFrom(wallet_address, beneficiary, tokens)) {
    |      // update state
  > |      weiRaised = weiRaised.add(weiAmount);
    |      tokensSold = tokensSold.add(tokens);
    |      TokenPurchase(beneficiary, beneficiary, weiAmount, tokens);
  at /home/jiaming/mavs_srcs/contract@0xdd92a257d279c99579aad35b544285fa42d563bd.sol(299)

[33mWarning[0m for UnrestrictedWrite in contract 'StarsICO':
    |      // update state
    |      weiRaised = weiRaised.add(weiAmount);
  > |      tokensSold = tokensSold.add(tokens);
    |      TokenPurchase(beneficiary, beneficiary, weiAmount, tokens);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdd92a257d279c99579aad35b544285fa42d563bd.sol(300)

[33mWarning[0m for UnrestrictedWrite in contract 'StarsICO':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xdd92a257d279c99579aad35b544285fa42d563bd.sol(176)

[33mWarning[0m for UnrestrictedWrite in contract 'StarsICO':
    |   */
    |  function pause() onlyOwner whenNotPaused returns (bool) {
  > |    paused = true;
    |    Pause();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xdd92a257d279c99579aad35b544285fa42d563bd.sol(210)

[33mWarning[0m for UnrestrictedWrite in contract 'StarsICO':
    |   */
    |  function unpause() onlyOwner whenPaused returns (bool) {
  > |    paused = false;
    |    Unpause();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xdd92a257d279c99579aad35b544285fa42d563bd.sol(219)


