Processing contract: /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol:CanReclaimToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol:CrowdsaleBase
Processing contract: /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol:ICOEngineInterface
Processing contract: /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol:KYCBase
Processing contract: /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol:MintableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol:PausableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol:PresaleTokenVault
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol:Reservation
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol:SafeERC20
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol:TokenVesting
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol:UacCrowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Decompilation failed.
Processing contract: /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol:UacToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol:UbiatarPlayVault
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
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(659)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(683)

[33mWarning[0m for LockedEther in contract 'CanReclaimToken':
    | * This will prevent any accidental loss of tokens.
    | */
  > |contract CanReclaimToken is Ownable {
    |  using SafeERC20 for ERC20Basic;
    |
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(170)

[33mWarning[0m for UnhandledException in contract 'CanReclaimToken':
    |library SafeERC20 {
    |  function safeTransfer(ERC20Basic token, address to, uint256 value) internal {
  > |    assert(token.transfer(to, value));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(144)

[33mWarning[0m for UnhandledException in contract 'CanReclaimToken':
    |   */
    |  function reclaimToken(ERC20Basic token) external onlyOwner {
  > |    uint256 balance = token.balanceOf(this);
    |    token.safeTransfer(owner, balance);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(178)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CanReclaimToken':
    |library SafeERC20 {
    |  function safeTransfer(ERC20Basic token, address to, uint256 value) internal {
  > |    assert(token.transfer(to, value));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(144)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CanReclaimToken':
    |   */
    |  function reclaimToken(ERC20Basic token) external onlyOwner {
  > |    uint256 balance = token.balanceOf(this);
    |    token.safeTransfer(owner, balance);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(178)

[33mWarning[0m for UnrestrictedWrite in contract 'CanReclaimToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(40)

[33mWarning[0m for LockedEther in contract 'MintableToken':
    | * Based on code by TokenMarketNet: https://github.com/TokenMarketNet/ico/blob/master/contracts/MintableToken.sol
    | */
  > |contract MintableToken is StandardToken, Ownable {
    |  event Mint(address indexed to, uint256 amount);
    |  event MintFinished();
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(815)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(683)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(684)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(730)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(731)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(732)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(748)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(774)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(792)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(794)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
  > |    totalSupply_ = totalSupply_.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(834)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
    |    totalSupply_ = totalSupply_.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
    |    Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(835)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(40)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function finishMinting() onlyOwner canMint public returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(846)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(37)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(40)

[33mWarning[0m for LockedEther in contract 'Pausable':
    | * @dev Base contract which allows children to implement an emergency stop mechanism.
    | */
  > |contract Pausable is Ownable {
    |  event Pause();
    |  event Unpause();
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(56)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(37)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  event Unpause();
    |
  > |  bool public paused = false;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(60)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to pause, triggers stopped state
    |   */
  > |  function pause() onlyOwner whenNotPaused public {
    |    paused = true;
    |    Pause();
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(82)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to unpause, returns to normal state
    |   */
  > |  function unpause() onlyOwner whenPaused public {
    |    paused = false;
    |    Unpause();
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(40)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(91)

[33mWarning[0m for LockedEther in contract 'PausableToken':
    | * @dev StandardToken modified with pausable transfers.
    | **/
  > |contract PausableToken is StandardToken, Pausable {
    |
    |  function transfer(address _to, uint256 _value) public whenNotPaused returns (bool) {
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(863)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(683)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(732)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(748)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(774)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(792)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(794)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(40)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(91)

[33mWarning[0m for LockedEther in contract 'PresaleTokenVault':
    |
    |
  > |contract PresaleTokenVault {
    |    using SafeMath for uint256;
    |    using SafeERC20 for ERC20Basic;
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(1028)

[33mWarning[0m for UnhandledException in contract 'PresaleTokenVault':
    |library SafeERC20 {
    |  function safeTransfer(ERC20Basic token, address to, uint256 value) internal {
  > |    assert(token.transfer(to, value));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(144)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PresaleTokenVault':
    |library SafeERC20 {
    |  function safeTransfer(ERC20Basic token, address to, uint256 value) internal {
  > |    assert(token.transfer(to, value));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(144)

[33mWarning[0m for UnrestrictedWrite in contract 'PresaleTokenVault':
  > |//File: node_modules/zeppelin-solidity/contracts/ownership/Ownable.sol
    |pragma solidity ^0.4.18;
    |
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(1)

[33mWarning[0m for UnrestrictedWrite in contract 'PresaleTokenVault':
    |
    |        start = startTime;
  > |        cliff = start.add(VESTING_OFFSET);
    |        end = cliff.add(VESTING_DURATION);
    |
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(1059)

[33mWarning[0m for UnrestrictedWrite in contract 'PresaleTokenVault':
    |        start = startTime;
    |        cliff = start.add(VESTING_OFFSET);
  > |        end = cliff.add(VESTING_DURATION);
    |
    |        token = ERC20Basic(_token);
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(1060)

[33mWarning[0m for UnrestrictedWrite in contract 'PresaleTokenVault':
    |        end = cliff.add(VESTING_DURATION);
    |
  > |        token = ERC20Basic(_token);
    |
    |        for (uint256 i = 0; i < beneficiaries.length; i = i.add(1)) {
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(1062)

[33mWarning[0m for UnrestrictedWrite in contract 'PresaleTokenVault':
    |
    |        for (uint256 i = 0; i < beneficiaries.length; i = i.add(1)) {
  > |            investorLUT[beneficiaries[i]] = investments.length;
    |            investments.push(Investment(beneficiaries[i], balances[i], 0));
    |        }
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(1065)

[33mWarning[0m for UnrestrictedWrite in contract 'PresaleTokenVault':
    |        for (uint256 i = 0; i < beneficiaries.length; i = i.add(1)) {
    |            investorLUT[beneficiaries[i]] = investments.length;
  > |            investments.push(Investment(beneficiaries[i], balances[i], 0));
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(1066)

[33mWarning[0m for UnrestrictedWrite in contract 'PresaleTokenVault':
    |
    |        uint256 investmentIndex = investorLUT[beneficiary];
  > |        investments[investmentIndex].released = investments[investmentIndex].released.add(unreleased);
    |        token.safeTransfer(beneficiary, unreleased);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(1079)

[33mWarning[0m for DAOConstantGas in contract 'Reservation':
    |     */
    |    function forwardFunds(uint256 _weiAmount) internal {
  > |        wallet.transfer(_weiAmount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(504)

[33mWarning[0m for LockedEther in contract 'Reservation':
    |
    |
  > |contract Reservation is CrowdsaleBase {
    |
    |    /*** CONSTANTS ***/
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(1341)

[33mWarning[0m for TODAmount in contract 'Reservation':
    |            refundWeiAmount = overflowTokens.div(price());
    |            weiAmount = weiAmount.sub(refundWeiAmount);
  > |            buyer.transfer(refundWeiAmount);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(487)

[33mWarning[0m for TODAmount in contract 'Reservation':
    |     */
    |    function forwardFunds(uint256 _weiAmount) internal {
  > |        wallet.transfer(_weiAmount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(504)

[33mWarning[0m for TODReceiver in contract 'Reservation':
    |            refundWeiAmount = overflowTokens.div(price());
    |            weiAmount = weiAmount.sub(refundWeiAmount);
  > |            buyer.transfer(refundWeiAmount);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(487)

[33mWarning[0m for UnhandledException in contract 'Reservation':
    |library SafeERC20 {
    |  function safeTransfer(ERC20Basic token, address to, uint256 value) internal {
  > |    assert(token.transfer(to, value));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(144)

[33mWarning[0m for UnhandledException in contract 'Reservation':
    |   */
    |  function reclaimToken(ERC20Basic token) external onlyOwner {
  > |    uint256 balance = token.balanceOf(this);
    |    token.safeTransfer(owner, balance);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(178)

[33mWarning[0m for UnhandledException in contract 'Reservation':
    |    {
    |        // check the signature
  > |        bytes32 hash = sha256("Eidoo icoengine authorization", this, buyerAddress, buyerId, maxAmount);
    |        address signer = ecrecover(hash, v, r, s);
    |        if (!isKycSigner[signer]) {
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(282)

[33mWarning[0m for UnhandledException in contract 'Reservation':
    |        // check the signature
    |        bytes32 hash = sha256("Eidoo icoengine authorization", this, buyerAddress, buyerId, maxAmount);
  > |        address signer = ecrecover(hash, v, r, s);
    |        if (!isKycSigner[signer]) {
    |            revert();
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(283)

[33mWarning[0m for UnhandledException in contract 'Reservation':
    |            refundWeiAmount = overflowTokens.div(price());
    |            weiAmount = weiAmount.sub(refundWeiAmount);
  > |            buyer.transfer(refundWeiAmount);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(487)

[33mWarning[0m for UnhandledException in contract 'Reservation':
    |     */
    |    function forwardFunds(uint256 _weiAmount) internal {
  > |        wallet.transfer(_weiAmount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(504)

[33mWarning[0m for UnhandledException in contract 'Reservation':
    |     */
    |    function mintTokens(address to, uint256 amount) private {
  > |        crowdsale.mintReservationTokens(to, amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(1388)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Reservation':
    |library SafeERC20 {
    |  function safeTransfer(ERC20Basic token, address to, uint256 value) internal {
  > |    assert(token.transfer(to, value));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(144)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Reservation':
    |   */
    |  function reclaimToken(ERC20Basic token) external onlyOwner {
  > |    uint256 balance = token.balanceOf(this);
    |    token.safeTransfer(owner, balance);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(178)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Reservation':
    |    {
    |        // check the signature
  > |        bytes32 hash = sha256("Eidoo icoengine authorization", this, buyerAddress, buyerId, maxAmount);
    |        address signer = ecrecover(hash, v, r, s);
    |        if (!isKycSigner[signer]) {
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(282)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Reservation':
    |        // check the signature
    |        bytes32 hash = sha256("Eidoo icoengine authorization", this, buyerAddress, buyerId, maxAmount);
  > |        address signer = ecrecover(hash, v, r, s);
    |        if (!isKycSigner[signer]) {
    |            revert();
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(283)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Reservation':
    |            refundWeiAmount = overflowTokens.div(price());
    |            weiAmount = weiAmount.sub(refundWeiAmount);
  > |            buyer.transfer(refundWeiAmount);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(487)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Reservation':
    |     */
    |    function forwardFunds(uint256 _weiAmount) internal {
  > |        wallet.transfer(_weiAmount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(504)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Reservation':
    |     */
    |    function mintTokens(address to, uint256 amount) private {
  > |        crowdsale.mintReservationTokens(to, amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(1388)

[33mWarning[0m for UnrestrictedWrite in contract 'Reservation':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(40)

[33mWarning[0m for UnrestrictedWrite in contract 'Reservation':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'Reservation':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(91)

[33mWarning[0m for UnrestrictedWrite in contract 'Reservation':
    |            uint256 totalPayed = alreadyPayed[buyerId].add(msg.value);
    |            require(totalPayed <= maxAmount);
  > |            alreadyPayed[buyerId] = totalPayed;
    |            KycVerified(signer, buyerAddress, buyerId, maxAmount);
    |            return releaseTokensTo(buyerAddress);
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(289)

[33mWarning[0m for UnrestrictedWrite in contract 'Reservation':
    |
    |        if (tokenAmount >= availableTokens) {
  > |            capReached = true;
    |            overflowTokens = tokenAmount.sub(availableTokens);
    |            tokenAmount = tokenAmount.sub(overflowTokens);
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(482)

[33mWarning[0m for UnrestrictedWrite in contract 'Reservation':
    |        }
    |
  > |        weiRaised = weiRaised.add(weiAmount);
    |        tokensSold = tokensSold.add(tokenAmount);
    |        availableTokens = availableTokens.sub(tokenAmount);
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(490)

[33mWarning[0m for UnrestrictedWrite in contract 'Reservation':
    |
    |        weiRaised = weiRaised.add(weiAmount);
  > |        tokensSold = tokensSold.add(tokenAmount);
    |        availableTokens = availableTokens.sub(tokenAmount);
    |        mintTokens(buyer, tokenAmount);
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(491)

[33mWarning[0m for UnrestrictedWrite in contract 'Reservation':
    |        weiRaised = weiRaised.add(weiAmount);
    |        tokensSold = tokensSold.add(tokenAmount);
  > |        availableTokens = availableTokens.sub(tokenAmount);
    |        mintTokens(buyer, tokenAmount);
    |        forwardFunds(weiAmount);
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(492)

[33mWarning[0m for LockedEther in contract 'SafeERC20':
    | * which allows you to call the safe operations as `token.safeTransfer(...)`, etc.
    | */
  > |library SafeERC20 {
    |  function safeTransfer(ERC20Basic token, address to, uint256 value) internal {
    |    assert(token.transfer(to, value));
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(142)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(192)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(714)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(683)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(732)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(748)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(774)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(792)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(794)

[33mWarning[0m for LockedEther in contract 'TokenVesting':
    | * owner.
    | */
  > |contract TokenVesting is Ownable {
    |  using SafeMath for uint256;
    |  using SafeERC20 for ERC20Basic;
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(545)

[33mWarning[0m for UnhandledException in contract 'TokenVesting':
    |library SafeERC20 {
    |  function safeTransfer(ERC20Basic token, address to, uint256 value) internal {
  > |    assert(token.transfer(to, value));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(144)

[33mWarning[0m for UnhandledException in contract 'TokenVesting':
    |    require(!revoked[token]);
    |
  > |    uint256 balance = token.balanceOf(this);
    |
    |    uint256 unreleased = releasableAmount(token);
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(609)

[33mWarning[0m for UnhandledException in contract 'TokenVesting':
    |   */
    |  function vestedAmount(ERC20Basic token) public view returns (uint256) {
  > |    uint256 currentBalance = token.balanceOf(this);
    |    uint256 totalBalance = currentBalance.add(released[token]);
    |
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(634)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenVesting':
    |library SafeERC20 {
    |  function safeTransfer(ERC20Basic token, address to, uint256 value) internal {
  > |    assert(token.transfer(to, value));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(144)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenVesting':
    |    require(!revoked[token]);
    |
  > |    uint256 balance = token.balanceOf(this);
    |
    |    uint256 unreleased = releasableAmount(token);
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(609)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenVesting':
    |   */
    |  function vestedAmount(ERC20Basic token) public view returns (uint256) {
  > |    uint256 currentBalance = token.balanceOf(this);
    |    uint256 totalBalance = currentBalance.add(released[token]);
    |
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(634)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenVesting':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(40)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenVesting':
    |    require(unreleased > 0);
    |
  > |    released[token] = released[token].add(unreleased);
    |
    |    token.safeTransfer(beneficiary, unreleased);
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(593)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenVesting':
    |    uint256 refund = balance.sub(unreleased);
    |
  > |    revoked[token] = true;
    |
    |    token.safeTransfer(owner, refund);
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(614)

[33mWarning[0m for LockedEther in contract 'UacToken':
    |
    |
  > |contract UacToken is CanReclaimToken, MintableToken, PausableToken {
    |    string public constant name = "Ubiatar Coin";
    |    string public constant symbol = "UAC";
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(899)

[33mWarning[0m for UnhandledException in contract 'UacToken':
    |library SafeERC20 {
    |  function safeTransfer(ERC20Basic token, address to, uint256 value) internal {
  > |    assert(token.transfer(to, value));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(144)

[33mWarning[0m for UnhandledException in contract 'UacToken':
    |   */
    |  function reclaimToken(ERC20Basic token) external onlyOwner {
  > |    uint256 balance = token.balanceOf(this);
    |    token.safeTransfer(owner, balance);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(178)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UacToken':
    |library SafeERC20 {
    |  function safeTransfer(ERC20Basic token, address to, uint256 value) internal {
  > |    assert(token.transfer(to, value));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(144)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UacToken':
    |   */
    |  function reclaimToken(ERC20Basic token) external onlyOwner {
  > |    uint256 balance = token.balanceOf(this);
    |    token.safeTransfer(owner, balance);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(178)

[33mWarning[0m for UnrestrictedWrite in contract 'UacToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(683)

[33mWarning[0m for UnrestrictedWrite in contract 'UacToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(684)

[33mWarning[0m for UnrestrictedWrite in contract 'UacToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(730)

[33mWarning[0m for UnrestrictedWrite in contract 'UacToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(731)

[33mWarning[0m for UnrestrictedWrite in contract 'UacToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(732)

[33mWarning[0m for UnrestrictedWrite in contract 'UacToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(748)

[33mWarning[0m for UnrestrictedWrite in contract 'UacToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(774)

[33mWarning[0m for UnrestrictedWrite in contract 'UacToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(792)

[33mWarning[0m for UnrestrictedWrite in contract 'UacToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(794)

[33mWarning[0m for UnrestrictedWrite in contract 'UacToken':
    |   */
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
  > |    totalSupply_ = totalSupply_.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(834)

[33mWarning[0m for UnrestrictedWrite in contract 'UacToken':
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
    |    totalSupply_ = totalSupply_.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
    |    Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(835)

[33mWarning[0m for UnrestrictedWrite in contract 'UacToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(40)

[33mWarning[0m for UnrestrictedWrite in contract 'UacToken':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'UacToken':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(91)

[33mWarning[0m for UnrestrictedWrite in contract 'UacToken':
    |   */
    |  function finishMinting() onlyOwner canMint public returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(846)

[31mViolation[0m for LockedEther in contract 'UbiatarPlayVault':
    |
    |
  > |contract UbiatarPlayVault {
    |    using SafeMath for uint256;
    |    using SafeERC20 for UacToken;
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(930)

[33mWarning[0m for UnhandledException in contract 'UbiatarPlayVault':
    |library SafeERC20 {
    |  function safeTransfer(ERC20Basic token, address to, uint256 value) internal {
  > |    assert(token.transfer(to, value));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(144)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UbiatarPlayVault':
    |library SafeERC20 {
    |  function safeTransfer(ERC20Basic token, address to, uint256 value) internal {
  > |    assert(token.transfer(to, value));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(144)

[31mViolation[0m for UnrestrictedWrite in contract 'UbiatarPlayVault':
    |        require(unreleased > 0);
    |
  > |        released = released.add(unreleased);
    |
    |        token.safeTransfer(ubiatarPlayWallet, unreleased);
  at /home/jiaming/mavs_srcs/contract@0x0014966c7439d8c10aaf0204036198236d9b0912.sol(982)


