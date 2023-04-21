Processing contract: /home/jiaming/mavs_srcs/contract@0x2c8d7634d0daf8db5c55b3ab0821df4a75b0913f.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2c8d7634d0daf8db5c55b3ab0821df4a75b0913f.sol:BurnableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2c8d7634d0daf8db5c55b3ab0821df4a75b0913f.sol:Daereum
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2c8d7634d0daf8db5c55b3ab0821df4a75b0913f.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x2c8d7634d0daf8db5c55b3ab0821df4a75b0913f.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x2c8d7634d0daf8db5c55b3ab0821df4a75b0913f.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2c8d7634d0daf8db5c55b3ab0821df4a75b0913f.sol:StandardToken
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
  at /home/jiaming/mavs_srcs/contract@0x2c8d7634d0daf8db5c55b3ab0821df4a75b0913f.sol(38)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x2c8d7634d0daf8db5c55b3ab0821df4a75b0913f.sol(48)

[33mWarning[0m for LockedEther in contract 'BurnableToken':
    |}
    |
  > |contract BurnableToken is BasicToken {
    |
    |  event Burn(address indexed burner, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0x2c8d7634d0daf8db5c55b3ab0821df4a75b0913f.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x2c8d7634d0daf8db5c55b3ab0821df4a75b0913f.sol(48)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |    address burner = msg.sender;
  > |    balances[burner] = balances[burner].sub(_value);
    |    totalSupply = totalSupply.sub(_value);
    |    Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0x2c8d7634d0daf8db5c55b3ab0821df4a75b0913f.sol(126)

[33mWarning[0m for LockedEther in contract 'Daereum':
    |}
    |
  > |contract Daereum is StandardToken, BurnableToken {
    |
    |  string public constant name = "Daereum"; 
  at /home/jiaming/mavs_srcs/contract@0x2c8d7634d0daf8db5c55b3ab0821df4a75b0913f.sol(132)

[33mWarning[0m for UnrestrictedWrite in contract 'Daereum':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x2c8d7634d0daf8db5c55b3ab0821df4a75b0913f.sol(48)

[33mWarning[0m for UnrestrictedWrite in contract 'Daereum':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2c8d7634d0daf8db5c55b3ab0821df4a75b0913f.sol(80)

[33mWarning[0m for UnrestrictedWrite in contract 'Daereum':
    |  function approve(address _spender, uint256 _value) public returns (bool) {
    |    require(_value > 0);
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2c8d7634d0daf8db5c55b3ab0821df4a75b0913f.sol(87)

[33mWarning[0m for UnrestrictedWrite in contract 'Daereum':
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
    |    require(_addedValue > 0);
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2c8d7634d0daf8db5c55b3ab0821df4a75b0913f.sol(98)

[33mWarning[0m for UnrestrictedWrite in contract 'Daereum':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x2c8d7634d0daf8db5c55b3ab0821df4a75b0913f.sol(107)

[33mWarning[0m for UnrestrictedWrite in contract 'Daereum':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x2c8d7634d0daf8db5c55b3ab0821df4a75b0913f.sol(109)

[33mWarning[0m for UnrestrictedWrite in contract 'Daereum':
    |
    |    address burner = msg.sender;
  > |    balances[burner] = balances[burner].sub(_value);
    |    totalSupply = totalSupply.sub(_value);
    |    Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0x2c8d7634d0daf8db5c55b3ab0821df4a75b0913f.sol(126)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |}
    |
  > |library SafeMath {
    |
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
  at /home/jiaming/mavs_srcs/contract@0x2c8d7634d0daf8db5c55b3ab0821df4a75b0913f.sol(10)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0x2c8d7634d0daf8db5c55b3ab0821df4a75b0913f.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x2c8d7634d0daf8db5c55b3ab0821df4a75b0913f.sol(48)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2c8d7634d0daf8db5c55b3ab0821df4a75b0913f.sol(80)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  function approve(address _spender, uint256 _value) public returns (bool) {
    |    require(_value > 0);
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2c8d7634d0daf8db5c55b3ab0821df4a75b0913f.sol(87)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
    |    require(_addedValue > 0);
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2c8d7634d0daf8db5c55b3ab0821df4a75b0913f.sol(98)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x2c8d7634d0daf8db5c55b3ab0821df4a75b0913f.sol(107)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x2c8d7634d0daf8db5c55b3ab0821df4a75b0913f.sol(109)


