Processing contract: /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol:IERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol:Lottery1ETH
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol:LotteryTicket
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol:RefStorage
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol:Storage
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol:WinnerTicket
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for DAO in contract 'Lottery1ETH':
    |        }
    |        winnerIdx = winnerIdx / 1e18;
  > |        players[winnerIdx].send(brilliant[1]);
    |        WT.emitEvent(players[winnerIdx]);
    |        emit BrilliantWinner(players[winnerIdx], brilliant[1], gameCount);
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(325)

[33mWarning[0m for DAO in contract 'Lottery1ETH':
    |
    |            if (players.length == 0 && paused || msg.value < PRICE) {
  > |                msg.sender.transfer(msg.value);
    |                return;
    |            }
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(253)

[33mWarning[0m for LockedEther in contract 'Lottery1ETH':
    |}
    |
  > |contract Lottery1ETH is Ownable {
    |
    |    Storage public x;
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(197)

[31mViolation[0m for TODAmount in contract 'Lottery1ETH':
    |
    |        uint256 fee = address(this).balance - msg.value;
  > |        owner.send(fee);
    |        emit FeePayed(owner, fee);
    |
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(339)

[31mViolation[0m for TODReceiver in contract 'Lottery1ETH':
    |
    |        uint256 fee = address(this).balance - msg.value;
  > |        owner.send(fee);
    |        emit FeePayed(owner, fee);
    |
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(339)

[33mWarning[0m for TODReceiver in contract 'Lottery1ETH':
    |
    |            if (players.length == 0 && paused || msg.value < PRICE) {
  > |                msg.sender.transfer(msg.value);
    |                return;
    |            }
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(253)

[33mWarning[0m for TODReceiver in contract 'Lottery1ETH':
    |
    |        if (msg.value > PRICE) {
  > |            msg.sender.transfer(msg.value - PRICE);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(262)

[33mWarning[0m for TODReceiver in contract 'Lottery1ETH':
    |
    |        uint256 txCost = tx.gasprice * (gas - gasleft());
  > |        msg.sender.send(txCost);
    |        emit txCostRefunded(msg.sender, txCost);
    |
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(335)

[31mViolation[0m for UnhandledException in contract 'Lottery1ETH':
    |        for (uint256 i = 0; i < silver[0]; i++) {
    |            address winner = players[uint((blockhash(futureblock - 1 - i))) % players.length];
  > |            winner.send(silver[1]);
    |            WT.emitEvent(winner);
    |            emit SilverWinner(winner, silver[1], gameCount);
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(294)

[31mViolation[0m for UnhandledException in contract 'Lottery1ETH':
    |            address[] memory addresses = x.draw(goldenWinners);
    |            for (uint256 k = 0; k < addresses.length; k++) {
  > |                addresses[k].send(goldenPrize);
    |                RS.sendBonus(addresses[k]);
    |                WT.emitEvent(addresses[k]);
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(308)

[31mViolation[0m for UnhandledException in contract 'Lottery1ETH':
    |        }
    |        winnerIdx = winnerIdx / 1e18;
  > |        players[winnerIdx].send(brilliant[1]);
    |        WT.emitEvent(players[winnerIdx]);
    |        emit BrilliantWinner(players[winnerIdx], brilliant[1], gameCount);
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(325)

[31mViolation[0m for UnhandledException in contract 'Lottery1ETH':
    |
    |        uint256 txCost = tx.gasprice * (gas - gasleft());
  > |        msg.sender.send(txCost);
    |        emit txCostRefunded(msg.sender, txCost);
    |
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(335)

[31mViolation[0m for UnhandledException in contract 'Lottery1ETH':
    |
    |        uint256 fee = address(this).balance - msg.value;
  > |        owner.send(fee);
    |        emit FeePayed(owner, fee);
    |
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(339)

[33mWarning[0m for UnhandledException in contract 'Lottery1ETH':
    |
    |            if (players.length == 0 && paused || msg.value < PRICE) {
  > |                msg.sender.transfer(msg.value);
    |                return;
    |            }
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(253)

[33mWarning[0m for UnhandledException in contract 'Lottery1ETH':
    |
    |        if (msg.value > PRICE) {
  > |            msg.sender.transfer(msg.value - PRICE);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(262)

[33mWarning[0m for UnhandledException in contract 'Lottery1ETH':
    |
    |        if (msg.data.length != 0) {
  > |            RS.addReferrer(bytesToAddress(bytes(msg.data)));
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(266)

[33mWarning[0m for UnhandledException in contract 'Lottery1ETH':
    |
    |        players.push(msg.sender);
  > |        x.purchase(msg.sender);
    |        RS.newTicket();
    |        LT.emitEvent(msg.sender);
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(270)

[33mWarning[0m for UnhandledException in contract 'Lottery1ETH':
    |        players.push(msg.sender);
    |        x.purchase(msg.sender);
  > |        RS.newTicket();
    |        LT.emitEvent(msg.sender);
    |        emit NewPlayer(msg.sender, gameCount);
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(271)

[33mWarning[0m for UnhandledException in contract 'Lottery1ETH':
    |        x.purchase(msg.sender);
    |        RS.newTicket();
  > |        LT.emitEvent(msg.sender);
    |        emit NewPlayer(msg.sender, gameCount);
    |
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(272)

[33mWarning[0m for UnhandledException in contract 'Lottery1ETH':
    |            address winner = players[uint((blockhash(futureblock - 1 - i))) % players.length];
    |            winner.send(silver[1]);
  > |            WT.emitEvent(winner);
    |            emit SilverWinner(winner, silver[1], gameCount);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(295)

[33mWarning[0m for UnhandledException in contract 'Lottery1ETH':
    |        uint256 goldenWinners = gold[0];
    |        uint256 goldenPrize = gold[1];
  > |        if (x.count() < gold[0]) {
    |            goldenWinners = x.count();
    |            goldenPrize = gold[0] * gold[1] / x.count();
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(301)

[33mWarning[0m for UnhandledException in contract 'Lottery1ETH':
    |        uint256 goldenPrize = gold[1];
    |        if (x.count() < gold[0]) {
  > |            goldenWinners = x.count();
    |            goldenPrize = gold[0] * gold[1] / x.count();
    |        }
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(302)

[33mWarning[0m for UnhandledException in contract 'Lottery1ETH':
    |        if (x.count() < gold[0]) {
    |            goldenWinners = x.count();
  > |            goldenPrize = gold[0] * gold[1] / x.count();
    |        }
    |        if (goldenWinners != 0) {
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(303)

[33mWarning[0m for UnhandledException in contract 'Lottery1ETH':
    |        }
    |        if (goldenWinners != 0) {
  > |            address[] memory addresses = x.draw(goldenWinners);
    |            for (uint256 k = 0; k < addresses.length; k++) {
    |                addresses[k].send(goldenPrize);
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(306)

[33mWarning[0m for UnhandledException in contract 'Lottery1ETH':
    |            for (uint256 k = 0; k < addresses.length; k++) {
    |                addresses[k].send(goldenPrize);
  > |                RS.sendBonus(addresses[k]);
    |                WT.emitEvent(addresses[k]);
    |                emit GoldenWinner(addresses[k], goldenPrize, gameCount);
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(309)

[33mWarning[0m for UnhandledException in contract 'Lottery1ETH':
    |                addresses[k].send(goldenPrize);
    |                RS.sendBonus(addresses[k]);
  > |                WT.emitEvent(addresses[k]);
    |                emit GoldenWinner(addresses[k], goldenPrize, gameCount);
    |            }
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(310)

[33mWarning[0m for UnhandledException in contract 'Lottery1ETH':
    |        winnerIdx = winnerIdx / 1e18;
    |        players[winnerIdx].send(brilliant[1]);
  > |        WT.emitEvent(players[winnerIdx]);
    |        emit BrilliantWinner(players[winnerIdx], brilliant[1], gameCount);
    |
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(326)

[33mWarning[0m for UnhandledException in contract 'Lottery1ETH':
    |
    |    function withdrawERC20(address ERC20Token, address recipient) external onlyOwner {
  > |        uint256 amount = IERC20(ERC20Token).balanceOf(address(this));
    |        IERC20(ERC20Token).transfer(recipient, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(353)

[33mWarning[0m for UnhandledException in contract 'Lottery1ETH':
    |    function withdrawERC20(address ERC20Token, address recipient) external onlyOwner {
    |        uint256 amount = IERC20(ERC20Token).balanceOf(address(this));
  > |        IERC20(ERC20Token).transfer(recipient, amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(354)

[33mWarning[0m for UnhandledException in contract 'Lottery1ETH':
    |
    |    function referrerOf(address player) external view returns(address) {
  > |        return RS.referrerOf(player);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(369)

[33mWarning[0m for UnhandledException in contract 'Lottery1ETH':
    |
    |    function ticketsOf(address player) external view returns(uint256) {
  > |        return RS.ticketsOf(player);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(373)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Lottery1ETH':
    |
    |            if (players.length == 0 && paused || msg.value < PRICE) {
  > |                msg.sender.transfer(msg.value);
    |                return;
    |            }
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(253)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Lottery1ETH':
    |
    |        if (msg.value > PRICE) {
  > |            msg.sender.transfer(msg.value - PRICE);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(262)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Lottery1ETH':
    |
    |        if (msg.data.length != 0) {
  > |            RS.addReferrer(bytesToAddress(bytes(msg.data)));
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(266)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Lottery1ETH':
    |
    |        players.push(msg.sender);
  > |        x.purchase(msg.sender);
    |        RS.newTicket();
    |        LT.emitEvent(msg.sender);
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(270)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Lottery1ETH':
    |        players.push(msg.sender);
    |        x.purchase(msg.sender);
  > |        RS.newTicket();
    |        LT.emitEvent(msg.sender);
    |        emit NewPlayer(msg.sender, gameCount);
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(271)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Lottery1ETH':
    |        x.purchase(msg.sender);
    |        RS.newTicket();
  > |        LT.emitEvent(msg.sender);
    |        emit NewPlayer(msg.sender, gameCount);
    |
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(272)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Lottery1ETH':
    |            address winner = players[uint((blockhash(futureblock - 1 - i))) % players.length];
    |            winner.send(silver[1]);
  > |            WT.emitEvent(winner);
    |            emit SilverWinner(winner, silver[1], gameCount);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(295)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Lottery1ETH':
    |        uint256 goldenWinners = gold[0];
    |        uint256 goldenPrize = gold[1];
  > |        if (x.count() < gold[0]) {
    |            goldenWinners = x.count();
    |            goldenPrize = gold[0] * gold[1] / x.count();
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(301)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Lottery1ETH':
    |        uint256 goldenPrize = gold[1];
    |        if (x.count() < gold[0]) {
  > |            goldenWinners = x.count();
    |            goldenPrize = gold[0] * gold[1] / x.count();
    |        }
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(302)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Lottery1ETH':
    |        if (x.count() < gold[0]) {
    |            goldenWinners = x.count();
  > |            goldenPrize = gold[0] * gold[1] / x.count();
    |        }
    |        if (goldenWinners != 0) {
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(303)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Lottery1ETH':
    |        }
    |        if (goldenWinners != 0) {
  > |            address[] memory addresses = x.draw(goldenWinners);
    |            for (uint256 k = 0; k < addresses.length; k++) {
    |                addresses[k].send(goldenPrize);
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(306)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Lottery1ETH':
    |            for (uint256 k = 0; k < addresses.length; k++) {
    |                addresses[k].send(goldenPrize);
  > |                RS.sendBonus(addresses[k]);
    |                WT.emitEvent(addresses[k]);
    |                emit GoldenWinner(addresses[k], goldenPrize, gameCount);
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(309)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Lottery1ETH':
    |                addresses[k].send(goldenPrize);
    |                RS.sendBonus(addresses[k]);
  > |                WT.emitEvent(addresses[k]);
    |                emit GoldenWinner(addresses[k], goldenPrize, gameCount);
    |            }
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(310)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Lottery1ETH':
    |        winnerIdx = winnerIdx / 1e18;
    |        players[winnerIdx].send(brilliant[1]);
  > |        WT.emitEvent(players[winnerIdx]);
    |        emit BrilliantWinner(players[winnerIdx], brilliant[1], gameCount);
    |
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(326)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Lottery1ETH':
    |
    |    function withdrawERC20(address ERC20Token, address recipient) external onlyOwner {
  > |        uint256 amount = IERC20(ERC20Token).balanceOf(address(this));
    |        IERC20(ERC20Token).transfer(recipient, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(353)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Lottery1ETH':
    |    function withdrawERC20(address ERC20Token, address recipient) external onlyOwner {
    |        uint256 amount = IERC20(ERC20Token).balanceOf(address(this));
  > |        IERC20(ERC20Token).transfer(recipient, amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(354)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Lottery1ETH':
    |
    |    function referrerOf(address player) external view returns(address) {
  > |        return RS.referrerOf(player);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(369)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Lottery1ETH':
    |
    |    function ticketsOf(address player) external view returns(uint256) {
  > |        return RS.ticketsOf(player);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(373)

[33mWarning[0m for UnrestrictedWrite in contract 'Lottery1ETH':
    |pragma solidity 0.4.25;
    |
  > |interface IERC20 {
    |    function balanceOf(address who) external view returns (uint256);
    |    function transfer(address to, uint256 value) external returns (bool);
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'Lottery1ETH':
    |        }
    |
  > |        players.push(msg.sender);
    |        x.purchase(msg.sender);
    |        RS.newTicket();
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(269)

[33mWarning[0m for UnrestrictedWrite in contract 'Lottery1ETH':
    |
    |        if (block.number >= futureblock + 240) {
  > |            futureblock = block.number + 10;
    |            return;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(286)

[33mWarning[0m for UnrestrictedWrite in contract 'Lottery1ETH':
    |    function renounceOwnership() public onlyOwner {
    |        emit OwnershipRenounced(owner);
  > |        owner = address(0);
    |    }
    |    function transferOwnership(address newOwner) public onlyOwner {
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(49)

[33mWarning[0m for UnrestrictedWrite in contract 'Lottery1ETH':
    |        require(newOwner != address(0));
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(54)

[33mWarning[0m for UnrestrictedWrite in contract 'Lottery1ETH':
    |
    |    function pause() public onlyOwner {
  > |        paused = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(345)

[33mWarning[0m for UnrestrictedWrite in contract 'Lottery1ETH':
    |
    |    function unpause() public onlyOwner {
  > |        paused = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(349)

[33mWarning[0m for LockedEther in contract 'LotteryTicket':
    |}
    |
  > |contract LotteryTicket {
    |    address owner;
    |    string public constant name = "LotteryTicket";
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'LotteryTicket':
    |contract LotteryTicket {
    |    address owner;
  > |    string public constant name = "LotteryTicket";
    |    string public constant symbol = "✓";
    |    event Transfer(address indexed from, address indexed to, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'LotteryTicket':
    |    address owner;
    |    string public constant name = "LotteryTicket";
  > |    string public constant symbol = "✓";
    |    event Transfer(address indexed from, address indexed to, uint256 value);
    |    constructor() public {
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'LotteryTicket':
    |        owner = msg.sender;
    |    }
  > |    function emitEvent(address addr) public {
    |        require(msg.sender == owner);
    |        emit Transfer(msg.sender, addr, 1);
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(16)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |    address public owner;
    |    event OwnershipRenounced(address indexed previousOwner);
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(36)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |    address public owner;
    |    event OwnershipRenounced(address indexed previousOwner);
    |    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(37)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |        _;
    |    }
  > |    function renounceOwnership() public onlyOwner {
    |        emit OwnershipRenounced(owner);
    |        owner = address(0);
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(47)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |        owner = address(0);
    |    }
  > |    function transferOwnership(address newOwner) public onlyOwner {
    |        require(newOwner != address(0));
    |        emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(51)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    function renounceOwnership() public onlyOwner {
    |        emit OwnershipRenounced(owner);
  > |        owner = address(0);
    |    }
    |    function transferOwnership(address newOwner) public onlyOwner {
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(49)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |        require(newOwner != address(0));
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(54)

[33mWarning[0m for LockedEther in contract 'RefStorage':
    |}
    |
  > |contract RefStorage is Ownable {
    |
    |    IERC20 public token;
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(114)

[31mViolation[0m for MissingInputValidation in contract 'RefStorage':
    |    IERC20 public token;
    |
  > |    mapping (address => bool) public contracts;
    |
    |    uint256 public prize = 0.00005 ether;
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(118)

[31mViolation[0m for MissingInputValidation in contract 'RefStorage':
    |    uint256 public interval = 100;
    |
  > |    mapping (address => Player) public players;
    |    struct Player {
    |        uint256 tickets;
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(123)

[31mViolation[0m for MissingInputValidation in contract 'RefStorage':
    |    }
    |
  > |    function changeContracts(address contractAddr) public onlyOwner {
    |        contracts[contractAddr] = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(142)

[31mViolation[0m for MissingInputValidation in contract 'RefStorage':
    |    }
    |
  > |    function changePrize(uint256 newPrize) public onlyOwner {
    |        prize = newPrize;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(146)

[31mViolation[0m for MissingInputValidation in contract 'RefStorage':
    |    }
    |
  > |    function changeInterval(uint256 newInterval) public onlyOwner {
    |        interval = newInterval;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(150)

[31mViolation[0m for MissingInputValidation in contract 'RefStorage':
    |    }
    |
  > |    function sendBonus(address winner) external restricted {
    |        if (token.balanceOf(address(this)) >= prize) {
    |            token.transfer(winner, prize);
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(175)

[31mViolation[0m for MissingInputValidation in contract 'RefStorage':
    |    }
    |
  > |    function withdrawERC20(address ERC20Token, address recipient) external onlyOwner {
    |        uint256 amount = IERC20(ERC20Token).balanceOf(address(this));
    |        IERC20(ERC20Token).transfer(recipient, amount);
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(183)

[31mViolation[0m for MissingInputValidation in contract 'RefStorage':
    |    }
    |
  > |    function ticketsOf(address player) public view returns(uint256) {
    |        return players[player].tickets;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(188)

[31mViolation[0m for MissingInputValidation in contract 'RefStorage':
    |    }
    |
  > |    function referrerOf(address player) public view returns(address) {
    |        return players[player].referrer;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(192)

[33mWarning[0m for MissingInputValidation in contract 'RefStorage':
    |
    |contract Ownable {
  > |    address public owner;
    |    event OwnershipRenounced(address indexed previousOwner);
    |    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(37)

[33mWarning[0m for MissingInputValidation in contract 'RefStorage':
    |        _;
    |    }
  > |    function renounceOwnership() public onlyOwner {
    |        emit OwnershipRenounced(owner);
    |        owner = address(0);
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(47)

[33mWarning[0m for MissingInputValidation in contract 'RefStorage':
    |        owner = address(0);
    |    }
  > |    function transferOwnership(address newOwner) public onlyOwner {
    |        require(newOwner != address(0));
    |        emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(51)

[33mWarning[0m for MissingInputValidation in contract 'RefStorage':
    |contract RefStorage is Ownable {
    |
  > |    IERC20 public token;
    |
    |    mapping (address => bool) public contracts;
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(116)

[33mWarning[0m for MissingInputValidation in contract 'RefStorage':
    |    mapping (address => bool) public contracts;
    |
  > |    uint256 public prize = 0.00005 ether;
    |    uint256 public interval = 100;
    |
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(120)

[33mWarning[0m for MissingInputValidation in contract 'RefStorage':
    |
    |    uint256 public prize = 0.00005 ether;
  > |    uint256 public interval = 100;
    |
    |    mapping (address => Player) public players;
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(121)

[33mWarning[0m for MissingInputValidation in contract 'RefStorage':
    |    }
    |
  > |    function newTicket() external restricted {
    |        players[tx.origin].tickets++;
    |        if (players[tx.origin].referrer != address(0) && (players[tx.origin].tickets - players[tx.origin].checkpoint) % interval == 0) {
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(154)

[33mWarning[0m for UnhandledException in contract 'RefStorage':
    |        players[tx.origin].tickets++;
    |        if (players[tx.origin].referrer != address(0) && (players[tx.origin].tickets - players[tx.origin].checkpoint) % interval == 0) {
  > |            if (token.balanceOf(address(this)) >= prize * 2) {
    |                token.transfer(tx.origin, prize);
    |                emit BonusSent(tx.origin, prize);
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(157)

[33mWarning[0m for UnhandledException in contract 'RefStorage':
    |        if (players[tx.origin].referrer != address(0) && (players[tx.origin].tickets - players[tx.origin].checkpoint) % interval == 0) {
    |            if (token.balanceOf(address(this)) >= prize * 2) {
  > |                token.transfer(tx.origin, prize);
    |                emit BonusSent(tx.origin, prize);
    |                token.transfer(players[tx.origin].referrer, prize);
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(158)

[33mWarning[0m for UnhandledException in contract 'RefStorage':
    |                token.transfer(tx.origin, prize);
    |                emit BonusSent(tx.origin, prize);
  > |                token.transfer(players[tx.origin].referrer, prize);
    |                emit BonusSent(players[tx.origin].referrer, prize);
    |            }
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(160)

[33mWarning[0m for UnhandledException in contract 'RefStorage':
    |
    |    function sendBonus(address winner) external restricted {
  > |        if (token.balanceOf(address(this)) >= prize) {
    |            token.transfer(winner, prize);
    |
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(176)

[33mWarning[0m for UnhandledException in contract 'RefStorage':
    |    function sendBonus(address winner) external restricted {
    |        if (token.balanceOf(address(this)) >= prize) {
  > |            token.transfer(winner, prize);
    |
    |            emit BonusSent(winner, prize);
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(177)

[33mWarning[0m for UnhandledException in contract 'RefStorage':
    |
    |    function withdrawERC20(address ERC20Token, address recipient) external onlyOwner {
  > |        uint256 amount = IERC20(ERC20Token).balanceOf(address(this));
    |        IERC20(ERC20Token).transfer(recipient, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(184)

[33mWarning[0m for UnhandledException in contract 'RefStorage':
    |    function withdrawERC20(address ERC20Token, address recipient) external onlyOwner {
    |        uint256 amount = IERC20(ERC20Token).balanceOf(address(this));
  > |        IERC20(ERC20Token).transfer(recipient, amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(185)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RefStorage':
    |        players[tx.origin].tickets++;
    |        if (players[tx.origin].referrer != address(0) && (players[tx.origin].tickets - players[tx.origin].checkpoint) % interval == 0) {
  > |            if (token.balanceOf(address(this)) >= prize * 2) {
    |                token.transfer(tx.origin, prize);
    |                emit BonusSent(tx.origin, prize);
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(157)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RefStorage':
    |        if (players[tx.origin].referrer != address(0) && (players[tx.origin].tickets - players[tx.origin].checkpoint) % interval == 0) {
    |            if (token.balanceOf(address(this)) >= prize * 2) {
  > |                token.transfer(tx.origin, prize);
    |                emit BonusSent(tx.origin, prize);
    |                token.transfer(players[tx.origin].referrer, prize);
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(158)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RefStorage':
    |                token.transfer(tx.origin, prize);
    |                emit BonusSent(tx.origin, prize);
  > |                token.transfer(players[tx.origin].referrer, prize);
    |                emit BonusSent(players[tx.origin].referrer, prize);
    |            }
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(160)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RefStorage':
    |
    |    function sendBonus(address winner) external restricted {
  > |        if (token.balanceOf(address(this)) >= prize) {
    |            token.transfer(winner, prize);
    |
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(176)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RefStorage':
    |    function sendBonus(address winner) external restricted {
    |        if (token.balanceOf(address(this)) >= prize) {
  > |            token.transfer(winner, prize);
    |
    |            emit BonusSent(winner, prize);
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(177)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RefStorage':
    |
    |    function withdrawERC20(address ERC20Token, address recipient) external onlyOwner {
  > |        uint256 amount = IERC20(ERC20Token).balanceOf(address(this));
    |        IERC20(ERC20Token).transfer(recipient, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(184)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RefStorage':
    |    function withdrawERC20(address ERC20Token, address recipient) external onlyOwner {
    |        uint256 amount = IERC20(ERC20Token).balanceOf(address(this));
  > |        IERC20(ERC20Token).transfer(recipient, amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(185)

[31mViolation[0m for UnrestrictedWrite in contract 'RefStorage':
    |
    |    function newTicket() external restricted {
  > |        players[tx.origin].tickets++;
    |        if (players[tx.origin].referrer != address(0) && (players[tx.origin].tickets - players[tx.origin].checkpoint) % interval == 0) {
    |            if (token.balanceOf(address(this)) >= prize * 2) {
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(155)

[31mViolation[0m for UnrestrictedWrite in contract 'RefStorage':
    |    function addReferrer(address referrer) external restricted {
    |        if (players[tx.origin].referrer == address(0) && players[referrer].tickets >= interval && referrer != tx.origin) {
  > |            players[tx.origin].referrer = referrer;
    |            players[tx.origin].checkpoint = players[tx.origin].tickets;
    |
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(168)

[31mViolation[0m for UnrestrictedWrite in contract 'RefStorage':
    |        if (players[tx.origin].referrer == address(0) && players[referrer].tickets >= interval && referrer != tx.origin) {
    |            players[tx.origin].referrer = referrer;
  > |            players[tx.origin].checkpoint = players[tx.origin].tickets;
    |
    |            emit ReferrerAdded(tx.origin, referrer);
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(169)

[33mWarning[0m for UnrestrictedWrite in contract 'RefStorage':
    |    function renounceOwnership() public onlyOwner {
    |        emit OwnershipRenounced(owner);
  > |        owner = address(0);
    |    }
    |    function transferOwnership(address newOwner) public onlyOwner {
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(49)

[33mWarning[0m for UnrestrictedWrite in contract 'RefStorage':
    |        require(newOwner != address(0));
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(54)

[33mWarning[0m for UnrestrictedWrite in contract 'RefStorage':
    |
    |    function changeContracts(address contractAddr) public onlyOwner {
  > |        contracts[contractAddr] = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(143)

[33mWarning[0m for UnrestrictedWrite in contract 'RefStorage':
    |
    |    function changePrize(uint256 newPrize) public onlyOwner {
  > |        prize = newPrize;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'RefStorage':
    |
    |    function changeInterval(uint256 newInterval) public onlyOwner {
  > |        interval = newInterval;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(151)

[33mWarning[0m for LockedEther in contract 'Storage':
    |}
    |
  > |contract Storage {
    |    address game;
    |
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(58)

[31mViolation[0m for MissingInputValidation in contract 'Storage':
    |    address game;
    |
  > |    mapping (address => uint256) public amount;
    |    mapping (uint256 => address[]) public level;
    |    uint256 public count;
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(61)

[31mViolation[0m for MissingInputValidation in contract 'Storage':
    |
    |    mapping (address => uint256) public amount;
  > |    mapping (uint256 => address[]) public level;
    |    uint256 public count;
    |    uint256 public maximum;
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(62)

[31mViolation[0m for MissingInputValidation in contract 'Storage':
    |    }
    |
  > |    function purchase(address addr) public {
    |        require(msg.sender == game);
    |
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(70)

[31mViolation[0m for MissingInputValidation in contract 'Storage':
    |    }
    |
  > |    function draw(uint256 goldenWinners) public view returns(address[] addresses) {
    |
    |        addresses = new address[](goldenWinners);
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(93)

[33mWarning[0m for MissingInputValidation in contract 'Storage':
    |    mapping (address => uint256) public amount;
    |    mapping (uint256 => address[]) public level;
  > |    uint256 public count;
    |    uint256 public maximum;
    |
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(63)

[33mWarning[0m for MissingInputValidation in contract 'Storage':
    |    mapping (uint256 => address[]) public level;
    |    uint256 public count;
  > |    uint256 public maximum;
    |
    |    constructor() public {
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(64)

[31mViolation[0m for UnrestrictedWrite in contract 'Storage':
    |                for (uint256 i = 0; i < level[amount[addr] - 1].length; i++) {
    |                    if (level[amount[addr] - 1][i] == addr) {
  > |                        delete level[amount[addr] - 1][i];
    |                        break;
    |                    }
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(79)

[33mWarning[0m for UnrestrictedWrite in contract 'Storage':
    |pragma solidity 0.4.25;
    |
  > |interface IERC20 {
    |    function balanceOf(address who) external view returns (uint256);
    |    function transfer(address to, uint256 value) external returns (bool);
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'Storage':
    |        require(msg.sender == game);
    |
  > |        amount[addr]++;
    |        if (amount[addr] > 1) {
    |            level[amount[addr]].push(addr);
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'Storage':
    |        amount[addr]++;
    |        if (amount[addr] > 1) {
  > |            level[amount[addr]].push(addr);
    |            if (amount[addr] > 2) {
    |                for (uint256 i = 0; i < level[amount[addr] - 1].length; i++) {
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(75)

[33mWarning[0m for UnrestrictedWrite in contract 'Storage':
    |                }
    |            } else if (amount[addr] == 2) {
  > |                count++;
    |            }
    |            if (amount[addr] > maximum) {
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'Storage':
    |            }
    |            if (amount[addr] > maximum) {
  > |                maximum = amount[addr];
    |            }
    |        }
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(87)

[33mWarning[0m for LockedEther in contract 'WinnerTicket':
    |}
    |
  > |contract WinnerTicket {
    |    address owner;
    |    string public constant name = "WinnerTicket";
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(22)

[33mWarning[0m for MissingInputValidation in contract 'WinnerTicket':
    |contract WinnerTicket {
    |    address owner;
  > |    string public constant name = "WinnerTicket";
    |    string public constant symbol = "✓";
    |    event Transfer(address indexed from, address indexed to, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'WinnerTicket':
    |    address owner;
    |    string public constant name = "WinnerTicket";
  > |    string public constant symbol = "✓";
    |    event Transfer(address indexed from, address indexed to, uint256 value);
    |    constructor() public {
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'WinnerTicket':
    |        owner = msg.sender;
    |    }
  > |    function emitEvent(address addr) public {
    |        require(msg.sender == owner);
    |        emit Transfer(msg.sender, addr, 1);
  at /home/jiaming/mavs_srcs/contract@0x865ee5df064bc1f4a39b95b75e612dd86011d35b.sol(30)


