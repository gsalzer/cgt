Processing contract: /home/jiaming/mavs_srcs/contract@0x0339f0a4ebd50da09aa623e1d3e341c5b66851cf.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0339f0a4ebd50da09aa623e1d3e341c5b66851cf.sol:DARFtoken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0339f0a4ebd50da09aa623e1d3e341c5b66851cf.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x0339f0a4ebd50da09aa623e1d3e341c5b66851cf.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x0339f0a4ebd50da09aa623e1d3e341c5b66851cf.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0339f0a4ebd50da09aa623e1d3e341c5b66851cf.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0339f0a4ebd50da09aa623e1d3e341c5b66851cf.sol:StandardToken
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
  at /home/jiaming/mavs_srcs/contract@0x0339f0a4ebd50da09aa623e1d3e341c5b66851cf.sol(70)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |  */
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x0339f0a4ebd50da09aa623e1d3e341c5b66851cf.sol(81)

[33mWarning[0m for LockedEther in contract 'DARFtoken':
    |}
    |
  > |contract DARFtoken is StandardToken, Ownable {
    |  string public constant name = "DARFtoken";
    |  string public constant symbol = "DAR";
  at /home/jiaming/mavs_srcs/contract@0x0339f0a4ebd50da09aa623e1d3e341c5b66851cf.sol(159)

[33mWarning[0m for UnrestrictedWrite in contract 'DARFtoken':
    |  */
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x0339f0a4ebd50da09aa623e1d3e341c5b66851cf.sol(81)

[33mWarning[0m for UnrestrictedWrite in contract 'DARFtoken':
    |  function transfer(address _to, uint256 _value) returns (bool) {
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0339f0a4ebd50da09aa623e1d3e341c5b66851cf.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'DARFtoken':
    |    // require (_value <= _allowance);
    |
  > |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x0339f0a4ebd50da09aa623e1d3e341c5b66851cf.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'DARFtoken':
    |
    |    balances[_to] = balances[_to].add(_value);
  > |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x0339f0a4ebd50da09aa623e1d3e341c5b66851cf.sol(123)

[33mWarning[0m for UnrestrictedWrite in contract 'DARFtoken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0339f0a4ebd50da09aa623e1d3e341c5b66851cf.sol(124)

[33mWarning[0m for UnrestrictedWrite in contract 'DARFtoken':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0339f0a4ebd50da09aa623e1d3e341c5b66851cf.sol(142)

[33mWarning[0m for UnrestrictedWrite in contract 'DARFtoken':
    |   */
    |  function burn(uint _value) onlyOwner returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    totalSupply = totalSupply.sub(_value);
    |    Transfer(msg.sender, 0x0, _value);
  at /home/jiaming/mavs_srcs/contract@0x0339f0a4ebd50da09aa623e1d3e341c5b66851cf.sol(175)

[33mWarning[0m for UnrestrictedWrite in contract 'DARFtoken':
    |  function burn(uint _value) onlyOwner returns (bool) {
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    totalSupply = totalSupply.sub(_value);
    |    Transfer(msg.sender, 0x0, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0339f0a4ebd50da09aa623e1d3e341c5b66851cf.sol(176)

[33mWarning[0m for UnrestrictedWrite in contract 'DARFtoken':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0339f0a4ebd50da09aa623e1d3e341c5b66851cf.sol(64)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x0339f0a4ebd50da09aa623e1d3e341c5b66851cf.sol(36)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x0339f0a4ebd50da09aa623e1d3e341c5b66851cf.sol(37)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
    |      owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x0339f0a4ebd50da09aa623e1d3e341c5b66851cf.sol(62)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0339f0a4ebd50da09aa623e1d3e341c5b66851cf.sol(64)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |}
    |
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x0339f0a4ebd50da09aa623e1d3e341c5b66851cf.sol(10)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) allowed;
  at /home/jiaming/mavs_srcs/contract@0x0339f0a4ebd50da09aa623e1d3e341c5b66851cf.sol(105)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  */
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x0339f0a4ebd50da09aa623e1d3e341c5b66851cf.sol(81)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0339f0a4ebd50da09aa623e1d3e341c5b66851cf.sol(124)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0339f0a4ebd50da09aa623e1d3e341c5b66851cf.sol(142)


