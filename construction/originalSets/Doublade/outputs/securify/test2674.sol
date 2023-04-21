Processing contract: /home/jiaming/mavs_srcs/contract@0xae8f87a320866b2915b6b75fdead9738cccd7217.sol:MultiSigWallet
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
  at /home/jiaming/mavs_srcs/contract@0xae8f87a320866b2915b6b75fdead9738cccd7217.sol(229)

[33mWarning[0m for LockedEther in contract 'MultiSigWallet':
    |/// @title Multisignature wallet - Allows multiple parties to agree on transactions before execution.
    |/// @author Stefan George - <stefan.george@consensys.net>
  > |contract MultiSigWallet {
    |
    |    uint constant public MAX_OWNER_COUNT = 50;
  at /home/jiaming/mavs_srcs/contract@0xae8f87a320866b2915b6b75fdead9738cccd7217.sol(6)

[33mWarning[0m for UnhandledException in contract 'MultiSigWallet':
    |            Transaction tx = transactions[transactionId];
    |            tx.executed = true;
  > |            if (tx.destination.call.value(tx.value)(tx.data))
    |                Execution(transactionId);
    |            else {
  at /home/jiaming/mavs_srcs/contract@0xae8f87a320866b2915b6b75fdead9738cccd7217.sol(229)

[31mViolation[0m for UnrestrictedWrite in contract 'MultiSigWallet':
    |/// @title Multisignature wallet - Allows multiple parties to agree on transactions before execution.
    |/// @author Stefan George - <stefan.george@consensys.net>
  > |contract MultiSigWallet {
    |
    |    uint constant public MAX_OWNER_COUNT = 50;
  at /home/jiaming/mavs_srcs/contract@0xae8f87a320866b2915b6b75fdead9738cccd7217.sol(6)

[31mViolation[0m for UnrestrictedWrite in contract 'MultiSigWallet':
    |        for (uint i=0; i<owners.length - 1; i++)
    |            if (owners[i] == owner) {
  > |                owners[i] = owners[owners.length - 1];
    |                break;
    |            }
  at /home/jiaming/mavs_srcs/contract@0xae8f87a320866b2915b6b75fdead9738cccd7217.sol(142)

[31mViolation[0m for UnrestrictedWrite in contract 'MultiSigWallet':
    |        for (uint i=0; i<owners.length; i++)
    |            if (owners[i] == owner) {
  > |                owners[i] = newOwner;
    |                break;
    |            }
  at /home/jiaming/mavs_srcs/contract@0xae8f87a320866b2915b6b75fdead9738cccd7217.sol(162)

[31mViolation[0m for UnrestrictedWrite in contract 'MultiSigWallet':
    |                break;
    |            }
  > |        isOwner[owner] = false;
    |        isOwner[newOwner] = true;
    |        OwnerRemoval(owner);
  at /home/jiaming/mavs_srcs/contract@0xae8f87a320866b2915b6b75fdead9738cccd7217.sol(165)

[31mViolation[0m for UnrestrictedWrite in contract 'MultiSigWallet':
    |            }
    |        isOwner[owner] = false;
  > |        isOwner[newOwner] = true;
    |        OwnerRemoval(owner);
    |        OwnerAddition(newOwner);
  at /home/jiaming/mavs_srcs/contract@0xae8f87a320866b2915b6b75fdead9738cccd7217.sol(166)

[31mViolation[0m for UnrestrictedWrite in contract 'MultiSigWallet':
    |    {
    |        transactionId = transactionCount;
  > |        transactions[transactionId] = Transaction({
    |            destination: destination,
    |            value: value,
  at /home/jiaming/mavs_srcs/contract@0xae8f87a320866b2915b6b75fdead9738cccd7217.sol(269)

[31mViolation[0m for UnrestrictedWrite in contract 'MultiSigWallet':
    |            executed: false
    |        });
  > |        transactionCount += 1;
    |        Submission(transactionId);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xae8f87a320866b2915b6b75fdead9738cccd7217.sol(275)

[33mWarning[0m for UnrestrictedWrite in contract 'MultiSigWallet':
    |        notConfirmed(transactionId, msg.sender)
    |    {
  > |        confirmations[transactionId][msg.sender] = true;
    |        Confirmation(msg.sender, transactionId);
    |        executeTransaction(transactionId);
  at /home/jiaming/mavs_srcs/contract@0xae8f87a320866b2915b6b75fdead9738cccd7217.sol(203)

[33mWarning[0m for UnrestrictedWrite in contract 'MultiSigWallet':
    |        notExecuted(transactionId)
    |    {
  > |        confirmations[transactionId][msg.sender] = false;
    |        Revocation(msg.sender, transactionId);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xae8f87a320866b2915b6b75fdead9738cccd7217.sol(216)

[33mWarning[0m for UnrestrictedWrite in contract 'MultiSigWallet':
    |
    |
  > |/// @title Multisignature wallet - Allows multiple parties to agree on transactions before execution.
    |/// @author Stefan George - <stefan.george@consensys.net>
    |contract MultiSigWallet {
  at /home/jiaming/mavs_srcs/contract@0xae8f87a320866b2915b6b75fdead9738cccd7217.sol(4)

[33mWarning[0m for UnrestrictedWrite in contract 'MultiSigWallet':
    |        validRequirement(owners.length + 1, required)
    |    {
  > |        isOwner[owner] = true;
    |        owners.push(owner);
    |        OwnerAddition(owner);
  at /home/jiaming/mavs_srcs/contract@0xae8f87a320866b2915b6b75fdead9738cccd7217.sol(127)

[33mWarning[0m for UnrestrictedWrite in contract 'MultiSigWallet':
    |    {
    |        isOwner[owner] = true;
  > |        owners.push(owner);
    |        OwnerAddition(owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xae8f87a320866b2915b6b75fdead9738cccd7217.sol(128)

[33mWarning[0m for UnrestrictedWrite in contract 'MultiSigWallet':
    |        ownerExists(owner)
    |    {
  > |        isOwner[owner] = false;
    |        for (uint i=0; i<owners.length - 1; i++)
    |            if (owners[i] == owner) {
  at /home/jiaming/mavs_srcs/contract@0xae8f87a320866b2915b6b75fdead9738cccd7217.sol(139)

[33mWarning[0m for UnrestrictedWrite in contract 'MultiSigWallet':
    |        validRequirement(owners.length, _required)
    |    {
  > |        required = _required;
    |        RequirementChange(_required);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xae8f87a320866b2915b6b75fdead9738cccd7217.sol(178)


