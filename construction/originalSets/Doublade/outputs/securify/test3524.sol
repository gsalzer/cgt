Processing contract: /home/jiaming/mavs_srcs/contract@0xe6f9223caf09603133864019f7c130cbb4996bcc.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe6f9223caf09603133864019f7c130cbb4996bcc.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xe6f9223caf09603133864019f7c130cbb4996bcc.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xe6f9223caf09603133864019f7c130cbb4996bcc.sol:Issuer
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe6f9223caf09603133864019f7c130cbb4996bcc.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe6f9223caf09603133864019f7c130cbb4996bcc.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe6f9223caf09603133864019f7c130cbb4996bcc.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe6f9223caf09603133864019f7c130cbb4996bcc.sol:StandardTokenExt
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
  at /home/jiaming/mavs_srcs/contract@0xe6f9223caf09603133864019f7c130cbb4996bcc.sol(71)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe6f9223caf09603133864019f7c130cbb4996bcc.sol(85)

[33mWarning[0m for LockedEther in contract 'Issuer':
    | *
    | */
  > |contract Issuer is Ownable {
    |
    |  /** Map addresses whose tokens we have already issued. */
  at /home/jiaming/mavs_srcs/contract@0xe6f9223caf09603133864019f7c130cbb4996bcc.sol(280)

[31mViolation[0m for MissingInputValidation in contract 'Issuer':
    |
    |  /** Map addresses whose tokens we have already issued. */
  > |  mapping(address => bool) public issued;
    |
    |  /** Centrally issued token we are distributing to our contributors */
  at /home/jiaming/mavs_srcs/contract@0xe6f9223caf09603133864019f7c130cbb4996bcc.sol(283)

[31mViolation[0m for MissingInputValidation in contract 'Issuer':
    |  }
    |
  > |  function issue(address benefactor, uint amount) onlyOwner {
    |    if(issued[benefactor]) throw;
    |    token.transferFrom(allower, benefactor, amount);
  at /home/jiaming/mavs_srcs/contract@0xe6f9223caf09603133864019f7c130cbb4996bcc.sol(300)

[33mWarning[0m for MissingInputValidation in contract 'Issuer':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xe6f9223caf09603133864019f7c130cbb4996bcc.sol(230)

[33mWarning[0m for MissingInputValidation in contract 'Issuer':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xe6f9223caf09603133864019f7c130cbb4996bcc.sol(258)

[33mWarning[0m for MissingInputValidation in contract 'Issuer':
    |
    |  /** Centrally issued token we are distributing to our contributors */
  > |  StandardTokenExt public token;
    |
    |  /** Party (team multisig) who is in the control of the token pool. Note that this will be different from the owner address (scripted) that calls this contract. */
  at /home/jiaming/mavs_srcs/contract@0xe6f9223caf09603133864019f7c130cbb4996bcc.sol(286)

[33mWarning[0m for MissingInputValidation in contract 'Issuer':
    |
    |  /** Party (team multisig) who is in the control of the token pool. Note that this will be different from the owner address (scripted) that calls this contract. */
  > |  address public allower;
    |
    |  /** How many addresses have received their tokens. */
  at /home/jiaming/mavs_srcs/contract@0xe6f9223caf09603133864019f7c130cbb4996bcc.sol(289)

[33mWarning[0m for MissingInputValidation in contract 'Issuer':
    |
    |  /** How many addresses have received their tokens. */
  > |  uint public issuedCount;
    |
    |  function Issuer(address _owner, address _allower, StandardTokenExt _token) {
  at /home/jiaming/mavs_srcs/contract@0xe6f9223caf09603133864019f7c130cbb4996bcc.sol(292)

[33mWarning[0m for UnhandledException in contract 'Issuer':
    |  function issue(address benefactor, uint amount) onlyOwner {
    |    if(issued[benefactor]) throw;
  > |    token.transferFrom(allower, benefactor, amount);
    |    issued[benefactor] = true;
    |    issuedCount += amount;
  at /home/jiaming/mavs_srcs/contract@0xe6f9223caf09603133864019f7c130cbb4996bcc.sol(302)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Issuer':
    |  function issue(address benefactor, uint amount) onlyOwner {
    |    if(issued[benefactor]) throw;
  > |    token.transferFrom(allower, benefactor, amount);
    |    issued[benefactor] = true;
    |    issuedCount += amount;
  at /home/jiaming/mavs_srcs/contract@0xe6f9223caf09603133864019f7c130cbb4996bcc.sol(302)

[33mWarning[0m for UnrestrictedWrite in contract 'Issuer':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe6f9223caf09603133864019f7c130cbb4996bcc.sol(261)

[33mWarning[0m for UnrestrictedWrite in contract 'Issuer':
    |    if(issued[benefactor]) throw;
    |    token.transferFrom(allower, benefactor, amount);
  > |    issued[benefactor] = true;
    |    issuedCount += amount;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe6f9223caf09603133864019f7c130cbb4996bcc.sol(303)

[33mWarning[0m for UnrestrictedWrite in contract 'Issuer':
    |    token.transferFrom(allower, benefactor, amount);
    |    issued[benefactor] = true;
  > |    issuedCount += amount;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe6f9223caf09603133864019f7c130cbb4996bcc.sol(304)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xe6f9223caf09603133864019f7c130cbb4996bcc.sol(229)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xe6f9223caf09603133864019f7c130cbb4996bcc.sol(230)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xe6f9223caf09603133864019f7c130cbb4996bcc.sol(258)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe6f9223caf09603133864019f7c130cbb4996bcc.sol(261)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xe6f9223caf09603133864019f7c130cbb4996bcc.sol(39)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) allowed;
  at /home/jiaming/mavs_srcs/contract@0xe6f9223caf09603133864019f7c130cbb4996bcc.sol(127)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe6f9223caf09603133864019f7c130cbb4996bcc.sol(85)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe6f9223caf09603133864019f7c130cbb4996bcc.sol(148)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe6f9223caf09603133864019f7c130cbb4996bcc.sol(164)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  function increaseApproval (address _spender, uint _addedValue)
    |    returns (bool success) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe6f9223caf09603133864019f7c130cbb4996bcc.sol(187)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xe6f9223caf09603133864019f7c130cbb4996bcc.sol(196)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xe6f9223caf09603133864019f7c130cbb4996bcc.sol(198)

[33mWarning[0m for LockedEther in contract 'StandardTokenExt':
    | *
    | */
  > |contract StandardTokenExt is StandardToken {
    |
    |  /* Interface declaration */
  at /home/jiaming/mavs_srcs/contract@0xe6f9223caf09603133864019f7c130cbb4996bcc.sol(214)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardTokenExt':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe6f9223caf09603133864019f7c130cbb4996bcc.sol(85)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardTokenExt':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe6f9223caf09603133864019f7c130cbb4996bcc.sol(148)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardTokenExt':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe6f9223caf09603133864019f7c130cbb4996bcc.sol(164)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardTokenExt':
    |  function increaseApproval (address _spender, uint _addedValue)
    |    returns (bool success) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe6f9223caf09603133864019f7c130cbb4996bcc.sol(187)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardTokenExt':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xe6f9223caf09603133864019f7c130cbb4996bcc.sol(196)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardTokenExt':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xe6f9223caf09603133864019f7c130cbb4996bcc.sol(198)


