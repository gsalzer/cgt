Processing contract: /home/jiaming/mavs_srcs/contract@0x6d0a11c04edf666e92777634ddb72f152a798369.sol:BlocHipo
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6d0a11c04edf666e92777634ddb72f152a798369.sol:Crowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6d0a11c04edf666e92777634ddb72f152a798369.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6d0a11c04edf666e92777634ddb72f152a798369.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6d0a11c04edf666e92777634ddb72f152a798369.sol:owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6d0a11c04edf666e92777634ddb72f152a798369.sol:token
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6d0a11c04edf666e92777634ddb72f152a798369.sol:tokenRecipient
[33mWarning[0m for DAOConstantGas in contract 'BlocHipo':
    |        balanceOf[this] += amount;                         // adds the amount to owner's balance
    |        balanceOf[msg.sender] -= amount;                   // subtracts the amount from seller's balance
  > |        if (!msg.sender.send(amount * sellPrice)) {        // sends ether to the seller. It's important
    |            throw;                                         // to do this last to avoid recursion attacks
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0x6d0a11c04edf666e92777634ddb72f152a798369.sol(193)

[33mWarning[0m for LockedEther in contract 'BlocHipo':
    |}
    |
  > |contract BlocHipo is owned, token {
    |
    |    uint256 public sellPrice;
  at /home/jiaming/mavs_srcs/contract@0x6d0a11c04edf666e92777634ddb72f152a798369.sol(123)

[31mViolation[0m for MissingInputValidation in contract 'BlocHipo':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6d0a11c04edf666e92777634ddb72f152a798369.sol(42)

[31mViolation[0m for MissingInputValidation in contract 'BlocHipo':
    |
    |    /* This creates an array with all balances */
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0x6d0a11c04edf666e92777634ddb72f152a798369.sol(59)

[31mViolation[0m for MissingInputValidation in contract 'BlocHipo':
    |    /* This creates an array with all balances */
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    /* This generates a public event on the blockchain that will notify clients */
  at /home/jiaming/mavs_srcs/contract@0x6d0a11c04edf666e92777634ddb72f152a798369.sol(60)

[31mViolation[0m for MissingInputValidation in contract 'BlocHipo':
    |
    |    /* Allow another contract to spend some tokens in your behalf */
  > |    function approve(address _spender, uint256 _value)
    |        returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0x6d0a11c04edf666e92777634ddb72f152a798369.sol(89)

[31mViolation[0m for MissingInputValidation in contract 'BlocHipo':
    |
    |    /* Approve and then communicate the approved contract in a single tx */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData)
    |        returns (bool success) {
    |        tokenRecipient spender = tokenRecipient(_spender);
  at /home/jiaming/mavs_srcs/contract@0x6d0a11c04edf666e92777634ddb72f152a798369.sol(96)

[31mViolation[0m for MissingInputValidation in contract 'BlocHipo':
    |    uint256 public buyPrice;
    |
  > |    mapping(address=>bool) public frozenAccount;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x6d0a11c04edf666e92777634ddb72f152a798369.sol(128)

[31mViolation[0m for MissingInputValidation in contract 'BlocHipo':
    |    function BlocHipo() token (initialSupply, tokenName, decimalUnits, tokenSymbol) {}
    |     /* Send coins */
  > |    function transfer(address _to, uint256 _value) {
    |        if (balanceOf[msg.sender] < _value) throw;           // Check if the sender has enough
    |        if (balanceOf[_to] + _value < balanceOf[_to]) throw; // Check for overflows
  at /home/jiaming/mavs_srcs/contract@0x6d0a11c04edf666e92777634ddb72f152a798369.sol(141)

[31mViolation[0m for MissingInputValidation in contract 'BlocHipo':
    |
    |    /* A contract attempts to get the coins */
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        if (frozenAccount[_from]) throw;                        // Check if frozen
    |        if (balanceOf[_from] < _value) throw;                 // Check if the sender has enough
  at /home/jiaming/mavs_srcs/contract@0x6d0a11c04edf666e92777634ddb72f152a798369.sol(152)

[31mViolation[0m for MissingInputValidation in contract 'BlocHipo':
    |    }
    |
  > |    function mintToken(address target, uint256 mintedAmount) onlyOwner {
    |        balanceOf[target] += mintedAmount;
    |        totalSupply += mintedAmount;
  at /home/jiaming/mavs_srcs/contract@0x6d0a11c04edf666e92777634ddb72f152a798369.sol(164)

[31mViolation[0m for MissingInputValidation in contract 'BlocHipo':
    |    }
    |
  > |    function freezeAccount(address target, bool freeze) onlyOwner {
    |        frozenAccount[target] = freeze;
    |        FrozenFunds(target, freeze);
  at /home/jiaming/mavs_srcs/contract@0x6d0a11c04edf666e92777634ddb72f152a798369.sol(171)

[31mViolation[0m for MissingInputValidation in contract 'BlocHipo':
    |    }
    |
  > |    function setPrices(uint256 newSellPrice, uint256 newBuyPrice) onlyOwner {
    |        sellPrice = newSellPrice;
    |        buyPrice = newBuyPrice;
  at /home/jiaming/mavs_srcs/contract@0x6d0a11c04edf666e92777634ddb72f152a798369.sol(176)

[33mWarning[0m for MissingInputValidation in contract 'BlocHipo':
    |
    |contract owned {
  > |    address public owner;
    |
    |    function owned() {
  at /home/jiaming/mavs_srcs/contract@0x6d0a11c04edf666e92777634ddb72f152a798369.sol(31)

[33mWarning[0m for MissingInputValidation in contract 'BlocHipo':
    |contract token {
    |    /* Public variables of the token */
  > |    string public standard = "BlocHipo";
    |    string public name;
    |    string public symbol;
  at /home/jiaming/mavs_srcs/contract@0x6d0a11c04edf666e92777634ddb72f152a798369.sol(52)

[33mWarning[0m for MissingInputValidation in contract 'BlocHipo':
    |    /* Public variables of the token */
    |    string public standard = "BlocHipo";
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0x6d0a11c04edf666e92777634ddb72f152a798369.sol(53)

[33mWarning[0m for MissingInputValidation in contract 'BlocHipo':
    |    string public standard = "BlocHipo";
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals;
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x6d0a11c04edf666e92777634ddb72f152a798369.sol(54)

[33mWarning[0m for MissingInputValidation in contract 'BlocHipo':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals;
    |    uint256 public totalSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0x6d0a11c04edf666e92777634ddb72f152a798369.sol(55)

[33mWarning[0m for MissingInputValidation in contract 'BlocHipo':
    |    string public symbol;
    |    uint8 public decimals;
  > |    uint256 public totalSupply;
    |
    |    /* This creates an array with all balances */
  at /home/jiaming/mavs_srcs/contract@0x6d0a11c04edf666e92777634ddb72f152a798369.sol(56)

[33mWarning[0m for MissingInputValidation in contract 'BlocHipo':
    |contract BlocHipo is owned, token {
    |
  > |    uint256 public sellPrice;
    |    uint256 public buyPrice;
    |
  at /home/jiaming/mavs_srcs/contract@0x6d0a11c04edf666e92777634ddb72f152a798369.sol(125)

[33mWarning[0m for MissingInputValidation in contract 'BlocHipo':
    |
    |    uint256 public sellPrice;
  > |    uint256 public buyPrice;
    |
    |    mapping(address=>bool) public frozenAccount;
  at /home/jiaming/mavs_srcs/contract@0x6d0a11c04edf666e92777634ddb72f152a798369.sol(126)

[33mWarning[0m for MissingInputValidation in contract 'BlocHipo':
    |
    |    /* Initializes contract with initial supply tokens to the creator of the contract */
  > |    uint256 public constant initialSupply = 2000000000 * 10**18;
    |    uint8 public constant decimalUnits = 18;
    |    string public tokenName = "BlocHipo";
  at /home/jiaming/mavs_srcs/contract@0x6d0a11c04edf666e92777634ddb72f152a798369.sol(135)

[33mWarning[0m for MissingInputValidation in contract 'BlocHipo':
    |    /* Initializes contract with initial supply tokens to the creator of the contract */
    |    uint256 public constant initialSupply = 2000000000 * 10**18;
  > |    uint8 public constant decimalUnits = 18;
    |    string public tokenName = "BlocHipo";
    |    string public tokenSymbol = "HIPO";
  at /home/jiaming/mavs_srcs/contract@0x6d0a11c04edf666e92777634ddb72f152a798369.sol(136)

[33mWarning[0m for MissingInputValidation in contract 'BlocHipo':
    |    uint256 public constant initialSupply = 2000000000 * 10**18;
    |    uint8 public constant decimalUnits = 18;
  > |    string public tokenName = "BlocHipo";
    |    string public tokenSymbol = "HIPO";
    |    function BlocHipo() token (initialSupply, tokenName, decimalUnits, tokenSymbol) {}
  at /home/jiaming/mavs_srcs/contract@0x6d0a11c04edf666e92777634ddb72f152a798369.sol(137)

[33mWarning[0m for MissingInputValidation in contract 'BlocHipo':
    |    uint8 public constant decimalUnits = 18;
    |    string public tokenName = "BlocHipo";
  > |    string public tokenSymbol = "HIPO";
    |    function BlocHipo() token (initialSupply, tokenName, decimalUnits, tokenSymbol) {}
    |     /* Send coins */
  at /home/jiaming/mavs_srcs/contract@0x6d0a11c04edf666e92777634ddb72f152a798369.sol(138)

[33mWarning[0m for MissingInputValidation in contract 'BlocHipo':
    |    }
    |
  > |    function buy() payable {
    |        uint amount = msg.value / buyPrice;                // calculates the amount
    |        if (balanceOf[this] < amount) throw;               // checks if it has enough to sell
  at /home/jiaming/mavs_srcs/contract@0x6d0a11c04edf666e92777634ddb72f152a798369.sol(181)

[33mWarning[0m for MissingInputValidation in contract 'BlocHipo':
    |    }
    |
  > |    function sell(uint256 amount) {
    |        if (balanceOf[msg.sender] < amount ) throw;        // checks if the sender has enough to sell
    |        balanceOf[this] += amount;                         // adds the amount to owner's balance
  at /home/jiaming/mavs_srcs/contract@0x6d0a11c04edf666e92777634ddb72f152a798369.sol(189)

[33mWarning[0m for TODAmount in contract 'BlocHipo':
    |        balanceOf[this] += amount;                         // adds the amount to owner's balance
    |        balanceOf[msg.sender] -= amount;                   // subtracts the amount from seller's balance
  > |        if (!msg.sender.send(amount * sellPrice)) {        // sends ether to the seller. It's important
    |            throw;                                         // to do this last to avoid recursion attacks
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0x6d0a11c04edf666e92777634ddb72f152a798369.sol(193)

[33mWarning[0m for TODReceiver in contract 'BlocHipo':
    |        balanceOf[this] += amount;                         // adds the amount to owner's balance
    |        balanceOf[msg.sender] -= amount;                   // subtracts the amount from seller's balance
  > |        if (!msg.sender.send(amount * sellPrice)) {        // sends ether to the seller. It's important
    |            throw;                                         // to do this last to avoid recursion attacks
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0x6d0a11c04edf666e92777634ddb72f152a798369.sol(193)

[33mWarning[0m for UnhandledException in contract 'BlocHipo':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x6d0a11c04edf666e92777634ddb72f152a798369.sol(100)

[33mWarning[0m for UnhandledException in contract 'BlocHipo':
    |        balanceOf[this] += amount;                         // adds the amount to owner's balance
    |        balanceOf[msg.sender] -= amount;                   // subtracts the amount from seller's balance
  > |        if (!msg.sender.send(amount * sellPrice)) {        // sends ether to the seller. It's important
    |            throw;                                         // to do this last to avoid recursion attacks
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0x6d0a11c04edf666e92777634ddb72f152a798369.sol(193)

[31mViolation[0m for UnrestrictedEtherFlow in contract 'BlocHipo':
    |        balanceOf[this] += amount;                         // adds the amount to owner's balance
    |        balanceOf[msg.sender] -= amount;                   // subtracts the amount from seller's balance
  > |        if (!msg.sender.send(amount * sellPrice)) {        // sends ether to the seller. It's important
    |            throw;                                         // to do this last to avoid recursion attacks
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0x6d0a11c04edf666e92777634ddb72f152a798369.sol(193)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BlocHipo':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x6d0a11c04edf666e92777634ddb72f152a798369.sol(100)

[31mViolation[0m for UnrestrictedWrite in contract 'BlocHipo':
    |        if (frozenAccount[msg.sender]) throw;                // Check if frozen
    |        balanceOf[msg.sender] -= _value;                     // Subtract from the sender
  > |        balanceOf[_to] += _value;                            // Add the same to the recipient
    |        Transfer(msg.sender, _to, _value);                   // Notify anyone listening that this transfer took place
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6d0a11c04edf666e92777634ddb72f152a798369.sol(146)

[31mViolation[0m for UnrestrictedWrite in contract 'BlocHipo':
    |        if (balanceOf[_to] + _value < balanceOf[_to]) throw;  // Check for overflows
    |        if (_value > allowance[_from][msg.sender]) throw;   // Check allowance
  > |        balanceOf[_from] -= _value;                          // Subtract from the sender
    |        balanceOf[_to] += _value;                            // Add the same to the recipient
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x6d0a11c04edf666e92777634ddb72f152a798369.sol(157)

[31mViolation[0m for UnrestrictedWrite in contract 'BlocHipo':
    |        if (_value > allowance[_from][msg.sender]) throw;   // Check allowance
    |        balanceOf[_from] -= _value;                          // Subtract from the sender
  > |        balanceOf[_to] += _value;                            // Add the same to the recipient
    |        allowance[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x6d0a11c04edf666e92777634ddb72f152a798369.sol(158)

[31mViolation[0m for UnrestrictedWrite in contract 'BlocHipo':
    |        if (balanceOf[this] < amount) throw;               // checks if it has enough to sell
    |        balanceOf[msg.sender] += amount;                   // adds the amount to buyer's balance
  > |        balanceOf[this] -= amount;                         // subtracts amount from seller's balance
    |        Transfer(this, msg.sender, amount);                // execute an event reflecting the change
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6d0a11c04edf666e92777634ddb72f152a798369.sol(185)

[31mViolation[0m for UnrestrictedWrite in contract 'BlocHipo':
    |    function sell(uint256 amount) {
    |        if (balanceOf[msg.sender] < amount ) throw;        // checks if the sender has enough to sell
  > |        balanceOf[this] += amount;                         // adds the amount to owner's balance
    |        balanceOf[msg.sender] -= amount;                   // subtracts the amount from seller's balance
    |        if (!msg.sender.send(amount * sellPrice)) {        // sends ether to the seller. It's important
  at /home/jiaming/mavs_srcs/contract@0x6d0a11c04edf666e92777634ddb72f152a798369.sol(191)

[33mWarning[0m for UnrestrictedWrite in contract 'BlocHipo':
    |    function approve(address _spender, uint256 _value)
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6d0a11c04edf666e92777634ddb72f152a798369.sol(91)

[33mWarning[0m for UnrestrictedWrite in contract 'BlocHipo':
    |        if (balanceOf[_to] + _value < balanceOf[_to]) throw; // Check for overflows
    |        if (frozenAccount[msg.sender]) throw;                // Check if frozen
  > |        balanceOf[msg.sender] -= _value;                     // Subtract from the sender
    |        balanceOf[_to] += _value;                            // Add the same to the recipient
    |        Transfer(msg.sender, _to, _value);                   // Notify anyone listening that this transfer took place
  at /home/jiaming/mavs_srcs/contract@0x6d0a11c04edf666e92777634ddb72f152a798369.sol(145)

[33mWarning[0m for UnrestrictedWrite in contract 'BlocHipo':
    |        balanceOf[_from] -= _value;                          // Subtract from the sender
    |        balanceOf[_to] += _value;                            // Add the same to the recipient
  > |        allowance[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6d0a11c04edf666e92777634ddb72f152a798369.sol(159)

[33mWarning[0m for UnrestrictedWrite in contract 'BlocHipo':
    |        uint amount = msg.value / buyPrice;                // calculates the amount
    |        if (balanceOf[this] < amount) throw;               // checks if it has enough to sell
  > |        balanceOf[msg.sender] += amount;                   // adds the amount to buyer's balance
    |        balanceOf[this] -= amount;                         // subtracts amount from seller's balance
    |        Transfer(this, msg.sender, amount);                // execute an event reflecting the change
  at /home/jiaming/mavs_srcs/contract@0x6d0a11c04edf666e92777634ddb72f152a798369.sol(184)

[33mWarning[0m for UnrestrictedWrite in contract 'BlocHipo':
    |        if (balanceOf[msg.sender] < amount ) throw;        // checks if the sender has enough to sell
    |        balanceOf[this] += amount;                         // adds the amount to owner's balance
  > |        balanceOf[msg.sender] -= amount;                   // subtracts the amount from seller's balance
    |        if (!msg.sender.send(amount * sellPrice)) {        // sends ether to the seller. It's important
    |            throw;                                         // to do this last to avoid recursion attacks
  at /home/jiaming/mavs_srcs/contract@0x6d0a11c04edf666e92777634ddb72f152a798369.sol(192)

[33mWarning[0m for UnrestrictedWrite in contract 'BlocHipo':
    |
    |    function transferOwnership(address newOwner) onlyOwner {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x6d0a11c04edf666e92777634ddb72f152a798369.sol(43)

[33mWarning[0m for UnrestrictedWrite in contract 'BlocHipo':
    |
    |    function mintToken(address target, uint256 mintedAmount) onlyOwner {
  > |        balanceOf[target] += mintedAmount;
    |        totalSupply += mintedAmount;
    |        Transfer(0, this, mintedAmount);
  at /home/jiaming/mavs_srcs/contract@0x6d0a11c04edf666e92777634ddb72f152a798369.sol(165)

[33mWarning[0m for UnrestrictedWrite in contract 'BlocHipo':
    |    function mintToken(address target, uint256 mintedAmount) onlyOwner {
    |        balanceOf[target] += mintedAmount;
  > |        totalSupply += mintedAmount;
    |        Transfer(0, this, mintedAmount);
    |        Transfer(this, target, mintedAmount);
  at /home/jiaming/mavs_srcs/contract@0x6d0a11c04edf666e92777634ddb72f152a798369.sol(166)

[33mWarning[0m for UnrestrictedWrite in contract 'BlocHipo':
    |
    |    function freezeAccount(address target, bool freeze) onlyOwner {
  > |        frozenAccount[target] = freeze;
    |        FrozenFunds(target, freeze);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6d0a11c04edf666e92777634ddb72f152a798369.sol(172)

[33mWarning[0m for UnrestrictedWrite in contract 'BlocHipo':
    |
    |    function setPrices(uint256 newSellPrice, uint256 newBuyPrice) onlyOwner {
  > |        sellPrice = newSellPrice;
    |        buyPrice = newBuyPrice;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6d0a11c04edf666e92777634ddb72f152a798369.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'BlocHipo':
    |    function setPrices(uint256 newSellPrice, uint256 newBuyPrice) onlyOwner {
    |        sellPrice = newSellPrice;
  > |        buyPrice = newBuyPrice;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6d0a11c04edf666e92777634ddb72f152a798369.sol(178)

[33mWarning[0m for DAOConstantGas in contract 'Crowdsale':
    |  // override to create custom fund forwarding mechanisms
    |  function forwardFunds() onlyOwner public {
  > |    wallet.transfer(address(this).balance);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x6d0a11c04edf666e92777634ddb72f152a798369.sol(303)

[33mWarning[0m for LockedEther in contract 'Crowdsale':
    | * as they arrive.
    | */
  > |contract Crowdsale is Ownable {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x6d0a11c04edf666e92777634ddb72f152a798369.sol(237)

[31mViolation[0m for TODAmount in contract 'Crowdsale':
    |  // override to create custom fund forwarding mechanisms
    |  function forwardFunds() onlyOwner public {
  > |    wallet.transfer(address(this).balance);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x6d0a11c04edf666e92777634ddb72f152a798369.sol(303)

[33mWarning[0m for TODReceiver in contract 'Crowdsale':
    |  // override to create custom fund forwarding mechanisms
    |  function forwardFunds() onlyOwner public {
  > |    wallet.transfer(address(this).balance);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x6d0a11c04edf666e92777634ddb72f152a798369.sol(303)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |
    |  function getBalance() public constant returns(uint256){
  > |      return myToken.balanceOf(this);
    |  }    
    |
  at /home/jiaming/mavs_srcs/contract@0x6d0a11c04edf666e92777634ddb72f152a798369.sol(272)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |    weiRaised = weiRaised.add(weiAmount);
    |
  > |    myToken.transfer(beneficiary, tokens);
    |
    |    emit TokenPurchase(beneficiary, weiAmount, tokens);
  at /home/jiaming/mavs_srcs/contract@0x6d0a11c04edf666e92777634ddb72f152a798369.sol(289)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |  // override to create custom fund forwarding mechanisms
    |  function forwardFunds() onlyOwner public {
  > |    wallet.transfer(address(this).balance);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x6d0a11c04edf666e92777634ddb72f152a798369.sol(303)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |
    |  function transferBackTo(uint256 tokens, address beneficiary) onlyOwner public returns (bool){
  > |    myToken.transfer(beneficiary, tokens);
    |    return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x6d0a11c04edf666e92777634ddb72f152a798369.sol(307)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |
    |  function getBalance() public constant returns(uint256){
  > |      return myToken.balanceOf(this);
    |  }    
    |
  at /home/jiaming/mavs_srcs/contract@0x6d0a11c04edf666e92777634ddb72f152a798369.sol(272)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |    weiRaised = weiRaised.add(weiAmount);
    |
  > |    myToken.transfer(beneficiary, tokens);
    |
    |    emit TokenPurchase(beneficiary, weiAmount, tokens);
  at /home/jiaming/mavs_srcs/contract@0x6d0a11c04edf666e92777634ddb72f152a798369.sol(289)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |  // override to create custom fund forwarding mechanisms
    |  function forwardFunds() onlyOwner public {
  > |    wallet.transfer(address(this).balance);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x6d0a11c04edf666e92777634ddb72f152a798369.sol(303)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |
    |  function transferBackTo(uint256 tokens, address beneficiary) onlyOwner public returns (bool){
  > |    myToken.transfer(beneficiary, tokens);
    |    return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x6d0a11c04edf666e92777634ddb72f152a798369.sol(307)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x6d0a11c04edf666e92777634ddb72f152a798369.sol(225)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |
    |    // update state
  > |    weiRaised = weiRaised.add(weiAmount);
    |
    |    myToken.transfer(beneficiary, tokens);
  at /home/jiaming/mavs_srcs/contract@0x6d0a11c04edf666e92777634ddb72f152a798369.sol(287)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |  // to change rate
    |  function updateRate(uint256 new_rate) onlyOwner public{
  > |    rate = new_rate;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x6d0a11c04edf666e92777634ddb72f152a798369.sol(296)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |  address public owner;
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x6d0a11c04edf666e92777634ddb72f152a798369.sol(201)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |  address public owner;
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x6d0a11c04edf666e92777634ddb72f152a798369.sol(202)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x6d0a11c04edf666e92777634ddb72f152a798369.sol(222)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x6d0a11c04edf666e92777634ddb72f152a798369.sol(225)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x6d0a11c04edf666e92777634ddb72f152a798369.sol(7)

[33mWarning[0m for LockedEther in contract 'owned':
    |}
    |
  > |contract owned {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x6d0a11c04edf666e92777634ddb72f152a798369.sol(30)

[31mViolation[0m for MissingInputValidation in contract 'owned':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6d0a11c04edf666e92777634ddb72f152a798369.sol(42)

[33mWarning[0m for MissingInputValidation in contract 'owned':
    |
    |contract owned {
  > |    address public owner;
    |
    |    function owned() {
  at /home/jiaming/mavs_srcs/contract@0x6d0a11c04edf666e92777634ddb72f152a798369.sol(31)

[33mWarning[0m for UnrestrictedWrite in contract 'owned':
    |
    |    function transferOwnership(address newOwner) onlyOwner {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x6d0a11c04edf666e92777634ddb72f152a798369.sol(43)

[33mWarning[0m for LockedEther in contract 'token':
    |contract tokenRecipient { function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData); }
    |
  > |contract token {
    |    /* Public variables of the token */
    |    string public standard = "BlocHipo";
  at /home/jiaming/mavs_srcs/contract@0x6d0a11c04edf666e92777634ddb72f152a798369.sol(50)

[31mViolation[0m for MissingInputValidation in contract 'token':
    |
    |    /* This creates an array with all balances */
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0x6d0a11c04edf666e92777634ddb72f152a798369.sol(59)

[31mViolation[0m for MissingInputValidation in contract 'token':
    |    /* This creates an array with all balances */
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    /* This generates a public event on the blockchain that will notify clients */
  at /home/jiaming/mavs_srcs/contract@0x6d0a11c04edf666e92777634ddb72f152a798369.sol(60)

[31mViolation[0m for MissingInputValidation in contract 'token':
    |
    |    /* Send coins */
  > |    function transfer(address _to, uint256 _value) {
    |        if (balanceOf[msg.sender] < _value) throw;           // Check if the sender has enough
    |        if (balanceOf[_to] + _value < balanceOf[_to]) throw; // Check for overflows
  at /home/jiaming/mavs_srcs/contract@0x6d0a11c04edf666e92777634ddb72f152a798369.sol(80)

[31mViolation[0m for MissingInputValidation in contract 'token':
    |
    |    /* Allow another contract to spend some tokens in your behalf */
  > |    function approve(address _spender, uint256 _value)
    |        returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0x6d0a11c04edf666e92777634ddb72f152a798369.sol(89)

[31mViolation[0m for MissingInputValidation in contract 'token':
    |
    |    /* Approve and then communicate the approved contract in a single tx */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData)
    |        returns (bool success) {
    |        tokenRecipient spender = tokenRecipient(_spender);
  at /home/jiaming/mavs_srcs/contract@0x6d0a11c04edf666e92777634ddb72f152a798369.sol(96)

[31mViolation[0m for MissingInputValidation in contract 'token':
    |
    |    /* A contract attempts _ to get the coins */
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        if (balanceOf[_from] < _value) throw;                 // Check if the sender has enough
    |        if (balanceOf[_to] + _value < balanceOf[_to]) throw;  // Check for overflows
  at /home/jiaming/mavs_srcs/contract@0x6d0a11c04edf666e92777634ddb72f152a798369.sol(106)

[33mWarning[0m for MissingInputValidation in contract 'token':
    |contract token {
    |    /* Public variables of the token */
  > |    string public standard = "BlocHipo";
    |    string public name;
    |    string public symbol;
  at /home/jiaming/mavs_srcs/contract@0x6d0a11c04edf666e92777634ddb72f152a798369.sol(52)

[33mWarning[0m for MissingInputValidation in contract 'token':
    |    /* Public variables of the token */
    |    string public standard = "BlocHipo";
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0x6d0a11c04edf666e92777634ddb72f152a798369.sol(53)

[33mWarning[0m for MissingInputValidation in contract 'token':
    |    string public standard = "BlocHipo";
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals;
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x6d0a11c04edf666e92777634ddb72f152a798369.sol(54)

[33mWarning[0m for MissingInputValidation in contract 'token':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals;
    |    uint256 public totalSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0x6d0a11c04edf666e92777634ddb72f152a798369.sol(55)

[33mWarning[0m for MissingInputValidation in contract 'token':
    |    string public symbol;
    |    uint8 public decimals;
  > |    uint256 public totalSupply;
    |
    |    /* This creates an array with all balances */
  at /home/jiaming/mavs_srcs/contract@0x6d0a11c04edf666e92777634ddb72f152a798369.sol(56)

[33mWarning[0m for UnhandledException in contract 'token':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x6d0a11c04edf666e92777634ddb72f152a798369.sol(100)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'token':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x6d0a11c04edf666e92777634ddb72f152a798369.sol(100)

[31mViolation[0m for UnrestrictedWrite in contract 'token':
    |        if (balanceOf[_to] + _value < balanceOf[_to]) throw; // Check for overflows
    |        balanceOf[msg.sender] -= _value;                     // Subtract from the sender
  > |        balanceOf[_to] += _value;                            // Add the same to the recipient
    |        Transfer(msg.sender, _to, _value);                   // Notify anyone listening that this transfer took place
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6d0a11c04edf666e92777634ddb72f152a798369.sol(84)

[31mViolation[0m for UnrestrictedWrite in contract 'token':
    |        if (balanceOf[_to] + _value < balanceOf[_to]) throw;  // Check for overflows
    |        if (_value > allowance[_from][msg.sender]) throw;   // Check allowance
  > |        balanceOf[_from] -= _value;                          // Subtract from the sender
    |        balanceOf[_to] += _value;                            // Add the same to the recipient
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x6d0a11c04edf666e92777634ddb72f152a798369.sol(110)

[31mViolation[0m for UnrestrictedWrite in contract 'token':
    |        if (_value > allowance[_from][msg.sender]) throw;   // Check allowance
    |        balanceOf[_from] -= _value;                          // Subtract from the sender
  > |        balanceOf[_to] += _value;                            // Add the same to the recipient
    |        allowance[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x6d0a11c04edf666e92777634ddb72f152a798369.sol(111)

[33mWarning[0m for UnrestrictedWrite in contract 'token':
    |        if (balanceOf[msg.sender] < _value) throw;           // Check if the sender has enough
    |        if (balanceOf[_to] + _value < balanceOf[_to]) throw; // Check for overflows
  > |        balanceOf[msg.sender] -= _value;                     // Subtract from the sender
    |        balanceOf[_to] += _value;                            // Add the same to the recipient
    |        Transfer(msg.sender, _to, _value);                   // Notify anyone listening that this transfer took place
  at /home/jiaming/mavs_srcs/contract@0x6d0a11c04edf666e92777634ddb72f152a798369.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'token':
    |    function approve(address _spender, uint256 _value)
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6d0a11c04edf666e92777634ddb72f152a798369.sol(91)

[33mWarning[0m for UnrestrictedWrite in contract 'token':
    |        balanceOf[_from] -= _value;                          // Subtract from the sender
    |        balanceOf[_to] += _value;                            // Add the same to the recipient
  > |        allowance[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6d0a11c04edf666e92777634ddb72f152a798369.sol(112)


