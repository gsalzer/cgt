Processing contract: /home/jiaming/mavs_srcs/contract@0xa157b5a35aba95d18f3ff716d01b6143db5f1da8.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa157b5a35aba95d18f3ff716d01b6143db5f1da8.sol:CrowdsaleToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa157b5a35aba95d18f3ff716d01b6143db5f1da8.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xa157b5a35aba95d18f3ff716d01b6143db5f1da8.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xa157b5a35aba95d18f3ff716d01b6143db5f1da8.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa157b5a35aba95d18f3ff716d01b6143db5f1da8.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    |}
    |
  > |contract BasicToken is ERC20Basic {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xa157b5a35aba95d18f3ff716d01b6143db5f1da8.sol(47)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |  */
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xa157b5a35aba95d18f3ff716d01b6143db5f1da8.sol(58)

[33mWarning[0m for DAOConstantGas in contract 'CrowdsaleToken':
    |    balances[recipient] = balances[recipient].add(tokens);
    | 
  > |    if (!multisig.send(msg.value)) {
    |      throw;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa157b5a35aba95d18f3ff716d01b6143db5f1da8.sol(155)

[33mWarning[0m for LockedEther in contract 'CrowdsaleToken':
    |}
    |
  > |contract CrowdsaleToken is StandardToken {
    | 
    |  string public constant name = "HolyEthereumCoin";
  at /home/jiaming/mavs_srcs/contract@0xa157b5a35aba95d18f3ff716d01b6143db5f1da8.sol(129)

[33mWarning[0m for TODReceiver in contract 'CrowdsaleToken':
    |    balances[recipient] = balances[recipient].add(tokens);
    | 
  > |    if (!multisig.send(msg.value)) {
    |      throw;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa157b5a35aba95d18f3ff716d01b6143db5f1da8.sol(155)

[33mWarning[0m for UnhandledException in contract 'CrowdsaleToken':
    |    balances[recipient] = balances[recipient].add(tokens);
    | 
  > |    if (!multisig.send(msg.value)) {
    |      throw;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa157b5a35aba95d18f3ff716d01b6143db5f1da8.sol(155)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CrowdsaleToken':
    |    balances[recipient] = balances[recipient].add(tokens);
    | 
  > |    if (!multisig.send(msg.value)) {
    |      throw;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa157b5a35aba95d18f3ff716d01b6143db5f1da8.sol(155)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |  */
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xa157b5a35aba95d18f3ff716d01b6143db5f1da8.sol(58)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |  function transfer(address _to, uint256 _value) returns (bool) {
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa157b5a35aba95d18f3ff716d01b6143db5f1da8.sol(59)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |    // require (_value <= _allowance);
    |
  > |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xa157b5a35aba95d18f3ff716d01b6143db5f1da8.sol(92)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |
    |    balances[_to] = balances[_to].add(_value);
  > |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xa157b5a35aba95d18f3ff716d01b6143db5f1da8.sol(93)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa157b5a35aba95d18f3ff716d01b6143db5f1da8.sol(94)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa157b5a35aba95d18f3ff716d01b6143db5f1da8.sol(112)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    | 
    |    uint tokens = msg.value.mul(getPrice());
  > |    totalSupply = totalSupply.add(tokens);
    | 
    |    balances[recipient] = balances[recipient].add(tokens);
  at /home/jiaming/mavs_srcs/contract@0xa157b5a35aba95d18f3ff716d01b6143db5f1da8.sol(151)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |    totalSupply = totalSupply.add(tokens);
    | 
  > |    balances[recipient] = balances[recipient].add(tokens);
    | 
    |    if (!multisig.send(msg.value)) {
  at /home/jiaming/mavs_srcs/contract@0xa157b5a35aba95d18f3ff716d01b6143db5f1da8.sol(153)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xa157b5a35aba95d18f3ff716d01b6143db5f1da8.sol(7)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) allowed;
  at /home/jiaming/mavs_srcs/contract@0xa157b5a35aba95d18f3ff716d01b6143db5f1da8.sol(75)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  */
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xa157b5a35aba95d18f3ff716d01b6143db5f1da8.sol(58)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa157b5a35aba95d18f3ff716d01b6143db5f1da8.sol(94)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa157b5a35aba95d18f3ff716d01b6143db5f1da8.sol(112)


