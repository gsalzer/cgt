Processing contract: /home/jiaming/mavs_srcs/contract@0xe42ba5558b00d2e6109cc60412d5d4c9473fe998.sol:IMMCoin
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe42ba5558b00d2e6109cc60412d5d4c9473fe998.sol:Token
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe42ba5558b00d2e6109cc60412d5d4c9473fe998.sol:owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe42ba5558b00d2e6109cc60412d5d4c9473fe998.sol:tokenRecipient
[33mWarning[0m for DAOConstantGas in contract 'IMMCoin':
    |        require(this.balance >= amount * sellPrice);      // checks if the contract has enough ether to buy
    |        _transfer(msg.sender, this, amount);              // makes the transfers
  > |        msg.sender.transfer(amount * sellPrice);          // sends ether to the seller. It's important to do this last to avoid recursion attacks
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xe42ba5558b00d2e6109cc60412d5d4c9473fe998.sol(247)

[33mWarning[0m for LockedEther in contract 'IMMCoin':
    |/******************************************/
    |
  > |contract IMMCoin is owned, Token {
    |
    |    uint256 public sellPrice;
  at /home/jiaming/mavs_srcs/contract@0xe42ba5558b00d2e6109cc60412d5d4c9473fe998.sol(181)

[31mViolation[0m for MissingInputValidation in contract 'IMMCoin':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe42ba5558b00d2e6109cc60412d5d4c9473fe998.sol(20)

[31mViolation[0m for MissingInputValidation in contract 'IMMCoin':
    |
    |    // This creates an array with all balances
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0xe42ba5558b00d2e6109cc60412d5d4c9473fe998.sol(36)

[31mViolation[0m for MissingInputValidation in contract 'IMMCoin':
    |    // This creates an array with all balances
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    // This generates a public event on the blockchain that will notify clients
  at /home/jiaming/mavs_srcs/contract@0xe42ba5558b00d2e6109cc60412d5d4c9473fe998.sol(37)

[31mViolation[0m for MissingInputValidation in contract 'IMMCoin':
    |     * @param _value the amount to send
    |     */
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0xe42ba5558b00d2e6109cc60412d5d4c9473fe998.sol(103)

[31mViolation[0m for MissingInputValidation in contract 'IMMCoin':
    |     * @param _value the max amount they can spend
    |     */
  > |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0xe42ba5558b00d2e6109cc60412d5d4c9473fe998.sol(118)

[31mViolation[0m for MissingInputValidation in contract 'IMMCoin':
    |     * @param _extraData some extra information to send to the approved contract
    |     */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData)
    |        public
    |        returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0xe42ba5558b00d2e6109cc60412d5d4c9473fe998.sol(133)

[31mViolation[0m for MissingInputValidation in contract 'IMMCoin':
    |     * @param _value the amount of money to burn
    |     */
  > |    function burnFrom(address _from, uint256 _value) public returns (bool success) {
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  at /home/jiaming/mavs_srcs/contract@0xe42ba5558b00d2e6109cc60412d5d4c9473fe998.sol(166)

[31mViolation[0m for MissingInputValidation in contract 'IMMCoin':
    |    uint256 public buyPrice;
    |
  > |    mapping (address => bool) public frozenAccount;
    |
    |    /* This generates a public event on the blockchain that will notify clients */
  at /home/jiaming/mavs_srcs/contract@0xe42ba5558b00d2e6109cc60412d5d4c9473fe998.sol(186)

[31mViolation[0m for MissingInputValidation in contract 'IMMCoin':
    |    /// @param target Address to receive the tokens
    |    /// @param mintedAmount the amount of tokens it will receive
  > |    function mintToken(address target, uint256 mintedAmount) onlyOwner public {
    |        balanceOf[target] += mintedAmount;
    |        totalSupply += mintedAmount;
  at /home/jiaming/mavs_srcs/contract@0xe42ba5558b00d2e6109cc60412d5d4c9473fe998.sol(213)

[31mViolation[0m for MissingInputValidation in contract 'IMMCoin':
    |    /// @param target Address to be frozen
    |    /// @param freeze either to freeze it or not
  > |    function freezeAccount(address target, bool freeze) onlyOwner public {
    |        frozenAccount[target] = freeze;
    |        FrozenFunds(target, freeze);
  at /home/jiaming/mavs_srcs/contract@0xe42ba5558b00d2e6109cc60412d5d4c9473fe998.sol(223)

[31mViolation[0m for MissingInputValidation in contract 'IMMCoin':
    |    /// @param newSellPrice Price the users can sell to the contract
    |    /// @param newBuyPrice Price users can buy from the contract
  > |    function setPrices(uint256 newSellPrice, uint256 newBuyPrice) onlyOwner public {
    |        sellPrice = newSellPrice;
    |        buyPrice = newBuyPrice;
  at /home/jiaming/mavs_srcs/contract@0xe42ba5558b00d2e6109cc60412d5d4c9473fe998.sol(231)

[33mWarning[0m for MissingInputValidation in contract 'IMMCoin':
    | */
    |contract owned {
  > |    address public owner;
    |
    |    function owned() public {
  at /home/jiaming/mavs_srcs/contract@0xe42ba5558b00d2e6109cc60412d5d4c9473fe998.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'IMMCoin':
    |contract Token {
    |    // Public variables of the token
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0xe42ba5558b00d2e6109cc60412d5d4c9473fe998.sol(29)

[33mWarning[0m for MissingInputValidation in contract 'IMMCoin':
    |    // Public variables of the token
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals = 18;
    |    // 18 decimals is the strongly suggested default, avoid changing it
  at /home/jiaming/mavs_srcs/contract@0xe42ba5558b00d2e6109cc60412d5d4c9473fe998.sol(30)

[33mWarning[0m for MissingInputValidation in contract 'IMMCoin':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals = 18;
    |    // 18 decimals is the strongly suggested default, avoid changing it
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0xe42ba5558b00d2e6109cc60412d5d4c9473fe998.sol(31)

[33mWarning[0m for MissingInputValidation in contract 'IMMCoin':
    |    uint8 public decimals = 18;
    |    // 18 decimals is the strongly suggested default, avoid changing it
  > |    uint256 public totalSupply;
    |
    |    // This creates an array with all balances
  at /home/jiaming/mavs_srcs/contract@0xe42ba5558b00d2e6109cc60412d5d4c9473fe998.sol(33)

[33mWarning[0m for MissingInputValidation in contract 'IMMCoin':
    |     * @param _value the amount of money to burn
    |     */
  > |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  at /home/jiaming/mavs_srcs/contract@0xe42ba5558b00d2e6109cc60412d5d4c9473fe998.sol(150)

[33mWarning[0m for MissingInputValidation in contract 'IMMCoin':
    |contract IMMCoin is owned, Token {
    |
  > |    uint256 public sellPrice;
    |    uint256 public buyPrice;
    |
  at /home/jiaming/mavs_srcs/contract@0xe42ba5558b00d2e6109cc60412d5d4c9473fe998.sol(183)

[33mWarning[0m for MissingInputValidation in contract 'IMMCoin':
    |
    |    uint256 public sellPrice;
  > |    uint256 public buyPrice;
    |
    |    mapping (address => bool) public frozenAccount;
  at /home/jiaming/mavs_srcs/contract@0xe42ba5558b00d2e6109cc60412d5d4c9473fe998.sol(184)

[33mWarning[0m for MissingInputValidation in contract 'IMMCoin':
    |
    |    /* Internal transfer, only can be called by this contract */
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        require (_to != 0x0);                               // Prevent transfer to 0x0 address. Use burn() instead
    |        require (balanceOf[_from] > _value);                // Check if the sender has enough
  at /home/jiaming/mavs_srcs/contract@0xe42ba5558b00d2e6109cc60412d5d4c9473fe998.sol(199)

[33mWarning[0m for MissingInputValidation in contract 'IMMCoin':
    |
    |    /// @notice Buy tokens from contract by sending ether
  > |    function buy() payable public {
    |        uint amount = msg.value / buyPrice;               // calculates the amount
    |        _transfer(this, msg.sender, amount);              // makes the transfers
  at /home/jiaming/mavs_srcs/contract@0xe42ba5558b00d2e6109cc60412d5d4c9473fe998.sol(237)

[33mWarning[0m for TODAmount in contract 'IMMCoin':
    |        require(this.balance >= amount * sellPrice);      // checks if the contract has enough ether to buy
    |        _transfer(msg.sender, this, amount);              // makes the transfers
  > |        msg.sender.transfer(amount * sellPrice);          // sends ether to the seller. It's important to do this last to avoid recursion attacks
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xe42ba5558b00d2e6109cc60412d5d4c9473fe998.sol(247)

[33mWarning[0m for TODReceiver in contract 'IMMCoin':
    |        require(this.balance >= amount * sellPrice);      // checks if the contract has enough ether to buy
    |        _transfer(msg.sender, this, amount);              // makes the transfers
  > |        msg.sender.transfer(amount * sellPrice);          // sends ether to the seller. It's important to do this last to avoid recursion attacks
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xe42ba5558b00d2e6109cc60412d5d4c9473fe998.sol(247)

[33mWarning[0m for UnhandledException in contract 'IMMCoin':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xe42ba5558b00d2e6109cc60412d5d4c9473fe998.sol(138)

[33mWarning[0m for UnhandledException in contract 'IMMCoin':
    |        require(this.balance >= amount * sellPrice);      // checks if the contract has enough ether to buy
    |        _transfer(msg.sender, this, amount);              // makes the transfers
  > |        msg.sender.transfer(amount * sellPrice);          // sends ether to the seller. It's important to do this last to avoid recursion attacks
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xe42ba5558b00d2e6109cc60412d5d4c9473fe998.sol(247)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'IMMCoin':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xe42ba5558b00d2e6109cc60412d5d4c9473fe998.sol(138)

[31mViolation[0m for UnrestrictedWrite in contract 'IMMCoin':
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  > |        totalSupply -= _value;                      // Updates totalSupply
    |        Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe42ba5558b00d2e6109cc60412d5d4c9473fe998.sol(153)

[31mViolation[0m for UnrestrictedWrite in contract 'IMMCoin':
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  > |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
  at /home/jiaming/mavs_srcs/contract@0xe42ba5558b00d2e6109cc60412d5d4c9473fe998.sol(169)

[31mViolation[0m for UnrestrictedWrite in contract 'IMMCoin':
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
  > |        totalSupply -= _value;                              // Update totalSupply
    |        Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe42ba5558b00d2e6109cc60412d5d4c9473fe998.sol(171)

[31mViolation[0m for UnrestrictedWrite in contract 'IMMCoin':
    |        require(!frozenAccount[_from]);                     // Check if sender is frozen
    |        require(!frozenAccount[_to]);                       // Check if recipient is frozen
  > |        balanceOf[_from] -= _value;                         // Subtract from the sender
    |        balanceOf[_to] += _value;                           // Add the same to the recipient
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe42ba5558b00d2e6109cc60412d5d4c9473fe998.sol(205)

[31mViolation[0m for UnrestrictedWrite in contract 'IMMCoin':
    |        require(!frozenAccount[_to]);                       // Check if recipient is frozen
    |        balanceOf[_from] -= _value;                         // Subtract from the sender
  > |        balanceOf[_to] += _value;                           // Add the same to the recipient
    |        Transfer(_from, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe42ba5558b00d2e6109cc60412d5d4c9473fe998.sol(206)

[33mWarning[0m for UnrestrictedWrite in contract 'IMMCoin':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe42ba5558b00d2e6109cc60412d5d4c9473fe998.sol(105)

[33mWarning[0m for UnrestrictedWrite in contract 'IMMCoin':
    |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe42ba5558b00d2e6109cc60412d5d4c9473fe998.sol(120)

[33mWarning[0m for UnrestrictedWrite in contract 'IMMCoin':
    |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
  > |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
    |        totalSupply -= _value;                      // Updates totalSupply
    |        Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0xe42ba5558b00d2e6109cc60412d5d4c9473fe998.sol(152)

[33mWarning[0m for UnrestrictedWrite in contract 'IMMCoin':
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
  > |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
    |        Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0xe42ba5558b00d2e6109cc60412d5d4c9473fe998.sol(170)

[33mWarning[0m for UnrestrictedWrite in contract 'IMMCoin':
    |        require(!frozenAccount[_from]);                     // Check if sender is frozen
    |        require(!frozenAccount[_to]);                       // Check if recipient is frozen
  > |        balanceOf[_from] -= _value;                         // Subtract from the sender
    |        balanceOf[_to] += _value;                           // Add the same to the recipient
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe42ba5558b00d2e6109cc60412d5d4c9473fe998.sol(205)

[33mWarning[0m for UnrestrictedWrite in contract 'IMMCoin':
    |        require(!frozenAccount[_to]);                       // Check if recipient is frozen
    |        balanceOf[_from] -= _value;                         // Subtract from the sender
  > |        balanceOf[_to] += _value;                           // Add the same to the recipient
    |        Transfer(_from, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe42ba5558b00d2e6109cc60412d5d4c9473fe998.sol(206)

[33mWarning[0m for UnrestrictedWrite in contract 'IMMCoin':
    |
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xe42ba5558b00d2e6109cc60412d5d4c9473fe998.sol(21)

[33mWarning[0m for UnrestrictedWrite in contract 'IMMCoin':
    |    /// @param mintedAmount the amount of tokens it will receive
    |    function mintToken(address target, uint256 mintedAmount) onlyOwner public {
  > |        balanceOf[target] += mintedAmount;
    |        totalSupply += mintedAmount;
    |        Transfer(0, this, mintedAmount);
  at /home/jiaming/mavs_srcs/contract@0xe42ba5558b00d2e6109cc60412d5d4c9473fe998.sol(214)

[33mWarning[0m for UnrestrictedWrite in contract 'IMMCoin':
    |    function mintToken(address target, uint256 mintedAmount) onlyOwner public {
    |        balanceOf[target] += mintedAmount;
  > |        totalSupply += mintedAmount;
    |        Transfer(0, this, mintedAmount);
    |        Transfer(this, target, mintedAmount);
  at /home/jiaming/mavs_srcs/contract@0xe42ba5558b00d2e6109cc60412d5d4c9473fe998.sol(215)

[33mWarning[0m for UnrestrictedWrite in contract 'IMMCoin':
    |    /// @param freeze either to freeze it or not
    |    function freezeAccount(address target, bool freeze) onlyOwner public {
  > |        frozenAccount[target] = freeze;
    |        FrozenFunds(target, freeze);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe42ba5558b00d2e6109cc60412d5d4c9473fe998.sol(224)

[33mWarning[0m for UnrestrictedWrite in contract 'IMMCoin':
    |    /// @param newBuyPrice Price users can buy from the contract
    |    function setPrices(uint256 newSellPrice, uint256 newBuyPrice) onlyOwner public {
  > |        sellPrice = newSellPrice;
    |        buyPrice = newBuyPrice;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe42ba5558b00d2e6109cc60412d5d4c9473fe998.sol(232)

[33mWarning[0m for UnrestrictedWrite in contract 'IMMCoin':
    |    function setPrices(uint256 newSellPrice, uint256 newBuyPrice) onlyOwner public {
    |        sellPrice = newSellPrice;
  > |        buyPrice = newBuyPrice;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe42ba5558b00d2e6109cc60412d5d4c9473fe998.sol(233)

[33mWarning[0m for LockedEther in contract 'Token':
    |interface tokenRecipient { function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData) public; }
    |
  > |contract Token {
    |    // Public variables of the token
    |    string public name;
  at /home/jiaming/mavs_srcs/contract@0xe42ba5558b00d2e6109cc60412d5d4c9473fe998.sol(27)

[31mViolation[0m for MissingInputValidation in contract 'Token':
    |
    |    // This creates an array with all balances
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0xe42ba5558b00d2e6109cc60412d5d4c9473fe998.sol(36)

[31mViolation[0m for MissingInputValidation in contract 'Token':
    |    // This creates an array with all balances
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    // This generates a public event on the blockchain that will notify clients
  at /home/jiaming/mavs_srcs/contract@0xe42ba5558b00d2e6109cc60412d5d4c9473fe998.sol(37)

[31mViolation[0m for MissingInputValidation in contract 'Token':
    |     * @param _value the amount to send
    |     */
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0xe42ba5558b00d2e6109cc60412d5d4c9473fe998.sol(103)

[31mViolation[0m for MissingInputValidation in contract 'Token':
    |     * @param _value the max amount they can spend
    |     */
  > |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0xe42ba5558b00d2e6109cc60412d5d4c9473fe998.sol(118)

[31mViolation[0m for MissingInputValidation in contract 'Token':
    |     * @param _extraData some extra information to send to the approved contract
    |     */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData)
    |        public
    |        returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0xe42ba5558b00d2e6109cc60412d5d4c9473fe998.sol(133)

[31mViolation[0m for MissingInputValidation in contract 'Token':
    |     * @param _value the amount of money to burn
    |     */
  > |    function burnFrom(address _from, uint256 _value) public returns (bool success) {
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  at /home/jiaming/mavs_srcs/contract@0xe42ba5558b00d2e6109cc60412d5d4c9473fe998.sol(166)

[33mWarning[0m for MissingInputValidation in contract 'Token':
    |contract Token {
    |    // Public variables of the token
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0xe42ba5558b00d2e6109cc60412d5d4c9473fe998.sol(29)

[33mWarning[0m for MissingInputValidation in contract 'Token':
    |    // Public variables of the token
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals = 18;
    |    // 18 decimals is the strongly suggested default, avoid changing it
  at /home/jiaming/mavs_srcs/contract@0xe42ba5558b00d2e6109cc60412d5d4c9473fe998.sol(30)

[33mWarning[0m for MissingInputValidation in contract 'Token':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals = 18;
    |    // 18 decimals is the strongly suggested default, avoid changing it
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0xe42ba5558b00d2e6109cc60412d5d4c9473fe998.sol(31)

[33mWarning[0m for MissingInputValidation in contract 'Token':
    |    uint8 public decimals = 18;
    |    // 18 decimals is the strongly suggested default, avoid changing it
  > |    uint256 public totalSupply;
    |
    |    // This creates an array with all balances
  at /home/jiaming/mavs_srcs/contract@0xe42ba5558b00d2e6109cc60412d5d4c9473fe998.sol(33)

[33mWarning[0m for MissingInputValidation in contract 'Token':
    |     * Internal transfer, only can be called by this contract
    |     */
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        // Prevent transfer to 0x0 address. Use burn() instead
    |        require(_to != 0x0);
  at /home/jiaming/mavs_srcs/contract@0xe42ba5558b00d2e6109cc60412d5d4c9473fe998.sol(64)

[33mWarning[0m for MissingInputValidation in contract 'Token':
    |     * @param _value the amount of money to burn
    |     */
  > |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  at /home/jiaming/mavs_srcs/contract@0xe42ba5558b00d2e6109cc60412d5d4c9473fe998.sol(150)

[33mWarning[0m for UnhandledException in contract 'Token':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xe42ba5558b00d2e6109cc60412d5d4c9473fe998.sol(138)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Token':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xe42ba5558b00d2e6109cc60412d5d4c9473fe998.sol(138)

[31mViolation[0m for UnrestrictedWrite in contract 'Token':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0xe42ba5558b00d2e6109cc60412d5d4c9473fe998.sol(74)

[31mViolation[0m for UnrestrictedWrite in contract 'Token':
    |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
  > |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
    |        // Asserts are used to use static analysis to find bugs in your code. They should never fail
  at /home/jiaming/mavs_srcs/contract@0xe42ba5558b00d2e6109cc60412d5d4c9473fe998.sol(76)

[31mViolation[0m for UnrestrictedWrite in contract 'Token':
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  > |        totalSupply -= _value;                      // Updates totalSupply
    |        Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe42ba5558b00d2e6109cc60412d5d4c9473fe998.sol(153)

[31mViolation[0m for UnrestrictedWrite in contract 'Token':
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  > |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
  at /home/jiaming/mavs_srcs/contract@0xe42ba5558b00d2e6109cc60412d5d4c9473fe998.sol(169)

[31mViolation[0m for UnrestrictedWrite in contract 'Token':
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
  > |        totalSupply -= _value;                              // Update totalSupply
    |        Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe42ba5558b00d2e6109cc60412d5d4c9473fe998.sol(171)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0xe42ba5558b00d2e6109cc60412d5d4c9473fe998.sol(74)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe42ba5558b00d2e6109cc60412d5d4c9473fe998.sol(105)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe42ba5558b00d2e6109cc60412d5d4c9473fe998.sol(120)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
  > |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
    |        totalSupply -= _value;                      // Updates totalSupply
    |        Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0xe42ba5558b00d2e6109cc60412d5d4c9473fe998.sol(152)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
  > |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
    |        Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0xe42ba5558b00d2e6109cc60412d5d4c9473fe998.sol(170)

[33mWarning[0m for LockedEther in contract 'owned':
    | *
    | */
  > |contract owned {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xe42ba5558b00d2e6109cc60412d5d4c9473fe998.sol(8)

[31mViolation[0m for MissingInputValidation in contract 'owned':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe42ba5558b00d2e6109cc60412d5d4c9473fe998.sol(20)

[33mWarning[0m for MissingInputValidation in contract 'owned':
    | */
    |contract owned {
  > |    address public owner;
    |
    |    function owned() public {
  at /home/jiaming/mavs_srcs/contract@0xe42ba5558b00d2e6109cc60412d5d4c9473fe998.sol(9)

[33mWarning[0m for UnrestrictedWrite in contract 'owned':
    |
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xe42ba5558b00d2e6109cc60412d5d4c9473fe998.sol(21)


