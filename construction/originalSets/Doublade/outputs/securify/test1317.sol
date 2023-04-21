Processing contract: /home/jiaming/mavs_srcs/contract@0x5290f3cc0ba038e5cbc8d21d8b94837a1560eb46.sol:SwftCoin
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5290f3cc0ba038e5cbc8d21d8b94837a1560eb46.sol:owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5290f3cc0ba038e5cbc8d21d8b94837a1560eb46.sol:token
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5290f3cc0ba038e5cbc8d21d8b94837a1560eb46.sol:tokenRecipient
[33mWarning[0m for DAOConstantGas in contract 'SwftCoin':
    |        balanceOf[this] += amount;                         // adds the amount to owner's balance
    |        balanceOf[msg.sender] -= amount;                   // subtracts the amount from seller's balance
  > |        if (!msg.sender.send(amount * sellPrice)) {        // sends ether to the seller. It's important
    |            throw;                                         // to do this last to avoid recursion attacks
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0x5290f3cc0ba038e5cbc8d21d8b94837a1560eb46.sol(165)

[33mWarning[0m for LockedEther in contract 'SwftCoin':
    |}
    |
  > |contract SwftCoin is owned, token {
    |
    |    uint256 public sellPrice;
  at /home/jiaming/mavs_srcs/contract@0x5290f3cc0ba038e5cbc8d21d8b94837a1560eb46.sol(94)

[31mViolation[0m for MissingInputValidation in contract 'SwftCoin':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5290f3cc0ba038e5cbc8d21d8b94837a1560eb46.sol(14)

[31mViolation[0m for MissingInputValidation in contract 'SwftCoin':
    |
    |    /* This creates an array with all balances */
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0x5290f3cc0ba038e5cbc8d21d8b94837a1560eb46.sol(30)

[31mViolation[0m for MissingInputValidation in contract 'SwftCoin':
    |    /* This creates an array with all balances */
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    /* This generates a public event on the blockchain that will notify clients */
  at /home/jiaming/mavs_srcs/contract@0x5290f3cc0ba038e5cbc8d21d8b94837a1560eb46.sol(31)

[31mViolation[0m for MissingInputValidation in contract 'SwftCoin':
    |
    |    /* Allow another contract to spend some tokens in your behalf */
  > |    function approve(address _spender, uint256 _value)
    |        returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0x5290f3cc0ba038e5cbc8d21d8b94837a1560eb46.sol(60)

[31mViolation[0m for MissingInputValidation in contract 'SwftCoin':
    |
    |    /* Approve and then communicate the approved contract in a single tx */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData)
    |        returns (bool success) {    
    |        tokenRecipient spender = tokenRecipient(_spender);
  at /home/jiaming/mavs_srcs/contract@0x5290f3cc0ba038e5cbc8d21d8b94837a1560eb46.sol(67)

[31mViolation[0m for MissingInputValidation in contract 'SwftCoin':
    |    uint256 public buyPrice;
    |
  > |    mapping (address => bool) public frozenAccount;
    |
    |    /* This generates a public event on the blockchain that will notify clients */
  at /home/jiaming/mavs_srcs/contract@0x5290f3cc0ba038e5cbc8d21d8b94837a1560eb46.sol(99)

[31mViolation[0m for MissingInputValidation in contract 'SwftCoin':
    |
    |    /* Send coins */
  > |    function transfer(address _to, uint256 _value) {
    |        if (balanceOf[msg.sender] < _value) throw;           // Check if the sender has enough
    |        if (balanceOf[_to] + _value < balanceOf[_to]) throw; // Check for overflows
  at /home/jiaming/mavs_srcs/contract@0x5290f3cc0ba038e5cbc8d21d8b94837a1560eb46.sol(113)

[31mViolation[0m for MissingInputValidation in contract 'SwftCoin':
    |
    |    /* A contract attempts to get the coins */
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        if (frozenAccount[_from]) throw;                        // Check if frozen            
    |        if (balanceOf[_from] < _value) throw;                 // Check if the sender has enough
  at /home/jiaming/mavs_srcs/contract@0x5290f3cc0ba038e5cbc8d21d8b94837a1560eb46.sol(124)

[31mViolation[0m for MissingInputValidation in contract 'SwftCoin':
    |    }
    |
  > |    function mintToken(address target, uint256 mintedAmount) onlyOwner {
    |        balanceOf[target] += mintedAmount;
    |        totalSupply += mintedAmount;
  at /home/jiaming/mavs_srcs/contract@0x5290f3cc0ba038e5cbc8d21d8b94837a1560eb46.sol(136)

[31mViolation[0m for MissingInputValidation in contract 'SwftCoin':
    |    }
    |
  > |    function freezeAccount(address target, bool freeze) onlyOwner {
    |        frozenAccount[target] = freeze;
    |        FrozenFunds(target, freeze);
  at /home/jiaming/mavs_srcs/contract@0x5290f3cc0ba038e5cbc8d21d8b94837a1560eb46.sol(143)

[31mViolation[0m for MissingInputValidation in contract 'SwftCoin':
    |    }
    |
  > |    function setPrices(uint256 newSellPrice, uint256 newBuyPrice) onlyOwner {
    |        sellPrice = newSellPrice;
    |        buyPrice = newBuyPrice;
  at /home/jiaming/mavs_srcs/contract@0x5290f3cc0ba038e5cbc8d21d8b94837a1560eb46.sol(148)

[33mWarning[0m for MissingInputValidation in contract 'SwftCoin':
    |pragma solidity ^0.4.2;
    |contract owned {
  > |    address public owner;
    |
    |    function owned() {
  at /home/jiaming/mavs_srcs/contract@0x5290f3cc0ba038e5cbc8d21d8b94837a1560eb46.sol(3)

[33mWarning[0m for MissingInputValidation in contract 'SwftCoin':
    |contract token {
    |    /* Public variables of the token */
  > |    string public standard = 'Token 0.1';
    |    string public name;
    |    string public symbol;
  at /home/jiaming/mavs_srcs/contract@0x5290f3cc0ba038e5cbc8d21d8b94837a1560eb46.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'SwftCoin':
    |    /* Public variables of the token */
    |    string public standard = 'Token 0.1';
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0x5290f3cc0ba038e5cbc8d21d8b94837a1560eb46.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'SwftCoin':
    |    string public standard = 'Token 0.1';
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals;
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x5290f3cc0ba038e5cbc8d21d8b94837a1560eb46.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'SwftCoin':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals;
    |    uint256 public totalSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0x5290f3cc0ba038e5cbc8d21d8b94837a1560eb46.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'SwftCoin':
    |    string public symbol;
    |    uint8 public decimals;
  > |    uint256 public totalSupply;
    |
    |    /* This creates an array with all balances */
  at /home/jiaming/mavs_srcs/contract@0x5290f3cc0ba038e5cbc8d21d8b94837a1560eb46.sol(27)

[33mWarning[0m for MissingInputValidation in contract 'SwftCoin':
    |contract SwftCoin is owned, token {
    |
  > |    uint256 public sellPrice;
    |    uint256 public buyPrice;
    |
  at /home/jiaming/mavs_srcs/contract@0x5290f3cc0ba038e5cbc8d21d8b94837a1560eb46.sol(96)

[33mWarning[0m for MissingInputValidation in contract 'SwftCoin':
    |
    |    uint256 public sellPrice;
  > |    uint256 public buyPrice;
    |
    |    mapping (address => bool) public frozenAccount;
  at /home/jiaming/mavs_srcs/contract@0x5290f3cc0ba038e5cbc8d21d8b94837a1560eb46.sol(97)

[33mWarning[0m for MissingInputValidation in contract 'SwftCoin':
    |    }
    |
  > |    function buy() payable {
    |        uint amount = msg.value / buyPrice;                // calculates the amount
    |        if (balanceOf[this] < amount) throw;               // checks if it has enough to sell
  at /home/jiaming/mavs_srcs/contract@0x5290f3cc0ba038e5cbc8d21d8b94837a1560eb46.sol(153)

[33mWarning[0m for MissingInputValidation in contract 'SwftCoin':
    |    }
    |
  > |    function sell(uint256 amount) {
    |        if (balanceOf[msg.sender] < amount ) throw;        // checks if the sender has enough to sell
    |        balanceOf[this] += amount;                         // adds the amount to owner's balance
  at /home/jiaming/mavs_srcs/contract@0x5290f3cc0ba038e5cbc8d21d8b94837a1560eb46.sol(161)

[33mWarning[0m for TODAmount in contract 'SwftCoin':
    |        balanceOf[this] += amount;                         // adds the amount to owner's balance
    |        balanceOf[msg.sender] -= amount;                   // subtracts the amount from seller's balance
  > |        if (!msg.sender.send(amount * sellPrice)) {        // sends ether to the seller. It's important
    |            throw;                                         // to do this last to avoid recursion attacks
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0x5290f3cc0ba038e5cbc8d21d8b94837a1560eb46.sol(165)

[33mWarning[0m for TODReceiver in contract 'SwftCoin':
    |        balanceOf[this] += amount;                         // adds the amount to owner's balance
    |        balanceOf[msg.sender] -= amount;                   // subtracts the amount from seller's balance
  > |        if (!msg.sender.send(amount * sellPrice)) {        // sends ether to the seller. It's important
    |            throw;                                         // to do this last to avoid recursion attacks
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0x5290f3cc0ba038e5cbc8d21d8b94837a1560eb46.sol(165)

[33mWarning[0m for UnhandledException in contract 'SwftCoin':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x5290f3cc0ba038e5cbc8d21d8b94837a1560eb46.sol(71)

[33mWarning[0m for UnhandledException in contract 'SwftCoin':
    |        balanceOf[this] += amount;                         // adds the amount to owner's balance
    |        balanceOf[msg.sender] -= amount;                   // subtracts the amount from seller's balance
  > |        if (!msg.sender.send(amount * sellPrice)) {        // sends ether to the seller. It's important
    |            throw;                                         // to do this last to avoid recursion attacks
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0x5290f3cc0ba038e5cbc8d21d8b94837a1560eb46.sol(165)

[31mViolation[0m for UnrestrictedEtherFlow in contract 'SwftCoin':
    |        balanceOf[this] += amount;                         // adds the amount to owner's balance
    |        balanceOf[msg.sender] -= amount;                   // subtracts the amount from seller's balance
  > |        if (!msg.sender.send(amount * sellPrice)) {        // sends ether to the seller. It's important
    |            throw;                                         // to do this last to avoid recursion attacks
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0x5290f3cc0ba038e5cbc8d21d8b94837a1560eb46.sol(165)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SwftCoin':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x5290f3cc0ba038e5cbc8d21d8b94837a1560eb46.sol(71)

[31mViolation[0m for UnrestrictedWrite in contract 'SwftCoin':
    |        if (frozenAccount[msg.sender]) throw;                // Check if frozen
    |        balanceOf[msg.sender] -= _value;                     // Subtract from the sender
  > |        balanceOf[_to] += _value;                            // Add the same to the recipient
    |        Transfer(msg.sender, _to, _value);                   // Notify anyone listening that this transfer took place
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5290f3cc0ba038e5cbc8d21d8b94837a1560eb46.sol(118)

[31mViolation[0m for UnrestrictedWrite in contract 'SwftCoin':
    |        if (balanceOf[_to] + _value < balanceOf[_to]) throw;  // Check for overflows
    |        if (_value > allowance[_from][msg.sender]) throw;   // Check allowance
  > |        balanceOf[_from] -= _value;                          // Subtract from the sender
    |        balanceOf[_to] += _value;                            // Add the same to the recipient
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x5290f3cc0ba038e5cbc8d21d8b94837a1560eb46.sol(129)

[31mViolation[0m for UnrestrictedWrite in contract 'SwftCoin':
    |        if (_value > allowance[_from][msg.sender]) throw;   // Check allowance
    |        balanceOf[_from] -= _value;                          // Subtract from the sender
  > |        balanceOf[_to] += _value;                            // Add the same to the recipient
    |        allowance[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x5290f3cc0ba038e5cbc8d21d8b94837a1560eb46.sol(130)

[31mViolation[0m for UnrestrictedWrite in contract 'SwftCoin':
    |        if (balanceOf[this] < amount) throw;               // checks if it has enough to sell
    |        balanceOf[msg.sender] += amount;                   // adds the amount to buyer's balance
  > |        balanceOf[this] -= amount;                         // subtracts amount from seller's balance
    |        Transfer(this, msg.sender, amount);                // execute an event reflecting the change
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5290f3cc0ba038e5cbc8d21d8b94837a1560eb46.sol(157)

[31mViolation[0m for UnrestrictedWrite in contract 'SwftCoin':
    |    function sell(uint256 amount) {
    |        if (balanceOf[msg.sender] < amount ) throw;        // checks if the sender has enough to sell
  > |        balanceOf[this] += amount;                         // adds the amount to owner's balance
    |        balanceOf[msg.sender] -= amount;                   // subtracts the amount from seller's balance
    |        if (!msg.sender.send(amount * sellPrice)) {        // sends ether to the seller. It's important
  at /home/jiaming/mavs_srcs/contract@0x5290f3cc0ba038e5cbc8d21d8b94837a1560eb46.sol(163)

[33mWarning[0m for UnrestrictedWrite in contract 'SwftCoin':
    |    function approve(address _spender, uint256 _value)
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5290f3cc0ba038e5cbc8d21d8b94837a1560eb46.sol(62)

[33mWarning[0m for UnrestrictedWrite in contract 'SwftCoin':
    |        if (balanceOf[_to] + _value < balanceOf[_to]) throw; // Check for overflows
    |        if (frozenAccount[msg.sender]) throw;                // Check if frozen
  > |        balanceOf[msg.sender] -= _value;                     // Subtract from the sender
    |        balanceOf[_to] += _value;                            // Add the same to the recipient
    |        Transfer(msg.sender, _to, _value);                   // Notify anyone listening that this transfer took place
  at /home/jiaming/mavs_srcs/contract@0x5290f3cc0ba038e5cbc8d21d8b94837a1560eb46.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'SwftCoin':
    |        balanceOf[_from] -= _value;                          // Subtract from the sender
    |        balanceOf[_to] += _value;                            // Add the same to the recipient
  > |        allowance[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x5290f3cc0ba038e5cbc8d21d8b94837a1560eb46.sol(131)

[33mWarning[0m for UnrestrictedWrite in contract 'SwftCoin':
    |        uint amount = msg.value / buyPrice;                // calculates the amount
    |        if (balanceOf[this] < amount) throw;               // checks if it has enough to sell
  > |        balanceOf[msg.sender] += amount;                   // adds the amount to buyer's balance
    |        balanceOf[this] -= amount;                         // subtracts amount from seller's balance
    |        Transfer(this, msg.sender, amount);                // execute an event reflecting the change
  at /home/jiaming/mavs_srcs/contract@0x5290f3cc0ba038e5cbc8d21d8b94837a1560eb46.sol(156)

[33mWarning[0m for UnrestrictedWrite in contract 'SwftCoin':
    |        if (balanceOf[msg.sender] < amount ) throw;        // checks if the sender has enough to sell
    |        balanceOf[this] += amount;                         // adds the amount to owner's balance
  > |        balanceOf[msg.sender] -= amount;                   // subtracts the amount from seller's balance
    |        if (!msg.sender.send(amount * sellPrice)) {        // sends ether to the seller. It's important
    |            throw;                                         // to do this last to avoid recursion attacks
  at /home/jiaming/mavs_srcs/contract@0x5290f3cc0ba038e5cbc8d21d8b94837a1560eb46.sol(164)

[33mWarning[0m for UnrestrictedWrite in contract 'SwftCoin':
    |
    |    function transferOwnership(address newOwner) onlyOwner {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x5290f3cc0ba038e5cbc8d21d8b94837a1560eb46.sol(15)

[33mWarning[0m for UnrestrictedWrite in contract 'SwftCoin':
    |
    |    function mintToken(address target, uint256 mintedAmount) onlyOwner {
  > |        balanceOf[target] += mintedAmount;
    |        totalSupply += mintedAmount;
    |        Transfer(0, this, mintedAmount);
  at /home/jiaming/mavs_srcs/contract@0x5290f3cc0ba038e5cbc8d21d8b94837a1560eb46.sol(137)

[33mWarning[0m for UnrestrictedWrite in contract 'SwftCoin':
    |    function mintToken(address target, uint256 mintedAmount) onlyOwner {
    |        balanceOf[target] += mintedAmount;
  > |        totalSupply += mintedAmount;
    |        Transfer(0, this, mintedAmount);
    |        Transfer(this, target, mintedAmount);
  at /home/jiaming/mavs_srcs/contract@0x5290f3cc0ba038e5cbc8d21d8b94837a1560eb46.sol(138)

[33mWarning[0m for UnrestrictedWrite in contract 'SwftCoin':
    |
    |    function freezeAccount(address target, bool freeze) onlyOwner {
  > |        frozenAccount[target] = freeze;
    |        FrozenFunds(target, freeze);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5290f3cc0ba038e5cbc8d21d8b94837a1560eb46.sol(144)

[33mWarning[0m for UnrestrictedWrite in contract 'SwftCoin':
    |
    |    function setPrices(uint256 newSellPrice, uint256 newBuyPrice) onlyOwner {
  > |        sellPrice = newSellPrice;
    |        buyPrice = newBuyPrice;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5290f3cc0ba038e5cbc8d21d8b94837a1560eb46.sol(149)

[33mWarning[0m for UnrestrictedWrite in contract 'SwftCoin':
    |    function setPrices(uint256 newSellPrice, uint256 newBuyPrice) onlyOwner {
    |        sellPrice = newSellPrice;
  > |        buyPrice = newBuyPrice;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5290f3cc0ba038e5cbc8d21d8b94837a1560eb46.sol(150)

[33mWarning[0m for LockedEther in contract 'owned':
    |pragma solidity ^0.4.2;
  > |contract owned {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x5290f3cc0ba038e5cbc8d21d8b94837a1560eb46.sol(2)

[31mViolation[0m for MissingInputValidation in contract 'owned':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5290f3cc0ba038e5cbc8d21d8b94837a1560eb46.sol(14)

[33mWarning[0m for MissingInputValidation in contract 'owned':
    |pragma solidity ^0.4.2;
    |contract owned {
  > |    address public owner;
    |
    |    function owned() {
  at /home/jiaming/mavs_srcs/contract@0x5290f3cc0ba038e5cbc8d21d8b94837a1560eb46.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'owned':
    |
    |    function transferOwnership(address newOwner) onlyOwner {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x5290f3cc0ba038e5cbc8d21d8b94837a1560eb46.sol(15)

[33mWarning[0m for LockedEther in contract 'token':
    |contract tokenRecipient { function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData); }
    |
  > |contract token {
    |    /* Public variables of the token */
    |    string public standard = 'Token 0.1';
  at /home/jiaming/mavs_srcs/contract@0x5290f3cc0ba038e5cbc8d21d8b94837a1560eb46.sol(21)

[31mViolation[0m for MissingInputValidation in contract 'token':
    |
    |    /* This creates an array with all balances */
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0x5290f3cc0ba038e5cbc8d21d8b94837a1560eb46.sol(30)

[31mViolation[0m for MissingInputValidation in contract 'token':
    |    /* This creates an array with all balances */
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    /* This generates a public event on the blockchain that will notify clients */
  at /home/jiaming/mavs_srcs/contract@0x5290f3cc0ba038e5cbc8d21d8b94837a1560eb46.sol(31)

[31mViolation[0m for MissingInputValidation in contract 'token':
    |
    |    /* Send coins */
  > |    function transfer(address _to, uint256 _value) {
    |        if (balanceOf[msg.sender] < _value) throw;           // Check if the sender has enough
    |        if (balanceOf[_to] + _value < balanceOf[_to]) throw; // Check for overflows
  at /home/jiaming/mavs_srcs/contract@0x5290f3cc0ba038e5cbc8d21d8b94837a1560eb46.sol(51)

[31mViolation[0m for MissingInputValidation in contract 'token':
    |
    |    /* Allow another contract to spend some tokens in your behalf */
  > |    function approve(address _spender, uint256 _value)
    |        returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0x5290f3cc0ba038e5cbc8d21d8b94837a1560eb46.sol(60)

[31mViolation[0m for MissingInputValidation in contract 'token':
    |
    |    /* Approve and then communicate the approved contract in a single tx */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData)
    |        returns (bool success) {    
    |        tokenRecipient spender = tokenRecipient(_spender);
  at /home/jiaming/mavs_srcs/contract@0x5290f3cc0ba038e5cbc8d21d8b94837a1560eb46.sol(67)

[31mViolation[0m for MissingInputValidation in contract 'token':
    |
    |    /* A contract attempts to get the coins */
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        if (balanceOf[_from] < _value) throw;                 // Check if the sender has enough
    |        if (balanceOf[_to] + _value < balanceOf[_to]) throw;  // Check for overflows
  at /home/jiaming/mavs_srcs/contract@0x5290f3cc0ba038e5cbc8d21d8b94837a1560eb46.sol(77)

[33mWarning[0m for MissingInputValidation in contract 'token':
    |contract token {
    |    /* Public variables of the token */
  > |    string public standard = 'Token 0.1';
    |    string public name;
    |    string public symbol;
  at /home/jiaming/mavs_srcs/contract@0x5290f3cc0ba038e5cbc8d21d8b94837a1560eb46.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'token':
    |    /* Public variables of the token */
    |    string public standard = 'Token 0.1';
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0x5290f3cc0ba038e5cbc8d21d8b94837a1560eb46.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'token':
    |    string public standard = 'Token 0.1';
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals;
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x5290f3cc0ba038e5cbc8d21d8b94837a1560eb46.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'token':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals;
    |    uint256 public totalSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0x5290f3cc0ba038e5cbc8d21d8b94837a1560eb46.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'token':
    |    string public symbol;
    |    uint8 public decimals;
  > |    uint256 public totalSupply;
    |
    |    /* This creates an array with all balances */
  at /home/jiaming/mavs_srcs/contract@0x5290f3cc0ba038e5cbc8d21d8b94837a1560eb46.sol(27)

[33mWarning[0m for UnhandledException in contract 'token':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x5290f3cc0ba038e5cbc8d21d8b94837a1560eb46.sol(71)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'token':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x5290f3cc0ba038e5cbc8d21d8b94837a1560eb46.sol(71)

[31mViolation[0m for UnrestrictedWrite in contract 'token':
    |        if (balanceOf[_to] + _value < balanceOf[_to]) throw; // Check for overflows
    |        balanceOf[msg.sender] -= _value;                     // Subtract from the sender
  > |        balanceOf[_to] += _value;                            // Add the same to the recipient
    |        Transfer(msg.sender, _to, _value);                   // Notify anyone listening that this transfer took place
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5290f3cc0ba038e5cbc8d21d8b94837a1560eb46.sol(55)

[31mViolation[0m for UnrestrictedWrite in contract 'token':
    |        if (balanceOf[_to] + _value < balanceOf[_to]) throw;  // Check for overflows
    |        if (_value > allowance[_from][msg.sender]) throw;   // Check allowance
  > |        balanceOf[_from] -= _value;                          // Subtract from the sender
    |        balanceOf[_to] += _value;                            // Add the same to the recipient
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x5290f3cc0ba038e5cbc8d21d8b94837a1560eb46.sol(81)

[31mViolation[0m for UnrestrictedWrite in contract 'token':
    |        if (_value > allowance[_from][msg.sender]) throw;   // Check allowance
    |        balanceOf[_from] -= _value;                          // Subtract from the sender
  > |        balanceOf[_to] += _value;                            // Add the same to the recipient
    |        allowance[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x5290f3cc0ba038e5cbc8d21d8b94837a1560eb46.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'token':
    |        if (balanceOf[msg.sender] < _value) throw;           // Check if the sender has enough
    |        if (balanceOf[_to] + _value < balanceOf[_to]) throw; // Check for overflows
  > |        balanceOf[msg.sender] -= _value;                     // Subtract from the sender
    |        balanceOf[_to] += _value;                            // Add the same to the recipient
    |        Transfer(msg.sender, _to, _value);                   // Notify anyone listening that this transfer took place
  at /home/jiaming/mavs_srcs/contract@0x5290f3cc0ba038e5cbc8d21d8b94837a1560eb46.sol(54)

[33mWarning[0m for UnrestrictedWrite in contract 'token':
    |    function approve(address _spender, uint256 _value)
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5290f3cc0ba038e5cbc8d21d8b94837a1560eb46.sol(62)

[33mWarning[0m for UnrestrictedWrite in contract 'token':
    |        balanceOf[_from] -= _value;                          // Subtract from the sender
    |        balanceOf[_to] += _value;                            // Add the same to the recipient
  > |        allowance[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x5290f3cc0ba038e5cbc8d21d8b94837a1560eb46.sol(83)


