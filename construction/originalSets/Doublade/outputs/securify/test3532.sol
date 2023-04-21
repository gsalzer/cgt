Processing contract: /home/jiaming/mavs_srcs/contract@0xe7b85bf9964a38124b1ce55392aa284ef3311c28.sol:Betting
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe7b85bf9964a38124b1ce55392aa284ef3311c28.sol:BettingControllerInterface
Processing contract: /home/jiaming/mavs_srcs/contract@0xe7b85bf9964a38124b1ce55392aa284ef3311c28.sol:OraclizeAddrResolverI
Processing contract: /home/jiaming/mavs_srcs/contract@0xe7b85bf9964a38124b1ce55392aa284ef3311c28.sol:OraclizeI
Processing contract: /home/jiaming/mavs_srcs/contract@0xe7b85bf9964a38124b1ce55392aa284ef3311c28.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe7b85bf9964a38124b1ce55392aa284ef3311c28.sol:usingOraclize
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAO in contract 'Betting':
    |        require((chronus.race_end && now > chronus.starting_time + chronus.race_duration + (30 days))
    |            || (chronus.voided_bet && now > chronus.voided_timestamp + (30 days)));
  > |        bettingControllerInstance.depositHouseTakeout.value(address(this).balance)();
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xe7b85bf9964a38124b1ce55392aa284ef3311c28.sol(1412)

