Processing contract: /home/jiaming/mavs_srcs/contract@0xf955eb3e1b055e68ca155f58167cd83d6dc195b5.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf955eb3e1b055e68ca155f58167cd83d6dc195b5.sol:SmartMinFin
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |        if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0xf955eb3e1b055e68ca155f58167cd83d6dc195b5.sol(104)

[31mViolation[0m for DAOConstantGas in contract 'SmartMinFin':
    |        if (withdrawalAmount >= availableToWithdrawal) {
    |            withdrawalAmount = availableToWithdrawal;
  > |            msg.sender.send(withdrawalAmount);
    |
    |            deposited[msg.sender] = 0;
  at /home/jiaming/mavs_srcs/contract@0xf955eb3e1b055e68ca155f58167cd83d6dc195b5.sol(54)

[31mViolation[0m for DAOConstantGas in contract 'SmartMinFin':
    |            countOfInvestors--;
    |        } else {
  > |            msg.sender.send(withdrawalAmount);
    |
    |            time[msg.sender] = different.mul(stepTime).add(time[msg.sender]);
  at /home/jiaming/mavs_srcs/contract@0xf955eb3e1b055e68ca155f58167cd83d6dc195b5.sol(63)

[31mViolation[0m for DAOConstantGas in contract 'SmartMinFin':
    |            reservedBalance[msg.sender] = 0;
    |
  > |            admin1.send(msg.value.mul(10).div(100));
    |            admin2.send(msg.value.mul(1).div(100));
    |            admin3.send(msg.value.mul(3).div(100));
  at /home/jiaming/mavs_srcs/contract@0xf955eb3e1b055e68ca155f58167cd83d6dc195b5.sol(84)

[31mViolation[0m for DAOConstantGas in contract 'SmartMinFin':
    |
    |            admin1.send(msg.value.mul(10).div(100));
  > |            admin2.send(msg.value.mul(1).div(100));
    |            admin3.send(msg.value.mul(3).div(100));
    |            admin4.send(msg.value.mul(1).div(100));
  at /home/jiaming/mavs_srcs/contract@0xf955eb3e1b055e68ca155f58167cd83d6dc195b5.sol(85)

[31mViolation[0m for DAOConstantGas in contract 'SmartMinFin':
    |            admin1.send(msg.value.mul(10).div(100));
    |            admin2.send(msg.value.mul(1).div(100));
  > |            admin3.send(msg.value.mul(3).div(100));
    |            admin4.send(msg.value.mul(1).div(100));
    |
  at /home/jiaming/mavs_srcs/contract@0xf955eb3e1b055e68ca155f58167cd83d6dc195b5.sol(86)

[33mWarning[0m for DAOConstantGas in contract 'SmartMinFin':
    |            admin2.send(msg.value.mul(1).div(100));
    |            admin3.send(msg.value.mul(3).div(100));
  > |            admin4.send(msg.value.mul(1).div(100));
    |
    |            emit Invest(msg.sender, msg.value);
  at /home/jiaming/mavs_srcs/contract@0xf955eb3e1b055e68ca155f58167cd83d6dc195b5.sol(87)

[33mWarning[0m for LockedEther in contract 'SmartMinFin':
    |pragma solidity 0.4.25;
    |
  > |contract SmartMinFin {
    |    using SafeMath for uint;
    |    mapping(address => uint) public deposited;
  at /home/jiaming/mavs_srcs/contract@0xf955eb3e1b055e68ca155f58167cd83d6dc195b5.sol(3)

[33mWarning[0m for TODReceiver in contract 'SmartMinFin':
    |        if (withdrawalAmount >= availableToWithdrawal) {
    |            withdrawalAmount = availableToWithdrawal;
  > |            msg.sender.send(withdrawalAmount);
    |
    |            deposited[msg.sender] = 0;
  at /home/jiaming/mavs_srcs/contract@0xf955eb3e1b055e68ca155f58167cd83d6dc195b5.sol(54)

[33mWarning[0m for TODReceiver in contract 'SmartMinFin':
    |            countOfInvestors--;
    |        } else {
  > |            msg.sender.send(withdrawalAmount);
    |
    |            time[msg.sender] = different.mul(stepTime).add(time[msg.sender]);
  at /home/jiaming/mavs_srcs/contract@0xf955eb3e1b055e68ca155f58167cd83d6dc195b5.sol(63)

[31mViolation[0m for UnhandledException in contract 'SmartMinFin':
    |        if (withdrawalAmount >= availableToWithdrawal) {
    |            withdrawalAmount = availableToWithdrawal;
  > |            msg.sender.send(withdrawalAmount);
    |
    |            deposited[msg.sender] = 0;
  at /home/jiaming/mavs_srcs/contract@0xf955eb3e1b055e68ca155f58167cd83d6dc195b5.sol(54)

[31mViolation[0m for UnhandledException in contract 'SmartMinFin':
    |            countOfInvestors--;
    |        } else {
  > |            msg.sender.send(withdrawalAmount);
    |
    |            time[msg.sender] = different.mul(stepTime).add(time[msg.sender]);
  at /home/jiaming/mavs_srcs/contract@0xf955eb3e1b055e68ca155f58167cd83d6dc195b5.sol(63)

[31mViolation[0m for UnhandledException in contract 'SmartMinFin':
    |            reservedBalance[msg.sender] = 0;
    |
  > |            admin1.send(msg.value.mul(10).div(100));
    |            admin2.send(msg.value.mul(1).div(100));
    |            admin3.send(msg.value.mul(3).div(100));
  at /home/jiaming/mavs_srcs/contract@0xf955eb3e1b055e68ca155f58167cd83d6dc195b5.sol(84)

[31mViolation[0m for UnhandledException in contract 'SmartMinFin':
    |
    |            admin1.send(msg.value.mul(10).div(100));
  > |            admin2.send(msg.value.mul(1).div(100));
    |            admin3.send(msg.value.mul(3).div(100));
    |            admin4.send(msg.value.mul(1).div(100));
  at /home/jiaming/mavs_srcs/contract@0xf955eb3e1b055e68ca155f58167cd83d6dc195b5.sol(85)

[31mViolation[0m for UnhandledException in contract 'SmartMinFin':
    |            admin1.send(msg.value.mul(10).div(100));
    |            admin2.send(msg.value.mul(1).div(100));
  > |            admin3.send(msg.value.mul(3).div(100));
    |            admin4.send(msg.value.mul(1).div(100));
    |
  at /home/jiaming/mavs_srcs/contract@0xf955eb3e1b055e68ca155f58167cd83d6dc195b5.sol(86)

[31mViolation[0m for UnhandledException in contract 'SmartMinFin':
    |            admin2.send(msg.value.mul(1).div(100));
    |            admin3.send(msg.value.mul(3).div(100));
  > |            admin4.send(msg.value.mul(1).div(100));
    |
    |            emit Invest(msg.sender, msg.value);
  at /home/jiaming/mavs_srcs/contract@0xf955eb3e1b055e68ca155f58167cd83d6dc195b5.sol(87)

[31mViolation[0m for UnrestrictedWrite in contract 'SmartMinFin':
    |            require(deposited[msg.sender] == 0, "This address is already in use.");
    |
  > |            countOfInvestors += 1;
    |            deposited[msg.sender] = msg.value;
    |            time[msg.sender] = now;
  at /home/jiaming/mavs_srcs/contract@0xf955eb3e1b055e68ca155f58167cd83d6dc195b5.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartMinFin':
    |        if (reservedBalance[msg.sender] > 0) {
    |            withdrawalAmount = withdrawalAmount.add(reservedBalance[msg.sender]);
  > |            reservedBalance[msg.sender] = 0;
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0xf955eb3e1b055e68ca155f58167cd83d6dc195b5.sol(44)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartMinFin':
    |
    |        if (withdrawalAmount > maxWithdrawal) {
  > |            reservedBalance[msg.sender] = withdrawalAmount - maxWithdrawal;
    |            withdrawalAmount = maxWithdrawal;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xf955eb3e1b055e68ca155f58167cd83d6dc195b5.sol(48)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartMinFin':
    |            msg.sender.send(withdrawalAmount);
    |
  > |            deposited[msg.sender] = 0;
    |            time[msg.sender] = 0;
    |            timeFirstDeposit[msg.sender] = 0;
  at /home/jiaming/mavs_srcs/contract@0xf955eb3e1b055e68ca155f58167cd83d6dc195b5.sol(56)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartMinFin':
    |
    |            deposited[msg.sender] = 0;
  > |            time[msg.sender] = 0;
    |            timeFirstDeposit[msg.sender] = 0;
    |            withdraw[msg.sender] = 0;
  at /home/jiaming/mavs_srcs/contract@0xf955eb3e1b055e68ca155f58167cd83d6dc195b5.sol(57)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartMinFin':
    |            deposited[msg.sender] = 0;
    |            time[msg.sender] = 0;
  > |            timeFirstDeposit[msg.sender] = 0;
    |            withdraw[msg.sender] = 0;
    |            reservedBalance[msg.sender] = 0;
  at /home/jiaming/mavs_srcs/contract@0xf955eb3e1b055e68ca155f58167cd83d6dc195b5.sol(58)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartMinFin':
    |            time[msg.sender] = 0;
    |            timeFirstDeposit[msg.sender] = 0;
  > |            withdraw[msg.sender] = 0;
    |            reservedBalance[msg.sender] = 0;
    |            countOfInvestors--;
  at /home/jiaming/mavs_srcs/contract@0xf955eb3e1b055e68ca155f58167cd83d6dc195b5.sol(59)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartMinFin':
    |            timeFirstDeposit[msg.sender] = 0;
    |            withdraw[msg.sender] = 0;
  > |            reservedBalance[msg.sender] = 0;
    |            countOfInvestors--;
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0xf955eb3e1b055e68ca155f58167cd83d6dc195b5.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartMinFin':
    |            msg.sender.send(withdrawalAmount);
    |
  > |            time[msg.sender] = different.mul(stepTime).add(time[msg.sender]);
    |            withdraw[msg.sender] = withdraw[msg.sender].add(withdrawalAmount);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xf955eb3e1b055e68ca155f58167cd83d6dc195b5.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartMinFin':
    |
    |            time[msg.sender] = different.mul(stepTime).add(time[msg.sender]);
  > |            withdraw[msg.sender] = withdraw[msg.sender].add(withdrawalAmount);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0xf955eb3e1b055e68ca155f58167cd83d6dc195b5.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartMinFin':
    |
    |            countOfInvestors += 1;
  > |            deposited[msg.sender] = msg.value;
    |            time[msg.sender] = now;
    |            timeFirstDeposit[msg.sender] = now;
  at /home/jiaming/mavs_srcs/contract@0xf955eb3e1b055e68ca155f58167cd83d6dc195b5.sol(78)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartMinFin':
    |            countOfInvestors += 1;
    |            deposited[msg.sender] = msg.value;
  > |            time[msg.sender] = now;
    |            timeFirstDeposit[msg.sender] = now;
    |            withdraw[msg.sender] = 0;
  at /home/jiaming/mavs_srcs/contract@0xf955eb3e1b055e68ca155f58167cd83d6dc195b5.sol(79)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartMinFin':
    |            deposited[msg.sender] = msg.value;
    |            time[msg.sender] = now;
  > |            timeFirstDeposit[msg.sender] = now;
    |            withdraw[msg.sender] = 0;
    |            reservedBalance[msg.sender] = 0;
  at /home/jiaming/mavs_srcs/contract@0xf955eb3e1b055e68ca155f58167cd83d6dc195b5.sol(80)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartMinFin':
    |            time[msg.sender] = now;
    |            timeFirstDeposit[msg.sender] = now;
  > |            withdraw[msg.sender] = 0;
    |            reservedBalance[msg.sender] = 0;
    |
  at /home/jiaming/mavs_srcs/contract@0xf955eb3e1b055e68ca155f58167cd83d6dc195b5.sol(81)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartMinFin':
    |            timeFirstDeposit[msg.sender] = now;
    |            withdraw[msg.sender] = 0;
  > |            reservedBalance[msg.sender] = 0;
    |
    |            admin1.send(msg.value.mul(10).div(100));
  at /home/jiaming/mavs_srcs/contract@0xf955eb3e1b055e68ca155f58167cd83d6dc195b5.sol(82)


