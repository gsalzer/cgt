Processing contract: /home/jiaming/mavs_srcs/contract@0x3cf090c5e5a30177e94156d0a7f026f47e253464.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3cf090c5e5a30177e94156d0a7f026f47e253464.sol:ELTCoin
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3cf090c5e5a30177e94156d0a7f026f47e253464.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x3cf090c5e5a30177e94156d0a7f026f47e253464.sol:SafeMath
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
  at /home/jiaming/mavs_srcs/contract@0x3cf090c5e5a30177e94156d0a7f026f47e253464.sol(36)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x3cf090c5e5a30177e94156d0a7f026f47e253464.sol(50)

[33mWarning[0m for LockedEther in contract 'ELTCoin':
    |}
    |
  > |contract ELTCoin is BasicToken {
    |
    |  string public constant name = "ELTCoin";
  at /home/jiaming/mavs_srcs/contract@0x3cf090c5e5a30177e94156d0a7f026f47e253464.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'ELTCoin':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x3cf090c5e5a30177e94156d0a7f026f47e253464.sol(50)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.13;
    |
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x3cf090c5e5a30177e94156d0a7f026f47e253464.sol(3)


