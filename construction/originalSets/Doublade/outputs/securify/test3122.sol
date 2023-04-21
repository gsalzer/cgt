Processing contract: /home/jiaming/mavs_srcs/contract@0xcc80fc341c179cb2995cde8db258d713f40c6f9c.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xcc80fc341c179cb2995cde8db258d713f40c6f9c.sol:Mengudara
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Mengudara':
    |}
    |
  > |contract Mengudara {
    |  function drop(ERC20 token, address[] recipients, uint256[] values) public {
    |    for (uint256 i = 0; i < recipients.length; i++) {
  at /home/jiaming/mavs_srcs/contract@0xcc80fc341c179cb2995cde8db258d713f40c6f9c.sol(7)

[33mWarning[0m for UnhandledException in contract 'Mengudara':
    |  function drop(ERC20 token, address[] recipients, uint256[] values) public {
    |    for (uint256 i = 0; i < recipients.length; i++) {
  > |      token.transfer(recipients[i], values[i]);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xcc80fc341c179cb2995cde8db258d713f40c6f9c.sol(10)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Mengudara':
    |  function drop(ERC20 token, address[] recipients, uint256[] values) public {
    |    for (uint256 i = 0; i < recipients.length; i++) {
  > |      token.transfer(recipients[i], values[i]);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xcc80fc341c179cb2995cde8db258d713f40c6f9c.sol(10)


