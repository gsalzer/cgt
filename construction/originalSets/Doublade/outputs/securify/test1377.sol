Processing contract: /home/jiaming/mavs_srcs/contract@0x57838ff342f36a1ec18224981ea8715a4667fb3a.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x57838ff342f36a1ec18224981ea8715a4667fb3a.sol:QUBEToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x57838ff342f36a1ec18224981ea8715a4667fb3a.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x57838ff342f36a1ec18224981ea8715a4667fb3a.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'QUBEToken':
    |}
    |
  > |contract QUBEToken is StandardToken {
    |  string public constant name = "QUBE";
    |  string public constant symbol = "QUBE";
  at /home/jiaming/mavs_srcs/contract@0x57838ff342f36a1ec18224981ea8715a4667fb3a.sol(118)

[33mWarning[0m for UnrestrictedWrite in contract 'QUBEToken':
    |    require(_to != address(0));
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x57838ff342f36a1ec18224981ea8715a4667fb3a.sol(72)

[33mWarning[0m for UnrestrictedWrite in contract 'QUBEToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x57838ff342f36a1ec18224981ea8715a4667fb3a.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'QUBEToken':
    |  function approve(address _spender, uint256 _value) public returns (bool) {
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x57838ff342f36a1ec18224981ea8715a4667fb3a.sol(102)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x57838ff342f36a1ec18224981ea8715a4667fb3a.sol(7)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Implementation of the basic standard token.
    | */
  > |contract StandardToken is ERC20 {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x57838ff342f36a1ec18224981ea8715a4667fb3a.sol(49)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require(_to != address(0));
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x57838ff342f36a1ec18224981ea8715a4667fb3a.sol(72)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x57838ff342f36a1ec18224981ea8715a4667fb3a.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  function approve(address _spender, uint256 _value) public returns (bool) {
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x57838ff342f36a1ec18224981ea8715a4667fb3a.sol(102)


