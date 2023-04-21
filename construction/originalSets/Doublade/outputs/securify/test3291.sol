Processing contract: /home/jiaming/mavs_srcs/contract@0xd7732e3783b0047aa251928960063f863ad022d8.sol:BRM
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd7732e3783b0047aa251928960063f863ad022d8.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd7732e3783b0047aa251928960063f863ad022d8.sol:Token
[33mWarning[0m for LockedEther in contract 'BRM':
    |    mapping (address => mapping (address => uint256)) allowed;
    |}
  > |contract BRM is StandardToken {
    |	string public constant name = "BrahmaOS";
    |	string public constant symbol = "BRM";
  at /home/jiaming/mavs_srcs/contract@0xd7732e3783b0047aa251928960063f863ad022d8.sol(57)

[31mViolation[0m for MissingInputValidation in contract 'BRM':
    |contract StandardToken is Token {
    |
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
    |            balances[msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0xd7732e3783b0047aa251928960063f863ad022d8.sol(16)

[31mViolation[0m for MissingInputValidation in contract 'BRM':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        if (balances[_to] + _value < balances[_to]) revert(); // Check for overflows
    |        if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0) {
  at /home/jiaming/mavs_srcs/contract@0xd7732e3783b0047aa251928960063f863ad022d8.sol(27)

[31mViolation[0m for MissingInputValidation in contract 'BRM':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd7732e3783b0047aa251928960063f863ad022d8.sol(40)

[31mViolation[0m for MissingInputValidation in contract 'BRM':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xd7732e3783b0047aa251928960063f863ad022d8.sol(44)

[31mViolation[0m for MissingInputValidation in contract 'BRM':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |        return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd7732e3783b0047aa251928960063f863ad022d8.sol(50)

[33mWarning[0m for MissingInputValidation in contract 'BRM':
    |contract Token {
  > |    uint256 public totalSupply;
    |    function balanceOf(address _owner) constant returns (uint256 balance);
    |    function transfer(address _to, uint256 _value) returns (bool success);
  at /home/jiaming/mavs_srcs/contract@0xd7732e3783b0047aa251928960063f863ad022d8.sol(2)

[33mWarning[0m for MissingInputValidation in contract 'BRM':
    |}
    |contract BRM is StandardToken {
  > |	string public constant name = "BrahmaOS";
    |	string public constant symbol = "BRM";
    |	uint256 public constant decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0xd7732e3783b0047aa251928960063f863ad022d8.sol(58)

[33mWarning[0m for MissingInputValidation in contract 'BRM':
    |contract BRM is StandardToken {
    |	string public constant name = "BrahmaOS";
  > |	string public constant symbol = "BRM";
    |	uint256 public constant decimals = 18;
    |
  at /home/jiaming/mavs_srcs/contract@0xd7732e3783b0047aa251928960063f863ad022d8.sol(59)

[33mWarning[0m for MissingInputValidation in contract 'BRM':
    |	string public constant name = "BrahmaOS";
    |	string public constant symbol = "BRM";
  > |	uint256 public constant decimals = 18;
    |
    |	uint256 public constant total = 3 * 10**9 * 10**decimals;
  at /home/jiaming/mavs_srcs/contract@0xd7732e3783b0047aa251928960063f863ad022d8.sol(60)

[33mWarning[0m for MissingInputValidation in contract 'BRM':
    |	uint256 public constant decimals = 18;
    |
  > |	uint256 public constant total = 3 * 10**9 * 10**decimals;
    |
    |	function BRM() {
  at /home/jiaming/mavs_srcs/contract@0xd7732e3783b0047aa251928960063f863ad022d8.sol(62)

[33mWarning[0m for UnrestrictedWrite in contract 'BRM':
    |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd7732e3783b0047aa251928960063f863ad022d8.sol(18)

[33mWarning[0m for UnrestrictedWrite in contract 'BRM':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xd7732e3783b0047aa251928960063f863ad022d8.sol(32)

[33mWarning[0m for UnrestrictedWrite in contract 'BRM':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xd7732e3783b0047aa251928960063f863ad022d8.sol(45)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |
    |/*  ERC 20 token */
  > |contract StandardToken is Token {
    |
    |    function transfer(address _to, uint256 _value) returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0xd7732e3783b0047aa251928960063f863ad022d8.sol(14)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |contract StandardToken is Token {
    |
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
    |            balances[msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0xd7732e3783b0047aa251928960063f863ad022d8.sol(16)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        if (balances[_to] + _value < balances[_to]) revert(); // Check for overflows
    |        if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0) {
  at /home/jiaming/mavs_srcs/contract@0xd7732e3783b0047aa251928960063f863ad022d8.sol(27)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd7732e3783b0047aa251928960063f863ad022d8.sol(40)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xd7732e3783b0047aa251928960063f863ad022d8.sol(44)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |        return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd7732e3783b0047aa251928960063f863ad022d8.sol(50)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |contract Token {
  > |    uint256 public totalSupply;
    |    function balanceOf(address _owner) constant returns (uint256 balance);
    |    function transfer(address _to, uint256 _value) returns (bool success);
  at /home/jiaming/mavs_srcs/contract@0xd7732e3783b0047aa251928960063f863ad022d8.sol(2)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd7732e3783b0047aa251928960063f863ad022d8.sol(18)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xd7732e3783b0047aa251928960063f863ad022d8.sol(32)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xd7732e3783b0047aa251928960063f863ad022d8.sol(45)


