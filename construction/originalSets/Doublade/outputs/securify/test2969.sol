Processing contract: /home/jiaming/mavs_srcs/contract@0xc2fbcfc668c4ec48f50747cc51158118fb460e9b.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xc2fbcfc668c4ec48f50747cc51158118fb460e9b.sol:ModToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc2fbcfc668c4ec48f50747cc51158118fb460e9b.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc2fbcfc668c4ec48f50747cc51158118fb460e9b.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc2fbcfc668c4ec48f50747cc51158118fb460e9b.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc2fbcfc668c4ec48f50747cc51158118fb460e9b.sol:SieChain
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc2fbcfc668c4ec48f50747cc51158118fb460e9b.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'ModToken':
    | * Pausable token with moderator role and freeze address implementation
    | **/
  > |contract ModToken is StandardToken {
    |
    |  mapping(address => bool) frozen;
  at /home/jiaming/mavs_srcs/contract@0xc2fbcfc668c4ec48f50747cc51158118fb460e9b.sol(235)

[33mWarning[0m for UnrestrictedWrite in contract 'ModToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc2fbcfc668c4ec48f50747cc51158118fb460e9b.sol(182)

[33mWarning[0m for UnrestrictedWrite in contract 'ModToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc2fbcfc668c4ec48f50747cc51158118fb460e9b.sol(200)

[33mWarning[0m for UnrestrictedWrite in contract 'ModToken':
    |    //  https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc2fbcfc668c4ec48f50747cc51158118fb460e9b.sol(216)

[33mWarning[0m for UnrestrictedWrite in contract 'ModToken':
    |    require(newOwner != address(0));      
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc2fbcfc668c4ec48f50747cc51158118fb460e9b.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'ModToken':
    |   */
    |  function pause() onlyOwner whenNotPaused {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc2fbcfc668c4ec48f50747cc51158118fb460e9b.sol(101)

[33mWarning[0m for UnrestrictedWrite in contract 'ModToken':
    |   */
    |  function unpause() onlyOwner whenPaused {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc2fbcfc668c4ec48f50747cc51158118fb460e9b.sol(109)

[33mWarning[0m for UnrestrictedWrite in contract 'ModToken':
    |   */
    |  function freeze(address _addr) onlyOwner {
  > |      frozen[_addr] = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc2fbcfc668c4ec48f50747cc51158118fb460e9b.sol(250)

[33mWarning[0m for UnrestrictedWrite in contract 'ModToken':
    |   */
    |  function unfreeze(address _addr) onlyOwner {
  > |      frozen[_addr] = false;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc2fbcfc668c4ec48f50747cc51158118fb460e9b.sol(257)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * The Ownable contract has an owner address, and provides basic authorization control
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xc2fbcfc668c4ec48f50747cc51158118fb460e9b.sol(35)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xc2fbcfc668c4ec48f50747cc51158118fb460e9b.sol(36)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * Allows the current owner to transfer control of the contract to a newOwner.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));      
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xc2fbcfc668c4ec48f50747cc51158118fb460e9b.sol(62)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));      
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc2fbcfc668c4ec48f50747cc51158118fb460e9b.sol(65)

[33mWarning[0m for LockedEther in contract 'Pausable':
    | * Base contract which allows children to implement an emergency stop mechanism.
    | */
  > |contract Pausable is Ownable {
    |  event Pause();
    |  event Unpause();
  at /home/jiaming/mavs_srcs/contract@0xc2fbcfc668c4ec48f50747cc51158118fb460e9b.sol(74)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xc2fbcfc668c4ec48f50747cc51158118fb460e9b.sol(36)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * Allows the current owner to transfer control of the contract to a newOwner.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));      
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xc2fbcfc668c4ec48f50747cc51158118fb460e9b.sol(62)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  event Unpause();
    |
  > |  bool public paused = false;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xc2fbcfc668c4ec48f50747cc51158118fb460e9b.sol(78)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * called by the owner to pause, triggers stopped state
    |   */
  > |  function pause() onlyOwner whenNotPaused {
    |    paused = true;
    |    Pause();
  at /home/jiaming/mavs_srcs/contract@0xc2fbcfc668c4ec48f50747cc51158118fb460e9b.sol(100)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * called by the owner to unpause, returns to normal state
    |   */
  > |  function unpause() onlyOwner whenPaused {
    |    paused = false;
    |    Unpause();
  at /home/jiaming/mavs_srcs/contract@0xc2fbcfc668c4ec48f50747cc51158118fb460e9b.sol(108)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    require(newOwner != address(0));      
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc2fbcfc668c4ec48f50747cc51158118fb460e9b.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function pause() onlyOwner whenNotPaused {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc2fbcfc668c4ec48f50747cc51158118fb460e9b.sol(101)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function unpause() onlyOwner whenPaused {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc2fbcfc668c4ec48f50747cc51158118fb460e9b.sol(109)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xc2fbcfc668c4ec48f50747cc51158118fb460e9b.sol(7)

[33mWarning[0m for LockedEther in contract 'SieChain':
    |
    |
  > |contract SieChain is ModToken {
    |   uint256 _initialAmount = 1000000000;
    |    uint8 constant public decimals = 8;
  at /home/jiaming/mavs_srcs/contract@0xc2fbcfc668c4ec48f50747cc51158118fb460e9b.sol(281)

[33mWarning[0m for UnrestrictedWrite in contract 'SieChain':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc2fbcfc668c4ec48f50747cc51158118fb460e9b.sol(182)

[33mWarning[0m for UnrestrictedWrite in contract 'SieChain':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc2fbcfc668c4ec48f50747cc51158118fb460e9b.sol(200)

[33mWarning[0m for UnrestrictedWrite in contract 'SieChain':
    |    //  https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc2fbcfc668c4ec48f50747cc51158118fb460e9b.sol(216)

[33mWarning[0m for UnrestrictedWrite in contract 'SieChain':
    |    require(newOwner != address(0));      
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc2fbcfc668c4ec48f50747cc51158118fb460e9b.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'SieChain':
    |   */
    |  function pause() onlyOwner whenNotPaused {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc2fbcfc668c4ec48f50747cc51158118fb460e9b.sol(101)

[33mWarning[0m for UnrestrictedWrite in contract 'SieChain':
    |   */
    |  function unpause() onlyOwner whenPaused {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc2fbcfc668c4ec48f50747cc51158118fb460e9b.sol(109)

[33mWarning[0m for UnrestrictedWrite in contract 'SieChain':
    |   */
    |  function freeze(address _addr) onlyOwner {
  > |      frozen[_addr] = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc2fbcfc668c4ec48f50747cc51158118fb460e9b.sol(250)

[33mWarning[0m for UnrestrictedWrite in contract 'SieChain':
    |   */
    |  function unfreeze(address _addr) onlyOwner {
  > |      frozen[_addr] = false;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc2fbcfc668c4ec48f50747cc51158118fb460e9b.sol(257)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev https://github.com/ethereum/EIPs/issues/20
    | */
  > |contract StandardToken is ERC20, Pausable {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xc2fbcfc668c4ec48f50747cc51158118fb460e9b.sol(135)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc2fbcfc668c4ec48f50747cc51158118fb460e9b.sol(182)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc2fbcfc668c4ec48f50747cc51158118fb460e9b.sol(200)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    //  https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc2fbcfc668c4ec48f50747cc51158118fb460e9b.sol(216)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require(newOwner != address(0));      
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc2fbcfc668c4ec48f50747cc51158118fb460e9b.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function pause() onlyOwner whenNotPaused {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc2fbcfc668c4ec48f50747cc51158118fb460e9b.sol(101)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function unpause() onlyOwner whenPaused {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc2fbcfc668c4ec48f50747cc51158118fb460e9b.sol(109)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function freeze(address _addr) onlyOwner {
  > |      frozen[_addr] = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc2fbcfc668c4ec48f50747cc51158118fb460e9b.sol(154)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function unfreeze(address _addr) onlyOwner {
  > |      frozen[_addr] = false;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc2fbcfc668c4ec48f50747cc51158118fb460e9b.sol(161)


