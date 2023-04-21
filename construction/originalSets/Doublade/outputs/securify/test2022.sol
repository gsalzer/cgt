Processing contract: /home/jiaming/mavs_srcs/contract@0x83928d7a16e0cbdf77d555c405a3975d11dcf0fa.sol:Etherhero
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x83928d7a16e0cbdf77d555c405a3975d11dcf0fa.sol:EtherheroStabilizationFund
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x83928d7a16e0cbdf77d555c405a3975d11dcf0fa.sol:SafeMath
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
  at /home/jiaming/mavs_srcs/contract@0x83928d7a16e0cbdf77d555c405a3975d11dcf0fa.sol(215)

[31mViolation[0m for DAOConstantGas in contract 'Etherhero':
    |            userTime[msg.sender] = now;
    |            insertBeneficiaries(msg.sender, 0, 0, msg.value);
  > |            projectFund.transfer(calcProjectPercent);
    |            stubF.call.value(calcStubFundPercent).gas(estGas)();
    |            counterDeposits += msg.value;
  at /home/jiaming/mavs_srcs/contract@0x83928d7a16e0cbdf77d555c405a3975d11dcf0fa.sol(238)

[31mViolation[0m for DAOConstantGas in contract 'Etherhero':
    |            insertBeneficiaries(msg.sender, 0, 0, msg.value);
    |            projectFund.transfer(calcProjectPercent);
  > |            stubF.call.value(calcStubFundPercent).gas(estGas)();
    |            counterDeposits += msg.value;
    |            emit NewDeposit(msg.sender, msg.value);
  at /home/jiaming/mavs_srcs/contract@0x83928d7a16e0cbdf77d555c405a3975d11dcf0fa.sol(239)

[33mWarning[0m for LockedEther in contract 'Etherhero':
    |}
    |
  > |contract Etherhero{
    |
    |    using SafeMath
  at /home/jiaming/mavs_srcs/contract@0x83928d7a16e0cbdf77d555c405a3975d11dcf0fa.sol(78)

[33mWarning[0m for TODAmount in contract 'Etherhero':
    |        uint rate = userDeposit[msg.sender].mul(standartPercent).div(1000).mul(payoutRatio);
    |        userTime[msg.sender] = now;
  > |        msg.sender.transfer(rate);
    |        counterPercents += rate;
    |        timeLastayment = now;
  at /home/jiaming/mavs_srcs/contract@0x83928d7a16e0cbdf77d555c405a3975d11dcf0fa.sol(215)

[33mWarning[0m for TODAmount in contract 'Etherhero':
    |            userTime[msg.sender] = now;
    |            insertBeneficiaries(msg.sender, 0, 0, msg.value);
  > |            projectFund.transfer(calcProjectPercent);
    |            stubF.call.value(calcStubFundPercent).gas(estGas)();
    |            counterDeposits += msg.value;
  at /home/jiaming/mavs_srcs/contract@0x83928d7a16e0cbdf77d555c405a3975d11dcf0fa.sol(238)

[33mWarning[0m for TODAmount in contract 'Etherhero':
    |            insertBeneficiaries(msg.sender, 0, 0, msg.value);
    |            projectFund.transfer(calcProjectPercent);
  > |            stubF.call.value(calcStubFundPercent).gas(estGas)();
    |            counterDeposits += msg.value;
    |            emit NewDeposit(msg.sender, msg.value);
  at /home/jiaming/mavs_srcs/contract@0x83928d7a16e0cbdf77d555c405a3975d11dcf0fa.sol(239)

[33mWarning[0m for TODReceiver in contract 'Etherhero':
    |        uint rate = userDeposit[msg.sender].mul(standartPercent).div(1000).mul(payoutRatio);
    |        userTime[msg.sender] = now;
  > |        msg.sender.transfer(rate);
    |        counterPercents += rate;
    |        timeLastayment = now;
  at /home/jiaming/mavs_srcs/contract@0x83928d7a16e0cbdf77d555c405a3975d11dcf0fa.sol(215)

[31mViolation[0m for UnhandledException in contract 'Etherhero':
    |            insertBeneficiaries(msg.sender, 0, 0, msg.value);
    |            projectFund.transfer(calcProjectPercent);
  > |            stubF.call.value(calcStubFundPercent).gas(estGas)();
    |            counterDeposits += msg.value;
    |            emit NewDeposit(msg.sender, msg.value);
  at /home/jiaming/mavs_srcs/contract@0x83928d7a16e0cbdf77d555c405a3975d11dcf0fa.sol(239)

[33mWarning[0m for UnhandledException in contract 'Etherhero':
    |        if(addressStub.balance > 0){
    |            if (address(this).balance < balanceLimit) {
  > |                stubF.ReturnEthToEtherhero();
    |            }
    |        }
  at /home/jiaming/mavs_srcs/contract@0x83928d7a16e0cbdf77d555c405a3975d11dcf0fa.sol(207)

[33mWarning[0m for UnhandledException in contract 'Etherhero':
    |        uint rate = userDeposit[msg.sender].mul(standartPercent).div(1000).mul(payoutRatio);
    |        userTime[msg.sender] = now;
  > |        msg.sender.transfer(rate);
    |        counterPercents += rate;
    |        timeLastayment = now;
  at /home/jiaming/mavs_srcs/contract@0x83928d7a16e0cbdf77d555c405a3975d11dcf0fa.sol(215)

[33mWarning[0m for UnhandledException in contract 'Etherhero':
    |            userTime[msg.sender] = now;
    |            insertBeneficiaries(msg.sender, 0, 0, msg.value);
  > |            projectFund.transfer(calcProjectPercent);
    |            stubF.call.value(calcStubFundPercent).gas(estGas)();
    |            counterDeposits += msg.value;
  at /home/jiaming/mavs_srcs/contract@0x83928d7a16e0cbdf77d555c405a3975d11dcf0fa.sol(238)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Etherhero':
    |        if(addressStub.balance > 0){
    |            if (address(this).balance < balanceLimit) {
  > |                stubF.ReturnEthToEtherhero();
    |            }
    |        }
  at /home/jiaming/mavs_srcs/contract@0x83928d7a16e0cbdf77d555c405a3975d11dcf0fa.sol(207)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Etherhero':
    |        uint rate = userDeposit[msg.sender].mul(standartPercent).div(1000).mul(payoutRatio);
    |        userTime[msg.sender] = now;
  > |        msg.sender.transfer(rate);
    |        counterPercents += rate;
    |        timeLastayment = now;
  at /home/jiaming/mavs_srcs/contract@0x83928d7a16e0cbdf77d555c405a3975d11dcf0fa.sol(215)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Etherhero':
    |            userTime[msg.sender] = now;
    |            insertBeneficiaries(msg.sender, 0, 0, msg.value);
  > |            projectFund.transfer(calcProjectPercent);
    |            stubF.call.value(calcStubFundPercent).gas(estGas)();
    |            counterDeposits += msg.value;
  at /home/jiaming/mavs_srcs/contract@0x83928d7a16e0cbdf77d555c405a3975d11dcf0fa.sol(238)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Etherhero':
    |            insertBeneficiaries(msg.sender, 0, 0, msg.value);
    |            projectFund.transfer(calcProjectPercent);
  > |            stubF.call.value(calcStubFundPercent).gas(estGas)();
    |            counterDeposits += msg.value;
    |            emit NewDeposit(msg.sender, msg.value);
  at /home/jiaming/mavs_srcs/contract@0x83928d7a16e0cbdf77d555c405a3975d11dcf0fa.sol(239)

[33mWarning[0m for UnrestrictedWrite in contract 'Etherhero':
    |
    |        if (!s_beneficiaries.real) {
  > |            s_beneficiaries.real = true;
    |            s_beneficiaries.investorAddress = _address;
    |            s_beneficiaries.percentWithdraw = _percentWithdraw;
  at /home/jiaming/mavs_srcs/contract@0x83928d7a16e0cbdf77d555c405a3975d11dcf0fa.sol(132)

[33mWarning[0m for UnrestrictedWrite in contract 'Etherhero':
    |        if (!s_beneficiaries.real) {
    |            s_beneficiaries.real = true;
  > |            s_beneficiaries.investorAddress = _address;
    |            s_beneficiaries.percentWithdraw = _percentWithdraw;
    |            s_beneficiaries.ethWithdraw = _ethWithdraw;
  at /home/jiaming/mavs_srcs/contract@0x83928d7a16e0cbdf77d555c405a3975d11dcf0fa.sol(133)

[33mWarning[0m for UnrestrictedWrite in contract 'Etherhero':
    |            s_beneficiaries.real = true;
    |            s_beneficiaries.investorAddress = _address;
  > |            s_beneficiaries.percentWithdraw = _percentWithdraw;
    |            s_beneficiaries.ethWithdraw = _ethWithdraw;
    |            s_beneficiaries.deposits = _deposits;
  at /home/jiaming/mavs_srcs/contract@0x83928d7a16e0cbdf77d555c405a3975d11dcf0fa.sol(134)

[33mWarning[0m for UnrestrictedWrite in contract 'Etherhero':
    |            s_beneficiaries.investorAddress = _address;
    |            s_beneficiaries.percentWithdraw = _percentWithdraw;
  > |            s_beneficiaries.ethWithdraw = _ethWithdraw;
    |            s_beneficiaries.deposits = _deposits;
    |            s_beneficiaries.registerTime = now;
  at /home/jiaming/mavs_srcs/contract@0x83928d7a16e0cbdf77d555c405a3975d11dcf0fa.sol(135)

[33mWarning[0m for UnrestrictedWrite in contract 'Etherhero':
    |            s_beneficiaries.percentWithdraw = _percentWithdraw;
    |            s_beneficiaries.ethWithdraw = _ethWithdraw;
  > |            s_beneficiaries.deposits = _deposits;
    |            s_beneficiaries.registerTime = now;
    |            counterBeneficiaries += 1;
  at /home/jiaming/mavs_srcs/contract@0x83928d7a16e0cbdf77d555c405a3975d11dcf0fa.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'Etherhero':
    |            s_beneficiaries.ethWithdraw = _ethWithdraw;
    |            s_beneficiaries.deposits = _deposits;
  > |            s_beneficiaries.registerTime = now;
    |            counterBeneficiaries += 1;
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0x83928d7a16e0cbdf77d555c405a3975d11dcf0fa.sol(137)

[33mWarning[0m for UnrestrictedWrite in contract 'Etherhero':
    |            s_beneficiaries.deposits = _deposits;
    |            s_beneficiaries.registerTime = now;
  > |            counterBeneficiaries += 1;
    |        } else {
    |            s_beneficiaries.percentWithdraw += _percentWithdraw;
  at /home/jiaming/mavs_srcs/contract@0x83928d7a16e0cbdf77d555c405a3975d11dcf0fa.sol(138)

[33mWarning[0m for UnrestrictedWrite in contract 'Etherhero':
    |            counterBeneficiaries += 1;
    |        } else {
  > |            s_beneficiaries.percentWithdraw += _percentWithdraw;
    |            s_beneficiaries.ethWithdraw += _ethWithdraw;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x83928d7a16e0cbdf77d555c405a3975d11dcf0fa.sol(140)

[33mWarning[0m for UnrestrictedWrite in contract 'Etherhero':
    |        } else {
    |            s_beneficiaries.percentWithdraw += _percentWithdraw;
  > |            s_beneficiaries.ethWithdraw += _ethWithdraw;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x83928d7a16e0cbdf77d555c405a3975d11dcf0fa.sol(141)

[33mWarning[0m for UnrestrictedWrite in contract 'Etherhero':
    |
    |        uint rate = userDeposit[msg.sender].mul(standartPercent).div(1000).mul(payoutRatio);
  > |        userTime[msg.sender] = now;
    |        msg.sender.transfer(rate);
    |        counterPercents += rate;
  at /home/jiaming/mavs_srcs/contract@0x83928d7a16e0cbdf77d555c405a3975d11dcf0fa.sol(214)

[33mWarning[0m for UnrestrictedWrite in contract 'Etherhero':
    |        userTime[msg.sender] = now;
    |        msg.sender.transfer(rate);
  > |        counterPercents += rate;
    |        timeLastayment = now;
    |        insertBeneficiaries(msg.sender, standartPercent, rate, 0);
  at /home/jiaming/mavs_srcs/contract@0x83928d7a16e0cbdf77d555c405a3975d11dcf0fa.sol(216)

[33mWarning[0m for UnrestrictedWrite in contract 'Etherhero':
    |        msg.sender.transfer(rate);
    |        counterPercents += rate;
  > |        timeLastayment = now;
    |        insertBeneficiaries(msg.sender, standartPercent, rate, 0);
    |        emit dividendPayment(msg.sender, rate);
  at /home/jiaming/mavs_srcs/contract@0x83928d7a16e0cbdf77d555c405a3975d11dcf0fa.sol(217)

[33mWarning[0m for UnrestrictedWrite in contract 'Etherhero':
    |            }
    |            
  > |            userDeposit[msg.sender] = userDeposit[msg.sender].add(msg.value);
    |            userTime[msg.sender] = now;
    |            insertBeneficiaries(msg.sender, 0, 0, msg.value);
  at /home/jiaming/mavs_srcs/contract@0x83928d7a16e0cbdf77d555c405a3975d11dcf0fa.sol(235)

[33mWarning[0m for UnrestrictedWrite in contract 'Etherhero':
    |            
    |            userDeposit[msg.sender] = userDeposit[msg.sender].add(msg.value);
  > |            userTime[msg.sender] = now;
    |            insertBeneficiaries(msg.sender, 0, 0, msg.value);
    |            projectFund.transfer(calcProjectPercent);
  at /home/jiaming/mavs_srcs/contract@0x83928d7a16e0cbdf77d555c405a3975d11dcf0fa.sol(236)

[33mWarning[0m for UnrestrictedWrite in contract 'Etherhero':
    |            projectFund.transfer(calcProjectPercent);
    |            stubF.call.value(calcStubFundPercent).gas(estGas)();
  > |            counterDeposits += msg.value;
    |            emit NewDeposit(msg.sender, msg.value);
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0x83928d7a16e0cbdf77d555c405a3975d11dcf0fa.sol(240)

[31mViolation[0m for DAOConstantGas in contract 'EtherheroStabilizationFund':
    |        require(balance > estGas, 'Not enough funds for transaction');
    |
  > |        if (etherHero.call.value(address(this).balance).gas(estGas)()) {
    |            emit MoneyWithdraw(balance);
    |            investFund = address(this).balance;
  at /home/jiaming/mavs_srcs/contract@0x83928d7a16e0cbdf77d555c405a3975d11dcf0fa.sol(63)

[33mWarning[0m for LockedEther in contract 'EtherheroStabilizationFund':
    | * stabilization the contract of the stabilization fund provides backup support to the investment fund. 
    | */
  > |contract EtherheroStabilizationFund {
    |
    |    address public etherHero;
  at /home/jiaming/mavs_srcs/contract@0x83928d7a16e0cbdf77d555c405a3975d11dcf0fa.sol(39)

[33mWarning[0m for MissingInputValidation in contract 'EtherheroStabilizationFund':
    |contract EtherheroStabilizationFund {
    |
  > |    address public etherHero;
    |    uint public investFund;
    |    uint estGas = 200000;
  at /home/jiaming/mavs_srcs/contract@0x83928d7a16e0cbdf77d555c405a3975d11dcf0fa.sol(41)

[33mWarning[0m for MissingInputValidation in contract 'EtherheroStabilizationFund':
    |
    |    address public etherHero;
  > |    uint public investFund;
    |    uint estGas = 200000;
    |    event MoneyWithdraw(uint balance);
  at /home/jiaming/mavs_srcs/contract@0x83928d7a16e0cbdf77d555c405a3975d11dcf0fa.sol(42)

[33mWarning[0m for MissingInputValidation in contract 'EtherheroStabilizationFund':
    |    }
    |
  > |    function ReturnEthToEtherhero() public onlyHero returns(bool) {
    |
    |        uint balance = address(this).balance;
  at /home/jiaming/mavs_srcs/contract@0x83928d7a16e0cbdf77d555c405a3975d11dcf0fa.sol(58)

[31mViolation[0m for TODAmount in contract 'EtherheroStabilizationFund':
    |        require(balance > estGas, 'Not enough funds for transaction');
    |
  > |        if (etherHero.call.value(address(this).balance).gas(estGas)()) {
    |            emit MoneyWithdraw(balance);
    |            investFund = address(this).balance;
  at /home/jiaming/mavs_srcs/contract@0x83928d7a16e0cbdf77d555c405a3975d11dcf0fa.sol(63)

[33mWarning[0m for TODReceiver in contract 'EtherheroStabilizationFund':
    |        require(balance > estGas, 'Not enough funds for transaction');
    |
  > |        if (etherHero.call.value(address(this).balance).gas(estGas)()) {
    |            emit MoneyWithdraw(balance);
    |            investFund = address(this).balance;
  at /home/jiaming/mavs_srcs/contract@0x83928d7a16e0cbdf77d555c405a3975d11dcf0fa.sol(63)

[33mWarning[0m for UnhandledException in contract 'EtherheroStabilizationFund':
    |        require(balance > estGas, 'Not enough funds for transaction');
    |
  > |        if (etherHero.call.value(address(this).balance).gas(estGas)()) {
    |            emit MoneyWithdraw(balance);
    |            investFund = address(this).balance;
  at /home/jiaming/mavs_srcs/contract@0x83928d7a16e0cbdf77d555c405a3975d11dcf0fa.sol(63)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EtherheroStabilizationFund':
    |        require(balance > estGas, 'Not enough funds for transaction');
    |
  > |        if (etherHero.call.value(address(this).balance).gas(estGas)()) {
    |            emit MoneyWithdraw(balance);
    |            investFund = address(this).balance;
  at /home/jiaming/mavs_srcs/contract@0x83928d7a16e0cbdf77d555c405a3975d11dcf0fa.sol(63)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherheroStabilizationFund':
    |        if (etherHero.call.value(address(this).balance).gas(estGas)()) {
    |            emit MoneyWithdraw(balance);
  > |            investFund = address(this).balance;
    |            return true;
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0x83928d7a16e0cbdf77d555c405a3975d11dcf0fa.sol(65)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |    function mul(uint256 a, uint256 b) internal pure returns(uint256) {
  at /home/jiaming/mavs_srcs/contract@0x83928d7a16e0cbdf77d555c405a3975d11dcf0fa.sol(7)


