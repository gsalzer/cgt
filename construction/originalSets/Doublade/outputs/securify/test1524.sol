Processing contract: /home/jiaming/mavs_srcs/contract@0x611171923b84185e9328827cfaae6630481ecc7a.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x611171923b84185e9328827cfaae6630481ecc7a.sol:BurnableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x611171923b84185e9328827cfaae6630481ecc7a.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x611171923b84185e9328827cfaae6630481ecc7a.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x611171923b84185e9328827cfaae6630481ecc7a.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x611171923b84185e9328827cfaae6630481ecc7a.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x611171923b84185e9328827cfaae6630481ecc7a.sol:PausableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x611171923b84185e9328827cfaae6630481ecc7a.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x611171923b84185e9328827cfaae6630481ecc7a.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x611171923b84185e9328827cfaae6630481ecc7a.sol:Streamity
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
  at /home/jiaming/mavs_srcs/contract@0x611171923b84185e9328827cfaae6630481ecc7a.sol(52)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x611171923b84185e9328827cfaae6630481ecc7a.sol(76)

[33mWarning[0m for LockedEther in contract 'BurnableToken':
    | * @dev Token that can be irreversibly burned (destroyed).
    | */
  > |contract BurnableToken is PausableToken {
    |
    |  event Burn(address indexed burner, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0x611171923b84185e9328827cfaae6630481ecc7a.sol(298)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x611171923b84185e9328827cfaae6630481ecc7a.sol(76)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x611171923b84185e9328827cfaae6630481ecc7a.sol(197)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x611171923b84185e9328827cfaae6630481ecc7a.sol(213)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x611171923b84185e9328827cfaae6630481ecc7a.sol(239)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x611171923b84185e9328827cfaae6630481ecc7a.sol(257)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x611171923b84185e9328827cfaae6630481ecc7a.sol(259)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |    address burner = msg.sender;
  > |    balances[burner] = balances[burner].sub(_value);
    |    totalSupply_ = totalSupply_.sub(_value);
    |    Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0x611171923b84185e9328827cfaae6630481ecc7a.sol(312)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x611171923b84185e9328827cfaae6630481ecc7a.sol(125)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    function pause() public onlyOwner
    |    {
  > |        paused = true;
    |        EPause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x611171923b84185e9328827cfaae6630481ecc7a.sol(151)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    function unpause() public onlyOwner
    |    {
  > |        paused = false;
    |        EUnpause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x611171923b84185e9328827cfaae6630481ecc7a.sol(163)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x611171923b84185e9328827cfaae6630481ecc7a.sol(98)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x611171923b84185e9328827cfaae6630481ecc7a.sol(99)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));
    |    owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x611171923b84185e9328827cfaae6630481ecc7a.sol(123)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x611171923b84185e9328827cfaae6630481ecc7a.sol(125)

[33mWarning[0m for LockedEther in contract 'Pausable':
    |}
    |
  > |contract Pausable is Ownable {
    |
    |    event EPause();
  at /home/jiaming/mavs_srcs/contract@0x611171923b84185e9328827cfaae6630481ecc7a.sol(130)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x611171923b84185e9328827cfaae6630481ecc7a.sol(99)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));
    |    owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x611171923b84185e9328827cfaae6630481ecc7a.sol(123)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |    event EUnpause();
    |
  > |    bool public paused = true;
    |
    |    modifier whenNotPaused()
  at /home/jiaming/mavs_srcs/contract@0x611171923b84185e9328827cfaae6630481ecc7a.sol(135)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |    }
    |
  > |    function pause() public onlyOwner
    |    {
    |        paused = true;
  at /home/jiaming/mavs_srcs/contract@0x611171923b84185e9328827cfaae6630481ecc7a.sol(149)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |    }
    |
  > |    function unpause() public onlyOwner
    |    {
    |        paused = false;
  at /home/jiaming/mavs_srcs/contract@0x611171923b84185e9328827cfaae6630481ecc7a.sol(161)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |    }
    |
  > |    function isPaused() view public returns(bool) {
    |        return paused;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x611171923b84185e9328827cfaae6630481ecc7a.sol(167)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x611171923b84185e9328827cfaae6630481ecc7a.sol(125)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    function pause() public onlyOwner
    |    {
  > |        paused = true;
    |        EPause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x611171923b84185e9328827cfaae6630481ecc7a.sol(151)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    function unpause() public onlyOwner
    |    {
  > |        paused = false;
    |        EUnpause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x611171923b84185e9328827cfaae6630481ecc7a.sol(163)

[33mWarning[0m for LockedEther in contract 'PausableToken':
    | * @dev StandardToken modified with pausable transfers.
    | **/
  > |contract PausableToken is StandardToken, Pausable {
    |
    |  function transfer(address _to, uint256 _value) public whenNotPaused returns (bool) {
  at /home/jiaming/mavs_srcs/contract@0x611171923b84185e9328827cfaae6630481ecc7a.sol(271)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x611171923b84185e9328827cfaae6630481ecc7a.sol(76)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x611171923b84185e9328827cfaae6630481ecc7a.sol(197)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x611171923b84185e9328827cfaae6630481ecc7a.sol(213)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x611171923b84185e9328827cfaae6630481ecc7a.sol(239)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x611171923b84185e9328827cfaae6630481ecc7a.sol(257)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x611171923b84185e9328827cfaae6630481ecc7a.sol(259)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x611171923b84185e9328827cfaae6630481ecc7a.sol(125)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    function pause() public onlyOwner
    |    {
  > |        paused = true;
    |        EPause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x611171923b84185e9328827cfaae6630481ecc7a.sol(151)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    function unpause() public onlyOwner
    |    {
  > |        paused = false;
    |        EUnpause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x611171923b84185e9328827cfaae6630481ecc7a.sol(163)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | */
    |
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x611171923b84185e9328827cfaae6630481ecc7a.sol(8)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is ERC20, BasicToken {
    |  using SafeMath for uint256;
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0x611171923b84185e9328827cfaae6630481ecc7a.sol(179)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x611171923b84185e9328827cfaae6630481ecc7a.sol(76)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x611171923b84185e9328827cfaae6630481ecc7a.sol(197)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x611171923b84185e9328827cfaae6630481ecc7a.sol(213)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x611171923b84185e9328827cfaae6630481ecc7a.sol(239)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x611171923b84185e9328827cfaae6630481ecc7a.sol(257)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x611171923b84185e9328827cfaae6630481ecc7a.sol(259)

[33mWarning[0m for LockedEther in contract 'Streamity':
    |}
    |
  > |contract Streamity is BurnableToken {
    |
    |    string public constant name = "Streamity";
  at /home/jiaming/mavs_srcs/contract@0x611171923b84185e9328827cfaae6630481ecc7a.sol(318)

[33mWarning[0m for UnrestrictedWrite in contract 'Streamity':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x611171923b84185e9328827cfaae6630481ecc7a.sol(76)

[33mWarning[0m for UnrestrictedWrite in contract 'Streamity':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x611171923b84185e9328827cfaae6630481ecc7a.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'Streamity':
    |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x611171923b84185e9328827cfaae6630481ecc7a.sol(125)

[33mWarning[0m for UnrestrictedWrite in contract 'Streamity':
    |    function pause() public onlyOwner
    |    {
  > |        paused = true;
    |        EPause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x611171923b84185e9328827cfaae6630481ecc7a.sol(151)

[33mWarning[0m for UnrestrictedWrite in contract 'Streamity':
    |    function unpause() public onlyOwner
    |    {
  > |        paused = false;
    |        EUnpause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x611171923b84185e9328827cfaae6630481ecc7a.sol(163)

[33mWarning[0m for UnrestrictedWrite in contract 'Streamity':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x611171923b84185e9328827cfaae6630481ecc7a.sol(195)

[33mWarning[0m for UnrestrictedWrite in contract 'Streamity':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x611171923b84185e9328827cfaae6630481ecc7a.sol(196)

[33mWarning[0m for UnrestrictedWrite in contract 'Streamity':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x611171923b84185e9328827cfaae6630481ecc7a.sol(197)

[33mWarning[0m for UnrestrictedWrite in contract 'Streamity':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x611171923b84185e9328827cfaae6630481ecc7a.sol(213)

[33mWarning[0m for UnrestrictedWrite in contract 'Streamity':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x611171923b84185e9328827cfaae6630481ecc7a.sol(239)

[33mWarning[0m for UnrestrictedWrite in contract 'Streamity':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x611171923b84185e9328827cfaae6630481ecc7a.sol(257)

[33mWarning[0m for UnrestrictedWrite in contract 'Streamity':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x611171923b84185e9328827cfaae6630481ecc7a.sol(259)

[33mWarning[0m for UnrestrictedWrite in contract 'Streamity':
    |
    |    address burner = msg.sender;
  > |    balances[burner] = balances[burner].sub(_value);
    |    totalSupply_ = totalSupply_.sub(_value);
    |    Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0x611171923b84185e9328827cfaae6630481ecc7a.sol(312)

[33mWarning[0m for UnrestrictedWrite in contract 'Streamity':
    |    address burner = msg.sender;
    |    balances[burner] = balances[burner].sub(_value);
  > |    totalSupply_ = totalSupply_.sub(_value);
    |    Burn(burner, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x611171923b84185e9328827cfaae6630481ecc7a.sol(313)

[33mWarning[0m for UnrestrictedWrite in contract 'Streamity':
    |        require(_to != address(0));
    |        require(_value <= balances[tokenOwner]);
  > |        balances[tokenOwner] = balances[tokenOwner].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(tokenOwner, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x611171923b84185e9328827cfaae6630481ecc7a.sol(360)

[33mWarning[0m for UnrestrictedWrite in contract 'Streamity':
    |        require(_value <= balances[tokenOwner]);
    |        balances[tokenOwner] = balances[tokenOwner].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        Transfer(tokenOwner, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x611171923b84185e9328827cfaae6630481ecc7a.sol(361)

[33mWarning[0m for UnrestrictedWrite in contract 'Streamity':
    |        uint amount = 23250000 ether;
    |
  > |        balances[this] = balances[this].sub(amount);
    |        balances[teamWallet] = balances[teamWallet].add(amount);
    |        Transfer(this, teamWallet, amount);
  at /home/jiaming/mavs_srcs/contract@0x611171923b84185e9328827cfaae6630481ecc7a.sol(370)

[33mWarning[0m for UnrestrictedWrite in contract 'Streamity':
    |
    |        balances[this] = balances[this].sub(amount);
  > |        balances[teamWallet] = balances[teamWallet].add(amount);
    |        Transfer(this, teamWallet, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x611171923b84185e9328827cfaae6630481ecc7a.sol(371)


