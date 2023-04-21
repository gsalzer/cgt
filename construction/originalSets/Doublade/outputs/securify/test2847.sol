Processing contract: /home/jiaming/mavs_srcs/contract@0xbaf2be40ec3ad1edd3c38a59710b67a61cbdef3e.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbaf2be40ec3ad1edd3c38a59710b67a61cbdef3e.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xbaf2be40ec3ad1edd3c38a59710b67a61cbdef3e.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xbaf2be40ec3ad1edd3c38a59710b67a61cbdef3e.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbaf2be40ec3ad1edd3c38a59710b67a61cbdef3e.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbaf2be40ec3ad1edd3c38a59710b67a61cbdef3e.sol:TriwerToken
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
  at /home/jiaming/mavs_srcs/contract@0xbaf2be40ec3ad1edd3c38a59710b67a61cbdef3e.sol(81)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xbaf2be40ec3ad1edd3c38a59710b67a61cbdef3e.sol(105)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xbaf2be40ec3ad1edd3c38a59710b67a61cbdef3e.sol(8)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0xbaf2be40ec3ad1edd3c38a59710b67a61cbdef3e.sol(131)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xbaf2be40ec3ad1edd3c38a59710b67a61cbdef3e.sol(105)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xbaf2be40ec3ad1edd3c38a59710b67a61cbdef3e.sol(149)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xbaf2be40ec3ad1edd3c38a59710b67a61cbdef3e.sol(165)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xbaf2be40ec3ad1edd3c38a59710b67a61cbdef3e.sol(191)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xbaf2be40ec3ad1edd3c38a59710b67a61cbdef3e.sol(209)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xbaf2be40ec3ad1edd3c38a59710b67a61cbdef3e.sol(211)

[33mWarning[0m for LockedEther in contract 'TriwerToken':
    |}
    |
  > |contract TriwerToken is StandardToken {
    |    string public constant name = "Triwer";
    |    string public constant symbol = "TRW";
  at /home/jiaming/mavs_srcs/contract@0xbaf2be40ec3ad1edd3c38a59710b67a61cbdef3e.sol(219)

[33mWarning[0m for UnrestrictedWrite in contract 'TriwerToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xbaf2be40ec3ad1edd3c38a59710b67a61cbdef3e.sol(105)

[33mWarning[0m for UnrestrictedWrite in contract 'TriwerToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xbaf2be40ec3ad1edd3c38a59710b67a61cbdef3e.sol(149)

[33mWarning[0m for UnrestrictedWrite in contract 'TriwerToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xbaf2be40ec3ad1edd3c38a59710b67a61cbdef3e.sol(165)

[33mWarning[0m for UnrestrictedWrite in contract 'TriwerToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xbaf2be40ec3ad1edd3c38a59710b67a61cbdef3e.sol(191)

[33mWarning[0m for UnrestrictedWrite in contract 'TriwerToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xbaf2be40ec3ad1edd3c38a59710b67a61cbdef3e.sol(209)

[33mWarning[0m for UnrestrictedWrite in contract 'TriwerToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xbaf2be40ec3ad1edd3c38a59710b67a61cbdef3e.sol(211)


