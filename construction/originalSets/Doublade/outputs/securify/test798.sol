Processing contract: /home/jiaming/mavs_srcs/contract@0x32d74896f05204d1b6ae7b0a3cebd7fc0cd8f9c7.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x32d74896f05204d1b6ae7b0a3cebd7fc0cd8f9c7.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x32d74896f05204d1b6ae7b0a3cebd7fc0cd8f9c7.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x32d74896f05204d1b6ae7b0a3cebd7fc0cd8f9c7.sol:KcashToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x32d74896f05204d1b6ae7b0a3cebd7fc0cd8f9c7.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x32d74896f05204d1b6ae7b0a3cebd7fc0cd8f9c7.sol:StandardToken
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
  at /home/jiaming/mavs_srcs/contract@0x32d74896f05204d1b6ae7b0a3cebd7fc0cd8f9c7.sol(80)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x32d74896f05204d1b6ae7b0a3cebd7fc0cd8f9c7.sol(104)

[33mWarning[0m for LockedEther in contract 'KcashToken':
    | * `StandardToken` functions.
    | */
  > |contract KcashToken is StandardToken {
    |
    |    string public constant name = "Kcash"; // solium-disable-line uppercase
  at /home/jiaming/mavs_srcs/contract@0x32d74896f05204d1b6ae7b0a3cebd7fc0cd8f9c7.sol(225)

[33mWarning[0m for UnrestrictedWrite in contract 'KcashToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x32d74896f05204d1b6ae7b0a3cebd7fc0cd8f9c7.sol(104)

[33mWarning[0m for UnrestrictedWrite in contract 'KcashToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x32d74896f05204d1b6ae7b0a3cebd7fc0cd8f9c7.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'KcashToken':
    |  function approve(address _spender, uint256 _value) public returns (bool) {
    |    require((_value == 0) || allowed[msg.sender][_spender]== 0);
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x32d74896f05204d1b6ae7b0a3cebd7fc0cd8f9c7.sol(164)

[33mWarning[0m for UnrestrictedWrite in contract 'KcashToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x32d74896f05204d1b6ae7b0a3cebd7fc0cd8f9c7.sol(190)

[33mWarning[0m for UnrestrictedWrite in contract 'KcashToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x32d74896f05204d1b6ae7b0a3cebd7fc0cd8f9c7.sol(208)

[33mWarning[0m for UnrestrictedWrite in contract 'KcashToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x32d74896f05204d1b6ae7b0a3cebd7fc0cd8f9c7.sol(210)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x32d74896f05204d1b6ae7b0a3cebd7fc0cd8f9c7.sol(21)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0x32d74896f05204d1b6ae7b0a3cebd7fc0cd8f9c7.sol(129)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x32d74896f05204d1b6ae7b0a3cebd7fc0cd8f9c7.sol(104)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x32d74896f05204d1b6ae7b0a3cebd7fc0cd8f9c7.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  function approve(address _spender, uint256 _value) public returns (bool) {
    |    require((_value == 0) || allowed[msg.sender][_spender]== 0);
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x32d74896f05204d1b6ae7b0a3cebd7fc0cd8f9c7.sol(164)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x32d74896f05204d1b6ae7b0a3cebd7fc0cd8f9c7.sol(190)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x32d74896f05204d1b6ae7b0a3cebd7fc0cd8f9c7.sol(208)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x32d74896f05204d1b6ae7b0a3cebd7fc0cd8f9c7.sol(210)


