Processing contract: /home/jiaming/mavs_srcs/contract@0xcc88d8ea235eb37d427a7040674d751a689ba4bc.sol:Buffer
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xcc88d8ea235eb37d427a7040674d751a689ba4bc.sol:CBOR
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xcc88d8ea235eb37d427a7040674d751a689ba4bc.sol:OraclizeAddrResolverI
Processing contract: /home/jiaming/mavs_srcs/contract@0xcc88d8ea235eb37d427a7040674d751a689ba4bc.sol:OraclizeI
Processing contract: /home/jiaming/mavs_srcs/contract@0xcc88d8ea235eb37d427a7040674d751a689ba4bc.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xcc88d8ea235eb37d427a7040674d751a689ba4bc.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xcc88d8ea235eb37d427a7040674d751a689ba4bc.sol:SmartDice
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xcc88d8ea235eb37d427a7040674d751a689ba4bc.sol:usingOraclize
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
  at /home/jiaming/mavs_srcs/contract@0xcc88d8ea235eb37d427a7040674d751a689ba4bc.sol(117)

[33mWarning[0m for LockedEther in contract 'CBOR':
    |}
    |
  > |library CBOR {
    |    using Buffer for Buffer.buffer;
    |
  at /home/jiaming/mavs_srcs/contract@0xcc88d8ea235eb37d427a7040674d751a689ba4bc.sol(247)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xcc88d8ea235eb37d427a7040674d751a689ba4bc.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |    address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xcc88d8ea235eb37d427a7040674d751a689ba4bc.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |     * @param newOwner The address to transfer ownership to.
    |     */
  > |    function transferOwnership(address newOwner) public onlyOwner {
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xcc88d8ea235eb37d427a7040674d751a689ba4bc.sol(37)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xcc88d8ea235eb37d427a7040674d751a689ba4bc.sol(40)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |contract SafeMath {
    |    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |        uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xcc88d8ea235eb37d427a7040674d751a689ba4bc.sol(48)

[31mViolation[0m for DAOConstantGas in contract 'SmartDice':
    |            bets[myId].paid = true;
    |            
  > |            if (!bets[myId].player.send(amtToSend)) {
    |                bets[myId].paid = false;
    |                pendingWallet[bets[myId].player] = add(pendingWallet[bets[myId].player], amtToSend);
  at /home/jiaming/mavs_srcs/contract@0xcc88d8ea235eb37d427a7040674d751a689ba4bc.sol(1359)

[31mViolation[0m for DAOConstantGas in contract 'SmartDice':
    |            bets[myId].paid = true;
    |            
  > |            if (!bets[myId].player.send(1)) {
    |                bets[myId].paid = false;
    |                pendingWallet[bets[myId].player] = add(pendingWallet[bets[myId].player], 1);
  at /home/jiaming/mavs_srcs/contract@0xcc88d8ea235eb37d427a7040674d751a689ba4bc.sol(1375)

[33mWarning[0m for DAOConstantGas in contract 'SmartDice':
    |        require(withdraw != address(0));
    |        balance = sub(this.balance(), amount);
  > |        if (!withdraw.send(amount)) revert();
    |        
    |        HouseWithdrawed(withdraw, amount);
  at /home/jiaming/mavs_srcs/contract@0xcc88d8ea235eb37d427a7040674d751a689ba4bc.sol(1491)

[33mWarning[0m for DAOConstantGas in contract 'SmartDice':
    |        pendingWallet[holder] = 0;
    |        balance = sub(balance, amount);
  > |        if (!holder.send(amount)) revert();
    |        
    |        PaidPendingBalance(holder, amount);
  at /home/jiaming/mavs_srcs/contract@0xcc88d8ea235eb37d427a7040674d751a689ba4bc.sol(1502)

[33mWarning[0m for DAOConstantGas in contract 'SmartDice':
    |        refWallet[msg.sender].balance = 0;
    |        balance = sub(balance, amount);
  > |        if (!msg.sender.send(amount)) revert();
    |        
    |        PaidRefBalance(msg.sender, amount);
  at /home/jiaming/mavs_srcs/contract@0xcc88d8ea235eb37d427a7040674d751a689ba4bc.sol(1512)

[33mWarning[0m for LockedEther in contract 'SmartDice':
    |// </ORACLIZE_API>
    |
  > |contract SmartDice is usingOraclize, Ownable, SafeMath {
    |    
    |    struct DiceBet {
  at /home/jiaming/mavs_srcs/contract@0xcc88d8ea235eb37d427a7040674d751a689ba4bc.sol(1265)

[33mWarning[0m for TODAmount in contract 'SmartDice':
    |            bets[myId].paid = true;
    |            
  > |            if (!bets[myId].player.send(1)) {
    |                bets[myId].paid = false;
    |                pendingWallet[bets[myId].player] = add(pendingWallet[bets[myId].player], 1);
  at /home/jiaming/mavs_srcs/contract@0xcc88d8ea235eb37d427a7040674d751a689ba4bc.sol(1375)

[33mWarning[0m for TODAmount in contract 'SmartDice':
    |        require(withdraw != address(0));
    |        balance = sub(this.balance(), amount);
  > |        if (!withdraw.send(amount)) revert();
    |        
    |        HouseWithdrawed(withdraw, amount);
  at /home/jiaming/mavs_srcs/contract@0xcc88d8ea235eb37d427a7040674d751a689ba4bc.sol(1491)

[33mWarning[0m for TODAmount in contract 'SmartDice':
    |        pendingWallet[holder] = 0;
    |        balance = sub(balance, amount);
  > |        if (!holder.send(amount)) revert();
    |        
    |        PaidPendingBalance(holder, amount);
  at /home/jiaming/mavs_srcs/contract@0xcc88d8ea235eb37d427a7040674d751a689ba4bc.sol(1502)

[33mWarning[0m for TODAmount in contract 'SmartDice':
    |        refWallet[msg.sender].balance = 0;
    |        balance = sub(balance, amount);
  > |        if (!msg.sender.send(amount)) revert();
    |        
    |        PaidRefBalance(msg.sender, amount);
  at /home/jiaming/mavs_srcs/contract@0xcc88d8ea235eb37d427a7040674d751a689ba4bc.sol(1512)

[33mWarning[0m for TODAmount in contract 'SmartDice':
    |            bets[myId].paid = true;
    |            
  > |            if (!bets[myId].player.send(amtToSend)) {
    |                bets[myId].paid = false;
    |                pendingWallet[bets[myId].player] = add(pendingWallet[bets[myId].player], amtToSend);
  at /home/jiaming/mavs_srcs/contract@0xcc88d8ea235eb37d427a7040674d751a689ba4bc.sol(1359)

[33mWarning[0m for TODReceiver in contract 'SmartDice':
    |        require(withdraw != address(0));
    |        balance = sub(this.balance(), amount);
  > |        if (!withdraw.send(amount)) revert();
    |        
    |        HouseWithdrawed(withdraw, amount);
  at /home/jiaming/mavs_srcs/contract@0xcc88d8ea235eb37d427a7040674d751a689ba4bc.sol(1491)

[33mWarning[0m for TODReceiver in contract 'SmartDice':
    |        pendingWallet[holder] = 0;
    |        balance = sub(balance, amount);
  > |        if (!holder.send(amount)) revert();
    |        
    |        PaidPendingBalance(holder, amount);
  at /home/jiaming/mavs_srcs/contract@0xcc88d8ea235eb37d427a7040674d751a689ba4bc.sol(1502)

[33mWarning[0m for TODReceiver in contract 'SmartDice':
    |        refWallet[msg.sender].balance = 0;
    |        balance = sub(balance, amount);
  > |        if (!msg.sender.send(amount)) revert();
    |        
    |        PaidRefBalance(msg.sender, amount);
  at /home/jiaming/mavs_srcs/contract@0xcc88d8ea235eb37d427a7040674d751a689ba4bc.sol(1512)

[33mWarning[0m for UnhandledException in contract 'SmartDice':
    |            oraclize_setNetwork(networkID_auto);
    |
  > |        if(address(oraclize) != OAR.getAddress())
    |            oraclize = OraclizeI(OAR.getAddress());
    |
  at /home/jiaming/mavs_srcs/contract@0xcc88d8ea235eb37d427a7040674d751a689ba4bc.sol(346)

[33mWarning[0m for UnhandledException in contract 'SmartDice':
    |
    |        if(address(oraclize) != OAR.getAddress())
  > |            oraclize = OraclizeI(OAR.getAddress());
    |
    |        _;
  at /home/jiaming/mavs_srcs/contract@0xcc88d8ea235eb37d427a7040674d751a689ba4bc.sol(347)

[33mWarning[0m for UnhandledException in contract 'SmartDice':
    |    }
    |    function oraclize_query(string datasource, string arg1, string arg2, uint gaslimit) oraclizeAPI internal returns (bytes32 id){
  > |        uint price = oraclize.getPrice(datasource, gaslimit);
    |        if (price > 1 ether + tx.gasprice*gaslimit) return 0; // unexpectedly high price
    |        return oraclize.query2_withGasLimit.value(price)(0, datasource, arg1, arg2, gaslimit);
  at /home/jiaming/mavs_srcs/contract@0xcc88d8ea235eb37d427a7040674d751a689ba4bc.sol(447)

[33mWarning[0m for UnhandledException in contract 'SmartDice':
    |        uint price = oraclize.getPrice(datasource, gaslimit);
    |        if (price > 1 ether + tx.gasprice*gaslimit) return 0; // unexpectedly high price
  > |        return oraclize.query2_withGasLimit.value(price)(0, datasource, arg1, arg2, gaslimit);
    |    }
    |    function oraclize_query(string datasource, string[] argN) oraclizeAPI internal returns (bytes32 id){
  at /home/jiaming/mavs_srcs/contract@0xcc88d8ea235eb37d427a7040674d751a689ba4bc.sol(449)

[33mWarning[0m for UnhandledException in contract 'SmartDice':
    |
    |    function oraclize_cbAddress() oraclizeAPI internal returns (address){
  > |        return oraclize.cbAddress();
    |    }
    |    function oraclize_setProof(byte proofP) oraclizeAPI internal {
  at /home/jiaming/mavs_srcs/contract@0xcc88d8ea235eb37d427a7040674d751a689ba4bc.sol(785)

[33mWarning[0m for UnhandledException in contract 'SmartDice':
    |    }
    |    function oraclize_setCustomGasPrice(uint gasPrice) oraclizeAPI internal {
  > |        return oraclize.setCustomGasPrice(gasPrice);
    |    }
    |    function oraclize_setConfig(bytes32 config) oraclizeAPI internal {
  at /home/jiaming/mavs_srcs/contract@0xcc88d8ea235eb37d427a7040674d751a689ba4bc.sol(791)

[33mWarning[0m for UnhandledException in contract 'SmartDice':
    |            bets[myId].paid = true;
    |            
  > |            if (!bets[myId].player.send(amtToSend)) {
    |                bets[myId].paid = false;
    |                pendingWallet[bets[myId].player] = add(pendingWallet[bets[myId].player], amtToSend);
  at /home/jiaming/mavs_srcs/contract@0xcc88d8ea235eb37d427a7040674d751a689ba4bc.sol(1359)

[33mWarning[0m for UnhandledException in contract 'SmartDice':
    |            bets[myId].paid = true;
    |            
  > |            if (!bets[myId].player.send(1)) {
    |                bets[myId].paid = false;
    |                pendingWallet[bets[myId].player] = add(pendingWallet[bets[myId].player], 1);
  at /home/jiaming/mavs_srcs/contract@0xcc88d8ea235eb37d427a7040674d751a689ba4bc.sol(1375)

[33mWarning[0m for UnhandledException in contract 'SmartDice':
    |        require(msg.sender != _referee);
    |        
  > |        uint oraclizeFee = OraclizeI(OAR.getAddress()).getPrice("URL", gasOraclize);
    |        if (minBetAmount + oraclizeFee >= msg.value) revert();
    |        
  at /home/jiaming/mavs_srcs/contract@0xcc88d8ea235eb37d427a7040674d751a689ba4bc.sol(1391)

[33mWarning[0m for UnhandledException in contract 'SmartDice':
    |    
    |    function getMinBetAmount() public constant returns (uint) {
  > |        uint oraclizeFee = OraclizeI(OAR.getAddress()).getPrice("URL", gasOraclize);
    |        return oraclizeFee + minBetAmount;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xcc88d8ea235eb37d427a7040674d751a689ba4bc.sol(1426)

[33mWarning[0m for UnhandledException in contract 'SmartDice':
    |    function getMaxBetAmount(uint odd) public constant returns (uint) {
    |        uint totalBalance = address(this).balance;
  > |        uint oraclizeFee = OraclizeI(OAR.getAddress()).getPrice("URL", gasOraclize);
    |        return totalBalance * odd * 100 / (houseEdge * (100 - odd)) + oraclizeFee;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xcc88d8ea235eb37d427a7040674d751a689ba4bc.sol(1432)

[33mWarning[0m for UnhandledException in contract 'SmartDice':
    |    function getContractData() public constant returns (uint, uint, uint, uint, uint, uint, uint, uint) {
    |        uint totalBalance = address(this).balance;
  > |        uint oraclizeFee = OraclizeI(OAR.getAddress()).getPrice("URL", gasOraclize);
    |        return (totalBalance, oraclizeFee, totalBets, totalUserProfit, totalUserLost, totalWins, totalLosts, houseEdge);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xcc88d8ea235eb37d427a7040674d751a689ba4bc.sol(1455)

[33mWarning[0m for UnhandledException in contract 'SmartDice':
    |    function withdrawBalance(address withdraw, uint amount) public onlyOwner {
    |        require(withdraw != address(0));
  > |        balance = sub(this.balance(), amount);
    |        if (!withdraw.send(amount)) revert();
    |        
  at /home/jiaming/mavs_srcs/contract@0xcc88d8ea235eb37d427a7040674d751a689ba4bc.sol(1490)

[33mWarning[0m for UnhandledException in contract 'SmartDice':
    |        require(withdraw != address(0));
    |        balance = sub(this.balance(), amount);
  > |        if (!withdraw.send(amount)) revert();
    |        
    |        HouseWithdrawed(withdraw, amount);
  at /home/jiaming/mavs_srcs/contract@0xcc88d8ea235eb37d427a7040674d751a689ba4bc.sol(1491)

[33mWarning[0m for UnhandledException in contract 'SmartDice':
    |        pendingWallet[holder] = 0;
    |        balance = sub(balance, amount);
  > |        if (!holder.send(amount)) revert();
    |        
    |        PaidPendingBalance(holder, amount);
  at /home/jiaming/mavs_srcs/contract@0xcc88d8ea235eb37d427a7040674d751a689ba4bc.sol(1502)

[33mWarning[0m for UnhandledException in contract 'SmartDice':
    |        refWallet[msg.sender].balance = 0;
    |        balance = sub(balance, amount);
  > |        if (!msg.sender.send(amount)) revert();
    |        
    |        PaidRefBalance(msg.sender, amount);
  at /home/jiaming/mavs_srcs/contract@0xcc88d8ea235eb37d427a7040674d751a689ba4bc.sol(1512)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SmartDice':
    |            oraclize_setNetwork(networkID_auto);
    |
  > |        if(address(oraclize) != OAR.getAddress())
    |            oraclize = OraclizeI(OAR.getAddress());
    |
  at /home/jiaming/mavs_srcs/contract@0xcc88d8ea235eb37d427a7040674d751a689ba4bc.sol(346)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SmartDice':
    |
    |        if(address(oraclize) != OAR.getAddress())
  > |            oraclize = OraclizeI(OAR.getAddress());
    |
    |        _;
  at /home/jiaming/mavs_srcs/contract@0xcc88d8ea235eb37d427a7040674d751a689ba4bc.sol(347)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SmartDice':
    |    }
    |    function oraclize_query(string datasource, string arg1, string arg2, uint gaslimit) oraclizeAPI internal returns (bytes32 id){
  > |        uint price = oraclize.getPrice(datasource, gaslimit);
    |        if (price > 1 ether + tx.gasprice*gaslimit) return 0; // unexpectedly high price
    |        return oraclize.query2_withGasLimit.value(price)(0, datasource, arg1, arg2, gaslimit);
  at /home/jiaming/mavs_srcs/contract@0xcc88d8ea235eb37d427a7040674d751a689ba4bc.sol(447)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SmartDice':
    |
    |    function oraclize_cbAddress() oraclizeAPI internal returns (address){
  > |        return oraclize.cbAddress();
    |    }
    |    function oraclize_setProof(byte proofP) oraclizeAPI internal {
  at /home/jiaming/mavs_srcs/contract@0xcc88d8ea235eb37d427a7040674d751a689ba4bc.sol(785)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SmartDice':
    |    }
    |    function oraclize_setCustomGasPrice(uint gasPrice) oraclizeAPI internal {
  > |        return oraclize.setCustomGasPrice(gasPrice);
    |    }
    |    function oraclize_setConfig(bytes32 config) oraclizeAPI internal {
  at /home/jiaming/mavs_srcs/contract@0xcc88d8ea235eb37d427a7040674d751a689ba4bc.sol(791)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SmartDice':
    |            bets[myId].paid = true;
    |            
  > |            if (!bets[myId].player.send(amtToSend)) {
    |                bets[myId].paid = false;
    |                pendingWallet[bets[myId].player] = add(pendingWallet[bets[myId].player], amtToSend);
  at /home/jiaming/mavs_srcs/contract@0xcc88d8ea235eb37d427a7040674d751a689ba4bc.sol(1359)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SmartDice':
    |            bets[myId].paid = true;
    |            
  > |            if (!bets[myId].player.send(1)) {
    |                bets[myId].paid = false;
    |                pendingWallet[bets[myId].player] = add(pendingWallet[bets[myId].player], 1);
  at /home/jiaming/mavs_srcs/contract@0xcc88d8ea235eb37d427a7040674d751a689ba4bc.sol(1375)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SmartDice':
    |        require(msg.sender != _referee);
    |        
  > |        uint oraclizeFee = OraclizeI(OAR.getAddress()).getPrice("URL", gasOraclize);
    |        if (minBetAmount + oraclizeFee >= msg.value) revert();
    |        
  at /home/jiaming/mavs_srcs/contract@0xcc88d8ea235eb37d427a7040674d751a689ba4bc.sol(1391)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SmartDice':
    |    
    |    function getMinBetAmount() public constant returns (uint) {
  > |        uint oraclizeFee = OraclizeI(OAR.getAddress()).getPrice("URL", gasOraclize);
    |        return oraclizeFee + minBetAmount;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xcc88d8ea235eb37d427a7040674d751a689ba4bc.sol(1426)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SmartDice':
    |    function getMaxBetAmount(uint odd) public constant returns (uint) {
    |        uint totalBalance = address(this).balance;
  > |        uint oraclizeFee = OraclizeI(OAR.getAddress()).getPrice("URL", gasOraclize);
    |        return totalBalance * odd * 100 / (houseEdge * (100 - odd)) + oraclizeFee;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xcc88d8ea235eb37d427a7040674d751a689ba4bc.sol(1432)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SmartDice':
    |    function getContractData() public constant returns (uint, uint, uint, uint, uint, uint, uint, uint) {
    |        uint totalBalance = address(this).balance;
  > |        uint oraclizeFee = OraclizeI(OAR.getAddress()).getPrice("URL", gasOraclize);
    |        return (totalBalance, oraclizeFee, totalBets, totalUserProfit, totalUserLost, totalWins, totalLosts, houseEdge);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xcc88d8ea235eb37d427a7040674d751a689ba4bc.sol(1455)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SmartDice':
    |    function withdrawBalance(address withdraw, uint amount) public onlyOwner {
    |        require(withdraw != address(0));
  > |        balance = sub(this.balance(), amount);
    |        if (!withdraw.send(amount)) revert();
    |        
  at /home/jiaming/mavs_srcs/contract@0xcc88d8ea235eb37d427a7040674d751a689ba4bc.sol(1490)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SmartDice':
    |        require(withdraw != address(0));
    |        balance = sub(this.balance(), amount);
  > |        if (!withdraw.send(amount)) revert();
    |        
    |        HouseWithdrawed(withdraw, amount);
  at /home/jiaming/mavs_srcs/contract@0xcc88d8ea235eb37d427a7040674d751a689ba4bc.sol(1491)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SmartDice':
    |        pendingWallet[holder] = 0;
    |        balance = sub(balance, amount);
  > |        if (!holder.send(amount)) revert();
    |        
    |        PaidPendingBalance(holder, amount);
  at /home/jiaming/mavs_srcs/contract@0xcc88d8ea235eb37d427a7040674d751a689ba4bc.sol(1502)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SmartDice':
    |        refWallet[msg.sender].balance = 0;
    |        balance = sub(balance, amount);
  > |        if (!msg.sender.send(amount)) revert();
    |        
    |        PaidRefBalance(msg.sender, amount);
  at /home/jiaming/mavs_srcs/contract@0xcc88d8ea235eb37d427a7040674d751a689ba4bc.sol(1512)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartDice':
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xcc88d8ea235eb37d427a7040674d751a689ba4bc.sol(40)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartDice':
    |
    |        if(address(oraclize) != OAR.getAddress())
  > |            oraclize = OraclizeI(OAR.getAddress());
    |
    |        _;
  at /home/jiaming/mavs_srcs/contract@0xcc88d8ea235eb37d427a7040674d751a689ba4bc.sol(347)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartDice':
    |    function oraclize_setNetwork(uint8 networkID) internal returns(bool){
    |        if (getCodeSize(0x1d3B2638a7cC9f2CB3D298A3DA7a90B67E5506ed)>0){ //mainnet
  > |            OAR = OraclizeAddrResolverI(0x1d3B2638a7cC9f2CB3D298A3DA7a90B67E5506ed);
    |            oraclize_setNetworkName("eth_mainnet");
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xcc88d8ea235eb37d427a7040674d751a689ba4bc.sol(359)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartDice':
    |        }
    |        if (getCodeSize(0xc03A2615D5efaf5F49F60B7BB6583eaec212fdf1)>0){ //ropsten testnet
  > |            OAR = OraclizeAddrResolverI(0xc03A2615D5efaf5F49F60B7BB6583eaec212fdf1);
    |            oraclize_setNetworkName("eth_ropsten3");
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xcc88d8ea235eb37d427a7040674d751a689ba4bc.sol(364)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartDice':
    |        }
    |        if (getCodeSize(0xB7A07BcF2Ba2f2703b24C0691b5278999C59AC7e)>0){ //kovan testnet
  > |            OAR = OraclizeAddrResolverI(0xB7A07BcF2Ba2f2703b24C0691b5278999C59AC7e);
    |            oraclize_setNetworkName("eth_kovan");
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xcc88d8ea235eb37d427a7040674d751a689ba4bc.sol(369)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartDice':
    |        }
    |        if (getCodeSize(0x146500cfd35B22E4A392Fe0aDc06De1a1368Ed48)>0){ //rinkeby testnet
  > |            OAR = OraclizeAddrResolverI(0x146500cfd35B22E4A392Fe0aDc06De1a1368Ed48);
    |            oraclize_setNetworkName("eth_rinkeby");
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xcc88d8ea235eb37d427a7040674d751a689ba4bc.sol(374)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartDice':
    |        }
    |        if (getCodeSize(0x6f485C8BF6fc43eA212E93BBF8ce046C7f1cb475)>0){ //ethereum-bridge
  > |            OAR = OraclizeAddrResolverI(0x6f485C8BF6fc43eA212E93BBF8ce046C7f1cb475);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xcc88d8ea235eb37d427a7040674d751a689ba4bc.sol(379)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartDice':
    |        }
    |        if (getCodeSize(0x20e12A1F859B3FeaE5Fb2A0A32C18F5a65555bBF)>0){ //ether.camp ide
  > |            OAR = OraclizeAddrResolverI(0x20e12A1F859B3FeaE5Fb2A0A32C18F5a65555bBF);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xcc88d8ea235eb37d427a7040674d751a689ba4bc.sol(383)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartDice':
    |        }
    |        if (getCodeSize(0x51efaF4c8B3C9AfBD5aB9F4bbC82784Ab6ef8fAA)>0){ //browser-solidity
  > |            OAR = OraclizeAddrResolverI(0x51efaF4c8B3C9AfBD5aB9F4bbC82784Ab6ef8fAA);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xcc88d8ea235eb37d427a7040674d751a689ba4bc.sol(387)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartDice':
    |// </ORACLIZE_API>
    |
  > |contract SmartDice is usingOraclize, Ownable, SafeMath {
    |    
    |    struct DiceBet {
  at /home/jiaming/mavs_srcs/contract@0xcc88d8ea235eb37d427a7040674d751a689ba4bc.sol(1265)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartDice':
    |        
    |        bets[myId].rng = uint(keccak256(parseInt(result), proof)) % baseNumber + 1;
  > |        maxPendingBalances = sub(maxPendingBalances, bets[myId].profit);
    |        
    |        if (bets[myId].rng < bets[myId].odd * 10) { 
  at /home/jiaming/mavs_srcs/contract@0xcc88d8ea235eb37d427a7040674d751a689ba4bc.sol(1339)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartDice':
    |        if (bets[myId].rng < bets[myId].odd * 10) { 
    |            /// player win
  > |            bets[myId].win = 1;
    |            totalWins = totalWins + 1;
    |            
  at /home/jiaming/mavs_srcs/contract@0xcc88d8ea235eb37d427a7040674d751a689ba4bc.sol(1343)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartDice':
    |            /// player win
    |            bets[myId].win = 1;
  > |            totalWins = totalWins + 1;
    |            
    |            uint refAmt = 0;
  at /home/jiaming/mavs_srcs/contract@0xcc88d8ea235eb37d427a7040674d751a689ba4bc.sol(1344)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartDice':
    |            if (bets[myId].referee != address(0x0)) {
    |                refAmt = bets[myId].profit * refShare / 100;
  > |                refWallet[bets[myId].referee].refCnt ++;
    |                refWallet[bets[myId].referee].balance = add(refWallet[bets[myId].referee].balance, refAmt);
    |            }
  at /home/jiaming/mavs_srcs/contract@0xcc88d8ea235eb37d427a7040674d751a689ba4bc.sol(1349)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartDice':
    |                refAmt = bets[myId].profit * refShare / 100;
    |                refWallet[bets[myId].referee].refCnt ++;
  > |                refWallet[bets[myId].referee].balance = add(refWallet[bets[myId].referee].balance, refAmt);
    |            }
    |            
  at /home/jiaming/mavs_srcs/contract@0xcc88d8ea235eb37d427a7040674d751a689ba4bc.sol(1350)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartDice':
    |            }
    |            
  > |            balance = sub(balance, bets[myId].profit);
    |            totalUserProfit = totalUserProfit + bets[myId].profit;
    |            
  at /home/jiaming/mavs_srcs/contract@0xcc88d8ea235eb37d427a7040674d751a689ba4bc.sol(1353)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartDice':
    |            
    |            balance = sub(balance, bets[myId].profit);
  > |            totalUserProfit = totalUserProfit + bets[myId].profit;
    |            
    |            uint amtToSend = add(bets[myId].profit, bets[myId].stake) - refAmt;
  at /home/jiaming/mavs_srcs/contract@0xcc88d8ea235eb37d427a7040674d751a689ba4bc.sol(1354)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartDice':
    |            
    |            uint amtToSend = add(bets[myId].profit, bets[myId].stake) - refAmt;
  > |            bets[myId].paid = true;
    |            
    |            if (!bets[myId].player.send(amtToSend)) {
  at /home/jiaming/mavs_srcs/contract@0xcc88d8ea235eb37d427a7040674d751a689ba4bc.sol(1357)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartDice':
    |            
    |            if (!bets[myId].player.send(amtToSend)) {
  > |                bets[myId].paid = false;
    |                pendingWallet[bets[myId].player] = add(pendingWallet[bets[myId].player], amtToSend);
    |            }
  at /home/jiaming/mavs_srcs/contract@0xcc88d8ea235eb37d427a7040674d751a689ba4bc.sol(1360)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartDice':
    |            if (!bets[myId].player.send(amtToSend)) {
    |                bets[myId].paid = false;
  > |                pendingWallet[bets[myId].player] = add(pendingWallet[bets[myId].player], amtToSend);
    |            }
    |            
  at /home/jiaming/mavs_srcs/contract@0xcc88d8ea235eb37d427a7040674d751a689ba4bc.sol(1361)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartDice':
    |        } else {
    |            /// player defeated
  > |            bets[myId].win = 0;
    |            
    |            balance = sub(balance, 1);
  at /home/jiaming/mavs_srcs/contract@0xcc88d8ea235eb37d427a7040674d751a689ba4bc.sol(1367)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartDice':
    |            bets[myId].win = 0;
    |            
  > |            balance = sub(balance, 1);
    |            totalUserLost = totalUserLost + bets[myId].stake;
    |            totalLosts = totalLosts + 1;
  at /home/jiaming/mavs_srcs/contract@0xcc88d8ea235eb37d427a7040674d751a689ba4bc.sol(1369)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartDice':
    |            
    |            balance = sub(balance, 1);
  > |            totalUserLost = totalUserLost + bets[myId].stake;
    |            totalLosts = totalLosts + 1;
    |            bets[myId].profit = 0;
  at /home/jiaming/mavs_srcs/contract@0xcc88d8ea235eb37d427a7040674d751a689ba4bc.sol(1370)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartDice':
    |            balance = sub(balance, 1);
    |            totalUserLost = totalUserLost + bets[myId].stake;
  > |            totalLosts = totalLosts + 1;
    |            bets[myId].profit = 0;
    |            bets[myId].paid = true;
  at /home/jiaming/mavs_srcs/contract@0xcc88d8ea235eb37d427a7040674d751a689ba4bc.sol(1371)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartDice':
    |            totalUserLost = totalUserLost + bets[myId].stake;
    |            totalLosts = totalLosts + 1;
  > |            bets[myId].profit = 0;
    |            bets[myId].paid = true;
    |            
  at /home/jiaming/mavs_srcs/contract@0xcc88d8ea235eb37d427a7040674d751a689ba4bc.sol(1372)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartDice':
    |            totalLosts = totalLosts + 1;
    |            bets[myId].profit = 0;
  > |            bets[myId].paid = true;
    |            
    |            if (!bets[myId].player.send(1)) {
  at /home/jiaming/mavs_srcs/contract@0xcc88d8ea235eb37d427a7040674d751a689ba4bc.sol(1373)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartDice':
    |            
    |            if (!bets[myId].player.send(1)) {
  > |                bets[myId].paid = false;
    |                pendingWallet[bets[myId].player] = add(pendingWallet[bets[myId].player], 1);
    |            }
  at /home/jiaming/mavs_srcs/contract@0xcc88d8ea235eb37d427a7040674d751a689ba4bc.sol(1376)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartDice':
    |            if (!bets[myId].player.send(1)) {
    |                bets[myId].paid = false;
  > |                pendingWallet[bets[myId].player] = add(pendingWallet[bets[myId].player], 1);
    |            }
    |            
  at /home/jiaming/mavs_srcs/contract@0xcc88d8ea235eb37d427a7040674d751a689ba4bc.sol(1377)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartDice':
    |            }
    |            
  > |            balance = add(balance, bets[myId].stake);
    |            
    |            UserLose(bets[myId].player, myId, bets[myId].stake, bets[myId].odd, bets[myId].rng, bets[myId].stake);
  at /home/jiaming/mavs_srcs/contract@0xcc88d8ea235eb37d427a7040674d751a689ba4bc.sol(1380)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartDice':
    |        queryIds.push(queryId);
    |        
  > |        maxPendingBalances = add(maxPendingBalances, profit);
    |        if (maxPendingBalances > balance) revert();
    |        
  at /home/jiaming/mavs_srcs/contract@0xcc88d8ea235eb37d427a7040674d751a689ba4bc.sol(1403)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartDice':
    |        if (maxPendingBalances > balance) revert();
    |        
  > |        totalBets += 1;
    |        
    |        DiceRolled(msg.sender, queryId, stake, _odd, _referee);
  at /home/jiaming/mavs_srcs/contract@0xcc88d8ea235eb37d427a7040674d751a689ba4bc.sol(1406)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartDice':
    |    
    |    function setOraclizeGasLimit(uint amount) public onlyOwner {
  > |        gasOraclize = amount;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xcc88d8ea235eb37d427a7040674d751a689ba4bc.sol(1417)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartDice':
    |    
    |    function setOraclizeGasPrice(uint price) public onlyOwner {
  > |        gasPriceOraclize = price;
    |        oraclize_setCustomGasPrice(price);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xcc88d8ea235eb37d427a7040674d751a689ba4bc.sol(1421)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartDice':
    |    
    |    function setMinBetAmount(uint amount) public onlyOwner {
  > |        minBetAmount = amount;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xcc88d8ea235eb37d427a7040674d751a689ba4bc.sol(1460)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartDice':
    |    function setMaxBetAmount(uint odd, uint amount) public onlyOwner {
    |        require(maxBetAmounts[odd] > 0);
  > |        maxBetAmounts[odd] = amount;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xcc88d8ea235eb37d427a7040674d751a689ba4bc.sol(1465)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartDice':
    |    
    |    function setHouseEdge(uint value) public onlyOwner {
  > |        houseEdge = value;
    |        
    |        ResetHouseEdge();
  at /home/jiaming/mavs_srcs/contract@0xcc88d8ea235eb37d427a7040674d751a689ba4bc.sol(1469)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartDice':
    |    
    |    function setRefShare(uint value) public onlyOwner {
  > |        refShare = value;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xcc88d8ea235eb37d427a7040674d751a689ba4bc.sol(1475)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartDice':
    |
    |    function depositBalance() public payable onlyOwner {
  > |        balance = add(balance, msg.value);
    |        
    |        HouseDeposited(msg.value);
  at /home/jiaming/mavs_srcs/contract@0xcc88d8ea235eb37d427a7040674d751a689ba4bc.sol(1479)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartDice':
    |    
    |    function resetBalance() public onlyOwner {
  > |        balance = address(this).balance;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xcc88d8ea235eb37d427a7040674d751a689ba4bc.sol(1485)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartDice':
    |    function withdrawBalance(address withdraw, uint amount) public onlyOwner {
    |        require(withdraw != address(0));
  > |        balance = sub(this.balance(), amount);
    |        if (!withdraw.send(amount)) revert();
    |        
  at /home/jiaming/mavs_srcs/contract@0xcc88d8ea235eb37d427a7040674d751a689ba4bc.sol(1490)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartDice':
    |        require(pendingWallet[holder] != 0);
    |        uint amount = pendingWallet[holder];
  > |        pendingWallet[holder] = 0;
    |        balance = sub(balance, amount);
    |        if (!holder.send(amount)) revert();
  at /home/jiaming/mavs_srcs/contract@0xcc88d8ea235eb37d427a7040674d751a689ba4bc.sol(1500)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartDice':
    |        uint amount = pendingWallet[holder];
    |        pendingWallet[holder] = 0;
  > |        balance = sub(balance, amount);
    |        if (!holder.send(amount)) revert();
    |        
  at /home/jiaming/mavs_srcs/contract@0xcc88d8ea235eb37d427a7040674d751a689ba4bc.sol(1501)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartDice':
    |        require(refWallet[msg.sender].balance > 0);
    |        uint amount = refWallet[msg.sender].balance;
  > |        refWallet[msg.sender].balance = 0;
    |        balance = sub(balance, amount);
    |        if (!msg.sender.send(amount)) revert();
  at /home/jiaming/mavs_srcs/contract@0xcc88d8ea235eb37d427a7040674d751a689ba4bc.sol(1510)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartDice':
    |        uint amount = refWallet[msg.sender].balance;
    |        refWallet[msg.sender].balance = 0;
  > |        balance = sub(balance, amount);
    |        if (!msg.sender.send(amount)) revert();
    |        
  at /home/jiaming/mavs_srcs/contract@0xcc88d8ea235eb37d427a7040674d751a689ba4bc.sol(1511)

[33mWarning[0m for LockedEther in contract 'usingOraclize':
    | */
    |
  > |contract usingOraclize {
    |    uint constant day = 60*60*24;
    |    uint constant week = 60*60*24*7;
  at /home/jiaming/mavs_srcs/contract@0xcc88d8ea235eb37d427a7040674d751a689ba4bc.sol(323)


