Processing contract: /home/jiaming/mavs_srcs/contract@0xdf2edc20f8a2edd9ec44b84bce245c5760bea87c.sol:DO
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xdf2edc20f8a2edd9ec44b84bce245c5760bea87c.sol:ERC20Interface
[33mWarning[0m for LockedEther in contract 'DO':
    |}
    |
  > |contract DO is ERC20Interface {
    |    uint256 public constant decimals = 8;
    |
  at /home/jiaming/mavs_srcs/contract@0xdf2edc20f8a2edd9ec44b84bce245c5760bea87c.sol(20)

[33mWarning[0m for UnrestrictedWrite in contract 'DO':
    |             (balances[_to] + _amount > balances[_to]) ) {
    |
  > |            balances[msg.sender] -= _amount;
    |            balances[_to] += _amount;
    |            Transfer(msg.sender, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xdf2edc20f8a2edd9ec44b84bce245c5760bea87c.sol(121)

[33mWarning[0m for UnrestrictedWrite in contract 'DO':
    |        if (balances[_from] >= _amount && _amount > 0 && allowed[_from][msg.sender] >= _amount) {
    |            balances[_from] -= _amount;
  > |            allowed[_from][msg.sender] -= _amount;
    |            balances[_to] += _amount;
    |            Transfer(_from, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xdf2edc20f8a2edd9ec44b84bce245c5760bea87c.sol(146)

[33mWarning[0m for UnrestrictedWrite in contract 'DO':
    |        returns (bool success) {
    |        require((_amount == 0) || (allowed[msg.sender][_spender] == 0));
  > |        allowed[msg.sender][_spender] = _amount;
    |        Approval(msg.sender, _spender, _amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xdf2edc20f8a2edd9ec44b84bce245c5760bea87c.sol(162)


