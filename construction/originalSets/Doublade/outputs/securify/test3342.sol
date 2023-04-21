Processing contract: /home/jiaming/mavs_srcs/contract@0xdbd5f2fa4ab9f59feb26612a2a54f1bf363fadfd.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xdbd5f2fa4ab9f59feb26612a2a54f1bf363fadfd.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xdbd5f2fa4ab9f59feb26612a2a54f1bf363fadfd.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xdbd5f2fa4ab9f59feb26612a2a54f1bf363fadfd.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xdbd5f2fa4ab9f59feb26612a2a54f1bf363fadfd.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xdbd5f2fa4ab9f59feb26612a2a54f1bf363fadfd.sol:TRAToken
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
  at /home/jiaming/mavs_srcs/contract@0xdbd5f2fa4ab9f59feb26612a2a54f1bf363fadfd.sol(73)

[31mViolation[0m for UnrestrictedWrite in contract 'BasicToken':
    |  function transfer(address _to, uint _value) onlyPayloadSize(2 * 32) {
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xdbd5f2fa4ab9f59feb26612a2a54f1bf363fadfd.sol(95)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |  */
    |  function transfer(address _to, uint _value) onlyPayloadSize(2 * 32) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xdbd5f2fa4ab9f59feb26612a2a54f1bf363fadfd.sol(94)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * Math operations with safety checks
    | */
  > |library SafeMath {
    |  function mul(uint a, uint b) internal returns (uint) {
    |    uint c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xdbd5f2fa4ab9f59feb26612a2a54f1bf363fadfd.sol(7)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Implemantation of the basic standart token.
    | */
  > |contract StandardToken is BasicToken, ERC20 {
    |
    |  mapping (address => mapping (address => uint)) allowed;
  at /home/jiaming/mavs_srcs/contract@0xdbd5f2fa4ab9f59feb26612a2a54f1bf363fadfd.sol(132)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  */
    |  function transfer(address _to, uint _value) onlyPayloadSize(2 * 32) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xdbd5f2fa4ab9f59feb26612a2a54f1bf363fadfd.sol(94)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xdbd5f2fa4ab9f59feb26612a2a54f1bf363fadfd.sol(151)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    if ((_value != 0) && (allowed[msg.sender][_spender] != 0)) throw;
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xdbd5f2fa4ab9f59feb26612a2a54f1bf363fadfd.sol(168)


