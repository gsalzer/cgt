Processing contract: /home/jiaming/mavs_srcs/contract@0xbdb94f1bcd37846f2f333604e8eb3ec247f0a461.sol:Mainsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbdb94f1bcd37846f2f333604e8eb3ec247f0a461.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for DAOConstantGas in contract 'Mainsale':
    |    if (totalRaised > hardCap) {
    |      uint refundAmount = totalRaised.sub(hardCap);
  > |      msg.sender.transfer(refundAmount);
    |      contribution = contribution.sub(refundAmount);
    |      refundAmount = 0;
  at /home/jiaming/mavs_srcs/contract@0xbdb94f1bcd37846f2f333604e8eb3ec247f0a461.sol(74)

[33mWarning[0m for DAOConstantGas in contract 'Mainsale':
    |      totalRaised = hardCap;
    |    }
  > |    multisig.transfer(contribution);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xbdb94f1bcd37846f2f333604e8eb3ec247f0a461.sol(79)

[33mWarning[0m for DAOConstantGas in contract 'Mainsale':
    |
    |  function withdrawStuck() onlyOwner {
  > |    multisig.transfer(this.balance);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xbdb94f1bcd37846f2f333604e8eb3ec247f0a461.sol(83)

[33mWarning[0m for LockedEther in contract 'Mainsale':
    |}
    |
  > |contract Mainsale {
    |
    |  using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0xbdb94f1bcd37846f2f333604e8eb3ec247f0a461.sol(33)

[31mViolation[0m for TODAmount in contract 'Mainsale':
    |    if (totalRaised > hardCap) {
    |      uint refundAmount = totalRaised.sub(hardCap);
  > |      msg.sender.transfer(refundAmount);
    |      contribution = contribution.sub(refundAmount);
    |      refundAmount = 0;
  at /home/jiaming/mavs_srcs/contract@0xbdb94f1bcd37846f2f333604e8eb3ec247f0a461.sol(74)

[31mViolation[0m for TODAmount in contract 'Mainsale':
    |
    |  function withdrawStuck() onlyOwner {
  > |    multisig.transfer(this.balance);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xbdb94f1bcd37846f2f333604e8eb3ec247f0a461.sol(83)

[33mWarning[0m for TODReceiver in contract 'Mainsale':
    |    if (totalRaised > hardCap) {
    |      uint refundAmount = totalRaised.sub(hardCap);
  > |      msg.sender.transfer(refundAmount);
    |      contribution = contribution.sub(refundAmount);
    |      refundAmount = 0;
  at /home/jiaming/mavs_srcs/contract@0xbdb94f1bcd37846f2f333604e8eb3ec247f0a461.sol(74)

[33mWarning[0m for TODReceiver in contract 'Mainsale':
    |
    |  function withdrawStuck() onlyOwner {
  > |    multisig.transfer(this.balance);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xbdb94f1bcd37846f2f333604e8eb3ec247f0a461.sol(83)

[33mWarning[0m for UnhandledException in contract 'Mainsale':
    |    if (totalRaised > hardCap) {
    |      uint refundAmount = totalRaised.sub(hardCap);
  > |      msg.sender.transfer(refundAmount);
    |      contribution = contribution.sub(refundAmount);
    |      refundAmount = 0;
  at /home/jiaming/mavs_srcs/contract@0xbdb94f1bcd37846f2f333604e8eb3ec247f0a461.sol(74)

[33mWarning[0m for UnhandledException in contract 'Mainsale':
    |      totalRaised = hardCap;
    |    }
  > |    multisig.transfer(contribution);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xbdb94f1bcd37846f2f333604e8eb3ec247f0a461.sol(79)

[33mWarning[0m for UnhandledException in contract 'Mainsale':
    |
    |  function withdrawStuck() onlyOwner {
  > |    multisig.transfer(this.balance);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xbdb94f1bcd37846f2f333604e8eb3ec247f0a461.sol(83)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Mainsale':
    |
    |  function withdrawStuck() onlyOwner {
  > |    multisig.transfer(this.balance);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xbdb94f1bcd37846f2f333604e8eb3ec247f0a461.sol(83)

[31mViolation[0m for UnrestrictedWrite in contract 'Mainsale':
    |  function() payable belowCap withinTimeLimit {
    |    require(msg.value >= MIN_CONTRIBUTION && msg.value <= MAX_CONTRIBUTION);
  > |    totalRaised = totalRaised.add(msg.value);
    |    uint contribution = msg.value;
    |    if (totalRaised > hardCap) {
  at /home/jiaming/mavs_srcs/contract@0xbdb94f1bcd37846f2f333604e8eb3ec247f0a461.sol(70)

[31mViolation[0m for UnrestrictedWrite in contract 'Mainsale':
    |      contribution = contribution.sub(refundAmount);
    |      refundAmount = 0;
  > |      totalRaised = hardCap;
    |    }
    |    multisig.transfer(contribution);
  at /home/jiaming/mavs_srcs/contract@0xbdb94f1bcd37846f2f333604e8eb3ec247f0a461.sol(77)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xbdb94f1bcd37846f2f333604e8eb3ec247f0a461.sol(7)


