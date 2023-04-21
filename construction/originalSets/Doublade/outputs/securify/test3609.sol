Processing contract: /home/jiaming/mavs_srcs/contract@0xec94d178d97bac527fdcd4b3d4bf41b57d640c5b.sol:Crowdsale
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xec94d178d97bac527fdcd4b3d4bf41b57d640c5b.sol:token
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for DAOConstantGas in contract 'Crowdsale':
    |    function devResWithdrawal() {
    |        if (!minimumTargetReached || !(beneficiary == msg.sender)) throw;
  > |        if (beneficiary.send(resAmount)) {
    |            FundTransfer(beneficiary, resAmount, false);
    |            resAmount = 0;
  at /home/jiaming/mavs_srcs/contract@0xec94d178d97bac527fdcd4b3d4bf41b57d640c5b.sol(60)

[31mViolation[0m for DAOConstantGas in contract 'Crowdsale':
    |            balanceOf[msg.sender] = 0;
    |            if (amount > 0) {
  > |                if (msg.sender.send(amount)) {
    |                    FundTransfer(msg.sender, amount, false);
    |                } else {
  at /home/jiaming/mavs_srcs/contract@0xec94d178d97bac527fdcd4b3d4bf41b57d640c5b.sol(97)

[33mWarning[0m for DAOConstantGas in contract 'Crowdsale':
    |        if (!minimumTargetReached || !(beneficiary == msg.sender)) throw;
    |        uint wAmount = num / den;
  > |        if (beneficiary.send(wAmount)) {
    |            FundTransfer(beneficiary, wAmount, false);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xec94d178d97bac527fdcd4b3d4bf41b57d640c5b.sol(52)

[33mWarning[0m for LockedEther in contract 'Crowdsale':
    |contract token {function transfer(address receiver, uint amount){ }}
    |
  > |contract Crowdsale {
    |    uint public amountRaised; uint public resAmount; uint public soldTokens;
    |    mapping(address => uint256) public balanceOf;
  at /home/jiaming/mavs_srcs/contract@0xec94d178d97bac527fdcd4b3d4bf41b57d640c5b.sol(6)

[31mViolation[0m for MissingInputValidation in contract 'Crowdsale':
    |contract Crowdsale {
    |    uint public amountRaised; uint public resAmount; uint public soldTokens;
  > |    mapping(address => uint256) public balanceOf;
    |    event GoalReached(address beneficiary, uint amountRaised);
    |    event FundTransfer(address backer, uint amount, bool isContribution);
  at /home/jiaming/mavs_srcs/contract@0xec94d178d97bac527fdcd4b3d4bf41b57d640c5b.sol(8)

[31mViolation[0m for MissingInputValidation in contract 'Crowdsale':
    |
    |    // dev function for withdraw any amount from raised funds (activate only if minimumTarget is reached)
  > |    function devWithdrawal(uint num, uint den) {
    |        if (!minimumTargetReached || !(beneficiary == msg.sender)) throw;
    |        uint wAmount = num / den;
  at /home/jiaming/mavs_srcs/contract@0xec94d178d97bac527fdcd4b3d4bf41b57d640c5b.sol(49)

[31mViolation[0m for MissingInputValidation in contract 'Crowdsale':
    |
    |    // dev function for close crowdsale  
  > |    function closeCrowdsale(bool closeType) {
    |         if (beneficiary == msg.sender) {
    |            crowdsaleClosed = closeType;
  at /home/jiaming/mavs_srcs/contract@0xec94d178d97bac527fdcd4b3d4bf41b57d640c5b.sol(67)

[31mViolation[0m for MissingInputValidation in contract 'Crowdsale':
    |
    |    // function for return non sold tokens to dev account after crowdsale
  > |    function returnTokens(uint tokensAmount) afterDeadline {
    |        if (!crowdsaleClosed) throw;
    |        if (beneficiary == msg.sender) {
  at /home/jiaming/mavs_srcs/contract@0xec94d178d97bac527fdcd4b3d4bf41b57d640c5b.sol(84)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |
    |contract Crowdsale {
  > |    uint public amountRaised; uint public resAmount; uint public soldTokens;
    |    mapping(address => uint256) public balanceOf;
    |    event GoalReached(address beneficiary, uint amountRaised);
  at /home/jiaming/mavs_srcs/contract@0xec94d178d97bac527fdcd4b3d4bf41b57d640c5b.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |    event GoalReached(address beneficiary, uint amountRaised);
    |    event FundTransfer(address backer, uint amount, bool isContribution);
  > |    bool public crowdsaleClosed = false;
    |    bool public minimumTargetReached = false;
    |
  at /home/jiaming/mavs_srcs/contract@0xec94d178d97bac527fdcd4b3d4bf41b57d640c5b.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |    event FundTransfer(address backer, uint amount, bool isContribution);
    |    bool public crowdsaleClosed = false;
  > |    bool public minimumTargetReached = false;
    |
    |    // initialization
  at /home/jiaming/mavs_srcs/contract@0xec94d178d97bac527fdcd4b3d4bf41b57d640c5b.sol(12)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |
    |    // initialization
  > |    address public beneficiary = 0x35A9dd5a6b59eE5e28FC519802A468379573af39;/*ifSuccessfulSendTo*/
    |    uint public price = 0.0016 ether;/*costOfEachToken*/
    |    uint public minimumTarget = 3 * price;/*minimumTargetInTokens*/
  at /home/jiaming/mavs_srcs/contract@0xec94d178d97bac527fdcd4b3d4bf41b57d640c5b.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |    // initialization
    |    address public beneficiary = 0x35A9dd5a6b59eE5e28FC519802A468379573af39;/*ifSuccessfulSendTo*/
  > |    uint public price = 0.0016 ether;/*costOfEachToken*/
    |    uint public minimumTarget = 3 * price;/*minimumTargetInTokens*/
    |    uint public maximumTarget = 10 * price;/*maximumTargetInTokens*/
  at /home/jiaming/mavs_srcs/contract@0xec94d178d97bac527fdcd4b3d4bf41b57d640c5b.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |    address public beneficiary = 0x35A9dd5a6b59eE5e28FC519802A468379573af39;/*ifSuccessfulSendTo*/
    |    uint public price = 0.0016 ether;/*costOfEachToken*/
  > |    uint public minimumTarget = 3 * price;/*minimumTargetInTokens*/
    |    uint public maximumTarget = 10 * price;/*maximumTargetInTokens*/
    |    uint public deadline =  now + 20 * 1 minutes;/*durationInMinutes*/
  at /home/jiaming/mavs_srcs/contract@0xec94d178d97bac527fdcd4b3d4bf41b57d640c5b.sol(17)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |    uint public price = 0.0016 ether;/*costOfEachToken*/
    |    uint public minimumTarget = 3 * price;/*minimumTargetInTokens*/
  > |    uint public maximumTarget = 10 * price;/*maximumTargetInTokens*/
    |    uint public deadline =  now + 20 * 1 minutes;/*durationInMinutes*/
    |    token public tokenReward = token(0xc570800b8e4A202d0928ea5dC5DCb96573B6FDe8);/*addressOfTokenUsedAsReward*/
  at /home/jiaming/mavs_srcs/contract@0xec94d178d97bac527fdcd4b3d4bf41b57d640c5b.sol(18)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |    uint public minimumTarget = 3 * price;/*minimumTargetInTokens*/
    |    uint public maximumTarget = 10 * price;/*maximumTargetInTokens*/
  > |    uint public deadline =  now + 20 * 1 minutes;/*durationInMinutes*/
    |    token public tokenReward = token(0xc570800b8e4A202d0928ea5dC5DCb96573B6FDe8);/*addressOfTokenUsedAsReward*/
    |
  at /home/jiaming/mavs_srcs/contract@0xec94d178d97bac527fdcd4b3d4bf41b57d640c5b.sol(19)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |    uint public maximumTarget = 10 * price;/*maximumTargetInTokens*/
    |    uint public deadline =  now + 20 * 1 minutes;/*durationInMinutes*/
  > |    token public tokenReward = token(0xc570800b8e4A202d0928ea5dC5DCb96573B6FDe8);/*addressOfTokenUsedAsReward*/
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xec94d178d97bac527fdcd4b3d4bf41b57d640c5b.sol(20)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |
    |    // dev function for withdraw amount, which be reserved by minimumTarget (activate only if minimumTarget is reached)
  > |    function devResWithdrawal() {
    |        if (!minimumTargetReached || !(beneficiary == msg.sender)) throw;
    |        if (beneficiary.send(resAmount)) {
  at /home/jiaming/mavs_srcs/contract@0xec94d178d97bac527fdcd4b3d4bf41b57d640c5b.sol(58)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |
    |    // checks if the minimumTarget has been reached
  > |    function checkTargetReached() afterDeadline {
    |        if (amountRaised >= minimumTarget) {
    |            minimumTargetReached = true;
  at /home/jiaming/mavs_srcs/contract@0xec94d178d97bac527fdcd4b3d4bf41b57d640c5b.sol(77)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |
    |    // return your funds after deadline if minimumTarget is not reached (activate if crowdsale closing)
  > |    function safeWithdrawal() afterDeadline {
    |        if (!minimumTargetReached && crowdsaleClosed) {
    |            uint amount = balanceOf[msg.sender];
  at /home/jiaming/mavs_srcs/contract@0xec94d178d97bac527fdcd4b3d4bf41b57d640c5b.sol(92)

[31mViolation[0m for TODAmount in contract 'Crowdsale':
    |    function devResWithdrawal() {
    |        if (!minimumTargetReached || !(beneficiary == msg.sender)) throw;
  > |        if (beneficiary.send(resAmount)) {
    |            FundTransfer(beneficiary, resAmount, false);
    |            resAmount = 0;
  at /home/jiaming/mavs_srcs/contract@0xec94d178d97bac527fdcd4b3d4bf41b57d640c5b.sol(60)

[33mWarning[0m for TODAmount in contract 'Crowdsale':
    |        if (!minimumTargetReached || !(beneficiary == msg.sender)) throw;
    |        uint wAmount = num / den;
  > |        if (beneficiary.send(wAmount)) {
    |            FundTransfer(beneficiary, wAmount, false);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xec94d178d97bac527fdcd4b3d4bf41b57d640c5b.sol(52)

[31mViolation[0m for TODReceiver in contract 'Crowdsale':
    |        if (!minimumTargetReached || !(beneficiary == msg.sender)) throw;
    |        uint wAmount = num / den;
  > |        if (beneficiary.send(wAmount)) {
    |            FundTransfer(beneficiary, wAmount, false);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xec94d178d97bac527fdcd4b3d4bf41b57d640c5b.sol(52)

[31mViolation[0m for TODReceiver in contract 'Crowdsale':
    |    function devResWithdrawal() {
    |        if (!minimumTargetReached || !(beneficiary == msg.sender)) throw;
  > |        if (beneficiary.send(resAmount)) {
    |            FundTransfer(beneficiary, resAmount, false);
    |            resAmount = 0;
  at /home/jiaming/mavs_srcs/contract@0xec94d178d97bac527fdcd4b3d4bf41b57d640c5b.sol(60)

[33mWarning[0m for TODReceiver in contract 'Crowdsale':
    |            balanceOf[msg.sender] = 0;
    |            if (amount > 0) {
  > |                if (msg.sender.send(amount)) {
    |                    FundTransfer(msg.sender, amount, false);
    |                } else {
  at /home/jiaming/mavs_srcs/contract@0xec94d178d97bac527fdcd4b3d4bf41b57d640c5b.sol(97)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |        if (!minimumTargetReached || !(beneficiary == msg.sender)) throw;
    |        uint wAmount = num / den;
  > |        if (beneficiary.send(wAmount)) {
    |            FundTransfer(beneficiary, wAmount, false);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xec94d178d97bac527fdcd4b3d4bf41b57d640c5b.sol(52)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |    function devResWithdrawal() {
    |        if (!minimumTargetReached || !(beneficiary == msg.sender)) throw;
  > |        if (beneficiary.send(resAmount)) {
    |            FundTransfer(beneficiary, resAmount, false);
    |            resAmount = 0;
  at /home/jiaming/mavs_srcs/contract@0xec94d178d97bac527fdcd4b3d4bf41b57d640c5b.sol(60)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |        if (!crowdsaleClosed) throw;
    |        if (beneficiary == msg.sender) {
  > |            tokenReward.transfer(beneficiary, tokensAmount);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xec94d178d97bac527fdcd4b3d4bf41b57d640c5b.sol(87)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |            balanceOf[msg.sender] = 0;
    |            if (amount > 0) {
  > |                if (msg.sender.send(amount)) {
    |                    FundTransfer(msg.sender, amount, false);
    |                } else {
  at /home/jiaming/mavs_srcs/contract@0xec94d178d97bac527fdcd4b3d4bf41b57d640c5b.sol(97)

[31mViolation[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |        if (!minimumTargetReached || !(beneficiary == msg.sender)) throw;
    |        uint wAmount = num / den;
  > |        if (beneficiary.send(wAmount)) {
    |            FundTransfer(beneficiary, wAmount, false);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xec94d178d97bac527fdcd4b3d4bf41b57d640c5b.sol(52)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |        if (!crowdsaleClosed) throw;
    |        if (beneficiary == msg.sender) {
  > |            tokenReward.transfer(beneficiary, tokensAmount);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xec94d178d97bac527fdcd4b3d4bf41b57d640c5b.sol(87)

[31mViolation[0m for UnrestrictedWrite in contract 'Crowdsale':
    |        if (beneficiary.send(resAmount)) {
    |            FundTransfer(beneficiary, resAmount, false);
  > |            resAmount = 0;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xec94d178d97bac527fdcd4b3d4bf41b57d640c5b.sol(62)

[31mViolation[0m for UnrestrictedWrite in contract 'Crowdsale':
    |    function checkTargetReached() afterDeadline {
    |        if (amountRaised >= minimumTarget) {
  > |            minimumTargetReached = true;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xec94d178d97bac527fdcd4b3d4bf41b57d640c5b.sol(79)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |    function closeCrowdsale(bool closeType) {
    |         if (beneficiary == msg.sender) {
  > |            crowdsaleClosed = closeType;
    |         }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xec94d178d97bac527fdcd4b3d4bf41b57d640c5b.sol(69)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |        if (!minimumTargetReached && crowdsaleClosed) {
    |            uint amount = balanceOf[msg.sender];
  > |            balanceOf[msg.sender] = 0;
    |            if (amount > 0) {
    |                if (msg.sender.send(amount)) {
  at /home/jiaming/mavs_srcs/contract@0xec94d178d97bac527fdcd4b3d4bf41b57d640c5b.sol(95)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |                    FundTransfer(msg.sender, amount, false);
    |                } else {
  > |                    balanceOf[msg.sender] = amount;
    |                }
    |            }
  at /home/jiaming/mavs_srcs/contract@0xec94d178d97bac527fdcd4b3d4bf41b57d640c5b.sol(100)

[33mWarning[0m for LockedEther in contract 'token':
    |
    |
  > |contract token {function transfer(address receiver, uint amount){ }}
    |
    |contract Crowdsale {
  at /home/jiaming/mavs_srcs/contract@0xec94d178d97bac527fdcd4b3d4bf41b57d640c5b.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'token':
    |
    |
  > |contract token {function transfer(address receiver, uint amount){ }}
    |
    |contract Crowdsale {
  at /home/jiaming/mavs_srcs/contract@0xec94d178d97bac527fdcd4b3d4bf41b57d640c5b.sol(4)


