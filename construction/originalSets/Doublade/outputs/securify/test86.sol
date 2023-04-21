Processing contract: /home/jiaming/mavs_srcs/contract@0x05f49e3e0a27efa05d60c19cd8f0ecc951d3717e.sol:Etherhero
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x05f49e3e0a27efa05d60c19cd8f0ecc951d3717e.sol:EtherheroStabilizationFund
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x05f49e3e0a27efa05d60c19cd8f0ecc951d3717e.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x05f49e3e0a27efa05d60c19cd8f0ecc951d3717e.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for DAOConstantGas in contract 'Etherhero':
    |        uint rate = userDeposit[msg.sender].mul(standartPercent).div(1000).mul(payoutRatio);
    |        userTime[msg.sender] = now;
  > |        msg.sender.transfer(rate);
    |        counterPercents += rate;
    |        timeLastayment = now;
  at /home/jiaming/mavs_srcs/contract@0x05f49e3e0a27efa05d60c19cd8f0ecc951d3717e.sol(241)

[31mViolation[0m for DAOConstantGas in contract 'Etherhero':
    |            userTime[msg.sender] = now;
    |            insertBeneficiaries(msg.sender, 0, 0, msg.value);
  > |            projectFund.transfer(calcProjectPercent);
    |            stubF.call.value(calcStubFundPercent).gas(estGas)();
    |            counterDeposits += msg.value;
  at /home/jiaming/mavs_srcs/contract@0x05f49e3e0a27efa05d60c19cd8f0ecc951d3717e.sol(264)

[31mViolation[0m for DAOConstantGas in contract 'Etherhero':
    |            insertBeneficiaries(msg.sender, 0, 0, msg.value);
    |            projectFund.transfer(calcProjectPercent);
  > |            stubF.call.value(calcStubFundPercent).gas(estGas)();
    |            counterDeposits += msg.value;
    |            emit NewDeposit(msg.sender, msg.value);
  at /home/jiaming/mavs_srcs/contract@0x05f49e3e0a27efa05d60c19cd8f0ecc951d3717e.sol(265)

[33mWarning[0m for LockedEther in contract 'Etherhero':
    |}
    |
  > |contract Etherhero is Ownable {
    |
    |    using SafeMath
  at /home/jiaming/mavs_srcs/contract@0x05f49e3e0a27efa05d60c19cd8f0ecc951d3717e.sol(104)

[33mWarning[0m for TODAmount in contract 'Etherhero':
    |        uint rate = userDeposit[msg.sender].mul(standartPercent).div(1000).mul(payoutRatio);
    |        userTime[msg.sender] = now;
  > |        msg.sender.transfer(rate);
    |        counterPercents += rate;
    |        timeLastayment = now;
  at /home/jiaming/mavs_srcs/contract@0x05f49e3e0a27efa05d60c19cd8f0ecc951d3717e.sol(241)

[33mWarning[0m for TODAmount in contract 'Etherhero':
    |            userTime[msg.sender] = now;
    |            insertBeneficiaries(msg.sender, 0, 0, msg.value);
  > |            projectFund.transfer(calcProjectPercent);
    |            stubF.call.value(calcStubFundPercent).gas(estGas)();
    |            counterDeposits += msg.value;
  at /home/jiaming/mavs_srcs/contract@0x05f49e3e0a27efa05d60c19cd8f0ecc951d3717e.sol(264)

[33mWarning[0m for TODAmount in contract 'Etherhero':
    |            insertBeneficiaries(msg.sender, 0, 0, msg.value);
    |            projectFund.transfer(calcProjectPercent);
  > |            stubF.call.value(calcStubFundPercent).gas(estGas)();
    |            counterDeposits += msg.value;
    |            emit NewDeposit(msg.sender, msg.value);
  at /home/jiaming/mavs_srcs/contract@0x05f49e3e0a27efa05d60c19cd8f0ecc951d3717e.sol(265)

[33mWarning[0m for TODReceiver in contract 'Etherhero':
    |        uint rate = userDeposit[msg.sender].mul(standartPercent).div(1000).mul(payoutRatio);
    |        userTime[msg.sender] = now;
  > |        msg.sender.transfer(rate);
    |        counterPercents += rate;
    |        timeLastayment = now;
  at /home/jiaming/mavs_srcs/contract@0x05f49e3e0a27efa05d60c19cd8f0ecc951d3717e.sol(241)

[31mViolation[0m for UnhandledException in contract 'Etherhero':
    |            insertBeneficiaries(msg.sender, 0, 0, msg.value);
    |            projectFund.transfer(calcProjectPercent);
  > |            stubF.call.value(calcStubFundPercent).gas(estGas)();
    |            counterDeposits += msg.value;
    |            emit NewDeposit(msg.sender, msg.value);
  at /home/jiaming/mavs_srcs/contract@0x05f49e3e0a27efa05d60c19cd8f0ecc951d3717e.sol(265)

[33mWarning[0m for UnhandledException in contract 'Etherhero':
    |        if(addressStub.balance > 0){
    |            if (address(this).balance < balanceLimit) {
  > |                stubF.ReturnEthToEtherhero();
    |            }
    |        }
  at /home/jiaming/mavs_srcs/contract@0x05f49e3e0a27efa05d60c19cd8f0ecc951d3717e.sol(233)

[33mWarning[0m for UnhandledException in contract 'Etherhero':
    |        uint rate = userDeposit[msg.sender].mul(standartPercent).div(1000).mul(payoutRatio);
    |        userTime[msg.sender] = now;
  > |        msg.sender.transfer(rate);
    |        counterPercents += rate;
    |        timeLastayment = now;
  at /home/jiaming/mavs_srcs/contract@0x05f49e3e0a27efa05d60c19cd8f0ecc951d3717e.sol(241)

[33mWarning[0m for UnhandledException in contract 'Etherhero':
    |            userTime[msg.sender] = now;
    |            insertBeneficiaries(msg.sender, 0, 0, msg.value);
  > |            projectFund.transfer(calcProjectPercent);
    |            stubF.call.value(calcStubFundPercent).gas(estGas)();
    |            counterDeposits += msg.value;
  at /home/jiaming/mavs_srcs/contract@0x05f49e3e0a27efa05d60c19cd8f0ecc951d3717e.sol(264)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Etherhero':
    |        if(addressStub.balance > 0){
    |            if (address(this).balance < balanceLimit) {
  > |                stubF.ReturnEthToEtherhero();
    |            }
    |        }
  at /home/jiaming/mavs_srcs/contract@0x05f49e3e0a27efa05d60c19cd8f0ecc951d3717e.sol(233)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Etherhero':
    |        uint rate = userDeposit[msg.sender].mul(standartPercent).div(1000).mul(payoutRatio);
    |        userTime[msg.sender] = now;
  > |        msg.sender.transfer(rate);
    |        counterPercents += rate;
    |        timeLastayment = now;
  at /home/jiaming/mavs_srcs/contract@0x05f49e3e0a27efa05d60c19cd8f0ecc951d3717e.sol(241)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Etherhero':
    |            userTime[msg.sender] = now;
    |            insertBeneficiaries(msg.sender, 0, 0, msg.value);
  > |            projectFund.transfer(calcProjectPercent);
    |            stubF.call.value(calcStubFundPercent).gas(estGas)();
    |            counterDeposits += msg.value;
  at /home/jiaming/mavs_srcs/contract@0x05f49e3e0a27efa05d60c19cd8f0ecc951d3717e.sol(264)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Etherhero':
    |            insertBeneficiaries(msg.sender, 0, 0, msg.value);
    |            projectFund.transfer(calcProjectPercent);
  > |            stubF.call.value(calcStubFundPercent).gas(estGas)();
    |            counterDeposits += msg.value;
    |            emit NewDeposit(msg.sender, msg.value);
  at /home/jiaming/mavs_srcs/contract@0x05f49e3e0a27efa05d60c19cd8f0ecc951d3717e.sol(265)

[33mWarning[0m for UnrestrictedWrite in contract 'Etherhero':
    |
    |        if (!s_beneficiaries.real) {
  > |            s_beneficiaries.real = true;
    |            s_beneficiaries.investorAddress = _address;
    |            s_beneficiaries.percentWithdraw = _percentWithdraw;
  at /home/jiaming/mavs_srcs/contract@0x05f49e3e0a27efa05d60c19cd8f0ecc951d3717e.sol(158)

[33mWarning[0m for UnrestrictedWrite in contract 'Etherhero':
    |        if (!s_beneficiaries.real) {
    |            s_beneficiaries.real = true;
  > |            s_beneficiaries.investorAddress = _address;
    |            s_beneficiaries.percentWithdraw = _percentWithdraw;
    |            s_beneficiaries.ethWithdraw = _ethWithdraw;
  at /home/jiaming/mavs_srcs/contract@0x05f49e3e0a27efa05d60c19cd8f0ecc951d3717e.sol(159)

[33mWarning[0m for UnrestrictedWrite in contract 'Etherhero':
    |            s_beneficiaries.real = true;
    |            s_beneficiaries.investorAddress = _address;
  > |            s_beneficiaries.percentWithdraw = _percentWithdraw;
    |            s_beneficiaries.ethWithdraw = _ethWithdraw;
    |            s_beneficiaries.deposits = _deposits;
  at /home/jiaming/mavs_srcs/contract@0x05f49e3e0a27efa05d60c19cd8f0ecc951d3717e.sol(160)

[33mWarning[0m for UnrestrictedWrite in contract 'Etherhero':
    |            s_beneficiaries.investorAddress = _address;
    |            s_beneficiaries.percentWithdraw = _percentWithdraw;
  > |            s_beneficiaries.ethWithdraw = _ethWithdraw;
    |            s_beneficiaries.deposits = _deposits;
    |            s_beneficiaries.registerTime = now;
  at /home/jiaming/mavs_srcs/contract@0x05f49e3e0a27efa05d60c19cd8f0ecc951d3717e.sol(161)

[33mWarning[0m for UnrestrictedWrite in contract 'Etherhero':
    |            s_beneficiaries.percentWithdraw = _percentWithdraw;
    |            s_beneficiaries.ethWithdraw = _ethWithdraw;
  > |            s_beneficiaries.deposits = _deposits;
    |            s_beneficiaries.registerTime = now;
    |            counterBeneficiaries += 1;
  at /home/jiaming/mavs_srcs/contract@0x05f49e3e0a27efa05d60c19cd8f0ecc951d3717e.sol(162)

[33mWarning[0m for UnrestrictedWrite in contract 'Etherhero':
    |            s_beneficiaries.ethWithdraw = _ethWithdraw;
    |            s_beneficiaries.deposits = _deposits;
  > |            s_beneficiaries.registerTime = now;
    |            counterBeneficiaries += 1;
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0x05f49e3e0a27efa05d60c19cd8f0ecc951d3717e.sol(163)

[33mWarning[0m for UnrestrictedWrite in contract 'Etherhero':
    |            s_beneficiaries.deposits = _deposits;
    |            s_beneficiaries.registerTime = now;
  > |            counterBeneficiaries += 1;
    |        } else {
    |            s_beneficiaries.percentWithdraw += _percentWithdraw;
  at /home/jiaming/mavs_srcs/contract@0x05f49e3e0a27efa05d60c19cd8f0ecc951d3717e.sol(164)

[33mWarning[0m for UnrestrictedWrite in contract 'Etherhero':
    |            counterBeneficiaries += 1;
    |        } else {
  > |            s_beneficiaries.percentWithdraw += _percentWithdraw;
    |            s_beneficiaries.ethWithdraw += _ethWithdraw;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x05f49e3e0a27efa05d60c19cd8f0ecc951d3717e.sol(166)

[33mWarning[0m for UnrestrictedWrite in contract 'Etherhero':
    |        } else {
    |            s_beneficiaries.percentWithdraw += _percentWithdraw;
  > |            s_beneficiaries.ethWithdraw += _ethWithdraw;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x05f49e3e0a27efa05d60c19cd8f0ecc951d3717e.sol(167)

[33mWarning[0m for UnrestrictedWrite in contract 'Etherhero':
    |
    |        uint rate = userDeposit[msg.sender].mul(standartPercent).div(1000).mul(payoutRatio);
  > |        userTime[msg.sender] = now;
    |        msg.sender.transfer(rate);
    |        counterPercents += rate;
  at /home/jiaming/mavs_srcs/contract@0x05f49e3e0a27efa05d60c19cd8f0ecc951d3717e.sol(240)

[33mWarning[0m for UnrestrictedWrite in contract 'Etherhero':
    |        userTime[msg.sender] = now;
    |        msg.sender.transfer(rate);
  > |        counterPercents += rate;
    |        timeLastayment = now;
    |        insertBeneficiaries(msg.sender, standartPercent, rate, 0);
  at /home/jiaming/mavs_srcs/contract@0x05f49e3e0a27efa05d60c19cd8f0ecc951d3717e.sol(242)

[33mWarning[0m for UnrestrictedWrite in contract 'Etherhero':
    |        msg.sender.transfer(rate);
    |        counterPercents += rate;
  > |        timeLastayment = now;
    |        insertBeneficiaries(msg.sender, standartPercent, rate, 0);
    |        emit dividendPayment(msg.sender, rate);
  at /home/jiaming/mavs_srcs/contract@0x05f49e3e0a27efa05d60c19cd8f0ecc951d3717e.sol(243)

[33mWarning[0m for UnrestrictedWrite in contract 'Etherhero':
    |            }
    |            
  > |            userDeposit[msg.sender] = userDeposit[msg.sender].add(msg.value);
    |            userTime[msg.sender] = now;
    |            insertBeneficiaries(msg.sender, 0, 0, msg.value);
  at /home/jiaming/mavs_srcs/contract@0x05f49e3e0a27efa05d60c19cd8f0ecc951d3717e.sol(261)

[33mWarning[0m for UnrestrictedWrite in contract 'Etherhero':
    |            
    |            userDeposit[msg.sender] = userDeposit[msg.sender].add(msg.value);
  > |            userTime[msg.sender] = now;
    |            insertBeneficiaries(msg.sender, 0, 0, msg.value);
    |            projectFund.transfer(calcProjectPercent);
  at /home/jiaming/mavs_srcs/contract@0x05f49e3e0a27efa05d60c19cd8f0ecc951d3717e.sol(262)

[33mWarning[0m for UnrestrictedWrite in contract 'Etherhero':
    |            projectFund.transfer(calcProjectPercent);
    |            stubF.call.value(calcStubFundPercent).gas(estGas)();
  > |            counterDeposits += msg.value;
    |            emit NewDeposit(msg.sender, msg.value);
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0x05f49e3e0a27efa05d60c19cd8f0ecc951d3717e.sol(266)

[31mViolation[0m for DAOConstantGas in contract 'EtherheroStabilizationFund':
    |        require(balance > estGas, 'Not enough funds for transaction');
    |
  > |        if (etherHero.call.value(address(this).balance).gas(estGas)()) {
    |            emit MoneyWithdraw(balance);
    |            investFund = address(this).balance;
  at /home/jiaming/mavs_srcs/contract@0x05f49e3e0a27efa05d60c19cd8f0ecc951d3717e.sol(89)

[33mWarning[0m for LockedEther in contract 'EtherheroStabilizationFund':
    | * stabilization the contract of the stabilization fund provides backup support to the investment fund. 
    | */
  > |contract EtherheroStabilizationFund {
    |
    |    address public etherHero;
  at /home/jiaming/mavs_srcs/contract@0x05f49e3e0a27efa05d60c19cd8f0ecc951d3717e.sol(65)

[33mWarning[0m for MissingInputValidation in contract 'EtherheroStabilizationFund':
    |contract EtherheroStabilizationFund {
    |
  > |    address public etherHero;
    |    uint public investFund;
    |    uint estGas = 200000;
  at /home/jiaming/mavs_srcs/contract@0x05f49e3e0a27efa05d60c19cd8f0ecc951d3717e.sol(67)

[33mWarning[0m for MissingInputValidation in contract 'EtherheroStabilizationFund':
    |
    |    address public etherHero;
  > |    uint public investFund;
    |    uint estGas = 200000;
    |    event MoneyWithdraw(uint balance);
  at /home/jiaming/mavs_srcs/contract@0x05f49e3e0a27efa05d60c19cd8f0ecc951d3717e.sol(68)

[33mWarning[0m for MissingInputValidation in contract 'EtherheroStabilizationFund':
    |    }
    |
  > |    function ReturnEthToEtherhero() public onlyHero returns(bool) {
    |
    |        uint balance = address(this).balance;
  at /home/jiaming/mavs_srcs/contract@0x05f49e3e0a27efa05d60c19cd8f0ecc951d3717e.sol(84)

[31mViolation[0m for TODAmount in contract 'EtherheroStabilizationFund':
    |        require(balance > estGas, 'Not enough funds for transaction');
    |
  > |        if (etherHero.call.value(address(this).balance).gas(estGas)()) {
    |            emit MoneyWithdraw(balance);
    |            investFund = address(this).balance;
  at /home/jiaming/mavs_srcs/contract@0x05f49e3e0a27efa05d60c19cd8f0ecc951d3717e.sol(89)

[33mWarning[0m for TODReceiver in contract 'EtherheroStabilizationFund':
    |        require(balance > estGas, 'Not enough funds for transaction');
    |
  > |        if (etherHero.call.value(address(this).balance).gas(estGas)()) {
    |            emit MoneyWithdraw(balance);
    |            investFund = address(this).balance;
  at /home/jiaming/mavs_srcs/contract@0x05f49e3e0a27efa05d60c19cd8f0ecc951d3717e.sol(89)

[33mWarning[0m for UnhandledException in contract 'EtherheroStabilizationFund':
    |        require(balance > estGas, 'Not enough funds for transaction');
    |
  > |        if (etherHero.call.value(address(this).balance).gas(estGas)()) {
    |            emit MoneyWithdraw(balance);
    |            investFund = address(this).balance;
  at /home/jiaming/mavs_srcs/contract@0x05f49e3e0a27efa05d60c19cd8f0ecc951d3717e.sol(89)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EtherheroStabilizationFund':
    |        require(balance > estGas, 'Not enough funds for transaction');
    |
  > |        if (etherHero.call.value(address(this).balance).gas(estGas)()) {
    |            emit MoneyWithdraw(balance);
    |            investFund = address(this).balance;
  at /home/jiaming/mavs_srcs/contract@0x05f49e3e0a27efa05d60c19cd8f0ecc951d3717e.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherheroStabilizationFund':
    |        if (etherHero.call.value(address(this).balance).gas(estGas)()) {
    |            emit MoneyWithdraw(balance);
  > |            investFund = address(this).balance;
    |            return true;
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0x05f49e3e0a27efa05d60c19cd8f0ecc951d3717e.sol(91)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |
    |    address public owner;
  at /home/jiaming/mavs_srcs/contract@0x05f49e3e0a27efa05d60c19cd8f0ecc951d3717e.sol(40)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |contract Ownable {
    |
  > |    address public owner;
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x05f49e3e0a27efa05d60c19cd8f0ecc951d3717e.sol(42)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |    function mul(uint256 a, uint256 b) internal pure returns(uint256) {
  at /home/jiaming/mavs_srcs/contract@0x05f49e3e0a27efa05d60c19cd8f0ecc951d3717e.sol(7)


