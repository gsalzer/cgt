Processing contract: /home/jiaming/mavs_srcs/contract@0xff3216f86a723f2c23b03b5cd1f622eb1a204159.sol:ValentineRegistry
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'ValentineRegistry':
    |        public {
    |        address contractAddress = this;
  > |        if (!recipient.send(contractAddress.balance)) {
    |            throw;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xff3216f86a723f2c23b03b5cd1f622eb1a204159.sol(118)

[33mWarning[0m for LockedEther in contract 'ValentineRegistry':
    |pragma solidity ^0.4.2;
    |
  > |contract ValentineRegistry {
    |
    |    event LogValentineRequestCreated(string requesterName, string valentineName, string customMessage, address valentineAddress, address requesterAddress);
  at /home/jiaming/mavs_srcs/contract@0xff3216f86a723f2c23b03b5cd1f622eb1a204159.sol(3)

[31mViolation[0m for TODAmount in contract 'ValentineRegistry':
    |        public {
    |        address contractAddress = this;
  > |        if (!recipient.send(contractAddress.balance)) {
    |            throw;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xff3216f86a723f2c23b03b5cd1f622eb1a204159.sol(118)

[33mWarning[0m for TODReceiver in contract 'ValentineRegistry':
    |        public {
    |        address contractAddress = this;
  > |        if (!recipient.send(contractAddress.balance)) {
    |            throw;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xff3216f86a723f2c23b03b5cd1f622eb1a204159.sol(118)

[33mWarning[0m for UnhandledException in contract 'ValentineRegistry':
    |        public {
    |        address contractAddress = this;
  > |        if (!recipient.send(contractAddress.balance)) {
    |            throw;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xff3216f86a723f2c23b03b5cd1f622eb1a204159.sol(118)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ValentineRegistry':
    |        public {
    |        address contractAddress = this;
  > |        if (!recipient.send(contractAddress.balance)) {
    |            throw;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xff3216f86a723f2c23b03b5cd1f622eb1a204159.sol(118)

[31mViolation[0m for UnrestrictedWrite in contract 'ValentineRegistry':
    |pragma solidity ^0.4.2;
    |
  > |contract ValentineRegistry {
    |
    |    event LogValentineRequestCreated(string requesterName, string valentineName, string customMessage, address valentineAddress, address requesterAddress);
  at /home/jiaming/mavs_srcs/contract@0xff3216f86a723f2c23b03b5cd1f622eb1a204159.sol(3)

[31mViolation[0m for UnrestrictedWrite in contract 'ValentineRegistry':
    |        Request memory r = Request(requesterName, valentineName, customMessage, doesExist,
    |        wasAccepted, valentineAddress);
  > |        requesters.push(msg.sender);
    |        numRequesters++;
    |        requests[msg.sender] = r;
  at /home/jiaming/mavs_srcs/contract@0xff3216f86a723f2c23b03b5cd1f622eb1a204159.sol(76)

[31mViolation[0m for UnrestrictedWrite in contract 'ValentineRegistry':
    |        wasAccepted, valentineAddress);
    |        requesters.push(msg.sender);
  > |        numRequesters++;
    |        requests[msg.sender] = r;
    |        LogValentineRequestCreated(requesterName, valentineName, customMessage, valentineAddress, msg.sender);
  at /home/jiaming/mavs_srcs/contract@0xff3216f86a723f2c23b03b5cd1f622eb1a204159.sol(77)

[31mViolation[0m for UnrestrictedWrite in contract 'ValentineRegistry':
    |            throw; // the request doesn't exist
    |        }
  > |        request.wasAccepted = true;
    |        LogRequestAccepted(requesterAddress);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xff3216f86a723f2c23b03b5cd1f622eb1a204159.sol(87)

[33mWarning[0m for UnrestrictedWrite in contract 'ValentineRegistry':
    |pragma solidity ^0.4.2;
    |
  > |contract ValentineRegistry {
    |
    |    event LogValentineRequestCreated(string requesterName, string valentineName, string customMessage, address valentineAddress, address requesterAddress);
  at /home/jiaming/mavs_srcs/contract@0xff3216f86a723f2c23b03b5cd1f622eb1a204159.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'ValentineRegistry':
    |        restricted
    |        public {
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xff3216f86a723f2c23b03b5cd1f622eb1a204159.sol(111)


