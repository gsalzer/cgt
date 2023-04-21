Processing contract: /home/jiaming/mavs_srcs/contract@0x0f0c3fedb6226cd5a18826ce23bec92d18336a98.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0f0c3fedb6226cd5a18826ce23bec92d18336a98.sol:DetailedERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x0f0c3fedb6226cd5a18826ce23bec92d18336a98.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x0f0c3fedb6226cd5a18826ce23bec92d18336a98.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x0f0c3fedb6226cd5a18826ce23bec92d18336a98.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0f0c3fedb6226cd5a18826ce23bec92d18336a98.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0f0c3fedb6226cd5a18826ce23bec92d18336a98.sol:URToken
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
  at /home/jiaming/mavs_srcs/contract@0x0f0c3fedb6226cd5a18826ce23bec92d18336a98.sol(71)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x0f0c3fedb6226cd5a18826ce23bec92d18336a98.sol(94)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x0f0c3fedb6226cd5a18826ce23bec92d18336a98.sol(7)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0x0f0c3fedb6226cd5a18826ce23bec92d18336a98.sol(139)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x0f0c3fedb6226cd5a18826ce23bec92d18336a98.sol(94)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0f0c3fedb6226cd5a18826ce23bec92d18336a98.sol(164)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0f0c3fedb6226cd5a18826ce23bec92d18336a98.sol(180)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    returns (bool)
    |  {
  > |    allowed[msg.sender][_spender] = (
    |      allowed[msg.sender][_spender].add(_addedValue));
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x0f0c3fedb6226cd5a18826ce23bec92d18336a98.sol(219)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x0f0c3fedb6226cd5a18826ce23bec92d18336a98.sol(244)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x0f0c3fedb6226cd5a18826ce23bec92d18336a98.sol(246)

[33mWarning[0m for LockedEther in contract 'URToken':
    |
    |
  > |contract URToken is StandardToken, DetailedERC20 {
    |  uint256 public constant INITIAL_SUPPLY = 50000000000000000000000000;
    |
  at /home/jiaming/mavs_srcs/contract@0x0f0c3fedb6226cd5a18826ce23bec92d18336a98.sol(262)

[33mWarning[0m for UnrestrictedWrite in contract 'URToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x0f0c3fedb6226cd5a18826ce23bec92d18336a98.sol(94)

[33mWarning[0m for UnrestrictedWrite in contract 'URToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0f0c3fedb6226cd5a18826ce23bec92d18336a98.sol(164)

[33mWarning[0m for UnrestrictedWrite in contract 'URToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0f0c3fedb6226cd5a18826ce23bec92d18336a98.sol(180)

[33mWarning[0m for UnrestrictedWrite in contract 'URToken':
    |    returns (bool)
    |  {
  > |    allowed[msg.sender][_spender] = (
    |      allowed[msg.sender][_spender].add(_addedValue));
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x0f0c3fedb6226cd5a18826ce23bec92d18336a98.sol(219)

[33mWarning[0m for UnrestrictedWrite in contract 'URToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x0f0c3fedb6226cd5a18826ce23bec92d18336a98.sol(244)

[33mWarning[0m for UnrestrictedWrite in contract 'URToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x0f0c3fedb6226cd5a18826ce23bec92d18336a98.sol(246)


