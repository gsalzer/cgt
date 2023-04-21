Processing contract: /home/jiaming/mavs_srcs/contract@0xe158db4981bc51387c9b5b16f44244f1010ab325.sol:Buffer
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe158db4981bc51387c9b5b16f44244f1010ab325.sol:CBOR
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe158db4981bc51387c9b5b16f44244f1010ab325.sol:OraclizeAddrResolverI
Processing contract: /home/jiaming/mavs_srcs/contract@0xe158db4981bc51387c9b5b16f44244f1010ab325.sol:OraclizeI
Processing contract: /home/jiaming/mavs_srcs/contract@0xe158db4981bc51387c9b5b16f44244f1010ab325.sol:UBets
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe158db4981bc51387c9b5b16f44244f1010ab325.sol:usingOraclize
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Buffer':
    |    */
    |
  > |    library Buffer {
    |        struct buffer {
    |            bytes buf;
  at /home/jiaming/mavs_srcs/contract@0xe158db4981bc51387c9b5b16f44244f1010ab325.sol(85)

[33mWarning[0m for LockedEther in contract 'CBOR':
    |    }
    |
  > |    library CBOR {
    |        using Buffer for Buffer.buffer;
    |
  at /home/jiaming/mavs_srcs/contract@0xe158db4981bc51387c9b5b16f44244f1010ab325.sol(217)

[33mWarning[0m for DAOConstantGas in contract 'UBets':
    |
    |        for(uint i = 0; i < game.players.length; i++) {
  > |            game.players[i].transfer(game.bet);
    |
    |            emit Refund(game_id, game.players[i], game.bet);
  at /home/jiaming/mavs_srcs/contract@0xe158db4981bc51387c9b5b16f44244f1010ab325.sol(1463)

[33mWarning[0m for DAOConstantGas in contract 'UBets':
    |        require(address(this).balance >= value, "Insufficient funds");
    |
  > |        to.transfer(value);
    |
    |        emit Withdraw(to, value);
  at /home/jiaming/mavs_srcs/contract@0xe158db4981bc51387c9b5b16f44244f1010ab325.sol(1474)

[33mWarning[0m for LockedEther in contract 'UBets':
    |// </ORACLIZE_API>
    |
  > |contract UBets is usingOraclize {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xe158db4981bc51387c9b5b16f44244f1010ab325.sol(1239)

[31mViolation[0m for TODAmount in contract 'UBets':
    |                            uint referer_payout = payout * referer_commision / 100;
    |
  > |                            referers[game.players[p]].transfer(referer_payout);
    |                            
    |                            emit RefererPayout(game_id, game.players[p], referers[game.players[p]], referer_payout);
  at /home/jiaming/mavs_srcs/contract@0xe158db4981bc51387c9b5b16f44244f1010ab325.sol(1412)

[33mWarning[0m for TODAmount in contract 'UBets':
    |        require(address(this).balance >= value, "Insufficient funds");
    |
  > |        to.transfer(value);
    |
    |        emit Withdraw(to, value);
  at /home/jiaming/mavs_srcs/contract@0xe158db4981bc51387c9b5b16f44244f1010ab325.sol(1474)

[33mWarning[0m for TODReceiver in contract 'UBets':
    |        require(address(this).balance >= value, "Insufficient funds");
    |
  > |        to.transfer(value);
    |
    |        emit Withdraw(to, value);
  at /home/jiaming/mavs_srcs/contract@0xe158db4981bc51387c9b5b16f44244f1010ab325.sol(1474)

[33mWarning[0m for UnhandledException in contract 'UBets':
    |                oraclize_setNetwork(networkID_auto);
    |
  > |            if(address(oraclize) != OAR.getAddress())
    |                oraclize = OraclizeI(OAR.getAddress());
    |
  at /home/jiaming/mavs_srcs/contract@0xe158db4981bc51387c9b5b16f44244f1010ab325.sol(312)

[33mWarning[0m for UnhandledException in contract 'UBets':
    |
    |            if(address(oraclize) != OAR.getAddress())
  > |                oraclize = OraclizeI(OAR.getAddress());
    |
    |            _;
  at /home/jiaming/mavs_srcs/contract@0xe158db4981bc51387c9b5b16f44244f1010ab325.sol(313)

[33mWarning[0m for UnhandledException in contract 'UBets':
    |
    |        function oraclize_getPrice(string datasource) oraclizeAPI internal returns (uint){
  > |            return oraclize.getPrice(datasource);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0xe158db4981bc51387c9b5b16f44244f1010ab325.sol(375)

[33mWarning[0m for UnhandledException in contract 'UBets':
    |        }
    |        function oraclize_query(string datasource, string arg, uint gaslimit) oraclizeAPI internal returns (bytes32 id){
  > |            uint price = oraclize.getPrice(datasource, gaslimit);
    |            if (price > 1 ether + tx.gasprice*gaslimit) return 0; // unexpectedly high price
    |            return oraclize.query_withGasLimit.value(price)(0, datasource, arg, gaslimit);
  at /home/jiaming/mavs_srcs/contract@0xe158db4981bc51387c9b5b16f44244f1010ab325.sol(398)

[33mWarning[0m for UnhandledException in contract 'UBets':
    |            uint price = oraclize.getPrice(datasource, gaslimit);
    |            if (price > 1 ether + tx.gasprice*gaslimit) return 0; // unexpectedly high price
  > |            return oraclize.query_withGasLimit.value(price)(0, datasource, arg, gaslimit);
    |        }
    |        function oraclize_query(string datasource, string arg1, string arg2) oraclizeAPI internal returns (bytes32 id){
  at /home/jiaming/mavs_srcs/contract@0xe158db4981bc51387c9b5b16f44244f1010ab325.sol(400)

[33mWarning[0m for UnhandledException in contract 'UBets':
    |
    |        function oraclize_cbAddress() oraclizeAPI internal returns (address){
  > |            return oraclize.cbAddress();
    |        }
    |        function oraclize_setProof(byte proofP) oraclizeAPI internal {
  at /home/jiaming/mavs_srcs/contract@0xe158db4981bc51387c9b5b16f44244f1010ab325.sol(756)

[33mWarning[0m for UnhandledException in contract 'UBets':
    |        }
    |        function oraclize_setCustomGasPrice(uint gasPrice) oraclizeAPI internal {
  > |            return oraclize.setCustomGasPrice(gasPrice);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0xe158db4981bc51387c9b5b16f44244f1010ab325.sol(762)

[33mWarning[0m for UnhandledException in contract 'UBets':
    |                for(uint p = 0; p < game.players.length; p++) {
    |                    if(numbers[n] == game.numbers[p]) {
  > |                        game.players[p].transfer(payout);
    |
    |                        emit Winner(game_id, game.players[p], p, payout);
  at /home/jiaming/mavs_srcs/contract@0xe158db4981bc51387c9b5b16f44244f1010ab325.sol(1405)

[33mWarning[0m for UnhandledException in contract 'UBets':
    |                            uint referer_payout = payout * referer_commision / 100;
    |
  > |                            referers[game.players[p]].transfer(referer_payout);
    |                            
    |                            emit RefererPayout(game_id, game.players[p], referers[game.players[p]], referer_payout);
  at /home/jiaming/mavs_srcs/contract@0xe158db4981bc51387c9b5b16f44244f1010ab325.sol(1412)

[33mWarning[0m for UnhandledException in contract 'UBets':
    |
    |        for(uint i = 0; i < game.players.length; i++) {
  > |            game.players[i].transfer(game.bet);
    |
    |            emit Refund(game_id, game.players[i], game.bet);
  at /home/jiaming/mavs_srcs/contract@0xe158db4981bc51387c9b5b16f44244f1010ab325.sol(1463)

[33mWarning[0m for UnhandledException in contract 'UBets':
    |        require(address(this).balance >= value, "Insufficient funds");
    |
  > |        to.transfer(value);
    |
    |        emit Withdraw(to, value);
  at /home/jiaming/mavs_srcs/contract@0xe158db4981bc51387c9b5b16f44244f1010ab325.sol(1474)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UBets':
    |                oraclize_setNetwork(networkID_auto);
    |
  > |            if(address(oraclize) != OAR.getAddress())
    |                oraclize = OraclizeI(OAR.getAddress());
    |
  at /home/jiaming/mavs_srcs/contract@0xe158db4981bc51387c9b5b16f44244f1010ab325.sol(312)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UBets':
    |
    |            if(address(oraclize) != OAR.getAddress())
  > |                oraclize = OraclizeI(OAR.getAddress());
    |
    |            _;
  at /home/jiaming/mavs_srcs/contract@0xe158db4981bc51387c9b5b16f44244f1010ab325.sol(313)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UBets':
    |
    |        function oraclize_getPrice(string datasource) oraclizeAPI internal returns (uint){
  > |            return oraclize.getPrice(datasource);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0xe158db4981bc51387c9b5b16f44244f1010ab325.sol(375)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UBets':
    |        }
    |        function oraclize_query(string datasource, string arg, uint gaslimit) oraclizeAPI internal returns (bytes32 id){
  > |            uint price = oraclize.getPrice(datasource, gaslimit);
    |            if (price > 1 ether + tx.gasprice*gaslimit) return 0; // unexpectedly high price
    |            return oraclize.query_withGasLimit.value(price)(0, datasource, arg, gaslimit);
  at /home/jiaming/mavs_srcs/contract@0xe158db4981bc51387c9b5b16f44244f1010ab325.sol(398)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UBets':
    |
    |        function oraclize_cbAddress() oraclizeAPI internal returns (address){
  > |            return oraclize.cbAddress();
    |        }
    |        function oraclize_setProof(byte proofP) oraclizeAPI internal {
  at /home/jiaming/mavs_srcs/contract@0xe158db4981bc51387c9b5b16f44244f1010ab325.sol(756)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UBets':
    |        }
    |        function oraclize_setCustomGasPrice(uint gasPrice) oraclizeAPI internal {
  > |            return oraclize.setCustomGasPrice(gasPrice);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0xe158db4981bc51387c9b5b16f44244f1010ab325.sol(762)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UBets':
    |        require(address(this).balance >= value, "Insufficient funds");
    |
  > |        to.transfer(value);
    |
    |        emit Withdraw(to, value);
  at /home/jiaming/mavs_srcs/contract@0xe158db4981bc51387c9b5b16f44244f1010ab325.sol(1474)

[33mWarning[0m for UnrestrictedWrite in contract 'UBets':
    |
    |            if(address(oraclize) != OAR.getAddress())
  > |                oraclize = OraclizeI(OAR.getAddress());
    |
    |            _;
  at /home/jiaming/mavs_srcs/contract@0xe158db4981bc51387c9b5b16f44244f1010ab325.sol(313)

[33mWarning[0m for UnrestrictedWrite in contract 'UBets':
    |        function oraclize_setNetwork() internal returns(bool){
    |            if (getCodeSize(0x1d3B2638a7cC9f2CB3D298A3DA7a90B67E5506ed)>0){ //mainnet
  > |                OAR = OraclizeAddrResolverI(0x1d3B2638a7cC9f2CB3D298A3DA7a90B67E5506ed);
    |                oraclize_setNetworkName("eth_mainnet");
    |                return true;
  at /home/jiaming/mavs_srcs/contract@0xe158db4981bc51387c9b5b16f44244f1010ab325.sol(328)

[33mWarning[0m for UnrestrictedWrite in contract 'UBets':
    |            }
    |            if (getCodeSize(0xc03A2615D5efaf5F49F60B7BB6583eaec212fdf1)>0){ //ropsten testnet
  > |                OAR = OraclizeAddrResolverI(0xc03A2615D5efaf5F49F60B7BB6583eaec212fdf1);
    |                oraclize_setNetworkName("eth_ropsten3");
    |                return true;
  at /home/jiaming/mavs_srcs/contract@0xe158db4981bc51387c9b5b16f44244f1010ab325.sol(333)

[33mWarning[0m for UnrestrictedWrite in contract 'UBets':
    |            }
    |            if (getCodeSize(0xB7A07BcF2Ba2f2703b24C0691b5278999C59AC7e)>0){ //kovan testnet
  > |                OAR = OraclizeAddrResolverI(0xB7A07BcF2Ba2f2703b24C0691b5278999C59AC7e);
    |                oraclize_setNetworkName("eth_kovan");
    |                return true;
  at /home/jiaming/mavs_srcs/contract@0xe158db4981bc51387c9b5b16f44244f1010ab325.sol(338)

[33mWarning[0m for UnrestrictedWrite in contract 'UBets':
    |            }
    |            if (getCodeSize(0x146500cfd35B22E4A392Fe0aDc06De1a1368Ed48)>0){ //rinkeby testnet
  > |                OAR = OraclizeAddrResolverI(0x146500cfd35B22E4A392Fe0aDc06De1a1368Ed48);
    |                oraclize_setNetworkName("eth_rinkeby");
    |                return true;
  at /home/jiaming/mavs_srcs/contract@0xe158db4981bc51387c9b5b16f44244f1010ab325.sol(343)

[33mWarning[0m for UnrestrictedWrite in contract 'UBets':
    |            }
    |            if (getCodeSize(0x6f485C8BF6fc43eA212E93BBF8ce046C7f1cb475)>0){ //ethereum-bridge
  > |                OAR = OraclizeAddrResolverI(0x6f485C8BF6fc43eA212E93BBF8ce046C7f1cb475);
    |                return true;
    |            }
  at /home/jiaming/mavs_srcs/contract@0xe158db4981bc51387c9b5b16f44244f1010ab325.sol(348)

[33mWarning[0m for UnrestrictedWrite in contract 'UBets':
    |            }
    |            if (getCodeSize(0x20e12A1F859B3FeaE5Fb2A0A32C18F5a65555bBF)>0){ //ether.camp ide
  > |                OAR = OraclizeAddrResolverI(0x20e12A1F859B3FeaE5Fb2A0A32C18F5a65555bBF);
    |                return true;
    |            }
  at /home/jiaming/mavs_srcs/contract@0xe158db4981bc51387c9b5b16f44244f1010ab325.sol(352)

[33mWarning[0m for UnrestrictedWrite in contract 'UBets':
    |            }
    |            if (getCodeSize(0x51efaF4c8B3C9AfBD5aB9F4bbC82784Ab6ef8fAA)>0){ //browser-solidity
  > |                OAR = OraclizeAddrResolverI(0x51efaF4c8B3C9AfBD5aB9F4bbC82784Ab6ef8fAA);
    |                return true;
    |            }
  at /home/jiaming/mavs_srcs/contract@0xe158db4981bc51387c9b5b16f44244f1010ab325.sol(356)

[33mWarning[0m for UnrestrictedWrite in contract 'UBets':
    |// </ORACLIZE_API>
    |
  > |contract UBets is usingOraclize {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xe158db4981bc51387c9b5b16f44244f1010ab325.sol(1239)

[33mWarning[0m for UnrestrictedWrite in contract 'UBets':
    |        require(!game.finish, "Game over");
    |
  > |        game.finish = true;
    |
    |        for(uint i = 0; i < game.players.length; i++) {
  at /home/jiaming/mavs_srcs/contract@0xe158db4981bc51387c9b5b16f44244f1010ab325.sol(1460)

[33mWarning[0m for UnrestrictedWrite in contract 'UBets':
    |
    |    function setMinBet(uint value) onlyOwner external {
  > |        min_bet = value;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe158db4981bc51387c9b5b16f44244f1010ab325.sol(1480)

[33mWarning[0m for UnrestrictedWrite in contract 'UBets':
    |
    |    function setMaxPlayers(uint value) onlyOwner external {
  > |        max_players = value;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe158db4981bc51387c9b5b16f44244f1010ab325.sol(1484)

[33mWarning[0m for UnrestrictedWrite in contract 'UBets':
    |
    |    function setCommision(uint value) onlyOwner external {
  > |        commision = value;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe158db4981bc51387c9b5b16f44244f1010ab325.sol(1488)

[33mWarning[0m for UnrestrictedWrite in contract 'UBets':
    |
    |    function setRefererCommision(uint value) onlyOwner external {
  > |        referer_commision = value;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe158db4981bc51387c9b5b16f44244f1010ab325.sol(1492)

[33mWarning[0m for UnrestrictedWrite in contract 'UBets':
    |
    |    function setOraclizeGasLimit(uint value) onlyOwner external {
  > |        oraclize_gas_limit = value;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe158db4981bc51387c9b5b16f44244f1010ab325.sol(1496)

[33mWarning[0m for UnrestrictedWrite in contract 'UBets':
    |        require(value != address(0), "Zero address");
    |        
  > |        owner = value;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xe158db4981bc51387c9b5b16f44244f1010ab325.sol(1506)

[33mWarning[0m for LockedEther in contract 'usingOraclize':
    |    */
    |
  > |    contract usingOraclize {
    |        uint constant day = 60*60*24;
    |        uint constant week = 60*60*24*7;
  at /home/jiaming/mavs_srcs/contract@0xe158db4981bc51387c9b5b16f44244f1010ab325.sol(289)


