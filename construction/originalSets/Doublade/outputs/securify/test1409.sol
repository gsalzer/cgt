Processing contract: /home/jiaming/mavs_srcs/contract@0x5986b5d6d6f49f31fb9cca27d92a04e1cbb95a21.sol:ContractFPC
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5986b5d6d6f49f31fb9cca27d92a04e1cbb95a21.sol:ERC20Interface
[33mWarning[0m for LockedEther in contract 'ContractFPC':
    |}
    |
  > |contract ContractFPC is ERC20Interface {
    |    uint256 public constant decimals = 8;
    |
  at /home/jiaming/mavs_srcs/contract@0x5986b5d6d6f49f31fb9cca27d92a04e1cbb95a21.sol(19)

[33mWarning[0m for UnrestrictedWrite in contract 'ContractFPC':
    |             (balances[_to] + _amount > balances[_to]) ) {
    |
  > |            balances[msg.sender] -= _amount;
    |            balances[_to] += _amount;
    |            emit Transfer(msg.sender, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x5986b5d6d6f49f31fb9cca27d92a04e1cbb95a21.sol(129)

[33mWarning[0m for UnrestrictedWrite in contract 'ContractFPC':
    |        if (balances[_from] >= _amount && _amount > 0 && allowed[_from][msg.sender] >= _amount) {
    |            balances[_from] -= _amount;
  > |            allowed[_from][msg.sender] -= _amount;
    |            balances[_to] += _amount;
    |            emit Transfer(_from, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x5986b5d6d6f49f31fb9cca27d92a04e1cbb95a21.sol(154)

[33mWarning[0m for UnrestrictedWrite in contract 'ContractFPC':
    |        returns (bool success) {
    |        require((_amount == 0) || (allowed[msg.sender][_spender] == 0));
  > |        allowed[msg.sender][_spender] = _amount;
    |        emit Approval(msg.sender, _spender, _amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x5986b5d6d6f49f31fb9cca27d92a04e1cbb95a21.sol(170)


