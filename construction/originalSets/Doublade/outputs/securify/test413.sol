Processing contract: /home/jiaming/mavs_srcs/contract@0x1a9c1c1914a20fe9ae67b25913ffb8227c5cb617.sol:Crowdsale
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1a9c1c1914a20fe9ae67b25913ffb8227c5cb617.sol:token
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'Crowdsale':
    |    function safeWithdrawal() afterDeadline {
    |        if (beneficiary == msg.sender) {
  > |            if (beneficiary.send(amountRaised)) {
    |                FundTransfer(beneficiary, amountRaised, false);
    |            }
  at /home/jiaming/mavs_srcs/contract@0x1a9c1c1914a20fe9ae67b25913ffb8227c5cb617.sol(56)

[33mWarning[0m for LockedEther in contract 'Crowdsale':
    |contract token { function transferFrom(address sender, address receiver, uint amount){  } }
    |
  > |contract Crowdsale {
    |    address public beneficiary;
    |    address public tokenAdmin;
  at /home/jiaming/mavs_srcs/contract@0x1a9c1c1914a20fe9ae67b25913ffb8227c5cb617.sol(5)

[31mViolation[0m for MissingInputValidation in contract 'Crowdsale':
    |    uint public fundingGoal; uint public amountRaised; uint public deadline; uint public price;
    |    token public tokenReward;
  > |    mapping(address => uint256) public balanceOf;
    |    bool fundingGoalReached = false;
    |    event GoalReached(address beneficiary, uint amountRaised);
  at /home/jiaming/mavs_srcs/contract@0x1a9c1c1914a20fe9ae67b25913ffb8227c5cb617.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |
    |contract Crowdsale {
  > |    address public beneficiary;
    |    address public tokenAdmin;
    |    uint public fundingGoal; uint public amountRaised; uint public deadline; uint public price;
  at /home/jiaming/mavs_srcs/contract@0x1a9c1c1914a20fe9ae67b25913ffb8227c5cb617.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |contract Crowdsale {
    |    address public beneficiary;
  > |    address public tokenAdmin;
    |    uint public fundingGoal; uint public amountRaised; uint public deadline; uint public price;
    |    token public tokenReward;
  at /home/jiaming/mavs_srcs/contract@0x1a9c1c1914a20fe9ae67b25913ffb8227c5cb617.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |    address public beneficiary;
    |    address public tokenAdmin;
  > |    uint public fundingGoal; uint public amountRaised; uint public deadline; uint public price;
    |    token public tokenReward;
    |    mapping(address => uint256) public balanceOf;
  at /home/jiaming/mavs_srcs/contract@0x1a9c1c1914a20fe9ae67b25913ffb8227c5cb617.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |    address public tokenAdmin;
    |    uint public fundingGoal; uint public amountRaised; uint public deadline; uint public price;
  > |    token public tokenReward;
    |    mapping(address => uint256) public balanceOf;
    |    bool fundingGoalReached = false;
  at /home/jiaming/mavs_srcs/contract@0x1a9c1c1914a20fe9ae67b25913ffb8227c5cb617.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |    event GoalReached(address beneficiary, uint amountRaised);
    |    event FundTransfer(address backer, uint amount, bool isContribution);
  > |    bool public crowdsaleClosed = false;
    |
    |    /* data structure to hold information about campaign contributors */
  at /home/jiaming/mavs_srcs/contract@0x1a9c1c1914a20fe9ae67b25913ffb8227c5cb617.sol(14)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |
    |    /* checks if the goal or time limit has been reached and ends the campaign */
  > |    function checkGoalReached() afterDeadline {
    |        if (amountRaised >= fundingGoal){
    |            fundingGoalReached = true;
  at /home/jiaming/mavs_srcs/contract@0x1a9c1c1914a20fe9ae67b25913ffb8227c5cb617.sol(46)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |    }
    |
  > |    function safeWithdrawal() afterDeadline {
    |        if (beneficiary == msg.sender) {
    |            if (beneficiary.send(amountRaised)) {
  at /home/jiaming/mavs_srcs/contract@0x1a9c1c1914a20fe9ae67b25913ffb8227c5cb617.sol(54)

[31mViolation[0m for TODAmount in contract 'Crowdsale':
    |    function safeWithdrawal() afterDeadline {
    |        if (beneficiary == msg.sender) {
  > |            if (beneficiary.send(amountRaised)) {
    |                FundTransfer(beneficiary, amountRaised, false);
    |            }
  at /home/jiaming/mavs_srcs/contract@0x1a9c1c1914a20fe9ae67b25913ffb8227c5cb617.sol(56)

[33mWarning[0m for TODReceiver in contract 'Crowdsale':
    |    function safeWithdrawal() afterDeadline {
    |        if (beneficiary == msg.sender) {
  > |            if (beneficiary.send(amountRaised)) {
    |                FundTransfer(beneficiary, amountRaised, false);
    |            }
  at /home/jiaming/mavs_srcs/contract@0x1a9c1c1914a20fe9ae67b25913ffb8227c5cb617.sol(56)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |    function safeWithdrawal() afterDeadline {
    |        if (beneficiary == msg.sender) {
  > |            if (beneficiary.send(amountRaised)) {
    |                FundTransfer(beneficiary, amountRaised, false);
    |            }
  at /home/jiaming/mavs_srcs/contract@0x1a9c1c1914a20fe9ae67b25913ffb8227c5cb617.sol(56)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |    function safeWithdrawal() afterDeadline {
    |        if (beneficiary == msg.sender) {
  > |            if (beneficiary.send(amountRaised)) {
    |                FundTransfer(beneficiary, amountRaised, false);
    |            }
  at /home/jiaming/mavs_srcs/contract@0x1a9c1c1914a20fe9ae67b25913ffb8227c5cb617.sol(56)

[31mViolation[0m for UnrestrictedWrite in contract 'Crowdsale':
    |    function checkGoalReached() afterDeadline {
    |        if (amountRaised >= fundingGoal){
  > |            fundingGoalReached = true;
    |            GoalReached(beneficiary, amountRaised);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x1a9c1c1914a20fe9ae67b25913ffb8227c5cb617.sol(48)

[31mViolation[0m for UnrestrictedWrite in contract 'Crowdsale':
    |            GoalReached(beneficiary, amountRaised);
    |        }
  > |        crowdsaleClosed = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x1a9c1c1914a20fe9ae67b25913ffb8227c5cb617.sol(51)

[33mWarning[0m for LockedEther in contract 'token':
    |pragma solidity ^0.4.8;
    |
  > |contract token { function transferFrom(address sender, address receiver, uint amount){  } }
    |
    |contract Crowdsale {
  at /home/jiaming/mavs_srcs/contract@0x1a9c1c1914a20fe9ae67b25913ffb8227c5cb617.sol(3)

[33mWarning[0m for MissingInputValidation in contract 'token':
    |pragma solidity ^0.4.8;
    |
  > |contract token { function transferFrom(address sender, address receiver, uint amount){  } }
    |
    |contract Crowdsale {
  at /home/jiaming/mavs_srcs/contract@0x1a9c1c1914a20fe9ae67b25913ffb8227c5cb617.sol(3)


