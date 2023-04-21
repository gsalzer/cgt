Processing contract: /home/jiaming/mavs_srcs/contract@0x5f04f4ff4dee64d0a8461efe4c6a463213f5cd20.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5f04f4ff4dee64d0a8461efe4c6a463213f5cd20.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x5f04f4ff4dee64d0a8461efe4c6a463213f5cd20.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x5f04f4ff4dee64d0a8461efe4c6a463213f5cd20.sol:MintableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5f04f4ff4dee64d0a8461efe4c6a463213f5cd20.sol:MiroToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5f04f4ff4dee64d0a8461efe4c6a463213f5cd20.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5f04f4ff4dee64d0a8461efe4c6a463213f5cd20.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5f04f4ff4dee64d0a8461efe4c6a463213f5cd20.sol:StandardToken
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
  at /home/jiaming/mavs_srcs/contract@0x5f04f4ff4dee64d0a8461efe4c6a463213f5cd20.sol(93)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x5f04f4ff4dee64d0a8461efe4c6a463213f5cd20.sol(107)

[33mWarning[0m for LockedEther in contract 'MintableToken':
    | */
    |
  > |contract MintableToken is StandardToken, Ownable {
    |  event Mint(address indexed to, uint256 amount);
    |  event MintFinished();
  at /home/jiaming/mavs_srcs/contract@0x5f04f4ff4dee64d0a8461efe4c6a463213f5cd20.sol(217)

[31mViolation[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function finishMinting() onlyReleaseAgents public returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x5f04f4ff4dee64d0a8461efe4c6a463213f5cd20.sol(270)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x5f04f4ff4dee64d0a8461efe4c6a463213f5cd20.sol(107)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x5f04f4ff4dee64d0a8461efe4c6a463213f5cd20.sol(152)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x5f04f4ff4dee64d0a8461efe4c6a463213f5cd20.sol(168)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function increaseApproval (address _spender, uint _addedValue)
    |    returns (bool success) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x5f04f4ff4dee64d0a8461efe4c6a463213f5cd20.sol(191)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x5f04f4ff4dee64d0a8461efe4c6a463213f5cd20.sol(200)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x5f04f4ff4dee64d0a8461efe4c6a463213f5cd20.sol(202)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |  function addReleaseAgent(address _releaseAgent) public onlyOwner {
  > |      releaseAgents[_releaseAgent] = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x5f04f4ff4dee64d0a8461efe4c6a463213f5cd20.sol(248)

[33mWarning[0m for LockedEther in contract 'MiroToken':
    |}
    |
  > |contract MiroToken is MintableToken {
    |
    |    string public symbol = "MIRO";
  at /home/jiaming/mavs_srcs/contract@0x5f04f4ff4dee64d0a8461efe4c6a463213f5cd20.sol(276)

[31mViolation[0m for UnrestrictedWrite in contract 'MiroToken':
    |   */
    |  function finishMinting() onlyReleaseAgents public returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x5f04f4ff4dee64d0a8461efe4c6a463213f5cd20.sol(270)

[33mWarning[0m for UnrestrictedWrite in contract 'MiroToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x5f04f4ff4dee64d0a8461efe4c6a463213f5cd20.sol(107)

[33mWarning[0m for UnrestrictedWrite in contract 'MiroToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x5f04f4ff4dee64d0a8461efe4c6a463213f5cd20.sol(152)

[33mWarning[0m for UnrestrictedWrite in contract 'MiroToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x5f04f4ff4dee64d0a8461efe4c6a463213f5cd20.sol(168)

[33mWarning[0m for UnrestrictedWrite in contract 'MiroToken':
    |  function increaseApproval (address _spender, uint _addedValue)
    |    returns (bool success) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x5f04f4ff4dee64d0a8461efe4c6a463213f5cd20.sol(191)

[33mWarning[0m for UnrestrictedWrite in contract 'MiroToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x5f04f4ff4dee64d0a8461efe4c6a463213f5cd20.sol(200)

[33mWarning[0m for UnrestrictedWrite in contract 'MiroToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x5f04f4ff4dee64d0a8461efe4c6a463213f5cd20.sol(202)

[33mWarning[0m for UnrestrictedWrite in contract 'MiroToken':
    |
    |  function addReleaseAgent(address _releaseAgent) public onlyOwner {
  > |      releaseAgents[_releaseAgent] = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x5f04f4ff4dee64d0a8461efe4c6a463213f5cd20.sol(248)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x5f04f4ff4dee64d0a8461efe4c6a463213f5cd20.sol(64)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x5f04f4ff4dee64d0a8461efe4c6a463213f5cd20.sol(65)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x5f04f4ff4dee64d0a8461efe4c6a463213f5cd20.sol(8)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) allowed;
  at /home/jiaming/mavs_srcs/contract@0x5f04f4ff4dee64d0a8461efe4c6a463213f5cd20.sol(131)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x5f04f4ff4dee64d0a8461efe4c6a463213f5cd20.sol(107)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x5f04f4ff4dee64d0a8461efe4c6a463213f5cd20.sol(152)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x5f04f4ff4dee64d0a8461efe4c6a463213f5cd20.sol(168)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  function increaseApproval (address _spender, uint _addedValue)
    |    returns (bool success) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x5f04f4ff4dee64d0a8461efe4c6a463213f5cd20.sol(191)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x5f04f4ff4dee64d0a8461efe4c6a463213f5cd20.sol(200)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x5f04f4ff4dee64d0a8461efe4c6a463213f5cd20.sol(202)


