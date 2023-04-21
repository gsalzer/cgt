Processing contract: /home/jiaming/mavs_srcs/contract@0x3cda32357a38774526bccce7806e7cc5c4916ada.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3cda32357a38774526bccce7806e7cc5c4916ada.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x3cda32357a38774526bccce7806e7cc5c4916ada.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x3cda32357a38774526bccce7806e7cc5c4916ada.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3cda32357a38774526bccce7806e7cc5c4916ada.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3cda32357a38774526bccce7806e7cc5c4916ada.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3cda32357a38774526bccce7806e7cc5c4916ada.sol:SuperToken
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
  at /home/jiaming/mavs_srcs/contract@0x3cda32357a38774526bccce7806e7cc5c4916ada.sol(51)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |  */
    |  function transfer(address _to, uint256 _value) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x3cda32357a38774526bccce7806e7cc5c4916ada.sol(62)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x3cda32357a38774526bccce7806e7cc5c4916ada.sol(156)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x3cda32357a38774526bccce7806e7cc5c4916ada.sol(157)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
    |      owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x3cda32357a38774526bccce7806e7cc5c4916ada.sol(181)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x3cda32357a38774526bccce7806e7cc5c4916ada.sol(183)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x3cda32357a38774526bccce7806e7cc5c4916ada.sol(7)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) allowed;
  at /home/jiaming/mavs_srcs/contract@0x3cda32357a38774526bccce7806e7cc5c4916ada.sol(98)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  */
    |  function transfer(address _to, uint256 _value) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x3cda32357a38774526bccce7806e7cc5c4916ada.sol(62)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x3cda32357a38774526bccce7806e7cc5c4916ada.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    //  https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
    |	assert(!((_value != 0) && (allowed[msg.sender][_spender] != 0)));
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |
  at /home/jiaming/mavs_srcs/contract@0x3cda32357a38774526bccce7806e7cc5c4916ada.sol(133)

[33mWarning[0m for LockedEther in contract 'SuperToken':
    | * `StandardToken` functions.
    | */
  > |contract SuperToken is StandardToken, Ownable {
    |
    |  string public name = "Super Token";
  at /home/jiaming/mavs_srcs/contract@0x3cda32357a38774526bccce7806e7cc5c4916ada.sol(195)

[33mWarning[0m for UnrestrictedWrite in contract 'SuperToken':
    |  */
    |  function transfer(address _to, uint256 _value) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x3cda32357a38774526bccce7806e7cc5c4916ada.sol(62)

[33mWarning[0m for UnrestrictedWrite in contract 'SuperToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x3cda32357a38774526bccce7806e7cc5c4916ada.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'SuperToken':
    |    //  https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
    |	assert(!((_value != 0) && (allowed[msg.sender][_spender] != 0)));
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |
  at /home/jiaming/mavs_srcs/contract@0x3cda32357a38774526bccce7806e7cc5c4916ada.sol(133)

[33mWarning[0m for UnrestrictedWrite in contract 'SuperToken':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x3cda32357a38774526bccce7806e7cc5c4916ada.sol(183)


