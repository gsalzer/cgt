Processing contract: /home/jiaming/mavs_srcs/contract@0x04a84b5368c9006ed05e837f8132e9f1c0287482.sol:Everest
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x04a84b5368c9006ed05e837f8132e9f1c0287482.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for DAOConstantGas in contract 'Everest':
    |            uint payout = payoutAmount();
    |            allPercentWithdraw[msg.sender] = allPercentWithdraw[msg.sender].add(payout);
  > |            msg.sender.transfer(payout);
    |            time[msg.sender] = now;
    |            emit Withdraw(msg.sender, payout, 'collectPercent');
  at /home/jiaming/mavs_srcs/contract@0x04a84b5368c9006ed05e837f8132e9f1c0287482.sol(37)

[31mViolation[0m for DAOConstantGas in contract 'Everest':
    |            time[msg.sender] = now;
    |
  > |            ownerAddress.transfer(msg.value.mul(ownerPercent).div(100));
    |            adminAddress.transfer(msg.value.mul(ownerPercent).div(100));
    |            emit Invest(msg.sender, msg.value);
  at /home/jiaming/mavs_srcs/contract@0x04a84b5368c9006ed05e837f8132e9f1c0287482.sol(76)

[33mWarning[0m for DAOConstantGas in contract 'Everest':
    |
    |            ownerAddress.transfer(msg.value.mul(ownerPercent).div(100));
  > |            adminAddress.transfer(msg.value.mul(ownerPercent).div(100));
    |            emit Invest(msg.sender, msg.value);
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0x04a84b5368c9006ed05e837f8132e9f1c0287482.sol(77)

[33mWarning[0m for LockedEther in contract 'Everest':
    |pragma solidity 0.4.25;
    |
  > |contract Everest {
    |    using SafeMath for uint;
    |    mapping(address => uint) public balance;
  at /home/jiaming/mavs_srcs/contract@0x04a84b5368c9006ed05e837f8132e9f1c0287482.sol(3)

[33mWarning[0m for TODAmount in contract 'Everest':
    |            uint payout = payoutAmount();
    |            allPercentWithdraw[msg.sender] = allPercentWithdraw[msg.sender].add(payout);
  > |            msg.sender.transfer(payout);
    |            time[msg.sender] = now;
    |            emit Withdraw(msg.sender, payout, 'collectPercent');
  at /home/jiaming/mavs_srcs/contract@0x04a84b5368c9006ed05e837f8132e9f1c0287482.sol(37)

[33mWarning[0m for TODAmount in contract 'Everest':
    |                if (balance[referrer] > 0 && referrer != msg.sender) {
    |                    uint256 sum = msg.value.mul(projectPercent).div(1000);
  > |                    referrer.transfer(sum);
    |                    emit Withdraw(referrer, sum, 'referral');
    |
  at /home/jiaming/mavs_srcs/contract@0x04a84b5368c9006ed05e837f8132e9f1c0287482.sol(61)

[33mWarning[0m for TODAmount in contract 'Everest':
    |                    emit Withdraw(referrer, sum, 'referral');
    |
  > |                    msg.sender.transfer(sum);
    |                    emit Withdraw(msg.sender, sum, 'referral');
    |                }
  at /home/jiaming/mavs_srcs/contract@0x04a84b5368c9006ed05e837f8132e9f1c0287482.sol(64)

[33mWarning[0m for TODAmount in contract 'Everest':
    |            time[msg.sender] = now;
    |
  > |            ownerAddress.transfer(msg.value.mul(ownerPercent).div(100));
    |            adminAddress.transfer(msg.value.mul(ownerPercent).div(100));
    |            emit Invest(msg.sender, msg.value);
  at /home/jiaming/mavs_srcs/contract@0x04a84b5368c9006ed05e837f8132e9f1c0287482.sol(76)

[33mWarning[0m for TODAmount in contract 'Everest':
    |
    |            ownerAddress.transfer(msg.value.mul(ownerPercent).div(100));
  > |            adminAddress.transfer(msg.value.mul(ownerPercent).div(100));
    |            emit Invest(msg.sender, msg.value);
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0x04a84b5368c9006ed05e837f8132e9f1c0287482.sol(77)

[33mWarning[0m for TODReceiver in contract 'Everest':
    |            uint payout = payoutAmount();
    |            allPercentWithdraw[msg.sender] = allPercentWithdraw[msg.sender].add(payout);
  > |            msg.sender.transfer(payout);
    |            time[msg.sender] = now;
    |            emit Withdraw(msg.sender, payout, 'collectPercent');
  at /home/jiaming/mavs_srcs/contract@0x04a84b5368c9006ed05e837f8132e9f1c0287482.sol(37)

[33mWarning[0m for TODReceiver in contract 'Everest':
    |                if (balance[referrer] > 0 && referrer != msg.sender) {
    |                    uint256 sum = msg.value.mul(projectPercent).div(1000);
  > |                    referrer.transfer(sum);
    |                    emit Withdraw(referrer, sum, 'referral');
    |
  at /home/jiaming/mavs_srcs/contract@0x04a84b5368c9006ed05e837f8132e9f1c0287482.sol(61)

[33mWarning[0m for TODReceiver in contract 'Everest':
    |                    emit Withdraw(referrer, sum, 'referral');
    |
  > |                    msg.sender.transfer(sum);
    |                    emit Withdraw(msg.sender, sum, 'referral');
    |                }
  at /home/jiaming/mavs_srcs/contract@0x04a84b5368c9006ed05e837f8132e9f1c0287482.sol(64)

[33mWarning[0m for TODReceiver in contract 'Everest':
    |            time[msg.sender] = now;
    |
  > |            ownerAddress.transfer(msg.value.mul(ownerPercent).div(100));
    |            adminAddress.transfer(msg.value.mul(ownerPercent).div(100));
    |            emit Invest(msg.sender, msg.value);
  at /home/jiaming/mavs_srcs/contract@0x04a84b5368c9006ed05e837f8132e9f1c0287482.sol(76)

[33mWarning[0m for TODReceiver in contract 'Everest':
    |
    |            ownerAddress.transfer(msg.value.mul(ownerPercent).div(100));
  > |            adminAddress.transfer(msg.value.mul(ownerPercent).div(100));
    |            emit Invest(msg.sender, msg.value);
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0x04a84b5368c9006ed05e837f8132e9f1c0287482.sol(77)

[33mWarning[0m for UnhandledException in contract 'Everest':
    |            uint payout = payoutAmount();
    |            allPercentWithdraw[msg.sender] = allPercentWithdraw[msg.sender].add(payout);
  > |            msg.sender.transfer(payout);
    |            time[msg.sender] = now;
    |            emit Withdraw(msg.sender, payout, 'collectPercent');
  at /home/jiaming/mavs_srcs/contract@0x04a84b5368c9006ed05e837f8132e9f1c0287482.sol(37)

[33mWarning[0m for UnhandledException in contract 'Everest':
    |                if (balance[referrer] > 0 && referrer != msg.sender) {
    |                    uint256 sum = msg.value.mul(projectPercent).div(1000);
  > |                    referrer.transfer(sum);
    |                    emit Withdraw(referrer, sum, 'referral');
    |
  at /home/jiaming/mavs_srcs/contract@0x04a84b5368c9006ed05e837f8132e9f1c0287482.sol(61)

[33mWarning[0m for UnhandledException in contract 'Everest':
    |                    emit Withdraw(referrer, sum, 'referral');
    |
  > |                    msg.sender.transfer(sum);
    |                    emit Withdraw(msg.sender, sum, 'referral');
    |                }
  at /home/jiaming/mavs_srcs/contract@0x04a84b5368c9006ed05e837f8132e9f1c0287482.sol(64)

[33mWarning[0m for UnhandledException in contract 'Everest':
    |            time[msg.sender] = now;
    |
  > |            ownerAddress.transfer(msg.value.mul(ownerPercent).div(100));
    |            adminAddress.transfer(msg.value.mul(ownerPercent).div(100));
    |            emit Invest(msg.sender, msg.value);
  at /home/jiaming/mavs_srcs/contract@0x04a84b5368c9006ed05e837f8132e9f1c0287482.sol(76)

[33mWarning[0m for UnhandledException in contract 'Everest':
    |
    |            ownerAddress.transfer(msg.value.mul(ownerPercent).div(100));
  > |            adminAddress.transfer(msg.value.mul(ownerPercent).div(100));
    |            emit Invest(msg.sender, msg.value);
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0x04a84b5368c9006ed05e837f8132e9f1c0287482.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'Everest':
    |    function collectPercent() userExist checkTime internal {
    |        if (balance[msg.sender].mul(2) <= allPercentWithdraw[msg.sender]) {
  > |            balance[msg.sender] = 0;
    |            time[msg.sender] = 0;
    |            allPercentWithdraw[msg.sender] = 0;
  at /home/jiaming/mavs_srcs/contract@0x04a84b5368c9006ed05e837f8132e9f1c0287482.sol(31)

[33mWarning[0m for UnrestrictedWrite in contract 'Everest':
    |        if (balance[msg.sender].mul(2) <= allPercentWithdraw[msg.sender]) {
    |            balance[msg.sender] = 0;
  > |            time[msg.sender] = 0;
    |            allPercentWithdraw[msg.sender] = 0;
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0x04a84b5368c9006ed05e837f8132e9f1c0287482.sol(32)

[33mWarning[0m for UnrestrictedWrite in contract 'Everest':
    |            balance[msg.sender] = 0;
    |            time[msg.sender] = 0;
  > |            allPercentWithdraw[msg.sender] = 0;
    |        } else {
    |            uint payout = payoutAmount();
  at /home/jiaming/mavs_srcs/contract@0x04a84b5368c9006ed05e837f8132e9f1c0287482.sol(33)

[33mWarning[0m for UnrestrictedWrite in contract 'Everest':
    |        } else {
    |            uint payout = payoutAmount();
  > |            allPercentWithdraw[msg.sender] = allPercentWithdraw[msg.sender].add(payout);
    |            msg.sender.transfer(payout);
    |            time[msg.sender] = now;
  at /home/jiaming/mavs_srcs/contract@0x04a84b5368c9006ed05e837f8132e9f1c0287482.sol(36)

[33mWarning[0m for UnrestrictedWrite in contract 'Everest':
    |            allPercentWithdraw[msg.sender] = allPercentWithdraw[msg.sender].add(payout);
    |            msg.sender.transfer(payout);
  > |            time[msg.sender] = now;
    |            emit Withdraw(msg.sender, payout, 'collectPercent');
    |        }
  at /home/jiaming/mavs_srcs/contract@0x04a84b5368c9006ed05e837f8132e9f1c0287482.sol(38)

[33mWarning[0m for UnrestrictedWrite in contract 'Everest':
    |            }
    |
  > |            balance[msg.sender] = balance[msg.sender].add(msg.value);
    |            time[msg.sender] = now;
    |
  at /home/jiaming/mavs_srcs/contract@0x04a84b5368c9006ed05e837f8132e9f1c0287482.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'Everest':
    |
    |            balance[msg.sender] = balance[msg.sender].add(msg.value);
  > |            time[msg.sender] = now;
    |
    |            ownerAddress.transfer(msg.value.mul(ownerPercent).div(100));
  at /home/jiaming/mavs_srcs/contract@0x04a84b5368c9006ed05e837f8132e9f1c0287482.sol(74)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |        if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0x04a84b5368c9006ed05e837f8132e9f1c0287482.sol(99)


