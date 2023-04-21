Processing contract: /home/jiaming/mavs_srcs/contract@0x3daf415d25829c07af9ce65c8e05817c3bc101ed.sol:Deposit
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3daf415d25829c07af9ce65c8e05817c3bc101ed.sol:MarketplaceProxy
Processing contract: /home/jiaming/mavs_srcs/contract@0x3daf415d25829c07af9ce65c8e05817c3bc101ed.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3daf415d25829c07af9ce65c8e05817c3bc101ed.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for DAO in contract 'Deposit':
    |        // Send all incoming eth if user blocked
    |        if (mp.isUserBlockedByContract(address(this))) {
  > |            mp.payPlatformIncomingTransactionCommission.value(amount)(clientAddress);
    |            emit Blocked();
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0x3daf415d25829c07af9ce65c8e05817c3bc101ed.sol(164)

[31mViolation[0m for DAO in contract 'Deposit':
    |
    |        // Send commission to marketplace
  > |        mp.payPlatformOutgoingTransactionCommission.value(commission)();
    |        emit PlatformOutgoingTransactionCommission(commission);
    |        /* Required code end */
  at /home/jiaming/mavs_srcs/contract@0x3daf415d25829c07af9ce65c8e05817c3bc101ed.sol(203)

[33mWarning[0m for DAOConstantGas in contract 'Deposit':
    |        depositsMap[from].balance -= amount;
    |
  > |        to.transfer(amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x3daf415d25829c07af9ce65c8e05817c3bc101ed.sol(210)

[33mWarning[0m for LockedEther in contract 'Deposit':
    |/* Required code end */
    |
  > |contract Deposit is Ownable {
    |
    |    using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0x3daf415d25829c07af9ce65c8e05817c3bc101ed.sol(103)

[33mWarning[0m for TODAmount in contract 'Deposit':
    |
    |        // Send commission to marketplace
  > |        mp.payPlatformOutgoingTransactionCommission.value(commission)();
    |        emit PlatformOutgoingTransactionCommission(commission);
    |        /* Required code end */
  at /home/jiaming/mavs_srcs/contract@0x3daf415d25829c07af9ce65c8e05817c3bc101ed.sol(203)

[33mWarning[0m for TODAmount in contract 'Deposit':
    |        depositsMap[from].balance -= amount;
    |
  > |        to.transfer(amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x3daf415d25829c07af9ce65c8e05817c3bc101ed.sol(210)

[33mWarning[0m for TODReceiver in contract 'Deposit':
    |        // Send all incoming eth if user blocked
    |        if (mp.isUserBlockedByContract(address(this))) {
  > |            mp.payPlatformIncomingTransactionCommission.value(amount)(clientAddress);
    |            emit Blocked();
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0x3daf415d25829c07af9ce65c8e05817c3bc101ed.sol(164)

[33mWarning[0m for TODReceiver in contract 'Deposit':
    |            emit Blocked();
    |        } else {
  > |            owner.transfer(clientDeposit.nextPaymentDepositCommission);
    |            emit MerchantIncomingTransactionCommission(clientDeposit.nextPaymentDepositCommission, clientAddress);
    |            mp.payPlatformIncomingTransactionCommission.value(clientDeposit.nextPaymentPlatformCommission)(clientAddress);
  at /home/jiaming/mavs_srcs/contract@0x3daf415d25829c07af9ce65c8e05817c3bc101ed.sol(167)

[33mWarning[0m for TODReceiver in contract 'Deposit':
    |            owner.transfer(clientDeposit.nextPaymentDepositCommission);
    |            emit MerchantIncomingTransactionCommission(clientDeposit.nextPaymentDepositCommission, clientAddress);
  > |            mp.payPlatformIncomingTransactionCommission.value(clientDeposit.nextPaymentPlatformCommission)(clientAddress);
    |            emit PlatformIncomingTransactionCommission(clientDeposit.nextPaymentPlatformCommission, clientAddress);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x3daf415d25829c07af9ce65c8e05817c3bc101ed.sol(169)

[33mWarning[0m for TODReceiver in contract 'Deposit':
    |
    |        // Send commission to marketplace
  > |        mp.payPlatformOutgoingTransactionCommission.value(commission)();
    |        emit PlatformOutgoingTransactionCommission(commission);
    |        /* Required code end */
  at /home/jiaming/mavs_srcs/contract@0x3daf415d25829c07af9ce65c8e05817c3bc101ed.sol(203)

[33mWarning[0m for TODReceiver in contract 'Deposit':
    |        depositsMap[from].balance -= amount;
    |
  > |        to.transfer(amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x3daf415d25829c07af9ce65c8e05817c3bc101ed.sol(210)

[33mWarning[0m for UnhandledException in contract 'Deposit':
    |        /* Required code start */
    |        // Send all incoming eth if user blocked
  > |        if (mp.isUserBlockedByContract(address(this))) {
    |            mp.payPlatformIncomingTransactionCommission.value(amount)(clientAddress);
    |            emit Blocked();
  at /home/jiaming/mavs_srcs/contract@0x3daf415d25829c07af9ce65c8e05817c3bc101ed.sol(163)

[33mWarning[0m for UnhandledException in contract 'Deposit':
    |        // Send all incoming eth if user blocked
    |        if (mp.isUserBlockedByContract(address(this))) {
  > |            mp.payPlatformIncomingTransactionCommission.value(amount)(clientAddress);
    |            emit Blocked();
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0x3daf415d25829c07af9ce65c8e05817c3bc101ed.sol(164)

[33mWarning[0m for UnhandledException in contract 'Deposit':
    |            emit Blocked();
    |        } else {
  > |            owner.transfer(clientDeposit.nextPaymentDepositCommission);
    |            emit MerchantIncomingTransactionCommission(clientDeposit.nextPaymentDepositCommission, clientAddress);
    |            mp.payPlatformIncomingTransactionCommission.value(clientDeposit.nextPaymentPlatformCommission)(clientAddress);
  at /home/jiaming/mavs_srcs/contract@0x3daf415d25829c07af9ce65c8e05817c3bc101ed.sol(167)

[33mWarning[0m for UnhandledException in contract 'Deposit':
    |            owner.transfer(clientDeposit.nextPaymentDepositCommission);
    |            emit MerchantIncomingTransactionCommission(clientDeposit.nextPaymentDepositCommission, clientAddress);
  > |            mp.payPlatformIncomingTransactionCommission.value(clientDeposit.nextPaymentPlatformCommission)(clientAddress);
    |            emit PlatformIncomingTransactionCommission(clientDeposit.nextPaymentPlatformCommission, clientAddress);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x3daf415d25829c07af9ce65c8e05817c3bc101ed.sol(169)

[33mWarning[0m for UnhandledException in contract 'Deposit':
    |        /* Required code start */
    |        // Get commission amount from marketplace
  > |        uint256 commission = mp.calculatePlatformCommission(amount);
    |
    |        require(address(this).balance > amount.add(commission));
  at /home/jiaming/mavs_srcs/contract@0x3daf415d25829c07af9ce65c8e05817c3bc101ed.sol(197)

[33mWarning[0m for UnhandledException in contract 'Deposit':
    |
    |        // Send commission to marketplace
  > |        mp.payPlatformOutgoingTransactionCommission.value(commission)();
    |        emit PlatformOutgoingTransactionCommission(commission);
    |        /* Required code end */
  at /home/jiaming/mavs_srcs/contract@0x3daf415d25829c07af9ce65c8e05817c3bc101ed.sol(203)

[33mWarning[0m for UnhandledException in contract 'Deposit':
    |        depositsMap[from].balance -= amount;
    |
  > |        to.transfer(amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x3daf415d25829c07af9ce65c8e05817c3bc101ed.sol(210)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Deposit':
    |        /* Required code start */
    |        // Send all incoming eth if user blocked
  > |        if (mp.isUserBlockedByContract(address(this))) {
    |            mp.payPlatformIncomingTransactionCommission.value(amount)(clientAddress);
    |            emit Blocked();
  at /home/jiaming/mavs_srcs/contract@0x3daf415d25829c07af9ce65c8e05817c3bc101ed.sol(163)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Deposit':
    |        /* Required code start */
    |        // Get commission amount from marketplace
  > |        uint256 commission = mp.calculatePlatformCommission(amount);
    |
    |        require(address(this).balance > amount.add(commission));
  at /home/jiaming/mavs_srcs/contract@0x3daf415d25829c07af9ce65c8e05817c3bc101ed.sol(197)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Deposit':
    |
    |        // Send commission to marketplace
  > |        mp.payPlatformOutgoingTransactionCommission.value(commission)();
    |        emit PlatformOutgoingTransactionCommission(commission);
    |        /* Required code end */
  at /home/jiaming/mavs_srcs/contract@0x3daf415d25829c07af9ce65c8e05817c3bc101ed.sol(203)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Deposit':
    |        depositsMap[from].balance -= amount;
    |
  > |        to.transfer(amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x3daf415d25829c07af9ce65c8e05817c3bc101ed.sol(210)

[33mWarning[0m for UnrestrictedWrite in contract 'Deposit':
    |
    |        // Virtually add ETH to client deposit (sended ETH subtract platform and deposit commissions)
  > |        clientDeposit.balance += amount.sub(clientDeposit.nextPaymentPlatformCommission).sub(clientDeposit.nextPaymentDepositCommission);
    |        emit DepositCommission(clientDeposit.nextPaymentDepositCommission, clientAddress);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3daf415d25829c07af9ce65c8e05817c3bc101ed.sol(175)

[33mWarning[0m for UnrestrictedWrite in contract 'Deposit':
    |
    |        // Virtually subtract amount from client deposit
  > |        depositsMap[from].balance -= amount;
    |
    |        to.transfer(amount);
  at /home/jiaming/mavs_srcs/contract@0x3daf415d25829c07af9ce65c8e05817c3bc101ed.sol(208)

[33mWarning[0m for UnrestrictedWrite in contract 'Deposit':
    |
    |        // Add new element to structure
  > |        depositsMap[clientAddress] = ClientDeposit(
    |            0,                                  // balance
    |            _nextPaymentTotalAmount,            // nextPaymentTotalAmount
  at /home/jiaming/mavs_srcs/contract@0x3daf415d25829c07af9ce65c8e05817c3bc101ed.sol(234)

[33mWarning[0m for UnrestrictedWrite in contract 'Deposit':
    |        require(clientDeposit.exists);
    |
  > |        clientDeposit.nextPaymentTotalAmount = _nextPaymentTotalAmount;
    |        clientDeposit.nextPaymentDepositCommission = _nextPaymentDepositCommission;
    |        clientDeposit.nextPaymentPlatformCommission = _nextPaymentPlatformCommission;
  at /home/jiaming/mavs_srcs/contract@0x3daf415d25829c07af9ce65c8e05817c3bc101ed.sol(264)

[33mWarning[0m for UnrestrictedWrite in contract 'Deposit':
    |
    |        clientDeposit.nextPaymentTotalAmount = _nextPaymentTotalAmount;
  > |        clientDeposit.nextPaymentDepositCommission = _nextPaymentDepositCommission;
    |        clientDeposit.nextPaymentPlatformCommission = _nextPaymentPlatformCommission;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3daf415d25829c07af9ce65c8e05817c3bc101ed.sol(265)

[33mWarning[0m for UnrestrictedWrite in contract 'Deposit':
    |        clientDeposit.nextPaymentTotalAmount = _nextPaymentTotalAmount;
    |        clientDeposit.nextPaymentDepositCommission = _nextPaymentDepositCommission;
  > |        clientDeposit.nextPaymentPlatformCommission = _nextPaymentPlatformCommission;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x3daf415d25829c07af9ce65c8e05817c3bc101ed.sol(266)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x3daf415d25829c07af9ce65c8e05817c3bc101ed.sol(72)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |    address public owner;
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x3daf415d25829c07af9ce65c8e05817c3bc101ed.sol(73)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that revert on error
    | */
  > |library SafeMath {
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x3daf415d25829c07af9ce65c8e05817c3bc101ed.sol(7)


