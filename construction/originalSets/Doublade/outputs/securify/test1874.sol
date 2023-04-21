Processing contract: /home/jiaming/mavs_srcs/contract@0x780116d91e5592e58a3b3c76a351571b39abcec6.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x780116d91e5592e58a3b3c76a351571b39abcec6.sol:BoxxToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x780116d91e5592e58a3b3c76a351571b39abcec6.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x780116d91e5592e58a3b3c76a351571b39abcec6.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x780116d91e5592e58a3b3c76a351571b39abcec6.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x780116d91e5592e58a3b3c76a351571b39abcec6.sol:StandardToken
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
  at /home/jiaming/mavs_srcs/contract@0x780116d91e5592e58a3b3c76a351571b39abcec6.sol(82)

[31mViolation[0m for UnrestrictedWrite in contract 'BasicToken':
    |    require(_to != address(0)); //prevents 0x0 address
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x780116d91e5592e58a3b3c76a351571b39abcec6.sol(106)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |  function transfer(address _to, uint _value) onlyPayloadSize(2 * 32){
    |    require(_to != address(0)); //prevents 0x0 address
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x780116d91e5592e58a3b3c76a351571b39abcec6.sol(105)

[33mWarning[0m for LockedEther in contract 'BoxxToken':
    | * @dev Implemantation of the blocks token.
    | */
  > |contract BoxxToken is StandardToken{
    |
    |    string public name = "Boxx";
  at /home/jiaming/mavs_srcs/contract@0x780116d91e5592e58a3b3c76a351571b39abcec6.sol(189)

[33mWarning[0m for UnrestrictedWrite in contract 'BoxxToken':
    |  function transfer(address _to, uint _value) onlyPayloadSize(2 * 32){
    |    require(_to != address(0)); //prevents 0x0 address
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x780116d91e5592e58a3b3c76a351571b39abcec6.sol(105)

[33mWarning[0m for UnrestrictedWrite in contract 'BoxxToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x780116d91e5592e58a3b3c76a351571b39abcec6.sol(151)

[33mWarning[0m for UnrestrictedWrite in contract 'BoxxToken':
    |    if ((_value != 0) && (allowed[msg.sender][_spender] != 0)) throw;
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x780116d91e5592e58a3b3c76a351571b39abcec6.sol(168)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | */
    |
  > |library SafeMath {
    |  function mul(uint a, uint b) internal returns (uint) {
    |    uint c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x780116d91e5592e58a3b3c76a351571b39abcec6.sol(7)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is BasicToken, ERC20 {
    |
    |  mapping (address => mapping (address => uint)) allowed;
  at /home/jiaming/mavs_srcs/contract@0x780116d91e5592e58a3b3c76a351571b39abcec6.sol(128)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  function transfer(address _to, uint _value) onlyPayloadSize(2 * 32){
    |    require(_to != address(0)); //prevents 0x0 address
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x780116d91e5592e58a3b3c76a351571b39abcec6.sol(105)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x780116d91e5592e58a3b3c76a351571b39abcec6.sol(151)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    if ((_value != 0) && (allowed[msg.sender][_spender] != 0)) throw;
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x780116d91e5592e58a3b3c76a351571b39abcec6.sol(168)


