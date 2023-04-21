Processing contract: /home/jiaming/mavs_srcs/contract@0x4492388f38460c46de0f50fcc5488d91d6df611c.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4492388f38460c46de0f50fcc5488d91d6df611c.sol:BurnableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4492388f38460c46de0f50fcc5488d91d6df611c.sol:DetailedERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x4492388f38460c46de0f50fcc5488d91d6df611c.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x4492388f38460c46de0f50fcc5488d91d6df611c.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x4492388f38460c46de0f50fcc5488d91d6df611c.sol:GoldHaiBei
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4492388f38460c46de0f50fcc5488d91d6df611c.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4492388f38460c46de0f50fcc5488d91d6df611c.sol:StandardBurnableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4492388f38460c46de0f50fcc5488d91d6df611c.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    | * @dev 基本的StandardToken，不包含allowances.
    | */
  > |contract BasicToken is ERC20Basic {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x4492388f38460c46de0f50fcc5488d91d6df611c.sol(87)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |    require(_to != address(0));
    |    require(_value <= balances[msg.sender]);
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x4492388f38460c46de0f50fcc5488d91d6df611c.sol(101)

[33mWarning[0m for LockedEther in contract 'BurnableToken':
    |}
    |
  > |contract BurnableToken is BasicToken {
    |
    |  event Burn(address indexed burner, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0x4492388f38460c46de0f50fcc5488d91d6df611c.sol(160)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    require(_to != address(0));
    |    require(_value <= balances[msg.sender]);
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x4492388f38460c46de0f50fcc5488d91d6df611c.sol(101)

[33mWarning[0m for LockedEther in contract 'GoldHaiBei':
    |}
    |
  > |contract GoldHaiBei is StandardBurnableToken {
    |    string public name = 'GoldHaiBei';
    |    string public symbol = 'JHB';
  at /home/jiaming/mavs_srcs/contract@0x4492388f38460c46de0f50fcc5488d91d6df611c.sol(172)

[33mWarning[0m for UnrestrictedWrite in contract 'GoldHaiBei':
    |    require(_to != address(0));
    |    require(_value <= balances[msg.sender]);
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x4492388f38460c46de0f50fcc5488d91d6df611c.sol(101)

[33mWarning[0m for UnrestrictedWrite in contract 'GoldHaiBei':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x4492388f38460c46de0f50fcc5488d91d6df611c.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'GoldHaiBei':
    |
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x4492388f38460c46de0f50fcc5488d91d6df611c.sol(142)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.23;
    |
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x4492388f38460c46de0f50fcc5488d91d6df611c.sol(3)

[33mWarning[0m for LockedEther in contract 'StandardBurnableToken':
    |
    |
  > |contract StandardBurnableToken is BurnableToken, StandardToken {
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x4492388f38460c46de0f50fcc5488d91d6df611c.sol(167)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardBurnableToken':
    |    require(_to != address(0));
    |    require(_value <= balances[msg.sender]);
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x4492388f38460c46de0f50fcc5488d91d6df611c.sol(101)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardBurnableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x4492388f38460c46de0f50fcc5488d91d6df611c.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardBurnableToken':
    |
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x4492388f38460c46de0f50fcc5488d91d6df611c.sol(142)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is ERC20, BasicToken {
    |  mapping (address => mapping (address => uint256)) internal allowed;
    |
  at /home/jiaming/mavs_srcs/contract@0x4492388f38460c46de0f50fcc5488d91d6df611c.sol(113)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require(_to != address(0));
    |    require(_value <= balances[msg.sender]);
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x4492388f38460c46de0f50fcc5488d91d6df611c.sol(101)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x4492388f38460c46de0f50fcc5488d91d6df611c.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x4492388f38460c46de0f50fcc5488d91d6df611c.sol(142)


