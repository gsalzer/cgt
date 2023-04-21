Processing contract: /home/jiaming/mavs_srcs/contract@0xe4089b2e6c1bf4cb3dd267ed3b7fc98362e80e61.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe4089b2e6c1bf4cb3dd267ed3b7fc98362e80e61.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xe4089b2e6c1bf4cb3dd267ed3b7fc98362e80e61.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xe4089b2e6c1bf4cb3dd267ed3b7fc98362e80e61.sol:HotExchangeCoin
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe4089b2e6c1bf4cb3dd267ed3b7fc98362e80e61.sol:MintableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe4089b2e6c1bf4cb3dd267ed3b7fc98362e80e61.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe4089b2e6c1bf4cb3dd267ed3b7fc98362e80e61.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe4089b2e6c1bf4cb3dd267ed3b7fc98362e80e61.sol:StandardToken
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
  at /home/jiaming/mavs_srcs/contract@0xe4089b2e6c1bf4cb3dd267ed3b7fc98362e80e61.sol(88)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |  */
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe4089b2e6c1bf4cb3dd267ed3b7fc98362e80e61.sol(99)

[33mWarning[0m for LockedEther in contract 'HotExchangeCoin':
    |}
    |
  > |contract HotExchangeCoin is MintableToken {
    |  string public name = "HotExchangeCoin";
    |  string public symbol = "HTEC";
  at /home/jiaming/mavs_srcs/contract@0xe4089b2e6c1bf4cb3dd267ed3b7fc98362e80e61.sol(218)

[33mWarning[0m for UnrestrictedWrite in contract 'HotExchangeCoin':
    |  */
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe4089b2e6c1bf4cb3dd267ed3b7fc98362e80e61.sol(99)

[33mWarning[0m for UnrestrictedWrite in contract 'HotExchangeCoin':
    |  function transfer(address _to, uint256 _value) returns (bool) {
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe4089b2e6c1bf4cb3dd267ed3b7fc98362e80e61.sol(100)

[33mWarning[0m for UnrestrictedWrite in contract 'HotExchangeCoin':
    |     // require (_value <= _allowance);
    |
  > |     balances[_to] = balances[_to].add(_value);
    |     balances[_from] = balances[_from].sub(_value);
    |     allowed[_from][msg.sender] = _allowance.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xe4089b2e6c1bf4cb3dd267ed3b7fc98362e80e61.sol(145)

[33mWarning[0m for UnrestrictedWrite in contract 'HotExchangeCoin':
    |
    |     balances[_to] = balances[_to].add(_value);
  > |     balances[_from] = balances[_from].sub(_value);
    |     allowed[_from][msg.sender] = _allowance.sub(_value);
    |     Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe4089b2e6c1bf4cb3dd267ed3b7fc98362e80e61.sol(146)

[33mWarning[0m for UnrestrictedWrite in contract 'HotExchangeCoin':
    |     balances[_to] = balances[_to].add(_value);
    |     balances[_from] = balances[_from].sub(_value);
  > |     allowed[_from][msg.sender] = _allowance.sub(_value);
    |     Transfer(_from, _to, _value);
    |     return true;
  at /home/jiaming/mavs_srcs/contract@0xe4089b2e6c1bf4cb3dd267ed3b7fc98362e80e61.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'HotExchangeCoin':
    |     require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |     allowed[msg.sender][_spender] = _value;
    |     Approval(msg.sender, _spender, _value);
    |     return true;
  at /home/jiaming/mavs_srcs/contract@0xe4089b2e6c1bf4cb3dd267ed3b7fc98362e80e61.sol(165)

[33mWarning[0m for UnrestrictedWrite in contract 'HotExchangeCoin':
    |  function mint(address _to, uint256 _amount) onlyOwner canMint returns (bool) {
    |    require(totalSupply.add(_amount) <= 21000000 * 1 ether);
  > |    totalSupply = totalSupply.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    Transfer(0X0, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xe4089b2e6c1bf4cb3dd267ed3b7fc98362e80e61.sol(201)

[33mWarning[0m for UnrestrictedWrite in contract 'HotExchangeCoin':
    |    require(totalSupply.add(_amount) <= 21000000 * 1 ether);
    |    totalSupply = totalSupply.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    Transfer(0X0, _to, _amount);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe4089b2e6c1bf4cb3dd267ed3b7fc98362e80e61.sol(202)

[33mWarning[0m for UnrestrictedWrite in contract 'HotExchangeCoin':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe4089b2e6c1bf4cb3dd267ed3b7fc98362e80e61.sol(36)

[33mWarning[0m for UnrestrictedWrite in contract 'HotExchangeCoin':
    |   */
    |  function finishMinting() onlyOwner returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe4089b2e6c1bf4cb3dd267ed3b7fc98362e80e61.sol(212)

[33mWarning[0m for LockedEther in contract 'MintableToken':
    | }
    |
  > |contract MintableToken is StandardToken, Ownable {
    |  event MintFinished();
    |
  at /home/jiaming/mavs_srcs/contract@0xe4089b2e6c1bf4cb3dd267ed3b7fc98362e80e61.sol(182)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  */
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe4089b2e6c1bf4cb3dd267ed3b7fc98362e80e61.sol(99)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function transfer(address _to, uint256 _value) returns (bool) {
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe4089b2e6c1bf4cb3dd267ed3b7fc98362e80e61.sol(100)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |     // require (_value <= _allowance);
    |
  > |     balances[_to] = balances[_to].add(_value);
    |     balances[_from] = balances[_from].sub(_value);
    |     allowed[_from][msg.sender] = _allowance.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xe4089b2e6c1bf4cb3dd267ed3b7fc98362e80e61.sol(145)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |     balances[_to] = balances[_to].add(_value);
  > |     balances[_from] = balances[_from].sub(_value);
    |     allowed[_from][msg.sender] = _allowance.sub(_value);
    |     Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe4089b2e6c1bf4cb3dd267ed3b7fc98362e80e61.sol(146)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |     balances[_to] = balances[_to].add(_value);
    |     balances[_from] = balances[_from].sub(_value);
  > |     allowed[_from][msg.sender] = _allowance.sub(_value);
    |     Transfer(_from, _to, _value);
    |     return true;
  at /home/jiaming/mavs_srcs/contract@0xe4089b2e6c1bf4cb3dd267ed3b7fc98362e80e61.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |     require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |     allowed[msg.sender][_spender] = _value;
    |     Approval(msg.sender, _spender, _value);
    |     return true;
  at /home/jiaming/mavs_srcs/contract@0xe4089b2e6c1bf4cb3dd267ed3b7fc98362e80e61.sol(165)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function mint(address _to, uint256 _amount) onlyOwner canMint returns (bool) {
    |    require(totalSupply.add(_amount) <= 21000000 * 1 ether);
  > |    totalSupply = totalSupply.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    Transfer(0X0, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xe4089b2e6c1bf4cb3dd267ed3b7fc98362e80e61.sol(201)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(totalSupply.add(_amount) <= 21000000 * 1 ether);
    |    totalSupply = totalSupply.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    Transfer(0X0, _to, _amount);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe4089b2e6c1bf4cb3dd267ed3b7fc98362e80e61.sol(202)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe4089b2e6c1bf4cb3dd267ed3b7fc98362e80e61.sol(36)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function finishMinting() onlyOwner returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe4089b2e6c1bf4cb3dd267ed3b7fc98362e80e61.sol(212)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xe4089b2e6c1bf4cb3dd267ed3b7fc98362e80e61.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xe4089b2e6c1bf4cb3dd267ed3b7fc98362e80e61.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
    |      owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0xe4089b2e6c1bf4cb3dd267ed3b7fc98362e80e61.sol(34)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe4089b2e6c1bf4cb3dd267ed3b7fc98362e80e61.sol(36)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xe4089b2e6c1bf4cb3dd267ed3b7fc98362e80e61.sol(46)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |
    |
  > | contract StandardToken is ERC20, BasicToken {
    |
    |   mapping (address => mapping (address => uint256)) allowed;
  at /home/jiaming/mavs_srcs/contract@0xe4089b2e6c1bf4cb3dd267ed3b7fc98362e80e61.sol(128)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  */
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe4089b2e6c1bf4cb3dd267ed3b7fc98362e80e61.sol(99)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |     balances[_to] = balances[_to].add(_value);
    |     balances[_from] = balances[_from].sub(_value);
  > |     allowed[_from][msg.sender] = _allowance.sub(_value);
    |     Transfer(_from, _to, _value);
    |     return true;
  at /home/jiaming/mavs_srcs/contract@0xe4089b2e6c1bf4cb3dd267ed3b7fc98362e80e61.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |     require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |     allowed[msg.sender][_spender] = _value;
    |     Approval(msg.sender, _spender, _value);
    |     return true;
  at /home/jiaming/mavs_srcs/contract@0xe4089b2e6c1bf4cb3dd267ed3b7fc98362e80e61.sol(165)


