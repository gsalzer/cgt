Processing contract: /home/jiaming/mavs_srcs/contract@0x76c4a88def0a977f057ceea01a03d5be89379995.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x76c4a88def0a977f057ceea01a03d5be89379995.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x76c4a88def0a977f057ceea01a03d5be89379995.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x76c4a88def0a977f057ceea01a03d5be89379995.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x76c4a88def0a977f057ceea01a03d5be89379995.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x76c4a88def0a977f057ceea01a03d5be89379995.sol:TTCToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    |
    |
  > |contract BasicToken is ERC20Basic {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x76c4a88def0a977f057ceea01a03d5be89379995.sol(40)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x76c4a88def0a977f057ceea01a03d5be89379995.sol(50)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |
    |
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) pure internal returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x76c4a88def0a977f057ceea01a03d5be89379995.sol(4)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |
    |
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0x76c4a88def0a977f057ceea01a03d5be89379995.sol(71)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x76c4a88def0a977f057ceea01a03d5be89379995.sol(50)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x76c4a88def0a977f057ceea01a03d5be89379995.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x76c4a88def0a977f057ceea01a03d5be89379995.sol(96)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |  function increaseApproval (address _spender, uint _addedValue) public returns (bool success) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x76c4a88def0a977f057ceea01a03d5be89379995.sol(108)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x76c4a88def0a977f057ceea01a03d5be89379995.sol(116)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x76c4a88def0a977f057ceea01a03d5be89379995.sol(118)

[33mWarning[0m for LockedEther in contract 'TTCToken':
    |
    |
  > |contract TTCToken is StandardToken {
    |
    |  string public constant name = "TTCToken";
  at /home/jiaming/mavs_srcs/contract@0x76c4a88def0a977f057ceea01a03d5be89379995.sol(128)

[33mWarning[0m for UnrestrictedWrite in contract 'TTCToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x76c4a88def0a977f057ceea01a03d5be89379995.sol(50)

[33mWarning[0m for UnrestrictedWrite in contract 'TTCToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x76c4a88def0a977f057ceea01a03d5be89379995.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'TTCToken':
    |
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x76c4a88def0a977f057ceea01a03d5be89379995.sol(96)

[33mWarning[0m for UnrestrictedWrite in contract 'TTCToken':
    |
    |  function increaseApproval (address _spender, uint _addedValue) public returns (bool success) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x76c4a88def0a977f057ceea01a03d5be89379995.sol(108)

[33mWarning[0m for UnrestrictedWrite in contract 'TTCToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x76c4a88def0a977f057ceea01a03d5be89379995.sol(116)

[33mWarning[0m for UnrestrictedWrite in contract 'TTCToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x76c4a88def0a977f057ceea01a03d5be89379995.sol(118)


