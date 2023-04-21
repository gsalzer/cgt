Processing contract: /home/jiaming/mavs_srcs/contract@0x877fbe7945de011a91333ba76ed38ffd41314801.sol:BKAToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x877fbe7945de011a91333ba76ed38ffd41314801.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x877fbe7945de011a91333ba76ed38ffd41314801.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x877fbe7945de011a91333ba76ed38ffd41314801.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x877fbe7945de011a91333ba76ed38ffd41314801.sol:MintableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x877fbe7945de011a91333ba76ed38ffd41314801.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x877fbe7945de011a91333ba76ed38ffd41314801.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x877fbe7945de011a91333ba76ed38ffd41314801.sol:PausableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x877fbe7945de011a91333ba76ed38ffd41314801.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x877fbe7945de011a91333ba76ed38ffd41314801.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x877fbe7945de011a91333ba76ed38ffd41314801.sol:TokenTimelock
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BKAToken':
    |
    |
  > |contract BKAToken is PausableToken, MintableToken {
    |  
    |  using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0x877fbe7945de011a91333ba76ed38ffd41314801.sol(366)

[33mWarning[0m for UnrestrictedWrite in contract 'BKAToken':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x877fbe7945de011a91333ba76ed38ffd41314801.sol(62)

[33mWarning[0m for UnrestrictedWrite in contract 'BKAToken':
    |   */
    |  function pause() onlyOwner whenNotPaused returns (bool) {
  > |    paused = true;
    |    Pause();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x877fbe7945de011a91333ba76ed38ffd41314801.sol(100)

[33mWarning[0m for UnrestrictedWrite in contract 'BKAToken':
    |   */
    |  function unpause() onlyOwner whenPaused returns (bool) {
  > |    paused = false;
    |    Unpause();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x877fbe7945de011a91333ba76ed38ffd41314801.sol(109)

[33mWarning[0m for UnrestrictedWrite in contract 'BKAToken':
    |  */
    |  function transfer(address _to, uint _value) onlyPayloadSize(2 * 32) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x877fbe7945de011a91333ba76ed38ffd41314801.sol(192)

[33mWarning[0m for UnrestrictedWrite in contract 'BKAToken':
    |  function transfer(address _to, uint _value) onlyPayloadSize(2 * 32) {
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x877fbe7945de011a91333ba76ed38ffd41314801.sol(193)

[33mWarning[0m for UnrestrictedWrite in contract 'BKAToken':
    |    // if (_value > _allowance) throw;
    |
  > |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x877fbe7945de011a91333ba76ed38ffd41314801.sol(232)

[33mWarning[0m for UnrestrictedWrite in contract 'BKAToken':
    |
    |    balances[_to] = balances[_to].add(_value);
  > |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x877fbe7945de011a91333ba76ed38ffd41314801.sol(233)

[33mWarning[0m for UnrestrictedWrite in contract 'BKAToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x877fbe7945de011a91333ba76ed38ffd41314801.sol(234)

[33mWarning[0m for UnrestrictedWrite in contract 'BKAToken':
    |    if ((_value != 0) && (allowed[msg.sender][_spender] != 0)) throw;
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x877fbe7945de011a91333ba76ed38ffd41314801.sol(251)

[33mWarning[0m for UnrestrictedWrite in contract 'BKAToken':
    |   */
    |  function mint(address _to, uint _amount) onlyOwner canMint returns (bool) {
  > |    totalSupply = totalSupply.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x877fbe7945de011a91333ba76ed38ffd41314801.sol(292)

[33mWarning[0m for UnrestrictedWrite in contract 'BKAToken':
    |  function mint(address _to, uint _amount) onlyOwner canMint returns (bool) {
    |    totalSupply = totalSupply.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x877fbe7945de011a91333ba76ed38ffd41314801.sol(293)

[33mWarning[0m for UnrestrictedWrite in contract 'BKAToken':
    |   */
    |  function finishMinting() onlyOwner returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x877fbe7945de011a91333ba76ed38ffd41314801.sol(303)

[33mWarning[0m for LockedEther in contract 'BasicToken':
    | * @dev Basic version of StandardToken, with no allowances.
    | */
  > |contract BasicToken is ERC20Basic {
    |  using SafeMath for uint;
    |
  at /home/jiaming/mavs_srcs/contract@0x877fbe7945de011a91333ba76ed38ffd41314801.sol(171)

[31mViolation[0m for UnrestrictedWrite in contract 'BasicToken':
    |  function transfer(address _to, uint _value) onlyPayloadSize(2 * 32) {
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x877fbe7945de011a91333ba76ed38ffd41314801.sol(193)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |  */
    |  function transfer(address _to, uint _value) onlyPayloadSize(2 * 32) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x877fbe7945de011a91333ba76ed38ffd41314801.sol(192)

[33mWarning[0m for LockedEther in contract 'MintableToken':
    | */
    |
  > |contract MintableToken is StandardToken, Ownable {
    |  event Mint(address indexed to, uint value);
    |  event MintFinished();
  at /home/jiaming/mavs_srcs/contract@0x877fbe7945de011a91333ba76ed38ffd41314801.sol(272)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x877fbe7945de011a91333ba76ed38ffd41314801.sol(62)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  */
    |  function transfer(address _to, uint _value) onlyPayloadSize(2 * 32) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x877fbe7945de011a91333ba76ed38ffd41314801.sol(192)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function transfer(address _to, uint _value) onlyPayloadSize(2 * 32) {
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x877fbe7945de011a91333ba76ed38ffd41314801.sol(193)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    // if (_value > _allowance) throw;
    |
  > |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x877fbe7945de011a91333ba76ed38ffd41314801.sol(232)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    balances[_to] = balances[_to].add(_value);
  > |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x877fbe7945de011a91333ba76ed38ffd41314801.sol(233)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x877fbe7945de011a91333ba76ed38ffd41314801.sol(234)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    if ((_value != 0) && (allowed[msg.sender][_spender] != 0)) throw;
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x877fbe7945de011a91333ba76ed38ffd41314801.sol(251)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function mint(address _to, uint _amount) onlyOwner canMint returns (bool) {
  > |    totalSupply = totalSupply.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x877fbe7945de011a91333ba76ed38ffd41314801.sol(292)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function mint(address _to, uint _amount) onlyOwner canMint returns (bool) {
    |    totalSupply = totalSupply.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x877fbe7945de011a91333ba76ed38ffd41314801.sol(293)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function finishMinting() onlyOwner returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x877fbe7945de011a91333ba76ed38ffd41314801.sol(303)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x877fbe7945de011a91333ba76ed38ffd41314801.sol(32)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x877fbe7945de011a91333ba76ed38ffd41314801.sol(33)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
    |      owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x877fbe7945de011a91333ba76ed38ffd41314801.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x877fbe7945de011a91333ba76ed38ffd41314801.sol(62)

[33mWarning[0m for LockedEther in contract 'Pausable':
    | * @dev Base contract which allows children to implement an emergency stop mechanism.
    | */
  > |contract Pausable is Ownable {
    |  event Pause();
    |  event Unpause();
  at /home/jiaming/mavs_srcs/contract@0x877fbe7945de011a91333ba76ed38ffd41314801.sol(73)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x877fbe7945de011a91333ba76ed38ffd41314801.sol(33)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
    |      owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x877fbe7945de011a91333ba76ed38ffd41314801.sol(60)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  event Unpause();
    |
  > |  bool public paused = false;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x877fbe7945de011a91333ba76ed38ffd41314801.sol(77)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to pause, triggers stopped state
    |   */
  > |  function pause() onlyOwner whenNotPaused returns (bool) {
    |    paused = true;
    |    Pause();
  at /home/jiaming/mavs_srcs/contract@0x877fbe7945de011a91333ba76ed38ffd41314801.sol(99)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to unpause, returns to normal state
    |   */
  > |  function unpause() onlyOwner whenPaused returns (bool) {
    |    paused = false;
    |    Unpause();
  at /home/jiaming/mavs_srcs/contract@0x877fbe7945de011a91333ba76ed38ffd41314801.sol(108)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x877fbe7945de011a91333ba76ed38ffd41314801.sol(62)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function pause() onlyOwner whenNotPaused returns (bool) {
  > |    paused = true;
    |    Pause();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x877fbe7945de011a91333ba76ed38ffd41314801.sol(100)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function unpause() onlyOwner whenPaused returns (bool) {
  > |    paused = false;
    |    Unpause();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x877fbe7945de011a91333ba76ed38ffd41314801.sol(109)

[33mWarning[0m for LockedEther in contract 'PausableToken':
    | **/
    |
  > |contract PausableToken is StandardToken, Pausable {
    |
    |  function transfer(address _to, uint _value) whenNotPaused {
  at /home/jiaming/mavs_srcs/contract@0x877fbe7945de011a91333ba76ed38ffd41314801.sol(316)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x877fbe7945de011a91333ba76ed38ffd41314801.sol(62)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |   */
    |  function pause() onlyOwner whenNotPaused returns (bool) {
  > |    paused = true;
    |    Pause();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x877fbe7945de011a91333ba76ed38ffd41314801.sol(100)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |   */
    |  function unpause() onlyOwner whenPaused returns (bool) {
  > |    paused = false;
    |    Unpause();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x877fbe7945de011a91333ba76ed38ffd41314801.sol(109)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |  */
    |  function transfer(address _to, uint _value) onlyPayloadSize(2 * 32) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x877fbe7945de011a91333ba76ed38ffd41314801.sol(192)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x877fbe7945de011a91333ba76ed38ffd41314801.sol(234)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    if ((_value != 0) && (allowed[msg.sender][_spender] != 0)) throw;
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x877fbe7945de011a91333ba76ed38ffd41314801.sol(251)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * Math operations with safety checks
    | */
  > |library SafeMath {
    |  function mul(uint a, uint b) internal returns (uint) {
    |    uint c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x877fbe7945de011a91333ba76ed38ffd41314801.sol(118)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is BasicToken, ERC20 {
    |
    |  mapping (address => mapping (address => uint)) allowed;
  at /home/jiaming/mavs_srcs/contract@0x877fbe7945de011a91333ba76ed38ffd41314801.sol(216)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  */
    |  function transfer(address _to, uint _value) onlyPayloadSize(2 * 32) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x877fbe7945de011a91333ba76ed38ffd41314801.sol(192)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x877fbe7945de011a91333ba76ed38ffd41314801.sol(234)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    if ((_value != 0) && (allowed[msg.sender][_spender] != 0)) throw;
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x877fbe7945de011a91333ba76ed38ffd41314801.sol(251)

[33mWarning[0m for LockedEther in contract 'TokenTimelock':
    | * beneficiary to extract the tokens after a time has passed
    | */
  > |contract TokenTimelock {
    |
    |  // ERC20 basic token contract being held
  at /home/jiaming/mavs_srcs/contract@0x877fbe7945de011a91333ba76ed38ffd41314801.sol(333)

[33mWarning[0m for MissingInputValidation in contract 'TokenTimelock':
    |   * @dev beneficiary claims tokens held by time lock
    |   */
  > |  function claim() {
    |    require(msg.sender == beneficiary);
    |    require(now >= releaseTime);
  at /home/jiaming/mavs_srcs/contract@0x877fbe7945de011a91333ba76ed38ffd41314801.sol(354)

[33mWarning[0m for UnhandledException in contract 'TokenTimelock':
    |    require(now >= releaseTime);
    |
  > |    uint amount = token.balanceOf(this);
    |    require(amount > 0);
    |
  at /home/jiaming/mavs_srcs/contract@0x877fbe7945de011a91333ba76ed38ffd41314801.sol(358)

[33mWarning[0m for UnhandledException in contract 'TokenTimelock':
    |    require(amount > 0);
    |
  > |    token.transfer(beneficiary, amount);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x877fbe7945de011a91333ba76ed38ffd41314801.sol(361)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenTimelock':
    |    require(now >= releaseTime);
    |
  > |    uint amount = token.balanceOf(this);
    |    require(amount > 0);
    |
  at /home/jiaming/mavs_srcs/contract@0x877fbe7945de011a91333ba76ed38ffd41314801.sol(358)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenTimelock':
    |    require(amount > 0);
    |
  > |    token.transfer(beneficiary, amount);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x877fbe7945de011a91333ba76ed38ffd41314801.sol(361)


