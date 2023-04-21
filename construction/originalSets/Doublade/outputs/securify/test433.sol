Processing contract: /home/jiaming/mavs_srcs/contract@0x1be0fe534e593f83ec016028d3c91b5dd66ba5aa.sol:Advanced_SendMe
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1be0fe534e593f83ec016028d3c91b5dd66ba5aa.sol:SendMe
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1be0fe534e593f83ec016028d3c91b5dd66ba5aa.sol:SendMe_owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1be0fe534e593f83ec016028d3c91b5dd66ba5aa.sol:tokenRecipient
[33mWarning[0m for DAOConstantGas in contract 'Advanced_SendMe':
    |        require(this.balance >= amount * sellPrice);      // checks if the contract has enough ether to buy
    |        _transfer(msg.sender, this, amount);              // makes the transfers
  > |        msg.sender.transfer(amount * sellPrice);          // sends ether to the seller. It's important to do this last to avoid recursion attacks
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x1be0fe534e593f83ec016028d3c91b5dd66ba5aa.sol(242)

[33mWarning[0m for LockedEther in contract 'Advanced_SendMe':
    |/******************************************/
    |
  > |contract Advanced_SendMe is SendMe_owned, SendMe {
    |
    |    uint256 public sellPrice;
  at /home/jiaming/mavs_srcs/contract@0x1be0fe534e593f83ec016028d3c91b5dd66ba5aa.sol(176)

[31mViolation[0m for MissingInputValidation in contract 'Advanced_SendMe':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1be0fe534e593f83ec016028d3c91b5dd66ba5aa.sol(15)

[31mViolation[0m for MissingInputValidation in contract 'Advanced_SendMe':
    |
    |    // This creates an array with all balances
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0x1be0fe534e593f83ec016028d3c91b5dd66ba5aa.sol(31)

[31mViolation[0m for MissingInputValidation in contract 'Advanced_SendMe':
    |    // This creates an array with all balances
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    // This generates a public event on the blockchain that will notify clients
  at /home/jiaming/mavs_srcs/contract@0x1be0fe534e593f83ec016028d3c91b5dd66ba5aa.sol(32)

[31mViolation[0m for MissingInputValidation in contract 'Advanced_SendMe':
    |     * @param _value the amount to send
    |     */
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x1be0fe534e593f83ec016028d3c91b5dd66ba5aa.sol(98)

[31mViolation[0m for MissingInputValidation in contract 'Advanced_SendMe':
    |     * @param _value the max amount they can spend
    |     */
  > |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0x1be0fe534e593f83ec016028d3c91b5dd66ba5aa.sol(113)

[31mViolation[0m for MissingInputValidation in contract 'Advanced_SendMe':
    |     * @param _extraData some extra information to send to the approved contract
    |     */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData)
    |        public
    |        returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x1be0fe534e593f83ec016028d3c91b5dd66ba5aa.sol(128)

[31mViolation[0m for MissingInputValidation in contract 'Advanced_SendMe':
    |     * @param _value the amount of money to burn
    |     */
  > |    function burnFrom(address _from, uint256 _value) public returns (bool success) {
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  at /home/jiaming/mavs_srcs/contract@0x1be0fe534e593f83ec016028d3c91b5dd66ba5aa.sol(161)

[31mViolation[0m for MissingInputValidation in contract 'Advanced_SendMe':
    |    uint256 public buyPrice;
    |
  > |    mapping (address => bool) public frozenAccount;
    |
    |    /* This generates a public event on the blockchain that will notify clients */
  at /home/jiaming/mavs_srcs/contract@0x1be0fe534e593f83ec016028d3c91b5dd66ba5aa.sol(181)

[31mViolation[0m for MissingInputValidation in contract 'Advanced_SendMe':
    |    /// @param target Address to receive the tokens
    |    /// @param mintedAmount the amount of tokens it will receive
  > |    function mintToken(address target, uint256 mintedAmount) onlyOwner public {
    |        balanceOf[target] += mintedAmount;
    |        totalSupply += mintedAmount;
  at /home/jiaming/mavs_srcs/contract@0x1be0fe534e593f83ec016028d3c91b5dd66ba5aa.sol(208)

[31mViolation[0m for MissingInputValidation in contract 'Advanced_SendMe':
    |    /// @param target Address to be frozen
    |    /// @param freeze either to freeze it or not
  > |    function freezeAccount(address target, bool freeze) onlyOwner public {
    |        frozenAccount[target] = freeze;
    |        FrozenFunds(target, freeze);
  at /home/jiaming/mavs_srcs/contract@0x1be0fe534e593f83ec016028d3c91b5dd66ba5aa.sol(218)

[31mViolation[0m for MissingInputValidation in contract 'Advanced_SendMe':
    |    /// @param newSellPrice Price the users can sell to the contract
    |    /// @param newBuyPrice Price users can buy from the contract
  > |    function setPrices(uint256 newSellPrice, uint256 newBuyPrice) onlyOwner public {
    |        sellPrice = newSellPrice;
    |        buyPrice = newBuyPrice;
  at /home/jiaming/mavs_srcs/contract@0x1be0fe534e593f83ec016028d3c91b5dd66ba5aa.sol(226)

[33mWarning[0m for MissingInputValidation in contract 'Advanced_SendMe':
    |
    |contract SendMe_owned {
  > |    address public owner;
    |
    |    function owned() public {
  at /home/jiaming/mavs_srcs/contract@0x1be0fe534e593f83ec016028d3c91b5dd66ba5aa.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'Advanced_SendMe':
    |    address public owner;
    |
  > |    function owned() public {
    |        owner = msg.sender;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1be0fe534e593f83ec016028d3c91b5dd66ba5aa.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'Advanced_SendMe':
    |contract SendMe {
    |    // Public variables of the token
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0x1be0fe534e593f83ec016028d3c91b5dd66ba5aa.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'Advanced_SendMe':
    |    // Public variables of the token
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals = 18;
    |    // 18 decimals is the strongly suggested default, avoid changing it
  at /home/jiaming/mavs_srcs/contract@0x1be0fe534e593f83ec016028d3c91b5dd66ba5aa.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'Advanced_SendMe':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals = 18;
    |    // 18 decimals is the strongly suggested default, avoid changing it
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x1be0fe534e593f83ec016028d3c91b5dd66ba5aa.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'Advanced_SendMe':
    |    uint8 public decimals = 18;
    |    // 18 decimals is the strongly suggested default, avoid changing it
  > |    uint256 public totalSupply;
    |
    |    // This creates an array with all balances
  at /home/jiaming/mavs_srcs/contract@0x1be0fe534e593f83ec016028d3c91b5dd66ba5aa.sol(28)

[33mWarning[0m for MissingInputValidation in contract 'Advanced_SendMe':
    |     * @param _value the amount of money to burn
    |     */
  > |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  at /home/jiaming/mavs_srcs/contract@0x1be0fe534e593f83ec016028d3c91b5dd66ba5aa.sol(145)

[33mWarning[0m for MissingInputValidation in contract 'Advanced_SendMe':
    |contract Advanced_SendMe is SendMe_owned, SendMe {
    |
  > |    uint256 public sellPrice;
    |    uint256 public buyPrice;
    |
  at /home/jiaming/mavs_srcs/contract@0x1be0fe534e593f83ec016028d3c91b5dd66ba5aa.sol(178)

[33mWarning[0m for MissingInputValidation in contract 'Advanced_SendMe':
    |
    |    uint256 public sellPrice;
  > |    uint256 public buyPrice;
    |
    |    mapping (address => bool) public frozenAccount;
  at /home/jiaming/mavs_srcs/contract@0x1be0fe534e593f83ec016028d3c91b5dd66ba5aa.sol(179)

[33mWarning[0m for MissingInputValidation in contract 'Advanced_SendMe':
    |
    |    /* Internal transfer, only can be called by this contract */
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        require (_to != 0x0);                               // Prevent transfer to 0x0 address. Use burn() instead
    |        require (balanceOf[_from] >= _value);               // Check if the sender has enough
  at /home/jiaming/mavs_srcs/contract@0x1be0fe534e593f83ec016028d3c91b5dd66ba5aa.sol(194)

[33mWarning[0m for MissingInputValidation in contract 'Advanced_SendMe':
    |
    |    /// @notice Buy tokens from contract by sending ether
  > |    function buy() payable public {
    |        uint amount = msg.value / buyPrice;               // calculates the amount
    |        _transfer(this, msg.sender, amount);              // makes the transfers
  at /home/jiaming/mavs_srcs/contract@0x1be0fe534e593f83ec016028d3c91b5dd66ba5aa.sol(232)

[33mWarning[0m for TODAmount in contract 'Advanced_SendMe':
    |        require(this.balance >= amount * sellPrice);      // checks if the contract has enough ether to buy
    |        _transfer(msg.sender, this, amount);              // makes the transfers
  > |        msg.sender.transfer(amount * sellPrice);          // sends ether to the seller. It's important to do this last to avoid recursion attacks
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x1be0fe534e593f83ec016028d3c91b5dd66ba5aa.sol(242)

[33mWarning[0m for TODReceiver in contract 'Advanced_SendMe':
    |        require(this.balance >= amount * sellPrice);      // checks if the contract has enough ether to buy
    |        _transfer(msg.sender, this, amount);              // makes the transfers
  > |        msg.sender.transfer(amount * sellPrice);          // sends ether to the seller. It's important to do this last to avoid recursion attacks
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x1be0fe534e593f83ec016028d3c91b5dd66ba5aa.sol(242)

[33mWarning[0m for UnhandledException in contract 'Advanced_SendMe':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x1be0fe534e593f83ec016028d3c91b5dd66ba5aa.sol(133)

[33mWarning[0m for UnhandledException in contract 'Advanced_SendMe':
    |        require(this.balance >= amount * sellPrice);      // checks if the contract has enough ether to buy
    |        _transfer(msg.sender, this, amount);              // makes the transfers
  > |        msg.sender.transfer(amount * sellPrice);          // sends ether to the seller. It's important to do this last to avoid recursion attacks
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x1be0fe534e593f83ec016028d3c91b5dd66ba5aa.sol(242)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Advanced_SendMe':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x1be0fe534e593f83ec016028d3c91b5dd66ba5aa.sol(133)

[31mViolation[0m for UnrestrictedWrite in contract 'Advanced_SendMe':
    |
    |    function owned() public {
  > |        owner = msg.sender;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x1be0fe534e593f83ec016028d3c91b5dd66ba5aa.sol(7)

[31mViolation[0m for UnrestrictedWrite in contract 'Advanced_SendMe':
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  > |        totalSupply -= _value;                      // Updates totalSupply
    |        Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x1be0fe534e593f83ec016028d3c91b5dd66ba5aa.sol(148)

[31mViolation[0m for UnrestrictedWrite in contract 'Advanced_SendMe':
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  > |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
  at /home/jiaming/mavs_srcs/contract@0x1be0fe534e593f83ec016028d3c91b5dd66ba5aa.sol(164)

[31mViolation[0m for UnrestrictedWrite in contract 'Advanced_SendMe':
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
  > |        totalSupply -= _value;                              // Update totalSupply
    |        Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x1be0fe534e593f83ec016028d3c91b5dd66ba5aa.sol(166)

[31mViolation[0m for UnrestrictedWrite in contract 'Advanced_SendMe':
    |        require(!frozenAccount[_from]);                     // Check if sender is frozen
    |        require(!frozenAccount[_to]);                       // Check if recipient is frozen
  > |        balanceOf[_from] -= _value;                         // Subtract from the sender
    |        balanceOf[_to] += _value;                           // Add the same to the recipient
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x1be0fe534e593f83ec016028d3c91b5dd66ba5aa.sol(200)

[31mViolation[0m for UnrestrictedWrite in contract 'Advanced_SendMe':
    |        require(!frozenAccount[_to]);                       // Check if recipient is frozen
    |        balanceOf[_from] -= _value;                         // Subtract from the sender
  > |        balanceOf[_to] += _value;                           // Add the same to the recipient
    |        Transfer(_from, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1be0fe534e593f83ec016028d3c91b5dd66ba5aa.sol(201)

[33mWarning[0m for UnrestrictedWrite in contract 'Advanced_SendMe':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x1be0fe534e593f83ec016028d3c91b5dd66ba5aa.sol(100)

[33mWarning[0m for UnrestrictedWrite in contract 'Advanced_SendMe':
    |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1be0fe534e593f83ec016028d3c91b5dd66ba5aa.sol(115)

[33mWarning[0m for UnrestrictedWrite in contract 'Advanced_SendMe':
    |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
  > |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
    |        totalSupply -= _value;                      // Updates totalSupply
    |        Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x1be0fe534e593f83ec016028d3c91b5dd66ba5aa.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'Advanced_SendMe':
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
  > |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
    |        Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0x1be0fe534e593f83ec016028d3c91b5dd66ba5aa.sol(165)

[33mWarning[0m for UnrestrictedWrite in contract 'Advanced_SendMe':
    |        require(!frozenAccount[_from]);                     // Check if sender is frozen
    |        require(!frozenAccount[_to]);                       // Check if recipient is frozen
  > |        balanceOf[_from] -= _value;                         // Subtract from the sender
    |        balanceOf[_to] += _value;                           // Add the same to the recipient
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x1be0fe534e593f83ec016028d3c91b5dd66ba5aa.sol(200)

[33mWarning[0m for UnrestrictedWrite in contract 'Advanced_SendMe':
    |        require(!frozenAccount[_to]);                       // Check if recipient is frozen
    |        balanceOf[_from] -= _value;                         // Subtract from the sender
  > |        balanceOf[_to] += _value;                           // Add the same to the recipient
    |        Transfer(_from, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1be0fe534e593f83ec016028d3c91b5dd66ba5aa.sol(201)

[33mWarning[0m for UnrestrictedWrite in contract 'Advanced_SendMe':
    |
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x1be0fe534e593f83ec016028d3c91b5dd66ba5aa.sol(16)

[33mWarning[0m for UnrestrictedWrite in contract 'Advanced_SendMe':
    |    /// @param mintedAmount the amount of tokens it will receive
    |    function mintToken(address target, uint256 mintedAmount) onlyOwner public {
  > |        balanceOf[target] += mintedAmount;
    |        totalSupply += mintedAmount;
    |        Transfer(0, this, mintedAmount);
  at /home/jiaming/mavs_srcs/contract@0x1be0fe534e593f83ec016028d3c91b5dd66ba5aa.sol(209)

[33mWarning[0m for UnrestrictedWrite in contract 'Advanced_SendMe':
    |    function mintToken(address target, uint256 mintedAmount) onlyOwner public {
    |        balanceOf[target] += mintedAmount;
  > |        totalSupply += mintedAmount;
    |        Transfer(0, this, mintedAmount);
    |        Transfer(this, target, mintedAmount);
  at /home/jiaming/mavs_srcs/contract@0x1be0fe534e593f83ec016028d3c91b5dd66ba5aa.sol(210)

[33mWarning[0m for UnrestrictedWrite in contract 'Advanced_SendMe':
    |    /// @param freeze either to freeze it or not
    |    function freezeAccount(address target, bool freeze) onlyOwner public {
  > |        frozenAccount[target] = freeze;
    |        FrozenFunds(target, freeze);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1be0fe534e593f83ec016028d3c91b5dd66ba5aa.sol(219)

[33mWarning[0m for UnrestrictedWrite in contract 'Advanced_SendMe':
    |    /// @param newBuyPrice Price users can buy from the contract
    |    function setPrices(uint256 newSellPrice, uint256 newBuyPrice) onlyOwner public {
  > |        sellPrice = newSellPrice;
    |        buyPrice = newBuyPrice;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1be0fe534e593f83ec016028d3c91b5dd66ba5aa.sol(227)

[33mWarning[0m for UnrestrictedWrite in contract 'Advanced_SendMe':
    |    function setPrices(uint256 newSellPrice, uint256 newBuyPrice) onlyOwner public {
    |        sellPrice = newSellPrice;
  > |        buyPrice = newBuyPrice;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x1be0fe534e593f83ec016028d3c91b5dd66ba5aa.sol(228)

[33mWarning[0m for LockedEther in contract 'SendMe':
    |interface tokenRecipient { function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData) public; }
    |
  > |contract SendMe {
    |    // Public variables of the token
    |    string public name;
  at /home/jiaming/mavs_srcs/contract@0x1be0fe534e593f83ec016028d3c91b5dd66ba5aa.sol(22)

[31mViolation[0m for MissingInputValidation in contract 'SendMe':
    |
    |    // This creates an array with all balances
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0x1be0fe534e593f83ec016028d3c91b5dd66ba5aa.sol(31)

[31mViolation[0m for MissingInputValidation in contract 'SendMe':
    |    // This creates an array with all balances
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    // This generates a public event on the blockchain that will notify clients
  at /home/jiaming/mavs_srcs/contract@0x1be0fe534e593f83ec016028d3c91b5dd66ba5aa.sol(32)

[31mViolation[0m for MissingInputValidation in contract 'SendMe':
    |     * @param _value the amount to send
    |     */
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x1be0fe534e593f83ec016028d3c91b5dd66ba5aa.sol(98)

[31mViolation[0m for MissingInputValidation in contract 'SendMe':
    |     * @param _value the max amount they can spend
    |     */
  > |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0x1be0fe534e593f83ec016028d3c91b5dd66ba5aa.sol(113)

[31mViolation[0m for MissingInputValidation in contract 'SendMe':
    |     * @param _extraData some extra information to send to the approved contract
    |     */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData)
    |        public
    |        returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x1be0fe534e593f83ec016028d3c91b5dd66ba5aa.sol(128)

[31mViolation[0m for MissingInputValidation in contract 'SendMe':
    |     * @param _value the amount of money to burn
    |     */
  > |    function burnFrom(address _from, uint256 _value) public returns (bool success) {
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  at /home/jiaming/mavs_srcs/contract@0x1be0fe534e593f83ec016028d3c91b5dd66ba5aa.sol(161)

[33mWarning[0m for MissingInputValidation in contract 'SendMe':
    |contract SendMe {
    |    // Public variables of the token
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0x1be0fe534e593f83ec016028d3c91b5dd66ba5aa.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'SendMe':
    |    // Public variables of the token
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals = 18;
    |    // 18 decimals is the strongly suggested default, avoid changing it
  at /home/jiaming/mavs_srcs/contract@0x1be0fe534e593f83ec016028d3c91b5dd66ba5aa.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'SendMe':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals = 18;
    |    // 18 decimals is the strongly suggested default, avoid changing it
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x1be0fe534e593f83ec016028d3c91b5dd66ba5aa.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'SendMe':
    |    uint8 public decimals = 18;
    |    // 18 decimals is the strongly suggested default, avoid changing it
  > |    uint256 public totalSupply;
    |
    |    // This creates an array with all balances
  at /home/jiaming/mavs_srcs/contract@0x1be0fe534e593f83ec016028d3c91b5dd66ba5aa.sol(28)

[33mWarning[0m for MissingInputValidation in contract 'SendMe':
    |     * Internal transfer, only can be called by this contract
    |     */
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        // Prevent transfer to 0x0 address. Use burn() instead
    |        require(_to != 0x0);
  at /home/jiaming/mavs_srcs/contract@0x1be0fe534e593f83ec016028d3c91b5dd66ba5aa.sol(59)

[33mWarning[0m for MissingInputValidation in contract 'SendMe':
    |     * @param _value the amount of money to burn
    |     */
  > |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  at /home/jiaming/mavs_srcs/contract@0x1be0fe534e593f83ec016028d3c91b5dd66ba5aa.sol(145)

[33mWarning[0m for UnhandledException in contract 'SendMe':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x1be0fe534e593f83ec016028d3c91b5dd66ba5aa.sol(133)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SendMe':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x1be0fe534e593f83ec016028d3c91b5dd66ba5aa.sol(133)

[31mViolation[0m for UnrestrictedWrite in contract 'SendMe':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x1be0fe534e593f83ec016028d3c91b5dd66ba5aa.sol(69)

[31mViolation[0m for UnrestrictedWrite in contract 'SendMe':
    |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
  > |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
    |        // Asserts are used to use static analysis to find bugs in your code. They should never fail
  at /home/jiaming/mavs_srcs/contract@0x1be0fe534e593f83ec016028d3c91b5dd66ba5aa.sol(71)

[31mViolation[0m for UnrestrictedWrite in contract 'SendMe':
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  > |        totalSupply -= _value;                      // Updates totalSupply
    |        Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x1be0fe534e593f83ec016028d3c91b5dd66ba5aa.sol(148)

[31mViolation[0m for UnrestrictedWrite in contract 'SendMe':
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  > |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
  at /home/jiaming/mavs_srcs/contract@0x1be0fe534e593f83ec016028d3c91b5dd66ba5aa.sol(164)

[31mViolation[0m for UnrestrictedWrite in contract 'SendMe':
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
  > |        totalSupply -= _value;                              // Update totalSupply
    |        Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x1be0fe534e593f83ec016028d3c91b5dd66ba5aa.sol(166)

[33mWarning[0m for UnrestrictedWrite in contract 'SendMe':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x1be0fe534e593f83ec016028d3c91b5dd66ba5aa.sol(69)

[33mWarning[0m for UnrestrictedWrite in contract 'SendMe':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x1be0fe534e593f83ec016028d3c91b5dd66ba5aa.sol(100)

[33mWarning[0m for UnrestrictedWrite in contract 'SendMe':
    |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1be0fe534e593f83ec016028d3c91b5dd66ba5aa.sol(115)

[33mWarning[0m for UnrestrictedWrite in contract 'SendMe':
    |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
  > |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
    |        totalSupply -= _value;                      // Updates totalSupply
    |        Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x1be0fe534e593f83ec016028d3c91b5dd66ba5aa.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'SendMe':
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
  > |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
    |        Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0x1be0fe534e593f83ec016028d3c91b5dd66ba5aa.sol(165)

[33mWarning[0m for LockedEther in contract 'SendMe_owned':
    |pragma solidity ^0.4.16;
    |
  > |contract SendMe_owned {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x1be0fe534e593f83ec016028d3c91b5dd66ba5aa.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'SendMe_owned':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1be0fe534e593f83ec016028d3c91b5dd66ba5aa.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'SendMe_owned':
    |
    |contract SendMe_owned {
  > |    address public owner;
    |
    |    function owned() public {
  at /home/jiaming/mavs_srcs/contract@0x1be0fe534e593f83ec016028d3c91b5dd66ba5aa.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'SendMe_owned':
    |    address public owner;
    |
  > |    function owned() public {
    |        owner = msg.sender;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1be0fe534e593f83ec016028d3c91b5dd66ba5aa.sol(6)

[31mViolation[0m for UnrestrictedWrite in contract 'SendMe_owned':
    |
    |    function owned() public {
  > |        owner = msg.sender;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x1be0fe534e593f83ec016028d3c91b5dd66ba5aa.sol(7)

[33mWarning[0m for UnrestrictedWrite in contract 'SendMe_owned':
    |
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x1be0fe534e593f83ec016028d3c91b5dd66ba5aa.sol(16)


