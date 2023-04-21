Processing contract: /home/jiaming/mavs_srcs/contract@0x1d40c0998131f4a0254468eaf3ce8fc1f21d9da6.sol:ANKRTokenVault
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1d40c0998131f4a0254468eaf3ce8fc1f21d9da6.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x1d40c0998131f4a0254468eaf3ce8fc1f21d9da6.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1d40c0998131f4a0254468eaf3ce8fc1f21d9da6.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'ANKRTokenVault':
    |}
    |
  > |contract ANKRTokenVault is Ownable {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x1d40c0998131f4a0254468eaf3ce8fc1f21d9da6.sol(128)

[33mWarning[0m for UnhandledException in contract 'ANKRTokenVault':
    |
    |        //Makes sure Token Contract has the exact number of tokens
  > |        require(token.balanceOf(address(this)) == totalAllocation, "Token should not be allocated yet.");
    |
    |        allocations[opentokenAddress] = opentokenAllocation;
  at /home/jiaming/mavs_srcs/contract@0x1d40c0998131f4a0254468eaf3ce8fc1f21d9da6.sol(252)

[33mWarning[0m for UnhandledException in contract 'ANKRTokenVault':
    |
    |        // Transfer all tokens on this contract back to the owner
  > |        require(token.transfer(owner, token.balanceOf(address(this))), "recoverFailedLock: token transfer failed!");
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x1d40c0998131f4a0254468eaf3ce8fc1f21d9da6.sol(314)

[33mWarning[0m for UnhandledException in contract 'ANKRTokenVault':
    |    function getTotalBalance() public view returns (uint256 tokensCurrentlyInVault) {
    |
  > |        return token.balanceOf(address(this));
    |
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1d40c0998131f4a0254468eaf3ce8fc1f21d9da6.sol(320)

[33mWarning[0m for UnhandledException in contract 'ANKRTokenVault':
    |        claimed[reserveWallet] = amount;
    |
  > |        require(token.transfer(reserveWallet, amount), "Token transfer failed");
    |
    |        emit Distributed(reserveWallet, amount);
  at /home/jiaming/mavs_srcs/contract@0x1d40c0998131f4a0254468eaf3ce8fc1f21d9da6.sol(347)

[33mWarning[0m for UnhandledException in contract 'ANKRTokenVault':
    |        claimed[communityReserveWallet] = totalUnlockedComm;
    |
  > |        require(token.transfer(teamReserveWallet, paymentTeam), "Team token transfer failed.");
    |        require(token.transfer(communityReserveWallet, paymentComm), "Community token transfer failed.");
    |
  at /home/jiaming/mavs_srcs/contract@0x1d40c0998131f4a0254468eaf3ce8fc1f21d9da6.sol(384)

[33mWarning[0m for UnhandledException in contract 'ANKRTokenVault':
    |
    |        require(token.transfer(teamReserveWallet, paymentTeam), "Team token transfer failed.");
  > |        require(token.transfer(communityReserveWallet, paymentComm), "Community token transfer failed.");
    |
    |        emit Distributed(teamReserveWallet, paymentTeam);
  at /home/jiaming/mavs_srcs/contract@0x1d40c0998131f4a0254468eaf3ce8fc1f21d9da6.sol(385)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ANKRTokenVault':
    |
    |        //Makes sure Token Contract has the exact number of tokens
  > |        require(token.balanceOf(address(this)) == totalAllocation, "Token should not be allocated yet.");
    |
    |        allocations[opentokenAddress] = opentokenAllocation;
  at /home/jiaming/mavs_srcs/contract@0x1d40c0998131f4a0254468eaf3ce8fc1f21d9da6.sol(252)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ANKRTokenVault':
    |
    |        // Transfer all tokens on this contract back to the owner
  > |        require(token.transfer(owner, token.balanceOf(address(this))), "recoverFailedLock: token transfer failed!");
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x1d40c0998131f4a0254468eaf3ce8fc1f21d9da6.sol(314)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ANKRTokenVault':
    |    function getTotalBalance() public view returns (uint256 tokensCurrentlyInVault) {
    |
  > |        return token.balanceOf(address(this));
    |
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1d40c0998131f4a0254468eaf3ce8fc1f21d9da6.sol(320)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ANKRTokenVault':
    |        claimed[reserveWallet] = amount;
    |
  > |        require(token.transfer(reserveWallet, amount), "Token transfer failed");
    |
    |        emit Distributed(reserveWallet, amount);
  at /home/jiaming/mavs_srcs/contract@0x1d40c0998131f4a0254468eaf3ce8fc1f21d9da6.sol(347)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ANKRTokenVault':
    |        claimed[communityReserveWallet] = totalUnlockedComm;
    |
  > |        require(token.transfer(teamReserveWallet, paymentTeam), "Team token transfer failed.");
    |        require(token.transfer(communityReserveWallet, paymentComm), "Community token transfer failed.");
    |
  at /home/jiaming/mavs_srcs/contract@0x1d40c0998131f4a0254468eaf3ce8fc1f21d9da6.sol(384)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ANKRTokenVault':
    |
    |        require(token.transfer(teamReserveWallet, paymentTeam), "Team token transfer failed.");
  > |        require(token.transfer(communityReserveWallet, paymentComm), "Community token transfer failed.");
    |
    |        emit Distributed(teamReserveWallet, paymentTeam);
  at /home/jiaming/mavs_srcs/contract@0x1d40c0998131f4a0254468eaf3ce8fc1f21d9da6.sol(385)

[33mWarning[0m for UnrestrictedWrite in contract 'ANKRTokenVault':
    |
    |/**
  > | * @title Ownable
    | * @dev The Ownable contract has an owner address, and provides basic authorization control
    | * functions, this simplifies the implementation of "user permissions".
  at /home/jiaming/mavs_srcs/contract@0x1d40c0998131f4a0254468eaf3ce8fc1f21d9da6.sol(5)

[33mWarning[0m for UnrestrictedWrite in contract 'ANKRTokenVault':
    |    function renounceOwnership() public onlyOwner {
    |        emit OwnershipRenounced(owner);
  > |        owner = address(0);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x1d40c0998131f4a0254468eaf3ce8fc1f21d9da6.sol(44)

[33mWarning[0m for UnrestrictedWrite in contract 'ANKRTokenVault':
    |        require(_newOwner != address(0), "Cannot transfer ownership to an empty user.");
    |        emit OwnershipTransferred(owner, _newOwner);
  > |        owner = _newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x1d40c0998131f4a0254468eaf3ce8fc1f21d9da6.sol(62)

[33mWarning[0m for UnrestrictedWrite in contract 'ANKRTokenVault':
    |        require(investor != address(0), "Unlocked investor must not be zero.");
    |        require(amt > 0, "Unlocked investor's amount should be larger than zero.");
  > |        unLockedInvestorsIndices.push(investor);
    |        unLockedInvestors[investor] = amt * (10 ** 18);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x1d40c0998131f4a0254468eaf3ce8fc1f21d9da6.sol(236)

[33mWarning[0m for UnrestrictedWrite in contract 'ANKRTokenVault':
    |        require(amt > 0, "Unlocked investor's amount should be larger than zero.");
    |        unLockedInvestorsIndices.push(investor);
  > |        unLockedInvestors[investor] = amt * (10 ** 18);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1d40c0998131f4a0254468eaf3ce8fc1f21d9da6.sol(237)

[33mWarning[0m for UnrestrictedWrite in contract 'ANKRTokenVault':
    |        require(investor != address(0), "Locked investor must not be zero.");
    |        require(amt > 0, "Locked investor's amount should be larger than zero.");
  > |        lockedInvestorsIndices.push(investor);
    |        lockedInvestors[investor] = amt * (10 ** 18);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x1d40c0998131f4a0254468eaf3ce8fc1f21d9da6.sol(244)

[33mWarning[0m for UnrestrictedWrite in contract 'ANKRTokenVault':
    |        require(amt > 0, "Locked investor's amount should be larger than zero.");
    |        lockedInvestorsIndices.push(investor);
  > |        lockedInvestors[investor] = amt * (10 ** 18);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1d40c0998131f4a0254468eaf3ce8fc1f21d9da6.sol(245)

[33mWarning[0m for UnrestrictedWrite in contract 'ANKRTokenVault':
    |        require(token.balanceOf(address(this)) == totalAllocation, "Token should not be allocated yet.");
    |
  > |        allocations[opentokenAddress] = opentokenAllocation;
    |        allocations[tokenmanAddress] = tokenmanAllocation;
    |        allocations[marketingAddress] = marketingAllocation;
  at /home/jiaming/mavs_srcs/contract@0x1d40c0998131f4a0254468eaf3ce8fc1f21d9da6.sol(254)

[33mWarning[0m for UnrestrictedWrite in contract 'ANKRTokenVault':
    |
    |        allocations[opentokenAddress] = opentokenAllocation;
  > |        allocations[tokenmanAddress] = tokenmanAllocation;
    |        allocations[marketingAddress] = marketingAllocation;
    |        allocations[teamReserveWallet] = teamReserveAllocation;
  at /home/jiaming/mavs_srcs/contract@0x1d40c0998131f4a0254468eaf3ce8fc1f21d9da6.sol(255)

[33mWarning[0m for UnrestrictedWrite in contract 'ANKRTokenVault':
    |        allocations[opentokenAddress] = opentokenAllocation;
    |        allocations[tokenmanAddress] = tokenmanAllocation;
  > |        allocations[marketingAddress] = marketingAllocation;
    |        allocations[teamReserveWallet] = teamReserveAllocation;
    |        allocations[communityReserveWallet] = communityReserveAllocation;
  at /home/jiaming/mavs_srcs/contract@0x1d40c0998131f4a0254468eaf3ce8fc1f21d9da6.sol(256)

[33mWarning[0m for UnrestrictedWrite in contract 'ANKRTokenVault':
    |        allocations[tokenmanAddress] = tokenmanAllocation;
    |        allocations[marketingAddress] = marketingAllocation;
  > |        allocations[teamReserveWallet] = teamReserveAllocation;
    |        allocations[communityReserveWallet] = communityReserveAllocation;
    |
  at /home/jiaming/mavs_srcs/contract@0x1d40c0998131f4a0254468eaf3ce8fc1f21d9da6.sol(257)

[33mWarning[0m for UnrestrictedWrite in contract 'ANKRTokenVault':
    |        allocations[marketingAddress] = marketingAllocation;
    |        allocations[teamReserveWallet] = teamReserveAllocation;
  > |        allocations[communityReserveWallet] = communityReserveAllocation;
    |
    |        emit Allocated(opentokenAddress, opentokenAllocation);
  at /home/jiaming/mavs_srcs/contract@0x1d40c0998131f4a0254468eaf3ce8fc1f21d9da6.sol(258)

[33mWarning[0m for UnrestrictedWrite in contract 'ANKRTokenVault':
    |    function lock() internal {
    |
  > |        lockedAt = block.timestamp;
    |
    |        timeLocks[teamReserveWallet] = lockedAt.add(othersTimeLock);
  at /home/jiaming/mavs_srcs/contract@0x1d40c0998131f4a0254468eaf3ce8fc1f21d9da6.sol(301)

[33mWarning[0m for UnrestrictedWrite in contract 'ANKRTokenVault':
    |        lockedAt = block.timestamp;
    |
  > |        timeLocks[teamReserveWallet] = lockedAt.add(othersTimeLock);
    |        timeLocks[communityReserveWallet] = lockedAt.add(othersTimeLock);
    |
  at /home/jiaming/mavs_srcs/contract@0x1d40c0998131f4a0254468eaf3ce8fc1f21d9da6.sol(303)

[33mWarning[0m for UnrestrictedWrite in contract 'ANKRTokenVault':
    |
    |        timeLocks[teamReserveWallet] = lockedAt.add(othersTimeLock);
  > |        timeLocks[communityReserveWallet] = lockedAt.add(othersTimeLock);
    |
    |        emit Locked(lockedAt);
  at /home/jiaming/mavs_srcs/contract@0x1d40c0998131f4a0254468eaf3ce8fc1f21d9da6.sol(304)

[33mWarning[0m for UnrestrictedWrite in contract 'ANKRTokenVault':
    |        uint256 amount = allocations[reserveWallet];
    |
  > |        claimed[reserveWallet] = amount;
    |
    |        require(token.transfer(reserveWallet, amount), "Token transfer failed");
  at /home/jiaming/mavs_srcs/contract@0x1d40c0998131f4a0254468eaf3ce8fc1f21d9da6.sol(345)

[33mWarning[0m for UnrestrictedWrite in contract 'ANKRTokenVault':
    |        uint256 paymentComm = totalUnlockedComm.sub(claimed[communityReserveWallet]);
    |
  > |        claimed[teamReserveWallet] = totalUnlockedTeam;
    |        claimed[communityReserveWallet] = totalUnlockedComm;
    |
  at /home/jiaming/mavs_srcs/contract@0x1d40c0998131f4a0254468eaf3ce8fc1f21d9da6.sol(381)

[33mWarning[0m for UnrestrictedWrite in contract 'ANKRTokenVault':
    |
    |        claimed[teamReserveWallet] = totalUnlockedTeam;
  > |        claimed[communityReserveWallet] = totalUnlockedComm;
    |
    |        require(token.transfer(teamReserveWallet, paymentTeam), "Team token transfer failed.");
  at /home/jiaming/mavs_srcs/contract@0x1d40c0998131f4a0254468eaf3ce8fc1f21d9da6.sol(382)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x1d40c0998131f4a0254468eaf3ce8fc1f21d9da6.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |    address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x1d40c0998131f4a0254468eaf3ce8fc1f21d9da6.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    * modifier anymore.
    |    */
  > |    function renounceOwnership() public onlyOwner {
    |        emit OwnershipRenounced(owner);
    |        owner = address(0);
  at /home/jiaming/mavs_srcs/contract@0x1d40c0998131f4a0254468eaf3ce8fc1f21d9da6.sol(42)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    * @param _newOwner The address to transfer ownership to.
    |    */
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        _transferOwnership(_newOwner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1d40c0998131f4a0254468eaf3ce8fc1f21d9da6.sol(51)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    * @param _newOwner The address to transfer ownership to.
    |    */
  > |    function _transferOwnership(address _newOwner) internal {
    |        require(_newOwner != address(0), "Cannot transfer ownership to an empty user.");
    |        emit OwnershipTransferred(owner, _newOwner);
  at /home/jiaming/mavs_srcs/contract@0x1d40c0998131f4a0254468eaf3ce8fc1f21d9da6.sol(59)

[31mViolation[0m for UnrestrictedWrite in contract 'Ownable':
    |        require(_newOwner != address(0), "Cannot transfer ownership to an empty user.");
    |        emit OwnershipTransferred(owner, _newOwner);
  > |        owner = _newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x1d40c0998131f4a0254468eaf3ce8fc1f21d9da6.sol(62)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    function renounceOwnership() public onlyOwner {
    |        emit OwnershipRenounced(owner);
  > |        owner = address(0);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x1d40c0998131f4a0254468eaf3ce8fc1f21d9da6.sol(44)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |        require(_newOwner != address(0), "Cannot transfer ownership to an empty user.");
    |        emit OwnershipTransferred(owner, _newOwner);
  > |        owner = _newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x1d40c0998131f4a0254468eaf3ce8fc1f21d9da6.sol(62)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x1d40c0998131f4a0254468eaf3ce8fc1f21d9da6.sol(70)


