Processing contract: /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol:GameOfThrones
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
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(66)

[31mViolation[0m for DAOConstantGas in contract 'GameOfThrones':
    |
    |            while (citizensAmounts[lastCitizenPaid] < (address(this).balance - piggyBank - godBank - kingBank - jesterBank) && lastCitizenPaid <= totalCitizens) {
  > |                citizensAddresses[lastCitizenPaid].send(citizensAmounts[lastCitizenPaid]);
    |                amountAlreadyPaidBack += citizensAmounts[lastCitizenPaid];
    |                lastCitizenPaid += 1;
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(101)

[31mViolation[0m for DAOConstantGas in contract 'GameOfThrones':
    |    function abdicate() {
    |        if (msg.sender == madKing && msg.sender != trueGods) {
  > |            madKing.send(kingBank);
    |            if (piggyBank > kingCost * 40 / 100) {
    |                madKing.send(kingCost * 40 / 100);
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(132)

[31mViolation[0m for DAOConstantGas in contract 'GameOfThrones':
    |            madKing.send(kingBank);
    |            if (piggyBank > kingCost * 40 / 100) {
  > |                madKing.send(kingCost * 40 / 100);
    |                piggyBank -= kingCost * 40 / 100;
    |            }
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(134)

[31mViolation[0m for DAOConstantGas in contract 'GameOfThrones':
    |            }
    |            else {
  > |                madKing.send(piggyBank);
    |                piggyBank = 0;
    |            }
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(138)

[31mViolation[0m for DAOConstantGas in contract 'GameOfThrones':
    |        if (msg.value >= amount && msg.sender != jester) {
    |            // return jester
  > |            jester.send(jesterBank);
    |            jesterBank = 0;
    |
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(151)

[31mViolation[0m for DAOConstantGas in contract 'GameOfThrones':
    |
    |            jester = msg.sender;
  > |            msg.sender.send(msg.value - amount);
    |            investInTheSystem(amount);
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(155)

[31mViolation[0m for DAOConstantGas in contract 'GameOfThrones':
    |            if (onThrone + PEACE_PERIOD <= block.timestamp && amount >= kingCost * 150 / 100) {
    |                // return the fees to before king
  > |                madKing.send(kingBank);
    |                // offer sacrifices to the Gods
    |                godBank += amount * 5 / 100;
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(172)

[31mViolation[0m for DAOConstantGas in contract 'GameOfThrones':
    |    function godAutomaticCollectFee() internal {
    |        if (godBank >= 1 ether) {
  > |          trueGods.send(godBank);
    |          godBank = 0;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(195)

[31mViolation[0m for DAOConstantGas in contract 'GameOfThrones':
    |    function kingAutomaticCollectFee() internal {
    |        if (kingBank >= 100 finney) {
  > |          madKing.send(kingBank);
    |          kingBank = 0;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(202)

[31mViolation[0m for DAOConstantGas in contract 'GameOfThrones':
    |    function jesterAutomaticCollectFee() internal {
    |        if (jesterBank >= 100 finney) {
  > |          jester.send(jesterBank);
    |          jesterBank = 0;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(209)

[33mWarning[0m for DAOConstantGas in contract 'GameOfThrones':
    |        // Check if the minimum amount if reached
    |        if (amount < 10 finney) {
  > |            msg.sender.send(msg.value);
    |            return false;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(51)

[33mWarning[0m for DAOConstantGas in contract 'GameOfThrones':
    |    function collectFee() {
    |        if (msg.sender == trueGods) {
  > |            trueGods.send(godBank);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(189)

[33mWarning[0m for LockedEther in contract 'GameOfThrones':
  > |contract GameOfThrones {
    |    address public trueGods;
    |    // King's Jester
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(1)

[33mWarning[0m for MissingInputValidation in contract 'GameOfThrones':
    |contract GameOfThrones {
  > |    address public trueGods;
    |    // King's Jester
    |    address public jester;
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(2)

[33mWarning[0m for MissingInputValidation in contract 'GameOfThrones':
    |    address public trueGods;
    |    // King's Jester
  > |    address public jester;
    |    // Record the last collection time
    |    uint public lastCollection;
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'GameOfThrones':
    |    address public jester;
    |    // Record the last collection time
  > |    uint public lastCollection;
    |    // Record king life
    |    uint public onThrone;
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'GameOfThrones':
    |    uint public lastCollection;
    |    // Record king life
  > |    uint public onThrone;
    |    uint public kingCost;
    |    // Piggy Bank Amount
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'GameOfThrones':
    |    // Record king life
    |    uint public onThrone;
  > |    uint public kingCost;
    |    // Piggy Bank Amount
    |    uint public piggyBank;
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'GameOfThrones':
    |    uint public kingCost;
    |    // Piggy Bank Amount
  > |    uint public piggyBank;
    |    // Collected Fee Amount
    |    uint public godBank;
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'GameOfThrones':
    |    uint public piggyBank;
    |    // Collected Fee Amount
  > |    uint public godBank;
    |    uint public jesterBank;
    |    uint public kingBank;
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(13)

[33mWarning[0m for MissingInputValidation in contract 'GameOfThrones':
    |    // Collected Fee Amount
    |    uint public godBank;
  > |    uint public jesterBank;
    |    uint public kingBank;
    |
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(14)

[33mWarning[0m for MissingInputValidation in contract 'GameOfThrones':
    |    uint public godBank;
    |    uint public jesterBank;
  > |    uint public kingBank;
    |
    |    // Track the citizens who helped to arm race
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'GameOfThrones':
    |
    |    // Track the citizens who helped to arm race
  > |    address[] public citizensAddresses;
    |    uint[] public citizensAmounts;
    |    uint32 public totalCitizens;
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(18)

[33mWarning[0m for MissingInputValidation in contract 'GameOfThrones':
    |    // Track the citizens who helped to arm race
    |    address[] public citizensAddresses;
  > |    uint[] public citizensAmounts;
    |    uint32 public totalCitizens;
    |    uint32 public lastCitizenPaid;
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(19)

[33mWarning[0m for MissingInputValidation in contract 'GameOfThrones':
    |    address[] public citizensAddresses;
    |    uint[] public citizensAmounts;
  > |    uint32 public totalCitizens;
    |    uint32 public lastCitizenPaid;
    |    // The mad king establishes the government
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(20)

[33mWarning[0m for MissingInputValidation in contract 'GameOfThrones':
    |    uint[] public citizensAmounts;
    |    uint32 public totalCitizens;
  > |    uint32 public lastCitizenPaid;
    |    // The mad king establishes the government
    |    address public madKing;
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(21)

[33mWarning[0m for MissingInputValidation in contract 'GameOfThrones':
    |    uint32 public lastCitizenPaid;
    |    // The mad king establishes the government
  > |    address public madKing;
    |    // Record how many times the castle had fell
    |    uint32 public round;
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'GameOfThrones':
    |    address public madKing;
    |    // Record how many times the castle had fell
  > |    uint32 public round;
    |    // Amount already paid back in this round
    |    uint public amountAlreadyPaidBack;
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'GameOfThrones':
    |    uint32 public round;
    |    // Amount already paid back in this round
  > |    uint public amountAlreadyPaidBack;
    |    // Amount invested in this round
    |    uint public amountInvested;
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(27)

[33mWarning[0m for MissingInputValidation in contract 'GameOfThrones':
    |    uint public amountAlreadyPaidBack;
    |    // Amount invested in this round
  > |    uint public amountInvested;
    |
    |    uint constant TWENTY_FOUR_HOURS = 60 * 60 * 24;
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(29)

[33mWarning[0m for MissingInputValidation in contract 'GameOfThrones':
    |    }
    |
  > |    function protectKingdom() returns(bool) {
    |        uint amount = msg.value;
    |        // Check if the minimum amount if reached
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(47)

[33mWarning[0m for MissingInputValidation in contract 'GameOfThrones':
    |    }
    |
  > |    function investInTheSystem(uint amount) internal {
    |        // The Castle is still up
    |        lastCollection = block.timestamp;
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(113)

[33mWarning[0m for MissingInputValidation in contract 'GameOfThrones':
    |    // When the mad king decides to give his seat to someone else
    |    // the king cost will be reset to 1 ether
  > |    function abdicate() {
    |        if (msg.sender == madKing && msg.sender != trueGods) {
    |            madKing.send(kingBank);
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(130)

[33mWarning[0m for MissingInputValidation in contract 'GameOfThrones':
    |    }
    |
  > |    function murder() {
    |        uint amount = 100 finney;
    |        if (msg.value >= amount && msg.sender != jester) {
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(147)

[33mWarning[0m for MissingInputValidation in contract 'GameOfThrones':
    |
    |    // Anyone can usurpation the kingship
  > |    function usurpation() {
    |        uint amount = msg.value;
    |        // Add more money for king usurpation cost
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(163)

[33mWarning[0m for MissingInputValidation in contract 'GameOfThrones':
    |
    |    // When the king decides to collect his fees
  > |    function collectFee() {
    |        if (msg.sender == trueGods) {
    |            trueGods.send(godBank);
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(187)

[33mWarning[0m for MissingInputValidation in contract 'GameOfThrones':
    |    }
    |
  > |    function godAutomaticCollectFee() internal {
    |        if (godBank >= 1 ether) {
    |          trueGods.send(godBank);
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(193)

[33mWarning[0m for MissingInputValidation in contract 'GameOfThrones':
    |    }
    |
  > |    function kingAutomaticCollectFee() internal {
    |        if (kingBank >= 100 finney) {
    |          madKing.send(kingBank);
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(200)

[33mWarning[0m for MissingInputValidation in contract 'GameOfThrones':
    |    }
    |
  > |    function jesterAutomaticCollectFee() internal {
    |        if (jesterBank >= 100 finney) {
    |          jester.send(jesterBank);
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(207)

[31mViolation[0m for TODAmount in contract 'GameOfThrones':
    |            if (totalCitizens == 1) {
    |                // If there is only one Citizen who contributed, he gets the full Pigg Bank
  > |                citizensAddresses[citizensAddresses.length - 1].send(piggyBank * 95 / 100);
    |            } else if (totalCitizens == 2) {
    |                // If only 2 citizens contributed
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(66)

[31mViolation[0m for TODAmount in contract 'GameOfThrones':
    |            } else if (totalCitizens == 2) {
    |                // If only 2 citizens contributed
  > |                citizensAddresses[citizensAddresses.length - 1].send(piggyBank * 60 / 100);
    |                citizensAddresses[citizensAddresses.length - 2].send(piggyBank * 35 / 100);
    |            } else if (totalCitizens >= 3) {
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(69)

[31mViolation[0m for TODAmount in contract 'GameOfThrones':
    |                // If only 2 citizens contributed
    |                citizensAddresses[citizensAddresses.length - 1].send(piggyBank * 60 / 100);
  > |                citizensAddresses[citizensAddresses.length - 2].send(piggyBank * 35 / 100);
    |            } else if (totalCitizens >= 3) {
    |                // If there is 3 or more citizens who contributed
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(70)

[31mViolation[0m for TODAmount in contract 'GameOfThrones':
    |            } else if (totalCitizens >= 3) {
    |                // If there is 3 or more citizens who contributed
  > |                citizensAddresses[citizensAddresses.length - 1].send(piggyBank * 50 / 100);
    |                citizensAddresses[citizensAddresses.length - 2].send(piggyBank * 30 / 100);
    |                citizensAddresses[citizensAddresses.length - 3].send(piggyBank * 15 / 100);
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(73)

[31mViolation[0m for TODAmount in contract 'GameOfThrones':
    |                // If there is 3 or more citizens who contributed
    |                citizensAddresses[citizensAddresses.length - 1].send(piggyBank * 50 / 100);
  > |                citizensAddresses[citizensAddresses.length - 2].send(piggyBank * 30 / 100);
    |                citizensAddresses[citizensAddresses.length - 3].send(piggyBank * 15 / 100);
    |            }
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(74)

[31mViolation[0m for TODAmount in contract 'GameOfThrones':
    |                citizensAddresses[citizensAddresses.length - 1].send(piggyBank * 50 / 100);
    |                citizensAddresses[citizensAddresses.length - 2].send(piggyBank * 30 / 100);
  > |                citizensAddresses[citizensAddresses.length - 3].send(piggyBank * 15 / 100);
    |            }
    |
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(75)

[31mViolation[0m for TODAmount in contract 'GameOfThrones':
    |            madKing.send(kingBank);
    |            if (piggyBank > kingCost * 40 / 100) {
  > |                madKing.send(kingCost * 40 / 100);
    |                piggyBank -= kingCost * 40 / 100;
    |            }
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(134)

[31mViolation[0m for TODAmount in contract 'GameOfThrones':
    |            }
    |            else {
  > |                madKing.send(piggyBank);
    |                piggyBank = 0;
    |            }
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(138)

[31mViolation[0m for TODAmount in contract 'GameOfThrones':
    |        if (msg.value >= amount && msg.sender != jester) {
    |            // return jester
  > |            jester.send(jesterBank);
    |            jesterBank = 0;
    |
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(151)

[31mViolation[0m for TODAmount in contract 'GameOfThrones':
    |    function collectFee() {
    |        if (msg.sender == trueGods) {
  > |            trueGods.send(godBank);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(189)

[31mViolation[0m for TODReceiver in contract 'GameOfThrones':
    |    function abdicate() {
    |        if (msg.sender == madKing && msg.sender != trueGods) {
  > |            madKing.send(kingBank);
    |            if (piggyBank > kingCost * 40 / 100) {
    |                madKing.send(kingCost * 40 / 100);
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(132)

[31mViolation[0m for TODReceiver in contract 'GameOfThrones':
    |            madKing.send(kingBank);
    |            if (piggyBank > kingCost * 40 / 100) {
  > |                madKing.send(kingCost * 40 / 100);
    |                piggyBank -= kingCost * 40 / 100;
    |            }
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(134)

[31mViolation[0m for TODReceiver in contract 'GameOfThrones':
    |            }
    |            else {
  > |                madKing.send(piggyBank);
    |                piggyBank = 0;
    |            }
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(138)

[31mViolation[0m for TODReceiver in contract 'GameOfThrones':
    |        if (msg.value >= amount && msg.sender != jester) {
    |            // return jester
  > |            jester.send(jesterBank);
    |            jesterBank = 0;
    |
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(151)

[31mViolation[0m for TODReceiver in contract 'GameOfThrones':
    |            if (onThrone + PEACE_PERIOD <= block.timestamp && amount >= kingCost * 150 / 100) {
    |                // return the fees to before king
  > |                madKing.send(kingBank);
    |                // offer sacrifices to the Gods
    |                godBank += amount * 5 / 100;
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(172)

[33mWarning[0m for TODReceiver in contract 'GameOfThrones':
    |        // Check if the minimum amount if reached
    |        if (amount < 10 finney) {
  > |            msg.sender.send(msg.value);
    |            return false;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(51)

[33mWarning[0m for TODReceiver in contract 'GameOfThrones':
    |        // If the amount received is more than 100 ETH return the difference
    |        if (amount > 100 ether) {
  > |            msg.sender.send(msg.value - 100 ether);
    |            amount = 100 ether;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(56)

[33mWarning[0m for TODReceiver in contract 'GameOfThrones':
    |
    |            jester = msg.sender;
  > |            msg.sender.send(msg.value - amount);
    |            investInTheSystem(amount);
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(155)

[33mWarning[0m for TODReceiver in contract 'GameOfThrones':
    |    function collectFee() {
    |        if (msg.sender == trueGods) {
  > |            trueGods.send(godBank);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(189)

[31mViolation[0m for UnhandledException in contract 'GameOfThrones':
    |        // Check if the minimum amount if reached
    |        if (amount < 10 finney) {
  > |            msg.sender.send(msg.value);
    |            return false;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(51)

[31mViolation[0m for UnhandledException in contract 'GameOfThrones':
    |        // If the amount received is more than 100 ETH return the difference
    |        if (amount > 100 ether) {
  > |            msg.sender.send(msg.value - 100 ether);
    |            amount = 100 ether;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(56)

[31mViolation[0m for UnhandledException in contract 'GameOfThrones':
    |            if (totalCitizens == 1) {
    |                // If there is only one Citizen who contributed, he gets the full Pigg Bank
  > |                citizensAddresses[citizensAddresses.length - 1].send(piggyBank * 95 / 100);
    |            } else if (totalCitizens == 2) {
    |                // If only 2 citizens contributed
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(66)

[31mViolation[0m for UnhandledException in contract 'GameOfThrones':
    |            } else if (totalCitizens == 2) {
    |                // If only 2 citizens contributed
  > |                citizensAddresses[citizensAddresses.length - 1].send(piggyBank * 60 / 100);
    |                citizensAddresses[citizensAddresses.length - 2].send(piggyBank * 35 / 100);
    |            } else if (totalCitizens >= 3) {
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(69)

[31mViolation[0m for UnhandledException in contract 'GameOfThrones':
    |                // If only 2 citizens contributed
    |                citizensAddresses[citizensAddresses.length - 1].send(piggyBank * 60 / 100);
  > |                citizensAddresses[citizensAddresses.length - 2].send(piggyBank * 35 / 100);
    |            } else if (totalCitizens >= 3) {
    |                // If there is 3 or more citizens who contributed
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(70)

[31mViolation[0m for UnhandledException in contract 'GameOfThrones':
    |            } else if (totalCitizens >= 3) {
    |                // If there is 3 or more citizens who contributed
  > |                citizensAddresses[citizensAddresses.length - 1].send(piggyBank * 50 / 100);
    |                citizensAddresses[citizensAddresses.length - 2].send(piggyBank * 30 / 100);
    |                citizensAddresses[citizensAddresses.length - 3].send(piggyBank * 15 / 100);
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(73)

[31mViolation[0m for UnhandledException in contract 'GameOfThrones':
    |                // If there is 3 or more citizens who contributed
    |                citizensAddresses[citizensAddresses.length - 1].send(piggyBank * 50 / 100);
  > |                citizensAddresses[citizensAddresses.length - 2].send(piggyBank * 30 / 100);
    |                citizensAddresses[citizensAddresses.length - 3].send(piggyBank * 15 / 100);
    |            }
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(74)

[31mViolation[0m for UnhandledException in contract 'GameOfThrones':
    |                citizensAddresses[citizensAddresses.length - 1].send(piggyBank * 50 / 100);
    |                citizensAddresses[citizensAddresses.length - 2].send(piggyBank * 30 / 100);
  > |                citizensAddresses[citizensAddresses.length - 3].send(piggyBank * 15 / 100);
    |            }
    |
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(75)

[31mViolation[0m for UnhandledException in contract 'GameOfThrones':
    |
    |            while (citizensAmounts[lastCitizenPaid] < (address(this).balance - piggyBank - godBank - kingBank - jesterBank) && lastCitizenPaid <= totalCitizens) {
  > |                citizensAddresses[lastCitizenPaid].send(citizensAmounts[lastCitizenPaid]);
    |                amountAlreadyPaidBack += citizensAmounts[lastCitizenPaid];
    |                lastCitizenPaid += 1;
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(101)

[31mViolation[0m for UnhandledException in contract 'GameOfThrones':
    |    function abdicate() {
    |        if (msg.sender == madKing && msg.sender != trueGods) {
  > |            madKing.send(kingBank);
    |            if (piggyBank > kingCost * 40 / 100) {
    |                madKing.send(kingCost * 40 / 100);
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(132)

[31mViolation[0m for UnhandledException in contract 'GameOfThrones':
    |            madKing.send(kingBank);
    |            if (piggyBank > kingCost * 40 / 100) {
  > |                madKing.send(kingCost * 40 / 100);
    |                piggyBank -= kingCost * 40 / 100;
    |            }
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(134)

[31mViolation[0m for UnhandledException in contract 'GameOfThrones':
    |            }
    |            else {
  > |                madKing.send(piggyBank);
    |                piggyBank = 0;
    |            }
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(138)

[31mViolation[0m for UnhandledException in contract 'GameOfThrones':
    |        if (msg.value >= amount && msg.sender != jester) {
    |            // return jester
  > |            jester.send(jesterBank);
    |            jesterBank = 0;
    |
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(151)

[31mViolation[0m for UnhandledException in contract 'GameOfThrones':
    |
    |            jester = msg.sender;
  > |            msg.sender.send(msg.value - amount);
    |            investInTheSystem(amount);
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(155)

[31mViolation[0m for UnhandledException in contract 'GameOfThrones':
    |            if (onThrone + PEACE_PERIOD <= block.timestamp && amount >= kingCost * 150 / 100) {
    |                // return the fees to before king
  > |                madKing.send(kingBank);
    |                // offer sacrifices to the Gods
    |                godBank += amount * 5 / 100;
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(172)

[31mViolation[0m for UnhandledException in contract 'GameOfThrones':
    |    function collectFee() {
    |        if (msg.sender == trueGods) {
  > |            trueGods.send(godBank);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(189)

[31mViolation[0m for UnhandledException in contract 'GameOfThrones':
    |    function godAutomaticCollectFee() internal {
    |        if (godBank >= 1 ether) {
  > |          trueGods.send(godBank);
    |          godBank = 0;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(195)

[31mViolation[0m for UnhandledException in contract 'GameOfThrones':
    |    function kingAutomaticCollectFee() internal {
    |        if (kingBank >= 100 finney) {
  > |          madKing.send(kingBank);
    |          kingBank = 0;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(202)

[31mViolation[0m for UnhandledException in contract 'GameOfThrones':
    |    function jesterAutomaticCollectFee() internal {
    |        if (jesterBank >= 100 finney) {
  > |          jester.send(jesterBank);
    |          jesterBank = 0;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(209)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GameOfThrones':
    |    function abdicate() {
    |        if (msg.sender == madKing && msg.sender != trueGods) {
  > |            madKing.send(kingBank);
    |            if (piggyBank > kingCost * 40 / 100) {
    |                madKing.send(kingCost * 40 / 100);
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(132)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GameOfThrones':
    |            madKing.send(kingBank);
    |            if (piggyBank > kingCost * 40 / 100) {
  > |                madKing.send(kingCost * 40 / 100);
    |                piggyBank -= kingCost * 40 / 100;
    |            }
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(134)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GameOfThrones':
    |            }
    |            else {
  > |                madKing.send(piggyBank);
    |                piggyBank = 0;
    |            }
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(138)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GameOfThrones':
    |            if (onThrone + PEACE_PERIOD <= block.timestamp && amount >= kingCost * 150 / 100) {
    |                // return the fees to before king
  > |                madKing.send(kingBank);
    |                // offer sacrifices to the Gods
    |                godBank += amount * 5 / 100;
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(172)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GameOfThrones':
    |    function collectFee() {
    |        if (msg.sender == trueGods) {
  > |            trueGods.send(godBank);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(189)

[31mViolation[0m for UnrestrictedWrite in contract 'GameOfThrones':
    |contract GameOfThrones {
  > |    address public trueGods;
    |    // King's Jester
    |    address public jester;
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(2)

[31mViolation[0m for UnrestrictedWrite in contract 'GameOfThrones':
    |            }
    |
  > |            godBank += piggyBank * 5 / 100;
    |            // Define the new Piggy Bank
    |            piggyBank = 0;
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(78)

[31mViolation[0m for UnrestrictedWrite in contract 'GameOfThrones':
    |            godBank += piggyBank * 5 / 100;
    |            // Define the new Piggy Bank
  > |            piggyBank = 0;
    |
    |            // Define the new Castle
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(80)

[31mViolation[0m for UnrestrictedWrite in contract 'GameOfThrones':
    |
    |            // Define the new Castle
  > |            jester = msg.sender;
    |
    |            citizensAddresses.push(msg.sender);
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(83)

[31mViolation[0m for UnrestrictedWrite in contract 'GameOfThrones':
    |            jester = msg.sender;
    |
  > |            citizensAddresses.push(msg.sender);
    |            citizensAmounts.push(amount * 110 / 100);
    |            totalCitizens += 1;
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(85)

[31mViolation[0m for UnrestrictedWrite in contract 'GameOfThrones':
    |
    |            citizensAddresses.push(msg.sender);
  > |            citizensAmounts.push(amount * 110 / 100);
    |            totalCitizens += 1;
    |            investInTheSystem(amount);
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(86)

[31mViolation[0m for UnrestrictedWrite in contract 'GameOfThrones':
    |            citizensAddresses.push(msg.sender);
    |            citizensAmounts.push(amount * 110 / 100);
  > |            totalCitizens += 1;
    |            investInTheSystem(amount);
    |            godAutomaticCollectFee();
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(87)

[31mViolation[0m for UnrestrictedWrite in contract 'GameOfThrones':
    |            godAutomaticCollectFee();
    |            // 95% goes to the Piggy Bank
  > |            piggyBank += amount * 90 / 100;
    |
    |            round += 1;
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(91)

[31mViolation[0m for UnrestrictedWrite in contract 'GameOfThrones':
    |            piggyBank += amount * 90 / 100;
    |
  > |            round += 1;
    |        } else {
    |            citizensAddresses.push(msg.sender);
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(93)

[31mViolation[0m for UnrestrictedWrite in contract 'GameOfThrones':
    |            round += 1;
    |        } else {
  > |            citizensAddresses.push(msg.sender);
    |            citizensAmounts.push(amount * 110 / 100);
    |            totalCitizens += 1;
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(95)

[31mViolation[0m for UnrestrictedWrite in contract 'GameOfThrones':
    |        } else {
    |            citizensAddresses.push(msg.sender);
  > |            citizensAmounts.push(amount * 110 / 100);
    |            totalCitizens += 1;
    |            investInTheSystem(amount);
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(96)

[31mViolation[0m for UnrestrictedWrite in contract 'GameOfThrones':
    |            citizensAddresses.push(msg.sender);
    |            citizensAmounts.push(amount * 110 / 100);
  > |            totalCitizens += 1;
    |            investInTheSystem(amount);
    |
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(97)

[31mViolation[0m for UnrestrictedWrite in contract 'GameOfThrones':
    |            while (citizensAmounts[lastCitizenPaid] < (address(this).balance - piggyBank - godBank - kingBank - jesterBank) && lastCitizenPaid <= totalCitizens) {
    |                citizensAddresses[lastCitizenPaid].send(citizensAmounts[lastCitizenPaid]);
  > |                amountAlreadyPaidBack += citizensAmounts[lastCitizenPaid];
    |                lastCitizenPaid += 1;
    |            }
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(102)

[31mViolation[0m for UnrestrictedWrite in contract 'GameOfThrones':
    |                citizensAddresses[lastCitizenPaid].send(citizensAmounts[lastCitizenPaid]);
    |                amountAlreadyPaidBack += citizensAmounts[lastCitizenPaid];
  > |                lastCitizenPaid += 1;
    |            }
    |        }
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(103)

[31mViolation[0m for UnrestrictedWrite in contract 'GameOfThrones':
    |    function investInTheSystem(uint amount) internal {
    |        // The Castle is still up
  > |        lastCollection = block.timestamp;
    |        amountInvested += amount;
    |        // The Jetster takes 5%
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(115)

[31mViolation[0m for UnrestrictedWrite in contract 'GameOfThrones':
    |        // The Castle is still up
    |        lastCollection = block.timestamp;
  > |        amountInvested += amount;
    |        // The Jetster takes 5%
    |        jesterBank += amount * 5 / 100;
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(116)

[31mViolation[0m for UnrestrictedWrite in contract 'GameOfThrones':
    |        amountInvested += amount;
    |        // The Jetster takes 5%
  > |        jesterBank += amount * 5 / 100;
    |        // The mad king takes 5%
    |        kingBank += amount * 5 / 100;
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(118)

[31mViolation[0m for UnrestrictedWrite in contract 'GameOfThrones':
    |        jesterBank += amount * 5 / 100;
    |        // The mad king takes 5%
  > |        kingBank += amount * 5 / 100;
    |        // 5% goes to the Piggy Bank
    |        piggyBank += (amount * 5 / 100);
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(120)

[31mViolation[0m for UnrestrictedWrite in contract 'GameOfThrones':
    |        kingBank += amount * 5 / 100;
    |        // 5% goes to the Piggy Bank
  > |        piggyBank += (amount * 5 / 100);
    |
    |        kingAutomaticCollectFee();
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(122)

[31mViolation[0m for UnrestrictedWrite in contract 'GameOfThrones':
    |        if (msg.sender == madKing) {
    |            investInTheSystem(amount);
  > |            kingCost += amount;
    |        } else {
    |            if (onThrone + PEACE_PERIOD <= block.timestamp && amount >= kingCost * 150 / 100) {
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(168)

[31mViolation[0m for UnrestrictedWrite in contract 'GameOfThrones':
    |        if (godBank >= 1 ether) {
    |          trueGods.send(godBank);
  > |          godBank = 0;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(196)

[31mViolation[0m for UnrestrictedWrite in contract 'GameOfThrones':
    |        if (kingBank >= 100 finney) {
    |          madKing.send(kingBank);
  > |          kingBank = 0;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(203)

[31mViolation[0m for UnrestrictedWrite in contract 'GameOfThrones':
    |        if (jesterBank >= 100 finney) {
    |          jester.send(jesterBank);
  > |          jesterBank = 0;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(210)

[33mWarning[0m for UnrestrictedWrite in contract 'GameOfThrones':
    |    function investInTheSystem(uint amount) internal {
    |        // The Castle is still up
  > |        lastCollection = block.timestamp;
    |        amountInvested += amount;
    |        // The Jetster takes 5%
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(115)

[33mWarning[0m for UnrestrictedWrite in contract 'GameOfThrones':
    |        // The Castle is still up
    |        lastCollection = block.timestamp;
  > |        amountInvested += amount;
    |        // The Jetster takes 5%
    |        jesterBank += amount * 5 / 100;
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(116)

[33mWarning[0m for UnrestrictedWrite in contract 'GameOfThrones':
    |            if (piggyBank > kingCost * 40 / 100) {
    |                madKing.send(kingCost * 40 / 100);
  > |                piggyBank -= kingCost * 40 / 100;
    |            }
    |            else {
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(135)

[33mWarning[0m for UnrestrictedWrite in contract 'GameOfThrones':
    |            else {
    |                madKing.send(piggyBank);
  > |                piggyBank = 0;
    |            }
    |
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(139)

[33mWarning[0m for UnrestrictedWrite in contract 'GameOfThrones':
    |            }
    |
  > |            madKing = trueGods;
    |            kingCost = 1 ether;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(142)

[33mWarning[0m for UnrestrictedWrite in contract 'GameOfThrones':
    |
    |            madKing = trueGods;
  > |            kingCost = 1 ether;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(143)

[33mWarning[0m for UnrestrictedWrite in contract 'GameOfThrones':
    |                madKing.send(kingBank);
    |                // offer sacrifices to the Gods
  > |                godBank += amount * 5 / 100;
    |                // new king
    |                kingCost = amount;
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(174)

[33mWarning[0m for UnrestrictedWrite in contract 'GameOfThrones':
    |                godBank += amount * 5 / 100;
    |                // new king
  > |                kingCost = amount;
    |                madKing = msg.sender;
    |                onThrone = block.timestamp;
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(176)

[33mWarning[0m for UnrestrictedWrite in contract 'GameOfThrones':
    |                // new king
    |                kingCost = amount;
  > |                madKing = msg.sender;
    |                onThrone = block.timestamp;
    |                investInTheSystem(amount);
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'GameOfThrones':
    |                kingCost = amount;
    |                madKing = msg.sender;
  > |                onThrone = block.timestamp;
    |                investInTheSystem(amount);
    |            } else {
  at /home/jiaming/mavs_srcs/contract@0x9497043f4cd9450867479f3fd873d80d9321094c.sol(178)


