Processing contract: /home/jiaming/mavs_srcs/contract@0xeda1f34d74a750daa982653bc43914a2ea7b96df.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xeda1f34d74a750daa982653bc43914a2ea7b96df.sol:TokenAdder
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xeda1f34d74a750daa982653bc43914a2ea7b96df.sol:TokenConfigInterface
[31mViolation[0m for LockedEther in contract 'TokenAdder':
    |
    |
  > |contract TokenAdder {
    |    TokenConfigInterface public network;
    |    TokenConfigInterface public reserve;
  at /home/jiaming/mavs_srcs/contract@0xeda1f34d74a750daa982653bc43914a2ea7b96df.sol(48)

[33mWarning[0m for UnhandledException in contract 'TokenAdder':
    |
    |    function listPairs() public {
  > |        address orgAdmin = network.admin();
    |        network.claimAdmin();
    |
  at /home/jiaming/mavs_srcs/contract@0xeda1f34d74a750daa982653bc43914a2ea7b96df.sol(91)

[33mWarning[0m for UnhandledException in contract 'TokenAdder':
    |    function listPairs() public {
    |        address orgAdmin = network.admin();
  > |        network.claimAdmin();
    |
    |        for( uint i = 0 ; i < newTokens.length ; i++ ) {
  at /home/jiaming/mavs_srcs/contract@0xeda1f34d74a750daa982653bc43914a2ea7b96df.sol(92)

[33mWarning[0m for UnhandledException in contract 'TokenAdder':
    |
    |        for( uint i = 0 ; i < newTokens.length ; i++ ) {
  > |            network.listPairForReserve(reserve,ETH,newTokens[i],true);
    |            network.listPairForReserve(reserve,newTokens[i],ETH,true);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xeda1f34d74a750daa982653bc43914a2ea7b96df.sol(95)

[33mWarning[0m for UnhandledException in contract 'TokenAdder':
    |        for( uint i = 0 ; i < newTokens.length ; i++ ) {
    |            network.listPairForReserve(reserve,ETH,newTokens[i],true);
  > |            network.listPairForReserve(reserve,newTokens[i],ETH,true);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0xeda1f34d74a750daa982653bc43914a2ea7b96df.sol(96)

[33mWarning[0m for UnhandledException in contract 'TokenAdder':
    |        }
    |
  > |        network.transferAdminQuickly(orgAdmin);
    |        require(orgAdmin == network.admin());
    |    }
  at /home/jiaming/mavs_srcs/contract@0xeda1f34d74a750daa982653bc43914a2ea7b96df.sol(99)

[33mWarning[0m for UnhandledException in contract 'TokenAdder':
    |
    |        network.transferAdminQuickly(orgAdmin);
  > |        require(orgAdmin == network.admin());
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xeda1f34d74a750daa982653bc43914a2ea7b96df.sol(100)

[33mWarning[0m for UnhandledException in contract 'TokenAdder':
    |
    |    function approveWithdrawAddress() public {
  > |        address orgAdmin = reserve.admin();
    |        reserve.claimAdmin();
    |
  at /home/jiaming/mavs_srcs/contract@0xeda1f34d74a750daa982653bc43914a2ea7b96df.sol(104)

[33mWarning[0m for UnhandledException in contract 'TokenAdder':
    |    function approveWithdrawAddress() public {
    |        address orgAdmin = reserve.admin();
  > |        reserve.claimAdmin();
    |
    |        for( uint i = 0 ; i < newTokens.length ; i++ ) {
  at /home/jiaming/mavs_srcs/contract@0xeda1f34d74a750daa982653bc43914a2ea7b96df.sol(105)

[33mWarning[0m for UnhandledException in contract 'TokenAdder':
    |
    |        for( uint i = 0 ; i < newTokens.length ; i++ ) {
  > |            reserve.approveWithdrawAddress(newTokens[i], withdrawAddress, true);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0xeda1f34d74a750daa982653bc43914a2ea7b96df.sol(108)

[33mWarning[0m for UnhandledException in contract 'TokenAdder':
    |
    |
  > |        reserve.transferAdminQuickly(orgAdmin);
    |        require(orgAdmin == reserve.admin());
    |    }
  at /home/jiaming/mavs_srcs/contract@0xeda1f34d74a750daa982653bc43914a2ea7b96df.sol(112)

[33mWarning[0m for UnhandledException in contract 'TokenAdder':
    |
    |        reserve.transferAdminQuickly(orgAdmin);
  > |        require(orgAdmin == reserve.admin());
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xeda1f34d74a750daa982653bc43914a2ea7b96df.sol(113)

[33mWarning[0m for UnhandledException in contract 'TokenAdder':
    |
    |    function addTokens() public {
  > |        address orgAdmin = conversionRate.admin();
    |        conversionRate.claimAdmin();
    |
  at /home/jiaming/mavs_srcs/contract@0xeda1f34d74a750daa982653bc43914a2ea7b96df.sol(117)

[33mWarning[0m for UnhandledException in contract 'TokenAdder':
    |    function addTokens() public {
    |        address orgAdmin = conversionRate.admin();
  > |        conversionRate.claimAdmin();
    |
    |        conversionRate.setTokenControlInfo(
  at /home/jiaming/mavs_srcs/contract@0xeda1f34d74a750daa982653bc43914a2ea7b96df.sol(118)

[33mWarning[0m for UnhandledException in contract 'TokenAdder':
    |        conversionRate.claimAdmin();
    |
  > |        conversionRate.setTokenControlInfo(
    |            RDN,
    |            1000000000000000,
  at /home/jiaming/mavs_srcs/contract@0xeda1f34d74a750daa982653bc43914a2ea7b96df.sol(120)

[33mWarning[0m for UnhandledException in contract 'TokenAdder':
    |            3001716436034787475456 );
    |
  > |        conversionRate.setTokenControlInfo(
    |            APPC,
    |            1000000000000000,
  at /home/jiaming/mavs_srcs/contract@0xeda1f34d74a750daa982653bc43914a2ea7b96df.sol(126)

[33mWarning[0m for UnhandledException in contract 'TokenAdder':
    |            11430352782251779948544 );
    |
  > |        conversionRate.setTokenControlInfo(
    |            ENG,
    |            10000,
  at /home/jiaming/mavs_srcs/contract@0xeda1f34d74a750daa982653bc43914a2ea7b96df.sol(132)

[33mWarning[0m for UnhandledException in contract 'TokenAdder':
    |            335950694654 );
    |
  > |        conversionRate.setTokenControlInfo(
    |            SALT,
    |            10000,
  at /home/jiaming/mavs_srcs/contract@0xeda1f34d74a750daa982653bc43914a2ea7b96df.sol(138)

[33mWarning[0m for UnhandledException in contract 'TokenAdder':
    |        zeroArray.push(int(0));
    |        for( uint i = 0 ; i < newTokens.length ; i++ ) {
  > |            conversionRate.addToken(newTokens[i]);
    |            conversionRate.enableTokenTrade(newTokens[i]);
    |/*
  at /home/jiaming/mavs_srcs/contract@0xeda1f34d74a750daa982653bc43914a2ea7b96df.sol(147)

[33mWarning[0m for UnhandledException in contract 'TokenAdder':
    |        for( uint i = 0 ; i < newTokens.length ; i++ ) {
    |            conversionRate.addToken(newTokens[i]);
  > |            conversionRate.enableTokenTrade(newTokens[i]);
    |/*
    |            conversionRate.setQtyStepFunction(ERC20(newTokens[i]),
  at /home/jiaming/mavs_srcs/contract@0xeda1f34d74a750daa982653bc43914a2ea7b96df.sol(148)

[33mWarning[0m for UnhandledException in contract 'TokenAdder':
    |        }
    |
  > |        conversionRate.transferAdminQuickly(orgAdmin);
    |        require(orgAdmin == conversionRate.admin());
    |    }
  at /home/jiaming/mavs_srcs/contract@0xeda1f34d74a750daa982653bc43914a2ea7b96df.sol(164)

[33mWarning[0m for UnhandledException in contract 'TokenAdder':
    |
    |        conversionRate.transferAdminQuickly(orgAdmin);
  > |        require(orgAdmin == conversionRate.admin());
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xeda1f34d74a750daa982653bc43914a2ea7b96df.sol(165)

[33mWarning[0m for UnhandledException in contract 'TokenAdder':
    |
    |    function tranferToReserve() public {
  > |        ENG.transferFrom(multisigAddress,reserve,790805150356);
    |        RDN.transferFrom(multisigAddress,reserve,5991690723304920842240);
    |        APPC.transferFrom(multisigAddress,reserve,28294946522551069704192);
  at /home/jiaming/mavs_srcs/contract@0xeda1f34d74a750daa982653bc43914a2ea7b96df.sol(169)

[33mWarning[0m for UnhandledException in contract 'TokenAdder':
    |    function tranferToReserve() public {
    |        ENG.transferFrom(multisigAddress,reserve,790805150356);
  > |        RDN.transferFrom(multisigAddress,reserve,5991690723304920842240);
    |        APPC.transferFrom(multisigAddress,reserve,28294946522551069704192);
    |        SALT.transferFrom(multisigAddress,reserve,512404807997);
  at /home/jiaming/mavs_srcs/contract@0xeda1f34d74a750daa982653bc43914a2ea7b96df.sol(170)

[33mWarning[0m for UnhandledException in contract 'TokenAdder':
    |        ENG.transferFrom(multisigAddress,reserve,790805150356);
    |        RDN.transferFrom(multisigAddress,reserve,5991690723304920842240);
  > |        APPC.transferFrom(multisigAddress,reserve,28294946522551069704192);
    |        SALT.transferFrom(multisigAddress,reserve,512404807997);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xeda1f34d74a750daa982653bc43914a2ea7b96df.sol(171)

[33mWarning[0m for UnhandledException in contract 'TokenAdder':
    |        RDN.transferFrom(multisigAddress,reserve,5991690723304920842240);
    |        APPC.transferFrom(multisigAddress,reserve,28294946522551069704192);
  > |        SALT.transferFrom(multisigAddress,reserve,512404807997);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xeda1f34d74a750daa982653bc43914a2ea7b96df.sol(172)

[33mWarning[0m for UnhandledException in contract 'TokenAdder':
    |
    |    function withdrawToMultisig() public {
  > |        address orgAdmin = reserve.admin();
    |        reserve.claimAdmin();
    |
  at /home/jiaming/mavs_srcs/contract@0xeda1f34d74a750daa982653bc43914a2ea7b96df.sol(176)

[33mWarning[0m for UnhandledException in contract 'TokenAdder':
    |    function withdrawToMultisig() public {
    |        address orgAdmin = reserve.admin();
  > |        reserve.claimAdmin();
    |
    |        reserve.withdrawToken(OMG,579712353000204795904,multisigAddress);
  at /home/jiaming/mavs_srcs/contract@0xeda1f34d74a750daa982653bc43914a2ea7b96df.sol(177)

[33mWarning[0m for UnhandledException in contract 'TokenAdder':
    |        reserve.claimAdmin();
    |
  > |        reserve.withdrawToken(OMG,579712353000204795904,multisigAddress);
    |        //reserve.withdrawToken(KNC,0,multisigAddress);
    |        reserve.withdrawToken(EOS,404333617684274479104,multisigAddress);
  at /home/jiaming/mavs_srcs/contract@0xeda1f34d74a750daa982653bc43914a2ea7b96df.sol(179)

[33mWarning[0m for UnhandledException in contract 'TokenAdder':
    |        reserve.withdrawToken(OMG,579712353000204795904,multisigAddress);
    |        //reserve.withdrawToken(KNC,0,multisigAddress);
  > |        reserve.withdrawToken(EOS,404333617684274479104,multisigAddress);
    |        //reserve.withdrawToken(SNT,0,multisigAddress);
    |        reserve.withdrawToken(ELF,2851672250969491505152,multisigAddress);
  at /home/jiaming/mavs_srcs/contract@0xeda1f34d74a750daa982653bc43914a2ea7b96df.sol(181)

[33mWarning[0m for UnhandledException in contract 'TokenAdder':
    |        reserve.withdrawToken(EOS,404333617684274479104,multisigAddress);
    |        //reserve.withdrawToken(SNT,0,multisigAddress);
  > |        reserve.withdrawToken(ELF,2851672250969491505152,multisigAddress);
    |        //reserve.withdrawToken(POWR,0,multisigAddress);
    |        reserve.withdrawToken(MANA,18906283885644627312640,multisigAddress);
  at /home/jiaming/mavs_srcs/contract@0xeda1f34d74a750daa982653bc43914a2ea7b96df.sol(183)

[33mWarning[0m for UnhandledException in contract 'TokenAdder':
    |        reserve.withdrawToken(ELF,2851672250969491505152,multisigAddress);
    |        //reserve.withdrawToken(POWR,0,multisigAddress);
  > |        reserve.withdrawToken(MANA,18906283885644627312640,multisigAddress);
    |        reserve.withdrawToken(BAT,5034264918417995726848,multisigAddress);
    |        reserve.withdrawToken(REQ,6848892587322741096448,multisigAddress);
  at /home/jiaming/mavs_srcs/contract@0xeda1f34d74a750daa982653bc43914a2ea7b96df.sol(185)

[33mWarning[0m for UnhandledException in contract 'TokenAdder':
    |        //reserve.withdrawToken(POWR,0,multisigAddress);
    |        reserve.withdrawToken(MANA,18906283885644627312640,multisigAddress);
  > |        reserve.withdrawToken(BAT,5034264918417995726848,multisigAddress);
    |        reserve.withdrawToken(REQ,6848892587322741096448,multisigAddress);
    |        reserve.withdrawToken(GTO,3232686829,multisigAddress);
  at /home/jiaming/mavs_srcs/contract@0xeda1f34d74a750daa982653bc43914a2ea7b96df.sol(186)

[33mWarning[0m for UnhandledException in contract 'TokenAdder':
    |        reserve.withdrawToken(MANA,18906283885644627312640,multisigAddress);
    |        reserve.withdrawToken(BAT,5034264918417995726848,multisigAddress);
  > |        reserve.withdrawToken(REQ,6848892587322741096448,multisigAddress);
    |        reserve.withdrawToken(GTO,3232686829,multisigAddress);
    |
  at /home/jiaming/mavs_srcs/contract@0xeda1f34d74a750daa982653bc43914a2ea7b96df.sol(187)

[33mWarning[0m for UnhandledException in contract 'TokenAdder':
    |        reserve.withdrawToken(BAT,5034264918417995726848,multisigAddress);
    |        reserve.withdrawToken(REQ,6848892587322741096448,multisigAddress);
  > |        reserve.withdrawToken(GTO,3232686829,multisigAddress);
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xeda1f34d74a750daa982653bc43914a2ea7b96df.sol(188)

[33mWarning[0m for UnhandledException in contract 'TokenAdder':
    |
    |
  > |        reserve.transferAdminQuickly(orgAdmin);
    |        require(orgAdmin == reserve.admin());
    |    }
  at /home/jiaming/mavs_srcs/contract@0xeda1f34d74a750daa982653bc43914a2ea7b96df.sol(191)

[33mWarning[0m for UnhandledException in contract 'TokenAdder':
    |
    |        reserve.transferAdminQuickly(orgAdmin);
  > |        require(orgAdmin == reserve.admin());
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xeda1f34d74a750daa982653bc43914a2ea7b96df.sol(192)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenAdder':
    |
    |    function listPairs() public {
  > |        address orgAdmin = network.admin();
    |        network.claimAdmin();
    |
  at /home/jiaming/mavs_srcs/contract@0xeda1f34d74a750daa982653bc43914a2ea7b96df.sol(91)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenAdder':
    |    function listPairs() public {
    |        address orgAdmin = network.admin();
  > |        network.claimAdmin();
    |
    |        for( uint i = 0 ; i < newTokens.length ; i++ ) {
  at /home/jiaming/mavs_srcs/contract@0xeda1f34d74a750daa982653bc43914a2ea7b96df.sol(92)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenAdder':
    |
    |        for( uint i = 0 ; i < newTokens.length ; i++ ) {
  > |            network.listPairForReserve(reserve,ETH,newTokens[i],true);
    |            network.listPairForReserve(reserve,newTokens[i],ETH,true);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xeda1f34d74a750daa982653bc43914a2ea7b96df.sol(95)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenAdder':
    |        for( uint i = 0 ; i < newTokens.length ; i++ ) {
    |            network.listPairForReserve(reserve,ETH,newTokens[i],true);
  > |            network.listPairForReserve(reserve,newTokens[i],ETH,true);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0xeda1f34d74a750daa982653bc43914a2ea7b96df.sol(96)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenAdder':
    |        }
    |
  > |        network.transferAdminQuickly(orgAdmin);
    |        require(orgAdmin == network.admin());
    |    }
  at /home/jiaming/mavs_srcs/contract@0xeda1f34d74a750daa982653bc43914a2ea7b96df.sol(99)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenAdder':
    |
    |        network.transferAdminQuickly(orgAdmin);
  > |        require(orgAdmin == network.admin());
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xeda1f34d74a750daa982653bc43914a2ea7b96df.sol(100)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenAdder':
    |
    |    function approveWithdrawAddress() public {
  > |        address orgAdmin = reserve.admin();
    |        reserve.claimAdmin();
    |
  at /home/jiaming/mavs_srcs/contract@0xeda1f34d74a750daa982653bc43914a2ea7b96df.sol(104)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenAdder':
    |    function approveWithdrawAddress() public {
    |        address orgAdmin = reserve.admin();
  > |        reserve.claimAdmin();
    |
    |        for( uint i = 0 ; i < newTokens.length ; i++ ) {
  at /home/jiaming/mavs_srcs/contract@0xeda1f34d74a750daa982653bc43914a2ea7b96df.sol(105)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenAdder':
    |
    |        for( uint i = 0 ; i < newTokens.length ; i++ ) {
  > |            reserve.approveWithdrawAddress(newTokens[i], withdrawAddress, true);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0xeda1f34d74a750daa982653bc43914a2ea7b96df.sol(108)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenAdder':
    |
    |
  > |        reserve.transferAdminQuickly(orgAdmin);
    |        require(orgAdmin == reserve.admin());
    |    }
  at /home/jiaming/mavs_srcs/contract@0xeda1f34d74a750daa982653bc43914a2ea7b96df.sol(112)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenAdder':
    |
    |        reserve.transferAdminQuickly(orgAdmin);
  > |        require(orgAdmin == reserve.admin());
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xeda1f34d74a750daa982653bc43914a2ea7b96df.sol(113)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenAdder':
    |
    |    function addTokens() public {
  > |        address orgAdmin = conversionRate.admin();
    |        conversionRate.claimAdmin();
    |
  at /home/jiaming/mavs_srcs/contract@0xeda1f34d74a750daa982653bc43914a2ea7b96df.sol(117)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenAdder':
    |    function addTokens() public {
    |        address orgAdmin = conversionRate.admin();
  > |        conversionRate.claimAdmin();
    |
    |        conversionRate.setTokenControlInfo(
  at /home/jiaming/mavs_srcs/contract@0xeda1f34d74a750daa982653bc43914a2ea7b96df.sol(118)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenAdder':
    |        conversionRate.claimAdmin();
    |
  > |        conversionRate.setTokenControlInfo(
    |            RDN,
    |            1000000000000000,
  at /home/jiaming/mavs_srcs/contract@0xeda1f34d74a750daa982653bc43914a2ea7b96df.sol(120)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenAdder':
    |            3001716436034787475456 );
    |
  > |        conversionRate.setTokenControlInfo(
    |            APPC,
    |            1000000000000000,
  at /home/jiaming/mavs_srcs/contract@0xeda1f34d74a750daa982653bc43914a2ea7b96df.sol(126)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenAdder':
    |            11430352782251779948544 );
    |
  > |        conversionRate.setTokenControlInfo(
    |            ENG,
    |            10000,
  at /home/jiaming/mavs_srcs/contract@0xeda1f34d74a750daa982653bc43914a2ea7b96df.sol(132)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenAdder':
    |            335950694654 );
    |
  > |        conversionRate.setTokenControlInfo(
    |            SALT,
    |            10000,
  at /home/jiaming/mavs_srcs/contract@0xeda1f34d74a750daa982653bc43914a2ea7b96df.sol(138)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenAdder':
    |        zeroArray.push(int(0));
    |        for( uint i = 0 ; i < newTokens.length ; i++ ) {
  > |            conversionRate.addToken(newTokens[i]);
    |            conversionRate.enableTokenTrade(newTokens[i]);
    |/*
  at /home/jiaming/mavs_srcs/contract@0xeda1f34d74a750daa982653bc43914a2ea7b96df.sol(147)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenAdder':
    |        for( uint i = 0 ; i < newTokens.length ; i++ ) {
    |            conversionRate.addToken(newTokens[i]);
  > |            conversionRate.enableTokenTrade(newTokens[i]);
    |/*
    |            conversionRate.setQtyStepFunction(ERC20(newTokens[i]),
  at /home/jiaming/mavs_srcs/contract@0xeda1f34d74a750daa982653bc43914a2ea7b96df.sol(148)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenAdder':
    |        }
    |
  > |        conversionRate.transferAdminQuickly(orgAdmin);
    |        require(orgAdmin == conversionRate.admin());
    |    }
  at /home/jiaming/mavs_srcs/contract@0xeda1f34d74a750daa982653bc43914a2ea7b96df.sol(164)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenAdder':
    |
    |        conversionRate.transferAdminQuickly(orgAdmin);
  > |        require(orgAdmin == conversionRate.admin());
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xeda1f34d74a750daa982653bc43914a2ea7b96df.sol(165)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenAdder':
    |
    |    function tranferToReserve() public {
  > |        ENG.transferFrom(multisigAddress,reserve,790805150356);
    |        RDN.transferFrom(multisigAddress,reserve,5991690723304920842240);
    |        APPC.transferFrom(multisigAddress,reserve,28294946522551069704192);
  at /home/jiaming/mavs_srcs/contract@0xeda1f34d74a750daa982653bc43914a2ea7b96df.sol(169)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenAdder':
    |    function tranferToReserve() public {
    |        ENG.transferFrom(multisigAddress,reserve,790805150356);
  > |        RDN.transferFrom(multisigAddress,reserve,5991690723304920842240);
    |        APPC.transferFrom(multisigAddress,reserve,28294946522551069704192);
    |        SALT.transferFrom(multisigAddress,reserve,512404807997);
  at /home/jiaming/mavs_srcs/contract@0xeda1f34d74a750daa982653bc43914a2ea7b96df.sol(170)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenAdder':
    |        ENG.transferFrom(multisigAddress,reserve,790805150356);
    |        RDN.transferFrom(multisigAddress,reserve,5991690723304920842240);
  > |        APPC.transferFrom(multisigAddress,reserve,28294946522551069704192);
    |        SALT.transferFrom(multisigAddress,reserve,512404807997);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xeda1f34d74a750daa982653bc43914a2ea7b96df.sol(171)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenAdder':
    |        RDN.transferFrom(multisigAddress,reserve,5991690723304920842240);
    |        APPC.transferFrom(multisigAddress,reserve,28294946522551069704192);
  > |        SALT.transferFrom(multisigAddress,reserve,512404807997);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xeda1f34d74a750daa982653bc43914a2ea7b96df.sol(172)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenAdder':
    |
    |    function withdrawToMultisig() public {
  > |        address orgAdmin = reserve.admin();
    |        reserve.claimAdmin();
    |
  at /home/jiaming/mavs_srcs/contract@0xeda1f34d74a750daa982653bc43914a2ea7b96df.sol(176)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenAdder':
    |    function withdrawToMultisig() public {
    |        address orgAdmin = reserve.admin();
  > |        reserve.claimAdmin();
    |
    |        reserve.withdrawToken(OMG,579712353000204795904,multisigAddress);
  at /home/jiaming/mavs_srcs/contract@0xeda1f34d74a750daa982653bc43914a2ea7b96df.sol(177)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenAdder':
    |        reserve.claimAdmin();
    |
  > |        reserve.withdrawToken(OMG,579712353000204795904,multisigAddress);
    |        //reserve.withdrawToken(KNC,0,multisigAddress);
    |        reserve.withdrawToken(EOS,404333617684274479104,multisigAddress);
  at /home/jiaming/mavs_srcs/contract@0xeda1f34d74a750daa982653bc43914a2ea7b96df.sol(179)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenAdder':
    |        reserve.withdrawToken(OMG,579712353000204795904,multisigAddress);
    |        //reserve.withdrawToken(KNC,0,multisigAddress);
  > |        reserve.withdrawToken(EOS,404333617684274479104,multisigAddress);
    |        //reserve.withdrawToken(SNT,0,multisigAddress);
    |        reserve.withdrawToken(ELF,2851672250969491505152,multisigAddress);
  at /home/jiaming/mavs_srcs/contract@0xeda1f34d74a750daa982653bc43914a2ea7b96df.sol(181)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenAdder':
    |        reserve.withdrawToken(EOS,404333617684274479104,multisigAddress);
    |        //reserve.withdrawToken(SNT,0,multisigAddress);
  > |        reserve.withdrawToken(ELF,2851672250969491505152,multisigAddress);
    |        //reserve.withdrawToken(POWR,0,multisigAddress);
    |        reserve.withdrawToken(MANA,18906283885644627312640,multisigAddress);
  at /home/jiaming/mavs_srcs/contract@0xeda1f34d74a750daa982653bc43914a2ea7b96df.sol(183)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenAdder':
    |        reserve.withdrawToken(ELF,2851672250969491505152,multisigAddress);
    |        //reserve.withdrawToken(POWR,0,multisigAddress);
  > |        reserve.withdrawToken(MANA,18906283885644627312640,multisigAddress);
    |        reserve.withdrawToken(BAT,5034264918417995726848,multisigAddress);
    |        reserve.withdrawToken(REQ,6848892587322741096448,multisigAddress);
  at /home/jiaming/mavs_srcs/contract@0xeda1f34d74a750daa982653bc43914a2ea7b96df.sol(185)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenAdder':
    |        //reserve.withdrawToken(POWR,0,multisigAddress);
    |        reserve.withdrawToken(MANA,18906283885644627312640,multisigAddress);
  > |        reserve.withdrawToken(BAT,5034264918417995726848,multisigAddress);
    |        reserve.withdrawToken(REQ,6848892587322741096448,multisigAddress);
    |        reserve.withdrawToken(GTO,3232686829,multisigAddress);
  at /home/jiaming/mavs_srcs/contract@0xeda1f34d74a750daa982653bc43914a2ea7b96df.sol(186)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenAdder':
    |        reserve.withdrawToken(MANA,18906283885644627312640,multisigAddress);
    |        reserve.withdrawToken(BAT,5034264918417995726848,multisigAddress);
  > |        reserve.withdrawToken(REQ,6848892587322741096448,multisigAddress);
    |        reserve.withdrawToken(GTO,3232686829,multisigAddress);
    |
  at /home/jiaming/mavs_srcs/contract@0xeda1f34d74a750daa982653bc43914a2ea7b96df.sol(187)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenAdder':
    |        reserve.withdrawToken(BAT,5034264918417995726848,multisigAddress);
    |        reserve.withdrawToken(REQ,6848892587322741096448,multisigAddress);
  > |        reserve.withdrawToken(GTO,3232686829,multisigAddress);
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xeda1f34d74a750daa982653bc43914a2ea7b96df.sol(188)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenAdder':
    |
    |
  > |        reserve.transferAdminQuickly(orgAdmin);
    |        require(orgAdmin == reserve.admin());
    |    }
  at /home/jiaming/mavs_srcs/contract@0xeda1f34d74a750daa982653bc43914a2ea7b96df.sol(191)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenAdder':
    |
    |        reserve.transferAdminQuickly(orgAdmin);
  > |        require(orgAdmin == reserve.admin());
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xeda1f34d74a750daa982653bc43914a2ea7b96df.sol(192)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenAdder':
    |
    |
  > |interface ERC20 {
    |    function transferFrom(address _from, address _to, uint _value) public returns (bool success);
    |}
  at /home/jiaming/mavs_srcs/contract@0xeda1f34d74a750daa982653bc43914a2ea7b96df.sol(4)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenAdder':
    |
    |
  > |contract TokenAdder {
    |    TokenConfigInterface public network;
    |    TokenConfigInterface public reserve;
  at /home/jiaming/mavs_srcs/contract@0xeda1f34d74a750daa982653bc43914a2ea7b96df.sol(48)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenAdder':
    |
    |        zeroArray.length = 0;
  > |        zeroArray.push(int(0));
    |        for( uint i = 0 ; i < newTokens.length ; i++ ) {
    |            conversionRate.addToken(newTokens[i]);
  at /home/jiaming/mavs_srcs/contract@0xeda1f34d74a750daa982653bc43914a2ea7b96df.sol(145)


