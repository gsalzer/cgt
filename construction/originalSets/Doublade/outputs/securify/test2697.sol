Processing contract: /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol:IERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol:Lottery100ETH
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol:LotteryTicket
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol:RefStorage
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol:Storage
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol:WinnerTicket
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for DAO in contract 'Lottery100ETH':
    |        }
    |        winnerIdx = winnerIdx / 1e18;
  > |        players[winnerIdx].send(brilliant[1]);
    |        WT.emitEvent(players[winnerIdx]);
    |        emit BrilliantWinner(players[winnerIdx], brilliant[1], gameCount);
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(325)

[33mWarning[0m for DAO in contract 'Lottery100ETH':
    |
    |            if (players.length == 0 && paused || msg.value < PRICE) {
  > |                msg.sender.transfer(msg.value);
    |                return;
    |            }
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(253)

[33mWarning[0m for LockedEther in contract 'Lottery100ETH':
    |}
    |
  > |contract Lottery100ETH is Ownable {
    |
    |    Storage public x;
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(197)

[31mViolation[0m for TODAmount in contract 'Lottery100ETH':
    |
    |        uint256 fee = address(this).balance - msg.value;
  > |        owner.send(fee);
    |        emit FeePayed(owner, fee);
    |
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(339)

[31mViolation[0m for TODReceiver in contract 'Lottery100ETH':
    |
    |        uint256 fee = address(this).balance - msg.value;
  > |        owner.send(fee);
    |        emit FeePayed(owner, fee);
    |
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(339)

[33mWarning[0m for TODReceiver in contract 'Lottery100ETH':
    |
    |            if (players.length == 0 && paused || msg.value < PRICE) {
  > |                msg.sender.transfer(msg.value);
    |                return;
    |            }
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(253)

[33mWarning[0m for TODReceiver in contract 'Lottery100ETH':
    |
    |        if (msg.value > PRICE) {
  > |            msg.sender.transfer(msg.value - PRICE);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(262)

[33mWarning[0m for TODReceiver in contract 'Lottery100ETH':
    |
    |        uint256 txCost = tx.gasprice * (gas - gasleft());
  > |        msg.sender.send(txCost);
    |        emit txCostRefunded(msg.sender, txCost);
    |
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(335)

[31mViolation[0m for UnhandledException in contract 'Lottery100ETH':
    |        for (uint256 i = 0; i < silver[0]; i++) {
    |            address winner = players[uint((blockhash(futureblock - 1 - i))) % players.length];
  > |            winner.send(silver[1]);
    |            WT.emitEvent(winner);
    |            emit SilverWinner(winner, silver[1], gameCount);
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(294)

[31mViolation[0m for UnhandledException in contract 'Lottery100ETH':
    |            address[] memory addresses = x.draw(goldenWinners);
    |            for (uint256 k = 0; k < addresses.length; k++) {
  > |                addresses[k].send(goldenPrize);
    |                RS.sendBonus(addresses[k]);
    |                WT.emitEvent(addresses[k]);
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(308)

[31mViolation[0m for UnhandledException in contract 'Lottery100ETH':
    |        }
    |        winnerIdx = winnerIdx / 1e18;
  > |        players[winnerIdx].send(brilliant[1]);
    |        WT.emitEvent(players[winnerIdx]);
    |        emit BrilliantWinner(players[winnerIdx], brilliant[1], gameCount);
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(325)

[31mViolation[0m for UnhandledException in contract 'Lottery100ETH':
    |
    |        uint256 txCost = tx.gasprice * (gas - gasleft());
  > |        msg.sender.send(txCost);
    |        emit txCostRefunded(msg.sender, txCost);
    |
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(335)

[31mViolation[0m for UnhandledException in contract 'Lottery100ETH':
    |
    |        uint256 fee = address(this).balance - msg.value;
  > |        owner.send(fee);
    |        emit FeePayed(owner, fee);
    |
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(339)

[33mWarning[0m for UnhandledException in contract 'Lottery100ETH':
    |
    |            if (players.length == 0 && paused || msg.value < PRICE) {
  > |                msg.sender.transfer(msg.value);
    |                return;
    |            }
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(253)

[33mWarning[0m for UnhandledException in contract 'Lottery100ETH':
    |
    |        if (msg.value > PRICE) {
  > |            msg.sender.transfer(msg.value - PRICE);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(262)

[33mWarning[0m for UnhandledException in contract 'Lottery100ETH':
    |
    |        if (msg.data.length != 0) {
  > |            RS.addReferrer(bytesToAddress(bytes(msg.data)));
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(266)

[33mWarning[0m for UnhandledException in contract 'Lottery100ETH':
    |
    |        players.push(msg.sender);
  > |        x.purchase(msg.sender);
    |        RS.newTicket();
    |        LT.emitEvent(msg.sender);
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(270)

[33mWarning[0m for UnhandledException in contract 'Lottery100ETH':
    |        players.push(msg.sender);
    |        x.purchase(msg.sender);
  > |        RS.newTicket();
    |        LT.emitEvent(msg.sender);
    |        emit NewPlayer(msg.sender, gameCount);
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(271)

[33mWarning[0m for UnhandledException in contract 'Lottery100ETH':
    |        x.purchase(msg.sender);
    |        RS.newTicket();
  > |        LT.emitEvent(msg.sender);
    |        emit NewPlayer(msg.sender, gameCount);
    |
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(272)

[33mWarning[0m for UnhandledException in contract 'Lottery100ETH':
    |            address winner = players[uint((blockhash(futureblock - 1 - i))) % players.length];
    |            winner.send(silver[1]);
  > |            WT.emitEvent(winner);
    |            emit SilverWinner(winner, silver[1], gameCount);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(295)

[33mWarning[0m for UnhandledException in contract 'Lottery100ETH':
    |        uint256 goldenWinners = gold[0];
    |        uint256 goldenPrize = gold[1];
  > |        if (x.count() < gold[0]) {
    |            goldenWinners = x.count();
    |            goldenPrize = gold[0] * gold[1] / x.count();
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(301)

[33mWarning[0m for UnhandledException in contract 'Lottery100ETH':
    |        uint256 goldenPrize = gold[1];
    |        if (x.count() < gold[0]) {
  > |            goldenWinners = x.count();
    |            goldenPrize = gold[0] * gold[1] / x.count();
    |        }
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(302)

[33mWarning[0m for UnhandledException in contract 'Lottery100ETH':
    |        if (x.count() < gold[0]) {
    |            goldenWinners = x.count();
  > |            goldenPrize = gold[0] * gold[1] / x.count();
    |        }
    |        if (goldenWinners != 0) {
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(303)

[33mWarning[0m for UnhandledException in contract 'Lottery100ETH':
    |        }
    |        if (goldenWinners != 0) {
  > |            address[] memory addresses = x.draw(goldenWinners);
    |            for (uint256 k = 0; k < addresses.length; k++) {
    |                addresses[k].send(goldenPrize);
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(306)

[33mWarning[0m for UnhandledException in contract 'Lottery100ETH':
    |            for (uint256 k = 0; k < addresses.length; k++) {
    |                addresses[k].send(goldenPrize);
  > |                RS.sendBonus(addresses[k]);
    |                WT.emitEvent(addresses[k]);
    |                emit GoldenWinner(addresses[k], goldenPrize, gameCount);
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(309)

[33mWarning[0m for UnhandledException in contract 'Lottery100ETH':
    |                addresses[k].send(goldenPrize);
    |                RS.sendBonus(addresses[k]);
  > |                WT.emitEvent(addresses[k]);
    |                emit GoldenWinner(addresses[k], goldenPrize, gameCount);
    |            }
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(310)

[33mWarning[0m for UnhandledException in contract 'Lottery100ETH':
    |        winnerIdx = winnerIdx / 1e18;
    |        players[winnerIdx].send(brilliant[1]);
  > |        WT.emitEvent(players[winnerIdx]);
    |        emit BrilliantWinner(players[winnerIdx], brilliant[1], gameCount);
    |
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(326)

[33mWarning[0m for UnhandledException in contract 'Lottery100ETH':
    |
    |    function withdrawERC20(address ERC20Token, address recipient) external onlyOwner {
  > |        uint256 amount = IERC20(ERC20Token).balanceOf(address(this));
    |        IERC20(ERC20Token).transfer(recipient, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(353)

[33mWarning[0m for UnhandledException in contract 'Lottery100ETH':
    |    function withdrawERC20(address ERC20Token, address recipient) external onlyOwner {
    |        uint256 amount = IERC20(ERC20Token).balanceOf(address(this));
  > |        IERC20(ERC20Token).transfer(recipient, amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(354)

[33mWarning[0m for UnhandledException in contract 'Lottery100ETH':
    |
    |    function referrerOf(address player) external view returns(address) {
  > |        return RS.referrerOf(player);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(369)

[33mWarning[0m for UnhandledException in contract 'Lottery100ETH':
    |
    |    function ticketsOf(address player) external view returns(uint256) {
  > |        return RS.ticketsOf(player);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(373)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Lottery100ETH':
    |
    |            if (players.length == 0 && paused || msg.value < PRICE) {
  > |                msg.sender.transfer(msg.value);
    |                return;
    |            }
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(253)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Lottery100ETH':
    |
    |        if (msg.value > PRICE) {
  > |            msg.sender.transfer(msg.value - PRICE);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(262)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Lottery100ETH':
    |
    |        if (msg.data.length != 0) {
  > |            RS.addReferrer(bytesToAddress(bytes(msg.data)));
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(266)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Lottery100ETH':
    |
    |        players.push(msg.sender);
  > |        x.purchase(msg.sender);
    |        RS.newTicket();
    |        LT.emitEvent(msg.sender);
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(270)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Lottery100ETH':
    |        players.push(msg.sender);
    |        x.purchase(msg.sender);
  > |        RS.newTicket();
    |        LT.emitEvent(msg.sender);
    |        emit NewPlayer(msg.sender, gameCount);
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(271)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Lottery100ETH':
    |        x.purchase(msg.sender);
    |        RS.newTicket();
  > |        LT.emitEvent(msg.sender);
    |        emit NewPlayer(msg.sender, gameCount);
    |
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(272)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Lottery100ETH':
    |            address winner = players[uint((blockhash(futureblock - 1 - i))) % players.length];
    |            winner.send(silver[1]);
  > |            WT.emitEvent(winner);
    |            emit SilverWinner(winner, silver[1], gameCount);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(295)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Lottery100ETH':
    |        uint256 goldenWinners = gold[0];
    |        uint256 goldenPrize = gold[1];
  > |        if (x.count() < gold[0]) {
    |            goldenWinners = x.count();
    |            goldenPrize = gold[0] * gold[1] / x.count();
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(301)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Lottery100ETH':
    |        uint256 goldenPrize = gold[1];
    |        if (x.count() < gold[0]) {
  > |            goldenWinners = x.count();
    |            goldenPrize = gold[0] * gold[1] / x.count();
    |        }
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(302)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Lottery100ETH':
    |        if (x.count() < gold[0]) {
    |            goldenWinners = x.count();
  > |            goldenPrize = gold[0] * gold[1] / x.count();
    |        }
    |        if (goldenWinners != 0) {
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(303)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Lottery100ETH':
    |        }
    |        if (goldenWinners != 0) {
  > |            address[] memory addresses = x.draw(goldenWinners);
    |            for (uint256 k = 0; k < addresses.length; k++) {
    |                addresses[k].send(goldenPrize);
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(306)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Lottery100ETH':
    |            for (uint256 k = 0; k < addresses.length; k++) {
    |                addresses[k].send(goldenPrize);
  > |                RS.sendBonus(addresses[k]);
    |                WT.emitEvent(addresses[k]);
    |                emit GoldenWinner(addresses[k], goldenPrize, gameCount);
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(309)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Lottery100ETH':
    |                addresses[k].send(goldenPrize);
    |                RS.sendBonus(addresses[k]);
  > |                WT.emitEvent(addresses[k]);
    |                emit GoldenWinner(addresses[k], goldenPrize, gameCount);
    |            }
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(310)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Lottery100ETH':
    |        winnerIdx = winnerIdx / 1e18;
    |        players[winnerIdx].send(brilliant[1]);
  > |        WT.emitEvent(players[winnerIdx]);
    |        emit BrilliantWinner(players[winnerIdx], brilliant[1], gameCount);
    |
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(326)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Lottery100ETH':
    |
    |    function withdrawERC20(address ERC20Token, address recipient) external onlyOwner {
  > |        uint256 amount = IERC20(ERC20Token).balanceOf(address(this));
    |        IERC20(ERC20Token).transfer(recipient, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(353)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Lottery100ETH':
    |    function withdrawERC20(address ERC20Token, address recipient) external onlyOwner {
    |        uint256 amount = IERC20(ERC20Token).balanceOf(address(this));
  > |        IERC20(ERC20Token).transfer(recipient, amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(354)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Lottery100ETH':
    |
    |    function referrerOf(address player) external view returns(address) {
  > |        return RS.referrerOf(player);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(369)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Lottery100ETH':
    |
    |    function ticketsOf(address player) external view returns(uint256) {
  > |        return RS.ticketsOf(player);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(373)

[33mWarning[0m for UnrestrictedWrite in contract 'Lottery100ETH':
    |pragma solidity 0.4.25;
    |
  > |interface IERC20 {
    |    function balanceOf(address who) external view returns (uint256);
    |    function transfer(address to, uint256 value) external returns (bool);
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'Lottery100ETH':
    |        }
    |
  > |        players.push(msg.sender);
    |        x.purchase(msg.sender);
    |        RS.newTicket();
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(269)

[33mWarning[0m for UnrestrictedWrite in contract 'Lottery100ETH':
    |
    |        if (block.number >= futureblock + 210) {
  > |            futureblock = block.number + 40;
    |            return;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(286)

[33mWarning[0m for UnrestrictedWrite in contract 'Lottery100ETH':
    |    function renounceOwnership() public onlyOwner {
    |        emit OwnershipRenounced(owner);
  > |        owner = address(0);
    |    }
    |    function transferOwnership(address newOwner) public onlyOwner {
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(49)

[33mWarning[0m for UnrestrictedWrite in contract 'Lottery100ETH':
    |        require(newOwner != address(0));
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(54)

[33mWarning[0m for UnrestrictedWrite in contract 'Lottery100ETH':
    |
    |    function pause() public onlyOwner {
  > |        paused = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(345)

[33mWarning[0m for UnrestrictedWrite in contract 'Lottery100ETH':
    |
    |    function unpause() public onlyOwner {
  > |        paused = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(349)

[33mWarning[0m for LockedEther in contract 'LotteryTicket':
    |}
    |
  > |contract LotteryTicket {
    |    address owner;
    |    string public constant name = "LotteryTicket";
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'LotteryTicket':
    |contract LotteryTicket {
    |    address owner;
  > |    string public constant name = "LotteryTicket";
    |    string public constant symbol = "✓";
    |    event Transfer(address indexed from, address indexed to, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'LotteryTicket':
    |    address owner;
    |    string public constant name = "LotteryTicket";
  > |    string public constant symbol = "✓";
    |    event Transfer(address indexed from, address indexed to, uint256 value);
    |    constructor() public {
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'LotteryTicket':
    |        owner = msg.sender;
    |    }
  > |    function emitEvent(address addr) public {
    |        require(msg.sender == owner);
    |        emit Transfer(msg.sender, addr, 1);
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(16)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |    address public owner;
    |    event OwnershipRenounced(address indexed previousOwner);
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(36)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |    address public owner;
    |    event OwnershipRenounced(address indexed previousOwner);
    |    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(37)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |        _;
    |    }
  > |    function renounceOwnership() public onlyOwner {
    |        emit OwnershipRenounced(owner);
    |        owner = address(0);
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(47)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |        owner = address(0);
    |    }
  > |    function transferOwnership(address newOwner) public onlyOwner {
    |        require(newOwner != address(0));
    |        emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(51)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    function renounceOwnership() public onlyOwner {
    |        emit OwnershipRenounced(owner);
  > |        owner = address(0);
    |    }
    |    function transferOwnership(address newOwner) public onlyOwner {
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(49)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |        require(newOwner != address(0));
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(54)

[33mWarning[0m for LockedEther in contract 'RefStorage':
    |}
    |
  > |contract RefStorage is Ownable {
    |
    |    IERC20 public token;
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(114)

[31mViolation[0m for MissingInputValidation in contract 'RefStorage':
    |    IERC20 public token;
    |
  > |    mapping (address => bool) public contracts;
    |
    |    uint256 public prize = 0.00005 ether;
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(118)

[31mViolation[0m for MissingInputValidation in contract 'RefStorage':
    |    uint256 public interval = 100;
    |
  > |    mapping (address => Player) public players;
    |    struct Player {
    |        uint256 tickets;
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(123)

[31mViolation[0m for MissingInputValidation in contract 'RefStorage':
    |    }
    |
  > |    function changeContracts(address contractAddr) public onlyOwner {
    |        contracts[contractAddr] = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(142)

[31mViolation[0m for MissingInputValidation in contract 'RefStorage':
    |    }
    |
  > |    function changePrize(uint256 newPrize) public onlyOwner {
    |        prize = newPrize;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(146)

[31mViolation[0m for MissingInputValidation in contract 'RefStorage':
    |    }
    |
  > |    function changeInterval(uint256 newInterval) public onlyOwner {
    |        interval = newInterval;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(150)

[31mViolation[0m for MissingInputValidation in contract 'RefStorage':
    |    }
    |
  > |    function sendBonus(address winner) external restricted {
    |        if (token.balanceOf(address(this)) >= prize) {
    |            token.transfer(winner, prize);
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(175)

[31mViolation[0m for MissingInputValidation in contract 'RefStorage':
    |    }
    |
  > |    function withdrawERC20(address ERC20Token, address recipient) external onlyOwner {
    |        uint256 amount = IERC20(ERC20Token).balanceOf(address(this));
    |        IERC20(ERC20Token).transfer(recipient, amount);
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(183)

[31mViolation[0m for MissingInputValidation in contract 'RefStorage':
    |    }
    |
  > |    function ticketsOf(address player) public view returns(uint256) {
    |        return players[player].tickets;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(188)

[31mViolation[0m for MissingInputValidation in contract 'RefStorage':
    |    }
    |
  > |    function referrerOf(address player) public view returns(address) {
    |        return players[player].referrer;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(192)

[33mWarning[0m for MissingInputValidation in contract 'RefStorage':
    |
    |contract Ownable {
  > |    address public owner;
    |    event OwnershipRenounced(address indexed previousOwner);
    |    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(37)

[33mWarning[0m for MissingInputValidation in contract 'RefStorage':
    |        _;
    |    }
  > |    function renounceOwnership() public onlyOwner {
    |        emit OwnershipRenounced(owner);
    |        owner = address(0);
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(47)

[33mWarning[0m for MissingInputValidation in contract 'RefStorage':
    |        owner = address(0);
    |    }
  > |    function transferOwnership(address newOwner) public onlyOwner {
    |        require(newOwner != address(0));
    |        emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(51)

[33mWarning[0m for MissingInputValidation in contract 'RefStorage':
    |contract RefStorage is Ownable {
    |
  > |    IERC20 public token;
    |
    |    mapping (address => bool) public contracts;
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(116)

[33mWarning[0m for MissingInputValidation in contract 'RefStorage':
    |    mapping (address => bool) public contracts;
    |
  > |    uint256 public prize = 0.00005 ether;
    |    uint256 public interval = 100;
    |
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(120)

[33mWarning[0m for MissingInputValidation in contract 'RefStorage':
    |
    |    uint256 public prize = 0.00005 ether;
  > |    uint256 public interval = 100;
    |
    |    mapping (address => Player) public players;
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(121)

[33mWarning[0m for MissingInputValidation in contract 'RefStorage':
    |    }
    |
  > |    function newTicket() external restricted {
    |        players[tx.origin].tickets++;
    |        if (players[tx.origin].referrer != address(0) && (players[tx.origin].tickets - players[tx.origin].checkpoint) % interval == 0) {
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(154)

[33mWarning[0m for UnhandledException in contract 'RefStorage':
    |        players[tx.origin].tickets++;
    |        if (players[tx.origin].referrer != address(0) && (players[tx.origin].tickets - players[tx.origin].checkpoint) % interval == 0) {
  > |            if (token.balanceOf(address(this)) >= prize * 2) {
    |                token.transfer(tx.origin, prize);
    |                emit BonusSent(tx.origin, prize);
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(157)

[33mWarning[0m for UnhandledException in contract 'RefStorage':
    |        if (players[tx.origin].referrer != address(0) && (players[tx.origin].tickets - players[tx.origin].checkpoint) % interval == 0) {
    |            if (token.balanceOf(address(this)) >= prize * 2) {
  > |                token.transfer(tx.origin, prize);
    |                emit BonusSent(tx.origin, prize);
    |                token.transfer(players[tx.origin].referrer, prize);
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(158)

[33mWarning[0m for UnhandledException in contract 'RefStorage':
    |                token.transfer(tx.origin, prize);
    |                emit BonusSent(tx.origin, prize);
  > |                token.transfer(players[tx.origin].referrer, prize);
    |                emit BonusSent(players[tx.origin].referrer, prize);
    |            }
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(160)

[33mWarning[0m for UnhandledException in contract 'RefStorage':
    |
    |    function sendBonus(address winner) external restricted {
  > |        if (token.balanceOf(address(this)) >= prize) {
    |            token.transfer(winner, prize);
    |
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(176)

[33mWarning[0m for UnhandledException in contract 'RefStorage':
    |    function sendBonus(address winner) external restricted {
    |        if (token.balanceOf(address(this)) >= prize) {
  > |            token.transfer(winner, prize);
    |
    |            emit BonusSent(winner, prize);
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(177)

[33mWarning[0m for UnhandledException in contract 'RefStorage':
    |
    |    function withdrawERC20(address ERC20Token, address recipient) external onlyOwner {
  > |        uint256 amount = IERC20(ERC20Token).balanceOf(address(this));
    |        IERC20(ERC20Token).transfer(recipient, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(184)

[33mWarning[0m for UnhandledException in contract 'RefStorage':
    |    function withdrawERC20(address ERC20Token, address recipient) external onlyOwner {
    |        uint256 amount = IERC20(ERC20Token).balanceOf(address(this));
  > |        IERC20(ERC20Token).transfer(recipient, amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(185)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RefStorage':
    |        players[tx.origin].tickets++;
    |        if (players[tx.origin].referrer != address(0) && (players[tx.origin].tickets - players[tx.origin].checkpoint) % interval == 0) {
  > |            if (token.balanceOf(address(this)) >= prize * 2) {
    |                token.transfer(tx.origin, prize);
    |                emit BonusSent(tx.origin, prize);
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(157)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RefStorage':
    |        if (players[tx.origin].referrer != address(0) && (players[tx.origin].tickets - players[tx.origin].checkpoint) % interval == 0) {
    |            if (token.balanceOf(address(this)) >= prize * 2) {
  > |                token.transfer(tx.origin, prize);
    |                emit BonusSent(tx.origin, prize);
    |                token.transfer(players[tx.origin].referrer, prize);
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(158)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RefStorage':
    |                token.transfer(tx.origin, prize);
    |                emit BonusSent(tx.origin, prize);
  > |                token.transfer(players[tx.origin].referrer, prize);
    |                emit BonusSent(players[tx.origin].referrer, prize);
    |            }
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(160)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RefStorage':
    |
    |    function sendBonus(address winner) external restricted {
  > |        if (token.balanceOf(address(this)) >= prize) {
    |            token.transfer(winner, prize);
    |
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(176)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RefStorage':
    |    function sendBonus(address winner) external restricted {
    |        if (token.balanceOf(address(this)) >= prize) {
  > |            token.transfer(winner, prize);
    |
    |            emit BonusSent(winner, prize);
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(177)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RefStorage':
    |
    |    function withdrawERC20(address ERC20Token, address recipient) external onlyOwner {
  > |        uint256 amount = IERC20(ERC20Token).balanceOf(address(this));
    |        IERC20(ERC20Token).transfer(recipient, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(184)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RefStorage':
    |    function withdrawERC20(address ERC20Token, address recipient) external onlyOwner {
    |        uint256 amount = IERC20(ERC20Token).balanceOf(address(this));
  > |        IERC20(ERC20Token).transfer(recipient, amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(185)

[31mViolation[0m for UnrestrictedWrite in contract 'RefStorage':
    |
    |    function newTicket() external restricted {
  > |        players[tx.origin].tickets++;
    |        if (players[tx.origin].referrer != address(0) && (players[tx.origin].tickets - players[tx.origin].checkpoint) % interval == 0) {
    |            if (token.balanceOf(address(this)) >= prize * 2) {
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(155)

[31mViolation[0m for UnrestrictedWrite in contract 'RefStorage':
    |    function addReferrer(address referrer) external restricted {
    |        if (players[tx.origin].referrer == address(0) && players[referrer].tickets >= interval && referrer != tx.origin) {
  > |            players[tx.origin].referrer = referrer;
    |            players[tx.origin].checkpoint = players[tx.origin].tickets;
    |
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(168)

[31mViolation[0m for UnrestrictedWrite in contract 'RefStorage':
    |        if (players[tx.origin].referrer == address(0) && players[referrer].tickets >= interval && referrer != tx.origin) {
    |            players[tx.origin].referrer = referrer;
  > |            players[tx.origin].checkpoint = players[tx.origin].tickets;
    |
    |            emit ReferrerAdded(tx.origin, referrer);
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(169)

[33mWarning[0m for UnrestrictedWrite in contract 'RefStorage':
    |    function renounceOwnership() public onlyOwner {
    |        emit OwnershipRenounced(owner);
  > |        owner = address(0);
    |    }
    |    function transferOwnership(address newOwner) public onlyOwner {
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(49)

[33mWarning[0m for UnrestrictedWrite in contract 'RefStorage':
    |        require(newOwner != address(0));
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(54)

[33mWarning[0m for UnrestrictedWrite in contract 'RefStorage':
    |
    |    function changeContracts(address contractAddr) public onlyOwner {
  > |        contracts[contractAddr] = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(143)

[33mWarning[0m for UnrestrictedWrite in contract 'RefStorage':
    |
    |    function changePrize(uint256 newPrize) public onlyOwner {
  > |        prize = newPrize;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'RefStorage':
    |
    |    function changeInterval(uint256 newInterval) public onlyOwner {
  > |        interval = newInterval;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(151)

[33mWarning[0m for LockedEther in contract 'Storage':
    |}
    |
  > |contract Storage {
    |    address owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(58)

[31mViolation[0m for MissingInputValidation in contract 'Storage':
    |    address owner;
    |
  > |    mapping (address => uint256) public amount;
    |    mapping (uint256 => address[]) public level;
    |    uint256 public count;
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(61)

[31mViolation[0m for MissingInputValidation in contract 'Storage':
    |
    |    mapping (address => uint256) public amount;
  > |    mapping (uint256 => address[]) public level;
    |    uint256 public count;
    |    uint256 public maximum;
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(62)

[31mViolation[0m for MissingInputValidation in contract 'Storage':
    |    }
    |
  > |    function purchase(address addr) public {
    |        require(msg.sender == owner);
    |
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(70)

[31mViolation[0m for MissingInputValidation in contract 'Storage':
    |    }
    |
  > |    function draw(uint256 goldenWinners) public view returns(address[] addresses) {
    |
    |        addresses = new address[](goldenWinners);
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(93)

[33mWarning[0m for MissingInputValidation in contract 'Storage':
    |    mapping (address => uint256) public amount;
    |    mapping (uint256 => address[]) public level;
  > |    uint256 public count;
    |    uint256 public maximum;
    |
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(63)

[33mWarning[0m for MissingInputValidation in contract 'Storage':
    |    mapping (uint256 => address[]) public level;
    |    uint256 public count;
  > |    uint256 public maximum;
    |
    |    constructor() public {
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(64)

[31mViolation[0m for UnrestrictedWrite in contract 'Storage':
    |                for (uint256 i = 0; i < level[amount[addr] - 1].length; i++) {
    |                    if (level[amount[addr] - 1][i] == addr) {
  > |                        delete level[amount[addr] - 1][i];
    |                        break;
    |                    }
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(79)

[33mWarning[0m for UnrestrictedWrite in contract 'Storage':
    |pragma solidity 0.4.25;
    |
  > |interface IERC20 {
    |    function balanceOf(address who) external view returns (uint256);
    |    function transfer(address to, uint256 value) external returns (bool);
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'Storage':
    |        require(msg.sender == owner);
    |
  > |        amount[addr]++;
    |        if (amount[addr] > 1) {
    |            level[amount[addr]].push(addr);
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'Storage':
    |        amount[addr]++;
    |        if (amount[addr] > 1) {
  > |            level[amount[addr]].push(addr);
    |            if (amount[addr] > 2) {
    |                for (uint256 i = 0; i < level[amount[addr] - 1].length; i++) {
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(75)

[33mWarning[0m for UnrestrictedWrite in contract 'Storage':
    |                }
    |            } else if (amount[addr] == 2) {
  > |                count++;
    |            }
    |            if (amount[addr] > maximum) {
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'Storage':
    |            }
    |            if (amount[addr] > maximum) {
  > |                maximum = amount[addr];
    |            }
    |        }
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(87)

[33mWarning[0m for LockedEther in contract 'WinnerTicket':
    |}
    |
  > |contract WinnerTicket {
    |    address owner;
    |    string public constant name = "WinnerTicket";
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(22)

[33mWarning[0m for MissingInputValidation in contract 'WinnerTicket':
    |contract WinnerTicket {
    |    address owner;
  > |    string public constant name = "WinnerTicket";
    |    string public constant symbol = "✓";
    |    event Transfer(address indexed from, address indexed to, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'WinnerTicket':
    |    address owner;
    |    string public constant name = "WinnerTicket";
  > |    string public constant symbol = "✓";
    |    event Transfer(address indexed from, address indexed to, uint256 value);
    |    constructor() public {
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'WinnerTicket':
    |        owner = msg.sender;
    |    }
  > |    function emitEvent(address addr) public {
    |        require(msg.sender == owner);
    |        emit Transfer(msg.sender, addr, 1);
  at /home/jiaming/mavs_srcs/contract@0xb02ae0bd0e1431337fce668d76a6ba4b6ecadd84.sol(30)


