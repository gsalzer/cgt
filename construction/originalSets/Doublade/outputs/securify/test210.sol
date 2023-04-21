Processing contract: /home/jiaming/mavs_srcs/contract@0x0e8160745966d2109c568230ef515b0dddea1599.sol:CrowdSale
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0e8160745966d2109c568230ef515b0dddea1599.sol:token
[31mViolation[0m for DAOConstantGas in contract 'CrowdSale':
    |            balanceOf[msg.sender] = 0;
    |            if (amount > 0) {
  > |                if (msg.sender.send(amount)) {
    |                    FundTransfer(msg.sender, amount, false);
    |                } else {
  at /home/jiaming/mavs_srcs/contract@0x0e8160745966d2109c568230ef515b0dddea1599.sol(191)

[31mViolation[0m for DAOConstantGas in contract 'CrowdSale':
    |
    |        if (fundingGoalReached && beneficiary == msg.sender) {
  > |            if (beneficiary.send(amountRaised)) {
    |                FundTransfer(beneficiary, amountRaised, false);
    |            } else {
  at /home/jiaming/mavs_srcs/contract@0x0e8160745966d2109c568230ef515b0dddea1599.sol(200)

[33mWarning[0m for LockedEther in contract 'CrowdSale':
    |}
    |
  > |contract CrowdSale {
    |    address public beneficiary;
    |    uint public fundingGoal;
  at /home/jiaming/mavs_srcs/contract@0x0e8160745966d2109c568230ef515b0dddea1599.sol(7)

[31mViolation[0m for MissingInputValidation in contract 'CrowdSale':
    |    uint public minPurchase;
    |    token public tokenReward;
  > |    mapping(address => uint256) public balanceOf;
    |    bool fundingGoalReached = false;
    |    bool public crowdsaleClosed = false;
  at /home/jiaming/mavs_srcs/contract@0x0e8160745966d2109c568230ef515b0dddea1599.sol(20)

[31mViolation[0m for MissingInputValidation in contract 'CrowdSale':
    |     *
    |     */
  > |    function setMinPurchaseValue(uint _minPurchase)
    |    isOwner
    |    public {
  at /home/jiaming/mavs_srcs/contract@0x0e8160745966d2109c568230ef515b0dddea1599.sol(170)

[33mWarning[0m for MissingInputValidation in contract 'CrowdSale':
    |
    |contract CrowdSale {
  > |    address public beneficiary;
    |    uint public fundingGoal;
    |    uint public amountRaised;
  at /home/jiaming/mavs_srcs/contract@0x0e8160745966d2109c568230ef515b0dddea1599.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'CrowdSale':
    |contract CrowdSale {
    |    address public beneficiary;
  > |    uint public fundingGoal;
    |    uint public amountRaised;
    |    uint public startTime;
  at /home/jiaming/mavs_srcs/contract@0x0e8160745966d2109c568230ef515b0dddea1599.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'CrowdSale':
    |    address public beneficiary;
    |    uint public fundingGoal;
  > |    uint public amountRaised;
    |    uint public startTime;
    |    uint public deadline;
  at /home/jiaming/mavs_srcs/contract@0x0e8160745966d2109c568230ef515b0dddea1599.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'CrowdSale':
    |    uint public fundingGoal;
    |    uint public amountRaised;
  > |    uint public startTime;
    |    uint public deadline;
    |    uint public endFirstBonus;
  at /home/jiaming/mavs_srcs/contract@0x0e8160745966d2109c568230ef515b0dddea1599.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'CrowdSale':
    |    uint public amountRaised;
    |    uint public startTime;
  > |    uint public deadline;
    |    uint public endFirstBonus;
    |    uint public endSecondBonus;
  at /home/jiaming/mavs_srcs/contract@0x0e8160745966d2109c568230ef515b0dddea1599.sol(12)

[33mWarning[0m for MissingInputValidation in contract 'CrowdSale':
    |    uint public startTime;
    |    uint public deadline;
  > |    uint public endFirstBonus;
    |    uint public endSecondBonus;
    |    uint public endThirdBonus;
  at /home/jiaming/mavs_srcs/contract@0x0e8160745966d2109c568230ef515b0dddea1599.sol(13)

[33mWarning[0m for MissingInputValidation in contract 'CrowdSale':
    |    uint public deadline;
    |    uint public endFirstBonus;
  > |    uint public endSecondBonus;
    |    uint public endThirdBonus;
    |    uint public hardCap;
  at /home/jiaming/mavs_srcs/contract@0x0e8160745966d2109c568230ef515b0dddea1599.sol(14)

[33mWarning[0m for MissingInputValidation in contract 'CrowdSale':
    |    uint public endFirstBonus;
    |    uint public endSecondBonus;
  > |    uint public endThirdBonus;
    |    uint public hardCap;
    |    uint public price;
  at /home/jiaming/mavs_srcs/contract@0x0e8160745966d2109c568230ef515b0dddea1599.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'CrowdSale':
    |    uint public endSecondBonus;
    |    uint public endThirdBonus;
  > |    uint public hardCap;
    |    uint public price;
    |    uint public minPurchase;
  at /home/jiaming/mavs_srcs/contract@0x0e8160745966d2109c568230ef515b0dddea1599.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'CrowdSale':
    |    uint public endThirdBonus;
    |    uint public hardCap;
  > |    uint public price;
    |    uint public minPurchase;
    |    token public tokenReward;
  at /home/jiaming/mavs_srcs/contract@0x0e8160745966d2109c568230ef515b0dddea1599.sol(17)

[33mWarning[0m for MissingInputValidation in contract 'CrowdSale':
    |    uint public hardCap;
    |    uint public price;
  > |    uint public minPurchase;
    |    token public tokenReward;
    |    mapping(address => uint256) public balanceOf;
  at /home/jiaming/mavs_srcs/contract@0x0e8160745966d2109c568230ef515b0dddea1599.sol(18)

[33mWarning[0m for MissingInputValidation in contract 'CrowdSale':
    |    uint public price;
    |    uint public minPurchase;
  > |    token public tokenReward;
    |    mapping(address => uint256) public balanceOf;
    |    bool fundingGoalReached = false;
  at /home/jiaming/mavs_srcs/contract@0x0e8160745966d2109c568230ef515b0dddea1599.sol(19)

[33mWarning[0m for MissingInputValidation in contract 'CrowdSale':
    |    mapping(address => uint256) public balanceOf;
    |    bool fundingGoalReached = false;
  > |    bool public crowdsaleClosed = false;
    |
    |    event GoalReached(address recipient, uint totalAmountRaised);
  at /home/jiaming/mavs_srcs/contract@0x0e8160745966d2109c568230ef515b0dddea1599.sol(22)

[33mWarning[0m for MissingInputValidation in contract 'CrowdSale':
    |     *
    |     */
  > |    function purchase() internal {
    |        uint amount = msg.value;
    |        uint vp = amount * price;
  at /home/jiaming/mavs_srcs/contract@0x0e8160745966d2109c568230ef515b0dddea1599.sol(63)

[33mWarning[0m for MissingInputValidation in contract 'CrowdSale':
    |     *
    |     */
  > |    function shiftSalePurchase()
    |    payable
    |    isOpen
  at /home/jiaming/mavs_srcs/contract@0x0e8160745966d2109c568230ef515b0dddea1599.sol(93)

[33mWarning[0m for MissingInputValidation in contract 'CrowdSale':
    |     *
    |     */
  > |    function checkGoalReached() internal {
    |        if (amountRaised >= fundingGoal && !fundingGoalReached) {
    |            fundingGoalReached = true;
  at /home/jiaming/mavs_srcs/contract@0x0e8160745966d2109c568230ef515b0dddea1599.sol(148)

[33mWarning[0m for MissingInputValidation in contract 'CrowdSale':
    |     *
    |     */
  > |    function closeCrowdsale()
    |    isOwner
    |    public {
  at /home/jiaming/mavs_srcs/contract@0x0e8160745966d2109c568230ef515b0dddea1599.sol(159)

[33mWarning[0m for MissingInputValidation in contract 'CrowdSale':
    |     * the amount they contributed.
    |     */
  > |    function safeWithdrawal()
    |    afterDeadline
    |    isClosed
  at /home/jiaming/mavs_srcs/contract@0x0e8160745966d2109c568230ef515b0dddea1599.sol(183)

[33mWarning[0m for MissingInputValidation in contract 'CrowdSale':
    |    }
    |
  > |    function getBonus() view public returns (uint) {
    |        if (startTime <= now) {
    |            if (now <= endFirstBonus) {
  at /home/jiaming/mavs_srcs/contract@0x0e8160745966d2109c568230ef515b0dddea1599.sol(209)

[31mViolation[0m for TODAmount in contract 'CrowdSale':
    |
    |        if (fundingGoalReached && beneficiary == msg.sender) {
  > |            if (beneficiary.send(amountRaised)) {
    |                FundTransfer(beneficiary, amountRaised, false);
    |            } else {
  at /home/jiaming/mavs_srcs/contract@0x0e8160745966d2109c568230ef515b0dddea1599.sol(200)

[33mWarning[0m for TODReceiver in contract 'CrowdSale':
    |            balanceOf[msg.sender] = 0;
    |            if (amount > 0) {
  > |                if (msg.sender.send(amount)) {
    |                    FundTransfer(msg.sender, amount, false);
    |                } else {
  at /home/jiaming/mavs_srcs/contract@0x0e8160745966d2109c568230ef515b0dddea1599.sol(191)

[33mWarning[0m for UnhandledException in contract 'CrowdSale':
    |        balanceOf[msg.sender] += amount;
    |        amountRaised += amount;
  > |        tokenReward.transferFrom(beneficiary, msg.sender, tokens);
    |        checkGoalReached();
    |        FundTransfer(msg.sender, amount, true);
  at /home/jiaming/mavs_srcs/contract@0x0e8160745966d2109c568230ef515b0dddea1599.sol(69)

[33mWarning[0m for UnhandledException in contract 'CrowdSale':
    |            balanceOf[msg.sender] = 0;
    |            if (amount > 0) {
  > |                if (msg.sender.send(amount)) {
    |                    FundTransfer(msg.sender, amount, false);
    |                } else {
  at /home/jiaming/mavs_srcs/contract@0x0e8160745966d2109c568230ef515b0dddea1599.sol(191)

[33mWarning[0m for UnhandledException in contract 'CrowdSale':
    |
    |        if (fundingGoalReached && beneficiary == msg.sender) {
  > |            if (beneficiary.send(amountRaised)) {
    |                FundTransfer(beneficiary, amountRaised, false);
    |            } else {
  at /home/jiaming/mavs_srcs/contract@0x0e8160745966d2109c568230ef515b0dddea1599.sol(200)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CrowdSale':
    |        balanceOf[msg.sender] += amount;
    |        amountRaised += amount;
  > |        tokenReward.transferFrom(beneficiary, msg.sender, tokens);
    |        checkGoalReached();
    |        FundTransfer(msg.sender, amount, true);
  at /home/jiaming/mavs_srcs/contract@0x0e8160745966d2109c568230ef515b0dddea1599.sol(69)

[31mViolation[0m for UnrestrictedWrite in contract 'CrowdSale':
    |        uint vp = amount * price;
    |        uint tokens = ((vp + ((vp * getBonus()) / 100))) / 1 ether;
  > |        balanceOf[msg.sender] += amount;
    |        amountRaised += amount;
    |        tokenReward.transferFrom(beneficiary, msg.sender, tokens);
  at /home/jiaming/mavs_srcs/contract@0x0e8160745966d2109c568230ef515b0dddea1599.sol(67)

[31mViolation[0m for UnrestrictedWrite in contract 'CrowdSale':
    |        uint tokens = ((vp + ((vp * getBonus()) / 100))) / 1 ether;
    |        balanceOf[msg.sender] += amount;
  > |        amountRaised += amount;
    |        tokenReward.transferFrom(beneficiary, msg.sender, tokens);
    |        checkGoalReached();
  at /home/jiaming/mavs_srcs/contract@0x0e8160745966d2109c568230ef515b0dddea1599.sol(68)

[31mViolation[0m for UnrestrictedWrite in contract 'CrowdSale':
    |    function checkGoalReached() internal {
    |        if (amountRaised >= fundingGoal && !fundingGoalReached) {
  > |            fundingGoalReached = true;
    |            GoalReached(beneficiary, amountRaised);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x0e8160745966d2109c568230ef515b0dddea1599.sol(150)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdSale':
    |        uint vp = amount * price;
    |        uint tokens = ((vp + ((vp * getBonus()) / 100))) / 1 ether;
  > |        balanceOf[msg.sender] += amount;
    |        amountRaised += amount;
    |        tokenReward.transferFrom(beneficiary, msg.sender, tokens);
  at /home/jiaming/mavs_srcs/contract@0x0e8160745966d2109c568230ef515b0dddea1599.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdSale':
    |        if (!fundingGoalReached) {
    |            uint amount = balanceOf[msg.sender];
  > |            balanceOf[msg.sender] = 0;
    |            if (amount > 0) {
    |                if (msg.sender.send(amount)) {
  at /home/jiaming/mavs_srcs/contract@0x0e8160745966d2109c568230ef515b0dddea1599.sol(189)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdSale':
    |                    FundTransfer(msg.sender, amount, false);
    |                } else {
  > |                    balanceOf[msg.sender] = amount;
    |                }
    |            }
  at /home/jiaming/mavs_srcs/contract@0x0e8160745966d2109c568230ef515b0dddea1599.sol(194)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdSale':
    |    isOwner
    |    public {
  > |        crowdsaleClosed = true;
    |        CrowdsaleClose(amountRaised, fundingGoalReached);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0e8160745966d2109c568230ef515b0dddea1599.sol(162)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdSale':
    |    isOwner
    |    public {
  > |        minPurchase = _minPurchase;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x0e8160745966d2109c568230ef515b0dddea1599.sol(173)


