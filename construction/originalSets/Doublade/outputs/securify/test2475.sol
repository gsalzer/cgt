Processing contract: /home/jiaming/mavs_srcs/contract@0xa17c4b92e9725bbb73329d0421262c234357b9fb.sol:BraziliexToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa17c4b92e9725bbb73329d0421262c234357b9fb.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa17c4b92e9725bbb73329d0421262c234357b9fb.sol:Token
[33mWarning[0m for LockedEther in contract 'BraziliexToken':
    |
    |
  > |contract BraziliexToken is StandardToken {
    |
    |    string constant public name = "BraziliexToken";
  at /home/jiaming/mavs_srcs/contract@0xa17c4b92e9725bbb73329d0421262c234357b9fb.sol(69)

[31mViolation[0m for MissingInputValidation in contract 'BraziliexToken':
    |    mapping (address => mapping (address => uint256)) allowed;
    |
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
    |            balances[msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0xa17c4b92e9725bbb73329d0421262c234357b9fb.sol(25)

[31mViolation[0m for MissingInputValidation in contract 'BraziliexToken':
    |
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0) {
    |            balances[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0xa17c4b92e9725bbb73329d0421262c234357b9fb.sol(38)

[31mViolation[0m for MissingInputValidation in contract 'BraziliexToken':
    |
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa17c4b92e9725bbb73329d0421262c234357b9fb.sol(52)

[31mViolation[0m for MissingInputValidation in contract 'BraziliexToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xa17c4b92e9725bbb73329d0421262c234357b9fb.sol(56)

[31mViolation[0m for MissingInputValidation in contract 'BraziliexToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa17c4b92e9725bbb73329d0421262c234357b9fb.sol(62)

[33mWarning[0m for MissingInputValidation in contract 'BraziliexToken':
    |/// @author braziliex dev team - <dev@braziliex.com>
    |contract Token {
  > |    uint256 public totalSupply;
    |    function balanceOf(address owner) constant returns (uint256 balance);
    |    function transfer(address to, uint256 value) returns (bool success);
  at /home/jiaming/mavs_srcs/contract@0xa17c4b92e9725bbb73329d0421262c234357b9fb.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'BraziliexToken':
    |contract BraziliexToken is StandardToken {
    |
  > |    string constant public name = "BraziliexToken";
    |    string constant public symbol = "BZX";
    |    uint8 constant public decimals = 8;
  at /home/jiaming/mavs_srcs/contract@0xa17c4b92e9725bbb73329d0421262c234357b9fb.sol(71)

[33mWarning[0m for MissingInputValidation in contract 'BraziliexToken':
    |
    |    string constant public name = "BraziliexToken";
  > |    string constant public symbol = "BZX";
    |    uint8 constant public decimals = 8;
    |
  at /home/jiaming/mavs_srcs/contract@0xa17c4b92e9725bbb73329d0421262c234357b9fb.sol(72)

[33mWarning[0m for MissingInputValidation in contract 'BraziliexToken':
    |    string constant public name = "BraziliexToken";
    |    string constant public symbol = "BZX";
  > |    uint8 constant public decimals = 8;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xa17c4b92e9725bbb73329d0421262c234357b9fb.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'BraziliexToken':
    |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xa17c4b92e9725bbb73329d0421262c234357b9fb.sol(27)

[33mWarning[0m for UnrestrictedWrite in contract 'BraziliexToken':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xa17c4b92e9725bbb73329d0421262c234357b9fb.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'BraziliexToken':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xa17c4b92e9725bbb73329d0421262c234357b9fb.sol(57)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |
    |
  > |contract StandardToken is Token {
    |
    |    mapping (address => uint256) balances;
  at /home/jiaming/mavs_srcs/contract@0xa17c4b92e9725bbb73329d0421262c234357b9fb.sol(20)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    mapping (address => mapping (address => uint256)) allowed;
    |
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
    |            balances[msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0xa17c4b92e9725bbb73329d0421262c234357b9fb.sol(25)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0) {
    |            balances[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0xa17c4b92e9725bbb73329d0421262c234357b9fb.sol(38)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa17c4b92e9725bbb73329d0421262c234357b9fb.sol(52)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xa17c4b92e9725bbb73329d0421262c234357b9fb.sol(56)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa17c4b92e9725bbb73329d0421262c234357b9fb.sol(62)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |/// @author braziliex dev team - <dev@braziliex.com>
    |contract Token {
  > |    uint256 public totalSupply;
    |    function balanceOf(address owner) constant returns (uint256 balance);
    |    function transfer(address to, uint256 value) returns (bool success);
  at /home/jiaming/mavs_srcs/contract@0xa17c4b92e9725bbb73329d0421262c234357b9fb.sol(7)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xa17c4b92e9725bbb73329d0421262c234357b9fb.sol(27)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xa17c4b92e9725bbb73329d0421262c234357b9fb.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xa17c4b92e9725bbb73329d0421262c234357b9fb.sol(57)


