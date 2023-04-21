Processing contract: /home/jiaming/mavs_srcs/contract@0xa79a097b23d91cdedb86010dfa23bda9abcfc3fe.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xa79a097b23d91cdedb86010dfa23bda9abcfc3fe.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xa79a097b23d91cdedb86010dfa23bda9abcfc3fe.sol:Math
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa79a097b23d91cdedb86010dfa23bda9abcfc3fe.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa79a097b23d91cdedb86010dfa23bda9abcfc3fe.sol:TokenTransferDelegate
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Math':
    | */
    |
  > |library Math {
    |  function max64(uint64 a, uint64 b) internal constant returns (uint64) {
    |    return a >= b ? a : b;
  at /home/jiaming/mavs_srcs/contract@0xa79a097b23d91cdedb86010dfa23bda9abcfc3fe.sol(25)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xa79a097b23d91cdedb86010dfa23bda9abcfc3fe.sol(71)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xa79a097b23d91cdedb86010dfa23bda9abcfc3fe.sol(72)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
    |      owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0xa79a097b23d91cdedb86010dfa23bda9abcfc3fe.sol(97)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa79a097b23d91cdedb86010dfa23bda9abcfc3fe.sol(99)

[31mViolation[0m for LockedEther in contract 'TokenTransferDelegate':
    |/// re-authorization.
    |/// @author Daniel Wang - <daniel@loopring.org>.
  > |contract TokenTransferDelegate is Ownable {
    |    using Math for uint;
    |
  at /home/jiaming/mavs_srcs/contract@0xa79a097b23d91cdedb86010dfa23bda9abcfc3fe.sol(109)

[33mWarning[0m for UnhandledException in contract 'TokenTransferDelegate':
    |
    |        var token = ERC20(tokenAddress);
  > |        return token
    |            .allowance(_owner, address(this))
    |            .min256(token.balanceOf(_owner));
  at /home/jiaming/mavs_srcs/contract@0xa79a097b23d91cdedb86010dfa23bda9abcfc3fe.sol(197)

[33mWarning[0m for UnhandledException in contract 'TokenTransferDelegate':
    |        return token
    |            .allowance(_owner, address(this))
  > |            .min256(token.balanceOf(_owner));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xa79a097b23d91cdedb86010dfa23bda9abcfc3fe.sol(199)

[33mWarning[0m for UnhandledException in contract 'TokenTransferDelegate':
    |        isVersioned(msg.sender)
    |        returns (bool) {
  > |        return ERC20(token).transferFrom(from, to, value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xa79a097b23d91cdedb86010dfa23bda9abcfc3fe.sol(216)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenTransferDelegate':
    |
    |        var token = ERC20(tokenAddress);
  > |        return token
    |            .allowance(_owner, address(this))
    |            .min256(token.balanceOf(_owner));
  at /home/jiaming/mavs_srcs/contract@0xa79a097b23d91cdedb86010dfa23bda9abcfc3fe.sol(197)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenTransferDelegate':
    |        return token
    |            .allowance(_owner, address(this))
  > |            .min256(token.balanceOf(_owner));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xa79a097b23d91cdedb86010dfa23bda9abcfc3fe.sol(199)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenTransferDelegate':
    |        isVersioned(msg.sender)
    |        returns (bool) {
  > |        return ERC20(token).transferFrom(from, to, value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xa79a097b23d91cdedb86010dfa23bda9abcfc3fe.sol(216)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenTransferDelegate':
    |/// re-authorization.
    |/// @author Daniel Wang - <daniel@loopring.org>.
  > |contract TokenTransferDelegate is Ownable {
    |    using Math for uint;
    |
  at /home/jiaming/mavs_srcs/contract@0xa79a097b23d91cdedb86010dfa23bda9abcfc3fe.sol(109)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenTransferDelegate':
    |        for (uint i = 0; i < length; i++) {
    |            if (versions[i] == addr) {
  > |                versions[i] = versions[length - 1];
    |                versions.length -= 1;
    |                break;
  at /home/jiaming/mavs_srcs/contract@0xa79a097b23d91cdedb86010dfa23bda9abcfc3fe.sol(176)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenTransferDelegate':
    |/*
    |
  > |  Copyright 2017 Loopring Project Ltd (Loopring Foundation).
    |
    |  Licensed under the Apache License, Version 2.0 (the "License");
  at /home/jiaming/mavs_srcs/contract@0xa79a097b23d91cdedb86010dfa23bda9abcfc3fe.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenTransferDelegate':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa79a097b23d91cdedb86010dfa23bda9abcfc3fe.sol(99)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenTransferDelegate':
    |        notVersioned(addr)
    |        {
  > |        versioned[addr] = ++lastVersion;
    |        versions.push(addr);
    |        VersionAdded(addr, lastVersion);
  at /home/jiaming/mavs_srcs/contract@0xa79a097b23d91cdedb86010dfa23bda9abcfc3fe.sol(159)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenTransferDelegate':
    |        {
    |        versioned[addr] = ++lastVersion;
  > |        versions.push(addr);
    |        VersionAdded(addr, lastVersion);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa79a097b23d91cdedb86010dfa23bda9abcfc3fe.sol(160)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenTransferDelegate':
    |        {
    |        uint version = versioned[addr];
  > |        delete versioned[addr];
    |
    |        uint length = versions.length;
  at /home/jiaming/mavs_srcs/contract@0xa79a097b23d91cdedb86010dfa23bda9abcfc3fe.sol(171)


