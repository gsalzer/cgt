Processing contract: /home/jiaming/mavs_srcs/contract@0x3b6b74df081bc0e2c4776b3ceb3d4bc61c20ad32.sol:Crowdsale
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3b6b74df081bc0e2c4776b3ceb3d4bc61c20ad32.sol:token
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for DAOConstantGas in contract 'Crowdsale':
    |        if (!minimumTargetReached || !(beneficiary == msg.sender)) throw;
    |        uint wAmount = num / den;
  > |        if (beneficiary.send(wAmount)) {
    |            FundTransfer(beneficiary, wAmount, false);
    |            resAmount -= wAmount;
  at /home/jiaming/mavs_srcs/contract@0x3b6b74df081bc0e2c4776b3ceb3d4bc61c20ad32.sol(52)

[31mViolation[0m for DAOConstantGas in contract 'Crowdsale':
    |    function devResWithdrawal() {
    |        if (!minimumTargetReached || !(beneficiary == msg.sender)) throw;
  > |        if (beneficiary.send(resAmount)) {
    |            FundTransfer(beneficiary, resAmount, false);
    |            resAmount -= resAmount;
  at /home/jiaming/mavs_srcs/contract@0x3b6b74df081bc0e2c4776b3ceb3d4bc61c20ad32.sol(61)

[31mViolation[0m for DAOConstantGas in contract 'Crowdsale':
    |            balanceOf[msg.sender] = 0;
    |            if (amount > 0) {
  > |                if (msg.sender.send(amount)) {
    |                    FundTransfer(msg.sender, amount, false);
    |                    resAmount -= amount;
  at /home/jiaming/mavs_srcs/contract@0x3b6b74df081bc0e2c4776b3ceb3d4bc61c20ad32.sol(99)

[33mWarning[0m for LockedEther in contract 'Crowdsale':
    |contract token {function transfer(address receiver, uint amount){ }}
    |
  > |contract Crowdsale {
    |    uint public amountRaised; uint public resAmount; uint public soldTokens;
    |    mapping(address => uint256) public balanceOf;
  at /home/jiaming/mavs_srcs/contract@0x3b6b74df081bc0e2c4776b3ceb3d4bc61c20ad32.sol(6)

[31mViolation[0m for MissingInputValidation in contract 'Crowdsale':
    |contract Crowdsale {
    |    uint public amountRaised; uint public resAmount; uint public soldTokens;
  > |    mapping(address => uint256) public balanceOf;
    |    event GoalReached(address beneficiary, uint amountRaised);
    |    event FundTransfer(address backer, uint amount, bool isContribution);
  at /home/jiaming/mavs_srcs/contract@0x3b6b74df081bc0e2c4776b3ceb3d4bc61c20ad32.sol(8)

[31mViolation[0m for MissingInputValidation in contract 'Crowdsale':
    |
    |    // dev function for withdraw any amount from raised funds (activate only if minimumTarget is reached)
  > |    function devWithdrawal(uint num, uint den) {
    |        if (!minimumTargetReached || !(beneficiary == msg.sender)) throw;
    |        uint wAmount = num / den;
  at /home/jiaming/mavs_srcs/contract@0x3b6b74df081bc0e2c4776b3ceb3d4bc61c20ad32.sol(49)

[31mViolation[0m for MissingInputValidation in contract 'Crowdsale':
    |
    |    // dev function for close crowdsale  
  > |    function closeCrowdsale(bool closeType) {
    |         if (beneficiary == msg.sender) {
    |            crowdsaleClosed = closeType;
  at /home/jiaming/mavs_srcs/contract@0x3b6b74df081bc0e2c4776b3ceb3d4bc61c20ad32.sol(68)

[31mViolation[0m for MissingInputValidation in contract 'Crowdsale':
    |
    |    // function for return non sold tokens to dev account after crowdsale
  > |    function returnTokens(uint tokensAmount) afterDeadline {
    |        if (!crowdsaleClosed) throw;
    |        if (beneficiary == msg.sender) {
  at /home/jiaming/mavs_srcs/contract@0x3b6b74df081bc0e2c4776b3ceb3d4bc61c20ad32.sol(85)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |
    |contract Crowdsale {
  > |    uint public amountRaised; uint public resAmount; uint public soldTokens;
    |    mapping(address => uint256) public balanceOf;
    |    event GoalReached(address beneficiary, uint amountRaised);
  at /home/jiaming/mavs_srcs/contract@0x3b6b74df081bc0e2c4776b3ceb3d4bc61c20ad32.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |    event GoalReached(address beneficiary, uint amountRaised);
    |    event FundTransfer(address backer, uint amount, bool isContribution);
  > |    bool public crowdsaleClosed = true;
    |    bool public minimumTargetReached = false;
    |
  at /home/jiaming/mavs_srcs/contract@0x3b6b74df081bc0e2c4776b3ceb3d4bc61c20ad32.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |    event FundTransfer(address backer, uint amount, bool isContribution);
    |    bool public crowdsaleClosed = true;
  > |    bool public minimumTargetReached = false;
    |
    |    // initialization
  at /home/jiaming/mavs_srcs/contract@0x3b6b74df081bc0e2c4776b3ceb3d4bc61c20ad32.sol(12)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |
    |    // initialization
  > |    address public beneficiary = 0x35A9dd5a6b59eE5e28FC519802A468379573af39;/*ifSuccessfulSendTo*/
    |    uint public price = 0.0015 ether;/*costOfEachToken*/
    |    uint public minimumTarget = 10 * price;/*minimumTargetInTokens*/
  at /home/jiaming/mavs_srcs/contract@0x3b6b74df081bc0e2c4776b3ceb3d4bc61c20ad32.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |    // initialization
    |    address public beneficiary = 0x35A9dd5a6b59eE5e28FC519802A468379573af39;/*ifSuccessfulSendTo*/
  > |    uint public price = 0.0015 ether;/*costOfEachToken*/
    |    uint public minimumTarget = 10 * price;/*minimumTargetInTokens*/
    |    uint public maximumTarget = 1000 * price;/*maximumTargetInTokens*/
  at /home/jiaming/mavs_srcs/contract@0x3b6b74df081bc0e2c4776b3ceb3d4bc61c20ad32.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |    address public beneficiary = 0x35A9dd5a6b59eE5e28FC519802A468379573af39;/*ifSuccessfulSendTo*/
    |    uint public price = 0.0015 ether;/*costOfEachToken*/
  > |    uint public minimumTarget = 10 * price;/*minimumTargetInTokens*/
    |    uint public maximumTarget = 1000 * price;/*maximumTargetInTokens*/
    |    uint public deadline =  now + 1440 * 1 minutes;/*durationInMinutes*/
  at /home/jiaming/mavs_srcs/contract@0x3b6b74df081bc0e2c4776b3ceb3d4bc61c20ad32.sol(17)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |    uint public price = 0.0015 ether;/*costOfEachToken*/
    |    uint public minimumTarget = 10 * price;/*minimumTargetInTokens*/
  > |    uint public maximumTarget = 1000 * price;/*maximumTargetInTokens*/
    |    uint public deadline =  now + 1440 * 1 minutes;/*durationInMinutes*/
    |    token public tokenReward = token(0x2Fd8019ce2AAc3bf9DB18D851A57EFe1a6151BBF);/*addressOfTokenUsedAsReward*/
  at /home/jiaming/mavs_srcs/contract@0x3b6b74df081bc0e2c4776b3ceb3d4bc61c20ad32.sol(18)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |    uint public minimumTarget = 10 * price;/*minimumTargetInTokens*/
    |    uint public maximumTarget = 1000 * price;/*maximumTargetInTokens*/
  > |    uint public deadline =  now + 1440 * 1 minutes;/*durationInMinutes*/
    |    token public tokenReward = token(0x2Fd8019ce2AAc3bf9DB18D851A57EFe1a6151BBF);/*addressOfTokenUsedAsReward*/
    |
  at /home/jiaming/mavs_srcs/contract@0x3b6b74df081bc0e2c4776b3ceb3d4bc61c20ad32.sol(19)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |    uint public maximumTarget = 1000 * price;/*maximumTargetInTokens*/
    |    uint public deadline =  now + 1440 * 1 minutes;/*durationInMinutes*/
  > |    token public tokenReward = token(0x2Fd8019ce2AAc3bf9DB18D851A57EFe1a6151BBF);/*addressOfTokenUsedAsReward*/
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x3b6b74df081bc0e2c4776b3ceb3d4bc61c20ad32.sol(20)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |
    |    // dev function for withdraw amount, which be reserved by minimumTarget (activate only if minimumTarget is reached)
  > |    function devResWithdrawal() {
    |        if (!minimumTargetReached || !(beneficiary == msg.sender)) throw;
    |        if (beneficiary.send(resAmount)) {
  at /home/jiaming/mavs_srcs/contract@0x3b6b74df081bc0e2c4776b3ceb3d4bc61c20ad32.sol(59)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |
    |    // checks if the minimumTarget has been reached
  > |    function checkTargetReached() afterDeadline {
    |        if (amountRaised >= minimumTarget) {
    |            minimumTargetReached = true;
  at /home/jiaming/mavs_srcs/contract@0x3b6b74df081bc0e2c4776b3ceb3d4bc61c20ad32.sol(78)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |
    |    // return your funds after deadline if minimumTarget is not reached (activate if crowdsale close)
  > |    function safeWithdrawal() afterDeadline {
    |        if (!crowdsaleClosed) throw;
    |        if (!minimumTargetReached && crowdsaleClosed) {
  at /home/jiaming/mavs_srcs/contract@0x3b6b74df081bc0e2c4776b3ceb3d4bc61c20ad32.sol(93)

[31mViolation[0m for TODAmount in contract 'Crowdsale':
    |    function devResWithdrawal() {
    |        if (!minimumTargetReached || !(beneficiary == msg.sender)) throw;
  > |        if (beneficiary.send(resAmount)) {
    |            FundTransfer(beneficiary, resAmount, false);
    |            resAmount -= resAmount;
  at /home/jiaming/mavs_srcs/contract@0x3b6b74df081bc0e2c4776b3ceb3d4bc61c20ad32.sol(61)

[33mWarning[0m for TODAmount in contract 'Crowdsale':
    |        if (!minimumTargetReached || !(beneficiary == msg.sender)) throw;
    |        uint wAmount = num / den;
  > |        if (beneficiary.send(wAmount)) {
    |            FundTransfer(beneficiary, wAmount, false);
    |            resAmount -= wAmount;
  at /home/jiaming/mavs_srcs/contract@0x3b6b74df081bc0e2c4776b3ceb3d4bc61c20ad32.sol(52)

[31mViolation[0m for TODReceiver in contract 'Crowdsale':
    |        if (!minimumTargetReached || !(beneficiary == msg.sender)) throw;
    |        uint wAmount = num / den;
  > |        if (beneficiary.send(wAmount)) {
    |            FundTransfer(beneficiary, wAmount, false);
    |            resAmount -= wAmount;
  at /home/jiaming/mavs_srcs/contract@0x3b6b74df081bc0e2c4776b3ceb3d4bc61c20ad32.sol(52)

[31mViolation[0m for TODReceiver in contract 'Crowdsale':
    |    function devResWithdrawal() {
    |        if (!minimumTargetReached || !(beneficiary == msg.sender)) throw;
  > |        if (beneficiary.send(resAmount)) {
    |            FundTransfer(beneficiary, resAmount, false);
    |            resAmount -= resAmount;
  at /home/jiaming/mavs_srcs/contract@0x3b6b74df081bc0e2c4776b3ceb3d4bc61c20ad32.sol(61)

[33mWarning[0m for TODReceiver in contract 'Crowdsale':
    |            balanceOf[msg.sender] = 0;
    |            if (amount > 0) {
  > |                if (msg.sender.send(amount)) {
    |                    FundTransfer(msg.sender, amount, false);
    |                    resAmount -= amount;
  at /home/jiaming/mavs_srcs/contract@0x3b6b74df081bc0e2c4776b3ceb3d4bc61c20ad32.sol(99)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |        if (!minimumTargetReached || !(beneficiary == msg.sender)) throw;
    |        uint wAmount = num / den;
  > |        if (beneficiary.send(wAmount)) {
    |            FundTransfer(beneficiary, wAmount, false);
    |            resAmount -= wAmount;
  at /home/jiaming/mavs_srcs/contract@0x3b6b74df081bc0e2c4776b3ceb3d4bc61c20ad32.sol(52)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |    function devResWithdrawal() {
    |        if (!minimumTargetReached || !(beneficiary == msg.sender)) throw;
  > |        if (beneficiary.send(resAmount)) {
    |            FundTransfer(beneficiary, resAmount, false);
    |            resAmount -= resAmount;
  at /home/jiaming/mavs_srcs/contract@0x3b6b74df081bc0e2c4776b3ceb3d4bc61c20ad32.sol(61)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |        if (!crowdsaleClosed) throw;
    |        if (beneficiary == msg.sender) {
  > |            tokenReward.transfer(beneficiary, tokensAmount);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3b6b74df081bc0e2c4776b3ceb3d4bc61c20ad32.sol(88)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |            balanceOf[msg.sender] = 0;
    |            if (amount > 0) {
  > |                if (msg.sender.send(amount)) {
    |                    FundTransfer(msg.sender, amount, false);
    |                    resAmount -= amount;
  at /home/jiaming/mavs_srcs/contract@0x3b6b74df081bc0e2c4776b3ceb3d4bc61c20ad32.sol(99)

[31mViolation[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |        if (!minimumTargetReached || !(beneficiary == msg.sender)) throw;
    |        uint wAmount = num / den;
  > |        if (beneficiary.send(wAmount)) {
    |            FundTransfer(beneficiary, wAmount, false);
    |            resAmount -= wAmount;
  at /home/jiaming/mavs_srcs/contract@0x3b6b74df081bc0e2c4776b3ceb3d4bc61c20ad32.sol(52)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |        if (!crowdsaleClosed) throw;
    |        if (beneficiary == msg.sender) {
  > |            tokenReward.transfer(beneficiary, tokensAmount);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3b6b74df081bc0e2c4776b3ceb3d4bc61c20ad32.sol(88)

[31mViolation[0m for UnrestrictedWrite in contract 'Crowdsale':
    |        if (beneficiary.send(wAmount)) {
    |            FundTransfer(beneficiary, wAmount, false);
  > |            resAmount -= wAmount;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3b6b74df081bc0e2c4776b3ceb3d4bc61c20ad32.sol(54)

[31mViolation[0m for UnrestrictedWrite in contract 'Crowdsale':
    |        if (beneficiary.send(resAmount)) {
    |            FundTransfer(beneficiary, resAmount, false);
  > |            resAmount -= resAmount;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3b6b74df081bc0e2c4776b3ceb3d4bc61c20ad32.sol(63)

[31mViolation[0m for UnrestrictedWrite in contract 'Crowdsale':
    |    function checkTargetReached() afterDeadline {
    |        if (amountRaised >= minimumTarget) {
  > |            minimumTargetReached = true;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3b6b74df081bc0e2c4776b3ceb3d4bc61c20ad32.sol(80)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |    function closeCrowdsale(bool closeType) {
    |         if (beneficiary == msg.sender) {
  > |            crowdsaleClosed = closeType;
    |         }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3b6b74df081bc0e2c4776b3ceb3d4bc61c20ad32.sol(70)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |        if (!minimumTargetReached && crowdsaleClosed) {
    |            uint amount = balanceOf[msg.sender];
  > |            balanceOf[msg.sender] = 0;
    |            if (amount > 0) {
    |                if (msg.sender.send(amount)) {
  at /home/jiaming/mavs_srcs/contract@0x3b6b74df081bc0e2c4776b3ceb3d4bc61c20ad32.sol(97)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |                    resAmount -= amount;
    |                } else {
  > |                    balanceOf[msg.sender] = amount;
    |                }
    |            }
  at /home/jiaming/mavs_srcs/contract@0x3b6b74df081bc0e2c4776b3ceb3d4bc61c20ad32.sol(103)

[33mWarning[0m for LockedEther in contract 'token':
    |
    |
  > |contract token {function transfer(address receiver, uint amount){ }}
    |
    |contract Crowdsale {
  at /home/jiaming/mavs_srcs/contract@0x3b6b74df081bc0e2c4776b3ceb3d4bc61c20ad32.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'token':
    |
    |
  > |contract token {function transfer(address receiver, uint amount){ }}
    |
    |contract Crowdsale {
  at /home/jiaming/mavs_srcs/contract@0x3b6b74df081bc0e2c4776b3ceb3d4bc61c20ad32.sol(4)


