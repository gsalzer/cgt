Processing contract: /home/jiaming/mavs_srcs/contract@0x0bb04400fae60dc378143a12bf771927e39adf6e.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x0bb04400fae60dc378143a12bf771927e39adf6e.sol:Issuer
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0bb04400fae60dc378143a12bf771927e39adf6e.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0bb04400fae60dc378143a12bf771927e39adf6e.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0bb04400fae60dc378143a12bf771927e39adf6e.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Issuer':
    | *
    | */
  > |contract Issuer is Ownable, SafeMath {
    |
    |  /** Map addresses whose tokens we have already issued. */
  at /home/jiaming/mavs_srcs/contract@0x0bb04400fae60dc378143a12bf771927e39adf6e.sol(187)

[31mViolation[0m for MissingInputValidation in contract 'Issuer':
    |
    |  /** Map addresses whose tokens we have already issued. */
  > |  mapping(address => bool) public issued;
    |
    |  /** Centrally issued token we are distributing to our contributors */
  at /home/jiaming/mavs_srcs/contract@0x0bb04400fae60dc378143a12bf771927e39adf6e.sol(190)

[31mViolation[0m for MissingInputValidation in contract 'Issuer':
    |  }
    |
  > |  function issue(address benefactor, uint amount) onlyOwner {
    |    if(issued[benefactor]) throw;
    |    token.transferFrom(masterTokenBalanceHolder, benefactor, amount);
  at /home/jiaming/mavs_srcs/contract@0x0bb04400fae60dc378143a12bf771927e39adf6e.sol(213)

[33mWarning[0m for MissingInputValidation in contract 'Issuer':
    |  }
    |
  > |  function safeAdd(uint a, uint b) internal returns (uint) {
    |    uint c = a + b;
    |    assert(c>=a && c>=b);
  at /home/jiaming/mavs_srcs/contract@0x0bb04400fae60dc378143a12bf771927e39adf6e.sol(41)

[33mWarning[0m for MissingInputValidation in contract 'Issuer':
    |  }
    |
  > |  function assert(bool assertion) internal {
    |    if (!assertion) {
    |      throw;
  at /home/jiaming/mavs_srcs/contract@0x0bb04400fae60dc378143a12bf771927e39adf6e.sol(63)

[33mWarning[0m for MissingInputValidation in contract 'Issuer':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |  function Ownable() {
  at /home/jiaming/mavs_srcs/contract@0x0bb04400fae60dc378143a12bf771927e39adf6e.sol(151)

[33mWarning[0m for MissingInputValidation in contract 'Issuer':
    |  }
    |
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
    |      owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x0bb04400fae60dc378143a12bf771927e39adf6e.sol(164)

[33mWarning[0m for MissingInputValidation in contract 'Issuer':
    |
    |  /** Centrally issued token we are distributing to our contributors */
  > |  StandardToken public token;
    |
    |  /** Party (team multisig) who is in the control of the token pool. Note that this will be different from the owner address (scripted) that calls this contract. */
  at /home/jiaming/mavs_srcs/contract@0x0bb04400fae60dc378143a12bf771927e39adf6e.sol(193)

[33mWarning[0m for MissingInputValidation in contract 'Issuer':
    |
    |  /** Party (team multisig) who is in the control of the token pool. Note that this will be different from the owner address (scripted) that calls this contract. */
  > |  address public masterTokenBalanceHolder;
    |
    |  /** How many addresses have received their tokens. */
  at /home/jiaming/mavs_srcs/contract@0x0bb04400fae60dc378143a12bf771927e39adf6e.sol(196)

[33mWarning[0m for MissingInputValidation in contract 'Issuer':
    |
    |  /** How many addresses have received their tokens. */
  > |  uint public issuedCount;
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x0bb04400fae60dc378143a12bf771927e39adf6e.sol(199)

[33mWarning[0m for MissingInputValidation in contract 'Issuer':
    |   * How many tokens we have left in our approval pool.
    |   */
  > |  function getApprovedTokenCount() public constant returns(uint tokens) {
    |    return token.allowance(masterTokenBalanceHolder, address(this));
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0bb04400fae60dc378143a12bf771927e39adf6e.sol(223)

[33mWarning[0m for UnhandledException in contract 'Issuer':
    |  function issue(address benefactor, uint amount) onlyOwner {
    |    if(issued[benefactor]) throw;
  > |    token.transferFrom(masterTokenBalanceHolder, benefactor, amount);
    |    issued[benefactor] = true;
    |    issuedCount = safeAdd(amount, issuedCount);
  at /home/jiaming/mavs_srcs/contract@0x0bb04400fae60dc378143a12bf771927e39adf6e.sol(215)

[33mWarning[0m for UnhandledException in contract 'Issuer':
    |   */
    |  function getApprovedTokenCount() public constant returns(uint tokens) {
  > |    return token.allowance(masterTokenBalanceHolder, address(this));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x0bb04400fae60dc378143a12bf771927e39adf6e.sol(224)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Issuer':
    |  function issue(address benefactor, uint amount) onlyOwner {
    |    if(issued[benefactor]) throw;
  > |    token.transferFrom(masterTokenBalanceHolder, benefactor, amount);
    |    issued[benefactor] = true;
    |    issuedCount = safeAdd(amount, issuedCount);
  at /home/jiaming/mavs_srcs/contract@0x0bb04400fae60dc378143a12bf771927e39adf6e.sol(215)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Issuer':
    |   */
    |  function getApprovedTokenCount() public constant returns(uint tokens) {
  > |    return token.allowance(masterTokenBalanceHolder, address(this));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x0bb04400fae60dc378143a12bf771927e39adf6e.sol(224)

[31mViolation[0m for UnrestrictedWrite in contract 'Issuer':
    |    token.transferFrom(masterTokenBalanceHolder, benefactor, amount);
    |    issued[benefactor] = true;
  > |    issuedCount = safeAdd(amount, issuedCount);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x0bb04400fae60dc378143a12bf771927e39adf6e.sol(217)

[33mWarning[0m for UnrestrictedWrite in contract 'Issuer':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0bb04400fae60dc378143a12bf771927e39adf6e.sol(166)

[33mWarning[0m for UnrestrictedWrite in contract 'Issuer':
    |    if(issued[benefactor]) throw;
    |    token.transferFrom(masterTokenBalanceHolder, benefactor, amount);
  > |    issued[benefactor] = true;
    |    issuedCount = safeAdd(amount, issuedCount);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0bb04400fae60dc378143a12bf771927e39adf6e.sol(216)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * Provides onlyOwner modifier, which prevents function from running if it is called by anyone other than the owner.
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x0bb04400fae60dc378143a12bf771927e39adf6e.sol(150)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |  function Ownable() {
  at /home/jiaming/mavs_srcs/contract@0x0bb04400fae60dc378143a12bf771927e39adf6e.sol(151)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |  }
    |
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
    |      owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x0bb04400fae60dc378143a12bf771927e39adf6e.sol(164)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0bb04400fae60dc378143a12bf771927e39adf6e.sol(166)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * Math operations with safety checks
    | */
  > |contract SafeMath {
    |  function safeMul(uint a, uint b) internal returns (uint) {
    |    uint c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x0bb04400fae60dc378143a12bf771927e39adf6e.sol(22)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, SafeMath {
    |
    |  mapping(address => uint) balances;
  at /home/jiaming/mavs_srcs/contract@0x0bb04400fae60dc378143a12bf771927e39adf6e.sol(78)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |  }
    |
  > |  function transfer(address _to, uint _value) onlyPayloadSize(2 * 32) returns (bool success) {
    |    balances[msg.sender] = safeSub(balances[msg.sender], _value);
    |    balances[_to] = safeAdd(balances[_to], _value);
  at /home/jiaming/mavs_srcs/contract@0x0bb04400fae60dc378143a12bf771927e39adf6e.sol(99)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |  }
    |
  > |  function transferFrom(address _from, address _to, uint _value)  returns (bool success) {
    |    var _allowance = allowed[_from][msg.sender];
    |
  at /home/jiaming/mavs_srcs/contract@0x0bb04400fae60dc378143a12bf771927e39adf6e.sol(106)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |  }
    |
  > |  function balanceOf(address _owner) constant returns (uint balance) {
    |    return balances[_owner];
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0bb04400fae60dc378143a12bf771927e39adf6e.sol(119)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |  }
    |
  > |  function allowance(address _owner, address _spender) constant returns (uint remaining) {
    |    return allowed[_owner][_spender];
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0bb04400fae60dc378143a12bf771927e39adf6e.sol(136)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    | */
    |contract ERC20 {
  > |  uint public totalSupply;
    |  function balanceOf(address who) constant returns (uint);
    |  function allowance(address owner, address spender) constant returns (uint);
  at /home/jiaming/mavs_srcs/contract@0x0bb04400fae60dc378143a12bf771927e39adf6e.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |  }
    |
  > |  function safeSub(uint a, uint b) internal returns (uint) {
    |    assert(b <= a);
    |    return a - b;
  at /home/jiaming/mavs_srcs/contract@0x0bb04400fae60dc378143a12bf771927e39adf6e.sol(36)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |  }
    |
  > |  function safeAdd(uint a, uint b) internal returns (uint) {
    |    uint c = a + b;
    |    assert(c>=a && c>=b);
  at /home/jiaming/mavs_srcs/contract@0x0bb04400fae60dc378143a12bf771927e39adf6e.sol(41)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |  }
    |
  > |  function assert(bool assertion) internal {
    |    if (!assertion) {
    |      throw;
  at /home/jiaming/mavs_srcs/contract@0x0bb04400fae60dc378143a12bf771927e39adf6e.sol(63)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |
    |  // Interface marker
  > |  bool public constant isToken = true;
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x0bb04400fae60dc378143a12bf771927e39adf6e.sol(84)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |    // if (_value > _allowance) throw;
    |
  > |    balances[_to] = safeAdd(balances[_to], _value);
    |    balances[_from] = safeSub(balances[_from], _value);
    |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
  at /home/jiaming/mavs_srcs/contract@0x0bb04400fae60dc378143a12bf771927e39adf6e.sol(112)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    balances[_to] = safeAdd(balances[_to], _value);
  > |    balances[_from] = safeSub(balances[_from], _value);
    |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x0bb04400fae60dc378143a12bf771927e39adf6e.sol(113)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |  function transfer(address _to, uint _value) onlyPayloadSize(2 * 32) returns (bool success) {
  > |    balances[msg.sender] = safeSub(balances[msg.sender], _value);
    |    balances[_to] = safeAdd(balances[_to], _value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x0bb04400fae60dc378143a12bf771927e39adf6e.sol(100)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_to] = safeAdd(balances[_to], _value);
    |    balances[_from] = safeSub(balances[_from], _value);
  > |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0bb04400fae60dc378143a12bf771927e39adf6e.sol(114)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    if ((_value != 0) && (allowed[msg.sender][_spender] != 0)) throw;
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0bb04400fae60dc378143a12bf771927e39adf6e.sol(131)


