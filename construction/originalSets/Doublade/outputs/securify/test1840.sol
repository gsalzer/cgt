Processing contract: /home/jiaming/mavs_srcs/contract@0x75eb1e315b28742ac016300e466f719fd20e116e.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x75eb1e315b28742ac016300e466f719fd20e116e.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x75eb1e315b28742ac016300e466f719fd20e116e.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x75eb1e315b28742ac016300e466f719fd20e116e.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x75eb1e315b28742ac016300e466f719fd20e116e.sol:SECTOKEN
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x75eb1e315b28742ac016300e466f719fd20e116e.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x75eb1e315b28742ac016300e466f719fd20e116e.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    | * @dev Basic version of StandardToken, with no allowances.
    | */
  > |contract BasicToken is ERC20Basic {
    |  using SafeMath for uint;
    |
  at /home/jiaming/mavs_srcs/contract@0x75eb1e315b28742ac016300e466f719fd20e116e.sol(73)

[31mViolation[0m for UnrestrictedWrite in contract 'BasicToken':
    |  function transfer(address _to, uint _value) onlyPayloadSize(2 * 32) {
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x75eb1e315b28742ac016300e466f719fd20e116e.sol(95)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |  */
    |  function transfer(address _to, uint _value) onlyPayloadSize(2 * 32) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x75eb1e315b28742ac016300e466f719fd20e116e.sol(94)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x75eb1e315b28742ac016300e466f719fd20e116e.sol(188)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x75eb1e315b28742ac016300e466f719fd20e116e.sol(189)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
    |      owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x75eb1e315b28742ac016300e466f719fd20e116e.sol(206)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x75eb1e315b28742ac016300e466f719fd20e116e.sol(208)

[33mWarning[0m for LockedEther in contract 'SECTOKEN':
    | * @title SECTOKEN
    | */
  > |contract SECTOKEN is StandardToken,Ownable {
    |  using SafeMath for uint;
    |
  at /home/jiaming/mavs_srcs/contract@0x75eb1e315b28742ac016300e466f719fd20e116e.sol(218)

[33mWarning[0m for UnrestrictedWrite in contract 'SECTOKEN':
    |  */
    |  function transfer(address _to, uint _value) onlyPayloadSize(2 * 32) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x75eb1e315b28742ac016300e466f719fd20e116e.sol(94)

[33mWarning[0m for UnrestrictedWrite in contract 'SECTOKEN':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x75eb1e315b28742ac016300e466f719fd20e116e.sol(149)

[33mWarning[0m for UnrestrictedWrite in contract 'SECTOKEN':
    |    if ((_value != 0) && (allowed[msg.sender][_spender] != 0)) throw ;
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x75eb1e315b28742ac016300e466f719fd20e116e.sol(166)

[33mWarning[0m for UnrestrictedWrite in contract 'SECTOKEN':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x75eb1e315b28742ac016300e466f719fd20e116e.sol(208)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * Math operations with safety checks
    | */
  > |library SafeMath {
    |  function mul(uint a, uint b) internal returns (uint) {
    |    uint c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x75eb1e315b28742ac016300e466f719fd20e116e.sol(7)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is BasicToken, ERC20 {
    |
    |  mapping (address => mapping (address => uint)) allowed;
  at /home/jiaming/mavs_srcs/contract@0x75eb1e315b28742ac016300e466f719fd20e116e.sol(130)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  */
    |  function transfer(address _to, uint _value) onlyPayloadSize(2 * 32) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x75eb1e315b28742ac016300e466f719fd20e116e.sol(94)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x75eb1e315b28742ac016300e466f719fd20e116e.sol(149)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    if ((_value != 0) && (allowed[msg.sender][_spender] != 0)) throw ;
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x75eb1e315b28742ac016300e466f719fd20e116e.sol(166)


