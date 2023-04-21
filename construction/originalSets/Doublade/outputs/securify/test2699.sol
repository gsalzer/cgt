Processing contract: /home/jiaming/mavs_srcs/contract@0xb04ee6be2b98c9ed24be5585329891fea036829a.sol:Crowdsale
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb04ee6be2b98c9ed24be5585329891fea036829a.sol:token
[31mViolation[0m for DAOConstantGas in contract 'Crowdsale':
    |            balanceOf[msg.sender] = 0;
    |            if (amount > 0) {
  > |                if (msg.sender.send(amount)) {
    |                    FundTransfer(msg.sender, amount, false);
    |                } else {
  at /home/jiaming/mavs_srcs/contract@0xb04ee6be2b98c9ed24be5585329891fea036829a.sol(85)

[31mViolation[0m for DAOConstantGas in contract 'Crowdsale':
    |
    |        if (fundingGoalReached && beneficiary == msg.sender) {
  > |            if (beneficiary.send(amountRaised)) {
    |                FundTransfer(beneficiary, amountRaised, false);
    |            } else {
  at /home/jiaming/mavs_srcs/contract@0xb04ee6be2b98c9ed24be5585329891fea036829a.sol(94)

[33mWarning[0m for LockedEther in contract 'Crowdsale':
    |
    |
  > |contract Crowdsale {
    |    address public beneficiary;
    |    uint public fundingGoal;
  at /home/jiaming/mavs_srcs/contract@0xb04ee6be2b98c9ed24be5585329891fea036829a.sol(9)

[31mViolation[0m for MissingInputValidation in contract 'Crowdsale':
    |    uint public price;
    |    token public tokenReward;
  > |    mapping(address => uint256) public balanceOf;
    |    bool fundingGoalReached = false;
    |    bool crowdsaleClosed = false;
  at /home/jiaming/mavs_srcs/contract@0xb04ee6be2b98c9ed24be5585329891fea036829a.sol(16)

[31mViolation[0m for MissingInputValidation in contract 'Crowdsale':
    |
    |    //transfer token to the owner of the contract (beneficiary)//afterDeadline
  > |        function transferToken(uint amount)public afterDeadline {  
    |        if (beneficiary == msg.sender)
    |        {            
  at /home/jiaming/mavs_srcs/contract@0xb04ee6be2b98c9ed24be5585329891fea036829a.sol(69)

[31mViolation[0m for MissingInputValidation in contract 'Crowdsale':
    |        }
    |    }
  > |    function checkPriceCrowdsale(uint newPrice1, uint newPrice2)public {
    |        if (beneficiary == msg.sender) {          
    |           price = (newPrice1 * 1 finney)+(newPrice2 * 1 szabo);
  at /home/jiaming/mavs_srcs/contract@0xb04ee6be2b98c9ed24be5585329891fea036829a.sol(102)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |
    |contract Crowdsale {
  > |    address public beneficiary;
    |    uint public fundingGoal;
    |    uint public amountRaised;
  at /home/jiaming/mavs_srcs/contract@0xb04ee6be2b98c9ed24be5585329891fea036829a.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |contract Crowdsale {
    |    address public beneficiary;
  > |    uint public fundingGoal;
    |    uint public amountRaised;
    |    uint public deadline;
  at /home/jiaming/mavs_srcs/contract@0xb04ee6be2b98c9ed24be5585329891fea036829a.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |    address public beneficiary;
    |    uint public fundingGoal;
  > |    uint public amountRaised;
    |    uint public deadline;
    |    uint public price;
  at /home/jiaming/mavs_srcs/contract@0xb04ee6be2b98c9ed24be5585329891fea036829a.sol(12)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |    uint public fundingGoal;
    |    uint public amountRaised;
  > |    uint public deadline;
    |    uint public price;
    |    token public tokenReward;
  at /home/jiaming/mavs_srcs/contract@0xb04ee6be2b98c9ed24be5585329891fea036829a.sol(13)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |    uint public amountRaised;
    |    uint public deadline;
  > |    uint public price;
    |    token public tokenReward;
    |    mapping(address => uint256) public balanceOf;
  at /home/jiaming/mavs_srcs/contract@0xb04ee6be2b98c9ed24be5585329891fea036829a.sol(14)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |    uint public deadline;
    |    uint public price;
  > |    token public tokenReward;
    |    mapping(address => uint256) public balanceOf;
    |    bool fundingGoalReached = false;
  at /home/jiaming/mavs_srcs/contract@0xb04ee6be2b98c9ed24be5585329891fea036829a.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |     * Checks if the goal or time limit has been reached and ends the campaign
    |     */
  > |    function checkGoalReached() public afterDeadline {
    |        if (amountRaised >= fundingGoal){
    |            fundingGoalReached = true;
  at /home/jiaming/mavs_srcs/contract@0xb04ee6be2b98c9ed24be5585329891fea036829a.sol(60)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |
    | 
  > |    function safeWithdrawal()public afterDeadline {
    |        if (!fundingGoalReached) {
    |            uint amount = balanceOf[msg.sender];
  at /home/jiaming/mavs_srcs/contract@0xb04ee6be2b98c9ed24be5585329891fea036829a.sol(80)

[31mViolation[0m for TODAmount in contract 'Crowdsale':
    |
    |        if (fundingGoalReached && beneficiary == msg.sender) {
  > |            if (beneficiary.send(amountRaised)) {
    |                FundTransfer(beneficiary, amountRaised, false);
    |            } else {
  at /home/jiaming/mavs_srcs/contract@0xb04ee6be2b98c9ed24be5585329891fea036829a.sol(94)

[33mWarning[0m for TODReceiver in contract 'Crowdsale':
    |            balanceOf[msg.sender] = 0;
    |            if (amount > 0) {
  > |                if (msg.sender.send(amount)) {
    |                    FundTransfer(msg.sender, amount, false);
    |                } else {
  at /home/jiaming/mavs_srcs/contract@0xb04ee6be2b98c9ed24be5585329891fea036829a.sol(85)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |        if (beneficiary == msg.sender)
    |        {            
  > |            tokenReward.transfer(msg.sender, amount);  
    |            FundTransfer(msg.sender, amount, true);          
    |        }
  at /home/jiaming/mavs_srcs/contract@0xb04ee6be2b98c9ed24be5585329891fea036829a.sol(72)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |            balanceOf[msg.sender] = 0;
    |            if (amount > 0) {
  > |                if (msg.sender.send(amount)) {
    |                    FundTransfer(msg.sender, amount, false);
    |                } else {
  at /home/jiaming/mavs_srcs/contract@0xb04ee6be2b98c9ed24be5585329891fea036829a.sol(85)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |
    |        if (fundingGoalReached && beneficiary == msg.sender) {
  > |            if (beneficiary.send(amountRaised)) {
    |                FundTransfer(beneficiary, amountRaised, false);
    |            } else {
  at /home/jiaming/mavs_srcs/contract@0xb04ee6be2b98c9ed24be5585329891fea036829a.sol(94)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |        if (beneficiary == msg.sender)
    |        {            
  > |            tokenReward.transfer(msg.sender, amount);  
    |            FundTransfer(msg.sender, amount, true);          
    |        }
  at /home/jiaming/mavs_srcs/contract@0xb04ee6be2b98c9ed24be5585329891fea036829a.sol(72)

[31mViolation[0m for UnrestrictedWrite in contract 'Crowdsale':
    |    function checkGoalReached() public afterDeadline {
    |        if (amountRaised >= fundingGoal){
  > |            fundingGoalReached = true;
    |            GoalReached(beneficiary, amountRaised);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xb04ee6be2b98c9ed24be5585329891fea036829a.sol(62)

[31mViolation[0m for UnrestrictedWrite in contract 'Crowdsale':
    |            GoalReached(beneficiary, amountRaised);
    |        }
  > |        crowdsaleClosed = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb04ee6be2b98c9ed24be5585329891fea036829a.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |        if (!fundingGoalReached) {
    |            uint amount = balanceOf[msg.sender];
  > |            balanceOf[msg.sender] = 0;
    |            if (amount > 0) {
    |                if (msg.sender.send(amount)) {
  at /home/jiaming/mavs_srcs/contract@0xb04ee6be2b98c9ed24be5585329891fea036829a.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |                    FundTransfer(msg.sender, amount, false);
    |                } else {
  > |                    balanceOf[msg.sender] = amount;
    |                }
    |            }
  at /home/jiaming/mavs_srcs/contract@0xb04ee6be2b98c9ed24be5585329891fea036829a.sol(88)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |    function checkPriceCrowdsale(uint newPrice1, uint newPrice2)public {
    |        if (beneficiary == msg.sender) {          
  > |           price = (newPrice1 * 1 finney)+(newPrice2 * 1 szabo);
    |           ChangePrice(price);
    |           changePrice = true;
  at /home/jiaming/mavs_srcs/contract@0xb04ee6be2b98c9ed24be5585329891fea036829a.sol(104)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |           price = (newPrice1 * 1 finney)+(newPrice2 * 1 szabo);
    |           ChangePrice(price);
  > |           changePrice = true;
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0xb04ee6be2b98c9ed24be5585329891fea036829a.sol(106)


