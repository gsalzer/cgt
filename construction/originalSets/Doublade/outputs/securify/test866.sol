Processing contract: /home/jiaming/mavs_srcs/contract@0x375fcd5801c5daf5ddbb125def3fce132bcd705f.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x375fcd5801c5daf5ddbb125def3fce132bcd705f.sol:blocks
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'blocks':
    |    
    |}
  > |contract blocks{
    |     ERC20Interface public acceptedToken;
    |     uint256 starttime;
  at /home/jiaming/mavs_srcs/contract@0x375fcd5801c5daf5ddbb125def3fce132bcd705f.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'blocks':
    |}
    |contract blocks{
  > |     ERC20Interface public acceptedToken;
    |     uint256 starttime;
    |     uint256 a=3;
  at /home/jiaming/mavs_srcs/contract@0x375fcd5801c5daf5ddbb125def3fce132bcd705f.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'blocks':
    |
    |
  > |  function unblock() public{
    |      require(msg.sender==account0);
    |        if(now>(starttime)&&now<(starttime + 2 years)){
  at /home/jiaming/mavs_srcs/contract@0x375fcd5801c5daf5ddbb125def3fce132bcd705f.sol(29)

[33mWarning[0m for UnhandledException in contract 'blocks':
    |        if(now>(starttime)&&now<(starttime + 2 years)){
    |          require(a==3);
  > |          acceptedToken.transferFrom(account0,account1,33333);
    |          acceptedToken.transferFrom(account0,account2,200000);
    |          acceptedToken.transferFrom(account0,account3,166666);
  at /home/jiaming/mavs_srcs/contract@0x375fcd5801c5daf5ddbb125def3fce132bcd705f.sol(33)

[33mWarning[0m for UnhandledException in contract 'blocks':
    |          require(a==3);
    |          acceptedToken.transferFrom(account0,account1,33333);
  > |          acceptedToken.transferFrom(account0,account2,200000);
    |          acceptedToken.transferFrom(account0,account3,166666);
    |          acceptedToken.transferFrom(account0,account4,59180);
  at /home/jiaming/mavs_srcs/contract@0x375fcd5801c5daf5ddbb125def3fce132bcd705f.sol(34)

[33mWarning[0m for UnhandledException in contract 'blocks':
    |          acceptedToken.transferFrom(account0,account1,33333);
    |          acceptedToken.transferFrom(account0,account2,200000);
  > |          acceptedToken.transferFrom(account0,account3,166666);
    |          acceptedToken.transferFrom(account0,account4,59180);
    |          acceptedToken.transferFrom(account0,account5,50257);
  at /home/jiaming/mavs_srcs/contract@0x375fcd5801c5daf5ddbb125def3fce132bcd705f.sol(35)

[33mWarning[0m for UnhandledException in contract 'blocks':
    |          acceptedToken.transferFrom(account0,account2,200000);
    |          acceptedToken.transferFrom(account0,account3,166666);
  > |          acceptedToken.transferFrom(account0,account4,59180);
    |          acceptedToken.transferFrom(account0,account5,50257);
    |          acceptedToken.transferFrom(account0,account6,65142);
  at /home/jiaming/mavs_srcs/contract@0x375fcd5801c5daf5ddbb125def3fce132bcd705f.sol(36)

[33mWarning[0m for UnhandledException in contract 'blocks':
    |          acceptedToken.transferFrom(account0,account3,166666);
    |          acceptedToken.transferFrom(account0,account4,59180);
  > |          acceptedToken.transferFrom(account0,account5,50257);
    |          acceptedToken.transferFrom(account0,account6,65142);
    |          acceptedToken.transferFrom(account0,account7,66238);
  at /home/jiaming/mavs_srcs/contract@0x375fcd5801c5daf5ddbb125def3fce132bcd705f.sol(37)

[33mWarning[0m for UnhandledException in contract 'blocks':
    |          acceptedToken.transferFrom(account0,account4,59180);
    |          acceptedToken.transferFrom(account0,account5,50257);
  > |          acceptedToken.transferFrom(account0,account6,65142);
    |          acceptedToken.transferFrom(account0,account7,66238);
    |          acceptedToken.transferFrom(account0,account8,34814);
  at /home/jiaming/mavs_srcs/contract@0x375fcd5801c5daf5ddbb125def3fce132bcd705f.sol(38)

[33mWarning[0m for UnhandledException in contract 'blocks':
    |          acceptedToken.transferFrom(account0,account5,50257);
    |          acceptedToken.transferFrom(account0,account6,65142);
  > |          acceptedToken.transferFrom(account0,account7,66238);
    |          acceptedToken.transferFrom(account0,account8,34814);
    |          acceptedToken.transferFrom(account0,account9,166666);
  at /home/jiaming/mavs_srcs/contract@0x375fcd5801c5daf5ddbb125def3fce132bcd705f.sol(39)

[33mWarning[0m for UnhandledException in contract 'blocks':
    |          acceptedToken.transferFrom(account0,account6,65142);
    |          acceptedToken.transferFrom(account0,account7,66238);
  > |          acceptedToken.transferFrom(account0,account8,34814);
    |          acceptedToken.transferFrom(account0,account9,166666);
    |          a=a-1;
  at /home/jiaming/mavs_srcs/contract@0x375fcd5801c5daf5ddbb125def3fce132bcd705f.sol(40)

[33mWarning[0m for UnhandledException in contract 'blocks':
    |          acceptedToken.transferFrom(account0,account7,66238);
    |          acceptedToken.transferFrom(account0,account8,34814);
  > |          acceptedToken.transferFrom(account0,account9,166666);
    |          a=a-1;
    |      }
  at /home/jiaming/mavs_srcs/contract@0x375fcd5801c5daf5ddbb125def3fce132bcd705f.sol(41)

[33mWarning[0m for UnhandledException in contract 'blocks':
    |        if(now>(starttime+2 years)&&now<(starttime+3 years)){
    |            require(a==2);
  > |             acceptedToken.transferFrom(account0,account1,33333);
    |          acceptedToken.transferFrom(account0,account2,200000);
    |          acceptedToken.transferFrom(account0,account3,166666);
  at /home/jiaming/mavs_srcs/contract@0x375fcd5801c5daf5ddbb125def3fce132bcd705f.sol(46)

[33mWarning[0m for UnhandledException in contract 'blocks':
    |            require(a==2);
    |             acceptedToken.transferFrom(account0,account1,33333);
  > |          acceptedToken.transferFrom(account0,account2,200000);
    |          acceptedToken.transferFrom(account0,account3,166666);
    |          acceptedToken.transferFrom(account0,account4,59180);
  at /home/jiaming/mavs_srcs/contract@0x375fcd5801c5daf5ddbb125def3fce132bcd705f.sol(47)

[33mWarning[0m for UnhandledException in contract 'blocks':
    |             acceptedToken.transferFrom(account0,account1,33333);
    |          acceptedToken.transferFrom(account0,account2,200000);
  > |          acceptedToken.transferFrom(account0,account3,166666);
    |          acceptedToken.transferFrom(account0,account4,59180);
    |          acceptedToken.transferFrom(account0,account5,50257);
  at /home/jiaming/mavs_srcs/contract@0x375fcd5801c5daf5ddbb125def3fce132bcd705f.sol(48)

[33mWarning[0m for UnhandledException in contract 'blocks':
    |          acceptedToken.transferFrom(account0,account2,200000);
    |          acceptedToken.transferFrom(account0,account3,166666);
  > |          acceptedToken.transferFrom(account0,account4,59180);
    |          acceptedToken.transferFrom(account0,account5,50257);
    |          acceptedToken.transferFrom(account0,account6,65142);
  at /home/jiaming/mavs_srcs/contract@0x375fcd5801c5daf5ddbb125def3fce132bcd705f.sol(49)

[33mWarning[0m for UnhandledException in contract 'blocks':
    |          acceptedToken.transferFrom(account0,account3,166666);
    |          acceptedToken.transferFrom(account0,account4,59180);
  > |          acceptedToken.transferFrom(account0,account5,50257);
    |          acceptedToken.transferFrom(account0,account6,65142);
    |          acceptedToken.transferFrom(account0,account7,66238);
  at /home/jiaming/mavs_srcs/contract@0x375fcd5801c5daf5ddbb125def3fce132bcd705f.sol(50)

[33mWarning[0m for UnhandledException in contract 'blocks':
    |          acceptedToken.transferFrom(account0,account4,59180);
    |          acceptedToken.transferFrom(account0,account5,50257);
  > |          acceptedToken.transferFrom(account0,account6,65142);
    |          acceptedToken.transferFrom(account0,account7,66238);
    |          acceptedToken.transferFrom(account0,account8,34814);
  at /home/jiaming/mavs_srcs/contract@0x375fcd5801c5daf5ddbb125def3fce132bcd705f.sol(51)

[33mWarning[0m for UnhandledException in contract 'blocks':
    |          acceptedToken.transferFrom(account0,account5,50257);
    |          acceptedToken.transferFrom(account0,account6,65142);
  > |          acceptedToken.transferFrom(account0,account7,66238);
    |          acceptedToken.transferFrom(account0,account8,34814);
    |          acceptedToken.transferFrom(account0,account9,166666);
  at /home/jiaming/mavs_srcs/contract@0x375fcd5801c5daf5ddbb125def3fce132bcd705f.sol(52)

[33mWarning[0m for UnhandledException in contract 'blocks':
    |          acceptedToken.transferFrom(account0,account6,65142);
    |          acceptedToken.transferFrom(account0,account7,66238);
  > |          acceptedToken.transferFrom(account0,account8,34814);
    |          acceptedToken.transferFrom(account0,account9,166666);
    |            a=a-1;
  at /home/jiaming/mavs_srcs/contract@0x375fcd5801c5daf5ddbb125def3fce132bcd705f.sol(53)

[33mWarning[0m for UnhandledException in contract 'blocks':
    |          acceptedToken.transferFrom(account0,account7,66238);
    |          acceptedToken.transferFrom(account0,account8,34814);
  > |          acceptedToken.transferFrom(account0,account9,166666);
    |            a=a-1;
    |      }
  at /home/jiaming/mavs_srcs/contract@0x375fcd5801c5daf5ddbb125def3fce132bcd705f.sol(54)

[33mWarning[0m for UnhandledException in contract 'blocks':
    |        if(now>(starttime+3 years)){
    |              require(a==1);
  > |          acceptedToken.transferFrom(account0,account1,33333);
    |          acceptedToken.transferFrom(account0,account2,200000);
    |          acceptedToken.transferFrom(account0,account3,166666);
  at /home/jiaming/mavs_srcs/contract@0x375fcd5801c5daf5ddbb125def3fce132bcd705f.sol(59)

[33mWarning[0m for UnhandledException in contract 'blocks':
    |              require(a==1);
    |          acceptedToken.transferFrom(account0,account1,33333);
  > |          acceptedToken.transferFrom(account0,account2,200000);
    |          acceptedToken.transferFrom(account0,account3,166666);
    |          acceptedToken.transferFrom(account0,account4,59180);
  at /home/jiaming/mavs_srcs/contract@0x375fcd5801c5daf5ddbb125def3fce132bcd705f.sol(60)

[33mWarning[0m for UnhandledException in contract 'blocks':
    |          acceptedToken.transferFrom(account0,account1,33333);
    |          acceptedToken.transferFrom(account0,account2,200000);
  > |          acceptedToken.transferFrom(account0,account3,166666);
    |          acceptedToken.transferFrom(account0,account4,59180);
    |          acceptedToken.transferFrom(account0,account5,50257);
  at /home/jiaming/mavs_srcs/contract@0x375fcd5801c5daf5ddbb125def3fce132bcd705f.sol(61)

[33mWarning[0m for UnhandledException in contract 'blocks':
    |          acceptedToken.transferFrom(account0,account2,200000);
    |          acceptedToken.transferFrom(account0,account3,166666);
  > |          acceptedToken.transferFrom(account0,account4,59180);
    |          acceptedToken.transferFrom(account0,account5,50257);
    |          acceptedToken.transferFrom(account0,account6,65142);
  at /home/jiaming/mavs_srcs/contract@0x375fcd5801c5daf5ddbb125def3fce132bcd705f.sol(62)

[33mWarning[0m for UnhandledException in contract 'blocks':
    |          acceptedToken.transferFrom(account0,account3,166666);
    |          acceptedToken.transferFrom(account0,account4,59180);
  > |          acceptedToken.transferFrom(account0,account5,50257);
    |          acceptedToken.transferFrom(account0,account6,65142);
    |          acceptedToken.transferFrom(account0,account7,66238);
  at /home/jiaming/mavs_srcs/contract@0x375fcd5801c5daf5ddbb125def3fce132bcd705f.sol(63)

[33mWarning[0m for UnhandledException in contract 'blocks':
    |          acceptedToken.transferFrom(account0,account4,59180);
    |          acceptedToken.transferFrom(account0,account5,50257);
  > |          acceptedToken.transferFrom(account0,account6,65142);
    |          acceptedToken.transferFrom(account0,account7,66238);
    |          acceptedToken.transferFrom(account0,account8,34814);
  at /home/jiaming/mavs_srcs/contract@0x375fcd5801c5daf5ddbb125def3fce132bcd705f.sol(64)

[33mWarning[0m for UnhandledException in contract 'blocks':
    |          acceptedToken.transferFrom(account0,account5,50257);
    |          acceptedToken.transferFrom(account0,account6,65142);
  > |          acceptedToken.transferFrom(account0,account7,66238);
    |          acceptedToken.transferFrom(account0,account8,34814);
    |          acceptedToken.transferFrom(account0,account9,166666);
  at /home/jiaming/mavs_srcs/contract@0x375fcd5801c5daf5ddbb125def3fce132bcd705f.sol(65)

[33mWarning[0m for UnhandledException in contract 'blocks':
    |          acceptedToken.transferFrom(account0,account6,65142);
    |          acceptedToken.transferFrom(account0,account7,66238);
  > |          acceptedToken.transferFrom(account0,account8,34814);
    |          acceptedToken.transferFrom(account0,account9,166666);
    |             a=a-1;
  at /home/jiaming/mavs_srcs/contract@0x375fcd5801c5daf5ddbb125def3fce132bcd705f.sol(66)

[33mWarning[0m for UnhandledException in contract 'blocks':
    |          acceptedToken.transferFrom(account0,account7,66238);
    |          acceptedToken.transferFrom(account0,account8,34814);
  > |          acceptedToken.transferFrom(account0,account9,166666);
    |             a=a-1;
    |      }
  at /home/jiaming/mavs_srcs/contract@0x375fcd5801c5daf5ddbb125def3fce132bcd705f.sol(67)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'blocks':
    |        if(now>(starttime)&&now<(starttime + 2 years)){
    |          require(a==3);
  > |          acceptedToken.transferFrom(account0,account1,33333);
    |          acceptedToken.transferFrom(account0,account2,200000);
    |          acceptedToken.transferFrom(account0,account3,166666);
  at /home/jiaming/mavs_srcs/contract@0x375fcd5801c5daf5ddbb125def3fce132bcd705f.sol(33)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'blocks':
    |          require(a==3);
    |          acceptedToken.transferFrom(account0,account1,33333);
  > |          acceptedToken.transferFrom(account0,account2,200000);
    |          acceptedToken.transferFrom(account0,account3,166666);
    |          acceptedToken.transferFrom(account0,account4,59180);
  at /home/jiaming/mavs_srcs/contract@0x375fcd5801c5daf5ddbb125def3fce132bcd705f.sol(34)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'blocks':
    |          acceptedToken.transferFrom(account0,account1,33333);
    |          acceptedToken.transferFrom(account0,account2,200000);
  > |          acceptedToken.transferFrom(account0,account3,166666);
    |          acceptedToken.transferFrom(account0,account4,59180);
    |          acceptedToken.transferFrom(account0,account5,50257);
  at /home/jiaming/mavs_srcs/contract@0x375fcd5801c5daf5ddbb125def3fce132bcd705f.sol(35)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'blocks':
    |          acceptedToken.transferFrom(account0,account2,200000);
    |          acceptedToken.transferFrom(account0,account3,166666);
  > |          acceptedToken.transferFrom(account0,account4,59180);
    |          acceptedToken.transferFrom(account0,account5,50257);
    |          acceptedToken.transferFrom(account0,account6,65142);
  at /home/jiaming/mavs_srcs/contract@0x375fcd5801c5daf5ddbb125def3fce132bcd705f.sol(36)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'blocks':
    |          acceptedToken.transferFrom(account0,account3,166666);
    |          acceptedToken.transferFrom(account0,account4,59180);
  > |          acceptedToken.transferFrom(account0,account5,50257);
    |          acceptedToken.transferFrom(account0,account6,65142);
    |          acceptedToken.transferFrom(account0,account7,66238);
  at /home/jiaming/mavs_srcs/contract@0x375fcd5801c5daf5ddbb125def3fce132bcd705f.sol(37)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'blocks':
    |          acceptedToken.transferFrom(account0,account4,59180);
    |          acceptedToken.transferFrom(account0,account5,50257);
  > |          acceptedToken.transferFrom(account0,account6,65142);
    |          acceptedToken.transferFrom(account0,account7,66238);
    |          acceptedToken.transferFrom(account0,account8,34814);
  at /home/jiaming/mavs_srcs/contract@0x375fcd5801c5daf5ddbb125def3fce132bcd705f.sol(38)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'blocks':
    |          acceptedToken.transferFrom(account0,account5,50257);
    |          acceptedToken.transferFrom(account0,account6,65142);
  > |          acceptedToken.transferFrom(account0,account7,66238);
    |          acceptedToken.transferFrom(account0,account8,34814);
    |          acceptedToken.transferFrom(account0,account9,166666);
  at /home/jiaming/mavs_srcs/contract@0x375fcd5801c5daf5ddbb125def3fce132bcd705f.sol(39)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'blocks':
    |          acceptedToken.transferFrom(account0,account6,65142);
    |          acceptedToken.transferFrom(account0,account7,66238);
  > |          acceptedToken.transferFrom(account0,account8,34814);
    |          acceptedToken.transferFrom(account0,account9,166666);
    |          a=a-1;
  at /home/jiaming/mavs_srcs/contract@0x375fcd5801c5daf5ddbb125def3fce132bcd705f.sol(40)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'blocks':
    |          acceptedToken.transferFrom(account0,account7,66238);
    |          acceptedToken.transferFrom(account0,account8,34814);
  > |          acceptedToken.transferFrom(account0,account9,166666);
    |          a=a-1;
    |      }
  at /home/jiaming/mavs_srcs/contract@0x375fcd5801c5daf5ddbb125def3fce132bcd705f.sol(41)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'blocks':
    |        if(now>(starttime+2 years)&&now<(starttime+3 years)){
    |            require(a==2);
  > |             acceptedToken.transferFrom(account0,account1,33333);
    |          acceptedToken.transferFrom(account0,account2,200000);
    |          acceptedToken.transferFrom(account0,account3,166666);
  at /home/jiaming/mavs_srcs/contract@0x375fcd5801c5daf5ddbb125def3fce132bcd705f.sol(46)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'blocks':
    |            require(a==2);
    |             acceptedToken.transferFrom(account0,account1,33333);
  > |          acceptedToken.transferFrom(account0,account2,200000);
    |          acceptedToken.transferFrom(account0,account3,166666);
    |          acceptedToken.transferFrom(account0,account4,59180);
  at /home/jiaming/mavs_srcs/contract@0x375fcd5801c5daf5ddbb125def3fce132bcd705f.sol(47)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'blocks':
    |             acceptedToken.transferFrom(account0,account1,33333);
    |          acceptedToken.transferFrom(account0,account2,200000);
  > |          acceptedToken.transferFrom(account0,account3,166666);
    |          acceptedToken.transferFrom(account0,account4,59180);
    |          acceptedToken.transferFrom(account0,account5,50257);
  at /home/jiaming/mavs_srcs/contract@0x375fcd5801c5daf5ddbb125def3fce132bcd705f.sol(48)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'blocks':
    |          acceptedToken.transferFrom(account0,account2,200000);
    |          acceptedToken.transferFrom(account0,account3,166666);
  > |          acceptedToken.transferFrom(account0,account4,59180);
    |          acceptedToken.transferFrom(account0,account5,50257);
    |          acceptedToken.transferFrom(account0,account6,65142);
  at /home/jiaming/mavs_srcs/contract@0x375fcd5801c5daf5ddbb125def3fce132bcd705f.sol(49)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'blocks':
    |          acceptedToken.transferFrom(account0,account3,166666);
    |          acceptedToken.transferFrom(account0,account4,59180);
  > |          acceptedToken.transferFrom(account0,account5,50257);
    |          acceptedToken.transferFrom(account0,account6,65142);
    |          acceptedToken.transferFrom(account0,account7,66238);
  at /home/jiaming/mavs_srcs/contract@0x375fcd5801c5daf5ddbb125def3fce132bcd705f.sol(50)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'blocks':
    |          acceptedToken.transferFrom(account0,account4,59180);
    |          acceptedToken.transferFrom(account0,account5,50257);
  > |          acceptedToken.transferFrom(account0,account6,65142);
    |          acceptedToken.transferFrom(account0,account7,66238);
    |          acceptedToken.transferFrom(account0,account8,34814);
  at /home/jiaming/mavs_srcs/contract@0x375fcd5801c5daf5ddbb125def3fce132bcd705f.sol(51)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'blocks':
    |          acceptedToken.transferFrom(account0,account5,50257);
    |          acceptedToken.transferFrom(account0,account6,65142);
  > |          acceptedToken.transferFrom(account0,account7,66238);
    |          acceptedToken.transferFrom(account0,account8,34814);
    |          acceptedToken.transferFrom(account0,account9,166666);
  at /home/jiaming/mavs_srcs/contract@0x375fcd5801c5daf5ddbb125def3fce132bcd705f.sol(52)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'blocks':
    |          acceptedToken.transferFrom(account0,account6,65142);
    |          acceptedToken.transferFrom(account0,account7,66238);
  > |          acceptedToken.transferFrom(account0,account8,34814);
    |          acceptedToken.transferFrom(account0,account9,166666);
    |            a=a-1;
  at /home/jiaming/mavs_srcs/contract@0x375fcd5801c5daf5ddbb125def3fce132bcd705f.sol(53)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'blocks':
    |          acceptedToken.transferFrom(account0,account7,66238);
    |          acceptedToken.transferFrom(account0,account8,34814);
  > |          acceptedToken.transferFrom(account0,account9,166666);
    |            a=a-1;
    |      }
  at /home/jiaming/mavs_srcs/contract@0x375fcd5801c5daf5ddbb125def3fce132bcd705f.sol(54)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'blocks':
    |        if(now>(starttime+3 years)){
    |              require(a==1);
  > |          acceptedToken.transferFrom(account0,account1,33333);
    |          acceptedToken.transferFrom(account0,account2,200000);
    |          acceptedToken.transferFrom(account0,account3,166666);
  at /home/jiaming/mavs_srcs/contract@0x375fcd5801c5daf5ddbb125def3fce132bcd705f.sol(59)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'blocks':
    |              require(a==1);
    |          acceptedToken.transferFrom(account0,account1,33333);
  > |          acceptedToken.transferFrom(account0,account2,200000);
    |          acceptedToken.transferFrom(account0,account3,166666);
    |          acceptedToken.transferFrom(account0,account4,59180);
  at /home/jiaming/mavs_srcs/contract@0x375fcd5801c5daf5ddbb125def3fce132bcd705f.sol(60)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'blocks':
    |          acceptedToken.transferFrom(account0,account1,33333);
    |          acceptedToken.transferFrom(account0,account2,200000);
  > |          acceptedToken.transferFrom(account0,account3,166666);
    |          acceptedToken.transferFrom(account0,account4,59180);
    |          acceptedToken.transferFrom(account0,account5,50257);
  at /home/jiaming/mavs_srcs/contract@0x375fcd5801c5daf5ddbb125def3fce132bcd705f.sol(61)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'blocks':
    |          acceptedToken.transferFrom(account0,account2,200000);
    |          acceptedToken.transferFrom(account0,account3,166666);
  > |          acceptedToken.transferFrom(account0,account4,59180);
    |          acceptedToken.transferFrom(account0,account5,50257);
    |          acceptedToken.transferFrom(account0,account6,65142);
  at /home/jiaming/mavs_srcs/contract@0x375fcd5801c5daf5ddbb125def3fce132bcd705f.sol(62)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'blocks':
    |          acceptedToken.transferFrom(account0,account3,166666);
    |          acceptedToken.transferFrom(account0,account4,59180);
  > |          acceptedToken.transferFrom(account0,account5,50257);
    |          acceptedToken.transferFrom(account0,account6,65142);
    |          acceptedToken.transferFrom(account0,account7,66238);
  at /home/jiaming/mavs_srcs/contract@0x375fcd5801c5daf5ddbb125def3fce132bcd705f.sol(63)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'blocks':
    |          acceptedToken.transferFrom(account0,account4,59180);
    |          acceptedToken.transferFrom(account0,account5,50257);
  > |          acceptedToken.transferFrom(account0,account6,65142);
    |          acceptedToken.transferFrom(account0,account7,66238);
    |          acceptedToken.transferFrom(account0,account8,34814);
  at /home/jiaming/mavs_srcs/contract@0x375fcd5801c5daf5ddbb125def3fce132bcd705f.sol(64)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'blocks':
    |          acceptedToken.transferFrom(account0,account5,50257);
    |          acceptedToken.transferFrom(account0,account6,65142);
  > |          acceptedToken.transferFrom(account0,account7,66238);
    |          acceptedToken.transferFrom(account0,account8,34814);
    |          acceptedToken.transferFrom(account0,account9,166666);
  at /home/jiaming/mavs_srcs/contract@0x375fcd5801c5daf5ddbb125def3fce132bcd705f.sol(65)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'blocks':
    |          acceptedToken.transferFrom(account0,account6,65142);
    |          acceptedToken.transferFrom(account0,account7,66238);
  > |          acceptedToken.transferFrom(account0,account8,34814);
    |          acceptedToken.transferFrom(account0,account9,166666);
    |             a=a-1;
  at /home/jiaming/mavs_srcs/contract@0x375fcd5801c5daf5ddbb125def3fce132bcd705f.sol(66)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'blocks':
    |          acceptedToken.transferFrom(account0,account7,66238);
    |          acceptedToken.transferFrom(account0,account8,34814);
  > |          acceptedToken.transferFrom(account0,account9,166666);
    |             a=a-1;
    |      }
  at /home/jiaming/mavs_srcs/contract@0x375fcd5801c5daf5ddbb125def3fce132bcd705f.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'blocks':
    |          acceptedToken.transferFrom(account0,account8,34814);
    |          acceptedToken.transferFrom(account0,account9,166666);
  > |          a=a-1;
    |      }
    |        if(now>(starttime+2 years)&&now<(starttime+3 years)){
  at /home/jiaming/mavs_srcs/contract@0x375fcd5801c5daf5ddbb125def3fce132bcd705f.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'blocks':
    |          acceptedToken.transferFrom(account0,account8,34814);
    |          acceptedToken.transferFrom(account0,account9,166666);
  > |            a=a-1;
    |      }
    |        if(now>(starttime+3 years)){
  at /home/jiaming/mavs_srcs/contract@0x375fcd5801c5daf5ddbb125def3fce132bcd705f.sol(55)

[33mWarning[0m for UnrestrictedWrite in contract 'blocks':
    |          acceptedToken.transferFrom(account0,account8,34814);
    |          acceptedToken.transferFrom(account0,account9,166666);
  > |             a=a-1;
    |      }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x375fcd5801c5daf5ddbb125def3fce132bcd705f.sol(68)


