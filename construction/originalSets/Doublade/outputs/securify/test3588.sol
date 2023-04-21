Processing contract: /home/jiaming/mavs_srcs/contract@0xeb26aabaa5c231ce64e676bc25f82f4295615f88.sol:Airdrop
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xeb26aabaa5c231ce64e676bc25f82f4295615f88.sol:ERC20
[33mWarning[0m for LockedEther in contract 'Airdrop':
    | * @title Airdrop contract used to perform bulk transfers within a single transaction.
    | */
  > |contract Airdrop {
    |  address _owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xeb26aabaa5c231ce64e676bc25f82f4295615f88.sol(10)

[31mViolation[0m for MissingInputValidation in contract 'Airdrop':
    |  }
    |
  > |  function transferOwnership(address newOwner) public ownerOnly {
    |    _owner = newOwner;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xeb26aabaa5c231ce64e676bc25f82f4295615f88.sol(21)

[31mViolation[0m for MissingInputValidation in contract 'Airdrop':
    |   *                the index of recipients.
    |   */
  > |  function drop(address tokenContractAddress, address[] recipients, uint256[] amounts) public ownerOnly {
    |    require(tokenContractAddress != 0x0);
    |    require(recipients.length == amounts.length);
  at /home/jiaming/mavs_srcs/contract@0xeb26aabaa5c231ce64e676bc25f82f4295615f88.sol(36)

[33mWarning[0m for UnhandledException in contract 'Airdrop':
    |
    |    for (uint8 i = 0; i < recipients.length; i++) {
  > |      tokenContract.transfer(recipients[i], amounts[i]);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xeb26aabaa5c231ce64e676bc25f82f4295615f88.sol(44)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Airdrop':
    |
    |    for (uint8 i = 0; i < recipients.length; i++) {
  > |      tokenContract.transfer(recipients[i], amounts[i]);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xeb26aabaa5c231ce64e676bc25f82f4295615f88.sol(44)

[33mWarning[0m for UnrestrictedWrite in contract 'Airdrop':
    |
    |  function transferOwnership(address newOwner) public ownerOnly {
  > |    _owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xeb26aabaa5c231ce64e676bc25f82f4295615f88.sol(22)


