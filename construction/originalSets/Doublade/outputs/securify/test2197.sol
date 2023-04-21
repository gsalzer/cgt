Processing contract: /home/jiaming/mavs_srcs/contract@0x8f058d8a161f5be34b47149d70c47d6c60252eee.sol:AmIOnTheFork
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8f058d8a161f5be34b47149d70c47d6c60252eee.sol:ReplaySafeSplit
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'AmIOnTheFork':
  > |contract AmIOnTheFork {
    |    bool public forked = false;
    |    address constant darkDAO = 0x304a554a310c7e546dfe434669c62820b7d83490;
  at /home/jiaming/mavs_srcs/contract@0x8f058d8a161f5be34b47149d70c47d6c60252eee.sol(1)

[33mWarning[0m for MissingInputValidation in contract 'AmIOnTheFork':
    |contract AmIOnTheFork {
  > |    bool public forked = false;
    |    address constant darkDAO = 0x304a554a310c7e546dfe434669c62820b7d83490;
    |    // Check the fork condition during creation of the contract.
  at /home/jiaming/mavs_srcs/contract@0x8f058d8a161f5be34b47149d70c47d6c60252eee.sol(2)

[33mWarning[0m for MissingInputValidation in contract 'AmIOnTheFork':
    |    // Approximately between 2016-07-20 12:00:00 UTC and 2016-07-20 17:00:00 UTC.
    |    // After that the status will be locked in.
  > |    function update() {
    |        if (block.number >= 1920000 && block.number <= 1921200) {
    |            forked = darkDAO.balance < 3600000 ether;
  at /home/jiaming/mavs_srcs/contract@0x8f058d8a161f5be34b47149d70c47d6c60252eee.sol(8)

[31mViolation[0m for UnrestrictedWrite in contract 'AmIOnTheFork':
    |    function update() {
    |        if (block.number >= 1920000 && block.number <= 1921200) {
  > |            forked = darkDAO.balance < 3600000 ether;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8f058d8a161f5be34b47149d70c47d6c60252eee.sol(10)

[33mWarning[0m for DAOConstantGas in contract 'ReplaySafeSplit':
    |    // Splits the funds into 2 addresses
    |    function split(address targetFork, address targetNoFork) returns(bool) {
  > |        if (amIOnTheFork.forked() && targetFork.send(msg.value)) {
    |            return true;
    |        } else if (!amIOnTheFork.forked() && targetNoFork.send(msg.value)) {
  at /home/jiaming/mavs_srcs/contract@0x8f058d8a161f5be34b47149d70c47d6c60252eee.sol(23)

[33mWarning[0m for DAOConstantGas in contract 'ReplaySafeSplit':
    |        if (amIOnTheFork.forked() && targetFork.send(msg.value)) {
    |            return true;
  > |        } else if (!amIOnTheFork.forked() && targetNoFork.send(msg.value)) {
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x8f058d8a161f5be34b47149d70c47d6c60252eee.sol(25)

[33mWarning[0m for LockedEther in contract 'ReplaySafeSplit':
    |    }
    |}
  > |contract ReplaySafeSplit {
    |    // Fork oracle to use
    |    AmIOnTheFork amIOnTheFork = AmIOnTheFork(0x2bd2326c993dfaef84f696526064ff22eba5b362);
  at /home/jiaming/mavs_srcs/contract@0x8f058d8a161f5be34b47149d70c47d6c60252eee.sol(17)

[33mWarning[0m for TODReceiver in contract 'ReplaySafeSplit':
    |    // Splits the funds into 2 addresses
    |    function split(address targetFork, address targetNoFork) returns(bool) {
  > |        if (amIOnTheFork.forked() && targetFork.send(msg.value)) {
    |            return true;
    |        } else if (!amIOnTheFork.forked() && targetNoFork.send(msg.value)) {
  at /home/jiaming/mavs_srcs/contract@0x8f058d8a161f5be34b47149d70c47d6c60252eee.sol(23)

[33mWarning[0m for TODReceiver in contract 'ReplaySafeSplit':
    |        if (amIOnTheFork.forked() && targetFork.send(msg.value)) {
    |            return true;
  > |        } else if (!amIOnTheFork.forked() && targetNoFork.send(msg.value)) {
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x8f058d8a161f5be34b47149d70c47d6c60252eee.sol(25)

[33mWarning[0m for UnhandledException in contract 'ReplaySafeSplit':
    |    // Splits the funds into 2 addresses
    |    function split(address targetFork, address targetNoFork) returns(bool) {
  > |        if (amIOnTheFork.forked() && targetFork.send(msg.value)) {
    |            return true;
    |        } else if (!amIOnTheFork.forked() && targetNoFork.send(msg.value)) {
  at /home/jiaming/mavs_srcs/contract@0x8f058d8a161f5be34b47149d70c47d6c60252eee.sol(23)

[33mWarning[0m for UnhandledException in contract 'ReplaySafeSplit':
    |        if (amIOnTheFork.forked() && targetFork.send(msg.value)) {
    |            return true;
  > |        } else if (!amIOnTheFork.forked() && targetNoFork.send(msg.value)) {
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x8f058d8a161f5be34b47149d70c47d6c60252eee.sol(25)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ReplaySafeSplit':
    |    // Splits the funds into 2 addresses
    |    function split(address targetFork, address targetNoFork) returns(bool) {
  > |        if (amIOnTheFork.forked() && targetFork.send(msg.value)) {
    |            return true;
    |        } else if (!amIOnTheFork.forked() && targetNoFork.send(msg.value)) {
  at /home/jiaming/mavs_srcs/contract@0x8f058d8a161f5be34b47149d70c47d6c60252eee.sol(23)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ReplaySafeSplit':
    |        if (amIOnTheFork.forked() && targetFork.send(msg.value)) {
    |            return true;
  > |        } else if (!amIOnTheFork.forked() && targetNoFork.send(msg.value)) {
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x8f058d8a161f5be34b47149d70c47d6c60252eee.sol(25)


