Processing contract: /home/jiaming/mavs_srcs/contract@0xdcf59ee4803931a376a0fb6244036e49ebc7dd61.sol:HackDao
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xdcf59ee4803931a376a0fb6244036e49ebc7dd61.sol:OraclizeAddrResolverI
Processing contract: /home/jiaming/mavs_srcs/contract@0xdcf59ee4803931a376a0fb6244036e49ebc7dd61.sol:OraclizeI
Processing contract: /home/jiaming/mavs_srcs/contract@0xdcf59ee4803931a376a0fb6244036e49ebc7dd61.sol:usingOraclize
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for DAOConstantGas in contract 'HackDao':
    |        
    |        if (parseInt(result) == 1) {
  > |            if (!bets[myid].send(betsvalue[myid]*2)) {LogS("bug! bet to winner was not sent!");} else {
    |                LogS("sent");
    |                LogI(betsvalue[myid]*2);
  at /home/jiaming/mavs_srcs/contract@0xdcf59ee4803931a376a0fb6244036e49ebc7dd61.sol(355)

[33mWarning[0m for LockedEther in contract 'HackDao':
    |// </ORACLIZE_API>
    |
  > |contract HackDao is usingOraclize {
    | 
    |  mapping (bytes32 => address) bets;
  at /home/jiaming/mavs_srcs/contract@0xdcf59ee4803931a376a0fb6244036e49ebc7dd61.sol(320)

[33mWarning[0m for UnhandledException in contract 'HackDao':
    |    modifier oraclizeAPI {
    |        if(address(OAR)==0) oraclize_setNetwork(networkID_auto);
  > |        oraclize = OraclizeI(OAR.getAddress());
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdcf59ee4803931a376a0fb6244036e49ebc7dd61.sol(74)

[33mWarning[0m for UnhandledException in contract 'HackDao':
    |    
    |    function oraclize_query(string datasource, string arg) oraclizeAPI internal returns (bytes32 id){
  > |        uint price = oraclize.getPrice(datasource);
    |        if (price > 1 ether + tx.gasprice*200000) return 0; // unexpectedly high price
    |        return oraclize.query.value(price)(0, datasource, arg);
  at /home/jiaming/mavs_srcs/contract@0xdcf59ee4803931a376a0fb6244036e49ebc7dd61.sol(121)

[33mWarning[0m for UnhandledException in contract 'HackDao':
    |        uint price = oraclize.getPrice(datasource);
    |        if (price > 1 ether + tx.gasprice*200000) return 0; // unexpectedly high price
  > |        return oraclize.query.value(price)(0, datasource, arg);
    |    }
    |    function oraclize_query(uint timestamp, string datasource, string arg) oraclizeAPI internal returns (bytes32 id){
  at /home/jiaming/mavs_srcs/contract@0xdcf59ee4803931a376a0fb6244036e49ebc7dd61.sol(123)

[33mWarning[0m for UnhandledException in contract 'HackDao':
    |    }
    |    function oraclize_cbAddress() oraclizeAPI internal returns (address){
  > |        return oraclize.cbAddress();
    |    }
    |    function oraclize_setProof(byte proofP) oraclizeAPI internal {
  at /home/jiaming/mavs_srcs/contract@0xdcf59ee4803931a376a0fb6244036e49ebc7dd61.sol(161)

[33mWarning[0m for UnhandledException in contract 'HackDao':
    |        
    |        if (parseInt(result) == 1) {
  > |            if (!bets[myid].send(betsvalue[myid]*2)) {LogS("bug! bet to winner was not sent!");} else {
    |                LogS("sent");
    |                LogI(betsvalue[myid]*2);
  at /home/jiaming/mavs_srcs/contract@0xdcf59ee4803931a376a0fb6244036e49ebc7dd61.sol(355)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HackDao':
    |    modifier oraclizeAPI {
    |        if(address(OAR)==0) oraclize_setNetwork(networkID_auto);
  > |        oraclize = OraclizeI(OAR.getAddress());
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdcf59ee4803931a376a0fb6244036e49ebc7dd61.sol(74)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HackDao':
    |    
    |    function oraclize_query(string datasource, string arg) oraclizeAPI internal returns (bytes32 id){
  > |        uint price = oraclize.getPrice(datasource);
    |        if (price > 1 ether + tx.gasprice*200000) return 0; // unexpectedly high price
    |        return oraclize.query.value(price)(0, datasource, arg);
  at /home/jiaming/mavs_srcs/contract@0xdcf59ee4803931a376a0fb6244036e49ebc7dd61.sol(121)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HackDao':
    |    }
    |    function oraclize_cbAddress() oraclizeAPI internal returns (address){
  > |        return oraclize.cbAddress();
    |    }
    |    function oraclize_setProof(byte proofP) oraclizeAPI internal {
  at /home/jiaming/mavs_srcs/contract@0xdcf59ee4803931a376a0fb6244036e49ebc7dd61.sol(161)

[31mViolation[0m for UnrestrictedWrite in contract 'HackDao':
    |    modifier oraclizeAPI {
    |        if(address(OAR)==0) oraclize_setNetwork(networkID_auto);
  > |        oraclize = OraclizeI(OAR.getAddress());
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdcf59ee4803931a376a0fb6244036e49ebc7dd61.sol(74)

[31mViolation[0m for UnrestrictedWrite in contract 'HackDao':
    |    function oraclize_setNetwork(uint8 networkID) internal returns(bool){
    |        if (getCodeSize(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed)>0){ //mainnet
  > |            OAR = OraclizeAddrResolverI(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xdcf59ee4803931a376a0fb6244036e49ebc7dd61.sol(85)

[31mViolation[0m for UnrestrictedWrite in contract 'HackDao':
    |        }
    |        if (getCodeSize(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1)>0){ //ropsten testnet
  > |            OAR = OraclizeAddrResolverI(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xdcf59ee4803931a376a0fb6244036e49ebc7dd61.sol(89)

[31mViolation[0m for UnrestrictedWrite in contract 'HackDao':
    |        }
    |        if (getCodeSize(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf)>0){ //ether.camp ide
  > |            OAR = OraclizeAddrResolverI(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xdcf59ee4803931a376a0fb6244036e49ebc7dd61.sol(93)

[31mViolation[0m for UnrestrictedWrite in contract 'HackDao':
    |        }
    |        if (getCodeSize(0x93bbbe5ce77034e3095f0479919962a903f898ad)>0){ //norsborg testnet
  > |            OAR = OraclizeAddrResolverI(0x93bbbe5ce77034e3095f0479919962a903f898ad);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xdcf59ee4803931a376a0fb6244036e49ebc7dd61.sol(97)

[31mViolation[0m for UnrestrictedWrite in contract 'HackDao':
    |        }
    |        if (getCodeSize(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa)>0){ //browser-solidity
  > |            OAR = OraclizeAddrResolverI(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xdcf59ee4803931a376a0fb6244036e49ebc7dd61.sol(101)

[31mViolation[0m for UnrestrictedWrite in contract 'HackDao':
    |  	   bytes32 myid = oraclize_query("WolframAlpha", "random integer number between 0 and 1");
    |  	   //LogI(price);
  > |  	   bets[myid] = msg.sender;
    |  	   betsvalue[myid] = msg.value-10000000000000000; //ставка за вычитом расходов на оракула ~0.01 eth
    |  	   LogB(myid);
  at /home/jiaming/mavs_srcs/contract@0xdcf59ee4803931a376a0fb6244036e49ebc7dd61.sol(341)

[31mViolation[0m for UnrestrictedWrite in contract 'HackDao':
    |  	   //LogI(price);
    |  	   bets[myid] = msg.sender;
  > |  	   betsvalue[myid] = msg.value-10000000000000000; //ставка за вычитом расходов на оракула ~0.01 eth
    |  	   LogB(myid);
    |  	   return myid;
  at /home/jiaming/mavs_srcs/contract@0xdcf59ee4803931a376a0fb6244036e49ebc7dd61.sol(342)

[31mViolation[0m for UnrestrictedWrite in contract 'HackDao':
    |                LogI(betsvalue[myid]*2);
    |              }
  > |            results[myid] = true;
    |        } else {
    |            results[myid] = false;
  at /home/jiaming/mavs_srcs/contract@0xdcf59ee4803931a376a0fb6244036e49ebc7dd61.sol(359)

[31mViolation[0m for UnrestrictedWrite in contract 'HackDao':
    |            results[myid] = true;
    |        } else {
  > |            results[myid] = false;
    |        }
    |        
  at /home/jiaming/mavs_srcs/contract@0xdcf59ee4803931a376a0fb6244036e49ebc7dd61.sol(361)

[33mWarning[0m for LockedEther in contract 'usingOraclize':
    |    function getAddress() returns (address _addr);
    |}
  > |contract usingOraclize {
    |    uint constant day = 60*60*24;
    |    uint constant week = 60*60*24*7;
  at /home/jiaming/mavs_srcs/contract@0xdcf59ee4803931a376a0fb6244036e49ebc7dd61.sol(56)


