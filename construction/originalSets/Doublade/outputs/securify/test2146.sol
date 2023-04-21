Processing contract: /home/jiaming/mavs_srcs/contract@0x8c05f80f26765ed1b3dd6ab07d9132c15e91a136.sol:AddressUtils
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8c05f80f26765ed1b3dd6ab07d9132c15e91a136.sol:ETHCutter
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8c05f80f26765ed1b3dd6ab07d9132c15e91a136.sol:Helpers
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8c05f80f26765ed1b3dd6ab07d9132c15e91a136.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'AddressUtils':
    |}
    |
  > |library AddressUtils {
    |    function isContract(address _addr) internal view returns (bool) {
    |        uint256 size;
  at /home/jiaming/mavs_srcs/contract@0x8c05f80f26765ed1b3dd6ab07d9132c15e91a136.sol(45)

[31mViolation[0m for DAOConstantGas in contract 'ETHCutter':
    |
    |    function withdraw(address wallet, uint256 amount) internal {
  > |        wallet.transfer(amount);
    |        totalWithdrawn = totalWithdrawn.add(amount);
    |        users[wallet].totalWithdrawn = users[wallet].totalWithdrawn.add(amount);
  at /home/jiaming/mavs_srcs/contract@0x8c05f80f26765ed1b3dd6ab07d9132c15e91a136.sol(221)

[31mViolation[0m for DAOConstantGas in contract 'ETHCutter':
    |
    |    function withdrawExpenses() public onlyAdmin {
  > |        adminWallet.transfer(expenses);
    |        expenses = 0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8c05f80f26765ed1b3dd6ab07d9132c15e91a136.sol(227)

[33mWarning[0m for DAOConstantGas in contract 'ETHCutter':
    |    function transferReferralFee(address to, uint256 amount) internal {
    |        if (to != address(0)) {
  > |            to.transfer(amount);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8c05f80f26765ed1b3dd6ab07d9132c15e91a136.sol(151)

[33mWarning[0m for LockedEther in contract 'ETHCutter':
    |}
    |
  > |contract ETHCutter {
    |    using SafeMath for uint256;
    |    using AddressUtils for address;
  at /home/jiaming/mavs_srcs/contract@0x8c05f80f26765ed1b3dd6ab07d9132c15e91a136.sol(61)

[31mViolation[0m for TODAmount in contract 'ETHCutter':
    |
    |    function withdrawExpenses() public onlyAdmin {
  > |        adminWallet.transfer(expenses);
    |        expenses = 0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8c05f80f26765ed1b3dd6ab07d9132c15e91a136.sol(227)

[33mWarning[0m for TODAmount in contract 'ETHCutter':
    |
    |    function withdraw(address wallet, uint256 amount) internal {
  > |        wallet.transfer(amount);
    |        totalWithdrawn = totalWithdrawn.add(amount);
    |        users[wallet].totalWithdrawn = users[wallet].totalWithdrawn.add(amount);
  at /home/jiaming/mavs_srcs/contract@0x8c05f80f26765ed1b3dd6ab07d9132c15e91a136.sol(221)

[33mWarning[0m for TODReceiver in contract 'ETHCutter':
    |
    |    function withdraw(address wallet, uint256 amount) internal {
  > |        wallet.transfer(amount);
    |        totalWithdrawn = totalWithdrawn.add(amount);
    |        users[wallet].totalWithdrawn = users[wallet].totalWithdrawn.add(amount);
  at /home/jiaming/mavs_srcs/contract@0x8c05f80f26765ed1b3dd6ab07d9132c15e91a136.sol(221)

[33mWarning[0m for TODReceiver in contract 'ETHCutter':
    |
    |    function withdrawExpenses() public onlyAdmin {
  > |        adminWallet.transfer(expenses);
    |        expenses = 0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8c05f80f26765ed1b3dd6ab07d9132c15e91a136.sol(227)

[33mWarning[0m for UnhandledException in contract 'ETHCutter':
    |    function transferReferralFee(address to, uint256 amount) internal {
    |        if (to != address(0)) {
  > |            to.transfer(amount);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8c05f80f26765ed1b3dd6ab07d9132c15e91a136.sol(151)

[33mWarning[0m for UnhandledException in contract 'ETHCutter':
    |
    |    function withdraw(address wallet, uint256 amount) internal {
  > |        wallet.transfer(amount);
    |        totalWithdrawn = totalWithdrawn.add(amount);
    |        users[wallet].totalWithdrawn = users[wallet].totalWithdrawn.add(amount);
  at /home/jiaming/mavs_srcs/contract@0x8c05f80f26765ed1b3dd6ab07d9132c15e91a136.sol(221)

[33mWarning[0m for UnhandledException in contract 'ETHCutter':
    |
    |    function withdrawExpenses() public onlyAdmin {
  > |        adminWallet.transfer(expenses);
    |        expenses = 0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8c05f80f26765ed1b3dd6ab07d9132c15e91a136.sol(227)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ETHCutter':
    |    function transferReferralFee(address to, uint256 amount) internal {
    |        if (to != address(0)) {
  > |            to.transfer(amount);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8c05f80f26765ed1b3dd6ab07d9132c15e91a136.sol(151)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ETHCutter':
    |
    |    function withdraw(address wallet, uint256 amount) internal {
  > |        wallet.transfer(amount);
    |        totalWithdrawn = totalWithdrawn.add(amount);
    |        users[wallet].totalWithdrawn = users[wallet].totalWithdrawn.add(amount);
  at /home/jiaming/mavs_srcs/contract@0x8c05f80f26765ed1b3dd6ab07d9132c15e91a136.sol(221)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ETHCutter':
    |
    |    function withdrawExpenses() public onlyAdmin {
  > |        adminWallet.transfer(expenses);
    |        expenses = 0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8c05f80f26765ed1b3dd6ab07d9132c15e91a136.sol(227)

[33mWarning[0m for UnrestrictedWrite in contract 'ETHCutter':
    |
    |/*
  > | * ETHCutter Contract
    | * 
    | * - 1% per hour for 5 days (120% total)
  at /home/jiaming/mavs_srcs/contract@0x8c05f80f26765ed1b3dd6ab07d9132c15e91a136.sol(4)

[33mWarning[0m for UnrestrictedWrite in contract 'ETHCutter':
    |}
    |
  > |contract ETHCutter {
    |    using SafeMath for uint256;
    |    using AddressUtils for address;
  at /home/jiaming/mavs_srcs/contract@0x8c05f80f26765ed1b3dd6ab07d9132c15e91a136.sol(61)

[33mWarning[0m for UnrestrictedWrite in contract 'ETHCutter':
    |
    |    function createUser(address wallet, address upline) internal {
  > |        users[wallet] = User({
    |            createdAt : now,
    |            upline : upline,
  at /home/jiaming/mavs_srcs/contract@0x8c05f80f26765ed1b3dd6ab07d9132c15e91a136.sol(112)

[33mWarning[0m for UnrestrictedWrite in contract 'ETHCutter':
    |        });
    |
  > |        deposits[depositsCount] = deposit;
    |        user.deposits.push(depositsCount);
    |
  at /home/jiaming/mavs_srcs/contract@0x8c05f80f26765ed1b3dd6ab07d9132c15e91a136.sol(135)

[33mWarning[0m for UnrestrictedWrite in contract 'ETHCutter':
    |
    |        deposits[depositsCount] = deposit;
  > |        user.deposits.push(depositsCount);
    |
    |        user.totalDeposited = user.totalDeposited.add(amount);
  at /home/jiaming/mavs_srcs/contract@0x8c05f80f26765ed1b3dd6ab07d9132c15e91a136.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'ETHCutter':
    |        user.deposits.push(depositsCount);
    |
  > |        user.totalDeposited = user.totalDeposited.add(amount);
    |        totalDeposited = amount.add(totalDeposited);
    |
  at /home/jiaming/mavs_srcs/contract@0x8c05f80f26765ed1b3dd6ab07d9132c15e91a136.sol(138)

[33mWarning[0m for UnrestrictedWrite in contract 'ETHCutter':
    |
    |        user.totalDeposited = user.totalDeposited.add(amount);
  > |        totalDeposited = amount.add(totalDeposited);
    |
    |        user.depositsCount++;
  at /home/jiaming/mavs_srcs/contract@0x8c05f80f26765ed1b3dd6ab07d9132c15e91a136.sol(139)

[33mWarning[0m for UnrestrictedWrite in contract 'ETHCutter':
    |        totalDeposited = amount.add(totalDeposited);
    |
  > |        user.depositsCount++;
    |        depositsCount++;
    |        expenses = expenses.add(amount.div(100).mul(EXPENSES_PERCENT));
  at /home/jiaming/mavs_srcs/contract@0x8c05f80f26765ed1b3dd6ab07d9132c15e91a136.sol(141)

[33mWarning[0m for UnrestrictedWrite in contract 'ETHCutter':
    |
    |        user.depositsCount++;
  > |        depositsCount++;
    |        expenses = expenses.add(amount.div(100).mul(EXPENSES_PERCENT));
    |
  at /home/jiaming/mavs_srcs/contract@0x8c05f80f26765ed1b3dd6ab07d9132c15e91a136.sol(142)

[33mWarning[0m for UnrestrictedWrite in contract 'ETHCutter':
    |        user.depositsCount++;
    |        depositsCount++;
  > |        expenses = expenses.add(amount.div(100).mul(EXPENSES_PERCENT));
    |
    |        uint256 referralFee = amount.div(100).mul(UPLINE_PERCENT);
  at /home/jiaming/mavs_srcs/contract@0x8c05f80f26765ed1b3dd6ab07d9132c15e91a136.sol(143)

[33mWarning[0m for UnrestrictedWrite in contract 'ETHCutter':
    |        withdraw(wallet, amount);
    |
  > |        deposits[depositId].accrued = deposit.accrued.add(amount);
    |
    |        if (deposits[depositId].accrued >= deposit.totalForAccrual) {
  at /home/jiaming/mavs_srcs/contract@0x8c05f80f26765ed1b3dd6ab07d9132c15e91a136.sol(213)

[33mWarning[0m for UnrestrictedWrite in contract 'ETHCutter':
    |
    |        if (deposits[depositId].accrued >= deposit.totalForAccrual) {
  > |            deposits[depositId].active = false;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8c05f80f26765ed1b3dd6ab07d9132c15e91a136.sol(216)

[33mWarning[0m for UnrestrictedWrite in contract 'ETHCutter':
    |    function withdraw(address wallet, uint256 amount) internal {
    |        wallet.transfer(amount);
  > |        totalWithdrawn = totalWithdrawn.add(amount);
    |        users[wallet].totalWithdrawn = users[wallet].totalWithdrawn.add(amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8c05f80f26765ed1b3dd6ab07d9132c15e91a136.sol(222)

[33mWarning[0m for UnrestrictedWrite in contract 'ETHCutter':
    |        wallet.transfer(amount);
    |        totalWithdrawn = totalWithdrawn.add(amount);
  > |        users[wallet].totalWithdrawn = users[wallet].totalWithdrawn.add(amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8c05f80f26765ed1b3dd6ab07d9132c15e91a136.sol(223)

[33mWarning[0m for UnrestrictedWrite in contract 'ETHCutter':
    |    function withdrawExpenses() public onlyAdmin {
    |        adminWallet.transfer(expenses);
  > |        expenses = 0;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8c05f80f26765ed1b3dd6ab07d9132c15e91a136.sol(228)

[33mWarning[0m for LockedEther in contract 'Helpers':
    |}
    |
  > |library Helpers {
    |    function walletFromData(bytes data) internal pure returns (address wallet) {
    |        assembly {
  at /home/jiaming/mavs_srcs/contract@0x8c05f80f26765ed1b3dd6ab07d9132c15e91a136.sol(53)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | */
    |
  > |library SafeMath {
    |    function mul(uint256 _a, uint256 _b) internal pure returns (uint256 c) {
    |        if (_a == 0) {
  at /home/jiaming/mavs_srcs/contract@0x8c05f80f26765ed1b3dd6ab07d9132c15e91a136.sol(19)


