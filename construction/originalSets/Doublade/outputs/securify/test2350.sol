Processing contract: /home/jiaming/mavs_srcs/contract@0x9923e475ed51f1ef07de65dbec3d29c615c528df.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9923e475ed51f1ef07de65dbec3d29c615c528df.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x9923e475ed51f1ef07de65dbec3d29c615c528df.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x9923e475ed51f1ef07de65dbec3d29c615c528df.sol:GoodPriceToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9923e475ed51f1ef07de65dbec3d29c615c528df.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9923e475ed51f1ef07de65dbec3d29c615c528df.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9923e475ed51f1ef07de65dbec3d29c615c528df.sol:StandardToken
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
  at /home/jiaming/mavs_srcs/contract@0x9923e475ed51f1ef07de65dbec3d29c615c528df.sol(47)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |    require(_value <= balances[msg.sender]); 
    |    // SafeMath.sub will throw if there is not enough balance. 
  > |    balances[msg.sender] = balances[msg.sender].sub(_value); 
    |    balances[_to] = balances[_to].add(_value); 
    |    emit Transfer(msg.sender, _to, _value); 
  at /home/jiaming/mavs_srcs/contract@0x9923e475ed51f1ef07de65dbec3d29c615c528df.sol(61)

[31mViolation[0m for LockedEther in contract 'GoodPriceToken':
    |
    |
  > |contract GoodPriceToken is StandardToken, Ownable {
    |    
    |    string public constant name = "GoodPrice";
  at /home/jiaming/mavs_srcs/contract@0x9923e475ed51f1ef07de65dbec3d29c615c528df.sol(188)

[33mWarning[0m for UnrestrictedWrite in contract 'GoodPriceToken':
    |    require(_value <= balances[msg.sender]); 
    |    // SafeMath.sub will throw if there is not enough balance. 
  > |    balances[msg.sender] = balances[msg.sender].sub(_value); 
    |    balances[_to] = balances[_to].add(_value); 
    |    emit Transfer(msg.sender, _to, _value); 
  at /home/jiaming/mavs_srcs/contract@0x9923e475ed51f1ef07de65dbec3d29c615c528df.sol(61)

[33mWarning[0m for UnrestrictedWrite in contract 'GoodPriceToken':
    |    // SafeMath.sub will throw if there is not enough balance. 
    |    balances[msg.sender] = balances[msg.sender].sub(_value); 
  > |    balances[_to] = balances[_to].add(_value); 
    |    emit Transfer(msg.sender, _to, _value); 
    |    
  at /home/jiaming/mavs_srcs/contract@0x9923e475ed51f1ef07de65dbec3d29c615c528df.sol(62)

[33mWarning[0m for UnrestrictedWrite in contract 'GoodPriceToken':
    |    require(_value <= balances[_from]);
    |    require(_value <= allowed[_from][msg.sender]); 
  > |    balances[_from] = balances[_from].sub(_value); 
    |    balances[_to] = balances[_to].add(_value); 
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value); 
  at /home/jiaming/mavs_srcs/contract@0x9923e475ed51f1ef07de65dbec3d29c615c528df.sol(99)

[33mWarning[0m for UnrestrictedWrite in contract 'GoodPriceToken':
    |    require(_value <= allowed[_from][msg.sender]); 
    |    balances[_from] = balances[_from].sub(_value); 
  > |    balances[_to] = balances[_to].add(_value); 
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value); 
    |    emit Transfer(_from, _to, _value); 
  at /home/jiaming/mavs_srcs/contract@0x9923e475ed51f1ef07de65dbec3d29c615c528df.sol(100)

[33mWarning[0m for UnrestrictedWrite in contract 'GoodPriceToken':
    |    balances[_from] = balances[_from].sub(_value); 
    |    balances[_to] = balances[_to].add(_value); 
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value); 
    |    emit Transfer(_from, _to, _value); 
    |    
  at /home/jiaming/mavs_srcs/contract@0x9923e475ed51f1ef07de65dbec3d29c615c528df.sol(101)

[33mWarning[0m for UnrestrictedWrite in contract 'GoodPriceToken':
    |  */ 
    |  function approve(address _spender, uint256 _value) public returns (bool) { 
  > |    allowed[msg.sender][_spender] = _value; 
    |    emit Approval(msg.sender, _spender, _value); 
    |    return true; 
  at /home/jiaming/mavs_srcs/contract@0x9923e475ed51f1ef07de65dbec3d29c615c528df.sol(118)

[33mWarning[0m for UnrestrictedWrite in contract 'GoodPriceToken':
    |  */ 
    |  function increaseApproval (address _spender, uint _addedValue) public returns (bool success) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]); 
    |    return true; 
  at /home/jiaming/mavs_srcs/contract@0x9923e475ed51f1ef07de65dbec3d29c615c528df.sol(139)

[33mWarning[0m for UnrestrictedWrite in contract 'GoodPriceToken':
    |    uint oldValue = allowed[msg.sender][_spender]; 
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x9923e475ed51f1ef07de65dbec3d29c615c528df.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'GoodPriceToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x9923e475ed51f1ef07de65dbec3d29c615c528df.sol(149)

[33mWarning[0m for UnrestrictedWrite in contract 'GoodPriceToken':
    |        require(balances[address(this)] >= tokens);
    |        
  > |        balances[addr] = balances[addr].add(tokens);
    |        balances[address(this)] = balances[address(this)].sub(tokens);
    |        emit Transfer(address(this), addr, tokens);
  at /home/jiaming/mavs_srcs/contract@0x9923e475ed51f1ef07de65dbec3d29c615c528df.sol(210)

[33mWarning[0m for UnrestrictedWrite in contract 'GoodPriceToken':
    |        
    |        balances[addr] = balances[addr].add(tokens);
  > |        balances[address(this)] = balances[address(this)].sub(tokens);
    |        emit Transfer(address(this), addr, tokens);
    |    }    
  at /home/jiaming/mavs_srcs/contract@0x9923e475ed51f1ef07de65dbec3d29c615c528df.sol(211)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x9923e475ed51f1ef07de65dbec3d29c615c528df.sol(166)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x9923e475ed51f1ef07de65dbec3d29c615c528df.sol(167)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function sub(uint256 a, uint256 b) internal pure returns (uint256) {
    |    assert(b <= a); 
  at /home/jiaming/mavs_srcs/contract@0x9923e475ed51f1ef07de65dbec3d29c615c528df.sol(30)

[31mViolation[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol 
    | */ 
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0x9923e475ed51f1ef07de65dbec3d29c615c528df.sol(85)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require(_value <= balances[msg.sender]); 
    |    // SafeMath.sub will throw if there is not enough balance. 
  > |    balances[msg.sender] = balances[msg.sender].sub(_value); 
    |    balances[_to] = balances[_to].add(_value); 
    |    emit Transfer(msg.sender, _to, _value); 
  at /home/jiaming/mavs_srcs/contract@0x9923e475ed51f1ef07de65dbec3d29c615c528df.sol(61)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value); 
    |    balances[_to] = balances[_to].add(_value); 
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value); 
    |    emit Transfer(_from, _to, _value); 
    |    
  at /home/jiaming/mavs_srcs/contract@0x9923e475ed51f1ef07de65dbec3d29c615c528df.sol(101)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  */ 
    |  function approve(address _spender, uint256 _value) public returns (bool) { 
  > |    allowed[msg.sender][_spender] = _value; 
    |    emit Approval(msg.sender, _spender, _value); 
    |    return true; 
  at /home/jiaming/mavs_srcs/contract@0x9923e475ed51f1ef07de65dbec3d29c615c528df.sol(118)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  */ 
    |  function increaseApproval (address _spender, uint _addedValue) public returns (bool success) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]); 
    |    return true; 
  at /home/jiaming/mavs_srcs/contract@0x9923e475ed51f1ef07de65dbec3d29c615c528df.sol(139)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender]; 
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x9923e475ed51f1ef07de65dbec3d29c615c528df.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x9923e475ed51f1ef07de65dbec3d29c615c528df.sol(149)


