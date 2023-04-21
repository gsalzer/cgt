Processing contract: /home/jiaming/mavs_srcs/contract@0xf163484a4b2c32e68b991bc45d7e7fa8c6c596c5.sol:Token
Processing contract: /home/jiaming/mavs_srcs/contract@0xf163484a4b2c32e68b991bc45d7e7fa8c6c596c5.sol:Vault
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Vault':
    |}
    |
  > |contract Vault {
    |    Token constant public token = Token(0xa645264C5603E96c3b0B078cdab68733794B0A71);
    |    address constant public recipient = 0x002AE208AD6064F75Fa78e7bbeF9B12DB850f559;
  at /home/jiaming/mavs_srcs/contract@0xf163484a4b2c32e68b991bc45d7e7fa8c6c596c5.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'Vault':
    |
    |contract Vault {
  > |    Token constant public token = Token(0xa645264C5603E96c3b0B078cdab68733794B0A71);
    |    address constant public recipient = 0x002AE208AD6064F75Fa78e7bbeF9B12DB850f559;
    |    // UNIX timestamp
  at /home/jiaming/mavs_srcs/contract@0xf163484a4b2c32e68b991bc45d7e7fa8c6c596c5.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'Vault':
    |contract Vault {
    |    Token constant public token = Token(0xa645264C5603E96c3b0B078cdab68733794B0A71);
  > |    address constant public recipient = 0x002AE208AD6064F75Fa78e7bbeF9B12DB850f559;
    |    // UNIX timestamp
    |    uint constant public unlockedAt = 1528397739;
  at /home/jiaming/mavs_srcs/contract@0xf163484a4b2c32e68b991bc45d7e7fa8c6c596c5.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'Vault':
    |    address constant public recipient = 0x002AE208AD6064F75Fa78e7bbeF9B12DB850f559;
    |    // UNIX timestamp
  > |    uint constant public unlockedAt = 1528397739;
    |    
    |    function unlock() public {
  at /home/jiaming/mavs_srcs/contract@0xf163484a4b2c32e68b991bc45d7e7fa8c6c596c5.sol(12)

[33mWarning[0m for MissingInputValidation in contract 'Vault':
    |    uint constant public unlockedAt = 1528397739;
    |    
  > |    function unlock() public {
    |        require(now > unlockedAt);
    |        uint vaultBalance = token.balanceOf(address(this));
  at /home/jiaming/mavs_srcs/contract@0xf163484a4b2c32e68b991bc45d7e7fa8c6c596c5.sol(14)

[33mWarning[0m for UnhandledException in contract 'Vault':
    |    function unlock() public {
    |        require(now > unlockedAt);
  > |        uint vaultBalance = token.balanceOf(address(this));
    |        token.transfer(recipient, vaultBalance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf163484a4b2c32e68b991bc45d7e7fa8c6c596c5.sol(16)

[33mWarning[0m for UnhandledException in contract 'Vault':
    |        require(now > unlockedAt);
    |        uint vaultBalance = token.balanceOf(address(this));
  > |        token.transfer(recipient, vaultBalance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xf163484a4b2c32e68b991bc45d7e7fa8c6c596c5.sol(17)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Vault':
    |    function unlock() public {
    |        require(now > unlockedAt);
  > |        uint vaultBalance = token.balanceOf(address(this));
    |        token.transfer(recipient, vaultBalance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf163484a4b2c32e68b991bc45d7e7fa8c6c596c5.sol(16)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Vault':
    |        require(now > unlockedAt);
    |        uint vaultBalance = token.balanceOf(address(this));
  > |        token.transfer(recipient, vaultBalance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xf163484a4b2c32e68b991bc45d7e7fa8c6c596c5.sol(17)


