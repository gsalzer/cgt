Processing contract: /home/jiaming/mavs_srcs/contract@0x3efd578b271d034a69499e4a2d933c631d44b9ad.sol:ERC20
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3efd578b271d034a69499e4a2d933c631d44b9ad.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3efd578b271d034a69499e4a2d933c631d44b9ad.sol:TST
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'ERC20':
    | * https://github.com/ethereum/EIPs/issues/20
    | */
  > |contract ERC20 {
    |
    |  /// @return total amount of tokens
  at /home/jiaming/mavs_srcs/contract@0x3efd578b271d034a69499e4a2d933c631d44b9ad.sol(8)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * Standard ERC-20 token
    | */
  > | contract StandardToken is ERC20 {
    |
    |  uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x3efd578b271d034a69499e4a2d933c631d44b9ad.sol(49)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |
    |
  > |  function balanceOf(address _owner) constant returns (uint256 balance) {
    |    return balances[_owner];
    |  }
  at /home/jiaming/mavs_srcs/contract@0x3efd578b271d034a69499e4a2d933c631d44b9ad.sol(56)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |  }
    |
  > |  function transfer(address _to, uint256 _value) returns (bool success) {
    |    if (balances[msg.sender] >= _value && _value > 0) {
    |      balances[msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x3efd578b271d034a69499e4a2d933c631d44b9ad.sol(60)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |  }
    |
  > |  function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |    if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0) {
    |      balances[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x3efd578b271d034a69499e4a2d933c631d44b9ad.sol(71)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |  }
    |
  > |  function approve(address _spender, uint256 _value) returns (bool success) {
    |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x3efd578b271d034a69499e4a2d933c631d44b9ad.sol(83)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |  }
    |
  > |  function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |    return allowed[_owner][_spender];
    |  }
  at /home/jiaming/mavs_srcs/contract@0x3efd578b271d034a69499e4a2d933c631d44b9ad.sol(89)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    | contract StandardToken is ERC20 {
    |
  > |  uint256 public totalSupply;
    |  mapping(address => uint256) balances;
    |  mapping (address => mapping (address => uint256)) allowed;
  at /home/jiaming/mavs_srcs/contract@0x3efd578b271d034a69499e4a2d933c631d44b9ad.sol(51)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  function transfer(address _to, uint256 _value) returns (bool success) {
    |    if (balances[msg.sender] >= _value && _value > 0) {
  > |      balances[msg.sender] -= _value;
    |      balances[_to] += _value;
    |      Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x3efd578b271d034a69499e4a2d933c631d44b9ad.sol(62)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      balances[_to] += _value;
    |      balances[_from] -= _value;
  > |      allowed[_from][msg.sender] -= _value;
    |      Transfer(_from, _to, _value);
    |      return true;
  at /home/jiaming/mavs_srcs/contract@0x3efd578b271d034a69499e4a2d933c631d44b9ad.sol(75)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |  function approve(address _spender, uint256 _value) returns (bool success) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x3efd578b271d034a69499e4a2d933c631d44b9ad.sol(84)

[33mWarning[0m for LockedEther in contract 'TST':
    |
    |
  > |contract TST is StandardToken {
    |    string public name = 'Test Standard Token';
    |    string public symbol = 'TST';
  at /home/jiaming/mavs_srcs/contract@0x3efd578b271d034a69499e4a2d933c631d44b9ad.sol(95)

[31mViolation[0m for MissingInputValidation in contract 'TST':
    |
    |
  > |  function balanceOf(address _owner) constant returns (uint256 balance) {
    |    return balances[_owner];
    |  }
  at /home/jiaming/mavs_srcs/contract@0x3efd578b271d034a69499e4a2d933c631d44b9ad.sol(56)

[31mViolation[0m for MissingInputValidation in contract 'TST':
    |  }
    |
  > |  function transfer(address _to, uint256 _value) returns (bool success) {
    |    if (balances[msg.sender] >= _value && _value > 0) {
    |      balances[msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x3efd578b271d034a69499e4a2d933c631d44b9ad.sol(60)

[31mViolation[0m for MissingInputValidation in contract 'TST':
    |  }
    |
  > |  function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |    if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0) {
    |      balances[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x3efd578b271d034a69499e4a2d933c631d44b9ad.sol(71)

[31mViolation[0m for MissingInputValidation in contract 'TST':
    |  }
    |
  > |  function approve(address _spender, uint256 _value) returns (bool success) {
    |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x3efd578b271d034a69499e4a2d933c631d44b9ad.sol(83)

[31mViolation[0m for MissingInputValidation in contract 'TST':
    |  }
    |
  > |  function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |    return allowed[_owner][_spender];
    |  }
  at /home/jiaming/mavs_srcs/contract@0x3efd578b271d034a69499e4a2d933c631d44b9ad.sol(89)

[31mViolation[0m for MissingInputValidation in contract 'TST':
    |    uint public decimals = 18;
    |
  > |    function showMeTheMoney(address _to, uint256 _value) {
    |        totalSupply += _value;
    |        balances[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x3efd578b271d034a69499e4a2d933c631d44b9ad.sol(100)

[33mWarning[0m for MissingInputValidation in contract 'TST':
    | contract StandardToken is ERC20 {
    |
  > |  uint256 public totalSupply;
    |  mapping(address => uint256) balances;
    |  mapping (address => mapping (address => uint256)) allowed;
  at /home/jiaming/mavs_srcs/contract@0x3efd578b271d034a69499e4a2d933c631d44b9ad.sol(51)

[33mWarning[0m for MissingInputValidation in contract 'TST':
    |
    |contract TST is StandardToken {
  > |    string public name = 'Test Standard Token';
    |    string public symbol = 'TST';
    |    uint public decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0x3efd578b271d034a69499e4a2d933c631d44b9ad.sol(96)

[33mWarning[0m for MissingInputValidation in contract 'TST':
    |contract TST is StandardToken {
    |    string public name = 'Test Standard Token';
  > |    string public symbol = 'TST';
    |    uint public decimals = 18;
    |
  at /home/jiaming/mavs_srcs/contract@0x3efd578b271d034a69499e4a2d933c631d44b9ad.sol(97)

[33mWarning[0m for MissingInputValidation in contract 'TST':
    |    string public name = 'Test Standard Token';
    |    string public symbol = 'TST';
  > |    uint public decimals = 18;
    |
    |    function showMeTheMoney(address _to, uint256 _value) {
  at /home/jiaming/mavs_srcs/contract@0x3efd578b271d034a69499e4a2d933c631d44b9ad.sol(98)

[31mViolation[0m for UnrestrictedWrite in contract 'TST':
    |
    |    function showMeTheMoney(address _to, uint256 _value) {
  > |        totalSupply += _value;
    |        balances[_to] += _value;
    |        Transfer(0, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x3efd578b271d034a69499e4a2d933c631d44b9ad.sol(101)

[31mViolation[0m for UnrestrictedWrite in contract 'TST':
    |    function showMeTheMoney(address _to, uint256 _value) {
    |        totalSupply += _value;
  > |        balances[_to] += _value;
    |        Transfer(0, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3efd578b271d034a69499e4a2d933c631d44b9ad.sol(102)

[33mWarning[0m for UnrestrictedWrite in contract 'TST':
    |  function transfer(address _to, uint256 _value) returns (bool success) {
    |    if (balances[msg.sender] >= _value && _value > 0) {
  > |      balances[msg.sender] -= _value;
    |      balances[_to] += _value;
    |      Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x3efd578b271d034a69499e4a2d933c631d44b9ad.sol(62)

[33mWarning[0m for UnrestrictedWrite in contract 'TST':
    |      balances[_to] += _value;
    |      balances[_from] -= _value;
  > |      allowed[_from][msg.sender] -= _value;
    |      Transfer(_from, _to, _value);
    |      return true;
  at /home/jiaming/mavs_srcs/contract@0x3efd578b271d034a69499e4a2d933c631d44b9ad.sol(75)

[33mWarning[0m for UnrestrictedWrite in contract 'TST':
    |
    |  function approve(address _spender, uint256 _value) returns (bool success) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x3efd578b271d034a69499e4a2d933c631d44b9ad.sol(84)


