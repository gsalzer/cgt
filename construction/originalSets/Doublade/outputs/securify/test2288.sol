Processing contract: /home/jiaming/mavs_srcs/contract@0x954bc7d3679986cdc717c4992efd57db792b0adf.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x954bc7d3679986cdc717c4992efd57db792b0adf.sol:EFFToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x954bc7d3679986cdc717c4992efd57db792b0adf.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x954bc7d3679986cdc717c4992efd57db792b0adf.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x954bc7d3679986cdc717c4992efd57db792b0adf.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x954bc7d3679986cdc717c4992efd57db792b0adf.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    |
    |
  > |contract BasicToken is ERC20Basic {
    |  using SafeMath for uint;
    |
  at /home/jiaming/mavs_srcs/contract@0x954bc7d3679986cdc717c4992efd57db792b0adf.sol(69)

[31mViolation[0m for UnrestrictedWrite in contract 'BasicToken':
    |  function transfer(address _to, uint _value) onlyPayloadSize(2 * 32) {
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x954bc7d3679986cdc717c4992efd57db792b0adf.sol(91)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |  */
    |  function transfer(address _to, uint _value) onlyPayloadSize(2 * 32) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x954bc7d3679986cdc717c4992efd57db792b0adf.sol(90)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |
    |
  > |library SafeMath {
    |  function mul(uint a, uint b) internal returns (uint) {
    |    uint c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x954bc7d3679986cdc717c4992efd57db792b0adf.sol(5)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |
    |
  > |contract StandardToken is BasicToken, ERC20 {
    |
    |  mapping (address => mapping (address => uint)) allowed;
  at /home/jiaming/mavs_srcs/contract@0x954bc7d3679986cdc717c4992efd57db792b0adf.sol(107)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  */
    |  function transfer(address _to, uint _value) onlyPayloadSize(2 * 32) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x954bc7d3679986cdc717c4992efd57db792b0adf.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x954bc7d3679986cdc717c4992efd57db792b0adf.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    if ((_value != 0) && (allowed[msg.sender][_spender] != 0)) throw;
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x954bc7d3679986cdc717c4992efd57db792b0adf.sol(143)


