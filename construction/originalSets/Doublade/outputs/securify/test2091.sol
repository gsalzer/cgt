Processing contract: /home/jiaming/mavs_srcs/contract@0x88dbd3f9e6809fc24d27b9403371af1cc089ba9e.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x88dbd3f9e6809fc24d27b9403371af1cc089ba9e.sol:BurnableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x88dbd3f9e6809fc24d27b9403371af1cc089ba9e.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x88dbd3f9e6809fc24d27b9403371af1cc089ba9e.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x88dbd3f9e6809fc24d27b9403371af1cc089ba9e.sol:GlobexSci
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x88dbd3f9e6809fc24d27b9403371af1cc089ba9e.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x88dbd3f9e6809fc24d27b9403371af1cc089ba9e.sol:StandardToken
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
  at /home/jiaming/mavs_srcs/contract@0x88dbd3f9e6809fc24d27b9403371af1cc089ba9e.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x88dbd3f9e6809fc24d27b9403371af1cc089ba9e.sol(75)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(tokensNumber);
    |    balances[_to] = balances[_to].add(tokensNumber);
    |    Transfer(msg.sender, _to, tokensNumber);
  at /home/jiaming/mavs_srcs/contract@0x88dbd3f9e6809fc24d27b9403371af1cc089ba9e.sol(93)

