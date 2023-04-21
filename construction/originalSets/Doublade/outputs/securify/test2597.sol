Processing contract: /home/jiaming/mavs_srcs/contract@0xa9fa841e2b56be2d8b645819b46fedfd9e331206.sol:InvestorsStorage
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa9fa841e2b56be2d8b645819b46fedfd9e331206.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa9fa841e2b56be2d8b645819b46fedfd9e331206.sol:SmartPyramid
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'InvestorsStorage':
    |}
    |
  > |contract InvestorsStorage {
    |    address private owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xa9fa841e2b56be2d8b645819b46fedfd9e331206.sol(104)

[31mViolation[0m for MissingInputValidation in contract 'InvestorsStorage':
    |    }
    |
  > |    function updateInfo(address _address, uint _value) external onlyOwner {
    |        investors[_address].deposit += _value;
    |        investors[_address].checkpoint = block.timestamp;
  at /home/jiaming/mavs_srcs/contract@0xa9fa841e2b56be2d8b645819b46fedfd9e331206.sol(124)

[31mViolation[0m for MissingInputValidation in contract 'InvestorsStorage':
    |    }
    |
  > |    function updateCheckpoint(address _address) external onlyOwner {
    |        investors[_address].checkpoint = block.timestamp;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa9fa841e2b56be2d8b645819b46fedfd9e331206.sol(129)

[31mViolation[0m for MissingInputValidation in contract 'InvestorsStorage':
    |    }
    |
  > |    function addReferrer(address _referral, address _referrer) external onlyOwner {
    |        investors[_referral].referrer = _referrer;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa9fa841e2b56be2d8b645819b46fedfd9e331206.sol(133)

[31mViolation[0m for MissingInputValidation in contract 'InvestorsStorage':
    |    }
    |
  > |    function getInterest(address _address) external view returns(uint) {
    |        if (investors[_address].deposit > 0) {
    |            return(123 + ((block.timestamp - investors[_address].checkpoint) / 1 days));
  at /home/jiaming/mavs_srcs/contract@0xa9fa841e2b56be2d8b645819b46fedfd9e331206.sol(137)

[31mViolation[0m for MissingInputValidation in contract 'InvestorsStorage':
    |    }
    |
  > |    function d(address _address) external view returns(uint) {
    |        return investors[_address].deposit;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa9fa841e2b56be2d8b645819b46fedfd9e331206.sol(143)

[31mViolation[0m for MissingInputValidation in contract 'InvestorsStorage':
    |    }
    |
  > |    function c(address _address) external view returns(uint) {
    |        return investors[_address].checkpoint;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa9fa841e2b56be2d8b645819b46fedfd9e331206.sol(147)

[31mViolation[0m for MissingInputValidation in contract 'InvestorsStorage':
    |    }
    |
  > |    function r(address _address) external view returns(address) {
    |        return investors[_address].referrer;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa9fa841e2b56be2d8b645819b46fedfd9e331206.sol(151)

[33mWarning[0m for UnrestrictedWrite in contract 'InvestorsStorage':
    |
    |    function updateInfo(address _address, uint _value) external onlyOwner {
  > |        investors[_address].deposit += _value;
    |        investors[_address].checkpoint = block.timestamp;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa9fa841e2b56be2d8b645819b46fedfd9e331206.sol(125)

[33mWarning[0m for UnrestrictedWrite in contract 'InvestorsStorage':
    |    function updateInfo(address _address, uint _value) external onlyOwner {
    |        investors[_address].deposit += _value;
  > |        investors[_address].checkpoint = block.timestamp;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xa9fa841e2b56be2d8b645819b46fedfd9e331206.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'InvestorsStorage':
    |
    |    function updateCheckpoint(address _address) external onlyOwner {
  > |        investors[_address].checkpoint = block.timestamp;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xa9fa841e2b56be2d8b645819b46fedfd9e331206.sol(130)

[33mWarning[0m for UnrestrictedWrite in contract 'InvestorsStorage':
    |
    |    function addReferrer(address _referral, address _referrer) external onlyOwner {
  > |        investors[_referral].referrer = _referrer;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xa9fa841e2b56be2d8b645819b46fedfd9e331206.sol(134)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |
    |
  > |library SafeMath {
    |
    |    function mul(uint256 _a, uint256 _b) internal pure returns (uint256) {
  at /home/jiaming/mavs_srcs/contract@0xa9fa841e2b56be2d8b645819b46fedfd9e331206.sol(64)

[31mViolation[0m for DAOConstantGas in contract 'SmartPyramid':
    |    function invest() notOnPause public payable {
    |
  > |        admin.transfer(msg.value * 4 / 25);
    |
    |        if (x.d(msg.sender) > 0) {
  at /home/jiaming/mavs_srcs/contract@0xa9fa841e2b56be2d8b645819b46fedfd9e331206.sol(228)

[31mViolation[0m for DAOConstantGas in contract 'SmartPyramid':
    |        for (uint i = 0; i <= 2; i++) {
    |            if (top[i+1].addr != 0x0) {
  > |                top[i+1].addr.transfer(2 ether / 2 ** i);
    |                top[i+1] = Leader(0x0, 0);
    |            }
  at /home/jiaming/mavs_srcs/contract@0xa9fa841e2b56be2d8b645819b46fedfd9e331206.sol(294)

[33mWarning[0m for DAOConstantGas in contract 'SmartPyramid':
    |        if (_referrer != msg.sender) {
    |            x.addReferrer(msg.sender, _referrer);
  > |            x.r(msg.sender).transfer(_value / 20);
    |            emit LogReferralInvestment(_referrer, msg.sender, _value);
    |            emit LogIncome(_referrer, _value / 20, "referral");
  at /home/jiaming/mavs_srcs/contract@0xa9fa841e2b56be2d8b645819b46fedfd9e331206.sol(194)

[33mWarning[0m for DAOConstantGas in contract 'SmartPyramid':
    |
    |        if (x.r(msg.sender) != 0x0) {
  > |            x.r(msg.sender).transfer(msg.value / 20);
    |            emit LogReferralInvestment(x.r(msg.sender), msg.sender, msg.value);
    |            emit LogIncome(x.r(msg.sender), msg.value / 20, "referral");
  at /home/jiaming/mavs_srcs/contract@0xa9fa841e2b56be2d8b645819b46fedfd9e331206.sol(241)

[33mWarning[0m for TODReceiver in contract 'SmartPyramid':
    |    function invest() notOnPause public payable {
    |
  > |        admin.transfer(msg.value * 4 / 25);
    |
    |        if (x.d(msg.sender) > 0) {
  at /home/jiaming/mavs_srcs/contract@0xa9fa841e2b56be2d8b645819b46fedfd9e331206.sol(228)

[33mWarning[0m for TODReceiver in contract 'SmartPyramid':
    |            }
    |
  > |            msg.sender.transfer(_payout);
    |            emit LogIncome(msg.sender, _payout, "withdrawn");
    |        }
  at /home/jiaming/mavs_srcs/contract@0xa9fa841e2b56be2d8b645819b46fedfd9e331206.sol(266)

[33mWarning[0m for UnhandledException in contract 'SmartPyramid':
    |        address _referrer = bytesToAddress(bytes(msg.data));
    |        if (_referrer != msg.sender) {
  > |            x.addReferrer(msg.sender, _referrer);
    |            x.r(msg.sender).transfer(_value / 20);
    |            emit LogReferralInvestment(_referrer, msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0xa9fa841e2b56be2d8b645819b46fedfd9e331206.sol(193)

[33mWarning[0m for UnhandledException in contract 'SmartPyramid':
    |        if (_referrer != msg.sender) {
    |            x.addReferrer(msg.sender, _referrer);
  > |            x.r(msg.sender).transfer(_value / 20);
    |            emit LogReferralInvestment(_referrer, msg.sender, _value);
    |            emit LogIncome(_referrer, _value / 20, "referral");
  at /home/jiaming/mavs_srcs/contract@0xa9fa841e2b56be2d8b645819b46fedfd9e331206.sol(194)

[33mWarning[0m for UnhandledException in contract 'SmartPyramid':
    |
    |    function getInfo(address _address) external view returns(uint deposit, uint amountToWithdraw) {
  > |        deposit = x.d(_address);
    |        if (block.timestamp >= x.c(_address) + 10 minutes) {
    |            amountToWithdraw = (x.d(_address).mul(x.getInterest(_address)).div(10000)).mul(block.timestamp.sub(x.c(_address))).div(1 days);
  at /home/jiaming/mavs_srcs/contract@0xa9fa841e2b56be2d8b645819b46fedfd9e331206.sol(206)

[33mWarning[0m for UnhandledException in contract 'SmartPyramid':
    |    function getInfo(address _address) external view returns(uint deposit, uint amountToWithdraw) {
    |        deposit = x.d(_address);
  > |        if (block.timestamp >= x.c(_address) + 10 minutes) {
    |            amountToWithdraw = (x.d(_address).mul(x.getInterest(_address)).div(10000)).mul(block.timestamp.sub(x.c(_address))).div(1 days);
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0xa9fa841e2b56be2d8b645819b46fedfd9e331206.sol(207)

[33mWarning[0m for UnhandledException in contract 'SmartPyramid':
    |        deposit = x.d(_address);
    |        if (block.timestamp >= x.c(_address) + 10 minutes) {
  > |            amountToWithdraw = (x.d(_address).mul(x.getInterest(_address)).div(10000)).mul(block.timestamp.sub(x.c(_address))).div(1 days);
    |        } else {
    |            amountToWithdraw = 0;
  at /home/jiaming/mavs_srcs/contract@0xa9fa841e2b56be2d8b645819b46fedfd9e331206.sol(208)

[33mWarning[0m for UnhandledException in contract 'SmartPyramid':
    |    function invest() notOnPause public payable {
    |
  > |        admin.transfer(msg.value * 4 / 25);
    |
    |        if (x.d(msg.sender) > 0) {
  at /home/jiaming/mavs_srcs/contract@0xa9fa841e2b56be2d8b645819b46fedfd9e331206.sol(228)

[33mWarning[0m for UnhandledException in contract 'SmartPyramid':
    |        admin.transfer(msg.value * 4 / 25);
    |
  > |        if (x.d(msg.sender) > 0) {
    |            withdraw();
    |        }
  at /home/jiaming/mavs_srcs/contract@0xa9fa841e2b56be2d8b645819b46fedfd9e331206.sol(230)

[33mWarning[0m for UnhandledException in contract 'SmartPyramid':
    |        }
    |
  > |        x.updateInfo(msg.sender, msg.value);
    |
    |        if (msg.value > top[3].deposit) {
  at /home/jiaming/mavs_srcs/contract@0xa9fa841e2b56be2d8b645819b46fedfd9e331206.sol(234)

[33mWarning[0m for UnhandledException in contract 'SmartPyramid':
    |        }
    |
  > |        if (x.r(msg.sender) != 0x0) {
    |            x.r(msg.sender).transfer(msg.value / 20);
    |            emit LogReferralInvestment(x.r(msg.sender), msg.sender, msg.value);
  at /home/jiaming/mavs_srcs/contract@0xa9fa841e2b56be2d8b645819b46fedfd9e331206.sol(240)

[33mWarning[0m for UnhandledException in contract 'SmartPyramid':
    |
    |        if (x.r(msg.sender) != 0x0) {
  > |            x.r(msg.sender).transfer(msg.value / 20);
    |            emit LogReferralInvestment(x.r(msg.sender), msg.sender, msg.value);
    |            emit LogIncome(x.r(msg.sender), msg.value / 20, "referral");
  at /home/jiaming/mavs_srcs/contract@0xa9fa841e2b56be2d8b645819b46fedfd9e331206.sol(241)

[33mWarning[0m for UnhandledException in contract 'SmartPyramid':
    |        if (x.r(msg.sender) != 0x0) {
    |            x.r(msg.sender).transfer(msg.value / 20);
  > |            emit LogReferralInvestment(x.r(msg.sender), msg.sender, msg.value);
    |            emit LogIncome(x.r(msg.sender), msg.value / 20, "referral");
    |        } else if (msg.data.length == 20) {
  at /home/jiaming/mavs_srcs/contract@0xa9fa841e2b56be2d8b645819b46fedfd9e331206.sol(242)

[33mWarning[0m for UnhandledException in contract 'SmartPyramid':
    |            x.r(msg.sender).transfer(msg.value / 20);
    |            emit LogReferralInvestment(x.r(msg.sender), msg.sender, msg.value);
  > |            emit LogIncome(x.r(msg.sender), msg.value / 20, "referral");
    |        } else if (msg.data.length == 20) {
    |            addReferrer(msg.value);
  at /home/jiaming/mavs_srcs/contract@0xa9fa841e2b56be2d8b645819b46fedfd9e331206.sol(243)

[33mWarning[0m for UnhandledException in contract 'SmartPyramid':
    |    function withdraw() notOnPause public {
    |
  > |        if (block.timestamp >= x.c(msg.sender) + 10 minutes) {
    |            uint _payout = (x.d(msg.sender).mul(x.getInterest(msg.sender)).div(10000)).mul(block.timestamp.sub(x.c(msg.sender))).div(1 days);
    |            x.updateCheckpoint(msg.sender);
  at /home/jiaming/mavs_srcs/contract@0xa9fa841e2b56be2d8b645819b46fedfd9e331206.sol(254)

[33mWarning[0m for UnhandledException in contract 'SmartPyramid':
    |
    |        if (block.timestamp >= x.c(msg.sender) + 10 minutes) {
  > |            uint _payout = (x.d(msg.sender).mul(x.getInterest(msg.sender)).div(10000)).mul(block.timestamp.sub(x.c(msg.sender))).div(1 days);
    |            x.updateCheckpoint(msg.sender);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xa9fa841e2b56be2d8b645819b46fedfd9e331206.sol(255)

[33mWarning[0m for UnhandledException in contract 'SmartPyramid':
    |        if (block.timestamp >= x.c(msg.sender) + 10 minutes) {
    |            uint _payout = (x.d(msg.sender).mul(x.getInterest(msg.sender)).div(10000)).mul(block.timestamp.sub(x.c(msg.sender))).div(1 days);
  > |            x.updateCheckpoint(msg.sender);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0xa9fa841e2b56be2d8b645819b46fedfd9e331206.sol(256)

[33mWarning[0m for UnhandledException in contract 'SmartPyramid':
    |            }
    |
  > |            msg.sender.transfer(_payout);
    |            emit LogIncome(msg.sender, _payout, "withdrawn");
    |        }
  at /home/jiaming/mavs_srcs/contract@0xa9fa841e2b56be2d8b645819b46fedfd9e331206.sol(266)

[33mWarning[0m for UnhandledException in contract 'SmartPyramid':
    |        for (uint i = 0; i <= 2; i++) {
    |            if (top[i+1].addr != 0x0) {
  > |                top[i+1].addr.transfer(2 ether / 2 ** i);
    |                top[i+1] = Leader(0x0, 0);
    |            }
  at /home/jiaming/mavs_srcs/contract@0xa9fa841e2b56be2d8b645819b46fedfd9e331206.sol(294)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SmartPyramid':
    |        address _referrer = bytesToAddress(bytes(msg.data));
    |        if (_referrer != msg.sender) {
  > |            x.addReferrer(msg.sender, _referrer);
    |            x.r(msg.sender).transfer(_value / 20);
    |            emit LogReferralInvestment(_referrer, msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0xa9fa841e2b56be2d8b645819b46fedfd9e331206.sol(193)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SmartPyramid':
    |        if (_referrer != msg.sender) {
    |            x.addReferrer(msg.sender, _referrer);
  > |            x.r(msg.sender).transfer(_value / 20);
    |            emit LogReferralInvestment(_referrer, msg.sender, _value);
    |            emit LogIncome(_referrer, _value / 20, "referral");
  at /home/jiaming/mavs_srcs/contract@0xa9fa841e2b56be2d8b645819b46fedfd9e331206.sol(194)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SmartPyramid':
    |
    |    function getInfo(address _address) external view returns(uint deposit, uint amountToWithdraw) {
  > |        deposit = x.d(_address);
    |        if (block.timestamp >= x.c(_address) + 10 minutes) {
    |            amountToWithdraw = (x.d(_address).mul(x.getInterest(_address)).div(10000)).mul(block.timestamp.sub(x.c(_address))).div(1 days);
  at /home/jiaming/mavs_srcs/contract@0xa9fa841e2b56be2d8b645819b46fedfd9e331206.sol(206)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SmartPyramid':
    |    function getInfo(address _address) external view returns(uint deposit, uint amountToWithdraw) {
    |        deposit = x.d(_address);
  > |        if (block.timestamp >= x.c(_address) + 10 minutes) {
    |            amountToWithdraw = (x.d(_address).mul(x.getInterest(_address)).div(10000)).mul(block.timestamp.sub(x.c(_address))).div(1 days);
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0xa9fa841e2b56be2d8b645819b46fedfd9e331206.sol(207)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SmartPyramid':
    |        deposit = x.d(_address);
    |        if (block.timestamp >= x.c(_address) + 10 minutes) {
  > |            amountToWithdraw = (x.d(_address).mul(x.getInterest(_address)).div(10000)).mul(block.timestamp.sub(x.c(_address))).div(1 days);
    |        } else {
    |            amountToWithdraw = 0;
  at /home/jiaming/mavs_srcs/contract@0xa9fa841e2b56be2d8b645819b46fedfd9e331206.sol(208)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SmartPyramid':
    |        admin.transfer(msg.value * 4 / 25);
    |
  > |        if (x.d(msg.sender) > 0) {
    |            withdraw();
    |        }
  at /home/jiaming/mavs_srcs/contract@0xa9fa841e2b56be2d8b645819b46fedfd9e331206.sol(230)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SmartPyramid':
    |        }
    |
  > |        x.updateInfo(msg.sender, msg.value);
    |
    |        if (msg.value > top[3].deposit) {
  at /home/jiaming/mavs_srcs/contract@0xa9fa841e2b56be2d8b645819b46fedfd9e331206.sol(234)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SmartPyramid':
    |        }
    |
  > |        if (x.r(msg.sender) != 0x0) {
    |            x.r(msg.sender).transfer(msg.value / 20);
    |            emit LogReferralInvestment(x.r(msg.sender), msg.sender, msg.value);
  at /home/jiaming/mavs_srcs/contract@0xa9fa841e2b56be2d8b645819b46fedfd9e331206.sol(240)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SmartPyramid':
    |
    |        if (x.r(msg.sender) != 0x0) {
  > |            x.r(msg.sender).transfer(msg.value / 20);
    |            emit LogReferralInvestment(x.r(msg.sender), msg.sender, msg.value);
    |            emit LogIncome(x.r(msg.sender), msg.value / 20, "referral");
  at /home/jiaming/mavs_srcs/contract@0xa9fa841e2b56be2d8b645819b46fedfd9e331206.sol(241)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SmartPyramid':
    |        if (x.r(msg.sender) != 0x0) {
    |            x.r(msg.sender).transfer(msg.value / 20);
  > |            emit LogReferralInvestment(x.r(msg.sender), msg.sender, msg.value);
    |            emit LogIncome(x.r(msg.sender), msg.value / 20, "referral");
    |        } else if (msg.data.length == 20) {
  at /home/jiaming/mavs_srcs/contract@0xa9fa841e2b56be2d8b645819b46fedfd9e331206.sol(242)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SmartPyramid':
    |            x.r(msg.sender).transfer(msg.value / 20);
    |            emit LogReferralInvestment(x.r(msg.sender), msg.sender, msg.value);
  > |            emit LogIncome(x.r(msg.sender), msg.value / 20, "referral");
    |        } else if (msg.data.length == 20) {
    |            addReferrer(msg.value);
  at /home/jiaming/mavs_srcs/contract@0xa9fa841e2b56be2d8b645819b46fedfd9e331206.sol(243)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SmartPyramid':
    |    function withdraw() notOnPause public {
    |
  > |        if (block.timestamp >= x.c(msg.sender) + 10 minutes) {
    |            uint _payout = (x.d(msg.sender).mul(x.getInterest(msg.sender)).div(10000)).mul(block.timestamp.sub(x.c(msg.sender))).div(1 days);
    |            x.updateCheckpoint(msg.sender);
  at /home/jiaming/mavs_srcs/contract@0xa9fa841e2b56be2d8b645819b46fedfd9e331206.sol(254)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SmartPyramid':
    |
    |        if (block.timestamp >= x.c(msg.sender) + 10 minutes) {
  > |            uint _payout = (x.d(msg.sender).mul(x.getInterest(msg.sender)).div(10000)).mul(block.timestamp.sub(x.c(msg.sender))).div(1 days);
    |            x.updateCheckpoint(msg.sender);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xa9fa841e2b56be2d8b645819b46fedfd9e331206.sol(255)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SmartPyramid':
    |        if (block.timestamp >= x.c(msg.sender) + 10 minutes) {
    |            uint _payout = (x.d(msg.sender).mul(x.getInterest(msg.sender)).div(10000)).mul(block.timestamp.sub(x.c(msg.sender))).div(1 days);
  > |            x.updateCheckpoint(msg.sender);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0xa9fa841e2b56be2d8b645819b46fedfd9e331206.sol(256)

[31mViolation[0m for UnrestrictedWrite in contract 'SmartPyramid':
    |    function toTheTop() internal {
    |        if (msg.value <= top[2].deposit) {
  > |            top[3] = Leader(msg.sender, msg.value);
    |        } else {
    |            if (msg.value <= top[1].deposit) {
  at /home/jiaming/mavs_srcs/contract@0xa9fa841e2b56be2d8b645819b46fedfd9e331206.sol(273)

[31mViolation[0m for UnrestrictedWrite in contract 'SmartPyramid':
    |        } else {
    |            if (msg.value <= top[1].deposit) {
  > |                top[3] = top[2];
    |                top[2] = Leader(msg.sender, msg.value);
    |            } else {
  at /home/jiaming/mavs_srcs/contract@0xa9fa841e2b56be2d8b645819b46fedfd9e331206.sol(276)

[31mViolation[0m for UnrestrictedWrite in contract 'SmartPyramid':
    |            if (msg.value <= top[1].deposit) {
    |                top[3] = top[2];
  > |                top[2] = Leader(msg.sender, msg.value);
    |            } else {
    |                top[3] = top[2];
  at /home/jiaming/mavs_srcs/contract@0xa9fa841e2b56be2d8b645819b46fedfd9e331206.sol(277)

[31mViolation[0m for UnrestrictedWrite in contract 'SmartPyramid':
    |                top[2] = Leader(msg.sender, msg.value);
    |            } else {
  > |                top[3] = top[2];
    |                top[2] = top[1];
    |                top[1] = Leader(msg.sender, msg.value);
  at /home/jiaming/mavs_srcs/contract@0xa9fa841e2b56be2d8b645819b46fedfd9e331206.sol(279)

[31mViolation[0m for UnrestrictedWrite in contract 'SmartPyramid':
    |            } else {
    |                top[3] = top[2];
  > |                top[2] = top[1];
    |                top[1] = Leader(msg.sender, msg.value);
    |            }
  at /home/jiaming/mavs_srcs/contract@0xa9fa841e2b56be2d8b645819b46fedfd9e331206.sol(280)

[31mViolation[0m for UnrestrictedWrite in contract 'SmartPyramid':
    |                top[3] = top[2];
    |                top[2] = top[1];
  > |                top[1] = Leader(msg.sender, msg.value);
    |            }
    |        }
  at /home/jiaming/mavs_srcs/contract@0xa9fa841e2b56be2d8b645819b46fedfd9e331206.sol(281)

[31mViolation[0m for UnrestrictedWrite in contract 'SmartPyramid':
    |    function payDay() external {
    |        require(block.timestamp >= nextPayDay);
  > |        nextPayDay = block.timestamp.sub((block.timestamp - 1538388000).mod(7 days)).add(7 days);
    |
    |        emit LogGift(top[1].addr, top[1].deposit, top[2].addr, top[2].deposit, top[3].addr, top[3].deposit);
  at /home/jiaming/mavs_srcs/contract@0xa9fa841e2b56be2d8b645819b46fedfd9e331206.sol(288)

[31mViolation[0m for UnrestrictedWrite in contract 'SmartPyramid':
    |            if (top[i+1].addr != 0x0) {
    |                top[i+1].addr.transfer(2 ether / 2 ** i);
  > |                top[i+1] = Leader(0x0, 0);
    |            }
    |        }
  at /home/jiaming/mavs_srcs/contract@0xa9fa841e2b56be2d8b645819b46fedfd9e331206.sol(295)

[31mViolation[0m for UnrestrictedWrite in contract 'SmartPyramid':
    |    function nextWave() private {
    |        for (uint i = 0; i <= 2; i++) {
  > |            top[i+1] = Leader(0x0, 0);
    |        }
    |        x = new InvestorsStorage();
  at /home/jiaming/mavs_srcs/contract@0xa9fa841e2b56be2d8b645819b46fedfd9e331206.sol(302)

[31mViolation[0m for UnrestrictedWrite in contract 'SmartPyramid':
    |            top[i+1] = Leader(0x0, 0);
    |        }
  > |        x = new InvestorsStorage();
    |        waveStartUp = block.timestamp + 7 days;
    |        emit LogNewWave(waveStartUp);
  at /home/jiaming/mavs_srcs/contract@0xa9fa841e2b56be2d8b645819b46fedfd9e331206.sol(304)

[31mViolation[0m for UnrestrictedWrite in contract 'SmartPyramid':
    |        }
    |        x = new InvestorsStorage();
  > |        waveStartUp = block.timestamp + 7 days;
    |        emit LogNewWave(waveStartUp);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa9fa841e2b56be2d8b645819b46fedfd9e331206.sol(305)


