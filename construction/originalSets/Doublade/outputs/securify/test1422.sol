Processing contract: /home/jiaming/mavs_srcs/contract@0x5a609ce4b74fea5a4647fba3e3343ca850c5b049.sol:DataSet
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5a609ce4b74fea5a4647fba3e3343ca850c5b049.sol:Events
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5a609ce4b74fea5a4647fba3e3343ca850c5b049.sol:NumberCompressor
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5a609ce4b74fea5a4647fba3e3343ca850c5b049.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5a609ce4b74fea5a4647fba3e3343ca850c5b049.sol:Winner
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'DataSet':
    |pragma solidity ^0.4.24;
    |
  > |library DataSet {
    |
    |    enum RoundState {
  at /home/jiaming/mavs_srcs/contract@0x5a609ce4b74fea5a4647fba3e3343ca850c5b049.sol(3)

[33mWarning[0m for LockedEther in contract 'Events':
    |}
    |
  > |contract Events {
    |
    |    event onActivate
  at /home/jiaming/mavs_srcs/contract@0x5a609ce4b74fea5a4647fba3e3343ca850c5b049.sol(171)

[33mWarning[0m for LockedEther in contract 'NumberCompressor':
    | * @dev Number compressor to storage the begin and end numbers into a uint256
    | */
  > |library NumberCompressor {
    |
    |    uint256 constant private MASK = 16777215;   // 2 ** 24 - 1
  at /home/jiaming/mavs_srcs/contract@0x5a609ce4b74fea5a4647fba3e3343ca850c5b049.sol(30)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * - removed div, its useless
    | */
  > |library SafeMath {
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x5a609ce4b74fea5a4647fba3e3343ca850c5b049.sol(60)

[31mViolation[0m for DAOConstantGas in contract 'Winner':
    |                // assgin bonus to player, and the rest of the pond to platform
    |                uint256 fund = rounds[_roundID].pond.sub(bonus);
  > |                _player.transfer(bonus);
    |                platform.transfer(fund);
    |                rounds[_roundID].state = DataSet.RoundState.ASSIGNED;
  at /home/jiaming/mavs_srcs/contract@0x5a609ce4b74fea5a4647fba3e3343ca850c5b049.sol(450)

[31mViolation[0m for DAOConstantGas in contract 'Winner':
    |                uint256 fund = rounds[_roundID].pond.sub(bonus);
    |                _player.transfer(bonus);
  > |                platform.transfer(fund);
    |                rounds[_roundID].state = DataSet.RoundState.ASSIGNED;
    |                rounds[_roundID].winner = _player;
  at /home/jiaming/mavs_srcs/contract@0x5a609ce4b74fea5a4647fba3e3343ca850c5b049.sol(451)

[31mViolation[0m for DAOConstantGas in contract 'Winner':
    |        uint256 amount = count.mul(PRICE).mul(REFUND_RATE).div(100);
    |        rounds[curRoundID].pond = rounds[curRoundID].pond.sub(amount);
  > |        _player.transfer(amount);
    |
    |        emit onRefund(msg.sender, block.timestamp, _player, count, amount);
  at /home/jiaming/mavs_srcs/contract@0x5a609ce4b74fea5a4647fba3e3343ca850c5b049.sol(492)

[31mViolation[0m for DAOConstantGas in contract 'Winner':
    |        {
    |            uint256 last = rounds[curRoundID].pond;
  > |            platform.transfer(last);
    |            rounds[curRoundID].pond = 0;
    |
  at /home/jiaming/mavs_srcs/contract@0x5a609ce4b74fea5a4647fba3e3343ca850c5b049.sol(501)

[33mWarning[0m for LockedEther in contract 'Winner':
    |}
    |
  > |contract Winner is Events {
    |
    |    using SafeMath for *;
  at /home/jiaming/mavs_srcs/contract@0x5a609ce4b74fea5a4647fba3e3343ca850c5b049.sol(234)

[31mViolation[0m for TODAmount in contract 'Winner':
    |                // assgin bonus to player, and the rest of the pond to platform
    |                uint256 fund = rounds[_roundID].pond.sub(bonus);
  > |                _player.transfer(bonus);
    |                platform.transfer(fund);
    |                rounds[_roundID].state = DataSet.RoundState.ASSIGNED;
  at /home/jiaming/mavs_srcs/contract@0x5a609ce4b74fea5a4647fba3e3343ca850c5b049.sol(450)

[33mWarning[0m for TODAmount in contract 'Winner':
    |        uint256 amount = count.mul(PRICE).mul(REFUND_RATE).div(100);
    |        rounds[curRoundID].pond = rounds[curRoundID].pond.sub(amount);
  > |        _player.transfer(amount);
    |
    |        emit onRefund(msg.sender, block.timestamp, _player, count, amount);
  at /home/jiaming/mavs_srcs/contract@0x5a609ce4b74fea5a4647fba3e3343ca850c5b049.sol(492)

[33mWarning[0m for TODAmount in contract 'Winner':
    |                uint256 fund = rounds[_roundID].pond.sub(bonus);
    |                _player.transfer(bonus);
  > |                platform.transfer(fund);
    |                rounds[_roundID].state = DataSet.RoundState.ASSIGNED;
    |                rounds[_roundID].winner = _player;
  at /home/jiaming/mavs_srcs/contract@0x5a609ce4b74fea5a4647fba3e3343ca850c5b049.sol(451)

[33mWarning[0m for TODReceiver in contract 'Winner':
    |                uint256 fund = rounds[_roundID].pond.sub(bonus);
    |                _player.transfer(bonus);
  > |                platform.transfer(fund);
    |                rounds[_roundID].state = DataSet.RoundState.ASSIGNED;
    |                rounds[_roundID].winner = _player;
  at /home/jiaming/mavs_srcs/contract@0x5a609ce4b74fea5a4647fba3e3343ca850c5b049.sol(451)

[33mWarning[0m for TODReceiver in contract 'Winner':
    |        {
    |            uint256 last = rounds[curRoundID].pond;
  > |            platform.transfer(last);
    |            rounds[curRoundID].pond = 0;
    |
  at /home/jiaming/mavs_srcs/contract@0x5a609ce4b74fea5a4647fba3e3343ca850c5b049.sol(501)

[33mWarning[0m for UnhandledException in contract 'Winner':
    |                // assgin bonus to player, and the rest of the pond to platform
    |                uint256 fund = rounds[_roundID].pond.sub(bonus);
  > |                _player.transfer(bonus);
    |                platform.transfer(fund);
    |                rounds[_roundID].state = DataSet.RoundState.ASSIGNED;
  at /home/jiaming/mavs_srcs/contract@0x5a609ce4b74fea5a4647fba3e3343ca850c5b049.sol(450)

[33mWarning[0m for UnhandledException in contract 'Winner':
    |                uint256 fund = rounds[_roundID].pond.sub(bonus);
    |                _player.transfer(bonus);
  > |                platform.transfer(fund);
    |                rounds[_roundID].state = DataSet.RoundState.ASSIGNED;
    |                rounds[_roundID].winner = _player;
  at /home/jiaming/mavs_srcs/contract@0x5a609ce4b74fea5a4647fba3e3343ca850c5b049.sol(451)

[33mWarning[0m for UnhandledException in contract 'Winner':
    |        uint256 amount = count.mul(PRICE).mul(REFUND_RATE).div(100);
    |        rounds[curRoundID].pond = rounds[curRoundID].pond.sub(amount);
  > |        _player.transfer(amount);
    |
    |        emit onRefund(msg.sender, block.timestamp, _player, count, amount);
  at /home/jiaming/mavs_srcs/contract@0x5a609ce4b74fea5a4647fba3e3343ca850c5b049.sol(492)

[33mWarning[0m for UnhandledException in contract 'Winner':
    |        {
    |            uint256 last = rounds[curRoundID].pond;
  > |            platform.transfer(last);
    |            rounds[curRoundID].pond = 0;
    |
  at /home/jiaming/mavs_srcs/contract@0x5a609ce4b74fea5a4647fba3e3343ca850c5b049.sol(501)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Winner':
    |                // assgin bonus to player, and the rest of the pond to platform
    |                uint256 fund = rounds[_roundID].pond.sub(bonus);
  > |                _player.transfer(bonus);
    |                platform.transfer(fund);
    |                rounds[_roundID].state = DataSet.RoundState.ASSIGNED;
  at /home/jiaming/mavs_srcs/contract@0x5a609ce4b74fea5a4647fba3e3343ca850c5b049.sol(450)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Winner':
    |                uint256 fund = rounds[_roundID].pond.sub(bonus);
    |                _player.transfer(bonus);
  > |                platform.transfer(fund);
    |                rounds[_roundID].state = DataSet.RoundState.ASSIGNED;
    |                rounds[_roundID].winner = _player;
  at /home/jiaming/mavs_srcs/contract@0x5a609ce4b74fea5a4647fba3e3343ca850c5b049.sol(451)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Winner':
    |        uint256 amount = count.mul(PRICE).mul(REFUND_RATE).div(100);
    |        rounds[curRoundID].pond = rounds[curRoundID].pond.sub(amount);
  > |        _player.transfer(amount);
    |
    |        emit onRefund(msg.sender, block.timestamp, _player, count, amount);
  at /home/jiaming/mavs_srcs/contract@0x5a609ce4b74fea5a4647fba3e3343ca850c5b049.sol(492)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Winner':
    |        {
    |            uint256 last = rounds[curRoundID].pond;
  > |            platform.transfer(last);
    |            rounds[curRoundID].pond = 0;
    |
  at /home/jiaming/mavs_srcs/contract@0x5a609ce4b74fea5a4647fba3e3343ca850c5b049.sol(501)

[33mWarning[0m for UnrestrictedWrite in contract 'Winner':
    |pragma solidity ^0.4.24;
    |
  > |library DataSet {
    |
    |    enum RoundState {
  at /home/jiaming/mavs_srcs/contract@0x5a609ce4b74fea5a4647fba3e3343ca850c5b049.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'Winner':
    |
    |        // initiate global parameters
  > |        initialized = true;
    |        administrators[msg.sender] = true;
    |        bonus = _bonus;
  at /home/jiaming/mavs_srcs/contract@0x5a609ce4b74fea5a4647fba3e3343ca850c5b049.sol(322)

[33mWarning[0m for UnrestrictedWrite in contract 'Winner':
    |        // initiate global parameters
    |        initialized = true;
  > |        administrators[msg.sender] = true;
    |        bonus = _bonus;
    |        issued_numbers = _issued_numbers;
  at /home/jiaming/mavs_srcs/contract@0x5a609ce4b74fea5a4647fba3e3343ca850c5b049.sol(323)

[33mWarning[0m for UnrestrictedWrite in contract 'Winner':
    |        initialized = true;
    |        administrators[msg.sender] = true;
  > |        bonus = _bonus;
    |        issued_numbers = _issued_numbers;
    |
  at /home/jiaming/mavs_srcs/contract@0x5a609ce4b74fea5a4647fba3e3343ca850c5b049.sol(324)

[33mWarning[0m for UnrestrictedWrite in contract 'Winner':
    |        administrators[msg.sender] = true;
    |        bonus = _bonus;
  > |        issued_numbers = _issued_numbers;
    |
    |        emit onActivate(msg.sender, block.timestamp, bonus, issued_numbers);
  at /home/jiaming/mavs_srcs/contract@0x5a609ce4b74fea5a4647fba3e3343ca850c5b049.sol(325)

[33mWarning[0m for UnrestrictedWrite in contract 'Winner':
    |
    |        // start the first round game
  > |        curRoundID = 1;
    |        rounds[curRoundID].state = DataSet.RoundState.STARTED;
    |        rounds[curRoundID].timestamp = block.timestamp;
  at /home/jiaming/mavs_srcs/contract@0x5a609ce4b74fea5a4647fba3e3343ca850c5b049.sol(330)

[33mWarning[0m for UnrestrictedWrite in contract 'Winner':
    |        // start the first round game
    |        curRoundID = 1;
  > |        rounds[curRoundID].state = DataSet.RoundState.STARTED;
    |        rounds[curRoundID].timestamp = block.timestamp;
    |        drawnRoundID = 0;
  at /home/jiaming/mavs_srcs/contract@0x5a609ce4b74fea5a4647fba3e3343ca850c5b049.sol(331)

[33mWarning[0m for UnrestrictedWrite in contract 'Winner':
    |        curRoundID = 1;
    |        rounds[curRoundID].state = DataSet.RoundState.STARTED;
  > |        rounds[curRoundID].timestamp = block.timestamp;
    |        drawnRoundID = 0;
    |
  at /home/jiaming/mavs_srcs/contract@0x5a609ce4b74fea5a4647fba3e3343ca850c5b049.sol(332)

[33mWarning[0m for UnrestrictedWrite in contract 'Winner':
    |        rounds[curRoundID].state = DataSet.RoundState.STARTED;
    |        rounds[curRoundID].timestamp = block.timestamp;
  > |        drawnRoundID = 0;
    |
    |        emit onStartRunnd(block.timestamp, curRoundID);
  at /home/jiaming/mavs_srcs/contract@0x5a609ce4b74fea5a4647fba3e3343ca850c5b049.sol(333)

[33mWarning[0m for UnrestrictedWrite in contract 'Winner':
    |            && block.number >= rounds[drawnRoundID + 1].blockNumber + 7)
    |        {
  > |            drawnBlockNumber = block.number;
    |            drawnRoundID += 1;
    |
  at /home/jiaming/mavs_srcs/contract@0x5a609ce4b74fea5a4647fba3e3343ca850c5b049.sol(368)

[33mWarning[0m for UnrestrictedWrite in contract 'Winner':
    |        {
    |            drawnBlockNumber = block.number;
  > |            drawnRoundID += 1;
    |
    |            rounds[drawnRoundID].winningNumber = drawNumber();
  at /home/jiaming/mavs_srcs/contract@0x5a609ce4b74fea5a4647fba3e3343ca850c5b049.sol(369)

[33mWarning[0m for UnrestrictedWrite in contract 'Winner':
    |                if (amount != 0)
    |                {
  > |                    rounds[curRoundID].pond += amount;
    |                }
    |                break;
  at /home/jiaming/mavs_srcs/contract@0x5a609ce4b74fea5a4647fba3e3343ca850c5b049.sol(393)

[33mWarning[0m for UnrestrictedWrite in contract 'Winner':
    |            uint256 end = begin + available - 1;
    |            uint256 compressedNumber = NumberCompressor.encode(begin, end, issued_numbers);
  > |            numbers.push(compressedNumber);
    |            rounds[curRoundID].pond += available.mul(PRICE);
    |            rounds[curRoundID].count += available;
  at /home/jiaming/mavs_srcs/contract@0x5a609ce4b74fea5a4647fba3e3343ca850c5b049.sol(401)

[33mWarning[0m for UnrestrictedWrite in contract 'Winner':
    |            uint256 compressedNumber = NumberCompressor.encode(begin, end, issued_numbers);
    |            numbers.push(compressedNumber);
  > |            rounds[curRoundID].pond += available.mul(PRICE);
    |            rounds[curRoundID].count += available;
    |            amount -= available.mul(PRICE);
  at /home/jiaming/mavs_srcs/contract@0x5a609ce4b74fea5a4647fba3e3343ca850c5b049.sol(402)

[33mWarning[0m for UnrestrictedWrite in contract 'Winner':
    |            numbers.push(compressedNumber);
    |            rounds[curRoundID].pond += available.mul(PRICE);
  > |            rounds[curRoundID].count += available;
    |            amount -= available.mul(PRICE);
    |
  at /home/jiaming/mavs_srcs/contract@0x5a609ce4b74fea5a4647fba3e3343ca850c5b049.sol(403)

[33mWarning[0m for UnrestrictedWrite in contract 'Winner':
    |            {
    |                // end current round and start the next round
  > |                rounds[curRoundID].blockNumber = block.number;
    |                rounds[curRoundID].state = DataSet.RoundState.STOPPED;
    |                curRoundID += 1;
  at /home/jiaming/mavs_srcs/contract@0x5a609ce4b74fea5a4647fba3e3343ca850c5b049.sol(411)

[33mWarning[0m for UnrestrictedWrite in contract 'Winner':
    |                // end current round and start the next round
    |                rounds[curRoundID].blockNumber = block.number;
  > |                rounds[curRoundID].state = DataSet.RoundState.STOPPED;
    |                curRoundID += 1;
    |                rounds[curRoundID].state = DataSet.RoundState.STARTED;
  at /home/jiaming/mavs_srcs/contract@0x5a609ce4b74fea5a4647fba3e3343ca850c5b049.sol(412)

[33mWarning[0m for UnrestrictedWrite in contract 'Winner':
    |                rounds[curRoundID].blockNumber = block.number;
    |                rounds[curRoundID].state = DataSet.RoundState.STOPPED;
  > |                curRoundID += 1;
    |                rounds[curRoundID].state = DataSet.RoundState.STARTED;
    |                rounds[curRoundID].timestamp = block.timestamp;
  at /home/jiaming/mavs_srcs/contract@0x5a609ce4b74fea5a4647fba3e3343ca850c5b049.sol(413)

[33mWarning[0m for UnrestrictedWrite in contract 'Winner':
    |                rounds[curRoundID].state = DataSet.RoundState.STOPPED;
    |                curRoundID += 1;
  > |                rounds[curRoundID].state = DataSet.RoundState.STARTED;
    |                rounds[curRoundID].timestamp = block.timestamp;
    |
  at /home/jiaming/mavs_srcs/contract@0x5a609ce4b74fea5a4647fba3e3343ca850c5b049.sol(414)

[33mWarning[0m for UnrestrictedWrite in contract 'Winner':
    |                curRoundID += 1;
    |                rounds[curRoundID].state = DataSet.RoundState.STARTED;
  > |                rounds[curRoundID].timestamp = block.timestamp;
    |
    |                emit onStartRunnd(block.timestamp, curRoundID);
  at /home/jiaming/mavs_srcs/contract@0x5a609ce4b74fea5a4647fba3e3343ca850c5b049.sol(415)

[33mWarning[0m for UnrestrictedWrite in contract 'Winner':
    |                _player.transfer(bonus);
    |                platform.transfer(fund);
  > |                rounds[_roundID].state = DataSet.RoundState.ASSIGNED;
    |                rounds[_roundID].winner = _player;
    |
  at /home/jiaming/mavs_srcs/contract@0x5a609ce4b74fea5a4647fba3e3343ca850c5b049.sol(452)

[33mWarning[0m for UnrestrictedWrite in contract 'Winner':
    |                platform.transfer(fund);
    |                rounds[_roundID].state = DataSet.RoundState.ASSIGNED;
  > |                rounds[_roundID].winner = _player;
    |
    |                emit onAssign(msg.sender, block.timestamp, _player, _roundID, rounds[_roundID].pond, bonus, fund);
  at /home/jiaming/mavs_srcs/contract@0x5a609ce4b74fea5a4647fba3e3343ca850c5b049.sol(453)

[33mWarning[0m for UnrestrictedWrite in contract 'Winner':
    |        // 2. refund 90% to the player
    |        uint256 amount = count.mul(PRICE).mul(REFUND_RATE).div(100);
  > |        rounds[curRoundID].pond = rounds[curRoundID].pond.sub(amount);
    |        _player.transfer(amount);
    |
  at /home/jiaming/mavs_srcs/contract@0x5a609ce4b74fea5a4647fba3e3343ca850c5b049.sol(491)

[33mWarning[0m for UnrestrictedWrite in contract 'Winner':
    |
    |        // 3. refund the rest(abount 10% of the pond) to the platform if the player is the last to refund
  > |        rounds[curRoundID].count -= count;
    |        if (rounds[curRoundID].count == 0)
    |        {
  at /home/jiaming/mavs_srcs/contract@0x5a609ce4b74fea5a4647fba3e3343ca850c5b049.sol(497)

[33mWarning[0m for UnrestrictedWrite in contract 'Winner':
    |            uint256 last = rounds[curRoundID].pond;
    |            platform.transfer(last);
  > |            rounds[curRoundID].pond = 0;
    |
    |            emit onLastRefund(msg.sender, block.timestamp, platform, last);
  at /home/jiaming/mavs_srcs/contract@0x5a609ce4b74fea5a4647fba3e3343ca850c5b049.sol(502)


