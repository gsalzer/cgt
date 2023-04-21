Processing contract: /home/jiaming/mavs_srcs/contract@0x3e84512f277a5081b9209831c51bce665035d9db.sol:TheGame
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for DAOConstantGas in contract 'TheGame':
    |            if (totalplayers == 1) {
    |                // If only one person sent ETH in the last 6 hours he gets 100% of the jacpot
  > |                playersAddresses[playersAddresses.length - 1].send(jackpot);
    |            } else if (totalplayers == 2) {
    |                // If two players sent ETH the jacpot is split between them
  at /home/jiaming/mavs_srcs/contract@0x3e84512f277a5081b9209831c51bce665035d9db.sol(58)

[31mViolation[0m for DAOConstantGas in contract 'TheGame':
    |
    |            // The player takes 3%
  > |            first_player.send(amount * 3 / 100);
    |
    |            // The Player takes 3%
  at /home/jiaming/mavs_srcs/contract@0x3e84512f277a5081b9209831c51bce665035d9db.sol(85)

[31mViolation[0m for DAOConstantGas in contract 'TheGame':
    |
    |            // The player takes 3%
  > |            first_player.send(amount * 3 / 100);
    |
    |            // The player takes 3%
  at /home/jiaming/mavs_srcs/contract@0x3e84512f277a5081b9209831c51bce665035d9db.sol(103)

[31mViolation[0m for DAOConstantGas in contract 'TheGame':
    |
    |while (playersAmounts[lastPlayerPaid] < (address(this).balance - jackpot - collectedFee) && lastPlayerPaid <= totalplayers) {
  > |                playersAddresses[lastPlayerPaid].send(playersAmounts[lastPlayerPaid]);
    |                amountAlreadyPaidBack += playersAmounts[lastPlayerPaid];
    |                lastPlayerPaid += 1;
  at /home/jiaming/mavs_srcs/contract@0x3e84512f277a5081b9209831c51bce665035d9db.sol(109)

[33mWarning[0m for DAOConstantGas in contract 'TheGame':
    |        // Check if the minimum amount if reached
    |        if (amount < 1 ether) {
  > |            msg.sender.send(msg.value);
    |            return false;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x3e84512f277a5081b9209831c51bce665035d9db.sol(43)

[33mWarning[0m for DAOConstantGas in contract 'TheGame':
    |    function restart() {
    |        if (msg.sender == mainPlayer) {
  > |            mainPlayer.send(address(this).balance);
    |            selfdestruct(mainPlayer);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x3e84512f277a5081b9209831c51bce665035d9db.sol(124)

[33mWarning[0m for DAOConstantGas in contract 'TheGame':
    |    function collectFee() {
    |        if (msg.sender == mainPlayer) {
  > |            mainPlayer.send(collectedFee);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3e84512f277a5081b9209831c51bce665035d9db.sol(139)

[33mWarning[0m for LockedEther in contract 'TheGame':
  > |contract TheGame {
    |    // Based on the open source castle script
    |    // Definte the guy player
  at /home/jiaming/mavs_srcs/contract@0x3e84512f277a5081b9209831c51bce665035d9db.sol(1)

[31mViolation[0m for MissingInputValidation in contract 'TheGame':
    |
    |    // When the main player wants to transfer his function
  > |    function new_mainPlayer(address new_mainPlayer) {
    |        if (msg.sender == mainPlayer) {
    |            mainPlayer = new_mainPlayer;
  at /home/jiaming/mavs_srcs/contract@0x3e84512f277a5081b9209831c51bce665035d9db.sol(130)

[31mViolation[0m for MissingInputValidation in contract 'TheGame':
    |
    |    // When the guy players wants to transfer his function
  > |    function newfirst_player(address newfirst_player) {
    |        if (msg.sender == first_player) {
    |            first_player = newfirst_player;
  at /home/jiaming/mavs_srcs/contract@0x3e84512f277a5081b9209831c51bce665035d9db.sol(144)

[33mWarning[0m for MissingInputValidation in contract 'TheGame':
    |    // Based on the open source castle script
    |    // Definte the guy player
  > |    address public first_player;
    |    // Last time someone contributed to the game
    |    uint public regeneration;
  at /home/jiaming/mavs_srcs/contract@0x3e84512f277a5081b9209831c51bce665035d9db.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'TheGame':
    |    address public first_player;
    |    // Last time someone contributed to the game
  > |    uint public regeneration;
    |    // Define jackpot
    |    uint public jackpot;
  at /home/jiaming/mavs_srcs/contract@0x3e84512f277a5081b9209831c51bce665035d9db.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'TheGame':
    |    uint public regeneration;
    |    // Define jackpot
  > |    uint public jackpot;
    |
    |    // Fees
  at /home/jiaming/mavs_srcs/contract@0x3e84512f277a5081b9209831c51bce665035d9db.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'TheGame':
    |
    |    // Fees
  > |    uint public collectedFee;
    |
    |    // List of players who contributed
  at /home/jiaming/mavs_srcs/contract@0x3e84512f277a5081b9209831c51bce665035d9db.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'TheGame':
    |
    |    // List of players who contributed
  > |    address[] public playersAddresses;
    |    uint[] public playersAmounts;
    |    uint32 public totalplayers;
  at /home/jiaming/mavs_srcs/contract@0x3e84512f277a5081b9209831c51bce665035d9db.sol(14)

[33mWarning[0m for MissingInputValidation in contract 'TheGame':
    |    // List of players who contributed
    |    address[] public playersAddresses;
  > |    uint[] public playersAmounts;
    |    uint32 public totalplayers;
    |    uint32 public lastPlayerPaid;
  at /home/jiaming/mavs_srcs/contract@0x3e84512f277a5081b9209831c51bce665035d9db.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'TheGame':
    |    address[] public playersAddresses;
    |    uint[] public playersAmounts;
  > |    uint32 public totalplayers;
    |    uint32 public lastPlayerPaid;
    |    // main Player who made the system work
  at /home/jiaming/mavs_srcs/contract@0x3e84512f277a5081b9209831c51bce665035d9db.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'TheGame':
    |    uint[] public playersAmounts;
    |    uint32 public totalplayers;
  > |    uint32 public lastPlayerPaid;
    |    // main Player who made the system work
    |    address public mainPlayer;
  at /home/jiaming/mavs_srcs/contract@0x3e84512f277a5081b9209831c51bce665035d9db.sol(17)

[33mWarning[0m for MissingInputValidation in contract 'TheGame':
    |    uint32 public lastPlayerPaid;
    |    // main Player who made the system work
  > |    address public mainPlayer;
    |    // How many times the game stopped
    |    uint32 public round;
  at /home/jiaming/mavs_srcs/contract@0x3e84512f277a5081b9209831c51bce665035d9db.sol(19)

[33mWarning[0m for MissingInputValidation in contract 'TheGame':
    |    address public mainPlayer;
    |    // How many times the game stopped
  > |    uint32 public round;
    |    // ETH paid in this round
    |    uint public amountAlreadyPaidBack;
  at /home/jiaming/mavs_srcs/contract@0x3e84512f277a5081b9209831c51bce665035d9db.sol(21)

[33mWarning[0m for MissingInputValidation in contract 'TheGame':
    |    uint32 public round;
    |    // ETH paid in this round
  > |    uint public amountAlreadyPaidBack;
    |    // ETH invested in this round
    |    uint public amountInvested;
  at /home/jiaming/mavs_srcs/contract@0x3e84512f277a5081b9209831c51bce665035d9db.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'TheGame':
    |    uint public amountAlreadyPaidBack;
    |    // ETH invested in this round
  > |    uint public amountInvested;
    |
    |    uint constant SIX_HOURS = 60 * 60 * 6;
  at /home/jiaming/mavs_srcs/contract@0x3e84512f277a5081b9209831c51bce665035d9db.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'TheGame':
    |    }
    |
  > |    function contribute_toTheGame() returns(bool) {
    |        uint amount = msg.value;
    |        // Check if the minimum amount if reached
  at /home/jiaming/mavs_srcs/contract@0x3e84512f277a5081b9209831c51bce665035d9db.sol(39)

[33mWarning[0m for MissingInputValidation in contract 'TheGame':
    |
    |    // When the game stops
  > |    function restart() {
    |        if (msg.sender == mainPlayer) {
    |            mainPlayer.send(address(this).balance);
  at /home/jiaming/mavs_srcs/contract@0x3e84512f277a5081b9209831c51bce665035d9db.sol(122)

[33mWarning[0m for MissingInputValidation in contract 'TheGame':
    |
    |    // When the main Player decides to collect his fees
  > |    function collectFee() {
    |        if (msg.sender == mainPlayer) {
    |            mainPlayer.send(collectedFee);
  at /home/jiaming/mavs_srcs/contract@0x3e84512f277a5081b9209831c51bce665035d9db.sol(137)

[31mViolation[0m for TODAmount in contract 'TheGame':
    |            if (totalplayers == 1) {
    |                // If only one person sent ETH in the last 6 hours he gets 100% of the jacpot
  > |                playersAddresses[playersAddresses.length - 1].send(jackpot);
    |            } else if (totalplayers == 2) {
    |                // If two players sent ETH the jacpot is split between them
  at /home/jiaming/mavs_srcs/contract@0x3e84512f277a5081b9209831c51bce665035d9db.sol(58)

[31mViolation[0m for TODAmount in contract 'TheGame':
    |            } else if (totalplayers == 2) {
    |                // If two players sent ETH the jacpot is split between them
  > |                playersAddresses[playersAddresses.length - 1].send(jackpot * 70 / 100);
    |                playersAddresses[playersAddresses.length - 2].send(jackpot * 30 / 100);
    |            } else if (totalplayers >= 3) {
  at /home/jiaming/mavs_srcs/contract@0x3e84512f277a5081b9209831c51bce665035d9db.sol(61)

[31mViolation[0m for TODAmount in contract 'TheGame':
    |                // If two players sent ETH the jacpot is split between them
    |                playersAddresses[playersAddresses.length - 1].send(jackpot * 70 / 100);
  > |                playersAddresses[playersAddresses.length - 2].send(jackpot * 30 / 100);
    |            } else if (totalplayers >= 3) {
    |                // If there is 3 or more players
  at /home/jiaming/mavs_srcs/contract@0x3e84512f277a5081b9209831c51bce665035d9db.sol(62)

[31mViolation[0m for TODAmount in contract 'TheGame':
    |            } else if (totalplayers >= 3) {
    |                // If there is 3 or more players
  > |                playersAddresses[playersAddresses.length - 1].send(jackpot * 70 / 100);
    |                playersAddresses[playersAddresses.length - 2].send(jackpot * 20 / 100);
    |                playersAddresses[playersAddresses.length - 3].send(jackpot * 10 / 100);
  at /home/jiaming/mavs_srcs/contract@0x3e84512f277a5081b9209831c51bce665035d9db.sol(65)

[31mViolation[0m for TODAmount in contract 'TheGame':
    |                // If there is 3 or more players
    |                playersAddresses[playersAddresses.length - 1].send(jackpot * 70 / 100);
  > |                playersAddresses[playersAddresses.length - 2].send(jackpot * 20 / 100);
    |                playersAddresses[playersAddresses.length - 3].send(jackpot * 10 / 100);
    |            }
  at /home/jiaming/mavs_srcs/contract@0x3e84512f277a5081b9209831c51bce665035d9db.sol(66)

[31mViolation[0m for TODAmount in contract 'TheGame':
    |                playersAddresses[playersAddresses.length - 1].send(jackpot * 70 / 100);
    |                playersAddresses[playersAddresses.length - 2].send(jackpot * 20 / 100);
  > |                playersAddresses[playersAddresses.length - 3].send(jackpot * 10 / 100);
    |            }
    |
  at /home/jiaming/mavs_srcs/contract@0x3e84512f277a5081b9209831c51bce665035d9db.sol(67)

[31mViolation[0m for TODAmount in contract 'TheGame':
    |    function restart() {
    |        if (msg.sender == mainPlayer) {
  > |            mainPlayer.send(address(this).balance);
    |            selfdestruct(mainPlayer);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x3e84512f277a5081b9209831c51bce665035d9db.sol(124)

[31mViolation[0m for TODAmount in contract 'TheGame':
    |    function collectFee() {
    |        if (msg.sender == mainPlayer) {
  > |            mainPlayer.send(collectedFee);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3e84512f277a5081b9209831c51bce665035d9db.sol(139)

[31mViolation[0m for TODReceiver in contract 'TheGame':
    |
    |            // The player takes 3%
  > |            first_player.send(amount * 3 / 100);
    |
    |            // The Player takes 3%
  at /home/jiaming/mavs_srcs/contract@0x3e84512f277a5081b9209831c51bce665035d9db.sol(85)

[31mViolation[0m for TODReceiver in contract 'TheGame':
    |
    |            // The player takes 3%
  > |            first_player.send(amount * 3 / 100);
    |
    |            // The player takes 3%
  at /home/jiaming/mavs_srcs/contract@0x3e84512f277a5081b9209831c51bce665035d9db.sol(103)

[31mViolation[0m for TODReceiver in contract 'TheGame':
    |    function restart() {
    |        if (msg.sender == mainPlayer) {
  > |            mainPlayer.send(address(this).balance);
    |            selfdestruct(mainPlayer);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x3e84512f277a5081b9209831c51bce665035d9db.sol(124)

[31mViolation[0m for TODReceiver in contract 'TheGame':
    |    function collectFee() {
    |        if (msg.sender == mainPlayer) {
  > |            mainPlayer.send(collectedFee);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3e84512f277a5081b9209831c51bce665035d9db.sol(139)

[33mWarning[0m for TODReceiver in contract 'TheGame':
    |        // Check if the minimum amount if reached
    |        if (amount < 1 ether) {
  > |            msg.sender.send(msg.value);
    |            return false;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x3e84512f277a5081b9209831c51bce665035d9db.sol(43)

[33mWarning[0m for TODReceiver in contract 'TheGame':
    |        // If the player sends more than 100 ETH it is returned to him
    |        if (amount > 100 ether) {
  > |            msg.sender.send(msg.value - 100 ether);
    |            amount = 100 ether;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x3e84512f277a5081b9209831c51bce665035d9db.sol(48)

[31mViolation[0m for UnhandledException in contract 'TheGame':
    |        // Check if the minimum amount if reached
    |        if (amount < 1 ether) {
  > |            msg.sender.send(msg.value);
    |            return false;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x3e84512f277a5081b9209831c51bce665035d9db.sol(43)

[31mViolation[0m for UnhandledException in contract 'TheGame':
    |        // If the player sends more than 100 ETH it is returned to him
    |        if (amount > 100 ether) {
  > |            msg.sender.send(msg.value - 100 ether);
    |            amount = 100 ether;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x3e84512f277a5081b9209831c51bce665035d9db.sol(48)

[31mViolation[0m for UnhandledException in contract 'TheGame':
    |            if (totalplayers == 1) {
    |                // If only one person sent ETH in the last 6 hours he gets 100% of the jacpot
  > |                playersAddresses[playersAddresses.length - 1].send(jackpot);
    |            } else if (totalplayers == 2) {
    |                // If two players sent ETH the jacpot is split between them
  at /home/jiaming/mavs_srcs/contract@0x3e84512f277a5081b9209831c51bce665035d9db.sol(58)

[31mViolation[0m for UnhandledException in contract 'TheGame':
    |            } else if (totalplayers == 2) {
    |                // If two players sent ETH the jacpot is split between them
  > |                playersAddresses[playersAddresses.length - 1].send(jackpot * 70 / 100);
    |                playersAddresses[playersAddresses.length - 2].send(jackpot * 30 / 100);
    |            } else if (totalplayers >= 3) {
  at /home/jiaming/mavs_srcs/contract@0x3e84512f277a5081b9209831c51bce665035d9db.sol(61)

[31mViolation[0m for UnhandledException in contract 'TheGame':
    |                // If two players sent ETH the jacpot is split between them
    |                playersAddresses[playersAddresses.length - 1].send(jackpot * 70 / 100);
  > |                playersAddresses[playersAddresses.length - 2].send(jackpot * 30 / 100);
    |            } else if (totalplayers >= 3) {
    |                // If there is 3 or more players
  at /home/jiaming/mavs_srcs/contract@0x3e84512f277a5081b9209831c51bce665035d9db.sol(62)

[31mViolation[0m for UnhandledException in contract 'TheGame':
    |            } else if (totalplayers >= 3) {
    |                // If there is 3 or more players
  > |                playersAddresses[playersAddresses.length - 1].send(jackpot * 70 / 100);
    |                playersAddresses[playersAddresses.length - 2].send(jackpot * 20 / 100);
    |                playersAddresses[playersAddresses.length - 3].send(jackpot * 10 / 100);
  at /home/jiaming/mavs_srcs/contract@0x3e84512f277a5081b9209831c51bce665035d9db.sol(65)

[31mViolation[0m for UnhandledException in contract 'TheGame':
    |                // If there is 3 or more players
    |                playersAddresses[playersAddresses.length - 1].send(jackpot * 70 / 100);
  > |                playersAddresses[playersAddresses.length - 2].send(jackpot * 20 / 100);
    |                playersAddresses[playersAddresses.length - 3].send(jackpot * 10 / 100);
    |            }
  at /home/jiaming/mavs_srcs/contract@0x3e84512f277a5081b9209831c51bce665035d9db.sol(66)

[31mViolation[0m for UnhandledException in contract 'TheGame':
    |                playersAddresses[playersAddresses.length - 1].send(jackpot * 70 / 100);
    |                playersAddresses[playersAddresses.length - 2].send(jackpot * 20 / 100);
  > |                playersAddresses[playersAddresses.length - 3].send(jackpot * 10 / 100);
    |            }
    |
  at /home/jiaming/mavs_srcs/contract@0x3e84512f277a5081b9209831c51bce665035d9db.sol(67)

[31mViolation[0m for UnhandledException in contract 'TheGame':
    |
    |            // The player takes 3%
  > |            first_player.send(amount * 3 / 100);
    |
    |            // The Player takes 3%
  at /home/jiaming/mavs_srcs/contract@0x3e84512f277a5081b9209831c51bce665035d9db.sol(85)

[31mViolation[0m for UnhandledException in contract 'TheGame':
    |
    |            // The player takes 3%
  > |            first_player.send(amount * 3 / 100);
    |
    |            // The player takes 3%
  at /home/jiaming/mavs_srcs/contract@0x3e84512f277a5081b9209831c51bce665035d9db.sol(103)

[31mViolation[0m for UnhandledException in contract 'TheGame':
    |
    |while (playersAmounts[lastPlayerPaid] < (address(this).balance - jackpot - collectedFee) && lastPlayerPaid <= totalplayers) {
  > |                playersAddresses[lastPlayerPaid].send(playersAmounts[lastPlayerPaid]);
    |                amountAlreadyPaidBack += playersAmounts[lastPlayerPaid];
    |                lastPlayerPaid += 1;
  at /home/jiaming/mavs_srcs/contract@0x3e84512f277a5081b9209831c51bce665035d9db.sol(109)

[31mViolation[0m for UnhandledException in contract 'TheGame':
    |    function restart() {
    |        if (msg.sender == mainPlayer) {
  > |            mainPlayer.send(address(this).balance);
    |            selfdestruct(mainPlayer);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x3e84512f277a5081b9209831c51bce665035d9db.sol(124)

[31mViolation[0m for UnhandledException in contract 'TheGame':
    |    function collectFee() {
    |        if (msg.sender == mainPlayer) {
  > |            mainPlayer.send(collectedFee);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3e84512f277a5081b9209831c51bce665035d9db.sol(139)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TheGame':
    |    function restart() {
    |        if (msg.sender == mainPlayer) {
  > |            mainPlayer.send(address(this).balance);
    |            selfdestruct(mainPlayer);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x3e84512f277a5081b9209831c51bce665035d9db.sol(124)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TheGame':
    |    function collectFee() {
    |        if (msg.sender == mainPlayer) {
  > |            mainPlayer.send(collectedFee);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3e84512f277a5081b9209831c51bce665035d9db.sol(139)

[31mViolation[0m for UnrestrictedWrite in contract 'TheGame':
    |contract TheGame {
  > |    // Based on the open source castle script
    |    // Definte the guy player
    |    address public first_player;
  at /home/jiaming/mavs_srcs/contract@0x3e84512f277a5081b9209831c51bce665035d9db.sol(2)

[31mViolation[0m for UnrestrictedWrite in contract 'TheGame':
    |
    |            // Creation of new jackpot
  > |            jackpot = 0;
    |
    |            // Creation of new round of the game
  at /home/jiaming/mavs_srcs/contract@0x3e84512f277a5081b9209831c51bce665035d9db.sol(71)

[31mViolation[0m for UnrestrictedWrite in contract 'TheGame':
    |
    |            // Creation of new round of the game
  > |            first_player = msg.sender;
    |            regeneration = block.timestamp;
    |            playersAddresses.push(msg.sender);
  at /home/jiaming/mavs_srcs/contract@0x3e84512f277a5081b9209831c51bce665035d9db.sol(74)

[31mViolation[0m for UnrestrictedWrite in contract 'TheGame':
    |            // Creation of new round of the game
    |            first_player = msg.sender;
  > |            regeneration = block.timestamp;
    |            playersAddresses.push(msg.sender);
    |            playersAmounts.push(amount * 2);
  at /home/jiaming/mavs_srcs/contract@0x3e84512f277a5081b9209831c51bce665035d9db.sol(75)

[31mViolation[0m for UnrestrictedWrite in contract 'TheGame':
    |            first_player = msg.sender;
    |            regeneration = block.timestamp;
  > |            playersAddresses.push(msg.sender);
    |            playersAmounts.push(amount * 2);
    |            totalplayers += 1;
  at /home/jiaming/mavs_srcs/contract@0x3e84512f277a5081b9209831c51bce665035d9db.sol(76)

[31mViolation[0m for UnrestrictedWrite in contract 'TheGame':
    |            regeneration = block.timestamp;
    |            playersAddresses.push(msg.sender);
  > |            playersAmounts.push(amount * 2);
    |            totalplayers += 1;
    |            amountInvested += amount;
  at /home/jiaming/mavs_srcs/contract@0x3e84512f277a5081b9209831c51bce665035d9db.sol(77)

[31mViolation[0m for UnrestrictedWrite in contract 'TheGame':
    |            playersAddresses.push(msg.sender);
    |            playersAmounts.push(amount * 2);
  > |            totalplayers += 1;
    |            amountInvested += amount;
    |
  at /home/jiaming/mavs_srcs/contract@0x3e84512f277a5081b9209831c51bce665035d9db.sol(78)

[31mViolation[0m for UnrestrictedWrite in contract 'TheGame':
    |            playersAmounts.push(amount * 2);
    |            totalplayers += 1;
  > |            amountInvested += amount;
    |
    |            // ETH sent to the jackpot
  at /home/jiaming/mavs_srcs/contract@0x3e84512f277a5081b9209831c51bce665035d9db.sol(79)

[31mViolation[0m for UnrestrictedWrite in contract 'TheGame':
    |
    |            // ETH sent to the jackpot
  > |            jackpot += amount;
    |
    |            // The player takes 3%
  at /home/jiaming/mavs_srcs/contract@0x3e84512f277a5081b9209831c51bce665035d9db.sol(82)

[31mViolation[0m for UnrestrictedWrite in contract 'TheGame':
    |
    |            // The Player takes 3%
  > |            collectedFee += amount * 3 / 100;
    |
    |            round += 1;
  at /home/jiaming/mavs_srcs/contract@0x3e84512f277a5081b9209831c51bce665035d9db.sol(88)

[31mViolation[0m for UnrestrictedWrite in contract 'TheGame':
    |            collectedFee += amount * 3 / 100;
    |
  > |            round += 1;
    |        } else {
    |            // The game is still on
  at /home/jiaming/mavs_srcs/contract@0x3e84512f277a5081b9209831c51bce665035d9db.sol(90)

[31mViolation[0m for UnrestrictedWrite in contract 'TheGame':
    |        } else {
    |            // The game is still on
  > |            regeneration = block.timestamp;
    |            playersAddresses.push(msg.sender);
    |            playersAmounts.push(amount / 100 * 150);
  at /home/jiaming/mavs_srcs/contract@0x3e84512f277a5081b9209831c51bce665035d9db.sol(93)

[31mViolation[0m for UnrestrictedWrite in contract 'TheGame':
    |            // The game is still on
    |            regeneration = block.timestamp;
  > |            playersAddresses.push(msg.sender);
    |            playersAmounts.push(amount / 100 * 150);
    |            totalplayers += 1;
  at /home/jiaming/mavs_srcs/contract@0x3e84512f277a5081b9209831c51bce665035d9db.sol(94)

[31mViolation[0m for UnrestrictedWrite in contract 'TheGame':
    |            regeneration = block.timestamp;
    |            playersAddresses.push(msg.sender);
  > |            playersAmounts.push(amount / 100 * 150);
    |            totalplayers += 1;
    |            amountInvested += amount;
  at /home/jiaming/mavs_srcs/contract@0x3e84512f277a5081b9209831c51bce665035d9db.sol(95)

[31mViolation[0m for UnrestrictedWrite in contract 'TheGame':
    |            playersAddresses.push(msg.sender);
    |            playersAmounts.push(amount / 100 * 150);
  > |            totalplayers += 1;
    |            amountInvested += amount;
    |
  at /home/jiaming/mavs_srcs/contract@0x3e84512f277a5081b9209831c51bce665035d9db.sol(96)

[31mViolation[0m for UnrestrictedWrite in contract 'TheGame':
    |            playersAmounts.push(amount / 100 * 150);
    |            totalplayers += 1;
  > |            amountInvested += amount;
    |
    |            // 5% goes to the jackpot
  at /home/jiaming/mavs_srcs/contract@0x3e84512f277a5081b9209831c51bce665035d9db.sol(97)

[31mViolation[0m for UnrestrictedWrite in contract 'TheGame':
    |
    |            // 5% goes to the jackpot
  > |            jackpot += (amount * 5 / 100);
    |
    |            // The player takes 3%
  at /home/jiaming/mavs_srcs/contract@0x3e84512f277a5081b9209831c51bce665035d9db.sol(100)

[31mViolation[0m for UnrestrictedWrite in contract 'TheGame':
    |
    |            // The player takes 3%
  > |            collectedFee += amount * 3 / 100;
    |
    |while (playersAmounts[lastPlayerPaid] < (address(this).balance - jackpot - collectedFee) && lastPlayerPaid <= totalplayers) {
  at /home/jiaming/mavs_srcs/contract@0x3e84512f277a5081b9209831c51bce665035d9db.sol(106)

[33mWarning[0m for UnrestrictedWrite in contract 'TheGame':
    |    function new_mainPlayer(address new_mainPlayer) {
    |        if (msg.sender == mainPlayer) {
  > |            mainPlayer = new_mainPlayer;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3e84512f277a5081b9209831c51bce665035d9db.sol(132)

[33mWarning[0m for UnrestrictedWrite in contract 'TheGame':
    |    function newfirst_player(address newfirst_player) {
    |        if (msg.sender == first_player) {
  > |            first_player = newfirst_player;
    |        }
    |    }       
  at /home/jiaming/mavs_srcs/contract@0x3e84512f277a5081b9209831c51bce665035d9db.sol(146)


