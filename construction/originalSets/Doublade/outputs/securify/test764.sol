Processing contract: /home/jiaming/mavs_srcs/contract@0x30993352b0e5a02a5ea2a7711fd7c97a4401d654.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x30993352b0e5a02a5ea2a7711fd7c97a4401d654.sol:TimelockedSafe
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x30993352b0e5a02a5ea2a7711fd7c97a4401d654.sol:Token
[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint a, uint b) internal pure returns (uint) {
    |    if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0x30993352b0e5a02a5ea2a7711fd7c97a4401d654.sol(8)

[33mWarning[0m for LockedEther in contract 'TimelockedSafe':
    |
    |
  > |contract TimelockedSafe {
    |
    |    using SafeMath for uint;
  at /home/jiaming/mavs_srcs/contract@0x30993352b0e5a02a5ea2a7711fd7c97a4401d654.sol(45)

[33mWarning[0m for UnhandledException in contract 'TimelockedSafe':
    |    	address timelockedSafeAddress = address(this);
    |    	uint minimalBalanceInWei = remainingVestingPeriodInMonths.mul(monthlyWithdrawLimitInWei);
  > |    	uint currentTokenBalanceInWei = token.balanceOf(timelockedSafeAddress);
    |    	require(currentTokenBalanceInWei.sub(_withdrawAmountInWei) >= minimalBalanceInWei);
    |
  at /home/jiaming/mavs_srcs/contract@0x30993352b0e5a02a5ea2a7711fd7c97a4401d654.sol(99)

[33mWarning[0m for UnhandledException in contract 'TimelockedSafe':
    |    	require(currentTokenBalanceInWei.sub(_withdrawAmountInWei) >= minimalBalanceInWei);
    |
  > |    	require(token.transfer(withdrawAddress, _withdrawAmountInWei));
    |
    |    	return true;
  at /home/jiaming/mavs_srcs/contract@0x30993352b0e5a02a5ea2a7711fd7c97a4401d654.sol(102)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TimelockedSafe':
    |    	address timelockedSafeAddress = address(this);
    |    	uint minimalBalanceInWei = remainingVestingPeriodInMonths.mul(monthlyWithdrawLimitInWei);
  > |    	uint currentTokenBalanceInWei = token.balanceOf(timelockedSafeAddress);
    |    	require(currentTokenBalanceInWei.sub(_withdrawAmountInWei) >= minimalBalanceInWei);
    |
  at /home/jiaming/mavs_srcs/contract@0x30993352b0e5a02a5ea2a7711fd7c97a4401d654.sol(99)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TimelockedSafe':
    |    	require(currentTokenBalanceInWei.sub(_withdrawAmountInWei) >= minimalBalanceInWei);
    |
  > |    	require(token.transfer(withdrawAddress, _withdrawAmountInWei));
    |
    |    	return true;
  at /home/jiaming/mavs_srcs/contract@0x30993352b0e5a02a5ea2a7711fd7c97a4401d654.sol(102)

[33mWarning[0m for UnrestrictedWrite in contract 'TimelockedSafe':
    |
    |    function changeStartTime(uint _newStartTime) public only(adminAddress) {
  > |        startTime = _newStartTime;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x30993352b0e5a02a5ea2a7711fd7c97a4401d654.sol(108)

[33mWarning[0m for UnrestrictedWrite in contract 'TimelockedSafe':
    |
    |    function changeTokenAddress(address _newTokenAddress) public only(adminAddress) {
  > |        token = Token(_newTokenAddress);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x30993352b0e5a02a5ea2a7711fd7c97a4401d654.sol(112)

[33mWarning[0m for UnrestrictedWrite in contract 'TimelockedSafe':
    |
    |    function changeWithdrawAddress(address _newWithdrawAddress) public only(adminAddress) {
  > |        withdrawAddress = _newWithdrawAddress;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x30993352b0e5a02a5ea2a7711fd7c97a4401d654.sol(116)

[33mWarning[0m for UnrestrictedWrite in contract 'TimelockedSafe':
    |
    |    function changeLockingPeriod(uint _newLockingPeriodInMonths) public only(adminAddress) {
  > |        lockingPeriodInMonths = _newLockingPeriodInMonths;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x30993352b0e5a02a5ea2a7711fd7c97a4401d654.sol(120)

[33mWarning[0m for UnrestrictedWrite in contract 'TimelockedSafe':
    |
    |    function changeVestingPeriod(uint _newVestingPeriodInMonths) public only(adminAddress) {
  > |        vestingPeriodInMonths = _newVestingPeriodInMonths;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x30993352b0e5a02a5ea2a7711fd7c97a4401d654.sol(124)

[33mWarning[0m for UnrestrictedWrite in contract 'TimelockedSafe':
    |
    |    function changeMonthlyWithdrawLimit(uint _newMonthlyWithdrawLimitInWei) public only(adminAddress) {
  > |        monthlyWithdrawLimitInWei = _newMonthlyWithdrawLimitInWei;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x30993352b0e5a02a5ea2a7711fd7c97a4401d654.sol(128)

[33mWarning[0m for UnrestrictedWrite in contract 'TimelockedSafe':
    |
    |    function finalizeConfig() public only(adminAddress) {
  > |        adminAddress = 0x0; // config finalized, give up control 
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x30993352b0e5a02a5ea2a7711fd7c97a4401d654.sol(132)


