Processing contract: /home/jiaming/mavs_srcs/contract@0xfdf8de115951517d16fdaedc088d2b67aed5b031.sol:Buffer
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xfdf8de115951517d16fdaedc088d2b67aed5b031.sol:CBOR
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xfdf8de115951517d16fdaedc088d2b67aed5b031.sol:OraclizeAddrResolverI
Processing contract: /home/jiaming/mavs_srcs/contract@0xfdf8de115951517d16fdaedc088d2b67aed5b031.sol:OraclizeI
Processing contract: /home/jiaming/mavs_srcs/contract@0xfdf8de115951517d16fdaedc088d2b67aed5b031.sol:Ownable
Processing contract: /home/jiaming/mavs_srcs/contract@0xfdf8de115951517d16fdaedc088d2b67aed5b031.sol:TossCoin
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xfdf8de115951517d16fdaedc088d2b67aed5b031.sol:usingOraclize
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
  at /home/jiaming/mavs_srcs/contract@0xfdf8de115951517d16fdaedc088d2b67aed5b031.sol(83)

[33mWarning[0m for LockedEther in contract 'CBOR':
    |    }
    |
  > |    library CBOR {
    |        using Buffer for Buffer.buffer;
    |
  at /home/jiaming/mavs_srcs/contract@0xfdf8de115951517d16fdaedc088d2b67aed5b031.sol(215)

[33mWarning[0m for DAOConstantGas in contract 'TossCoin':
    |        require(address(this).balance >= value, "Insufficient funds");
    |
  > |        to.transfer(value);
    |
    |        emit Withdraw(to, value);
  at /home/jiaming/mavs_srcs/contract@0xfdf8de115951517d16fdaedc088d2b67aed5b031.sol(1358)

[33mWarning[0m for LockedEther in contract 'TossCoin':
    |}
    |
  > |contract TossCoin is Ownable, usingOraclize {
    |    struct Game {
    |        address addr;
  at /home/jiaming/mavs_srcs/contract@0xfdf8de115951517d16fdaedc088d2b67aed5b031.sol(1280)

[33mWarning[0m for TODAmount in contract 'TossCoin':
    |        require(address(this).balance >= value, "Insufficient funds");
    |
  > |        to.transfer(value);
    |
    |        emit Withdraw(to, value);
  at /home/jiaming/mavs_srcs/contract@0xfdf8de115951517d16fdaedc088d2b67aed5b031.sol(1358)

[33mWarning[0m for TODAmount in contract 'TossCoin':
    |
    |        if(win > 0) {
  > |            games[id].addr.transfer(win);
    |
    |            if(refferals[games[id].addr] != address(0)) {
  at /home/jiaming/mavs_srcs/contract@0xfdf8de115951517d16fdaedc088d2b67aed5b031.sol(1313)

[33mWarning[0m for TODAmount in contract 'TossCoin':
    |
    |            if(refferals[games[id].addr] != address(0)) {
  > |                refferals[games[id].addr].transfer(win / 100);
    |            }
    |        }
  at /home/jiaming/mavs_srcs/contract@0xfdf8de115951517d16fdaedc088d2b67aed5b031.sol(1316)

[31mViolation[0m for TODReceiver in contract 'TossCoin':
    |
    |        if(ethergames != address(0)) {
  > |            ethergames.call.value(games[id].bet / 100).gas(45000)();
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0xfdf8de115951517d16fdaedc088d2b67aed5b031.sol(1321)

[33mWarning[0m for TODReceiver in contract 'TossCoin':
    |        require(address(this).balance >= value, "Insufficient funds");
    |
  > |        to.transfer(value);
    |
    |        emit Withdraw(to, value);
  at /home/jiaming/mavs_srcs/contract@0xfdf8de115951517d16fdaedc088d2b67aed5b031.sol(1358)

[31mViolation[0m for UnhandledException in contract 'TossCoin':
    |
    |        if(ethergames != address(0)) {
  > |            ethergames.call.value(games[id].bet / 100).gas(45000)();
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0xfdf8de115951517d16fdaedc088d2b67aed5b031.sol(1321)

[33mWarning[0m for UnhandledException in contract 'TossCoin':
    |                oraclize_setNetwork(networkID_auto);
    |
  > |            if(address(oraclize) != OAR.getAddress())
    |                oraclize = OraclizeI(OAR.getAddress());
    |
  at /home/jiaming/mavs_srcs/contract@0xfdf8de115951517d16fdaedc088d2b67aed5b031.sol(310)

[33mWarning[0m for UnhandledException in contract 'TossCoin':
    |
    |            if(address(oraclize) != OAR.getAddress())
  > |                oraclize = OraclizeI(OAR.getAddress());
    |
    |            _;
  at /home/jiaming/mavs_srcs/contract@0xfdf8de115951517d16fdaedc088d2b67aed5b031.sol(311)

[33mWarning[0m for UnhandledException in contract 'TossCoin':
    |
    |        function oraclize_getPrice(string datasource) oraclizeAPI internal returns (uint){
  > |            return oraclize.getPrice(datasource);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0xfdf8de115951517d16fdaedc088d2b67aed5b031.sol(373)

[33mWarning[0m for UnhandledException in contract 'TossCoin':
    |
    |        function oraclize_query(string datasource, string arg) oraclizeAPI internal returns (bytes32 id){
  > |            uint price = oraclize.getPrice(datasource);
    |            if (price > 1 ether + tx.gasprice*200000) return 0; // unexpectedly high price
    |            return oraclize.query.value(price)(0, datasource, arg);
  at /home/jiaming/mavs_srcs/contract@0xfdf8de115951517d16fdaedc088d2b67aed5b031.sol(381)

[33mWarning[0m for UnhandledException in contract 'TossCoin':
    |            uint price = oraclize.getPrice(datasource);
    |            if (price > 1 ether + tx.gasprice*200000) return 0; // unexpectedly high price
  > |            return oraclize.query.value(price)(0, datasource, arg);
    |        }
    |        function oraclize_query(uint timestamp, string datasource, string arg) oraclizeAPI internal returns (bytes32 id){
  at /home/jiaming/mavs_srcs/contract@0xfdf8de115951517d16fdaedc088d2b67aed5b031.sol(383)

[33mWarning[0m for UnhandledException in contract 'TossCoin':
    |
    |        function oraclize_cbAddress() oraclizeAPI internal returns (address){
  > |            return oraclize.cbAddress();
    |        }
    |        function oraclize_setProof(byte proofP) oraclizeAPI internal {
  at /home/jiaming/mavs_srcs/contract@0xfdf8de115951517d16fdaedc088d2b67aed5b031.sol(754)

[33mWarning[0m for UnhandledException in contract 'TossCoin':
    |
    |        if(win > 0) {
  > |            games[id].addr.transfer(win);
    |
    |            if(refferals[games[id].addr] != address(0)) {
  at /home/jiaming/mavs_srcs/contract@0xfdf8de115951517d16fdaedc088d2b67aed5b031.sol(1313)

[33mWarning[0m for UnhandledException in contract 'TossCoin':
    |
    |            if(refferals[games[id].addr] != address(0)) {
  > |                refferals[games[id].addr].transfer(win / 100);
    |            }
    |        }
  at /home/jiaming/mavs_srcs/contract@0xfdf8de115951517d16fdaedc088d2b67aed5b031.sol(1316)

[33mWarning[0m for UnhandledException in contract 'TossCoin':
    |    
    |    function play(bool option) payable external {
  > |        this.play(option, address(0));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xfdf8de115951517d16fdaedc088d2b67aed5b031.sol(1351)

[33mWarning[0m for UnhandledException in contract 'TossCoin':
    |        require(address(this).balance >= value, "Insufficient funds");
    |
  > |        to.transfer(value);
    |
    |        emit Withdraw(to, value);
  at /home/jiaming/mavs_srcs/contract@0xfdf8de115951517d16fdaedc088d2b67aed5b031.sol(1358)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TossCoin':
    |                oraclize_setNetwork(networkID_auto);
    |
  > |            if(address(oraclize) != OAR.getAddress())
    |                oraclize = OraclizeI(OAR.getAddress());
    |
  at /home/jiaming/mavs_srcs/contract@0xfdf8de115951517d16fdaedc088d2b67aed5b031.sol(310)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TossCoin':
    |
    |            if(address(oraclize) != OAR.getAddress())
  > |                oraclize = OraclizeI(OAR.getAddress());
    |
    |            _;
  at /home/jiaming/mavs_srcs/contract@0xfdf8de115951517d16fdaedc088d2b67aed5b031.sol(311)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TossCoin':
    |
    |        function oraclize_getPrice(string datasource) oraclizeAPI internal returns (uint){
  > |            return oraclize.getPrice(datasource);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0xfdf8de115951517d16fdaedc088d2b67aed5b031.sol(373)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TossCoin':
    |
    |        function oraclize_query(string datasource, string arg) oraclizeAPI internal returns (bytes32 id){
  > |            uint price = oraclize.getPrice(datasource);
    |            if (price > 1 ether + tx.gasprice*200000) return 0; // unexpectedly high price
    |            return oraclize.query.value(price)(0, datasource, arg);
  at /home/jiaming/mavs_srcs/contract@0xfdf8de115951517d16fdaedc088d2b67aed5b031.sol(381)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TossCoin':
    |
    |        function oraclize_cbAddress() oraclizeAPI internal returns (address){
  > |            return oraclize.cbAddress();
    |        }
    |        function oraclize_setProof(byte proofP) oraclizeAPI internal {
  at /home/jiaming/mavs_srcs/contract@0xfdf8de115951517d16fdaedc088d2b67aed5b031.sol(754)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TossCoin':
    |    
    |    function play(bool option) payable external {
  > |        this.play(option, address(0));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xfdf8de115951517d16fdaedc088d2b67aed5b031.sol(1351)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TossCoin':
    |        require(address(this).balance >= value, "Insufficient funds");
    |
  > |        to.transfer(value);
    |
    |        emit Withdraw(to, value);
  at /home/jiaming/mavs_srcs/contract@0xfdf8de115951517d16fdaedc088d2b67aed5b031.sol(1358)

[33mWarning[0m for UnrestrictedWrite in contract 'TossCoin':
    |        emit OwnershipTransferred(_owner, address(0));
    |
  > |        _owner = address(0);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xfdf8de115951517d16fdaedc088d2b67aed5b031.sol(1264)

[33mWarning[0m for UnrestrictedWrite in contract 'TossCoin':
    |        emit OwnershipTransferred(_owner, newOwner);
    |
  > |        _owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xfdf8de115951517d16fdaedc088d2b67aed5b031.sol(1276)

[33mWarning[0m for UnrestrictedWrite in contract 'TossCoin':
    |
    |        if(refferal != address(0) && refferals[msg.sender] == address(0)) {
  > |            refferals[msg.sender] = refferal;
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0xfdf8de115951517d16fdaedc088d2b67aed5b031.sol(1344)

[33mWarning[0m for UnrestrictedWrite in contract 'TossCoin':
    |
    |    function setRate(uint value) onlyOwner external {
  > |        rate = value;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xfdf8de115951517d16fdaedc088d2b67aed5b031.sol(1364)

[33mWarning[0m for UnrestrictedWrite in contract 'TossCoin':
    |
    |    function setMinBet(uint value) onlyOwner external {
  > |        min_bet = value;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xfdf8de115951517d16fdaedc088d2b67aed5b031.sol(1368)

[33mWarning[0m for UnrestrictedWrite in contract 'TossCoin':
    |
    |    function setMaxBet(uint value) onlyOwner external {
  > |        max_bet = value;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xfdf8de115951517d16fdaedc088d2b67aed5b031.sol(1372)

[33mWarning[0m for UnrestrictedWrite in contract 'TossCoin':
    |    function setEtherGames(address value) onlyOwner external {
    |        if(ethergames == address(0)) {
  > |            ethergames = value;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfdf8de115951517d16fdaedc088d2b67aed5b031.sol(1377)

[33mWarning[0m for LockedEther in contract 'usingOraclize':
    |    */
    |
  > |    contract usingOraclize {
    |        uint constant day = 60*60*24;
    |        uint constant week = 60*60*24*7;
  at /home/jiaming/mavs_srcs/contract@0xfdf8de115951517d16fdaedc088d2b67aed5b031.sol(287)


