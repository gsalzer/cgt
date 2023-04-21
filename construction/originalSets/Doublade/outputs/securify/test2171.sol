Processing contract: /home/jiaming/mavs_srcs/contract@0x8d921acb3bee58f338bca3ce5bfe547b7e48af7c.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x8d921acb3bee58f338bca3ce5bfe547b7e48af7c.sol:KcashVesting
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8d921acb3bee58f338bca3ce5bfe547b7e48af7c.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8d921acb3bee58f338bca3ce5bfe547b7e48af7c.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'KcashVesting':
    |
    |
  > |contract KcashVesting is Ownable {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x8d921acb3bee58f338bca3ce5bfe547b7e48af7c.sol(96)

[33mWarning[0m for UnhandledException in contract 'KcashVesting':
    |        //only claim  once
    |        require(allocations[teamWallet] == 0);
  > |        require(token.balanceOf(address(this)) >= totalAllocation);
    |        
    |        allocations[teamWallet] = teamAllocation;
  at /home/jiaming/mavs_srcs/contract@0x8d921acb3bee58f338bca3ce5bfe547b7e48af7c.sol(161)

[33mWarning[0m for UnhandledException in contract 'KcashVesting':
    |        
    |        releasedAmounts[msg.sender] = totalUnlocked;
  > |        require(token.transfer(msg.sender, payment));
    |    }
    |    function unlockAmount() public view onlyReserveWallets returns(uint256){
  at /home/jiaming/mavs_srcs/contract@0x8d921acb3bee58f338bca3ce5bfe547b7e48af7c.sol(182)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KcashVesting':
    |        //only claim  once
    |        require(allocations[teamWallet] == 0);
  > |        require(token.balanceOf(address(this)) >= totalAllocation);
    |        
    |        allocations[teamWallet] = teamAllocation;
  at /home/jiaming/mavs_srcs/contract@0x8d921acb3bee58f338bca3ce5bfe547b7e48af7c.sol(161)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KcashVesting':
    |        
    |        releasedAmounts[msg.sender] = totalUnlocked;
  > |        require(token.transfer(msg.sender, payment));
    |    }
    |    function unlockAmount() public view onlyReserveWallets returns(uint256){
  at /home/jiaming/mavs_srcs/contract@0x8d921acb3bee58f338bca3ce5bfe547b7e48af7c.sol(182)

[33mWarning[0m for UnrestrictedWrite in contract 'KcashVesting':
    |        require(token.balanceOf(address(this)) >= totalAllocation);
    |        
  > |        allocations[teamWallet] = teamAllocation;
    |        allocations[earlyWallet] = earlyAllocation;
    |        allocations[institutionWallet] = institutionAllocation;
  at /home/jiaming/mavs_srcs/contract@0x8d921acb3bee58f338bca3ce5bfe547b7e48af7c.sol(163)

[33mWarning[0m for UnrestrictedWrite in contract 'KcashVesting':
    |        
    |        allocations[teamWallet] = teamAllocation;
  > |        allocations[earlyWallet] = earlyAllocation;
    |        allocations[institutionWallet] = institutionAllocation;
    |        
  at /home/jiaming/mavs_srcs/contract@0x8d921acb3bee58f338bca3ce5bfe547b7e48af7c.sol(164)

[33mWarning[0m for UnrestrictedWrite in contract 'KcashVesting':
    |        allocations[teamWallet] = teamAllocation;
    |        allocations[earlyWallet] = earlyAllocation;
  > |        allocations[institutionWallet] = institutionAllocation;
    |        
    |        stageSettings[teamWallet] = teamStageSetting;
  at /home/jiaming/mavs_srcs/contract@0x8d921acb3bee58f338bca3ce5bfe547b7e48af7c.sol(165)

[33mWarning[0m for UnrestrictedWrite in contract 'KcashVesting':
    |        allocations[institutionWallet] = institutionAllocation;
    |        
  > |        stageSettings[teamWallet] = teamStageSetting;
    |        stageSettings[earlyWallet] = earlyStageSetting;
    |        stageSettings[institutionWallet] = institutionStageSetting;
  at /home/jiaming/mavs_srcs/contract@0x8d921acb3bee58f338bca3ce5bfe547b7e48af7c.sol(167)

[33mWarning[0m for UnrestrictedWrite in contract 'KcashVesting':
    |        
    |        stageSettings[teamWallet] = teamStageSetting;
  > |        stageSettings[earlyWallet] = earlyStageSetting;
    |        stageSettings[institutionWallet] = institutionStageSetting;
    |        
  at /home/jiaming/mavs_srcs/contract@0x8d921acb3bee58f338bca3ce5bfe547b7e48af7c.sol(168)

[33mWarning[0m for UnrestrictedWrite in contract 'KcashVesting':
    |        stageSettings[teamWallet] = teamStageSetting;
    |        stageSettings[earlyWallet] = earlyStageSetting;
  > |        stageSettings[institutionWallet] = institutionStageSetting;
    |        
    |        timeLockDurations[teamWallet] = teamTimeLock;
  at /home/jiaming/mavs_srcs/contract@0x8d921acb3bee58f338bca3ce5bfe547b7e48af7c.sol(169)

[33mWarning[0m for UnrestrictedWrite in contract 'KcashVesting':
    |        stageSettings[institutionWallet] = institutionStageSetting;
    |        
  > |        timeLockDurations[teamWallet] = teamTimeLock;
    |        timeLockDurations[earlyWallet] = earlyTimeLock;
    |        timeLockDurations[institutionWallet] = institutionTimeLock;
  at /home/jiaming/mavs_srcs/contract@0x8d921acb3bee58f338bca3ce5bfe547b7e48af7c.sol(171)

[33mWarning[0m for UnrestrictedWrite in contract 'KcashVesting':
    |        
    |        timeLockDurations[teamWallet] = teamTimeLock;
  > |        timeLockDurations[earlyWallet] = earlyTimeLock;
    |        timeLockDurations[institutionWallet] = institutionTimeLock;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8d921acb3bee58f338bca3ce5bfe547b7e48af7c.sol(172)

[33mWarning[0m for UnrestrictedWrite in contract 'KcashVesting':
    |        timeLockDurations[teamWallet] = teamTimeLock;
    |        timeLockDurations[earlyWallet] = earlyTimeLock;
  > |        timeLockDurations[institutionWallet] = institutionTimeLock;
    |    }
    |    function releaseToken() onlyReserveWallets public{
  at /home/jiaming/mavs_srcs/contract@0x8d921acb3bee58f338bca3ce5bfe547b7e48af7c.sol(173)

[33mWarning[0m for UnrestrictedWrite in contract 'KcashVesting':
    |        uint256 payment = totalUnlocked.sub(releasedAmounts[msg.sender]);
    |        
  > |        releasedAmounts[msg.sender] = totalUnlocked;
    |        require(token.transfer(msg.sender, payment));
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8d921acb3bee58f338bca3ce5bfe547b7e48af7c.sol(181)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x8d921acb3bee58f338bca3ce5bfe547b7e48af7c.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x8d921acb3bee58f338bca3ce5bfe547b7e48af7c.sol(9)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x8d921acb3bee58f338bca3ce5bfe547b7e48af7c.sol(41)


