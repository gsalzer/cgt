Processing contract: /home/jiaming/mavs_srcs/contract@0x436eb62c3bf9e730ae11f62574d22fbcb8e587fe.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x436eb62c3bf9e730ae11f62574d22fbcb8e587fe.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x436eb62c3bf9e730ae11f62574d22fbcb8e587fe.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x436eb62c3bf9e730ae11f62574d22fbcb8e587fe.sol:MillennialMillionaireCoins
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x436eb62c3bf9e730ae11f62574d22fbcb8e587fe.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x436eb62c3bf9e730ae11f62574d22fbcb8e587fe.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x436eb62c3bf9e730ae11f62574d22fbcb8e587fe.sol:StandardToken
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
  at /home/jiaming/mavs_srcs/contract@0x436eb62c3bf9e730ae11f62574d22fbcb8e587fe.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x436eb62c3bf9e730ae11f62574d22fbcb8e587fe.sol(89)

[33mWarning[0m for LockedEther in contract 'MillennialMillionaireCoins':
    |}
    |
  > |contract MillennialMillionaireCoins is StandardToken, Ownable {
    |	string public name = 'MillennialMillionaireCoins';
    |	string public symbol = 'MMILL';
  at /home/jiaming/mavs_srcs/contract@0x436eb62c3bf9e730ae11f62574d22fbcb8e587fe.sol(252)

[33mWarning[0m for UnrestrictedWrite in contract 'MillennialMillionaireCoins':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x436eb62c3bf9e730ae11f62574d22fbcb8e587fe.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'MillennialMillionaireCoins':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x436eb62c3bf9e730ae11f62574d22fbcb8e587fe.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'MillennialMillionaireCoins':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x436eb62c3bf9e730ae11f62574d22fbcb8e587fe.sol(140)

[33mWarning[0m for UnrestrictedWrite in contract 'MillennialMillionaireCoins':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x436eb62c3bf9e730ae11f62574d22fbcb8e587fe.sol(141)

[33mWarning[0m for UnrestrictedWrite in contract 'MillennialMillionaireCoins':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x436eb62c3bf9e730ae11f62574d22fbcb8e587fe.sol(142)

[33mWarning[0m for UnrestrictedWrite in contract 'MillennialMillionaireCoins':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x436eb62c3bf9e730ae11f62574d22fbcb8e587fe.sol(158)

[33mWarning[0m for UnrestrictedWrite in contract 'MillennialMillionaireCoins':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x436eb62c3bf9e730ae11f62574d22fbcb8e587fe.sol(184)

[33mWarning[0m for UnrestrictedWrite in contract 'MillennialMillionaireCoins':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x436eb62c3bf9e730ae11f62574d22fbcb8e587fe.sol(202)

[33mWarning[0m for UnrestrictedWrite in contract 'MillennialMillionaireCoins':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x436eb62c3bf9e730ae11f62574d22fbcb8e587fe.sol(204)

[33mWarning[0m for UnrestrictedWrite in contract 'MillennialMillionaireCoins':
    |	
    |	function transferReserveToMain() onlyOwner public returns (bool) {
  > |		balances[msg.sender] = balances[msg.sender].add(RESERVE_SUPPLY);
    |		RESERVE_SUPPLY = 0;
    |		return true;
  at /home/jiaming/mavs_srcs/contract@0x436eb62c3bf9e730ae11f62574d22fbcb8e587fe.sol(265)

[33mWarning[0m for UnrestrictedWrite in contract 'MillennialMillionaireCoins':
    |	function transferReserveToMain() onlyOwner public returns (bool) {
    |		balances[msg.sender] = balances[msg.sender].add(RESERVE_SUPPLY);
  > |		RESERVE_SUPPLY = 0;
    |		return true;
    |	}
  at /home/jiaming/mavs_srcs/contract@0x436eb62c3bf9e730ae11f62574d22fbcb8e587fe.sol(266)

[33mWarning[0m for UnrestrictedWrite in contract 'MillennialMillionaireCoins':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x436eb62c3bf9e730ae11f62574d22fbcb8e587fe.sol(247)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x436eb62c3bf9e730ae11f62574d22fbcb8e587fe.sol(217)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x436eb62c3bf9e730ae11f62574d22fbcb8e587fe.sol(218)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x436eb62c3bf9e730ae11f62574d22fbcb8e587fe.sol(244)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x436eb62c3bf9e730ae11f62574d22fbcb8e587fe.sol(247)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x436eb62c3bf9e730ae11f62574d22fbcb8e587fe.sol(19)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0x436eb62c3bf9e730ae11f62574d22fbcb8e587fe.sol(124)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x436eb62c3bf9e730ae11f62574d22fbcb8e587fe.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x436eb62c3bf9e730ae11f62574d22fbcb8e587fe.sol(142)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x436eb62c3bf9e730ae11f62574d22fbcb8e587fe.sol(158)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x436eb62c3bf9e730ae11f62574d22fbcb8e587fe.sol(184)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x436eb62c3bf9e730ae11f62574d22fbcb8e587fe.sol(202)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x436eb62c3bf9e730ae11f62574d22fbcb8e587fe.sol(204)


