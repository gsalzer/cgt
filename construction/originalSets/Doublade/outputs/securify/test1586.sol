Processing contract: /home/jiaming/mavs_srcs/contract@0x64b31f941a4c3a53aeb4b6e8bc97ca00d226cd2c.sol:CreatorEnabled
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x64b31f941a4c3a53aeb4b6e8bc97ca00d226cd2c.sol:GoldFiatFee
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x64b31f941a4c3a53aeb4b6e8bc97ca00d226cd2c.sol:IGold
Processing contract: /home/jiaming/mavs_srcs/contract@0x64b31f941a4c3a53aeb4b6e8bc97ca00d226cd2c.sol:IGoldFiatFee
Processing contract: /home/jiaming/mavs_srcs/contract@0x64b31f941a4c3a53aeb4b6e8bc97ca00d226cd2c.sol:IMNTP
Processing contract: /home/jiaming/mavs_srcs/contract@0x64b31f941a4c3a53aeb4b6e8bc97ca00d226cd2c.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x64b31f941a4c3a53aeb4b6e8bc97ca00d226cd2c.sol:Storage
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x64b31f941a4c3a53aeb4b6e8bc97ca00d226cd2c.sol:StorageController
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x64b31f941a4c3a53aeb4b6e8bc97ca00d226cd2c.sol:StringMover
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'CreatorEnabled':
    |}
    |
  > |contract CreatorEnabled {
    |     address public creator = 0x0;
    |
  at /home/jiaming/mavs_srcs/contract@0x64b31f941a4c3a53aeb4b6e8bc97ca00d226cd2c.sol(31)

[31mViolation[0m for MissingInputValidation in contract 'CreatorEnabled':
    |     modifier onlyCreator() { require(msg.sender == creator); _; }
    |
  > |     function changeCreator(address _to) public onlyCreator {
    |          creator = _to;
    |     }
  at /home/jiaming/mavs_srcs/contract@0x64b31f941a4c3a53aeb4b6e8bc97ca00d226cd2c.sol(36)

[33mWarning[0m for MissingInputValidation in contract 'CreatorEnabled':
    |
    |contract CreatorEnabled {
  > |     address public creator = 0x0;
    |
    |     modifier onlyCreator() { require(msg.sender == creator); _; }
  at /home/jiaming/mavs_srcs/contract@0x64b31f941a4c3a53aeb4b6e8bc97ca00d226cd2c.sol(32)

[33mWarning[0m for UnrestrictedWrite in contract 'CreatorEnabled':
    |
    |     function changeCreator(address _to) public onlyCreator {
  > |          creator = _to;
    |     }
    |}
  at /home/jiaming/mavs_srcs/contract@0x64b31f941a4c3a53aeb4b6e8bc97ca00d226cd2c.sol(37)

[31mViolation[0m for LockedEther in contract 'GoldFiatFee':
    |}
    |
  > |contract GoldFiatFee is CreatorEnabled, StringMover {
    |     string gmUserId = "";
    |
  at /home/jiaming/mavs_srcs/contract@0x64b31f941a4c3a53aeb4b6e8bc97ca00d226cd2c.sol(306)

[31mViolation[0m for UnrestrictedWrite in contract 'GoldFiatFee':
    |}
    |
  > |contract GoldFiatFee is CreatorEnabled, StringMover {
    |     string gmUserId = "";
    |
  at /home/jiaming/mavs_srcs/contract@0x64b31f941a4c3a53aeb4b6e8bc97ca00d226cd2c.sol(306)

[33mWarning[0m for UnrestrictedWrite in contract 'GoldFiatFee':
    |
    |     function changeCreator(address _to) public onlyCreator {
  > |          creator = _to;
    |     }
    |}
  at /home/jiaming/mavs_srcs/contract@0x64b31f941a4c3a53aeb4b6e8bc97ca00d226cd2c.sol(37)

[33mWarning[0m for UnrestrictedWrite in contract 'GoldFiatFee':
    |}
    |
  > |contract GoldFiatFee is CreatorEnabled, StringMover {
    |     string gmUserId = "";
    |
  at /home/jiaming/mavs_srcs/contract@0x64b31f941a4c3a53aeb4b6e8bc97ca00d226cd2c.sol(306)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |}
    |
  > |contract SafeMath {
    |    function safeAdd(uint a, uint b) internal returns (uint) {
    |        uint c = a + b;
  at /home/jiaming/mavs_srcs/contract@0x64b31f941a4c3a53aeb4b6e8bc97ca00d226cd2c.sol(18)

[33mWarning[0m for LockedEther in contract 'Storage':
    |
    |
  > |contract Storage is SafeMath, StringMover {
    |     function Storage() public {
    |          controllerAddress = msg.sender;
  at /home/jiaming/mavs_srcs/contract@0x64b31f941a4c3a53aeb4b6e8bc97ca00d226cd2c.sol(106)

[31mViolation[0m for UnrestrictedWrite in contract 'Storage':
    |
    |
  > |contract Storage is SafeMath, StringMover {
    |     function Storage() public {
    |          controllerAddress = msg.sender;
  at /home/jiaming/mavs_srcs/contract@0x64b31f941a4c3a53aeb4b6e8bc97ca00d226cd2c.sol(106)

[31mViolation[0m for UnrestrictedWrite in contract 'Storage':
    |          uint c = fiatTxCounts[_userId];
    |
  > |          fiatTxs[_userId][c] = _amountCents;
    |        
    |          if (_amountCents > 0) {
  at /home/jiaming/mavs_srcs/contract@0x64b31f941a4c3a53aeb4b6e8bc97ca00d226cd2c.sol(179)

[31mViolation[0m for UnrestrictedWrite in contract 'Storage':
    |        
    |          if (_amountCents > 0) {
  > |              fiatBalancesCents[_userId] = safeAdd(fiatBalancesCents[_userId], uint(_amountCents));
    |          } else {
    |              fiatBalancesCents[_userId] = safeSub(fiatBalancesCents[_userId], uint(-_amountCents));
  at /home/jiaming/mavs_srcs/contract@0x64b31f941a4c3a53aeb4b6e8bc97ca00d226cd2c.sol(182)

[31mViolation[0m for UnrestrictedWrite in contract 'Storage':
    |              fiatBalancesCents[_userId] = safeAdd(fiatBalancesCents[_userId], uint(_amountCents));
    |          } else {
  > |              fiatBalancesCents[_userId] = safeSub(fiatBalancesCents[_userId], uint(-_amountCents));
    |          }
    |
  at /home/jiaming/mavs_srcs/contract@0x64b31f941a4c3a53aeb4b6e8bc97ca00d226cd2c.sol(184)

[31mViolation[0m for UnrestrictedWrite in contract 'Storage':
    |          }
    |
  > |          fiatTxCounts[_userId] = safeAdd(fiatTxCounts[_userId], 1);
    |
    |          fiatTxTotal++;
  at /home/jiaming/mavs_srcs/contract@0x64b31f941a4c3a53aeb4b6e8bc97ca00d226cd2c.sol(187)

[31mViolation[0m for UnrestrictedWrite in contract 'Storage':
    |          fiatTxCounts[_userId] = safeAdd(fiatTxCounts[_userId], 1);
    |
  > |          fiatTxTotal++;
    |          return c;
    |     }
  at /home/jiaming/mavs_srcs/contract@0x64b31f941a4c3a53aeb4b6e8bc97ca00d226cd2c.sol(189)

[31mViolation[0m for UnrestrictedWrite in contract 'Storage':
    |          uint c = goldTxCounts[_userId];
    |
  > |          goldTxs[_userId][c] = _amount;
    |
    |          if (_amount > 0) {
  at /home/jiaming/mavs_srcs/contract@0x64b31f941a4c3a53aeb4b6e8bc97ca00d226cd2c.sol(215)

[31mViolation[0m for UnrestrictedWrite in contract 'Storage':
    |
    |          if (_amount > 0) {
  > |              goldHotBalances[_userId] = safeAdd(goldHotBalances[_userId], uint(_amount));
    |          } else {
    |              goldHotBalances[_userId] = safeSub(goldHotBalances[_userId], uint(-_amount));
  at /home/jiaming/mavs_srcs/contract@0x64b31f941a4c3a53aeb4b6e8bc97ca00d226cd2c.sol(218)

[31mViolation[0m for UnrestrictedWrite in contract 'Storage':
    |              goldHotBalances[_userId] = safeAdd(goldHotBalances[_userId], uint(_amount));
    |          } else {
  > |              goldHotBalances[_userId] = safeSub(goldHotBalances[_userId], uint(-_amount));
    |          }
    |
  at /home/jiaming/mavs_srcs/contract@0x64b31f941a4c3a53aeb4b6e8bc97ca00d226cd2c.sol(220)

[31mViolation[0m for UnrestrictedWrite in contract 'Storage':
    |          }
    |
  > |          goldTxCounts[_userId] = safeAdd(goldTxCounts[_userId], 1);
    |
    |          goldTxTotal++;
  at /home/jiaming/mavs_srcs/contract@0x64b31f941a4c3a53aeb4b6e8bc97ca00d226cd2c.sol(223)

[31mViolation[0m for UnrestrictedWrite in contract 'Storage':
    |          goldTxCounts[_userId] = safeAdd(goldTxCounts[_userId], 1);
    |
  > |          goldTxTotal++;
    |          return c;
    |     }
  at /home/jiaming/mavs_srcs/contract@0x64b31f941a4c3a53aeb4b6e8bc97ca00d226cd2c.sol(225)

[33mWarning[0m for UnrestrictedWrite in contract 'Storage':
    |
    |
  > |contract Storage is SafeMath, StringMover {
    |     function Storage() public {
    |          controllerAddress = msg.sender;
  at /home/jiaming/mavs_srcs/contract@0x64b31f941a4c3a53aeb4b6e8bc97ca00d226cd2c.sol(106)

[33mWarning[0m for UnrestrictedWrite in contract 'Storage':
    |          r.state = 0;
    |
  > |          requests[requestsCount] = r;
    |          uint out = requestsCount;
    |          requestsCount++;
  at /home/jiaming/mavs_srcs/contract@0x64b31f941a4c3a53aeb4b6e8bc97ca00d226cd2c.sol(268)

[33mWarning[0m for UnrestrictedWrite in contract 'Storage':
    |
    |
  > |contract Storage is SafeMath, StringMover {
    |     function Storage() public {
    |          controllerAddress = msg.sender;
  at /home/jiaming/mavs_srcs/contract@0x64b31f941a4c3a53aeb4b6e8bc97ca00d226cd2c.sol(106)

[33mWarning[0m for UnrestrictedWrite in contract 'Storage':
    |
    |     function setControllerAddress(address _newController) onlyController {
  > |          controllerAddress = _newController;
    |     }
    |
  at /home/jiaming/mavs_srcs/contract@0x64b31f941a4c3a53aeb4b6e8bc97ca00d226cd2c.sol(115)

[33mWarning[0m for UnrestrictedWrite in contract 'Storage':
    |
    |     function setHotWalletAddress(address _address) onlyController {
  > |         hotWalletAddress = _address;
    |     }
    |
  at /home/jiaming/mavs_srcs/contract@0x64b31f941a4c3a53aeb4b6e8bc97ca00d226cd2c.sol(121)

[33mWarning[0m for UnrestrictedWrite in contract 'Storage':
    |          r.state = 0;
    |
  > |          requests[requestsCount] = r;
    |          uint out = requestsCount;
    |          requestsCount++;
  at /home/jiaming/mavs_srcs/contract@0x64b31f941a4c3a53aeb4b6e8bc97ca00d226cd2c.sol(254)

[33mWarning[0m for UnrestrictedWrite in contract 'Storage':
    |          require(0==requests[_index].state);
    |
  > |          requests[_index].state = 2;
    |     }
    |     
  at /home/jiaming/mavs_srcs/contract@0x64b31f941a4c3a53aeb4b6e8bc97ca00d226cd2c.sol(298)

[33mWarning[0m for UnrestrictedWrite in contract 'Storage':
    |     
    |     function setRequestProcessed(uint _index) onlyController public {
  > |          requests[_index].state = 1;
    |     }
    |}
  at /home/jiaming/mavs_srcs/contract@0x64b31f941a4c3a53aeb4b6e8bc97ca00d226cd2c.sol(302)

[31mViolation[0m for LockedEther in contract 'StorageController':
    |}
    |
  > |contract StorageController is SafeMath, CreatorEnabled, StringMover {
    |     Storage public stor;
    |     IMNTP public mntpToken;
  at /home/jiaming/mavs_srcs/contract@0x64b31f941a4c3a53aeb4b6e8bc97ca00d226cd2c.sol(356)

[33mWarning[0m for UnhandledException in contract 'StorageController':
    |     // Only old controller can call setControllerAddress
    |     function changeController(address _newController) public onlyCreator {
  > |          stor.setControllerAddress(_newController);
    |     }
    |
  at /home/jiaming/mavs_srcs/contract@0x64b31f941a4c3a53aeb4b6e8bc97ca00d226cd2c.sol(389)

[33mWarning[0m for UnhandledException in contract 'StorageController':
    |
    |     function setHotWalletAddress(address _hotWalletAddress) public onlyCreator {
  > |         stor.setHotWalletAddress(_hotWalletAddress);
    |     }
    |
  at /home/jiaming/mavs_srcs/contract@0x64b31f941a4c3a53aeb4b6e8bc97ca00d226cd2c.sol(393)

[33mWarning[0m for UnhandledException in contract 'StorageController':
    |
    |     function getHotWalletAddress() public constant returns (address) {
  > |          return stor.hotWalletAddress();
    |     }
    |
  at /home/jiaming/mavs_srcs/contract@0x64b31f941a4c3a53aeb4b6e8bc97ca00d226cd2c.sol(397)

[33mWarning[0m for UnhandledException in contract 'StorageController':
    |     // 1
    |     function addDoc(string _ipfsDocLink) public onlyCreator returns(uint) {
  > |          return stor.addDoc(_ipfsDocLink);
    |     }
    |
  at /home/jiaming/mavs_srcs/contract@0x64b31f941a4c3a53aeb4b6e8bc97ca00d226cd2c.sol(406)

[33mWarning[0m for UnhandledException in contract 'StorageController':
    |
    |     function getDocCount() public constant returns (uint) {
  > |          return stor.docCount(); 
    |     }
    |
  at /home/jiaming/mavs_srcs/contract@0x64b31f941a4c3a53aeb4b6e8bc97ca00d226cd2c.sol(410)

[33mWarning[0m for UnhandledException in contract 'StorageController':
    |
    |     function getDoc(uint _index) public constant returns (string) {
  > |          var (x, y) = stor.getDocAsBytes64(_index);
    |          return bytes64ToString(x,y);
    |     }
  at /home/jiaming/mavs_srcs/contract@0x64b31f941a4c3a53aeb4b6e8bc97ca00d226cd2c.sol(414)

[33mWarning[0m for UnhandledException in contract 'StorageController':
    |     // returns index in user array
    |     function addFiatTransaction(string _userId, int _amountCents) public onlyCreator returns(uint) {
  > |          return stor.addFiatTransaction(_userId, _amountCents);
    |     }
    |
  at /home/jiaming/mavs_srcs/contract@0x64b31f941a4c3a53aeb4b6e8bc97ca00d226cd2c.sol(422)

[33mWarning[0m for UnhandledException in contract 'StorageController':
    |
    |     function getFiatTransactionsCount(string _userId) public constant returns (uint) {
  > |          return stor.getFiatTransactionsCount(_userId);
    |     }
    |     
  at /home/jiaming/mavs_srcs/contract@0x64b31f941a4c3a53aeb4b6e8bc97ca00d226cd2c.sol(426)

[33mWarning[0m for UnhandledException in contract 'StorageController':
    |     
    |     function getAllFiatTransactionsCount() public constant returns (uint) {
  > |          return stor.getAllFiatTransactionsCount();
    |     }
    |
  at /home/jiaming/mavs_srcs/contract@0x64b31f941a4c3a53aeb4b6e8bc97ca00d226cd2c.sol(430)

[33mWarning[0m for UnhandledException in contract 'StorageController':
    |
    |     function getFiatTransaction(string _userId, uint _index) public constant returns(int) {
  > |          return stor.getFiatTransaction(_userId, _index);
    |     }
    |
  at /home/jiaming/mavs_srcs/contract@0x64b31f941a4c3a53aeb4b6e8bc97ca00d226cd2c.sol(434)

[33mWarning[0m for UnhandledException in contract 'StorageController':
    |
    |     function getUserFiatBalance(string _userId) public constant returns(uint) {
  > |          return stor.getUserFiatBalance(_userId);
    |     }
    |
  at /home/jiaming/mavs_srcs/contract@0x64b31f941a4c3a53aeb4b6e8bc97ca00d226cd2c.sol(438)

[33mWarning[0m for UnhandledException in contract 'StorageController':
    |
    |     function addGoldTransaction(string _userId, int _amount) public onlyCreator returns(uint) {
  > |          return stor.addGoldTransaction(_userId, _amount);
    |     }
    |
  at /home/jiaming/mavs_srcs/contract@0x64b31f941a4c3a53aeb4b6e8bc97ca00d226cd2c.sol(444)

[33mWarning[0m for UnhandledException in contract 'StorageController':
    |
    |     function getGoldTransactionsCount(string _userId) public constant returns (uint) {
  > |          return stor.getGoldTransactionsCount(_userId);
    |     }
    |     
  at /home/jiaming/mavs_srcs/contract@0x64b31f941a4c3a53aeb4b6e8bc97ca00d226cd2c.sol(448)

[33mWarning[0m for UnhandledException in contract 'StorageController':
    |     
    |     function getAllGoldTransactionsCount() public constant returns (uint) {
  > |          return stor.getAllGoldTransactionsCount();
    |     }
    |
  at /home/jiaming/mavs_srcs/contract@0x64b31f941a4c3a53aeb4b6e8bc97ca00d226cd2c.sol(452)

[33mWarning[0m for UnhandledException in contract 'StorageController':
    |
    |     function getGoldTransaction(string _userId, uint _index) public constant returns(int) {
  > |          return stor.getGoldTransaction(_userId, _index);
    |     }
    |
  at /home/jiaming/mavs_srcs/contract@0x64b31f941a4c3a53aeb4b6e8bc97ca00d226cd2c.sol(456)

[33mWarning[0m for UnhandledException in contract 'StorageController':
    |
    |     function getUserHotGoldBalance(string _userId) public constant returns(uint) {
  > |          return stor.getUserHotGoldBalance(_userId);
    |     }
    |
  at /home/jiaming/mavs_srcs/contract@0x64b31f941a4c3a53aeb4b6e8bc97ca00d226cd2c.sol(460)

[33mWarning[0m for UnhandledException in contract 'StorageController':
    |     function addBuyTokensRequest(string _userId, string _requestHash) public returns(uint) {
    |          NewTokenBuyRequest(msg.sender, _userId); 
  > |          return stor.addBuyTokensRequest(msg.sender, _userId, _requestHash);
    |     }
    |
  at /home/jiaming/mavs_srcs/contract@0x64b31f941a4c3a53aeb4b6e8bc97ca00d226cd2c.sol(466)

[33mWarning[0m for UnhandledException in contract 'StorageController':
    |     function addSellTokensRequest(string _userId, string _requestHash) public returns(uint) {
    |          NewTokenSellRequest(msg.sender, _userId);
  > |		return stor.addSellTokensRequest(msg.sender, _userId, _requestHash);
    |     }
    |
  at /home/jiaming/mavs_srcs/contract@0x64b31f941a4c3a53aeb4b6e8bc97ca00d226cd2c.sol(471)

[33mWarning[0m for UnhandledException in contract 'StorageController':
    |
    |     function getRequestsCount() public constant returns(uint) {
  > |          return stor.getRequestsCount();
    |     }
    |
  at /home/jiaming/mavs_srcs/contract@0x64b31f941a4c3a53aeb4b6e8bc97ca00d226cd2c.sol(475)

[33mWarning[0m for UnhandledException in contract 'StorageController':
    |
    |     function getRequest(uint _index) public constant returns(address, string, string, bool, uint8) {
  > |          var (sender, userIdBytes, hashA, hashB, buy, state) = stor.getRequest(_index);
    |
    |          string memory userId = bytes32ToString(userIdBytes);
  at /home/jiaming/mavs_srcs/contract@0x64b31f941a4c3a53aeb4b6e8bc97ca00d226cd2c.sol(479)

[33mWarning[0m for UnhandledException in contract 'StorageController':
    |     function cancelRequest(uint _index) onlyCreator public {
    |          RequestCancelled(_index);
  > |          stor.cancelRequest(_index);
    |     }
    |     
  at /home/jiaming/mavs_srcs/contract@0x64b31f941a4c3a53aeb4b6e8bc97ca00d226cd2c.sol(489)

[33mWarning[0m for UnhandledException in contract 'StorageController':
    |          }
    |
  > |          uint userMntpBalance = mntpToken.balanceOf(_userAddress);
    |          uint fee = fiatFee.calculateBuyGoldFee(userMntpBalance, _amountCents);
    |          require(_amountCents > fee);  
  at /home/jiaming/mavs_srcs/contract@0x64b31f941a4c3a53aeb4b6e8bc97ca00d226cd2c.sol(519)

[33mWarning[0m for UnhandledException in contract 'StorageController':
    |
    |          uint userMntpBalance = mntpToken.balanceOf(_userAddress);
  > |          uint fee = fiatFee.calculateBuyGoldFee(userMntpBalance, _amountCents);
    |          require(_amountCents > fee);  
    |
  at /home/jiaming/mavs_srcs/contract@0x64b31f941a4c3a53aeb4b6e8bc97ca00d226cd2c.sol(520)

[33mWarning[0m for UnhandledException in contract 'StorageController':
    |          // positive for sell 
    |          if (fee > 0) {
  > |               string memory gmAccount = bytes32ToString(fiatFee.getGoldmintFeeAccount());
    |               addFiatTransaction(gmAccount, int(fee));
    |          }
  at /home/jiaming/mavs_srcs/contract@0x64b31f941a4c3a53aeb4b6e8bc97ca00d226cd2c.sol(546)

[33mWarning[0m for UnhandledException in contract 'StorageController':
    |     function processSellRequest(string _userId, address _userAddress, uint _amountCents, uint _centsPerGold) internal {
    |          uint tokens = (uint(_amountCents) * 1 ether) / _centsPerGold;
  > |          uint tokenBalance = goldToken.balanceOf(_userAddress);
    |
    |          if (isHotWallet(_userAddress)) {
  at /home/jiaming/mavs_srcs/contract@0x64b31f941a4c3a53aeb4b6e8bc97ca00d226cd2c.sol(553)

[33mWarning[0m for UnhandledException in contract 'StorageController':
    |
    |          // 2 - add fiat tx
  > |          uint userMntpBalance = mntpToken.balanceOf(_userAddress);
    |          uint fee = fiatFee.calculateSellGoldFee(userMntpBalance, _amountCents);
    |          require(_amountCents > fee);  
  at /home/jiaming/mavs_srcs/contract@0x64b31f941a4c3a53aeb4b6e8bc97ca00d226cd2c.sol(572)

[33mWarning[0m for UnhandledException in contract 'StorageController':
    |          // 2 - add fiat tx
    |          uint userMntpBalance = mntpToken.balanceOf(_userAddress);
  > |          uint fee = fiatFee.calculateSellGoldFee(userMntpBalance, _amountCents);
    |          require(_amountCents > fee);  
    |
  at /home/jiaming/mavs_srcs/contract@0x64b31f941a4c3a53aeb4b6e8bc97ca00d226cd2c.sol(573)

[33mWarning[0m for UnhandledException in contract 'StorageController':
    |          // 3 - send fee to Goldmint
    |          if (fee > 0) {
  > |               string memory gmAccount = bytes32ToString(fiatFee.getGoldmintFeeAccount());
    |               addFiatTransaction(gmAccount, int(fee));
    |          }
  at /home/jiaming/mavs_srcs/contract@0x64b31f941a4c3a53aeb4b6e8bc97ca00d226cd2c.sol(588)

[33mWarning[0m for UnhandledException in contract 'StorageController':
    |        require(balance >= _value);
    |
  > |        goldToken.burnTokens(getHotWalletAddress(), _value);
    |        goldToken.issueTokens(_to, _value);
    |
  at /home/jiaming/mavs_srcs/contract@0x64b31f941a4c3a53aeb4b6e8bc97ca00d226cd2c.sol(608)

[33mWarning[0m for UnhandledException in contract 'StorageController':
    |
    |        goldToken.burnTokens(getHotWalletAddress(), _value);
  > |        goldToken.issueTokens(_to, _value);
    |
    |        addGoldTransaction(_userId, -int(_value));
  at /home/jiaming/mavs_srcs/contract@0x64b31f941a4c3a53aeb4b6e8bc97ca00d226cd2c.sol(609)

[33mWarning[0m for UnhandledException in contract 'StorageController':
    |     function issueGoldTokens(address _userAddress, uint _tokenAmount) internal {
    |          require(0!=_tokenAmount);
  > |          goldToken.issueTokens(_userAddress, _tokenAmount);
    |     }
    |
  at /home/jiaming/mavs_srcs/contract@0x64b31f941a4c3a53aeb4b6e8bc97ca00d226cd2c.sol(617)

[33mWarning[0m for UnhandledException in contract 'StorageController':
    |     function burnGoldTokens(address _userAddress, uint _tokenAmount) internal {
    |          require(0!=_tokenAmount);
  > |          goldToken.burnTokens(_userAddress, _tokenAmount);
    |     }
    |
  at /home/jiaming/mavs_srcs/contract@0x64b31f941a4c3a53aeb4b6e8bc97ca00d226cd2c.sol(622)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StorageController':
    |     // Only old controller can call setControllerAddress
    |     function changeController(address _newController) public onlyCreator {
  > |          stor.setControllerAddress(_newController);
    |     }
    |
  at /home/jiaming/mavs_srcs/contract@0x64b31f941a4c3a53aeb4b6e8bc97ca00d226cd2c.sol(389)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StorageController':
    |
    |     function setHotWalletAddress(address _hotWalletAddress) public onlyCreator {
  > |         stor.setHotWalletAddress(_hotWalletAddress);
    |     }
    |
  at /home/jiaming/mavs_srcs/contract@0x64b31f941a4c3a53aeb4b6e8bc97ca00d226cd2c.sol(393)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StorageController':
    |
    |     function getHotWalletAddress() public constant returns (address) {
  > |          return stor.hotWalletAddress();
    |     }
    |
  at /home/jiaming/mavs_srcs/contract@0x64b31f941a4c3a53aeb4b6e8bc97ca00d226cd2c.sol(397)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StorageController':
    |     // 1
    |     function addDoc(string _ipfsDocLink) public onlyCreator returns(uint) {
  > |          return stor.addDoc(_ipfsDocLink);
    |     }
    |
  at /home/jiaming/mavs_srcs/contract@0x64b31f941a4c3a53aeb4b6e8bc97ca00d226cd2c.sol(406)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StorageController':
    |
    |     function getDocCount() public constant returns (uint) {
  > |          return stor.docCount(); 
    |     }
    |
  at /home/jiaming/mavs_srcs/contract@0x64b31f941a4c3a53aeb4b6e8bc97ca00d226cd2c.sol(410)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StorageController':
    |
    |     function getDoc(uint _index) public constant returns (string) {
  > |          var (x, y) = stor.getDocAsBytes64(_index);
    |          return bytes64ToString(x,y);
    |     }
  at /home/jiaming/mavs_srcs/contract@0x64b31f941a4c3a53aeb4b6e8bc97ca00d226cd2c.sol(414)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StorageController':
    |     // returns index in user array
    |     function addFiatTransaction(string _userId, int _amountCents) public onlyCreator returns(uint) {
  > |          return stor.addFiatTransaction(_userId, _amountCents);
    |     }
    |
  at /home/jiaming/mavs_srcs/contract@0x64b31f941a4c3a53aeb4b6e8bc97ca00d226cd2c.sol(422)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StorageController':
    |
    |     function getFiatTransactionsCount(string _userId) public constant returns (uint) {
  > |          return stor.getFiatTransactionsCount(_userId);
    |     }
    |     
  at /home/jiaming/mavs_srcs/contract@0x64b31f941a4c3a53aeb4b6e8bc97ca00d226cd2c.sol(426)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StorageController':
    |     
    |     function getAllFiatTransactionsCount() public constant returns (uint) {
  > |          return stor.getAllFiatTransactionsCount();
    |     }
    |
  at /home/jiaming/mavs_srcs/contract@0x64b31f941a4c3a53aeb4b6e8bc97ca00d226cd2c.sol(430)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StorageController':
    |
    |     function getFiatTransaction(string _userId, uint _index) public constant returns(int) {
  > |          return stor.getFiatTransaction(_userId, _index);
    |     }
    |
  at /home/jiaming/mavs_srcs/contract@0x64b31f941a4c3a53aeb4b6e8bc97ca00d226cd2c.sol(434)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StorageController':
    |
    |     function getUserFiatBalance(string _userId) public constant returns(uint) {
  > |          return stor.getUserFiatBalance(_userId);
    |     }
    |
  at /home/jiaming/mavs_srcs/contract@0x64b31f941a4c3a53aeb4b6e8bc97ca00d226cd2c.sol(438)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StorageController':
    |
    |     function addGoldTransaction(string _userId, int _amount) public onlyCreator returns(uint) {
  > |          return stor.addGoldTransaction(_userId, _amount);
    |     }
    |
  at /home/jiaming/mavs_srcs/contract@0x64b31f941a4c3a53aeb4b6e8bc97ca00d226cd2c.sol(444)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StorageController':
    |
    |     function getGoldTransactionsCount(string _userId) public constant returns (uint) {
  > |          return stor.getGoldTransactionsCount(_userId);
    |     }
    |     
  at /home/jiaming/mavs_srcs/contract@0x64b31f941a4c3a53aeb4b6e8bc97ca00d226cd2c.sol(448)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StorageController':
    |     
    |     function getAllGoldTransactionsCount() public constant returns (uint) {
  > |          return stor.getAllGoldTransactionsCount();
    |     }
    |
  at /home/jiaming/mavs_srcs/contract@0x64b31f941a4c3a53aeb4b6e8bc97ca00d226cd2c.sol(452)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StorageController':
    |
    |     function getGoldTransaction(string _userId, uint _index) public constant returns(int) {
  > |          return stor.getGoldTransaction(_userId, _index);
    |     }
    |
  at /home/jiaming/mavs_srcs/contract@0x64b31f941a4c3a53aeb4b6e8bc97ca00d226cd2c.sol(456)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StorageController':
    |
    |     function getUserHotGoldBalance(string _userId) public constant returns(uint) {
  > |          return stor.getUserHotGoldBalance(_userId);
    |     }
    |
  at /home/jiaming/mavs_srcs/contract@0x64b31f941a4c3a53aeb4b6e8bc97ca00d226cd2c.sol(460)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StorageController':
    |     function addBuyTokensRequest(string _userId, string _requestHash) public returns(uint) {
    |          NewTokenBuyRequest(msg.sender, _userId); 
  > |          return stor.addBuyTokensRequest(msg.sender, _userId, _requestHash);
    |     }
    |
  at /home/jiaming/mavs_srcs/contract@0x64b31f941a4c3a53aeb4b6e8bc97ca00d226cd2c.sol(466)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StorageController':
    |     function addSellTokensRequest(string _userId, string _requestHash) public returns(uint) {
    |          NewTokenSellRequest(msg.sender, _userId);
  > |		return stor.addSellTokensRequest(msg.sender, _userId, _requestHash);
    |     }
    |
  at /home/jiaming/mavs_srcs/contract@0x64b31f941a4c3a53aeb4b6e8bc97ca00d226cd2c.sol(471)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StorageController':
    |
    |     function getRequestsCount() public constant returns(uint) {
  > |          return stor.getRequestsCount();
    |     }
    |
  at /home/jiaming/mavs_srcs/contract@0x64b31f941a4c3a53aeb4b6e8bc97ca00d226cd2c.sol(475)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StorageController':
    |
    |     function getRequest(uint _index) public constant returns(address, string, string, bool, uint8) {
  > |          var (sender, userIdBytes, hashA, hashB, buy, state) = stor.getRequest(_index);
    |
    |          string memory userId = bytes32ToString(userIdBytes);
  at /home/jiaming/mavs_srcs/contract@0x64b31f941a4c3a53aeb4b6e8bc97ca00d226cd2c.sol(479)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StorageController':
    |     function cancelRequest(uint _index) onlyCreator public {
    |          RequestCancelled(_index);
  > |          stor.cancelRequest(_index);
    |     }
    |     
  at /home/jiaming/mavs_srcs/contract@0x64b31f941a4c3a53aeb4b6e8bc97ca00d226cd2c.sol(489)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StorageController':
    |          }
    |
  > |          uint userMntpBalance = mntpToken.balanceOf(_userAddress);
    |          uint fee = fiatFee.calculateBuyGoldFee(userMntpBalance, _amountCents);
    |          require(_amountCents > fee);  
  at /home/jiaming/mavs_srcs/contract@0x64b31f941a4c3a53aeb4b6e8bc97ca00d226cd2c.sol(519)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StorageController':
    |
    |          uint userMntpBalance = mntpToken.balanceOf(_userAddress);
  > |          uint fee = fiatFee.calculateBuyGoldFee(userMntpBalance, _amountCents);
    |          require(_amountCents > fee);  
    |
  at /home/jiaming/mavs_srcs/contract@0x64b31f941a4c3a53aeb4b6e8bc97ca00d226cd2c.sol(520)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StorageController':
    |          // positive for sell 
    |          if (fee > 0) {
  > |               string memory gmAccount = bytes32ToString(fiatFee.getGoldmintFeeAccount());
    |               addFiatTransaction(gmAccount, int(fee));
    |          }
  at /home/jiaming/mavs_srcs/contract@0x64b31f941a4c3a53aeb4b6e8bc97ca00d226cd2c.sol(546)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StorageController':
    |     function processSellRequest(string _userId, address _userAddress, uint _amountCents, uint _centsPerGold) internal {
    |          uint tokens = (uint(_amountCents) * 1 ether) / _centsPerGold;
  > |          uint tokenBalance = goldToken.balanceOf(_userAddress);
    |
    |          if (isHotWallet(_userAddress)) {
  at /home/jiaming/mavs_srcs/contract@0x64b31f941a4c3a53aeb4b6e8bc97ca00d226cd2c.sol(553)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StorageController':
    |
    |          // 2 - add fiat tx
  > |          uint userMntpBalance = mntpToken.balanceOf(_userAddress);
    |          uint fee = fiatFee.calculateSellGoldFee(userMntpBalance, _amountCents);
    |          require(_amountCents > fee);  
  at /home/jiaming/mavs_srcs/contract@0x64b31f941a4c3a53aeb4b6e8bc97ca00d226cd2c.sol(572)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StorageController':
    |          // 2 - add fiat tx
    |          uint userMntpBalance = mntpToken.balanceOf(_userAddress);
  > |          uint fee = fiatFee.calculateSellGoldFee(userMntpBalance, _amountCents);
    |          require(_amountCents > fee);  
    |
  at /home/jiaming/mavs_srcs/contract@0x64b31f941a4c3a53aeb4b6e8bc97ca00d226cd2c.sol(573)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StorageController':
    |          // 3 - send fee to Goldmint
    |          if (fee > 0) {
  > |               string memory gmAccount = bytes32ToString(fiatFee.getGoldmintFeeAccount());
    |               addFiatTransaction(gmAccount, int(fee));
    |          }
  at /home/jiaming/mavs_srcs/contract@0x64b31f941a4c3a53aeb4b6e8bc97ca00d226cd2c.sol(588)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StorageController':
    |        require(balance >= _value);
    |
  > |        goldToken.burnTokens(getHotWalletAddress(), _value);
    |        goldToken.issueTokens(_to, _value);
    |
  at /home/jiaming/mavs_srcs/contract@0x64b31f941a4c3a53aeb4b6e8bc97ca00d226cd2c.sol(608)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StorageController':
    |
    |        goldToken.burnTokens(getHotWalletAddress(), _value);
  > |        goldToken.issueTokens(_to, _value);
    |
    |        addGoldTransaction(_userId, -int(_value));
  at /home/jiaming/mavs_srcs/contract@0x64b31f941a4c3a53aeb4b6e8bc97ca00d226cd2c.sol(609)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StorageController':
    |     function issueGoldTokens(address _userAddress, uint _tokenAmount) internal {
    |          require(0!=_tokenAmount);
  > |          goldToken.issueTokens(_userAddress, _tokenAmount);
    |     }
    |
  at /home/jiaming/mavs_srcs/contract@0x64b31f941a4c3a53aeb4b6e8bc97ca00d226cd2c.sol(617)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StorageController':
    |     function burnGoldTokens(address _userAddress, uint _tokenAmount) internal {
    |          require(0!=_tokenAmount);
  > |          goldToken.burnTokens(_userAddress, _tokenAmount);
    |     }
    |
  at /home/jiaming/mavs_srcs/contract@0x64b31f941a4c3a53aeb4b6e8bc97ca00d226cd2c.sol(622)

[33mWarning[0m for UnrestrictedWrite in contract 'StorageController':
    |
    |     function changeCreator(address _to) public onlyCreator {
  > |          creator = _to;
    |     }
    |}
  at /home/jiaming/mavs_srcs/contract@0x64b31f941a4c3a53aeb4b6e8bc97ca00d226cd2c.sol(37)

[33mWarning[0m for UnrestrictedWrite in contract 'StorageController':
    |
    |     function changeFiatFeeContract(address _newFiatFee) public onlyCreator {
  > |          fiatFee = IGoldFiatFee(_newFiatFee);
    |     }
    |
  at /home/jiaming/mavs_srcs/contract@0x64b31f941a4c3a53aeb4b6e8bc97ca00d226cd2c.sol(401)

[33mWarning[0m for LockedEther in contract 'StringMover':
    |}
    |
  > |contract StringMover {
    |     function stringToBytes32(string s) constant returns(bytes32){
    |          bytes32 out;
  at /home/jiaming/mavs_srcs/contract@0x64b31f941a4c3a53aeb4b6e8bc97ca00d226cd2c.sol(41)


