Processing contract: /home/jiaming/mavs_srcs/contract@0x3b0e24f9cc217e854d6af7d13683109caca82b9e.sol:AmuChainToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3b0e24f9cc217e854d6af7d13683109caca82b9e.sol:TokenERC20
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3b0e24f9cc217e854d6af7d13683109caca82b9e.sol:owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3b0e24f9cc217e854d6af7d13683109caca82b9e.sol:tokenRecipient
[33mWarning[0m for DAOConstantGas in contract 'AmuChainToken':
    |        require(myAddress.balance >= amount * sellPrice);      // checks if the contract has enough ether to buy
    |        _transfer(msg.sender, this, amount);              // makes the transfers
  > |        msg.sender.transfer(amount * sellPrice);          // sends ether to the seller. It's important to do this last to avoid recursion attacks
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x3b0e24f9cc217e854d6af7d13683109caca82b9e.sol(244)

[33mWarning[0m for LockedEther in contract 'AmuChainToken':
    |/******************************************/
    |
  > |contract AmuChainToken is owned, TokenERC20 {
    |
    |    uint256 public sellPrice;
  at /home/jiaming/mavs_srcs/contract@0x3b0e24f9cc217e854d6af7d13683109caca82b9e.sol(177)

[31mViolation[0m for MissingInputValidation in contract 'AmuChainToken':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3b0e24f9cc217e854d6af7d13683109caca82b9e.sol(15)

[31mViolation[0m for MissingInputValidation in contract 'AmuChainToken':
    |
    |    // This creates an array with all balances
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |    
  at /home/jiaming/mavs_srcs/contract@0x3b0e24f9cc217e854d6af7d13683109caca82b9e.sol(30)

[31mViolation[0m for MissingInputValidation in contract 'AmuChainToken':
    |    // This creates an array with all balances
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |    
    |    event Transfer(address indexed from, address indexed to, uint256 value); // This generates a public event on the blockchain that will notify clients
  at /home/jiaming/mavs_srcs/contract@0x3b0e24f9cc217e854d6af7d13683109caca82b9e.sol(31)

[31mViolation[0m for MissingInputValidation in contract 'AmuChainToken':
    |     * @param _value the amount to send
    |     */
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x3b0e24f9cc217e854d6af7d13683109caca82b9e.sol(98)

[31mViolation[0m for MissingInputValidation in contract 'AmuChainToken':
    |     * @param _value the max amount they can spend
    |     */
  > |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0x3b0e24f9cc217e854d6af7d13683109caca82b9e.sol(113)

[31mViolation[0m for MissingInputValidation in contract 'AmuChainToken':
    |     * @param _extraData some extra information to send to the approved contract
    |     */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData)
    |        public
    |        returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x3b0e24f9cc217e854d6af7d13683109caca82b9e.sol(129)

[31mViolation[0m for MissingInputValidation in contract 'AmuChainToken':
    |     * @param _value the amount of money to burn
    |     */
  > |    function burnFrom(address _from, uint256 _value) public returns (bool success) {
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  at /home/jiaming/mavs_srcs/contract@0x3b0e24f9cc217e854d6af7d13683109caca82b9e.sol(162)

[31mViolation[0m for MissingInputValidation in contract 'AmuChainToken':
    |    uint256 public buyPrice;
    |
  > |    mapping (address => bool) public frozenAccount;
    |
    |    /* This generates a public event on the blockchain that will notify clients */
  at /home/jiaming/mavs_srcs/contract@0x3b0e24f9cc217e854d6af7d13683109caca82b9e.sol(182)

[31mViolation[0m for MissingInputValidation in contract 'AmuChainToken':
    |    /// @param target Address to receive the tokens
    |    /// @param mintedAmount the amount of tokens it will receive
  > |    function mintToken(address target, uint256 mintedAmount) onlyOwner public {
    |        balanceOf[target] += mintedAmount;
    |        totalSupply += mintedAmount;
  at /home/jiaming/mavs_srcs/contract@0x3b0e24f9cc217e854d6af7d13683109caca82b9e.sol(209)

[31mViolation[0m for MissingInputValidation in contract 'AmuChainToken':
    |    /// @param target Address to be frozen
    |    /// @param freeze either to freeze it or not
  > |    function freezeAccount(address target, bool freeze) onlyOwner public {
    |        frozenAccount[target] = freeze;
    |        emit FrozenFunds(target, freeze);
  at /home/jiaming/mavs_srcs/contract@0x3b0e24f9cc217e854d6af7d13683109caca82b9e.sol(219)

[31mViolation[0m for MissingInputValidation in contract 'AmuChainToken':
    |    /// @param newSellPrice Price the users can sell to the contract
    |    /// @param newBuyPrice Price users can buy from the contract
  > |    function setPrices(uint256 newSellPrice, uint256 newBuyPrice) onlyOwner public {
    |        sellPrice = newSellPrice;
    |        buyPrice = newBuyPrice;
  at /home/jiaming/mavs_srcs/contract@0x3b0e24f9cc217e854d6af7d13683109caca82b9e.sol(227)

[33mWarning[0m for MissingInputValidation in contract 'AmuChainToken':
    |
    |contract owned {
  > |    address public owner;
    |
    |    constructor() public {
  at /home/jiaming/mavs_srcs/contract@0x3b0e24f9cc217e854d6af7d13683109caca82b9e.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'AmuChainToken':
    |contract TokenERC20 {
    |    // Public variables of the token
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0x3b0e24f9cc217e854d6af7d13683109caca82b9e.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'AmuChainToken':
    |    // Public variables of the token
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals = 18;
    |    uint256 public totalSupply; // 18 decimals is the strongly suggested default, avoid changing it
  at /home/jiaming/mavs_srcs/contract@0x3b0e24f9cc217e854d6af7d13683109caca82b9e.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'AmuChainToken':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals = 18;
    |    uint256 public totalSupply; // 18 decimals is the strongly suggested default, avoid changing it
    |
  at /home/jiaming/mavs_srcs/contract@0x3b0e24f9cc217e854d6af7d13683109caca82b9e.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'AmuChainToken':
    |    string public symbol;
    |    uint8 public decimals = 18;
  > |    uint256 public totalSupply; // 18 decimals is the strongly suggested default, avoid changing it
    |
    |    // This creates an array with all balances
  at /home/jiaming/mavs_srcs/contract@0x3b0e24f9cc217e854d6af7d13683109caca82b9e.sol(27)

[33mWarning[0m for MissingInputValidation in contract 'AmuChainToken':
    |     * @param _value the amount of money to burn
    |     */
  > |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  at /home/jiaming/mavs_srcs/contract@0x3b0e24f9cc217e854d6af7d13683109caca82b9e.sol(146)

[33mWarning[0m for MissingInputValidation in contract 'AmuChainToken':
    |contract AmuChainToken is owned, TokenERC20 {
    |
  > |    uint256 public sellPrice;
    |    uint256 public buyPrice;
    |
  at /home/jiaming/mavs_srcs/contract@0x3b0e24f9cc217e854d6af7d13683109caca82b9e.sol(179)

[33mWarning[0m for MissingInputValidation in contract 'AmuChainToken':
    |
    |    uint256 public sellPrice;
  > |    uint256 public buyPrice;
    |
    |    mapping (address => bool) public frozenAccount;
  at /home/jiaming/mavs_srcs/contract@0x3b0e24f9cc217e854d6af7d13683109caca82b9e.sol(180)

[33mWarning[0m for MissingInputValidation in contract 'AmuChainToken':
    |
    |    /* Internal transfer, only can be called by this contract */
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        require (_to != 0x0);                               // Prevent transfer to 0x0 address. Use burn() instead
    |        require (balanceOf[_from] >= _value);               // Check if the sender has enough
  at /home/jiaming/mavs_srcs/contract@0x3b0e24f9cc217e854d6af7d13683109caca82b9e.sol(195)

[33mWarning[0m for MissingInputValidation in contract 'AmuChainToken':
    |
    |    /// @notice Buy tokens from contract by sending ether
  > |    function buy() payable public {
    |        uint amount = msg.value / buyPrice;               // calculates the amount
    |        _transfer(this, msg.sender, amount);              // makes the transfers
  at /home/jiaming/mavs_srcs/contract@0x3b0e24f9cc217e854d6af7d13683109caca82b9e.sol(233)

[33mWarning[0m for TODAmount in contract 'AmuChainToken':
    |        require(myAddress.balance >= amount * sellPrice);      // checks if the contract has enough ether to buy
    |        _transfer(msg.sender, this, amount);              // makes the transfers
  > |        msg.sender.transfer(amount * sellPrice);          // sends ether to the seller. It's important to do this last to avoid recursion attacks
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x3b0e24f9cc217e854d6af7d13683109caca82b9e.sol(244)

[33mWarning[0m for TODReceiver in contract 'AmuChainToken':
    |        require(myAddress.balance >= amount * sellPrice);      // checks if the contract has enough ether to buy
    |        _transfer(msg.sender, this, amount);              // makes the transfers
  > |        msg.sender.transfer(amount * sellPrice);          // sends ether to the seller. It's important to do this last to avoid recursion attacks
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x3b0e24f9cc217e854d6af7d13683109caca82b9e.sol(244)

[33mWarning[0m for UnhandledException in contract 'AmuChainToken':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x3b0e24f9cc217e854d6af7d13683109caca82b9e.sol(134)

[33mWarning[0m for UnhandledException in contract 'AmuChainToken':
    |        require(myAddress.balance >= amount * sellPrice);      // checks if the contract has enough ether to buy
    |        _transfer(msg.sender, this, amount);              // makes the transfers
  > |        msg.sender.transfer(amount * sellPrice);          // sends ether to the seller. It's important to do this last to avoid recursion attacks
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x3b0e24f9cc217e854d6af7d13683109caca82b9e.sol(244)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AmuChainToken':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x3b0e24f9cc217e854d6af7d13683109caca82b9e.sol(134)

[31mViolation[0m for UnrestrictedWrite in contract 'AmuChainToken':
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  > |        totalSupply -= _value;                      // Updates totalSupply
    |        emit Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x3b0e24f9cc217e854d6af7d13683109caca82b9e.sol(149)

[31mViolation[0m for UnrestrictedWrite in contract 'AmuChainToken':
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  > |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
  at /home/jiaming/mavs_srcs/contract@0x3b0e24f9cc217e854d6af7d13683109caca82b9e.sol(165)

[31mViolation[0m for UnrestrictedWrite in contract 'AmuChainToken':
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
  > |        totalSupply -= _value;                              // Update totalSupply
    |        emit Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x3b0e24f9cc217e854d6af7d13683109caca82b9e.sol(167)

[31mViolation[0m for UnrestrictedWrite in contract 'AmuChainToken':
    |        require(!frozenAccount[_from]);                     // Check if sender is frozen
    |        require(!frozenAccount[_to]);                       // Check if recipient is frozen
  > |        balanceOf[_from] -= _value;                         // Subtract from the sender
    |        balanceOf[_to] += _value;                           // Add the same to the recipient
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x3b0e24f9cc217e854d6af7d13683109caca82b9e.sol(201)

[31mViolation[0m for UnrestrictedWrite in contract 'AmuChainToken':
    |        require(!frozenAccount[_to]);                       // Check if recipient is frozen
    |        balanceOf[_from] -= _value;                         // Subtract from the sender
  > |        balanceOf[_to] += _value;                           // Add the same to the recipient
    |        emit Transfer(_from, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3b0e24f9cc217e854d6af7d13683109caca82b9e.sol(202)

[33mWarning[0m for UnrestrictedWrite in contract 'AmuChainToken':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x3b0e24f9cc217e854d6af7d13683109caca82b9e.sol(100)

[33mWarning[0m for UnrestrictedWrite in contract 'AmuChainToken':
    |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x3b0e24f9cc217e854d6af7d13683109caca82b9e.sol(115)

[33mWarning[0m for UnrestrictedWrite in contract 'AmuChainToken':
    |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
  > |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
    |        totalSupply -= _value;                      // Updates totalSupply
    |        emit Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x3b0e24f9cc217e854d6af7d13683109caca82b9e.sol(148)

[33mWarning[0m for UnrestrictedWrite in contract 'AmuChainToken':
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
  > |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
    |        emit Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0x3b0e24f9cc217e854d6af7d13683109caca82b9e.sol(166)

[33mWarning[0m for UnrestrictedWrite in contract 'AmuChainToken':
    |        require(!frozenAccount[_from]);                     // Check if sender is frozen
    |        require(!frozenAccount[_to]);                       // Check if recipient is frozen
  > |        balanceOf[_from] -= _value;                         // Subtract from the sender
    |        balanceOf[_to] += _value;                           // Add the same to the recipient
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x3b0e24f9cc217e854d6af7d13683109caca82b9e.sol(201)

[33mWarning[0m for UnrestrictedWrite in contract 'AmuChainToken':
    |        require(!frozenAccount[_to]);                       // Check if recipient is frozen
    |        balanceOf[_from] -= _value;                         // Subtract from the sender
  > |        balanceOf[_to] += _value;                           // Add the same to the recipient
    |        emit Transfer(_from, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3b0e24f9cc217e854d6af7d13683109caca82b9e.sol(202)

[33mWarning[0m for UnrestrictedWrite in contract 'AmuChainToken':
    |
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x3b0e24f9cc217e854d6af7d13683109caca82b9e.sol(16)

[33mWarning[0m for UnrestrictedWrite in contract 'AmuChainToken':
    |    /// @param mintedAmount the amount of tokens it will receive
    |    function mintToken(address target, uint256 mintedAmount) onlyOwner public {
  > |        balanceOf[target] += mintedAmount;
    |        totalSupply += mintedAmount;
    |        emit Transfer(0, this, mintedAmount);
  at /home/jiaming/mavs_srcs/contract@0x3b0e24f9cc217e854d6af7d13683109caca82b9e.sol(210)

[33mWarning[0m for UnrestrictedWrite in contract 'AmuChainToken':
    |    function mintToken(address target, uint256 mintedAmount) onlyOwner public {
    |        balanceOf[target] += mintedAmount;
  > |        totalSupply += mintedAmount;
    |        emit Transfer(0, this, mintedAmount);
    |        emit Transfer(this, target, mintedAmount);
  at /home/jiaming/mavs_srcs/contract@0x3b0e24f9cc217e854d6af7d13683109caca82b9e.sol(211)

[33mWarning[0m for UnrestrictedWrite in contract 'AmuChainToken':
    |    /// @param freeze either to freeze it or not
    |    function freezeAccount(address target, bool freeze) onlyOwner public {
  > |        frozenAccount[target] = freeze;
    |        emit FrozenFunds(target, freeze);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3b0e24f9cc217e854d6af7d13683109caca82b9e.sol(220)

[33mWarning[0m for UnrestrictedWrite in contract 'AmuChainToken':
    |    /// @param newBuyPrice Price users can buy from the contract
    |    function setPrices(uint256 newSellPrice, uint256 newBuyPrice) onlyOwner public {
  > |        sellPrice = newSellPrice;
    |        buyPrice = newBuyPrice;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3b0e24f9cc217e854d6af7d13683109caca82b9e.sol(228)

[33mWarning[0m for UnrestrictedWrite in contract 'AmuChainToken':
    |    function setPrices(uint256 newSellPrice, uint256 newBuyPrice) onlyOwner public {
    |        sellPrice = newSellPrice;
  > |        buyPrice = newBuyPrice;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x3b0e24f9cc217e854d6af7d13683109caca82b9e.sol(229)

[33mWarning[0m for LockedEther in contract 'TokenERC20':
    |interface tokenRecipient { function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData) external; }
    |
  > |contract TokenERC20 {
    |    // Public variables of the token
    |    string public name;
  at /home/jiaming/mavs_srcs/contract@0x3b0e24f9cc217e854d6af7d13683109caca82b9e.sol(22)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |
    |    // This creates an array with all balances
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |    
  at /home/jiaming/mavs_srcs/contract@0x3b0e24f9cc217e854d6af7d13683109caca82b9e.sol(30)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |    // This creates an array with all balances
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |    
    |    event Transfer(address indexed from, address indexed to, uint256 value); // This generates a public event on the blockchain that will notify clients
  at /home/jiaming/mavs_srcs/contract@0x3b0e24f9cc217e854d6af7d13683109caca82b9e.sol(31)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |     * @param _value the amount to send
    |     */
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x3b0e24f9cc217e854d6af7d13683109caca82b9e.sol(98)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |     * @param _value the max amount they can spend
    |     */
  > |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0x3b0e24f9cc217e854d6af7d13683109caca82b9e.sol(113)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |     * @param _extraData some extra information to send to the approved contract
    |     */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData)
    |        public
    |        returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x3b0e24f9cc217e854d6af7d13683109caca82b9e.sol(129)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |     * @param _value the amount of money to burn
    |     */
  > |    function burnFrom(address _from, uint256 _value) public returns (bool success) {
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  at /home/jiaming/mavs_srcs/contract@0x3b0e24f9cc217e854d6af7d13683109caca82b9e.sol(162)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |contract TokenERC20 {
    |    // Public variables of the token
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0x3b0e24f9cc217e854d6af7d13683109caca82b9e.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |    // Public variables of the token
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals = 18;
    |    uint256 public totalSupply; // 18 decimals is the strongly suggested default, avoid changing it
  at /home/jiaming/mavs_srcs/contract@0x3b0e24f9cc217e854d6af7d13683109caca82b9e.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals = 18;
    |    uint256 public totalSupply; // 18 decimals is the strongly suggested default, avoid changing it
    |
  at /home/jiaming/mavs_srcs/contract@0x3b0e24f9cc217e854d6af7d13683109caca82b9e.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |    string public symbol;
    |    uint8 public decimals = 18;
  > |    uint256 public totalSupply; // 18 decimals is the strongly suggested default, avoid changing it
    |
    |    // This creates an array with all balances
  at /home/jiaming/mavs_srcs/contract@0x3b0e24f9cc217e854d6af7d13683109caca82b9e.sol(27)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |     * Internal transfer, only can be called by this contract
    |     */
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        // Prevent transfer to 0x0 address. Use burn() instead
    |        require(_to != 0x0);
  at /home/jiaming/mavs_srcs/contract@0x3b0e24f9cc217e854d6af7d13683109caca82b9e.sol(58)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |     * @param _value the amount of money to burn
    |     */
  > |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  at /home/jiaming/mavs_srcs/contract@0x3b0e24f9cc217e854d6af7d13683109caca82b9e.sol(146)

[33mWarning[0m for UnhandledException in contract 'TokenERC20':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x3b0e24f9cc217e854d6af7d13683109caca82b9e.sol(134)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenERC20':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x3b0e24f9cc217e854d6af7d13683109caca82b9e.sol(134)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x3b0e24f9cc217e854d6af7d13683109caca82b9e.sol(68)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
  > |        balanceOf[_to] += _value;
    |        emit Transfer(_from, _to, _value);
    |        // Asserts are used to use static analysis to find bugs in your code. They should never fail
  at /home/jiaming/mavs_srcs/contract@0x3b0e24f9cc217e854d6af7d13683109caca82b9e.sol(70)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  > |        totalSupply -= _value;                      // Updates totalSupply
    |        emit Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x3b0e24f9cc217e854d6af7d13683109caca82b9e.sol(149)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  > |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
  at /home/jiaming/mavs_srcs/contract@0x3b0e24f9cc217e854d6af7d13683109caca82b9e.sol(165)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
  > |        totalSupply -= _value;                              // Update totalSupply
    |        emit Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x3b0e24f9cc217e854d6af7d13683109caca82b9e.sol(167)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x3b0e24f9cc217e854d6af7d13683109caca82b9e.sol(68)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x3b0e24f9cc217e854d6af7d13683109caca82b9e.sol(100)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x3b0e24f9cc217e854d6af7d13683109caca82b9e.sol(115)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
  > |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
    |        totalSupply -= _value;                      // Updates totalSupply
    |        emit Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x3b0e24f9cc217e854d6af7d13683109caca82b9e.sol(148)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
  > |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
    |        emit Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0x3b0e24f9cc217e854d6af7d13683109caca82b9e.sol(166)

[33mWarning[0m for LockedEther in contract 'owned':
    |pragma solidity ^0.4.20;
    |
  > |contract owned {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x3b0e24f9cc217e854d6af7d13683109caca82b9e.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'owned':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3b0e24f9cc217e854d6af7d13683109caca82b9e.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'owned':
    |
    |contract owned {
  > |    address public owner;
    |
    |    constructor() public {
  at /home/jiaming/mavs_srcs/contract@0x3b0e24f9cc217e854d6af7d13683109caca82b9e.sol(4)

[33mWarning[0m for UnrestrictedWrite in contract 'owned':
    |
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x3b0e24f9cc217e854d6af7d13683109caca82b9e.sol(16)


