Processing contract: /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol:CreatorEnabled
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol:GoldIssueBurnFee
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol:IGold
Processing contract: /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol:IGoldIssueBurnFee
Processing contract: /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol:IMNTP
Processing contract: /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol:Storage
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol:StorageController
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol:StringMover
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'CreatorEnabled':
    |}
    |
  > |contract CreatorEnabled {
    |
    |    address public creator = 0x0;
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(52)

[31mViolation[0m for MissingInputValidation in contract 'CreatorEnabled':
    |    modifier onlyCreator() { require(msg.sender == creator); _; }
    |
  > |    function changeCreator(address _to) public onlyCreator {
    |        creator = _to;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(58)

[33mWarning[0m for MissingInputValidation in contract 'CreatorEnabled':
    |contract CreatorEnabled {
    |
  > |    address public creator = 0x0;
    |
    |    modifier onlyCreator() { require(msg.sender == creator); _; }
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(54)

[33mWarning[0m for UnrestrictedWrite in contract 'CreatorEnabled':
    |
    |    function changeCreator(address _to) public onlyCreator {
  > |        creator = _to;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(59)

[31mViolation[0m for LockedEther in contract 'GoldIssueBurnFee':
    |}
    |
  > |contract GoldIssueBurnFee is CreatorEnabled, StringMover {
    |
    |    string gmUserId = "";
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(348)

[31mViolation[0m for UnrestrictedWrite in contract 'GoldIssueBurnFee':
    |}
    |
  > |contract GoldIssueBurnFee is CreatorEnabled, StringMover {
    |
    |    string gmUserId = "";
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(348)

[33mWarning[0m for UnrestrictedWrite in contract 'GoldIssueBurnFee':
    |
    |    function changeCreator(address _to) public onlyCreator {
  > |        creator = _to;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(59)

[33mWarning[0m for UnrestrictedWrite in contract 'GoldIssueBurnFee':
    |}
    |
  > |contract GoldIssueBurnFee is CreatorEnabled, StringMover {
    |
    |    string gmUserId = "";
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(348)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |}
    |
  > |contract SafeMath {
    |
    |    function safeAdd(uint a, uint b) internal returns (uint) {
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(21)

[33mWarning[0m for LockedEther in contract 'Storage':
    |
    |
  > |contract Storage is SafeMath, StringMover {
    |
    |    function Storage() public {
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(129)

[31mViolation[0m for UnrestrictedWrite in contract 'Storage':
    |
    |
  > |contract Storage is SafeMath, StringMover {
    |
    |    function Storage() public {
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(129)

[31mViolation[0m for UnrestrictedWrite in contract 'Storage':
    |        docs[docCount] = _ipfsDocLink;
    |        uint out = docCount;
  > |        docCount++;
    |
    |        return out;
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(186)

[31mViolation[0m for UnrestrictedWrite in contract 'Storage':
    |        uint c = fiatTxCounts[_userId];
    |
  > |        fiatTxs[_userId][c] = _amountCents;
    |
    |        if (_amountCents > 0) {
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(205)

[31mViolation[0m for UnrestrictedWrite in contract 'Storage':
    |
    |        if (_amountCents > 0) {
  > |            fiatBalancesCents[_userId] = safeAdd(fiatBalancesCents[_userId], uint(_amountCents));
    |        } else {
    |            fiatBalancesCents[_userId] = safeSub(fiatBalancesCents[_userId], uint(-_amountCents));
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(208)

[31mViolation[0m for UnrestrictedWrite in contract 'Storage':
    |            fiatBalancesCents[_userId] = safeAdd(fiatBalancesCents[_userId], uint(_amountCents));
    |        } else {
  > |            fiatBalancesCents[_userId] = safeSub(fiatBalancesCents[_userId], uint(-_amountCents));
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(210)

[31mViolation[0m for UnrestrictedWrite in contract 'Storage':
    |        }
    |
  > |        fiatTxCounts[_userId] = safeAdd(fiatTxCounts[_userId], 1);
    |
    |        fiatTxTotal++;
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(213)

[31mViolation[0m for UnrestrictedWrite in contract 'Storage':
    |        fiatTxCounts[_userId] = safeAdd(fiatTxCounts[_userId], 1);
    |
  > |        fiatTxTotal++;
    |        return c;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(215)

[31mViolation[0m for UnrestrictedWrite in contract 'Storage':
    |        uint c = goldTxCounts[_userId];
    |
  > |        goldTxs[_userId][c] = _amount;
    |
    |        if (_amount > 0) {
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(241)

[31mViolation[0m for UnrestrictedWrite in contract 'Storage':
    |
    |        if (_amount > 0) {
  > |            goldHotBalances[_userId] = safeAdd(goldHotBalances[_userId], uint(_amount));
    |        } else {
    |            goldHotBalances[_userId] = safeSub(goldHotBalances[_userId], uint(-_amount));
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(244)

[31mViolation[0m for UnrestrictedWrite in contract 'Storage':
    |            goldHotBalances[_userId] = safeAdd(goldHotBalances[_userId], uint(_amount));
    |        } else {
  > |            goldHotBalances[_userId] = safeSub(goldHotBalances[_userId], uint(-_amount));
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(246)

[31mViolation[0m for UnrestrictedWrite in contract 'Storage':
    |        }
    |
  > |        goldTxCounts[_userId] = safeAdd(goldTxCounts[_userId], 1);
    |
    |        goldTxTotal++;
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(249)

[31mViolation[0m for UnrestrictedWrite in contract 'Storage':
    |        goldTxCounts[_userId] = safeAdd(goldTxCounts[_userId], 1);
    |
  > |        goldTxTotal++;
    |        return c;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(251)

[31mViolation[0m for UnrestrictedWrite in contract 'Storage':
    |        requests[requestsCount] = r;
    |        uint out = requestsCount;
  > |        requestsCount++;
    |        return out;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(284)

[31mViolation[0m for UnrestrictedWrite in contract 'Storage':
    |        requests[requestsCount] = r;
    |        uint out = requestsCount;
  > |        requestsCount++;
    |        return out;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(299)

[33mWarning[0m for UnrestrictedWrite in contract 'Storage':
    |
    |
  > |contract Storage is SafeMath, StringMover {
    |
    |    function Storage() public {
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(129)

[33mWarning[0m for UnrestrictedWrite in contract 'Storage':
    |
    |    function setControllerAddress(address _newController) public onlyController {
  > |        controllerAddress = _newController;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(139)

[33mWarning[0m for UnrestrictedWrite in contract 'Storage':
    |
    |    function setHotWalletAddress(address _address) public onlyController {
  > |       hotWalletAddress = _address;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(145)

[33mWarning[0m for UnrestrictedWrite in contract 'Storage':
    |        r.state = 0;
    |
  > |        requests[requestsCount] = r;
    |        uint out = requestsCount;
    |        requestsCount++;
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(282)

[33mWarning[0m for UnrestrictedWrite in contract 'Storage':
    |        r.state = 0;
    |
  > |        requests[requestsCount] = r;
    |        uint out = requestsCount;
    |        requestsCount++;
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(297)

[33mWarning[0m for UnrestrictedWrite in contract 'Storage':
    |        require(0==requests[_index].state);
    |
  > |        requests[_index].state = 2;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(329)

[33mWarning[0m for UnrestrictedWrite in contract 'Storage':
    |        require(0==requests[_index].state);
    |
  > |        requests[_index].state = 3;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(336)

[33mWarning[0m for UnrestrictedWrite in contract 'Storage':
    |        require(0==requests[_index].state);
    |
  > |        requests[_index].state = 1;
    |        requests[_index].outputAmount = _outputAmount;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(343)

[33mWarning[0m for UnrestrictedWrite in contract 'Storage':
    |
    |        requests[_index].state = 1;
  > |        requests[_index].outputAmount = _outputAmount;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(344)

[33mWarning[0m for DAOConstantGas in contract 'StorageController':
    |        }
    |
  > |        _userAddress.transfer(amountWeiMinusFee);
    |
    |        return (true, amountWeiMinusFee);
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(719)

[33mWarning[0m for DAOConstantGas in contract 'StorageController':
    |        if (this.balance < _value) _value = this.balance;
    |
  > |        _userAddress.transfer(_value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(753)

[33mWarning[0m for LockedEther in contract 'StorageController':
    |}
    |
  > |contract StorageController is SafeMath, CreatorEnabled, StringMover {
    |
    |    Storage public stor;
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(405)

[33mWarning[0m for TODAmount in contract 'StorageController':
    |        }
    |
  > |        _userAddress.transfer(amountWeiMinusFee);
    |
    |        return (true, amountWeiMinusFee);
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(719)

[33mWarning[0m for TODAmount in contract 'StorageController':
    |        if (this.balance < _value) _value = this.balance;
    |
  > |        _userAddress.transfer(_value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(753)

[33mWarning[0m for TODReceiver in contract 'StorageController':
    |        if (this.balance < _value) _value = this.balance;
    |
  > |        _userAddress.transfer(_value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(753)

[33mWarning[0m for UnhandledException in contract 'StorageController':
    |    // Only old controller can call setControllerAddress
    |    function changeController(address _newController) public onlyCreator {
  > |        stor.setControllerAddress(_newController);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(447)

[33mWarning[0m for UnhandledException in contract 'StorageController':
    |
    |    function setHotWalletAddress(address _hotWalletAddress) public onlyCreator {
  > |       stor.setHotWalletAddress(_hotWalletAddress);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(451)

[33mWarning[0m for UnhandledException in contract 'StorageController':
    |
    |    function getHotWalletAddress() public constant returns (address) {
  > |        return stor.hotWalletAddress();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(455)

[33mWarning[0m for UnhandledException in contract 'StorageController':
    |
    |    function addDoc(string _ipfsDocLink) public onlyManagerOrCreator returns(uint) {
  > |        return stor.addDoc(_ipfsDocLink);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(463)

[33mWarning[0m for UnhandledException in contract 'StorageController':
    |
    |    function getDocCount() public constant returns (uint) {
  > |        return stor.getDocCount();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(467)

[33mWarning[0m for UnhandledException in contract 'StorageController':
    |        bytes32 x;
    |        bytes32 y;
  > |        (x, y) = stor.getDocAsBytes64(_index);
    |        return bytes64ToString(x,y);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(473)

[33mWarning[0m for UnhandledException in contract 'StorageController':
    |
    |    function addGoldTransaction(string _userId, int _amount) public onlyManagerOrCreator returns(uint) {
  > |        return stor.addGoldTransaction(_userId, _amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(479)

[33mWarning[0m for UnhandledException in contract 'StorageController':
    |
    |    function getGoldTransactionsCount(string _userId) public constant returns (uint) {
  > |        return stor.getGoldTransactionsCount(_userId);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(483)

[33mWarning[0m for UnhandledException in contract 'StorageController':
    |
    |    function getAllGoldTransactionsCount() public constant returns (uint) {
  > |        return stor.getAllGoldTransactionsCount();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(487)

[33mWarning[0m for UnhandledException in contract 'StorageController':
    |        require(keccak256(_userId) != keccak256(""));
    |
  > |        return stor.getGoldTransaction(_userId, _index);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(493)

[33mWarning[0m for UnhandledException in contract 'StorageController':
    |        require(keccak256(_userId) != keccak256(""));
    |
  > |        return stor.getUserHotGoldBalance(_userId);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(499)

[33mWarning[0m for UnhandledException in contract 'StorageController':
    |        require(msg.value > 0);
    |
  > |        uint reqIndex = stor.addBuyTokensRequest(msg.sender, _userId, _reference, msg.value);
    |
    |        TokenBuyRequest(msg.sender, _userId, _reference, msg.value, reqIndex);
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(506)

[33mWarning[0m for UnhandledException in contract 'StorageController':
    |        require(_amount > 0);
    |
  > |        uint tokenBalance = goldToken.balanceOf(msg.sender);
    |
    |        require(tokenBalance >= _amount);
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(517)

[33mWarning[0m for UnhandledException in contract 'StorageController':
    |        burnGoldTokens(msg.sender, _amount);
    |
  > |        uint reqIndex = stor.addSellTokensRequest(msg.sender, _userId, _reference, _amount);
    |
    |        TokenSellRequest(msg.sender, _userId, _reference, _amount, reqIndex);
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(523)

[33mWarning[0m for UnhandledException in contract 'StorageController':
    |
    |    function getRequestsCount() public constant returns(uint) {
  > |        return stor.getRequestsCount();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(531)

[33mWarning[0m for UnhandledException in contract 'StorageController':
    |        uint inputAmount;
    |
  > |        (sender, userIdBytes, reference, buy, state, inputAmount) = stor.getRequest(_index);
    |
    |        string memory userId = bytes32ToString(userIdBytes);
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(542)

[33mWarning[0m for UnhandledException in contract 'StorageController':
    |    
    |    function getRequestBaseInfo(uint _index) public constant returns(address, uint8, uint, uint) {
  > |        return stor.getRequestBaseInfo(_index);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(550)

[33mWarning[0m for UnhandledException in contract 'StorageController':
    |    function processBuyRequestFiat(string _userId, uint _reference, address _userAddress, uint _amountCents, uint _centsPerGold) onlyManagerOrCreator public returns(bool) {
    |      
  > |      uint reqIndex = stor.addBuyTokensRequest(_userAddress, _userId, _reference, _amountCents);
    |
    |      bool processResult = false;
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(610)

[33mWarning[0m for UnhandledException in contract 'StorageController':
    |
    |      if (processResult) {
  > |        stor.setRequestProcessed(reqIndex, outputAmount);
    |        RequestProcessed(reqIndex);
    |      } else {
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(618)

[33mWarning[0m for UnhandledException in contract 'StorageController':
    |        RequestProcessed(reqIndex);
    |      } else {
  > |        stor.setRequestFailed(reqIndex);
    |        RequestFailed(reqIndex);
    |      }
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(621)

[33mWarning[0m for UnhandledException in contract 'StorageController':
    |        
    |        // fee
  > |        uint userMntpBalance = mntpToken.balanceOf(sender);
    |        uint fee = goldIssueBurnFee.calculateBurnGoldFee(userMntpBalance, inputAmount, true);
    |
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(642)

[33mWarning[0m for UnhandledException in contract 'StorageController':
    |        // fee
    |        uint userMntpBalance = mntpToken.balanceOf(sender);
  > |        uint fee = goldIssueBurnFee.calculateBurnGoldFee(userMntpBalance, inputAmount, true);
    |
    |        require(inputAmount > fee);
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(643)

[33mWarning[0m for UnhandledException in contract 'StorageController':
    |        uint resultAmount = inputAmount * _centsPerGold / 1 ether;
    |        
  > |        stor.setRequestProcessed(_index, resultAmount);
    |        RequestProcessed(_index);
    |        
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(655)

[33mWarning[0m for UnhandledException in contract 'StorageController':
    |        require(keccak256(_userId) != keccak256(""));
    |
  > |        uint userMntpBalance = mntpToken.balanceOf(_userAddress);
    |        uint fee = goldIssueBurnFee.calculateIssueGoldFee(userMntpBalance, _amountWei, _isFiat);
    |        require(_amountWei > fee);
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(664)

[33mWarning[0m for UnhandledException in contract 'StorageController':
    |
    |        uint userMntpBalance = mntpToken.balanceOf(_userAddress);
  > |        uint fee = goldIssueBurnFee.calculateIssueGoldFee(userMntpBalance, _amountWei, _isFiat);
    |        require(_amountWei > fee);
    |
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(665)

[33mWarning[0m for UnhandledException in contract 'StorageController':
    |
    |        // fee
  > |        uint userMntpBalance = mntpToken.balanceOf(_userAddress);
    |        uint fee = goldIssueBurnFee.calculateBurnGoldFee(userMntpBalance, amountWei, _isFiat);
    |
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(701)

[33mWarning[0m for UnhandledException in contract 'StorageController':
    |        // fee
    |        uint userMntpBalance = mntpToken.balanceOf(_userAddress);
  > |        uint fee = goldIssueBurnFee.calculateBurnGoldFee(userMntpBalance, amountWei, _isFiat);
    |
    |        require(amountWei > fee);
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(702)

[33mWarning[0m for UnhandledException in contract 'StorageController':
    |        }
    |
  > |        _userAddress.transfer(amountWeiMinusFee);
    |
    |        return (true, amountWeiMinusFee);
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(719)

[33mWarning[0m for UnhandledException in contract 'StorageController':
    |      require(balance >= _value);
    |
  > |      goldToken.burnTokens(getHotWalletAddress(), _value);
    |      goldToken.issueTokens(_to, _value);
    |
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(741)

[33mWarning[0m for UnhandledException in contract 'StorageController':
    |
    |      goldToken.burnTokens(getHotWalletAddress(), _value);
  > |      goldToken.issueTokens(_to, _value);
    |
    |      addGoldTransaction(_userId, -int(_value));
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(742)

[33mWarning[0m for UnhandledException in contract 'StorageController':
    |        if (this.balance < _value) _value = this.balance;
    |
  > |        _userAddress.transfer(_value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(753)

[33mWarning[0m for UnhandledException in contract 'StorageController':
    |    function issueGoldTokens(address _userAddress, uint _tokenAmount) internal {
    |        require(0!=_tokenAmount);
  > |        goldToken.issueTokens(_userAddress, _tokenAmount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(765)

[33mWarning[0m for UnhandledException in contract 'StorageController':
    |    function burnGoldTokens(address _userAddress, uint _tokenAmount) internal {
    |        require(0!=_tokenAmount);
  > |        goldToken.burnTokens(_userAddress, _tokenAmount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(770)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StorageController':
    |    // Only old controller can call setControllerAddress
    |    function changeController(address _newController) public onlyCreator {
  > |        stor.setControllerAddress(_newController);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(447)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StorageController':
    |
    |    function setHotWalletAddress(address _hotWalletAddress) public onlyCreator {
  > |       stor.setHotWalletAddress(_hotWalletAddress);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(451)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StorageController':
    |
    |    function getHotWalletAddress() public constant returns (address) {
  > |        return stor.hotWalletAddress();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(455)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StorageController':
    |
    |    function addDoc(string _ipfsDocLink) public onlyManagerOrCreator returns(uint) {
  > |        return stor.addDoc(_ipfsDocLink);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(463)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StorageController':
    |
    |    function getDocCount() public constant returns (uint) {
  > |        return stor.getDocCount();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(467)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StorageController':
    |        bytes32 x;
    |        bytes32 y;
  > |        (x, y) = stor.getDocAsBytes64(_index);
    |        return bytes64ToString(x,y);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(473)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StorageController':
    |
    |    function addGoldTransaction(string _userId, int _amount) public onlyManagerOrCreator returns(uint) {
  > |        return stor.addGoldTransaction(_userId, _amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(479)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StorageController':
    |
    |    function getGoldTransactionsCount(string _userId) public constant returns (uint) {
  > |        return stor.getGoldTransactionsCount(_userId);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(483)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StorageController':
    |
    |    function getAllGoldTransactionsCount() public constant returns (uint) {
  > |        return stor.getAllGoldTransactionsCount();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(487)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StorageController':
    |        require(keccak256(_userId) != keccak256(""));
    |
  > |        return stor.getGoldTransaction(_userId, _index);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(493)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StorageController':
    |        require(keccak256(_userId) != keccak256(""));
    |
  > |        return stor.getUserHotGoldBalance(_userId);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(499)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StorageController':
    |        require(msg.value > 0);
    |
  > |        uint reqIndex = stor.addBuyTokensRequest(msg.sender, _userId, _reference, msg.value);
    |
    |        TokenBuyRequest(msg.sender, _userId, _reference, msg.value, reqIndex);
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(506)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StorageController':
    |        require(_amount > 0);
    |
  > |        uint tokenBalance = goldToken.balanceOf(msg.sender);
    |
    |        require(tokenBalance >= _amount);
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(517)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StorageController':
    |        burnGoldTokens(msg.sender, _amount);
    |
  > |        uint reqIndex = stor.addSellTokensRequest(msg.sender, _userId, _reference, _amount);
    |
    |        TokenSellRequest(msg.sender, _userId, _reference, _amount, reqIndex);
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(523)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StorageController':
    |
    |    function getRequestsCount() public constant returns(uint) {
  > |        return stor.getRequestsCount();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(531)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StorageController':
    |        uint inputAmount;
    |
  > |        (sender, userIdBytes, reference, buy, state, inputAmount) = stor.getRequest(_index);
    |
    |        string memory userId = bytes32ToString(userIdBytes);
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(542)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StorageController':
    |    
    |    function getRequestBaseInfo(uint _index) public constant returns(address, uint8, uint, uint) {
  > |        return stor.getRequestBaseInfo(_index);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(550)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StorageController':
    |    function processBuyRequestFiat(string _userId, uint _reference, address _userAddress, uint _amountCents, uint _centsPerGold) onlyManagerOrCreator public returns(bool) {
    |      
  > |      uint reqIndex = stor.addBuyTokensRequest(_userAddress, _userId, _reference, _amountCents);
    |
    |      bool processResult = false;
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(610)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StorageController':
    |
    |      if (processResult) {
  > |        stor.setRequestProcessed(reqIndex, outputAmount);
    |        RequestProcessed(reqIndex);
    |      } else {
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(618)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StorageController':
    |        RequestProcessed(reqIndex);
    |      } else {
  > |        stor.setRequestFailed(reqIndex);
    |        RequestFailed(reqIndex);
    |      }
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(621)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StorageController':
    |        
    |        // fee
  > |        uint userMntpBalance = mntpToken.balanceOf(sender);
    |        uint fee = goldIssueBurnFee.calculateBurnGoldFee(userMntpBalance, inputAmount, true);
    |
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(642)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StorageController':
    |        // fee
    |        uint userMntpBalance = mntpToken.balanceOf(sender);
  > |        uint fee = goldIssueBurnFee.calculateBurnGoldFee(userMntpBalance, inputAmount, true);
    |
    |        require(inputAmount > fee);
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(643)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StorageController':
    |        uint resultAmount = inputAmount * _centsPerGold / 1 ether;
    |        
  > |        stor.setRequestProcessed(_index, resultAmount);
    |        RequestProcessed(_index);
    |        
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(655)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StorageController':
    |        require(keccak256(_userId) != keccak256(""));
    |
  > |        uint userMntpBalance = mntpToken.balanceOf(_userAddress);
    |        uint fee = goldIssueBurnFee.calculateIssueGoldFee(userMntpBalance, _amountWei, _isFiat);
    |        require(_amountWei > fee);
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(664)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StorageController':
    |
    |        uint userMntpBalance = mntpToken.balanceOf(_userAddress);
  > |        uint fee = goldIssueBurnFee.calculateIssueGoldFee(userMntpBalance, _amountWei, _isFiat);
    |        require(_amountWei > fee);
    |
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(665)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StorageController':
    |
    |        // fee
  > |        uint userMntpBalance = mntpToken.balanceOf(_userAddress);
    |        uint fee = goldIssueBurnFee.calculateBurnGoldFee(userMntpBalance, amountWei, _isFiat);
    |
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(701)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StorageController':
    |        // fee
    |        uint userMntpBalance = mntpToken.balanceOf(_userAddress);
  > |        uint fee = goldIssueBurnFee.calculateBurnGoldFee(userMntpBalance, amountWei, _isFiat);
    |
    |        require(amountWei > fee);
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(702)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StorageController':
    |        }
    |
  > |        _userAddress.transfer(amountWeiMinusFee);
    |
    |        return (true, amountWeiMinusFee);
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(719)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StorageController':
    |      require(balance >= _value);
    |
  > |      goldToken.burnTokens(getHotWalletAddress(), _value);
    |      goldToken.issueTokens(_to, _value);
    |
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(741)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StorageController':
    |
    |      goldToken.burnTokens(getHotWalletAddress(), _value);
  > |      goldToken.issueTokens(_to, _value);
    |
    |      addGoldTransaction(_userId, -int(_value));
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(742)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StorageController':
    |        if (this.balance < _value) _value = this.balance;
    |
  > |        _userAddress.transfer(_value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(753)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StorageController':
    |    function issueGoldTokens(address _userAddress, uint _tokenAmount) internal {
    |        require(0!=_tokenAmount);
  > |        goldToken.issueTokens(_userAddress, _tokenAmount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(765)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StorageController':
    |    function burnGoldTokens(address _userAddress, uint _tokenAmount) internal {
    |        require(0!=_tokenAmount);
  > |        goldToken.burnTokens(_userAddress, _tokenAmount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(770)

[33mWarning[0m for UnrestrictedWrite in contract 'StorageController':
    |
    |    function changeCreator(address _to) public onlyCreator {
  > |        creator = _to;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(59)

[33mWarning[0m for UnrestrictedWrite in contract 'StorageController':
    |
    |    function setManagerAddress(address _address) public onlyCreator {
  > |       managerAddress = _address;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(442)

[33mWarning[0m for UnrestrictedWrite in contract 'StorageController':
    |
    |    function changeGoldIssueBurnFeeContract(address _goldIssueBurnFeeAddress) public onlyCreator {
  > |        goldIssueBurnFee = IGoldIssueBurnFee(_goldIssueBurnFeeAddress);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(459)

[33mWarning[0m for LockedEther in contract 'StringMover':
    |}
    |
  > |contract StringMover {
    |
    |    function stringToBytes32(string s) public constant returns(bytes32){
  at /home/jiaming/mavs_srcs/contract@0x72c17126e2ff24b5d76a75ed4b3f031c70b05eac.sol(63)


