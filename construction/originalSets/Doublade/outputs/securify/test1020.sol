Processing contract: /home/jiaming/mavs_srcs/contract@0x402df93560b6775024c3c0a71581b6579038d2f0.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x402df93560b6775024c3c0a71581b6579038d2f0.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x402df93560b6775024c3c0a71581b6579038d2f0.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x402df93560b6775024c3c0a71581b6579038d2f0.sol:UWTToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    |
    |
  > |contract BasicToken  {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x402df93560b6775024c3c0a71581b6579038d2f0.sol(32)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |        require(value <= _balances[msg.sender]);
    |
  > |        _balances[msg.sender] = _balances[msg.sender].sub(value);
    |        _balances[to] = _balances[to].add(value);
    |        emit Transfer(msg.sender, to, value);
  at /home/jiaming/mavs_srcs/contract@0x402df93560b6775024c3c0a71581b6579038d2f0.sol(54)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |
    |
  > |library SafeMath {
    |    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |        if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0x402df93560b6775024c3c0a71581b6579038d2f0.sol(4)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |
    |
  > |contract StandardToken is BasicToken {
    |    mapping (address => mapping (address => uint256)) _allowances;
    |    event Approval(address indexed owner, address indexed agent, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0x402df93560b6775024c3c0a71581b6579038d2f0.sol(62)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        require(value <= _balances[msg.sender]);
    |
  > |        _balances[msg.sender] = _balances[msg.sender].sub(value);
    |        _balances[to] = _balances[to].add(value);
    |        emit Transfer(msg.sender, to, value);
  at /home/jiaming/mavs_srcs/contract@0x402df93560b6775024c3c0a71581b6579038d2f0.sol(54)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        _balances[from] = _balances[from].sub(value);
    |        _balances[to] = _balances[to].add(value);
  > |        _allowances[from][msg.sender] = _allowances[from][msg.sender].sub(value);
    |        emit Transfer(from, to, value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x402df93560b6775024c3c0a71581b6579038d2f0.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    function approve(address agent, uint256 value) public returns (bool) {
  > |        _allowances[msg.sender][agent] = value;
    |        emit Approval(msg.sender, agent, value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x402df93560b6775024c3c0a71581b6579038d2f0.sol(79)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    function increaseApproval(address agent, uint value) public returns (bool) {
  > |        _allowances[msg.sender][agent] = _allowances[msg.sender][agent].add(value);
    |        emit Approval(msg.sender, agent, _allowances[msg.sender][agent]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x402df93560b6775024c3c0a71581b6579038d2f0.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        uint allowanceValue = _allowances[msg.sender][agent];
    |        if (value > allowanceValue) {
  > |            _allowances[msg.sender][agent] = 0;
    |        } else {
    |            _allowances[msg.sender][agent] = allowanceValue.sub(value);
  at /home/jiaming/mavs_srcs/contract@0x402df93560b6775024c3c0a71581b6579038d2f0.sol(97)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |            _allowances[msg.sender][agent] = 0;
    |        } else {
  > |            _allowances[msg.sender][agent] = allowanceValue.sub(value);
    |        }
    |        emit Approval(msg.sender, agent, _allowances[msg.sender][agent]);
  at /home/jiaming/mavs_srcs/contract@0x402df93560b6775024c3c0a71581b6579038d2f0.sol(99)

[33mWarning[0m for LockedEther in contract 'UWTToken':
    |
    |
  > |contract UWTToken is StandardToken {
    |    string public name = "UP WALLET";
    |    string public symbol = "UWT";
  at /home/jiaming/mavs_srcs/contract@0x402df93560b6775024c3c0a71581b6579038d2f0.sol(107)

[33mWarning[0m for UnrestrictedWrite in contract 'UWTToken':
    |        require(value <= _balances[msg.sender]);
    |
  > |        _balances[msg.sender] = _balances[msg.sender].sub(value);
    |        _balances[to] = _balances[to].add(value);
    |        emit Transfer(msg.sender, to, value);
  at /home/jiaming/mavs_srcs/contract@0x402df93560b6775024c3c0a71581b6579038d2f0.sol(54)

[33mWarning[0m for UnrestrictedWrite in contract 'UWTToken':
    |        _balances[from] = _balances[from].sub(value);
    |        _balances[to] = _balances[to].add(value);
  > |        _allowances[from][msg.sender] = _allowances[from][msg.sender].sub(value);
    |        emit Transfer(from, to, value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x402df93560b6775024c3c0a71581b6579038d2f0.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'UWTToken':
    |
    |    function approve(address agent, uint256 value) public returns (bool) {
  > |        _allowances[msg.sender][agent] = value;
    |        emit Approval(msg.sender, agent, value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x402df93560b6775024c3c0a71581b6579038d2f0.sol(79)

[33mWarning[0m for UnrestrictedWrite in contract 'UWTToken':
    |
    |    function increaseApproval(address agent, uint value) public returns (bool) {
  > |        _allowances[msg.sender][agent] = _allowances[msg.sender][agent].add(value);
    |        emit Approval(msg.sender, agent, _allowances[msg.sender][agent]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x402df93560b6775024c3c0a71581b6579038d2f0.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'UWTToken':
    |        uint allowanceValue = _allowances[msg.sender][agent];
    |        if (value > allowanceValue) {
  > |            _allowances[msg.sender][agent] = 0;
    |        } else {
    |            _allowances[msg.sender][agent] = allowanceValue.sub(value);
  at /home/jiaming/mavs_srcs/contract@0x402df93560b6775024c3c0a71581b6579038d2f0.sol(97)

[33mWarning[0m for UnrestrictedWrite in contract 'UWTToken':
    |            _allowances[msg.sender][agent] = 0;
    |        } else {
  > |            _allowances[msg.sender][agent] = allowanceValue.sub(value);
    |        }
    |        emit Approval(msg.sender, agent, _allowances[msg.sender][agent]);
  at /home/jiaming/mavs_srcs/contract@0x402df93560b6775024c3c0a71581b6579038d2f0.sol(99)


