Processing contract: /home/jiaming/mavs_srcs/contract@0xb43b5be03416ca16f7b9749c6aba818538dcc032.sol:Mortal
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb43b5be03416ca16f7b9749c6aba818538dcc032.sol:Owned
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb43b5be03416ca16f7b9749c6aba818538dcc032.sol:Slotthereum
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Mortal':
    |
    |
  > |contract Mortal is Owned {
    |    
    |    function kill() {
  at /home/jiaming/mavs_srcs/contract@0xb43b5be03416ca16f7b9749c6aba818538dcc032.sol(19)

[33mWarning[0m for MissingInputValidation in contract 'Mortal':
    |contract Mortal is Owned {
    |    
  > |    function kill() {
    |        if (msg.sender == owner)
    |            selfdestruct(owner);
  at /home/jiaming/mavs_srcs/contract@0xb43b5be03416ca16f7b9749c6aba818538dcc032.sol(21)

[33mWarning[0m for LockedEther in contract 'Owned':
    |
    |
  > |contract Owned {
    |    address owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xb43b5be03416ca16f7b9749c6aba818538dcc032.sol(4)

[33mWarning[0m for DAOConstantGas in contract 'Slotthereum':
    |        }
    |
  > |        msg.sender.transfer(games[gameId].prize);
    |
    |        notify(
  at /home/jiaming/mavs_srcs/contract@0xb43b5be03416ca16f7b9749c6aba818538dcc032.sol(176)

[33mWarning[0m for DAOConstantGas in contract 'Slotthereum':
    |    function withdraw(uint amount) onlyowner returns (uint) {
    |        if (amount <= this.balance) {
  > |            msg.sender.transfer(amount);
    |            return amount;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xb43b5be03416ca16f7b9749c6aba818538dcc032.sol(194)

[33mWarning[0m for LockedEther in contract 'Slotthereum':
    |
    |
  > |contract Slotthereum is Mortal {
    |
    |    Game[] public games;                              // games
  at /home/jiaming/mavs_srcs/contract@0xb43b5be03416ca16f7b9749c6aba818538dcc032.sol(28)

[33mWarning[0m for TODAmount in contract 'Slotthereum':
    |    function withdraw(uint amount) onlyowner returns (uint) {
    |        if (amount <= this.balance) {
  > |            msg.sender.transfer(amount);
    |            return amount;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xb43b5be03416ca16f7b9749c6aba818538dcc032.sol(194)

[33mWarning[0m for TODReceiver in contract 'Slotthereum':
    |        }
    |
  > |        msg.sender.transfer(games[gameId].prize);
    |
    |        notify(
  at /home/jiaming/mavs_srcs/contract@0xb43b5be03416ca16f7b9749c6aba818538dcc032.sol(176)

[33mWarning[0m for TODReceiver in contract 'Slotthereum':
    |    function withdraw(uint amount) onlyowner returns (uint) {
    |        if (amount <= this.balance) {
  > |            msg.sender.transfer(amount);
    |            return amount;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xb43b5be03416ca16f7b9749c6aba818538dcc032.sol(194)

[33mWarning[0m for UnhandledException in contract 'Slotthereum':
    |        }
    |
  > |        msg.sender.transfer(games[gameId].prize);
    |
    |        notify(
  at /home/jiaming/mavs_srcs/contract@0xb43b5be03416ca16f7b9749c6aba818538dcc032.sol(176)

[33mWarning[0m for UnhandledException in contract 'Slotthereum':
    |    function withdraw(uint amount) onlyowner returns (uint) {
    |        if (amount <= this.balance) {
  > |            msg.sender.transfer(amount);
    |            return amount;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xb43b5be03416ca16f7b9749c6aba818538dcc032.sol(194)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Slotthereum':
    |    function withdraw(uint amount) onlyowner returns (uint) {
    |        if (amount <= this.balance) {
  > |            msg.sender.transfer(amount);
    |            return amount;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xb43b5be03416ca16f7b9749c6aba818538dcc032.sol(194)

[31mViolation[0m for UnrestrictedWrite in contract 'Slotthereum':
    |
    |
  > |contract Slotthereum is Mortal {
    |
    |    Game[] public games;                              // games
  at /home/jiaming/mavs_srcs/contract@0xb43b5be03416ca16f7b9749c6aba818538dcc032.sol(28)

[31mViolation[0m for UnrestrictedWrite in contract 'Slotthereum':
    |        uint gameId = games.length;
    |        games.length++;
  > |        numberOfGames++;
    |
    |        GameRoll(msg.sender, gameId, start, end, msg.value);
  at /home/jiaming/mavs_srcs/contract@0xb43b5be03416ca16f7b9749c6aba818538dcc032.sol(145)

[31mViolation[0m for UnrestrictedWrite in contract 'Slotthereum':
    |        GameRoll(msg.sender, gameId, start, end, msg.value);
    |
  > |        games[gameId].id = gameId;
    |        games[gameId].player = msg.sender;
    |        games[gameId].amount = msg.value;
  at /home/jiaming/mavs_srcs/contract@0xb43b5be03416ca16f7b9749c6aba818538dcc032.sol(149)

[31mViolation[0m for UnrestrictedWrite in contract 'Slotthereum':
    |
    |        games[gameId].id = gameId;
  > |        games[gameId].player = msg.sender;
    |        games[gameId].amount = msg.value;
    |        games[gameId].start = start;
  at /home/jiaming/mavs_srcs/contract@0xb43b5be03416ca16f7b9749c6aba818538dcc032.sol(150)

[31mViolation[0m for UnrestrictedWrite in contract 'Slotthereum':
    |        games[gameId].id = gameId;
    |        games[gameId].player = msg.sender;
  > |        games[gameId].amount = msg.value;
    |        games[gameId].start = start;
    |        games[gameId].end = end;
  at /home/jiaming/mavs_srcs/contract@0xb43b5be03416ca16f7b9749c6aba818538dcc032.sol(151)

[31mViolation[0m for UnrestrictedWrite in contract 'Slotthereum':
    |        games[gameId].player = msg.sender;
    |        games[gameId].amount = msg.value;
  > |        games[gameId].start = start;
    |        games[gameId].end = end;
    |        games[gameId].hash = getBlockHash(pointer);
  at /home/jiaming/mavs_srcs/contract@0xb43b5be03416ca16f7b9749c6aba818538dcc032.sol(152)

[31mViolation[0m for UnrestrictedWrite in contract 'Slotthereum':
    |        games[gameId].amount = msg.value;
    |        games[gameId].start = start;
  > |        games[gameId].end = end;
    |        games[gameId].hash = getBlockHash(pointer);
    |        games[gameId].number = getNumber(games[gameId].hash);
  at /home/jiaming/mavs_srcs/contract@0xb43b5be03416ca16f7b9749c6aba818538dcc032.sol(153)

[31mViolation[0m for UnrestrictedWrite in contract 'Slotthereum':
    |        games[gameId].start = start;
    |        games[gameId].end = end;
  > |        games[gameId].hash = getBlockHash(pointer);
    |        games[gameId].number = getNumber(games[gameId].hash);
    |        
  at /home/jiaming/mavs_srcs/contract@0xb43b5be03416ca16f7b9749c6aba818538dcc032.sol(154)

[33mWarning[0m for UnrestrictedWrite in contract 'Slotthereum':
    |
    |    function setMinBetAmount(uint _minBetAmount) onlyowner returns (uint) {
  > |        minBetAmount = _minBetAmount;
    |        MinBetAmountChanged(minBetAmount);
    |        return minBetAmount;
  at /home/jiaming/mavs_srcs/contract@0xb43b5be03416ca16f7b9749c6aba818538dcc032.sol(201)

[33mWarning[0m for UnrestrictedWrite in contract 'Slotthereum':
    |
    |    function setMaxBetAmount(uint _maxBetAmount) onlyowner returns (uint) {
  > |        maxBetAmount = _maxBetAmount;
    |        MaxBetAmountChanged(maxBetAmount);
    |        return maxBetAmount;
  at /home/jiaming/mavs_srcs/contract@0xb43b5be03416ca16f7b9749c6aba818538dcc032.sol(207)

[33mWarning[0m for UnrestrictedWrite in contract 'Slotthereum':
    |
    |    function setPointer(uint8 _pointer) onlyowner returns (uint) {
  > |        pointer = _pointer;
    |        PointerChanged(pointer);
    |        return pointer;
  at /home/jiaming/mavs_srcs/contract@0xb43b5be03416ca16f7b9749c6aba818538dcc032.sol(213)


