Processing contract: /home/jiaming/mavs_srcs/contract@0xafd128d46a857da71a6b9205fc3f4c862cb9db1c.sol:Buffer
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xafd128d46a857da71a6b9205fc3f4c862cb9db1c.sol:CBOR
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xafd128d46a857da71a6b9205fc3f4c862cb9db1c.sol:CryptoBets
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xafd128d46a857da71a6b9205fc3f4c862cb9db1c.sol:OraclizeAddrResolverI
Processing contract: /home/jiaming/mavs_srcs/contract@0xafd128d46a857da71a6b9205fc3f4c862cb9db1c.sol:OraclizeI
Processing contract: /home/jiaming/mavs_srcs/contract@0xafd128d46a857da71a6b9205fc3f4c862cb9db1c.sol:Ownable
Processing contract: /home/jiaming/mavs_srcs/contract@0xafd128d46a857da71a6b9205fc3f4c862cb9db1c.sol:usingOraclize
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
  at /home/jiaming/mavs_srcs/contract@0xafd128d46a857da71a6b9205fc3f4c862cb9db1c.sol(85)

[33mWarning[0m for LockedEther in contract 'CBOR':
    |    }
    |
  > |    library CBOR {
    |        using Buffer for Buffer.buffer;
    |
  at /home/jiaming/mavs_srcs/contract@0xafd128d46a857da71a6b9205fc3f4c862cb9db1c.sol(217)

[31mViolation[0m for DAOConstantGas in contract 'CryptoBets':
    |        }
    |
  > |        room.players[result].transfer(win - (win * 15 / 100));
    |
    |        if(win * comm / 100 > oc) {
  at /home/jiaming/mavs_srcs/contract@0xafd128d46a857da71a6b9205fc3f4c862cb9db1c.sol(1368)

[31mViolation[0m for DAOConstantGas in contract 'CryptoBets':
    |            uint jp_winner = (uint(block.blockhash(block.number)) + result) % jackpot_players.length;
    |
  > |            jackpot_players[jp_winner].transfer(jackpot_bank);
    |
    |            jackpot_bank = 0;
  at /home/jiaming/mavs_srcs/contract@0xafd128d46a857da71a6b9205fc3f4c862cb9db1c.sol(1383)

[33mWarning[0m for DAOConstantGas in contract 'CryptoBets':
    |        withdraws[msg.sender] += value;
    |
  > |        msg.sender.transfer(value);
    |
    |        emit Withdraw(msg.sender, value);
  at /home/jiaming/mavs_srcs/contract@0xafd128d46a857da71a6b9205fc3f4c862cb9db1c.sol(1466)

[33mWarning[0m for LockedEther in contract 'CryptoBets':
    |}
    |
  > |contract CryptoBets is Ownable, usingOraclize {
    |    struct Room {
    |        address author;
  at /home/jiaming/mavs_srcs/contract@0xafd128d46a857da71a6b9205fc3f4c862cb9db1c.sol(1282)

[31mViolation[0m for TODAmount in contract 'CryptoBets':
    |            uint jp_winner = (uint(block.blockhash(block.number)) + result) % jackpot_players.length;
    |
  > |            jackpot_players[jp_winner].transfer(jackpot_bank);
    |
    |            jackpot_bank = 0;
  at /home/jiaming/mavs_srcs/contract@0xafd128d46a857da71a6b9205fc3f4c862cb9db1c.sol(1383)

[33mWarning[0m for TODAmount in contract 'CryptoBets':
    |        withdraws[msg.sender] += value;
    |
  > |        msg.sender.transfer(value);
    |
    |        emit Withdraw(msg.sender, value);
  at /home/jiaming/mavs_srcs/contract@0xafd128d46a857da71a6b9205fc3f4c862cb9db1c.sol(1466)

[33mWarning[0m for TODReceiver in contract 'CryptoBets':
    |        withdraws[msg.sender] += value;
    |
  > |        msg.sender.transfer(value);
    |
    |        emit Withdraw(msg.sender, value);
  at /home/jiaming/mavs_srcs/contract@0xafd128d46a857da71a6b9205fc3f4c862cb9db1c.sol(1466)

[33mWarning[0m for UnhandledException in contract 'CryptoBets':
    |                oraclize_setNetwork(networkID_auto);
    |
  > |            if(address(oraclize) != OAR.getAddress())
    |                oraclize = OraclizeI(OAR.getAddress());
    |
  at /home/jiaming/mavs_srcs/contract@0xafd128d46a857da71a6b9205fc3f4c862cb9db1c.sol(312)

[33mWarning[0m for UnhandledException in contract 'CryptoBets':
    |
    |            if(address(oraclize) != OAR.getAddress())
  > |                oraclize = OraclizeI(OAR.getAddress());
    |
    |            _;
  at /home/jiaming/mavs_srcs/contract@0xafd128d46a857da71a6b9205fc3f4c862cb9db1c.sol(313)

[33mWarning[0m for UnhandledException in contract 'CryptoBets':
    |
    |        function oraclize_getPrice(string datasource) oraclizeAPI internal returns (uint){
  > |            return oraclize.getPrice(datasource);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0xafd128d46a857da71a6b9205fc3f4c862cb9db1c.sol(375)

[33mWarning[0m for UnhandledException in contract 'CryptoBets':
    |        }
    |        function oraclize_query(string datasource, string arg, uint gaslimit) oraclizeAPI internal returns (bytes32 id){
  > |            uint price = oraclize.getPrice(datasource, gaslimit);
    |            if (price > 1 ether + tx.gasprice*gaslimit) return 0; // unexpectedly high price
    |            return oraclize.query_withGasLimit.value(price)(0, datasource, arg, gaslimit);
  at /home/jiaming/mavs_srcs/contract@0xafd128d46a857da71a6b9205fc3f4c862cb9db1c.sol(398)

[33mWarning[0m for UnhandledException in contract 'CryptoBets':
    |            uint price = oraclize.getPrice(datasource, gaslimit);
    |            if (price > 1 ether + tx.gasprice*gaslimit) return 0; // unexpectedly high price
  > |            return oraclize.query_withGasLimit.value(price)(0, datasource, arg, gaslimit);
    |        }
    |        function oraclize_query(string datasource, string arg1, string arg2) oraclizeAPI internal returns (bytes32 id){
  at /home/jiaming/mavs_srcs/contract@0xafd128d46a857da71a6b9205fc3f4c862cb9db1c.sol(400)

[33mWarning[0m for UnhandledException in contract 'CryptoBets':
    |
    |        function oraclize_cbAddress() oraclizeAPI internal returns (address){
  > |            return oraclize.cbAddress();
    |        }
    |        function oraclize_setProof(byte proofP) oraclizeAPI internal {
  at /home/jiaming/mavs_srcs/contract@0xafd128d46a857da71a6b9205fc3f4c862cb9db1c.sol(756)

[33mWarning[0m for UnhandledException in contract 'CryptoBets':
    |        }
    |        function oraclize_setCustomGasPrice(uint gasPrice) oraclizeAPI internal {
  > |            return oraclize.setCustomGasPrice(gasPrice);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0xafd128d46a857da71a6b9205fc3f4c862cb9db1c.sol(762)

[33mWarning[0m for UnhandledException in contract 'CryptoBets':
    |                    comm -= ref_payouts[i];
    |
  > |                    ref.transfer(p);
    |                    ref = refferals[ref];
    |                }
  at /home/jiaming/mavs_srcs/contract@0xafd128d46a857da71a6b9205fc3f4c862cb9db1c.sol(1361)

[33mWarning[0m for UnhandledException in contract 'CryptoBets':
    |        }
    |
  > |        room.players[result].transfer(win - (win * 15 / 100));
    |
    |        if(win * comm / 100 > oc) {
  at /home/jiaming/mavs_srcs/contract@0xafd128d46a857da71a6b9205fc3f4c862cb9db1c.sol(1368)

[33mWarning[0m for UnhandledException in contract 'CryptoBets':
    |            uint jp_winner = (uint(block.blockhash(block.number)) + result) % jackpot_players.length;
    |
  > |            jackpot_players[jp_winner].transfer(jackpot_bank);
    |
    |            jackpot_bank = 0;
  at /home/jiaming/mavs_srcs/contract@0xafd128d46a857da71a6b9205fc3f4c862cb9db1c.sol(1383)

[33mWarning[0m for UnhandledException in contract 'CryptoBets':
    |        withdraws[msg.sender] += value;
    |
  > |        msg.sender.transfer(value);
    |
    |        emit Withdraw(msg.sender, value);
  at /home/jiaming/mavs_srcs/contract@0xafd128d46a857da71a6b9205fc3f4c862cb9db1c.sol(1466)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CryptoBets':
    |                oraclize_setNetwork(networkID_auto);
    |
  > |            if(address(oraclize) != OAR.getAddress())
    |                oraclize = OraclizeI(OAR.getAddress());
    |
  at /home/jiaming/mavs_srcs/contract@0xafd128d46a857da71a6b9205fc3f4c862cb9db1c.sol(312)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CryptoBets':
    |
    |            if(address(oraclize) != OAR.getAddress())
  > |                oraclize = OraclizeI(OAR.getAddress());
    |
    |            _;
  at /home/jiaming/mavs_srcs/contract@0xafd128d46a857da71a6b9205fc3f4c862cb9db1c.sol(313)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CryptoBets':
    |
    |        function oraclize_getPrice(string datasource) oraclizeAPI internal returns (uint){
  > |            return oraclize.getPrice(datasource);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0xafd128d46a857da71a6b9205fc3f4c862cb9db1c.sol(375)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CryptoBets':
    |        }
    |        function oraclize_query(string datasource, string arg, uint gaslimit) oraclizeAPI internal returns (bytes32 id){
  > |            uint price = oraclize.getPrice(datasource, gaslimit);
    |            if (price > 1 ether + tx.gasprice*gaslimit) return 0; // unexpectedly high price
    |            return oraclize.query_withGasLimit.value(price)(0, datasource, arg, gaslimit);
  at /home/jiaming/mavs_srcs/contract@0xafd128d46a857da71a6b9205fc3f4c862cb9db1c.sol(398)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CryptoBets':
    |
    |        function oraclize_cbAddress() oraclizeAPI internal returns (address){
  > |            return oraclize.cbAddress();
    |        }
    |        function oraclize_setProof(byte proofP) oraclizeAPI internal {
  at /home/jiaming/mavs_srcs/contract@0xafd128d46a857da71a6b9205fc3f4c862cb9db1c.sol(756)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CryptoBets':
    |        }
    |        function oraclize_setCustomGasPrice(uint gasPrice) oraclizeAPI internal {
  > |            return oraclize.setCustomGasPrice(gasPrice);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0xafd128d46a857da71a6b9205fc3f4c862cb9db1c.sol(762)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoBets':
    |
    |            if(address(oraclize) != OAR.getAddress())
  > |                oraclize = OraclizeI(OAR.getAddress());
    |
    |            _;
  at /home/jiaming/mavs_srcs/contract@0xafd128d46a857da71a6b9205fc3f4c862cb9db1c.sol(313)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoBets':
    |        function oraclize_setNetwork() internal returns(bool){
    |            if (getCodeSize(0x1d3B2638a7cC9f2CB3D298A3DA7a90B67E5506ed)>0){ //mainnet
  > |                OAR = OraclizeAddrResolverI(0x1d3B2638a7cC9f2CB3D298A3DA7a90B67E5506ed);
    |                oraclize_setNetworkName("eth_mainnet");
    |                return true;
  at /home/jiaming/mavs_srcs/contract@0xafd128d46a857da71a6b9205fc3f4c862cb9db1c.sol(328)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoBets':
    |            }
    |            if (getCodeSize(0xc03A2615D5efaf5F49F60B7BB6583eaec212fdf1)>0){ //ropsten testnet
  > |                OAR = OraclizeAddrResolverI(0xc03A2615D5efaf5F49F60B7BB6583eaec212fdf1);
    |                oraclize_setNetworkName("eth_ropsten3");
    |                return true;
  at /home/jiaming/mavs_srcs/contract@0xafd128d46a857da71a6b9205fc3f4c862cb9db1c.sol(333)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoBets':
    |            }
    |            if (getCodeSize(0xB7A07BcF2Ba2f2703b24C0691b5278999C59AC7e)>0){ //kovan testnet
  > |                OAR = OraclizeAddrResolverI(0xB7A07BcF2Ba2f2703b24C0691b5278999C59AC7e);
    |                oraclize_setNetworkName("eth_kovan");
    |                return true;
  at /home/jiaming/mavs_srcs/contract@0xafd128d46a857da71a6b9205fc3f4c862cb9db1c.sol(338)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoBets':
    |            }
    |            if (getCodeSize(0x146500cfd35B22E4A392Fe0aDc06De1a1368Ed48)>0){ //rinkeby testnet
  > |                OAR = OraclizeAddrResolverI(0x146500cfd35B22E4A392Fe0aDc06De1a1368Ed48);
    |                oraclize_setNetworkName("eth_rinkeby");
    |                return true;
  at /home/jiaming/mavs_srcs/contract@0xafd128d46a857da71a6b9205fc3f4c862cb9db1c.sol(343)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoBets':
    |            }
    |            if (getCodeSize(0x6f485C8BF6fc43eA212E93BBF8ce046C7f1cb475)>0){ //ethereum-bridge
  > |                OAR = OraclizeAddrResolverI(0x6f485C8BF6fc43eA212E93BBF8ce046C7f1cb475);
    |                return true;
    |            }
  at /home/jiaming/mavs_srcs/contract@0xafd128d46a857da71a6b9205fc3f4c862cb9db1c.sol(348)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoBets':
    |            }
    |            if (getCodeSize(0x20e12A1F859B3FeaE5Fb2A0A32C18F5a65555bBF)>0){ //ether.camp ide
  > |                OAR = OraclizeAddrResolverI(0x20e12A1F859B3FeaE5Fb2A0A32C18F5a65555bBF);
    |                return true;
    |            }
  at /home/jiaming/mavs_srcs/contract@0xafd128d46a857da71a6b9205fc3f4c862cb9db1c.sol(352)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoBets':
    |            }
    |            if (getCodeSize(0x51efaF4c8B3C9AfBD5aB9F4bbC82784Ab6ef8fAA)>0){ //browser-solidity
  > |                OAR = OraclizeAddrResolverI(0x51efaF4c8B3C9AfBD5aB9F4bbC82784Ab6ef8fAA);
    |                return true;
    |            }
  at /home/jiaming/mavs_srcs/contract@0xafd128d46a857da71a6b9205fc3f4c862cb9db1c.sol(356)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoBets':
    |        emit OwnershipTransferred(_owner, address(0));
    |
  > |        _owner = address(0);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xafd128d46a857da71a6b9205fc3f4c862cb9db1c.sol(1266)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoBets':
    |        emit OwnershipTransferred(_owner, newOwner);
    |
  > |        _owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xafd128d46a857da71a6b9205fc3f4c862cb9db1c.sol(1278)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoBets':
    |}
    |
  > |contract CryptoBets is Ownable, usingOraclize {
    |    struct Room {
    |        address author;
  at /home/jiaming/mavs_srcs/contract@0xafd128d46a857da71a6b9205fc3f4c862cb9db1c.sol(1282)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoBets':
    |
    |        if(refferals[msg.sender] == address(0)) {
  > |            refferals[msg.sender] = refferal != address(0) ? refferal : msg.sender;
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0xafd128d46a857da71a6b9205fc3f4c862cb9db1c.sol(1426)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoBets':
    |        require(b > 0 && value <= b && address(this).balance >= value, "Insufficient funds");
    |
  > |        withdraws[msg.sender] += value;
    |
    |        msg.sender.transfer(value);
  at /home/jiaming/mavs_srcs/contract@0xafd128d46a857da71a6b9205fc3f4c862cb9db1c.sol(1464)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoBets':
    |
    |    function setJackpotMaxPlayers(uint value) onlyOwner external {
  > |        jackpot_max_players = value;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xafd128d46a857da71a6b9205fc3f4c862cb9db1c.sol(1472)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoBets':
    |
    |    function setOraclizeGasLimit(uint value) onlyOwner external {
  > |        oraclize_gas_limit = value;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xafd128d46a857da71a6b9205fc3f4c862cb9db1c.sol(1476)

[33mWarning[0m for LockedEther in contract 'usingOraclize':
    |    */
    |
  > |    contract usingOraclize {
    |        uint constant day = 60*60*24;
    |        uint constant week = 60*60*24*7;
  at /home/jiaming/mavs_srcs/contract@0xafd128d46a857da71a6b9205fc3f4c862cb9db1c.sol(289)


