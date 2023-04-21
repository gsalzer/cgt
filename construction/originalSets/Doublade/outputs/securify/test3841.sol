Processing contract: /home/jiaming/mavs_srcs/contract@0xfd2acc637fc9b2311401277c110c823c23f4ae5a.sol:FundCenter
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xfd2acc637fc9b2311401277c110c823c23f4ae5a.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for DAOConstantGas in contract 'FundCenter':
    |    function withdrawBalanceFromServer(address _to, uint _amount, bytes _txHash) public onlyCOO onlyEnable {
    |        require(address(this).balance >= _amount, "Insufficient balance.");
  > |        _to.transfer(_amount);
    |        withdraws[_to] = withdraws[_to].add(_amount); // record withdraw amount 
    |        emit BalanceWithdraw(_to, _amount, _txHash, uint64(now));
  at /home/jiaming/mavs_srcs/contract@0xfd2acc637fc9b2311401277c110c823c23f4ae5a.sol(159)

[33mWarning[0m for DAOConstantGas in contract 'FundCenter':
    |    function withdrawBalanceFromAdmin(uint _amount) public onlyCOO {
    |        require(address(this).balance >= _amount, "Insufficient balance.");
  > |        CEO.transfer(_amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xfd2acc637fc9b2311401277c110c823c23f4ae5a.sol(167)

[33mWarning[0m for LockedEther in contract 'FundCenter':
    |// we use a private chain to maintain users' balance book. 
    |// All user's spending and earning records are kept in the private chain. 
  > |contract FundCenter {
    |    using SafeMath for *;
    |
  at /home/jiaming/mavs_srcs/contract@0xfd2acc637fc9b2311401277c110c823c23f4ae5a.sol(104)

[33mWarning[0m for TODAmount in contract 'FundCenter':
    |    function withdrawBalanceFromServer(address _to, uint _amount, bytes _txHash) public onlyCOO onlyEnable {
    |        require(address(this).balance >= _amount, "Insufficient balance.");
  > |        _to.transfer(_amount);
    |        withdraws[_to] = withdraws[_to].add(_amount); // record withdraw amount 
    |        emit BalanceWithdraw(_to, _amount, _txHash, uint64(now));
  at /home/jiaming/mavs_srcs/contract@0xfd2acc637fc9b2311401277c110c823c23f4ae5a.sol(159)

[33mWarning[0m for TODAmount in contract 'FundCenter':
    |    function withdrawBalanceFromAdmin(uint _amount) public onlyCOO {
    |        require(address(this).balance >= _amount, "Insufficient balance.");
  > |        CEO.transfer(_amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xfd2acc637fc9b2311401277c110c823c23f4ae5a.sol(167)

[31mViolation[0m for TODReceiver in contract 'FundCenter':
    |    function withdrawBalanceFromAdmin(uint _amount) public onlyCOO {
    |        require(address(this).balance >= _amount, "Insufficient balance.");
  > |        CEO.transfer(_amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xfd2acc637fc9b2311401277c110c823c23f4ae5a.sol(167)

[33mWarning[0m for TODReceiver in contract 'FundCenter':
    |    function withdrawBalanceFromServer(address _to, uint _amount, bytes _txHash) public onlyCOO onlyEnable {
    |        require(address(this).balance >= _amount, "Insufficient balance.");
  > |        _to.transfer(_amount);
    |        withdraws[_to] = withdraws[_to].add(_amount); // record withdraw amount 
    |        emit BalanceWithdraw(_to, _amount, _txHash, uint64(now));
  at /home/jiaming/mavs_srcs/contract@0xfd2acc637fc9b2311401277c110c823c23f4ae5a.sol(159)

[33mWarning[0m for UnhandledException in contract 'FundCenter':
    |    function withdrawBalanceFromServer(address _to, uint _amount, bytes _txHash) public onlyCOO onlyEnable {
    |        require(address(this).balance >= _amount, "Insufficient balance.");
  > |        _to.transfer(_amount);
    |        withdraws[_to] = withdraws[_to].add(_amount); // record withdraw amount 
    |        emit BalanceWithdraw(_to, _amount, _txHash, uint64(now));
  at /home/jiaming/mavs_srcs/contract@0xfd2acc637fc9b2311401277c110c823c23f4ae5a.sol(159)

[33mWarning[0m for UnhandledException in contract 'FundCenter':
    |    function withdrawBalanceFromAdmin(uint _amount) public onlyCOO {
    |        require(address(this).balance >= _amount, "Insufficient balance.");
  > |        CEO.transfer(_amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xfd2acc637fc9b2311401277c110c823c23f4ae5a.sol(167)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FundCenter':
    |    function withdrawBalanceFromServer(address _to, uint _amount, bytes _txHash) public onlyCOO onlyEnable {
    |        require(address(this).balance >= _amount, "Insufficient balance.");
  > |        _to.transfer(_amount);
    |        withdraws[_to] = withdraws[_to].add(_amount); // record withdraw amount 
    |        emit BalanceWithdraw(_to, _amount, _txHash, uint64(now));
  at /home/jiaming/mavs_srcs/contract@0xfd2acc637fc9b2311401277c110c823c23f4ae5a.sol(159)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FundCenter':
    |    function withdrawBalanceFromAdmin(uint _amount) public onlyCOO {
    |        require(address(this).balance >= _amount, "Insufficient balance.");
  > |        CEO.transfer(_amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xfd2acc637fc9b2311401277c110c823c23f4ae5a.sol(167)

[33mWarning[0m for UnrestrictedWrite in contract 'FundCenter':
    |    function recharge() public payable onlyEnable {
    |        require(msg.value >= lowestRecharge, "The minimum recharge amount does not meet the requirements.");
  > |        recharges[msg.sender] = recharges[msg.sender].add(msg.value); // only records deposit amount. 
    |        emit BalanceRecharge(msg.sender, msg.value, uint64(now));
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfd2acc637fc9b2311401277c110c823c23f4ae5a.sol(145)

[33mWarning[0m for UnrestrictedWrite in contract 'FundCenter':
    |        require(address(this).balance >= _amount, "Insufficient balance.");
    |        _to.transfer(_amount);
  > |        withdraws[_to] = withdraws[_to].add(_amount); // record withdraw amount 
    |        emit BalanceWithdraw(_to, _amount, _txHash, uint64(now));
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfd2acc637fc9b2311401277c110c823c23f4ae5a.sol(160)

[33mWarning[0m for UnrestrictedWrite in contract 'FundCenter':
    |    
    |    function setGameAddress(address _gameAddress) public onlyCOO {
  > |        gameAddress = _gameAddress; 
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xfd2acc637fc9b2311401277c110c823c23f4ae5a.sol(154)

[33mWarning[0m for UnrestrictedWrite in contract 'FundCenter':
    |
    |    function setLowestClaim(uint _lowestRecharge, uint _lowestWithdraw) public onlyCOO {
  > |        lowestRecharge = _lowestRecharge;
    |        lowestWithdraw = _lowestWithdraw;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfd2acc637fc9b2311401277c110c823c23f4ae5a.sol(171)

[33mWarning[0m for UnrestrictedWrite in contract 'FundCenter':
    |    function setLowestClaim(uint _lowestRecharge, uint _lowestWithdraw) public onlyCOO {
    |        lowestRecharge = _lowestRecharge;
  > |        lowestWithdraw = _lowestWithdraw;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xfd2acc637fc9b2311401277c110c823c23f4ae5a.sol(172)

[33mWarning[0m for UnrestrictedWrite in contract 'FundCenter':
    |
    |    function setEnable(bool _enable) public onlyCOO {
  > |        enable = _enable;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xfd2acc637fc9b2311401277c110c823c23f4ae5a.sol(176)

[33mWarning[0m for UnrestrictedWrite in contract 'FundCenter':
    |
    |    function transferCEO(address _CEOAddress) public onlyCEO {
  > |        CEO = _CEOAddress;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xfd2acc637fc9b2311401277c110c823c23f4ae5a.sol(180)

[33mWarning[0m for UnrestrictedWrite in contract 'FundCenter':
    |
    |    function setCOO(address _COOAddress) public onlyCEO {
  > |        COO = _COOAddress;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xfd2acc637fc9b2311401277c110c823c23f4ae5a.sol(184)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xfd2acc637fc9b2311401277c110c823c23f4ae5a.sol(9)


