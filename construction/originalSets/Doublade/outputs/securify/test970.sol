Processing contract: /home/jiaming/mavs_srcs/contract@0x3cfd32fc860c7458be0dd597ea995b425662d3e9.sol:MultiSigWallet
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
  at /home/jiaming/mavs_srcs/contract@0x3cfd32fc860c7458be0dd597ea995b425662d3e9.sol(224)

[33mWarning[0m for LockedEther in contract 'MultiSigWallet':
  > |contract MultiSigWallet {
    |
    |    uint constant public MAX_OWNER_COUNT = 50;
  at /home/jiaming/mavs_srcs/contract@0x3cfd32fc860c7458be0dd597ea995b425662d3e9.sol(1)

[33mWarning[0m for UnhandledException in contract 'MultiSigWallet':
    |            Transaction tx = transactions[transactionId];
    |            tx.executed = true;
  > |            if (tx.destination.call.value(tx.value)(tx.data))
    |                Execution(transactionId);
    |            else {
  at /home/jiaming/mavs_srcs/contract@0x3cfd32fc860c7458be0dd597ea995b425662d3e9.sol(224)

[31mViolation[0m for UnrestrictedWrite in contract 'MultiSigWallet':
  > |contract MultiSigWallet {
    |
    |    uint constant public MAX_OWNER_COUNT = 50;
  at /home/jiaming/mavs_srcs/contract@0x3cfd32fc860c7458be0dd597ea995b425662d3e9.sol(1)

[31mViolation[0m for UnrestrictedWrite in contract 'MultiSigWallet':
    |        for (uint i=0; i<owners.length - 1; i++)
    |            if (owners[i] == owner) {
  > |                owners[i] = owners[owners.length - 1];
    |                break;
    |            }
  at /home/jiaming/mavs_srcs/contract@0x3cfd32fc860c7458be0dd597ea995b425662d3e9.sol(137)

[31mViolation[0m for UnrestrictedWrite in contract 'MultiSigWallet':
    |        for (uint i=0; i<owners.length; i++)
    |            if (owners[i] == owner) {
  > |                owners[i] = newOwner;
    |                break;
    |            }
  at /home/jiaming/mavs_srcs/contract@0x3cfd32fc860c7458be0dd597ea995b425662d3e9.sol(157)

[31mViolation[0m for UnrestrictedWrite in contract 'MultiSigWallet':
    |                break;
    |            }
  > |        isOwner[owner] = false;
    |        isOwner[newOwner] = true;
    |        OwnerRemoval(owner);
  at /home/jiaming/mavs_srcs/contract@0x3cfd32fc860c7458be0dd597ea995b425662d3e9.sol(160)

[31mViolation[0m for UnrestrictedWrite in contract 'MultiSigWallet':
    |            }
    |        isOwner[owner] = false;
  > |        isOwner[newOwner] = true;
    |        OwnerRemoval(owner);
    |        OwnerAddition(newOwner);
  at /home/jiaming/mavs_srcs/contract@0x3cfd32fc860c7458be0dd597ea995b425662d3e9.sol(161)

[31mViolation[0m for UnrestrictedWrite in contract 'MultiSigWallet':
    |    {
    |        transactionId = transactionCount;
  > |        transactions[transactionId] = Transaction({
    |            destination: destination,
    |            value: value,
  at /home/jiaming/mavs_srcs/contract@0x3cfd32fc860c7458be0dd597ea995b425662d3e9.sol(264)

[31mViolation[0m for UnrestrictedWrite in contract 'MultiSigWallet':
    |            executed: false
    |        });
  > |        transactionCount += 1;
    |        Submission(transactionId);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3cfd32fc860c7458be0dd597ea995b425662d3e9.sol(270)

[33mWarning[0m for UnrestrictedWrite in contract 'MultiSigWallet':
    |        notConfirmed(transactionId, msg.sender)
    |    {
  > |        confirmations[transactionId][msg.sender] = true;
    |        Confirmation(msg.sender, transactionId);
    |        executeTransaction(transactionId);
  at /home/jiaming/mavs_srcs/contract@0x3cfd32fc860c7458be0dd597ea995b425662d3e9.sol(198)

[33mWarning[0m for UnrestrictedWrite in contract 'MultiSigWallet':
    |        notExecuted(transactionId)
    |    {
  > |        confirmations[transactionId][msg.sender] = false;
    |        Revocation(msg.sender, transactionId);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3cfd32fc860c7458be0dd597ea995b425662d3e9.sol(211)

[33mWarning[0m for UnrestrictedWrite in contract 'MultiSigWallet':
    |contract MultiSigWallet {
    |
  > |    uint constant public MAX_OWNER_COUNT = 50;
    |
    |    event Confirmation(address indexed sender, uint indexed transactionId);
  at /home/jiaming/mavs_srcs/contract@0x3cfd32fc860c7458be0dd597ea995b425662d3e9.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'MultiSigWallet':
    |        validRequirement(owners.length + 1, required)
    |    {
  > |        isOwner[owner] = true;
    |        owners.push(owner);
    |        OwnerAddition(owner);
  at /home/jiaming/mavs_srcs/contract@0x3cfd32fc860c7458be0dd597ea995b425662d3e9.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'MultiSigWallet':
    |    {
    |        isOwner[owner] = true;
  > |        owners.push(owner);
    |        OwnerAddition(owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3cfd32fc860c7458be0dd597ea995b425662d3e9.sol(123)

[33mWarning[0m for UnrestrictedWrite in contract 'MultiSigWallet':
    |        ownerExists(owner)
    |    {
  > |        isOwner[owner] = false;
    |        for (uint i=0; i<owners.length - 1; i++)
    |            if (owners[i] == owner) {
  at /home/jiaming/mavs_srcs/contract@0x3cfd32fc860c7458be0dd597ea995b425662d3e9.sol(134)

[33mWarning[0m for UnrestrictedWrite in contract 'MultiSigWallet':
    |        validRequirement(owners.length, _required)
    |    {
  > |        required = _required;
    |        RequirementChange(_required);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3cfd32fc860c7458be0dd597ea995b425662d3e9.sol(173)


