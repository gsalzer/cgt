Processing contract: /home/jiaming/mavs_srcs/contract@0xb0a4003e2c17813ceef229a2d4b635c92c2a73da.sol:ALTnextCoin
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb0a4003e2c17813ceef229a2d4b635c92c2a73da.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb0a4003e2c17813ceef229a2d4b635c92c2a73da.sol:BurnableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb0a4003e2c17813ceef229a2d4b635c92c2a73da.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xb0a4003e2c17813ceef229a2d4b635c92c2a73da.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xb0a4003e2c17813ceef229a2d4b635c92c2a73da.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb0a4003e2c17813ceef229a2d4b635c92c2a73da.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'ALTnextCoin':
    |
    |
  > |contract ALTnextCoin is StandardToken, BurnableToken {
    |
    |  string public constant name = "ALTnext Coin"; 
  at /home/jiaming/mavs_srcs/contract@0xb0a4003e2c17813ceef229a2d4b635c92c2a73da.sol(138)

[33mWarning[0m for UnrestrictedWrite in contract 'ALTnextCoin':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xb0a4003e2c17813ceef229a2d4b635c92c2a73da.sol(51)

[33mWarning[0m for UnrestrictedWrite in contract 'ALTnextCoin':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xb0a4003e2c17813ceef229a2d4b635c92c2a73da.sol(85)

[33mWarning[0m for UnrestrictedWrite in contract 'ALTnextCoin':
    |  function approve(address _spender, uint256 _value) public returns (bool) {
    |    require(_value > 0);
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xb0a4003e2c17813ceef229a2d4b635c92c2a73da.sol(92)

[33mWarning[0m for UnrestrictedWrite in contract 'ALTnextCoin':
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
    |    require(_addedValue > 0);
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xb0a4003e2c17813ceef229a2d4b635c92c2a73da.sol(103)

[33mWarning[0m for UnrestrictedWrite in contract 'ALTnextCoin':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xb0a4003e2c17813ceef229a2d4b635c92c2a73da.sol(112)

[33mWarning[0m for UnrestrictedWrite in contract 'ALTnextCoin':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xb0a4003e2c17813ceef229a2d4b635c92c2a73da.sol(114)

[33mWarning[0m for UnrestrictedWrite in contract 'ALTnextCoin':
    |
    |    address burner = msg.sender;
  > |    balances[burner] = balances[burner].sub(_value);
    |    totalSupply = totalSupply.sub(_value);
    |    Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0xb0a4003e2c17813ceef229a2d4b635c92c2a73da.sol(131)

[33mWarning[0m for LockedEther in contract 'BasicToken':
    |
    |
  > |contract BasicToken is ERC20Basic {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xb0a4003e2c17813ceef229a2d4b635c92c2a73da.sol(41)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xb0a4003e2c17813ceef229a2d4b635c92c2a73da.sol(51)

[33mWarning[0m for LockedEther in contract 'BurnableToken':
    |}
    |
  > |contract BurnableToken is BasicToken {
    |
    |  event Burn(address indexed burner, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0xb0a4003e2c17813ceef229a2d4b635c92c2a73da.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xb0a4003e2c17813ceef229a2d4b635c92c2a73da.sol(51)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |    address burner = msg.sender;
  > |    balances[burner] = balances[burner].sub(_value);
    |    totalSupply = totalSupply.sub(_value);
    |    Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0xb0a4003e2c17813ceef229a2d4b635c92c2a73da.sol(131)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |}
    |
  > |library SafeMath {
    |
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
  at /home/jiaming/mavs_srcs/contract@0xb0a4003e2c17813ceef229a2d4b635c92c2a73da.sol(12)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |
    |
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0xb0a4003e2c17813ceef229a2d4b635c92c2a73da.sol(72)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xb0a4003e2c17813ceef229a2d4b635c92c2a73da.sol(51)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xb0a4003e2c17813ceef229a2d4b635c92c2a73da.sol(85)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  function approve(address _spender, uint256 _value) public returns (bool) {
    |    require(_value > 0);
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xb0a4003e2c17813ceef229a2d4b635c92c2a73da.sol(92)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
    |    require(_addedValue > 0);
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xb0a4003e2c17813ceef229a2d4b635c92c2a73da.sol(103)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xb0a4003e2c17813ceef229a2d4b635c92c2a73da.sol(112)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xb0a4003e2c17813ceef229a2d4b635c92c2a73da.sol(114)


