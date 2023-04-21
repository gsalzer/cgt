Processing contract: /home/jiaming/mavs_srcs/contract@0xb0fd0e93195b526e24415097168b0594d12e10d0.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb0fd0e93195b526e24415097168b0594d12e10d0.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xb0fd0e93195b526e24415097168b0594d12e10d0.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xb0fd0e93195b526e24415097168b0594d12e10d0.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb0fd0e93195b526e24415097168b0594d12e10d0.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb0fd0e93195b526e24415097168b0594d12e10d0.sol:THRD
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    |  event Approval(address indexed owner, address indexed spender, uint256 value);
    |}
  > |contract BasicToken is ERC20Basic {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xb0fd0e93195b526e24415097168b0594d12e10d0.sol(40)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |  function transfer(address _to, uint256 _value) public returns (bool) {
    |    require(_to != address(0));
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xb0fd0e93195b526e24415097168b0594d12e10d0.sol(47)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |}
    |
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xb0fd0e93195b526e24415097168b0594d12e10d0.sol(11)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) allowed;
  at /home/jiaming/mavs_srcs/contract@0xb0fd0e93195b526e24415097168b0594d12e10d0.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  function transfer(address _to, uint256 _value) public returns (bool) {
    |    require(_to != address(0));
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xb0fd0e93195b526e24415097168b0594d12e10d0.sol(47)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xb0fd0e93195b526e24415097168b0594d12e10d0.sol(72)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xb0fd0e93195b526e24415097168b0594d12e10d0.sol(79)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  function increaseApproval (address _spender, uint _addedValue)
    |    returns (bool success) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xb0fd0e93195b526e24415097168b0594d12e10d0.sol(92)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xb0fd0e93195b526e24415097168b0594d12e10d0.sol(101)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xb0fd0e93195b526e24415097168b0594d12e10d0.sol(103)

[33mWarning[0m for LockedEther in contract 'THRD':
    |}
    |
  > |contract THRD is StandardToken {
    |	string public name = "THRD Coin"; 
    |	string public symbol = "THRD";
  at /home/jiaming/mavs_srcs/contract@0xb0fd0e93195b526e24415097168b0594d12e10d0.sol(111)

[33mWarning[0m for UnrestrictedWrite in contract 'THRD':
    |  function transfer(address _to, uint256 _value) public returns (bool) {
    |    require(_to != address(0));
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xb0fd0e93195b526e24415097168b0594d12e10d0.sol(47)

[33mWarning[0m for UnrestrictedWrite in contract 'THRD':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xb0fd0e93195b526e24415097168b0594d12e10d0.sol(72)

[33mWarning[0m for UnrestrictedWrite in contract 'THRD':
    |
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xb0fd0e93195b526e24415097168b0594d12e10d0.sol(79)

[33mWarning[0m for UnrestrictedWrite in contract 'THRD':
    |  function increaseApproval (address _spender, uint _addedValue)
    |    returns (bool success) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xb0fd0e93195b526e24415097168b0594d12e10d0.sol(92)

[33mWarning[0m for UnrestrictedWrite in contract 'THRD':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xb0fd0e93195b526e24415097168b0594d12e10d0.sol(101)

[33mWarning[0m for UnrestrictedWrite in contract 'THRD':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xb0fd0e93195b526e24415097168b0594d12e10d0.sol(103)


