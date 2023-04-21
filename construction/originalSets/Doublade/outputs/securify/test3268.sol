Processing contract: /home/jiaming/mavs_srcs/contract@0xd61266e619f169b2cc766b192ca67d083f0c7144.sol:OraclizeAddrResolverI
Processing contract: /home/jiaming/mavs_srcs/contract@0xd61266e619f169b2cc766b192ca67d083f0c7144.sol:OraclizeI
Processing contract: /home/jiaming/mavs_srcs/contract@0xd61266e619f169b2cc766b192ca67d083f0c7144.sol:coinback
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd61266e619f169b2cc766b192ca67d083f0c7144.sol:usingOraclize
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAO in contract 'coinback':
    |        uint price = oraclize.getPrice(datasource, gaslimit);
    |        if (price > 1 ether + tx.gasprice*gaslimit) return 0; // unexpectedly high price
  > |        return oraclize.query_withGasLimit.value(price)(0, datasource, arg, gaslimit);
    |    }
    |    function oraclize_query(string datasource, string arg1, string arg2) oraclizeAPI internal returns (bytes32 id){
  at /home/jiaming/mavs_srcs/contract@0xd61266e619f169b2cc766b192ca67d083f0c7144.sol(90)

[33mWarning[0m for LockedEther in contract 'coinback':
    |// </ORACLIZE_API>
    |
  > |contract coinback is usingOraclize {
    |
    |    struct betInfo{
  at /home/jiaming/mavs_srcs/contract@0xd61266e619f169b2cc766b192ca67d083f0c7144.sol(251)

[31mViolation[0m for TODAmount in contract 'coinback':
    |        LOG_LuckyPLayer(betMap[index].srcAddress,totalAward,turnId);
    |
  > |        if(!betMap[index].srcAddress.send(winCoin)) throw;
    |        if(!owner.send(waiterfree)) throw;
    |
  at /home/jiaming/mavs_srcs/contract@0xd61266e619f169b2cc766b192ca67d083f0c7144.sol(355)

[31mViolation[0m for TODAmount in contract 'coinback':
    |
    |        if(!betMap[index].srcAddress.send(winCoin)) throw;
  > |        if(!owner.send(waiterfree)) throw;
    |
    |        startNewTurn();
  at /home/jiaming/mavs_srcs/contract@0xd61266e619f169b2cc766b192ca67d083f0c7144.sol(356)

[31mViolation[0m for TODReceiver in contract 'coinback':
    |
    |        if(!betMap[index].srcAddress.send(winCoin)) throw;
  > |        if(!owner.send(waiterfree)) throw;
    |
    |        startNewTurn();
  at /home/jiaming/mavs_srcs/contract@0xd61266e619f169b2cc766b192ca67d083f0c7144.sol(356)

[33mWarning[0m for UnhandledException in contract 'coinback':
    |    modifier oraclizeAPI {
    |        if(address(OAR)==0) oraclize_setNetwork(networkID_auto);
  > |        oraclize = OraclizeI(OAR.getAddress());
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd61266e619f169b2cc766b192ca67d083f0c7144.sol(35)

[33mWarning[0m for UnhandledException in contract 'coinback':
    |    }
    |    function oraclize_query(string datasource, string arg, uint gaslimit) oraclizeAPI internal returns (bytes32 id){
  > |        uint price = oraclize.getPrice(datasource, gaslimit);
    |        if (price > 1 ether + tx.gasprice*gaslimit) return 0; // unexpectedly high price
    |        return oraclize.query_withGasLimit.value(price)(0, datasource, arg, gaslimit);
  at /home/jiaming/mavs_srcs/contract@0xd61266e619f169b2cc766b192ca67d083f0c7144.sol(88)

[33mWarning[0m for UnhandledException in contract 'coinback':
    |        uint price = oraclize.getPrice(datasource, gaslimit);
    |        if (price > 1 ether + tx.gasprice*gaslimit) return 0; // unexpectedly high price
  > |        return oraclize.query_withGasLimit.value(price)(0, datasource, arg, gaslimit);
    |    }
    |    function oraclize_query(string datasource, string arg1, string arg2) oraclizeAPI internal returns (bytes32 id){
  at /home/jiaming/mavs_srcs/contract@0xd61266e619f169b2cc766b192ca67d083f0c7144.sol(90)

[33mWarning[0m for UnhandledException in contract 'coinback':
    |    }
    |    function oraclize_cbAddress() oraclizeAPI internal returns (address){
  > |        return oraclize.cbAddress();
    |    }
    |    function oraclize_setProof(byte proofP) oraclizeAPI internal {
  at /home/jiaming/mavs_srcs/contract@0xd61266e619f169b2cc766b192ca67d083f0c7144.sol(113)

[33mWarning[0m for UnhandledException in contract 'coinback':
    |        LOG_LuckyPLayer(betMap[index].srcAddress,totalAward,turnId);
    |
  > |        if(!betMap[index].srcAddress.send(winCoin)) throw;
    |        if(!owner.send(waiterfree)) throw;
    |
  at /home/jiaming/mavs_srcs/contract@0xd61266e619f169b2cc766b192ca67d083f0c7144.sol(355)

[33mWarning[0m for UnhandledException in contract 'coinback':
    |
    |        if(!betMap[index].srcAddress.send(winCoin)) throw;
  > |        if(!owner.send(waiterfree)) throw;
    |
    |        startNewTurn();
  at /home/jiaming/mavs_srcs/contract@0xd61266e619f169b2cc766b192ca67d083f0c7144.sol(356)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'coinback':
    |    modifier oraclizeAPI {
    |        if(address(OAR)==0) oraclize_setNetwork(networkID_auto);
  > |        oraclize = OraclizeI(OAR.getAddress());
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd61266e619f169b2cc766b192ca67d083f0c7144.sol(35)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'coinback':
    |    }
    |    function oraclize_query(string datasource, string arg, uint gaslimit) oraclizeAPI internal returns (bytes32 id){
  > |        uint price = oraclize.getPrice(datasource, gaslimit);
    |        if (price > 1 ether + tx.gasprice*gaslimit) return 0; // unexpectedly high price
    |        return oraclize.query_withGasLimit.value(price)(0, datasource, arg, gaslimit);
  at /home/jiaming/mavs_srcs/contract@0xd61266e619f169b2cc766b192ca67d083f0c7144.sol(88)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'coinback':
    |    }
    |    function oraclize_cbAddress() oraclizeAPI internal returns (address){
  > |        return oraclize.cbAddress();
    |    }
    |    function oraclize_setProof(byte proofP) oraclizeAPI internal {
  at /home/jiaming/mavs_srcs/contract@0xd61266e619f169b2cc766b192ca67d083f0c7144.sol(113)

[31mViolation[0m for UnrestrictedWrite in contract 'coinback':
    |    modifier oraclizeAPI {
    |        if(address(OAR)==0) oraclize_setNetwork(networkID_auto);
  > |        oraclize = OraclizeI(OAR.getAddress());
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd61266e619f169b2cc766b192ca67d083f0c7144.sol(35)

[31mViolation[0m for UnrestrictedWrite in contract 'coinback':
    |
    |        uint betValue = msg.value;
  > |        totalAward = address(this).balance;
    |        if(totalAward > POOL_AWARD)
    |            totalAward = POOL_AWARD;
  at /home/jiaming/mavs_srcs/contract@0xd61266e619f169b2cc766b192ca67d083f0c7144.sol(315)

[31mViolation[0m for UnrestrictedWrite in contract 'coinback':
    |        totalAward = address(this).balance;
    |        if(totalAward > POOL_AWARD)
  > |            totalAward = POOL_AWARD;
    |
    |        if(address(this).balance >= POOL_AWARD)
  at /home/jiaming/mavs_srcs/contract@0xd61266e619f169b2cc766b192ca67d083f0c7144.sol(317)

[31mViolation[0m for UnrestrictedWrite in contract 'coinback':
    |            {
    |                betValue = betValue - overValue;
  > |                overBetPlayer = betInfo({srcAddress:msg.sender,betValue:overValue});
    |            }
    |            stopBet = true;
  at /home/jiaming/mavs_srcs/contract@0xd61266e619f169b2cc766b192ca67d083f0c7144.sol(325)

[31mViolation[0m for UnrestrictedWrite in contract 'coinback':
    |                overBetPlayer = betInfo({srcAddress:msg.sender,betValue:overValue});
    |            }
  > |            stopBet = true;
    |        }
    |        betMap[betId] = betInfo({srcAddress:msg.sender,betValue:betValue});
  at /home/jiaming/mavs_srcs/contract@0xd61266e619f169b2cc766b192ca67d083f0c7144.sol(327)

[31mViolation[0m for UnrestrictedWrite in contract 'coinback':
    |            stopBet = true;
    |        }
  > |        betMap[betId] = betInfo({srcAddress:msg.sender,betValue:betValue});
    |        betId++;
    |
  at /home/jiaming/mavs_srcs/contract@0xd61266e619f169b2cc766b192ca67d083f0c7144.sol(329)

[31mViolation[0m for UnrestrictedWrite in contract 'coinback':
    |        }
    |        betMap[betId] = betInfo({srcAddress:msg.sender,betValue:betValue});
  > |        betId++;
    |
    |        LOG_PlayerBet(msg.sender,msg.value,turnId,totalAward,beginTime);
  at /home/jiaming/mavs_srcs/contract@0xd61266e619f169b2cc766b192ca67d083f0c7144.sol(330)

[33mWarning[0m for UnrestrictedWrite in contract 'coinback':
    |    modifier oraclizeAPI {
    |        if(address(OAR)==0) oraclize_setNetwork(networkID_auto);
  > |        oraclize = OraclizeI(OAR.getAddress());
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd61266e619f169b2cc766b192ca67d083f0c7144.sol(35)

[33mWarning[0m for UnrestrictedWrite in contract 'coinback':
    |    function oraclize_setNetwork(uint8 networkID) internal returns(bool){
    |        if (getCodeSize(0x1d3B2638a7cC9f2CB3D298A3DA7a90B67E5506ed)>0){ //mainnet
  > |            OAR = OraclizeAddrResolverI(0x1d3B2638a7cC9f2CB3D298A3DA7a90B67E5506ed);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xd61266e619f169b2cc766b192ca67d083f0c7144.sol(46)

[33mWarning[0m for UnrestrictedWrite in contract 'coinback':
    |        }
    |        if (getCodeSize(0xc03A2615D5efaf5F49F60B7BB6583eaec212fdf1)>0){ //ropsten testnet
  > |            OAR = OraclizeAddrResolverI(0xc03A2615D5efaf5F49F60B7BB6583eaec212fdf1);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xd61266e619f169b2cc766b192ca67d083f0c7144.sol(50)

[33mWarning[0m for UnrestrictedWrite in contract 'coinback':
    |        }
    |        if (getCodeSize(0xB7A07BcF2Ba2f2703b24C0691b5278999C59AC7e)>0){ //kovan testnet
  > |            OAR = OraclizeAddrResolverI(0xB7A07BcF2Ba2f2703b24C0691b5278999C59AC7e);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xd61266e619f169b2cc766b192ca67d083f0c7144.sol(54)

[33mWarning[0m for UnrestrictedWrite in contract 'coinback':
    |        }
    |        if (getCodeSize(0x146500cfd35B22E4A392Fe0aDc06De1a1368Ed48)>0){ //rinkeby testnet
  > |            OAR = OraclizeAddrResolverI(0x146500cfd35B22E4A392Fe0aDc06De1a1368Ed48);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xd61266e619f169b2cc766b192ca67d083f0c7144.sol(58)

[33mWarning[0m for UnrestrictedWrite in contract 'coinback':
    |        }
    |        if (getCodeSize(0x6f485C8BF6fc43eA212E93BBF8ce046C7f1cb475)>0){ //ethereum-bridge
  > |            OAR = OraclizeAddrResolverI(0x6f485C8BF6fc43eA212E93BBF8ce046C7f1cb475);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xd61266e619f169b2cc766b192ca67d083f0c7144.sol(62)

[33mWarning[0m for UnrestrictedWrite in contract 'coinback':
    |        }
    |        if (getCodeSize(0x51efaF4c8B3C9AfBD5aB9F4bbC82784Ab6ef8fAA)>0){ //browser-solidity
  > |            OAR = OraclizeAddrResolverI(0x51efaF4c8B3C9AfBD5aB9F4bbC82784Ab6ef8fAA);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xd61266e619f169b2cc766b192ca67d083f0c7144.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'coinback':
    |        if(turnId != no) throw;
    |        if(address(this).balance == 0) throw;
  > |        stopBet = true;
    |        closeThisTurn();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd61266e619f169b2cc766b192ca67d083f0c7144.sol(414)

[33mWarning[0m for UnrestrictedWrite in contract 'coinback':
    |
    |    function destroyContract() onlyOwner{
  > |        stopContract = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xd61266e619f169b2cc766b192ca67d083f0c7144.sol(423)

[33mWarning[0m for UnrestrictedWrite in contract 'coinback':
    |
    |    function changeOwner(address newOwner) onlyOwner{
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xd61266e619f169b2cc766b192ca67d083f0c7144.sol(427)

[33mWarning[0m for LockedEther in contract 'usingOraclize':
    |    function getAddress() returns (address _addr);
    |}
  > |contract usingOraclize {
    |    uint constant day = 60*60*24;
    |    uint constant week = 60*60*24*7;
  at /home/jiaming/mavs_srcs/contract@0xd61266e619f169b2cc766b192ca67d083f0c7144.sol(17)