[33mWarning[0m for LockedEther in contract 'BurnableToken':
    | * @dev Token that can be irreversibly burned (destroyed).
    | */
  > |contract BurnableToken is StandardToken {
    |
    |    event Burn(address indexed burner, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0x88dbd3f9e6809fc24d27b9403371af1cc089ba9e.sol(196)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x88dbd3f9e6809fc24d27b9403371af1cc089ba9e.sol(75)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x88dbd3f9e6809fc24d27b9403371af1cc089ba9e.sol(76)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(tokensNumber);
    |    balances[_to] = balances[_to].add(tokensNumber);
    |    Transfer(msg.sender, _to, tokensNumber);
  at /home/jiaming/mavs_srcs/contract@0x88dbd3f9e6809fc24d27b9403371af1cc089ba9e.sol(93)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(tokensNumber);
  > |    balances[_to] = balances[_to].add(tokensNumber);
    |    Transfer(msg.sender, _to, tokensNumber);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x88dbd3f9e6809fc24d27b9403371af1cc089ba9e.sol(94)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x88dbd3f9e6809fc24d27b9403371af1cc089ba9e.sol(133)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x88dbd3f9e6809fc24d27b9403371af1cc089ba9e.sol(134)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x88dbd3f9e6809fc24d27b9403371af1cc089ba9e.sol(135)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x88dbd3f9e6809fc24d27b9403371af1cc089ba9e.sol(151)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |   */
    |  function increaseApproval (address _spender, uint _addedValue) public returns (bool success) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x88dbd3f9e6809fc24d27b9403371af1cc089ba9e.sol(173)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x88dbd3f9e6809fc24d27b9403371af1cc089ba9e.sol(181)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x88dbd3f9e6809fc24d27b9403371af1cc089ba9e.sol(183)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |        address burner = msg.sender;
  > |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
    |        Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0x88dbd3f9e6809fc24d27b9403371af1cc089ba9e.sol(211)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |        address burner = msg.sender;
    |        balances[burner] = balances[burner].sub(_value);
  > |        totalSupply = totalSupply.sub(_value);
    |        Burn(burner, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x88dbd3f9e6809fc24d27b9403371af1cc089ba9e.sol(212)

[33mWarning[0m for LockedEther in contract 'GlobexSci':
    | * `StandardToken` functions.
    | */
  > |contract GlobexSci is BurnableToken {
    |
    |  string public constant name = "GlobexSci";
  at /home/jiaming/mavs_srcs/contract@0x88dbd3f9e6809fc24d27b9403371af1cc089ba9e.sol(225)

[33mWarning[0m for UnrestrictedWrite in contract 'GlobexSci':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x88dbd3f9e6809fc24d27b9403371af1cc089ba9e.sol(75)

[33mWarning[0m for UnrestrictedWrite in contract 'GlobexSci':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x88dbd3f9e6809fc24d27b9403371af1cc089ba9e.sol(76)

[33mWarning[0m for UnrestrictedWrite in contract 'GlobexSci':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(tokensNumber);
    |    balances[_to] = balances[_to].add(tokensNumber);
    |    Transfer(msg.sender, _to, tokensNumber);
  at /home/jiaming/mavs_srcs/contract@0x88dbd3f9e6809fc24d27b9403371af1cc089ba9e.sol(93)

[33mWarning[0m for UnrestrictedWrite in contract 'GlobexSci':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(tokensNumber);
  > |    balances[_to] = balances[_to].add(tokensNumber);
    |    Transfer(msg.sender, _to, tokensNumber);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x88dbd3f9e6809fc24d27b9403371af1cc089ba9e.sol(94)

[33mWarning[0m for UnrestrictedWrite in contract 'GlobexSci':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x88dbd3f9e6809fc24d27b9403371af1cc089ba9e.sol(133)

[33mWarning[0m for UnrestrictedWrite in contract 'GlobexSci':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x88dbd3f9e6809fc24d27b9403371af1cc089ba9e.sol(134)

[33mWarning[0m for UnrestrictedWrite in contract 'GlobexSci':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x88dbd3f9e6809fc24d27b9403371af1cc089ba9e.sol(135)

[33mWarning[0m for UnrestrictedWrite in contract 'GlobexSci':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x88dbd3f9e6809fc24d27b9403371af1cc089ba9e.sol(151)

[33mWarning[0m for UnrestrictedWrite in contract 'GlobexSci':
    |   */
    |  function increaseApproval (address _spender, uint _addedValue) public returns (bool success) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x88dbd3f9e6809fc24d27b9403371af1cc089ba9e.sol(173)

[33mWarning[0m for UnrestrictedWrite in contract 'GlobexSci':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x88dbd3f9e6809fc24d27b9403371af1cc089ba9e.sol(181)

[33mWarning[0m for UnrestrictedWrite in contract 'GlobexSci':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x88dbd3f9e6809fc24d27b9403371af1cc089ba9e.sol(183)

[33mWarning[0m for UnrestrictedWrite in contract 'GlobexSci':
    |
    |        address burner = msg.sender;
  > |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
    |        Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0x88dbd3f9e6809fc24d27b9403371af1cc089ba9e.sol(211)

[33mWarning[0m for UnrestrictedWrite in contract 'GlobexSci':
    |        address burner = msg.sender;
    |        balances[burner] = balances[burner].sub(_value);
  > |        totalSupply = totalSupply.sub(_value);
    |        Burn(burner, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x88dbd3f9e6809fc24d27b9403371af1cc089ba9e.sol(212)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x88dbd3f9e6809fc24d27b9403371af1cc089ba9e.sol(7)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0x88dbd3f9e6809fc24d27b9403371af1cc089ba9e.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x88dbd3f9e6809fc24d27b9403371af1cc089ba9e.sol(75)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(tokensNumber);
    |    balances[_to] = balances[_to].add(tokensNumber);
    |    Transfer(msg.sender, _to, tokensNumber);
  at /home/jiaming/mavs_srcs/contract@0x88dbd3f9e6809fc24d27b9403371af1cc089ba9e.sol(93)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x88dbd3f9e6809fc24d27b9403371af1cc089ba9e.sol(135)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x88dbd3f9e6809fc24d27b9403371af1cc089ba9e.sol(151)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function increaseApproval (address _spender, uint _addedValue) public returns (bool success) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x88dbd3f9e6809fc24d27b9403371af1cc089ba9e.sol(173)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x88dbd3f9e6809fc24d27b9403371af1cc089ba9e.sol(181)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x88dbd3f9e6809fc24d27b9403371af1cc089ba9e.sol(183)


