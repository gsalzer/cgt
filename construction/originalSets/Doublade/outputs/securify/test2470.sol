Processing contract: /home/jiaming/mavs_srcs/contract@0xa143981f3ec758296a1575146eab03ef047b7e40.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa143981f3ec758296a1575146eab03ef047b7e40.sol:BurnableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa143981f3ec758296a1575146eab03ef047b7e40.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xa143981f3ec758296a1575146eab03ef047b7e40.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xa143981f3ec758296a1575146eab03ef047b7e40.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa143981f3ec758296a1575146eab03ef047b7e40.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa143981f3ec758296a1575146eab03ef047b7e40.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa143981f3ec758296a1575146eab03ef047b7e40.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa143981f3ec758296a1575146eab03ef047b7e40.sol:WTFToken
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
  at /home/jiaming/mavs_srcs/contract@0xa143981f3ec758296a1575146eab03ef047b7e40.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |  */
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xa143981f3ec758296a1575146eab03ef047b7e40.sol(71)

[33mWarning[0m for LockedEther in contract 'BurnableToken':
    | * @dev Token that can be irreversibly burned (destroyed).
    | */
  > |contract BurnableToken is StandardToken {
    | 
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xa143981f3ec758296a1575146eab03ef047b7e40.sol(238)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |  */
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xa143981f3ec758296a1575146eab03ef047b7e40.sol(71)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |  function transfer(address _to, uint256 _value) returns (bool) {
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa143981f3ec758296a1575146eab03ef047b7e40.sol(72)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    // require (_value <= _allowance);
    |
  > |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xa143981f3ec758296a1575146eab03ef047b7e40.sol(112)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |    balances[_to] = balances[_to].add(_value);
  > |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xa143981f3ec758296a1575146eab03ef047b7e40.sol(113)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa143981f3ec758296a1575146eab03ef047b7e40.sol(114)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa143981f3ec758296a1575146eab03ef047b7e40.sol(132)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    require(_value > 0);
    |    address burner = msg.sender;
  > |    balances[burner] = balances[burner].sub(_value);
    |    totalSupply = totalSupply.sub(_value);
    |    Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0xa143981f3ec758296a1575146eab03ef047b7e40.sol(247)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    address burner = msg.sender;
    |    balances[burner] = balances[burner].sub(_value);
  > |    totalSupply = totalSupply.sub(_value);
    |    Burn(burner, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa143981f3ec758296a1575146eab03ef047b7e40.sol(248)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xa143981f3ec758296a1575146eab03ef047b7e40.sol(154)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xa143981f3ec758296a1575146eab03ef047b7e40.sol(155)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
    |      owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0xa143981f3ec758296a1575146eab03ef047b7e40.sol(180)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa143981f3ec758296a1575146eab03ef047b7e40.sol(182)

[33mWarning[0m for LockedEther in contract 'Pausable':
    | * @dev Base contract which allows children to implement an emergency stop mechanism.
    | */
  > |contract Pausable is Ownable {
    |  event Pause();
    |  event Unpause();
  at /home/jiaming/mavs_srcs/contract@0xa143981f3ec758296a1575146eab03ef047b7e40.sol(192)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xa143981f3ec758296a1575146eab03ef047b7e40.sol(155)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
    |      owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0xa143981f3ec758296a1575146eab03ef047b7e40.sol(180)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  event Unpause();
    |
  > |  bool public paused = false;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xa143981f3ec758296a1575146eab03ef047b7e40.sol(196)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to pause, triggers stopped state
    |   */
  > |  function pause() onlyOwner whenNotPaused returns (bool) {
    |    paused = true;
    |    Pause();
  at /home/jiaming/mavs_srcs/contract@0xa143981f3ec758296a1575146eab03ef047b7e40.sol(218)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to unpause, returns to normal state
    |   */
  > |  function unpause() onlyOwner whenPaused returns (bool) {
    |    paused = false;
    |    Unpause();
  at /home/jiaming/mavs_srcs/contract@0xa143981f3ec758296a1575146eab03ef047b7e40.sol(227)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa143981f3ec758296a1575146eab03ef047b7e40.sol(182)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function pause() onlyOwner whenNotPaused returns (bool) {
  > |    paused = true;
    |    Pause();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa143981f3ec758296a1575146eab03ef047b7e40.sol(219)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function unpause() onlyOwner whenPaused returns (bool) {
  > |    paused = false;
    |    Unpause();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa143981f3ec758296a1575146eab03ef047b7e40.sol(228)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xa143981f3ec758296a1575146eab03ef047b7e40.sol(7)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) allowed;
  at /home/jiaming/mavs_srcs/contract@0xa143981f3ec758296a1575146eab03ef047b7e40.sol(95)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  */
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xa143981f3ec758296a1575146eab03ef047b7e40.sol(71)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa143981f3ec758296a1575146eab03ef047b7e40.sol(114)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa143981f3ec758296a1575146eab03ef047b7e40.sol(132)

[33mWarning[0m for DAOConstantGas in contract 'WTFToken':
    |      balances[msg.sender] = balances[msg.sender].sub(amount);                 // Subtracts the amount from seller's balance
    |      revenue = amount.mul(sellPrice);                                         // Calculate the seller reward
  > |      msg.sender.transfer(revenue);                                            // Sends ether to the seller: it's important to do this last to prevent recursion attacks
    |      Transfer(msg.sender, this, amount);                                      // Executes an event reflecting on the change
    |      return revenue;                                                          // Ends function and returns
  at /home/jiaming/mavs_srcs/contract@0xa143981f3ec758296a1575146eab03ef047b7e40.sol(349)

[33mWarning[0m for DAOConstantGas in contract 'WTFToken':
    |  function getEther(uint256 amount) onlyOwner external returns (bool success) {
    |      require(amount > 0);
  > |      msg.sender.transfer(amount);
    |      return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa143981f3ec758296a1575146eab03ef047b7e40.sol(379)

[33mWarning[0m for LockedEther in contract 'WTFToken':
    | *
    | */
  > |contract WTFToken is BurnableToken, Pausable {
    |
    |  string public constant name = 'WTF  Token';                   // Set the token name for display
  at /home/jiaming/mavs_srcs/contract@0xa143981f3ec758296a1575146eab03ef047b7e40.sol(275)

[33mWarning[0m for TODAmount in contract 'WTFToken':
    |  function getEther(uint256 amount) onlyOwner external returns (bool success) {
    |      require(amount > 0);
  > |      msg.sender.transfer(amount);
    |      return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa143981f3ec758296a1575146eab03ef047b7e40.sol(379)

[33mWarning[0m for TODAmount in contract 'WTFToken':
    |      balances[msg.sender] = balances[msg.sender].sub(amount);                 // Subtracts the amount from seller's balance
    |      revenue = amount.mul(sellPrice);                                         // Calculate the seller reward
  > |      msg.sender.transfer(revenue);                                            // Sends ether to the seller: it's important to do this last to prevent recursion attacks
    |      Transfer(msg.sender, this, amount);                                      // Executes an event reflecting on the change
    |      return revenue;                                                          // Ends function and returns
  at /home/jiaming/mavs_srcs/contract@0xa143981f3ec758296a1575146eab03ef047b7e40.sol(349)

[33mWarning[0m for TODReceiver in contract 'WTFToken':
    |      balances[msg.sender] = balances[msg.sender].sub(amount);                 // Subtracts the amount from seller's balance
    |      revenue = amount.mul(sellPrice);                                         // Calculate the seller reward
  > |      msg.sender.transfer(revenue);                                            // Sends ether to the seller: it's important to do this last to prevent recursion attacks
    |      Transfer(msg.sender, this, amount);                                      // Executes an event reflecting on the change
    |      return revenue;                                                          // Ends function and returns
  at /home/jiaming/mavs_srcs/contract@0xa143981f3ec758296a1575146eab03ef047b7e40.sol(349)

[33mWarning[0m for TODReceiver in contract 'WTFToken':
    |  function getEther(uint256 amount) onlyOwner external returns (bool success) {
    |      require(amount > 0);
  > |      msg.sender.transfer(amount);
    |      return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa143981f3ec758296a1575146eab03ef047b7e40.sol(379)

[33mWarning[0m for UnhandledException in contract 'WTFToken':
    |      balances[msg.sender] = balances[msg.sender].sub(amount);                 // Subtracts the amount from seller's balance
    |      revenue = amount.mul(sellPrice);                                         // Calculate the seller reward
  > |      msg.sender.transfer(revenue);                                            // Sends ether to the seller: it's important to do this last to prevent recursion attacks
    |      Transfer(msg.sender, this, amount);                                      // Executes an event reflecting on the change
    |      return revenue;                                                          // Ends function and returns
  at /home/jiaming/mavs_srcs/contract@0xa143981f3ec758296a1575146eab03ef047b7e40.sol(349)

[33mWarning[0m for UnhandledException in contract 'WTFToken':
    |  function getEther(uint256 amount) onlyOwner external returns (bool success) {
    |      require(amount > 0);
  > |      msg.sender.transfer(amount);
    |      return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa143981f3ec758296a1575146eab03ef047b7e40.sol(379)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'WTFToken':
    |      balances[msg.sender] = balances[msg.sender].sub(amount);                 // Subtracts the amount from seller's balance
    |      revenue = amount.mul(sellPrice);                                         // Calculate the seller reward
  > |      msg.sender.transfer(revenue);                                            // Sends ether to the seller: it's important to do this last to prevent recursion attacks
    |      Transfer(msg.sender, this, amount);                                      // Executes an event reflecting on the change
    |      return revenue;                                                          // Ends function and returns
  at /home/jiaming/mavs_srcs/contract@0xa143981f3ec758296a1575146eab03ef047b7e40.sol(349)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'WTFToken':
    |  function getEther(uint256 amount) onlyOwner external returns (bool success) {
    |      require(amount > 0);
  > |      msg.sender.transfer(amount);
    |      return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa143981f3ec758296a1575146eab03ef047b7e40.sol(379)

[33mWarning[0m for UnrestrictedWrite in contract 'WTFToken':
    |  */
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xa143981f3ec758296a1575146eab03ef047b7e40.sol(71)

[33mWarning[0m for UnrestrictedWrite in contract 'WTFToken':
    |  function transfer(address _to, uint256 _value) returns (bool) {
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa143981f3ec758296a1575146eab03ef047b7e40.sol(72)

[33mWarning[0m for UnrestrictedWrite in contract 'WTFToken':
    |    // require (_value <= _allowance);
    |
  > |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xa143981f3ec758296a1575146eab03ef047b7e40.sol(112)

[33mWarning[0m for UnrestrictedWrite in contract 'WTFToken':
    |
    |    balances[_to] = balances[_to].add(_value);
  > |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xa143981f3ec758296a1575146eab03ef047b7e40.sol(113)

[33mWarning[0m for UnrestrictedWrite in contract 'WTFToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa143981f3ec758296a1575146eab03ef047b7e40.sol(114)

[33mWarning[0m for UnrestrictedWrite in contract 'WTFToken':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa143981f3ec758296a1575146eab03ef047b7e40.sol(132)

[33mWarning[0m for UnrestrictedWrite in contract 'WTFToken':
    |    require(_value > 0);
    |    address burner = msg.sender;
  > |    balances[burner] = balances[burner].sub(_value);
    |    totalSupply = totalSupply.sub(_value);
    |    Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0xa143981f3ec758296a1575146eab03ef047b7e40.sol(247)

[33mWarning[0m for UnrestrictedWrite in contract 'WTFToken':
    |    address burner = msg.sender;
    |    balances[burner] = balances[burner].sub(_value);
  > |    totalSupply = totalSupply.sub(_value);
    |    Burn(burner, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa143981f3ec758296a1575146eab03ef047b7e40.sol(248)

[33mWarning[0m for UnrestrictedWrite in contract 'WTFToken':
    |  function sell(uint256 amount) external returns (uint256 revenue){
    |      require(balances[msg.sender] >= amount);                                 // Checks if the sender has enough to sell
  > |      balances[this] = balances[this].add(amount);                             // Adds the amount to owner's balance
    |      balances[msg.sender] = balances[msg.sender].sub(amount);                 // Subtracts the amount from seller's balance
    |      revenue = amount.mul(sellPrice);                                         // Calculate the seller reward
  at /home/jiaming/mavs_srcs/contract@0xa143981f3ec758296a1575146eab03ef047b7e40.sol(346)

[33mWarning[0m for UnrestrictedWrite in contract 'WTFToken':
    |      require(balances[msg.sender] >= amount);                                 // Checks if the sender has enough to sell
    |      balances[this] = balances[this].add(amount);                             // Adds the amount to owner's balance
  > |      balances[msg.sender] = balances[msg.sender].sub(amount);                 // Subtracts the amount from seller's balance
    |      revenue = amount.mul(sellPrice);                                         // Calculate the seller reward
    |      msg.sender.transfer(revenue);                                            // Sends ether to the seller: it's important to do this last to prevent recursion attacks
  at /home/jiaming/mavs_srcs/contract@0xa143981f3ec758296a1575146eab03ef047b7e40.sol(347)

[33mWarning[0m for UnrestrictedWrite in contract 'WTFToken':
    |  function getTokens(uint256 amount) onlyOwner external returns (bool success) {
    |      require(balances[this] >= amount);
  > |      balances[msg.sender] = balances[msg.sender].add(amount);
    |      balances[this] = balances[this].sub(amount);
    |      Transfer(this, msg.sender, amount);
  at /home/jiaming/mavs_srcs/contract@0xa143981f3ec758296a1575146eab03ef047b7e40.sol(360)

[33mWarning[0m for UnrestrictedWrite in contract 'WTFToken':
    |      require(balances[this] >= amount);
    |      balances[msg.sender] = balances[msg.sender].add(amount);
  > |      balances[this] = balances[this].sub(amount);
    |      Transfer(this, msg.sender, amount);
    |      return true;
  at /home/jiaming/mavs_srcs/contract@0xa143981f3ec758296a1575146eab03ef047b7e40.sol(361)

[33mWarning[0m for UnrestrictedWrite in contract 'WTFToken':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa143981f3ec758296a1575146eab03ef047b7e40.sol(182)

[33mWarning[0m for UnrestrictedWrite in contract 'WTFToken':
    |   */
    |  function pause() onlyOwner whenNotPaused returns (bool) {
  > |    paused = true;
    |    Pause();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa143981f3ec758296a1575146eab03ef047b7e40.sol(219)

[33mWarning[0m for UnrestrictedWrite in contract 'WTFToken':
    |   */
    |  function unpause() onlyOwner whenPaused returns (bool) {
  > |    paused = false;
    |    Unpause();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa143981f3ec758296a1575146eab03ef047b7e40.sol(228)

[33mWarning[0m for UnrestrictedWrite in contract 'WTFToken':
    |  function setPrice(uint256 newSellPrice) external onlyOwner returns (bool success) {
    |      require(newSellPrice > 0);
  > |      sellPrice = newSellPrice;
    |      return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa143981f3ec758296a1575146eab03ef047b7e40.sol(336)


