Processing contract: /home/jiaming/mavs_srcs/contract@0x8cd9af9960f433d91776bfaa063d8481cf9aef51.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8cd9af9960f433d91776bfaa063d8481cf9aef51.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x8cd9af9960f433d91776bfaa063d8481cf9aef51.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x8cd9af9960f433d91776bfaa063d8481cf9aef51.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8cd9af9960f433d91776bfaa063d8481cf9aef51.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8cd9af9960f433d91776bfaa063d8481cf9aef51.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8cd9af9960f433d91776bfaa063d8481cf9aef51.sol:Voicecoin
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
  at /home/jiaming/mavs_srcs/contract@0x8cd9af9960f433d91776bfaa063d8481cf9aef51.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |  */
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x8cd9af9960f433d91776bfaa063d8481cf9aef51.sol(94)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |
    |  address public owner;
  at /home/jiaming/mavs_srcs/contract@0x8cd9af9960f433d91776bfaa063d8481cf9aef51.sol(37)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |contract Ownable {
    |
  > |  address public owner;
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x8cd9af9960f433d91776bfaa063d8481cf9aef51.sol(39)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));
    |    owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x8cd9af9960f433d91776bfaa063d8481cf9aef51.sol(61)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x8cd9af9960f433d91776bfaa063d8481cf9aef51.sol(63)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x8cd9af9960f433d91776bfaa063d8481cf9aef51.sol(7)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken, Ownable {
    |
    |  mapping (address => mapping (address => uint256)) allowed;
  at /home/jiaming/mavs_srcs/contract@0x8cd9af9960f433d91776bfaa063d8481cf9aef51.sol(129)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  */
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x8cd9af9960f433d91776bfaa063d8481cf9aef51.sol(94)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  function transfer(address _to, uint256 _value) returns (bool) {
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x8cd9af9960f433d91776bfaa063d8481cf9aef51.sol(95)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    // require (_value <= _allowance);
    |
  > |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x8cd9af9960f433d91776bfaa063d8481cf9aef51.sol(146)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    balances[_to] = balances[_to].add(_value);
  > |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x8cd9af9960f433d91776bfaa063d8481cf9aef51.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x8cd9af9960f433d91776bfaa063d8481cf9aef51.sol(148)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x8cd9af9960f433d91776bfaa063d8481cf9aef51.sol(166)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |        address burner = msg.sender;
  > |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
    |        Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0x8cd9af9960f433d91776bfaa063d8481cf9aef51.sol(190)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        address burner = msg.sender;
    |        balances[burner] = balances[burner].sub(_value);
  > |        totalSupply = totalSupply.sub(_value);
    |        Burn(burner, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8cd9af9960f433d91776bfaa063d8481cf9aef51.sol(191)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x8cd9af9960f433d91776bfaa063d8481cf9aef51.sol(63)

[33mWarning[0m for LockedEther in contract 'Voicecoin':
    | * `StandardToken` functions.
    | */
  > |contract Voicecoin is StandardToken {
    |
    |  string public constant name = "Voicecoin";
  at /home/jiaming/mavs_srcs/contract@0x8cd9af9960f433d91776bfaa063d8481cf9aef51.sol(206)

[33mWarning[0m for UnrestrictedWrite in contract 'Voicecoin':
    |  */
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x8cd9af9960f433d91776bfaa063d8481cf9aef51.sol(94)

[33mWarning[0m for UnrestrictedWrite in contract 'Voicecoin':
    |  function transfer(address _to, uint256 _value) returns (bool) {
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x8cd9af9960f433d91776bfaa063d8481cf9aef51.sol(95)

[33mWarning[0m for UnrestrictedWrite in contract 'Voicecoin':
    |    // require (_value <= _allowance);
    |
  > |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x8cd9af9960f433d91776bfaa063d8481cf9aef51.sol(146)

[33mWarning[0m for UnrestrictedWrite in contract 'Voicecoin':
    |
    |    balances[_to] = balances[_to].add(_value);
  > |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x8cd9af9960f433d91776bfaa063d8481cf9aef51.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'Voicecoin':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x8cd9af9960f433d91776bfaa063d8481cf9aef51.sol(148)

[33mWarning[0m for UnrestrictedWrite in contract 'Voicecoin':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x8cd9af9960f433d91776bfaa063d8481cf9aef51.sol(166)

[33mWarning[0m for UnrestrictedWrite in contract 'Voicecoin':
    |
    |        address burner = msg.sender;
  > |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
    |        Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0x8cd9af9960f433d91776bfaa063d8481cf9aef51.sol(190)

[33mWarning[0m for UnrestrictedWrite in contract 'Voicecoin':
    |        address burner = msg.sender;
    |        balances[burner] = balances[burner].sub(_value);
  > |        totalSupply = totalSupply.sub(_value);
    |        Burn(burner, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8cd9af9960f433d91776bfaa063d8481cf9aef51.sol(191)

[33mWarning[0m for UnrestrictedWrite in contract 'Voicecoin':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x8cd9af9960f433d91776bfaa063d8481cf9aef51.sol(63)


