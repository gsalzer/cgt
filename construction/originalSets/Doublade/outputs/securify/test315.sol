Processing contract: /home/jiaming/mavs_srcs/contract@0x1516edb45519c2ba46e47159601ffcee90b1b4f3.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1516edb45519c2ba46e47159601ffcee90b1b4f3.sol:BurnableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1516edb45519c2ba46e47159601ffcee90b1b4f3.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x1516edb45519c2ba46e47159601ffcee90b1b4f3.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x1516edb45519c2ba46e47159601ffcee90b1b4f3.sol:Kether
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1516edb45519c2ba46e47159601ffcee90b1b4f3.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1516edb45519c2ba46e47159601ffcee90b1b4f3.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    |
    |
  > |contract BasicToken is ERC20Basic {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x1516edb45519c2ba46e47159601ffcee90b1b4f3.sol(39)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x1516edb45519c2ba46e47159601ffcee90b1b4f3.sol(49)

[33mWarning[0m for LockedEther in contract 'BurnableToken':
    |}
    |
  > |contract BurnableToken is BasicToken {
    |
    |  event Burn(address indexed burner, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0x1516edb45519c2ba46e47159601ffcee90b1b4f3.sol(120)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x1516edb45519c2ba46e47159601ffcee90b1b4f3.sol(49)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |    address burner = msg.sender;
  > |    balances[burner] = balances[burner].sub(_value);
    |    totalSupply = totalSupply.sub(_value);
    |    Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0x1516edb45519c2ba46e47159601ffcee90b1b4f3.sol(129)

[33mWarning[0m for LockedEther in contract 'Kether':
    |
    |
  > |contract Kether is StandardToken, BurnableToken {
    |
    |  string public constant name = "Kether"; 
  at /home/jiaming/mavs_srcs/contract@0x1516edb45519c2ba46e47159601ffcee90b1b4f3.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'Kether':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x1516edb45519c2ba46e47159601ffcee90b1b4f3.sol(49)

[33mWarning[0m for UnrestrictedWrite in contract 'Kether':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x1516edb45519c2ba46e47159601ffcee90b1b4f3.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'Kether':
    |  function approve(address _spender, uint256 _value) public returns (bool) {
    |    require(_value > 0);
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x1516edb45519c2ba46e47159601ffcee90b1b4f3.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'Kether':
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
    |    require(_addedValue > 0);
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x1516edb45519c2ba46e47159601ffcee90b1b4f3.sol(101)

[33mWarning[0m for UnrestrictedWrite in contract 'Kether':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x1516edb45519c2ba46e47159601ffcee90b1b4f3.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'Kether':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x1516edb45519c2ba46e47159601ffcee90b1b4f3.sol(112)

[33mWarning[0m for UnrestrictedWrite in contract 'Kether':
    |
    |    address burner = msg.sender;
  > |    balances[burner] = balances[burner].sub(_value);
    |    totalSupply = totalSupply.sub(_value);
    |    Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0x1516edb45519c2ba46e47159601ffcee90b1b4f3.sol(129)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |}
    |
  > |library SafeMath {
    |
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
  at /home/jiaming/mavs_srcs/contract@0x1516edb45519c2ba46e47159601ffcee90b1b4f3.sol(10)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |
    |
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0x1516edb45519c2ba46e47159601ffcee90b1b4f3.sol(70)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x1516edb45519c2ba46e47159601ffcee90b1b4f3.sol(49)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x1516edb45519c2ba46e47159601ffcee90b1b4f3.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  function approve(address _spender, uint256 _value) public returns (bool) {
    |    require(_value > 0);
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x1516edb45519c2ba46e47159601ffcee90b1b4f3.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
    |    require(_addedValue > 0);
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x1516edb45519c2ba46e47159601ffcee90b1b4f3.sol(101)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x1516edb45519c2ba46e47159601ffcee90b1b4f3.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x1516edb45519c2ba46e47159601ffcee90b1b4f3.sol(112)


