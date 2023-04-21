Processing contract: /home/jiaming/mavs_srcs/contract@0x85bb5ed8bff03ae5dfd5c173ee0874e2070b151a.sol:Token
Processing contract: /home/jiaming/mavs_srcs/contract@0x85bb5ed8bff03ae5dfd5c173ee0874e2070b151a.sol:Vault
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Vault':
    |}
    |
  > |contract Vault {
    |    Token constant public token = Token(0xa645264C5603E96c3b0B078cdab68733794B0A71);
    |    address constant public recipient = address(0x70f7F70E3E7497a2dbEA5a47010010be447483b9);
  at /home/jiaming/mavs_srcs/contract@0x85bb5ed8bff03ae5dfd5c173ee0874e2070b151a.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'Vault':
    |
    |contract Vault {
  > |    Token constant public token = Token(0xa645264C5603E96c3b0B078cdab68733794B0A71);
    |    address constant public recipient = address(0x70f7F70E3E7497a2dbEA5a47010010be447483b9);
    |    // UNIX timestamp
  at /home/jiaming/mavs_srcs/contract@0x85bb5ed8bff03ae5dfd5c173ee0874e2070b151a.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'Vault':
    |contract Vault {
    |    Token constant public token = Token(0xa645264C5603E96c3b0B078cdab68733794B0A71);
  > |    address constant public recipient = address(0x70f7F70E3E7497a2dbEA5a47010010be447483b9);
    |    // UNIX timestamp
    |    uint256 constant public unlockedAt = 1515600000;
  at /home/jiaming/mavs_srcs/contract@0x85bb5ed8bff03ae5dfd5c173ee0874e2070b151a.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'Vault':
    |    address constant public recipient = address(0x70f7F70E3E7497a2dbEA5a47010010be447483b9);
    |    // UNIX timestamp
  > |    uint256 constant public unlockedAt = 1515600000;
    |    
    |    function unlock() public {
  at /home/jiaming/mavs_srcs/contract@0x85bb5ed8bff03ae5dfd5c173ee0874e2070b151a.sol(12)

[33mWarning[0m for MissingInputValidation in contract 'Vault':
    |    uint256 constant public unlockedAt = 1515600000;
    |    
  > |    function unlock() public {
    |        if (now < unlockedAt) throw;
    |        uint vaultBalance = token.balanceOf(address(this));
  at /home/jiaming/mavs_srcs/contract@0x85bb5ed8bff03ae5dfd5c173ee0874e2070b151a.sol(14)

[33mWarning[0m for UnhandledException in contract 'Vault':
    |    function unlock() public {
    |        if (now < unlockedAt) throw;
  > |        uint vaultBalance = token.balanceOf(address(this));
    |        if (!token.transfer(recipient, vaultBalance)) throw;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x85bb5ed8bff03ae5dfd5c173ee0874e2070b151a.sol(16)

[33mWarning[0m for UnhandledException in contract 'Vault':
    |        if (now < unlockedAt) throw;
    |        uint vaultBalance = token.balanceOf(address(this));
  > |        if (!token.transfer(recipient, vaultBalance)) throw;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x85bb5ed8bff03ae5dfd5c173ee0874e2070b151a.sol(17)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Vault':
    |    function unlock() public {
    |        if (now < unlockedAt) throw;
  > |        uint vaultBalance = token.balanceOf(address(this));
    |        if (!token.transfer(recipient, vaultBalance)) throw;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x85bb5ed8bff03ae5dfd5c173ee0874e2070b151a.sol(16)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Vault':
    |        if (now < unlockedAt) throw;
    |        uint vaultBalance = token.balanceOf(address(this));
  > |        if (!token.transfer(recipient, vaultBalance)) throw;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x85bb5ed8bff03ae5dfd5c173ee0874e2070b151a.sol(17)