[33mWarning[0m for DAOConstantGas in contract 'Betting':
    |        require(address(this).balance >= transfer_amount);
    |        voterIndex[msg.sender].rewarded = true;
  > |        msg.sender.transfer(transfer_amount);
    |        emit Withdraw(msg.sender, transfer_amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe7b85bf9964a38124b1ce55392aa284ef3311c28.sol(1356)

[33mWarning[0m for LockedEther in contract 'Betting':
    |}
    |
  > |contract Betting is usingOraclize {
    |    using SafeMath for uint256; //using safemath
    |
  at /home/jiaming/mavs_srcs/contract@0xe7b85bf9964a38124b1ce55392aa284ef3311c28.sol(1051)

[31mViolation[0m for TODAmount in contract 'Betting':
    |            require(house_fee < address(this).balance);
    |            total_reward = total_reward.sub(house_fee); 
  > |            bettingControllerInstance.depositHouseTakeout.value(house_fee)();
    |        }
    |        
  at /home/jiaming/mavs_srcs/contract@0xe7b85bf9964a38124b1ce55392aa284ef3311c28.sol(1279)

[31mViolation[0m for TODAmount in contract 'Betting':
    |        require((chronus.race_end && now > chronus.starting_time + chronus.race_duration + (30 days))
    |            || (chronus.voided_bet && now > chronus.voided_timestamp + (30 days)));
  > |        bettingControllerInstance.depositHouseTakeout.value(address(this).balance)();
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xe7b85bf9964a38124b1ce55392aa284ef3311c28.sol(1412)

[33mWarning[0m for TODReceiver in contract 'Betting':
    |        require(address(this).balance >= transfer_amount);
    |        voterIndex[msg.sender].rewarded = true;
  > |        msg.sender.transfer(transfer_amount);
    |        emit Withdraw(msg.sender, transfer_amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe7b85bf9964a38124b1ce55392aa284ef3311c28.sol(1356)

[33mWarning[0m for UnhandledException in contract 'Betting':
    |    modifier oraclizeAPI {
    |        if((address(OAR)==0)||(getCodeSize(address(OAR))==0)) oraclize_setNetwork(networkID_auto);
  > |        oraclize = OraclizeI(OAR.getAddress());
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe7b85bf9964a38124b1ce55392aa284ef3311c28.sol(101)

[33mWarning[0m for UnhandledException in contract 'Betting':
    |
    |    function oraclize_getPrice(string datasource) oraclizeAPI internal returns (uint){
  > |        return oraclize.getPrice(datasource);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe7b85bf9964a38124b1ce55392aa284ef3311c28.sol(157)

[33mWarning[0m for UnhandledException in contract 'Betting':
    |
    |    function oraclize_getPrice(string datasource, uint gaslimit) oraclizeAPI internal returns (uint){
  > |        return oraclize.getPrice(datasource, gaslimit);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xe7b85bf9964a38124b1ce55392aa284ef3311c28.sol(161)

[33mWarning[0m for UnhandledException in contract 'Betting':
    |    }
    |    function oraclize_query(uint timestamp, string datasource, string arg) oraclizeAPI internal returns (bytes32 id){
  > |        uint price = oraclize.getPrice(datasource);
    |        if (price > 1 ether + tx.gasprice*200000) return 0; // unexpectedly high price
    |        return oraclize.query.value(price)(timestamp, datasource, arg);
  at /home/jiaming/mavs_srcs/contract@0xe7b85bf9964a38124b1ce55392aa284ef3311c28.sol(170)

[33mWarning[0m for UnhandledException in contract 'Betting':
    |        uint price = oraclize.getPrice(datasource);
    |        if (price > 1 ether + tx.gasprice*200000) return 0; // unexpectedly high price
  > |        return oraclize.query.value(price)(timestamp, datasource, arg);
    |    }
    |    function oraclize_query(uint timestamp, string datasource, string arg, uint gaslimit) oraclizeAPI internal returns (bytes32 id){
  at /home/jiaming/mavs_srcs/contract@0xe7b85bf9964a38124b1ce55392aa284ef3311c28.sol(172)

[33mWarning[0m for UnhandledException in contract 'Betting':
    |    }
    |    function oraclize_query(uint timestamp, string datasource, string arg, uint gaslimit) oraclizeAPI internal returns (bytes32 id){
  > |        uint price = oraclize.getPrice(datasource, gaslimit);
    |        if (price > 1 ether + tx.gasprice*gaslimit) return 0; // unexpectedly high price
    |        return oraclize.query_withGasLimit.value(price)(timestamp, datasource, arg, gaslimit);
  at /home/jiaming/mavs_srcs/contract@0xe7b85bf9964a38124b1ce55392aa284ef3311c28.sol(175)

[33mWarning[0m for UnhandledException in contract 'Betting':
    |        uint price = oraclize.getPrice(datasource, gaslimit);
    |        if (price > 1 ether + tx.gasprice*gaslimit) return 0; // unexpectedly high price
  > |        return oraclize.query_withGasLimit.value(price)(timestamp, datasource, arg, gaslimit);
    |    }
    |    function oraclize_query(string datasource, string arg, uint gaslimit) oraclizeAPI internal returns (bytes32 id){
  at /home/jiaming/mavs_srcs/contract@0xe7b85bf9964a38124b1ce55392aa284ef3311c28.sol(177)

[33mWarning[0m for UnhandledException in contract 'Betting':
    |
    |    function oraclize_cbAddress() oraclizeAPI internal returns (address){
  > |        return oraclize.cbAddress();
    |    }
    |    function oraclize_setProof(byte proofP) oraclizeAPI internal {
  at /home/jiaming/mavs_srcs/contract@0xe7b85bf9964a38124b1ce55392aa284ef3311c28.sol(538)

[33mWarning[0m for UnhandledException in contract 'Betting':
    |        chronus.race_start = true;
    |        chronus.betting_open = false;
  > |        bettingControllerInstance.remoteBettingClose();
    |        coin_pointer = oraclizeIndex[myid];
    |
  at /home/jiaming/mavs_srcs/contract@0xe7b85bf9964a38124b1ce55392aa284ef3311c28.sol(1167)

[33mWarning[0m for UnhandledException in contract 'Betting':
    |            require(house_fee < address(this).balance);
    |            total_reward = total_reward.sub(house_fee); 
  > |            bettingControllerInstance.depositHouseTakeout.value(house_fee)();
    |        }
    |        
  at /home/jiaming/mavs_srcs/contract@0xe7b85bf9964a38124b1ce55392aa284ef3311c28.sol(1279)

[33mWarning[0m for UnhandledException in contract 'Betting':
    |        require(address(this).balance >= transfer_amount);
    |        voterIndex[msg.sender].rewarded = true;
  > |        msg.sender.transfer(transfer_amount);
    |        emit Withdraw(msg.sender, transfer_amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe7b85bf9964a38124b1ce55392aa284ef3311c28.sol(1356)

[33mWarning[0m for UnhandledException in contract 'Betting':
    |        chronus.race_end = true;
    |        chronus.voided_timestamp=uint32(now);
  > |        bettingControllerInstance.remoteBettingClose();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe7b85bf9964a38124b1ce55392aa284ef3311c28.sol(1405)

[33mWarning[0m for UnhandledException in contract 'Betting':
    |        require((chronus.race_end && now > chronus.starting_time + chronus.race_duration + (30 days))
    |            || (chronus.voided_bet && now > chronus.voided_timestamp + (30 days)));
  > |        bettingControllerInstance.depositHouseTakeout.value(address(this).balance)();
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xe7b85bf9964a38124b1ce55392aa284ef3311c28.sol(1412)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Betting':
    |    modifier oraclizeAPI {
    |        if((address(OAR)==0)||(getCodeSize(address(OAR))==0)) oraclize_setNetwork(networkID_auto);
  > |        oraclize = OraclizeI(OAR.getAddress());
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe7b85bf9964a38124b1ce55392aa284ef3311c28.sol(101)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Betting':
    |
    |    function oraclize_getPrice(string datasource) oraclizeAPI internal returns (uint){
  > |        return oraclize.getPrice(datasource);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe7b85bf9964a38124b1ce55392aa284ef3311c28.sol(157)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Betting':
    |
    |    function oraclize_getPrice(string datasource, uint gaslimit) oraclizeAPI internal returns (uint){
  > |        return oraclize.getPrice(datasource, gaslimit);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xe7b85bf9964a38124b1ce55392aa284ef3311c28.sol(161)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Betting':
    |    }
    |    function oraclize_query(uint timestamp, string datasource, string arg) oraclizeAPI internal returns (bytes32 id){
  > |        uint price = oraclize.getPrice(datasource);
    |        if (price > 1 ether + tx.gasprice*200000) return 0; // unexpectedly high price
    |        return oraclize.query.value(price)(timestamp, datasource, arg);
  at /home/jiaming/mavs_srcs/contract@0xe7b85bf9964a38124b1ce55392aa284ef3311c28.sol(170)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Betting':
    |    }
    |    function oraclize_query(uint timestamp, string datasource, string arg, uint gaslimit) oraclizeAPI internal returns (bytes32 id){
  > |        uint price = oraclize.getPrice(datasource, gaslimit);
    |        if (price > 1 ether + tx.gasprice*gaslimit) return 0; // unexpectedly high price
    |        return oraclize.query_withGasLimit.value(price)(timestamp, datasource, arg, gaslimit);
  at /home/jiaming/mavs_srcs/contract@0xe7b85bf9964a38124b1ce55392aa284ef3311c28.sol(175)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Betting':
    |
    |    function oraclize_cbAddress() oraclizeAPI internal returns (address){
  > |        return oraclize.cbAddress();
    |    }
    |    function oraclize_setProof(byte proofP) oraclizeAPI internal {
  at /home/jiaming/mavs_srcs/contract@0xe7b85bf9964a38124b1ce55392aa284ef3311c28.sol(538)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Betting':
    |        chronus.race_start = true;
    |        chronus.betting_open = false;
  > |        bettingControllerInstance.remoteBettingClose();
    |        coin_pointer = oraclizeIndex[myid];
    |
  at /home/jiaming/mavs_srcs/contract@0xe7b85bf9964a38124b1ce55392aa284ef3311c28.sol(1167)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Betting':
    |            require(house_fee < address(this).balance);
    |            total_reward = total_reward.sub(house_fee); 
  > |            bettingControllerInstance.depositHouseTakeout.value(house_fee)();
    |        }
    |        
  at /home/jiaming/mavs_srcs/contract@0xe7b85bf9964a38124b1ce55392aa284ef3311c28.sol(1279)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Betting':
    |        chronus.race_end = true;
    |        chronus.voided_timestamp=uint32(now);
  > |        bettingControllerInstance.remoteBettingClose();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe7b85bf9964a38124b1ce55392aa284ef3311c28.sol(1405)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Betting':
    |        require((chronus.race_end && now > chronus.starting_time + chronus.race_duration + (30 days))
    |            || (chronus.voided_bet && now > chronus.voided_timestamp + (30 days)));
  > |        bettingControllerInstance.depositHouseTakeout.value(address(this).balance)();
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xe7b85bf9964a38124b1ce55392aa284ef3311c28.sol(1412)

[33mWarning[0m for UnrestrictedWrite in contract 'Betting':
    |    modifier oraclizeAPI {
    |        if((address(OAR)==0)||(getCodeSize(address(OAR))==0)) oraclize_setNetwork(networkID_auto);
  > |        oraclize = OraclizeI(OAR.getAddress());
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe7b85bf9964a38124b1ce55392aa284ef3311c28.sol(101)

[33mWarning[0m for UnrestrictedWrite in contract 'Betting':
    |    function oraclize_setNetwork(uint8 networkID) internal returns(bool){
    |        if (getCodeSize(0x1d3B2638a7cC9f2CB3D298A3DA7a90B67E5506ed)>0){ //mainnet
  > |            OAR = OraclizeAddrResolverI(0x1d3B2638a7cC9f2CB3D298A3DA7a90B67E5506ed);
    |            oraclize_setNetworkName("eth_mainnet");
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xe7b85bf9964a38124b1ce55392aa284ef3311c28.sol(112)

[33mWarning[0m for UnrestrictedWrite in contract 'Betting':
    |        }
    |        if (getCodeSize(0xc03A2615D5efaf5F49F60B7BB6583eaec212fdf1)>0){ //ropsten testnet
  > |            OAR = OraclizeAddrResolverI(0xc03A2615D5efaf5F49F60B7BB6583eaec212fdf1);
    |            oraclize_setNetworkName("eth_ropsten3");
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xe7b85bf9964a38124b1ce55392aa284ef3311c28.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'Betting':
    |        }
    |        if (getCodeSize(0xB7A07BcF2Ba2f2703b24C0691b5278999C59AC7e)>0){ //kovan testnet
  > |            OAR = OraclizeAddrResolverI(0xB7A07BcF2Ba2f2703b24C0691b5278999C59AC7e);
    |            oraclize_setNetworkName("eth_kovan");
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xe7b85bf9964a38124b1ce55392aa284ef3311c28.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'Betting':
    |        }
    |        if (getCodeSize(0x146500cfd35B22E4A392Fe0aDc06De1a1368Ed48)>0){ //rinkeby testnet
  > |            OAR = OraclizeAddrResolverI(0x146500cfd35B22E4A392Fe0aDc06De1a1368Ed48);
    |            oraclize_setNetworkName("eth_rinkeby");
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xe7b85bf9964a38124b1ce55392aa284ef3311c28.sol(127)

[33mWarning[0m for UnrestrictedWrite in contract 'Betting':
    |        }
    |        if (getCodeSize(0x6f485C8BF6fc43eA212E93BBF8ce046C7f1cb475)>0){ //ethereum-bridge
  > |            OAR = OraclizeAddrResolverI(0x6f485C8BF6fc43eA212E93BBF8ce046C7f1cb475);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xe7b85bf9964a38124b1ce55392aa284ef3311c28.sol(132)

[33mWarning[0m for UnrestrictedWrite in contract 'Betting':
    |        }
    |        if (getCodeSize(0x20e12A1F859B3FeaE5Fb2A0A32C18F5a65555bBF)>0){ //ether.camp ide
  > |            OAR = OraclizeAddrResolverI(0x20e12A1F859B3FeaE5Fb2A0A32C18F5a65555bBF);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xe7b85bf9964a38124b1ce55392aa284ef3311c28.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'Betting':
    |        }
    |        if (getCodeSize(0x51efaF4c8B3C9AfBD5aB9F4bbC82784Ab6ef8fAA)>0){ //browser-solidity
  > |            OAR = OraclizeAddrResolverI(0x51efaF4c8B3C9AfBD5aB9F4bbC82784Ab6ef8fAA);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xe7b85bf9964a38124b1ce55392aa284ef3311c28.sol(140)

[33mWarning[0m for UnrestrictedWrite in contract 'Betting':
    |}
    |
  > |contract Betting is usingOraclize {
    |    using SafeMath for uint256; //using safemath
    |
  at /home/jiaming/mavs_srcs/contract@0xe7b85bf9964a38124b1ce55392aa284ef3311c28.sol(1051)

[33mWarning[0m for UnrestrictedWrite in contract 'Betting':
    |    //function to change owner
    |    function changeOwnership(address _newOwner) onlyOwner external {
  > |        owner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe7b85bf9964a38124b1ce55392aa284ef3311c28.sol(1157)

[33mWarning[0m for UnrestrictedWrite in contract 'Betting':
    |        require (!chronus.race_end);
    |        bytes32 coin_pointer; // variable to differentiate different callbacks
  > |        chronus.race_start = true;
    |        chronus.betting_open = false;
    |        bettingControllerInstance.remoteBettingClose();
  at /home/jiaming/mavs_srcs/contract@0xe7b85bf9964a38124b1ce55392aa284ef3311c28.sol(1165)

[33mWarning[0m for UnrestrictedWrite in contract 'Betting':
    |        bytes32 coin_pointer; // variable to differentiate different callbacks
    |        chronus.race_start = true;
  > |        chronus.betting_open = false;
    |        bettingControllerInstance.remoteBettingClose();
    |        coin_pointer = oraclizeIndex[myid];
  at /home/jiaming/mavs_srcs/contract@0xe7b85bf9964a38124b1ce55392aa284ef3311c28.sol(1166)

[33mWarning[0m for UnrestrictedWrite in contract 'Betting':
    |        }
    |        uint _newAmount = voterIndex[msg.sender].bets[horse] + msg.value;
  > |        voterIndex[msg.sender].bets[horse] = _newAmount;
    |        voterIndex[msg.sender].total_bet += uint160(msg.value);
    |        uint160 _newTotal = coinIndex[horse].total + uint160(msg.value); 
  at /home/jiaming/mavs_srcs/contract@0xe7b85bf9964a38124b1ce55392aa284ef3311c28.sol(1205)

[33mWarning[0m for UnrestrictedWrite in contract 'Betting':
    |        uint _newAmount = voterIndex[msg.sender].bets[horse] + msg.value;
    |        voterIndex[msg.sender].bets[horse] = _newAmount;
  > |        voterIndex[msg.sender].total_bet += uint160(msg.value);
    |        uint160 _newTotal = coinIndex[horse].total + uint160(msg.value); 
    |        uint32 _newCount = coinIndex[horse].count + 1;
  at /home/jiaming/mavs_srcs/contract@0xe7b85bf9964a38124b1ce55392aa284ef3311c28.sol(1206)

[33mWarning[0m for UnrestrictedWrite in contract 'Betting':
    |            uint house_fee = total_reward.mul(5).div(100);
    |            require(house_fee < address(this).balance);
  > |            total_reward = total_reward.sub(house_fee); 
    |            bettingControllerInstance.depositHouseTakeout.value(house_fee)();
    |        }
  at /home/jiaming/mavs_srcs/contract@0xe7b85bf9964a38124b1ce55392aa284ef3311c28.sol(1278)

[33mWarning[0m for UnrestrictedWrite in contract 'Betting':
    |        if (horses.BTC_delta > horses.ETH_delta) {
    |            if (horses.BTC_delta > horses.LTC_delta) {
  > |                winner_horse[horses.BTC] = true;
    |                winnerPoolTotal = coinIndex[horses.BTC].total;
    |            }
  at /home/jiaming/mavs_srcs/contract@0xe7b85bf9964a38124b1ce55392aa284ef3311c28.sol(1284)

[33mWarning[0m for UnrestrictedWrite in contract 'Betting':
    |            if (horses.BTC_delta > horses.LTC_delta) {
    |                winner_horse[horses.BTC] = true;
  > |                winnerPoolTotal = coinIndex[horses.BTC].total;
    |            }
    |            else if(horses.LTC_delta > horses.BTC_delta) {
  at /home/jiaming/mavs_srcs/contract@0xe7b85bf9964a38124b1ce55392aa284ef3311c28.sol(1285)

[33mWarning[0m for UnrestrictedWrite in contract 'Betting':
    |            }
    |            else if(horses.LTC_delta > horses.BTC_delta) {
  > |                winner_horse[horses.LTC] = true;
    |                winnerPoolTotal = coinIndex[horses.LTC].total;
    |            } else {
  at /home/jiaming/mavs_srcs/contract@0xe7b85bf9964a38124b1ce55392aa284ef3311c28.sol(1288)

[33mWarning[0m for UnrestrictedWrite in contract 'Betting':
    |            else if(horses.LTC_delta > horses.BTC_delta) {
    |                winner_horse[horses.LTC] = true;
  > |                winnerPoolTotal = coinIndex[horses.LTC].total;
    |            } else {
    |                winner_horse[horses.BTC] = true;
  at /home/jiaming/mavs_srcs/contract@0xe7b85bf9964a38124b1ce55392aa284ef3311c28.sol(1289)

[33mWarning[0m for UnrestrictedWrite in contract 'Betting':
    |                winnerPoolTotal = coinIndex[horses.LTC].total;
    |            } else {
  > |                winner_horse[horses.BTC] = true;
    |                winner_horse[horses.LTC] = true;
    |                winnerPoolTotal = coinIndex[horses.BTC].total + (coinIndex[horses.LTC].total);
  at /home/jiaming/mavs_srcs/contract@0xe7b85bf9964a38124b1ce55392aa284ef3311c28.sol(1291)

[33mWarning[0m for UnrestrictedWrite in contract 'Betting':
    |            } else {
    |                winner_horse[horses.BTC] = true;
  > |                winner_horse[horses.LTC] = true;
    |                winnerPoolTotal = coinIndex[horses.BTC].total + (coinIndex[horses.LTC].total);
    |            }
  at /home/jiaming/mavs_srcs/contract@0xe7b85bf9964a38124b1ce55392aa284ef3311c28.sol(1292)

[33mWarning[0m for UnrestrictedWrite in contract 'Betting':
    |                winner_horse[horses.BTC] = true;
    |                winner_horse[horses.LTC] = true;
  > |                winnerPoolTotal = coinIndex[horses.BTC].total + (coinIndex[horses.LTC].total);
    |            }
    |        } else if(horses.ETH_delta > horses.BTC_delta) {
  at /home/jiaming/mavs_srcs/contract@0xe7b85bf9964a38124b1ce55392aa284ef3311c28.sol(1293)

[33mWarning[0m for UnrestrictedWrite in contract 'Betting':
    |        } else if(horses.ETH_delta > horses.BTC_delta) {
    |            if (horses.ETH_delta > horses.LTC_delta) {
  > |                winner_horse[horses.ETH] = true;
    |                winnerPoolTotal = coinIndex[horses.ETH].total;
    |            }
  at /home/jiaming/mavs_srcs/contract@0xe7b85bf9964a38124b1ce55392aa284ef3311c28.sol(1297)

[33mWarning[0m for UnrestrictedWrite in contract 'Betting':
    |            if (horses.ETH_delta > horses.LTC_delta) {
    |                winner_horse[horses.ETH] = true;
  > |                winnerPoolTotal = coinIndex[horses.ETH].total;
    |            }
    |            else if (horses.LTC_delta > horses.ETH_delta) {
  at /home/jiaming/mavs_srcs/contract@0xe7b85bf9964a38124b1ce55392aa284ef3311c28.sol(1298)

[33mWarning[0m for UnrestrictedWrite in contract 'Betting':
    |            }
    |            else if (horses.LTC_delta > horses.ETH_delta) {
  > |                winner_horse[horses.LTC] = true;
    |                winnerPoolTotal = coinIndex[horses.LTC].total;
    |            } else {
  at /home/jiaming/mavs_srcs/contract@0xe7b85bf9964a38124b1ce55392aa284ef3311c28.sol(1301)

[33mWarning[0m for UnrestrictedWrite in contract 'Betting':
    |            else if (horses.LTC_delta > horses.ETH_delta) {
    |                winner_horse[horses.LTC] = true;
  > |                winnerPoolTotal = coinIndex[horses.LTC].total;
    |            } else {
    |                winner_horse[horses.ETH] = true;
  at /home/jiaming/mavs_srcs/contract@0xe7b85bf9964a38124b1ce55392aa284ef3311c28.sol(1302)

[33mWarning[0m for UnrestrictedWrite in contract 'Betting':
    |                winnerPoolTotal = coinIndex[horses.LTC].total;
    |            } else {
  > |                winner_horse[horses.ETH] = true;
    |                winner_horse[horses.LTC] = true;
    |                winnerPoolTotal = coinIndex[horses.ETH].total + (coinIndex[horses.LTC].total);
  at /home/jiaming/mavs_srcs/contract@0xe7b85bf9964a38124b1ce55392aa284ef3311c28.sol(1304)

[33mWarning[0m for UnrestrictedWrite in contract 'Betting':
    |            } else {
    |                winner_horse[horses.ETH] = true;
  > |                winner_horse[horses.LTC] = true;
    |                winnerPoolTotal = coinIndex[horses.ETH].total + (coinIndex[horses.LTC].total);
    |            }
  at /home/jiaming/mavs_srcs/contract@0xe7b85bf9964a38124b1ce55392aa284ef3311c28.sol(1305)

[33mWarning[0m for UnrestrictedWrite in contract 'Betting':
    |                winner_horse[horses.ETH] = true;
    |                winner_horse[horses.LTC] = true;
  > |                winnerPoolTotal = coinIndex[horses.ETH].total + (coinIndex[horses.LTC].total);
    |            }
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0xe7b85bf9964a38124b1ce55392aa284ef3311c28.sol(1306)

[33mWarning[0m for UnrestrictedWrite in contract 'Betting':
    |        } else {
    |            if (horses.LTC_delta > horses.ETH_delta) {
  > |                winner_horse[horses.LTC] = true;
    |                winnerPoolTotal = coinIndex[horses.LTC].total;
    |            } else if(horses.LTC_delta < horses.ETH_delta){
  at /home/jiaming/mavs_srcs/contract@0xe7b85bf9964a38124b1ce55392aa284ef3311c28.sol(1310)

[33mWarning[0m for UnrestrictedWrite in contract 'Betting':
    |            if (horses.LTC_delta > horses.ETH_delta) {
    |                winner_horse[horses.LTC] = true;
  > |                winnerPoolTotal = coinIndex[horses.LTC].total;
    |            } else if(horses.LTC_delta < horses.ETH_delta){
    |                winner_horse[horses.ETH] = true;
  at /home/jiaming/mavs_srcs/contract@0xe7b85bf9964a38124b1ce55392aa284ef3311c28.sol(1311)

[33mWarning[0m for UnrestrictedWrite in contract 'Betting':
    |                winnerPoolTotal = coinIndex[horses.LTC].total;
    |            } else if(horses.LTC_delta < horses.ETH_delta){
  > |                winner_horse[horses.ETH] = true;
    |                winner_horse[horses.BTC] = true;
    |                winnerPoolTotal = coinIndex[horses.ETH].total + (coinIndex[horses.BTC].total);
  at /home/jiaming/mavs_srcs/contract@0xe7b85bf9964a38124b1ce55392aa284ef3311c28.sol(1313)

[33mWarning[0m for UnrestrictedWrite in contract 'Betting':
    |            } else if(horses.LTC_delta < horses.ETH_delta){
    |                winner_horse[horses.ETH] = true;
  > |                winner_horse[horses.BTC] = true;
    |                winnerPoolTotal = coinIndex[horses.ETH].total + (coinIndex[horses.BTC].total);
    |            } else {
  at /home/jiaming/mavs_srcs/contract@0xe7b85bf9964a38124b1ce55392aa284ef3311c28.sol(1314)

[33mWarning[0m for UnrestrictedWrite in contract 'Betting':
    |                winner_horse[horses.ETH] = true;
    |                winner_horse[horses.BTC] = true;
  > |                winnerPoolTotal = coinIndex[horses.ETH].total + (coinIndex[horses.BTC].total);
    |            } else {
    |                winner_horse[horses.LTC] = true;
  at /home/jiaming/mavs_srcs/contract@0xe7b85bf9964a38124b1ce55392aa284ef3311c28.sol(1315)

[33mWarning[0m for UnrestrictedWrite in contract 'Betting':
    |                winnerPoolTotal = coinIndex[horses.ETH].total + (coinIndex[horses.BTC].total);
    |            } else {
  > |                winner_horse[horses.LTC] = true;
    |                winner_horse[horses.ETH] = true;
    |                winner_horse[horses.BTC] = true;
  at /home/jiaming/mavs_srcs/contract@0xe7b85bf9964a38124b1ce55392aa284ef3311c28.sol(1317)

[33mWarning[0m for UnrestrictedWrite in contract 'Betting':
    |            } else {
    |                winner_horse[horses.LTC] = true;
  > |                winner_horse[horses.ETH] = true;
    |                winner_horse[horses.BTC] = true;
    |                winnerPoolTotal = coinIndex[horses.ETH].total + (coinIndex[horses.BTC].total) + (coinIndex[horses.LTC].total);
  at /home/jiaming/mavs_srcs/contract@0xe7b85bf9964a38124b1ce55392aa284ef3311c28.sol(1318)

[33mWarning[0m for UnrestrictedWrite in contract 'Betting':
    |                winner_horse[horses.LTC] = true;
    |                winner_horse[horses.ETH] = true;
  > |                winner_horse[horses.BTC] = true;
    |                winnerPoolTotal = coinIndex[horses.ETH].total + (coinIndex[horses.BTC].total) + (coinIndex[horses.LTC].total);
    |            }
  at /home/jiaming/mavs_srcs/contract@0xe7b85bf9964a38124b1ce55392aa284ef3311c28.sol(1319)

[33mWarning[0m for UnrestrictedWrite in contract 'Betting':
    |                winner_horse[horses.ETH] = true;
    |                winner_horse[horses.BTC] = true;
  > |                winnerPoolTotal = coinIndex[horses.ETH].total + (coinIndex[horses.BTC].total) + (coinIndex[horses.LTC].total);
    |            }
    |        }
  at /home/jiaming/mavs_srcs/contract@0xe7b85bf9964a38124b1ce55392aa284ef3311c28.sol(1320)

[33mWarning[0m for UnrestrictedWrite in contract 'Betting':
    |            }
    |        }
  > |        chronus.race_end = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe7b85bf9964a38124b1ce55392aa284ef3311c28.sol(1323)

[33mWarning[0m for UnrestrictedWrite in contract 'Betting':
    |        uint transfer_amount = calculateReward(msg.sender);
    |        require(address(this).balance >= transfer_amount);
  > |        voterIndex[msg.sender].rewarded = true;
    |        msg.sender.transfer(transfer_amount);
    |        emit Withdraw(msg.sender, transfer_amount);
  at /home/jiaming/mavs_srcs/contract@0xe7b85bf9964a38124b1ce55392aa284ef3311c28.sol(1355)

[33mWarning[0m for UnrestrictedWrite in contract 'Betting':
    |    
    |    function forceVoidRace() internal {
  > |        chronus.voided_bet=true;
    |        chronus.race_end = true;
    |        chronus.voided_timestamp=uint32(now);
  at /home/jiaming/mavs_srcs/contract@0xe7b85bf9964a38124b1ce55392aa284ef3311c28.sol(1361)

[33mWarning[0m for UnrestrictedWrite in contract 'Betting':
    |    function forceVoidRace() internal {
    |        chronus.voided_bet=true;
  > |        chronus.race_end = true;
    |        chronus.voided_timestamp=uint32(now);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe7b85bf9964a38124b1ce55392aa284ef3311c28.sol(1362)

[33mWarning[0m for UnrestrictedWrite in contract 'Betting':
    |        chronus.voided_bet=true;
    |        chronus.race_end = true;
  > |        chronus.voided_timestamp=uint32(now);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe7b85bf9964a38124b1ce55392aa284ef3311c28.sol(1363)

[33mWarning[0m for UnrestrictedWrite in contract 'Betting':
    |        require((chronus.betting_open && !chronus.race_start)
    |            || (chronus.race_start && !chronus.race_end));
  > |        chronus.voided_bet = true;
    |        chronus.race_end = true;
    |        chronus.voided_timestamp=uint32(now);
  at /home/jiaming/mavs_srcs/contract@0xe7b85bf9964a38124b1ce55392aa284ef3311c28.sol(1402)

[33mWarning[0m for UnrestrictedWrite in contract 'Betting':
    |            || (chronus.race_start && !chronus.race_end));
    |        chronus.voided_bet = true;
  > |        chronus.race_end = true;
    |        chronus.voided_timestamp=uint32(now);
    |        bettingControllerInstance.remoteBettingClose();
  at /home/jiaming/mavs_srcs/contract@0xe7b85bf9964a38124b1ce55392aa284ef3311c28.sol(1403)

[33mWarning[0m for UnrestrictedWrite in contract 'Betting':
    |        chronus.voided_bet = true;
    |        chronus.race_end = true;
  > |        chronus.voided_timestamp=uint32(now);
    |        bettingControllerInstance.remoteBettingClose();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe7b85bf9964a38124b1ce55392aa284ef3311c28.sol(1404)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.20;
    |
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xe7b85bf9964a38124b1ce55392aa284ef3311c28.sol(3)

[33mWarning[0m for LockedEther in contract 'usingOraclize':
    |    function getAddress() returns (address _addr);
    |}
  > |contract usingOraclize {
    |    uint constant day = 60*60*24;
    |    uint constant week = 60*60*24*7;
  at /home/jiaming/mavs_srcs/contract@0xe7b85bf9964a38124b1ce55392aa284ef3311c28.sol(80)


