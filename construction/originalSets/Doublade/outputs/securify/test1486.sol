Processing contract: /home/jiaming/mavs_srcs/contract@0x5eb5226d2b4b32af62c732982ad681789e083315.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5eb5226d2b4b32af62c732982ad681789e083315.sol:SafeBonus
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5eb5226d2b4b32af62c732982ad681789e083315.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5eb5226d2b4b32af62c732982ad681789e083315.sol:VesaPreICO
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5eb5226d2b4b32af62c732982ad681789e083315.sol:token
[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x5eb5226d2b4b32af62c732982ad681789e083315.sol(40)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |    address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x5eb5226d2b4b32af62c732982ad681789e083315.sol(41)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |     * @param newOwner The address to transfer ownership to.
    |     */
  > |    function transferOwnership(address newOwner) public onlyOwner {
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x5eb5226d2b4b32af62c732982ad681789e083315.sol(69)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x5eb5226d2b4b32af62c732982ad681789e083315.sol(72)

[33mWarning[0m for LockedEther in contract 'SafeBonus':
    |}
    |
  > |library SafeBonus {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x5eb5226d2b4b32af62c732982ad681789e083315.sol(32)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.18;
    |
  > |library SafeMath {
    |    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |        if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0x5eb5226d2b4b32af62c732982ad681789e083315.sol(3)

[31mViolation[0m for DAOConstantGas in contract 'VesaPreICO':
    |            balanceOf[msg.sender] = 0;
    |            if (amount > 0) {
  > |                if (msg.sender.send(amount)) {
    |                    FundTransfer(msg.sender, amount, false);
    |                } else {
  at /home/jiaming/mavs_srcs/contract@0x5eb5226d2b4b32af62c732982ad681789e083315.sol(198)

[31mViolation[0m for DAOConstantGas in contract 'VesaPreICO':
    |
    |        if (fundingGoalReached && beneficiary == msg.sender) {
  > |            if (beneficiary.send(amountRaised)) {
    |                FundTransfer(beneficiary, amountRaised, false);
    |            } else {
  at /home/jiaming/mavs_srcs/contract@0x5eb5226d2b4b32af62c732982ad681789e083315.sol(207)

[33mWarning[0m for LockedEther in contract 'VesaPreICO':
    |}
    |
  > |contract VesaPreICO is Ownable {
    |    using SafeMath for uint256;
    |    using SafeBonus for uint256;
  at /home/jiaming/mavs_srcs/contract@0x5eb5226d2b4b32af62c732982ad681789e083315.sol(80)

[31mViolation[0m for TODAmount in contract 'VesaPreICO':
    |
    |        if (fundingGoalReached && beneficiary == msg.sender) {
  > |            if (beneficiary.send(amountRaised)) {
    |                FundTransfer(beneficiary, amountRaised, false);
    |            } else {
  at /home/jiaming/mavs_srcs/contract@0x5eb5226d2b4b32af62c732982ad681789e083315.sol(207)

[33mWarning[0m for TODReceiver in contract 'VesaPreICO':
    |            balanceOf[msg.sender] = 0;
    |            if (amount > 0) {
  > |                if (msg.sender.send(amount)) {
    |                    FundTransfer(msg.sender, amount, false);
    |                } else {
  at /home/jiaming/mavs_srcs/contract@0x5eb5226d2b4b32af62c732982ad681789e083315.sol(198)

[33mWarning[0m for UnhandledException in contract 'VesaPreICO':
    |        uint tokensToTransferWithBonuses = tokensToTransfer.addBonus(currentBonus);
    |
  > |        tokenReward.transfer(msg.sender, tokensToTransferWithBonuses);
    |        FundTransfer(msg.sender, amount, true);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5eb5226d2b4b32af62c732982ad681789e083315.sol(169)

[33mWarning[0m for UnhandledException in contract 'VesaPreICO':
    |            balanceOf[msg.sender] = 0;
    |            if (amount > 0) {
  > |                if (msg.sender.send(amount)) {
    |                    FundTransfer(msg.sender, amount, false);
    |                } else {
  at /home/jiaming/mavs_srcs/contract@0x5eb5226d2b4b32af62c732982ad681789e083315.sol(198)

[33mWarning[0m for UnhandledException in contract 'VesaPreICO':
    |
    |        if (fundingGoalReached && beneficiary == msg.sender) {
  > |            if (beneficiary.send(amountRaised)) {
    |                FundTransfer(beneficiary, amountRaised, false);
    |            } else {
  at /home/jiaming/mavs_srcs/contract@0x5eb5226d2b4b32af62c732982ad681789e083315.sol(207)

[33mWarning[0m for UnhandledException in contract 'VesaPreICO':
    |
    |    function tokensWithdrawal(address receiver, uint amount) public onlyOwner {
  > |        tokenReward.transfer(receiver, amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5eb5226d2b4b32af62c732982ad681789e083315.sol(217)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'VesaPreICO':
    |        uint tokensToTransferWithBonuses = tokensToTransfer.addBonus(currentBonus);
    |
  > |        tokenReward.transfer(msg.sender, tokensToTransferWithBonuses);
    |        FundTransfer(msg.sender, amount, true);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5eb5226d2b4b32af62c732982ad681789e083315.sol(169)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'VesaPreICO':
    |
    |    function tokensWithdrawal(address receiver, uint amount) public onlyOwner {
  > |        tokenReward.transfer(receiver, amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5eb5226d2b4b32af62c732982ad681789e083315.sol(217)

[31mViolation[0m for UnrestrictedWrite in contract 'VesaPreICO':
    |    function checkGoalReached() public companyCanBeFinished {
    |        if (amountRaised >= fundingGoal){
  > |            fundingGoalReached = true;
    |            GoalReached(beneficiary, amountRaised);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x5eb5226d2b4b32af62c732982ad681789e083315.sol(180)

[31mViolation[0m for UnrestrictedWrite in contract 'VesaPreICO':
    |            GoalReached(beneficiary, amountRaised);
    |        }
  > |        crowdsaleClosed = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5eb5226d2b4b32af62c732982ad681789e083315.sol(183)

[33mWarning[0m for UnrestrictedWrite in contract 'VesaPreICO':
    |        if (!fundingGoalReached) {
    |            uint amount = balanceOf[msg.sender];
  > |            balanceOf[msg.sender] = 0;
    |            if (amount > 0) {
    |                if (msg.sender.send(amount)) {
  at /home/jiaming/mavs_srcs/contract@0x5eb5226d2b4b32af62c732982ad681789e083315.sol(196)

[33mWarning[0m for UnrestrictedWrite in contract 'VesaPreICO':
    |                    FundTransfer(msg.sender, amount, false);
    |                } else {
  > |                    balanceOf[msg.sender] = amount;
    |                }
    |            }
  at /home/jiaming/mavs_srcs/contract@0x5eb5226d2b4b32af62c732982ad681789e083315.sol(201)

[33mWarning[0m for UnrestrictedWrite in contract 'VesaPreICO':
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x5eb5226d2b4b32af62c732982ad681789e083315.sol(72)


