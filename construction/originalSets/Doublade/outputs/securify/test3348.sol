Processing contract: /home/jiaming/mavs_srcs/contract@0xdc20655a6de13496dd385f7ab903e4e6150e55a5.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xdc20655a6de13496dd385f7ab903e4e6150e55a5.sol:SafeBonus
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xdc20655a6de13496dd385f7ab903e4e6150e55a5.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xdc20655a6de13496dd385f7ab903e4e6150e55a5.sol:VesaStage2PreICO
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xdc20655a6de13496dd385f7ab903e4e6150e55a5.sol:token
[33mWarning[0m for LockedEther in contract 'Ownable':
    |	}
    |
  > |	contract Ownable {
    |	    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xdc20655a6de13496dd385f7ab903e4e6150e55a5.sol(40)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |	contract Ownable {
  > |	    address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xdc20655a6de13496dd385f7ab903e4e6150e55a5.sol(41)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |	     * @param newOwner The address to transfer ownership to.
    |	     */
  > |	    function transferOwnership(address newOwner) public onlyOwner {
    |	        require(newOwner != address(0));
    |	        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xdc20655a6de13496dd385f7ab903e4e6150e55a5.sol(69)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |	        require(newOwner != address(0));
    |	        OwnershipTransferred(owner, newOwner);
  > |	        owner = newOwner;
    |	    }
    |	}
  at /home/jiaming/mavs_srcs/contract@0xdc20655a6de13496dd385f7ab903e4e6150e55a5.sol(72)

[33mWarning[0m for LockedEther in contract 'SafeBonus':
    |	}
    |
  > |	library SafeBonus {
    |	    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xdc20655a6de13496dd385f7ab903e4e6150e55a5.sol(32)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.18;
    |
  > |	library SafeMath {
    |	    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |	        if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0xdc20655a6de13496dd385f7ab903e4e6150e55a5.sol(3)

[31mViolation[0m for DAOConstantGas in contract 'VesaStage2PreICO':
    |	            balanceOf[msg.sender] = 0;
    |	            if (amount > 0) {
  > |	                if (msg.sender.send(amount)) {
    |	                    FundTransfer(msg.sender, amount, false);
    |	                } else {
  at /home/jiaming/mavs_srcs/contract@0xdc20655a6de13496dd385f7ab903e4e6150e55a5.sol(193)

[31mViolation[0m for DAOConstantGas in contract 'VesaStage2PreICO':
    |
    |	        if (beneficiary == msg.sender) {
  > |	            if (beneficiary.send(amountRaised)) {
    |	                FundTransfer(beneficiary, amountRaised, false);
    |	                crowdsaleClosed = true;
  at /home/jiaming/mavs_srcs/contract@0xdc20655a6de13496dd385f7ab903e4e6150e55a5.sol(202)

[33mWarning[0m for LockedEther in contract 'VesaStage2PreICO':
    |	}
    |
  > |	contract VesaStage2PreICO is Ownable {
    |	    using SafeMath for uint256;
    |	    using SafeBonus for uint256;
  at /home/jiaming/mavs_srcs/contract@0xdc20655a6de13496dd385f7ab903e4e6150e55a5.sol(80)

[31mViolation[0m for TODAmount in contract 'VesaStage2PreICO':
    |
    |	        if (beneficiary == msg.sender) {
  > |	            if (beneficiary.send(amountRaised)) {
    |	                FundTransfer(beneficiary, amountRaised, false);
    |	                crowdsaleClosed = true;
  at /home/jiaming/mavs_srcs/contract@0xdc20655a6de13496dd385f7ab903e4e6150e55a5.sol(202)

[31mViolation[0m for TODReceiver in contract 'VesaStage2PreICO':
    |
    |	        if (beneficiary == msg.sender) {
  > |	            if (beneficiary.send(amountRaised)) {
    |	                FundTransfer(beneficiary, amountRaised, false);
    |	                crowdsaleClosed = true;
  at /home/jiaming/mavs_srcs/contract@0xdc20655a6de13496dd385f7ab903e4e6150e55a5.sol(202)

[33mWarning[0m for TODReceiver in contract 'VesaStage2PreICO':
    |	            balanceOf[msg.sender] = 0;
    |	            if (amount > 0) {
  > |	                if (msg.sender.send(amount)) {
    |	                    FundTransfer(msg.sender, amount, false);
    |	                } else {
  at /home/jiaming/mavs_srcs/contract@0xdc20655a6de13496dd385f7ab903e4e6150e55a5.sol(193)

[33mWarning[0m for UnhandledException in contract 'VesaStage2PreICO':
    |	        uint tokensToTransferWithBonuses = tokensToTransfer.addBonus(currentBonus);
    |
  > |	        tokenReward.transfer(msg.sender, tokensToTransferWithBonuses);
    |	        FundTransfer(msg.sender, amount, true);
    |	    }
  at /home/jiaming/mavs_srcs/contract@0xdc20655a6de13496dd385f7ab903e4e6150e55a5.sol(164)

[33mWarning[0m for UnhandledException in contract 'VesaStage2PreICO':
    |	            balanceOf[msg.sender] = 0;
    |	            if (amount > 0) {
  > |	                if (msg.sender.send(amount)) {
    |	                    FundTransfer(msg.sender, amount, false);
    |	                } else {
  at /home/jiaming/mavs_srcs/contract@0xdc20655a6de13496dd385f7ab903e4e6150e55a5.sol(193)

[33mWarning[0m for UnhandledException in contract 'VesaStage2PreICO':
    |
    |	        if (beneficiary == msg.sender) {
  > |	            if (beneficiary.send(amountRaised)) {
    |	                FundTransfer(beneficiary, amountRaised, false);
    |	                crowdsaleClosed = true;
  at /home/jiaming/mavs_srcs/contract@0xdc20655a6de13496dd385f7ab903e4e6150e55a5.sol(202)

[33mWarning[0m for UnhandledException in contract 'VesaStage2PreICO':
    |
    |	    function tokensWithdrawal(address receiver, uint amount) public onlyOwner {
  > |	        tokenReward.transfer(receiver, amount);
    |	    }
    |
  at /home/jiaming/mavs_srcs/contract@0xdc20655a6de13496dd385f7ab903e4e6150e55a5.sol(213)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'VesaStage2PreICO':
    |	        uint tokensToTransferWithBonuses = tokensToTransfer.addBonus(currentBonus);
    |
  > |	        tokenReward.transfer(msg.sender, tokensToTransferWithBonuses);
    |	        FundTransfer(msg.sender, amount, true);
    |	    }
  at /home/jiaming/mavs_srcs/contract@0xdc20655a6de13496dd385f7ab903e4e6150e55a5.sol(164)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'VesaStage2PreICO':
    |
    |	        if (beneficiary == msg.sender) {
  > |	            if (beneficiary.send(amountRaised)) {
    |	                FundTransfer(beneficiary, amountRaised, false);
    |	                crowdsaleClosed = true;
  at /home/jiaming/mavs_srcs/contract@0xdc20655a6de13496dd385f7ab903e4e6150e55a5.sol(202)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'VesaStage2PreICO':
    |
    |	    function tokensWithdrawal(address receiver, uint amount) public onlyOwner {
  > |	        tokenReward.transfer(receiver, amount);
    |	    }
    |
  at /home/jiaming/mavs_srcs/contract@0xdc20655a6de13496dd385f7ab903e4e6150e55a5.sol(213)

[31mViolation[0m for UnrestrictedWrite in contract 'VesaStage2PreICO':
    |	    function checkGoalReached() public afterDeadline {
    |	        if (amountRaised >= fundingGoal){
  > |	            fundingGoalReached = true;
    |	            GoalReached(beneficiary, amountRaised);
    |	        }
  at /home/jiaming/mavs_srcs/contract@0xdc20655a6de13496dd385f7ab903e4e6150e55a5.sol(175)

[31mViolation[0m for UnrestrictedWrite in contract 'VesaStage2PreICO':
    |	            GoalReached(beneficiary, amountRaised);
    |	        }
  > |	        crowdsaleClosed = true;
    |	    }
    |
  at /home/jiaming/mavs_srcs/contract@0xdc20655a6de13496dd385f7ab903e4e6150e55a5.sol(178)

[33mWarning[0m for UnrestrictedWrite in contract 'VesaStage2PreICO':
    |	        require(msg.value > minSum);
    |	        uint amount = msg.value;
  > |	        balanceOf[msg.sender] = balanceOf[msg.sender].add(amount);
    |	        amountRaised = amountRaised.add(amount);
    |
  at /home/jiaming/mavs_srcs/contract@0xdc20655a6de13496dd385f7ab903e4e6150e55a5.sol(155)

[33mWarning[0m for UnrestrictedWrite in contract 'VesaStage2PreICO':
    |	        if (allowRefund) {
    |	            uint amount = balanceOf[msg.sender];
  > |	            balanceOf[msg.sender] = 0;
    |	            if (amount > 0) {
    |	                if (msg.sender.send(amount)) {
  at /home/jiaming/mavs_srcs/contract@0xdc20655a6de13496dd385f7ab903e4e6150e55a5.sol(191)

[33mWarning[0m for UnrestrictedWrite in contract 'VesaStage2PreICO':
    |	                    FundTransfer(msg.sender, amount, false);
    |	                } else {
  > |	                    balanceOf[msg.sender] = amount;
    |	                }
    |	            }
  at /home/jiaming/mavs_srcs/contract@0xdc20655a6de13496dd385f7ab903e4e6150e55a5.sol(196)

[33mWarning[0m for UnrestrictedWrite in contract 'VesaStage2PreICO':
    |	            if (beneficiary.send(amountRaised)) {
    |	                FundTransfer(beneficiary, amountRaised, false);
  > |	                crowdsaleClosed = true;
    |	            } else {
    |	                //If we fail to send the funds to beneficiary, unlock funders balance
  at /home/jiaming/mavs_srcs/contract@0xdc20655a6de13496dd385f7ab903e4e6150e55a5.sol(204)

[33mWarning[0m for UnrestrictedWrite in contract 'VesaStage2PreICO':
    |	            } else {
    |	                //If we fail to send the funds to beneficiary, unlock funders balance
  > |	                fundingGoalReached = false;
    |	            }
    |	        }
  at /home/jiaming/mavs_srcs/contract@0xdc20655a6de13496dd385f7ab903e4e6150e55a5.sol(207)

[33mWarning[0m for UnrestrictedWrite in contract 'VesaStage2PreICO':
    |	        require(newOwner != address(0));
    |	        OwnershipTransferred(owner, newOwner);
  > |	        owner = newOwner;
    |	    }
    |	}
  at /home/jiaming/mavs_srcs/contract@0xdc20655a6de13496dd385f7ab903e4e6150e55a5.sol(72)

[33mWarning[0m for UnrestrictedWrite in contract 'VesaStage2PreICO':
    |
    |	    function initializeRefund() public afterDeadline onlyOwner {
  > |	    	allowRefund = true;
    |	    }
    |
  at /home/jiaming/mavs_srcs/contract@0xdc20655a6de13496dd385f7ab903e4e6150e55a5.sol(217)

[33mWarning[0m for UnrestrictedWrite in contract 'VesaStage2PreICO':
    |	        require(newBeneficiary != address(0));
    |	        BeneficiaryChanged(beneficiary, newBeneficiary);
  > |	        beneficiary = newBeneficiary;
    |	    }
    |
  at /home/jiaming/mavs_srcs/contract@0xdc20655a6de13496dd385f7ab903e4e6150e55a5.sol(223)


