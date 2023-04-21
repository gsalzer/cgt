Processing contract: /home/jiaming/mavs_srcs/contract@0x3f1b9c5862ce56844f6dbb631d3908803e2e8d2a.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3f1b9c5862ce56844f6dbb631d3908803e2e8d2a.sol:BurnableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3f1b9c5862ce56844f6dbb631d3908803e2e8d2a.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x3f1b9c5862ce56844f6dbb631d3908803e2e8d2a.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x3f1b9c5862ce56844f6dbb631d3908803e2e8d2a.sol:LCAP
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3f1b9c5862ce56844f6dbb631d3908803e2e8d2a.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3f1b9c5862ce56844f6dbb631d3908803e2e8d2a.sol:StandardBurnableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3f1b9c5862ce56844f6dbb631d3908803e2e8d2a.sol:StandardToken
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
  at /home/jiaming/mavs_srcs/contract@0x3f1b9c5862ce56844f6dbb631d3908803e2e8d2a.sol(71)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x3f1b9c5862ce56844f6dbb631d3908803e2e8d2a.sol(94)

[33mWarning[0m for LockedEther in contract 'BurnableToken':
    | * @dev Token that can be irreversibly burned (destroyed).
    | */
  > |contract BurnableToken is BasicToken {
    |
    |  event Burn(address indexed burner, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0x3f1b9c5862ce56844f6dbb631d3908803e2e8d2a.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x3f1b9c5862ce56844f6dbb631d3908803e2e8d2a.sol(94)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x3f1b9c5862ce56844f6dbb631d3908803e2e8d2a.sol(95)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    // sender's balance is greater than the totalSupply, which *should* be an assertion failure
    |
  > |    balances[_who] = balances[_who].sub(_value);
    |    totalSupply_ = totalSupply_.sub(_value);
    |    emit Burn(_who, _value);
  at /home/jiaming/mavs_srcs/contract@0x3f1b9c5862ce56844f6dbb631d3908803e2e8d2a.sol(134)

[33mWarning[0m for LockedEther in contract 'LCAP':
    |
    |
  > |contract LCAP is StandardBurnableToken {
    |
    |  string public constant name = "LCAP"; // solium-disable-line uppercase
  at /home/jiaming/mavs_srcs/contract@0x3f1b9c5862ce56844f6dbb631d3908803e2e8d2a.sol(274)

[33mWarning[0m for UnrestrictedWrite in contract 'LCAP':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x3f1b9c5862ce56844f6dbb631d3908803e2e8d2a.sol(94)

[33mWarning[0m for UnrestrictedWrite in contract 'LCAP':
    |
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x3f1b9c5862ce56844f6dbb631d3908803e2e8d2a.sol(95)

[33mWarning[0m for UnrestrictedWrite in contract 'LCAP':
    |    // sender's balance is greater than the totalSupply, which *should* be an assertion failure
    |
  > |    balances[_who] = balances[_who].sub(_value);
    |    totalSupply_ = totalSupply_.sub(_value);
    |    emit Burn(_who, _value);
  at /home/jiaming/mavs_srcs/contract@0x3f1b9c5862ce56844f6dbb631d3908803e2e8d2a.sol(134)

[33mWarning[0m for UnrestrictedWrite in contract 'LCAP':
    |
    |    balances[_who] = balances[_who].sub(_value);
  > |    totalSupply_ = totalSupply_.sub(_value);
    |    emit Burn(_who, _value);
    |    emit Transfer(_who, address(0), _value);
  at /home/jiaming/mavs_srcs/contract@0x3f1b9c5862ce56844f6dbb631d3908803e2e8d2a.sol(135)

[33mWarning[0m for UnrestrictedWrite in contract 'LCAP':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x3f1b9c5862ce56844f6dbb631d3908803e2e8d2a.sol(179)

[33mWarning[0m for UnrestrictedWrite in contract 'LCAP':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x3f1b9c5862ce56844f6dbb631d3908803e2e8d2a.sol(180)

[33mWarning[0m for UnrestrictedWrite in contract 'LCAP':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x3f1b9c5862ce56844f6dbb631d3908803e2e8d2a.sol(181)

[33mWarning[0m for UnrestrictedWrite in contract 'LCAP':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x3f1b9c5862ce56844f6dbb631d3908803e2e8d2a.sol(197)

[33mWarning[0m for UnrestrictedWrite in contract 'LCAP':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x3f1b9c5862ce56844f6dbb631d3908803e2e8d2a.sol(223)

[33mWarning[0m for UnrestrictedWrite in contract 'LCAP':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x3f1b9c5862ce56844f6dbb631d3908803e2e8d2a.sol(241)

[33mWarning[0m for UnrestrictedWrite in contract 'LCAP':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x3f1b9c5862ce56844f6dbb631d3908803e2e8d2a.sol(243)

[33mWarning[0m for UnrestrictedWrite in contract 'LCAP':
    |    // Should https://github.com/OpenZeppelin/zeppelin-solidity/issues/707 be accepted,
    |    // this function needs to emit an event with the updated approval.
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    _burn(_from, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x3f1b9c5862ce56844f6dbb631d3908803e2e8d2a.sol(268)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x3f1b9c5862ce56844f6dbb631d3908803e2e8d2a.sol(9)

[33mWarning[0m for LockedEther in contract 'StandardBurnableToken':
    | * @dev Adds burnFrom method to ERC20 implementations
    | */
  > |contract StandardBurnableToken is BurnableToken, StandardToken {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x3f1b9c5862ce56844f6dbb631d3908803e2e8d2a.sol(257)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardBurnableToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x3f1b9c5862ce56844f6dbb631d3908803e2e8d2a.sol(94)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardBurnableToken':
    |
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x3f1b9c5862ce56844f6dbb631d3908803e2e8d2a.sol(95)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardBurnableToken':
    |    // sender's balance is greater than the totalSupply, which *should* be an assertion failure
    |
  > |    balances[_who] = balances[_who].sub(_value);
    |    totalSupply_ = totalSupply_.sub(_value);
    |    emit Burn(_who, _value);
  at /home/jiaming/mavs_srcs/contract@0x3f1b9c5862ce56844f6dbb631d3908803e2e8d2a.sol(134)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardBurnableToken':
    |
    |    balances[_who] = balances[_who].sub(_value);
  > |    totalSupply_ = totalSupply_.sub(_value);
    |    emit Burn(_who, _value);
    |    emit Transfer(_who, address(0), _value);
  at /home/jiaming/mavs_srcs/contract@0x3f1b9c5862ce56844f6dbb631d3908803e2e8d2a.sol(135)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardBurnableToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x3f1b9c5862ce56844f6dbb631d3908803e2e8d2a.sol(179)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardBurnableToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x3f1b9c5862ce56844f6dbb631d3908803e2e8d2a.sol(180)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardBurnableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x3f1b9c5862ce56844f6dbb631d3908803e2e8d2a.sol(181)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardBurnableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x3f1b9c5862ce56844f6dbb631d3908803e2e8d2a.sol(197)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardBurnableToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x3f1b9c5862ce56844f6dbb631d3908803e2e8d2a.sol(223)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardBurnableToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x3f1b9c5862ce56844f6dbb631d3908803e2e8d2a.sol(241)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardBurnableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x3f1b9c5862ce56844f6dbb631d3908803e2e8d2a.sol(243)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardBurnableToken':
    |    // Should https://github.com/OpenZeppelin/zeppelin-solidity/issues/707 be accepted,
    |    // this function needs to emit an event with the updated approval.
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    _burn(_from, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x3f1b9c5862ce56844f6dbb631d3908803e2e8d2a.sol(268)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0x3f1b9c5862ce56844f6dbb631d3908803e2e8d2a.sol(163)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x3f1b9c5862ce56844f6dbb631d3908803e2e8d2a.sol(94)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x3f1b9c5862ce56844f6dbb631d3908803e2e8d2a.sol(181)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x3f1b9c5862ce56844f6dbb631d3908803e2e8d2a.sol(197)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x3f1b9c5862ce56844f6dbb631d3908803e2e8d2a.sol(223)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x3f1b9c5862ce56844f6dbb631d3908803e2e8d2a.sol(241)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x3f1b9c5862ce56844f6dbb631d3908803e2e8d2a.sol(243)


