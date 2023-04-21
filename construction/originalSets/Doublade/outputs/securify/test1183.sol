Processing contract: /home/jiaming/mavs_srcs/contract@0x4abc1ebf49ab9d98c83609f6475e6ec75ffe409b.sol:ERC20
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4abc1ebf49ab9d98c83609f6475e6ec75ffe409b.sol:PresalePool
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4abc1ebf49ab9d98c83609f6475e6ec75ffe409b.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'ERC20':
    |}
    |
  > |contract ERC20 {
    |  function balanceOf(address _owner) constant returns (uint256 balance) {}
    |  function transfer(address _to, uint256 _value) returns (bool success) {}
  at /home/jiaming/mavs_srcs/contract@0x4abc1ebf49ab9d98c83609f6475e6ec75ffe409b.sol(30)

[31mViolation[0m for DAO in contract 'PresalePool':
    |    require (contributionMin <= amountInWei && amountInWei <= this.balance);
    |    finalBalance = this.balance;
  > |    require (receiverAddress.call.value(amountInWei).gas(msg.gas.sub(5000))());
    |    ethRefundAmount.push(this.balance);
    |    contractStage = 3;
  at /home/jiaming/mavs_srcs/contract@0x4abc1ebf49ab9d98c83609f6475e6ec75ffe409b.sol(292)

[33mWarning[0m for DAOConstantGas in contract 'PresalePool':
    |      uint amountToTransfer = c.balance;
    |      c.balance = 0;
  > |      msg.sender.transfer(amountToTransfer);
    |      ContributorBalanceChanged(msg.sender, 0);
    |    } else {
  at /home/jiaming/mavs_srcs/contract@0x4abc1ebf49ab9d98c83609f6475e6ec75ffe409b.sol(178)

[33mWarning[0m for LockedEther in contract 'PresalePool':
    |}
    |
  > |contract PresalePool {
    |
    |  // SafeMath is a library to ensure that math operations do not have overflow errors
  at /home/jiaming/mavs_srcs/contract@0x4abc1ebf49ab9d98c83609f6475e6ec75ffe409b.sol(35)

[33mWarning[0m for TODAmount in contract 'PresalePool':
    |      c.ethRefund = ethRefundAmount.length;
    |      if (ethAmount > 0) {
  > |        receiver.transfer(ethAmount);
    |        EthRefunded(receiver, ethAmount);
    |      }
  at /home/jiaming/mavs_srcs/contract@0x4abc1ebf49ab9d98c83609f6475e6ec75ffe409b.sol(210)

[33mWarning[0m for TODAmount in contract 'PresalePool':
    |    require (contributionMin <= amountInWei && amountInWei <= this.balance);
    |    finalBalance = this.balance;
  > |    require (receiverAddress.call.value(amountInWei).gas(msg.gas.sub(5000))());
    |    ethRefundAmount.push(this.balance);
    |    contractStage = 3;
  at /home/jiaming/mavs_srcs/contract@0x4abc1ebf49ab9d98c83609f6475e6ec75ffe409b.sol(292)

[33mWarning[0m for TODReceiver in contract 'PresalePool':
    |      uint amountToTransfer = c.balance;
    |      c.balance = 0;
  > |      msg.sender.transfer(amountToTransfer);
    |      ContributorBalanceChanged(msg.sender, 0);
    |    } else {
  at /home/jiaming/mavs_srcs/contract@0x4abc1ebf49ab9d98c83609f6475e6ec75ffe409b.sol(178)

[33mWarning[0m for TODReceiver in contract 'PresalePool':
    |      c.ethRefund = ethRefundAmount.length;
    |      if (ethAmount > 0) {
  > |        receiver.transfer(ethAmount);
    |        EthRefunded(receiver, ethAmount);
    |      }
  at /home/jiaming/mavs_srcs/contract@0x4abc1ebf49ab9d98c83609f6475e6ec75ffe409b.sol(210)

[33mWarning[0m for TODReceiver in contract 'PresalePool':
    |    require (contributionMin <= amountInWei && amountInWei <= this.balance);
    |    finalBalance = this.balance;
  > |    require (receiverAddress.call.value(amountInWei).gas(msg.gas.sub(5000))());
    |    ethRefundAmount.push(this.balance);
    |    contractStage = 3;
  at /home/jiaming/mavs_srcs/contract@0x4abc1ebf49ab9d98c83609f6475e6ec75ffe409b.sol(292)

[33mWarning[0m for UnhandledException in contract 'PresalePool':
    |      uint amountToTransfer = c.balance;
    |      c.balance = 0;
  > |      msg.sender.transfer(amountToTransfer);
    |      ContributorBalanceChanged(msg.sender, 0);
    |    } else {
  at /home/jiaming/mavs_srcs/contract@0x4abc1ebf49ab9d98c83609f6475e6ec75ffe409b.sol(178)

[33mWarning[0m for UnhandledException in contract 'PresalePool':
    |      c.ethRefund = ethRefundAmount.length;
    |      if (ethAmount > 0) {
  > |        receiver.transfer(ethAmount);
    |        EthRefunded(receiver, ethAmount);
    |      }
  at /home/jiaming/mavs_srcs/contract@0x4abc1ebf49ab9d98c83609f6475e6ec75ffe409b.sol(210)

[33mWarning[0m for UnhandledException in contract 'PresalePool':
    |      c.tokensClaimed[tokenAddr] = d.pct.length;
    |      if (tokenAmount > 0) {
  > |        require (d.token.transfer(receiver, tokenAmount));
    |        d.balanceRemaining = d.balanceRemaining.sub(tokenAmount);
    |        TokensWithdrawn(receiver, tokenAmount);
  at /home/jiaming/mavs_srcs/contract@0x4abc1ebf49ab9d98c83609f6475e6ec75ffe409b.sol(221)

[33mWarning[0m for UnhandledException in contract 'PresalePool':
    |    require (contributionMin <= amountInWei && amountInWei <= this.balance);
    |    finalBalance = this.balance;
  > |    require (receiverAddress.call.value(amountInWei).gas(msg.gas.sub(5000))());
    |    ethRefundAmount.push(this.balance);
    |    contractStage = 3;
  at /home/jiaming/mavs_srcs/contract@0x4abc1ebf49ab9d98c83609f6475e6ec75ffe409b.sol(292)

[33mWarning[0m for UnhandledException in contract 'PresalePool':
    |    var d = distributionMap[tokenAddr];    
    |    if (d.pct.length == 0) d.token = ERC20(tokenAddr);
  > |    uint amount = d.token.balanceOf(this).sub(d.balanceRemaining);
    |    require (amount > 0);
    |    if (feePct > 0) {
  at /home/jiaming/mavs_srcs/contract@0x4abc1ebf49ab9d98c83609f6475e6ec75ffe409b.sol(311)

[33mWarning[0m for UnhandledException in contract 'PresalePool':
    |    require (amount > 0);
    |    if (feePct > 0) {
  > |      require (d.token.transfer(owner,_applyPct(amount, feePct)));
    |    }
    |    amount = d.token.balanceOf(this).sub(d.balanceRemaining);
  at /home/jiaming/mavs_srcs/contract@0x4abc1ebf49ab9d98c83609f6475e6ec75ffe409b.sol(314)

[33mWarning[0m for UnhandledException in contract 'PresalePool':
    |      require (d.token.transfer(owner,_applyPct(amount, feePct)));
    |    }
  > |    amount = d.token.balanceOf(this).sub(d.balanceRemaining);
    |    d.balanceRemaining = d.token.balanceOf(this);
    |    d.pct.push(_toPct(amount, finalBalance));
  at /home/jiaming/mavs_srcs/contract@0x4abc1ebf49ab9d98c83609f6475e6ec75ffe409b.sol(316)

[33mWarning[0m for UnhandledException in contract 'PresalePool':
    |    }
    |    amount = d.token.balanceOf(this).sub(d.balanceRemaining);
  > |    d.balanceRemaining = d.token.balanceOf(this);
    |    d.pct.push(_toPct(amount, finalBalance));
    |    WithdrawalsOpen(tokenAddr);
  at /home/jiaming/mavs_srcs/contract@0x4abc1ebf49ab9d98c83609f6475e6ec75ffe409b.sol(317)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PresalePool':
    |      c.ethRefund = ethRefundAmount.length;
    |      if (ethAmount > 0) {
  > |        receiver.transfer(ethAmount);
    |        EthRefunded(receiver, ethAmount);
    |      }
  at /home/jiaming/mavs_srcs/contract@0x4abc1ebf49ab9d98c83609f6475e6ec75ffe409b.sol(210)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PresalePool':
    |      c.tokensClaimed[tokenAddr] = d.pct.length;
    |      if (tokenAmount > 0) {
  > |        require (d.token.transfer(receiver, tokenAmount));
    |        d.balanceRemaining = d.balanceRemaining.sub(tokenAmount);
    |        TokensWithdrawn(receiver, tokenAmount);
  at /home/jiaming/mavs_srcs/contract@0x4abc1ebf49ab9d98c83609f6475e6ec75ffe409b.sol(221)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PresalePool':
    |    require (contributionMin <= amountInWei && amountInWei <= this.balance);
    |    finalBalance = this.balance;
  > |    require (receiverAddress.call.value(amountInWei).gas(msg.gas.sub(5000))());
    |    ethRefundAmount.push(this.balance);
    |    contractStage = 3;
  at /home/jiaming/mavs_srcs/contract@0x4abc1ebf49ab9d98c83609f6475e6ec75ffe409b.sol(292)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PresalePool':
    |    var d = distributionMap[tokenAddr];    
    |    if (d.pct.length == 0) d.token = ERC20(tokenAddr);
  > |    uint amount = d.token.balanceOf(this).sub(d.balanceRemaining);
    |    require (amount > 0);
    |    if (feePct > 0) {
  at /home/jiaming/mavs_srcs/contract@0x4abc1ebf49ab9d98c83609f6475e6ec75ffe409b.sol(311)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PresalePool':
    |    require (amount > 0);
    |    if (feePct > 0) {
  > |      require (d.token.transfer(owner,_applyPct(amount, feePct)));
    |    }
    |    amount = d.token.balanceOf(this).sub(d.balanceRemaining);
  at /home/jiaming/mavs_srcs/contract@0x4abc1ebf49ab9d98c83609f6475e6ec75ffe409b.sol(314)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PresalePool':
    |      require (d.token.transfer(owner,_applyPct(amount, feePct)));
    |    }
  > |    amount = d.token.balanceOf(this).sub(d.balanceRemaining);
    |    d.balanceRemaining = d.token.balanceOf(this);
    |    d.pct.push(_toPct(amount, finalBalance));
  at /home/jiaming/mavs_srcs/contract@0x4abc1ebf49ab9d98c83609f6475e6ec75ffe409b.sol(316)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PresalePool':
    |    }
    |    amount = d.token.balanceOf(this).sub(d.balanceRemaining);
  > |    d.balanceRemaining = d.token.balanceOf(this);
    |    d.pct.push(_toPct(amount, finalBalance));
    |    WithdrawalsOpen(tokenAddr);
  at /home/jiaming/mavs_srcs/contract@0x4abc1ebf49ab9d98c83609f6475e6ec75ffe409b.sol(317)

[33mWarning[0m for UnrestrictedWrite in contract 'PresalePool':
    |pragma solidity ^0.4.19;
    |
  > |// Presale Pool contract for Current
    |// written by @aimdefinitelyahuman
    |
  at /home/jiaming/mavs_srcs/contract@0x4abc1ebf49ab9d98c83609f6475e6ec75ffe409b.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'PresalePool':
    |    locked = true;
    |    _;
  > |    locked = false;
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0x4abc1ebf49ab9d98c83609f6475e6ec75ffe409b.sol(99)

[33mWarning[0m for UnrestrictedWrite in contract 'PresalePool':
    |    uint newBalance = c.balance.add(msg.value);
    |    require (newBalance >= contributionMin);
  > |    c.balance = newBalance;
    |    ContributorBalanceChanged(msg.sender, newBalance);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4abc1ebf49ab9d98c83609f6475e6ec75ffe409b.sol(155)

[33mWarning[0m for UnrestrictedWrite in contract 'PresalePool':
    |    if (contractStage < 3) {
    |      uint amountToTransfer = c.balance;
  > |      c.balance = 0;
    |      msg.sender.transfer(amountToTransfer);
    |      ContributorBalanceChanged(msg.sender, 0);
  at /home/jiaming/mavs_srcs/contract@0x4abc1ebf49ab9d98c83609f6475e6ec75ffe409b.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'PresalePool':
    |        ethAmount = ethAmount.add(_applyPct(ethRefundAmount[i], pct));
    |      }
  > |      c.ethRefund = ethRefundAmount.length;
    |      if (ethAmount > 0) {
    |        receiver.transfer(ethAmount);
  at /home/jiaming/mavs_srcs/contract@0x4abc1ebf49ab9d98c83609f6475e6ec75ffe409b.sol(208)

[33mWarning[0m for UnrestrictedWrite in contract 'PresalePool':
    |        tokenAmount = tokenAmount.add(_applyPct(c.balance, d.pct[i]));
    |      }
  > |      c.tokensClaimed[tokenAddr] = d.pct.length;
    |      if (tokenAmount > 0) {
    |        require (d.token.transfer(receiver, tokenAmount));
  at /home/jiaming/mavs_srcs/contract@0x4abc1ebf49ab9d98c83609f6475e6ec75ffe409b.sol(219)

[33mWarning[0m for UnrestrictedWrite in contract 'PresalePool':
    |      if (tokenAmount > 0) {
    |        require (d.token.transfer(receiver, tokenAmount));
  > |        d.balanceRemaining = d.balanceRemaining.sub(tokenAmount);
    |        TokensWithdrawn(receiver, tokenAmount);
    |      }  
  at /home/jiaming/mavs_srcs/contract@0x4abc1ebf49ab9d98c83609f6475e6ec75ffe409b.sol(222)

[33mWarning[0m for UnrestrictedWrite in contract 'PresalePool':
    |    finalBalance = this.balance;
    |    require (receiverAddress.call.value(amountInWei).gas(msg.gas.sub(5000))());
  > |    ethRefundAmount.push(this.balance);
    |    contractStage = 3;
    |    PoolSubmitted(receiverAddress, amountInWei);
  at /home/jiaming/mavs_srcs/contract@0x4abc1ebf49ab9d98c83609f6475e6ec75ffe409b.sol(293)

[33mWarning[0m for UnrestrictedWrite in contract 'PresalePool':
    |    require (receiverAddress.call.value(amountInWei).gas(msg.gas.sub(5000))());
    |    ethRefundAmount.push(this.balance);
  > |    contractStage = 3;
    |    PoolSubmitted(receiverAddress, amountInWei);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4abc1ebf49ab9d98c83609f6475e6ec75ffe409b.sol(294)

[33mWarning[0m for UnrestrictedWrite in contract 'PresalePool':
    |    }
    |    amount = d.token.balanceOf(this).sub(d.balanceRemaining);
  > |    d.balanceRemaining = d.token.balanceOf(this);
    |    d.pct.push(_toPct(amount, finalBalance));
    |    WithdrawalsOpen(tokenAddr);
  at /home/jiaming/mavs_srcs/contract@0x4abc1ebf49ab9d98c83609f6475e6ec75ffe409b.sol(317)

[33mWarning[0m for UnrestrictedWrite in contract 'PresalePool':
    |    amount = d.token.balanceOf(this).sub(d.balanceRemaining);
    |    d.balanceRemaining = d.token.balanceOf(this);
  > |    d.pct.push(_toPct(amount, finalBalance));
    |    WithdrawalsOpen(tokenAddr);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4abc1ebf49ab9d98c83609f6475e6ec75ffe409b.sol(318)

[33mWarning[0m for UnrestrictedWrite in contract 'PresalePool':
    |pragma solidity ^0.4.19;
    |
  > |// Presale Pool contract for Current
    |// written by @aimdefinitelyahuman
    |
  at /home/jiaming/mavs_srcs/contract@0x4abc1ebf49ab9d98c83609f6475e6ec75ffe409b.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'PresalePool':
    |  modifier noReentrancy() {
    |    require (!locked);
  > |    locked = true;
    |    _;
    |    locked = false;
  at /home/jiaming/mavs_srcs/contract@0x4abc1ebf49ab9d98c83609f6475e6ec75ffe409b.sol(97)

[33mWarning[0m for UnrestrictedWrite in contract 'PresalePool':
    |    require (msg.sender == owner || msg.sender == receiverAddress);
    |    require (msg.value >= contributionMin);
  > |    ethRefundAmount.push(msg.value);
    |    EthRefundReceived(msg.sender, msg.value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4abc1ebf49ab9d98c83609f6475e6ec75ffe409b.sol(164)

[33mWarning[0m for UnrestrictedWrite in contract 'PresalePool':
    |    require (amount >= contributionMin);
    |    require (amount >= this.balance);
  > |    maxContractBalance = amount;
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0x4abc1ebf49ab9d98c83609f6475e6ec75ffe409b.sol(235)

[33mWarning[0m for UnrestrictedWrite in contract 'PresalePool':
    |  function closeContributions () public onlyOwner {
    |    require (contractStage == 1);
  > |    contractStage = 2;
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0x4abc1ebf49ab9d98c83609f6475e6ec75ffe409b.sol(274)

[33mWarning[0m for UnrestrictedWrite in contract 'PresalePool':
    |  function reopenContributions () public onlyOwner {
    |    require (contractStage == 2);
  > |    contractStage = 1;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4abc1ebf49ab9d98c83609f6475e6ec75ffe409b.sol(281)

[33mWarning[0m for UnrestrictedWrite in contract 'PresalePool':
    |    require (contractStage < 3);
    |    require (contributionMin <= amountInWei && amountInWei <= this.balance);
  > |    finalBalance = this.balance;
    |    require (receiverAddress.call.value(amountInWei).gas(msg.gas.sub(5000))());
    |    ethRefundAmount.push(this.balance);
  at /home/jiaming/mavs_srcs/contract@0x4abc1ebf49ab9d98c83609f6475e6ec75ffe409b.sol(291)

[33mWarning[0m for UnrestrictedWrite in contract 'PresalePool':
    |      require (activeToken != 0x00);
    |    } else {
  > |      activeToken = tokenAddr;
    |    }
    |    var d = distributionMap[tokenAddr];    
  at /home/jiaming/mavs_srcs/contract@0x4abc1ebf49ab9d98c83609f6475e6ec75ffe409b.sol(307)

[33mWarning[0m for UnrestrictedWrite in contract 'PresalePool':
    |    }
    |    var d = distributionMap[tokenAddr];    
  > |    if (d.pct.length == 0) d.token = ERC20(tokenAddr);
    |    uint amount = d.token.balanceOf(this).sub(d.balanceRemaining);
    |    require (amount > 0);
  at /home/jiaming/mavs_srcs/contract@0x4abc1ebf49ab9d98c83609f6475e6ec75ffe409b.sol(310)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |
    |
  > |library SafeMath {
    |    
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
  at /home/jiaming/mavs_srcs/contract@0x4abc1ebf49ab9d98c83609f6475e6ec75ffe409b.sol(7)


