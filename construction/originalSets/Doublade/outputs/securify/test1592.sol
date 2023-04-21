Processing contract: /home/jiaming/mavs_srcs/contract@0x6508cf442268f379aa049d61b3f7a3019ffacdae.sol:Kahawanu
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6508cf442268f379aa049d61b3f7a3019ffacdae.sol:TokenERC20
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6508cf442268f379aa049d61b3f7a3019ffacdae.sol:owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6508cf442268f379aa049d61b3f7a3019ffacdae.sol:tokenRecipient
[33mWarning[0m for DAOConstantGas in contract 'Kahawanu':
    |        require(myAddress.balance >= amount * sellPrice);      // checks if the contract has enough ether to buy
    |        _transfer(msg.sender, this, amount);              // makes the transfers
  > |        msg.sender.transfer(amount * sellPrice);          // sends ether to the seller. It's important to do this last to avoid recursion attacks
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x6508cf442268f379aa049d61b3f7a3019ffacdae.sol(220)

[33mWarning[0m for LockedEther in contract 'Kahawanu':
    |*/
    |/******************************************/
  > |contract Kahawanu is owned, TokenERC20 {
    |uint256 public sellPrice;
    |    uint256 public buyPrice;
  at /home/jiaming/mavs_srcs/contract@0x6508cf442268f379aa049d61b3f7a3019ffacdae.sol(163)

[31mViolation[0m for MissingInputValidation in contract 'Kahawanu':
    |        _;
    |    }
  > |function transferOwnership(address newOwner) onlyOwner public {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6508cf442268f379aa049d61b3f7a3019ffacdae.sol(11)

[31mViolation[0m for MissingInputValidation in contract 'Kahawanu':
    |    uint256 public totalSupply;
    |// This creates an array with all balances
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |// This generates a public event on the blockchain that will notify clients
  at /home/jiaming/mavs_srcs/contract@0x6508cf442268f379aa049d61b3f7a3019ffacdae.sol(24)

[31mViolation[0m for MissingInputValidation in contract 'Kahawanu':
    |// This creates an array with all balances
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |// This generates a public event on the blockchain that will notify clients
    |    event Transfer(address indexed from, address indexed to, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0x6508cf442268f379aa049d61b3f7a3019ffacdae.sol(25)

[31mViolation[0m for MissingInputValidation in contract 'Kahawanu':
    |     * @param _value the amount to send
    |     */
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x6508cf442268f379aa049d61b3f7a3019ffacdae.sol(89)

[31mViolation[0m for MissingInputValidation in contract 'Kahawanu':
    |     * @param _value the max amount they can spend
    |     */
  > |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0x6508cf442268f379aa049d61b3f7a3019ffacdae.sol(103)

[31mViolation[0m for MissingInputValidation in contract 'Kahawanu':
    |     * @param _extraData some extra information to send to the approved contract
    |     */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData)
    |        public
    |        returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x6508cf442268f379aa049d61b3f7a3019ffacdae.sol(118)

[31mViolation[0m for MissingInputValidation in contract 'Kahawanu':
    |     * @param _value the amount of money to burn
    |     */
  > |    function burnFrom(address _from, uint256 _value) public returns (bool success) {
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  at /home/jiaming/mavs_srcs/contract@0x6508cf442268f379aa049d61b3f7a3019ffacdae.sol(149)

[31mViolation[0m for MissingInputValidation in contract 'Kahawanu':
    |uint256 public sellPrice;
    |    uint256 public buyPrice;
  > |mapping (address => bool) public frozenAccount;
    |/* This generates a public event on the blockchain that will notify clients */
    |    event FrozenFunds(address target, bool frozen);
  at /home/jiaming/mavs_srcs/contract@0x6508cf442268f379aa049d61b3f7a3019ffacdae.sol(166)

[31mViolation[0m for MissingInputValidation in contract 'Kahawanu':
    |    /// @param target Address to receive the tokens
    |    /// @param mintedAmount the amount of tokens it will receive
  > |    function mintToken(address target, uint256 mintedAmount) onlyOwner public {
    |        balanceOf[target] += mintedAmount;
    |        totalSupply += mintedAmount;
  at /home/jiaming/mavs_srcs/contract@0x6508cf442268f379aa049d61b3f7a3019ffacdae.sol(189)

[31mViolation[0m for MissingInputValidation in contract 'Kahawanu':
    |    /// @param target Address to be frozen
    |    /// @param freeze either to freeze it or not
  > |    function freezeAccount(address target, bool freeze) onlyOwner public {
    |        frozenAccount[target] = freeze;
    |        emit FrozenFunds(target, freeze);
  at /home/jiaming/mavs_srcs/contract@0x6508cf442268f379aa049d61b3f7a3019ffacdae.sol(198)

[31mViolation[0m for MissingInputValidation in contract 'Kahawanu':
    |    /// @param newSellPrice Price the users can sell to the contract
    |    /// @param newBuyPrice Price users can buy from the contract
  > |    function setPrices(uint256 newSellPrice, uint256 newBuyPrice) onlyOwner public {
    |        sellPrice = newSellPrice;
    |        buyPrice = newBuyPrice;
  at /home/jiaming/mavs_srcs/contract@0x6508cf442268f379aa049d61b3f7a3019ffacdae.sol(205)

[33mWarning[0m for MissingInputValidation in contract 'Kahawanu':
    |pragma solidity ^0.4.16;
    |contract owned {
  > |    address public owner;
    |constructor() public {
    |        owner = msg.sender;
  at /home/jiaming/mavs_srcs/contract@0x6508cf442268f379aa049d61b3f7a3019ffacdae.sol(3)

[33mWarning[0m for MissingInputValidation in contract 'Kahawanu':
    |contract TokenERC20 {
    |    // Public variables of the token
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0x6508cf442268f379aa049d61b3f7a3019ffacdae.sol(18)

[33mWarning[0m for MissingInputValidation in contract 'Kahawanu':
    |    // Public variables of the token
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals = 18;
    |    // 18 decimals is the strongly suggested default, avoid changing it
  at /home/jiaming/mavs_srcs/contract@0x6508cf442268f379aa049d61b3f7a3019ffacdae.sol(19)

[33mWarning[0m for MissingInputValidation in contract 'Kahawanu':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals = 18;
    |    // 18 decimals is the strongly suggested default, avoid changing it
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x6508cf442268f379aa049d61b3f7a3019ffacdae.sol(20)

[33mWarning[0m for MissingInputValidation in contract 'Kahawanu':
    |    uint8 public decimals = 18;
    |    // 18 decimals is the strongly suggested default, avoid changing it
  > |    uint256 public totalSupply;
    |// This creates an array with all balances
    |    mapping (address => uint256) public balanceOf;
  at /home/jiaming/mavs_srcs/contract@0x6508cf442268f379aa049d61b3f7a3019ffacdae.sol(22)

[33mWarning[0m for MissingInputValidation in contract 'Kahawanu':
    |     * @param _value the amount of money to burn
    |     */
  > |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  at /home/jiaming/mavs_srcs/contract@0x6508cf442268f379aa049d61b3f7a3019ffacdae.sol(134)

[33mWarning[0m for MissingInputValidation in contract 'Kahawanu':
    |/******************************************/
    |contract Kahawanu is owned, TokenERC20 {
  > |uint256 public sellPrice;
    |    uint256 public buyPrice;
    |mapping (address => bool) public frozenAccount;
  at /home/jiaming/mavs_srcs/contract@0x6508cf442268f379aa049d61b3f7a3019ffacdae.sol(164)

[33mWarning[0m for MissingInputValidation in contract 'Kahawanu':
    |contract Kahawanu is owned, TokenERC20 {
    |uint256 public sellPrice;
  > |    uint256 public buyPrice;
    |mapping (address => bool) public frozenAccount;
    |/* This generates a public event on the blockchain that will notify clients */
  at /home/jiaming/mavs_srcs/contract@0x6508cf442268f379aa049d61b3f7a3019ffacdae.sol(165)

[33mWarning[0m for MissingInputValidation in contract 'Kahawanu':
    |    ) TokenERC20(initialSupply, tokenName, tokenSymbol) public {}
    |/* Internal transfer, only can be called by this contract */
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        require (_to != 0x0);                               // Prevent transfer to 0x0 address. Use burn() instead
    |        require (balanceOf[_from] >= _value);               // Check if the sender has enough
  at /home/jiaming/mavs_srcs/contract@0x6508cf442268f379aa049d61b3f7a3019ffacdae.sol(176)

[33mWarning[0m for MissingInputValidation in contract 'Kahawanu':
    |    }
    |/// @notice Buy tokens from contract by sending ether
  > |    function buy() payable public {
    |        uint amount = msg.value / buyPrice;               // calculates the amount
    |        _transfer(this, msg.sender, amount);              // makes the transfers
  at /home/jiaming/mavs_srcs/contract@0x6508cf442268f379aa049d61b3f7a3019ffacdae.sol(210)

[33mWarning[0m for TODAmount in contract 'Kahawanu':
    |        require(myAddress.balance >= amount * sellPrice);      // checks if the contract has enough ether to buy
    |        _transfer(msg.sender, this, amount);              // makes the transfers
  > |        msg.sender.transfer(amount * sellPrice);          // sends ether to the seller. It's important to do this last to avoid recursion attacks
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x6508cf442268f379aa049d61b3f7a3019ffacdae.sol(220)

[33mWarning[0m for TODReceiver in contract 'Kahawanu':
    |        require(myAddress.balance >= amount * sellPrice);      // checks if the contract has enough ether to buy
    |        _transfer(msg.sender, this, amount);              // makes the transfers
  > |        msg.sender.transfer(amount * sellPrice);          // sends ether to the seller. It's important to do this last to avoid recursion attacks
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x6508cf442268f379aa049d61b3f7a3019ffacdae.sol(220)

[33mWarning[0m for UnhandledException in contract 'Kahawanu':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x6508cf442268f379aa049d61b3f7a3019ffacdae.sol(123)

[33mWarning[0m for UnhandledException in contract 'Kahawanu':
    |        require(myAddress.balance >= amount * sellPrice);      // checks if the contract has enough ether to buy
    |        _transfer(msg.sender, this, amount);              // makes the transfers
  > |        msg.sender.transfer(amount * sellPrice);          // sends ether to the seller. It's important to do this last to avoid recursion attacks
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x6508cf442268f379aa049d61b3f7a3019ffacdae.sol(220)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Kahawanu':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x6508cf442268f379aa049d61b3f7a3019ffacdae.sol(123)

[31mViolation[0m for UnrestrictedWrite in contract 'Kahawanu':
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  > |        totalSupply -= _value;                      // Updates totalSupply
    |        emit Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6508cf442268f379aa049d61b3f7a3019ffacdae.sol(137)

[31mViolation[0m for UnrestrictedWrite in contract 'Kahawanu':
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  > |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
  at /home/jiaming/mavs_srcs/contract@0x6508cf442268f379aa049d61b3f7a3019ffacdae.sol(152)

[31mViolation[0m for UnrestrictedWrite in contract 'Kahawanu':
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
  > |        totalSupply -= _value;                              // Update totalSupply
    |        emit Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6508cf442268f379aa049d61b3f7a3019ffacdae.sol(154)

[31mViolation[0m for UnrestrictedWrite in contract 'Kahawanu':
    |        require(!frozenAccount[_from]);                     // Check if sender is frozen
    |        require(!frozenAccount[_to]);                       // Check if recipient is frozen
  > |        balanceOf[_from] -= _value;                         // Subtract from the sender
    |        balanceOf[_to] += _value;                           // Add the same to the recipient
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x6508cf442268f379aa049d61b3f7a3019ffacdae.sol(182)

[31mViolation[0m for UnrestrictedWrite in contract 'Kahawanu':
    |        require(!frozenAccount[_to]);                       // Check if recipient is frozen
    |        balanceOf[_from] -= _value;                         // Subtract from the sender
  > |        balanceOf[_to] += _value;                           // Add the same to the recipient
    |        emit Transfer(_from, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6508cf442268f379aa049d61b3f7a3019ffacdae.sol(183)

[33mWarning[0m for UnrestrictedWrite in contract 'Kahawanu':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6508cf442268f379aa049d61b3f7a3019ffacdae.sol(91)

[33mWarning[0m for UnrestrictedWrite in contract 'Kahawanu':
    |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6508cf442268f379aa049d61b3f7a3019ffacdae.sol(105)

[33mWarning[0m for UnrestrictedWrite in contract 'Kahawanu':
    |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
  > |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
    |        totalSupply -= _value;                      // Updates totalSupply
    |        emit Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x6508cf442268f379aa049d61b3f7a3019ffacdae.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'Kahawanu':
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
  > |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
    |        emit Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0x6508cf442268f379aa049d61b3f7a3019ffacdae.sol(153)

[33mWarning[0m for UnrestrictedWrite in contract 'Kahawanu':
    |        require(!frozenAccount[_from]);                     // Check if sender is frozen
    |        require(!frozenAccount[_to]);                       // Check if recipient is frozen
  > |        balanceOf[_from] -= _value;                         // Subtract from the sender
    |        balanceOf[_to] += _value;                           // Add the same to the recipient
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x6508cf442268f379aa049d61b3f7a3019ffacdae.sol(182)

[33mWarning[0m for UnrestrictedWrite in contract 'Kahawanu':
    |        require(!frozenAccount[_to]);                       // Check if recipient is frozen
    |        balanceOf[_from] -= _value;                         // Subtract from the sender
  > |        balanceOf[_to] += _value;                           // Add the same to the recipient
    |        emit Transfer(_from, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6508cf442268f379aa049d61b3f7a3019ffacdae.sol(183)

[33mWarning[0m for UnrestrictedWrite in contract 'Kahawanu':
    |    }
    |function transferOwnership(address newOwner) onlyOwner public {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x6508cf442268f379aa049d61b3f7a3019ffacdae.sol(12)

[33mWarning[0m for UnrestrictedWrite in contract 'Kahawanu':
    |    /// @param mintedAmount the amount of tokens it will receive
    |    function mintToken(address target, uint256 mintedAmount) onlyOwner public {
  > |        balanceOf[target] += mintedAmount;
    |        totalSupply += mintedAmount;
    |        emit Transfer(0, this, mintedAmount);
  at /home/jiaming/mavs_srcs/contract@0x6508cf442268f379aa049d61b3f7a3019ffacdae.sol(190)

[33mWarning[0m for UnrestrictedWrite in contract 'Kahawanu':
    |    function mintToken(address target, uint256 mintedAmount) onlyOwner public {
    |        balanceOf[target] += mintedAmount;
  > |        totalSupply += mintedAmount;
    |        emit Transfer(0, this, mintedAmount);
    |        emit Transfer(this, target, mintedAmount);
  at /home/jiaming/mavs_srcs/contract@0x6508cf442268f379aa049d61b3f7a3019ffacdae.sol(191)

[33mWarning[0m for UnrestrictedWrite in contract 'Kahawanu':
    |    /// @param freeze either to freeze it or not
    |    function freezeAccount(address target, bool freeze) onlyOwner public {
  > |        frozenAccount[target] = freeze;
    |        emit FrozenFunds(target, freeze);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6508cf442268f379aa049d61b3f7a3019ffacdae.sol(199)

[33mWarning[0m for UnrestrictedWrite in contract 'Kahawanu':
    |    /// @param newBuyPrice Price users can buy from the contract
    |    function setPrices(uint256 newSellPrice, uint256 newBuyPrice) onlyOwner public {
  > |        sellPrice = newSellPrice;
    |        buyPrice = newBuyPrice;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6508cf442268f379aa049d61b3f7a3019ffacdae.sol(206)

[33mWarning[0m for UnrestrictedWrite in contract 'Kahawanu':
    |    function setPrices(uint256 newSellPrice, uint256 newBuyPrice) onlyOwner public {
    |        sellPrice = newSellPrice;
  > |        buyPrice = newBuyPrice;
    |    }
    |/// @notice Buy tokens from contract by sending ether
  at /home/jiaming/mavs_srcs/contract@0x6508cf442268f379aa049d61b3f7a3019ffacdae.sol(207)

[33mWarning[0m for LockedEther in contract 'TokenERC20':
    |}
    |interface tokenRecipient { function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData) external; }
  > |contract TokenERC20 {
    |    // Public variables of the token
    |    string public name;
  at /home/jiaming/mavs_srcs/contract@0x6508cf442268f379aa049d61b3f7a3019ffacdae.sol(16)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |    uint256 public totalSupply;
    |// This creates an array with all balances
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |// This generates a public event on the blockchain that will notify clients
  at /home/jiaming/mavs_srcs/contract@0x6508cf442268f379aa049d61b3f7a3019ffacdae.sol(24)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |// This creates an array with all balances
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |// This generates a public event on the blockchain that will notify clients
    |    event Transfer(address indexed from, address indexed to, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0x6508cf442268f379aa049d61b3f7a3019ffacdae.sol(25)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |     * @param _value the amount to send
    |     */
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x6508cf442268f379aa049d61b3f7a3019ffacdae.sol(89)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |     * @param _value the max amount they can spend
    |     */
  > |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0x6508cf442268f379aa049d61b3f7a3019ffacdae.sol(103)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |     * @param _extraData some extra information to send to the approved contract
    |     */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData)
    |        public
    |        returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x6508cf442268f379aa049d61b3f7a3019ffacdae.sol(118)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |     * @param _value the amount of money to burn
    |     */
  > |    function burnFrom(address _from, uint256 _value) public returns (bool success) {
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  at /home/jiaming/mavs_srcs/contract@0x6508cf442268f379aa049d61b3f7a3019ffacdae.sol(149)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |contract TokenERC20 {
    |    // Public variables of the token
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0x6508cf442268f379aa049d61b3f7a3019ffacdae.sol(18)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |    // Public variables of the token
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals = 18;
    |    // 18 decimals is the strongly suggested default, avoid changing it
  at /home/jiaming/mavs_srcs/contract@0x6508cf442268f379aa049d61b3f7a3019ffacdae.sol(19)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals = 18;
    |    // 18 decimals is the strongly suggested default, avoid changing it
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x6508cf442268f379aa049d61b3f7a3019ffacdae.sol(20)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |    uint8 public decimals = 18;
    |    // 18 decimals is the strongly suggested default, avoid changing it
  > |    uint256 public totalSupply;
    |// This creates an array with all balances
    |    mapping (address => uint256) public balanceOf;
  at /home/jiaming/mavs_srcs/contract@0x6508cf442268f379aa049d61b3f7a3019ffacdae.sol(22)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |     * Internal transfer, only can be called by this contract
    |     */
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        // Prevent transfer to 0x0 address. Use burn() instead
    |        require(_to != 0x0);
  at /home/jiaming/mavs_srcs/contract@0x6508cf442268f379aa049d61b3f7a3019ffacdae.sol(51)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |     * @param _value the amount of money to burn
    |     */
  > |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  at /home/jiaming/mavs_srcs/contract@0x6508cf442268f379aa049d61b3f7a3019ffacdae.sol(134)

[33mWarning[0m for UnhandledException in contract 'TokenERC20':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x6508cf442268f379aa049d61b3f7a3019ffacdae.sol(123)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenERC20':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x6508cf442268f379aa049d61b3f7a3019ffacdae.sol(123)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x6508cf442268f379aa049d61b3f7a3019ffacdae.sol(61)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
  > |        balanceOf[_to] += _value;
    |        emit Transfer(_from, _to, _value);
    |        // Asserts are used to use static analysis to find bugs in your code. They should never fail
  at /home/jiaming/mavs_srcs/contract@0x6508cf442268f379aa049d61b3f7a3019ffacdae.sol(63)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  > |        totalSupply -= _value;                      // Updates totalSupply
    |        emit Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6508cf442268f379aa049d61b3f7a3019ffacdae.sol(137)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  > |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
  at /home/jiaming/mavs_srcs/contract@0x6508cf442268f379aa049d61b3f7a3019ffacdae.sol(152)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
  > |        totalSupply -= _value;                              // Update totalSupply
    |        emit Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6508cf442268f379aa049d61b3f7a3019ffacdae.sol(154)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x6508cf442268f379aa049d61b3f7a3019ffacdae.sol(61)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6508cf442268f379aa049d61b3f7a3019ffacdae.sol(91)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6508cf442268f379aa049d61b3f7a3019ffacdae.sol(105)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
  > |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
    |        totalSupply -= _value;                      // Updates totalSupply
    |        emit Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x6508cf442268f379aa049d61b3f7a3019ffacdae.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
  > |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
    |        emit Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0x6508cf442268f379aa049d61b3f7a3019ffacdae.sol(153)

[33mWarning[0m for LockedEther in contract 'owned':
    |pragma solidity ^0.4.16;
  > |contract owned {
    |    address public owner;
    |constructor() public {
  at /home/jiaming/mavs_srcs/contract@0x6508cf442268f379aa049d61b3f7a3019ffacdae.sol(2)

[31mViolation[0m for MissingInputValidation in contract 'owned':
    |        _;
    |    }
  > |function transferOwnership(address newOwner) onlyOwner public {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6508cf442268f379aa049d61b3f7a3019ffacdae.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'owned':
    |pragma solidity ^0.4.16;
    |contract owned {
  > |    address public owner;
    |constructor() public {
    |        owner = msg.sender;
  at /home/jiaming/mavs_srcs/contract@0x6508cf442268f379aa049d61b3f7a3019ffacdae.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'owned':
    |    }
    |function transferOwnership(address newOwner) onlyOwner public {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x6508cf442268f379aa049d61b3f7a3019ffacdae.sol(12)


