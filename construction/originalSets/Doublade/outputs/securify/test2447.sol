Processing contract: /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol:GameOfThrones
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
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(69)

[31mViolation[0m for DAOConstantGas in contract 'GameOfThrones':
    |
    |            while (citizensAmounts[lastCitizenPaid] < (address(this).balance - piggyBank - godBank - kingBank - jesterBank) && lastCitizenPaid <= totalCitizens) {
  > |                citizensAddresses[lastCitizenPaid].send(citizensAmounts[lastCitizenPaid]);
    |                amountAlreadyPaidBack += citizensAmounts[lastCitizenPaid];
    |                lastCitizenPaid += 1;
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(110)

[31mViolation[0m for DAOConstantGas in contract 'GameOfThrones':
    |    function abdicate() {
    |        if (msg.sender == madKing && msg.sender != trueGods) {
  > |            madKing.send(kingBank);
    |            if (piggyBank > kingCost * 40 / 100) {
    |                madKing.send(kingCost * 40 / 100);
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(141)

[31mViolation[0m for DAOConstantGas in contract 'GameOfThrones':
    |            madKing.send(kingBank);
    |            if (piggyBank > kingCost * 40 / 100) {
  > |                madKing.send(kingCost * 40 / 100);
    |                piggyBank -= kingCost * 40 / 100;
    |            }
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(143)

[31mViolation[0m for DAOConstantGas in contract 'GameOfThrones':
    |            }
    |            else {
  > |                madKing.send(piggyBank);
    |                piggyBank = 0;
    |            }
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(147)

[31mViolation[0m for DAOConstantGas in contract 'GameOfThrones':
    |        if (msg.value >= amount && msg.sender != jester) {
    |            // return jester
  > |            jester.send(jesterBank);
    |            jesterBank = 0;
    |
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(160)

[31mViolation[0m for DAOConstantGas in contract 'GameOfThrones':
    |
    |            jester = msg.sender;
  > |            msg.sender.send(msg.value - amount);
    |            investInTheSystem(amount);
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(164)

[31mViolation[0m for DAOConstantGas in contract 'GameOfThrones':
    |            if (onThrone + PEACE_PERIOD <= block.timestamp && amount >= kingCost * 150 / 100) {
    |                // return the fees to before king
  > |                madKing.send(kingBank);
    |                // offer sacrifices to the Gods
    |                godBank += amount * 5 / 100;
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(181)

[31mViolation[0m for DAOConstantGas in contract 'GameOfThrones':
    |    function godAutomaticCollectFee() internal {
    |        if (godBank >= 1 ether) {
  > |          trueGods.send(godBank);
    |          godBank = 0;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(204)

[31mViolation[0m for DAOConstantGas in contract 'GameOfThrones':
    |    function kingAutomaticCollectFee() internal {
    |        if (kingBank >= 100 finney) {
  > |          madKing.send(kingBank);
    |          kingBank = 0;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(211)

[31mViolation[0m for DAOConstantGas in contract 'GameOfThrones':
    |    function jesterAutomaticCollectFee() internal {
    |        if (jesterBank >= 100 finney) {
  > |          jester.send(jesterBank);
    |          jesterBank = 0;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(218)

[33mWarning[0m for DAOConstantGas in contract 'GameOfThrones':
    |        // Check if the minimum amount if reached
    |        if (amount < 10 finney) {
  > |            msg.sender.send(msg.value);
    |            return false;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(54)

[33mWarning[0m for DAOConstantGas in contract 'GameOfThrones':
    |    function collectFee() {
    |        if (msg.sender == trueGods) {
  > |            trueGods.send(godBank);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(198)

[33mWarning[0m for LockedEther in contract 'GameOfThrones':
  > |contract GameOfThrones {
    |    address public trueGods;
    |    // King's Jester
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(1)

[33mWarning[0m for MissingInputValidation in contract 'GameOfThrones':
    |contract GameOfThrones {
  > |    address public trueGods;
    |    // King's Jester
    |    address public jester;
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(2)

[33mWarning[0m for MissingInputValidation in contract 'GameOfThrones':
    |    address public trueGods;
    |    // King's Jester
  > |    address public jester;
    |    // Record the last collection time
    |    uint public lastCollection;
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'GameOfThrones':
    |    address public jester;
    |    // Record the last collection time
  > |    uint public lastCollection;
    |    // Record the last fell time
    |    uint public lastFell;
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'GameOfThrones':
    |    uint public lastCollection;
    |    // Record the last fell time
  > |    uint public lastFell;
    |    // Record king life
    |    uint public onThrone;
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'GameOfThrones':
    |    uint public lastFell;
    |    // Record king life
  > |    uint public onThrone;
    |    uint public kingCost;
    |    // Piggy Bank Amount
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'GameOfThrones':
    |    // Record king life
    |    uint public onThrone;
  > |    uint public kingCost;
    |    // Piggy Bank Amount
    |    uint public piggyBank;
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'GameOfThrones':
    |    uint public kingCost;
    |    // Piggy Bank Amount
  > |    uint public piggyBank;
    |    // Collected Fee Amount
    |    uint public godBank;
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(13)

[33mWarning[0m for MissingInputValidation in contract 'GameOfThrones':
    |    uint public piggyBank;
    |    // Collected Fee Amount
  > |    uint public godBank;
    |    uint public jesterBank;
    |    uint public kingBank;
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'GameOfThrones':
    |    // Collected Fee Amount
    |    uint public godBank;
  > |    uint public jesterBank;
    |    uint public kingBank;
    |
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'GameOfThrones':
    |    uint public godBank;
    |    uint public jesterBank;
  > |    uint public kingBank;
    |
    |    // Track the citizens who helped to arm race
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(17)

[33mWarning[0m for MissingInputValidation in contract 'GameOfThrones':
    |
    |    // Track the citizens who helped to arm race
  > |    address[] public citizensAddresses;
    |    uint[] public citizensAmounts;
    |    uint32 public totalCitizens;
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(20)

[33mWarning[0m for MissingInputValidation in contract 'GameOfThrones':
    |    // Track the citizens who helped to arm race
    |    address[] public citizensAddresses;
  > |    uint[] public citizensAmounts;
    |    uint32 public totalCitizens;
    |    uint32 public lastCitizenPaid;
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(21)

[33mWarning[0m for MissingInputValidation in contract 'GameOfThrones':
    |    address[] public citizensAddresses;
    |    uint[] public citizensAmounts;
  > |    uint32 public totalCitizens;
    |    uint32 public lastCitizenPaid;
    |    // The mad king establishes the government
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(22)

[33mWarning[0m for MissingInputValidation in contract 'GameOfThrones':
    |    uint[] public citizensAmounts;
    |    uint32 public totalCitizens;
  > |    uint32 public lastCitizenPaid;
    |    // The mad king establishes the government
    |    address public madKing;
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'GameOfThrones':
    |    uint32 public lastCitizenPaid;
    |    // The mad king establishes the government
  > |    address public madKing;
    |    // Record how many times the castle had fell
    |    uint32 public round;
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'GameOfThrones':
    |    address public madKing;
    |    // Record how many times the castle had fell
  > |    uint32 public round;
    |    // Amount already paid back in this round
    |    uint public amountAlreadyPaidBack;
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(27)

[33mWarning[0m for MissingInputValidation in contract 'GameOfThrones':
    |    uint32 public round;
    |    // Amount already paid back in this round
  > |    uint public amountAlreadyPaidBack;
    |    // Amount invested in this round
    |    uint public amountInvested;
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(29)

[33mWarning[0m for MissingInputValidation in contract 'GameOfThrones':
    |    uint public amountAlreadyPaidBack;
    |    // Amount invested in this round
  > |    uint public amountInvested;
    |
    |    uint constant TWENTY_FOUR_HOURS = 60 * 60 * 24;
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(31)

[33mWarning[0m for MissingInputValidation in contract 'GameOfThrones':
    |    }
    |
  > |    function protectKingdom() returns(bool) {
    |        uint amount = msg.value;
    |        // Check if the minimum amount if reached
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(50)

[33mWarning[0m for MissingInputValidation in contract 'GameOfThrones':
    |    }
    |
  > |    function investInTheSystem(uint amount) internal {
    |        // The Castle is still up
    |        lastCollection = block.timestamp;
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(122)

[33mWarning[0m for MissingInputValidation in contract 'GameOfThrones':
    |    // When the mad king decides to give his seat to someone else
    |    // the king cost will be reset to 1 ether
  > |    function abdicate() {
    |        if (msg.sender == madKing && msg.sender != trueGods) {
    |            madKing.send(kingBank);
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(139)

[33mWarning[0m for MissingInputValidation in contract 'GameOfThrones':
    |    }
    |
  > |    function murder() {
    |        uint amount = 100 finney;
    |        if (msg.value >= amount && msg.sender != jester) {
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(156)

[33mWarning[0m for MissingInputValidation in contract 'GameOfThrones':
    |
    |    // Anyone can usurpation the kingship
  > |    function usurpation() {
    |        uint amount = msg.value;
    |        // Add more money for king usurpation cost
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(172)

[33mWarning[0m for MissingInputValidation in contract 'GameOfThrones':
    |
    |    // When the king decides to collect his fees
  > |    function collectFee() {
    |        if (msg.sender == trueGods) {
    |            trueGods.send(godBank);
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(196)

[33mWarning[0m for MissingInputValidation in contract 'GameOfThrones':
    |    }
    |
  > |    function godAutomaticCollectFee() internal {
    |        if (godBank >= 1 ether) {
    |          trueGods.send(godBank);
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(202)

[33mWarning[0m for MissingInputValidation in contract 'GameOfThrones':
    |    }
    |
  > |    function kingAutomaticCollectFee() internal {
    |        if (kingBank >= 100 finney) {
    |          madKing.send(kingBank);
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(209)

[33mWarning[0m for MissingInputValidation in contract 'GameOfThrones':
    |    }
    |
  > |    function jesterAutomaticCollectFee() internal {
    |        if (jesterBank >= 100 finney) {
    |          jester.send(jesterBank);
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(216)

[31mViolation[0m for TODAmount in contract 'GameOfThrones':
    |            if (totalCitizens == 1) {
    |                // If there is only one Citizen who contributed, he gets the full Pigg Bank
  > |                citizensAddresses[citizensAddresses.length - 1].send(piggyBank * 95 / 100);
    |            } else if (totalCitizens == 2) {
    |                // If only 2 citizens contributed
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(69)

[31mViolation[0m for TODAmount in contract 'GameOfThrones':
    |            } else if (totalCitizens == 2) {
    |                // If only 2 citizens contributed
  > |                citizensAddresses[citizensAddresses.length - 1].send(piggyBank * 60 / 100);
    |                citizensAddresses[citizensAddresses.length - 2].send(piggyBank * 35 / 100);
    |            } else if (totalCitizens >= 3) {
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(72)

[31mViolation[0m for TODAmount in contract 'GameOfThrones':
    |                // If only 2 citizens contributed
    |                citizensAddresses[citizensAddresses.length - 1].send(piggyBank * 60 / 100);
  > |                citizensAddresses[citizensAddresses.length - 2].send(piggyBank * 35 / 100);
    |            } else if (totalCitizens >= 3) {
    |                // If there is 3 or more citizens who contributed
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(73)

[31mViolation[0m for TODAmount in contract 'GameOfThrones':
    |            } else if (totalCitizens >= 3) {
    |                // If there is 3 or more citizens who contributed
  > |                citizensAddresses[citizensAddresses.length - 1].send(piggyBank * 50 / 100);
    |                citizensAddresses[citizensAddresses.length - 2].send(piggyBank * 30 / 100);
    |                citizensAddresses[citizensAddresses.length - 3].send(piggyBank * 15 / 100);
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(76)

[31mViolation[0m for TODAmount in contract 'GameOfThrones':
    |                // If there is 3 or more citizens who contributed
    |                citizensAddresses[citizensAddresses.length - 1].send(piggyBank * 50 / 100);
  > |                citizensAddresses[citizensAddresses.length - 2].send(piggyBank * 30 / 100);
    |                citizensAddresses[citizensAddresses.length - 3].send(piggyBank * 15 / 100);
    |            }
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(77)

[31mViolation[0m for TODAmount in contract 'GameOfThrones':
    |                citizensAddresses[citizensAddresses.length - 1].send(piggyBank * 50 / 100);
    |                citizensAddresses[citizensAddresses.length - 2].send(piggyBank * 30 / 100);
  > |                citizensAddresses[citizensAddresses.length - 3].send(piggyBank * 15 / 100);
    |            }
    |
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(78)

[31mViolation[0m for TODAmount in contract 'GameOfThrones':
    |            madKing.send(kingBank);
    |            if (piggyBank > kingCost * 40 / 100) {
  > |                madKing.send(kingCost * 40 / 100);
    |                piggyBank -= kingCost * 40 / 100;
    |            }
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(143)

[31mViolation[0m for TODAmount in contract 'GameOfThrones':
    |            }
    |            else {
  > |                madKing.send(piggyBank);
    |                piggyBank = 0;
    |            }
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(147)

[31mViolation[0m for TODAmount in contract 'GameOfThrones':
    |        if (msg.value >= amount && msg.sender != jester) {
    |            // return jester
  > |            jester.send(jesterBank);
    |            jesterBank = 0;
    |
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(160)

[31mViolation[0m for TODAmount in contract 'GameOfThrones':
    |    function collectFee() {
    |        if (msg.sender == trueGods) {
  > |            trueGods.send(godBank);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(198)

[31mViolation[0m for TODReceiver in contract 'GameOfThrones':
    |    function abdicate() {
    |        if (msg.sender == madKing && msg.sender != trueGods) {
  > |            madKing.send(kingBank);
    |            if (piggyBank > kingCost * 40 / 100) {
    |                madKing.send(kingCost * 40 / 100);
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(141)

[31mViolation[0m for TODReceiver in contract 'GameOfThrones':
    |            madKing.send(kingBank);
    |            if (piggyBank > kingCost * 40 / 100) {
  > |                madKing.send(kingCost * 40 / 100);
    |                piggyBank -= kingCost * 40 / 100;
    |            }
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(143)

[31mViolation[0m for TODReceiver in contract 'GameOfThrones':
    |            }
    |            else {
  > |                madKing.send(piggyBank);
    |                piggyBank = 0;
    |            }
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(147)

[31mViolation[0m for TODReceiver in contract 'GameOfThrones':
    |        if (msg.value >= amount && msg.sender != jester) {
    |            // return jester
  > |            jester.send(jesterBank);
    |            jesterBank = 0;
    |
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(160)

[31mViolation[0m for TODReceiver in contract 'GameOfThrones':
    |            if (onThrone + PEACE_PERIOD <= block.timestamp && amount >= kingCost * 150 / 100) {
    |                // return the fees to before king
  > |                madKing.send(kingBank);
    |                // offer sacrifices to the Gods
    |                godBank += amount * 5 / 100;
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(181)

[33mWarning[0m for TODReceiver in contract 'GameOfThrones':
    |        // Check if the minimum amount if reached
    |        if (amount < 10 finney) {
  > |            msg.sender.send(msg.value);
    |            return false;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(54)

[33mWarning[0m for TODReceiver in contract 'GameOfThrones':
    |        // If the amount received is more than 100 ETH return the difference
    |        if (amount > 100 ether) {
  > |            msg.sender.send(msg.value - 100 ether);
    |            amount = 100 ether;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(59)

[33mWarning[0m for TODReceiver in contract 'GameOfThrones':
    |
    |            jester = msg.sender;
  > |            msg.sender.send(msg.value - amount);
    |            investInTheSystem(amount);
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(164)

[33mWarning[0m for TODReceiver in contract 'GameOfThrones':
    |    function collectFee() {
    |        if (msg.sender == trueGods) {
  > |            trueGods.send(godBank);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(198)

[31mViolation[0m for UnhandledException in contract 'GameOfThrones':
    |        // Check if the minimum amount if reached
    |        if (amount < 10 finney) {
  > |            msg.sender.send(msg.value);
    |            return false;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(54)

[31mViolation[0m for UnhandledException in contract 'GameOfThrones':
    |        // If the amount received is more than 100 ETH return the difference
    |        if (amount > 100 ether) {
  > |            msg.sender.send(msg.value - 100 ether);
    |            amount = 100 ether;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(59)

[31mViolation[0m for UnhandledException in contract 'GameOfThrones':
    |            if (totalCitizens == 1) {
    |                // If there is only one Citizen who contributed, he gets the full Pigg Bank
  > |                citizensAddresses[citizensAddresses.length - 1].send(piggyBank * 95 / 100);
    |            } else if (totalCitizens == 2) {
    |                // If only 2 citizens contributed
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(69)

[31mViolation[0m for UnhandledException in contract 'GameOfThrones':
    |            } else if (totalCitizens == 2) {
    |                // If only 2 citizens contributed
  > |                citizensAddresses[citizensAddresses.length - 1].send(piggyBank * 60 / 100);
    |                citizensAddresses[citizensAddresses.length - 2].send(piggyBank * 35 / 100);
    |            } else if (totalCitizens >= 3) {
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(72)

[31mViolation[0m for UnhandledException in contract 'GameOfThrones':
    |                // If only 2 citizens contributed
    |                citizensAddresses[citizensAddresses.length - 1].send(piggyBank * 60 / 100);
  > |                citizensAddresses[citizensAddresses.length - 2].send(piggyBank * 35 / 100);
    |            } else if (totalCitizens >= 3) {
    |                // If there is 3 or more citizens who contributed
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(73)

[31mViolation[0m for UnhandledException in contract 'GameOfThrones':
    |            } else if (totalCitizens >= 3) {
    |                // If there is 3 or more citizens who contributed
  > |                citizensAddresses[citizensAddresses.length - 1].send(piggyBank * 50 / 100);
    |                citizensAddresses[citizensAddresses.length - 2].send(piggyBank * 30 / 100);
    |                citizensAddresses[citizensAddresses.length - 3].send(piggyBank * 15 / 100);
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(76)

[31mViolation[0m for UnhandledException in contract 'GameOfThrones':
    |                // If there is 3 or more citizens who contributed
    |                citizensAddresses[citizensAddresses.length - 1].send(piggyBank * 50 / 100);
  > |                citizensAddresses[citizensAddresses.length - 2].send(piggyBank * 30 / 100);
    |                citizensAddresses[citizensAddresses.length - 3].send(piggyBank * 15 / 100);
    |            }
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(77)

[31mViolation[0m for UnhandledException in contract 'GameOfThrones':
    |                citizensAddresses[citizensAddresses.length - 1].send(piggyBank * 50 / 100);
    |                citizensAddresses[citizensAddresses.length - 2].send(piggyBank * 30 / 100);
  > |                citizensAddresses[citizensAddresses.length - 3].send(piggyBank * 15 / 100);
    |            }
    |
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(78)

[31mViolation[0m for UnhandledException in contract 'GameOfThrones':
    |
    |            while (citizensAmounts[lastCitizenPaid] < (address(this).balance - piggyBank - godBank - kingBank - jesterBank) && lastCitizenPaid <= totalCitizens) {
  > |                citizensAddresses[lastCitizenPaid].send(citizensAmounts[lastCitizenPaid]);
    |                amountAlreadyPaidBack += citizensAmounts[lastCitizenPaid];
    |                lastCitizenPaid += 1;
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(110)

[31mViolation[0m for UnhandledException in contract 'GameOfThrones':
    |    function abdicate() {
    |        if (msg.sender == madKing && msg.sender != trueGods) {
  > |            madKing.send(kingBank);
    |            if (piggyBank > kingCost * 40 / 100) {
    |                madKing.send(kingCost * 40 / 100);
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(141)

[31mViolation[0m for UnhandledException in contract 'GameOfThrones':
    |            madKing.send(kingBank);
    |            if (piggyBank > kingCost * 40 / 100) {
  > |                madKing.send(kingCost * 40 / 100);
    |                piggyBank -= kingCost * 40 / 100;
    |            }
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(143)

[31mViolation[0m for UnhandledException in contract 'GameOfThrones':
    |            }
    |            else {
  > |                madKing.send(piggyBank);
    |                piggyBank = 0;
    |            }
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(147)

[31mViolation[0m for UnhandledException in contract 'GameOfThrones':
    |        if (msg.value >= amount && msg.sender != jester) {
    |            // return jester
  > |            jester.send(jesterBank);
    |            jesterBank = 0;
    |
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(160)

[31mViolation[0m for UnhandledException in contract 'GameOfThrones':
    |
    |            jester = msg.sender;
  > |            msg.sender.send(msg.value - amount);
    |            investInTheSystem(amount);
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(164)

[31mViolation[0m for UnhandledException in contract 'GameOfThrones':
    |            if (onThrone + PEACE_PERIOD <= block.timestamp && amount >= kingCost * 150 / 100) {
    |                // return the fees to before king
  > |                madKing.send(kingBank);
    |                // offer sacrifices to the Gods
    |                godBank += amount * 5 / 100;
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(181)

[31mViolation[0m for UnhandledException in contract 'GameOfThrones':
    |    function collectFee() {
    |        if (msg.sender == trueGods) {
  > |            trueGods.send(godBank);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(198)

[31mViolation[0m for UnhandledException in contract 'GameOfThrones':
    |    function godAutomaticCollectFee() internal {
    |        if (godBank >= 1 ether) {
  > |          trueGods.send(godBank);
    |          godBank = 0;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(204)

[31mViolation[0m for UnhandledException in contract 'GameOfThrones':
    |    function kingAutomaticCollectFee() internal {
    |        if (kingBank >= 100 finney) {
  > |          madKing.send(kingBank);
    |          kingBank = 0;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(211)

[31mViolation[0m for UnhandledException in contract 'GameOfThrones':
    |    function jesterAutomaticCollectFee() internal {
    |        if (jesterBank >= 100 finney) {
  > |          jester.send(jesterBank);
    |          jesterBank = 0;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(218)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GameOfThrones':
    |    function abdicate() {
    |        if (msg.sender == madKing && msg.sender != trueGods) {
  > |            madKing.send(kingBank);
    |            if (piggyBank > kingCost * 40 / 100) {
    |                madKing.send(kingCost * 40 / 100);
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(141)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GameOfThrones':
    |            madKing.send(kingBank);
    |            if (piggyBank > kingCost * 40 / 100) {
  > |                madKing.send(kingCost * 40 / 100);
    |                piggyBank -= kingCost * 40 / 100;
    |            }
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(143)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GameOfThrones':
    |            }
    |            else {
  > |                madKing.send(piggyBank);
    |                piggyBank = 0;
    |            }
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(147)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GameOfThrones':
    |            if (onThrone + PEACE_PERIOD <= block.timestamp && amount >= kingCost * 150 / 100) {
    |                // return the fees to before king
  > |                madKing.send(kingBank);
    |                // offer sacrifices to the Gods
    |                godBank += amount * 5 / 100;
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(181)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GameOfThrones':
    |    function collectFee() {
    |        if (msg.sender == trueGods) {
  > |            trueGods.send(godBank);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(198)

[31mViolation[0m for UnrestrictedWrite in contract 'GameOfThrones':
    |contract GameOfThrones {
  > |    address public trueGods;
    |    // King's Jester
    |    address public jester;
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(2)

[31mViolation[0m for UnrestrictedWrite in contract 'GameOfThrones':
    |            }
    |
  > |            godBank += piggyBank * 5 / 100;
    |            // Define the new Piggy Bank
    |            piggyBank = 0;
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(81)

[31mViolation[0m for UnrestrictedWrite in contract 'GameOfThrones':
    |            godBank += piggyBank * 5 / 100;
    |            // Define the new Piggy Bank
  > |            piggyBank = 0;
    |
    |            // Define the new Castle
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(83)

[31mViolation[0m for UnrestrictedWrite in contract 'GameOfThrones':
    |
    |            // Define the new Castle
  > |            jester = msg.sender;
    |
    |            lastFell = block.timestamp;
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(86)

[31mViolation[0m for UnrestrictedWrite in contract 'GameOfThrones':
    |            jester = msg.sender;
    |
  > |            lastFell = block.timestamp;
    |            citizensAddresses.push(msg.sender);
    |            citizensAmounts.push(amount * 110 / 100);
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(88)

[31mViolation[0m for UnrestrictedWrite in contract 'GameOfThrones':
    |
    |            lastFell = block.timestamp;
  > |            citizensAddresses.push(msg.sender);
    |            citizensAmounts.push(amount * 110 / 100);
    |            totalCitizens += 1;
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(89)

[31mViolation[0m for UnrestrictedWrite in contract 'GameOfThrones':
    |            lastFell = block.timestamp;
    |            citizensAddresses.push(msg.sender);
  > |            citizensAmounts.push(amount * 110 / 100);
    |            totalCitizens += 1;
    |            investInTheSystem(amount);
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(90)

[31mViolation[0m for UnrestrictedWrite in contract 'GameOfThrones':
    |            citizensAddresses.push(msg.sender);
    |            citizensAmounts.push(amount * 110 / 100);
  > |            totalCitizens += 1;
    |            investInTheSystem(amount);
    |            godAutomaticCollectFee();
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(91)

[31mViolation[0m for UnrestrictedWrite in contract 'GameOfThrones':
    |            godAutomaticCollectFee();
    |            // 95% goes to the Piggy Bank
  > |            piggyBank += amount * 90 / 100;
    |
    |            round += 1;
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(95)

[31mViolation[0m for UnrestrictedWrite in contract 'GameOfThrones':
    |            piggyBank += amount * 90 / 100;
    |
  > |            round += 1;
    |        } else {
    |            if (lastFell + TWENTY_FOUR_HOURS * 2 >= block.timestamp) {
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(97)

[31mViolation[0m for UnrestrictedWrite in contract 'GameOfThrones':
    |        } else {
    |            if (lastFell + TWENTY_FOUR_HOURS * 2 >= block.timestamp) {
  > |                citizensAddresses.push(msg.sender);
    |                citizensAmounts.push(amount * 130 / 100);
    |            } else {
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(100)

[31mViolation[0m for UnrestrictedWrite in contract 'GameOfThrones':
    |            if (lastFell + TWENTY_FOUR_HOURS * 2 >= block.timestamp) {
    |                citizensAddresses.push(msg.sender);
  > |                citizensAmounts.push(amount * 130 / 100);
    |            } else {
    |                citizensAddresses.push(msg.sender);
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(101)

[31mViolation[0m for UnrestrictedWrite in contract 'GameOfThrones':
    |                citizensAmounts.push(amount * 130 / 100);
    |            } else {
  > |                citizensAddresses.push(msg.sender);
    |                citizensAmounts.push(amount * 110 / 100);
    |            }
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(103)

[31mViolation[0m for UnrestrictedWrite in contract 'GameOfThrones':
    |            } else {
    |                citizensAddresses.push(msg.sender);
  > |                citizensAmounts.push(amount * 110 / 100);
    |            }
    |            totalCitizens += 1;
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(104)

[31mViolation[0m for UnrestrictedWrite in contract 'GameOfThrones':
    |                citizensAmounts.push(amount * 110 / 100);
    |            }
  > |            totalCitizens += 1;
    |            investInTheSystem(amount);
    |
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(106)

[31mViolation[0m for UnrestrictedWrite in contract 'GameOfThrones':
    |            while (citizensAmounts[lastCitizenPaid] < (address(this).balance - piggyBank - godBank - kingBank - jesterBank) && lastCitizenPaid <= totalCitizens) {
    |                citizensAddresses[lastCitizenPaid].send(citizensAmounts[lastCitizenPaid]);
  > |                amountAlreadyPaidBack += citizensAmounts[lastCitizenPaid];
    |                lastCitizenPaid += 1;
    |            }
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(111)

[31mViolation[0m for UnrestrictedWrite in contract 'GameOfThrones':
    |                citizensAddresses[lastCitizenPaid].send(citizensAmounts[lastCitizenPaid]);
    |                amountAlreadyPaidBack += citizensAmounts[lastCitizenPaid];
  > |                lastCitizenPaid += 1;
    |            }
    |        }
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(112)

[31mViolation[0m for UnrestrictedWrite in contract 'GameOfThrones':
    |    function investInTheSystem(uint amount) internal {
    |        // The Castle is still up
  > |        lastCollection = block.timestamp;
    |        amountInvested += amount;
    |        // The Jetster takes 5%
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(124)

[31mViolation[0m for UnrestrictedWrite in contract 'GameOfThrones':
    |        // The Castle is still up
    |        lastCollection = block.timestamp;
  > |        amountInvested += amount;
    |        // The Jetster takes 5%
    |        jesterBank += amount * 5 / 100;
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(125)

[31mViolation[0m for UnrestrictedWrite in contract 'GameOfThrones':
    |        amountInvested += amount;
    |        // The Jetster takes 5%
  > |        jesterBank += amount * 5 / 100;
    |        // The mad king takes 5%
    |        kingBank += amount * 5 / 100;
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(127)

[31mViolation[0m for UnrestrictedWrite in contract 'GameOfThrones':
    |        jesterBank += amount * 5 / 100;
    |        // The mad king takes 5%
  > |        kingBank += amount * 5 / 100;
    |        // 5% goes to the Piggy Bank
    |        piggyBank += (amount * 5 / 100);
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(129)

[31mViolation[0m for UnrestrictedWrite in contract 'GameOfThrones':
    |        kingBank += amount * 5 / 100;
    |        // 5% goes to the Piggy Bank
  > |        piggyBank += (amount * 5 / 100);
    |
    |        kingAutomaticCollectFee();
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(131)

[31mViolation[0m for UnrestrictedWrite in contract 'GameOfThrones':
    |        if (msg.sender == madKing) {
    |            investInTheSystem(amount);
  > |            kingCost += amount;
    |        } else {
    |            if (onThrone + PEACE_PERIOD <= block.timestamp && amount >= kingCost * 150 / 100) {
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(177)

[31mViolation[0m for UnrestrictedWrite in contract 'GameOfThrones':
    |        if (godBank >= 1 ether) {
    |          trueGods.send(godBank);
  > |          godBank = 0;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(205)

[31mViolation[0m for UnrestrictedWrite in contract 'GameOfThrones':
    |        if (kingBank >= 100 finney) {
    |          madKing.send(kingBank);
  > |          kingBank = 0;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(212)

[31mViolation[0m for UnrestrictedWrite in contract 'GameOfThrones':
    |        if (jesterBank >= 100 finney) {
    |          jester.send(jesterBank);
  > |          jesterBank = 0;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(219)

[33mWarning[0m for UnrestrictedWrite in contract 'GameOfThrones':
    |    function investInTheSystem(uint amount) internal {
    |        // The Castle is still up
  > |        lastCollection = block.timestamp;
    |        amountInvested += amount;
    |        // The Jetster takes 5%
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(124)

[33mWarning[0m for UnrestrictedWrite in contract 'GameOfThrones':
    |        // The Castle is still up
    |        lastCollection = block.timestamp;
  > |        amountInvested += amount;
    |        // The Jetster takes 5%
    |        jesterBank += amount * 5 / 100;
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(125)

[33mWarning[0m for UnrestrictedWrite in contract 'GameOfThrones':
    |            if (piggyBank > kingCost * 40 / 100) {
    |                madKing.send(kingCost * 40 / 100);
  > |                piggyBank -= kingCost * 40 / 100;
    |            }
    |            else {
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(144)

[33mWarning[0m for UnrestrictedWrite in contract 'GameOfThrones':
    |            else {
    |                madKing.send(piggyBank);
  > |                piggyBank = 0;
    |            }
    |
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(148)

[33mWarning[0m for UnrestrictedWrite in contract 'GameOfThrones':
    |            }
    |
  > |            madKing = trueGods;
    |            kingCost = 1 ether;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(151)

[33mWarning[0m for UnrestrictedWrite in contract 'GameOfThrones':
    |
    |            madKing = trueGods;
  > |            kingCost = 1 ether;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(152)

[33mWarning[0m for UnrestrictedWrite in contract 'GameOfThrones':
    |                madKing.send(kingBank);
    |                // offer sacrifices to the Gods
  > |                godBank += amount * 5 / 100;
    |                // new king
    |                kingCost = amount;
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(183)

[33mWarning[0m for UnrestrictedWrite in contract 'GameOfThrones':
    |                godBank += amount * 5 / 100;
    |                // new king
  > |                kingCost = amount;
    |                madKing = msg.sender;
    |                onThrone = block.timestamp;
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(185)

[33mWarning[0m for UnrestrictedWrite in contract 'GameOfThrones':
    |                // new king
    |                kingCost = amount;
  > |                madKing = msg.sender;
    |                onThrone = block.timestamp;
    |                investInTheSystem(amount);
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(186)

[33mWarning[0m for UnrestrictedWrite in contract 'GameOfThrones':
    |                kingCost = amount;
    |                madKing = msg.sender;
  > |                onThrone = block.timestamp;
    |                investInTheSystem(amount);
    |            } else {
  at /home/jiaming/mavs_srcs/contract@0x9f8bf604abeb04d32b0ffae9c3a083be5858cf96.sol(187)


