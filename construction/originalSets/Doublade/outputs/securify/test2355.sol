Processing contract: /home/jiaming/mavs_srcs/contract@0x99ac77522b6866a3770971bbf7f2c06b8e00fe55.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x99ac77522b6866a3770971bbf7f2c06b8e00fe55.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x99ac77522b6866a3770971bbf7f2c06b8e00fe55.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x99ac77522b6866a3770971bbf7f2c06b8e00fe55.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x99ac77522b6866a3770971bbf7f2c06b8e00fe55.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x99ac77522b6866a3770971bbf7f2c06b8e00fe55.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x99ac77522b6866a3770971bbf7f2c06b8e00fe55.sol:TTC
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    |
    |
  > |contract BasicToken is ERC20Basic {
    |  
    |  using SafeMath for uint;
  at /home/jiaming/mavs_srcs/contract@0x99ac77522b6866a3770971bbf7f2c06b8e00fe55.sol(55)

[31mViolation[0m for UnrestrictedWrite in contract 'BasicToken':
    |  function transfer(address _to, uint _value) public{
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x99ac77522b6866a3770971bbf7f2c06b8e00fe55.sol(63)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |  function transfer(address _to, uint _value) public{
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x99ac77522b6866a3770971bbf7f2c06b8e00fe55.sol(62)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x99ac77522b6866a3770971bbf7f2c06b8e00fe55.sol(94)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |    address public owner;
    |
    |    function Ownable() public{
  at /home/jiaming/mavs_srcs/contract@0x99ac77522b6866a3770971bbf7f2c06b8e00fe55.sol(95)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |        _;
    |    }
  > |    function transferOwnership(address newOwner) onlyOwner public{
    |        if (newOwner != address(0)) {
    |            owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x99ac77522b6866a3770971bbf7f2c06b8e00fe55.sol(105)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    function transferOwnership(address newOwner) onlyOwner public{
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x99ac77522b6866a3770971bbf7f2c06b8e00fe55.sol(107)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |
    |
  > |library SafeMath {
    |  function mul(uint a, uint b) internal pure  returns (uint) {
    |    uint c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x99ac77522b6866a3770971bbf7f2c06b8e00fe55.sol(4)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |
    |
  > |contract StandardToken is BasicToken, ERC20 {
    |  mapping (address => mapping (address => uint)) allowed;
    |
  at /home/jiaming/mavs_srcs/contract@0x99ac77522b6866a3770971bbf7f2c06b8e00fe55.sol(73)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |  function transfer(address _to, uint _value) public{
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x99ac77522b6866a3770971bbf7f2c06b8e00fe55.sol(63)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |  function transferFrom(address _from, address _to, uint _value) public {
  > |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x99ac77522b6866a3770971bbf7f2c06b8e00fe55.sol(77)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |  function transferFrom(address _from, address _to, uint _value) public {
    |    balances[_to] = balances[_to].add(_value);
  > |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x99ac77522b6866a3770971bbf7f2c06b8e00fe55.sol(78)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |  function transfer(address _to, uint _value) public{
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x99ac77522b6866a3770971bbf7f2c06b8e00fe55.sol(62)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x99ac77522b6866a3770971bbf7f2c06b8e00fe55.sol(79)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  function approve(address _spender, uint _value) public{
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0)) ;
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x99ac77522b6866a3770971bbf7f2c06b8e00fe55.sol(85)

[33mWarning[0m for LockedEther in contract 'TTC':
    | *  TTC token contract. Implements
    | */
  > |contract TTC is StandardToken, Ownable {
    |  string public constant name = "TTC";
    |  string public constant symbol = "TTC";
  at /home/jiaming/mavs_srcs/contract@0x99ac77522b6866a3770971bbf7f2c06b8e00fe55.sol(116)

[33mWarning[0m for UnrestrictedWrite in contract 'TTC':
    |
    |  function transfer(address _to, uint _value) public{
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x99ac77522b6866a3770971bbf7f2c06b8e00fe55.sol(62)

[33mWarning[0m for UnrestrictedWrite in contract 'TTC':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x99ac77522b6866a3770971bbf7f2c06b8e00fe55.sol(79)

[33mWarning[0m for UnrestrictedWrite in contract 'TTC':
    |  function approve(address _spender, uint _value) public{
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0)) ;
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x99ac77522b6866a3770971bbf7f2c06b8e00fe55.sol(85)

[33mWarning[0m for UnrestrictedWrite in contract 'TTC':
    |   */
    |  function burn(uint _value) onlyOwner public returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    totalSupply = totalSupply.sub(_value);
    |    Transfer(msg.sender, 0x0, _value);
  at /home/jiaming/mavs_srcs/contract@0x99ac77522b6866a3770971bbf7f2c06b8e00fe55.sol(132)

[33mWarning[0m for UnrestrictedWrite in contract 'TTC':
    |  function transfer(address _to, uint _value) public{
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x99ac77522b6866a3770971bbf7f2c06b8e00fe55.sol(63)

[33mWarning[0m for UnrestrictedWrite in contract 'TTC':
    |
    |  function transferFrom(address _from, address _to, uint _value) public {
  > |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x99ac77522b6866a3770971bbf7f2c06b8e00fe55.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'TTC':
    |  function transferFrom(address _from, address _to, uint _value) public {
    |    balances[_to] = balances[_to].add(_value);
  > |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x99ac77522b6866a3770971bbf7f2c06b8e00fe55.sol(78)

[33mWarning[0m for UnrestrictedWrite in contract 'TTC':
    |    function transferOwnership(address newOwner) onlyOwner public{
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x99ac77522b6866a3770971bbf7f2c06b8e00fe55.sol(107)

[33mWarning[0m for UnrestrictedWrite in contract 'TTC':
    |  function burn(uint _value) onlyOwner public returns (bool) {
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    totalSupply = totalSupply.sub(_value);
    |    Transfer(msg.sender, 0x0, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x99ac77522b6866a3770971bbf7f2c06b8e00fe55.sol(133)


