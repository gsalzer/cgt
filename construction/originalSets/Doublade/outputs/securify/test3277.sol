Processing contract: /home/jiaming/mavs_srcs/contract@0xd697a61d5fb4e076125e0be647f902b02bb3a0f1.sol:BasicToken
Processing contract: /home/jiaming/mavs_srcs/contract@0xd697a61d5fb4e076125e0be647f902b02bb3a0f1.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xd697a61d5fb4e076125e0be647f902b02bb3a0f1.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xd697a61d5fb4e076125e0be647f902b02bb3a0f1.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd697a61d5fb4e076125e0be647f902b02bb3a0f1.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd697a61d5fb4e076125e0be647f902b02bb3a0f1.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd697a61d5fb4e076125e0be647f902b02bb3a0f1.sol:StandardToken
Processing contract: /home/jiaming/mavs_srcs/contract@0xd697a61d5fb4e076125e0be647f902b02bb3a0f1.sol:TetherToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd697a61d5fb4e076125e0be647f902b02bb3a0f1.sol:UpgradedStandardToken
[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions". 
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xd697a61d5fb4e076125e0be647f902b02bb3a0f1.sol(60)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xd697a61d5fb4e076125e0be647f902b02bb3a0f1.sol(61)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to. 
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
    |      owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0xd697a61d5fb4e076125e0be647f902b02bb3a0f1.sol(88)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xd697a61d5fb4e076125e0be647f902b02bb3a0f1.sol(90)

[33mWarning[0m for LockedEther in contract 'Pausable':
    | * @dev Base contract which allows children to implement an emergency stop mechanism.
    | */
  > |contract Pausable is Ownable {
    |  event Pause();
    |  event Unpause();
  at /home/jiaming/mavs_srcs/contract@0xd697a61d5fb4e076125e0be647f902b02bb3a0f1.sol(100)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xd697a61d5fb4e076125e0be647f902b02bb3a0f1.sol(61)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @param newOwner The address to transfer ownership to. 
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
    |      owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0xd697a61d5fb4e076125e0be647f902b02bb3a0f1.sol(88)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  event Unpause();
    |
  > |  bool public paused = false;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xd697a61d5fb4e076125e0be647f902b02bb3a0f1.sol(104)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to pause, triggers stopped state
    |   */
  > |  function pause() onlyOwner whenNotPaused returns (bool) {
    |    paused = true;
    |    Pause();
  at /home/jiaming/mavs_srcs/contract@0xd697a61d5fb4e076125e0be647f902b02bb3a0f1.sol(126)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to unpause, returns to normal state
    |   */
  > |  function unpause() onlyOwner whenPaused returns (bool) {
    |    paused = false;
    |    Unpause();
  at /home/jiaming/mavs_srcs/contract@0xd697a61d5fb4e076125e0be647f902b02bb3a0f1.sol(135)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xd697a61d5fb4e076125e0be647f902b02bb3a0f1.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function pause() onlyOwner whenNotPaused returns (bool) {
  > |    paused = true;
    |    Pause();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd697a61d5fb4e076125e0be647f902b02bb3a0f1.sol(127)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function unpause() onlyOwner whenPaused returns (bool) {
  > |    paused = false;
    |    Unpause();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd697a61d5fb4e076125e0be647f902b02bb3a0f1.sol(136)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * Math operations with safety checks
    | */
  > |library SafeMath {
    |  function mul(uint a, uint b) internal returns (uint) {
    |    uint c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xd697a61d5fb4e076125e0be647f902b02bb3a0f1.sol(6)

[33mWarning[0m for LockedEther in contract 'TetherToken':
    |/// @author Will Harborne - <will@ethfinex.com>
    |
  > |contract TetherToken is Pausable, StandardToken {
    |
    |  string public name;
  at /home/jiaming/mavs_srcs/contract@0xd697a61d5fb4e076125e0be647f902b02bb3a0f1.sol(302)

[33mWarning[0m for UnhandledException in contract 'TetherToken':
    |  function transfer(address _to, uint _value) whenNotPaused {
    |    if (deprecated) {
  > |      return UpgradedStandardToken(upgradedAddress).transferByLegacy(msg.sender, _to, _value);
    |    } else {
    |      return super.transfer(_to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd697a61d5fb4e076125e0be647f902b02bb3a0f1.sol(329)

[33mWarning[0m for UnhandledException in contract 'TetherToken':
    |  function transferFrom(address _from, address _to, uint _value) whenNotPaused {
    |    if (deprecated) {
  > |      return UpgradedStandardToken(upgradedAddress).transferFromByLegacy(msg.sender, _from, _to, _value);
    |    } else {
    |      return super.transferFrom(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd697a61d5fb4e076125e0be647f902b02bb3a0f1.sol(338)

[33mWarning[0m for UnhandledException in contract 'TetherToken':
    |  function balanceOf(address who) constant returns (uint){
    |    if (deprecated) {
  > |      return UpgradedStandardToken(upgradedAddress).balanceOf(who);
    |    } else {
    |      return super.balanceOf(who);
  at /home/jiaming/mavs_srcs/contract@0xd697a61d5fb4e076125e0be647f902b02bb3a0f1.sol(347)

[33mWarning[0m for UnhandledException in contract 'TetherToken':
    |  function approve(address _spender, uint _value) onlyPayloadSize(2 * 32) {
    |    if (deprecated) {
  > |      return UpgradedStandardToken(upgradedAddress).approveByLegacy(msg.sender, _spender, _value);
    |    } else {
    |      return super.approve(_spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xd697a61d5fb4e076125e0be647f902b02bb3a0f1.sol(356)

[33mWarning[0m for UnhandledException in contract 'TetherToken':
    |  function allowance(address _owner, address _spender) constant returns (uint remaining) {
    |    if (deprecated) {
  > |      return StandardToken(upgradedAddress).allowance(_owner, _spender);
    |    } else {
    |      return super.allowance(_owner, _spender);
  at /home/jiaming/mavs_srcs/contract@0xd697a61d5fb4e076125e0be647f902b02bb3a0f1.sol(365)

[33mWarning[0m for UnhandledException in contract 'TetherToken':
    |  function totalSupply() constant returns (uint){
    |    if (deprecated) {
  > |      return StandardToken(upgradedAddress).totalSupply();
    |    } else {
    |      return _totalSupply;
  at /home/jiaming/mavs_srcs/contract@0xd697a61d5fb4e076125e0be647f902b02bb3a0f1.sol(381)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TetherToken':
    |  function transfer(address _to, uint _value) whenNotPaused {
    |    if (deprecated) {
  > |      return UpgradedStandardToken(upgradedAddress).transferByLegacy(msg.sender, _to, _value);
    |    } else {
    |      return super.transfer(_to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd697a61d5fb4e076125e0be647f902b02bb3a0f1.sol(329)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TetherToken':
    |  function transferFrom(address _from, address _to, uint _value) whenNotPaused {
    |    if (deprecated) {
  > |      return UpgradedStandardToken(upgradedAddress).transferFromByLegacy(msg.sender, _from, _to, _value);
    |    } else {
    |      return super.transferFrom(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd697a61d5fb4e076125e0be647f902b02bb3a0f1.sol(338)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TetherToken':
    |  function balanceOf(address who) constant returns (uint){
    |    if (deprecated) {
  > |      return UpgradedStandardToken(upgradedAddress).balanceOf(who);
    |    } else {
    |      return super.balanceOf(who);
  at /home/jiaming/mavs_srcs/contract@0xd697a61d5fb4e076125e0be647f902b02bb3a0f1.sol(347)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TetherToken':
    |  function approve(address _spender, uint _value) onlyPayloadSize(2 * 32) {
    |    if (deprecated) {
  > |      return UpgradedStandardToken(upgradedAddress).approveByLegacy(msg.sender, _spender, _value);
    |    } else {
    |      return super.approve(_spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xd697a61d5fb4e076125e0be647f902b02bb3a0f1.sol(356)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TetherToken':
    |  function allowance(address _owner, address _spender) constant returns (uint remaining) {
    |    if (deprecated) {
  > |      return StandardToken(upgradedAddress).allowance(_owner, _spender);
    |    } else {
    |      return super.allowance(_owner, _spender);
  at /home/jiaming/mavs_srcs/contract@0xd697a61d5fb4e076125e0be647f902b02bb3a0f1.sol(365)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TetherToken':
    |  function totalSupply() constant returns (uint){
    |    if (deprecated) {
  > |      return StandardToken(upgradedAddress).totalSupply();
    |    } else {
    |      return _totalSupply;
  at /home/jiaming/mavs_srcs/contract@0xd697a61d5fb4e076125e0be647f902b02bb3a0f1.sol(381)

[33mWarning[0m for UnrestrictedWrite in contract 'TetherToken':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xd697a61d5fb4e076125e0be647f902b02bb3a0f1.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'TetherToken':
    |   */
    |  function pause() onlyOwner whenNotPaused returns (bool) {
  > |    paused = true;
    |    Pause();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd697a61d5fb4e076125e0be647f902b02bb3a0f1.sol(127)

[33mWarning[0m for UnrestrictedWrite in contract 'TetherToken':
    |   */
    |  function unpause() onlyOwner whenPaused returns (bool) {
  > |    paused = false;
    |    Unpause();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd697a61d5fb4e076125e0be647f902b02bb3a0f1.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'TetherToken':
    |    }
    |    uint sendAmount = _value.sub(fee);
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(sendAmount);
    |    balances[owner] = balances[owner].add(fee);
  at /home/jiaming/mavs_srcs/contract@0xd697a61d5fb4e076125e0be647f902b02bb3a0f1.sol(200)

[33mWarning[0m for UnrestrictedWrite in contract 'TetherToken':
    |    uint sendAmount = _value.sub(fee);
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(sendAmount);
    |    balances[owner] = balances[owner].add(fee);
    |    Transfer(msg.sender, _to, sendAmount);
  at /home/jiaming/mavs_srcs/contract@0xd697a61d5fb4e076125e0be647f902b02bb3a0f1.sol(201)

[33mWarning[0m for UnrestrictedWrite in contract 'TetherToken':
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(sendAmount);
  > |    balances[owner] = balances[owner].add(fee);
    |    Transfer(msg.sender, _to, sendAmount);
    |    Transfer(msg.sender, owner, fee);
  at /home/jiaming/mavs_srcs/contract@0xd697a61d5fb4e076125e0be647f902b02bb3a0f1.sol(202)

[33mWarning[0m for UnrestrictedWrite in contract 'TetherToken':
    |    uint sendAmount = _value.sub(fee);
    |
  > |    balances[_to] = balances[_to].add(sendAmount);
    |    balances[owner] = balances[owner].add(fee);
    |    balances[_from] = balances[_from].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xd697a61d5fb4e076125e0be647f902b02bb3a0f1.sol(250)

[33mWarning[0m for UnrestrictedWrite in contract 'TetherToken':
    |
    |    balances[_to] = balances[_to].add(sendAmount);
  > |    balances[owner] = balances[owner].add(fee);
    |    balances[_from] = balances[_from].sub(_value);
    |    if (_allowance < MAX_UINT) {
  at /home/jiaming/mavs_srcs/contract@0xd697a61d5fb4e076125e0be647f902b02bb3a0f1.sol(251)

[33mWarning[0m for UnrestrictedWrite in contract 'TetherToken':
    |    balances[_to] = balances[_to].add(sendAmount);
    |    balances[owner] = balances[owner].add(fee);
  > |    balances[_from] = balances[_from].sub(_value);
    |    if (_allowance < MAX_UINT) {
    |      allowed[_from][msg.sender] = _allowance.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xd697a61d5fb4e076125e0be647f902b02bb3a0f1.sol(252)

[33mWarning[0m for UnrestrictedWrite in contract 'TetherToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    if (_allowance < MAX_UINT) {
  > |      allowed[_from][msg.sender] = _allowance.sub(_value);
    |    }
    |    Transfer(_from, _to, sendAmount);
  at /home/jiaming/mavs_srcs/contract@0xd697a61d5fb4e076125e0be647f902b02bb3a0f1.sol(254)

[33mWarning[0m for UnrestrictedWrite in contract 'TetherToken':
    |    if ((_value != 0) && (allowed[msg.sender][_spender] != 0)) throw;
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xd697a61d5fb4e076125e0be647f902b02bb3a0f1.sol(273)

[33mWarning[0m for UnrestrictedWrite in contract 'TetherToken':
    |  // deprecate current contract in favour of a new one
    |  function deprecate(address _upgradedAddress) onlyOwner {
  > |    deprecated = true;
    |    upgradedAddress = _upgradedAddress;
    |    Deprecate(_upgradedAddress);
  at /home/jiaming/mavs_srcs/contract@0xd697a61d5fb4e076125e0be647f902b02bb3a0f1.sol(373)

[33mWarning[0m for UnrestrictedWrite in contract 'TetherToken':
    |  function deprecate(address _upgradedAddress) onlyOwner {
    |    deprecated = true;
  > |    upgradedAddress = _upgradedAddress;
    |    Deprecate(_upgradedAddress);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xd697a61d5fb4e076125e0be647f902b02bb3a0f1.sol(374)

[33mWarning[0m for UnrestrictedWrite in contract 'TetherToken':
    |    if (balances[owner] + amount < balances[owner]) throw;
    |
  > |    balances[owner] += amount;
    |    _totalSupply += amount;
    |    Issue(amount);
  at /home/jiaming/mavs_srcs/contract@0xd697a61d5fb4e076125e0be647f902b02bb3a0f1.sol(395)

[33mWarning[0m for UnrestrictedWrite in contract 'TetherToken':
    |
    |    balances[owner] += amount;
  > |    _totalSupply += amount;
    |    Issue(amount);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xd697a61d5fb4e076125e0be647f902b02bb3a0f1.sol(396)

[33mWarning[0m for UnrestrictedWrite in contract 'TetherToken':
    |      if (balances[owner] < amount) throw;
    |
  > |      _totalSupply -= amount;
    |      balances[owner] -= amount;
    |      Redeem(amount);
  at /home/jiaming/mavs_srcs/contract@0xd697a61d5fb4e076125e0be647f902b02bb3a0f1.sol(409)

[33mWarning[0m for UnrestrictedWrite in contract 'TetherToken':
    |
    |      _totalSupply -= amount;
  > |      balances[owner] -= amount;
    |      Redeem(amount);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xd697a61d5fb4e076125e0be647f902b02bb3a0f1.sol(410)

[33mWarning[0m for UnrestrictedWrite in contract 'TetherToken':
    |      if (newMaxFee > 50) throw;
    |
  > |      basisPointsRate = newBasisPoints;
    |      maximumFee = newMaxFee.mul(10**decimals);
    |
  at /home/jiaming/mavs_srcs/contract@0xd697a61d5fb4e076125e0be647f902b02bb3a0f1.sol(419)

[33mWarning[0m for UnrestrictedWrite in contract 'TetherToken':
    |
    |      basisPointsRate = newBasisPoints;
  > |      maximumFee = newMaxFee.mul(10**decimals);
    |
    |      Params(basisPointsRate, maximumFee);
  at /home/jiaming/mavs_srcs/contract@0xd697a61d5fb4e076125e0be647f902b02bb3a0f1.sol(420)


