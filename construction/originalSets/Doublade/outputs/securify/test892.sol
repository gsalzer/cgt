Processing contract: /home/jiaming/mavs_srcs/contract@0x38e9d51419dc53bb8c899a5fd473ce111b1757c4.sol:DSSafeAddSub
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x38e9d51419dc53bb8c899a5fd473ce111b1757c4.sol:LuckyETH
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x38e9d51419dc53bb8c899a5fd473ce111b1757c4.sol:OraclizeAddrResolverI
Processing contract: /home/jiaming/mavs_srcs/contract@0x38e9d51419dc53bb8c899a5fd473ce111b1757c4.sol:OraclizeI
Processing contract: /home/jiaming/mavs_srcs/contract@0x38e9d51419dc53bb8c899a5fd473ce111b1757c4.sol:strings
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x38e9d51419dc53bb8c899a5fd473ce111b1757c4.sol:usingOraclize
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'DSSafeAddSub':
    |
    |
  > |contract DSSafeAddSub {
    |    function safeToAdd(uint a, uint b) internal returns (bool) {
    |        return (a + b >= a);
  at /home/jiaming/mavs_srcs/contract@0x38e9d51419dc53bb8c899a5fd473ce111b1757c4.sol(1743)

[31mViolation[0m for DAO in contract 'LuckyETH':
    |        uint withdrawAmount = playerPendingWithdrawals[msg.sender];
    |        playerPendingWithdrawals[msg.sender] = 0;
  > |        if (msg.sender.call.value(withdrawAmount)()) {
    |            return true;
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0x38e9d51419dc53bb8c899a5fd473ce111b1757c4.sol(2013)

[31mViolation[0m for DAOConstantGas in contract 'LuckyETH':
    |        if(playerDieResult[myid] == 0 || playerRandomResult[myid] == 0|| refundFlag == true)
    |        {                                                     
  > |            if(!playerTempAddress[myid].send(playerTempBetValue[myid]))
    |            {           
    |                playerPendingWithdrawals[playerTempAddress[myid]] = safeAdd(playerPendingWithdrawals[playerTempAddress[myid]], playerTempBetValue[myid]);                        
  at /home/jiaming/mavs_srcs/contract@0x38e9d51419dc53bb8c899a5fd473ce111b1757c4.sol(1959)

[31mViolation[0m for DAOConstantGas in contract 'LuckyETH':
    |            playerTempReward[myid] = safeSub(playerTempReward[myid], cutValue1);
    |
  > |            if(!playerTempAddress[myid].send(playerTempReward[myid]))
    |            {                 
    |                playerPendingWithdrawals[playerTempAddress[myid]] = safeAdd(playerPendingWithdrawals[playerTempAddress[myid]], playerTempReward[myid]);                               
  at /home/jiaming/mavs_srcs/contract@0x38e9d51419dc53bb8c899a5fd473ce111b1757c4.sol(1971)

[31mViolation[0m for DAOConstantGas in contract 'LuckyETH':
    |            if(playerFromAddr[myid] == address(0)) return;
    |
  > |            if(!playerFromAddr[myid].send(playerTempBetValue[myid] * 5 / 1000))
    |            {
    |                playerPendingWithdrawals[playerFromAddr[myid]] = safeAdd(playerPendingWithdrawals[playerFromAddr[myid]], playerTempBetValue[myid] * 5 / 1000);
  at /home/jiaming/mavs_srcs/contract@0x38e9d51419dc53bb8c899a5fd473ce111b1757c4.sol(1978)

[31mViolation[0m for DAOConstantGas in contract 'LuckyETH':
    |
    |
  > |            if(!playerTempAddress[myid].send(1)){
    |               playerPendingWithdrawals[playerTempAddress[myid]] = safeAdd(playerPendingWithdrawals[playerTempAddress[myid]], 1);                                
    |            }   
  at /home/jiaming/mavs_srcs/contract@0x38e9d51419dc53bb8c899a5fd473ce111b1757c4.sol(1990)

[31mViolation[0m for DAOConstantGas in contract 'LuckyETH':
    |
    |            if(playerFromAddr[myid] == address(0)) return;
  > |            if(!playerFromAddr[myid].send(cutValue2)) {
    |               playerPendingWithdrawals[playerFromAddr[myid]] = safeAdd(playerPendingWithdrawals[playerFromAddr[myid]], cutValue2);                                
    |
  at /home/jiaming/mavs_srcs/contract@0x38e9d51419dc53bb8c899a5fd473ce111b1757c4.sol(1995)

[33mWarning[0m for DAOConstantGas in contract 'LuckyETH':
    |        onlyOwner
    |    {        
  > |        if(!sendTo.send(amount)) throw;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x38e9d51419dc53bb8c899a5fd473ce111b1757c4.sol(2052)

[33mWarning[0m for DAOConstantGas in contract 'LuckyETH':
    |    {        
    |        maxPendingPayouts = safeSub(maxPendingPayouts, originalPlayerProfit);
  > |        if(!sendTo.send(originalPlayerBetValue)) throw;      
    |    }    
    |
  at /home/jiaming/mavs_srcs/contract@0x38e9d51419dc53bb8c899a5fd473ce111b1757c4.sol(2059)

[33mWarning[0m for LockedEther in contract 'LuckyETH':
    |
    |
  > |contract LuckyETH is usingOraclize, DSSafeAddSub {
    |    
    |     using strings for *;
  at /home/jiaming/mavs_srcs/contract@0x38e9d51419dc53bb8c899a5fd473ce111b1757c4.sol(1764)

[33mWarning[0m for TODAmount in contract 'LuckyETH':
    |
    |
  > |            if(!playerTempAddress[myid].send(1)){
    |               playerPendingWithdrawals[playerTempAddress[myid]] = safeAdd(playerPendingWithdrawals[playerTempAddress[myid]], 1);                                
    |            }   
  at /home/jiaming/mavs_srcs/contract@0x38e9d51419dc53bb8c899a5fd473ce111b1757c4.sol(1990)

[33mWarning[0m for TODAmount in contract 'LuckyETH':
    |        onlyOwner
    |    {        
  > |        if(!sendTo.send(amount)) throw;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x38e9d51419dc53bb8c899a5fd473ce111b1757c4.sol(2052)

[33mWarning[0m for TODAmount in contract 'LuckyETH':
    |    {        
    |        maxPendingPayouts = safeSub(maxPendingPayouts, originalPlayerProfit);
  > |        if(!sendTo.send(originalPlayerBetValue)) throw;      
    |    }    
    |
  at /home/jiaming/mavs_srcs/contract@0x38e9d51419dc53bb8c899a5fd473ce111b1757c4.sol(2059)

[33mWarning[0m for TODReceiver in contract 'LuckyETH':
    |        uint withdrawAmount = playerPendingWithdrawals[msg.sender];
    |        playerPendingWithdrawals[msg.sender] = 0;
  > |        if (msg.sender.call.value(withdrawAmount)()) {
    |            return true;
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0x38e9d51419dc53bb8c899a5fd473ce111b1757c4.sol(2013)

[33mWarning[0m for TODReceiver in contract 'LuckyETH':
    |        onlyOwner
    |    {        
  > |        if(!sendTo.send(amount)) throw;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x38e9d51419dc53bb8c899a5fd473ce111b1757c4.sol(2052)

[33mWarning[0m for TODReceiver in contract 'LuckyETH':
    |    {        
    |        maxPendingPayouts = safeSub(maxPendingPayouts, originalPlayerProfit);
  > |        if(!sendTo.send(originalPlayerBetValue)) throw;      
    |    }    
    |
  at /home/jiaming/mavs_srcs/contract@0x38e9d51419dc53bb8c899a5fd473ce111b1757c4.sol(2059)

[33mWarning[0m for UnhandledException in contract 'LuckyETH':
    |            oraclize_setNetwork(networkID_auto);
    |
  > |        if(address(oraclize) != OAR.getAddress())
    |            oraclize = OraclizeI(OAR.getAddress());
    |
  at /home/jiaming/mavs_srcs/contract@0x38e9d51419dc53bb8c899a5fd473ce111b1757c4.sol(75)

[33mWarning[0m for UnhandledException in contract 'LuckyETH':
    |
    |        if(address(oraclize) != OAR.getAddress())
  > |            oraclize = OraclizeI(OAR.getAddress());
    |
    |        _;
  at /home/jiaming/mavs_srcs/contract@0x38e9d51419dc53bb8c899a5fd473ce111b1757c4.sol(76)

[33mWarning[0m for UnhandledException in contract 'LuckyETH':
    |    }
    |    function oraclize_query(string datasource, string arg, uint gaslimit) oraclizeAPI internal returns (bytes32 id){
  > |        uint price = oraclize.getPrice(datasource, gaslimit);
    |        if (price > 1 ether + tx.gasprice*gaslimit) return 0; // unexpectedly high price
    |        return oraclize.query_withGasLimit.value(price)(0, datasource, arg, gaslimit);
  at /home/jiaming/mavs_srcs/contract@0x38e9d51419dc53bb8c899a5fd473ce111b1757c4.sol(156)

[33mWarning[0m for UnhandledException in contract 'LuckyETH':
    |        uint price = oraclize.getPrice(datasource, gaslimit);
    |        if (price > 1 ether + tx.gasprice*gaslimit) return 0; // unexpectedly high price
  > |        return oraclize.query_withGasLimit.value(price)(0, datasource, arg, gaslimit);
    |    }
    |    function oraclize_query(string datasource, string arg1, string arg2) oraclizeAPI internal returns (bytes32 id){
  at /home/jiaming/mavs_srcs/contract@0x38e9d51419dc53bb8c899a5fd473ce111b1757c4.sol(158)

[33mWarning[0m for UnhandledException in contract 'LuckyETH':
    |
    |    function oraclize_cbAddress() oraclizeAPI internal returns (address){
  > |        return oraclize.cbAddress();
    |    }
    |    function oraclize_setProof(byte proofP) oraclizeAPI internal {
  at /home/jiaming/mavs_srcs/contract@0x38e9d51419dc53bb8c899a5fd473ce111b1757c4.sol(514)

[33mWarning[0m for UnhandledException in contract 'LuckyETH':
    |    }
    |    function oraclize_setCustomGasPrice(uint gasPrice) oraclizeAPI internal {
  > |        return oraclize.setCustomGasPrice(gasPrice);
    |    }
    |    function oraclize_setConfig(bytes32 config) oraclizeAPI internal {
  at /home/jiaming/mavs_srcs/contract@0x38e9d51419dc53bb8c899a5fd473ce111b1757c4.sol(520)

[33mWarning[0m for UnhandledException in contract 'LuckyETH':
    |        if(playerDieResult[myid] == 0 || playerRandomResult[myid] == 0|| refundFlag == true)
    |        {                                                     
  > |            if(!playerTempAddress[myid].send(playerTempBetValue[myid]))
    |            {           
    |                playerPendingWithdrawals[playerTempAddress[myid]] = safeAdd(playerPendingWithdrawals[playerTempAddress[myid]], playerTempBetValue[myid]);                        
  at /home/jiaming/mavs_srcs/contract@0x38e9d51419dc53bb8c899a5fd473ce111b1757c4.sol(1959)

[33mWarning[0m for UnhandledException in contract 'LuckyETH':
    |            playerTempReward[myid] = safeSub(playerTempReward[myid], cutValue1);
    |
  > |            if(!playerTempAddress[myid].send(playerTempReward[myid]))
    |            {                 
    |                playerPendingWithdrawals[playerTempAddress[myid]] = safeAdd(playerPendingWithdrawals[playerTempAddress[myid]], playerTempReward[myid]);                               
  at /home/jiaming/mavs_srcs/contract@0x38e9d51419dc53bb8c899a5fd473ce111b1757c4.sol(1971)

[33mWarning[0m for UnhandledException in contract 'LuckyETH':
    |            if(playerFromAddr[myid] == address(0)) return;
    |
  > |            if(!playerFromAddr[myid].send(playerTempBetValue[myid] * 5 / 1000))
    |            {
    |                playerPendingWithdrawals[playerFromAddr[myid]] = safeAdd(playerPendingWithdrawals[playerFromAddr[myid]], playerTempBetValue[myid] * 5 / 1000);
  at /home/jiaming/mavs_srcs/contract@0x38e9d51419dc53bb8c899a5fd473ce111b1757c4.sol(1978)

[33mWarning[0m for UnhandledException in contract 'LuckyETH':
    |
    |
  > |            if(!playerTempAddress[myid].send(1)){
    |               playerPendingWithdrawals[playerTempAddress[myid]] = safeAdd(playerPendingWithdrawals[playerTempAddress[myid]], 1);                                
    |            }   
  at /home/jiaming/mavs_srcs/contract@0x38e9d51419dc53bb8c899a5fd473ce111b1757c4.sol(1990)

[33mWarning[0m for UnhandledException in contract 'LuckyETH':
    |
    |            if(playerFromAddr[myid] == address(0)) return;
  > |            if(!playerFromAddr[myid].send(cutValue2)) {
    |               playerPendingWithdrawals[playerFromAddr[myid]] = safeAdd(playerPendingWithdrawals[playerFromAddr[myid]], cutValue2);                                
    |
  at /home/jiaming/mavs_srcs/contract@0x38e9d51419dc53bb8c899a5fd473ce111b1757c4.sol(1995)

[33mWarning[0m for UnhandledException in contract 'LuckyETH':
    |        uint withdrawAmount = playerPendingWithdrawals[msg.sender];
    |        playerPendingWithdrawals[msg.sender] = 0;
  > |        if (msg.sender.call.value(withdrawAmount)()) {
    |            return true;
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0x38e9d51419dc53bb8c899a5fd473ce111b1757c4.sol(2013)

[33mWarning[0m for UnhandledException in contract 'LuckyETH':
    |        onlyOwner
    |    {        
  > |        if(!sendTo.send(amount)) throw;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x38e9d51419dc53bb8c899a5fd473ce111b1757c4.sol(2052)

[33mWarning[0m for UnhandledException in contract 'LuckyETH':
    |    {        
    |        maxPendingPayouts = safeSub(maxPendingPayouts, originalPlayerProfit);
  > |        if(!sendTo.send(originalPlayerBetValue)) throw;      
    |    }    
    |
  at /home/jiaming/mavs_srcs/contract@0x38e9d51419dc53bb8c899a5fd473ce111b1757c4.sol(2059)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LuckyETH':
    |            oraclize_setNetwork(networkID_auto);
    |
  > |        if(address(oraclize) != OAR.getAddress())
    |            oraclize = OraclizeI(OAR.getAddress());
    |
  at /home/jiaming/mavs_srcs/contract@0x38e9d51419dc53bb8c899a5fd473ce111b1757c4.sol(75)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LuckyETH':
    |
    |        if(address(oraclize) != OAR.getAddress())
  > |            oraclize = OraclizeI(OAR.getAddress());
    |
    |        _;
  at /home/jiaming/mavs_srcs/contract@0x38e9d51419dc53bb8c899a5fd473ce111b1757c4.sol(76)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LuckyETH':
    |    }
    |    function oraclize_query(string datasource, string arg, uint gaslimit) oraclizeAPI internal returns (bytes32 id){
  > |        uint price = oraclize.getPrice(datasource, gaslimit);
    |        if (price > 1 ether + tx.gasprice*gaslimit) return 0; // unexpectedly high price
    |        return oraclize.query_withGasLimit.value(price)(0, datasource, arg, gaslimit);
  at /home/jiaming/mavs_srcs/contract@0x38e9d51419dc53bb8c899a5fd473ce111b1757c4.sol(156)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LuckyETH':
    |
    |    function oraclize_cbAddress() oraclizeAPI internal returns (address){
  > |        return oraclize.cbAddress();
    |    }
    |    function oraclize_setProof(byte proofP) oraclizeAPI internal {
  at /home/jiaming/mavs_srcs/contract@0x38e9d51419dc53bb8c899a5fd473ce111b1757c4.sol(514)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LuckyETH':
    |    }
    |    function oraclize_setCustomGasPrice(uint gasPrice) oraclizeAPI internal {
  > |        return oraclize.setCustomGasPrice(gasPrice);
    |    }
    |    function oraclize_setConfig(bytes32 config) oraclizeAPI internal {
  at /home/jiaming/mavs_srcs/contract@0x38e9d51419dc53bb8c899a5fd473ce111b1757c4.sol(520)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LuckyETH':
    |        if(playerDieResult[myid] == 0 || playerRandomResult[myid] == 0|| refundFlag == true)
    |        {                                                     
  > |            if(!playerTempAddress[myid].send(playerTempBetValue[myid]))
    |            {           
    |                playerPendingWithdrawals[playerTempAddress[myid]] = safeAdd(playerPendingWithdrawals[playerTempAddress[myid]], playerTempBetValue[myid]);                        
  at /home/jiaming/mavs_srcs/contract@0x38e9d51419dc53bb8c899a5fd473ce111b1757c4.sol(1959)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LuckyETH':
    |            playerTempReward[myid] = safeSub(playerTempReward[myid], cutValue1);
    |
  > |            if(!playerTempAddress[myid].send(playerTempReward[myid]))
    |            {                 
    |                playerPendingWithdrawals[playerTempAddress[myid]] = safeAdd(playerPendingWithdrawals[playerTempAddress[myid]], playerTempReward[myid]);                               
  at /home/jiaming/mavs_srcs/contract@0x38e9d51419dc53bb8c899a5fd473ce111b1757c4.sol(1971)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LuckyETH':
    |            if(playerFromAddr[myid] == address(0)) return;
    |
  > |            if(!playerFromAddr[myid].send(playerTempBetValue[myid] * 5 / 1000))
    |            {
    |                playerPendingWithdrawals[playerFromAddr[myid]] = safeAdd(playerPendingWithdrawals[playerFromAddr[myid]], playerTempBetValue[myid] * 5 / 1000);
  at /home/jiaming/mavs_srcs/contract@0x38e9d51419dc53bb8c899a5fd473ce111b1757c4.sol(1978)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LuckyETH':
    |
    |
  > |            if(!playerTempAddress[myid].send(1)){
    |               playerPendingWithdrawals[playerTempAddress[myid]] = safeAdd(playerPendingWithdrawals[playerTempAddress[myid]], 1);                                
    |            }   
  at /home/jiaming/mavs_srcs/contract@0x38e9d51419dc53bb8c899a5fd473ce111b1757c4.sol(1990)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LuckyETH':
    |
    |            if(playerFromAddr[myid] == address(0)) return;
  > |            if(!playerFromAddr[myid].send(cutValue2)) {
    |               playerPendingWithdrawals[playerFromAddr[myid]] = safeAdd(playerPendingWithdrawals[playerFromAddr[myid]], cutValue2);                                
    |
  at /home/jiaming/mavs_srcs/contract@0x38e9d51419dc53bb8c899a5fd473ce111b1757c4.sol(1995)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LuckyETH':
    |        onlyOwner
    |    {        
  > |        if(!sendTo.send(amount)) throw;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x38e9d51419dc53bb8c899a5fd473ce111b1757c4.sol(2052)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LuckyETH':
    |    {        
    |        maxPendingPayouts = safeSub(maxPendingPayouts, originalPlayerProfit);
  > |        if(!sendTo.send(originalPlayerBetValue)) throw;      
    |    }    
    |
  at /home/jiaming/mavs_srcs/contract@0x38e9d51419dc53bb8c899a5fd473ce111b1757c4.sol(2059)

[33mWarning[0m for UnrestrictedWrite in contract 'LuckyETH':
    |
    |        if(address(oraclize) != OAR.getAddress())
  > |            oraclize = OraclizeI(OAR.getAddress());
    |
    |        _;
  at /home/jiaming/mavs_srcs/contract@0x38e9d51419dc53bb8c899a5fd473ce111b1757c4.sol(76)

[33mWarning[0m for UnrestrictedWrite in contract 'LuckyETH':
    |    function oraclize_setNetwork(uint8 networkID) internal returns(bool){
    |        if (getCodeSize(0x1d3B2638a7cC9f2CB3D298A3DA7a90B67E5506ed)>0){ //mainnet
  > |            OAR = OraclizeAddrResolverI(0x1d3B2638a7cC9f2CB3D298A3DA7a90B67E5506ed);
    |            oraclize_setNetworkName("eth_mainnet");
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x38e9d51419dc53bb8c899a5fd473ce111b1757c4.sol(88)

[33mWarning[0m for UnrestrictedWrite in contract 'LuckyETH':
    |        }
    |        if (getCodeSize(0xc03A2615D5efaf5F49F60B7BB6583eaec212fdf1)>0){ //ropsten testnet
  > |            OAR = OraclizeAddrResolverI(0xc03A2615D5efaf5F49F60B7BB6583eaec212fdf1);
    |            oraclize_setNetworkName("eth_ropsten3");
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x38e9d51419dc53bb8c899a5fd473ce111b1757c4.sol(93)

[33mWarning[0m for UnrestrictedWrite in contract 'LuckyETH':
    |        }
    |        if (getCodeSize(0xB7A07BcF2Ba2f2703b24C0691b5278999C59AC7e)>0){ //kovan testnet
  > |            OAR = OraclizeAddrResolverI(0xB7A07BcF2Ba2f2703b24C0691b5278999C59AC7e);
    |            oraclize_setNetworkName("eth_kovan");
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x38e9d51419dc53bb8c899a5fd473ce111b1757c4.sol(98)

[33mWarning[0m for UnrestrictedWrite in contract 'LuckyETH':
    |        }
    |        if (getCodeSize(0x146500cfd35B22E4A392Fe0aDc06De1a1368Ed48)>0){ //rinkeby testnet
  > |            OAR = OraclizeAddrResolverI(0x146500cfd35B22E4A392Fe0aDc06De1a1368Ed48);
    |            oraclize_setNetworkName("eth_rinkeby");
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x38e9d51419dc53bb8c899a5fd473ce111b1757c4.sol(103)

[33mWarning[0m for UnrestrictedWrite in contract 'LuckyETH':
    |        }
    |        if (getCodeSize(0x6f485C8BF6fc43eA212E93BBF8ce046C7f1cb475)>0){ //ethereum-bridge
  > |            OAR = OraclizeAddrResolverI(0x6f485C8BF6fc43eA212E93BBF8ce046C7f1cb475);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x38e9d51419dc53bb8c899a5fd473ce111b1757c4.sol(108)

[33mWarning[0m for UnrestrictedWrite in contract 'LuckyETH':
    |        }
    |        if (getCodeSize(0x20e12A1F859B3FeaE5Fb2A0A32C18F5a65555bBF)>0){ //ether.camp ide
  > |            OAR = OraclizeAddrResolverI(0x20e12A1F859B3FeaE5Fb2A0A32C18F5a65555bBF);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x38e9d51419dc53bb8c899a5fd473ce111b1757c4.sol(112)

[33mWarning[0m for UnrestrictedWrite in contract 'LuckyETH':
    |        }
    |        if (getCodeSize(0x51efaF4c8B3C9AfBD5aB9F4bbC82784Ab6ef8fAA)>0){ //browser-solidity
  > |            OAR = OraclizeAddrResolverI(0x51efaF4c8B3C9AfBD5aB9F4bbC82784Ab6ef8fAA);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x38e9d51419dc53bb8c899a5fd473ce111b1757c4.sol(116)

[33mWarning[0m for UnrestrictedWrite in contract 'LuckyETH':
    |
    |
  > |contract LuckyETH is usingOraclize, DSSafeAddSub {
    |    
    |     using strings for *;
  at /home/jiaming/mavs_srcs/contract@0x38e9d51419dc53bb8c899a5fd473ce111b1757c4.sol(1764)

[33mWarning[0m for UnrestrictedWrite in contract 'LuckyETH':
    |        playerAddress[rngId] = msg.sender;
    |        playerProfit[rngId] = msg.value * rollTimes;        
  > |        maxPendingPayouts = safeAdd(maxPendingPayouts, playerProfit[rngId]);
    |    }   
    |             
  at /home/jiaming/mavs_srcs/contract@0x38e9d51419dc53bb8c899a5fd473ce111b1757c4.sol(1927)

[33mWarning[0m for UnrestrictedWrite in contract 'LuckyETH':
    |        }
    |
  > |        playerDieResult[myid] = playerRandomResult[myid];    
    |        
    |        playerTempAddress[myid] = playerAddress[myid];
  at /home/jiaming/mavs_srcs/contract@0x38e9d51419dc53bb8c899a5fd473ce111b1757c4.sol(1944)

[33mWarning[0m for UnrestrictedWrite in contract 'LuckyETH':
    |        playerDieResult[myid] = playerRandomResult[myid];    
    |        
  > |        playerTempAddress[myid] = playerAddress[myid];
    |        delete playerAddress[myid];
    |
  at /home/jiaming/mavs_srcs/contract@0x38e9d51419dc53bb8c899a5fd473ce111b1757c4.sol(1946)

[33mWarning[0m for UnrestrictedWrite in contract 'LuckyETH':
    |        
    |        playerTempAddress[myid] = playerAddress[myid];
  > |        delete playerAddress[myid];
    |
    |        playerTempReward[myid] = playerProfit[myid];
  at /home/jiaming/mavs_srcs/contract@0x38e9d51419dc53bb8c899a5fd473ce111b1757c4.sol(1947)

[33mWarning[0m for UnrestrictedWrite in contract 'LuckyETH':
    |        delete playerAddress[myid];
    |
  > |        playerTempReward[myid] = playerProfit[myid];
    |        playerProfit[myid] = 0; 
    |
  at /home/jiaming/mavs_srcs/contract@0x38e9d51419dc53bb8c899a5fd473ce111b1757c4.sol(1949)

[33mWarning[0m for UnrestrictedWrite in contract 'LuckyETH':
    |
    |        playerTempReward[myid] = playerProfit[myid];
  > |        playerProfit[myid] = 0; 
    |
    |        maxPendingPayouts = safeSub(maxPendingPayouts, playerTempReward[myid]);         
  at /home/jiaming/mavs_srcs/contract@0x38e9d51419dc53bb8c899a5fd473ce111b1757c4.sol(1950)

[33mWarning[0m for UnrestrictedWrite in contract 'LuckyETH':
    |        playerProfit[myid] = 0; 
    |
  > |        maxPendingPayouts = safeSub(maxPendingPayouts, playerTempReward[myid]);         
    |
    |        playerTempBetValue[myid] = playerBetValue[myid];
  at /home/jiaming/mavs_srcs/contract@0x38e9d51419dc53bb8c899a5fd473ce111b1757c4.sol(1952)

[33mWarning[0m for UnrestrictedWrite in contract 'LuckyETH':
    |        maxPendingPayouts = safeSub(maxPendingPayouts, playerTempReward[myid]);         
    |
  > |        playerTempBetValue[myid] = playerBetValue[myid];
    |        playerBetValue[myid] = 0; 
    |
  at /home/jiaming/mavs_srcs/contract@0x38e9d51419dc53bb8c899a5fd473ce111b1757c4.sol(1954)

[33mWarning[0m for UnrestrictedWrite in contract 'LuckyETH':
    |
    |        playerTempBetValue[myid] = playerBetValue[myid];
  > |        playerBetValue[myid] = 0; 
    |
    |        if(playerDieResult[myid] == 0 || playerRandomResult[myid] == 0|| refundFlag == true)
  at /home/jiaming/mavs_srcs/contract@0x38e9d51419dc53bb8c899a5fd473ce111b1757c4.sol(1955)

[33mWarning[0m for UnrestrictedWrite in contract 'LuckyETH':
    |            if(!playerTempAddress[myid].send(playerTempBetValue[myid]))
    |            {           
  > |                playerPendingWithdrawals[playerTempAddress[myid]] = safeAdd(playerPendingWithdrawals[playerTempAddress[myid]], playerTempBetValue[myid]);                        
    |            }
    |            return;
  at /home/jiaming/mavs_srcs/contract@0x38e9d51419dc53bb8c899a5fd473ce111b1757c4.sol(1961)

[33mWarning[0m for UnrestrictedWrite in contract 'LuckyETH':
    |        { 
    |            uint cutValue1 = playerTempReward[myid] / 100;
  > |            playerTempReward[myid] = safeSub(playerTempReward[myid], cutValue1);
    |
    |            if(!playerTempAddress[myid].send(playerTempReward[myid]))
  at /home/jiaming/mavs_srcs/contract@0x38e9d51419dc53bb8c899a5fd473ce111b1757c4.sol(1969)

[33mWarning[0m for UnrestrictedWrite in contract 'LuckyETH':
    |            if(!playerTempAddress[myid].send(playerTempReward[myid]))
    |            {                 
  > |                playerPendingWithdrawals[playerTempAddress[myid]] = safeAdd(playerPendingWithdrawals[playerTempAddress[myid]], playerTempReward[myid]);                               
    |            }
    |
  at /home/jiaming/mavs_srcs/contract@0x38e9d51419dc53bb8c899a5fd473ce111b1757c4.sol(1973)

[33mWarning[0m for UnrestrictedWrite in contract 'LuckyETH':
    |            if(!playerFromAddr[myid].send(playerTempBetValue[myid] * 5 / 1000))
    |            {
  > |                playerPendingWithdrawals[playerFromAddr[myid]] = safeAdd(playerPendingWithdrawals[playerFromAddr[myid]], playerTempBetValue[myid] * 5 / 1000);
    |            }
    |            return;
  at /home/jiaming/mavs_srcs/contract@0x38e9d51419dc53bb8c899a5fd473ce111b1757c4.sol(1980)

[33mWarning[0m for UnrestrictedWrite in contract 'LuckyETH':
    |
    |            if(!playerTempAddress[myid].send(1)){
  > |               playerPendingWithdrawals[playerTempAddress[myid]] = safeAdd(playerPendingWithdrawals[playerTempAddress[myid]], 1);                                
    |            }   
    |
  at /home/jiaming/mavs_srcs/contract@0x38e9d51419dc53bb8c899a5fd473ce111b1757c4.sol(1991)

[33mWarning[0m for UnrestrictedWrite in contract 'LuckyETH':
    |            if(playerFromAddr[myid] == address(0)) return;
    |            if(!playerFromAddr[myid].send(cutValue2)) {
  > |               playerPendingWithdrawals[playerFromAddr[myid]] = safeAdd(playerPendingWithdrawals[playerFromAddr[myid]], cutValue2);                                
    |
    |            }
  at /home/jiaming/mavs_srcs/contract@0x38e9d51419dc53bb8c899a5fd473ce111b1757c4.sol(1996)

[33mWarning[0m for UnrestrictedWrite in contract 'LuckyETH':
    |     {
    |        uint withdrawAmount = playerPendingWithdrawals[msg.sender];
  > |        playerPendingWithdrawals[msg.sender] = 0;
    |        if (msg.sender.call.value(withdrawAmount)()) {
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x38e9d51419dc53bb8c899a5fd473ce111b1757c4.sol(2012)

[33mWarning[0m for UnrestrictedWrite in contract 'LuckyETH':
    |            return true;
    |        } else {
  > |            playerPendingWithdrawals[msg.sender] = withdrawAmount;
    |            return false;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x38e9d51419dc53bb8c899a5fd473ce111b1757c4.sol(2016)

[33mWarning[0m for UnrestrictedWrite in contract 'LuckyETH':
    |        onlyOwner
    |    {
  > |        gasForOraclize = newSafeGasToOraclize;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x38e9d51419dc53bb8c899a5fd473ce111b1757c4.sol(2040)

[33mWarning[0m for UnrestrictedWrite in contract 'LuckyETH':
    |        onlyOwner
    |    {
  > |        minBet = newMinimumBet;
    |    }       
    |
  at /home/jiaming/mavs_srcs/contract@0x38e9d51419dc53bb8c899a5fd473ce111b1757c4.sol(2046)

[33mWarning[0m for UnrestrictedWrite in contract 'LuckyETH':
    |        onlyOwner
    |    {        
  > |        maxPendingPayouts = safeSub(maxPendingPayouts, originalPlayerProfit);
    |        if(!sendTo.send(originalPlayerBetValue)) throw;      
    |    }    
  at /home/jiaming/mavs_srcs/contract@0x38e9d51419dc53bb8c899a5fd473ce111b1757c4.sol(2058)

[33mWarning[0m for UnrestrictedWrite in contract 'LuckyETH':
    |        onlyOwner
    |    {
  > |        gamePaused = newStatus;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x38e9d51419dc53bb8c899a5fd473ce111b1757c4.sol(2065)

[33mWarning[0m for UnrestrictedWrite in contract 'LuckyETH':
    |        onlyOwner
    |    {
  > |        payoutsPaused = newPayoutStatus;
    |    } 
    |
  at /home/jiaming/mavs_srcs/contract@0x38e9d51419dc53bb8c899a5fd473ce111b1757c4.sol(2071)

[33mWarning[0m for UnrestrictedWrite in contract 'LuckyETH':
    |        onlyOwner
    |    {
  > |        treasury = newTreasury;
    |    }         
    |
  at /home/jiaming/mavs_srcs/contract@0x38e9d51419dc53bb8c899a5fd473ce111b1757c4.sol(2077)

[33mWarning[0m for UnrestrictedWrite in contract 'LuckyETH':
    |        onlyOwner
    |    {
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x38e9d51419dc53bb8c899a5fd473ce111b1757c4.sol(2083)

[33mWarning[0m for LockedEther in contract 'strings':
    | *      corresponding to the left and right parts of the string.
    | */
  > |library strings {
    |    struct slice {
    |        uint _len;
  at /home/jiaming/mavs_srcs/contract@0x38e9d51419dc53bb8c899a5fd473ce111b1757c4.sol(1067)

[33mWarning[0m for LockedEther in contract 'usingOraclize':
    |    function getAddress() returns (address _addr);
    |}
  > |contract usingOraclize {
    |    uint constant day = 60*60*24;
    |    uint constant week = 60*60*24*7;
  at /home/jiaming/mavs_srcs/contract@0x38e9d51419dc53bb8c899a5fd473ce111b1757c4.sol(52)


