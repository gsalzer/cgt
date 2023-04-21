Processing contract: /home/jiaming/mavs_srcs/contract@0x61f4084ab994420ca726e436223ad3d70d47274b.sol:MyAdvancedToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x61f4084ab994420ca726e436223ad3d70d47274b.sol:TokenERC20
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x61f4084ab994420ca726e436223ad3d70d47274b.sol:owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x61f4084ab994420ca726e436223ad3d70d47274b.sol:tokenRecipient
[33mWarning[0m for DAOConstantGas in contract 'MyAdvancedToken':
    |        require(myAddress.balance >= amount / sellPrice);   // checks if the contract has enough ether to buy
    |        _transfer(msg.sender, this, amount);                // makes the transfers
  > |        msg.sender.transfer(amount / sellPrice);            // sends ether to the seller. It's important to do this last to avoid recursion attacks
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x61f4084ab994420ca726e436223ad3d70d47274b.sol(263)

[33mWarning[0m for DAOConstantGas in contract 'MyAdvancedToken':
    |    // Crowdsale owners can collect ETH any number of times
    |    function collect() onlyOwner public {
  > |        msg.sender.transfer(address(this).balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x61f4084ab994420ca726e436223ad3d70d47274b.sol(268)

[33mWarning[0m for LockedEther in contract 'MyAdvancedToken':
    |/******************************************/
    |
  > |contract MyAdvancedToken is owned, TokenERC20 {
    |
    |    uint256 public sellPrice;
  at /home/jiaming/mavs_srcs/contract@0x61f4084ab994420ca726e436223ad3d70d47274b.sol(189)

[31mViolation[0m for MissingInputValidation in contract 'MyAdvancedToken':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x61f4084ab994420ca726e436223ad3d70d47274b.sol(21)

[31mViolation[0m for MissingInputValidation in contract 'MyAdvancedToken':
    |
    |    // This creates an array with all balances
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0x61f4084ab994420ca726e436223ad3d70d47274b.sol(37)

[31mViolation[0m for MissingInputValidation in contract 'MyAdvancedToken':
    |    // This creates an array with all balances
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    // This generates a public event on the blockchain that will notify clients
  at /home/jiaming/mavs_srcs/contract@0x61f4084ab994420ca726e436223ad3d70d47274b.sol(38)

[31mViolation[0m for MissingInputValidation in contract 'MyAdvancedToken':
    |     * @param _value the amount to send
    |     */
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x61f4084ab994420ca726e436223ad3d70d47274b.sol(110)

[31mViolation[0m for MissingInputValidation in contract 'MyAdvancedToken':
    |     * @param _value the max amount they can spend
    |     */
  > |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0x61f4084ab994420ca726e436223ad3d70d47274b.sol(125)

[31mViolation[0m for MissingInputValidation in contract 'MyAdvancedToken':
    |     * @param _extraData some extra information to send to the approved contract
    |     */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData)
    |        public
    |        returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x61f4084ab994420ca726e436223ad3d70d47274b.sol(141)

[31mViolation[0m for MissingInputValidation in contract 'MyAdvancedToken':
    |     * @param _value the amount of money to burn
    |     */
  > |    function burnFrom(address _from, uint256 _value) public returns (bool success) {
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  at /home/jiaming/mavs_srcs/contract@0x61f4084ab994420ca726e436223ad3d70d47274b.sol(174)

[31mViolation[0m for MissingInputValidation in contract 'MyAdvancedToken':
    |    uint256 public buyPrice;
    |
  > |    mapping (address => bool) public frozenAccount;
    |
    |    /* This generates a public event on the blockchain that will notify clients */
  at /home/jiaming/mavs_srcs/contract@0x61f4084ab994420ca726e436223ad3d70d47274b.sol(194)

[31mViolation[0m for MissingInputValidation in contract 'MyAdvancedToken':
    |    /// @param target Address to receive the tokens
    |    /// @param mintedAmount the amount of tokens it will receive
  > |    function mintToken(address target, uint256 mintedAmount) onlyOwner public {
    |        // only mint if under hardcap
    |        require (totalSupply + mintedAmount <= hardCap);
  at /home/jiaming/mavs_srcs/contract@0x61f4084ab994420ca726e436223ad3d70d47274b.sol(222)

[31mViolation[0m for MissingInputValidation in contract 'MyAdvancedToken':
    |    /// @param target Address to be frozen
    |    /// @param freeze either to freeze it or not
  > |    function freezeAccount(address target, bool freeze) onlyOwner public {
    |        frozenAccount[target] = freeze;
    |        emit FrozenFunds(target, freeze);
  at /home/jiaming/mavs_srcs/contract@0x61f4084ab994420ca726e436223ad3d70d47274b.sol(234)

[31mViolation[0m for MissingInputValidation in contract 'MyAdvancedToken':
    |    /// @param newSellPrice Price the users can sell to the contract
    |    /// @param newBuyPrice Price users can buy from the contract
  > |    function setPrices(uint256 newSellPrice, uint256 newBuyPrice) onlyOwner public {
    |        sellPrice = newSellPrice;
    |        buyPrice = newBuyPrice;
  at /home/jiaming/mavs_srcs/contract@0x61f4084ab994420ca726e436223ad3d70d47274b.sol(242)

[33mWarning[0m for MissingInputValidation in contract 'MyAdvancedToken':
    |
    |contract owned {
  > |    address public owner;
    |
    |    constructor() public {
  at /home/jiaming/mavs_srcs/contract@0x61f4084ab994420ca726e436223ad3d70d47274b.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'MyAdvancedToken':
    |contract TokenERC20 {
    |    // Public variables of the token
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals = 18;    // 18 decimals is the strongly suggested default, avoid changing it
  at /home/jiaming/mavs_srcs/contract@0x61f4084ab994420ca726e436223ad3d70d47274b.sol(30)

[33mWarning[0m for MissingInputValidation in contract 'MyAdvancedToken':
    |    // Public variables of the token
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals = 18;    // 18 decimals is the strongly suggested default, avoid changing it
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x61f4084ab994420ca726e436223ad3d70d47274b.sol(31)

[33mWarning[0m for MissingInputValidation in contract 'MyAdvancedToken':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals = 18;    // 18 decimals is the strongly suggested default, avoid changing it
    |    uint256 public totalSupply;
    |    uint256 public hardCap;
  at /home/jiaming/mavs_srcs/contract@0x61f4084ab994420ca726e436223ad3d70d47274b.sol(32)

[33mWarning[0m for MissingInputValidation in contract 'MyAdvancedToken':
    |    string public symbol;
    |    uint8 public decimals = 18;    // 18 decimals is the strongly suggested default, avoid changing it
  > |    uint256 public totalSupply;
    |    uint256 public hardCap;
    |
  at /home/jiaming/mavs_srcs/contract@0x61f4084ab994420ca726e436223ad3d70d47274b.sol(33)

[33mWarning[0m for MissingInputValidation in contract 'MyAdvancedToken':
    |    uint8 public decimals = 18;    // 18 decimals is the strongly suggested default, avoid changing it
    |    uint256 public totalSupply;
  > |    uint256 public hardCap;
    |
    |    // This creates an array with all balances
  at /home/jiaming/mavs_srcs/contract@0x61f4084ab994420ca726e436223ad3d70d47274b.sol(34)

[33mWarning[0m for MissingInputValidation in contract 'MyAdvancedToken':
    |     * @param _value the amount of money to burn
    |     */
  > |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  at /home/jiaming/mavs_srcs/contract@0x61f4084ab994420ca726e436223ad3d70d47274b.sol(158)

[33mWarning[0m for MissingInputValidation in contract 'MyAdvancedToken':
    |contract MyAdvancedToken is owned, TokenERC20 {
    |
  > |    uint256 public sellPrice;
    |    uint256 public buyPrice;
    |
  at /home/jiaming/mavs_srcs/contract@0x61f4084ab994420ca726e436223ad3d70d47274b.sol(191)

[33mWarning[0m for MissingInputValidation in contract 'MyAdvancedToken':
    |
    |    uint256 public sellPrice;
  > |    uint256 public buyPrice;
    |
    |    mapping (address => bool) public frozenAccount;
  at /home/jiaming/mavs_srcs/contract@0x61f4084ab994420ca726e436223ad3d70d47274b.sol(192)

[33mWarning[0m for MissingInputValidation in contract 'MyAdvancedToken':
    |
    |    /* Internal transfer, only can be called by this contract */
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        require (_to != 0x0);                               // Prevent transfer to 0x0 address. Use burn() instead
    |        require (balanceOf[_from] >= _value);               // Check if the sender has enough
  at /home/jiaming/mavs_srcs/contract@0x61f4084ab994420ca726e436223ad3d70d47274b.sol(208)

[33mWarning[0m for MissingInputValidation in contract 'MyAdvancedToken':
    |
    |    /// @notice Buy tokens from contract by sending ether
  > |    function buy() payable public {
    |        uint amount = msg.value * buyPrice;               // calculates the amount
    |        _transfer(this, msg.sender, amount);              // makes the transfers
  at /home/jiaming/mavs_srcs/contract@0x61f4084ab994420ca726e436223ad3d70d47274b.sol(248)

[33mWarning[0m for MissingInputValidation in contract 'MyAdvancedToken':
    |
    |    // Crowdsale owners can collect ETH any number of times
  > |    function collect() onlyOwner public {
    |        msg.sender.transfer(address(this).balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x61f4084ab994420ca726e436223ad3d70d47274b.sol(267)

[31mViolation[0m for TODAmount in contract 'MyAdvancedToken':
    |    // Crowdsale owners can collect ETH any number of times
    |    function collect() onlyOwner public {
  > |        msg.sender.transfer(address(this).balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x61f4084ab994420ca726e436223ad3d70d47274b.sol(268)

[33mWarning[0m for TODAmount in contract 'MyAdvancedToken':
    |        require(myAddress.balance >= amount / sellPrice);   // checks if the contract has enough ether to buy
    |        _transfer(msg.sender, this, amount);                // makes the transfers
  > |        msg.sender.transfer(amount / sellPrice);            // sends ether to the seller. It's important to do this last to avoid recursion attacks
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x61f4084ab994420ca726e436223ad3d70d47274b.sol(263)

[33mWarning[0m for TODReceiver in contract 'MyAdvancedToken':
    |        require(myAddress.balance >= amount / sellPrice);   // checks if the contract has enough ether to buy
    |        _transfer(msg.sender, this, amount);                // makes the transfers
  > |        msg.sender.transfer(amount / sellPrice);            // sends ether to the seller. It's important to do this last to avoid recursion attacks
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x61f4084ab994420ca726e436223ad3d70d47274b.sol(263)

[33mWarning[0m for TODReceiver in contract 'MyAdvancedToken':
    |    // Crowdsale owners can collect ETH any number of times
    |    function collect() onlyOwner public {
  > |        msg.sender.transfer(address(this).balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x61f4084ab994420ca726e436223ad3d70d47274b.sol(268)

[33mWarning[0m for UnhandledException in contract 'MyAdvancedToken':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x61f4084ab994420ca726e436223ad3d70d47274b.sol(146)

[33mWarning[0m for UnhandledException in contract 'MyAdvancedToken':
    |        require(myAddress.balance >= amount / sellPrice);   // checks if the contract has enough ether to buy
    |        _transfer(msg.sender, this, amount);                // makes the transfers
  > |        msg.sender.transfer(amount / sellPrice);            // sends ether to the seller. It's important to do this last to avoid recursion attacks
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x61f4084ab994420ca726e436223ad3d70d47274b.sol(263)

[33mWarning[0m for UnhandledException in contract 'MyAdvancedToken':
    |    // Crowdsale owners can collect ETH any number of times
    |    function collect() onlyOwner public {
  > |        msg.sender.transfer(address(this).balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x61f4084ab994420ca726e436223ad3d70d47274b.sol(268)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MyAdvancedToken':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x61f4084ab994420ca726e436223ad3d70d47274b.sol(146)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MyAdvancedToken':
    |    // Crowdsale owners can collect ETH any number of times
    |    function collect() onlyOwner public {
  > |        msg.sender.transfer(address(this).balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x61f4084ab994420ca726e436223ad3d70d47274b.sol(268)

[31mViolation[0m for UnrestrictedWrite in contract 'MyAdvancedToken':
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  > |        totalSupply -= _value;                      // Updates totalSupply
    |        emit Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x61f4084ab994420ca726e436223ad3d70d47274b.sol(161)

[31mViolation[0m for UnrestrictedWrite in contract 'MyAdvancedToken':
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  > |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
  at /home/jiaming/mavs_srcs/contract@0x61f4084ab994420ca726e436223ad3d70d47274b.sol(177)

[31mViolation[0m for UnrestrictedWrite in contract 'MyAdvancedToken':
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
  > |        totalSupply -= _value;                              // Update totalSupply
    |        emit Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x61f4084ab994420ca726e436223ad3d70d47274b.sol(179)

[31mViolation[0m for UnrestrictedWrite in contract 'MyAdvancedToken':
    |        require(!frozenAccount[_from]);                     // Check if sender is frozen
    |        require(!frozenAccount[_to]);                       // Check if recipient is frozen
  > |        balanceOf[_from] -= _value;                         // Subtract from the sender
    |        balanceOf[_to] += _value;                           // Add the same to the recipient
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x61f4084ab994420ca726e436223ad3d70d47274b.sol(214)

[31mViolation[0m for UnrestrictedWrite in contract 'MyAdvancedToken':
    |        require(!frozenAccount[_to]);                       // Check if recipient is frozen
    |        balanceOf[_from] -= _value;                         // Subtract from the sender
  > |        balanceOf[_to] += _value;                           // Add the same to the recipient
    |        emit Transfer(_from, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x61f4084ab994420ca726e436223ad3d70d47274b.sol(215)

[33mWarning[0m for UnrestrictedWrite in contract 'MyAdvancedToken':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x61f4084ab994420ca726e436223ad3d70d47274b.sol(112)

[33mWarning[0m for UnrestrictedWrite in contract 'MyAdvancedToken':
    |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x61f4084ab994420ca726e436223ad3d70d47274b.sol(127)

[33mWarning[0m for UnrestrictedWrite in contract 'MyAdvancedToken':
    |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
  > |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
    |        totalSupply -= _value;                      // Updates totalSupply
    |        emit Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x61f4084ab994420ca726e436223ad3d70d47274b.sol(160)

[33mWarning[0m for UnrestrictedWrite in contract 'MyAdvancedToken':
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
  > |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
    |        emit Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0x61f4084ab994420ca726e436223ad3d70d47274b.sol(178)

[33mWarning[0m for UnrestrictedWrite in contract 'MyAdvancedToken':
    |        require(!frozenAccount[_from]);                     // Check if sender is frozen
    |        require(!frozenAccount[_to]);                       // Check if recipient is frozen
  > |        balanceOf[_from] -= _value;                         // Subtract from the sender
    |        balanceOf[_to] += _value;                           // Add the same to the recipient
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x61f4084ab994420ca726e436223ad3d70d47274b.sol(214)

[33mWarning[0m for UnrestrictedWrite in contract 'MyAdvancedToken':
    |        require(!frozenAccount[_to]);                       // Check if recipient is frozen
    |        balanceOf[_from] -= _value;                         // Subtract from the sender
  > |        balanceOf[_to] += _value;                           // Add the same to the recipient
    |        emit Transfer(_from, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x61f4084ab994420ca726e436223ad3d70d47274b.sol(215)

[33mWarning[0m for UnrestrictedWrite in contract 'MyAdvancedToken':
    |
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x61f4084ab994420ca726e436223ad3d70d47274b.sol(22)

[33mWarning[0m for UnrestrictedWrite in contract 'MyAdvancedToken':
    |        // only mint if under hardcap
    |        require (totalSupply + mintedAmount <= hardCap);
  > |        balanceOf[target] += mintedAmount;
    |        totalSupply += mintedAmount;
    |        emit Transfer(0, this, mintedAmount);
  at /home/jiaming/mavs_srcs/contract@0x61f4084ab994420ca726e436223ad3d70d47274b.sol(225)

[33mWarning[0m for UnrestrictedWrite in contract 'MyAdvancedToken':
    |        require (totalSupply + mintedAmount <= hardCap);
    |        balanceOf[target] += mintedAmount;
  > |        totalSupply += mintedAmount;
    |        emit Transfer(0, this, mintedAmount);
    |        emit Transfer(this, target, mintedAmount);
  at /home/jiaming/mavs_srcs/contract@0x61f4084ab994420ca726e436223ad3d70d47274b.sol(226)

[33mWarning[0m for UnrestrictedWrite in contract 'MyAdvancedToken':
    |    /// @param freeze either to freeze it or not
    |    function freezeAccount(address target, bool freeze) onlyOwner public {
  > |        frozenAccount[target] = freeze;
    |        emit FrozenFunds(target, freeze);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x61f4084ab994420ca726e436223ad3d70d47274b.sol(235)

[33mWarning[0m for UnrestrictedWrite in contract 'MyAdvancedToken':
    |    /// @param newBuyPrice Price users can buy from the contract
    |    function setPrices(uint256 newSellPrice, uint256 newBuyPrice) onlyOwner public {
  > |        sellPrice = newSellPrice;
    |        buyPrice = newBuyPrice;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x61f4084ab994420ca726e436223ad3d70d47274b.sol(243)

[33mWarning[0m for UnrestrictedWrite in contract 'MyAdvancedToken':
    |    function setPrices(uint256 newSellPrice, uint256 newBuyPrice) onlyOwner public {
    |        sellPrice = newSellPrice;
  > |        buyPrice = newBuyPrice;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x61f4084ab994420ca726e436223ad3d70d47274b.sol(244)

[33mWarning[0m for LockedEther in contract 'TokenERC20':
    |interface tokenRecipient { function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData) external; }
    |
  > |contract TokenERC20 {
    |    // Public variables of the token
    |    string public name;
  at /home/jiaming/mavs_srcs/contract@0x61f4084ab994420ca726e436223ad3d70d47274b.sol(28)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |
    |    // This creates an array with all balances
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0x61f4084ab994420ca726e436223ad3d70d47274b.sol(37)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |    // This creates an array with all balances
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    // This generates a public event on the blockchain that will notify clients
  at /home/jiaming/mavs_srcs/contract@0x61f4084ab994420ca726e436223ad3d70d47274b.sol(38)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |     * @param _value the amount to send
    |     */
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x61f4084ab994420ca726e436223ad3d70d47274b.sol(110)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |     * @param _value the max amount they can spend
    |     */
  > |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0x61f4084ab994420ca726e436223ad3d70d47274b.sol(125)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |     * @param _extraData some extra information to send to the approved contract
    |     */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData)
    |        public
    |        returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x61f4084ab994420ca726e436223ad3d70d47274b.sol(141)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |     * @param _value the amount of money to burn
    |     */
  > |    function burnFrom(address _from, uint256 _value) public returns (bool success) {
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  at /home/jiaming/mavs_srcs/contract@0x61f4084ab994420ca726e436223ad3d70d47274b.sol(174)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |contract TokenERC20 {
    |    // Public variables of the token
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals = 18;    // 18 decimals is the strongly suggested default, avoid changing it
  at /home/jiaming/mavs_srcs/contract@0x61f4084ab994420ca726e436223ad3d70d47274b.sol(30)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |    // Public variables of the token
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals = 18;    // 18 decimals is the strongly suggested default, avoid changing it
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x61f4084ab994420ca726e436223ad3d70d47274b.sol(31)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals = 18;    // 18 decimals is the strongly suggested default, avoid changing it
    |    uint256 public totalSupply;
    |    uint256 public hardCap;
  at /home/jiaming/mavs_srcs/contract@0x61f4084ab994420ca726e436223ad3d70d47274b.sol(32)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |    string public symbol;
    |    uint8 public decimals = 18;    // 18 decimals is the strongly suggested default, avoid changing it
  > |    uint256 public totalSupply;
    |    uint256 public hardCap;
    |
  at /home/jiaming/mavs_srcs/contract@0x61f4084ab994420ca726e436223ad3d70d47274b.sol(33)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |    uint8 public decimals = 18;    // 18 decimals is the strongly suggested default, avoid changing it
    |    uint256 public totalSupply;
  > |    uint256 public hardCap;
    |
    |    // This creates an array with all balances
  at /home/jiaming/mavs_srcs/contract@0x61f4084ab994420ca726e436223ad3d70d47274b.sol(34)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |     * Internal transfer, only can be called by this contract
    |     */
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        // Prevent transfer to 0x0 address. Use burn() instead
    |        require(_to != 0x0);
  at /home/jiaming/mavs_srcs/contract@0x61f4084ab994420ca726e436223ad3d70d47274b.sol(70)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |     * @param _value the amount of money to burn
    |     */
  > |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  at /home/jiaming/mavs_srcs/contract@0x61f4084ab994420ca726e436223ad3d70d47274b.sol(158)

[33mWarning[0m for UnhandledException in contract 'TokenERC20':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x61f4084ab994420ca726e436223ad3d70d47274b.sol(146)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenERC20':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x61f4084ab994420ca726e436223ad3d70d47274b.sol(146)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x61f4084ab994420ca726e436223ad3d70d47274b.sol(80)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
  > |        balanceOf[_to] += _value;
    |        emit Transfer(_from, _to, _value);
    |        // Asserts are used to use static analysis to find bugs in your code. They should never fail
  at /home/jiaming/mavs_srcs/contract@0x61f4084ab994420ca726e436223ad3d70d47274b.sol(82)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  > |        totalSupply -= _value;                      // Updates totalSupply
    |        emit Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x61f4084ab994420ca726e436223ad3d70d47274b.sol(161)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  > |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
  at /home/jiaming/mavs_srcs/contract@0x61f4084ab994420ca726e436223ad3d70d47274b.sol(177)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
  > |        totalSupply -= _value;                              // Update totalSupply
    |        emit Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x61f4084ab994420ca726e436223ad3d70d47274b.sol(179)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x61f4084ab994420ca726e436223ad3d70d47274b.sol(80)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x61f4084ab994420ca726e436223ad3d70d47274b.sol(112)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x61f4084ab994420ca726e436223ad3d70d47274b.sol(127)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
  > |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
    |        totalSupply -= _value;                      // Updates totalSupply
    |        emit Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x61f4084ab994420ca726e436223ad3d70d47274b.sol(160)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
  > |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
    |        emit Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0x61f4084ab994420ca726e436223ad3d70d47274b.sol(178)

[33mWarning[0m for LockedEther in contract 'owned':
    |pragma solidity ^0.4.16;
    |
  > |contract owned {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x61f4084ab994420ca726e436223ad3d70d47274b.sol(9)

[31mViolation[0m for MissingInputValidation in contract 'owned':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x61f4084ab994420ca726e436223ad3d70d47274b.sol(21)

[33mWarning[0m for MissingInputValidation in contract 'owned':
    |
    |contract owned {
  > |    address public owner;
    |
    |    constructor() public {
  at /home/jiaming/mavs_srcs/contract@0x61f4084ab994420ca726e436223ad3d70d47274b.sol(10)

[33mWarning[0m for UnrestrictedWrite in contract 'owned':
    |
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x61f4084ab994420ca726e436223ad3d70d47274b.sol(22)


