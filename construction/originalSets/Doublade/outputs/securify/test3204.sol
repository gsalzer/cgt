Processing contract: /home/jiaming/mavs_srcs/contract@0xd1dbcb22057b08410046f37c2709d6cb80a9200f.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd1dbcb22057b08410046f37c2709d6cb80a9200f.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xd1dbcb22057b08410046f37c2709d6cb80a9200f.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xd1dbcb22057b08410046f37c2709d6cb80a9200f.sol:FlanianPobbleBead
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd1dbcb22057b08410046f37c2709d6cb80a9200f.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd1dbcb22057b08410046f37c2709d6cb80a9200f.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    | * @dev Basic version of StandardToken, with no allowances.
    | */
  > |contract BasicToken is ERC20Basic {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xd1dbcb22057b08410046f37c2709d6cb80a9200f.sol(49)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |  */
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd1dbcb22057b08410046f37c2709d6cb80a9200f.sol(60)

[33mWarning[0m for LockedEther in contract 'FlanianPobbleBead':
    | * `StandardToken` functions.
    | */
  > |contract FlanianPobbleBead is StandardToken {
    |
    |  string public constant name = "Flanian Pobble Bead";
  at /home/jiaming/mavs_srcs/contract@0xd1dbcb22057b08410046f37c2709d6cb80a9200f.sol(156)

[33mWarning[0m for UnrestrictedWrite in contract 'FlanianPobbleBead':
    |  */
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd1dbcb22057b08410046f37c2709d6cb80a9200f.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'FlanianPobbleBead':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd1dbcb22057b08410046f37c2709d6cb80a9200f.sol(114)

[33mWarning[0m for UnrestrictedWrite in contract 'FlanianPobbleBead':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd1dbcb22057b08410046f37c2709d6cb80a9200f.sol(132)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xd1dbcb22057b08410046f37c2709d6cb80a9200f.sol(7)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) allowed;
  at /home/jiaming/mavs_srcs/contract@0xd1dbcb22057b08410046f37c2709d6cb80a9200f.sol(95)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  */
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd1dbcb22057b08410046f37c2709d6cb80a9200f.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd1dbcb22057b08410046f37c2709d6cb80a9200f.sol(114)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd1dbcb22057b08410046f37c2709d6cb80a9200f.sol(132)


