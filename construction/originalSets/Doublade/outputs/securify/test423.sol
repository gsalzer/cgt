Processing contract: /home/jiaming/mavs_srcs/contract@0x1b5c5f9acb144cdcf82a2df1378f1f6cadbacd9e.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1b5c5f9acb144cdcf82a2df1378f1f6cadbacd9e.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x1b5c5f9acb144cdcf82a2df1378f1f6cadbacd9e.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x1b5c5f9acb144cdcf82a2df1378f1f6cadbacd9e.sol:IssuerWithId
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1b5c5f9acb144cdcf82a2df1378f1f6cadbacd9e.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1b5c5f9acb144cdcf82a2df1378f1f6cadbacd9e.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1b5c5f9acb144cdcf82a2df1378f1f6cadbacd9e.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1b5c5f9acb144cdcf82a2df1378f1f6cadbacd9e.sol:StandardTokenExt
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
  at /home/jiaming/mavs_srcs/contract@0x1b5c5f9acb144cdcf82a2df1378f1f6cadbacd9e.sol(71)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |  */
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x1b5c5f9acb144cdcf82a2df1378f1f6cadbacd9e.sol(82)

[33mWarning[0m for LockedEther in contract 'IssuerWithId':
    | *
    | */
  > |contract IssuerWithId is Ownable {
    |
    |  /** Map IDs whose tokens we have already issued. */
  at /home/jiaming/mavs_srcs/contract@0x1b5c5f9acb144cdcf82a2df1378f1f6cadbacd9e.sol(248)

[31mViolation[0m for MissingInputValidation in contract 'IssuerWithId':
    |
    |  /** Map IDs whose tokens we have already issued. */
  > |  mapping(uint => bool) public issued;
    |
    |  /** Centrally issued token we are distributing to our contributors */
  at /home/jiaming/mavs_srcs/contract@0x1b5c5f9acb144cdcf82a2df1378f1f6cadbacd9e.sol(251)

[31mViolation[0m for MissingInputValidation in contract 'IssuerWithId':
    |  }
    |
  > |  function issue(address benefactor, uint amount, uint id) onlyOwner {
    |    if(issued[id]) throw;
    |    token.transferFrom(allower, benefactor, amount);
  at /home/jiaming/mavs_srcs/contract@0x1b5c5f9acb144cdcf82a2df1378f1f6cadbacd9e.sol(272)

[33mWarning[0m for MissingInputValidation in contract 'IssuerWithId':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x1b5c5f9acb144cdcf82a2df1378f1f6cadbacd9e.sol(202)

[33mWarning[0m for MissingInputValidation in contract 'IssuerWithId':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));      
    |    owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x1b5c5f9acb144cdcf82a2df1378f1f6cadbacd9e.sol(227)

[33mWarning[0m for MissingInputValidation in contract 'IssuerWithId':
    |
    |  /** Centrally issued token we are distributing to our contributors */
  > |  StandardTokenExt public token;
    |
    |  /** Party (team multisig) who is in the control of the token pool. Note that this will be different from the owner address (scripted) that calls this contract. */
  at /home/jiaming/mavs_srcs/contract@0x1b5c5f9acb144cdcf82a2df1378f1f6cadbacd9e.sol(254)

[33mWarning[0m for MissingInputValidation in contract 'IssuerWithId':
    |
    |  /** Party (team multisig) who is in the control of the token pool. Note that this will be different from the owner address (scripted) that calls this contract. */
  > |  address public allower;
    |
    |  /** How many addresses have received their tokens. */
  at /home/jiaming/mavs_srcs/contract@0x1b5c5f9acb144cdcf82a2df1378f1f6cadbacd9e.sol(257)

[33mWarning[0m for MissingInputValidation in contract 'IssuerWithId':
    |
    |  /** How many addresses have received their tokens. */
  > |  uint public issuedCount;
    |
    |  function IssuerWithId(address _owner, address _allower, StandardTokenExt _token) {
  at /home/jiaming/mavs_srcs/contract@0x1b5c5f9acb144cdcf82a2df1378f1f6cadbacd9e.sol(260)

[33mWarning[0m for UnhandledException in contract 'IssuerWithId':
    |  function issue(address benefactor, uint amount, uint id) onlyOwner {
    |    if(issued[id]) throw;
  > |    token.transferFrom(allower, benefactor, amount);
    |    issued[id] = true;
    |    issuedCount += amount;
  at /home/jiaming/mavs_srcs/contract@0x1b5c5f9acb144cdcf82a2df1378f1f6cadbacd9e.sol(274)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'IssuerWithId':
    |  function issue(address benefactor, uint amount, uint id) onlyOwner {
    |    if(issued[id]) throw;
  > |    token.transferFrom(allower, benefactor, amount);
    |    issued[id] = true;
    |    issuedCount += amount;
  at /home/jiaming/mavs_srcs/contract@0x1b5c5f9acb144cdcf82a2df1378f1f6cadbacd9e.sol(274)

[33mWarning[0m for UnrestrictedWrite in contract 'IssuerWithId':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));      
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x1b5c5f9acb144cdcf82a2df1378f1f6cadbacd9e.sol(229)

[33mWarning[0m for UnrestrictedWrite in contract 'IssuerWithId':
    |    if(issued[id]) throw;
    |    token.transferFrom(allower, benefactor, amount);
  > |    issued[id] = true;
    |    issuedCount += amount;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x1b5c5f9acb144cdcf82a2df1378f1f6cadbacd9e.sol(275)

[33mWarning[0m for UnrestrictedWrite in contract 'IssuerWithId':
    |    token.transferFrom(allower, benefactor, amount);
    |    issued[id] = true;
  > |    issuedCount += amount;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x1b5c5f9acb144cdcf82a2df1378f1f6cadbacd9e.sol(276)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x1b5c5f9acb144cdcf82a2df1378f1f6cadbacd9e.sol(201)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x1b5c5f9acb144cdcf82a2df1378f1f6cadbacd9e.sol(202)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));      
    |    owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x1b5c5f9acb144cdcf82a2df1378f1f6cadbacd9e.sol(227)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));      
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x1b5c5f9acb144cdcf82a2df1378f1f6cadbacd9e.sol(229)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x1b5c5f9acb144cdcf82a2df1378f1f6cadbacd9e.sol(39)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) allowed;
  at /home/jiaming/mavs_srcs/contract@0x1b5c5f9acb144cdcf82a2df1378f1f6cadbacd9e.sol(124)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  */
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x1b5c5f9acb144cdcf82a2df1378f1f6cadbacd9e.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x1b5c5f9acb144cdcf82a2df1378f1f6cadbacd9e.sol(143)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x1b5c5f9acb144cdcf82a2df1378f1f6cadbacd9e.sol(161)

[33mWarning[0m for LockedEther in contract 'StandardTokenExt':
    | *
    | */
  > |contract StandardTokenExt is StandardToken {
    |
    |  /* Interface declaration */
  at /home/jiaming/mavs_srcs/contract@0x1b5c5f9acb144cdcf82a2df1378f1f6cadbacd9e.sol(186)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardTokenExt':
    |  */
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x1b5c5f9acb144cdcf82a2df1378f1f6cadbacd9e.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardTokenExt':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x1b5c5f9acb144cdcf82a2df1378f1f6cadbacd9e.sol(143)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardTokenExt':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x1b5c5f9acb144cdcf82a2df1378f1f6cadbacd9e.sol(161)


