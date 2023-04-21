Processing contract: /home/jiaming/mavs_srcs/contract@0x2a47e3c69deaae8dbdc5ee272d1a3c0f9853dcbd.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2a47e3c69deaae8dbdc5ee272d1a3c0f9853dcbd.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x2a47e3c69deaae8dbdc5ee272d1a3c0f9853dcbd.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x2a47e3c69deaae8dbdc5ee272d1a3c0f9853dcbd.sol:MoyToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2a47e3c69deaae8dbdc5ee272d1a3c0f9853dcbd.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2a47e3c69deaae8dbdc5ee272d1a3c0f9853dcbd.sol:StandardToken
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
  at /home/jiaming/mavs_srcs/contract@0x2a47e3c69deaae8dbdc5ee272d1a3c0f9853dcbd.sol(53)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x2a47e3c69deaae8dbdc5ee272d1a3c0f9853dcbd.sol(67)

[33mWarning[0m for LockedEther in contract 'MoyToken':
    | * Standard ERC20Token for MoibeTV
    | */
  > |contract MoyToken is StandardToken {
    |
    |  string public constant name = "MOYToken";
  at /home/jiaming/mavs_srcs/contract@0x2a47e3c69deaae8dbdc5ee272d1a3c0f9853dcbd.sol(184)

[33mWarning[0m for UnrestrictedWrite in contract 'MoyToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x2a47e3c69deaae8dbdc5ee272d1a3c0f9853dcbd.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'MoyToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2a47e3c69deaae8dbdc5ee272d1a3c0f9853dcbd.sol(121)

[33mWarning[0m for UnrestrictedWrite in contract 'MoyToken':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2a47e3c69deaae8dbdc5ee272d1a3c0f9853dcbd.sol(140)

[33mWarning[0m for UnrestrictedWrite in contract 'MoyToken':
    |
    |  function increaseApproval (address _spender, uint _addedValue)public returns (bool success) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2a47e3c69deaae8dbdc5ee272d1a3c0f9853dcbd.sol(162)

[33mWarning[0m for UnrestrictedWrite in contract 'MoyToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x2a47e3c69deaae8dbdc5ee272d1a3c0f9853dcbd.sol(170)

[33mWarning[0m for UnrestrictedWrite in contract 'MoyToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x2a47e3c69deaae8dbdc5ee272d1a3c0f9853dcbd.sol(172)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x2a47e3c69deaae8dbdc5ee272d1a3c0f9853dcbd.sol(11)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev https://github.com/ethereum/EIPs/issues/20
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) allowed;
  at /home/jiaming/mavs_srcs/contract@0x2a47e3c69deaae8dbdc5ee272d1a3c0f9853dcbd.sol(101)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x2a47e3c69deaae8dbdc5ee272d1a3c0f9853dcbd.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2a47e3c69deaae8dbdc5ee272d1a3c0f9853dcbd.sol(121)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2a47e3c69deaae8dbdc5ee272d1a3c0f9853dcbd.sol(140)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |  function increaseApproval (address _spender, uint _addedValue)public returns (bool success) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2a47e3c69deaae8dbdc5ee272d1a3c0f9853dcbd.sol(162)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x2a47e3c69deaae8dbdc5ee272d1a3c0f9853dcbd.sol(170)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x2a47e3c69deaae8dbdc5ee272d1a3c0f9853dcbd.sol(172)


