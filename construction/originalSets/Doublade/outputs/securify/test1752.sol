Processing contract: /home/jiaming/mavs_srcs/contract@0x6f5ac0ad55a612ea106c07d0cd6f5b84ade69ba3.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x6f5ac0ad55a612ea106c07d0cd6f5b84ade69ba3.sol:TokenAdder
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6f5ac0ad55a612ea106c07d0cd6f5b84ade69ba3.sol:TokenConfigInterface
[31mViolation[0m for LockedEther in contract 'TokenAdder':
    |
    |
  > |contract TokenAdder {
    |    TokenConfigInterface public network;
    |    TokenConfigInterface public reserve;
  at /home/jiaming/mavs_srcs/contract@0x6f5ac0ad55a612ea106c07d0cd6f5b84ade69ba3.sol(51)

[33mWarning[0m for UnhandledException in contract 'TokenAdder':
    |
    |    function setStepFunctions() public {
  > |        address orgAdmin = conversionRate.admin();
    |        conversionRate.claimAdmin();
    |
  at /home/jiaming/mavs_srcs/contract@0x6f5ac0ad55a612ea106c07d0cd6f5b84ade69ba3.sol(123)

[33mWarning[0m for UnhandledException in contract 'TokenAdder':
    |    function setStepFunctions() public {
    |        address orgAdmin = conversionRate.admin();
  > |        conversionRate.claimAdmin();
    |
    |        conversionRate.addOperator(address(this));
  at /home/jiaming/mavs_srcs/contract@0x6f5ac0ad55a612ea106c07d0cd6f5b84ade69ba3.sol(124)

[33mWarning[0m for UnhandledException in contract 'TokenAdder':
    |        conversionRate.claimAdmin();
    |
  > |        conversionRate.addOperator(address(this));
    |
    |        zeroArray.length = 0;
  at /home/jiaming/mavs_srcs/contract@0x6f5ac0ad55a612ea106c07d0cd6f5b84ade69ba3.sol(126)

[33mWarning[0m for UnhandledException in contract 'TokenAdder':
    |
    |        for( uint i = 0 ; i < newTokens.length ; i++ ) {
  > |            conversionRate.setQtyStepFunction(ERC20(newTokens[i]),
    |                                              zeroArray,
    |                                              zeroArray,
  at /home/jiaming/mavs_srcs/contract@0x6f5ac0ad55a612ea106c07d0cd6f5b84ade69ba3.sol(132)

[33mWarning[0m for UnhandledException in contract 'TokenAdder':
    |                                              zeroArray);
    |
  > |            conversionRate.setImbalanceStepFunction(ERC20(newTokens[i]),
    |                                              zeroArray,
    |                                              zeroArray,
  at /home/jiaming/mavs_srcs/contract@0x6f5ac0ad55a612ea106c07d0cd6f5b84ade69ba3.sol(138)

[33mWarning[0m for UnhandledException in contract 'TokenAdder':
    |
    |
  > |        conversionRate.removeOperator(address(this));
    |
    |        conversionRate.transferAdminQuickly(orgAdmin);
  at /home/jiaming/mavs_srcs/contract@0x6f5ac0ad55a612ea106c07d0cd6f5b84ade69ba3.sol(146)

[33mWarning[0m for UnhandledException in contract 'TokenAdder':
    |        conversionRate.removeOperator(address(this));
    |
  > |        conversionRate.transferAdminQuickly(orgAdmin);
    |        require(orgAdmin == conversionRate.admin());
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6f5ac0ad55a612ea106c07d0cd6f5b84ade69ba3.sol(148)

[33mWarning[0m for UnhandledException in contract 'TokenAdder':
    |
    |        conversionRate.transferAdminQuickly(orgAdmin);
  > |        require(orgAdmin == conversionRate.admin());
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6f5ac0ad55a612ea106c07d0cd6f5b84ade69ba3.sol(149)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenAdder':
    |
    |    function setStepFunctions() public {
  > |        address orgAdmin = conversionRate.admin();
    |        conversionRate.claimAdmin();
    |
  at /home/jiaming/mavs_srcs/contract@0x6f5ac0ad55a612ea106c07d0cd6f5b84ade69ba3.sol(123)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenAdder':
    |    function setStepFunctions() public {
    |        address orgAdmin = conversionRate.admin();
  > |        conversionRate.claimAdmin();
    |
    |        conversionRate.addOperator(address(this));
  at /home/jiaming/mavs_srcs/contract@0x6f5ac0ad55a612ea106c07d0cd6f5b84ade69ba3.sol(124)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenAdder':
    |        conversionRate.claimAdmin();
    |
  > |        conversionRate.addOperator(address(this));
    |
    |        zeroArray.length = 0;
  at /home/jiaming/mavs_srcs/contract@0x6f5ac0ad55a612ea106c07d0cd6f5b84ade69ba3.sol(126)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenAdder':
    |
    |        for( uint i = 0 ; i < newTokens.length ; i++ ) {
  > |            conversionRate.setQtyStepFunction(ERC20(newTokens[i]),
    |                                              zeroArray,
    |                                              zeroArray,
  at /home/jiaming/mavs_srcs/contract@0x6f5ac0ad55a612ea106c07d0cd6f5b84ade69ba3.sol(132)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenAdder':
    |                                              zeroArray);
    |
  > |            conversionRate.setImbalanceStepFunction(ERC20(newTokens[i]),
    |                                              zeroArray,
    |                                              zeroArray,
  at /home/jiaming/mavs_srcs/contract@0x6f5ac0ad55a612ea106c07d0cd6f5b84ade69ba3.sol(138)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenAdder':
    |
    |
  > |        conversionRate.removeOperator(address(this));
    |
    |        conversionRate.transferAdminQuickly(orgAdmin);
  at /home/jiaming/mavs_srcs/contract@0x6f5ac0ad55a612ea106c07d0cd6f5b84ade69ba3.sol(146)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenAdder':
    |        conversionRate.removeOperator(address(this));
    |
  > |        conversionRate.transferAdminQuickly(orgAdmin);
    |        require(orgAdmin == conversionRate.admin());
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6f5ac0ad55a612ea106c07d0cd6f5b84ade69ba3.sol(148)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenAdder':
    |
    |        conversionRate.transferAdminQuickly(orgAdmin);
  > |        require(orgAdmin == conversionRate.admin());
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6f5ac0ad55a612ea106c07d0cd6f5b84ade69ba3.sol(149)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenAdder':
    |
    |
  > |interface ERC20 {
    |    function transferFrom(address _from, address _to, uint _value) public returns (bool success);
    |}
  at /home/jiaming/mavs_srcs/contract@0x6f5ac0ad55a612ea106c07d0cd6f5b84ade69ba3.sol(4)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenAdder':
    |
    |
  > |contract TokenAdder {
    |    TokenConfigInterface public network;
    |    TokenConfigInterface public reserve;
  at /home/jiaming/mavs_srcs/contract@0x6f5ac0ad55a612ea106c07d0cd6f5b84ade69ba3.sol(51)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenAdder':
    |
    |        zeroArray.length = 0;
  > |        zeroArray.push(int(0));
    |
    |        for( uint i = 0 ; i < newTokens.length ; i++ ) {
  at /home/jiaming/mavs_srcs/contract@0x6f5ac0ad55a612ea106c07d0cd6f5b84ade69ba3.sol(129)


