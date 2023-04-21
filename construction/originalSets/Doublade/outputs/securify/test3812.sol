Processing contract: /home/jiaming/mavs_srcs/contract@0xfacc5b21597487575667dde047fc6e5d58bdae55.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xfacc5b21597487575667dde047fc6e5d58bdae55.sol:Crowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xfacc5b21597487575667dde047fc6e5d58bdae55.sol:DARFtoken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xfacc5b21597487575667dde047fc6e5d58bdae55.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xfacc5b21597487575667dde047fc6e5d58bdae55.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xfacc5b21597487575667dde047fc6e5d58bdae55.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xfacc5b21597487575667dde047fc6e5d58bdae55.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xfacc5b21597487575667dde047fc6e5d58bdae55.sol:PullPayment
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xfacc5b21597487575667dde047fc6e5d58bdae55.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xfacc5b21597487575667dde047fc6e5d58bdae55.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    |}
    |
  > |contract BasicToken is ERC20Basic {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xfacc5b21597487575667dde047fc6e5d58bdae55.sol(421)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |  */
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xfacc5b21597487575667dde047fc6e5d58bdae55.sol(432)

[33mWarning[0m for LockedEther in contract 'DARFtoken':
    |}
    |
  > |contract DARFtoken is StandardToken, Ownable {
    |  string public constant name = "DARFtoken";
    |  string public constant symbol = "DAR";
  at /home/jiaming/mavs_srcs/contract@0xfacc5b21597487575667dde047fc6e5d58bdae55.sol(510)

[33mWarning[0m for UnrestrictedWrite in contract 'DARFtoken':
    |  */
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xfacc5b21597487575667dde047fc6e5d58bdae55.sol(432)

[33mWarning[0m for UnrestrictedWrite in contract 'DARFtoken':
    |  function transfer(address _to, uint256 _value) returns (bool) {
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xfacc5b21597487575667dde047fc6e5d58bdae55.sol(433)

[33mWarning[0m for UnrestrictedWrite in contract 'DARFtoken':
    |    // require (_value <= _allowance);
    |
  > |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xfacc5b21597487575667dde047fc6e5d58bdae55.sol(473)

[33mWarning[0m for UnrestrictedWrite in contract 'DARFtoken':
    |
    |    balances[_to] = balances[_to].add(_value);
  > |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xfacc5b21597487575667dde047fc6e5d58bdae55.sol(474)

[33mWarning[0m for UnrestrictedWrite in contract 'DARFtoken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xfacc5b21597487575667dde047fc6e5d58bdae55.sol(475)

[33mWarning[0m for UnrestrictedWrite in contract 'DARFtoken':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xfacc5b21597487575667dde047fc6e5d58bdae55.sol(493)

[33mWarning[0m for UnrestrictedWrite in contract 'DARFtoken':
    |   */
    |  function burn(uint _value) onlyOwner returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    totalSupply = totalSupply.sub(_value);
    |    Transfer(msg.sender, 0x0, _value);
  at /home/jiaming/mavs_srcs/contract@0xfacc5b21597487575667dde047fc6e5d58bdae55.sol(526)

[33mWarning[0m for UnrestrictedWrite in contract 'DARFtoken':
    |  function burn(uint _value) onlyOwner returns (bool) {
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    totalSupply = totalSupply.sub(_value);
    |    Transfer(msg.sender, 0x0, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xfacc5b21597487575667dde047fc6e5d58bdae55.sol(527)

[33mWarning[0m for UnrestrictedWrite in contract 'DARFtoken':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xfacc5b21597487575667dde047fc6e5d58bdae55.sol(31)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |pragma solidity ^0.4.15;
    |
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xfacc5b21597487575667dde047fc6e5d58bdae55.sol(3)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xfacc5b21597487575667dde047fc6e5d58bdae55.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
    |      owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0xfacc5b21597487575667dde047fc6e5d58bdae55.sol(29)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xfacc5b21597487575667dde047fc6e5d58bdae55.sol(31)

[33mWarning[0m for LockedEther in contract 'Pausable':
    |}
    |
  > |contract Pausable is Ownable {
    |  bool public stopped;
    |
  at /home/jiaming/mavs_srcs/contract@0xfacc5b21597487575667dde047fc6e5d58bdae55.sol(37)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xfacc5b21597487575667dde047fc6e5d58bdae55.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
    |      owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0xfacc5b21597487575667dde047fc6e5d58bdae55.sol(29)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |
    |contract Pausable is Ownable {
  > |  bool public stopped;
    |
    |  modifier stopInEmergency {
  at /home/jiaming/mavs_srcs/contract@0xfacc5b21597487575667dde047fc6e5d58bdae55.sol(38)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |
    |  // called by the owner on emergency, triggers stopped state
  > |  function emergencyStop() external onlyOwner {
    |    stopped = true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xfacc5b21597487575667dde047fc6e5d58bdae55.sol(51)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |
    |  // called by the owner on end of emergency, returns to normal state
  > |  function release() external onlyOwner onlyInEmergency {
    |    stopped = false;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xfacc5b21597487575667dde047fc6e5d58bdae55.sol(56)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xfacc5b21597487575667dde047fc6e5d58bdae55.sol(31)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |  // called by the owner on emergency, triggers stopped state
    |  function emergencyStop() external onlyOwner {
  > |    stopped = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xfacc5b21597487575667dde047fc6e5d58bdae55.sol(52)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |  // called by the owner on end of emergency, returns to normal state
    |  function release() external onlyOwner onlyInEmergency {
  > |    stopped = false;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xfacc5b21597487575667dde047fc6e5d58bdae55.sol(57)

[33mWarning[0m for DAOConstantGas in contract 'PullPayment':
    |    payments[payee] = 0;
    |
  > |    assert(payee.send(payment));
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xfacc5b21597487575667dde047fc6e5d58bdae55.sol(117)

[33mWarning[0m for LockedEther in contract 'PullPayment':
    |}
    |
  > |contract PullPayment {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xfacc5b21597487575667dde047fc6e5d58bdae55.sol(88)

[33mWarning[0m for TODReceiver in contract 'PullPayment':
    |    payments[payee] = 0;
    |
  > |    assert(payee.send(payment));
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xfacc5b21597487575667dde047fc6e5d58bdae55.sol(117)

[33mWarning[0m for UnhandledException in contract 'PullPayment':
    |    payments[payee] = 0;
    |
  > |    assert(payee.send(payment));
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xfacc5b21597487575667dde047fc6e5d58bdae55.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'PullPayment':
    |
    |    totalPayments = totalPayments.sub(payment);
  > |    payments[payee] = 0;
    |
    |    assert(payee.send(payment));
  at /home/jiaming/mavs_srcs/contract@0xfacc5b21597487575667dde047fc6e5d58bdae55.sol(115)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |}
    |
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xfacc5b21597487575667dde047fc6e5d58bdae55.sol(62)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) allowed;
  at /home/jiaming/mavs_srcs/contract@0xfacc5b21597487575667dde047fc6e5d58bdae55.sol(456)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  */
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xfacc5b21597487575667dde047fc6e5d58bdae55.sol(432)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xfacc5b21597487575667dde047fc6e5d58bdae55.sol(475)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xfacc5b21597487575667dde047fc6e5d58bdae55.sol(493)


