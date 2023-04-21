Processing contract: /home/jiaming/mavs_srcs/contract@0x4781bee730c9056414d86ce9411a8fb7ff02219f.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x4781bee730c9056414d86ce9411a8fb7ff02219f.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x4781bee730c9056414d86ce9411a8fb7ff02219f.sol:RoseToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4781bee730c9056414d86ce9411a8fb7ff02219f.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for LockedEther in contract 'RoseToken':
    |//  @story Mini buda loves kaeru.
    |/// For more information about this token, please visit https://rose.red
  > |contract RoseToken is ERC20 {
    |
    |    using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0x4781bee730c9056414d86ce9411a8fb7ff02219f.sol(44)

[33mWarning[0m for UnrestrictedWrite in contract 'RoseToken':
    |        require(_amount <= balances[msg.sender] && _amount >=0 );
    |
  > |        balances[msg.sender] = balances[msg.sender].sub(_amount);
    |        balances[_to] = balances[_to].add(_amount);
    |        Transfer(msg.sender, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x4781bee730c9056414d86ce9411a8fb7ff02219f.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'RoseToken':
    |
    |        balances[_from] = balances[_from].sub(_amount);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_amount);
    |        balances[_to] = balances[_to].add(_amount);
    |        Transfer(_from, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x4781bee730c9056414d86ce9411a8fb7ff02219f.sol(96)

[33mWarning[0m for UnrestrictedWrite in contract 'RoseToken':
    |        // mitigates the ERC20 spend/approval race condition
    |        if (_value != 0 && allowed[msg.sender][_spender] != 0) { return false; }
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x4781bee730c9056414d86ce9411a8fb7ff02219f.sol(105)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.19;
    |
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x4781bee730c9056414d86ce9411a8fb7ff02219f.sol(3)


