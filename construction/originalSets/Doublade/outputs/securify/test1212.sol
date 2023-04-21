Processing contract: /home/jiaming/mavs_srcs/contract@0x4d2c8d1e351da28cc65f32938fcf6156fbc1d26c.sol:BitcoinPriceBetM
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4d2c8d1e351da28cc65f32938fcf6156fbc1d26c.sol:NeutrinoTokenStandard
Processing contract: /home/jiaming/mavs_srcs/contract@0x4d2c8d1e351da28cc65f32938fcf6156fbc1d26c.sol:ReferralPayStation
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for DAO in contract 'BitcoinPriceBetM':
    |        uint256 _ntsBalance = ntsBalance;
    |        
  > |        neutrino.fund.value(ntsBalance)();
    |        ntsBalance = 0;
    |        emit OnNTSCharged(_ntsBalance);
  at /home/jiaming/mavs_srcs/contract@0x4d2c8d1e351da28cc65f32938fcf6156fbc1d26c.sol(281)

[33mWarning[0m for DAO in contract 'BitcoinPriceBetM':
    |        prizeBalance -= value;
    |        
  > |        refPayStation.put.value(value)(ref, player);
    |        emit OnSendRef(ref, value, now, player, address(refPayStation));
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4d2c8d1e351da28cc65f32938fcf6156fbc1d26c.sol(256)

[31mViolation[0m for DAOConstantGas in contract 'BitcoinPriceBetM':
    |        uint256 value2 = value * 10 / 100;
    |        
  > |        if (boss1.send(value1)) {
    |            bossBalance -= value1;
    |            emit OnBossPayed(boss1, value1, now);
  at /home/jiaming/mavs_srcs/contract@0x4d2c8d1e351da28cc65f32938fcf6156fbc1d26c.sol(266)

[31mViolation[0m for DAOConstantGas in contract 'BitcoinPriceBetM':
    |        }
    |        
  > |        if (boss2.send(value2)) {
    |            bossBalance -= value2;
    |            emit OnBossPayed(boss2, value2, now);
  at /home/jiaming/mavs_srcs/contract@0x4d2c8d1e351da28cc65f32938fcf6156fbc1d26c.sol(271)

[31mViolation[0m for DAOConstantGas in contract 'BitcoinPriceBetM':
    |        require(jackpotBalance > 0);
    |
  > |        if (yearlyContract.call.value(jackpotBalance).gas(50000)()) {
    |            jackpotBalance = 0;
    |            emit OnYJPCharged(jackpotBalance);
  at /home/jiaming/mavs_srcs/contract@0x4d2c8d1e351da28cc65f32938fcf6156fbc1d26c.sol(289)

[33mWarning[0m for DAOConstantGas in contract 'BitcoinPriceBetM':
    |        winBalance[msg.sender] = 0;
    |        winBalanceTotal -= value;
  > |        msg.sender.transfer(value);
    |        emit OnWithdrawWin(msg.sender, value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4d2c8d1e351da28cc65f32938fcf6156fbc1d26c.sol(237)

[33mWarning[0m for LockedEther in contract 'BitcoinPriceBetM':
    |}
    |
  > |contract BitcoinPriceBetM {
    |    event OnBet (
    |        address indexed player,
  at /home/jiaming/mavs_srcs/contract@0x4d2c8d1e351da28cc65f32938fcf6156fbc1d26c.sol(88)

[31mViolation[0m for MissingInputValidation in contract 'BitcoinPriceBetM':
    |    uint8 constant ntsFee = 5;
    |    
  > |    mapping(address => uint256) public winBalance;
    |    uint256 public winBalanceTotal = 0;
    |    uint256 public bossBalance = 0;
  at /home/jiaming/mavs_srcs/contract@0x4d2c8d1e351da28cc65f32938fcf6156fbc1d26c.sol(176)

[31mViolation[0m for MissingInputValidation in contract 'BitcoinPriceBetM':
    |    }
    |    
  > |    function makeBet(uint256 betPrice, address ref) public payable {
    |        require(now >= betStart && now <= betFinish);
    |        
  at /home/jiaming/mavs_srcs/contract@0x4d2c8d1e351da28cc65f32938fcf6156fbc1d26c.sol(203)

[31mViolation[0m for MissingInputValidation in contract 'BitcoinPriceBetM':
    |    
    |    /* Admin */
  > |    function payPrize(address player, uint256 value, uint8 place, uint256 betPrice, uint256 amount, uint256 betValue) onlyOwner public {
    |        require(value <= prizeBalance);
    |        
  at /home/jiaming/mavs_srcs/contract@0x4d2c8d1e351da28cc65f32938fcf6156fbc1d26c.sol(242)

[31mViolation[0m for MissingInputValidation in contract 'BitcoinPriceBetM':
    |    }
    |    
  > |    function payPostDrawRef(address ref, address player, uint256 value) onlyOwner public {
    |        require(value <= prizeBalance);
    |        
  at /home/jiaming/mavs_srcs/contract@0x4d2c8d1e351da28cc65f32938fcf6156fbc1d26c.sol(251)

[31mViolation[0m for MissingInputValidation in contract 'BitcoinPriceBetM':
    |    }
    |    
  > |    function payYearlyJackpot(address yearlyContract) onlyOwner public {
    |        require(jackpotBalance > 0);
    |
  at /home/jiaming/mavs_srcs/contract@0x4d2c8d1e351da28cc65f32938fcf6156fbc1d26c.sol(286)

[31mViolation[0m for MissingInputValidation in contract 'BitcoinPriceBetM':
    |    }
    |    
  > |    function newRefPayStation(address newAddress) onlyOwner public {
    |        refPayStation = ReferralPayStation(newAddress);
    |        
  at /home/jiaming/mavs_srcs/contract@0x4d2c8d1e351da28cc65f32938fcf6156fbc1d26c.sol(315)

[33mWarning[0m for MissingInputValidation in contract 'BitcoinPriceBetM':
    |    );
    |    
  > |    string constant public name = "BitcoinPrice.Bet Monthly";
    |    string constant public symbol = "BPBM";
    |    address public owner;
  at /home/jiaming/mavs_srcs/contract@0x4d2c8d1e351da28cc65f32938fcf6156fbc1d26c.sol(159)

[33mWarning[0m for MissingInputValidation in contract 'BitcoinPriceBetM':
    |    
    |    string constant public name = "BitcoinPrice.Bet Monthly";
  > |    string constant public symbol = "BPBM";
    |    address public owner;
    |    address constant internal boss1 = 0x42cF5e102dECCf8d89E525151c5D5bbEAc54200d;
  at /home/jiaming/mavs_srcs/contract@0x4d2c8d1e351da28cc65f32938fcf6156fbc1d26c.sol(160)

[33mWarning[0m for MissingInputValidation in contract 'BitcoinPriceBetM':
    |    string constant public name = "BitcoinPrice.Bet Monthly";
    |    string constant public symbol = "BPBM";
  > |    address public owner;
    |    address constant internal boss1 = 0x42cF5e102dECCf8d89E525151c5D5bbEAc54200d;
    |    address constant internal boss2 = 0x8D86E611ef0c054FdF04E1c744A8cEFc37F00F81;
  at /home/jiaming/mavs_srcs/contract@0x4d2c8d1e351da28cc65f32938fcf6156fbc1d26c.sol(161)

[33mWarning[0m for MissingInputValidation in contract 'BitcoinPriceBetM':
    |    address constant internal boss2 = 0x8D86E611ef0c054FdF04E1c744A8cEFc37F00F81;
    |    NeutrinoTokenStandard constant internal neutrino = NeutrinoTokenStandard(0xad0a61589f3559026F00888027beAc31A5Ac4625); 
  > |    ReferralPayStation public refPayStation = ReferralPayStation(0x4100dAdA0D80931008a5f7F5711FFEb60A8071BA);
    |    
    |    uint256 constant public betStep = 0.1 ether;
  at /home/jiaming/mavs_srcs/contract@0x4d2c8d1e351da28cc65f32938fcf6156fbc1d26c.sol(165)

[33mWarning[0m for MissingInputValidation in contract 'BitcoinPriceBetM':
    |    ReferralPayStation public refPayStation = ReferralPayStation(0x4100dAdA0D80931008a5f7F5711FFEb60A8071BA);
    |    
  > |    uint256 constant public betStep = 0.1 ether;
    |    uint256 public betStart;
    |    uint256 public betFinish;
  at /home/jiaming/mavs_srcs/contract@0x4d2c8d1e351da28cc65f32938fcf6156fbc1d26c.sol(167)

[33mWarning[0m for MissingInputValidation in contract 'BitcoinPriceBetM':
    |    
    |    uint256 constant public betStep = 0.1 ether;
  > |    uint256 public betStart;
    |    uint256 public betFinish;
    |    
  at /home/jiaming/mavs_srcs/contract@0x4d2c8d1e351da28cc65f32938fcf6156fbc1d26c.sol(168)

[33mWarning[0m for MissingInputValidation in contract 'BitcoinPriceBetM':
    |    uint256 constant public betStep = 0.1 ether;
    |    uint256 public betStart;
  > |    uint256 public betFinish;
    |    
    |    uint8 constant bossFee = 10;
  at /home/jiaming/mavs_srcs/contract@0x4d2c8d1e351da28cc65f32938fcf6156fbc1d26c.sol(169)

[33mWarning[0m for MissingInputValidation in contract 'BitcoinPriceBetM':
    |    
    |    mapping(address => uint256) public winBalance;
  > |    uint256 public winBalanceTotal = 0;
    |    uint256 public bossBalance = 0;
    |    uint256 public jackpotBalance = 0;
  at /home/jiaming/mavs_srcs/contract@0x4d2c8d1e351da28cc65f32938fcf6156fbc1d26c.sol(177)

[33mWarning[0m for MissingInputValidation in contract 'BitcoinPriceBetM':
    |    mapping(address => uint256) public winBalance;
    |    uint256 public winBalanceTotal = 0;
  > |    uint256 public bossBalance = 0;
    |    uint256 public jackpotBalance = 0;
    |    uint256 public ntsBalance = 0;
  at /home/jiaming/mavs_srcs/contract@0x4d2c8d1e351da28cc65f32938fcf6156fbc1d26c.sol(178)

[33mWarning[0m for MissingInputValidation in contract 'BitcoinPriceBetM':
    |    uint256 public winBalanceTotal = 0;
    |    uint256 public bossBalance = 0;
  > |    uint256 public jackpotBalance = 0;
    |    uint256 public ntsBalance = 0;
    |    uint256 public prizeBalance = 0;
  at /home/jiaming/mavs_srcs/contract@0x4d2c8d1e351da28cc65f32938fcf6156fbc1d26c.sol(179)

[33mWarning[0m for MissingInputValidation in contract 'BitcoinPriceBetM':
    |    uint256 public bossBalance = 0;
    |    uint256 public jackpotBalance = 0;
  > |    uint256 public ntsBalance = 0;
    |    uint256 public prizeBalance = 0;
    |    
  at /home/jiaming/mavs_srcs/contract@0x4d2c8d1e351da28cc65f32938fcf6156fbc1d26c.sol(180)

[33mWarning[0m for MissingInputValidation in contract 'BitcoinPriceBetM':
    |    uint256 public jackpotBalance = 0;
    |    uint256 public ntsBalance = 0;
  > |    uint256 public prizeBalance = 0;
    |    
    |    modifier onlyOwner {
  at /home/jiaming/mavs_srcs/contract@0x4d2c8d1e351da28cc65f32938fcf6156fbc1d26c.sol(181)

[33mWarning[0m for MissingInputValidation in contract 'BitcoinPriceBetM':
    |    }
    |    
  > |    function canMakeBet() public view returns (bool) {
    |        return now >= betStart && now <= betFinish;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4d2c8d1e351da28cc65f32938fcf6156fbc1d26c.sol(199)

[33mWarning[0m for MissingInputValidation in contract 'BitcoinPriceBetM':
    |    }
    |    
  > |    function withdrawWin() public {
    |        require(winBalance[msg.sender] > 0);
    |        uint256 value = winBalance[msg.sender];
  at /home/jiaming/mavs_srcs/contract@0x4d2c8d1e351da28cc65f32938fcf6156fbc1d26c.sol(232)

[33mWarning[0m for MissingInputValidation in contract 'BitcoinPriceBetM':
    |    }
    |    
  > |    function payBoss(uint256 value) onlyOwner public {
    |        require(value <= bossBalance);
    |        if (value == 0) value = bossBalance;
  at /home/jiaming/mavs_srcs/contract@0x4d2c8d1e351da28cc65f32938fcf6156fbc1d26c.sol(260)

[33mWarning[0m for MissingInputValidation in contract 'BitcoinPriceBetM':
    |    }
    |    
  > |    function payNTS() onlyOwner public {
    |        require(ntsBalance > 0);
    |        uint256 _ntsBalance = ntsBalance;
  at /home/jiaming/mavs_srcs/contract@0x4d2c8d1e351da28cc65f32938fcf6156fbc1d26c.sol(277)

[33mWarning[0m for MissingInputValidation in contract 'BitcoinPriceBetM':
    |    }
    |    
  > |    function correct() onlyOwner public {
    |        uint256 counted = winBalanceTotal + bossBalance + jackpotBalance + ntsBalance + prizeBalance;
    |        uint256 uncounted = address(this).balance - counted;
  at /home/jiaming/mavs_srcs/contract@0x4d2c8d1e351da28cc65f32938fcf6156fbc1d26c.sol(295)

[33mWarning[0m for MissingInputValidation in contract 'BitcoinPriceBetM':
    |    }
    |    
  > |    function fundPrize() onlyOwner public {
    |        uint256 counted = winBalanceTotal + bossBalance + jackpotBalance + ntsBalance + prizeBalance;
    |        uint256 uncounted = address(this).balance - counted;
  at /home/jiaming/mavs_srcs/contract@0x4d2c8d1e351da28cc65f32938fcf6156fbc1d26c.sol(305)

[31mViolation[0m for TODAmount in contract 'BitcoinPriceBetM':
    |        uint256 _ntsBalance = ntsBalance;
    |        
  > |        neutrino.fund.value(ntsBalance)();
    |        ntsBalance = 0;
    |        emit OnNTSCharged(_ntsBalance);
  at /home/jiaming/mavs_srcs/contract@0x4d2c8d1e351da28cc65f32938fcf6156fbc1d26c.sol(281)

[31mViolation[0m for TODAmount in contract 'BitcoinPriceBetM':
    |        require(jackpotBalance > 0);
    |
  > |        if (yearlyContract.call.value(jackpotBalance).gas(50000)()) {
    |            jackpotBalance = 0;
    |            emit OnYJPCharged(jackpotBalance);
  at /home/jiaming/mavs_srcs/contract@0x4d2c8d1e351da28cc65f32938fcf6156fbc1d26c.sol(289)

[33mWarning[0m for TODAmount in contract 'BitcoinPriceBetM':
    |        prizeBalance -= value;
    |        
  > |        refPayStation.put.value(value)(ref, player);
    |        emit OnSendRef(ref, value, now, player, address(refPayStation));
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4d2c8d1e351da28cc65f32938fcf6156fbc1d26c.sol(256)

[33mWarning[0m for TODAmount in contract 'BitcoinPriceBetM':
    |        uint256 value2 = value * 10 / 100;
    |        
  > |        if (boss1.send(value1)) {
    |            bossBalance -= value1;
    |            emit OnBossPayed(boss1, value1, now);
  at /home/jiaming/mavs_srcs/contract@0x4d2c8d1e351da28cc65f32938fcf6156fbc1d26c.sol(266)

[33mWarning[0m for TODAmount in contract 'BitcoinPriceBetM':
    |        }
    |        
  > |        if (boss2.send(value2)) {
    |            bossBalance -= value2;
    |            emit OnBossPayed(boss2, value2, now);
  at /home/jiaming/mavs_srcs/contract@0x4d2c8d1e351da28cc65f32938fcf6156fbc1d26c.sol(271)

[31mViolation[0m for TODReceiver in contract 'BitcoinPriceBetM':
    |            refBonus = value * refFee / 100;
    |
  > |            refPayStation.put.value(refBonus)(ref, msg.sender);
    |            emit OnSendRef(ref, refBonus, now, msg.sender, address(refPayStation));
    |        }
  at /home/jiaming/mavs_srcs/contract@0x4d2c8d1e351da28cc65f32938fcf6156fbc1d26c.sol(218)

[31mViolation[0m for TODReceiver in contract 'BitcoinPriceBetM':
    |        prizeBalance -= value;
    |        
  > |        refPayStation.put.value(value)(ref, player);
    |        emit OnSendRef(ref, value, now, player, address(refPayStation));
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4d2c8d1e351da28cc65f32938fcf6156fbc1d26c.sol(256)

[33mWarning[0m for TODReceiver in contract 'BitcoinPriceBetM':
    |        winBalance[msg.sender] = 0;
    |        winBalanceTotal -= value;
  > |        msg.sender.transfer(value);
    |        emit OnWithdrawWin(msg.sender, value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4d2c8d1e351da28cc65f32938fcf6156fbc1d26c.sol(237)

[33mWarning[0m for TODReceiver in contract 'BitcoinPriceBetM':
    |        uint256 value2 = value * 10 / 100;
    |        
  > |        if (boss1.send(value1)) {
    |            bossBalance -= value1;
    |            emit OnBossPayed(boss1, value1, now);
  at /home/jiaming/mavs_srcs/contract@0x4d2c8d1e351da28cc65f32938fcf6156fbc1d26c.sol(266)

[33mWarning[0m for TODReceiver in contract 'BitcoinPriceBetM':
    |        }
    |        
  > |        if (boss2.send(value2)) {
    |            bossBalance -= value2;
    |            emit OnBossPayed(boss2, value2, now);
  at /home/jiaming/mavs_srcs/contract@0x4d2c8d1e351da28cc65f32938fcf6156fbc1d26c.sol(271)

[33mWarning[0m for TODReceiver in contract 'BitcoinPriceBetM':
    |        uint256 _ntsBalance = ntsBalance;
    |        
  > |        neutrino.fund.value(ntsBalance)();
    |        ntsBalance = 0;
    |        emit OnNTSCharged(_ntsBalance);
  at /home/jiaming/mavs_srcs/contract@0x4d2c8d1e351da28cc65f32938fcf6156fbc1d26c.sol(281)

[33mWarning[0m for TODReceiver in contract 'BitcoinPriceBetM':
    |        require(jackpotBalance > 0);
    |
  > |        if (yearlyContract.call.value(jackpotBalance).gas(50000)()) {
    |            jackpotBalance = 0;
    |            emit OnYJPCharged(jackpotBalance);
  at /home/jiaming/mavs_srcs/contract@0x4d2c8d1e351da28cc65f32938fcf6156fbc1d26c.sol(289)

[33mWarning[0m for UnhandledException in contract 'BitcoinPriceBetM':
    |            refBonus = value * refFee / 100;
    |
  > |            refPayStation.put.value(refBonus)(ref, msg.sender);
    |            emit OnSendRef(ref, refBonus, now, msg.sender, address(refPayStation));
    |        }
  at /home/jiaming/mavs_srcs/contract@0x4d2c8d1e351da28cc65f32938fcf6156fbc1d26c.sol(218)

[33mWarning[0m for UnhandledException in contract 'BitcoinPriceBetM':
    |        winBalance[msg.sender] = 0;
    |        winBalanceTotal -= value;
  > |        msg.sender.transfer(value);
    |        emit OnWithdrawWin(msg.sender, value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4d2c8d1e351da28cc65f32938fcf6156fbc1d26c.sol(237)

[33mWarning[0m for UnhandledException in contract 'BitcoinPriceBetM':
    |        prizeBalance -= value;
    |        
  > |        refPayStation.put.value(value)(ref, player);
    |        emit OnSendRef(ref, value, now, player, address(refPayStation));
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4d2c8d1e351da28cc65f32938fcf6156fbc1d26c.sol(256)

[33mWarning[0m for UnhandledException in contract 'BitcoinPriceBetM':
    |        uint256 value2 = value * 10 / 100;
    |        
  > |        if (boss1.send(value1)) {
    |            bossBalance -= value1;
    |            emit OnBossPayed(boss1, value1, now);
  at /home/jiaming/mavs_srcs/contract@0x4d2c8d1e351da28cc65f32938fcf6156fbc1d26c.sol(266)

[33mWarning[0m for UnhandledException in contract 'BitcoinPriceBetM':
    |        }
    |        
  > |        if (boss2.send(value2)) {
    |            bossBalance -= value2;
    |            emit OnBossPayed(boss2, value2, now);
  at /home/jiaming/mavs_srcs/contract@0x4d2c8d1e351da28cc65f32938fcf6156fbc1d26c.sol(271)

[33mWarning[0m for UnhandledException in contract 'BitcoinPriceBetM':
    |        uint256 _ntsBalance = ntsBalance;
    |        
  > |        neutrino.fund.value(ntsBalance)();
    |        ntsBalance = 0;
    |        emit OnNTSCharged(_ntsBalance);
  at /home/jiaming/mavs_srcs/contract@0x4d2c8d1e351da28cc65f32938fcf6156fbc1d26c.sol(281)

[33mWarning[0m for UnhandledException in contract 'BitcoinPriceBetM':
    |        require(jackpotBalance > 0);
    |
  > |        if (yearlyContract.call.value(jackpotBalance).gas(50000)()) {
    |            jackpotBalance = 0;
    |            emit OnYJPCharged(jackpotBalance);
  at /home/jiaming/mavs_srcs/contract@0x4d2c8d1e351da28cc65f32938fcf6156fbc1d26c.sol(289)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitcoinPriceBetM':
    |        uint256 _ntsBalance = ntsBalance;
    |        
  > |        neutrino.fund.value(ntsBalance)();
    |        ntsBalance = 0;
    |        emit OnNTSCharged(_ntsBalance);
  at /home/jiaming/mavs_srcs/contract@0x4d2c8d1e351da28cc65f32938fcf6156fbc1d26c.sol(281)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitcoinPriceBetM':
    |        require(jackpotBalance > 0);
    |
  > |        if (yearlyContract.call.value(jackpotBalance).gas(50000)()) {
    |            jackpotBalance = 0;
    |            emit OnYJPCharged(jackpotBalance);
  at /home/jiaming/mavs_srcs/contract@0x4d2c8d1e351da28cc65f32938fcf6156fbc1d26c.sol(289)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitcoinPriceBetM':
    |        prizeBalance -= value;
    |        
  > |        refPayStation.put.value(value)(ref, player);
    |        emit OnSendRef(ref, value, now, player, address(refPayStation));
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4d2c8d1e351da28cc65f32938fcf6156fbc1d26c.sol(256)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitcoinPriceBetM':
    |        uint256 value2 = value * 10 / 100;
    |        
  > |        if (boss1.send(value1)) {
    |            bossBalance -= value1;
    |            emit OnBossPayed(boss1, value1, now);
  at /home/jiaming/mavs_srcs/contract@0x4d2c8d1e351da28cc65f32938fcf6156fbc1d26c.sol(266)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitcoinPriceBetM':
    |        }
    |        
  > |        if (boss2.send(value2)) {
    |            bossBalance -= value2;
    |            emit OnBossPayed(boss2, value2, now);
  at /home/jiaming/mavs_srcs/contract@0x4d2c8d1e351da28cc65f32938fcf6156fbc1d26c.sol(271)

[31mViolation[0m for UnrestrictedWrite in contract 'BitcoinPriceBetM':
    |        
    |        require(value > 0);
  > |        jackpotBalance += extra;
    |        
    |        uint8 welcomeFee = bossFee + yjpFee + ntsFee;
  at /home/jiaming/mavs_srcs/contract@0x4d2c8d1e351da28cc65f32938fcf6156fbc1d26c.sol(210)

[31mViolation[0m for UnrestrictedWrite in contract 'BitcoinPriceBetM':
    |        
    |        uint256 taxedValue = value - value * welcomeFee / 100;
  > |        prizeBalance += taxedValue;
    |    
    |        bossBalance += value * bossFee / 100;
  at /home/jiaming/mavs_srcs/contract@0x4d2c8d1e351da28cc65f32938fcf6156fbc1d26c.sol(223)

[31mViolation[0m for UnrestrictedWrite in contract 'BitcoinPriceBetM':
    |        prizeBalance += taxedValue;
    |    
  > |        bossBalance += value * bossFee / 100;
    |        jackpotBalance += value * yjpFee / 100;
    |        ntsBalance += value * ntsFee / 100;
  at /home/jiaming/mavs_srcs/contract@0x4d2c8d1e351da28cc65f32938fcf6156fbc1d26c.sol(225)

[31mViolation[0m for UnrestrictedWrite in contract 'BitcoinPriceBetM':
    |    
    |        bossBalance += value * bossFee / 100;
  > |        jackpotBalance += value * yjpFee / 100;
    |        ntsBalance += value * ntsFee / 100;
    |            
  at /home/jiaming/mavs_srcs/contract@0x4d2c8d1e351da28cc65f32938fcf6156fbc1d26c.sol(226)

[31mViolation[0m for UnrestrictedWrite in contract 'BitcoinPriceBetM':
    |        bossBalance += value * bossFee / 100;
    |        jackpotBalance += value * yjpFee / 100;
  > |        ntsBalance += value * ntsFee / 100;
    |            
    |        emit OnBet(msg.sender, ref, block.timestamp, value, betPrice, extra, refBonus, value / betStep);
  at /home/jiaming/mavs_srcs/contract@0x4d2c8d1e351da28cc65f32938fcf6156fbc1d26c.sol(227)

[31mViolation[0m for UnrestrictedWrite in contract 'BitcoinPriceBetM':
    |        uint256 value = winBalance[msg.sender];
    |        winBalance[msg.sender] = 0;
  > |        winBalanceTotal -= value;
    |        msg.sender.transfer(value);
    |        emit OnWithdrawWin(msg.sender, value);
  at /home/jiaming/mavs_srcs/contract@0x4d2c8d1e351da28cc65f32938fcf6156fbc1d26c.sol(236)

[33mWarning[0m for UnrestrictedWrite in contract 'BitcoinPriceBetM':
    |        require(winBalance[msg.sender] > 0);
    |        uint256 value = winBalance[msg.sender];
  > |        winBalance[msg.sender] = 0;
    |        winBalanceTotal -= value;
    |        msg.sender.transfer(value);
  at /home/jiaming/mavs_srcs/contract@0x4d2c8d1e351da28cc65f32938fcf6156fbc1d26c.sol(235)

[33mWarning[0m for UnrestrictedWrite in contract 'BitcoinPriceBetM':
    |        require(value <= prizeBalance);
    |        
  > |        winBalance[player] += value;
    |        winBalanceTotal += value;
    |        prizeBalance -= value;
  at /home/jiaming/mavs_srcs/contract@0x4d2c8d1e351da28cc65f32938fcf6156fbc1d26c.sol(245)

[33mWarning[0m for UnrestrictedWrite in contract 'BitcoinPriceBetM':
    |        
    |        winBalance[player] += value;
  > |        winBalanceTotal += value;
    |        prizeBalance -= value;
    |        emit OnPrizePayed(player, value, place, betPrice, amount, betValue);   
  at /home/jiaming/mavs_srcs/contract@0x4d2c8d1e351da28cc65f32938fcf6156fbc1d26c.sol(246)

[33mWarning[0m for UnrestrictedWrite in contract 'BitcoinPriceBetM':
    |        winBalance[player] += value;
    |        winBalanceTotal += value;
  > |        prizeBalance -= value;
    |        emit OnPrizePayed(player, value, place, betPrice, amount, betValue);   
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4d2c8d1e351da28cc65f32938fcf6156fbc1d26c.sol(247)

[33mWarning[0m for UnrestrictedWrite in contract 'BitcoinPriceBetM':
    |        require(value <= prizeBalance);
    |        
  > |        prizeBalance -= value;
    |        
    |        refPayStation.put.value(value)(ref, player);
  at /home/jiaming/mavs_srcs/contract@0x4d2c8d1e351da28cc65f32938fcf6156fbc1d26c.sol(254)

[33mWarning[0m for UnrestrictedWrite in contract 'BitcoinPriceBetM':
    |        
    |        if (boss1.send(value1)) {
  > |            bossBalance -= value1;
    |            emit OnBossPayed(boss1, value1, now);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x4d2c8d1e351da28cc65f32938fcf6156fbc1d26c.sol(267)

[33mWarning[0m for UnrestrictedWrite in contract 'BitcoinPriceBetM':
    |        
    |        if (boss2.send(value2)) {
  > |            bossBalance -= value2;
    |            emit OnBossPayed(boss2, value2, now);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x4d2c8d1e351da28cc65f32938fcf6156fbc1d26c.sol(272)

[33mWarning[0m for UnrestrictedWrite in contract 'BitcoinPriceBetM':
    |        
    |        neutrino.fund.value(ntsBalance)();
  > |        ntsBalance = 0;
    |        emit OnNTSCharged(_ntsBalance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4d2c8d1e351da28cc65f32938fcf6156fbc1d26c.sol(282)

[33mWarning[0m for UnrestrictedWrite in contract 'BitcoinPriceBetM':
    |
    |        if (yearlyContract.call.value(jackpotBalance).gas(50000)()) {
  > |            jackpotBalance = 0;
    |            emit OnYJPCharged(jackpotBalance);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x4d2c8d1e351da28cc65f32938fcf6156fbc1d26c.sol(290)

[33mWarning[0m for UnrestrictedWrite in contract 'BitcoinPriceBetM':
    |        require(uncounted > 0);
    |        
  > |        bossBalance += uncounted;
    |        emit OnCorrect(uncounted);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4d2c8d1e351da28cc65f32938fcf6156fbc1d26c.sol(301)

[33mWarning[0m for UnrestrictedWrite in contract 'BitcoinPriceBetM':
    |        require(uncounted > 0);
    |        
  > |        prizeBalance += uncounted;
    |        emit OnPrizeFunded(uncounted);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4d2c8d1e351da28cc65f32938fcf6156fbc1d26c.sol(311)

[33mWarning[0m for UnrestrictedWrite in contract 'BitcoinPriceBetM':
    |    
    |    function newRefPayStation(address newAddress) onlyOwner public {
  > |        refPayStation = ReferralPayStation(newAddress);
    |        
    |        emit OnNewRefPayStation(newAddress, now);
  at /home/jiaming/mavs_srcs/contract@0x4d2c8d1e351da28cc65f32938fcf6156fbc1d26c.sol(316)

[33mWarning[0m for DAOConstantGas in contract 'ReferralPayStation':
    |        uint256 value = refBalance[msg.sender];
    |        refBalance[msg.sender] = 0;
  > |        msg.sender.transfer(value);
    |        emit OnWithdraw(msg.sender, value, now);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4d2c8d1e351da28cc65f32938fcf6156fbc1d26c.sol(68)

[33mWarning[0m for DAOConstantGas in contract 'ReferralPayStation':
    |        uint256 value = refBalance[ref];
    |        refBalance[ref] = 0;
  > |        owner.transfer(value);
    |        emit OnRob(ref, value, now);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4d2c8d1e351da28cc65f32938fcf6156fbc1d26c.sol(77)

[33mWarning[0m for DAOConstantGas in contract 'ReferralPayStation':
    |    function robAll() onlyOwner public {
    |        uint256 balance = address(this).balance;
  > |        owner.transfer(balance);
    |        emit OnRobAll(balance, now);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4d2c8d1e351da28cc65f32938fcf6156fbc1d26c.sol(83)

[33mWarning[0m for LockedEther in contract 'ReferralPayStation':
    |}
    |
  > |contract ReferralPayStation {
    |    event OnGotRef (
    |        address indexed ref,
  at /home/jiaming/mavs_srcs/contract@0x4d2c8d1e351da28cc65f32938fcf6156fbc1d26c.sol(20)

[31mViolation[0m for MissingInputValidation in contract 'ReferralPayStation':
    |    
    |    address owner;
  > |    mapping(address => uint256) public refBalance;
    |    
    |    modifier onlyOwner {
  at /home/jiaming/mavs_srcs/contract@0x4d2c8d1e351da28cc65f32938fcf6156fbc1d26c.sol(46)

[31mViolation[0m for MissingInputValidation in contract 'ReferralPayStation':
    |    }
    |    
  > |    function put(address ref, address player) public payable {
    |        require(msg.value > 0);
    |        refBalance[ref] += msg.value;
  at /home/jiaming/mavs_srcs/contract@0x4d2c8d1e351da28cc65f32938fcf6156fbc1d26c.sol(57)

[31mViolation[0m for MissingInputValidation in contract 'ReferralPayStation':
    |    
    |    /* admin */
  > |    function rob(address ref) onlyOwner public {
    |        require(refBalance[ref] > 0);
    |        uint256 value = refBalance[ref];
  at /home/jiaming/mavs_srcs/contract@0x4d2c8d1e351da28cc65f32938fcf6156fbc1d26c.sol(73)

[33mWarning[0m for MissingInputValidation in contract 'ReferralPayStation':
    |    }
    |    
  > |    function withdraw() public {
    |        require(refBalance[msg.sender] > 0);
    |        uint256 value = refBalance[msg.sender];
  at /home/jiaming/mavs_srcs/contract@0x4d2c8d1e351da28cc65f32938fcf6156fbc1d26c.sol(64)

[33mWarning[0m for MissingInputValidation in contract 'ReferralPayStation':
    |    }
    |    
  > |    function robAll() onlyOwner public {
    |        uint256 balance = address(this).balance;
    |        owner.transfer(balance);
  at /home/jiaming/mavs_srcs/contract@0x4d2c8d1e351da28cc65f32938fcf6156fbc1d26c.sol(81)

[31mViolation[0m for TODAmount in contract 'ReferralPayStation':
    |    function robAll() onlyOwner public {
    |        uint256 balance = address(this).balance;
  > |        owner.transfer(balance);
    |        emit OnRobAll(balance, now);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4d2c8d1e351da28cc65f32938fcf6156fbc1d26c.sol(83)

[33mWarning[0m for TODReceiver in contract 'ReferralPayStation':
    |        uint256 value = refBalance[msg.sender];
    |        refBalance[msg.sender] = 0;
  > |        msg.sender.transfer(value);
    |        emit OnWithdraw(msg.sender, value, now);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4d2c8d1e351da28cc65f32938fcf6156fbc1d26c.sol(68)

[33mWarning[0m for TODReceiver in contract 'ReferralPayStation':
    |        uint256 value = refBalance[ref];
    |        refBalance[ref] = 0;
  > |        owner.transfer(value);
    |        emit OnRob(ref, value, now);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4d2c8d1e351da28cc65f32938fcf6156fbc1d26c.sol(77)

[33mWarning[0m for TODReceiver in contract 'ReferralPayStation':
    |    function robAll() onlyOwner public {
    |        uint256 balance = address(this).balance;
  > |        owner.transfer(balance);
    |        emit OnRobAll(balance, now);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4d2c8d1e351da28cc65f32938fcf6156fbc1d26c.sol(83)

[33mWarning[0m for UnhandledException in contract 'ReferralPayStation':
    |        uint256 value = refBalance[msg.sender];
    |        refBalance[msg.sender] = 0;
  > |        msg.sender.transfer(value);
    |        emit OnWithdraw(msg.sender, value, now);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4d2c8d1e351da28cc65f32938fcf6156fbc1d26c.sol(68)

[33mWarning[0m for UnhandledException in contract 'ReferralPayStation':
    |        uint256 value = refBalance[ref];
    |        refBalance[ref] = 0;
  > |        owner.transfer(value);
    |        emit OnRob(ref, value, now);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4d2c8d1e351da28cc65f32938fcf6156fbc1d26c.sol(77)

[33mWarning[0m for UnhandledException in contract 'ReferralPayStation':
    |    function robAll() onlyOwner public {
    |        uint256 balance = address(this).balance;
  > |        owner.transfer(balance);
    |        emit OnRobAll(balance, now);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4d2c8d1e351da28cc65f32938fcf6156fbc1d26c.sol(83)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ReferralPayStation':
    |        uint256 value = refBalance[ref];
    |        refBalance[ref] = 0;
  > |        owner.transfer(value);
    |        emit OnRob(ref, value, now);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4d2c8d1e351da28cc65f32938fcf6156fbc1d26c.sol(77)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ReferralPayStation':
    |    function robAll() onlyOwner public {
    |        uint256 balance = address(this).balance;
  > |        owner.transfer(balance);
    |        emit OnRobAll(balance, now);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4d2c8d1e351da28cc65f32938fcf6156fbc1d26c.sol(83)

[31mViolation[0m for UnrestrictedWrite in contract 'ReferralPayStation':
    |    function put(address ref, address player) public payable {
    |        require(msg.value > 0);
  > |        refBalance[ref] += msg.value;
    |        
    |        emit OnGotRef(ref, msg.value, now, player);
  at /home/jiaming/mavs_srcs/contract@0x4d2c8d1e351da28cc65f32938fcf6156fbc1d26c.sol(59)

[33mWarning[0m for UnrestrictedWrite in contract 'ReferralPayStation':
    |        require(refBalance[msg.sender] > 0);
    |        uint256 value = refBalance[msg.sender];
  > |        refBalance[msg.sender] = 0;
    |        msg.sender.transfer(value);
    |        emit OnWithdraw(msg.sender, value, now);
  at /home/jiaming/mavs_srcs/contract@0x4d2c8d1e351da28cc65f32938fcf6156fbc1d26c.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'ReferralPayStation':
    |        require(refBalance[ref] > 0);
    |        uint256 value = refBalance[ref];
  > |        refBalance[ref] = 0;
    |        owner.transfer(value);
    |        emit OnRob(ref, value, now);
  at /home/jiaming/mavs_srcs/contract@0x4d2c8d1e351da28cc65f32938fcf6156fbc1d26c.sol(76)


