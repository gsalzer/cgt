Processing contract: /home/jiaming/mavs_srcs/contract@0xd6f8aabbbeaba0ed626e6edb798e8ada5799db84.sol:MultiSigWallet
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd6f8aabbbeaba0ed626e6edb798e8ada5799db84.sol:MultiSigWalletWithDailyLimit
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for DAO in contract 'MultiSigWallet':
    |            Transaction tx = transactions[transactionId];
    |            tx.executed = true;
  > |            if (tx.destination.call.value(tx.value)(tx.data))
    |                Execution(transactionId);
    |            else {
  at /home/jiaming/mavs_srcs/contract@0xd6f8aabbbeaba0ed626e6edb798e8ada5799db84.sol(228)

[33mWarning[0m for LockedEther in contract 'MultiSigWallet':
    |/// @title Multisignature wallet - Allows multiple parties to agree on transactions before execution.
    |/// @author Stefan George - <stefan.george@consensys.net>
  > |contract MultiSigWallet {
    |
    |    uint constant public MAX_OWNER_COUNT = 50;
  at /home/jiaming/mavs_srcs/contract@0xd6f8aabbbeaba0ed626e6edb798e8ada5799db84.sol(5)

[33mWarning[0m for UnhandledException in contract 'MultiSigWallet':
    |            Transaction tx = transactions[transactionId];
    |            tx.executed = true;
  > |            if (tx.destination.call.value(tx.value)(tx.data))
    |                Execution(transactionId);
    |            else {
  at /home/jiaming/mavs_srcs/contract@0xd6f8aabbbeaba0ed626e6edb798e8ada5799db84.sol(228)

[31mViolation[0m for UnrestrictedWrite in contract 'MultiSigWallet':
    |/// @title Multisignature wallet - Allows multiple parties to agree on transactions before execution.
    |/// @author Stefan George - <stefan.george@consensys.net>
  > |contract MultiSigWallet {
    |
    |    uint constant public MAX_OWNER_COUNT = 50;
  at /home/jiaming/mavs_srcs/contract@0xd6f8aabbbeaba0ed626e6edb798e8ada5799db84.sol(5)

[31mViolation[0m for UnrestrictedWrite in contract 'MultiSigWallet':
    |        for (uint i=0; i<owners.length - 1; i++)
    |            if (owners[i] == owner) {
  > |                owners[i] = owners[owners.length - 1];
    |                break;
    |            }
  at /home/jiaming/mavs_srcs/contract@0xd6f8aabbbeaba0ed626e6edb798e8ada5799db84.sol(141)

[31mViolation[0m for UnrestrictedWrite in contract 'MultiSigWallet':
    |        for (uint i=0; i<owners.length; i++)
    |            if (owners[i] == owner) {
  > |                owners[i] = newOwner;
    |                break;
    |            }
  at /home/jiaming/mavs_srcs/contract@0xd6f8aabbbeaba0ed626e6edb798e8ada5799db84.sol(161)

[31mViolation[0m for UnrestrictedWrite in contract 'MultiSigWallet':
    |                break;
    |            }
  > |        isOwner[owner] = false;
    |        isOwner[newOwner] = true;
    |        OwnerRemoval(owner);
  at /home/jiaming/mavs_srcs/contract@0xd6f8aabbbeaba0ed626e6edb798e8ada5799db84.sol(164)

[31mViolation[0m for UnrestrictedWrite in contract 'MultiSigWallet':
    |            }
    |        isOwner[owner] = false;
  > |        isOwner[newOwner] = true;
    |        OwnerRemoval(owner);
    |        OwnerAddition(newOwner);
  at /home/jiaming/mavs_srcs/contract@0xd6f8aabbbeaba0ed626e6edb798e8ada5799db84.sol(165)

[31mViolation[0m for UnrestrictedWrite in contract 'MultiSigWallet':
    |    {
    |        transactionId = transactionCount;
  > |        transactions[transactionId] = Transaction({
    |            destination: destination,
    |            value: value,
  at /home/jiaming/mavs_srcs/contract@0xd6f8aabbbeaba0ed626e6edb798e8ada5799db84.sol(268)

[31mViolation[0m for UnrestrictedWrite in contract 'MultiSigWallet':
    |            executed: false
    |        });
  > |        transactionCount += 1;
    |        Submission(transactionId);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd6f8aabbbeaba0ed626e6edb798e8ada5799db84.sol(274)

[33mWarning[0m for UnrestrictedWrite in contract 'MultiSigWallet':
    |        notConfirmed(transactionId, msg.sender)
    |    {
  > |        confirmations[transactionId][msg.sender] = true;
    |        Confirmation(msg.sender, transactionId);
    |        executeTransaction(transactionId);
  at /home/jiaming/mavs_srcs/contract@0xd6f8aabbbeaba0ed626e6edb798e8ada5799db84.sol(202)

[33mWarning[0m for UnrestrictedWrite in contract 'MultiSigWallet':
    |        notExecuted(transactionId)
    |    {
  > |        confirmations[transactionId][msg.sender] = false;
    |        Revocation(msg.sender, transactionId);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd6f8aabbbeaba0ed626e6edb798e8ada5799db84.sol(215)

[33mWarning[0m for UnrestrictedWrite in contract 'MultiSigWallet':
    |pragma solidity ^0.4.4;
    |
  > |/// @title Multisignature wallet - Allows multiple parties to agree on transactions before execution.
    |/// @author Stefan George - <stefan.george@consensys.net>
    |contract MultiSigWallet {
  at /home/jiaming/mavs_srcs/contract@0xd6f8aabbbeaba0ed626e6edb798e8ada5799db84.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'MultiSigWallet':
    |        validRequirement(owners.length + 1, required)
    |    {
  > |        isOwner[owner] = true;
    |        owners.push(owner);
    |        OwnerAddition(owner);
  at /home/jiaming/mavs_srcs/contract@0xd6f8aabbbeaba0ed626e6edb798e8ada5799db84.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'MultiSigWallet':
    |    {
    |        isOwner[owner] = true;
  > |        owners.push(owner);
    |        OwnerAddition(owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd6f8aabbbeaba0ed626e6edb798e8ada5799db84.sol(127)

[33mWarning[0m for UnrestrictedWrite in contract 'MultiSigWallet':
    |        ownerExists(owner)
    |    {
  > |        isOwner[owner] = false;
    |        for (uint i=0; i<owners.length - 1; i++)
    |            if (owners[i] == owner) {
  at /home/jiaming/mavs_srcs/contract@0xd6f8aabbbeaba0ed626e6edb798e8ada5799db84.sol(138)

[33mWarning[0m for UnrestrictedWrite in contract 'MultiSigWallet':
    |        validRequirement(owners.length, _required)
    |    {
  > |        required = _required;
    |        RequirementChange(_required);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd6f8aabbbeaba0ed626e6edb798e8ada5799db84.sol(177)

[31mViolation[0m for DAO in contract 'MultiSigWalletWithDailyLimit':
    |            if (!confirmed)
    |                spentToday += tx.value;
  > |            if (tx.destination.call.value(tx.value)(tx.data))
    |                Execution(transactionId);
    |            else {
  at /home/jiaming/mavs_srcs/contract@0xd6f8aabbbeaba0ed626e6edb798e8ada5799db84.sol(413)

[33mWarning[0m for LockedEther in contract 'MultiSigWalletWithDailyLimit':
    |/// @title Multisignature wallet with daily limit - Allows an owner to withdraw a daily limit without multisig.
    |/// @author Stefan George - <stefan.george@consensys.net>
  > |contract MultiSigWalletWithDailyLimit is MultiSigWallet {
    |
    |    event DailyLimitChange(uint dailyLimit);
  at /home/jiaming/mavs_srcs/contract@0xd6f8aabbbeaba0ed626e6edb798e8ada5799db84.sol(369)

[33mWarning[0m for UnhandledException in contract 'MultiSigWalletWithDailyLimit':
    |            if (!confirmed)
    |                spentToday += tx.value;
  > |            if (tx.destination.call.value(tx.value)(tx.data))
    |                Execution(transactionId);
    |            else {
  at /home/jiaming/mavs_srcs/contract@0xd6f8aabbbeaba0ed626e6edb798e8ada5799db84.sol(413)

[31mViolation[0m for UnrestrictedWrite in contract 'MultiSigWalletWithDailyLimit':
    |        for (uint i=0; i<owners.length - 1; i++)
    |            if (owners[i] == owner) {
  > |                owners[i] = owners[owners.length - 1];
    |                break;
    |            }
  at /home/jiaming/mavs_srcs/contract@0xd6f8aabbbeaba0ed626e6edb798e8ada5799db84.sol(141)

[31mViolation[0m for UnrestrictedWrite in contract 'MultiSigWalletWithDailyLimit':
    |        for (uint i=0; i<owners.length; i++)
    |            if (owners[i] == owner) {
  > |                owners[i] = newOwner;
    |                break;
    |            }
  at /home/jiaming/mavs_srcs/contract@0xd6f8aabbbeaba0ed626e6edb798e8ada5799db84.sol(161)

[31mViolation[0m for UnrestrictedWrite in contract 'MultiSigWalletWithDailyLimit':
    |                break;
    |            }
  > |        isOwner[owner] = false;
    |        isOwner[newOwner] = true;
    |        OwnerRemoval(owner);
  at /home/jiaming/mavs_srcs/contract@0xd6f8aabbbeaba0ed626e6edb798e8ada5799db84.sol(164)

[31mViolation[0m for UnrestrictedWrite in contract 'MultiSigWalletWithDailyLimit':
    |            }
    |        isOwner[owner] = false;
  > |        isOwner[newOwner] = true;
    |        OwnerRemoval(owner);
    |        OwnerAddition(newOwner);
  at /home/jiaming/mavs_srcs/contract@0xd6f8aabbbeaba0ed626e6edb798e8ada5799db84.sol(165)

[31mViolation[0m for UnrestrictedWrite in contract 'MultiSigWalletWithDailyLimit':
    |    {
    |        transactionId = transactionCount;
  > |        transactions[transactionId] = Transaction({
    |            destination: destination,
    |            value: value,
  at /home/jiaming/mavs_srcs/contract@0xd6f8aabbbeaba0ed626e6edb798e8ada5799db84.sol(268)

[31mViolation[0m for UnrestrictedWrite in contract 'MultiSigWalletWithDailyLimit':
    |            executed: false
    |        });
  > |        transactionCount += 1;
    |        Submission(transactionId);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd6f8aabbbeaba0ed626e6edb798e8ada5799db84.sol(274)

[31mViolation[0m for UnrestrictedWrite in contract 'MultiSigWalletWithDailyLimit':
    |/// @title Multisignature wallet with daily limit - Allows an owner to withdraw a daily limit without multisig.
    |/// @author Stefan George - <stefan.george@consensys.net>
  > |contract MultiSigWalletWithDailyLimit is MultiSigWallet {
    |
    |    event DailyLimitChange(uint dailyLimit);
  at /home/jiaming/mavs_srcs/contract@0xd6f8aabbbeaba0ed626e6edb798e8ada5799db84.sol(369)

[33mWarning[0m for UnrestrictedWrite in contract 'MultiSigWalletWithDailyLimit':
    |        notConfirmed(transactionId, msg.sender)
    |    {
  > |        confirmations[transactionId][msg.sender] = true;
    |        Confirmation(msg.sender, transactionId);
    |        executeTransaction(transactionId);
  at /home/jiaming/mavs_srcs/contract@0xd6f8aabbbeaba0ed626e6edb798e8ada5799db84.sol(202)

[33mWarning[0m for UnrestrictedWrite in contract 'MultiSigWalletWithDailyLimit':
    |        notExecuted(transactionId)
    |    {
  > |        confirmations[transactionId][msg.sender] = false;
    |        Revocation(msg.sender, transactionId);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd6f8aabbbeaba0ed626e6edb798e8ada5799db84.sol(215)

[33mWarning[0m for UnrestrictedWrite in contract 'MultiSigWalletWithDailyLimit':
    |pragma solidity ^0.4.4;
    |
  > |/// @title Multisignature wallet - Allows multiple parties to agree on transactions before execution.
    |/// @author Stefan George - <stefan.george@consensys.net>
    |contract MultiSigWallet {
  at /home/jiaming/mavs_srcs/contract@0xd6f8aabbbeaba0ed626e6edb798e8ada5799db84.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'MultiSigWalletWithDailyLimit':
    |        validRequirement(owners.length + 1, required)
    |    {
  > |        isOwner[owner] = true;
    |        owners.push(owner);
    |        OwnerAddition(owner);
  at /home/jiaming/mavs_srcs/contract@0xd6f8aabbbeaba0ed626e6edb798e8ada5799db84.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'MultiSigWalletWithDailyLimit':
    |    {
    |        isOwner[owner] = true;
  > |        owners.push(owner);
    |        OwnerAddition(owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd6f8aabbbeaba0ed626e6edb798e8ada5799db84.sol(127)

[33mWarning[0m for UnrestrictedWrite in contract 'MultiSigWalletWithDailyLimit':
    |        ownerExists(owner)
    |    {
  > |        isOwner[owner] = false;
    |        for (uint i=0; i<owners.length - 1; i++)
    |            if (owners[i] == owner) {
  at /home/jiaming/mavs_srcs/contract@0xd6f8aabbbeaba0ed626e6edb798e8ada5799db84.sol(138)

[33mWarning[0m for UnrestrictedWrite in contract 'MultiSigWalletWithDailyLimit':
    |        validRequirement(owners.length, _required)
    |    {
  > |        required = _required;
    |        RequirementChange(_required);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd6f8aabbbeaba0ed626e6edb798e8ada5799db84.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'MultiSigWalletWithDailyLimit':
    |        onlyWallet
    |    {
  > |        dailyLimit = _dailyLimit;
    |        DailyLimitChange(_dailyLimit);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd6f8aabbbeaba0ed626e6edb798e8ada5799db84.sol(397)


