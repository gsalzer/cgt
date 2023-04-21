Processing contract: /home/jiaming/mavs_srcs/contract@0x3d5422d4b9396c72217fa3a02b8b95d3e030e89c.sol:SponsorHelper
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3d5422d4b9396c72217fa3a02b8b95d3e030e89c.sol:TrueUSD
[33mWarning[0m for LockedEther in contract 'SponsorHelper':
    |}
    |
  > |contract SponsorHelper {
    |    TrueUSD public trueUSD = TrueUSD(0x0000000000085d4780B73119b644AE5ecd22b376);
    |    
  at /home/jiaming/mavs_srcs/contract@0x3d5422d4b9396c72217fa3a02b8b95d3e030e89c.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'SponsorHelper':
    |
    |contract SponsorHelper {
  > |    TrueUSD public trueUSD = TrueUSD(0x0000000000085d4780B73119b644AE5ecd22b376);
    |    
    |    function sponsorGas() external {
  at /home/jiaming/mavs_srcs/contract@0x3d5422d4b9396c72217fa3a02b8b95d3e030e89c.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'SponsorHelper':
    |    TrueUSD public trueUSD = TrueUSD(0x0000000000085d4780B73119b644AE5ecd22b376);
    |    
  > |    function sponsorGas() external {
    |        trueUSD.sponsorGas();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3d5422d4b9396c72217fa3a02b8b95d3e030e89c.sol(10)

[33mWarning[0m for UnhandledException in contract 'SponsorHelper':
    |    
    |    function sponsorGas() external {
  > |        trueUSD.sponsorGas();
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x3d5422d4b9396c72217fa3a02b8b95d3e030e89c.sol(11)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SponsorHelper':
    |    
    |    function sponsorGas() external {
  > |        trueUSD.sponsorGas();
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x3d5422d4b9396c72217fa3a02b8b95d3e030e89c.sol(11)


