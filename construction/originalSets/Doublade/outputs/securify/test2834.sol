Processing contract: /home/jiaming/mavs_srcs/contract@0xb9f106cef9c857a0fe7d1fc030a07670a04b22e4.sol:MultiSigWallet
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
  at /home/jiaming/mavs_srcs/contract@0xb9f106cef9c857a0fe7d1fc030a07670a04b22e4.sol(233)

[33mWarning[0m for LockedEther in contract 'MultiSigWallet':
    |/// @title Multisignature wallet - Allows multiple parties to agree on transactions before execution.
    |/// @author Stefan George - <stefan.george@consensys.net>
  > |contract MultiSigWallet {
    |
    |    uint constant public MAX_OWNER_COUNT = 50;
  at /home/jiaming/mavs_srcs/contract@0xb9f106cef9c857a0fe7d1fc030a07670a04b22e4.sol(10)

[33mWarning[0m for UnhandledException in contract 'MultiSigWallet':
    |            Transaction tx = transactions[transactionId];
    |            tx.executed = true;
  > |            if (tx.destination.call.value(tx.value)(tx.data))
    |                Execution(transactionId);
    |            else {
  at /home/jiaming/mavs_srcs/contract@0xb9f106cef9c857a0fe7d1fc030a07670a04b22e4.sol(233)

[31mViolation[0m for UnrestrictedWrite in contract 'MultiSigWallet':
    |/// @title Multisignature wallet - Allows multiple parties to agree on transactions before execution.
    |/// @author Stefan George - <stefan.george@consensys.net>
  > |contract MultiSigWallet {
    |
    |    uint constant public MAX_OWNER_COUNT = 50;
  at /home/jiaming/mavs_srcs/contract@0xb9f106cef9c857a0fe7d1fc030a07670a04b22e4.sol(10)

[31mViolation[0m for UnrestrictedWrite in contract 'MultiSigWallet':
    |        for (uint i=0; i<owners.length - 1; i++)
    |            if (owners[i] == owner) {
  > |                owners[i] = owners[owners.length - 1];
    |                break;
    |            }
  at /home/jiaming/mavs_srcs/contract@0xb9f106cef9c857a0fe7d1fc030a07670a04b22e4.sol(146)

[31mViolation[0m for UnrestrictedWrite in contract 'MultiSigWallet':
    |        for (uint i=0; i<owners.length; i++)
    |            if (owners[i] == owner) {
  > |                owners[i] = newOwner;
    |                break;
    |            }
  at /home/jiaming/mavs_srcs/contract@0xb9f106cef9c857a0fe7d1fc030a07670a04b22e4.sol(166)

[31mViolation[0m for UnrestrictedWrite in contract 'MultiSigWallet':
    |                break;
    |            }
  > |        isOwner[owner] = false;
    |        isOwner[newOwner] = true;
    |        OwnerRemoval(owner);
  at /home/jiaming/mavs_srcs/contract@0xb9f106cef9c857a0fe7d1fc030a07670a04b22e4.sol(169)

[31mViolation[0m for UnrestrictedWrite in contract 'MultiSigWallet':
    |            }
    |        isOwner[owner] = false;
  > |        isOwner[newOwner] = true;
    |        OwnerRemoval(owner);
    |        OwnerAddition(newOwner);
  at /home/jiaming/mavs_srcs/contract@0xb9f106cef9c857a0fe7d1fc030a07670a04b22e4.sol(170)

[31mViolation[0m for UnrestrictedWrite in contract 'MultiSigWallet':
    |    {
    |        transactionId = transactionCount;
  > |        transactions[transactionId] = Transaction({
    |            destination: destination,
    |            value: value,
  at /home/jiaming/mavs_srcs/contract@0xb9f106cef9c857a0fe7d1fc030a07670a04b22e4.sol(273)

[31mViolation[0m for UnrestrictedWrite in contract 'MultiSigWallet':
    |            executed: false
    |        });
  > |        transactionCount += 1;
    |        Submission(transactionId);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb9f106cef9c857a0fe7d1fc030a07670a04b22e4.sol(279)

[33mWarning[0m for UnrestrictedWrite in contract 'MultiSigWallet':
    |        notConfirmed(transactionId, msg.sender)
    |    {
  > |        confirmations[transactionId][msg.sender] = true;
    |        Confirmation(msg.sender, transactionId);
    |        executeTransaction(transactionId);
  at /home/jiaming/mavs_srcs/contract@0xb9f106cef9c857a0fe7d1fc030a07670a04b22e4.sol(207)

[33mWarning[0m for UnrestrictedWrite in contract 'MultiSigWallet':
    |        notExecuted(transactionId)
    |    {
  > |        confirmations[transactionId][msg.sender] = false;
    |        Revocation(msg.sender, transactionId);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb9f106cef9c857a0fe7d1fc030a07670a04b22e4.sol(220)

[33mWarning[0m for UnrestrictedWrite in contract 'MultiSigWallet':
    |pragma solidity ^0.4.9;
    |/**
  > | * Originally from https://github.com/ConsenSys/MultiSigWallet
    | */
    |
  at /home/jiaming/mavs_srcs/contract@0xb9f106cef9c857a0fe7d1fc030a07670a04b22e4.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'MultiSigWallet':
    |        validRequirement(owners.length + 1, required)
    |    {
  > |        isOwner[owner] = true;
    |        owners.push(owner);
    |        OwnerAddition(owner);
  at /home/jiaming/mavs_srcs/contract@0xb9f106cef9c857a0fe7d1fc030a07670a04b22e4.sol(131)

[33mWarning[0m for UnrestrictedWrite in contract 'MultiSigWallet':
    |    {
    |        isOwner[owner] = true;
  > |        owners.push(owner);
    |        OwnerAddition(owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb9f106cef9c857a0fe7d1fc030a07670a04b22e4.sol(132)

[33mWarning[0m for UnrestrictedWrite in contract 'MultiSigWallet':
    |        ownerExists(owner)
    |    {
  > |        isOwner[owner] = false;
    |        for (uint i=0; i<owners.length - 1; i++)
    |            if (owners[i] == owner) {
  at /home/jiaming/mavs_srcs/contract@0xb9f106cef9c857a0fe7d1fc030a07670a04b22e4.sol(143)

[33mWarning[0m for UnrestrictedWrite in contract 'MultiSigWallet':
    |        validRequirement(owners.length, _required)
    |    {
  > |        required = _required;
    |        RequirementChange(_required);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb9f106cef9c857a0fe7d1fc030a07670a04b22e4.sol(182)


