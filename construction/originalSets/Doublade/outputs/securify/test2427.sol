Processing contract: /home/jiaming/mavs_srcs/contract@0x9dc6c56296e91466fc12d31a694639699e4c37e5.sol:DSToken
Processing contract: /home/jiaming/mavs_srcs/contract@0x9dc6c56296e91466fc12d31a694639699e4c37e5.sol:GemPit
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'GemPit':
    |}
    |
  > |contract GemPit {
    |    function burn(DSToken gem) public {
    |        gem.burn(gem.balanceOf(this));
  at /home/jiaming/mavs_srcs/contract@0x9dc6c56296e91466fc12d31a694639699e4c37e5.sol(33)

[33mWarning[0m for MissingInputValidation in contract 'GemPit':
    |
    |contract GemPit {
  > |    function burn(DSToken gem) public {
    |        gem.burn(gem.balanceOf(this));
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9dc6c56296e91466fc12d31a694639699e4c37e5.sol(34)

[33mWarning[0m for UnhandledException in contract 'GemPit':
    |contract GemPit {
    |    function burn(DSToken gem) public {
  > |        gem.burn(gem.balanceOf(this));
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x9dc6c56296e91466fc12d31a694639699e4c37e5.sol(35)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GemPit':
    |contract GemPit {
    |    function burn(DSToken gem) public {
  > |        gem.burn(gem.balanceOf(this));
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x9dc6c56296e91466fc12d31a694639699e4c37e5.sol(35)


