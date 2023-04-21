Processing contract: /home/jiaming/mavs_srcs/contract@0xf5ac04111dfecaf859071c4a424ebcda1379825b.sol:Airdrop
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf5ac04111dfecaf859071c4a424ebcda1379825b.sol:token
[31mViolation[0m for DAOConstantGas in contract 'Airdrop':
    |        
    |        if (beneficiary == msg.sender) {
  > |            if (beneficiary.send(amountRaised)) {
    |                FundTransfer(beneficiary, amountRaised, false);
    |            } else {
  at /home/jiaming/mavs_srcs/contract@0xf5ac04111dfecaf859071c4a424ebcda1379825b.sol(82)

[33mWarning[0m for LockedEther in contract 'Airdrop':
    |}
    |
  > |contract Airdrop {
    |    address public beneficiary;
    |    uint public fundingGoal;
  at /home/jiaming/mavs_srcs/contract@0xf5ac04111dfecaf859071c4a424ebcda1379825b.sol(7)

[31mViolation[0m for MissingInputValidation in contract 'Airdrop':
    |    uint public price;
    |    token public tokenReward;
  > |    mapping(address => uint256) public balanceOf;
    |    bool fundingGoalReached = false;
    |    bool airdropClosed = false;
  at /home/jiaming/mavs_srcs/contract@0xf5ac04111dfecaf859071c4a424ebcda1379825b.sol(14)

[33mWarning[0m for MissingInputValidation in contract 'Airdrop':
    |
    |contract Airdrop {
  > |    address public beneficiary;
    |    uint public fundingGoal;
    |    uint public amountRaised;
  at /home/jiaming/mavs_srcs/contract@0xf5ac04111dfecaf859071c4a424ebcda1379825b.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'Airdrop':
    |contract Airdrop {
    |    address public beneficiary;
  > |    uint public fundingGoal;
    |    uint public amountRaised;
    |    uint public deadline;
  at /home/jiaming/mavs_srcs/contract@0xf5ac04111dfecaf859071c4a424ebcda1379825b.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'Airdrop':
    |    address public beneficiary;
    |    uint public fundingGoal;
  > |    uint public amountRaised;
    |    uint public deadline;
    |    uint public price;
  at /home/jiaming/mavs_srcs/contract@0xf5ac04111dfecaf859071c4a424ebcda1379825b.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'Airdrop':
    |    uint public fundingGoal;
    |    uint public amountRaised;
  > |    uint public deadline;
    |    uint public price;
    |    token public tokenReward;
  at /home/jiaming/mavs_srcs/contract@0xf5ac04111dfecaf859071c4a424ebcda1379825b.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'Airdrop':
    |    uint public amountRaised;
    |    uint public deadline;
  > |    uint public price;
    |    token public tokenReward;
    |    mapping(address => uint256) public balanceOf;
  at /home/jiaming/mavs_srcs/contract@0xf5ac04111dfecaf859071c4a424ebcda1379825b.sol(12)

[33mWarning[0m for MissingInputValidation in contract 'Airdrop':
    |    uint public deadline;
    |    uint public price;
  > |    token public tokenReward;
    |    mapping(address => uint256) public balanceOf;
    |    bool fundingGoalReached = false;
  at /home/jiaming/mavs_srcs/contract@0xf5ac04111dfecaf859071c4a424ebcda1379825b.sol(13)

[33mWarning[0m for MissingInputValidation in contract 'Airdrop':
    |     * Checks if the goal or time limit has been reached and ends the campaign
    |     */
  > |    function checkGoalReached() {
    |        if (amountRaised >= fundingGoal){
    |            fundingGoalReached = true;
  at /home/jiaming/mavs_srcs/contract@0xf5ac04111dfecaf859071c4a424ebcda1379825b.sol(63)

[33mWarning[0m for MissingInputValidation in contract 'Airdrop':
    |     * the amount they contributed.
    |     */
  > |    function safeWithdrawal() {
    |        
    |        if (beneficiary == msg.sender) {
  at /home/jiaming/mavs_srcs/contract@0xf5ac04111dfecaf859071c4a424ebcda1379825b.sol(79)

[31mViolation[0m for TODAmount in contract 'Airdrop':
    |        
    |        if (beneficiary == msg.sender) {
  > |            if (beneficiary.send(amountRaised)) {
    |                FundTransfer(beneficiary, amountRaised, false);
    |            } else {
  at /home/jiaming/mavs_srcs/contract@0xf5ac04111dfecaf859071c4a424ebcda1379825b.sol(82)

[33mWarning[0m for TODReceiver in contract 'Airdrop':
    |        
    |        if (beneficiary == msg.sender) {
  > |            if (beneficiary.send(amountRaised)) {
    |                FundTransfer(beneficiary, amountRaised, false);
    |            } else {
  at /home/jiaming/mavs_srcs/contract@0xf5ac04111dfecaf859071c4a424ebcda1379825b.sol(82)

[33mWarning[0m for UnhandledException in contract 'Airdrop':
    |        
    |        if (beneficiary == msg.sender) {
  > |            if (beneficiary.send(amountRaised)) {
    |                FundTransfer(beneficiary, amountRaised, false);
    |            } else {
  at /home/jiaming/mavs_srcs/contract@0xf5ac04111dfecaf859071c4a424ebcda1379825b.sol(82)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Airdrop':
    |        
    |        if (beneficiary == msg.sender) {
  > |            if (beneficiary.send(amountRaised)) {
    |                FundTransfer(beneficiary, amountRaised, false);
    |            } else {
  at /home/jiaming/mavs_srcs/contract@0xf5ac04111dfecaf859071c4a424ebcda1379825b.sol(82)

[31mViolation[0m for UnrestrictedWrite in contract 'Airdrop':
    |    function checkGoalReached() {
    |        if (amountRaised >= fundingGoal){
  > |            fundingGoalReached = true;
    |            GoalReached(beneficiary, amountRaised);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xf5ac04111dfecaf859071c4a424ebcda1379825b.sol(65)

[31mViolation[0m for UnrestrictedWrite in contract 'Airdrop':
    |            GoalReached(beneficiary, amountRaised);
    |        }
  > |        airdropClosed = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xf5ac04111dfecaf859071c4a424ebcda1379825b.sol(68)

[33mWarning[0m for UnrestrictedWrite in contract 'Airdrop':
    |            } else {
    |                //If we fail to send the funds to beneficiary, unlock funders balance
  > |                fundingGoalReached = false;
    |            }
    |        }
  at /home/jiaming/mavs_srcs/contract@0xf5ac04111dfecaf859071c4a424ebcda1379825b.sol(86)


