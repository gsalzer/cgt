Processing contract: /home/jiaming/mavs_srcs/contract@0x6a378490b1d2cec4e972d5e6c36d68843bc600c6.sol:AdvancedCXATToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6a378490b1d2cec4e972d5e6c36d68843bc600c6.sol:TokenERC20
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6a378490b1d2cec4e972d5e6c36d68843bc600c6.sol:owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6a378490b1d2cec4e972d5e6c36d68843bc600c6.sol:tokenRecipient
[33mWarning[0m for DAOConstantGas in contract 'AdvancedCXATToken':
    |        require(myAddress.balance >= amount * sellPrice);   // checks if the contract has enough ether to buy
    |        _transfer(msg.sender, address(this), amount);       // makes the transfers
  > |        msg.sender.transfer(amount * sellPrice);            // sends ether to the seller. It's important to do this last to avoid recursion attacks
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x6a378490b1d2cec4e972d5e6c36d68843bc600c6.sol(248)

[33mWarning[0m for LockedEther in contract 'AdvancedCXATToken':
    |/******************************************/
    |
  > |contract AdvancedCXATToken is owned, TokenERC20 {
    |
    |    uint256 public sellPrice;
  at /home/jiaming/mavs_srcs/contract@0x6a378490b1d2cec4e972d5e6c36d68843bc600c6.sol(181)

[31mViolation[0m for MissingInputValidation in contract 'AdvancedCXATToken':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6a378490b1d2cec4e972d5e6c36d68843bc600c6.sol(15)

[31mViolation[0m for MissingInputValidation in contract 'AdvancedCXATToken':
    |
    |    // This creates an array with all balances
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0x6a378490b1d2cec4e972d5e6c36d68843bc600c6.sol(31)

[31mViolation[0m for MissingInputValidation in contract 'AdvancedCXATToken':
    |    // This creates an array with all balances
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    // This generates a public event on the blockchain that will notify clients
  at /home/jiaming/mavs_srcs/contract@0x6a378490b1d2cec4e972d5e6c36d68843bc600c6.sol(32)

[31mViolation[0m for MissingInputValidation in contract 'AdvancedCXATToken':
    |     * @param _value the amount to send
    |     */
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x6a378490b1d2cec4e972d5e6c36d68843bc600c6.sol(102)

[31mViolation[0m for MissingInputValidation in contract 'AdvancedCXATToken':
    |     * @param _value the max amount they can spend
    |     */
  > |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0x6a378490b1d2cec4e972d5e6c36d68843bc600c6.sol(117)

[31mViolation[0m for MissingInputValidation in contract 'AdvancedCXATToken':
    |     * @param _extraData some extra information to send to the approved contract
    |     */
  > |    function approveAndCall(address _spender, uint256 _value, bytes memory _extraData)
    |        public
    |        returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x6a378490b1d2cec4e972d5e6c36d68843bc600c6.sol(133)

[31mViolation[0m for MissingInputValidation in contract 'AdvancedCXATToken':
    |     * @param _value the amount of money to burn
    |     */
  > |    function burnFrom(address _from, uint256 _value) public returns (bool success) {
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  at /home/jiaming/mavs_srcs/contract@0x6a378490b1d2cec4e972d5e6c36d68843bc600c6.sol(166)

[31mViolation[0m for MissingInputValidation in contract 'AdvancedCXATToken':
    |    uint256 public buyPrice;
    |
  > |    mapping (address => bool) public frozenAccount;
    |
    |    /* This generates a public event on the blockchain that will notify clients */
  at /home/jiaming/mavs_srcs/contract@0x6a378490b1d2cec4e972d5e6c36d68843bc600c6.sol(186)

[31mViolation[0m for MissingInputValidation in contract 'AdvancedCXATToken':
    |    /// @param target Address to receive the tokens
    |    /// @param mintedAmount the amount of tokens it will receive
  > |    function mintToken(address target, uint256 mintedAmount) onlyOwner public {
    |        balanceOf[target] += mintedAmount;
    |        totalSupply += mintedAmount;
  at /home/jiaming/mavs_srcs/contract@0x6a378490b1d2cec4e972d5e6c36d68843bc600c6.sol(213)

[31mViolation[0m for MissingInputValidation in contract 'AdvancedCXATToken':
    |    /// @param target Address to be frozen
    |    /// @param freeze either to freeze it or not
  > |    function freezeAccount(address target, bool freeze) onlyOwner public {
    |        frozenAccount[target] = freeze;
    |        emit FrozenFunds(target, freeze);
  at /home/jiaming/mavs_srcs/contract@0x6a378490b1d2cec4e972d5e6c36d68843bc600c6.sol(223)

[31mViolation[0m for MissingInputValidation in contract 'AdvancedCXATToken':
    |    /// @param newSellPrice Price the users can sell to the contract
    |    /// @param newBuyPrice Price users can buy from the contract
  > |    function setPrices(uint256 newSellPrice, uint256 newBuyPrice) onlyOwner public {
    |        sellPrice = newSellPrice;
    |        buyPrice = newBuyPrice;
  at /home/jiaming/mavs_srcs/contract@0x6a378490b1d2cec4e972d5e6c36d68843bc600c6.sol(231)

[33mWarning[0m for MissingInputValidation in contract 'AdvancedCXATToken':
    |
    |contract owned {
  > |    address public owner;
    |
    |    constructor() public {
  at /home/jiaming/mavs_srcs/contract@0x6a378490b1d2cec4e972d5e6c36d68843bc600c6.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'AdvancedCXATToken':
    |contract TokenERC20 {
    |    // Public variables of the token
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0x6a378490b1d2cec4e972d5e6c36d68843bc600c6.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'AdvancedCXATToken':
    |    // Public variables of the token
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals = 18;
    |    // 18 decimals is the strongly suggested default, avoid changing it
  at /home/jiaming/mavs_srcs/contract@0x6a378490b1d2cec4e972d5e6c36d68843bc600c6.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'AdvancedCXATToken':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals = 18;
    |    // 18 decimals is the strongly suggested default, avoid changing it
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x6a378490b1d2cec4e972d5e6c36d68843bc600c6.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'AdvancedCXATToken':
    |    uint8 public decimals = 18;
    |    // 18 decimals is the strongly suggested default, avoid changing it
  > |    uint256 public totalSupply;
    |
    |    // This creates an array with all balances
  at /home/jiaming/mavs_srcs/contract@0x6a378490b1d2cec4e972d5e6c36d68843bc600c6.sol(28)

[33mWarning[0m for MissingInputValidation in contract 'AdvancedCXATToken':
    |     * @param _value the amount of money to burn
    |     */
  > |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  at /home/jiaming/mavs_srcs/contract@0x6a378490b1d2cec4e972d5e6c36d68843bc600c6.sol(150)

[33mWarning[0m for MissingInputValidation in contract 'AdvancedCXATToken':
    |contract AdvancedCXATToken is owned, TokenERC20 {
    |
  > |    uint256 public sellPrice;
    |    uint256 public buyPrice;
    |
  at /home/jiaming/mavs_srcs/contract@0x6a378490b1d2cec4e972d5e6c36d68843bc600c6.sol(183)

[33mWarning[0m for MissingInputValidation in contract 'AdvancedCXATToken':
    |
    |    uint256 public sellPrice;
  > |    uint256 public buyPrice;
    |
    |    mapping (address => bool) public frozenAccount;
  at /home/jiaming/mavs_srcs/contract@0x6a378490b1d2cec4e972d5e6c36d68843bc600c6.sol(184)

[33mWarning[0m for MissingInputValidation in contract 'AdvancedCXATToken':
    |
    |    /* Internal transfer, only can be called by this contract */
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        require (_to != address(0x0));                          // Prevent transfer to 0x0 address. Use burn() instead
    |        require (balanceOf[_from] >= _value);                   // Check if the sender has enough
  at /home/jiaming/mavs_srcs/contract@0x6a378490b1d2cec4e972d5e6c36d68843bc600c6.sol(199)

[33mWarning[0m for MissingInputValidation in contract 'AdvancedCXATToken':
    |
    |    /// @notice Buy tokens from contract by sending ether
  > |    function buy() payable public {
    |        uint amount = msg.value / buyPrice;                 // calculates the amount
    |        _transfer(address(this), msg.sender, amount);       // makes the transfers
  at /home/jiaming/mavs_srcs/contract@0x6a378490b1d2cec4e972d5e6c36d68843bc600c6.sol(237)

[33mWarning[0m for TODAmount in contract 'AdvancedCXATToken':
    |        require(myAddress.balance >= amount * sellPrice);   // checks if the contract has enough ether to buy
    |        _transfer(msg.sender, address(this), amount);       // makes the transfers
  > |        msg.sender.transfer(amount * sellPrice);            // sends ether to the seller. It's important to do this last to avoid recursion attacks
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x6a378490b1d2cec4e972d5e6c36d68843bc600c6.sol(248)

[33mWarning[0m for TODReceiver in contract 'AdvancedCXATToken':
    |        require(myAddress.balance >= amount * sellPrice);   // checks if the contract has enough ether to buy
    |        _transfer(msg.sender, address(this), amount);       // makes the transfers
  > |        msg.sender.transfer(amount * sellPrice);            // sends ether to the seller. It's important to do this last to avoid recursion attacks
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x6a378490b1d2cec4e972d5e6c36d68843bc600c6.sol(248)

[33mWarning[0m for UnhandledException in contract 'AdvancedCXATToken':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, address(this), _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x6a378490b1d2cec4e972d5e6c36d68843bc600c6.sol(138)

[33mWarning[0m for UnhandledException in contract 'AdvancedCXATToken':
    |        require(myAddress.balance >= amount * sellPrice);   // checks if the contract has enough ether to buy
    |        _transfer(msg.sender, address(this), amount);       // makes the transfers
  > |        msg.sender.transfer(amount * sellPrice);            // sends ether to the seller. It's important to do this last to avoid recursion attacks
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x6a378490b1d2cec4e972d5e6c36d68843bc600c6.sol(248)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AdvancedCXATToken':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, address(this), _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x6a378490b1d2cec4e972d5e6c36d68843bc600c6.sol(138)

[31mViolation[0m for UnrestrictedWrite in contract 'AdvancedCXATToken':
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  > |        totalSupply -= _value;                      // Updates totalSupply
    |        emit Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6a378490b1d2cec4e972d5e6c36d68843bc600c6.sol(153)

[31mViolation[0m for UnrestrictedWrite in contract 'AdvancedCXATToken':
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  > |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
  at /home/jiaming/mavs_srcs/contract@0x6a378490b1d2cec4e972d5e6c36d68843bc600c6.sol(169)

[31mViolation[0m for UnrestrictedWrite in contract 'AdvancedCXATToken':
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
  > |        totalSupply -= _value;                              // Update totalSupply
    |        emit Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6a378490b1d2cec4e972d5e6c36d68843bc600c6.sol(171)

[31mViolation[0m for UnrestrictedWrite in contract 'AdvancedCXATToken':
    |        require(!frozenAccount[_from]);                         // Check if sender is frozen
    |        require(!frozenAccount[_to]);                           // Check if recipient is frozen
  > |        balanceOf[_from] -= _value;                             // Subtract from the sender
    |        balanceOf[_to] += _value;                               // Add the same to the recipient
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x6a378490b1d2cec4e972d5e6c36d68843bc600c6.sol(205)

[31mViolation[0m for UnrestrictedWrite in contract 'AdvancedCXATToken':
    |        require(!frozenAccount[_to]);                           // Check if recipient is frozen
    |        balanceOf[_from] -= _value;                             // Subtract from the sender
  > |        balanceOf[_to] += _value;                               // Add the same to the recipient
    |        emit Transfer(_from, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6a378490b1d2cec4e972d5e6c36d68843bc600c6.sol(206)

[33mWarning[0m for UnrestrictedWrite in contract 'AdvancedCXATToken':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6a378490b1d2cec4e972d5e6c36d68843bc600c6.sol(104)

[33mWarning[0m for UnrestrictedWrite in contract 'AdvancedCXATToken':
    |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6a378490b1d2cec4e972d5e6c36d68843bc600c6.sol(119)

[33mWarning[0m for UnrestrictedWrite in contract 'AdvancedCXATToken':
    |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
  > |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
    |        totalSupply -= _value;                      // Updates totalSupply
    |        emit Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x6a378490b1d2cec4e972d5e6c36d68843bc600c6.sol(152)

[33mWarning[0m for UnrestrictedWrite in contract 'AdvancedCXATToken':
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
  > |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
    |        emit Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0x6a378490b1d2cec4e972d5e6c36d68843bc600c6.sol(170)

[33mWarning[0m for UnrestrictedWrite in contract 'AdvancedCXATToken':
    |        require(!frozenAccount[_from]);                         // Check if sender is frozen
    |        require(!frozenAccount[_to]);                           // Check if recipient is frozen
  > |        balanceOf[_from] -= _value;                             // Subtract from the sender
    |        balanceOf[_to] += _value;                               // Add the same to the recipient
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x6a378490b1d2cec4e972d5e6c36d68843bc600c6.sol(205)

[33mWarning[0m for UnrestrictedWrite in contract 'AdvancedCXATToken':
    |        require(!frozenAccount[_to]);                           // Check if recipient is frozen
    |        balanceOf[_from] -= _value;                             // Subtract from the sender
  > |        balanceOf[_to] += _value;                               // Add the same to the recipient
    |        emit Transfer(_from, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6a378490b1d2cec4e972d5e6c36d68843bc600c6.sol(206)

[33mWarning[0m for UnrestrictedWrite in contract 'AdvancedCXATToken':
    |
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x6a378490b1d2cec4e972d5e6c36d68843bc600c6.sol(16)

[33mWarning[0m for UnrestrictedWrite in contract 'AdvancedCXATToken':
    |    /// @param mintedAmount the amount of tokens it will receive
    |    function mintToken(address target, uint256 mintedAmount) onlyOwner public {
  > |        balanceOf[target] += mintedAmount;
    |        totalSupply += mintedAmount;
    |        emit Transfer(address(0), address(this), mintedAmount);
  at /home/jiaming/mavs_srcs/contract@0x6a378490b1d2cec4e972d5e6c36d68843bc600c6.sol(214)

[33mWarning[0m for UnrestrictedWrite in contract 'AdvancedCXATToken':
    |    function mintToken(address target, uint256 mintedAmount) onlyOwner public {
    |        balanceOf[target] += mintedAmount;
  > |        totalSupply += mintedAmount;
    |        emit Transfer(address(0), address(this), mintedAmount);
    |        emit Transfer(address(this), target, mintedAmount);
  at /home/jiaming/mavs_srcs/contract@0x6a378490b1d2cec4e972d5e6c36d68843bc600c6.sol(215)

[33mWarning[0m for UnrestrictedWrite in contract 'AdvancedCXATToken':
    |    /// @param freeze either to freeze it or not
    |    function freezeAccount(address target, bool freeze) onlyOwner public {
  > |        frozenAccount[target] = freeze;
    |        emit FrozenFunds(target, freeze);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6a378490b1d2cec4e972d5e6c36d68843bc600c6.sol(224)

[33mWarning[0m for UnrestrictedWrite in contract 'AdvancedCXATToken':
    |    /// @param newBuyPrice Price users can buy from the contract
    |    function setPrices(uint256 newSellPrice, uint256 newBuyPrice) onlyOwner public {
  > |        sellPrice = newSellPrice;
    |        buyPrice = newBuyPrice;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6a378490b1d2cec4e972d5e6c36d68843bc600c6.sol(232)

[33mWarning[0m for UnrestrictedWrite in contract 'AdvancedCXATToken':
    |    function setPrices(uint256 newSellPrice, uint256 newBuyPrice) onlyOwner public {
    |        sellPrice = newSellPrice;
  > |        buyPrice = newBuyPrice;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6a378490b1d2cec4e972d5e6c36d68843bc600c6.sol(233)

[33mWarning[0m for LockedEther in contract 'TokenERC20':
    |interface tokenRecipient { function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData) external; }
    |
  > |contract TokenERC20 {
    |    // Public variables of the token
    |    string public name;
  at /home/jiaming/mavs_srcs/contract@0x6a378490b1d2cec4e972d5e6c36d68843bc600c6.sol(22)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |
    |    // This creates an array with all balances
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0x6a378490b1d2cec4e972d5e6c36d68843bc600c6.sol(31)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |    // This creates an array with all balances
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    // This generates a public event on the blockchain that will notify clients
  at /home/jiaming/mavs_srcs/contract@0x6a378490b1d2cec4e972d5e6c36d68843bc600c6.sol(32)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |     * @param _value the amount to send
    |     */
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x6a378490b1d2cec4e972d5e6c36d68843bc600c6.sol(102)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |     * @param _value the max amount they can spend
    |     */
  > |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0x6a378490b1d2cec4e972d5e6c36d68843bc600c6.sol(117)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |     * @param _extraData some extra information to send to the approved contract
    |     */
  > |    function approveAndCall(address _spender, uint256 _value, bytes memory _extraData)
    |        public
    |        returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x6a378490b1d2cec4e972d5e6c36d68843bc600c6.sol(133)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |     * @param _value the amount of money to burn
    |     */
  > |    function burnFrom(address _from, uint256 _value) public returns (bool success) {
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  at /home/jiaming/mavs_srcs/contract@0x6a378490b1d2cec4e972d5e6c36d68843bc600c6.sol(166)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |contract TokenERC20 {
    |    // Public variables of the token
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0x6a378490b1d2cec4e972d5e6c36d68843bc600c6.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |    // Public variables of the token
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals = 18;
    |    // 18 decimals is the strongly suggested default, avoid changing it
  at /home/jiaming/mavs_srcs/contract@0x6a378490b1d2cec4e972d5e6c36d68843bc600c6.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals = 18;
    |    // 18 decimals is the strongly suggested default, avoid changing it
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x6a378490b1d2cec4e972d5e6c36d68843bc600c6.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |    uint8 public decimals = 18;
    |    // 18 decimals is the strongly suggested default, avoid changing it
  > |    uint256 public totalSupply;
    |
    |    // This creates an array with all balances
  at /home/jiaming/mavs_srcs/contract@0x6a378490b1d2cec4e972d5e6c36d68843bc600c6.sol(28)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |     * Internal transfer, only can be called by this contract
    |     */
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        // Prevent transfer to 0x0 address. Use burn() instead
    |        require(_to != address(0x0));
  at /home/jiaming/mavs_srcs/contract@0x6a378490b1d2cec4e972d5e6c36d68843bc600c6.sol(62)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |     * @param _value the amount of money to burn
    |     */
  > |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  at /home/jiaming/mavs_srcs/contract@0x6a378490b1d2cec4e972d5e6c36d68843bc600c6.sol(150)

[33mWarning[0m for UnhandledException in contract 'TokenERC20':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, address(this), _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x6a378490b1d2cec4e972d5e6c36d68843bc600c6.sol(138)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenERC20':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, address(this), _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x6a378490b1d2cec4e972d5e6c36d68843bc600c6.sol(138)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x6a378490b1d2cec4e972d5e6c36d68843bc600c6.sol(72)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
  > |        balanceOf[_to] += _value;
    |        emit Transfer(_from, _to, _value);
    |        // Asserts are used to use static analysis to find bugs in your code. They should never fail
  at /home/jiaming/mavs_srcs/contract@0x6a378490b1d2cec4e972d5e6c36d68843bc600c6.sol(74)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  > |        totalSupply -= _value;                      // Updates totalSupply
    |        emit Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6a378490b1d2cec4e972d5e6c36d68843bc600c6.sol(153)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  > |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
  at /home/jiaming/mavs_srcs/contract@0x6a378490b1d2cec4e972d5e6c36d68843bc600c6.sol(169)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
  > |        totalSupply -= _value;                              // Update totalSupply
    |        emit Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6a378490b1d2cec4e972d5e6c36d68843bc600c6.sol(171)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x6a378490b1d2cec4e972d5e6c36d68843bc600c6.sol(72)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6a378490b1d2cec4e972d5e6c36d68843bc600c6.sol(104)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6a378490b1d2cec4e972d5e6c36d68843bc600c6.sol(119)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
  > |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
    |        totalSupply -= _value;                      // Updates totalSupply
    |        emit Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x6a378490b1d2cec4e972d5e6c36d68843bc600c6.sol(152)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
  > |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
    |        emit Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0x6a378490b1d2cec4e972d5e6c36d68843bc600c6.sol(170)

[33mWarning[0m for LockedEther in contract 'owned':
    |pragma solidity ^0.4.24;
    |
  > |contract owned {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x6a378490b1d2cec4e972d5e6c36d68843bc600c6.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'owned':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6a378490b1d2cec4e972d5e6c36d68843bc600c6.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'owned':
    |
    |contract owned {
  > |    address public owner;
    |
    |    constructor() public {
  at /home/jiaming/mavs_srcs/contract@0x6a378490b1d2cec4e972d5e6c36d68843bc600c6.sol(4)

[33mWarning[0m for UnrestrictedWrite in contract 'owned':
    |
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x6a378490b1d2cec4e972d5e6c36d68843bc600c6.sol(16)


