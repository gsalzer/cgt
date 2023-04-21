Processing contract: /home/jiaming/mavs_srcs/contract@0x7996d791995b9f9c15eb4c3e899b09a344c54bdb.sol:GameOfThrones
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for DAOConstantGas in contract 'GameOfThrones':
    |            if (totalCitizens == 1) {
    |                // If there is only one Citizen who contributed, he gets the full Pigg Bank
  > |                citizensAddresses[citizensAddresses.length - 1].send(piggyBank * 95 / 100);
    |            } else if (totalCitizens == 2) {
    |                // If only 2 citizens contributed
  at /home/jiaming/mavs_srcs/contract@0x7996d791995b9f9c15eb4c3e899b09a344c54bdb.sol(66)

[31mViolation[0m for DAOConstantGas in contract 'GameOfThrones':
    |
    |            while (citizensAmounts[lastCitizenPaid] < (address(this).balance - piggyBank - godBank - kingBank - jesterBank) && lastCitizenPaid <= totalCitizens) {
  > |                citizensAddresses[lastCitizenPaid].send(citizensAmounts[lastCitizenPaid]);
    |                amountAlreadyPaidBack += citizensAmounts[lastCitizenPaid];
    |                lastCitizenPaid += 1;
  at /home/jiaming/mavs_srcs/contract@0x7996d791995b9f9c15eb4c3e899b09a344c54bdb.sol(104)

[31mViolation[0m for DAOConstantGas in contract 'GameOfThrones':
    |        if (msg.value >= amount) {
    |            // return jester
  > |            jester.send(jesterBank);
    |            jesterBank = 0;
    |
  at /home/jiaming/mavs_srcs/contract@0x7996d791995b9f9c15eb4c3e899b09a344c54bdb.sol(144)

[31mViolation[0m for DAOConstantGas in contract 'GameOfThrones':
    |
    |            jester = msg.sender;
  > |            msg.sender.send(msg.value - amount);
    |            investInTheSystem(amount);
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0x7996d791995b9f9c15eb4c3e899b09a344c54bdb.sol(148)

[31mViolation[0m for DAOConstantGas in contract 'GameOfThrones':
    |            if (onThrone + PEACE_PERIOD <= block.timestamp && msg.value >= kingCost * 110 / 100) {
    |                // return the fees to before king
  > |                madKing.send(kingBank);
    |                // offer sacrifices to the Gods
    |                godBank += msg.value * 5 / 100;
  at /home/jiaming/mavs_srcs/contract@0x7996d791995b9f9c15eb4c3e899b09a344c54bdb.sol(164)

[31mViolation[0m for DAOConstantGas in contract 'GameOfThrones':
    |    function godAutomaticCollectFee() internal {
    |        if (godBank >= 1 ether) {
  > |          trueGods.send(godBank);
    |          godBank = 0;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x7996d791995b9f9c15eb4c3e899b09a344c54bdb.sol(187)

[31mViolation[0m for DAOConstantGas in contract 'GameOfThrones':
    |    function kingAutomaticCollectFee() internal {
    |        if (kingBank >= 100 finney) {
  > |          madKing.send(kingBank);
    |          kingBank = 0;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x7996d791995b9f9c15eb4c3e899b09a344c54bdb.sol(194)

[31mViolation[0m for DAOConstantGas in contract 'GameOfThrones':
    |    function jesterAutomaticCollectFee() internal {
    |        if (jesterBank >= 100 finney) {
  > |          jester.send(jesterBank);
    |          jesterBank = 0;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x7996d791995b9f9c15eb4c3e899b09a344c54bdb.sol(201)

[33mWarning[0m for DAOConstantGas in contract 'GameOfThrones':
    |        // Check if the minimum amount if reached
    |        if (amount < 10 finney) {
  > |            msg.sender.send(msg.value);
    |            return false;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x7996d791995b9f9c15eb4c3e899b09a344c54bdb.sol(51)

[33mWarning[0m for DAOConstantGas in contract 'GameOfThrones':
    |    function collectFee() {
    |        if (msg.sender == trueGods) {
  > |            trueGods.send(godBank);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7996d791995b9f9c15eb4c3e899b09a344c54bdb.sol(181)

[33mWarning[0m for LockedEther in contract 'GameOfThrones':
  > |contract GameOfThrones {
    |    address public trueGods;
    |    // King's Jester
  at /home/jiaming/mavs_srcs/contract@0x7996d791995b9f9c15eb4c3e899b09a344c54bdb.sol(1)

[31mViolation[0m for MissingInputValidation in contract 'GameOfThrones':
    |    // When the mad king decides to give his seat to someone else
    |    // the king cost will be reset to 2 ether
  > |    function newKing(address newKing) {
    |        if (msg.sender == madKing) {
    |            madKing = newKing;
  at /home/jiaming/mavs_srcs/contract@0x7996d791995b9f9c15eb4c3e899b09a344c54bdb.sol(133)

[33mWarning[0m for MissingInputValidation in contract 'GameOfThrones':
    |contract GameOfThrones {
  > |    address public trueGods;
    |    // King's Jester
    |    address public jester;
  at /home/jiaming/mavs_srcs/contract@0x7996d791995b9f9c15eb4c3e899b09a344c54bdb.sol(2)

[33mWarning[0m for MissingInputValidation in contract 'GameOfThrones':
    |    address public trueGods;
    |    // King's Jester
  > |    address public jester;
    |    // Record the last collection time
    |    uint public lastCollection;
  at /home/jiaming/mavs_srcs/contract@0x7996d791995b9f9c15eb4c3e899b09a344c54bdb.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'GameOfThrones':
    |    address public jester;
    |    // Record the last collection time
  > |    uint public lastCollection;
    |    // Record king life
    |    uint public onThrone;
  at /home/jiaming/mavs_srcs/contract@0x7996d791995b9f9c15eb4c3e899b09a344c54bdb.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'GameOfThrones':
    |    uint public lastCollection;
    |    // Record king life
  > |    uint public onThrone;
    |    uint public kingCost;
    |    // Piggy Bank Amount
  at /home/jiaming/mavs_srcs/contract@0x7996d791995b9f9c15eb4c3e899b09a344c54bdb.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'GameOfThrones':
    |    // Record king life
    |    uint public onThrone;
  > |    uint public kingCost;
    |    // Piggy Bank Amount
    |    uint public piggyBank;
  at /home/jiaming/mavs_srcs/contract@0x7996d791995b9f9c15eb4c3e899b09a344c54bdb.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'GameOfThrones':
    |    uint public kingCost;
    |    // Piggy Bank Amount
  > |    uint public piggyBank;
    |    // Collected Fee Amount
    |    uint public godBank;
  at /home/jiaming/mavs_srcs/contract@0x7996d791995b9f9c15eb4c3e899b09a344c54bdb.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'GameOfThrones':
    |    uint public piggyBank;
    |    // Collected Fee Amount
  > |    uint public godBank;
    |    uint public jesterBank;
    |    uint public kingBank;
  at /home/jiaming/mavs_srcs/contract@0x7996d791995b9f9c15eb4c3e899b09a344c54bdb.sol(13)

[33mWarning[0m for MissingInputValidation in contract 'GameOfThrones':
    |    // Collected Fee Amount
    |    uint public godBank;
  > |    uint public jesterBank;
    |    uint public kingBank;
    |
  at /home/jiaming/mavs_srcs/contract@0x7996d791995b9f9c15eb4c3e899b09a344c54bdb.sol(14)

[33mWarning[0m for MissingInputValidation in contract 'GameOfThrones':
    |    uint public godBank;
    |    uint public jesterBank;
  > |    uint public kingBank;
    |
    |    // Track the citizens who helped to arm race
  at /home/jiaming/mavs_srcs/contract@0x7996d791995b9f9c15eb4c3e899b09a344c54bdb.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'GameOfThrones':
    |
    |    // Track the citizens who helped to arm race
  > |    address[] public citizensAddresses;
    |    uint[] public citizensAmounts;
    |    uint32 public totalCitizens;
  at /home/jiaming/mavs_srcs/contract@0x7996d791995b9f9c15eb4c3e899b09a344c54bdb.sol(18)

[33mWarning[0m for MissingInputValidation in contract 'GameOfThrones':
    |    // Track the citizens who helped to arm race
    |    address[] public citizensAddresses;
  > |    uint[] public citizensAmounts;
    |    uint32 public totalCitizens;
    |    uint32 public lastCitizenPaid;
  at /home/jiaming/mavs_srcs/contract@0x7996d791995b9f9c15eb4c3e899b09a344c54bdb.sol(19)

[33mWarning[0m for MissingInputValidation in contract 'GameOfThrones':
    |    address[] public citizensAddresses;
    |    uint[] public citizensAmounts;
  > |    uint32 public totalCitizens;
    |    uint32 public lastCitizenPaid;
    |    // The mad king establishes the government
  at /home/jiaming/mavs_srcs/contract@0x7996d791995b9f9c15eb4c3e899b09a344c54bdb.sol(20)

[33mWarning[0m for MissingInputValidation in contract 'GameOfThrones':
    |    uint[] public citizensAmounts;
    |    uint32 public totalCitizens;
  > |    uint32 public lastCitizenPaid;
    |    // The mad king establishes the government
    |    address public madKing;
  at /home/jiaming/mavs_srcs/contract@0x7996d791995b9f9c15eb4c3e899b09a344c54bdb.sol(21)

[33mWarning[0m for MissingInputValidation in contract 'GameOfThrones':
    |    uint32 public lastCitizenPaid;
    |    // The mad king establishes the government
  > |    address public madKing;
    |    // Record how many times the castle had fell
    |    uint32 public round;
  at /home/jiaming/mavs_srcs/contract@0x7996d791995b9f9c15eb4c3e899b09a344c54bdb.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'GameOfThrones':
    |    address public madKing;
    |    // Record how many times the castle had fell
  > |    uint32 public round;
    |    // Amount already paid back in this round
    |    uint public amountAlreadyPaidBack;
  at /home/jiaming/mavs_srcs/contract@0x7996d791995b9f9c15eb4c3e899b09a344c54bdb.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'GameOfThrones':
    |    uint32 public round;
    |    // Amount already paid back in this round
  > |    uint public amountAlreadyPaidBack;
    |    // Amount invested in this round
    |    uint public amountInvested;
  at /home/jiaming/mavs_srcs/contract@0x7996d791995b9f9c15eb4c3e899b09a344c54bdb.sol(27)

[33mWarning[0m for MissingInputValidation in contract 'GameOfThrones':
    |    uint public amountAlreadyPaidBack;
    |    // Amount invested in this round
  > |    uint public amountInvested;
    |
    |    uint constant TWENTY_FOUR_HOURS = 60 * 60 * 24;
  at /home/jiaming/mavs_srcs/contract@0x7996d791995b9f9c15eb4c3e899b09a344c54bdb.sol(29)

[33mWarning[0m for MissingInputValidation in contract 'GameOfThrones':
    |    }
    |
  > |    function repairTheCastle() returns(bool) {
    |        uint amount = msg.value;
    |        // Check if the minimum amount if reached
  at /home/jiaming/mavs_srcs/contract@0x7996d791995b9f9c15eb4c3e899b09a344c54bdb.sol(47)

[33mWarning[0m for MissingInputValidation in contract 'GameOfThrones':
    |    }
    |
  > |    function investInTheSystem(uint amount) internal {
    |        // The Castle is still up
    |        lastCollection = block.timestamp;
  at /home/jiaming/mavs_srcs/contract@0x7996d791995b9f9c15eb4c3e899b09a344c54bdb.sol(116)

[33mWarning[0m for MissingInputValidation in contract 'GameOfThrones':
    |    }
    |
  > |    function bribery() {
    |        uint amount = 100 finney;
    |        if (msg.value >= amount) {
  at /home/jiaming/mavs_srcs/contract@0x7996d791995b9f9c15eb4c3e899b09a344c54bdb.sol(140)

[33mWarning[0m for MissingInputValidation in contract 'GameOfThrones':
    |
    |    // Anyone can usurpation the kingship
  > |    function usurpation() {
    |        // Add more money for king usurpation cost
    |        if (msg.sender == madKing) {
  at /home/jiaming/mavs_srcs/contract@0x7996d791995b9f9c15eb4c3e899b09a344c54bdb.sol(156)

[33mWarning[0m for MissingInputValidation in contract 'GameOfThrones':
    |
    |    // When the king decides to collect his fees
  > |    function collectFee() {
    |        if (msg.sender == trueGods) {
    |            trueGods.send(godBank);
  at /home/jiaming/mavs_srcs/contract@0x7996d791995b9f9c15eb4c3e899b09a344c54bdb.sol(179)

[33mWarning[0m for MissingInputValidation in contract 'GameOfThrones':
    |    }
    |
  > |    function godAutomaticCollectFee() internal {
    |        if (godBank >= 1 ether) {
    |          trueGods.send(godBank);
  at /home/jiaming/mavs_srcs/contract@0x7996d791995b9f9c15eb4c3e899b09a344c54bdb.sol(185)

[33mWarning[0m for MissingInputValidation in contract 'GameOfThrones':
    |    }
    |
  > |    function kingAutomaticCollectFee() internal {
    |        if (kingBank >= 100 finney) {
    |          madKing.send(kingBank);
  at /home/jiaming/mavs_srcs/contract@0x7996d791995b9f9c15eb4c3e899b09a344c54bdb.sol(192)

[33mWarning[0m for MissingInputValidation in contract 'GameOfThrones':
    |    }
    |
  > |    function jesterAutomaticCollectFee() internal {
    |        if (jesterBank >= 100 finney) {
    |          jester.send(jesterBank);
  at /home/jiaming/mavs_srcs/contract@0x7996d791995b9f9c15eb4c3e899b09a344c54bdb.sol(199)

[31mViolation[0m for TODAmount in contract 'GameOfThrones':
    |            if (totalCitizens == 1) {
    |                // If there is only one Citizen who contributed, he gets the full Pigg Bank
  > |                citizensAddresses[citizensAddresses.length - 1].send(piggyBank * 95 / 100);
    |            } else if (totalCitizens == 2) {
    |                // If only 2 citizens contributed
  at /home/jiaming/mavs_srcs/contract@0x7996d791995b9f9c15eb4c3e899b09a344c54bdb.sol(66)

[31mViolation[0m for TODAmount in contract 'GameOfThrones':
    |            } else if (totalCitizens == 2) {
    |                // If only 2 citizens contributed
  > |                citizensAddresses[citizensAddresses.length - 1].send(piggyBank * 60 / 100);
    |                citizensAddresses[citizensAddresses.length - 2].send(piggyBank * 35 / 100);
    |            } else if (totalCitizens >= 3) {
  at /home/jiaming/mavs_srcs/contract@0x7996d791995b9f9c15eb4c3e899b09a344c54bdb.sol(69)

[31mViolation[0m for TODAmount in contract 'GameOfThrones':
    |                // If only 2 citizens contributed
    |                citizensAddresses[citizensAddresses.length - 1].send(piggyBank * 60 / 100);
  > |                citizensAddresses[citizensAddresses.length - 2].send(piggyBank * 35 / 100);
    |            } else if (totalCitizens >= 3) {
    |                // If there is 3 or more citizens who contributed
  at /home/jiaming/mavs_srcs/contract@0x7996d791995b9f9c15eb4c3e899b09a344c54bdb.sol(70)

[31mViolation[0m for TODAmount in contract 'GameOfThrones':
    |            } else if (totalCitizens >= 3) {
    |                // If there is 3 or more citizens who contributed
  > |                citizensAddresses[citizensAddresses.length - 1].send(piggyBank * 50 / 100);
    |                citizensAddresses[citizensAddresses.length - 2].send(piggyBank * 30 / 100);
    |                citizensAddresses[citizensAddresses.length - 3].send(piggyBank * 15 / 100);
  at /home/jiaming/mavs_srcs/contract@0x7996d791995b9f9c15eb4c3e899b09a344c54bdb.sol(73)

[31mViolation[0m for TODAmount in contract 'GameOfThrones':
    |                // If there is 3 or more citizens who contributed
    |                citizensAddresses[citizensAddresses.length - 1].send(piggyBank * 50 / 100);
  > |                citizensAddresses[citizensAddresses.length - 2].send(piggyBank * 30 / 100);
    |                citizensAddresses[citizensAddresses.length - 3].send(piggyBank * 15 / 100);
    |            }
  at /home/jiaming/mavs_srcs/contract@0x7996d791995b9f9c15eb4c3e899b09a344c54bdb.sol(74)

[31mViolation[0m for TODAmount in contract 'GameOfThrones':
    |                citizensAddresses[citizensAddresses.length - 1].send(piggyBank * 50 / 100);
    |                citizensAddresses[citizensAddresses.length - 2].send(piggyBank * 30 / 100);
  > |                citizensAddresses[citizensAddresses.length - 3].send(piggyBank * 15 / 100);
    |            }
    |
  at /home/jiaming/mavs_srcs/contract@0x7996d791995b9f9c15eb4c3e899b09a344c54bdb.sol(75)

[31mViolation[0m for TODAmount in contract 'GameOfThrones':
    |        if (msg.value >= amount) {
    |            // return jester
  > |            jester.send(jesterBank);
    |            jesterBank = 0;
    |
  at /home/jiaming/mavs_srcs/contract@0x7996d791995b9f9c15eb4c3e899b09a344c54bdb.sol(144)

[31mViolation[0m for TODAmount in contract 'GameOfThrones':
    |    function collectFee() {
    |        if (msg.sender == trueGods) {
  > |            trueGods.send(godBank);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7996d791995b9f9c15eb4c3e899b09a344c54bdb.sol(181)

[31mViolation[0m for TODReceiver in contract 'GameOfThrones':
    |        if (msg.value >= amount) {
    |            // return jester
  > |            jester.send(jesterBank);
    |            jesterBank = 0;
    |
  at /home/jiaming/mavs_srcs/contract@0x7996d791995b9f9c15eb4c3e899b09a344c54bdb.sol(144)

[31mViolation[0m for TODReceiver in contract 'GameOfThrones':
    |            if (onThrone + PEACE_PERIOD <= block.timestamp && msg.value >= kingCost * 110 / 100) {
    |                // return the fees to before king
  > |                madKing.send(kingBank);
    |                // offer sacrifices to the Gods
    |                godBank += msg.value * 5 / 100;
  at /home/jiaming/mavs_srcs/contract@0x7996d791995b9f9c15eb4c3e899b09a344c54bdb.sol(164)

[33mWarning[0m for TODReceiver in contract 'GameOfThrones':
    |        // Check if the minimum amount if reached
    |        if (amount < 10 finney) {
  > |            msg.sender.send(msg.value);
    |            return false;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x7996d791995b9f9c15eb4c3e899b09a344c54bdb.sol(51)

[33mWarning[0m for TODReceiver in contract 'GameOfThrones':
    |        // If the amount received is more than 100 ETH return the difference
    |        if (amount > 100 ether) {
  > |            msg.sender.send(msg.value - 100 ether);
    |            amount = 100 ether;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x7996d791995b9f9c15eb4c3e899b09a344c54bdb.sol(56)

[33mWarning[0m for TODReceiver in contract 'GameOfThrones':
    |
    |            jester = msg.sender;
  > |            msg.sender.send(msg.value - amount);
    |            investInTheSystem(amount);
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0x7996d791995b9f9c15eb4c3e899b09a344c54bdb.sol(148)

[33mWarning[0m for TODReceiver in contract 'GameOfThrones':
    |    function collectFee() {
    |        if (msg.sender == trueGods) {
  > |            trueGods.send(godBank);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7996d791995b9f9c15eb4c3e899b09a344c54bdb.sol(181)

[31mViolation[0m for UnhandledException in contract 'GameOfThrones':
    |        // Check if the minimum amount if reached
    |        if (amount < 10 finney) {
  > |            msg.sender.send(msg.value);
    |            return false;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x7996d791995b9f9c15eb4c3e899b09a344c54bdb.sol(51)

[31mViolation[0m for UnhandledException in contract 'GameOfThrones':
    |        // If the amount received is more than 100 ETH return the difference
    |        if (amount > 100 ether) {
  > |            msg.sender.send(msg.value - 100 ether);
    |            amount = 100 ether;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x7996d791995b9f9c15eb4c3e899b09a344c54bdb.sol(56)

[31mViolation[0m for UnhandledException in contract 'GameOfThrones':
    |            if (totalCitizens == 1) {
    |                // If there is only one Citizen who contributed, he gets the full Pigg Bank
  > |                citizensAddresses[citizensAddresses.length - 1].send(piggyBank * 95 / 100);
    |            } else if (totalCitizens == 2) {
    |                // If only 2 citizens contributed
  at /home/jiaming/mavs_srcs/contract@0x7996d791995b9f9c15eb4c3e899b09a344c54bdb.sol(66)

[31mViolation[0m for UnhandledException in contract 'GameOfThrones':
    |            } else if (totalCitizens == 2) {
    |                // If only 2 citizens contributed
  > |                citizensAddresses[citizensAddresses.length - 1].send(piggyBank * 60 / 100);
    |                citizensAddresses[citizensAddresses.length - 2].send(piggyBank * 35 / 100);
    |            } else if (totalCitizens >= 3) {
  at /home/jiaming/mavs_srcs/contract@0x7996d791995b9f9c15eb4c3e899b09a344c54bdb.sol(69)

[31mViolation[0m for UnhandledException in contract 'GameOfThrones':
    |                // If only 2 citizens contributed
    |                citizensAddresses[citizensAddresses.length - 1].send(piggyBank * 60 / 100);
  > |                citizensAddresses[citizensAddresses.length - 2].send(piggyBank * 35 / 100);
    |            } else if (totalCitizens >= 3) {
    |                // If there is 3 or more citizens who contributed
  at /home/jiaming/mavs_srcs/contract@0x7996d791995b9f9c15eb4c3e899b09a344c54bdb.sol(70)

[31mViolation[0m for UnhandledException in contract 'GameOfThrones':
    |            } else if (totalCitizens >= 3) {
    |                // If there is 3 or more citizens who contributed
  > |                citizensAddresses[citizensAddresses.length - 1].send(piggyBank * 50 / 100);
    |                citizensAddresses[citizensAddresses.length - 2].send(piggyBank * 30 / 100);
    |                citizensAddresses[citizensAddresses.length - 3].send(piggyBank * 15 / 100);
  at /home/jiaming/mavs_srcs/contract@0x7996d791995b9f9c15eb4c3e899b09a344c54bdb.sol(73)

[31mViolation[0m for UnhandledException in contract 'GameOfThrones':
    |                // If there is 3 or more citizens who contributed
    |                citizensAddresses[citizensAddresses.length - 1].send(piggyBank * 50 / 100);
  > |                citizensAddresses[citizensAddresses.length - 2].send(piggyBank * 30 / 100);
    |                citizensAddresses[citizensAddresses.length - 3].send(piggyBank * 15 / 100);
    |            }
  at /home/jiaming/mavs_srcs/contract@0x7996d791995b9f9c15eb4c3e899b09a344c54bdb.sol(74)

[31mViolation[0m for UnhandledException in contract 'GameOfThrones':
    |                citizensAddresses[citizensAddresses.length - 1].send(piggyBank * 50 / 100);
    |                citizensAddresses[citizensAddresses.length - 2].send(piggyBank * 30 / 100);
  > |                citizensAddresses[citizensAddresses.length - 3].send(piggyBank * 15 / 100);
    |            }
    |
  at /home/jiaming/mavs_srcs/contract@0x7996d791995b9f9c15eb4c3e899b09a344c54bdb.sol(75)

[31mViolation[0m for UnhandledException in contract 'GameOfThrones':
    |
    |            while (citizensAmounts[lastCitizenPaid] < (address(this).balance - piggyBank - godBank - kingBank - jesterBank) && lastCitizenPaid <= totalCitizens) {
  > |                citizensAddresses[lastCitizenPaid].send(citizensAmounts[lastCitizenPaid]);
    |                amountAlreadyPaidBack += citizensAmounts[lastCitizenPaid];
    |                lastCitizenPaid += 1;
  at /home/jiaming/mavs_srcs/contract@0x7996d791995b9f9c15eb4c3e899b09a344c54bdb.sol(104)

[31mViolation[0m for UnhandledException in contract 'GameOfThrones':
    |        if (msg.value >= amount) {
    |            // return jester
  > |            jester.send(jesterBank);
    |            jesterBank = 0;
    |
  at /home/jiaming/mavs_srcs/contract@0x7996d791995b9f9c15eb4c3e899b09a344c54bdb.sol(144)

[31mViolation[0m for UnhandledException in contract 'GameOfThrones':
    |
    |            jester = msg.sender;
  > |            msg.sender.send(msg.value - amount);
    |            investInTheSystem(amount);
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0x7996d791995b9f9c15eb4c3e899b09a344c54bdb.sol(148)

[31mViolation[0m for UnhandledException in contract 'GameOfThrones':
    |            if (onThrone + PEACE_PERIOD <= block.timestamp && msg.value >= kingCost * 110 / 100) {
    |                // return the fees to before king
  > |                madKing.send(kingBank);
    |                // offer sacrifices to the Gods
    |                godBank += msg.value * 5 / 100;
  at /home/jiaming/mavs_srcs/contract@0x7996d791995b9f9c15eb4c3e899b09a344c54bdb.sol(164)

[31mViolation[0m for UnhandledException in contract 'GameOfThrones':
    |    function collectFee() {
    |        if (msg.sender == trueGods) {
  > |            trueGods.send(godBank);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7996d791995b9f9c15eb4c3e899b09a344c54bdb.sol(181)

[31mViolation[0m for UnhandledException in contract 'GameOfThrones':
    |    function godAutomaticCollectFee() internal {
    |        if (godBank >= 1 ether) {
  > |          trueGods.send(godBank);
    |          godBank = 0;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x7996d791995b9f9c15eb4c3e899b09a344c54bdb.sol(187)

[31mViolation[0m for UnhandledException in contract 'GameOfThrones':
    |    function kingAutomaticCollectFee() internal {
    |        if (kingBank >= 100 finney) {
  > |          madKing.send(kingBank);
    |          kingBank = 0;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x7996d791995b9f9c15eb4c3e899b09a344c54bdb.sol(194)

[31mViolation[0m for UnhandledException in contract 'GameOfThrones':
    |    function jesterAutomaticCollectFee() internal {
    |        if (jesterBank >= 100 finney) {
  > |          jester.send(jesterBank);
    |          jesterBank = 0;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x7996d791995b9f9c15eb4c3e899b09a344c54bdb.sol(201)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GameOfThrones':
    |            if (onThrone + PEACE_PERIOD <= block.timestamp && msg.value >= kingCost * 110 / 100) {
    |                // return the fees to before king
  > |                madKing.send(kingBank);
    |                // offer sacrifices to the Gods
    |                godBank += msg.value * 5 / 100;
  at /home/jiaming/mavs_srcs/contract@0x7996d791995b9f9c15eb4c3e899b09a344c54bdb.sol(164)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GameOfThrones':
    |    function collectFee() {
    |        if (msg.sender == trueGods) {
  > |            trueGods.send(godBank);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7996d791995b9f9c15eb4c3e899b09a344c54bdb.sol(181)

[31mViolation[0m for UnrestrictedWrite in contract 'GameOfThrones':
    |contract GameOfThrones {
  > |    address public trueGods;
    |    // King's Jester
    |    address public jester;
  at /home/jiaming/mavs_srcs/contract@0x7996d791995b9f9c15eb4c3e899b09a344c54bdb.sol(2)

[31mViolation[0m for UnrestrictedWrite in contract 'GameOfThrones':
    |            }
    |
  > |            godBank += piggyBank * 5 / 100;
    |            // Define the new Piggy Bank
    |            piggyBank = 0;
  at /home/jiaming/mavs_srcs/contract@0x7996d791995b9f9c15eb4c3e899b09a344c54bdb.sol(78)

[31mViolation[0m for UnrestrictedWrite in contract 'GameOfThrones':
    |            godBank += piggyBank * 5 / 100;
    |            // Define the new Piggy Bank
  > |            piggyBank = 0;
    |
    |            // Define the new Castle
  at /home/jiaming/mavs_srcs/contract@0x7996d791995b9f9c15eb4c3e899b09a344c54bdb.sol(80)

[31mViolation[0m for UnrestrictedWrite in contract 'GameOfThrones':
    |
    |            // Define the new Castle
  > |            jester = msg.sender;
    |
    |            citizensAddresses.push(msg.sender);
  at /home/jiaming/mavs_srcs/contract@0x7996d791995b9f9c15eb4c3e899b09a344c54bdb.sol(83)

[31mViolation[0m for UnrestrictedWrite in contract 'GameOfThrones':
    |            jester = msg.sender;
    |
  > |            citizensAddresses.push(msg.sender);
    |            citizensAmounts.push(amount * 110 / 100);
    |            totalCitizens += 1;
  at /home/jiaming/mavs_srcs/contract@0x7996d791995b9f9c15eb4c3e899b09a344c54bdb.sol(85)

[31mViolation[0m for UnrestrictedWrite in contract 'GameOfThrones':
    |
    |            citizensAddresses.push(msg.sender);
  > |            citizensAmounts.push(amount * 110 / 100);
    |            totalCitizens += 1;
    |            investInTheSystem(amount);
  at /home/jiaming/mavs_srcs/contract@0x7996d791995b9f9c15eb4c3e899b09a344c54bdb.sol(86)

[31mViolation[0m for UnrestrictedWrite in contract 'GameOfThrones':
    |            citizensAddresses.push(msg.sender);
    |            citizensAmounts.push(amount * 110 / 100);
  > |            totalCitizens += 1;
    |            investInTheSystem(amount);
    |            godAutomaticCollectFee();
  at /home/jiaming/mavs_srcs/contract@0x7996d791995b9f9c15eb4c3e899b09a344c54bdb.sol(87)

[31mViolation[0m for UnrestrictedWrite in contract 'GameOfThrones':
    |            godAutomaticCollectFee();
    |            // All goes to the Piggy Bank
  > |            piggyBank += amount;
    |
    |            round += 1;
  at /home/jiaming/mavs_srcs/contract@0x7996d791995b9f9c15eb4c3e899b09a344c54bdb.sol(91)

[31mViolation[0m for UnrestrictedWrite in contract 'GameOfThrones':
    |            piggyBank += amount;
    |
  > |            round += 1;
    |        } else {
    |            citizensAddresses.push(msg.sender);
  at /home/jiaming/mavs_srcs/contract@0x7996d791995b9f9c15eb4c3e899b09a344c54bdb.sol(93)

[31mViolation[0m for UnrestrictedWrite in contract 'GameOfThrones':
    |            round += 1;
    |        } else {
  > |            citizensAddresses.push(msg.sender);
    |            citizensAmounts.push(amount * 110 / 100);
    |            totalCitizens += 1;
  at /home/jiaming/mavs_srcs/contract@0x7996d791995b9f9c15eb4c3e899b09a344c54bdb.sol(95)

[31mViolation[0m for UnrestrictedWrite in contract 'GameOfThrones':
    |        } else {
    |            citizensAddresses.push(msg.sender);
  > |            citizensAmounts.push(amount * 110 / 100);
    |            totalCitizens += 1;
    |            investInTheSystem(amount);
  at /home/jiaming/mavs_srcs/contract@0x7996d791995b9f9c15eb4c3e899b09a344c54bdb.sol(96)

[31mViolation[0m for UnrestrictedWrite in contract 'GameOfThrones':
    |            citizensAddresses.push(msg.sender);
    |            citizensAmounts.push(amount * 110 / 100);
  > |            totalCitizens += 1;
    |            investInTheSystem(amount);
    |
  at /home/jiaming/mavs_srcs/contract@0x7996d791995b9f9c15eb4c3e899b09a344c54bdb.sol(97)

[31mViolation[0m for UnrestrictedWrite in contract 'GameOfThrones':
    |
    |            // 5% goes to the Piggy Bank
  > |            piggyBank += (amount * 5 / 100);
    |
    |            while (citizensAmounts[lastCitizenPaid] < (address(this).balance - piggyBank - godBank - kingBank - jesterBank) && lastCitizenPaid <= totalCitizens) {
  at /home/jiaming/mavs_srcs/contract@0x7996d791995b9f9c15eb4c3e899b09a344c54bdb.sol(101)

[31mViolation[0m for UnrestrictedWrite in contract 'GameOfThrones':
    |            while (citizensAmounts[lastCitizenPaid] < (address(this).balance - piggyBank - godBank - kingBank - jesterBank) && lastCitizenPaid <= totalCitizens) {
    |                citizensAddresses[lastCitizenPaid].send(citizensAmounts[lastCitizenPaid]);
  > |                amountAlreadyPaidBack += citizensAmounts[lastCitizenPaid];
    |                lastCitizenPaid += 1;
    |            }
  at /home/jiaming/mavs_srcs/contract@0x7996d791995b9f9c15eb4c3e899b09a344c54bdb.sol(105)

[31mViolation[0m for UnrestrictedWrite in contract 'GameOfThrones':
    |                citizensAddresses[lastCitizenPaid].send(citizensAmounts[lastCitizenPaid]);
    |                amountAlreadyPaidBack += citizensAmounts[lastCitizenPaid];
  > |                lastCitizenPaid += 1;
    |            }
    |        }
  at /home/jiaming/mavs_srcs/contract@0x7996d791995b9f9c15eb4c3e899b09a344c54bdb.sol(106)

[31mViolation[0m for UnrestrictedWrite in contract 'GameOfThrones':
    |    function investInTheSystem(uint amount) internal {
    |        // The Castle is still up
  > |        lastCollection = block.timestamp;
    |        amountInvested += amount;
    |        // The Jetster takes 5%
  at /home/jiaming/mavs_srcs/contract@0x7996d791995b9f9c15eb4c3e899b09a344c54bdb.sol(118)

[31mViolation[0m for UnrestrictedWrite in contract 'GameOfThrones':
    |        // The Castle is still up
    |        lastCollection = block.timestamp;
  > |        amountInvested += amount;
    |        // The Jetster takes 5%
    |        jesterBank += amount * 5 / 100;
  at /home/jiaming/mavs_srcs/contract@0x7996d791995b9f9c15eb4c3e899b09a344c54bdb.sol(119)

[31mViolation[0m for UnrestrictedWrite in contract 'GameOfThrones':
    |        amountInvested += amount;
    |        // The Jetster takes 5%
  > |        jesterBank += amount * 5 / 100;
    |        // The mad king takes 5%
    |        kingBank += amount * 5 / 100;
  at /home/jiaming/mavs_srcs/contract@0x7996d791995b9f9c15eb4c3e899b09a344c54bdb.sol(121)

[31mViolation[0m for UnrestrictedWrite in contract 'GameOfThrones':
    |        jesterBank += amount * 5 / 100;
    |        // The mad king takes 5%
  > |        kingBank += amount * 5 / 100;
    |        // 5% goes to the Piggy Bank
    |        piggyBank += (amount * 5 / 100);
  at /home/jiaming/mavs_srcs/contract@0x7996d791995b9f9c15eb4c3e899b09a344c54bdb.sol(123)

[31mViolation[0m for UnrestrictedWrite in contract 'GameOfThrones':
    |        kingBank += amount * 5 / 100;
    |        // 5% goes to the Piggy Bank
  > |        piggyBank += (amount * 5 / 100);
    |
    |        kingAutomaticCollectFee();
  at /home/jiaming/mavs_srcs/contract@0x7996d791995b9f9c15eb4c3e899b09a344c54bdb.sol(125)

[31mViolation[0m for UnrestrictedWrite in contract 'GameOfThrones':
    |            // return jester
    |            jester.send(jesterBank);
  > |            jesterBank = 0;
    |
    |            jester = msg.sender;
  at /home/jiaming/mavs_srcs/contract@0x7996d791995b9f9c15eb4c3e899b09a344c54bdb.sol(145)

[31mViolation[0m for UnrestrictedWrite in contract 'GameOfThrones':
    |            jesterBank = 0;
    |
  > |            jester = msg.sender;
    |            msg.sender.send(msg.value - amount);
    |            investInTheSystem(amount);
  at /home/jiaming/mavs_srcs/contract@0x7996d791995b9f9c15eb4c3e899b09a344c54bdb.sol(147)

[31mViolation[0m for UnrestrictedWrite in contract 'GameOfThrones':
    |        if (godBank >= 1 ether) {
    |          trueGods.send(godBank);
  > |          godBank = 0;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7996d791995b9f9c15eb4c3e899b09a344c54bdb.sol(188)

[31mViolation[0m for UnrestrictedWrite in contract 'GameOfThrones':
    |        if (kingBank >= 100 finney) {
    |          madKing.send(kingBank);
  > |          kingBank = 0;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7996d791995b9f9c15eb4c3e899b09a344c54bdb.sol(195)

[31mViolation[0m for UnrestrictedWrite in contract 'GameOfThrones':
    |        if (jesterBank >= 100 finney) {
    |          jester.send(jesterBank);
  > |          jesterBank = 0;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7996d791995b9f9c15eb4c3e899b09a344c54bdb.sol(202)

[33mWarning[0m for UnrestrictedWrite in contract 'GameOfThrones':
    |    function investInTheSystem(uint amount) internal {
    |        // The Castle is still up
  > |        lastCollection = block.timestamp;
    |        amountInvested += amount;
    |        // The Jetster takes 5%
  at /home/jiaming/mavs_srcs/contract@0x7996d791995b9f9c15eb4c3e899b09a344c54bdb.sol(118)

[33mWarning[0m for UnrestrictedWrite in contract 'GameOfThrones':
    |        // The Castle is still up
    |        lastCollection = block.timestamp;
  > |        amountInvested += amount;
    |        // The Jetster takes 5%
    |        jesterBank += amount * 5 / 100;
  at /home/jiaming/mavs_srcs/contract@0x7996d791995b9f9c15eb4c3e899b09a344c54bdb.sol(119)

[33mWarning[0m for UnrestrictedWrite in contract 'GameOfThrones':
    |    function newKing(address newKing) {
    |        if (msg.sender == madKing) {
  > |            madKing = newKing;
    |            kingCost = 1 ether;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x7996d791995b9f9c15eb4c3e899b09a344c54bdb.sol(135)

[33mWarning[0m for UnrestrictedWrite in contract 'GameOfThrones':
    |        if (msg.sender == madKing) {
    |            madKing = newKing;
  > |            kingCost = 1 ether;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7996d791995b9f9c15eb4c3e899b09a344c54bdb.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'GameOfThrones':
    |                madKing.send(kingBank);
    |                // offer sacrifices to the Gods
  > |                godBank += msg.value * 5 / 100;
    |                investInTheSystem(msg.value);
    |                // new king
  at /home/jiaming/mavs_srcs/contract@0x7996d791995b9f9c15eb4c3e899b09a344c54bdb.sol(166)


