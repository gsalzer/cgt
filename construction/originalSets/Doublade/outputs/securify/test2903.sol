Processing contract: /home/jiaming/mavs_srcs/contract@0xbedb3a6957a892c6fe6419d80691647380717e1b.sol:HFTCrowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbedb3a6957a892c6fe6419d80691647380717e1b.sol:Token
[33mWarning[0m for DAOConstantGas in contract 'HFTCrowdsale':
    |        tokenReward.transfer(msg.sender, amount);
    |        FundTransfer(msg.sender, amount, true);
  > |        owner.transfer(msg.value);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xbedb3a6957a892c6fe6419d80691647380717e1b.sol(118)

[33mWarning[0m for LockedEther in contract 'HFTCrowdsale':
    |}
    |
  > |contract HFTCrowdsale {
    |    
    |    Token public tokenReward;
  at /home/jiaming/mavs_srcs/contract@0xbedb3a6957a892c6fe6419d80691647380717e1b.sol(7)

[31mViolation[0m for TODReceiver in contract 'HFTCrowdsale':
    |        tokenReward.transfer(msg.sender, amount);
    |        FundTransfer(msg.sender, amount, true);
  > |        owner.transfer(msg.value);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xbedb3a6957a892c6fe6419d80691647380717e1b.sol(118)

[33mWarning[0m for UnhandledException in contract 'HFTCrowdsale':
    |
    |    function sendToken(address _to, uint256 _value) isCreator public {
  > |        tokenReward.transfer(_to, _value);      
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbedb3a6957a892c6fe6419d80691647380717e1b.sol(89)

[33mWarning[0m for UnhandledException in contract 'HFTCrowdsale':
    |        }
    |        
  > |        tokenReward.transfer(msg.sender, amount);
    |        FundTransfer(msg.sender, amount, true);
    |        owner.transfer(msg.value);
  at /home/jiaming/mavs_srcs/contract@0xbedb3a6957a892c6fe6419d80691647380717e1b.sol(116)

[33mWarning[0m for UnhandledException in contract 'HFTCrowdsale':
    |        tokenReward.transfer(msg.sender, amount);
    |        FundTransfer(msg.sender, amount, true);
  > |        owner.transfer(msg.value);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xbedb3a6957a892c6fe6419d80691647380717e1b.sol(118)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HFTCrowdsale':
    |
    |    function sendToken(address _to, uint256 _value) isCreator public {
  > |        tokenReward.transfer(_to, _value);      
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbedb3a6957a892c6fe6419d80691647380717e1b.sol(89)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HFTCrowdsale':
    |        }
    |        
  > |        tokenReward.transfer(msg.sender, amount);
    |        FundTransfer(msg.sender, amount, true);
    |        owner.transfer(msg.value);
  at /home/jiaming/mavs_srcs/contract@0xbedb3a6957a892c6fe6419d80691647380717e1b.sol(116)

[31mViolation[0m for UnrestrictedWrite in contract 'HFTCrowdsale':
    |
    |        uint256 amount = msg.value * prices[price];
  > |        amountSoldPerPeriod += amount / 1 ether;
    |
    |        if (amountSoldPerPeriod > periods[period]) {
  at /home/jiaming/mavs_srcs/contract@0xbedb3a6957a892c6fe6419d80691647380717e1b.sol(104)

[31mViolation[0m for UnrestrictedWrite in contract 'HFTCrowdsale':
    |
    |        if (amountSoldPerPeriod > periods[period]) {
  > |            price += 1;
    |            period += 1;
    |            require(period < periods.length);
  at /home/jiaming/mavs_srcs/contract@0xbedb3a6957a892c6fe6419d80691647380717e1b.sol(107)

[31mViolation[0m for UnrestrictedWrite in contract 'HFTCrowdsale':
    |        if (amountSoldPerPeriod > periods[period]) {
    |            price += 1;
  > |            period += 1;
    |            require(period < periods.length);
    |            require(price < prices.length);
  at /home/jiaming/mavs_srcs/contract@0xbedb3a6957a892c6fe6419d80691647380717e1b.sol(108)

[31mViolation[0m for UnrestrictedWrite in contract 'HFTCrowdsale':
    |            require(period < periods.length);
    |            require(price < prices.length);
  > |            amountSoldPerPeriod = 0;
    |            amount = msg.value * prices[price];
    |            amountSoldPerPeriod += amount / 1 ether;
  at /home/jiaming/mavs_srcs/contract@0xbedb3a6957a892c6fe6419d80691647380717e1b.sol(111)

[31mViolation[0m for UnrestrictedWrite in contract 'HFTCrowdsale':
    |            amountSoldPerPeriod = 0;
    |            amount = msg.value * prices[price];
  > |            amountSoldPerPeriod += amount / 1 ether;
    |        }
    |        
  at /home/jiaming/mavs_srcs/contract@0xbedb3a6957a892c6fe6419d80691647380717e1b.sol(113)

[33mWarning[0m for UnrestrictedWrite in contract 'HFTCrowdsale':
    |pragma solidity ^0.4.16;
    |
  > |interface Token {
    |    function transfer(address _to, uint256 _value) public;
    |}
  at /home/jiaming/mavs_srcs/contract@0xbedb3a6957a892c6fe6419d80691647380717e1b.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'HFTCrowdsale':
    |
    |    function setOwner(address _owner) isCreator public {
  > |        owner = _owner;      
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbedb3a6957a892c6fe6419d80691647380717e1b.sol(41)

[33mWarning[0m for UnrestrictedWrite in contract 'HFTCrowdsale':
    |
    |    function setCreator(address _creator) isCreator public {
  > |        creator = _creator;      
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbedb3a6957a892c6fe6419d80691647380717e1b.sol(45)

[33mWarning[0m for UnrestrictedWrite in contract 'HFTCrowdsale':
    |
    |    function setStartDate(uint256 _startDate) isCreator public {
  > |        startDate = _startDate;      
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbedb3a6957a892c6fe6419d80691647380717e1b.sol(49)

[33mWarning[0m for UnrestrictedWrite in contract 'HFTCrowdsale':
    |
    |    function setEndtDate(uint256 _endDate) isCreator public {
  > |        endDate = _endDate;      
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xbedb3a6957a892c6fe6419d80691647380717e1b.sol(53)

[33mWarning[0m for UnrestrictedWrite in contract 'HFTCrowdsale':
    |    
    |    function addPrice(uint256 _price) isCreator public {
  > |        prices.push(_price);      
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbedb3a6957a892c6fe6419d80691647380717e1b.sol(57)

[33mWarning[0m for UnrestrictedWrite in contract 'HFTCrowdsale':
    |
    |    function updatePrice(uint256 index, uint256 _price) isCreator public {
  > |        prices[index] = _price;      
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbedb3a6957a892c6fe6419d80691647380717e1b.sol(61)

[33mWarning[0m for UnrestrictedWrite in contract 'HFTCrowdsale':
    |
    |    function addPeriod(uint256 _period) isCreator public {
  > |        periods.push(_period);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbedb3a6957a892c6fe6419d80691647380717e1b.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'HFTCrowdsale':
    |
    |    function updatePeriod(uint256 index, uint256 _period) isCreator public {
  > |        periods[index] = _period;      
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbedb3a6957a892c6fe6419d80691647380717e1b.sol(69)

[33mWarning[0m for UnrestrictedWrite in contract 'HFTCrowdsale':
    |
    |    function setPrice(uint256 _price) isCreator public {
  > |        price = _price;      
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbedb3a6957a892c6fe6419d80691647380717e1b.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'HFTCrowdsale':
    |
    |    function setPeriod(uint256 _period) isCreator public {
  > |        period = _period;      
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbedb3a6957a892c6fe6419d80691647380717e1b.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'HFTCrowdsale':
    |
    |    function setAmountSoldPerPeriod(uint256 _amountSoldPerPeriod) isCreator public {
  > |        amountSoldPerPeriod = _amountSoldPerPeriod;      
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbedb3a6957a892c6fe6419d80691647380717e1b.sol(81)

[33mWarning[0m for UnrestrictedWrite in contract 'HFTCrowdsale':
    |
    |    function setToken(address _token) isCreator public {
  > |        tokenReward = Token(_token);      
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbedb3a6957a892c6fe6419d80691647380717e1b.sol(85)


