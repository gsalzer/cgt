Processing contract: /home/jiaming/mavs_srcs/contract@0x82fa8ef17964f6b4fb6e1e4146f8d59a2075aa70.sol:AmIOnTheFork
Processing contract: /home/jiaming/mavs_srcs/contract@0x82fa8ef17964f6b4fb6e1e4146f8d59a2075aa70.sol:ReplaySafeSplit
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'ReplaySafeSplit':
    |    // Splits the funds into 2 addresses
    |    function split(address targetFork, address targetNoFork) returns(bool) {
  > |        if (amIOnTheFork.forked() && targetFork.send(msg.value)) {
    |            return true;
    |        } else if (!amIOnTheFork.forked() && targetNoFork.send(msg.value)) {
  at /home/jiaming/mavs_srcs/contract@0x82fa8ef17964f6b4fb6e1e4146f8d59a2075aa70.sol(14)

[33mWarning[0m for DAOConstantGas in contract 'ReplaySafeSplit':
    |        if (amIOnTheFork.forked() && targetFork.send(msg.value)) {
    |            return true;
  > |        } else if (!amIOnTheFork.forked() && targetNoFork.send(msg.value)) {
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x82fa8ef17964f6b4fb6e1e4146f8d59a2075aa70.sol(16)

[33mWarning[0m for LockedEther in contract 'ReplaySafeSplit':
    | * 
    | */
  > |contract ReplaySafeSplit {
    |    // Fork oracle to use
    |    AmIOnTheFork amIOnTheFork = AmIOnTheFork(0x2bd2326c993dfaef84f696526064ff22eba5b362);
  at /home/jiaming/mavs_srcs/contract@0x82fa8ef17964f6b4fb6e1e4146f8d59a2075aa70.sol(8)

[33mWarning[0m for TODReceiver in contract 'ReplaySafeSplit':
    |    // Splits the funds into 2 addresses
    |    function split(address targetFork, address targetNoFork) returns(bool) {
  > |        if (amIOnTheFork.forked() && targetFork.send(msg.value)) {
    |            return true;
    |        } else if (!amIOnTheFork.forked() && targetNoFork.send(msg.value)) {
  at /home/jiaming/mavs_srcs/contract@0x82fa8ef17964f6b4fb6e1e4146f8d59a2075aa70.sol(14)

[33mWarning[0m for TODReceiver in contract 'ReplaySafeSplit':
    |        if (amIOnTheFork.forked() && targetFork.send(msg.value)) {
    |            return true;
  > |        } else if (!amIOnTheFork.forked() && targetNoFork.send(msg.value)) {
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x82fa8ef17964f6b4fb6e1e4146f8d59a2075aa70.sol(16)

[33mWarning[0m for UnhandledException in contract 'ReplaySafeSplit':
    |    // Splits the funds into 2 addresses
    |    function split(address targetFork, address targetNoFork) returns(bool) {
  > |        if (amIOnTheFork.forked() && targetFork.send(msg.value)) {
    |            return true;
    |        } else if (!amIOnTheFork.forked() && targetNoFork.send(msg.value)) {
  at /home/jiaming/mavs_srcs/contract@0x82fa8ef17964f6b4fb6e1e4146f8d59a2075aa70.sol(14)

[33mWarning[0m for UnhandledException in contract 'ReplaySafeSplit':
    |        if (amIOnTheFork.forked() && targetFork.send(msg.value)) {
    |            return true;
  > |        } else if (!amIOnTheFork.forked() && targetNoFork.send(msg.value)) {
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x82fa8ef17964f6b4fb6e1e4146f8d59a2075aa70.sol(16)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ReplaySafeSplit':
    |    // Splits the funds into 2 addresses
    |    function split(address targetFork, address targetNoFork) returns(bool) {
  > |        if (amIOnTheFork.forked() && targetFork.send(msg.value)) {
    |            return true;
    |        } else if (!amIOnTheFork.forked() && targetNoFork.send(msg.value)) {
  at /home/jiaming/mavs_srcs/contract@0x82fa8ef17964f6b4fb6e1e4146f8d59a2075aa70.sol(14)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ReplaySafeSplit':
    |        if (amIOnTheFork.forked() && targetFork.send(msg.value)) {
    |            return true;
  > |        } else if (!amIOnTheFork.forked() && targetNoFork.send(msg.value)) {
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x82fa8ef17964f6b4fb6e1e4146f8d59a2075aa70.sol(16)


