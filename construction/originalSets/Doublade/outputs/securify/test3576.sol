Processing contract: /home/jiaming/mavs_srcs/contract@0xea3a23c53dbb15164bca835be54f6bb913333b79.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xea3a23c53dbb15164bca835be54f6bb913333b79.sol:EmeraldToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xea3a23c53dbb15164bca835be54f6bb913333b79.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xea3a23c53dbb15164bca835be54f6bb913333b79.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xea3a23c53dbb15164bca835be54f6bb913333b79.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'EmeraldToken':
    |
    |
  > |contract EmeraldToken is StandardToken, Ownable {
    |
    |  string public name;
  at /home/jiaming/mavs_srcs/contract@0xea3a23c53dbb15164bca835be54f6bb913333b79.sol(181)

[33mWarning[0m for UnrestrictedWrite in contract 'EmeraldToken':
    |  function transfer(address _to, uint _value) onlyPayloadSize(2 * 32) returns (bool) {
    |    require(balances[msg.sender] >= _value);
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xea3a23c53dbb15164bca835be54f6bb913333b79.sol(92)

[33mWarning[0m for UnrestrictedWrite in contract 'EmeraldToken':
    |    require(balances[msg.sender] >= _value);
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xea3a23c53dbb15164bca835be54f6bb913333b79.sol(93)

[33mWarning[0m for UnrestrictedWrite in contract 'EmeraldToken':
    |  function transferFrom(address _from, address _to, uint _value) onlyPayloadSize(2 * 32) returns (bool) {
    |    require(balances[_from] >= _value && allowed[_from][_to] >= _value);
  > |    allowed[_from][_to] = allowed[_from][_to].sub(_value);
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  at /home/jiaming/mavs_srcs/contract@0xea3a23c53dbb15164bca835be54f6bb913333b79.sol(106)

[33mWarning[0m for UnrestrictedWrite in contract 'EmeraldToken':
    |    require(balances[_from] >= _value && allowed[_from][_to] >= _value);
    |    allowed[_from][_to] = allowed[_from][_to].sub(_value);
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xea3a23c53dbb15164bca835be54f6bb913333b79.sol(107)

[33mWarning[0m for UnrestrictedWrite in contract 'EmeraldToken':
    |    allowed[_from][_to] = allowed[_from][_to].sub(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xea3a23c53dbb15164bca835be54f6bb913333b79.sol(108)

[33mWarning[0m for UnrestrictedWrite in contract 'EmeraldToken':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xea3a23c53dbb15164bca835be54f6bb913333b79.sol(134)

[33mWarning[0m for UnrestrictedWrite in contract 'EmeraldToken':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xea3a23c53dbb15164bca835be54f6bb913333b79.sol(175)

[33mWarning[0m for UnrestrictedWrite in contract 'EmeraldToken':
    |  */
    |  function setProducer(address _addr, bool _status) onlyOwner {
  > |    producers[_addr] = _status;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xea3a23c53dbb15164bca835be54f6bb913333b79.sol(229)

[33mWarning[0m for UnrestrictedWrite in contract 'EmeraldToken':
    |  */
    |  function produceEmeralds(address _receiver, uint _amount) onlyProducer inProduction {
  > |    balances[_receiver] = balances[_receiver].add(_amount);
    |    totalSupply = totalSupply.add(_amount);
    |    Transfer(0, _receiver, _amount);
  at /home/jiaming/mavs_srcs/contract@0xea3a23c53dbb15164bca835be54f6bb913333b79.sol(236)

[33mWarning[0m for UnrestrictedWrite in contract 'EmeraldToken':
    |  function produceEmeralds(address _receiver, uint _amount) onlyProducer inProduction {
    |    balances[_receiver] = balances[_receiver].add(_amount);
  > |    totalSupply = totalSupply.add(_amount);
    |    Transfer(0, _receiver, _amount);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xea3a23c53dbb15164bca835be54f6bb913333b79.sol(237)

[33mWarning[0m for UnrestrictedWrite in contract 'EmeraldToken':
    |   */
    |  function releaseTokenTransfer() onlyOwner {
  > |    released = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xea3a23c53dbb15164bca835be54f6bb913333b79.sol(245)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner = msg.sender;
    |
  at /home/jiaming/mavs_srcs/contract@0xea3a23c53dbb15164bca835be54f6bb913333b79.sol(158)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner = msg.sender;
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xea3a23c53dbb15164bca835be54f6bb913333b79.sol(159)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));
    |    owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0xea3a23c53dbb15164bca835be54f6bb913333b79.sol(173)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xea3a23c53dbb15164bca835be54f6bb913333b79.sol(175)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xea3a23c53dbb15164bca835be54f6bb913333b79.sol(10)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20 {
    |
    |  using SafeMath for uint;
  at /home/jiaming/mavs_srcs/contract@0xea3a23c53dbb15164bca835be54f6bb913333b79.sol(59)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  function transfer(address _to, uint _value) onlyPayloadSize(2 * 32) returns (bool) {
    |    require(balances[msg.sender] >= _value);
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xea3a23c53dbb15164bca835be54f6bb913333b79.sol(92)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xea3a23c53dbb15164bca835be54f6bb913333b79.sol(134)


