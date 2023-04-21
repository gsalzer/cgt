Processing contract: /home/jiaming/mavs_srcs/contract@0xb2dc7fb6f9ce38ccce3c75574639088542cdb66f.sol:theCyberClubhouse
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'theCyberClubhouse':
    |
    |
  > |contract theCyberClubhouse {
    |  // This is an example contract that will inform a dapp whether or not to
    |  // provide admission to some area based on membership in theCyber, or at least
  at /home/jiaming/mavs_srcs/contract@0xb2dc7fb6f9ce38ccce3c75574639088542cdb66f.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'theCyberClubhouse':
    |
    |  // This function is called by the `passMessage` method from theCyber contract.
  > |  function theCyberMessage(string _passphrase) public membersOnly {
    |    // Log the message that will grant admission into the clubhouse or event.
    |    GrantAdmission(_passphrase);
  at /home/jiaming/mavs_srcs/contract@0xb2dc7fb6f9ce38ccce3c75574639088542cdb66f.sol(23)


