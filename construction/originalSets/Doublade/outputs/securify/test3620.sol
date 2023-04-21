Processing contract: /home/jiaming/mavs_srcs/contract@0xed3c9ca0d0f47280d1c04547ac991335b8b8eb67.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xed3c9ca0d0f47280d1c04547ac991335b8b8eb67.sol:BurnableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xed3c9ca0d0f47280d1c04547ac991335b8b8eb67.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xed3c9ca0d0f47280d1c04547ac991335b8b8eb67.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xed3c9ca0d0f47280d1c04547ac991335b8b8eb67.sol:GanaToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xed3c9ca0d0f47280d1c04547ac991335b8b8eb67.sol:GanaTokenLocker
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xed3c9ca0d0f47280d1c04547ac991335b8b8eb67.sol:Managed
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xed3c9ca0d0f47280d1c04547ac991335b8b8eb67.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xed3c9ca0d0f47280d1c04547ac991335b8b8eb67.sol:Releasable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xed3c9ca0d0f47280d1c04547ac991335b8b8eb67.sol:ReleasableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xed3c9ca0d0f47280d1c04547ac991335b8b8eb67.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xed3c9ca0d0f47280d1c04547ac991335b8b8eb67.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    | * @dev Basic version of StandardToken, with no allowances.
    | */
  > |contract BasicToken is ERC20Basic {
    |
    |  using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0xed3c9ca0d0f47280d1c04547ac991335b8b8eb67.sol(113)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xed3c9ca0d0f47280d1c04547ac991335b8b8eb67.sol(129)

[33mWarning[0m for LockedEther in contract 'BurnableToken':
    |
    |
  > |contract BurnableToken is ReleasableToken {
    |
    |    event Burn(address indexed burner, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0xed3c9ca0d0f47280d1c04547ac991335b8b8eb67.sol(309)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xed3c9ca0d0f47280d1c04547ac991335b8b8eb67.sol(129)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xed3c9ca0d0f47280d1c04547ac991335b8b8eb67.sol(171)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xed3c9ca0d0f47280d1c04547ac991335b8b8eb67.sol(187)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xed3c9ca0d0f47280d1c04547ac991335b8b8eb67.sol(209)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xed3c9ca0d0f47280d1c04547ac991335b8b8eb67.sol(217)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xed3c9ca0d0f47280d1c04547ac991335b8b8eb67.sol(219)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |        address burner = msg.sender;
  > |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
    |        Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0xed3c9ca0d0f47280d1c04547ac991335b8b8eb67.sol(324)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xed3c9ca0d0f47280d1c04547ac991335b8b8eb67.sol(74)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |  function release() onlyOwner public {
    |    require(!released);
  > |    released = true;
    |    Release();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xed3c9ca0d0f47280d1c04547ac991335b8b8eb67.sol(241)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |  function setManager(address _addr) public onlyOwner {
    |    require(_addr != address(0) && manager[_addr] == false);
  > |    manager[_addr] = true;
    |
    |    SetManager(_addr);
  at /home/jiaming/mavs_srcs/contract@0xed3c9ca0d0f47280d1c04547ac991335b8b8eb67.sol(265)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |  function unsetManager(address _addr) public onlyOwner {
    |    require(_addr != address(0) && manager[_addr] == true);
  > |    manager[_addr] = false;
    |
    |    UnsetManager(_addr);
  at /home/jiaming/mavs_srcs/contract@0xed3c9ca0d0f47280d1c04547ac991335b8b8eb67.sol(272)

[33mWarning[0m for LockedEther in contract 'GanaToken':
    |  *  GanaToken
    |  */
  > |contract GanaToken is BurnableToken {
    |
    |  string public constant name = "GANA";
  at /home/jiaming/mavs_srcs/contract@0xed3c9ca0d0f47280d1c04547ac991335b8b8eb67.sol(335)

[33mWarning[0m for UnhandledException in contract 'GanaToken':
    |  function claimTokens(address _token, uint256 _claimedBalance) public onlyManager afterReleased {
    |    ERC20Basic token = ERC20Basic(_token);
  > |    uint256 tokenBalance = token.balanceOf(this);
    |    require(tokenBalance >= _claimedBalance);
    |
  at /home/jiaming/mavs_srcs/contract@0xed3c9ca0d0f47280d1c04547ac991335b8b8eb67.sol(350)

[33mWarning[0m for UnhandledException in contract 'GanaToken':
    |
    |    address manager = msg.sender;
  > |    token.transfer(manager, _claimedBalance);
    |    ClaimedTokens(manager, _token, _claimedBalance);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xed3c9ca0d0f47280d1c04547ac991335b8b8eb67.sol(354)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GanaToken':
    |  function claimTokens(address _token, uint256 _claimedBalance) public onlyManager afterReleased {
    |    ERC20Basic token = ERC20Basic(_token);
  > |    uint256 tokenBalance = token.balanceOf(this);
    |    require(tokenBalance >= _claimedBalance);
    |
  at /home/jiaming/mavs_srcs/contract@0xed3c9ca0d0f47280d1c04547ac991335b8b8eb67.sol(350)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GanaToken':
    |
    |    address manager = msg.sender;
  > |    token.transfer(manager, _claimedBalance);
    |    ClaimedTokens(manager, _token, _claimedBalance);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xed3c9ca0d0f47280d1c04547ac991335b8b8eb67.sol(354)

[33mWarning[0m for UnrestrictedWrite in contract 'GanaToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xed3c9ca0d0f47280d1c04547ac991335b8b8eb67.sol(129)

[33mWarning[0m for UnrestrictedWrite in contract 'GanaToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xed3c9ca0d0f47280d1c04547ac991335b8b8eb67.sol(171)

[33mWarning[0m for UnrestrictedWrite in contract 'GanaToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xed3c9ca0d0f47280d1c04547ac991335b8b8eb67.sol(187)

[33mWarning[0m for UnrestrictedWrite in contract 'GanaToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xed3c9ca0d0f47280d1c04547ac991335b8b8eb67.sol(209)

[33mWarning[0m for UnrestrictedWrite in contract 'GanaToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xed3c9ca0d0f47280d1c04547ac991335b8b8eb67.sol(217)

[33mWarning[0m for UnrestrictedWrite in contract 'GanaToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xed3c9ca0d0f47280d1c04547ac991335b8b8eb67.sol(219)

[33mWarning[0m for UnrestrictedWrite in contract 'GanaToken':
    |
    |        address burner = msg.sender;
  > |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
    |        Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0xed3c9ca0d0f47280d1c04547ac991335b8b8eb67.sol(324)

[33mWarning[0m for UnrestrictedWrite in contract 'GanaToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xed3c9ca0d0f47280d1c04547ac991335b8b8eb67.sol(74)

[33mWarning[0m for UnrestrictedWrite in contract 'GanaToken':
    |  function release() onlyOwner public {
    |    require(!released);
  > |    released = true;
    |    Release();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xed3c9ca0d0f47280d1c04547ac991335b8b8eb67.sol(241)

[33mWarning[0m for UnrestrictedWrite in contract 'GanaToken':
    |  function setManager(address _addr) public onlyOwner {
    |    require(_addr != address(0) && manager[_addr] == false);
  > |    manager[_addr] = true;
    |
    |    SetManager(_addr);
  at /home/jiaming/mavs_srcs/contract@0xed3c9ca0d0f47280d1c04547ac991335b8b8eb67.sol(265)

[33mWarning[0m for UnrestrictedWrite in contract 'GanaToken':
    |  function unsetManager(address _addr) public onlyOwner {
    |    require(_addr != address(0) && manager[_addr] == true);
  > |    manager[_addr] = false;
    |
    |    UnsetManager(_addr);
  at /home/jiaming/mavs_srcs/contract@0xed3c9ca0d0f47280d1c04547ac991335b8b8eb67.sol(272)

[33mWarning[0m for LockedEther in contract 'GanaTokenLocker':
    |  *  GanaToken LOCKER
    |  */
  > |contract GanaTokenLocker {
    |  GanaToken gana;
    |  uint256 public releaseTime = 1554076800; //UTC 04/01/2019 12:00am
  at /home/jiaming/mavs_srcs/contract@0xed3c9ca0d0f47280d1c04547ac991335b8b8eb67.sol(364)

[33mWarning[0m for MissingInputValidation in contract 'GanaTokenLocker':
    |contract GanaTokenLocker {
    |  GanaToken gana;
  > |  uint256 public releaseTime = 1554076800; //UTC 04/01/2019 12:00am
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xed3c9ca0d0f47280d1c04547ac991335b8b8eb67.sol(366)

[33mWarning[0m for MissingInputValidation in contract 'GanaTokenLocker':
    |  GanaToken gana;
    |  uint256 public releaseTime = 1554076800; //UTC 04/01/2019 12:00am
  > |  address public owner;
    |
    |  event Unlock();
  at /home/jiaming/mavs_srcs/contract@0xed3c9ca0d0f47280d1c04547ac991335b8b8eb67.sol(367)

[33mWarning[0m for MissingInputValidation in contract 'GanaTokenLocker':
    |  }
    |
  > |  function unlock() public {
    |    require(msg.sender == owner);
    |    require(releaseTime < now);
  at /home/jiaming/mavs_srcs/contract@0xed3c9ca0d0f47280d1c04547ac991335b8b8eb67.sol(377)

[33mWarning[0m for UnhandledException in contract 'GanaTokenLocker':
    |    require(msg.sender == owner);
    |    require(releaseTime < now);
  > |    uint256 unlockGana = gana.balanceOf(this);
    |    gana.transfer(owner, unlockGana);
    |    Unlock();
  at /home/jiaming/mavs_srcs/contract@0xed3c9ca0d0f47280d1c04547ac991335b8b8eb67.sol(380)

[33mWarning[0m for UnhandledException in contract 'GanaTokenLocker':
    |    require(releaseTime < now);
    |    uint256 unlockGana = gana.balanceOf(this);
  > |    gana.transfer(owner, unlockGana);
    |    Unlock();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xed3c9ca0d0f47280d1c04547ac991335b8b8eb67.sol(381)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GanaTokenLocker':
    |    require(msg.sender == owner);
    |    require(releaseTime < now);
  > |    uint256 unlockGana = gana.balanceOf(this);
    |    gana.transfer(owner, unlockGana);
    |    Unlock();
  at /home/jiaming/mavs_srcs/contract@0xed3c9ca0d0f47280d1c04547ac991335b8b8eb67.sol(380)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GanaTokenLocker':
    |    require(releaseTime < now);
    |    uint256 unlockGana = gana.balanceOf(this);
  > |    gana.transfer(owner, unlockGana);
    |    Unlock();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xed3c9ca0d0f47280d1c04547ac991335b8b8eb67.sol(381)

[33mWarning[0m for LockedEther in contract 'Managed':
    |
    |
  > |contract Managed is Releasable {
    |
    |  mapping (address => bool) public manager;
  at /home/jiaming/mavs_srcs/contract@0xed3c9ca0d0f47280d1c04547ac991335b8b8eb67.sol(248)

[31mViolation[0m for MissingInputValidation in contract 'Managed':
    |contract Managed is Releasable {
    |
  > |  mapping (address => bool) public manager;
    |  event SetManager(address _addr);
    |  event UnsetManager(address _addr);
  at /home/jiaming/mavs_srcs/contract@0xed3c9ca0d0f47280d1c04547ac991335b8b8eb67.sol(250)

[33mWarning[0m for MissingInputValidation in contract 'Managed':
    |contract Ownable {
    |
  > |  address public owner;
    |
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0xed3c9ca0d0f47280d1c04547ac991335b8b8eb67.sol(47)

[33mWarning[0m for MissingInputValidation in contract 'Managed':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xed3c9ca0d0f47280d1c04547ac991335b8b8eb67.sol(71)

[33mWarning[0m for MissingInputValidation in contract 'Managed':
    |  event Release();
    |
  > |  bool public released = false;
    |
    |  modifier afterReleased() {
  at /home/jiaming/mavs_srcs/contract@0xed3c9ca0d0f47280d1c04547ac991335b8b8eb67.sol(232)

[33mWarning[0m for MissingInputValidation in contract 'Managed':
    |  }
    |
  > |  function release() onlyOwner public {
    |    require(!released);
    |    released = true;
  at /home/jiaming/mavs_srcs/contract@0xed3c9ca0d0f47280d1c04547ac991335b8b8eb67.sol(239)

[33mWarning[0m for MissingInputValidation in contract 'Managed':
    |  }
    |
  > |  function setManager(address _addr) public onlyOwner {
    |    require(_addr != address(0) && manager[_addr] == false);
    |    manager[_addr] = true;
  at /home/jiaming/mavs_srcs/contract@0xed3c9ca0d0f47280d1c04547ac991335b8b8eb67.sol(263)

[33mWarning[0m for MissingInputValidation in contract 'Managed':
    |  }
    |
  > |  function unsetManager(address _addr) public onlyOwner {
    |    require(_addr != address(0) && manager[_addr] == true);
    |    manager[_addr] = false;
  at /home/jiaming/mavs_srcs/contract@0xed3c9ca0d0f47280d1c04547ac991335b8b8eb67.sol(270)

[33mWarning[0m for UnrestrictedWrite in contract 'Managed':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xed3c9ca0d0f47280d1c04547ac991335b8b8eb67.sol(74)

[33mWarning[0m for UnrestrictedWrite in contract 'Managed':
    |  function release() onlyOwner public {
    |    require(!released);
  > |    released = true;
    |    Release();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xed3c9ca0d0f47280d1c04547ac991335b8b8eb67.sol(241)

[33mWarning[0m for UnrestrictedWrite in contract 'Managed':
    |  function setManager(address _addr) public onlyOwner {
    |    require(_addr != address(0) && manager[_addr] == false);
  > |    manager[_addr] = true;
    |
    |    SetManager(_addr);
  at /home/jiaming/mavs_srcs/contract@0xed3c9ca0d0f47280d1c04547ac991335b8b8eb67.sol(265)

[33mWarning[0m for UnrestrictedWrite in contract 'Managed':
    |  function unsetManager(address _addr) public onlyOwner {
    |    require(_addr != address(0) && manager[_addr] == true);
  > |    manager[_addr] = false;
    |
    |    UnsetManager(_addr);
  at /home/jiaming/mavs_srcs/contract@0xed3c9ca0d0f47280d1c04547ac991335b8b8eb67.sol(272)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |
    |  address public owner;
  at /home/jiaming/mavs_srcs/contract@0xed3c9ca0d0f47280d1c04547ac991335b8b8eb67.sol(45)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |contract Ownable {
    |
  > |  address public owner;
    |
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0xed3c9ca0d0f47280d1c04547ac991335b8b8eb67.sol(47)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xed3c9ca0d0f47280d1c04547ac991335b8b8eb67.sol(71)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xed3c9ca0d0f47280d1c04547ac991335b8b8eb67.sol(74)

[33mWarning[0m for LockedEther in contract 'Releasable':
    |
    |
  > |contract Releasable is Ownable {
    |
    |  event Release();
  at /home/jiaming/mavs_srcs/contract@0xed3c9ca0d0f47280d1c04547ac991335b8b8eb67.sol(228)

[33mWarning[0m for MissingInputValidation in contract 'Releasable':
    |contract Ownable {
    |
  > |  address public owner;
    |
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0xed3c9ca0d0f47280d1c04547ac991335b8b8eb67.sol(47)

[33mWarning[0m for MissingInputValidation in contract 'Releasable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xed3c9ca0d0f47280d1c04547ac991335b8b8eb67.sol(71)

[33mWarning[0m for MissingInputValidation in contract 'Releasable':
    |  event Release();
    |
  > |  bool public released = false;
    |
    |  modifier afterReleased() {
  at /home/jiaming/mavs_srcs/contract@0xed3c9ca0d0f47280d1c04547ac991335b8b8eb67.sol(232)

[33mWarning[0m for MissingInputValidation in contract 'Releasable':
    |  }
    |
  > |  function release() onlyOwner public {
    |    require(!released);
    |    released = true;
  at /home/jiaming/mavs_srcs/contract@0xed3c9ca0d0f47280d1c04547ac991335b8b8eb67.sol(239)

[33mWarning[0m for UnrestrictedWrite in contract 'Releasable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xed3c9ca0d0f47280d1c04547ac991335b8b8eb67.sol(74)

[33mWarning[0m for UnrestrictedWrite in contract 'Releasable':
    |  function release() onlyOwner public {
    |    require(!released);
  > |    released = true;
    |    Release();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xed3c9ca0d0f47280d1c04547ac991335b8b8eb67.sol(241)

[33mWarning[0m for LockedEther in contract 'ReleasableToken':
    |
    |
  > |contract ReleasableToken is StandardToken, Managed {
    |
    |  function transfer(address _to, uint256 _value) public afterReleased returns (bool) {
  at /home/jiaming/mavs_srcs/contract@0xed3c9ca0d0f47280d1c04547ac991335b8b8eb67.sol(280)

[33mWarning[0m for UnrestrictedWrite in contract 'ReleasableToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xed3c9ca0d0f47280d1c04547ac991335b8b8eb67.sol(129)

[33mWarning[0m for UnrestrictedWrite in contract 'ReleasableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xed3c9ca0d0f47280d1c04547ac991335b8b8eb67.sol(171)

[33mWarning[0m for UnrestrictedWrite in contract 'ReleasableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xed3c9ca0d0f47280d1c04547ac991335b8b8eb67.sol(187)

[33mWarning[0m for UnrestrictedWrite in contract 'ReleasableToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xed3c9ca0d0f47280d1c04547ac991335b8b8eb67.sol(209)

[33mWarning[0m for UnrestrictedWrite in contract 'ReleasableToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xed3c9ca0d0f47280d1c04547ac991335b8b8eb67.sol(217)

[33mWarning[0m for UnrestrictedWrite in contract 'ReleasableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xed3c9ca0d0f47280d1c04547ac991335b8b8eb67.sol(219)

[33mWarning[0m for UnrestrictedWrite in contract 'ReleasableToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xed3c9ca0d0f47280d1c04547ac991335b8b8eb67.sol(74)

[33mWarning[0m for UnrestrictedWrite in contract 'ReleasableToken':
    |  function release() onlyOwner public {
    |    require(!released);
  > |    released = true;
    |    Release();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xed3c9ca0d0f47280d1c04547ac991335b8b8eb67.sol(241)

[33mWarning[0m for UnrestrictedWrite in contract 'ReleasableToken':
    |  function setManager(address _addr) public onlyOwner {
    |    require(_addr != address(0) && manager[_addr] == false);
  > |    manager[_addr] = true;
    |
    |    SetManager(_addr);
  at /home/jiaming/mavs_srcs/contract@0xed3c9ca0d0f47280d1c04547ac991335b8b8eb67.sol(265)

[33mWarning[0m for UnrestrictedWrite in contract 'ReleasableToken':
    |  function unsetManager(address _addr) public onlyOwner {
    |    require(_addr != address(0) && manager[_addr] == true);
  > |    manager[_addr] = false;
    |
    |    UnsetManager(_addr);
  at /home/jiaming/mavs_srcs/contract@0xed3c9ca0d0f47280d1c04547ac991335b8b8eb67.sol(272)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
  at /home/jiaming/mavs_srcs/contract@0xed3c9ca0d0f47280d1c04547ac991335b8b8eb67.sol(8)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0xed3c9ca0d0f47280d1c04547ac991335b8b8eb67.sol(154)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xed3c9ca0d0f47280d1c04547ac991335b8b8eb67.sol(129)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xed3c9ca0d0f47280d1c04547ac991335b8b8eb67.sol(171)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xed3c9ca0d0f47280d1c04547ac991335b8b8eb67.sol(187)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xed3c9ca0d0f47280d1c04547ac991335b8b8eb67.sol(209)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xed3c9ca0d0f47280d1c04547ac991335b8b8eb67.sol(217)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xed3c9ca0d0f47280d1c04547ac991335b8b8eb67.sol(219)


