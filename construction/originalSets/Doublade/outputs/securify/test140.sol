Processing contract: /home/jiaming/mavs_srcs/contract@0x096ddaec18064b702f7e53a42afea68ee4a27f54.sol:MultiSigWallet
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x096ddaec18064b702f7e53a42afea68ee4a27f54.sol:MultiSigWalletWithDailyLimit
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for DAO in contract 'MultiSigWallet':
    |            let x := mload(0x40)   // "Allocate" memory for output (0x40 is where "free memory" pointer is stored by convention)
    |            let d := add(data, 32) // First 32 bytes are the padded length of data, so exclude that
  > |            result := call(
    |                sub(gas, 34710),   // 34710 is the value that solidity is currently emitting
    |                                   // It includes callGas (700) + callVeryLow (3, to pay for SUB) + callValueTransferGas (9000) +
  at /home/jiaming/mavs_srcs/contract@0x096ddaec18064b702f7e53a42afea68ee4a27f54.sol(248)

[33mWarning[0m for LockedEther in contract 'MultiSigWallet':
    |/// @title Multisignature wallet - Allows multiple parties to agree on transactions before execution.
    |/// @author Stefan George - <stefan.george@consensys.net>
  > |contract MultiSigWallet {
    |
    |    /*
  at /home/jiaming/mavs_srcs/contract@0x096ddaec18064b702f7e53a42afea68ee4a27f54.sol(5)

[33mWarning[0m for UnhandledException in contract 'MultiSigWallet':
    |            let x := mload(0x40)   // "Allocate" memory for output (0x40 is where "free memory" pointer is stored by convention)
    |            let d := add(data, 32) // First 32 bytes are the padded length of data, so exclude that
  > |            result := call(
    |                sub(gas, 34710),   // 34710 is the value that solidity is currently emitting
    |                                   // It includes callGas (700) + callVeryLow (3, to pay for SUB) + callValueTransferGas (9000) +
  at /home/jiaming/mavs_srcs/contract@0x096ddaec18064b702f7e53a42afea68ee4a27f54.sol(248)

[31mViolation[0m for UnrestrictedWrite in contract 'MultiSigWallet':
    |/// @title Multisignature wallet - Allows multiple parties to agree on transactions before execution.
    |/// @author Stefan George - <stefan.george@consensys.net>
  > |contract MultiSigWallet {
    |
    |    /*
  at /home/jiaming/mavs_srcs/contract@0x096ddaec18064b702f7e53a42afea68ee4a27f54.sol(5)

[31mViolation[0m for UnrestrictedWrite in contract 'MultiSigWallet':
    |        for (uint i=0; i<owners.length - 1; i++)
    |            if (owners[i] == owner) {
  > |                owners[i] = owners[owners.length - 1];
    |                break;
    |            }
  at /home/jiaming/mavs_srcs/contract@0x096ddaec18064b702f7e53a42afea68ee4a27f54.sol(143)

[31mViolation[0m for UnrestrictedWrite in contract 'MultiSigWallet':
    |        for (uint i=0; i<owners.length; i++)
    |            if (owners[i] == owner) {
  > |                owners[i] = newOwner;
    |                break;
    |            }
  at /home/jiaming/mavs_srcs/contract@0x096ddaec18064b702f7e53a42afea68ee4a27f54.sol(163)

[31mViolation[0m for UnrestrictedWrite in contract 'MultiSigWallet':
    |                break;
    |            }
  > |        isOwner[owner] = false;
    |        isOwner[newOwner] = true;
    |        OwnerRemoval(owner);
  at /home/jiaming/mavs_srcs/contract@0x096ddaec18064b702f7e53a42afea68ee4a27f54.sol(166)

[31mViolation[0m for UnrestrictedWrite in contract 'MultiSigWallet':
    |            }
    |        isOwner[owner] = false;
  > |        isOwner[newOwner] = true;
    |        OwnerRemoval(owner);
    |        OwnerAddition(newOwner);
  at /home/jiaming/mavs_srcs/contract@0x096ddaec18064b702f7e53a42afea68ee4a27f54.sol(167)

[31mViolation[0m for UnrestrictedWrite in contract 'MultiSigWallet':
    |    {
    |        transactionId = transactionCount;
  > |        transactions[transactionId] = Transaction({
    |            destination: destination,
    |            value: value,
  at /home/jiaming/mavs_srcs/contract@0x096ddaec18064b702f7e53a42afea68ee4a27f54.sol(294)

[31mViolation[0m for UnrestrictedWrite in contract 'MultiSigWallet':
    |            executed: false
    |        });
  > |        transactionCount += 1;
    |        Submission(transactionId);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x096ddaec18064b702f7e53a42afea68ee4a27f54.sol(300)

[33mWarning[0m for UnrestrictedWrite in contract 'MultiSigWallet':
    |        notConfirmed(transactionId, msg.sender)
    |    {
  > |        confirmations[transactionId][msg.sender] = true;
    |        Confirmation(msg.sender, transactionId);
    |        executeTransaction(transactionId);
  at /home/jiaming/mavs_srcs/contract@0x096ddaec18064b702f7e53a42afea68ee4a27f54.sol(204)

[33mWarning[0m for UnrestrictedWrite in contract 'MultiSigWallet':
    |        notExecuted(transactionId)
    |    {
  > |        confirmations[transactionId][msg.sender] = false;
    |        Revocation(msg.sender, transactionId);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x096ddaec18064b702f7e53a42afea68ee4a27f54.sol(217)

[33mWarning[0m for UnrestrictedWrite in contract 'MultiSigWallet':
    |pragma solidity ^0.4.15;
    |
  > |/// @title Multisignature wallet - Allows multiple parties to agree on transactions before execution.
    |/// @author Stefan George - <stefan.george@consensys.net>
    |contract MultiSigWallet {
  at /home/jiaming/mavs_srcs/contract@0x096ddaec18064b702f7e53a42afea68ee4a27f54.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'MultiSigWallet':
    |        validRequirement(owners.length + 1, required)
    |    {
  > |        isOwner[owner] = true;
    |        owners.push(owner);
    |        OwnerAddition(owner);
  at /home/jiaming/mavs_srcs/contract@0x096ddaec18064b702f7e53a42afea68ee4a27f54.sol(128)

[33mWarning[0m for UnrestrictedWrite in contract 'MultiSigWallet':
    |    {
    |        isOwner[owner] = true;
  > |        owners.push(owner);
    |        OwnerAddition(owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x096ddaec18064b702f7e53a42afea68ee4a27f54.sol(129)

[33mWarning[0m for UnrestrictedWrite in contract 'MultiSigWallet':
    |        ownerExists(owner)
    |    {
  > |        isOwner[owner] = false;
    |        for (uint i=0; i<owners.length - 1; i++)
    |            if (owners[i] == owner) {
  at /home/jiaming/mavs_srcs/contract@0x096ddaec18064b702f7e53a42afea68ee4a27f54.sol(140)

[33mWarning[0m for UnrestrictedWrite in contract 'MultiSigWallet':
    |        validRequirement(owners.length, _required)
    |    {
  > |        required = _required;
    |        RequirementChange(_required);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x096ddaec18064b702f7e53a42afea68ee4a27f54.sol(179)

[31mViolation[0m for DAO in contract 'MultiSigWalletWithDailyLimit':
    |            if (!_confirmed)
    |                spentToday += txn.value;
  > |            if (txn.destination.call.value(txn.value)(txn.data))
    |                Execution(transactionId);
    |            else {
  at /home/jiaming/mavs_srcs/contract@0x096ddaec18064b702f7e53a42afea68ee4a27f54.sol(448)

[33mWarning[0m for LockedEther in contract 'MultiSigWalletWithDailyLimit':
    |/// @title Multisignature wallet with daily limit - Allows an owner to withdraw a daily limit without multisig.
    |/// @author Stefan George - <stefan.george@consensys.net>
  > |contract MultiSigWalletWithDailyLimit is MultiSigWallet {
    |
    |    /*
  at /home/jiaming/mavs_srcs/contract@0x096ddaec18064b702f7e53a42afea68ee4a27f54.sol(396)

[33mWarning[0m for UnhandledException in contract 'MultiSigWalletWithDailyLimit':
    |            if (!_confirmed)
    |                spentToday += txn.value;
  > |            if (txn.destination.call.value(txn.value)(txn.data))
    |                Execution(transactionId);
    |            else {
  at /home/jiaming/mavs_srcs/contract@0x096ddaec18064b702f7e53a42afea68ee4a27f54.sol(448)

[31mViolation[0m for UnrestrictedWrite in contract 'MultiSigWalletWithDailyLimit':
    |        for (uint i=0; i<owners.length - 1; i++)
    |            if (owners[i] == owner) {
  > |                owners[i] = owners[owners.length - 1];
    |                break;
    |            }
  at /home/jiaming/mavs_srcs/contract@0x096ddaec18064b702f7e53a42afea68ee4a27f54.sol(143)

[31mViolation[0m for UnrestrictedWrite in contract 'MultiSigWalletWithDailyLimit':
    |        for (uint i=0; i<owners.length; i++)
    |            if (owners[i] == owner) {
  > |                owners[i] = newOwner;
    |                break;
    |            }
  at /home/jiaming/mavs_srcs/contract@0x096ddaec18064b702f7e53a42afea68ee4a27f54.sol(163)

[31mViolation[0m for UnrestrictedWrite in contract 'MultiSigWalletWithDailyLimit':
    |                break;
    |            }
  > |        isOwner[owner] = false;
    |        isOwner[newOwner] = true;
    |        OwnerRemoval(owner);
  at /home/jiaming/mavs_srcs/contract@0x096ddaec18064b702f7e53a42afea68ee4a27f54.sol(166)

[31mViolation[0m for UnrestrictedWrite in contract 'MultiSigWalletWithDailyLimit':
    |            }
    |        isOwner[owner] = false;
  > |        isOwner[newOwner] = true;
    |        OwnerRemoval(owner);
    |        OwnerAddition(newOwner);
  at /home/jiaming/mavs_srcs/contract@0x096ddaec18064b702f7e53a42afea68ee4a27f54.sol(167)

[31mViolation[0m for UnrestrictedWrite in contract 'MultiSigWalletWithDailyLimit':
    |    {
    |        transactionId = transactionCount;
  > |        transactions[transactionId] = Transaction({
    |            destination: destination,
    |            value: value,
  at /home/jiaming/mavs_srcs/contract@0x096ddaec18064b702f7e53a42afea68ee4a27f54.sol(294)

[31mViolation[0m for UnrestrictedWrite in contract 'MultiSigWalletWithDailyLimit':
    |            executed: false
    |        });
  > |        transactionCount += 1;
    |        Submission(transactionId);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x096ddaec18064b702f7e53a42afea68ee4a27f54.sol(300)

[31mViolation[0m for UnrestrictedWrite in contract 'MultiSigWalletWithDailyLimit':
    |/// @title Multisignature wallet with daily limit - Allows an owner to withdraw a daily limit without multisig.
    |/// @author Stefan George - <stefan.george@consensys.net>
  > |contract MultiSigWalletWithDailyLimit is MultiSigWallet {
    |
    |    /*
  at /home/jiaming/mavs_srcs/contract@0x096ddaec18064b702f7e53a42afea68ee4a27f54.sol(396)

[33mWarning[0m for UnrestrictedWrite in contract 'MultiSigWalletWithDailyLimit':
    |        notConfirmed(transactionId, msg.sender)
    |    {
  > |        confirmations[transactionId][msg.sender] = true;
    |        Confirmation(msg.sender, transactionId);
    |        executeTransaction(transactionId);
  at /home/jiaming/mavs_srcs/contract@0x096ddaec18064b702f7e53a42afea68ee4a27f54.sol(204)

[33mWarning[0m for UnrestrictedWrite in contract 'MultiSigWalletWithDailyLimit':
    |        notExecuted(transactionId)
    |    {
  > |        confirmations[transactionId][msg.sender] = false;
    |        Revocation(msg.sender, transactionId);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x096ddaec18064b702f7e53a42afea68ee4a27f54.sol(217)

[33mWarning[0m for UnrestrictedWrite in contract 'MultiSigWalletWithDailyLimit':
    |pragma solidity ^0.4.15;
    |
  > |/// @title Multisignature wallet - Allows multiple parties to agree on transactions before execution.
    |/// @author Stefan George - <stefan.george@consensys.net>
    |contract MultiSigWallet {
  at /home/jiaming/mavs_srcs/contract@0x096ddaec18064b702f7e53a42afea68ee4a27f54.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'MultiSigWalletWithDailyLimit':
    |        validRequirement(owners.length + 1, required)
    |    {
  > |        isOwner[owner] = true;
    |        owners.push(owner);
    |        OwnerAddition(owner);
  at /home/jiaming/mavs_srcs/contract@0x096ddaec18064b702f7e53a42afea68ee4a27f54.sol(128)

[33mWarning[0m for UnrestrictedWrite in contract 'MultiSigWalletWithDailyLimit':
    |    {
    |        isOwner[owner] = true;
  > |        owners.push(owner);
    |        OwnerAddition(owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x096ddaec18064b702f7e53a42afea68ee4a27f54.sol(129)

[33mWarning[0m for UnrestrictedWrite in contract 'MultiSigWalletWithDailyLimit':
    |        ownerExists(owner)
    |    {
  > |        isOwner[owner] = false;
    |        for (uint i=0; i<owners.length - 1; i++)
    |            if (owners[i] == owner) {
  at /home/jiaming/mavs_srcs/contract@0x096ddaec18064b702f7e53a42afea68ee4a27f54.sol(140)

[33mWarning[0m for UnrestrictedWrite in contract 'MultiSigWalletWithDailyLimit':
    |        validRequirement(owners.length, _required)
    |    {
  > |        required = _required;
    |        RequirementChange(_required);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x096ddaec18064b702f7e53a42afea68ee4a27f54.sol(179)

[33mWarning[0m for UnrestrictedWrite in contract 'MultiSigWalletWithDailyLimit':
    |        onlyWallet
    |    {
  > |        dailyLimit = _dailyLimit;
    |        DailyLimitChange(_dailyLimit);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x096ddaec18064b702f7e53a42afea68ee4a27f54.sol(430)


