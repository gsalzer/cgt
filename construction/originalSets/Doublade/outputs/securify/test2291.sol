Processing contract: /home/jiaming/mavs_srcs/contract@0x9586747e0260a6f335b8befc505987a3f664d304.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9586747e0260a6f335b8befc505987a3f664d304.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x9586747e0260a6f335b8befc505987a3f664d304.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x9586747e0260a6f335b8befc505987a3f664d304.sol:HUA
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9586747e0260a6f335b8befc505987a3f664d304.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9586747e0260a6f335b8befc505987a3f664d304.sol:StandardToken
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
  at /home/jiaming/mavs_srcs/contract@0x9586747e0260a6f335b8befc505987a3f664d304.sol(57)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |    require(value <= _balances[msg.sender]);
    |
  > |    _balances[msg.sender] = _balances[msg.sender].sub(value);
    |    _balances[to] = _balances[to].add(value);
    |    emit Transfer(msg.sender, to, value);
  at /home/jiaming/mavs_srcs/contract@0x9586747e0260a6f335b8befc505987a3f664d304.sol(84)

[33mWarning[0m for LockedEther in contract 'HUA':
    |
    |
  > |contract HUA is StandardToken {
    |  // public variables
    |  string public name = " 花花链";
  at /home/jiaming/mavs_srcs/contract@0x9586747e0260a6f335b8befc505987a3f664d304.sol(146)

[33mWarning[0m for UnrestrictedWrite in contract 'HUA':
    |    require(value <= _balances[msg.sender]);
    |
  > |    _balances[msg.sender] = _balances[msg.sender].sub(value);
    |    _balances[to] = _balances[to].add(value);
    |    emit Transfer(msg.sender, to, value);
  at /home/jiaming/mavs_srcs/contract@0x9586747e0260a6f335b8befc505987a3f664d304.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'HUA':
    |    _balances[from] = _balances[from].sub(value);
    |    _balances[to] = _balances[to].add(value);
  > |    _allowances[from][msg.sender] = _allowances[from][msg.sender].sub(value);
    |    emit Transfer(from, to, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x9586747e0260a6f335b8befc505987a3f664d304.sol(111)

[33mWarning[0m for UnrestrictedWrite in contract 'HUA':
    |
    |  function approve(address agent, uint256 value) public returns (bool) {
  > |    _allowances[msg.sender][agent] = value;
    |    emit Approval(msg.sender, agent, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x9586747e0260a6f335b8befc505987a3f664d304.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'HUA':
    |
    |  function increaseApproval(address agent, uint value) public returns (bool) {
  > |    _allowances[msg.sender][agent] = _allowances[msg.sender][agent].add(value);
    |    emit Approval(msg.sender, agent, _allowances[msg.sender][agent]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x9586747e0260a6f335b8befc505987a3f664d304.sol(127)

[33mWarning[0m for UnrestrictedWrite in contract 'HUA':
    |    uint allowanceValue = _allowances[msg.sender][agent];
    |    if (value > allowanceValue) {
  > |      _allowances[msg.sender][agent] = 0;
    |    } else {
    |      _allowances[msg.sender][agent] = allowanceValue.sub(value);
  at /home/jiaming/mavs_srcs/contract@0x9586747e0260a6f335b8befc505987a3f664d304.sol(135)

[33mWarning[0m for UnrestrictedWrite in contract 'HUA':
    |      _allowances[msg.sender][agent] = 0;
    |    } else {
  > |      _allowances[msg.sender][agent] = allowanceValue.sub(value);
    |    }
    |    emit Approval(msg.sender, agent, _allowances[msg.sender][agent]);
  at /home/jiaming/mavs_srcs/contract@0x9586747e0260a6f335b8befc505987a3f664d304.sol(137)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |
    |
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0x9586747e0260a6f335b8befc505987a3f664d304.sol(4)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |
    |
  > |contract StandardToken is ERC20, BasicToken {
    |  // public variables
    |
  at /home/jiaming/mavs_srcs/contract@0x9586747e0260a6f335b8befc505987a3f664d304.sol(95)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require(value <= _balances[msg.sender]);
    |
  > |    _balances[msg.sender] = _balances[msg.sender].sub(value);
    |    _balances[to] = _balances[to].add(value);
    |    emit Transfer(msg.sender, to, value);
  at /home/jiaming/mavs_srcs/contract@0x9586747e0260a6f335b8befc505987a3f664d304.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    _balances[from] = _balances[from].sub(value);
    |    _balances[to] = _balances[to].add(value);
  > |    _allowances[from][msg.sender] = _allowances[from][msg.sender].sub(value);
    |    emit Transfer(from, to, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x9586747e0260a6f335b8befc505987a3f664d304.sol(111)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |  function approve(address agent, uint256 value) public returns (bool) {
  > |    _allowances[msg.sender][agent] = value;
    |    emit Approval(msg.sender, agent, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x9586747e0260a6f335b8befc505987a3f664d304.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |  function increaseApproval(address agent, uint value) public returns (bool) {
  > |    _allowances[msg.sender][agent] = _allowances[msg.sender][agent].add(value);
    |    emit Approval(msg.sender, agent, _allowances[msg.sender][agent]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x9586747e0260a6f335b8befc505987a3f664d304.sol(127)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint allowanceValue = _allowances[msg.sender][agent];
    |    if (value > allowanceValue) {
  > |      _allowances[msg.sender][agent] = 0;
    |    } else {
    |      _allowances[msg.sender][agent] = allowanceValue.sub(value);
  at /home/jiaming/mavs_srcs/contract@0x9586747e0260a6f335b8befc505987a3f664d304.sol(135)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      _allowances[msg.sender][agent] = 0;
    |    } else {
  > |      _allowances[msg.sender][agent] = allowanceValue.sub(value);
    |    }
    |    emit Approval(msg.sender, agent, _allowances[msg.sender][agent]);
  at /home/jiaming/mavs_srcs/contract@0x9586747e0260a6f335b8befc505987a3f664d304.sol(137)


