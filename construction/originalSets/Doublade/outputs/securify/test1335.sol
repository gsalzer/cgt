Processing contract: /home/jiaming/mavs_srcs/contract@0x5481d12d7e91a1e6459db0ef0caf72fc1170d342.sol:Token
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Token':
    |pragma solidity ^0.4.8;
    |
  > |contract Token {
    |
    |  function safeSub(uint a, uint b) internal returns (uint) {
  at /home/jiaming/mavs_srcs/contract@0x5481d12d7e91a1e6459db0ef0caf72fc1170d342.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'Token':
    |  }
    |
  > |  function transfer(address _to, uint _value) returns (bool success) {
    |    balances[msg.sender] = safeSub(balances[msg.sender], _value);
    |    balances[_to] = safeAdd(balances[_to], _value);
  at /home/jiaming/mavs_srcs/contract@0x5481d12d7e91a1e6459db0ef0caf72fc1170d342.sol(45)

[31mViolation[0m for MissingInputValidation in contract 'Token':
    |  }
    |
  > |  function transferFrom(address _from, address _to, uint _value) returns (bool success) {
    |    var _allowance = allowed[_from][msg.sender];
    |
  at /home/jiaming/mavs_srcs/contract@0x5481d12d7e91a1e6459db0ef0caf72fc1170d342.sol(52)

[31mViolation[0m for MissingInputValidation in contract 'Token':
    |  }
    |
  > |  function balanceOf(address _owner) constant returns (uint balance) {
    |    return balances[_owner];
    |  }
  at /home/jiaming/mavs_srcs/contract@0x5481d12d7e91a1e6459db0ef0caf72fc1170d342.sol(65)

[31mViolation[0m for MissingInputValidation in contract 'Token':
    |  }
    |
  > |  function approve(address _spender, uint _value) returns (bool success) {
    |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x5481d12d7e91a1e6459db0ef0caf72fc1170d342.sol(69)

[31mViolation[0m for MissingInputValidation in contract 'Token':
    |  }
    |
  > |  function allowance(address _owner, address _spender) constant returns (uint remaining) {
    |    return allowed[_owner][_spender];
    |  }
  at /home/jiaming/mavs_srcs/contract@0x5481d12d7e91a1e6459db0ef0caf72fc1170d342.sol(75)

[33mWarning[0m for MissingInputValidation in contract 'Token':
    |contract Token {
    |
  > |  function safeSub(uint a, uint b) internal returns (uint) {
    |    assert(b <= a);
    |    return a - b;
  at /home/jiaming/mavs_srcs/contract@0x5481d12d7e91a1e6459db0ef0caf72fc1170d342.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'Token':
    |  }
    |
  > |  function safeAdd(uint a, uint b) internal returns (uint) {
    |    uint c = a + b;
    |    assert(c>=a && c>=b);
  at /home/jiaming/mavs_srcs/contract@0x5481d12d7e91a1e6459db0ef0caf72fc1170d342.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'Token':
    |  }
    |
  > |  function assert(bool assertion) internal {
    |    if (!assertion) {
    |      throw;
  at /home/jiaming/mavs_srcs/contract@0x5481d12d7e91a1e6459db0ef0caf72fc1170d342.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'Token':
    |  }
    |
  > |  string public constant symbol = "GNC";
    |  string public constant name = "Generic";
    |  uint8 public constant decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0x5481d12d7e91a1e6459db0ef0caf72fc1170d342.sol(22)

[33mWarning[0m for MissingInputValidation in contract 'Token':
    |
    |  string public constant symbol = "GNC";
  > |  string public constant name = "Generic";
    |  uint8 public constant decimals = 18;
    |  uint256 _totalSupply = 21000000 * 10**18;
  at /home/jiaming/mavs_srcs/contract@0x5481d12d7e91a1e6459db0ef0caf72fc1170d342.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'Token':
    |  string public constant symbol = "GNC";
    |  string public constant name = "Generic";
  > |  uint8 public constant decimals = 18;
    |  uint256 _totalSupply = 21000000 * 10**18;
    |
  at /home/jiaming/mavs_srcs/contract@0x5481d12d7e91a1e6459db0ef0caf72fc1170d342.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'Token':
    |  // Owner of this contract
    |
  > |  address public owner;
    |
    |  mapping(address => uint) balances;
  at /home/jiaming/mavs_srcs/contract@0x5481d12d7e91a1e6459db0ef0caf72fc1170d342.sol(29)

[33mWarning[0m for MissingInputValidation in contract 'Token':
    |
    |
  > |  function totalSupply() constant returns (uint256 totalSupply) {
    |      totalSupply = _totalSupply;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x5481d12d7e91a1e6459db0ef0caf72fc1170d342.sol(41)

[31mViolation[0m for UnrestrictedWrite in contract 'Token':
    |    // if (_value > _allowance) throw;
    |
  > |    balances[_to] = safeAdd(balances[_to], _value);
    |    balances[_from] = safeSub(balances[_from], _value);
    |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
  at /home/jiaming/mavs_srcs/contract@0x5481d12d7e91a1e6459db0ef0caf72fc1170d342.sol(58)

[31mViolation[0m for UnrestrictedWrite in contract 'Token':
    |
    |    balances[_to] = safeAdd(balances[_to], _value);
  > |    balances[_from] = safeSub(balances[_from], _value);
    |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x5481d12d7e91a1e6459db0ef0caf72fc1170d342.sol(59)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |
    |  function transfer(address _to, uint _value) returns (bool success) {
  > |    balances[msg.sender] = safeSub(balances[msg.sender], _value);
    |    balances[_to] = safeAdd(balances[_to], _value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x5481d12d7e91a1e6459db0ef0caf72fc1170d342.sol(46)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |    balances[_to] = safeAdd(balances[_to], _value);
    |    balances[_from] = safeSub(balances[_from], _value);
  > |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x5481d12d7e91a1e6459db0ef0caf72fc1170d342.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |
    |  function approve(address _spender, uint _value) returns (bool success) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x5481d12d7e91a1e6459db0ef0caf72fc1170d342.sol(70)


