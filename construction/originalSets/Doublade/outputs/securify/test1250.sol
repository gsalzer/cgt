Processing contract: /home/jiaming/mavs_srcs/contract@0x4eef32781db07a9b7d9d36bb9ba81fa08af9d3ab.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x4eef32781db07a9b7d9d36bb9ba81fa08af9d3ab.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4eef32781db07a9b7d9d36bb9ba81fa08af9d3ab.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4eef32781db07a9b7d9d36bb9ba81fa08af9d3ab.sol:RVTCoin
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4eef32781db07a9b7d9d36bb9ba81fa08af9d3ab.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4eef32781db07a9b7d9d36bb9ba81fa08af9d3ab.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Ownable':
    | * Provides onlyOwner modifier, which prevents function from running if it is called by anyone other than the owner.
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x4eef32781db07a9b7d9d36bb9ba81fa08af9d3ab.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |  constructor() public {
  at /home/jiaming/mavs_srcs/contract@0x4eef32781db07a9b7d9d36bb9ba81fa08af9d3ab.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |  }
    |
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    if (newOwner != address(0)) {
    |      owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x4eef32781db07a9b7d9d36bb9ba81fa08af9d3ab.sol(22)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function transferOwnership(address newOwner) public onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4eef32781db07a9b7d9d36bb9ba81fa08af9d3ab.sol(24)

[33mWarning[0m for LockedEther in contract 'Pausable':
    | * @dev Base contract which allows children to implement an emergency stop mechanism.
    | */
  > |contract Pausable is Ownable {
    |  event Pause();
    |  event Unpause();
  at /home/jiaming/mavs_srcs/contract@0x4eef32781db07a9b7d9d36bb9ba81fa08af9d3ab.sol(206)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |  constructor() public {
  at /home/jiaming/mavs_srcs/contract@0x4eef32781db07a9b7d9d36bb9ba81fa08af9d3ab.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  }
    |
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    if (newOwner != address(0)) {
    |      owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x4eef32781db07a9b7d9d36bb9ba81fa08af9d3ab.sol(22)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  event Unpause();
    |
  > |  bool public paused = false;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x4eef32781db07a9b7d9d36bb9ba81fa08af9d3ab.sol(210)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  * @dev called by the owner to pause, triggers stopped state
    |  */
  > |  function pause() public onlyOwner whenNotPaused returns (bool) {
    |    paused = true;
    |    emit Pause();
  at /home/jiaming/mavs_srcs/contract@0x4eef32781db07a9b7d9d36bb9ba81fa08af9d3ab.sol(232)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  * @dev called by the owner to unpause, returns to normal state
    |  */
  > |  function unpause() public onlyOwner whenPaused returns (bool) {
    |    paused = false;
    |    emit Unpause();
  at /home/jiaming/mavs_srcs/contract@0x4eef32781db07a9b7d9d36bb9ba81fa08af9d3ab.sol(241)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |  function transferOwnership(address newOwner) public onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4eef32781db07a9b7d9d36bb9ba81fa08af9d3ab.sol(24)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |  */
    |  function pause() public onlyOwner whenNotPaused returns (bool) {
  > |    paused = true;
    |    emit Pause();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x4eef32781db07a9b7d9d36bb9ba81fa08af9d3ab.sol(233)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |  */
    |  function unpause() public onlyOwner whenPaused returns (bool) {
  > |    paused = false;
    |    emit Unpause();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x4eef32781db07a9b7d9d36bb9ba81fa08af9d3ab.sol(242)

[33mWarning[0m for LockedEther in contract 'RVTCoin':
    |
    |// ================= RVTCoin  start =======================
  > |contract RVTCoin is StandardToken, Pausable {
    |  string public constant name = 'Renvale Token';
    |  string public constant symbol = 'RVT';
  at /home/jiaming/mavs_srcs/contract@0x4eef32781db07a9b7d9d36bb9ba81fa08af9d3ab.sol(250)

[31mViolation[0m for UnrestrictedWrite in contract 'RVTCoin':
    |      require(balances[msg.sender] >= _value);   // Check if the sender has enough
    |      balances[msg.sender] -= _value;            // Subtract from the sender
  > |      totalSupply_ -= _value;                      // Updates totalSupply
    |      emit Burn(msg.sender, _value);
    |      return true;
  at /home/jiaming/mavs_srcs/contract@0x4eef32781db07a9b7d9d36bb9ba81fa08af9d3ab.sol(193)

[33mWarning[0m for UnrestrictedWrite in contract 'RVTCoin':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x4eef32781db07a9b7d9d36bb9ba81fa08af9d3ab.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'RVTCoin':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x4eef32781db07a9b7d9d36bb9ba81fa08af9d3ab.sol(151)

[33mWarning[0m for UnrestrictedWrite in contract 'RVTCoin':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x4eef32781db07a9b7d9d36bb9ba81fa08af9d3ab.sol(167)

[33mWarning[0m for UnrestrictedWrite in contract 'RVTCoin':
    |  function burn(uint256 _value) public returns (bool success) {
    |      require(balances[msg.sender] >= _value);   // Check if the sender has enough
  > |      balances[msg.sender] -= _value;            // Subtract from the sender
    |      totalSupply_ -= _value;                      // Updates totalSupply
    |      emit Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x4eef32781db07a9b7d9d36bb9ba81fa08af9d3ab.sol(192)

[33mWarning[0m for UnrestrictedWrite in contract 'RVTCoin':
    |  function transferOwnership(address newOwner) public onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4eef32781db07a9b7d9d36bb9ba81fa08af9d3ab.sol(24)

[33mWarning[0m for UnrestrictedWrite in contract 'RVTCoin':
    |  */
    |  function pause() public onlyOwner whenNotPaused returns (bool) {
  > |    paused = true;
    |    emit Pause();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x4eef32781db07a9b7d9d36bb9ba81fa08af9d3ab.sol(233)

[33mWarning[0m for UnrestrictedWrite in contract 'RVTCoin':
    |  */
    |  function unpause() public onlyOwner whenPaused returns (bool) {
  > |    paused = false;
    |    emit Unpause();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x4eef32781db07a9b7d9d36bb9ba81fa08af9d3ab.sol(242)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |
    |// ================= Safemath Lib ============================
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x4eef32781db07a9b7d9d36bb9ba81fa08af9d3ab.sol(31)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |
    |// ================= Standard Token Contract start ======================
  > |contract StandardToken is ERC20 {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x4eef32781db07a9b7d9d36bb9ba81fa08af9d3ab.sol(97)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |      require(balances[msg.sender] >= _value);   // Check if the sender has enough
    |      balances[msg.sender] -= _value;            // Subtract from the sender
  > |      totalSupply_ -= _value;                      // Updates totalSupply
    |      emit Burn(msg.sender, _value);
    |      return true;
  at /home/jiaming/mavs_srcs/contract@0x4eef32781db07a9b7d9d36bb9ba81fa08af9d3ab.sol(193)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x4eef32781db07a9b7d9d36bb9ba81fa08af9d3ab.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x4eef32781db07a9b7d9d36bb9ba81fa08af9d3ab.sol(151)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x4eef32781db07a9b7d9d36bb9ba81fa08af9d3ab.sol(167)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  function burn(uint256 _value) public returns (bool success) {
    |      require(balances[msg.sender] >= _value);   // Check if the sender has enough
  > |      balances[msg.sender] -= _value;            // Subtract from the sender
    |      totalSupply_ -= _value;                      // Updates totalSupply
    |      emit Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x4eef32781db07a9b7d9d36bb9ba81fa08af9d3ab.sol(192)


