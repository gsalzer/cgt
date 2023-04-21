Processing contract: /home/jiaming/mavs_srcs/contract@0xa8df33a40fe2e3278e4d94a974f70778043fbd20.sol:I2Presale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa8df33a40fe2e3278e4d94a974f70778043fbd20.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa8df33a40fe2e3278e4d94a974f70778043fbd20.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa8df33a40fe2e3278e4d94a974f70778043fbd20.sol:token
[31mViolation[0m for DAOConstantGas in contract 'I2Presale':
    |            balanceOf[msg.sender] = 0;
    |            if (amount > 0) {
  > |                if (msg.sender.send(amount)) {
    |                    FundTransfer(msg.sender, amount, false);
    |                } else {
  at /home/jiaming/mavs_srcs/contract@0xa8df33a40fe2e3278e4d94a974f70778043fbd20.sol(165)

[31mViolation[0m for DAOConstantGas in contract 'I2Presale':
    |
    |        if (fundingGoalReached && beneficiary == msg.sender) {
  > |            if (beneficiary.send(amountRaised)) {
    |                FundTransfer(beneficiary, amountRaised, false);
    |            } else {
  at /home/jiaming/mavs_srcs/contract@0xa8df33a40fe2e3278e4d94a974f70778043fbd20.sol(174)

[33mWarning[0m for LockedEther in contract 'I2Presale':
    |}
    |
  > |contract I2Presale is Ownable {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xa8df33a40fe2e3278e4d94a974f70778043fbd20.sol(47)

[31mViolation[0m for TODAmount in contract 'I2Presale':
    |
    |        if (fundingGoalReached && beneficiary == msg.sender) {
  > |            if (beneficiary.send(amountRaised)) {
    |                FundTransfer(beneficiary, amountRaised, false);
    |            } else {
  at /home/jiaming/mavs_srcs/contract@0xa8df33a40fe2e3278e4d94a974f70778043fbd20.sol(174)

[33mWarning[0m for TODReceiver in contract 'I2Presale':
    |            balanceOf[msg.sender] = 0;
    |            if (amount > 0) {
  > |                if (msg.sender.send(amount)) {
    |                    FundTransfer(msg.sender, amount, false);
    |                } else {
  at /home/jiaming/mavs_srcs/contract@0xa8df33a40fe2e3278e4d94a974f70778043fbd20.sol(165)

[33mWarning[0m for UnhandledException in contract 'I2Presale':
    |        uint tokensToSend = amount.div(price).mul(10**18);
    |        uint tokenToSendWithBonus = tokensToSend.add(tokensToSend.mul(bonus).div(100));
  > |        tokenReward.transfer(msg.sender, tokenToSendWithBonus);
    |        FundTransfer(msg.sender, amount, true);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa8df33a40fe2e3278e4d94a974f70778043fbd20.sol(133)

[33mWarning[0m for UnhandledException in contract 'I2Presale':
    |            balanceOf[msg.sender] = 0;
    |            if (amount > 0) {
  > |                if (msg.sender.send(amount)) {
    |                    FundTransfer(msg.sender, amount, false);
    |                } else {
  at /home/jiaming/mavs_srcs/contract@0xa8df33a40fe2e3278e4d94a974f70778043fbd20.sol(165)

[33mWarning[0m for UnhandledException in contract 'I2Presale':
    |
    |        if (fundingGoalReached && beneficiary == msg.sender) {
  > |            if (beneficiary.send(amountRaised)) {
    |                FundTransfer(beneficiary, amountRaised, false);
    |            } else {
  at /home/jiaming/mavs_srcs/contract@0xa8df33a40fe2e3278e4d94a974f70778043fbd20.sol(174)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'I2Presale':
    |        uint tokensToSend = amount.div(price).mul(10**18);
    |        uint tokenToSendWithBonus = tokensToSend.add(tokensToSend.mul(bonus).div(100));
  > |        tokenReward.transfer(msg.sender, tokenToSendWithBonus);
    |        FundTransfer(msg.sender, amount, true);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa8df33a40fe2e3278e4d94a974f70778043fbd20.sol(133)

[31mViolation[0m for UnrestrictedWrite in contract 'I2Presale':
    |        uint amount = msg.value;
    |        balanceOf[msg.sender] += amount;
  > |        amountRaised += amount;
    |        // bonus in percent 
    |        // msg.value.add(msg.value.mul(bonus).div(100));
  at /home/jiaming/mavs_srcs/contract@0xa8df33a40fe2e3278e4d94a974f70778043fbd20.sol(128)

[31mViolation[0m for UnrestrictedWrite in contract 'I2Presale':
    |    function checkGoalReached() public afterDeadline {
    |        if (amountRaised >= fundingGoal){
  > |            fundingGoalReached = true;
    |            GoalReached(beneficiary, amountRaised);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xa8df33a40fe2e3278e4d94a974f70778043fbd20.sol(146)

[31mViolation[0m for UnrestrictedWrite in contract 'I2Presale':
    |            GoalReached(beneficiary, amountRaised);
    |        }
  > |        crowdsaleClosed = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xa8df33a40fe2e3278e4d94a974f70778043fbd20.sol(149)

[33mWarning[0m for UnrestrictedWrite in contract 'I2Presale':
    |        
    |        uint amount = msg.value;
  > |        balanceOf[msg.sender] += amount;
    |        amountRaised += amount;
    |        // bonus in percent 
  at /home/jiaming/mavs_srcs/contract@0xa8df33a40fe2e3278e4d94a974f70778043fbd20.sol(127)

[33mWarning[0m for UnrestrictedWrite in contract 'I2Presale':
    |        if (!fundingGoalReached) {
    |            uint amount = balanceOf[msg.sender];
  > |            balanceOf[msg.sender] = 0;
    |            if (amount > 0) {
    |                if (msg.sender.send(amount)) {
  at /home/jiaming/mavs_srcs/contract@0xa8df33a40fe2e3278e4d94a974f70778043fbd20.sol(163)

[33mWarning[0m for UnrestrictedWrite in contract 'I2Presale':
    |                    FundTransfer(msg.sender, amount, false);
    |                } else {
  > |                    balanceOf[msg.sender] = amount;
    |                }
    |            }
  at /home/jiaming/mavs_srcs/contract@0xa8df33a40fe2e3278e4d94a974f70778043fbd20.sol(168)

[33mWarning[0m for UnrestrictedWrite in contract 'I2Presale':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa8df33a40fe2e3278e4d94a974f70778043fbd20.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'I2Presale':
    |    */
    |    function changeBonus (uint _bonus) public onlyOwner {
  > |        bonus = _bonus;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xa8df33a40fe2e3278e4d94a974f70778043fbd20.sol(98)

[33mWarning[0m for UnrestrictedWrite in contract 'I2Presale':
    |    */
    |    function setUSDPrice (uint _usd) public onlyOwner {
  > |        usd = _usd;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xa8df33a40fe2e3278e4d94a974f70778043fbd20.sol(105)

[33mWarning[0m for UnrestrictedWrite in contract 'I2Presale':
    |    */
    |    function finshCrowdsale () public onlyOwner {
  > |        deadline = now;
    |        crowdsaleClosed = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa8df33a40fe2e3278e4d94a974f70778043fbd20.sol(112)

[33mWarning[0m for UnrestrictedWrite in contract 'I2Presale':
    |    function finshCrowdsale () public onlyOwner {
    |        deadline = now;
  > |        crowdsaleClosed = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xa8df33a40fe2e3278e4d94a974f70778043fbd20.sol(113)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xa8df33a40fe2e3278e4d94a974f70778043fbd20.sol(12)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xa8df33a40fe2e3278e4d94a974f70778043fbd20.sol(13)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xa8df33a40fe2e3278e4d94a974f70778043fbd20.sol(39)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa8df33a40fe2e3278e4d94a974f70778043fbd20.sol(42)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xa8df33a40fe2e3278e4d94a974f70778043fbd20.sol(188)


