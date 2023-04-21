Processing contract: /home/jiaming/mavs_srcs/contract@0x64946fc4589757b716a04d5e63eb6b928a488564.sol:EthCapsule
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x64946fc4589757b716a04d5e63eb6b928a488564.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x64946fc4589757b716a04d5e63eb6b928a488564.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'EthCapsule':
    |    totalBuriedCapsules--;
    |    capsule.withdrawnTime = block.timestamp;
  > |    msg.sender.transfer(capsule.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x64946fc4589757b716a04d5e63eb6b928a488564.sol(88)

[33mWarning[0m for LockedEther in contract 'EthCapsule':
    |}
    |
  > |contract EthCapsule is Ownable {
    |  struct Depositor {
    |    uint numCapsules;
  at /home/jiaming/mavs_srcs/contract@0x64946fc4589757b716a04d5e63eb6b928a488564.sol(29)

[31mViolation[0m for MissingInputValidation in contract 'EthCapsule':
    |  }
    |
  > |  function dig(uint capsuleNumber) {
    |    Capsule storage capsule = depositors[msg.sender].capsules[capsuleNumber];
    |
  at /home/jiaming/mavs_srcs/contract@0x64946fc4589757b716a04d5e63eb6b928a488564.sol(80)

[31mViolation[0m for MissingInputValidation in contract 'EthCapsule':
    |  }
    |
  > |  function setMinDeposit(uint min) onlyOwner {
    |    minDeposit = min;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x64946fc4589757b716a04d5e63eb6b928a488564.sol(91)

[31mViolation[0m for MissingInputValidation in contract 'EthCapsule':
    |  }
    |
  > |  function setMinDuration(uint min) onlyOwner {
    |    minDuration = min;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x64946fc4589757b716a04d5e63eb6b928a488564.sol(95)

[31mViolation[0m for MissingInputValidation in contract 'EthCapsule':
    |  }
    |
  > |  function setMaxDuration(uint max) onlyOwner {
    |    maxDuration = max;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x64946fc4589757b716a04d5e63eb6b928a488564.sol(99)

[31mViolation[0m for MissingInputValidation in contract 'EthCapsule':
    |  }
    |  
  > |  function getCapsuleInfo(uint capsuleNum) constant returns (uint, uint, uint, uint, uint) {
    |    return (
    |        depositors[msg.sender].capsules[capsuleNum].value,
  at /home/jiaming/mavs_srcs/contract@0x64946fc4589757b716a04d5e63eb6b928a488564.sol(103)

[33mWarning[0m for MissingInputValidation in contract 'EthCapsule':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |  function Ownable() {
  at /home/jiaming/mavs_srcs/contract@0x64946fc4589757b716a04d5e63eb6b928a488564.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'EthCapsule':
    |  }
    |
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));
    |    owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x64946fc4589757b716a04d5e63eb6b928a488564.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'EthCapsule':
    |
    |library SafeMath {
  > |  function add(uint256 a, uint256 b) internal constant returns (uint256) {
    |    uint256 c = a + b;
    |    assert(c >= a);
  at /home/jiaming/mavs_srcs/contract@0x64946fc4589757b716a04d5e63eb6b928a488564.sol(22)

[33mWarning[0m for MissingInputValidation in contract 'EthCapsule':
    |  }
    |
  > |  uint public minDeposit = 1000000000000000;
    |  uint public minDuration = 0;
    |  uint public maxDuration = 157680000;
  at /home/jiaming/mavs_srcs/contract@0x64946fc4589757b716a04d5e63eb6b928a488564.sol(45)

[33mWarning[0m for MissingInputValidation in contract 'EthCapsule':
    |
    |  uint public minDeposit = 1000000000000000;
  > |  uint public minDuration = 0;
    |  uint public maxDuration = 157680000;
    |  uint public totalCapsules;
  at /home/jiaming/mavs_srcs/contract@0x64946fc4589757b716a04d5e63eb6b928a488564.sol(46)

[33mWarning[0m for MissingInputValidation in contract 'EthCapsule':
    |  uint public minDeposit = 1000000000000000;
    |  uint public minDuration = 0;
  > |  uint public maxDuration = 157680000;
    |  uint public totalCapsules;
    |  uint public totalValue;
  at /home/jiaming/mavs_srcs/contract@0x64946fc4589757b716a04d5e63eb6b928a488564.sol(47)

[33mWarning[0m for MissingInputValidation in contract 'EthCapsule':
    |  uint public minDuration = 0;
    |  uint public maxDuration = 157680000;
  > |  uint public totalCapsules;
    |  uint public totalValue;
    |  uint public totalBuriedCapsules;
  at /home/jiaming/mavs_srcs/contract@0x64946fc4589757b716a04d5e63eb6b928a488564.sol(48)

[33mWarning[0m for MissingInputValidation in contract 'EthCapsule':
    |  uint public maxDuration = 157680000;
    |  uint public totalCapsules;
  > |  uint public totalValue;
    |  uint public totalBuriedCapsules;
    |
  at /home/jiaming/mavs_srcs/contract@0x64946fc4589757b716a04d5e63eb6b928a488564.sol(49)

[33mWarning[0m for MissingInputValidation in contract 'EthCapsule':
    |  uint public totalCapsules;
    |  uint public totalValue;
  > |  uint public totalBuriedCapsules;
    |
    |  function bury(uint unlockTime) payable {
  at /home/jiaming/mavs_srcs/contract@0x64946fc4589757b716a04d5e63eb6b928a488564.sol(50)

[33mWarning[0m for MissingInputValidation in contract 'EthCapsule':
    |  }
    |
  > |  function getNumberOfCapsules() constant returns (uint) {
    |    return depositors[msg.sender].numCapsules;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x64946fc4589757b716a04d5e63eb6b928a488564.sol(113)

[33mWarning[0m for MissingInputValidation in contract 'EthCapsule':
    |  }
    |
  > |  function totalBuriedValue() constant returns (uint) {
    |    return this.balance;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x64946fc4589757b716a04d5e63eb6b928a488564.sol(117)

[33mWarning[0m for TODReceiver in contract 'EthCapsule':
    |    totalBuriedCapsules--;
    |    capsule.withdrawnTime = block.timestamp;
  > |    msg.sender.transfer(capsule.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x64946fc4589757b716a04d5e63eb6b928a488564.sol(88)

[33mWarning[0m for UnhandledException in contract 'EthCapsule':
    |    totalBuriedCapsules--;
    |    capsule.withdrawnTime = block.timestamp;
  > |    msg.sender.transfer(capsule.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x64946fc4589757b716a04d5e63eb6b928a488564.sol(88)

[31mViolation[0m for UnrestrictedWrite in contract 'EthCapsule':
    |    });
    |
  > |    totalBuriedCapsules++;
    |    totalCapsules++;
    |    totalValue = SafeMath.add(totalValue, msg.value);
  at /home/jiaming/mavs_srcs/contract@0x64946fc4589757b716a04d5e63eb6b928a488564.sol(75)

[31mViolation[0m for UnrestrictedWrite in contract 'EthCapsule':
    |
    |    totalBuriedCapsules++;
  > |    totalCapsules++;
    |    totalValue = SafeMath.add(totalValue, msg.value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x64946fc4589757b716a04d5e63eb6b928a488564.sol(76)

[31mViolation[0m for UnrestrictedWrite in contract 'EthCapsule':
    |    totalBuriedCapsules++;
    |    totalCapsules++;
  > |    totalValue = SafeMath.add(totalValue, msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x64946fc4589757b716a04d5e63eb6b928a488564.sol(77)

[31mViolation[0m for UnrestrictedWrite in contract 'EthCapsule':
    |    require(capsule.withdrawnTime == 0);
    |
  > |    totalBuriedCapsules--;
    |    capsule.withdrawnTime = block.timestamp;
    |    msg.sender.transfer(capsule.value);
  at /home/jiaming/mavs_srcs/contract@0x64946fc4589757b716a04d5e63eb6b928a488564.sol(86)

[33mWarning[0m for UnrestrictedWrite in contract 'EthCapsule':
    |
    |    if (depositors[msg.sender].numCapsules <= 0) {
  > |        depositors[msg.sender] = Depositor({ numCapsules: 0 });
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x64946fc4589757b716a04d5e63eb6b928a488564.sol(61)

[33mWarning[0m for UnrestrictedWrite in contract 'EthCapsule':
    |    Depositor storage depositor = depositors[msg.sender];
    |
  > |    depositor.numCapsules++;
    |    depositor.capsules[depositor.numCapsules] = Capsule({
    |        value: msg.value,
  at /home/jiaming/mavs_srcs/contract@0x64946fc4589757b716a04d5e63eb6b928a488564.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'EthCapsule':
    |
    |    depositor.numCapsules++;
  > |    depositor.capsules[depositor.numCapsules] = Capsule({
    |        value: msg.value,
    |        id: depositors[msg.sender].numCapsules,
  at /home/jiaming/mavs_srcs/contract@0x64946fc4589757b716a04d5e63eb6b928a488564.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'EthCapsule':
    |
    |    totalBuriedCapsules--;
  > |    capsule.withdrawnTime = block.timestamp;
    |    msg.sender.transfer(capsule.value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x64946fc4589757b716a04d5e63eb6b928a488564.sol(87)

[33mWarning[0m for UnrestrictedWrite in contract 'EthCapsule':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x64946fc4589757b716a04d5e63eb6b928a488564.sol(17)

[33mWarning[0m for UnrestrictedWrite in contract 'EthCapsule':
    |
    |  function setMinDeposit(uint min) onlyOwner {
  > |    minDeposit = min;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x64946fc4589757b716a04d5e63eb6b928a488564.sol(92)

[33mWarning[0m for UnrestrictedWrite in contract 'EthCapsule':
    |
    |  function setMinDuration(uint min) onlyOwner {
  > |    minDuration = min;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x64946fc4589757b716a04d5e63eb6b928a488564.sol(96)

[33mWarning[0m for UnrestrictedWrite in contract 'EthCapsule':
    |
    |  function setMaxDuration(uint max) onlyOwner {
  > |    maxDuration = max;
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0x64946fc4589757b716a04d5e63eb6b928a488564.sol(100)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |pragma solidity ^0.4.11;
    |
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x64946fc4589757b716a04d5e63eb6b928a488564.sol(3)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |  function Ownable() {
  at /home/jiaming/mavs_srcs/contract@0x64946fc4589757b716a04d5e63eb6b928a488564.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |  }
    |
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));
    |    owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x64946fc4589757b716a04d5e63eb6b928a488564.sol(15)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x64946fc4589757b716a04d5e63eb6b928a488564.sol(17)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |}
    |
  > |library SafeMath {
    |  function add(uint256 a, uint256 b) internal constant returns (uint256) {
    |    uint256 c = a + b;
  at /home/jiaming/mavs_srcs/contract@0x64946fc4589757b716a04d5e63eb6b928a488564.sol(21)


