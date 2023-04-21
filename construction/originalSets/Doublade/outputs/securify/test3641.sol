Processing contract: /home/jiaming/mavs_srcs/contract@0xee735ce6b54893322648a232cfd754fa10cf1627.sol:Buffer
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xee735ce6b54893322648a232cfd754fa10cf1627.sol:CBOR
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xee735ce6b54893322648a232cfd754fa10cf1627.sol:Fiat
Processing contract: /home/jiaming/mavs_srcs/contract@0xee735ce6b54893322648a232cfd754fa10cf1627.sol:LockEther
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xee735ce6b54893322648a232cfd754fa10cf1627.sol:OraclizeAddrResolverI
Processing contract: /home/jiaming/mavs_srcs/contract@0xee735ce6b54893322648a232cfd754fa10cf1627.sol:OraclizeI
Processing contract: /home/jiaming/mavs_srcs/contract@0xee735ce6b54893322648a232cfd754fa10cf1627.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xee735ce6b54893322648a232cfd754fa10cf1627.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xee735ce6b54893322648a232cfd754fa10cf1627.sol:usingOraclize
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Buffer':
    | */
    |
  > |library Buffer {
    |    struct buffer {
    |        bytes buf;
  at /home/jiaming/mavs_srcs/contract@0xee735ce6b54893322648a232cfd754fa10cf1627.sol(190)

[33mWarning[0m for LockedEther in contract 'CBOR':
    |}
    |
  > |library CBOR {
    |    using Buffer for Buffer.buffer;
    |
  at /home/jiaming/mavs_srcs/contract@0xee735ce6b54893322648a232cfd754fa10cf1627.sol(322)

[33mWarning[0m for UnhandledException in contract 'LockEther':
    |            oraclize_setNetwork(networkID_auto);
    |
  > |        if(address(oraclize) != OAR.getAddress())
    |            oraclize = OraclizeI(OAR.getAddress());
    |
  at /home/jiaming/mavs_srcs/contract@0xee735ce6b54893322648a232cfd754fa10cf1627.sol(417)

[33mWarning[0m for UnhandledException in contract 'LockEther':
    |
    |        if(address(oraclize) != OAR.getAddress())
  > |            oraclize = OraclizeI(OAR.getAddress());
    |
    |        _;
  at /home/jiaming/mavs_srcs/contract@0xee735ce6b54893322648a232cfd754fa10cf1627.sol(418)

[33mWarning[0m for UnhandledException in contract 'LockEther':
    |
    |    function oraclize_getPrice(string datasource) oraclizeAPI internal returns (uint){
  > |        return oraclize.getPrice(datasource);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xee735ce6b54893322648a232cfd754fa10cf1627.sol(476)

[33mWarning[0m for UnhandledException in contract 'LockEther':
    |
    |    function oraclize_query(string datasource, string arg) oraclizeAPI internal returns (bytes32 id){
  > |        uint price = oraclize.getPrice(datasource);
    |        if (price > 1 ether + tx.gasprice*200000) return 0; // unexpectedly high price
    |        return oraclize.query.value(price)(0, datasource, arg);
  at /home/jiaming/mavs_srcs/contract@0xee735ce6b54893322648a232cfd754fa10cf1627.sol(484)

[33mWarning[0m for UnhandledException in contract 'LockEther':
    |        uint price = oraclize.getPrice(datasource);
    |        if (price > 1 ether + tx.gasprice*200000) return 0; // unexpectedly high price
  > |        return oraclize.query.value(price)(0, datasource, arg);
    |    }
    |    function oraclize_query(uint timestamp, string datasource, string arg) oraclizeAPI internal returns (bytes32 id){
  at /home/jiaming/mavs_srcs/contract@0xee735ce6b54893322648a232cfd754fa10cf1627.sol(486)

[33mWarning[0m for UnhandledException in contract 'LockEther':
    |    }
    |    function oraclize_query(string datasource, string arg, uint gaslimit) oraclizeAPI internal returns (bytes32 id){
  > |        uint price = oraclize.getPrice(datasource, gaslimit);
    |        if (price > 1 ether + tx.gasprice*gaslimit) return 0; // unexpectedly high price
    |        return oraclize.query_withGasLimit.value(price)(0, datasource, arg, gaslimit);
  at /home/jiaming/mavs_srcs/contract@0xee735ce6b54893322648a232cfd754fa10cf1627.sol(499)

[33mWarning[0m for UnhandledException in contract 'LockEther':
    |        uint price = oraclize.getPrice(datasource, gaslimit);
    |        if (price > 1 ether + tx.gasprice*gaslimit) return 0; // unexpectedly high price
  > |        return oraclize.query_withGasLimit.value(price)(0, datasource, arg, gaslimit);
    |    }
    |    function oraclize_query(string datasource, string arg1, string arg2) oraclizeAPI internal returns (bytes32 id){
  at /home/jiaming/mavs_srcs/contract@0xee735ce6b54893322648a232cfd754fa10cf1627.sol(501)

[33mWarning[0m for UnhandledException in contract 'LockEther':
    |
    |    function oraclize_cbAddress() oraclizeAPI internal returns (address){
  > |        return oraclize.cbAddress();
    |    }
    |    function oraclize_setProof(byte proofP) oraclizeAPI internal {
  at /home/jiaming/mavs_srcs/contract@0xee735ce6b54893322648a232cfd754fa10cf1627.sol(857)

[33mWarning[0m for UnhandledException in contract 'LockEther':
    |            if(calculateDiffPercent(sender.previousPrice, price) <= 14) {
    |                amountOfTokens = (sender.amount.mul(sender.previousPrice)).div(100);
  > |                eUSD.calculatedTokens(sender.senderAddress, amountOfTokens);
    |                amountConverted = amountConverted.add(sender.amount);
    |            }
  at /home/jiaming/mavs_srcs/contract@0xee735ce6b54893322648a232cfd754fa10cf1627.sol(1416)

[33mWarning[0m for UnhandledException in contract 'LockEther':
    |            if(calculateDiffPercent(sender.previousPrice, price) <= 14) {
    |                amountOfTokens = (sender.amount.mul(sender.previousPrice)).div(100);
  > |                eUSD.calculatedTokens(sender.senderAddress, amountOfTokens);
    |                amountConverted = amountConverted.add(sender.amount);
    |            }
  at /home/jiaming/mavs_srcs/contract@0xee735ce6b54893322648a232cfd754fa10cf1627.sol(1433)

[33mWarning[0m for UnhandledException in contract 'LockEther':
    |            else if(calculateDiffPercent(sender.prepreviousPrice, price) <= 14) {
    |                amountOfTokens = (sender.amount.mul(sender.prepreviousPrice)).div(100);
  > |                eUSD.calculatedTokens(sender.senderAddress, amountOfTokens);
    |                amountConverted = amountConverted.add(sender.amount);
    |            }
  at /home/jiaming/mavs_srcs/contract@0xee735ce6b54893322648a232cfd754fa10cf1627.sol(1438)

[33mWarning[0m for UnhandledException in contract 'LockEther':
    |                sender.currentUrl += 1;
    |                if(sender.currentUrl == maxRankIndex) {
  > |                    eUSD.calculatedTokens(sender.senderAddress, 0);
    |                }
    |                else {
  at /home/jiaming/mavs_srcs/contract@0xee735ce6b54893322648a232cfd754fa10cf1627.sol(1446)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LockEther':
    |            oraclize_setNetwork(networkID_auto);
    |
  > |        if(address(oraclize) != OAR.getAddress())
    |            oraclize = OraclizeI(OAR.getAddress());
    |
  at /home/jiaming/mavs_srcs/contract@0xee735ce6b54893322648a232cfd754fa10cf1627.sol(417)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LockEther':
    |
    |        if(address(oraclize) != OAR.getAddress())
  > |            oraclize = OraclizeI(OAR.getAddress());
    |
    |        _;
  at /home/jiaming/mavs_srcs/contract@0xee735ce6b54893322648a232cfd754fa10cf1627.sol(418)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LockEther':
    |
    |    function oraclize_getPrice(string datasource) oraclizeAPI internal returns (uint){
  > |        return oraclize.getPrice(datasource);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xee735ce6b54893322648a232cfd754fa10cf1627.sol(476)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LockEther':
    |
    |    function oraclize_query(string datasource, string arg) oraclizeAPI internal returns (bytes32 id){
  > |        uint price = oraclize.getPrice(datasource);
    |        if (price > 1 ether + tx.gasprice*200000) return 0; // unexpectedly high price
    |        return oraclize.query.value(price)(0, datasource, arg);
  at /home/jiaming/mavs_srcs/contract@0xee735ce6b54893322648a232cfd754fa10cf1627.sol(484)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LockEther':
    |    }
    |    function oraclize_query(string datasource, string arg, uint gaslimit) oraclizeAPI internal returns (bytes32 id){
  > |        uint price = oraclize.getPrice(datasource, gaslimit);
    |        if (price > 1 ether + tx.gasprice*gaslimit) return 0; // unexpectedly high price
    |        return oraclize.query_withGasLimit.value(price)(0, datasource, arg, gaslimit);
  at /home/jiaming/mavs_srcs/contract@0xee735ce6b54893322648a232cfd754fa10cf1627.sol(499)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LockEther':
    |
    |    function oraclize_cbAddress() oraclizeAPI internal returns (address){
  > |        return oraclize.cbAddress();
    |    }
    |    function oraclize_setProof(byte proofP) oraclizeAPI internal {
  at /home/jiaming/mavs_srcs/contract@0xee735ce6b54893322648a232cfd754fa10cf1627.sol(857)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LockEther':
    |            if(calculateDiffPercent(sender.previousPrice, price) <= 14) {
    |                amountOfTokens = (sender.amount.mul(sender.previousPrice)).div(100);
  > |                eUSD.calculatedTokens(sender.senderAddress, amountOfTokens);
    |                amountConverted = amountConverted.add(sender.amount);
    |            }
  at /home/jiaming/mavs_srcs/contract@0xee735ce6b54893322648a232cfd754fa10cf1627.sol(1416)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LockEther':
    |            if(calculateDiffPercent(sender.previousPrice, price) <= 14) {
    |                amountOfTokens = (sender.amount.mul(sender.previousPrice)).div(100);
  > |                eUSD.calculatedTokens(sender.senderAddress, amountOfTokens);
    |                amountConverted = amountConverted.add(sender.amount);
    |            }
  at /home/jiaming/mavs_srcs/contract@0xee735ce6b54893322648a232cfd754fa10cf1627.sol(1433)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LockEther':
    |            else if(calculateDiffPercent(sender.prepreviousPrice, price) <= 14) {
    |                amountOfTokens = (sender.amount.mul(sender.prepreviousPrice)).div(100);
  > |                eUSD.calculatedTokens(sender.senderAddress, amountOfTokens);
    |                amountConverted = amountConverted.add(sender.amount);
    |            }
  at /home/jiaming/mavs_srcs/contract@0xee735ce6b54893322648a232cfd754fa10cf1627.sol(1438)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LockEther':
    |                sender.currentUrl += 1;
    |                if(sender.currentUrl == maxRankIndex) {
  > |                    eUSD.calculatedTokens(sender.senderAddress, 0);
    |                }
    |                else {
  at /home/jiaming/mavs_srcs/contract@0xee735ce6b54893322648a232cfd754fa10cf1627.sol(1446)

[31mViolation[0m for UnrestrictedWrite in contract 'LockEther':
    |
    |        if(address(oraclize) != OAR.getAddress())
  > |            oraclize = OraclizeI(OAR.getAddress());
    |
    |        _;
  at /home/jiaming/mavs_srcs/contract@0xee735ce6b54893322648a232cfd754fa10cf1627.sol(418)

[31mViolation[0m for UnrestrictedWrite in contract 'LockEther':
    |* @title LockEther
    |**/
  > |contract LockEther is Ownable, usingOraclize {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xee735ce6b54893322648a232cfd754fa10cf1627.sol(1347)

[31mViolation[0m for UnrestrictedWrite in contract 'LockEther':
    |
    |        if(price == 0 && sender.currentUrl < maxRankIndex - 1) {
  > |            sender.currentUrl += 1;
    |            emit NewOraclizeQuery("Oraclize query was sent, standing by for the answer..");
    |            queryId = oraclize_query("URL", urlRank[sender.currentUrl], 400000);
  at /home/jiaming/mavs_srcs/contract@0xee735ce6b54893322648a232cfd754fa10cf1627.sol(1399)

[31mViolation[0m for UnrestrictedWrite in contract 'LockEther':
    |            emit NewOraclizeQuery("Oraclize query was sent, standing by for the answer..");
    |            queryId = oraclize_query("URL", urlRank[sender.currentUrl], 400000);
  > |            pendingQueries[queryId] = sender;
    |        }
    |        else if(sender.currentUrl == 0) {
  at /home/jiaming/mavs_srcs/contract@0xee735ce6b54893322648a232cfd754fa10cf1627.sol(1402)

[31mViolation[0m for UnrestrictedWrite in contract 'LockEther':
    |        }
    |        else if(sender.currentUrl == 0) {
  > |            sender.previousPrice = price;
    |            sender.currentUrl += 1;
    |
  at /home/jiaming/mavs_srcs/contract@0xee735ce6b54893322648a232cfd754fa10cf1627.sol(1405)

[31mViolation[0m for UnrestrictedWrite in contract 'LockEther':
    |        else if(sender.currentUrl == 0) {
    |            sender.previousPrice = price;
  > |            sender.currentUrl += 1;
    |
    |            emit NewOraclizeQuery("Oraclize query was sent, standing by for the answer..");
  at /home/jiaming/mavs_srcs/contract@0xee735ce6b54893322648a232cfd754fa10cf1627.sol(1406)

[31mViolation[0m for UnrestrictedWrite in contract 'LockEther':
    |            emit NewOraclizeQuery("Oraclize query was sent, standing by for the answer..");
    |            queryId = oraclize_query("URL", urlRank[sender.currentUrl], 400000);
  > |            pendingQueries[queryId] = sender;
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0xee735ce6b54893322648a232cfd754fa10cf1627.sol(1410)

[31mViolation[0m for UnrestrictedWrite in contract 'LockEther':
    |                amountOfTokens = (sender.amount.mul(sender.previousPrice)).div(100);
    |                eUSD.calculatedTokens(sender.senderAddress, amountOfTokens);
  > |                amountConverted = amountConverted.add(sender.amount);
    |            }
    |            else {
  at /home/jiaming/mavs_srcs/contract@0xee735ce6b54893322648a232cfd754fa10cf1627.sol(1417)

[31mViolation[0m for UnrestrictedWrite in contract 'LockEther':
    |            }
    |            else {
  > |                sender.prepreviousPrice = sender.previousPrice;
    |                sender.previousPrice = price;
    |                sender.currentUrl += 1;
  at /home/jiaming/mavs_srcs/contract@0xee735ce6b54893322648a232cfd754fa10cf1627.sol(1420)

[31mViolation[0m for UnrestrictedWrite in contract 'LockEther':
    |            else {
    |                sender.prepreviousPrice = sender.previousPrice;
  > |                sender.previousPrice = price;
    |                sender.currentUrl += 1;
    |
  at /home/jiaming/mavs_srcs/contract@0xee735ce6b54893322648a232cfd754fa10cf1627.sol(1421)

[31mViolation[0m for UnrestrictedWrite in contract 'LockEther':
    |                sender.prepreviousPrice = sender.previousPrice;
    |                sender.previousPrice = price;
  > |                sender.currentUrl += 1;
    |
    |                emit NewOraclizeQuery("Oraclize query was sent, standing by for the answer..");
  at /home/jiaming/mavs_srcs/contract@0xee735ce6b54893322648a232cfd754fa10cf1627.sol(1422)

[31mViolation[0m for UnrestrictedWrite in contract 'LockEther':
    |                emit NewOraclizeQuery("Oraclize query was sent, standing by for the answer..");
    |                queryId = oraclize_query("URL", urlRank[sender.currentUrl], 400000);
  > |                pendingQueries[queryId] = sender;
    |            }
    |        }
  at /home/jiaming/mavs_srcs/contract@0xee735ce6b54893322648a232cfd754fa10cf1627.sol(1426)

[31mViolation[0m for UnrestrictedWrite in contract 'LockEther':
    |                amountOfTokens = (sender.amount.mul(sender.previousPrice)).div(100);
    |                eUSD.calculatedTokens(sender.senderAddress, amountOfTokens);
  > |                amountConverted = amountConverted.add(sender.amount);
    |            }
    |            else if(calculateDiffPercent(sender.prepreviousPrice, price) <= 14) {
  at /home/jiaming/mavs_srcs/contract@0xee735ce6b54893322648a232cfd754fa10cf1627.sol(1434)

[31mViolation[0m for UnrestrictedWrite in contract 'LockEther':
    |                amountOfTokens = (sender.amount.mul(sender.prepreviousPrice)).div(100);
    |                eUSD.calculatedTokens(sender.senderAddress, amountOfTokens);
  > |                amountConverted = amountConverted.add(sender.amount);
    |            }
    |            else {
  at /home/jiaming/mavs_srcs/contract@0xee735ce6b54893322648a232cfd754fa10cf1627.sol(1439)

[31mViolation[0m for UnrestrictedWrite in contract 'LockEther':
    |            }
    |            else {
  > |                sender.prepreviousPrice = sender.previousPrice;
    |                sender.previousPrice = price;
    |                sender.currentUrl += 1;
  at /home/jiaming/mavs_srcs/contract@0xee735ce6b54893322648a232cfd754fa10cf1627.sol(1442)

[31mViolation[0m for UnrestrictedWrite in contract 'LockEther':
    |            else {
    |                sender.prepreviousPrice = sender.previousPrice;
  > |                sender.previousPrice = price;
    |                sender.currentUrl += 1;
    |                if(sender.currentUrl == maxRankIndex) {
  at /home/jiaming/mavs_srcs/contract@0xee735ce6b54893322648a232cfd754fa10cf1627.sol(1443)

[31mViolation[0m for UnrestrictedWrite in contract 'LockEther':
    |                sender.prepreviousPrice = sender.previousPrice;
    |                sender.previousPrice = price;
  > |                sender.currentUrl += 1;
    |                if(sender.currentUrl == maxRankIndex) {
    |                    eUSD.calculatedTokens(sender.senderAddress, 0);
  at /home/jiaming/mavs_srcs/contract@0xee735ce6b54893322648a232cfd754fa10cf1627.sol(1444)

[31mViolation[0m for UnrestrictedWrite in contract 'LockEther':
    |                else {
    |                    queryId = oraclize_query("URL", urlRank[sender.currentUrl]);
  > |                    pendingQueries[queryId] = sender;
    |                }
    |            }
  at /home/jiaming/mavs_srcs/contract@0xee735ce6b54893322648a232cfd754fa10cf1627.sol(1450)

[31mViolation[0m for UnrestrictedWrite in contract 'LockEther':
    |        }
    |
  > |        delete pendingQueries[myid];
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xee735ce6b54893322648a232cfd754fa10cf1627.sol(1455)

[31mViolation[0m for UnrestrictedWrite in contract 'LockEther':
    |            Sender memory sender = Sender({senderAddress: _src, amount: _amount, previousPrice: 0, prepreviousPrice: 0, currentUrl: 0});
    |            bytes32 queryId = oraclize_query("URL", urlRank[0], 400000);
  > |            pendingQueries[queryId] = sender;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xee735ce6b54893322648a232cfd754fa10cf1627.sol(1472)

[31mViolation[0m for UnrestrictedWrite in contract 'LockEther':
    |    function addNewUrl(string _url) public onlyOwner {
    |        urlRank[maxRankIndex] = _url;
  > |        maxRankIndex += 1;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xee735ce6b54893322648a232cfd754fa10cf1627.sol(1509)

[33mWarning[0m for UnrestrictedWrite in contract 'LockEther':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xee735ce6b54893322648a232cfd754fa10cf1627.sol(39)

[33mWarning[0m for UnrestrictedWrite in contract 'LockEther':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xee735ce6b54893322648a232cfd754fa10cf1627.sol(57)

[33mWarning[0m for UnrestrictedWrite in contract 'LockEther':
    |
    |        if(address(oraclize) != OAR.getAddress())
  > |            oraclize = OraclizeI(OAR.getAddress());
    |
    |        _;
  at /home/jiaming/mavs_srcs/contract@0xee735ce6b54893322648a232cfd754fa10cf1627.sol(418)

[33mWarning[0m for UnrestrictedWrite in contract 'LockEther':
    |    function oraclize_setNetwork() internal returns(bool){
    |        if (getCodeSize(0x1d3B2638a7cC9f2CB3D298A3DA7a90B67E5506ed)>0){ //mainnet
  > |            OAR = OraclizeAddrResolverI(0x1d3B2638a7cC9f2CB3D298A3DA7a90B67E5506ed);
    |            oraclize_setNetworkName("eth_mainnet");
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xee735ce6b54893322648a232cfd754fa10cf1627.sol(433)

[33mWarning[0m for UnrestrictedWrite in contract 'LockEther':
    |        }
    |        if (getCodeSize(0xc03A2615D5efaf5F49F60B7BB6583eaec212fdf1)>0){ //ropsten testnet
  > |            OAR = OraclizeAddrResolverI(0xc03A2615D5efaf5F49F60B7BB6583eaec212fdf1);
    |            oraclize_setNetworkName("eth_ropsten3");
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xee735ce6b54893322648a232cfd754fa10cf1627.sol(438)

[33mWarning[0m for UnrestrictedWrite in contract 'LockEther':
    |        }
    |        if (getCodeSize(0xB7A07BcF2Ba2f2703b24C0691b5278999C59AC7e)>0){ //kovan testnet
  > |            OAR = OraclizeAddrResolverI(0xB7A07BcF2Ba2f2703b24C0691b5278999C59AC7e);
    |            oraclize_setNetworkName("eth_kovan");
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xee735ce6b54893322648a232cfd754fa10cf1627.sol(443)

[33mWarning[0m for UnrestrictedWrite in contract 'LockEther':
    |        }
    |        if (getCodeSize(0x146500cfd35B22E4A392Fe0aDc06De1a1368Ed48)>0){ //rinkeby testnet
  > |            OAR = OraclizeAddrResolverI(0x146500cfd35B22E4A392Fe0aDc06De1a1368Ed48);
    |            oraclize_setNetworkName("eth_rinkeby");
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xee735ce6b54893322648a232cfd754fa10cf1627.sol(448)

[33mWarning[0m for UnrestrictedWrite in contract 'LockEther':
    |        }
    |        if (getCodeSize(0x6f485C8BF6fc43eA212E93BBF8ce046C7f1cb475)>0){ //ethereum-bridge
  > |            OAR = OraclizeAddrResolverI(0x6f485C8BF6fc43eA212E93BBF8ce046C7f1cb475);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xee735ce6b54893322648a232cfd754fa10cf1627.sol(453)

[33mWarning[0m for UnrestrictedWrite in contract 'LockEther':
    |        }
    |        if (getCodeSize(0x20e12A1F859B3FeaE5Fb2A0A32C18F5a65555bBF)>0){ //ether.camp ide
  > |            OAR = OraclizeAddrResolverI(0x20e12A1F859B3FeaE5Fb2A0A32C18F5a65555bBF);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xee735ce6b54893322648a232cfd754fa10cf1627.sol(457)

[33mWarning[0m for UnrestrictedWrite in contract 'LockEther':
    |        }
    |        if (getCodeSize(0x51efaF4c8B3C9AfBD5aB9F4bbC82784Ab6ef8fAA)>0){ //browser-solidity
  > |            OAR = OraclizeAddrResolverI(0x51efaF4c8B3C9AfBD5aB9F4bbC82784Ab6ef8fAA);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xee735ce6b54893322648a232cfd754fa10cf1627.sol(461)

[33mWarning[0m for UnrestrictedWrite in contract 'LockEther':
    |* @title LockEther
    |**/
  > |contract LockEther is Ownable, usingOraclize {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xee735ce6b54893322648a232cfd754fa10cf1627.sol(1347)

[33mWarning[0m for UnrestrictedWrite in contract 'LockEther':
    |    function seteUSD(address _efiat) public onlyOwner {
    |        require(!eUSDSet);
  > |        eUSD = Fiat(_efiat);
    |        eUSDSet = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xee735ce6b54893322648a232cfd754fa10cf1627.sol(1482)

[33mWarning[0m for UnrestrictedWrite in contract 'LockEther':
    |        require(!eUSDSet);
    |        eUSD = Fiat(_efiat);
  > |        eUSDSet = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xee735ce6b54893322648a232cfd754fa10cf1627.sol(1483)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xee735ce6b54893322648a232cfd754fa10cf1627.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xee735ce6b54893322648a232cfd754fa10cf1627.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @dev Allows the current owner to relinquish control of the contract.
    |   */
  > |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
    |    owner = address(0);
  at /home/jiaming/mavs_srcs/contract@0xee735ce6b54893322648a232cfd754fa10cf1627.sol(37)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address _newOwner) public onlyOwner {
    |    _transferOwnership(_newOwner);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xee735ce6b54893322648a232cfd754fa10cf1627.sol(46)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function _transferOwnership(address _newOwner) internal {
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  at /home/jiaming/mavs_srcs/contract@0xee735ce6b54893322648a232cfd754fa10cf1627.sol(54)

[31mViolation[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xee735ce6b54893322648a232cfd754fa10cf1627.sol(57)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xee735ce6b54893322648a232cfd754fa10cf1627.sol(39)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xee735ce6b54893322648a232cfd754fa10cf1627.sol(57)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xee735ce6b54893322648a232cfd754fa10cf1627.sol(64)

[33mWarning[0m for LockedEther in contract 'usingOraclize':
    | */
    |
  > |contract usingOraclize {
    |    uint constant day = 60*60*24;
    |    uint constant week = 60*60*24*7;
  at /home/jiaming/mavs_srcs/contract@0xee735ce6b54893322648a232cfd754fa10cf1627.sol(394)


