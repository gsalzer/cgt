Processing contract: /home/jiaming/mavs_srcs/contract@0x2e47cc38c58f82feb19b9495d1449efa55fa64a5.sol:ApproveAndCallFallBack
Processing contract: /home/jiaming/mavs_srcs/contract@0x2e47cc38c58f82feb19b9495d1449efa55fa64a5.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2e47cc38c58f82feb19b9495d1449efa55fa64a5.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x2e47cc38c58f82feb19b9495d1449efa55fa64a5.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x2e47cc38c58f82feb19b9495d1449efa55fa64a5.sol:PunchToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2e47cc38c58f82feb19b9495d1449efa55fa64a5.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2e47cc38c58f82feb19b9495d1449efa55fa64a5.sol:StandardToken
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
  at /home/jiaming/mavs_srcs/contract@0x2e47cc38c58f82feb19b9495d1449efa55fa64a5.sol(91)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x2e47cc38c58f82feb19b9495d1449efa55fa64a5.sol(114)

[33mWarning[0m for LockedEther in contract 'PunchToken':
    |}
    |
  > |contract PunchToken is StandardToken {
    |    string public symbol;
    |    string public  name;
  at /home/jiaming/mavs_srcs/contract@0x2e47cc38c58f82feb19b9495d1449efa55fa64a5.sol(260)

[33mWarning[0m for UnhandledException in contract 'PunchToken':
    |    function approveAndCall(address _spender, uint256 _value, bytes data) public returns (bool) {
    |		approve(_spender,_value);
  > |        ApproveAndCallFallBack(_spender).receiveApproval(msg.sender, _value, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2e47cc38c58f82feb19b9495d1449efa55fa64a5.sol(284)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PunchToken':
    |    function approveAndCall(address _spender, uint256 _value, bytes data) public returns (bool) {
    |		approve(_spender,_value);
  > |        ApproveAndCallFallBack(_spender).receiveApproval(msg.sender, _value, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2e47cc38c58f82feb19b9495d1449efa55fa64a5.sol(284)

[33mWarning[0m for UnrestrictedWrite in contract 'PunchToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x2e47cc38c58f82feb19b9495d1449efa55fa64a5.sol(114)

[33mWarning[0m for UnrestrictedWrite in contract 'PunchToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2e47cc38c58f82feb19b9495d1449efa55fa64a5.sol(163)

[33mWarning[0m for UnrestrictedWrite in contract 'PunchToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2e47cc38c58f82feb19b9495d1449efa55fa64a5.sol(178)

[33mWarning[0m for UnrestrictedWrite in contract 'PunchToken':
    |    returns (bool)
    |  {
  > |    allowed[msg.sender][_spender] = (
    |      allowed[msg.sender][_spender].add(_addedValue));
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x2e47cc38c58f82feb19b9495d1449efa55fa64a5.sol(216)

[33mWarning[0m for UnrestrictedWrite in contract 'PunchToken':
    |    uint256 oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x2e47cc38c58f82feb19b9495d1449efa55fa64a5.sol(240)

[33mWarning[0m for UnrestrictedWrite in contract 'PunchToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x2e47cc38c58f82feb19b9495d1449efa55fa64a5.sol(242)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x2e47cc38c58f82feb19b9495d1449efa55fa64a5.sol(7)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0x2e47cc38c58f82feb19b9495d1449efa55fa64a5.sol(138)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x2e47cc38c58f82feb19b9495d1449efa55fa64a5.sol(114)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2e47cc38c58f82feb19b9495d1449efa55fa64a5.sol(163)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2e47cc38c58f82feb19b9495d1449efa55fa64a5.sol(178)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    returns (bool)
    |  {
  > |    allowed[msg.sender][_spender] = (
    |      allowed[msg.sender][_spender].add(_addedValue));
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x2e47cc38c58f82feb19b9495d1449efa55fa64a5.sol(216)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint256 oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x2e47cc38c58f82feb19b9495d1449efa55fa64a5.sol(240)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x2e47cc38c58f82feb19b9495d1449efa55fa64a5.sol(242)


