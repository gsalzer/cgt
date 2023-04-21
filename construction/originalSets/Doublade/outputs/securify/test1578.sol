Processing contract: /home/jiaming/mavs_srcs/contract@0x642ff44e02ee4af05719362043f28e5b7eee9913.sol:PrimasToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x642ff44e02ee4af05719362043f28e5b7eee9913.sol:RBAC
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x642ff44e02ee4af05719362043f28e5b7eee9913.sol:Roles
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x642ff44e02ee4af05719362043f28e5b7eee9913.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for LockedEther in contract 'PrimasToken':
    |
    |
  > |contract PrimasToken is RBAC {
    |
    |    using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0x642ff44e02ee4af05719362043f28e5b7eee9913.sol(103)

[31mViolation[0m for UnrestrictedWrite in contract 'PrimasToken':
    |
    |    function add(Role storage role, address addr) internal {
  > |        role.bearer[addr] = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x642ff44e02ee4af05719362043f28e5b7eee9913.sol(45)

[31mViolation[0m for UnrestrictedWrite in contract 'PrimasToken':
    |
    |    function remove(Role storage role, address addr) internal {
  > |        role.bearer[addr] = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x642ff44e02ee4af05719362043f28e5b7eee9913.sol(49)

[31mViolation[0m for UnrestrictedWrite in contract 'PrimasToken':
    |        uint256 inflationAmount;
    |        require(lastInflationDayStart != currentDayStart);
  > |        lastInflationDayStart = currentDayStart;
    |        uint256 createDurationYears = (currentTime - deployTime) / 1 years;
    |        if (createDurationYears < 1) {
  at /home/jiaming/mavs_srcs/contract@0x642ff44e02ee4af05719362043f28e5b7eee9913.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'PrimasToken':
    |    function transfer(address _to, uint256 _value) public returns (bool success) {
    |        require(balanceOf(msg.sender) >= _value);
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x642ff44e02ee4af05719362043f28e5b7eee9913.sol(220)

[33mWarning[0m for UnrestrictedWrite in contract 'PrimasToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        emit Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x642ff44e02ee4af05719362043f28e5b7eee9913.sol(230)

[33mWarning[0m for UnrestrictedWrite in contract 'PrimasToken':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x642ff44e02ee4af05719362043f28e5b7eee9913.sol(236)

[31mViolation[0m for LockedEther in contract 'RBAC':
    |
    |
  > |contract RBAC {
    |
    |    address initialOwner;
  at /home/jiaming/mavs_srcs/contract@0x642ff44e02ee4af05719362043f28e5b7eee9913.sol(62)

[31mViolation[0m for UnrestrictedWrite in contract 'RBAC':
    |
    |    function add(Role storage role, address addr) internal {
  > |        role.bearer[addr] = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x642ff44e02ee4af05719362043f28e5b7eee9913.sol(45)

[31mViolation[0m for UnrestrictedWrite in contract 'RBAC':
    |
    |    function remove(Role storage role, address addr) internal {
  > |        role.bearer[addr] = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x642ff44e02ee4af05719362043f28e5b7eee9913.sol(49)

[33mWarning[0m for LockedEther in contract 'Roles':
    |
    |
  > |library Roles {
    |    struct Role {
    |        mapping(address => bool) bearer;
  at /home/jiaming/mavs_srcs/contract@0x642ff44e02ee4af05719362043f28e5b7eee9913.sol(39)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |
    |
  > |library SafeMath {
    |    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |        if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0x642ff44e02ee4af05719362043f28e5b7eee9913.sol(4)


