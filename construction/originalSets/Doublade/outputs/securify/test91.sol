Processing contract: /home/jiaming/mavs_srcs/contract@0x06194c50a5a85bb1fee0e73877eefdef64466514.sol:FipsNotary
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAO in contract 'FipsNotary':
    |
    |    function fipsGenerate() internal returns (bytes20 fips) {
  > |        fips = ripemd160(block.blockhash(block.number), sha256(msg.sender, block.number, block.timestamp, msg.gas));
    |        if (fipsIsRegistered(fips)) {
    |            return fipsGenerate();
  at /home/jiaming/mavs_srcs/contract@0x06194c50a5a85bb1fee0e73877eefdef64466514.sol(78)

[33mWarning[0m for DAOConstantGas in contract 'FipsNotary':
    |
    |    function withdrawFunds() onlyAdmin {
  > |        if (!admin.send(this.balance)) {
    |            throw;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x06194c50a5a85bb1fee0e73877eefdef64466514.sol(130)

[33mWarning[0m for LockedEther in contract 'FipsNotary':
    |pragma solidity ^0.4.1;
    |
  > |contract FipsNotary {
    |
    |    address admin;
  at /home/jiaming/mavs_srcs/contract@0x06194c50a5a85bb1fee0e73877eefdef64466514.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'FipsNotary':
    |    }
    |
  > |    function fipsIsRegistered(bytes20 fips) constant returns (bool exists) {
    |        if (ledger[fips] != 0x0) {
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x06194c50a5a85bb1fee0e73877eefdef64466514.sol(48)

[31mViolation[0m for MissingInputValidation in contract 'FipsNotary':
    |    }
    |
  > |    function fipsOwner(bytes20 fips) constant returns (address owner) {
    |        return ledger[fips];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x06194c50a5a85bb1fee0e73877eefdef64466514.sol(56)

[31mViolation[0m for MissingInputValidation in contract 'FipsNotary':
    |    function fipsRegister(address owner, bytes data) { fipsRegister(1, owner, data); }
    |
  > |    function fipsTransfer(bytes20 fips, address new_owner) {
    |        if (msg.sender != ledger[fips]) {
    |            throw;
  at /home/jiaming/mavs_srcs/contract@0x06194c50a5a85bb1fee0e73877eefdef64466514.sol(108)

[31mViolation[0m for MissingInputValidation in contract 'FipsNotary':
    |    }
    |
  > |    function registrantApprove(address registrant) onlyAdmin {
    |        if (registrants[registrant] != true) {
    |            registrants[registrant] = true;
  at /home/jiaming/mavs_srcs/contract@0x06194c50a5a85bb1fee0e73877eefdef64466514.sol(115)

[31mViolation[0m for MissingInputValidation in contract 'FipsNotary':
    |    }
    |
  > |    function registrantRemove(address registrant) onlyAdmin {
    |        if (registrants[registrant] == true) {
    |            delete(registrants[registrant]);
  at /home/jiaming/mavs_srcs/contract@0x06194c50a5a85bb1fee0e73877eefdef64466514.sol(122)

[33mWarning[0m for MissingInputValidation in contract 'FipsNotary':
    |    }
    |
  > |    function fipsAddToLedger(bytes20 fips, address owner) internal {
    |        ledger[fips] = owner;
    |        FipsRegistration(fips, owner);
  at /home/jiaming/mavs_srcs/contract@0x06194c50a5a85bb1fee0e73877eefdef64466514.sol(67)

[33mWarning[0m for MissingInputValidation in contract 'FipsNotary':
    |    }
    |
  > |    function fipsChangeOwner(bytes20 fips, address old_owner, address new_owner) internal {
    |        ledger[fips] = new_owner;
    |        FipsTransfer(fips, old_owner, new_owner);
  at /home/jiaming/mavs_srcs/contract@0x06194c50a5a85bb1fee0e73877eefdef64466514.sol(72)

[33mWarning[0m for MissingInputValidation in contract 'FipsNotary':
    |    }
    |
  > |    function fipsGenerate() internal returns (bytes20 fips) {
    |        fips = ripemd160(block.blockhash(block.number), sha256(msg.sender, block.number, block.timestamp, msg.gas));
    |        if (fipsIsRegistered(fips)) {
  at /home/jiaming/mavs_srcs/contract@0x06194c50a5a85bb1fee0e73877eefdef64466514.sol(77)

[33mWarning[0m for MissingInputValidation in contract 'FipsNotary':
    |    }
    |
  > |    function fipsRegister() { fipsRegister(1, msg.sender, ""); }
    |    function fipsRegister(uint count) { fipsRegister(count, msg.sender, ""); }
    |    function fipsRegister(uint count, bytes data) { fipsRegister(count, msg.sender, data); }
  at /home/jiaming/mavs_srcs/contract@0x06194c50a5a85bb1fee0e73877eefdef64466514.sol(102)

[33mWarning[0m for MissingInputValidation in contract 'FipsNotary':
    |    }
    |
  > |    function withdrawFunds() onlyAdmin {
    |        if (!admin.send(this.balance)) {
    |            throw;
  at /home/jiaming/mavs_srcs/contract@0x06194c50a5a85bb1fee0e73877eefdef64466514.sol(129)

[31mViolation[0m for TODAmount in contract 'FipsNotary':
    |
    |    function withdrawFunds() onlyAdmin {
  > |        if (!admin.send(this.balance)) {
    |            throw;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x06194c50a5a85bb1fee0e73877eefdef64466514.sol(130)

[33mWarning[0m for TODReceiver in contract 'FipsNotary':
    |
    |    function withdrawFunds() onlyAdmin {
  > |        if (!admin.send(this.balance)) {
    |            throw;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x06194c50a5a85bb1fee0e73877eefdef64466514.sol(130)

[33mWarning[0m for UnhandledException in contract 'FipsNotary':
    |
    |    function fipsGenerate() internal returns (bytes20 fips) {
  > |        fips = ripemd160(block.blockhash(block.number), sha256(msg.sender, block.number, block.timestamp, msg.gas));
    |        if (fipsIsRegistered(fips)) {
    |            return fipsGenerate();
  at /home/jiaming/mavs_srcs/contract@0x06194c50a5a85bb1fee0e73877eefdef64466514.sol(78)

[33mWarning[0m for UnhandledException in contract 'FipsNotary':
    |
    |    function withdrawFunds() onlyAdmin {
  > |        if (!admin.send(this.balance)) {
    |            throw;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x06194c50a5a85bb1fee0e73877eefdef64466514.sol(130)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FipsNotary':
    |
    |    function fipsGenerate() internal returns (bytes20 fips) {
  > |        fips = ripemd160(block.blockhash(block.number), sha256(msg.sender, block.number, block.timestamp, msg.gas));
    |        if (fipsIsRegistered(fips)) {
    |            return fipsGenerate();
  at /home/jiaming/mavs_srcs/contract@0x06194c50a5a85bb1fee0e73877eefdef64466514.sol(78)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FipsNotary':
    |
    |    function withdrawFunds() onlyAdmin {
  > |        if (!admin.send(this.balance)) {
    |            throw;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x06194c50a5a85bb1fee0e73877eefdef64466514.sol(130)

[31mViolation[0m for UnrestrictedWrite in contract 'FipsNotary':
    |
    |    function fipsAddToLedger(bytes20 fips, address owner) internal {
  > |        ledger[fips] = owner;
    |        FipsRegistration(fips, owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x06194c50a5a85bb1fee0e73877eefdef64466514.sol(68)

[31mViolation[0m for UnrestrictedWrite in contract 'FipsNotary':
    |
    |    function fipsChangeOwner(bytes20 fips, address old_owner, address new_owner) internal {
  > |        ledger[fips] = new_owner;
    |        FipsTransfer(fips, old_owner, new_owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x06194c50a5a85bb1fee0e73877eefdef64466514.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'FipsNotary':
    |
    |    function fipsChangeOwner(bytes20 fips, address old_owner, address new_owner) internal {
  > |        ledger[fips] = new_owner;
    |        FipsTransfer(fips, old_owner, new_owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x06194c50a5a85bb1fee0e73877eefdef64466514.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'FipsNotary':
    |    function registrantApprove(address registrant) onlyAdmin {
    |        if (registrants[registrant] != true) {
  > |            registrants[registrant] = true;
    |            RegistrantApproval(registrant);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x06194c50a5a85bb1fee0e73877eefdef64466514.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'FipsNotary':
    |    function registrantRemove(address registrant) onlyAdmin {
    |        if (registrants[registrant] == true) {
  > |            delete(registrants[registrant]);
    |            RegistrantRemoval(registrant);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x06194c50a5a85bb1fee0e73877eefdef64466514.sol(124)


