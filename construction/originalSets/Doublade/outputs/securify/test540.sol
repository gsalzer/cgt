Processing contract: /home/jiaming/mavs_srcs/contract@0x22d2913a4bf16c8dcf1ee655f9b547ac55368f88.sol:WaRoll
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'WaRoll':
    |            payAmount = (betAmount - fee) * ROLL_MAX_MOD / bet.value;
    |        }
  > |        if (bet.player.send(payAmount)) {
    |            emit RollPayment(bet.player, bet.gameId, payAmount, value, result, bet.amount, bet.value, betTx);
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0x22d2913a4bf16c8dcf1ee655f9b547ac55368f88.sol(133)

[33mWarning[0m for DAOConstantGas in contract 'WaRoll':
    |        uint result = value % ROULETTE_MAX_MOD;
    |        uint payAmount = ROULETTE_BASE_STAKE * paymentMutiplier;
  > |        if (bet.player.send(payAmount)) {
    |            emit RoulettePayment(bet.player, bet.gameId, payAmount, value, result, bet.amount, betTx, bet.betData);
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0x22d2913a4bf16c8dcf1ee655f9b547ac55368f88.sol(143)

[33mWarning[0m for DAOConstantGas in contract 'WaRoll':
    |
    |    function withdraw(address add, uint amount) ownerOnly payable public {
  > |        add.transfer(amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x22d2913a4bf16c8dcf1ee655f9b547ac55368f88.sol(155)

[33mWarning[0m for LockedEther in contract 'WaRoll':
    |pragma solidity ^0.4.24;
    |
  > |contract WaRoll {
    |
    |    struct BetData {
  at /home/jiaming/mavs_srcs/contract@0x22d2913a4bf16c8dcf1ee655f9b547ac55368f88.sol(3)

[33mWarning[0m for TODAmount in contract 'WaRoll':
    |
    |    function withdraw(address add, uint amount) ownerOnly payable public {
  > |        add.transfer(amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x22d2913a4bf16c8dcf1ee655f9b547ac55368f88.sol(155)

[33mWarning[0m for TODReceiver in contract 'WaRoll':
    |
    |    function withdraw(address add, uint amount) ownerOnly payable public {
  > |        add.transfer(amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x22d2913a4bf16c8dcf1ee655f9b547ac55368f88.sol(155)

[33mWarning[0m for UnhandledException in contract 'WaRoll':
    |        require(blockNum >= block.number, "commit has expired");
    |        bytes32 v1 = keccak256(abi.encodePacked(uint40(blockNum), commit));
  > |        require(signer == ecrecover(v1, 27, r, s) || signer == ecrecover(v1, 28, r, s), "signer valid error");
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x22d2913a4bf16c8dcf1ee655f9b547ac55368f88.sol(57)

[33mWarning[0m for UnhandledException in contract 'WaRoll':
    |            payAmount = (betAmount - fee) * ROLL_MAX_MOD / bet.value;
    |        }
  > |        if (bet.player.send(payAmount)) {
    |            emit RollPayment(bet.player, bet.gameId, payAmount, value, result, bet.amount, bet.value, betTx);
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0x22d2913a4bf16c8dcf1ee655f9b547ac55368f88.sol(133)

[33mWarning[0m for UnhandledException in contract 'WaRoll':
    |        uint result = value % ROULETTE_MAX_MOD;
    |        uint payAmount = ROULETTE_BASE_STAKE * paymentMutiplier;
  > |        if (bet.player.send(payAmount)) {
    |            emit RoulettePayment(bet.player, bet.gameId, payAmount, value, result, bet.amount, betTx, bet.betData);
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0x22d2913a4bf16c8dcf1ee655f9b547ac55368f88.sol(143)

[33mWarning[0m for UnhandledException in contract 'WaRoll':
    |
    |    function withdraw(address add, uint amount) ownerOnly payable public {
  > |        add.transfer(amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x22d2913a4bf16c8dcf1ee655f9b547ac55368f88.sol(155)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'WaRoll':
    |        require(blockNum >= block.number, "commit has expired");
    |        bytes32 v1 = keccak256(abi.encodePacked(uint40(blockNum), commit));
  > |        require(signer == ecrecover(v1, 27, r, s) || signer == ecrecover(v1, 28, r, s), "signer valid error");
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x22d2913a4bf16c8dcf1ee655f9b547ac55368f88.sol(57)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'WaRoll':
    |            payAmount = (betAmount - fee) * ROLL_MAX_MOD / bet.value;
    |        }
  > |        if (bet.player.send(payAmount)) {
    |            emit RollPayment(bet.player, bet.gameId, payAmount, value, result, bet.amount, bet.value, betTx);
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0x22d2913a4bf16c8dcf1ee655f9b547ac55368f88.sol(133)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'WaRoll':
    |        uint result = value % ROULETTE_MAX_MOD;
    |        uint payAmount = ROULETTE_BASE_STAKE * paymentMutiplier;
  > |        if (bet.player.send(payAmount)) {
    |            emit RoulettePayment(bet.player, bet.gameId, payAmount, value, result, bet.amount, betTx, bet.betData);
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0x22d2913a4bf16c8dcf1ee655f9b547ac55368f88.sol(143)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'WaRoll':
    |
    |    function withdraw(address add, uint amount) ownerOnly payable public {
  > |        add.transfer(amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x22d2913a4bf16c8dcf1ee655f9b547ac55368f88.sol(155)

[31mViolation[0m for UnrestrictedWrite in contract 'WaRoll':
    |pragma solidity ^0.4.24;
    |
  > |contract WaRoll {
    |
    |    struct BetData {
  at /home/jiaming/mavs_srcs/contract@0x22d2913a4bf16c8dcf1ee655f9b547ac55368f88.sol(3)

[31mViolation[0m for UnrestrictedWrite in contract 'WaRoll':
    |        BetData storage bet = bets[commit];
    |        require(bet.player == address(0));
  > |        bet.gameId = TYPE_ROLL;
    |        bet.value = value;
    |        bet.amount = stake;
  at /home/jiaming/mavs_srcs/contract@0x22d2913a4bf16c8dcf1ee655f9b547ac55368f88.sol(80)

[31mViolation[0m for UnrestrictedWrite in contract 'WaRoll':
    |        require(bet.player == address(0));
    |        bet.gameId = TYPE_ROLL;
  > |        bet.value = value;
    |        bet.amount = stake;
    |        bet.player = msg.sender;
  at /home/jiaming/mavs_srcs/contract@0x22d2913a4bf16c8dcf1ee655f9b547ac55368f88.sol(81)

[31mViolation[0m for UnrestrictedWrite in contract 'WaRoll':
    |        bet.gameId = TYPE_ROLL;
    |        bet.value = value;
  > |        bet.amount = stake;
    |        bet.player = msg.sender;
    |        bet.blockNum = block.number;
  at /home/jiaming/mavs_srcs/contract@0x22d2913a4bf16c8dcf1ee655f9b547ac55368f88.sol(82)

[31mViolation[0m for UnrestrictedWrite in contract 'WaRoll':
    |        bet.value = value;
    |        bet.amount = stake;
  > |        bet.player = msg.sender;
    |        bet.blockNum = block.number;
    |        emit BetEvent(bet.gameId, commit, new bytes(0));
  at /home/jiaming/mavs_srcs/contract@0x22d2913a4bf16c8dcf1ee655f9b547ac55368f88.sol(83)

[31mViolation[0m for UnrestrictedWrite in contract 'WaRoll':
    |        bet.amount = stake;
    |        bet.player = msg.sender;
  > |        bet.blockNum = block.number;
    |        emit BetEvent(bet.gameId, commit, new bytes(0));
    |    }
  at /home/jiaming/mavs_srcs/contract@0x22d2913a4bf16c8dcf1ee655f9b547ac55368f88.sol(84)

[31mViolation[0m for UnrestrictedWrite in contract 'WaRoll':
    |        BetData storage bet = bets[commit];
    |        require(bet.player == address(0));
  > |        bet.gameId = TYPE_ROULETTE;
    |        bet.betData = data;
    |        bet.amount = stake;
  at /home/jiaming/mavs_srcs/contract@0x22d2913a4bf16c8dcf1ee655f9b547ac55368f88.sol(93)

[31mViolation[0m for UnrestrictedWrite in contract 'WaRoll':
    |        bet.gameId = TYPE_ROULETTE;
    |        bet.betData = data;
  > |        bet.amount = stake;
    |        bet.player = msg.sender;
    |        bet.blockNum = block.number;
  at /home/jiaming/mavs_srcs/contract@0x22d2913a4bf16c8dcf1ee655f9b547ac55368f88.sol(95)

[31mViolation[0m for UnrestrictedWrite in contract 'WaRoll':
    |        bet.betData = data;
    |        bet.amount = stake;
  > |        bet.player = msg.sender;
    |        bet.blockNum = block.number;
    |        emit BetEvent(bet.gameId, commit, data);
  at /home/jiaming/mavs_srcs/contract@0x22d2913a4bf16c8dcf1ee655f9b547ac55368f88.sol(96)

[31mViolation[0m for UnrestrictedWrite in contract 'WaRoll':
    |        bet.amount = stake;
    |        bet.player = msg.sender;
  > |        bet.blockNum = block.number;
    |        emit BetEvent(bet.gameId, commit, data);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x22d2913a4bf16c8dcf1ee655f9b547ac55368f88.sol(97)

[33mWarning[0m for UnrestrictedWrite in contract 'WaRoll':
    |
    |    function setCroupier(address c) public ownerOnly {
  > |        croupier = c;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x22d2913a4bf16c8dcf1ee655f9b547ac55368f88.sol(62)

[33mWarning[0m for UnrestrictedWrite in contract 'WaRoll':
    |
    |    function setSigner(address c) public ownerOnly {
  > |        signer = c;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x22d2913a4bf16c8dcf1ee655f9b547ac55368f88.sol(66)


