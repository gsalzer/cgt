Processing contract: /home/jiaming/mavs_srcs/contract@0x0e970a9fda47a01b37fa4e2f828927a7ebe998e5.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0e970a9fda47a01b37fa4e2f828927a7ebe998e5.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x0e970a9fda47a01b37fa4e2f828927a7ebe998e5.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x0e970a9fda47a01b37fa4e2f828927a7ebe998e5.sol:GlobalChain
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0e970a9fda47a01b37fa4e2f828927a7ebe998e5.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0e970a9fda47a01b37fa4e2f828927a7ebe998e5.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0e970a9fda47a01b37fa4e2f828927a7ebe998e5.sol:PausableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0e970a9fda47a01b37fa4e2f828927a7ebe998e5.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0e970a9fda47a01b37fa4e2f828927a7ebe998e5.sol:StandardToken
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
  at /home/jiaming/mavs_srcs/contract@0x0e970a9fda47a01b37fa4e2f828927a7ebe998e5.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x0e970a9fda47a01b37fa4e2f828927a7ebe998e5.sol(80)

[33mWarning[0m for LockedEther in contract 'GlobalChain':
    |
    |
  > |contract GlobalChain is PausableToken {
    |    string  public  constant name = "Global Chain";
    |    string  public  constant symbol = "GLCS";
  at /home/jiaming/mavs_srcs/contract@0x0e970a9fda47a01b37fa4e2f828927a7ebe998e5.sol(286)

[33mWarning[0m for UnhandledException in contract 'GlobalChain':
    |    function emergencyERC20Drain( ERC20 token, uint amount ) onlyOwner {
    |        // owner can drain tokens that are sent here by mistake
  > |        token.transfer( owner, amount );
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x0e970a9fda47a01b37fa4e2f828927a7ebe998e5.sol(339)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GlobalChain':
    |    function emergencyERC20Drain( ERC20 token, uint amount ) onlyOwner {
    |        // owner can drain tokens that are sent here by mistake
  > |        token.transfer( owner, amount );
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x0e970a9fda47a01b37fa4e2f828927a7ebe998e5.sol(339)

[33mWarning[0m for UnrestrictedWrite in contract 'GlobalChain':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x0e970a9fda47a01b37fa4e2f828927a7ebe998e5.sol(80)

[33mWarning[0m for UnrestrictedWrite in contract 'GlobalChain':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0e970a9fda47a01b37fa4e2f828927a7ebe998e5.sol(81)

[33mWarning[0m for UnrestrictedWrite in contract 'GlobalChain':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x0e970a9fda47a01b37fa4e2f828927a7ebe998e5.sol(120)

[33mWarning[0m for UnrestrictedWrite in contract 'GlobalChain':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x0e970a9fda47a01b37fa4e2f828927a7ebe998e5.sol(121)

[33mWarning[0m for UnrestrictedWrite in contract 'GlobalChain':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0e970a9fda47a01b37fa4e2f828927a7ebe998e5.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'GlobalChain':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0e970a9fda47a01b37fa4e2f828927a7ebe998e5.sol(138)

[33mWarning[0m for UnrestrictedWrite in contract 'GlobalChain':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0e970a9fda47a01b37fa4e2f828927a7ebe998e5.sol(160)

[33mWarning[0m for UnrestrictedWrite in contract 'GlobalChain':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x0e970a9fda47a01b37fa4e2f828927a7ebe998e5.sol(168)

[33mWarning[0m for UnrestrictedWrite in contract 'GlobalChain':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x0e970a9fda47a01b37fa4e2f828927a7ebe998e5.sol(170)

[33mWarning[0m for UnrestrictedWrite in contract 'GlobalChain':
    |    function burn(uint _value) returns (bool)
    |    {
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
    |        Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x0e970a9fda47a01b37fa4e2f828927a7ebe998e5.sol(323)

[33mWarning[0m for UnrestrictedWrite in contract 'GlobalChain':
    |    {
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
  > |        totalSupply = totalSupply.sub(_value);
    |        Burn(msg.sender, _value);
    |        Transfer(msg.sender, address(0x0), _value);
  at /home/jiaming/mavs_srcs/contract@0x0e970a9fda47a01b37fa4e2f828927a7ebe998e5.sol(324)

[33mWarning[0m for UnrestrictedWrite in contract 'GlobalChain':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x0e970a9fda47a01b37fa4e2f828927a7ebe998e5.sol(215)

[33mWarning[0m for UnrestrictedWrite in contract 'GlobalChain':
    |    require(!(newPausedPublic == false && newPausedOwnerAdmin == true));
    |
  > |    pausedPublic = newPausedPublic;
    |    pausedOwnerAdmin = newPausedOwnerAdmin;
    |
  at /home/jiaming/mavs_srcs/contract@0x0e970a9fda47a01b37fa4e2f828927a7ebe998e5.sol(254)

[33mWarning[0m for UnrestrictedWrite in contract 'GlobalChain':
    |
    |    pausedPublic = newPausedPublic;
  > |    pausedOwnerAdmin = newPausedOwnerAdmin;
    |
    |    PausePublic(newPausedPublic);
  at /home/jiaming/mavs_srcs/contract@0x0e970a9fda47a01b37fa4e2f828927a7ebe998e5.sol(255)

[33mWarning[0m for UnrestrictedWrite in contract 'GlobalChain':
    |        // owner can re-assign the admin
    |        AdminTransferred(admin, newAdmin);
  > |        admin = newAdmin;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x0e970a9fda47a01b37fa4e2f828927a7ebe998e5.sol(347)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x0e970a9fda47a01b37fa4e2f828927a7ebe998e5.sol(183)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x0e970a9fda47a01b37fa4e2f828927a7ebe998e5.sol(184)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x0e970a9fda47a01b37fa4e2f828927a7ebe998e5.sol(212)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x0e970a9fda47a01b37fa4e2f828927a7ebe998e5.sol(215)

[33mWarning[0m for LockedEther in contract 'Pausable':
    | * @dev Base contract which allows children to implement an emergency stop mechanism.
    | */
  > |contract Pausable is Ownable {
    |  event PausePublic(bool newState);
    |  event PauseOwnerAdmin(bool newState);
  at /home/jiaming/mavs_srcs/contract@0x0e970a9fda47a01b37fa4e2f828927a7ebe998e5.sol(224)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x0e970a9fda47a01b37fa4e2f828927a7ebe998e5.sol(184)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x0e970a9fda47a01b37fa4e2f828927a7ebe998e5.sol(212)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  event PauseOwnerAdmin(bool newState);
    |
  > |  bool public pausedPublic = false;
    |  bool public pausedOwnerAdmin = false;
    |
  at /home/jiaming/mavs_srcs/contract@0x0e970a9fda47a01b37fa4e2f828927a7ebe998e5.sol(228)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |
    |  bool public pausedPublic = false;
  > |  bool public pausedOwnerAdmin = false;
    |
    |  address public admin;
  at /home/jiaming/mavs_srcs/contract@0x0e970a9fda47a01b37fa4e2f828927a7ebe998e5.sol(229)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  bool public pausedOwnerAdmin = false;
    |
  > |  address public admin;
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x0e970a9fda47a01b37fa4e2f828927a7ebe998e5.sol(231)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x0e970a9fda47a01b37fa4e2f828927a7ebe998e5.sol(215)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    require(!(newPausedPublic == false && newPausedOwnerAdmin == true));
    |
  > |    pausedPublic = newPausedPublic;
    |    pausedOwnerAdmin = newPausedOwnerAdmin;
    |
  at /home/jiaming/mavs_srcs/contract@0x0e970a9fda47a01b37fa4e2f828927a7ebe998e5.sol(254)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |
    |    pausedPublic = newPausedPublic;
  > |    pausedOwnerAdmin = newPausedOwnerAdmin;
    |
    |    PausePublic(newPausedPublic);
  at /home/jiaming/mavs_srcs/contract@0x0e970a9fda47a01b37fa4e2f828927a7ebe998e5.sol(255)

[33mWarning[0m for LockedEther in contract 'PausableToken':
    |}
    |
  > |contract PausableToken is StandardToken, Pausable {
    |
    |  function transfer(address _to, uint256 _value) public whenNotPaused returns (bool) {
  at /home/jiaming/mavs_srcs/contract@0x0e970a9fda47a01b37fa4e2f828927a7ebe998e5.sol(262)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x0e970a9fda47a01b37fa4e2f828927a7ebe998e5.sol(80)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0e970a9fda47a01b37fa4e2f828927a7ebe998e5.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0e970a9fda47a01b37fa4e2f828927a7ebe998e5.sol(138)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0e970a9fda47a01b37fa4e2f828927a7ebe998e5.sol(160)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x0e970a9fda47a01b37fa4e2f828927a7ebe998e5.sol(168)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x0e970a9fda47a01b37fa4e2f828927a7ebe998e5.sol(170)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x0e970a9fda47a01b37fa4e2f828927a7ebe998e5.sol(215)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    require(!(newPausedPublic == false && newPausedOwnerAdmin == true));
    |
  > |    pausedPublic = newPausedPublic;
    |    pausedOwnerAdmin = newPausedOwnerAdmin;
    |
  at /home/jiaming/mavs_srcs/contract@0x0e970a9fda47a01b37fa4e2f828927a7ebe998e5.sol(254)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |
    |    pausedPublic = newPausedPublic;
  > |    pausedOwnerAdmin = newPausedOwnerAdmin;
    |
    |    PausePublic(newPausedPublic);
  at /home/jiaming/mavs_srcs/contract@0x0e970a9fda47a01b37fa4e2f828927a7ebe998e5.sol(255)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0x0e970a9fda47a01b37fa4e2f828927a7ebe998e5.sol(31)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0x0e970a9fda47a01b37fa4e2f828927a7ebe998e5.sol(104)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x0e970a9fda47a01b37fa4e2f828927a7ebe998e5.sol(80)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0e970a9fda47a01b37fa4e2f828927a7ebe998e5.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0e970a9fda47a01b37fa4e2f828927a7ebe998e5.sol(138)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0e970a9fda47a01b37fa4e2f828927a7ebe998e5.sol(160)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x0e970a9fda47a01b37fa4e2f828927a7ebe998e5.sol(168)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x0e970a9fda47a01b37fa4e2f828927a7ebe998e5.sol(170)


