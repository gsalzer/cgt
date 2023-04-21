Processing contract: /home/jiaming/mavs_srcs/contract@0x131cf0d3b3cc6763417bffb2dfdc119fdebca002.sol:KrakenPriceTicker
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x131cf0d3b3cc6763417bffb2dfdc119fdebca002.sol:OraclizeAddrResolverI
Processing contract: /home/jiaming/mavs_srcs/contract@0x131cf0d3b3cc6763417bffb2dfdc119fdebca002.sol:OraclizeI
Processing contract: /home/jiaming/mavs_srcs/contract@0x131cf0d3b3cc6763417bffb2dfdc119fdebca002.sol:usingOraclize
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAO in contract 'KrakenPriceTicker':
    |        uint price = oraclize.getPrice(datasource);
    |        if (price > 1 ether + tx.gasprice*200000) return 0; // unexpectedly high price
  > |        return oraclize.query.value(price)(timestamp, datasource, arg);
    |    }
    |    function oraclize_query(uint timestamp, string datasource, string arg, uint gaslimit) oraclizeAPI internal returns (bytes32 id){
  at /home/jiaming/mavs_srcs/contract@0x131cf0d3b3cc6763417bffb2dfdc119fdebca002.sol(151)

[33mWarning[0m for UnhandledException in contract 'KrakenPriceTicker':
    |    }
    |    function oraclize_query(uint timestamp, string datasource, string arg) oraclizeAPI internal returns (bytes32 id){
  > |        uint price = oraclize.getPrice(datasource);
    |        if (price > 1 ether + tx.gasprice*200000) return 0; // unexpectedly high price
    |        return oraclize.query.value(price)(timestamp, datasource, arg);
  at /home/jiaming/mavs_srcs/contract@0x131cf0d3b3cc6763417bffb2dfdc119fdebca002.sol(149)

[33mWarning[0m for UnhandledException in contract 'KrakenPriceTicker':
    |        uint price = oraclize.getPrice(datasource);
    |        if (price > 1 ether + tx.gasprice*200000) return 0; // unexpectedly high price
  > |        return oraclize.query.value(price)(timestamp, datasource, arg);
    |    }
    |    function oraclize_query(uint timestamp, string datasource, string arg, uint gaslimit) oraclizeAPI internal returns (bytes32 id){
  at /home/jiaming/mavs_srcs/contract@0x131cf0d3b3cc6763417bffb2dfdc119fdebca002.sol(151)

[33mWarning[0m for UnhandledException in contract 'KrakenPriceTicker':
    |
    |    function oraclize_cbAddress() oraclizeAPI internal returns (address){
  > |        return oraclize.cbAddress();
    |    }
    |    function oraclize_setProof(byte proofP) oraclizeAPI internal {
  at /home/jiaming/mavs_srcs/contract@0x131cf0d3b3cc6763417bffb2dfdc119fdebca002.sol(517)

[33mWarning[0m for UnhandledException in contract 'KrakenPriceTicker':
    |    
    |    function update() payable {
  > |        if (oraclize.getPrice("URL") > this.balance) {
    |            newOraclizeQuery("Oraclize query was NOT sent, please add some ETH to cover for the query fee");
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0x131cf0d3b3cc6763417bffb2dfdc119fdebca002.sol(1052)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KrakenPriceTicker':
    |    }
    |    function oraclize_query(uint timestamp, string datasource, string arg) oraclizeAPI internal returns (bytes32 id){
  > |        uint price = oraclize.getPrice(datasource);
    |        if (price > 1 ether + tx.gasprice*200000) return 0; // unexpectedly high price
    |        return oraclize.query.value(price)(timestamp, datasource, arg);
  at /home/jiaming/mavs_srcs/contract@0x131cf0d3b3cc6763417bffb2dfdc119fdebca002.sol(149)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KrakenPriceTicker':
    |
    |    function oraclize_cbAddress() oraclizeAPI internal returns (address){
  > |        return oraclize.cbAddress();
    |    }
    |    function oraclize_setProof(byte proofP) oraclizeAPI internal {
  at /home/jiaming/mavs_srcs/contract@0x131cf0d3b3cc6763417bffb2dfdc119fdebca002.sol(517)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KrakenPriceTicker':
    |    
    |    function update() payable {
  > |        if (oraclize.getPrice("URL") > this.balance) {
    |            newOraclizeQuery("Oraclize query was NOT sent, please add some ETH to cover for the query fee");
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0x131cf0d3b3cc6763417bffb2dfdc119fdebca002.sol(1052)

[31mViolation[0m for UnrestrictedWrite in contract 'KrakenPriceTicker':
    |pragma solidity ^0.4.0;
    |
  > |contract KrakenPriceTicker is usingOraclize {
    |    
    |    string public ETHXBT;
  at /home/jiaming/mavs_srcs/contract@0x131cf0d3b3cc6763417bffb2dfdc119fdebca002.sol(1027)

[31mViolation[0m for UnrestrictedWrite in contract 'KrakenPriceTicker':
    |    
    |    modifier oraclizeAPI {
  > |        oraclize = OraclizeI(0x6f28b146804dba2d6f944c03528a8fdbc673df2c);
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x131cf0d3b3cc6763417bffb2dfdc119fdebca002.sol(1035)

[33mWarning[0m for UnrestrictedWrite in contract 'KrakenPriceTicker':
    |pragma solidity ^0.4.0;
    |
  > |contract KrakenPriceTicker is usingOraclize {
    |    
    |    string public ETHXBT;
  at /home/jiaming/mavs_srcs/contract@0x131cf0d3b3cc6763417bffb2dfdc119fdebca002.sol(1027)

[33mWarning[0m for LockedEther in contract 'usingOraclize':
    |    function getAddress() returns (address _addr);
    |}
  > |contract usingOraclize {
    |    uint constant day = 60*60*24;
    |    uint constant week = 60*60*24*7;
  at /home/jiaming/mavs_srcs/contract@0x131cf0d3b3cc6763417bffb2dfdc119fdebca002.sol(59)


