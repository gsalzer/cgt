Processing contract: /home/jiaming/mavs_srcs/contract@0x0a029448b5f39623f18ce7ee1308161c6487336c.sol:BGC
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0a029448b5f39623f18ce7ee1308161c6487336c.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0a029448b5f39623f18ce7ee1308161c6487336c.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x0a029448b5f39623f18ce7ee1308161c6487336c.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x0a029448b5f39623f18ce7ee1308161c6487336c.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0a029448b5f39623f18ce7ee1308161c6487336c.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BGC':
    |
    |
  > |contract BGC is StandardToken {
    |
    |  string public constant name = "Black Gold Colony";
  at /home/jiaming/mavs_srcs/contract@0x0a029448b5f39623f18ce7ee1308161c6487336c.sol(105)

[33mWarning[0m for UnrestrictedWrite in contract 'BGC':
    |
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x0a029448b5f39623f18ce7ee1308161c6487336c.sol(49)

[33mWarning[0m for UnrestrictedWrite in contract 'BGC':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0a029448b5f39623f18ce7ee1308161c6487336c.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'BGC':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0a029448b5f39623f18ce7ee1308161c6487336c.sol(93)

[33mWarning[0m for UnrestrictedWrite in contract 'BGC':
    |  function transferOwnership(address newOwner) external onlyOwner {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0a029448b5f39623f18ce7ee1308161c6487336c.sol(130)

[33mWarning[0m for LockedEther in contract 'BasicToken':
    |
    |
  > |contract BasicToken is ERC20Basic {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x0a029448b5f39623f18ce7ee1308161c6487336c.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x0a029448b5f39623f18ce7ee1308161c6487336c.sol(49)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x0a029448b5f39623f18ce7ee1308161c6487336c.sol(7)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |
    |
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) allowed;
  at /home/jiaming/mavs_srcs/contract@0x0a029448b5f39623f18ce7ee1308161c6487336c.sol(71)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x0a029448b5f39623f18ce7ee1308161c6487336c.sol(49)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0a029448b5f39623f18ce7ee1308161c6487336c.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0a029448b5f39623f18ce7ee1308161c6487336c.sol(93)


