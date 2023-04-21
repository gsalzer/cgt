Processing contract: /home/jiaming/mavs_srcs/contract@0x3cfce5b9e9109f3f13ead2579b867418b7c13bf1.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3cfce5b9e9109f3f13ead2579b867418b7c13bf1.sol:CCCRCoin
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3cfce5b9e9109f3f13ead2579b867418b7c13bf1.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x3cfce5b9e9109f3f13ead2579b867418b7c13bf1.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x3cfce5b9e9109f3f13ead2579b867418b7c13bf1.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3cfce5b9e9109f3f13ead2579b867418b7c13bf1.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3cfce5b9e9109f3f13ead2579b867418b7c13bf1.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3cfce5b9e9109f3f13ead2579b867418b7c13bf1.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    |}
    |
  > |contract BasicToken is ERC20Basic {
    |  using SafeMath for uint256;
    |  address public saleAddress;
  at /home/jiaming/mavs_srcs/contract@0x3cfce5b9e9109f3f13ead2579b867418b7c13bf1.sol(140)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    if (msg.sender == saleAddress) {
  at /home/jiaming/mavs_srcs/contract@0x3cfce5b9e9109f3f13ead2579b867418b7c13bf1.sol(162)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x3cfce5b9e9109f3f13ead2579b867418b7c13bf1.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x3cfce5b9e9109f3f13ead2579b867418b7c13bf1.sol(120)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x3cfce5b9e9109f3f13ead2579b867418b7c13bf1.sol(128)

[33mWarning[0m for LockedEther in contract 'CCCRCoin':
    |}
    |
  > |contract CCCRCoin is StandardToken {
    |
    |  string public name = "Crypto Credit Card Token";
  at /home/jiaming/mavs_srcs/contract@0x3cfce5b9e9109f3f13ead2579b867418b7c13bf1.sol(231)

[33mWarning[0m for UnrestrictedWrite in contract 'CCCRCoin':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    if (msg.sender == saleAddress) {
  at /home/jiaming/mavs_srcs/contract@0x3cfce5b9e9109f3f13ead2579b867418b7c13bf1.sol(162)

[33mWarning[0m for UnrestrictedWrite in contract 'CCCRCoin':
    |
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    if (msg.sender == saleAddress) {
    |      Transfer(this, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x3cfce5b9e9109f3f13ead2579b867418b7c13bf1.sol(163)

[33mWarning[0m for UnrestrictedWrite in contract 'CCCRCoin':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x3cfce5b9e9109f3f13ead2579b867418b7c13bf1.sol(200)

[33mWarning[0m for UnrestrictedWrite in contract 'CCCRCoin':
    |
    |    balances[_to] = balances[_to].add(_value);
  > |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |
  at /home/jiaming/mavs_srcs/contract@0x3cfce5b9e9109f3f13ead2579b867418b7c13bf1.sol(201)

[33mWarning[0m for UnrestrictedWrite in contract 'CCCRCoin':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x3cfce5b9e9109f3f13ead2579b867418b7c13bf1.sol(202)

[33mWarning[0m for UnrestrictedWrite in contract 'CCCRCoin':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x3cfce5b9e9109f3f13ead2579b867418b7c13bf1.sol(214)

[33mWarning[0m for UnrestrictedWrite in contract 'CCCRCoin':
    |  
    |  function serHoldTime(address _address, uint256 _seconds) external onlyOwner {
  > |      holdTime[_address] = block.timestamp.add(_seconds);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x3cfce5b9e9109f3f13ead2579b867418b7c13bf1.sol(491)

[33mWarning[0m for UnrestrictedWrite in contract 'CCCRCoin':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x3cfce5b9e9109f3f13ead2579b867418b7c13bf1.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'CCCRCoin':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x3cfce5b9e9109f3f13ead2579b867418b7c13bf1.sol(120)

[33mWarning[0m for UnrestrictedWrite in contract 'CCCRCoin':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x3cfce5b9e9109f3f13ead2579b867418b7c13bf1.sol(128)

[33mWarning[0m for UnrestrictedWrite in contract 'CCCRCoin':
    |
    |  function setSaleAddress(address _saleAddress) external onlyOwner {
  > |    saleAddress = _saleAddress;
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0x3cfce5b9e9109f3f13ead2579b867418b7c13bf1.sol(487)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x3cfce5b9e9109f3f13ead2579b867418b7c13bf1.sol(54)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x3cfce5b9e9109f3f13ead2579b867418b7c13bf1.sol(55)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x3cfce5b9e9109f3f13ead2579b867418b7c13bf1.sol(81)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x3cfce5b9e9109f3f13ead2579b867418b7c13bf1.sol(84)

[33mWarning[0m for LockedEther in contract 'Pausable':
    | * @dev Base contract which allows children to implement an emergency stop mechanism.
    | */
  > |contract Pausable is Ownable {
    |  event Pause();
    |  event Unpause();
  at /home/jiaming/mavs_srcs/contract@0x3cfce5b9e9109f3f13ead2579b867418b7c13bf1.sol(93)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x3cfce5b9e9109f3f13ead2579b867418b7c13bf1.sol(55)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x3cfce5b9e9109f3f13ead2579b867418b7c13bf1.sol(81)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  event Unpause();
    |
  > |  bool public paused = false;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x3cfce5b9e9109f3f13ead2579b867418b7c13bf1.sol(97)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to pause, triggers stopped state
    |   */
  > |  function pause() onlyOwner whenNotPaused public {
    |    paused = true;
    |    Pause();
  at /home/jiaming/mavs_srcs/contract@0x3cfce5b9e9109f3f13ead2579b867418b7c13bf1.sol(119)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to unpause, returns to normal state
    |   */
  > |  function unpause() onlyOwner whenPaused public {
    |    paused = false;
    |    Unpause();
  at /home/jiaming/mavs_srcs/contract@0x3cfce5b9e9109f3f13ead2579b867418b7c13bf1.sol(127)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x3cfce5b9e9109f3f13ead2579b867418b7c13bf1.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x3cfce5b9e9109f3f13ead2579b867418b7c13bf1.sol(120)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x3cfce5b9e9109f3f13ead2579b867418b7c13bf1.sol(128)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x3cfce5b9e9109f3f13ead2579b867418b7c13bf1.sol(7)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) allowed;
  at /home/jiaming/mavs_srcs/contract@0x3cfce5b9e9109f3f13ead2579b867418b7c13bf1.sol(190)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    if (msg.sender == saleAddress) {
  at /home/jiaming/mavs_srcs/contract@0x3cfce5b9e9109f3f13ead2579b867418b7c13bf1.sol(162)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x3cfce5b9e9109f3f13ead2579b867418b7c13bf1.sol(202)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x3cfce5b9e9109f3f13ead2579b867418b7c13bf1.sol(214)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x3cfce5b9e9109f3f13ead2579b867418b7c13bf1.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x3cfce5b9e9109f3f13ead2579b867418b7c13bf1.sol(120)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x3cfce5b9e9109f3f13ead2579b867418b7c13bf1.sol(128)


