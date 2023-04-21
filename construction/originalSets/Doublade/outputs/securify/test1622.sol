Processing contract: /home/jiaming/mavs_srcs/contract@0x671db5c8db82bbeafcada319f2eef62a59da9a62.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x671db5c8db82bbeafcada319f2eef62a59da9a62.sol:Etx
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Etx':
    |}
    |
  > |contract Etx is ERC20Interface {
    |    string public constant symbol = "ETX";
    |
  at /home/jiaming/mavs_srcs/contract@0x671db5c8db82bbeafcada319f2eef62a59da9a62.sol(24)

[33mWarning[0m for UnrestrictedWrite in contract 'Etx':
    |
    |            // Transfer.
  > |            balances[msg.sender] -= _amount;
    |            balances[_to] += _amount;
    |
  at /home/jiaming/mavs_srcs/contract@0x671db5c8db82bbeafcada319f2eef62a59da9a62.sol(103)

[33mWarning[0m for UnrestrictedWrite in contract 'Etx':
    |            // Transfer.
    |            balances[_from] -= _amount;
  > |            allowed[_from][msg.sender] -= _amount;
    |            balances[_to] += _amount;
    |
  at /home/jiaming/mavs_srcs/contract@0x671db5c8db82bbeafcada319f2eef62a59da9a62.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'Etx':
    |      require((_amount == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |      allowed[msg.sender][_spender] = _amount;
    |      Approval(msg.sender, _spender, _amount);
    |      return true;
  at /home/jiaming/mavs_srcs/contract@0x671db5c8db82bbeafcada319f2eef62a59da9a62.sol(161)


